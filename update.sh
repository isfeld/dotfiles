#!/bin/bash

# change your terminal to bash

# run the command: bash update.sh

# Update Visual Studio Code extensions

#echo "Updating Visual Studio Code..."
#code --install-extension ms-vscode.vscode-typescript-tslint-plugin --force # Example extension, replace with your desired extensions

#New-Item -Type Directory ($PROFILE | Split-Path) -ErrorAction Ignore
#Write-Output "`nImport-Module 'C:\Program Files\gsudo\Current\gsudoModule.psd1'" | Add-Content $PROFILE

# Check if running with admin privileges
#if [[ $EUID -ne 0 ]]; then
#    echo "Script requires administrative privileges. Restarting with administrator privileges..."
    # Restart script as an administrator
#    exec runas /user:Vonnegoth@hotmail.com "bash -c '$0'"
#fi

# Rest of the script...
# Install Chocolatey
echo "Installing Chocolatey..."
curl -fsSL https://chocolatey.org/install.sh | bash

# Install Git
echo "Installing Git..."
choco install git -y

# Install Visual Studio Code
echo "Installing Visual Studio Code..."
choco install vscode -y

# Install Node.js
echo "Installing Node.js..."
choco install nodejs -y

# Install mkcert
echo "Installing mkcert..."
choco install mkcert -y

# Add Git to the system environment and path
echo "Adding Git to system environment and path..."
gitPath=$(where git)
echo "export PATH=\$PATH:$gitPath" | tee -a /etc/profile

# Add Node.js to the system environment and path
echo "Adding Node.js to system environment and path..."
nodePath=$(where node)
npmPath=$(dirname $(where npm))
echo "export PATH=\$PATH:$nodePath:$npmPath" | tee -a /etc/profile

# Add mkcert to the system environment and path
echo "Adding mkcert to system environment and path..."
mkcertPath=$(where mkcert)
echo "export PATH=\$PATH:$mkcertPath" | tee -a /etc/profile

# Rest of the script...
# Update npm packages globally
echo "Updating global npm packages..."
npm update -g

# Install additional web development tools and dependencies
echo "Installing additional web development tools and dependencies..."
npm install -g create-react-app
npm install -g express-generator
npm install -g nodemon

# Rest of the script...
# Display versions
echo "Git version:"
git --version
echo "Visual Studio Code version:"
code --version
echo "Node.js version:"
node --version

echo "Web development setup completed!"



#rerun the command: bash update.sh if needed