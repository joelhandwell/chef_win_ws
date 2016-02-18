REM Performance settings. Execute after creating RAM drive D
MKDIR D:\Windows\TEMP
MKDIR D:\Users\%USERNAME%\AppData\Local\Temp
SETX TMP D:\Users\%USERNAME%\AppData\Local\Temp
SETX TEMP D:\Users\%USERNAME%\AppData\Local\Temp
MKDIR D:\Users\%USERNAME%\AppData\Roaming
SETX APPDATA D:\Users\%USERNAME%\AppData\Roaming
MKDIR D:\Users\%USERNAME%\AppData\Local
SETX LOCALAPPDATA D:\Users\%USERNAME%\AppData\Local

REM Prepare chocolatey installation directory https://github.com/chocolatey/choco/wiki/Installation#before-you-install
MKDIR D:\ProgramData\Chocolatey
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

REM Git
MKDIR D:\Git
choco install git.install -y -ia '/DIR=D:\Git' -params '/GitAndUnixToolsOnPath'

REM VirtualBox
MKDIR D:\Oracle\VirtualBox
MKDIR D:\Users\%USERNAME%\VirtualBoxVMs
SET ProgramFiles(x86)=D:/ && choco install virtualbox -y -ia 'INSTALLDIR=D:\Oracle\VirtualBox'
SETX /M PATH "%PATH%;D:\Oracle\VirtualBox"
VBoxManage setproperty machinefolder D:\Users\%USERNAME%\VirtualBoxVMs

REM Vagrant
MKDIR D:\HashiCorp\Vagrant
MKDIR D:\Users\%USERNAME%\.vagrant.d
SETX VAGRANT_HOME D:\Users\%USERNAME%\.vagrant.d
choco install vagrant -y -ia 'VAGRANTAPPDIR=D:\HashiCorp\Vagrant'

REM ChefDK
MKDIR D:\opscode
choco install chefdk -y -ia 'INSTALLLOCATION=D:\opscode'
SETX GEM_PATH D:\opscode\chefdk\embedded\lib\ruby\gems\2.1.0

choco install packer -y
choco install terraform -y
