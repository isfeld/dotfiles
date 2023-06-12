# change your terminal to bash

# run the command: bash update.sh

# Update Visual Studio Code extensions

#echo "Updating Visual Studio Code..."
#code --install-extension ms-vscode.vscode-typescript-tslint-plugin --force # Example extension, replace with your desired extensions

#!/bin/bash

# Set the installation directory in the user profile
INSTALL_DIR="$HOME/bin"

# Create the installation directory if it doesn't exist
mkdir -p "$INSTALL_DIR"

# Check if Winget is already installed
if ! command -v winget &> /dev/null; then
    echo "Winget is not installed. Installing Winget..."
    # Download and extract the Winget package
    curl -o winget.zip -L https://github.com/microsoft/winget-cli/releases/latest/download/winget-cli.zip
    unzip -o winget.zip -d "$INSTALL_DIR"
    rm winget.zip
    echo "Winget installed successfully!"
else
    echo "Winget is already installed."
fi

# Check if Git is already installed
if ! command -v git &> /dev/null; then
    echo "Git is not installed. Installing Git..."
    # Download and extract the Git package
    curl -o git.zip -L https://github.com/git-for-windows/git/releases/latest/download/PortableGit-2.33.1-64-bit.7z.exe
    7z x -y -bd git.zip -o"$INSTALL_DIR"
    rm git.zip
    echo "Git installed successfully!"
else
    echo "Git is already installed."
fi

# Add Winget and Git to the user's environment variables
echo "Adding Winget and Git to user environment variables..."
echo 'export PATH="$PATH:$HOME/bin"' >> "$HOME/.bashrc"
echo "Environment variables updated!"

# Update Visual Studio Code using Winget
echo "Updating Visual Studio Code..."
winget upgrade --name "Visual Studio Code"
echo "Update completed!"


#rerun the command: bash update.sh if needed