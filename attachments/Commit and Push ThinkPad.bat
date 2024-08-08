@echo off
REM Change directory to Obsidian notes folder
cd D:\Obsidian\Mind

REM Prompt the user for a custom commit message
set /p commitMsg="Enter the commit message: "

REM Stage all changes
git add .

REM Commit with the custom message
git commit -m "%commitMsg%"

REM Push changes to the origin master
git push -u origin master

REM Pause the script so it doesn't close immediately
pause
