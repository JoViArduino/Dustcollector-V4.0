//---------------------------------------------------------------------------------------------
// Dustcollector V3.1
//---------------------------------------------------------------------------------------------
//
// Name......: Z_DC_Emergency.ino
// Version...: 19-09-2023
//             Part of Dustcollector project V3.1
// last edits: 26-05-2023
// Author....: J. Vink
// Board.....: Arduino Uno
//
//---------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------
// Emergency_Routine() routine
//---------------------------------------------------------------------------------------------
//
// Emergency is triggered when one of the emergency button is pressed. The emergency is send
// to other controllers, by pulling emergencvy line high amd also by sending emergency action
// via TS485.
//
// Internal mergency if button on pin 2 was pressed. Line 7 of utp cable high
//
//---------------------------------------------------------------------------------------------

void Emergency_Routine()
{
  
  //------------------------------------------
  // We want the emergency hanlded ASAP!
  // So: turn off all interupts....
  //------------------------------------------
  
  noInterrupts ();

  //------------------------------------------
  // Turn off machine, DC and Valve
  //------------------------------------------

  Sub_Machine_Control( false );
  Sub_DustCollector_Control( false );
  Sub_Valve_Control( false );

  //------------------------------------------
  // Emergency is raised set flag for reset!
  // User must no reset the emergency, before
  // continuing using the system.
  // Reset = pressing blue and red button
  // Reset is only possible on the controller
  // on which the emergency wasw raised!!!
  //------------------------------------------

  bEmergency_Raised = true;

  //------------------------------------------
  // Send signal to other controlers:
  // Turn emergency pin high!
  //------------------------------------------

  pinMode( EMERGENCY_Button_Pin   , OUTPUT  );
  digitalWrite( EMERGENCY_Ext_Pin , HIGH );
  delay( 200 );
  digitalWrite( EMERGENCY_Ext_Pin , LOW );
  pinMode( EMERGENCY_Button_Pin   , INPUT  );

  //------------------------------------------
  // Send Emergency also via RS485 line...
  // EXtra redundancy!!!
  //------------------------------------------
  
  digitalWrite( RS485_control_Pin , RS485transmit );
  delay( 10 );

  RS485_serial.print( Int_to_String( iID_Number        , 2 ) );
  RS485_serial.print( Int_to_String( 1                 , 2 ) );
  RS485_serial.print( Int_to_String( iAction_Emergency , 2 ) );

  delay( 10 );
  digitalWrite( RS485_control_Pin , RS485receive );

  //------------------------------------------
  // Inform serial monitor of Emergency.
  //------------------------------------------

  Serial.println( F( "Interne NOODKNOP ingedrukt !!!!!!!!!!!!!!!!!" ) );
  
  interrupts();

  //------------------------------------------
  // Delay to prevent another trigger...
  //------------------------------------------

  delay(400);

} // End function emergency_button_routine.

//---------------------------------------------------------------------------------------------
// Emergency_External_Routine() routine -----
//---------------------------------------------------------------------------------------------

void Emergency_External_Routine()
{
  noInterrupts ();

  Sub_Machine_Control( false );
  Sub_DustCollector_Control( false );
  Sub_Valve_Control( false );
  
  Serial.println( F( "Externe NOODKNOP ingedrukt !!!!!!!!!!!!!!!!!" ) );

  interrupts();

} // End function emergency_External_routine.
