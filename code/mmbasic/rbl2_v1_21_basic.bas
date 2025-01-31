' Robotling2 - basic
' The MIT Licence (MIT)
' Copyright (c) 2021-23 Thomas Euler
' 2021-11-07 - v0.15,  Initial release
' 2022-02-04 - v0.16,  CO2 sensor added
' 2022-09-27 - v0.17,  Changes towards CO2 sensing behaviour
' 2022-10-29 - v1.00,  CO2 bot's first release
' 2022-11-12 - v1.01,  resorting pins
' 2023-02-18 - v1.11,  small fixes, basic version (no display, no sensors)
' 2023-03-04 - v1.111, PWM assignment in one place; graceful exit on `Q`
' 2023-04-01 - v1.112, using new LIBRARY command
' ---------------------------------------------------------------------------
' Requirements:
'   `rbl_lib.bas` saved as library (new LIBRARY SAVE command)
'
' Assumed options:
'   OPTION COLOURCODE ON
'   OPTION DISPLAY 64, 80
'   OPTION AUTORUN ON
'
' Display
'   None
'
' Connections
'   M1 - left legs (front left servo)
'   M2 - right legs (front right servo)
'   M3 - centre legs (center servo)
'   A0 -
'   A1 -
'   D0 -
'   A2 -
'   5V -
'   gd -
'
' ---------------------------------------------------------------------------
Print
R.Log 0, "Robotling2 - basic"
R.Log 0, "------------------"

' Start of main program
Dim integer count = 0, turn = 0, dir = TURN_RIGHT

' Start moving
R.Spin 500
Do While R.running

  If turn = 1 Then
    ' Turn
    R.Move dir, 60
    R.Spin 5000

    ' Change direction of turn every 4 turns
    Inc count 1
    If (count Mod 4) = 0 Then
      dir = Choice(dir = TURN_LEFT, TURN_RIGHT, TURN_LEFT)
    EndIf
  Else
    ' Walk straight
    R.Move FORWARD, 60
    R.Spin 4000
  EndIf

  ' Change between walking and turning
  turn = Not(turn)
Loop

' Shutting down robot and exit
R.Stop
R.Spin 2000, END_OF_MOVE
R.Shutdown
R.Log NONE, "Done"

' ---------------------------------------------------------------------------
