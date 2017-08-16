REM Run chocolatey.bat first if you do not installed chocolatey

REM DevOps tools for Chef
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
