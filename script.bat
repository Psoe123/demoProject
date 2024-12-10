@echo off
:: Set the title of the command prompt
title Git Add, Commit, and Push Script

:: Navigate to the directory of your Git repository (optional)
:: Uncomment and modify the following line if needed
:: cd /d C:\path\to\your\repo

:: Stage all changes
git add .
echo Changes have been staged.

:: Prompt the user for a commit message
set /p commitMessage="Enter the commit message: "

:: Commit with the user-provided message
git commit -m "%commitMessage%"
if %errorlevel% neq 0 (
    echo Commit failed. Please check the error message above.
    pause
    exit /b %errorlevel%
)
echo Commit successful.

:: Push the changes
git push
if %errorlevel% neq 0 (
    echo Push failed. Please check the error message above.
    pause
    exit /b %errorlevel%
)
echo Push successful.

:: End of script
pause
