@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
 
 #Install Veyon
 echo "Installing veyon..."
choco install veyon -s -NoMaster -NoStartMenuFolder

# Install Git
echo "Installing Git..."
choco install git -y

# Install Visual Studio Code
echo "Installing Visual Studio Code..."
choco install vscode -y

# Install Node.js
echo "Installing Node.js..."
choco install nodejs -y

# Install the rest of the programs
echo "Installing mkcert..."
choco install mkcert -y

echo "Installing unity-hub..."
choco install unity-hub  -y

echo "Installing unity..."
choco install unity -y

echo "Installing blender..."
choco install blender -y

echo "Installing vs-code..."
choco install vscode -y

echo "Installing gitvscode..." 
choco install git -y

echo "Installing gsudo..."
choco install gsudo -y

echo "Installing audacity..."
choco install audacity -y

echo "Installing audacity--ffmpeg..."
choco install audacity-ffmpeg -y

echo "Installing ffmpeg..."
choco install ffmpeg -y

echo "Installing nodejs..."
choco install nodejs-lts -y

echo "Installing python..."
choco install python -y

echo "Installing notepadplusplus..."
choco install notepadplusplus -y

echo "Installing sketchup..."
choco install sketchup 

echo "Installin paint.net..."
choco install paint.net 
