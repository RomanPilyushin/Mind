@echo off
REM Change directory to the Obsidian notes folder
cd C:\Users\rpily\Obsidian\Mind

REM Reset the working directory to the last committed state
git reset --hard HEAD

REM Pull the latest changes from the remote repository
git pull origin master

REM Pause the script so it doesn't close immediately
pause
