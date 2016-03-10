REM Performance settings. Execute after creating RAM drive D
MKDIR C:\Windows\TEMP
MKDIR C:\Users\%USERNAME%\AppData\Local\Temp
SETX TMP C:\Users\%USERNAME%\AppData\Local\Temp
SETX TEMP C:\Users\%USERNAME%\AppData\Local\Temp
MKDIR C:\Users\%USERNAME%\AppData\Roaming
SETX APPDATA C:\Users\%USERNAME%\AppData\Roaming
MKDIR C:\Users\%USERNAME%\AppData\Local
SETX LOCALAPPDATA C:\Users\%USERNAME%\AppData\Local
