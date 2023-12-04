//---------------------------------------------------------------------------------------------
// Dustcollector V4.0
//---------------------------------------------------------------------------------------------
//
// WARNING!!!!!!!!!!!!!!!!!!
// THIS VERSION is for dustcollector using one PCB....
// it cannot be used on the older version, which uses different pcb's... pinout is different!!!
// They are however compatible!!!!! ---> V3.1 25-11-2023!!!!
//
//---------------------------------------------------------------------------------------------
//
// Name......: DC_Dustcollector_V32_OnePCB.ino
//
// Version...: V3.1 - 28-06-2023
// last edits: 14-02-2023
//           : 28-04-2023
//           : 17-05-2023 introducing tabs!!
//           : 21-05-2023 resistor pulling Emergency low...
//           : 26-05-2023 Made some minor changes...
//           : 31-05-2023 Again some minor changes....
//           : 07-06-2023 Debugged DC Delay after restart and
//                        fixed bugs....
//           : 08-06-2023 Added response for Version All command!!
//           : 28-06-2023 Cleaning code .... minor fixes...
//           : 19-09-2023 Implementing functions for machines!!!
//           : 29-11-2023 Adjust functions to be used with one PCB
//                        and posility to reset all Arduino's remotly!!
// Author....: J. Vink
// Board.....: Arduino Uno
//
//---------------------------------------------------------------------------------------------
//
// See for description the Word document!! There is only one program for all Arduino's!!!!
//
//---------------------------------------------------------------------------------------------
//
// Changelog 20-04-2023
//
// Almost out of memory for variables (dynamic memory) ... so now using F( "...." ) within
// Sertial.print commands. This will store the text in the program storage space. Saved
// almost 30% ..............
//
// Changelog 28-04-2023:
//
// Discovered fault in the controller PCB. The three resistors are not connected to GND, ass they
// should be. Instead they are connected to the 5V line. So, when buttons are not pushed, the
// remain HIGH / 5V. The same holds for the resistors for the valves. They are also connected
// to %V instead of GND line.
//
// The PCB have been corrected and title have been given extra name (Edit 28-04-2023)!! These
// pcb's are ordered and this project assumes that these corrected pcb's will be used.
//
// Received PCB's from PCBWay ... so removed workarounds !!!!
//
// Changelog 21-05-2023:
//
// The Emergency line needs to bee pulled to GND. Otherwise it will float and randomly trigger
// emergency events. The Resister, 10K, needs to be soldered on one of the Arduino's. This
// will be the Arduino of the Dustcollector, as this one is always on. PCB for the
// controllers has been altered, so that a 10k resistor can be placed there, but for now
// it will be soldered on the Arduono of the Dustcollector!!!
//
// Tested this new settup .... does not work!!
//
// Changed Emergency pin from 13 to A3: This because this pin is connected to the onboard
// LED. Pulling the pin to ground therefore doesn not work!!
//
// New Pin A4 can be pulled low by 10k resistor. Pnly only one is needed... Added it
// to the Dustcollector controller!!
//
// Changelog 26-05-2023
//
// When installing the system discovered that for a stationary machines there was the need
// for an extra button. This button is connected to the handle with which the machine is
// operated. However all the lines are used. How to solve this problem?
//
// Solution: Use a separated box in which a Relais is switched using a deadman button
// (driven by 5V). This solves the need for another change to the PCB and leaves intact
// the possiblity of using a LEd for the power (not used at this moment).
//
// Changelog 31-05-2023
//
// Added functionality: All valves open of closed using serial. And when one valve is opened
// all others are closed. When one machine is turned of others are turned of.
//
// Changelog 03-06-2023
//
// Added the possibility to read the versions of all the connected controllers from the
// main controler!!
//
// Changelog 26-6-2023
//
// Cleaning the code....... etc etc etc.
//
// Changelog 19-9-2023
//
// Added functions for the machines / controller... some machines have build in switches
// so when these are used, we dont need a double function for the buttons in this project.
//
// Also change the check for the valves.. now first check is done after delay of 100ms!
//
//---------------------------------------------------------------------------------------------

#include <SPI.h>
#include <SoftwareSerial.h>
#include <EEPROM.h>

//---------------------------------------------------------------------------------------------
// When using serial monitor the version can be retrieved (command : Version). See below!
// This version is compatible with the latest veriosn ov V3.1, RESET is not available!!!
//---------------------------------------------------------------------------------------------

const String sVersion = "Version: V4.0 - 04-12-2023 (One PCB). ";

//------------------------------------------------------------------------------------------
// Pin defines: Note: Pins 0 and 1 not used because of usage of serial comms!!
//---------------------------------------------------------------------------------------------

#define EMERGENCY_Button_Pin  2 // Internal Emergency Button - 

//------------------------------------------
// Pins controling the communication
// between the Arduino's using the
// RS485 connection.
//------------------------------------------

#define TX_485_Pin            3 // Pin DI for the RS 485
#define RX_485_Pin            4 // Pin RO for the RS 485
#define RS485_control_Pin     5 // Pin DE / RE Enables or disables transmission and reception

#define Air_Button_BLUE_Pin   6
#define Air_Button_RED_Pin    7

//------------------------------------------
// Pins for controling relais for the valve.
// There are four relais used to control the
// polaritiy of the motor, in order rotate
// it clockwise or anticlockwise = moving
// the valve in a open or closed position.
//
// On the old many pcb version pin was this:
//
// #define Valve_Open1_Pin       8
// #define Valve_Open2_Pin       9
// #define Valve_Close1_Pin     10
// #define Valve_Close2_Pin     11
//------------------------------------------

#define Valve_Open_Pin        8
#define Valve_Close_Pin       9
#define Valve_Enabled_Pin    10

//------------------------------------------
// Pins for external emergency.
//------------------------------------------

#define RESET_Arduinos_Pin   11 // Reset all other Arduino's.

//------------------------------------------
// Pins for external emergency.
//------------------------------------------

#define EMERGENCY_Ext_Pin    12 // This is the line to the other Arduino's!!!

// Pins for the LED's.
#define LED_Motor_On_Pin     A0 // LED showing whether machine is on or off. 
#define LED_Air_On_Pin       A1 // LED showing whether dustcollector is on or off.
#define LED_Power_On_Pin     A2 // LED showing whether power is on or off (kind off stupid).

//------------------------------------------
// Pin for the Relais controling the machine.
// Using this pin as the old pin at start-up
// turned high, put on on the 220V line....
// Originaly this was pin 13. Pin 13 is connected
// to onboard LED, and will therefore will go
// into LOW state at start up, closing the
// relais and therefore start the motor.
// This problem will not occur with Analog
// pins...  so.... well....
//------------------------------------------

#define Machine_Power_Pin    A3 // Pin voor 220v relais controling power of motor!!

//------------------------------------------
// Pins for the contact switches of the airvalve.
//------------------------------------------

#define Valve_Status_Open    A4 // HIGH if switch is closed (it is NO = normally LOW)
#define Valve_Status_Closed  A5 // HIGh if switch is closed (it is NO = normally LOW)

//---------------------------------------------------------------------------------------------

#define RS485transmit HIGH
#define RS485receive  LOW

//------------------------------------------
// initiate the serial comm between the arduino's.
// This uses an external RX485 chip. THese
// can be used over longer distances.
//------------------------------------------

SoftwareSerial RS485_serial (RX_485_Pin , TX_485_Pin );

// Valve is controled by four relais. See above!!!
#define Valve_Relais_Moving  LOW    // Relais moving - current to valve, low opening, high closing
#define Valve_Relais_Idle    HIGH   // Relais idle - NO current to valve motor

#define Machine_Relais_Closed 1024  // Analog pin set to its maximum value.
#define Machine_Relais_Open   0     // Analog pin set to its lowest value.

// When emergency is raised, system requires reset...
boolean bEmergency_Raised            = false;
boolean bLeds_Emergency_On           = false;

boolean bShowDebugInfo               = false;

boolean bDust_Collector_Power_Status = false;
boolean bDustCollector_Power_On      = false;
boolean bDust_Collector_Restarting   = false;
boolean bMachine_Power_On            = false;

//------------------------------------------
// Delay for restarting the dustcollector
// Set this to 10000 = 12 seconds (appr).
//------------------------------------------

int iDust_Collecter_Restart_Counter = -1;
int iDust_Collecter_Restart_Delay_In_MilliSeconds = 10000;

//------------------------------------------
// If the valve is bissy (moving) we need
// to check whether it has reached one of
// its postions then stop the motor ASAP.
//------------------------------------------

boolean bValve_Relais_Bissy         = false;

//------------------------------------------
// If Valve is moving, then this is used for the
// direction! Opening = true, Closing = false.
//------------------------------------------

boolean bValve_Relais_Opening       = false;

//------------------------------------------
// Actions - (commands and responses)
// These are transmitted via the RS485 line.
//------------------------------------------

int iAction_Dust_Collector_On       = 1;
int iAction_Dust_Collector_Off      = 2;

int iAction_Machine_On              = 11;
int iAction_Machine_Off             = 12;

int iAction_Machine_All_Off         = 13;
int iAction_Machine_All_Others_Off  = 14;

int iAction_Status_Machine_On       = 15;
int iAction_Status_Machine_Off      = 16;

int iAction_Gate_Valve_Open_All     = 21;
int iAction_Gate_Valve_Close_All    = 22;
int iAction_Gate_Valve_Open_Others  = 23;
int iAction_Gate_Valve_Close_Others = 24;

int iAction_Request_ValveStatus     = 31;
int iAction_Status_ValveOpen        = 32;
int iAction_Status_ValveClosed      = 33;
int iAction_Status_ValveMoving      = 34;

int iAction_Project_Get_Version     = 41;
int iAction_Project_Version_Info    = 42;

int iAction_Request_Status          = 81;
int iAction_Status_Ready            = 82;

int iAction_Set_IDNumber            = 83;
int iAction_Set_MaxMachines         = 84;

int iAction_IDNumber_SetOk          = 85;
int iAction_MaxMachines_SetOk       = 86;

int iAction_IDNumber_SetFailed      = 87;
int iAction_MaxMachines_SetFailed   = 88;

int iAction_Emergency_Off           = 90;
int iAction_Emergency               = 99;

//------------------------------------------
// Controller variables stored in EEPROM
//
// There is another variable which can be
// stored in EEPROM memory See Above!!!
//
// WARNING: Dustcollector ID_Number must
// be 1 and equal to iID_DustCollector!!!
//------------------------------------------

int iID_DustCollector = 1; // Dont edit this number!!!

int iID_Number   = 99;     // It can be changed using Serial monitor - IDNumber x (where 0 < x < 64)!
// here 99 is used for a standard. If the Arduino already contains a
// IDNumber then this is used.. So, 99 means that this Arduino IDNumber must
// be set!!!
// Each Arduino must have an unique ID#!!

int iMaxMachines = 10;     // It can be changed using Serial monitor - Max x (where 0 < x < 64)!

int iID_Function = 0;      // Number for the funciton of the machine!
// 0 = Normal function (Default).
// 1 = Only air.

int iRSDelay = 2;          // Delay for the read and write to the RS485!
// 1 = 9600 baud
// 2 = 4800 baud etc

//------------------------------------------
// Variable showing whether any connected
// controllers are active.
//------------------------------------------

int iNumber_Controllers_Active = 0;

//---------------------------------------------------------------------------------------------
// Setup routine to initialise pins etc.
//---------------------------------------------------------------------------------------------

void setup() {

  // Set up Pins for in or output
  pinMode( EMERGENCY_Button_Pin   , INPUT  );
  pinMode( EMERGENCY_Ext_Pin      , INPUT  );

  pinMode( RS485_control_Pin      , OUTPUT );

  pinMode( Air_Button_BLUE_Pin    , INPUT  );
  pinMode( Air_Button_RED_Pin     , INPUT  );
  // LEDS
  pinMode( LED_Motor_On_Pin       , OUTPUT );
  pinMode( LED_Air_On_Pin         , OUTPUT );

  // Pins for controling the valve - via relais
  // Old code
  // pinMode( Valve_Open1_Pin        , OUTPUT );
  // pinMode( Valve_Open2_Pin        , OUTPUT );
  // pinMode( Valve_Close1_Pin       , OUTPUT );
  // pinMode( Valve_Close2_Pin       , OUTPUT );

  pinMode( Valve_Open_Pin            , OUTPUT );
  pinMode( Valve_Close_Pin           , OUTPUT );
  pinMode( Valve_Enabled_Pin         , OUTPUT );

  //Reset pin
  pinMode( RESET_Arduinos_Pin        , OUTPUT );

  // Pins connected to contactswitches
  pinMode( Valve_Status_Open         , INPUT  );
  pinMode( Valve_Status_Closed       , INPUT  );

  //------------------------------------------
  // Make sure that Relias controlling 220V
  // line is off = relais is in open state!!!
  //------------------------------------------

  analogWrite( Machine_Power_Pin , Machine_Relais_Open );

  //------------------------------------------
  // Start Serial comms via RS485 line.
  //------------------------------------------

  digitalWrite( RS485_control_Pin , RS485receive ); // Setup RS485 for receiving

  RS485_serial.begin(4800);

  //------------------------------------------
  // Retrieve variables from memory.
  //
  // Place  Meaning
  // 0      ID_Number
  // 1      Max machines
  // 2-3    Delay (Start delay after turning off Dustcollector)
  // 4      Funciton of the machine
  // 5      Delay for sending and receiving on the RS485 line
  //
  //------------------------------------------

  int iStoredNumber = EEPROM.read(0);

  if ((iStoredNumber > 0) && (iStoredNumber < 64))
  {
    iID_Number = iStoredNumber;
  }

  int iStoredNumber2 = EEPROM.read(1);

  if ((iStoredNumber2 > 0) && (iStoredNumber2 < 64))
  {
    iMaxMachines = iStoredNumber2;
  }

  int iStoredNumber3 = Sub_Read_Int_From_EEPROM( 2 );

  if ((iStoredNumber3 > 100) && (iStoredNumber3 < 64000))
  {
    iDust_Collecter_Restart_Delay_In_MilliSeconds = iStoredNumber3;
  }

  int iStoredNumber4 = EEPROM.read(4);

  if ((iStoredNumber4 > 0) && (iStoredNumber4 < 64))
  {
    iID_Function = iStoredNumber4;
  }

 int iStoredNumber5 = EEPROM.read(5);

  if ((iStoredNumber4 > 0) && (iStoredNumber4 < 64))
  {
    iRSDelay = iStoredNumber4;
  }

  

  // Set Relais to closed or off state!!
  // Old code
  //  digitalWrite( Valve_Open1_Pin    , Valve_Relais_Idle );
  //  digitalWrite( Valve_Open2_Pin    , Valve_Relais_Idle );
  //  digitalWrite( Valve_Close1_Pin   , Valve_Relais_Idle );
  //  digitalWrite( Valve_Close2_Pin   , Valve_Relais_Idle );

  digitalWrite( Valve_Open_Pin    , Valve_Relais_Idle );
  digitalWrite( Valve_Close_Pin   , Valve_Relais_Idle );
  digitalWrite( Valve_Enabled_Pin , HIGH );
   
  // LEDS motor and air off / power on
  analogWrite( LED_Motor_On_Pin     , 0 );
  analogWrite( LED_Air_On_Pin       , 0 );
  analogWrite( LED_Power_On_Pin     , 1024 );

  //------------------------------------------
  // Serial begin and showing startup screen
  //------------------------------------------

  Sub_Start_Serial();
  Sub_Show_StartUp_Info( iID_Number , iMaxMachines , iDust_Collecter_Restart_Delay_In_MilliSeconds , iID_Function );
  Sub_Show_Connected_Controllers_Info( iID_Number , iMaxMachines );

}

//---------------------------------------------------------------------------------------------
// loop() routine
//---------------------------------------------------------------------------------------------

void loop()
{
  //------------------------------------------
  // Handle serial comm
  // See Z_DC_SerialFunctions.ino!!!
  //------------------------------------------

  Sub_Handle_Serial();

  //------------------------------------------
  // Handle communication between arduino's
  // via RS485 Line!
  // See Z_DC_FunctionsRS485.ino!!!
  //------------------------------------------

  Sub_Handle_RS485_Serial();

  //------------------------------------------
  // Handle Button presses - emergency line
  //------------------------------------------

  if ( digitalRead( EMERGENCY_Button_Pin ) && (!bEmergency_Raised))
  {
    Emergency_Routine();
  }

  //------------------------------------------
  // Handle Button presses
  //------------------------------------------

  if ( digitalRead( EMERGENCY_Ext_Pin ) && (!bEmergency_Raised))
  {
    Emergency_External_Routine();
  }

  //------------------------------------------
  // Handle Button presses - blue button
  //------------------------------------------

  if ( digitalRead( Air_Button_BLUE_Pin )  && (!bEmergency_Raised) && (!digitalRead( Air_Button_RED_Pin )) )
  {

    if (iID_Number == iID_DustCollector)
    {
      Sub_Handle_Blue_Button_Press_Dust_Collector();
    }
    else
    {
      Sub_Handle_Blue_Button_Press_Machine();
    }

  }

  //------------------------------------------
  // Handle Button presses - red button
  //------------------------------------------

  if ( digitalRead( Air_Button_RED_Pin )  && (!bEmergency_Raised) && (!digitalRead(Air_Button_BLUE_Pin)) )
  {
    if (iID_Number == iID_DustCollector)
    {
      Sub_Handle_Red_Button_Press_Dust_Collector();
    }
    else
    {
      Sub_Handle_Red_Button_Press_Machine();
    }
  }

  //------------------------------------------
  // Handle button presses - Reset!
  //------------------------------------------

  if ( digitalRead( Air_Button_RED_Pin ) && digitalRead( Air_Button_BLUE_Pin ) && (bEmergency_Raised))
  {
    Sub_RS485_WriteString( iID_Number , iID_DustCollector , iAction_Emergency_Off , 0 );
    bEmergency_Raised = false;
    analogWrite( LED_Motor_On_Pin , 0 );
    analogWrite( LED_Air_On_Pin   , 0 );
    delay(1000);
  }

  //------------------------------------------
  // Delay to make sure that RS485 is ready!
  //------------------------------------------

  delay(10);

  //------------------------------------------
  // Check whether the Dustcollector is set
  // for a restart! If so, then the Restart
  // delay is greater then 0! Count down
  // and then if check if counter has
  // come to zere or below. If so, turn
  // on Dustcollector
  //------------------------------------------

  if (iDust_Collecter_Restart_Counter >= 1  )
  {
    iDust_Collecter_Restart_Counter -= 10;

    if ((  bDust_Collector_Restarting  ) && (iID_Number == iID_DustCollector) )
    {
      // Assume that the Loop takes appr 10ms
      Sub_DustCollector_Control( true );
    }
  }

  //------------------------------------------
  // The Valve may still be opening or closing.
  // Check whether it has reached its open
  // or closed position. If it has then
  // stop the motor!!
  //------------------------------------------

  Check_Valve_Movement();

  //------------------------------------------
  // if emergency is raised, blink
  // the Air and Power LED's.
  //------------------------------------------

  if ( bEmergency_Raised )
  {
    if (bLeds_Emergency_On)
    {
      bLeds_Emergency_On = false;
      analogWrite( LED_Motor_On_Pin , 0 );
      analogWrite( LED_Air_On_Pin   , 1023 );
    }
    else
    {
      bLeds_Emergency_On = true;
      analogWrite( LED_Motor_On_Pin , 1023 );
      analogWrite( LED_Air_On_Pin   , 0 );
    }
    delay(100);
  }

} // End Sub

//---------------------------------------------------------------------------------------------
// Sub_Handle_Blue_Button_Press_Dust_Collector() routine
//---------------------------------------------------------------------------------------------

void Sub_Handle_Blue_Button_Press_Dust_Collector()
{

  if (!bDustCollector_Power_On)
  {
    // Send button press info to Serial
    Serial.println(F( "Blue Air Button pressed. Turning on Dustcollector..."));

    // Open the valve connected to this machine.
    Sub_Valve_Control( true );

    // Send button press to RS485 line
    Sub_RS485_WriteString( iID_Number , iID_DustCollector , iAction_Dust_Collector_On , 0 );

    bDustCollector_Power_On = true;

    //------------------------------------------
    // If button is pressed longer then 900ms
    // then also turn on the machine itself. If
    // the button is no longer pressed then
    // do nothin further.
    //------------------------------------------

    delay( 300 );
    Check_Valve_Movement(); // See below!!
    Serial.println( F( "Holding blue button..") );

    if ( digitalRead( Air_Button_BLUE_Pin ) )
    { delay( 300 );
      Check_Valve_Movement();
      Serial.println( F( "Holding ..") );
      if ( digitalRead( Air_Button_BLUE_Pin ) )
      { delay(300);
        Check_Valve_Movement();
        Serial.println( F( "Holding .." ) );
      }
    }
  }

  if ( digitalRead( Air_Button_BLUE_Pin )  && (!bEmergency_Raised))
  {
    Serial.println( F( "Blue Air Button pressed long or second time, so turn on Machine" ) );
    bMachine_Power_On = true;
    Sub_Machine_Control( true );
    // Let the controller of the Dustcollector know that machine is turned on!!
    Sub_RS485_WriteString( iID_Number , iID_DustCollector , iAction_Machine_On , 0 );
    delay( 300 );
  }
}

//---------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------
//
// WORK IN PROGRESS
//
// Button press must be handled differently for dustcollector controller and machines
//
// NOT DONE YET.... both functions are still the same!!!
//
// Rewrite and combine shared code ...
//
//---------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------
// Sub_Handle_Blue_Button_Press_Machine() routine
//---------------------------------------------------------------------------------------------

void Sub_Handle_Blue_Button_Press_Machine()
{

  //------------------------------------------
  // If Function of the machine is such that
  // it has its own power button then leave
  // this function... Because machine is
  // controlled by its own power button!!!
  //------------------------------------------

  if (iID_Function == 1)
  {
    exit;
  }

  if (!bDustCollector_Power_On)
  {
    // Send button press info to Serial
    Serial.println(F( "Blue Air Button pressed. Turning on Dustcollector..."));

    // Open the valve connected to this machine.
    Sub_Valve_Control( true );

    analogWrite( LED_Air_On_Pin   , 1023 ); // Turn LED just to be sure error not found even while debugging!!

    Check_Valve_Movement(); // See below!!

    // Send command press to RS485 line
    Sub_RS485_WriteString( iID_Number , iID_DustCollector , iAction_Dust_Collector_On , 0 );

    bDustCollector_Power_On = true;

    delay( 100 );
    Check_Valve_Movement(); // See below!!

    //------------------------------------------
    // If button is pressed longer then 900ms
    // then also turn on the machine itself. If
    // the button is no longer pressed then
    // do nothin further.
    //------------------------------------------

    delay( 200 );
    Check_Valve_Movement(); // See below!!

    if ( digitalRead( Air_Button_BLUE_Pin ) )
    { delay( 300 );
      Check_Valve_Movement();
      Serial.println( F( "Holding blue button ..") );
      if ( digitalRead( Air_Button_BLUE_Pin ) )
      { delay(300);
        Check_Valve_Movement();
        Serial.println( F( "Holding .." ) );
      }
    }
  }

  if ( digitalRead( Air_Button_BLUE_Pin )  && (!bEmergency_Raised))
  {
    Serial.println( F( "Blue Air Button pressed long or second time, so turn on Machine" ) );
    bMachine_Power_On = true;
    Sub_Machine_Control( true );
    // Let the controller of the Dustcollector know that machine is turned on!!
    Sub_RS485_WriteString( iID_Number , iID_DustCollector , iAction_Machine_On , 0 );
    delay( 300 );
  }
}

//---------------------------------------------------------------------------------------------
// Sub_Handle_Red_Button_Press_Dust_Collector() routine
//---------------------------------------------------------------------------------------------

void Sub_Handle_Red_Button_Press_Dust_Collector()
{

  //------------------------------------------
  // If Function of the machine is such that
  // it has its own power button then leave
  // this function... Because machine is
  // controlled by its own power button!!!
  //------------------------------------------

  if (iID_Function == 1)
  {
    exit;
  }

  if (bMachine_Power_On)
  {
    // Send button press info to Serial
    Serial.print(  F( "Red Air Button pressed. " ));

    Sub_RS485_WriteString( iID_Number , iID_DustCollector , iAction_Machine_Off , 0 );

    Sub_Machine_Control( false );
    bMachine_Power_On = false;

    delay( 300 );

    Serial.println( F( "Holding red button.." ) );
    if ( digitalRead( Air_Button_RED_Pin ) )
    {
      delay( 300 );
      Serial.println( F( "Holding .." ) );
      if ( digitalRead( Air_Button_RED_Pin ) )
      {
        delay( 300 );
        Serial.println( F( "Holding .." ) );
      }
    }
  }

  if ( digitalRead( Air_Button_RED_Pin )  && (!bEmergency_Raised))
  {
    bDustCollector_Power_On = false;

    // Send button press info to Serial
    Serial.print(F( "Red Button pressed long or second time, turn dustcollector off. " ));

    Sub_RS485_WriteString( iID_Number , iID_DustCollector , iAction_Dust_Collector_Off , 0 );

    Sub_Valve_Control( false );

    delay( 100 );
    Check_Valve_Movement(); // See below!!
    delay( 200 );

  }
}

//---------------------------------------------------------------------------------------------
// Sub_Handle_Red_Button_Press_Machine()
//---------------------------------------------------------------------------------------------

void Sub_Handle_Red_Button_Press_Machine()
{
  if (bMachine_Power_On)
  {
    // Send button press info to Serial
    Serial.print(  F( "Red Air Button pressed. " ));

    Sub_RS485_WriteString( iID_Number , iID_DustCollector , iAction_Machine_Off , 0 );

    Sub_Machine_Control( false );
    bMachine_Power_On = false;

    delay( 300 );
    Serial.println( F( "Holding red button.." ) );
    if ( digitalRead( Air_Button_RED_Pin ) )
    {
      delay( 300 );
      Serial.println( F( "Holding .." ) );
      if ( digitalRead( Air_Button_RED_Pin ) )
      {
        delay( 300 );
        Serial.println( F( "Holding .." ) );
      }
    }
  }

  if ( digitalRead( Air_Button_RED_Pin )  && (!bEmergency_Raised))
  {
    bDustCollector_Power_On = false;

    // Send button press info to Serial
    Serial.print(F( "Red Button pressed long or second time, turn dustcollector off. " ));

    Sub_RS485_WriteString( iID_Number , iID_DustCollector , iAction_Dust_Collector_Off , 0 );

    Sub_Valve_Control( false );
    delay( 300 );
  }
}

//---------------------------------------------------------------------------------------------
// Sub_Machine_Control() routine
//---------------------------------------------------------------------------------------------

void Sub_Machine_Control( bool bMachine_Status )
{

  // If status = true turn motor on, false off
  if ( bMachine_Status == true )
  {
    analogWrite( Machine_Power_Pin , Machine_Relais_Closed );
    analogWrite( LED_Motor_On_Pin   , 1023 );
  }
  else
  {
    analogWrite( Machine_Power_Pin , Machine_Relais_Open );
    analogWrite( LED_Motor_On_Pin   , 0 );
  }

}

//---------------------------------------------------------------------------------------------
// DustCollector_Off() routine
//---------------------------------------------------------------------------------------------

void Sub_DustCollector_Control( boolean bDust_Collector_Status )
{
  if ( bDust_Collector_Status )
  {
    if ( iDust_Collecter_Restart_Counter > 1 )
    {
      bDust_Collector_Restarting = true;
      return;
    }
    analogWrite( Machine_Power_Pin , Machine_Relais_Closed );
    analogWrite( LED_Air_On_Pin   , 1023 );
    bDust_Collector_Power_Status = true;
    bDust_Collector_Restarting = false;
    iDust_Collecter_Restart_Counter = -1;
  }
  else
  {
    analogWrite( Machine_Power_Pin , Machine_Relais_Open );
    analogWrite( LED_Air_On_Pin   , 0 );
    bDust_Collector_Power_Status = false;
    // Set Delay to its correct value
    iDust_Collecter_Restart_Counter = iDust_Collecter_Restart_Delay_In_MilliSeconds;
  }

}

//---------------------------------------------------------------------------------------------
