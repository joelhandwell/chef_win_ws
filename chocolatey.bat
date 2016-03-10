REM run this in cmd as Administrator

REM Prepare chocolatey installation directory https://github.com/chocolatey/choco/wiki/Installation#before-you-install
MKDIR C:\ProgramData\Chocolatey
SETX ChocolateyInstall C:\ProgramData\Chocolatey

@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

REM after running this, restart cmd to make sure the change to be applied.
