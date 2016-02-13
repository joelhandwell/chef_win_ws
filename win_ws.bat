REM Performance settings. Execute after creating RAM drive D
MKDIR D:\Windows\TEMP
MKDIR D:\Users\%USERNAME\AppData\Local\Temp
SETX TMP D:\Users\%USERNAME\AppData\Local\Temp
SETX TEMP D:\Users\%USERNAME\AppData\Local\Temp

MKDIR D:\Users\%USERNAME\AppData\Roaming
SETX APPDATA D:\Users\%USERNAME\AppData\Roaming

MKDIR D:\Users\%USERNAME\AppData\Local
SETX LOCALAPPDATA D:\Users\%USERNAME\AppData\Local

REM prepare chocolatey installation directory https://github.com/chocolatey/choco/wiki/Installation#before-you-install
SETX ChocolateyInstall D:\ProgramData\Chocolatey

REM Utility
choco install google-chrome-x64 -y
choco install adobereader -y
choco install 7zip -y
choco install Wget -y
choco install hashcheck -y
choco install teamviewer -y

REM SysAdmin
choco install ConEmu -y
choco install putty -y
choco install rsync -y
choco install clink -y

REM Coding
choco install vim -y
choco install SublimeText3 -y
choco install kdiff3 -y
choco install git -y -params '"/GitAndUnixToolsOnPath"' 

REM DevOps
choco install virtualbox -y
choco install vagrant -y
choco install packer -y
choco install terraform -y
choco install chefdk -y

SETX GEM_PATH C:/opscode/chefdk/embedded/lib/ruby/gems/2.1.0
