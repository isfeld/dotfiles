# change your terminal to bash

# run the command: bash update.sh

# Update Visual Studio Code extensions

#echo "Updating Visual Studio Code..."
#code --install-extension ms-vscode.vscode-typescript-tslint-plugin --force # Example extension, replace with your desired extensions


# Check if Winget is already installed
if ! command -v winget &> /dev/null; then
    echo "Winget is not installed. Installing Winget..."
    # Download and install the Winget installer
    curl -o winget_installer.msi -L https://github.com/microsoft/winget-cli/releases/latest/download/winget-cli-x64.msi
    msiexec /i winget_installer.msi /quiet
    rm winget_installer.msi
    echo "Winget installed successfully!"
else
    echo "Winget is already installed."
fi

# Check if Git is already installed
if ! command -v git &> /dev/null; then
    echo "Git is not installed. Installing Git..."
    # Download and install the Git installer
    curl -o git_installer.exe -L https://github.com/git-for-windows/git/releases/latest/download/Git-2.33.1-64-bit.exe
    ./git_installer.exe /SP /VERYSILENT /NORESTART
    rm git_installer.exe
    echo "Git installed successfully!"
else
    echo "Git is already installed."
fi

# Add Winget and Git to the user's environment variables
echo "Adding Winget and Git to user environment variables..."
echo 'export PATH="$PATH:/mnt/c/Program Files/Git/cmd:/mnt/c/Program Files/Microsoft/Winget"' >> ~/.bashrc
echo "Environment variables updated!"

# Update Visual Studio Code using Winget
echo "Updating Visual Studio Code..."
winget upgrade --name "Visual Studio Code"
echo "Update completed!"


#rerun the command: bash update.sh if needed