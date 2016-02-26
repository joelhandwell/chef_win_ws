REM Performance settings. Execute after creating RAM drive D
MKDIR C:\Windows\TEMP
MKDIR C:\Users\%USERNAME%\AppData\Local\Temp
SETX TMP C:\Users\%USERNAME%\AppData\Local\Temp
SETX TEMP C:\Users\%USERNAME%\AppData\Local\Temp
MKDIR C:\Users\%USERNAME%\AppData\Roaming
SETX APPDATA C:\Users\%USERNAME%\AppData\Roaming
MKDIR C:\Users\%USERNAME%\AppData\Local
SETX LOCALAPPDATA C:\Users\%USERNAME%\AppData\Local

REM Prepare chocolatey installation directory https://github.com/chocolatey/choco/wiki/Installation#before-you-install
MKDIR C:\ProgramData\Chocolatey
SETX ChocolateyInstall C:\ProgramData\Chocolatey

REM Heavy Guys
choco install google-chrome-x64 -y
choco install adobereader -y
choco install teamviewer -y

REM Utility
choco install 7zip -y
choco install Wget -y
choco install hashcheck -y
choco install linkshellextension -y

REM SysAdmin
choco install ConEmu -y -ia 'APPLICATIONFOLDER=C:\Conemu'
choco install putty -y
choco install rsync -y
choco install clink -y

REM Coding
choco install vim -y
choco install sublimetext3 -y -ia '/DIR=C:\Sublime'
choco install kdiff3 -y

REM Git
MKDIR C:\Git
choco install git.install -y -ia '/DIR=C:\Git' -params '/GitAndUnixToolsOnPath'

REM VirtualBox
MKDIR C:\Oracle\VirtualBox
MKDIR C:\Users\%USERNAME%\VirtualBoxVMs
SET ProgramFiles(x86)=C:/ && choco install virtualbox -y -ia 'INSTALLDIR=C:\Oracle\VirtualBox'
SETX /M PATH "%PATH%;C:\Oracle\VirtualBox"
VBoxManage setproperty machinefolder C:\Users\%USERNAME%\VirtualBoxVMs

REM Vagrant
MKDIR C:\HashiCorp\Vagrant
MKDIR C:\Users\%USERNAME%\.vagrant.d
SETX VAGRANT_HOME C:\Users\%USERNAME%\.vagrant.d
choco install vagrant -y -ia 'VAGRANTAPPDIR=C:\HashiCorp\Vagrant'

REM ChefDK
MKDIR C:\opscode
choco install chefdk -y -ia 'INSTALLLOCATION=C:\opscode'
SETX GEM_PATH C:\opscode\chefdk\embedded\lib\ruby\gems\2.1.0

REM Other Devops tools
choco install packer -y
choco install terraform -y

REM Docker Related tools
choco install docker -y
choco install docker-machine -y
choco install docker-compose -y
