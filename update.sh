# change your terminal to bash

# run the command: bash update.sh

# Update Visual Studio Code extensions

#echo "Updating Visual Studio Code..."
#code --install-extension ms-vscode.vscode-typescript-tslint-plugin --force # Example extension, replace with your desired extensions

#!/bin/bash

# Check if Git is already installed
if ! command -v git &> /dev/null; then
    echo "Git is not installed. Installing Git..."
    # Download and install the Git installer
    curl -o git_installer.exe -L https://github.com/git-for-windows/git/releases/latest/download/Git-2.33.1-64-bit.exe
    ./git_installer.exe /VERYSILENT /NORESTART
    rm git_installer.exe
    echo "Git installed successfully!"
else
    echo "Git is already installed."
fi

# Check if Node.js is already installed
if ! command -v node &> /dev/null; then
    echo "Node.js is not installed. Installing Node.js..."
    # Download and install the Node.js installer
    curl -o node_installer.msi -L https://nodejs.org/dist/v14.17.0/node-v14.17.0-x64.msi
    msiexec /i node_installer.msi /quiet
    rm node_installer.msi
    echo "Node.js installed successfully!"
else
    echo "Node.js is already installed."
fi

# Update npm packages globally
echo "Updating global npm packages..."
npm update -g
echo "Global npm packages update completed!"


# Check if mkcert is already installed
if ! command -v mkcert &> /dev/null; then
    echo "mkcert is not installed. Installing mkcert..."
    # Download and install mkcert
    curl -L -o mkcert.exe https://github.com/FiloSottile/mkcert/releases/latest/download/mkcert-windows-amd64.exe
    mv mkcert.exe /usr/local/bin/mkcert
    chmod +x /usr/local/bin/mkcert
    echo "mkcert installed successfully!"
else
    echo "mkcert is already installed."
fi

# Update Visual Studio Code using Winget
echo "Updating Visual Studio Code..."
winget upgrade --name "Visual Studio Code"
echo "Visual Studio Code update completed!"





#rerun the command: bash update.sh if needed