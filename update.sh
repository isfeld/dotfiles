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

# Set up the PATH for Winget
WINGET_BIN_DIR="$INSTALL_DIR/winget"
echo 'export PATH="$PATH:'"$WINGET_BIN_DIR"'"' >> "$HOME/.bashrc"
source "$HOME/.bashrc"

# Install or update Visual Studio Code using Winget
echo "Updating Visual Studio Code..."
winget install --exact --id Microsoft.VisualStudioCode
echo "Update completed!"


#rerun the command: bash update.sh if needed