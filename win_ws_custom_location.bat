REM ConEmu
choco install ConEmu -y -ia 'APPLICATIONFOLDER=C:\Conemu'

REM Sublime
choco install sublimetext3 -y -ia '/DIR=C:\Sublime'

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
SETX GEM_PATH C:\opscode\chefdk\embedded\lib\ruby\gems\2.4.0
