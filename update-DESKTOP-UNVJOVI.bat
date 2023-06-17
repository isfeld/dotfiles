@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
 
choco install gsudo -y
choco install git -y
choco install mkcert -y
choco install paint.net -y
choco install unity-hub  -y
choco install unity -y
choco install blender -y
choco install vscode -y
choco install audacity -y
choco install audacity-ffmpeg -y
choco install ffmpeg -y
choco install nodejs-lts -y
choco install python
