# change your terminal to bash

# run the command: bash update.sh

# Update Visual Studio Code extensions

#echo "Updating Visual Studio Code..."
#code --install-extension ms-vscode.vscode-typescript-tslint-plugin --force # Example extension, replace with your desired extensions

#!/bin/bash

# Add paths to the system environment and path
echo "Adding Git, Node.js, and mkcert to system environment and path..."

# Add Git to system environment and path
git_path=$(command -v git)
echo "Adding Git to system environment and path..."
powershell.exe -Command "setx /M PATH \"$($env:PATH);$git_path\""
echo "Git added to system environment and path successfully!"

# Add Node.js to system environment and path
node_path=$(command -v node)
npm_path=$(npm bin -g)
echo "Adding Node.js to system environment and path..."
powershell.exe -Command "setx /M PATH \"$($env:PATH);$node_path;$npm_path\""
echo "Node.js added to system environment and path successfully!"

# Add mkcert to system environment and path
mkcert_path=$(command -v mkcert)
echo "Adding mkcert to system environment and path..."
powershell.exe -Command "setx /M PATH \"$($env:PATH);$mkcert_path\""
echo "mkcert added to system environment and path successfully!"

echo "System environment and path updated successfully!"

# Update Visual Studio Code using Winget
echo "Updating Visual Studio Code..."
winget upgrade --name "Visual Studio Code"
echo "Visual Studio Code update completed!"

# Update npm packages globally
echo "Updating global npm packages..."
npm update -g
echo "Global npm packages update completed!"

# Install additional web development tools and dependencies
echo "Installing additional web development tools and dependencies..."
npm install -g create-react-app
npm install -g express-generator
npm install -g nodemon
echo "Additional web development tools and dependencies installed successfully!"

echo "Web development setup completed!"




#rerun the command: bash update.sh if needed