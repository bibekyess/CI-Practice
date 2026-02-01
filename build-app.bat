@echo off
setlocal enabledelayedexpansion

echo ========================================
echo Build Script for Windows Installer
echo ========================================

:: Clean up previous build artifacts
echo.
echo Cleaning previous build artifacts...
if exist build rmdir /s /q build
if exist dist rmdir /s /q dist
mkdir build
mkdir dist

:: Copy build artifacts to build directory
echo.
echo Preparing build output...
copy hello-world.txt build\hello-world.txt >nul

:: Build Windows installer using Inno Setup
echo.
echo Building Windows installer with Inno Setup...
if not exist installer.isss (
    echo ERROR: installer.isss not found!
    exit /b 1
)

:: Build the installer (In local machine, iscc is not added in PATH so fallback added
iscc installer.isss 2>nul || "C:\Program Files (x86)\Inno Setup 6\ISCC.exe" installer.isss

if errorlevel 1 (
    echo ERROR: Failed to build installer!
    exit /b 1
)

echo.
echo ========================================
echo Build completed successfully!
echo ========================================
endlocal
