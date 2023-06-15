@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
 

 echo "Getting dotfiles from Github"
    git init .
    git remote add -t \* -f origin <repository-url>
    git checkout main
