@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
 
powershell New-Item "C:\Install\New" -Type Directory

cd New

 echo "Getting dotfiles from Github"
   git clone https://github.com/isfeld/dotfiles.git . 