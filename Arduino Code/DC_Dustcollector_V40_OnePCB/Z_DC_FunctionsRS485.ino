//---------------------------------------------------------------------------------------------
// Dustcollector V3.1
//---------------------------------------------------------------------------------------------
//
// Name......: Z_DC_Functions.ino
// Version...: 19-09-2023
//             Part of Dustcollector project V3.1
// last edits: 26-05-2023
// Author....: J. Vink
// Board.....: Arduino Uno
//
//---------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------
// Sub_Handle_RS485_Serial() routine
//---------------------------------------------------------------------------------------------

void Sub_Handle_RS485_Serial()
{
  if (RS485_serial.available())
  {
    //------------------------------------------
    // Read the required info: 
    // Format : IDSource
    //          IDTarget
    //          Action Value (optional)
    //          Dummy (to prevent noise)
    //------------------------------------------

    int iIDSource       = RS485_Serial_Read_Integer();
    int iIDTarget       = RS485_Serial_Read_Integer();
    int iActionNumber   = RS485_Serial_Read_Integer();
    int iActionSetValue = 99;
        iActionSetValue = RS485_Serial_Read_Integer();
    int iDummy          = RS485_Serial_Read_Integer();
        iDummy          = RS485_Serial_Read_Integer();

    //---------------------------
    // Send information to serial
    //---------------------------

    // Show when Debug is on or when it is valid info

    if ( ( (iIDSource != 0) && (!bShowDebugInfo) ) ||
         (bShowDebugInfo) )
    {
      Serial.print(F( "Received from controler IDnumber: " ));
      Serial.print( iIDSource );
      Serial.print(F( " action controler: "));
      Serial.print( iIDTarget );
      Serial.print(F( " Action: " ));
      Serial.print( iActionNumber  );
      Serial.print(F( " SetValue (optional): " ));
      Serial.print( iActionSetValue );
      Serial.println(F( "." ));
    }

    //---------------------------
    // Handle the Actions.
    // Dustcollector on.
    //---------------------------

    if (( iActionNumber == iAction_Dust_Collector_On ) && (iID_Number == iID_DustCollector))
    {
      Sub_DustCollector_Control( true );
      Serial.println(F( "Turning on Dustcollector."));
      Sub_RS485_WriteString( iID_Number , iIDSource , iAction_Gate_Valve_Close_Others , 0 );
    }

    //---------------------------
    // Dustcollector off.
    //---------------------------

    if (( iActionNumber == iAction_Dust_Collector_Off) && (iID_Number == iID_DustCollector))
    {
      Sub_DustCollector_Control( false );
      Serial.println(F( "Turning off Dustcollector."));
    }

    //---------------------------
    // A Machine has turned on
    //---------------------------

    if (( iActionNumber == iAction_Machine_On) && (iID_Number == iID_DustCollector))
    {
      Serial.print(F( "A Machine has turned on, with ID Number: "));
      Serial.println( iID_Number );
      // Turn all other machines off!!!
      Sub_RS485_WriteString( iID_Number , iIDSource , iAction_Machine_All_Others_Off , 0 );
    }

    //---------------------------
    // A Machine has turned off
    //---------------------------

    if (( iActionNumber == iAction_Machine_Off) && (iID_Number == iID_DustCollector))
    {
      Serial.print(F( "A Machine has turned off, with ID Number: "));
      Serial.println( iID_Number );
    }

    //---------------------------
    // Open all the valves.
    //---------------------------

    if ( iActionNumber == iAction_Gate_Valve_Open_All )
    {
      Sub_Valve_Control( true );
    }

    //---------------------------
    // Close all the valves.
    //---------------------------

    if (iActionNumber == iAction_Gate_Valve_Close_All)
    {
      Sub_Valve_Control( false );
    }

    //---------------------------
    // Close all valves off other controlers.
    //---------------------------

    if ((iActionNumber == iAction_Gate_Valve_Close_Others) &&
        (iIDTarget != iID_Number))
    {
      Sub_Valve_Control( false );
      bDustCollector_Power_On = false;
      Sub_Machine_Control( false );
      bMachine_Power_On = false;
    }

    //---------------------------
    // All Machines off.
    //---------------------------

    if (iActionNumber == iAction_Machine_All_Off)
    {
      Sub_Machine_Control( false );
    }

    //---------------------------
    // All other machines off exepct the one
    // giving the command = IDNumber.
    //---------------------------

    if ((iActionNumber == iAction_Machine_All_Others_Off) &&
        (iIDTarget != iID_Number) )
    {
      Sub_Machine_Control( false );
      bMachine_Power_On = false;
    }

    //---------------------------
    // Status request by host (Dustcollector)
    //---------------------------

    if ((iActionNumber == iAction_Request_Status) && (iIDTarget == iID_Number))
    {
      Serial.println( F("Responding to status request...." ) );
      Sub_RS485_WriteString( iID_Number , iID_DustCollector , iAction_Status_Ready , 0 );
    }

    //---------------------------
    // Reset after emergency!
    //---------------------------
    
    if (iActionNumber == iAction_Emergency_Off)
    {
      bEmergency_Raised = false;
      analogWrite( LED_Motor_On_Pin , 0 );
      analogWrite( LED_Air_On_Pin   , 0 );
    }
    
    //---------------------------
    // Version number request
    //---------------------------
    
    if ( iActionNumber == iAction_Project_Get_Version )
    {
      Sub_RS485_WriteString( iID_Number , iID_DustCollector , iAction_Project_Version_Info , sVersion.length() );
      RS485_serial.print( sVersion );
    }

  } // End RS485.available()...

}

//---------------------------------------------------------------------------------------------
// RS485_Serial_Read_Integer() routine
//---------------------------------------------------------------------------------------------

int RS485_Serial_Read_Integer()
{
 
  char cReceivedString1 = RS485_serial.read();
  delay(iRSDelay);
  char cReceivedString2 = RS485_serial.read();
  delay(iRSDelay);

  String sReceivedString =  String( cReceivedString1 );
  sReceivedString += String( cReceivedString2 );

  if (bShowDebugInfo)
  {
    Serial.print( F("#" ) );
    Serial.println( sReceivedString );
  }

  return sReceivedString.toInt();
}

//---------------------------------------------------------------------------------------------
// RS485_Serial_Read_Version() routine
//---------------------------------------------------------------------------------------------

String RS485_Serial_Read_Version()
{
  String sReceivedString = "";

  //---------------------------
  // Read the required info: Format : IDSource IDTarget Action Value (optional)
  //---------------------------

  int iIDSource       = RS485_Serial_Read_Integer();
  // delay( iRSDelay );
  int iIDTarget       = RS485_Serial_Read_Integer();
  // delay( iRSDelay );
  int iActionNumber   = RS485_Serial_Read_Integer();
  // delay( iRSDelay );
  int iActionSetValue = RS485_Serial_Read_Integer();
  // delay( iRSDelay );
  
  while (RS485_serial.available())
  {
    char cReceivedString = RS485_serial.read();
    delay(iRSDelay );
    sReceivedString += String( cReceivedString );
  }

  // Show the string that is read when there was input on the line
  // when there was suposed to be none present!!!!
  if (bShowDebugInfo)
  {
    Serial.print( F("$" ) );
    Serial.println( sReceivedString );
  }

  return sReceivedString;

}

//---------------------------------------------------------------------------------------------
// Emergency_Routine() routine
//---------------------------------------------------------------------------------------------

void Sub_RS485_WriteString( int iSourceID , int iTargetID , int iAction , int iSetValue )
{
  digitalWrite( RS485_control_Pin , RS485transmit );
  delay( iRSDelay );
  RS485_serial.print( Int_to_String( iSourceID , 2 ) ); // ID_Number this controler
  delay( iRSDelay );
  RS485_serial.print( Int_to_String( iTargetID , 2 ) ); // ID_Number Dustcollector
  delay( iRSDelay );
  RS485_serial.print( Int_to_String( iAction   , 2 ) ); // Action
  delay( iRSDelay );  
  RS485_serial.print( Int_to_String( iSetValue , 2 ) ); // Value for EEPROM
  delay( iRSDelay );  
  digitalWrite( RS485_control_Pin , RS485receive );
  delay( iRSDelay );  
}

//---------------------------------------------------------------------------------------------
// Int_to_String function
//---------------------------------------------------------------------------------------------

String Int_to_String( int Number , int iLength )
{
  String sNewString = String( Number );
  for (int x = 1 ; x < iLength ; x++)
  { if ( sNewString.length() == x)
    {
      sNewString = "0" + sNewString;
    }
  }
  return sNewString;
}

//---------------------------------------------------------------------------------------------
// Int_to_String function
//---------------------------------------------------------------------------------------------

void Sub_Write_Int_to_EEPROM(int address, int number)
{
  EEPROM.write(address, number >> 8);
  EEPROM.write(address + 1, number & 0xFF);
}

//---------------------------------------------------------------------------------------------
// Int_to_String function
//---------------------------------------------------------------------------------------------

int Sub_Read_Int_From_EEPROM(int address)
{
  return (EEPROM.read(address) << 8) + EEPROM.read(address + 1);
}
