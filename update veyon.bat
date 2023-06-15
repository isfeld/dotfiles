@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
 
 #update Veyon
 echo "updating veyon..."
choco install veyon -s -NoMaster -NoStartMenuFolder
