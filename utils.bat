REM Heavy Guys
choco install google-chrome-x64 -y
choco install adobereader -y
choco install libreoffice -y
choco install gimp -y
choco install inkscape -y

REM Utility
choco install ccleaner -y
choco install 7zip -y
choco install Wget -y
choco install hashcheck -y
choco install linkshellextension -y
choco install hosts.editor -y
choco install greenshot -y

REM AWS related
choco install python -y
refreshenv
pip install --upgrade --user awscli
SETX /M PATH "%PATH%;%USERPROFILE%\AppData\Roaming\Python\Python36\Scripts"
