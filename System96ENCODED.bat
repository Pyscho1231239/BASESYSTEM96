@echo off
setlocal

:: Define your specific desktop path
set "desktopPath=%USERPROFILE%\OneDrive\Desktop"

:: Define the paths for the necessary files and folders
set "system96FFolder=%~dp0System96F"
set "markerFile=%system96FFolder%\System96_Ran.marker"
set "shortcutName=System96 Shortcut.lnk"
set "shortcutFolder=%desktopPath%"
set "shortcutPath=%shortcutFolder%\%shortcutName%"

set "targetPath=%system96FFolder%\System96ENCODED.bat"
set "iconURL=https://raw.githubusercontent.com/Pyscho1231239/SY96ICON/refs/heads/main/2025_01_21_0q8_Kleki.ico"
set "iconPath=%system96FFolder%\System96.ico"
set "system96URL=https://raw.githubusercontent.com/Pyscho1231239/BASESYSTEM96/refs/heads/main/System96ENCODED.bat"
set "readmeURL=https://raw.githubusercontent.com/Pyscho1231239/README/refs/heads/main/README.txt"
set "readmePath=%system96FFolder%\README.txt"

:: Debugging: Show desktop path and shortcut path
echo Desktop Path: %desktopPath%
echo Shortcut Path: %shortcutPath%

:: Check if the marker file exists (to determine if script has already been run)
if exist "%markerFile%" (
    echo This script has already been executed and cannot be run again.
    pause
    exit /b
)

:: Create the shortcut folder (if it doesn't already exist)
if not exist "%shortcutFolder%" (
    echo Creating shortcut folder...
    mkdir "%shortcutFolder%"
)

:: Create the shortcut first, before downloading files
echo Creating shortcut...

:: Create a temporary VBScript file to create the shortcut
echo Set ws = CreateObject("WScript.Shell") > "%temp%\CreateShortcut.vbs"
echo Set sc = ws.CreateShortcut("%shortcutPath%") >> "%temp%\CreateShortcut.vbs"
echo sc.TargetPath = "%targetPath%" >> "%temp%\CreateShortcut.vbs"
echo sc.WorkingDirectory = "%system96FFolder%" >> "%temp%\CreateShortcut.vbs"
echo sc.IconLocation = "%iconPath%" >> "%temp%\CreateShortcut.vbs"
echo sc.Save >> "%temp%\CreateShortcut.vbs"

:: Run the VBScript to create the shortcut
cscript //nologo "%temp%\CreateShortcut.vbs"

:: Debugging: Confirm the script ran
if exist "%shortcutPath%" (
    echo Shortcut successfully created at: %shortcutPath%
) else (
    echo Error: Failed to create shortcut. Check permissions or path.
    pause
    exit /b
)

:: Clean up the VBScript
del "%temp%\CreateShortcut.vbs"

:: Now, let's proceed with downloading and creating files only if shortcut was created
if exist "%shortcutPath%" (
    echo Shortcut creation confirmed, proceeding with downloads...
    
    :: Create the System96F folder if it doesn't exist
    if not exist "%system96FFolder%" mkdir "%system96FFolder%"

    :: Download the System96ENCODED.bat file if it doesn't already exist
    if not exist "%system96FFolder%\System96ENCODED.bat" (
        echo Downloading System96ENCODED.bat file...
        powershell -Command "Invoke-WebRequest -Uri '%system96URL%' -OutFile '%system96FFolder%\System96ENCODED.bat' -ErrorAction Stop"
        if not exist "%system96FFolder%\System96ENCODED.bat" (
            echo Failed to download System96ENCODED.bat file. Exiting.
            pause
            exit /b
        )
    )

    :: Download the README.txt file if it doesn't already exist
    if not exist "%readmePath%" (
        echo Downloading README.txt file...
        powershell -Command "Invoke-WebRequest -Uri '%readmeURL%' -OutFile '%readmePath%' -ErrorAction Stop"
        if not exist "%readmePath%" (
            echo Failed to download README.txt file. Exiting.
            pause
            exit /b
        )
    )

    :: Download the icon file to the System96F folder if it doesn't already exist
    if not exist "%iconPath%" (
        echo Downloading icon file...
        powershell -Command "Invoke-WebRequest -Uri '%iconURL%' -OutFile '%iconPath%' -ErrorAction Stop"
        if not exist "%iconPath%" (
            echo Failed to download the icon file. Exiting.
            pause
            exit /b
        )
    )

    :: Create the marker file in the System96F folder to prevent re-execution
    echo This script has been executed. > "%markerFile%"
    attrib +h "%markerFile%" >nul

    echo System96ENCODED.bat downloaded to: %system96FFolder%\System96ENCODED.bat
    echo README.txt downloaded to: %readmePath%
    echo Icon file downloaded to: %iconPath%
) else (
    echo Error: Shortcut was not created. Exiting.
    pause
    exit /b
)

:: Pause for user to see the results
pause
exit /b
