//---------------------------------------------------------------------------------------------
// Dustcollector V3.1
//---------------------------------------------------------------------------------------------
//
// Name......: Z_DC_FunctionsValve.ino
// Version...: 19-09-2023
//             Part of Dustcollector project V3.1
// last edits: 26-05-2023
// Author....: J. Vink
// Board.....: Arduino Uno
//
//---------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------
// Check_Valve_Movement() routine
//
// Checks whether the Valve is closed or opened. If so, then stop motor!!!
//
// There are two contactswitches which tunr high if the valve reaches one of its
// limits. To ensure that the motor is stopped as soon as it reaches such a position
// this funciton is called upon often (see DC_Dustcollector_V31.ino).
//---------------------------------------------------------------------------------------------

void Check_Valve_Movement()
{

  // If Valve is already in one of its positions
  // open or closed then do nothing, so return.
  if ( !bValve_Relais_Bissy )
  {
    return;
  }

  if ( ( ( digitalRead( Valve_Status_Open    ) == true) && (bValve_Relais_Opening)  ) ||
       ( ( digitalRead( Valve_Status_Closed  ) == true) && (!bValve_Relais_Opening) ) )
  {
    // Old code
    // digitalWrite( Valve_Open1_Pin  , Valve_Relais_Idle );
    // digitalWrite( Valve_Open2_Pin  , Valve_Relais_Idle );
    // digitalWrite( Valve_Close1_Pin , Valve_Relais_Idle );
    // digitalWrite( Valve_Close2_Pin , Valve_Relais_Idle );
    
    digitalWrite( Valve_Open_Pin  , Valve_Relais_Idle );
    digitalWrite( Valve_Close_Pin , Valve_Relais_Idle );
    
    bValve_Relais_Bissy = false;

    if ( digitalRead( Valve_Status_Open ) == true )
    {
      Serial.println( F( "Valve open, motor stopped ...." ) );
    }
    else
    {
      Serial.println( F( "Valve closed, motor stopped ...." ) );
    }
  }

}

//---------------------------------------------------------------------------------------------
// Sub_Valve_Control(bool bValve_Status) routine
//---------------------------------------------------------------------------------------------
//
// This procedure starts opening of closing the valve. This will take some time en the
// procedure will be finisched and retunr to the main loop, while the valve still moves.
// See the other funciton to check the status of the valve. Is it moving, or is it in
// one of its positions, open or closed. See Check_Valve_Movement() routine
//
// bValve_Direction true  = Open the valve
//                  false = Close the valve
//
// Two variables will be set:
//
// bValve_Relais_Opening true  = opening
//                       false = closing
//
// bValve_Relais_Bissy   true  = Valve motor running
//                       false = Valve motor not running
//
//---------------------------------------------------------------------------------------------

void Sub_Valve_Control( bool bValve_Direction )
{

  // just to make sure, open the relais (they should be open),
  // open here means Not Connected.
  // Old code
  // digitalWrite( Valve_Open1_Pin  , Valve_Relais_Idle );
  // digitalWrite( Valve_Open2_Pin  , Valve_Relais_Idle );
  // digitalWrite( Valve_Close1_Pin , Valve_Relais_Idle );
  // digitalWrite( Valve_Close2_Pin , Valve_Relais_Idle );
  
  digitalWrite( Valve_Open_Pin  , Valve_Relais_Idle );
  digitalWrite( Valve_Close_Pin , Valve_Relais_Idle );

  // If status = true then Valve must be opened
  if ( bValve_Direction == true )
  {
    digitalWrite( Valve_Open_Pin  , Valve_Relais_Moving );
    // digitalWrite( Valve_Open2_Pin  , Valve_Relais_Moving );
    analogWrite( LED_Air_On_Pin   , 1023 );
    bValve_Relais_Opening = true; // Set direction status, true is opening!
  }
  else
  {
    digitalWrite( Valve_Close_Pin , Valve_Relais_Moving );
    // digitalWrite( Valve_Close2_Pin , Valve_Relais_Moving );
    analogWrite( LED_Air_On_Pin   , 0 );
    bValve_Relais_Opening = false; // Set direction status!
  }

  bValve_Relais_Bissy = true;

  if ( bShowDebugInfo )
  {
    Serial.print( F( "Moving Valve: " ) );
    Serial.println( bValve_Relais_Opening );
  }

}
