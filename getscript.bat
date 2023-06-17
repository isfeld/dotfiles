@echo off

REM Set the repository URL and the target directory where you want to clone the repository
set repositoryURL=https://github.com/isfeld/dotfiles.git
set targetDirectory=C:\Install

REM Clone the repository
git clone %repositoryURL% %targetDirectory%

REM Change to the target directory
cd %targetDirectory%

REM Download the files using curl (adjust the URL and options as needed)
curl -O https://example.com/file1.txt
curl -O https://example.com/file2.txt

REM Add any additional download commands for the files you need

echo Repository cloned and files downloaded successfully.
