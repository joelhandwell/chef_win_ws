REM Run chocolatey.bat first if you do not installed chocolatey

REM SysAdmin
choco install ConEmu -y
choco install putty -y
choco install rsync -y
choco install clink -y
choco install vim -y

REM DevOps tools for Chef
choco install sublimetext3 -y
choco install git.install -y -params '/GitAndUnixToolsOnPath'
choco install kdiff3 -y
choco install virtualbox -y
choco install vagrant -y
choco install chefdk -y

REM Other Devops tools
choco install packer -y
choco install terraform -y

REM Docker Related tools
choco install docker -y
choco install docker-machine -y
choco install docker-compose -y

REM update environment variables
REFRESHENV
