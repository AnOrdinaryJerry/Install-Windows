@echo off
title Activation and Optimization Launcher

:: Check for administrator privileges
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Requesting admin privileges...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

:: Header
echo =======================================
echo        Windows Prep Script Launcher
echo =======================================
echo.

:: Start massgrave silently
start "" /min powershell -WindowStyle Hidden -NoProfile -ExecutionPolicy Bypass -Command "iwr -useb 'https://get.activated.win' | iex"

:: Start CTT silently
start "" /min powershell -WindowStyle Hidden -NoProfile -ExecutionPolicy Bypass -Command "iwr -useb 'https://christitus.com/win' | iex"

echo.
echo Scripts launched!
echo This may take a moment, you may close this window.
echo.
pause >nul