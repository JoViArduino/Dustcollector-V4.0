//---------------------------------------------------------------------------------------------
// Dustcollector V3.1
//---------------------------------------------------------------------------------------------
//
// Name......: Z_DC_SerialFunctions.ino
// Version...: 19-09-2023
//             Part of Dustcollector project V3.1
// last edits: 29-11-2023
// Author....: J. Vink
// Board.....: Arduino Uno
//
//---------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------
// Emergency_Routine() routine
// All function for Serial comms are collected here, so for convenience, this one as well:
//---------------------------------------------------------------------------------------------

void Sub_Start_Serial()
{
  Serial.begin(9600);
}

//---------------------------------------------------------------------------------------------
// Emergency_Routine() routine
//---------------------------------------------------------------------------------------------

void Sub_Handle_Serial()
{

  if (Serial.available())
  {

    String cReadString = Serial.readString();

    cReadString.toUpperCase();
    
    //------------------
    // Version ... give back version info!
    //------------------

    if (cReadString.substring(0, 7) == "VERSION")
    {
      cReadString = cReadString.substring(8, cReadString.length());

      if (cReadString == "All")
      {
        Sub_Retrieve_Version_From_All_Contollers();
      }
      else
      {
        Serial.println( F( " " ));
        Serial.print( sVersion );
        Serial.println( F( " " ));
      }
    }

    //------------------
    // Version ... give back version info!
    //------------------

    else if (cReadString.substring(0, 5) == "DEBUG")
    {
      if (!bShowDebugInfo)
      {
        bShowDebugInfo = true;
        Serial.println( F( " Debug toggled on! " ) );
        return;
      }
      else
      {
        bShowDebugInfo = false;
        Serial.println( F( " Debug toggles off! " ) );
      }
    }

    //------------------
    // Reset all Arduinos
    //------------------

    else if (cReadString.substring(0, 5) == "RESET")
    {

      if (iID_Number == iID_DustCollector)
      {

        Serial.println( F( " Reseting all Arduino's .... " ) );
        Serial.println( F( " Please wait .... " ) );

        digitalWrite( RESET_Arduinos_Pin , HIGH );
        delay(200);
        digitalWrite( RESET_Arduinos_Pin , HIGH );

        Serial.println( F( " Arduino's are starting up .... " ) );
        Serial.println( F( " please wait 10 seconds .... " ) );
      }
      else
      {
        Serial.println( F( " Command only available on controller connected to the dustcollector!!" ) );
      }
      return;
    }

    //------------------
    // Valves open / close
    //------------------

    else if (cReadString.substring(0, 6) == "VALVES")
    {
      cReadString = cReadString.substring(8, cReadString.length());
      if (cReadString == "open")
      {
        Serial.println( F( "Opening all valves on connected and active controllers.." ));
        Sub_RS485_WriteString( iID_Number , iID_Number , iAction_Gate_Valve_Open_All , 0 );
      }
      else if (cReadString == "close")
      {
        Serial.println( F( "Closing all valves on connected and active controllers.." ));
        Sub_RS485_WriteString( iID_Number , iID_Number , iAction_Gate_Valve_Close_All , 0 );
      }
      else
      {
        Serial.println( F( "Valve: wrong parameter (Open Close / case sensitive!!)..." ));
      }
    }

    //------------------
    // IDNumber ... set IDNumber
    //------------------

    else if (cReadString.substring(0, 9) == "IDNUMBER ")
    {
      Serial.print( F( "Received IDNumber..." ));

      cReadString = cReadString.substring(9, cReadString.length());
      int iReadNumber = cReadString.toInt();
      EEPROM.write(0 , iReadNumber );

      Serial.print( iReadNumber );
      Serial.println( F( " stored to EEPROM memory!" ));
    }

    //------------------
    // Max ... gives maximum number of connected controllers
    //------------------

    else if (cReadString.substring(0, 4) == "MAX ")
    {
      Serial.print( "Received Max machines ..." );

      cReadString = cReadString.substring(4, cReadString.length());
      int iReadNumber = cReadString.toInt();
      EEPROM.write(1 , iReadNumber );

      Serial.print( iReadNumber );
      Serial.println( " stored to EEPROM memory!");
    }

    //------------------
    // Func X ... Set function of the machine.
    //------------------

    else if (cReadString.substring(0, 4) == "FUNC ")
    {

      Serial.print( F( "Received Function for Controller ..." ));

      cReadString = cReadString.substring(7, cReadString.length());
      int iReadNumber = cReadString.toInt();
      Sub_Write_Int_to_EEPROM( 3 , iReadNumber );

      Serial.print( iReadNumber );
      Serial.println( F( " and stored to EEPROM memory!" ));

    }

    //------------------
    // Delay ... set delay in milliseconds
    //------------------

    else if (cReadString.substring(0, 6) == "DELAY ")
    {
      Serial.print( F( "Received Delay ..." ));

      cReadString = cReadString.substring(6, cReadString.length());
      int iReadNumber = cReadString.toInt();
      Sub_Write_Int_to_EEPROM( 2 , iReadNumber );

      Serial.print( iReadNumber );
      Serial.println( F( " and stored to EEPROM memory!" ));
    }
        //------------------
    // Delay ... set delay in milliseconds
    //------------------

    else if (cReadString.substring(0, 8) == "RSDELAY ")
    {
      Serial.print( F( "Received Delay for RS485..." ));

      cReadString = cReadString.substring(6, cReadString.length());
      int iReadNumber = cReadString.toInt();
      Sub_Write_Int_to_EEPROM( 5 , iReadNumber );

      Serial.print( iReadNumber );
      Serial.println( F( " and stored to EEPROM memory!" ));
    }

    //------------------
    // Help ... show info on screen
    //------------------

    else if (cReadString.substring(0, 4) == "HELP")
    {
      Print_Help_Text();
    }

    //------------------
    // Help ... show info on screen
    //------------------

    else if (cReadString.substring(0, 6) == "EEPROM")
    {
      Sub_Show_StartUp_Info( iID_Number , iMaxMachines , iDust_Collecter_Restart_Delay_In_MilliSeconds , iID_Function);
    }

    //------------------
    // Help ... show info on screen
    //------------------

    else if (cReadString.substring(0, 4) == "CONT")
    {
      Sub_Show_Connected_Controllers_Info( iID_Number , iMaxMachines );
    }

    //------------------
    // Serial acces to Valves: Valve XX Open / Close
    //------------------

    else if (cReadString.substring(0, 7) == "ACTION ")
    {

      // Retrieve idnumber and action
      String cReadString = cReadString.substring( 8, 2 );
      int iReadNumber1 = cReadString.toInt();
      cReadString = cReadString.substring( 11, 2 );
      int iReadNumber2 = cReadString.toInt();

    }

    //------------------
    // Help ... show info on screen
    //------------------

    else
    {
      Serial.println( "Invalid command... try Help.");
    }

  }
}

//---------------------------------------------------------------------------------------------
// Print_Startup_Info() routine
//---------------------------------------------------------------------------------------------

void Sub_Show_StartUp_Info( int iStoredNumber , int iStoredNumber2 , int iStoredNumber3 , int iStoredNumber4 )
{

  Serial.println(F("------------------------------------------------------------------"));
  Serial.print(F(" Starting Dustcollector: " ));
  Serial.println( sVersion );
  Serial.println(F("------------------------------------------------------------------"));
  Serial.println();
  Serial.print( F( " ID number of this machine: "));
  Serial.print( iStoredNumber );

  if ((iStoredNumber > 0) && (iStoredNumber < 64))
  {
    Serial.print( F( " Retrieved from EEPROM!!" ));
  }

  Serial.println();
  Serial.print( F( " Max connected machines: "));
  Serial.print( iStoredNumber2 );

  if ((iStoredNumber2 > 0) && (iStoredNumber2 < 64))
  {
    Serial.print( F( " Retrieved from EEPROM!!"));
  }

  Serial.println();
  Serial.print( F( " Delay in millisedconds: "));
  Serial.print( iStoredNumber3 );

  if ((iStoredNumber3 > 0) && (iStoredNumber3 < 64000))
  {
    Serial.print( F( " Retrieved from EEPROM!!"));
  }

  Serial.println();
  Serial.print( F( " Function of the connected machine: "));
  Serial.print( iStoredNumber4 );

  if ((iStoredNumber4 > 0) && (iStoredNumber4 < 64))
  {
    Serial.print( F( " Retrieved from EEPROM!!"));
  }

  Serial.println();
  Serial.println();
  Serial.println(F("------------------------------------------------------------------"));

}

//---------------------------------------------------------------------------------------------
// Print_Startup_Info() routine
//---------------------------------------------------------------------------------------------

void Sub_Show_Connected_Controllers_Info( int iStoredNumber , int iStoredNumber2)
{

  int iMachines_Responding = 0;

  if (iID_Number == iID_DustCollector)
  {
    delay(50);
    digitalWrite( RS485_control_Pin , RS485transmit );
    delay(10);

    // Ask for Identitifaction and Status

    Serial.println( F( " " ));
    Serial.println( F( " Looking for connected controllers: " ));
    Serial.println( F( " " ));

    for ( int iMachine = 2 ; iMachine < iMaxMachines + 1 ; iMachine ++ )
    {
      Serial.print( F( " Searching for machine " ));
      Serial.print( iMachine );

      RS485_serial.print( Int_to_String( 1                      , 2 ) );
      RS485_serial.print( Int_to_String( iMachine               , 2 ) );
      RS485_serial.print( Int_to_String( iAction_Request_Status , 2 ) );
      RS485_serial.print( Int_to_String( 0 , 2 ) );
      delay( 60 );
      digitalWrite( RS485_control_Pin , RS485receive );
      delay( 200 );

      if (RS485_serial.available())
      {
        // Read the first message from buffer.
        // This is the empty response, the next one
        // may contain the actual response from
        // the controller.
        int iReadMess1 = RS485_Serial_Read_Integer();
        int iReadMess2 = RS485_Serial_Read_Integer();
        int iReadMess3 = RS485_Serial_Read_Integer();

        if ( bShowDebugInfo )
        {
          Serial.print(  F( " String read: " ) );
          Serial.print(  iReadMess1 );
          Serial.print(  F( " : " ) );
          Serial.print(  iReadMess2 );
          Serial.print(  F( " : " ) );
          Serial.print(  iReadMess3 );
          Serial.println( F(  " ." ) );
        }

        if ( iAction_Status_Ready == iReadMess3 )
        {
          Serial.print( F( " ... responding and active" ) );
          iMachines_Responding += 1;
        }
        else
        {
          Serial.print( F( " ... not responding correctly!" ) );
        }
        // Read last info from buffer to empty it!!
        int iReadMess4 = RS485_Serial_Read_Integer();
      }
      else
      {
        Serial.print( F( " ... not responding!" ) );
      }

      Serial.println( F( "." ));
      digitalWrite( RS485_control_Pin , RS485transmit );
      delay(10);

    } // end for ...

    if ( iMachines_Responding == 0)
    {
      Serial.println( F( " " ));
      Serial.println( F( " WARNING! There are no controllers active!! Nothing to listen to!!!") );
    }

    Serial.println( F( " " ));

  } // end if (iID_Number == iID_DustCollector)

  //------------------------------
  // Set RS485 line to receiving!!
  //------------------------------

  digitalWrite( RS485_control_Pin , RS485receive );
  delay(10);

} // End sub...

//---------------------------------------------------------------------------------------------
// Sub_Retrieve_Version_From_All_Contollers()() routine
//---------------------------------------------------------------------------------------------

void Sub_Retrieve_Version_From_All_Contollers()
{
  String sVersion = "";

  int iMachines_Responding = 0;

  if (iID_Number == iID_DustCollector)
  {
    delay(50);
    digitalWrite( RS485_control_Pin , RS485transmit );
    delay(10);

    // Ask for Identitifaction and Status

    Serial.println( F( " " ));
    Serial.println( F( " Looking for connected controllers: " ));
    Serial.println( F( " " ));

    for ( int iMachine = 2 ; iMachine < iMaxMachines + 1 ; iMachine ++ )
    {
      Serial.print( F( " Searching for version on machine: " ));
      Serial.print( iMachine );

      RS485_serial.print( Int_to_String( 1                           , 2 ) );
      RS485_serial.print( Int_to_String( iMachine                    , 2 ) );
      RS485_serial.print( Int_to_String( iAction_Project_Get_Version , 2 ) );
      RS485_serial.print( Int_to_String( 0                           , 2 ) );
      delay( 60 );
      digitalWrite( RS485_control_Pin , RS485receive );
      delay( 200 );


      if (RS485_serial.available())
      {
        // This message will be longer then normal and
        // with unkown lentgh.
        // It gives the version number as defined
        // in the main ino file.

        sVersion = "";
        sVersion = RS485_Serial_Read_Version();

        if ( sVersion.length() > 6 )
        {
          Serial.print( F( "Version: " ) );
          Serial.print( sVersion );
        }
        else
        {
          Serial.print( F( " ... machine not responding correctly!" ) );
        }

        // Read last info from buffer to empty it!!
        int iReadMess4 = RS485_Serial_Read_Integer();
      }
      else
      {
        Serial.print( F( " ... not responding!" ) );
      }

      Serial.println( F( " " ));
      digitalWrite( RS485_control_Pin , RS485transmit );
      delay(10);

    } // end for ...

    Serial.println( F( " " ));

  } // end if (iID_Number == iID_DustCollector)

  //------------------------------
  // Set RS485 line to receiving!!
  //------------------------------

  digitalWrite( RS485_control_Pin , RS485receive );
  delay(10);

} // End sub...

//---------------------------------------------------------------------------------------------
// Print_Help_Text() routine
//---------------------------------------------------------------------------------------------

void Print_Help_Text()
{
  //VERSION
  //DEBUG
  //RESET
  // EEPROM
  // CONTrolers
  // VALVES
  
  Serial.println( F(" " ) );
  Serial.println( F("The following commands are available: " ) );
  Serial.println( F(" " ) );
  Serial.println( F("IDNumber X (where X is number between 2 and 64."));
  Serial.println( F("WARNING!! IDNumber 1 is reserved for Dustcollector !!!!" ));
  Serial.println( F(" ") );
  Serial.println( F("IDNumber Change X Y (X present IDNumber | Y New IDNumber). " ));
  Serial.println( F(" ") );
  Serial.println( F("Max X (where X is number of machines between 1 and 31!" ));
  Serial.println( F(" " ));
  Serial.println( F( "Delay X (Delay for duscollector startup in ms where X is number of machines between 1 and 31!" ));
  Serial.println( F(" " ) );
  Serial.println( F( "RSDelay X (Delay for Sending and receiving RS485 line X number between 1 and 64). " ) );
  Serial.println( F(" " ));
  Serial.println( F("Codes: " ));
  Serial.println( F("" ));
  Serial.println( F("01 = Dust collector on" ));
  Serial.println( F("02 = Dust collector off" ));
  Serial.println( F("" ));
  Serial.println( F("11 = This machine: turn it on" ));
  Serial.println( F("12 = This machine: turn it off") );
  Serial.println( F("" ));
  Serial.println( F("13 = Turn all Machine off") );
  Serial.println( F("14 = Turn all other Machines off") );
  Serial.println( F("") );
  Serial.println( F("21 = All valves closing" ));
  Serial.println( F("22 = All other valves closing" ));
  Serial.println( F("" ));
  Serial.println( F("81 = Status of this machine: not ready") );
  Serial.println( F("82 = Status of this Machine: is ready") );
  Serial.println( F("" ));
  Serial.println( F("83 = Set ID Number for this controller" ));
  Serial.println( F("84 = Set maximum connected controllers / Machines" ));
  Serial.println( F("" ));
  Serial.println( F("85 = ID Number set: Ok" ));
  Serial.println( F("86 = Max connected controllers set: Ok"));
  Serial.println( F("" ));
  Serial.println( F("87 = ID Number set: failed" ));
  Serial.println( F("88 = Max connected controllers set: failed" ));
  Serial.println( F("" ));
  Serial.println( F("99 = Emergency!!!" ));
}
