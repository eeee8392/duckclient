@echo off

title preparing..
mode 1000
::Run as Admin
Reg.exe add HKLM /F >nul 2>&1
if %errorlevel% neq 0 start "" /wait /I /min powershell -NoProfile -Command start -verb runas "'%~s0'" && exit /b
color 0a
title Duckclient
set "VERSION=1.3"
setlocal enabledelayedexpansion
cls



echo BMBgBgBgBMBMBMBRBgBgBRBMBMBgBMBgBgBMBgBgBMBgBMBMBgBRBgBRBMBMBgBRBMBgBgBgBMBgBMBgBMBMBMBMBgBMBRBMBRBMBMBRBMBMBMBgBgBgBgBMBgBMBMBMBMBgBRBRBgBgBgBgBMBgBR
echo     .           . .           . .     .               . .     .   .   .         .   .     .           .       . .         .   .     . .         .    
echo .             .                 .         . . . .         . .         .                           . . .                         .     .       . .   . 
echo      . .   .   . .     . .         .   .   . .   .   . . .       .     . . .           .         .             .   . .   .   .       .     . . .      
echo . .     .   . .   .   .   .   . . .         . . . .         . .     .     .             . .     . .     . .             . . .   . .   . . .   .     . 
echo    .   . . .     .   . .   .     .         . . . .   . . .   . . . . .   .     .             .           . .       .   .   . . .   . . . . .     .   .
echo     . .   .   .     .     . . .     . .               .       . .   .   .     .   .       .     . .             .   . .   .   . .       .   . . . . . 
echo    . . .     .   . .   .     .       .     .   .   . .         . . . . . . . . .   . .                   . .   .         .   . .             . .   . .
echo   .               .   . . .     . .         . .   IgBgBgBMBgBEQXMKMPBgBgBRBMBgb..   . .       .   .         .       . .     .           .     . .     
echo          .         . .       .   .         .   :MBb7.: . . . :rZUZYv . . . . :qBgS .     . . . . . .     .       . . .     .   . .     .   .     .   .
echo . .       .   . .     .   . .             . . BMd . .   :iEPBMB1qsMMBEQSMXP:. . :vRgBEg77   . .     . .     .       . .           .     .         . . 
echo      . .       .         .           .   .   vM7 . 2YRgBDQ::     .   ..i.iiBMBMB75LRgBMBPBRB.  .       . .     .             . .   . .   .         . .
echo     . .   .             .     . . .       .  :B.. BMS   .     . .   .       .  .7:r.i.ubBS::BD        .       .   .     .             . .   . . .   . 
echo    .   .    rBMBMBdgi7   .                   .MBi. BRI .   .             .   .   .     . B: rB               . .   .     . .   .     .       .   . .  
echo     . .     BM   .:7DgBg:     .           . .   BM. .7RMBRBRBgBRBRBMBgBMBdBgBv7..   .    gj YR  .   . .   . .   . .           .             .         
echo     .   .  1B..   .   KRBP:   . .     .        PBMs.  .     j ..: : ::1ri...U7DMBMB5Z2PDB  rB .   .         .   .     .   .       i           . .    
echo . .     . .  .BgR   . . . PMBXv   .     .   iEBRS vSBRBRBgQKBgg2P717ZbBMBMBgP7r .   i.i.: . B5  .             .     .   .       KgBgB.      .   . . . 
echo        .   . bMBgBgB .   .   UMBM         sBgP .   .     r.r.r:riuruiL:i   i:2EBgBMQrsiJrPDBMg   .   .     .             .   iMBg: .g7 .   . .   .    
echo .         .  sB   .   .   .     .   .  :ggB:. .     .     .     .   .           . .7qYqsP77 iIBRBgQIr .   .     .   .     . BgK    MB     .       .   
echo      .   . . 2gBK    .     .     . . KgBv:   .   .                 . . . .           .   . .   . r:KgBR.   .       .   .  7BD    iRq   .         .    
echo .   .     . BM: .   .   .       .   BR:     .   .     . . .   .   . .         .     .         . . . . DMB.    .       ..dMB.    KRB . .       .     . 
echo          .  MB     .   .           5M. .       . . PgBRB         .     . . . .   . . .       .   .      RB         . .MBJ.     BgBgBr. .     . .     .
echo             .gBZ2   .     .     .  MB .           .iBMBgs   .     . . .  sBMBgB . .   .       .          qB . .   . .MB     .     .MB     .     .   . 
echo  . . .     . . rRBRi         .    .B:          . .   .     .           . iPBdB1. . .   .   . .   . .      gBi    . DMS . .   .    rB       .     . .  
echo .           .     vMQ           . BM    . KvU72JZvX7urjrSLKLKYKsKYKrL.:.: .     .   . . .       .         .XB     .Mr     .    1BgBMK . .   . . .   . 
echo      .     . .   . rgB .       . Bg. . .  MBgBgB5d1gIgIgSgIgIg5gSgXBDBgBMBgBZBgBgBMBMBR7       . .         .MB . . .     .     :   QM            .    
echo             .       .bBMB .      gB       .iBgs:r:r.i.i.i.i.i.r.i.i.i.i.i.:.r.i.r:r.ggBg. .     .     .     Bg  .                 .MB       .       . 
echo      .   .   . . .   . :7.     . Bg.        iBMBgBMQKQbBdBdBbBPBPBPQbQPQbQPQIEXQXD1PvdMB .   .   .          gB   .   .       . ugBEK .         .     .
echo   .     .   .                    gB . .         :iBjr:LiviLiYiYiYiLiYiLiLiv.PgZiIuP1bsP   .     . .   . . .:BM  .         uZBgBM7   .       . .   . . 
echo    . . . .   .     .   .   .   . Ig: .         . .Mq   .               . .  gB .   .     .   . .     . . .DB:      .  :BgBg7       . . . . .   . . .  
echo   .   .     .   . .     .         BR. . .       . gMBMBZBZBDBZBDBZBDBDBZBZBgB.              .   .     . .5B         JgBr  .   .   .   .   .   .       
echo .     . . .   . .         .   .   Bg.               ::r:7:7:7:r:7:7:7:r:7:i .   .       .     .     . .iB:  . . .     .   .   .     . . .            
echo .                 . . .   .         BM.   .           .       .   . .           . .       .     .     ..BI    . . . .   .   . .     . .     . . . .   
echo  .       .       .                   ggBDurv.IX.           . . . .   .       .   .               . .  .Bb.   .   .   .         . . .   . . .       .  
echo     .   .     .   . .   . . .     .     X2DbBMBgB       . . .   .         .     .   .   . . .       .EBv  .     . . . .   . .   .   .   .   . .     . 
echo  .       . .   .       .         .     .      :BMBgBgBMBgBgBMBRBMBMBMBgBRBMX:. .   .              rBRB.    . . .         .     . .   . . .     . .    
echo         .   .   .     .   .   .   . .   . .       . . . . . . . . . . . . 7UBgBMBgdv5r7:7:r:uvKMBMBr.   .   . .       .   .       .           . . .   
echo    .   .   .     .     .           .               .       .     .     .       . i7PjMdBZBZBXPj1   .       . . .     .   . .     .         .       .  
echo     . .     . . . .   .     . . .         .           .   .   . .     .     .   . .     .       .             .             . .   .   . .   .         
echo  . . .   .   .   .   . . .       . .       .   . . .   .                   .   . .     .     . .   . .     .   . . .     . .       . . .   .          
echo . . .             . . .             . . . .   . . .         .       .           .       . . . . .         .   . .           . .       .             . 
echo        .   .       . .     . . . .   . .     .       .       . . . .   .     .   .       . .       . .     . .         . . .     .           . .   .             
echo.
echo.
echo.
echo ^^ amazing art(wasd's amazing art made 2 years ago)
type %USERPROFILE%\Downloads\nahfam.txt
start shit.ps1
echo.
ECHO PRESS 1,2,3,4 to select your task, or 5 to do sussy stuff.
ECHO ...............................................
ECHO 1 -website crasher
ECHO 2 -PC cleaner
ECHO 3 -PC optimizer
ECHO 4 -PC AV
ECHO 5 -useful pc tweaks
ECHO 6 -MC tweaks


SET /P M=Type 1, 2, 3 , 4 then press ENTER:
CLS
IF %M%==1 GOTO TASK1
IF %M%==2 GOTO TASK2
IF %M%==3 GOTO TASK3
IF %M%==4 GOTO TASK4
IF %M%==5 GOTO TASK5
IF %M%==6 GOTO TASK6
IF %M%==6 GOTO TASK7


set comp=
:TASK1
Title DDOS 
color 0E
type %USERPROFILE%\Downloads\nahfam.txt
echo.
echo Welcome to the website crasher! This app pings websites to death!
echo.
echo For example, type in a weak websites IP or their url in this form: example.com
echo.
echo This ONLY works on weak sites and does not work on strong ones, you need a more powerful app for those, like LOIC.
echo.
pause
cls
echo Enter the website you would like to crash 
echo.
echo Warning: Puts in about 1,000 MB Each time [1 GB], Use at your own bandwith risk!
echo.
echo {Admin Note: Similar to downloading games, except its about 1000 MB each time!}
echo.
echo Keep in mind that to make this actually work, you have to have this running for a nice amount of time.
echo.
set input=
set /p input= Enter your Website here: 
if %input%==goto A if NOT B
echo Processing Your request
ping localhost>nul
echo To end Crashing press CTRL + C
ping localhost>nul
cls
color 02
echo ----------------------------------------------------------------------
echo Now Crashing Website...DO NOT CLOSE THIS BOX!! DO CTRL + C TO END!!
echo ----------------------------------------------------------------------
ping %input% -t -l 10000
:TASK2
cls
title pc cleaning utilty
echo --------------------------------------------------------------------------------
echo PC Cleanup Utility
echo --------------------------------------------------------------------------------
echo.
echo Select a tool
echo =============
echo.
echo [1] Delete Internet Cookies
echo [2] Delete Temporary Internet Files
echo [3] Disk Cleanup
echo [4] Disk Defragment
echo [5] Exit
echo.
set /p op=Run:
if %op%==1 goto 1
if %op%==2 goto 2
if %op%==3 goto 3
if %op%==4 goto 4
if %op%==5 goto exit
goto error
:1
cls
echo --------------------------------------------------------------------------------
echo Delete Internet Cookies
echo --------------------------------------------------------------------------------
echo.
echo Deleting Cookies...
ping localhost -n 3 >nul
del /f /q "%userprofile%\Cookies\*.*"
cls
echo --------------------------------------------------------------------------------
echo Delete Internet Cookies
echo --------------------------------------------------------------------------------
echo.
echo Cookies deleted.
echo.
echo Press any key to return to the menu. . .
pause >nul
goto menu
:2
cls
echo --------------------------------------------------------------------------------
echo Delete Temporary Internet Files
echo --------------------------------------------------------------------------------
echo.
echo Deleting Temporary Files...
ping localhost -n 3 >nul
del /f /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"
cls
echo --------------------------------------------------------------------------------
echo Delete Temporary Internet Files
echo --------------------------------------------------------------------------------
echo.
echo Temporary Internet Files deleted.
echo.
echo Press any key to return to the menu. . .
pause >nul
goto menu
:3
cls
echo --------------------------------------------------------------------------------
echo Disk Cleanup
echo --------------------------------------------------------------------------------
echo.
echo Running Disk Cleanup...
ping localhost -n 3 >nul
if exist "C:\WINDOWS\temp"del /f /q "C:WINDOWS\temp\*.*"
if exist "C:\WINDOWS\tmp" del /f /q "C:\WINDOWS\tmp\*.*"
if exist "C:\tmp" del /f /q "C:\tmp\*.*"
if exist "C:\temp" del /f /q "C:\temp\*.*"
if exist "%temp%" del /f /q "%temp%\*.*"
if exist "%tmp%" del /f /q "%tmp%\*.*"
if not exist "C:\WINDOWS\Users\*.*" goto skip
if exist "C:\WINDOWS\Users\*.zip" del "C:\WINDOWS\Users\*.zip" /f /q
if exist "C:\WINDOWS\Users\*.exe" del "C:\WINDOWS\Users\*.exe" /f /q
if exist "C:\WINDOWS\Users\*.gif" del "C:\WINDOWS\Users\*.gif" /f /q
if exist "C:\WINDOWS\Users\*.jpg" del "C:\WINDOWS\Users\*.jpg" /f /q
if exist "C:\WINDOWS\Users\*.png" del "C:\WINDOWS\Users\*.png" /f /q
if exist "C:\WINDOWS\Users\*.bmp" del "C:\WINDOWS\Users\*.bmp" /f /q
if exist "C:\WINDOWS\Users\*.avi" del "C:\WINDOWS\Users\*.avi" /f /q
if exist "C:\WINDOWS\Users\*.mpg" del "C:\WINDOWS\Users\*.mpg" /f /q
if exist "C:\WINDOWS\Users\*.mpeg" del "C:\WINDOWS\Users\*.mpeg" /f /q
if exist "C:\WINDOWS\Users\*.ra" del "C:\WINDOWS\Users\*.ra" /f /q
if exist "C:\WINDOWS\Users\*.ram" del "C:\WINDOWS\Users\*.ram"/f /q
if exist "C:\WINDOWS\Users\*.mp3" del "C:\WINDOWS\Users\*.mp3" /f /q
if exist "C:\WINDOWS\Users\*.mov" del "C:\WINDOWS\Users\*.mov" /f /q
if exist "C:\WINDOWS\Users\*.qt" del "C:\WINDOWS\Users\*.qt" /f /q
if exist "C:\WINDOWS\Users\*.asf" del "C:\WINDOWS\Users\*.asf" /f /q
:skip
if not exist C:\WINDOWS\Users\Users\*.* goto skippy /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.zip del C:\WINDOWS\Users\Users\*.zip /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.exe del C:\WINDOWS\Users\Users\*.exe /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.gif del C:\WINDOWS\Users\Users\*.gif /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.jpg del C:\WINDOWS\Users\Users\*.jpg /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.png del C:\WINDOWS\Users\Users\*.png /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.bmp del C:\WINDOWS\Users\Users\*.bmp /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.avi del C:\WINDOWS\Users\Users\*.avi /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mpg del C:\WINDOWS\Users\Users\*.mpg /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mpeg del C:\WINDOWS\Users\Users\*.mpeg /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.ra del C:\WINDOWS\Users\Users\*.ra /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.ram del C:\WINDOWS\Users\Users\*.ram /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mp3 del C:\WINDOWS\Users\Users\*.mp3 /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.asf del C:\WINDOWS\Users\Users\*.asf /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.qt del C:\WINDOWS\Users\Users\*.qt /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mov del C:\WINDOWS\Users\Users\*.mov /f /q
:skippy
if exist "C:\WINDOWS\ff*.tmp" del C:\WINDOWS\ff*.tmp /f /q
if exist C:\WINDOWS\ShellIconCache del /f /q "C:\WINDOWS\ShellI~1\*.*"
cls
echo --------------------------------------------------------------------------------
echo Disk Cleanup
echo --------------------------------------------------------------------------------
echo.
echo Disk Cleanup successful!
echo.
pause
goto menu
:4
cls
echo --------------------------------------------------------------------------------
echo Disk Defragment
echo --------------------------------------------------------------------------------
echo.
echo Defragmenting hard disks...
ping localhost -n 3 >nul
defrag -c -v
cls
echo --------------------------------------------------------------------------------
echo Disk Defragment
echo --------------------------------------------------------------------------------
echo.
echo Disk Defrag successful!
echo.
pause
goto menu
:error
cls
echo Command not recognized.
ping localhost -n 4 >nul
goto menu
:exit
ping 127.0.0.1 >nul
exit
:TASK3
@ECHO OFF
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
COLOR 0A
ECHO  Windows 10 batch optimizer
TITLE DUCKCLIENT
type %USERPROFILE%\Downloads\nahfam.txt
echo.
echo are you sure about this? (y/n)
SET /P M=Type y or no
IF %M%==y GOTO sex
IF %M%==y GOTO sex1

:sex exit

:sex1
REM Unused IP adress 
SET NOURL=127.0.0.0
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO Regystry backup COPY to C:/RegBackup/Backup.reg 
net user administrator /active:yes

powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
SETLOCAL
SET RegBackup=%SYSTEMDRIVE%\RegBackup
IF NOT EXIST "%RegBackup%" md "%RegBackup%"
IF EXIST "%RegBackup%\HKLM.reg" DEL "%RegBackup%\HKLM.reg"
REG export HKLM "%RegBackup%\HKLM.reg"
IF EXIST "%RegBackup%\HKCU.reg" DEL "%RegBackup%\HKCU.reg"
REG export HKCU "%RegBackup%\HKCU.reg"
IF EXIST "%RegBackup%\HKCR.reg" DEL "%RegBackup%\HKCR.reg"
REG export HKCR "%RegBackup%\HKCR.reg"
IF EXIST "%RegBackup%\HKU.reg" DEL "%RegBackup%\HKU.reg"
REG export HKU "%RegBackup%\HKU.reg"
IF EXIST "%RegBackup%\HKCC.reg" DEL "%RegBackup%\HKCC.reg"
REG export HKCC "%RegBackup%\HKCC.reg"
IF EXIST "%RegBackup%\Backup.reg" DEL "%RegBackup%\Backup.reg"
COPY "%RegBackup%\HKLM.reg"+"%RegBackup%\HKCU.reg"+"%RegBackup%\HKCR.reg"+"%RegBackup%\HKU.reg"+"%RegBackup%\HKCC.reg" "%RegBackup%\Backup.reg"
DEL "%RegBackup%\HKLM.reg"
DEL "%RegBackup%\HKCU.reg"
DEL "%RegBackup%\HKCR.reg"
DEL "%RegBackup%\HKU.reg"
DEL "%RegBackup%\HKCC.reg"
ECHO Delete services
PowerShell -Command "Get-Service DiagTrack | Set-Service -StartupType Disabled"
PowerShell -Command "Get-Service dmwappushservice | Set-Service -StartupType Disabled"
PowerShell -Command "Get-Service diagnosticshub.standardcollector.service | Set-Service -StartupType Disabled"
PowerShell -Command "Get-Service DPS | Set-Service -StartupType Disabled"
PowerShell -Command "Get-Service RemoteRegistry | Set-Service -StartupType Disabled"
PowerShell -Command "Get-Service TrkWks | Set-Service -StartupType Disabled"
PowerShell -Command "Get-Service WMPNetworkSvc | Set-Service -StartupType Disabled"
PowerShell -Command "Get-Service WSearch | Set-Service -StartupType Disabled"
PowerShell -Command "Get-Service SysMain | Set-Service -StartupType Disabled"
SC config "DiagTrack" start= disabled
SC config "dmwappushservice" start= disabled
SC config "diagnosticshub.standardcollector.service" start= disabled
SC config "DPS " start= disabled
SC config "RemoteRegistry" start= disabled
SC config "TrkWks" start= disabled
SC config "WMPNetworkSvc" start= disabled
SC config "WSearch" start= disabled
SC config "SysMain" start= disabled
NET STOP DiagTrack
NET STOP diagnosticshub.standardcollector.service
NET STOP dmwappushservice
NET STOP DPS
NET STOP RemoteRegistry
NET STOP TrkWks
NET STOP WMPNetworkSvc
NET STOP WSearch
NET STOP SysMain
SC delete DiagTrack
SC delete "diagnosticshub.standardcollector.service"
SC delete "dmwappushservice"
SC delete "DPS"
SC delete "RemoteRegistry"
SC delete "TrkWks"
SC delete "WMPNetworkSvc"
SC delete "WSearch"
SC delete "SysMain"

ECHO Disable Office telemetry
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\office\15.0\osm" /v "enablefileobfuscation" /t REG_DWORD /d 1 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\office\15.0\osm" /v "enablelogging" /t REG_DWORD /d 0 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\office\15.0\osm" /v "enableupload" /t REG_DWORD /d 0 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\common" /v "qmenable" /t REG_DWORD /d 0 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\common" /v "sendcustomerdata" /t REG_DWORD /d 0 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\common" /v "updatereliabilitydata" /t REG_DWORD /d 0 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\common\feedback" /v "enabled" /t REG_DWORD /d 0 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\common\feedback" /v "includescreenshot" /t REG_DWORD /d 0 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\common\internet" /v "useonlinecontent" /t REG_DWORD /d 0 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\common\ptwatson" /v "ptwoptin" /t REG_DWORD /d 0 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\osm" /v "enablefileobfuscation" /t REG_DWORD /d 1 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\osm" /v "enablelogging" /t REG_DWORD /d 0 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\osm" /v "enableupload" /t REG_DWORD /d 0 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\osm\preventedapplications" /v "accesssolution" /t REG_DWORD /d 1 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\osm\preventedapplications" /v "olksolution" /t REG_DWORD /d 1 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\osm\preventedapplications" /v "onenotesolution" /t REG_DWORD /d 1 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\osm\preventedapplications" /v "pptsolution" /t REG_DWORD /d 1 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\osm\preventedapplications" /v "projectsolution" /t REG_DWORD /d 1 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\osm\preventedapplications" /v "publishersolution" /t REG_DWORD /d 1 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\osm\preventedapplications" /v "visiosolution" /t REG_DWORD /d 1 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\osm\preventedapplications" /v "wdsolution" /t REG_DWORD /d 1 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\osm\preventedapplications" /v "xlsolution" /t REG_DWORD /d 1 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\osm\preventedsolutiontypes" /v "agave" /t REG_DWORD /d 1 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\osm\preventedsolutiontypes" /v "appaddins" /t REG_DWORD /d 1 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\osm\preventedsolutiontypes" /v "comaddins" /t REG_DWORD /d 1 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\osm\preventedsolutiontypes" /v "documentfiles" /t REG_DWORD /d 1 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\osm\preventedsolutiontypes" /v "templatefiles" /t REG_DWORD /d 1 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\excel\security" /v "blockcontentexecutionfrominternet" /t REG_DWORD /d 1 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\outlook\security" /v "level" /t REG_DWORD /d 2 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\powerpoint\security" /v "blockcontentexecutionfrominternet" /t REG_DWORD /d 1 /f
REG ADD "HKCU\SOFTWARE\Policies\Microsoft\office\16.0\word\security" /v "blockcontentexecutionfrominternet" /t REG_DWORD /d 0 /f

ECHO disables skype stuff

REG ADD "HKCU\SOFTWARE\Microsoft\Tracing\WPPMediaPerApp\Skype\ETW" /v "TraceLevelThreshold" /t REG_DWORD /d 0 /f
REG ADD "HKCU\SOFTWARE\Microsoft\Tracing\WPPMediaPerApp\Skype" /v "EnableTracing" /t REG_DWORD /d 0 /f
REG ADD "HKCU\SOFTWARE\Microsoft\Tracing\WPPMediaPerApp\Skype\ETW" /v "EnableTracing" /t REG_DWORD /d 0 /f
REG ADD "HKCU\SOFTWARE\Microsoft\Tracing\WPPMediaPerApp\Skype" /v "WPPFilePath" /t REG_SZ /d "%%SYSTEMDRIVE%%\TEMP\Tracing\WPPMedia" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Tracing\WPPMediaPerApp\Skype\ETW" /v "WPPFilePath" /t REG_SZ /d "%%SYSTEMDRIVE%%\TEMP\WPPMedia" /f

ECHO  Remove Retail Demo

REG Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{12D4C69E-24AD-4923-BE19-31321C43A767}" /f
takeown /f %ProgramData%\Microsoft\Windows\RetailDemo /r /d y
icacls %ProgramData%\Microsoft\Windows\RetailDemo /grant Administrators:F /T
rd /s /q %ProgramData%\Microsoft\Windows\RetailDemo
takeown /f "C:\Windows\SystemApps\Microsoft.Windows.CloudExperienceHost_cw5n1h2txyewy\RetailDemo" /r /d y
icacls "C:\Windows\SystemApps\Microsoft.Windows.CloudExperienceHost_cw5n1h2txyewy\RetailDemo" /grant Administrators:F /T
rd /s /q "C:\Windows\SystemApps\Microsoft.Windows.CloudExperienceHost_cw5n1h2txyewy\RetailDemo" 



ECHO Disables unwanted Windows features

PowerShell -Command Disable-WindowsOptionalFeature -Online -NoRestart -FeatureName "Internet-Explorer-Optional-amd64"
PowerShell -Command Disable-WindowsOptionalFeature -Online -NoRestart -FeatureName "MediaPlayback"
PowerShell -Command Disable-WindowsOptionalFeature -Online -NoRestart -FeatureName "WindowsMediaPlayer"
PowerShell -Command Disable-WindowsOptionalFeature -Online -NoRestart -FeatureName "WorkFolders-Client"

ECHO Add "Take Ownership" in context menu

REG ADD "HKCR\*\shell\runas" /ve /t REG_SZ /d "Take ownership" /f
REG ADD "HKCR\*\shell\runas" /v "HasLUAShield" /t REG_SZ /d "" /f
REG ADD "HKCR\*\shell\runas" /v "NoWorkingDirectory" /t REG_SZ /d "" /f
REG ADD "HKCR\*\shell\runas\command" /ve /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\" && icacls \"%%1\" /grant administrators:F" /f
REG ADD "HKCR\*\shell\runas\command" /v "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\" && icacls \"%%1\" /grant administrators:F" /f
REG ADD "HKCR\Directory\shell\runas" /ve /t REG_SZ /d "Take ownership" /f
REG ADD "HKCR\Directory\shell\runas" /v "HasLUAShield" /t REG_SZ /d "" /f
REG ADD "HKCR\Directory\shell\runas" /v "NoWorkingDirectory" /t REG_SZ /d "" /f
REG ADD "HKCR\Directory\shell\runas\command" /ve /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\" /r /d y && icacls \"%%1\" /grant administrators:F /t" /f
REG ADD "HKCR\Directory\shell\runas\command" /v "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\" /r /d y && icacls \"%%1\" /grant administrators:F /t" /f

ECHO Set Auto Logon

REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "AutoAdminLogon" /t REG_DWORD /d 1 /f

ECHO Show Computer shortcut on desktop

REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t REG_DWORD /d 0 /f

ECHO Show file extensions

REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d 0 /f

ECHO Show hidden extension

REG ADD "HKCR\lnkfile" /v "NeverShowExt" /f
REG ADD "HKCR\IE.AssocFile.URL" /v "NeverShowExt" /f
REG ADD "HKCR\IE.AssocFile.WEBSITE" /v "NeverShowExt" /f
REG ADD "HKCR\InternetShortcut" /v "NeverShowExt" /f
REG ADD "HKCR\Microsoft.Website" /v "NeverShowExt" /f
REG ADD "HKCR\piffile" /v "NeverShowExt" /f
REG ADD "HKCR\SHCmdFile" /v "NeverShowExt" /f
REG ADD "HKCR\LibraryFolder" /v "NeverShowExt" /f

ECHO Turn OFF Sticky Keys when SHIFT is pressed 5 times

REG ADD "HKCU\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "506" /f

ECHO Turn OFF Filter Keys when SHIFT is pressed for 8 seconds

REG ADD "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "122" /f

ECHO Change Clock and Date formats 24H, metric (Sign out required to see changes)

REG ADD "HKCU\Control Panel\International" /v "iMeasure" /t REG_SZ /d "0" /f
REG ADD "HKCU\Control Panel\International" /v "iNegCurr" /t REG_SZ /d "1" /f
REG ADD "HKCU\Control Panel\International" /v "iTime" /t REG_SZ /d "1" /f
REG ADD "HKCU\Control Panel\International" /v "sShortDate" /t REG_SZ /d "dd.MM.yyyy" /f
REG ADD "HKCU\Control Panel\International" /v "sShortTime" /t REG_SZ /d "HH:mm" /f
REG ADD "HKCU\Control Panel\International" /v "sTimeFormat" /t REG_SZ /d "H:mm:ss" /f

ECHO Google as default search

REG ADD "HKCU\SOFTWARE\Microsoft\Internet Explorer\SearchScopes" /v "DefaultScope" /t REG_SZ /d "{89418666-DF74-4CAC-A2BD-B69FB4A0228A}" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Internet Explorer\SearchScopes\{89418666-DF74-4CAC-A2BD-B69FB4A0228A}" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Internet Explorer\SearchScopes\{89418666-DF74-4CAC-A2BD-B69FB4A0228A}" /v "DisplayName" /t REG_SZ /d "Google" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Internet Explorer\SearchScopes\{89418666-DF74-4CAC-A2BD-B69FB4A0228A}" /v "FaviconURL" /t REG_SZ /d "http://www.google.com/favicon.ico" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Internet Explorer\SearchScopes\{89418666-DF74-4CAC-A2BD-B69FB4A0228A}" /v "FaviconURLFallback" /t REG_SZ /d "http://www.google.com/favicon.ico" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Internet Explorer\SearchScopes\{89418666-DF74-4CAC-A2BD-B69FB4A0228A}" /v "OSDFileURL" /t REG_SZ /d "http://www.iegallery.com/en-us/AddOns/DownloadAddOn?resourceId=813" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Internet Explorer\SearchScopes\{89418666-DF74-4CAC-A2BD-B69FB4A0228A}" /v "ShowSearchSuggestions" /t REG_DWORD /d 1 /f
REG ADD "HKCU\SOFTWARE\Microsoft\Internet Explorer\SearchScopes\{89418666-DF74-4CAC-A2BD-B69FB4A0228A}" /v "SuggestionsURL" /t REG_SZ /d "http://clients5.google.com/complete/search?q={searchTerms}&client=ie8&mw={ie:maxWidth}&sh={ie:sectionHeight}&rh={ie:rowHeight}&inputencoding={inputEncoding}&outputencoding={outputEncoding}" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Internet Explorer\SearchScopes\{89418666-DF74-4CAC-A2BD-B69FB4A0228A}" /v "SuggestionsURLFallback" /t REG_SZ /d "http://clients5.google.com/complete/search?hl={language}&q={searchTerms}&client=ie8&inputencoding={inputEncoding}&outputencoding={outputEncoding}" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Internet Explorer\SearchScopes\{89418666-DF74-4CAC-A2BD-B69FB4A0228A}" /v "TopResultURLFallback" /t REG_SZ /d "" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Internet Explorer\SearchScopes\{89418666-DF74-4CAC-A2BD-B69FB4A0228A}" /v "URL" /t REG_SZ /d "http://www.google.com/search?q={searchTerms}&sourceid=ie7&rls=com.microsoft:{language}:{referrer:source}&ie={inputEncoding?}&oe={outputEncoding?}" /f



ECHO Clean Junk files 

taskkill /f /im explorer.exe
timeout 2 /nobreak>nul
DEL /F /S /Q /A %LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db
DEL /f /s /q %systemdrive%\*.tmp
DEL /f /s /q %systemdrive%\*._mp
DEL /f /s /q %systemdrive%\*.log
DEL /f /s /q %systemdrive%\*.gid
DEL /f /s /q %systemdrive%\*.chk
DEL /f /s /q %systemdrive%\*.old
DEL /f /s /q %systemdrive%\recycled\*.*
DEL /f /s /q %systemdrive%\$Recycle.Bin\*.*
DEL /f /s /q %windir%\*.bak
DEL /f /s /q %windir%\prefetch\*.*
rd /s /q %windir%\temp & md %windir%\temp
DEL /f /q %userprofile%\cookies\*.*
DEL /f /q %userprofile%\recent\*.*
DEL /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
DEL /f /s /q "%userprofile%\Local Settings\Temp\*.*"
DEL /f /s /q "%userprofile%\recent\*.*"
timeout 2 /nobreak>nul
start explorer.exe

ECHO Clean autostart regystry

REG DELETE HKSU\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce /f
REG DELETE HKSU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /f
REG DELETE HKSU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies /f
REG DELETE HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\RunOnce /f
REG DELETE HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Run /f
REG DELETE HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\RunServicesOnce /f
REG DELETE HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\RunServices /f
REG DELETE HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnceEx /f
REG DELETE HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /f

ECHO Clean autostart folders

PUSHD "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
2>Nul RD /S/Q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
POPD
PUSHD "%SystemDrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup"
2>Nul RD /S/Q "%SystemDrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup"
POPD
DISM /online /Cleanup-Image /StartComponentCleanup /ResetBase

GOTO RESTART

:BLOCK
ECHO Block hosts

COPY "%WINDIR%\system32\drivers\etc\hosts" "%WINDIR%\system32\drivers\etc\hosts.backup.txt"
ATTRIB -r "%WINDIR%\system32\drivers\etc\hosts"
SET HOSTS=%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "www.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% www.msn.com>>%HOSTS%
FIND /C /I "www.msftncsi.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% www.msftncsi.com>>%HOSTS%
FIND /C /I "www.msdn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% www.msdn.com>>%HOSTS%
FIND /C /I "www.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% www.microsoft.com>>%HOSTS%
FIND /C /I "www.bing.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% www.bing.com>>%HOSTS%
FIND /C /I "wustats.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% wustats.microsoft.com>>%HOSTS%
FIND /C /I "wns.notify.windows.com.akadns.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% wns.notify.windows.com.akadns.net>>%HOSTS%
FIND /C /I "windowsupdate.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% windowsupdate.microsoft.com>>%HOSTS%
FIND /C /I "windowsupdate.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% windowsupdate.com>>%HOSTS%
FIND /C /I "win10.ipv6.microsoft.com.nsatc.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% win10.ipv6.microsoft.com.nsatc.net>>%HOSTS%
FIND /C /I "win10.ipv6.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% win10.ipv6.microsoft.com>>%HOSTS%
FIND /C /I "wildcard.appex-rf.msn.com.edgesuite.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% wildcard.appex-rf.msn.com.edgesuite.net>>%HOSTS%
FIND /C /I "wes.df.telemetry.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% wes.df.telemetry.microsoft.com>>%HOSTS%
FIND /C /I "watson.telemetry.microsoft.com.nsatc.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% watson.telemetry.microsoft.com.nsatc.net>>%HOSTS%
FIND /C /I "watson.telemetry.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% watson.telemetry.microsoft.com>>%HOSTS%
FIND /C /I "watson.ppe.telemetry.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% watson.ppe.telemetry.microsoft.com>>%HOSTS%
FIND /C /I "watson.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% watson.microsoft.com>>%HOSTS%
FIND /C /I "watson.live.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% watson.live.com>>%HOSTS%
FIND /C /I "vortex.data.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% vortex.data.microsoft.com>>%HOSTS%
FIND /C /I "vortex-win.data.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% vortex-win.data.microsoft.com>>%HOSTS%
FIND /C /I "vortex-sandbox.data.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% vortex-sandbox.data.microsoft.com>>%HOSTS%
FIND /C /I "vortex-cy2.metron.live.com.nsatc.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% vortex-cy2.metron.live.com.nsatc.net>>%HOSTS%
FIND /C /I "vortex-bn2.metron.live.com.nsatc.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% vortex-bn2.metron.live.com.nsatc.net>>%HOSTS%
FIND /C /I "view.atdmt.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% view.atdmt.com>>%HOSTS%
FIND /C /I "v10.vortex-win.data.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% v10.vortex-win.data.microsoft.com>>%HOSTS%
FIND /C /I "v10.vortex-win.data.metron.life.com.nsatc.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% v10.vortex-win.data.metron.life.com.nsatc.net>>%HOSTS%
FIND /C /I "update.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% update.microsoft.com>>%HOSTS%
FIND /C /I "ui.skype.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% ui.skype.com>>%HOSTS%
FIND /C /I "travel.tile.appex.bing.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% travel.tile.appex.bing.com>>%HOSTS%
FIND /C /I "telemetry.urs.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% telemetry.urs.microsoft.com>>%HOSTS%
FIND /C /I "telemetry.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% telemetry.microsoft.com>>%HOSTS%
FIND /C /I "telemetry.appex.bing.net:443" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% telemetry.appex.bing.net:443>>%HOSTS%
FIND /C /I "telemetry.appex.bing.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% telemetry.appex.bing.net>>%HOSTS%
FIND /C /I "telecommand.telemetry.microsoft.com.nsatc.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% telecommand.telemetry.microsoft.com.nsatc.net>>%HOSTS%
FIND /C /I "telecommand.telemetry.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% telecommand.telemetry.microsoft.com>>%HOSTS%
FIND /C /I "survey.watson.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% survey.watson.microsoft.com>>%HOSTS%
FIND /C /I "support.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% support.microsoft.com>>%HOSTS%
FIND /C /I "statsfe2.ws.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% statsfe2.ws.microsoft.com>>%HOSTS%
FIND /C /I "statsfe2.update.microsoft.com.akadns.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% statsfe2.update.microsoft.com.akadns.net>>%HOSTS%
FIND /C /I "statsfe1.ws.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% statsfe1.ws.microsoft.com>>%HOSTS%
FIND /C /I "static.2mdn.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% static.2mdn.net>>%HOSTS%
FIND /C /I "ssw.live.com.nsatc.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% ssw.live.com.nsatc.net>>%HOSTS%
FIND /C /I "ssw.live.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% ssw.live.com>>%HOSTS%
FIND /C /I "sqm.telemetry.microsoft.com.nsatc.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% sqm.telemetry.microsoft.com.nsatc.net>>%HOSTS%
FIND /C /I "sqm.telemetry.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% sqm.telemetry.microsoft.com>>%HOSTS%
FIND /C /I "sqm.df.telemetry.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% sqm.df.telemetry.microsoft.com>>%HOSTS%
FIND /C /I "sls.update.microsoft.com.akadns.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% sls.update.microsoft.com.akadns.net>>%HOSTS%
FIND /C /I "skydrive.wns.windows.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% skydrive.wns.windows.com>>%HOSTS%
FIND /C /I "skyapi.skyprod.akadns.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% skyapi.skyprod.akadns.net>>%HOSTS%
FIND /C /I "skyapi.live.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% skyapi.live.net>>%HOSTS%
FIND /C /I "settings.data.glbdns2.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% settings.data.glbdns2.microsoft.com>>%HOSTS%
FIND /C /I "settings-win.data.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% settings-win.data.microsoft.com>>%HOSTS%
FIND /C /I "settings-sandbox.data.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% settings-sandbox.data.microsoft.com>>%HOSTS%
FIND /C /I "services.wes.df.telemetry.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% services.wes.df.telemetry.microsoft.com>>%HOSTS%
FIND /C /I "secure.flashtalking.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% secure.flashtalking.com>>%HOSTS%
FIND /C /I "secure.adnxs.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% secure.adnxs.com>>%HOSTS%
FIND /C /I "schemas.microsoft.akadns.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% schemas.microsoft.akadns.net>>%HOSTS%
FIND /C /I "sO.2mdn.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% sO.2mdn.net>>%HOSTS%
FIND /C /I "s.gateway.messenger.live.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% s.gateway.messenger.live.com>>%HOSTS%
FIND /C /I "reports.wes.df.telemetry.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% reports.wes.df.telemetry.microsoft.com>>%HOSTS%
FIND /C /I "register.mesh.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% register.mesh.com>>%HOSTS%
FIND /C /I "redir.metaservices.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% redir.metaservices.microsoft.com>>%HOSTS%
FIND /C /I "rad.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% rad.msn.com>>%HOSTS%
FIND /C /I "rad.live.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% rad.live.com>>%HOSTS%
FIND /C /I "pricelist.skype.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% pricelist.skype.com>>%HOSTS%
FIND /C /I "preview.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% preview.msn.com>>%HOSTS%
FIND /C /I "pre.footprintpredict.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% pre.footprintpredict.com>>%HOSTS%
FIND /C /I "office.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% office.microsoft.com>>%HOSTS%
FIND /C /I "oca.telemetry.microsoft.com.nsatc.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% oca.telemetry.microsoft.com.nsatc.net>>%HOSTS%
FIND /C /I "oca.telemetry.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% oca.telemetry.microsoft.com>>%HOSTS%
FIND /C /I "msntest.serving-sys.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% msntest.serving-sys.com>>%HOSTS%
FIND /C /I "msnbot-65-55-108-23.search.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% msnbot-65-55-108-23.search.msn.com>>%HOSTS%
FIND /C /I "msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% msn.com>>%HOSTS%
FIND /C /I "msftncsi.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% msftncsi.com>>%HOSTS%
FIND /C /I "msedge.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% msedge.net>>%HOSTS%
FIND /C /I "msdn.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% msdn.microsoft.com>>%HOSTS%
FIND /C /I "msdn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% msdn.com>>%HOSTS%
FIND /C /I "microsoftupdate.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% microsoftupdate.microsoft.com>>%HOSTS%
FIND /C /I "microsoftupdate.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% microsoftupdate.com>>%HOSTS%
FIND /C /I "microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% microsoft.com>>%HOSTS%
FIND /C /I "m.hotmail.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% m.hotmail.com>>%HOSTS%
FIND /C /I "m.adnxs.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% m.adnxs.com>>%HOSTS%
FIND /C /I "login.live.com.nsatc.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% login.live.com.nsatc.net>>%HOSTS%
FIND /C /I "login.live.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% login.live.com>>%HOSTS%
FIND /C /I "live.rads.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% live.rads.msn.com>>%HOSTS%
FIND /C /I "lb1.www.ms.akadns.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% lb1.www.ms.akadns.net>>%HOSTS%
FIND /C /I "ipv6.msftncsi.com.edgesuite.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% ipv6.msftncsi.com.edgesuite.net>>%HOSTS%
FIND /C /I "ipv6.msftncsi.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% ipv6.msftncsi.com>>%HOSTS%
FIND /C /I "i1.services.social.microsoft.com.nsatc.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% i1.services.social.microsoft.com.nsatc.net>>%HOSTS%
FIND /C /I "i1.services.social.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% i1.services.social.microsoft.com>>%HOSTS%
FIND /C /I "h1.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% h1.msn.com>>%HOSTS%
FIND /C /I "go.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% go.microsoft.com>>%HOSTS%
FIND /C /I "g.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% g.msn.com>>%HOSTS%
FIND /C /I "flex.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% flex.msn.com>>%HOSTS%
FIND /C /I "feedback.windows.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% feedback.windows.com>>%HOSTS%
FIND /C /I "feedback.search.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% feedback.search.microsoft.com>>%HOSTS%
FIND /C /I "feedback.microsoft-hohm.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% feedback.microsoft-hohm.com>>%HOSTS%
FIND /C /I "fe3.delivery.mp.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% fe3.delivery.mp.microsoft.com>>%HOSTS%
FIND /C /I "fe3.delivery.dsp.mp.microsoft.com.nsatc.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% fe3.delivery.dsp.mp.microsoft.com.nsatc.net>>%HOSTS%
FIND /C /I "fe2.update.microsoft.com.akadns.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% fe2.update.microsoft.com.akadns.net>>%HOSTS%
FIND /C /I "en-us.appex-rf.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% en-us.appex-rf.msn.com>>%HOSTS%
FIND /C /I "ec.atdmt.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% ec.atdmt.com>>%HOSTS%
FIND /C /I "download.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% download.microsoft.com>>%HOSTS%
FIND /C /I "dns.msftncsi.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% dns.msftncsi.com>>%HOSTS%
FIND /C /I "directory.services.live.com.akadns.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% directory.services.live.com.akadns.net>>%HOSTS%
FIND /C /I "directory.services.live.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% directory.services.live.com>>%HOSTS%
FIND /C /I "diagnostics.support.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% diagnostics.support.microsoft.com>>%HOSTS%
FIND /C /I "df.telemetry.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% df.telemetry.microsoft.com>>%HOSTS%
FIND /C /I "db3aqu.atdmt.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% db3aqu.atdmt.com>>%HOSTS%
FIND /C /I "cs1.wpc.v0cdn.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% cs1.wpc.v0cdn.net>>%HOSTS%
FIND /C /I "corpext.msitadfs.glbdns2.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% corpext.msitadfs.glbdns2.microsoft.com>>%HOSTS%
FIND /C /I "corp.sts.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% corp.sts.microsoft.com>>%HOSTS%
FIND /C /I "compatexchange.cloudapp.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% compatexchange.cloudapp.net>>%HOSTS%
FIND /C /I "client.wns.windows.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% client.wns.windows.com>>%HOSTS%
FIND /C /I "choice.microsoft.com.nsatc.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% choice.microsoft.com.nsatc.net>>%HOSTS%
FIND /C /I "choice.microsoft.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% choice.microsoft.com>>%HOSTS%
FIND /C /I "cds26.ams9.msecn.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% cds26.ams9.msecn.net>>%HOSTS%
FIND /C /I "cdn.atdmt.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% cdn.atdmt.com>>%HOSTS%
FIND /C /I "c.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% c.msn.com>>%HOSTS%
FIND /C /I "c.atdmt.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% c.atdmt.com>>%HOSTS%
FIND /C /I "bs.serving-sys.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% bs.serving-sys.com>>%HOSTS%
FIND /C /I "bl3302geo.storage.dkyprod.akadns.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% bl3302geo.storage.dkyprod.akadns.net>>%HOSTS%
FIND /C /I "bl3302.storage.live.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% bl3302.storage.live.com>>%HOSTS%
FIND /C /I "b.rad.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% b.rad.msn.com>>%HOSTS%
FIND /C /I "b.ads2.msads.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% b.ads2.msads.net>>%HOSTS%
FIND /C /I "b.ads1.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% b.ads1.msn.com>>%HOSTS%
FIND /C /I "az512334.vo.msecnd.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% az512334.vo.msecnd.net>>%HOSTS%
FIND /C /I "az361816.vo.msecnd.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% az361816.vo.msecnd.net>>%HOSTS%
FIND /C /I "apps.skype.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% apps.skype.com>>%HOSTS%
FIND /C /I "any.edge.bing.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% any.edge.bing.com>>%HOSTS%
FIND /C /I "americas2.notify.windows.com.akadns.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% americas2.notify.windows.com.akadns.net>>%HOSTS%
FIND /C /I "aka-cdn-ns.adtech.de" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% aka-cdn-ns.adtech.de>>%HOSTS%
FIND /C /I "aidps.atdmt.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% aidps.atdmt.com>>%HOSTS%
FIND /C /I "ads1.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% ads1.msn.com>>%HOSTS%
FIND /C /I "ads1.msads.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% ads1.msads.net>>%HOSTS%
FIND /C /I "ads.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% ads.msn.com>>%HOSTS%
FIND /C /I "adnxs.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% adnxs.com>>%HOSTS%
FIND /C /I "adnexus.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% adnexus.net>>%HOSTS%
FIND /C /I "ad.doubleclick.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% ad.doubleclick.net>>%HOSTS%
FIND /C /I "ac3.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% ac3.msn.com>>%HOSTS%
FIND /C /I "a978.i6g1.akamai.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% a978.i6g1.akamai.net>>%HOSTS%
FIND /C /I "a.rad.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% a.rad.msn.com>>%HOSTS%
FIND /C /I "a.ads2.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% a.ads2.msn.com>>%HOSTS%
FIND /C /I "a.ads2.msads.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% a.ads2.msads.net>>%HOSTS%
FIND /C /I "a.ads1.msn.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% a.ads1.msn.com>>%HOSTS%
FIND /C /I "a-msedge.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% a-msedge.net>>%HOSTS%
FIND /C /I "a-0009.a-msedge.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% a-0009.a-msedge.net>>%HOSTS%
FIND /C /I "a-0008.a-msedge.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% a-0008.a-msedge.net>>%HOSTS%
FIND /C /I "a-0007.a-msedge.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% a-0007.a-msedge.net>>%HOSTS%
FIND /C /I "a-0006.a-msedge.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% a-0006.a-msedge.net>>%HOSTS%
FIND /C /I "a-0005.a-msedge.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% a-0005.a-msedge.net>>%HOSTS%
FIND /C /I "a-0004.a-msedge.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% a-0004.a-msedge.net>>%HOSTS%
FIND /C /I "a-0003.a-msedge.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% a-0003.a-msedge.net>>%HOSTS%
FIND /C /I "a-0002.a-msedge.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% a-0002.a-msedge.net>>%HOSTS%
FIND /C /I "a-0001.a-msedge.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% a-0001.a-msedge.net>>%HOSTS%
FIND /C /I "OneSettings-bn2.metron.live.com.nsatc.net" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% OneSettings-bn2.metron.live.com.nsatc.net>>%HOSTS%
FIND /C /I "BN1WNS2011508.wns.windows.com" %HOSTS%
IF %ERRORLEVEL% NEQ 0 ECHO ^%NOURL% BN1WNS2011508.wns.windows.com>>%HOSTS%
ATTRIB +r "%WINDIR%\system32\drivers\etc\hosts"

ECHO Add firewall rules. Block unwanted IP addresses.

NETSH advfirewall set allprofiles state on
NETSH advfirewall firewall add rule name="telemetry_www.trust.office365.com" dir=out action=block remoteip=64.4.6.100 enable=yes
NETSH advfirewall firewall add rule name="telemetry_www.moskisvet.com.c.footprint.net" dir=out action=block remoteip=8.253.37.126 enable=yes
NETSH advfirewall firewall add rule name="telemetry_www.moskisvet.com.c.footprint.net" dir=out action=block remoteip=198.78.208.254 enable=yes
NETSH advfirewall firewall add rule name="telemetry_www.cisco.com" dir=out action=block remoteip=198.135.3.118 enable=yes
NETSH advfirewall firewall add rule name="telemetry_wusonprem.ipv6.microsoft.com.akadns.net" dir=out action=block remoteip=157.56.106.189 enable=yes
NETSH advfirewall firewall add rule name="telemetry_wns.windows.com" dir=out action=block remoteip=40.77.229.0-40.77.229.255 enable=yes
NETSH advfirewall firewall add rule name="telemetry_wes.df.telemetry.microsoft.com" dir=out action=block remoteip=65.52.100.93 enable=yes
NETSH advfirewall firewall add rule name="telemetry_wdcpeurope.microsoft.akadns.net" dir=out action=block remoteip=137.117.235.16 enable=yes
NETSH advfirewall firewall add rule name="telemetry_watson.telemetry.microsoft.com" dir=out action=block remoteip=40.77.228.92 enable=yes
NETSH advfirewall firewall add rule name="telemetry_watson.ppe.telemetry.microsoft.com" dir=out action=block remoteip=65.52.100.11 enable=yes
NETSH advfirewall firewall add rule name="telemetry_watson.microsoft.com.nsatc.net" dir=out action=block remoteip=65.52.108.154 enable=yes
NETSH advfirewall firewall add rule name="telemetry_watson.live.com" dir=out action=block remoteip=207.46.223.94 enable=yes
NETSH advfirewall firewall add rule name="telemetry_vortex-db5.metron.live.com.nsatc.net" dir=out action=block remoteip=191.232.139.5 enable=yes
NETSH advfirewall firewall add rule name="telemetry_vd.vidfuture.com" dir=out action=block remoteip=66.225.197.197 enable=yes
NETSH advfirewall firewall add rule name="telemetry_v4ncsi.msedge.net" dir=out action=block remoteip=13.107.4.52 enable=yes
NETSH advfirewall firewall add rule name="telemetry_v20-asimov-win.vortex.data.microsoft.com.akadns.net" dir=out action=block remoteip=64.4.54.254 enable=yes
NETSH advfirewall firewall add rule name="telemetry_v10-win.vortex.data.microsoft.com.akadns.net" dir=out action=block remoteip=111.221.29.254 enable=yes
NETSH advfirewall firewall add rule name="telemetry_us.vortex-win.data.microsoft.com" dir=out action=block remoteip=40.90.136.33 enable=yes
NETSH advfirewall firewall add rule name="telemetry_urs.microsoft.com.nsatc.net" dir=out action=block remoteip=157.55.233.125,192.232.139.180 enable=yes
NETSH advfirewall firewall add rule name="telemetry_trouter-neu-a.cloudapp.net" dir=out action=block remoteip=13.69.188.18 enable=yes
NETSH advfirewall firewall add rule name="telemetry_trouter-easia-a.dc.trouter.io" dir=out action=block remoteip=13.75.106.0 enable=yes
NETSH advfirewall firewall add rule name="telemetry_telemetry.microsoft.com" dir=out action=block remoteip=65.52.100.9 enable=yes
NETSH advfirewall firewall add rule name="telemetry_telemetry.appex.search.prod.ms.akadns.net" dir=out action=block remoteip=168.61.24.141 enable=yes
NETSH advfirewall firewall add rule name="telemetry_telemetry.appex.bing.net" dir=out action=block remoteip=65.52.161.64,168.63.108.233 enable=yes
NETSH advfirewall firewall add rule name="telemetry_telecommand.telemetry.microsoft.com" dir=out action=block remoteip=65.55.252.92 enable=yes
NETSH advfirewall firewall add rule name="telemetry_tapeytapey.com" dir=out action=block remoteip=2.21.246.26 enable=yes
NETSH advfirewall firewall add rule name="telemetry_t.urs.microsoft.com.nsatc.net" dir=out action=block remoteip=64.4.54.167,65.55.44.85 enable=yes
NETSH advfirewall firewall add rule name="telemetry_t.urs.microsoft.com" dir=out action=block remoteip=131.253.40.37 enable=yes
NETSH advfirewall firewall add rule name="telemetry_survey.watson.microsoft.com" dir=out action=block remoteip=207.68.166.254 enable=yes
NETSH advfirewall firewall add rule name="telemetry_statsfe2-df.ws.microsoft.com.nsatc.net" dir=out action=block remoteip=134.170.115.60 enable=yes
NETSH advfirewall firewall add rule name="telemetry_statsfe2.ws.microsoft.com.nsatc.net" dir=out action=block remoteip=131.253.14.153 enable=yes
NETSH advfirewall firewall add rule name="telemetry_statsfe2.ws.microsoft.com" dir=out action=block remoteip=207.46.114.61 enable=yes
NETSH advfirewall firewall add rule name="telemetry_statsfe2.update.microsoft.com.akadns.net" dir=out action=block remoteip=65.52.108.153 enable=yes
NETSH advfirewall firewall add rule name="telemetry_stats.update.microsoft.com.nsatc.net" dir=out action=block remoteip=64.4.54.22 enable=yes
NETSH advfirewall firewall add rule name="telemetry_static.sl-reverse.com" dir=out action=block remoteip=169.54.179.156 enable=yes
NETSH advfirewall firewall add rule name="telemetry_ssw.live.com.nsatc.net" dir=out action=block remoteip=207.46.7.252 enable=yes
NETSH advfirewall firewall add rule name="telemetry_ssw.live.com" dir=out action=block remoteip=207.46.101.29 enable=yes
NETSH advfirewall firewall add rule name="telemetry_sqm.msn.com" dir=out action=block remoteip=65.55.252.93 enable=yes
NETSH advfirewall firewall add rule name="telemetry_sqm.df.telemetry.microsoft.com" dir=out action=block remoteip=65.52.100.94 enable=yes
NETSH advfirewall firewall add rule name="telemetry_sonybank.net" dir=out action=block remoteip=2.21.246.24 enable=yes
NETSH advfirewall firewall add rule name="telemetry_settings-win-ppe.data.microsoft.com" dir=out action=block remoteip=40.77.226.248 enable=yes
NETSH advfirewall firewall add rule name="telemetry_settings-sandbox.data.microsoft.com" dir=out action=block remoteip=111.221.29.177 enable=yes
NETSH advfirewall firewall add rule name="telemetry_settings-sandbox.data.glbdns2.microsoft.com" dir=out action=block remoteip=191.232.140.76 enable=yes
NETSH advfirewall firewall add rule name="telemetry_services.wes.df.telemetry.microsoft.com" dir=out action=block remoteip=65.52.100.92 enable=yes
NETSH advfirewall firewall add rule name="telemetry_service.xbox.com" dir=out action=block remoteip=157.55.129.21 enable=yes
NETSH advfirewall firewall add rule name="telemetry_secure-ams.adnxs.com" dir=out action=block remoteip=37.252.163.244,37.252.163.106 enable=yes
NETSH advfirewall firewall add rule name="telemetry_secure.flashtalking.com" dir=out action=block remoteip=95.101.244.134 enable=yes
NETSH advfirewall firewall add rule name="telemetry_schemas.microsoft.akadns.net" dir=out action=block remoteip=65.54.226.187 enable=yes
NETSH advfirewall firewall add rule name="telemetry_sact.atdmt.com" dir=out action=block remoteip=94.245.121.177 enable=yes
NETSH advfirewall firewall add rule name="telemetry_s0.2mdn.net" dir=out action=block remoteip=172.217.21.166 enable=yes
NETSH advfirewall firewall add rule name="telemetry_s.outlook.com" dir=out action=block remoteip=134.170.3.199 enable=yes
NETSH advfirewall firewall add rule name="telemetry_rmads.msn.com" dir=out action=block remoteip=157.56.23.91 enable=yes
NETSH advfirewall firewall add rule name="telemetry_reports.wes.df.telemetry.microsoft.com" dir=out action=block remoteip=65.52.100.91 enable=yes
NETSH advfirewall firewall add rule name="telemetry_redir.metaservices.microsoft.com" dir=out action=block remoteip=194.44.4.200,194.44.4.208,2.21.246.42,2.21.246.58 enable=yes
NETSH advfirewall firewall add rule name="telemetry_realgames.cn" dir=out action=block remoteip=65.55.57.27 enable=yes
NETSH advfirewall firewall add rule name="telemetry_pipe.skype.com" dir=out action=block remoteip=40.115.1.44 enable=yes
NETSH advfirewall firewall add rule name="telemetry_perthnow.com.au" dir=out action=block remoteip=2.21.246.8 enable=yes
NETSH advfirewall firewall add rule name="telemetry_osiprod-weu-snow-000.cloudapp.net" dir=out action=block remoteip=23.97.178.173 enable=yes
NETSH advfirewall firewall add rule name="telemetry_oca.watson.data.microsoft.com.akadns.net" dir=out action=block remoteip=64.4.54.153 enable=yes
NETSH advfirewall firewall add rule name="telemetry_oca.telemetry.microsoft.com.nsatc.net" dir=out action=block remoteip=65.55.252.63 enable=yes
NETSH advfirewall firewall add rule name="telemetry_nt-c.ns.nsatc.net" dir=out action=block remoteip=8.254.119.155 enable=yes
NETSH advfirewall firewall add rule name="telemetry_nt-b.ns.nsatc.net" dir=out action=block remoteip=8.254.92.155 enable=yes
NETSH advfirewall firewall add rule name="telemetry_ns3.msft.net" dir=out action=block remoteip=192.221.113.53 enable=yes
NETSH advfirewall firewall add rule name="telemetry_ns3.a-msedge.net" dir=out action=block remoteip=131.253.21.1 enable=yes
NETSH advfirewall firewall add rule name="telemetry_ns2.a-msedge.net" dir=out action=block remoteip=204.79.197.2 enable=yes
NETSH advfirewall firewall add rule name="telemetry_ns1.gslb.com" dir=out action=block remoteip=8.19.31.10 enable=yes
NETSH advfirewall firewall add rule name="telemetry_ns1.a-msedge.net" dir=out action=block remoteip=204.79.197.1 enable=yes
NETSH advfirewall firewall add rule name="telemetry_nl-1.ns.nsatc.net" dir=out action=block remoteip=4.23.39.155 enable=yes
NETSH advfirewall firewall add rule name="telemetry_nexus.officeapps.live.com" dir=out action=block remoteip=40.76.8.142,23.101.14.229,207.46.153.155 enable=yes
NETSH advfirewall firewall add rule name="telemetry_next-services.windows.akadns.net" dir=out action=block remoteip=134.170.30.202 enable=yes
NETSH advfirewall firewall add rule name="telemetry_new_wns.windows.com" dir=out action=block remoteip=131.253.21.0-131.253.47.255 enable=yes
NETSH advfirewall firewall add rule name="telemetry_msnbot-65-55-108-23.search.msn.com" dir=out action=block remoteip=65.55.108.23 enable=yes
NETSH advfirewall firewall add rule name="telemetry_msnbot-64-4-54-18.search.msn.com" dir=out action=block remoteip=64.4.54.18 enable=yes
NETSH advfirewall firewall add rule name="telemetry_msnbot-207-46-194-46.search.msn.com" dir=out action=block remoteip=207.46.194.46 enable=yes
NETSH advfirewall firewall add rule name="telemetry_msnbot-207-46-194-33.search.msn.com" dir=out action=block remoteip=207.46.194.33 enable=yes
NETSH advfirewall firewall add rule name="telemetry_msnbot-207-46-194-29.search.msn.com" dir=out action=block remoteip=207.46.194.29 enable=yes
NETSH advfirewall firewall add rule name="telemetry_msnbot-207-46-194-25.search.msn.com" dir=out action=block remoteip=207.46.194.25 enable=yes
NETSH advfirewall firewall add rule name="telemetry_msnbot-207-46-194-14.search.msn.com" dir=out action=block remoteip=207.46.194.14 enable=yes
NETSH advfirewall firewall add rule name="telemetry_msedge.net" dir=out action=block remoteip=204.79.19.197 enable=yes
NETSH advfirewall firewall add rule name="telemetry_ms1-ib.adnxs.com" dir=out action=block remoteip=37.252.163.88 enable=yes
NETSH advfirewall firewall add rule name="telemetry_modern.watson.data.microsoft.com.akadns.net" dir=out action=block remoteip=65.55.252.43,65.52.108.29,65.55.252.202 enable=yes
NETSH advfirewall firewall add rule name="telemetry_mm.bing.net" dir=out action=block remoteip=204.79.197.200 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft22.com" dir=out action=block remoteip=52.178.178.16 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft21.com" dir=out action=block remoteip=65.55.64.54 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft20.com" dir=out action=block remoteip=40.80.145.27 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft17.com" dir=out action=block remoteip=40.80.145.78 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft16.com" dir=out action=block remoteip=23.99.116.116 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft15.com" dir=out action=block remoteip=77.67.29.176 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft14.com" dir=out action=block remoteip=65.55.223.0-65.55.223.255 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft13.com" dir=out action=block remoteip=65.39.117.230 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft12.com" dir=out action=block remoteip=64.4.23.0-64.4.23.255 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft11.com" dir=out action=block remoteip=23.223.20.82 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft10.com" dir=out action=block remoteip=213.199.179.0-213.199.179.255 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft09.com" dir=out action=block remoteip=2.22.61.66 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft08.com" dir=out action=block remoteip=195.138.255.0-195.138.255.255 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft07.com" dir=out action=block remoteip=157.55.56.0-157.55.56.255 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft06.com" dir=out action=block remoteip=157.55.52.0-157.55.52.255 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft05.com" dir=out action=block remoteip=157.55.236.0-157.55.236.255 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft04.com" dir=out action=block remoteip=157.55.235.0-157.55.235.255 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft03.com" dir=out action=block remoteip=157.55.130.0-157.55.130.255 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft02.com" dir=out action=block remoteip=111.221.64.0-111.221.127.255 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft01.com" dir=out action=block remoteip=11.221.29.253 enable=yes
NETSH advfirewall firewall add rule name="telemetry_microsoft.com" dir=out action=block remoteip=104.96.147.3 enable=yes
NETSH advfirewall firewall add rule name="telemetry_mediaroomsds.microsoft.com" dir=out action=block remoteip=134.170.185.70 enable=yes
NETSH advfirewall firewall add rule name="telemetry_media.blinkbox.com.c.footprint.net" dir=out action=block remoteip=206.33.58.254 enable=yes
NETSH advfirewall firewall add rule name="telemetry_m.adnxs.com" dir=out action=block remoteip=37.252.170.141 enable=yes
NETSH advfirewall firewall add rule name="telemetry_legacy.watson.data.microsoft.com.akadns.net" dir=out action=block remoteip=65.55.252.71 enable=yes
NETSH advfirewall firewall add rule name="telemetry_inside.microsoftmse.com" dir=out action=block remoteip=65.55.39.10 enable=yes
NETSH advfirewall firewall add rule name="telemetry_iact.atdmt.com" dir=out action=block remoteip=94.245.121.178 enable=yes
NETSH advfirewall firewall add rule name="telemetry_i4.services.social.microsoft.com" dir=out action=block remoteip=104.79.134.225 enable=yes
NETSH advfirewall firewall add rule name="telemetry_i1.services.social.microsoft.com" dir=out action=block remoteip=23.74.190.252,104.82.22.249 enable=yes
NETSH advfirewall firewall add rule name="telemetry_hp-comm.ca.msn.com" dir=out action=block remoteip=40.127.139.224 enable=yes
NETSH advfirewall firewall add rule name="telemetry_helloaddress.com" dir=out action=block remoteip=2.21.246.10 enable=yes
NETSH advfirewall firewall add rule name="telemetry_globalns2.appnexus.net" dir=out action=block remoteip=8.19.31.11 enable=yes
NETSH advfirewall firewall add rule name="telemetry_geo-prod.dodsp.mp.microsoft.com.nsatc.net" dir=out action=block remoteip=191.232.139.212 enable=yes
NETSH advfirewall firewall add rule name="telemetry_geo-prod.do.dsp.mp.microsoft.com" dir=out action=block remoteip=40.77.226.217-40.77.226.224 enable=yes
NETSH advfirewall firewall add rule name="telemetry_geo.settings.data.microsoft.com.akadns.net" dir=out action=block remoteip=64.4.0.0-64.4.63.255 enable=yes
NETSH advfirewall firewall add rule name="telemetry_float.2655.bm-impbus.prod.ams1.adnexus.net" dir=out action=block remoteip=37.252.163.215 enable=yes
NETSH advfirewall firewall add rule name="telemetry_float.2113.bm-impbus.prod.ams1.adnexus.net" dir=out action=block remoteip=37.252.163.3 enable=yes
NETSH advfirewall firewall add rule name="telemetry_float.1334.bm-impbus.prod.fra1.adnexus.net" dir=out action=block remoteip=37.252.170.82 enable=yes
NETSH advfirewall firewall add rule name="telemetry_float.1332.bm-impbus.prod.fra1.adnexus.net" dir=out action=block remoteip=37.252.170.81 enable=yes
NETSH advfirewall firewall add rule name="telemetry_float.1143.bm-impbus.prod.fra1.adnexus.net" dir=out action=block remoteip=37.252.170.1 enable=yes
NETSH advfirewall firewall add rule name="telemetry_flex.msn.com" dir=out action=block remoteip=207.46.194.8 enable=yes
NETSH advfirewall firewall add rule name="telemetry_fesweb1.ch1d.binginternal.com" dir=out action=block remoteip=131.253.14.76 enable=yes
NETSH advfirewall firewall add rule name="telemetry_fe3.delivery.dsp.mp.microsoft.com.nsatc.net" dir=out action=block remoteip=64.4.54.18 enable=yes
NETSH advfirewall firewall add rule name="telemetry_fd-rad-msn-com.a-0004.a-msedge.net" dir=out action=block remoteip=204.79.197.206 enable=yes
NETSH advfirewall firewall add rule name="telemetry_fashiontamils.com" dir=out action=block remoteip=69.64.34.185 enable=yes
NETSH advfirewall firewall add rule name="telemetry_exch-eu.atdmt.com.nsatc.net" dir=out action=block remoteip=94.245.121.179,94.245.121.176 enable=yes
NETSH advfirewall firewall add rule name="telemetry_evoke-windowsservices-tas.msedge.net" dir=out action=block remoteip=13.107.5.88 enable=yes
NETSH advfirewall firewall add rule name="telemetry_eu.vortex-win.data.microsoft.com" dir=out action=block remoteip=191.232.139.254 enable=yes
NETSH advfirewall firewall add rule name="telemetry_es-1.ns.nsatc.net" dir=out action=block remoteip=8.254.34.155 enable=yes
NETSH advfirewall firewall add rule name="telemetry_edge-atlas-shv-01-cdg2.facebook.com" dir=out action=block remoteip=179.60.192.10 enable=yes
NETSH advfirewall firewall add rule name="telemetry_e8218.ce.akamaiedge.net" dir=out action=block remoteip=23.57.107.27 enable=yes
NETSH advfirewall firewall add rule name="telemetry_e6845.ce.akamaiedge.net" dir=out action=block remoteip=23.57.101.163 enable=yes
NETSH advfirewall firewall add rule name="telemetry_dub109-afx.ms.a-0009.a-msedge.net" dir=out action=block remoteip=204.79.197.211 enable=yes
NETSH advfirewall firewall add rule name="telemetry_dps.msn.com" dir=out action=block remoteip=131.253.14.121 enable=yes
NETSH advfirewall firewall add rule name="telemetry_dmd.metaservices.microsoft.com.akadns.net" dir=out action=block remoteip=52.160.91.170 enable=yes
NETSH advfirewall firewall add rule name="telemetry_dmd.metaservices.microsoft.com.akadns.net" dir=out action=block remoteip=40.112.210.171 enable=yes
NETSH advfirewall firewall add rule name="telemetry_dmd.metaservices.microsoft.com" dir=out action=block remoteip=40.87.63.92,40.80.145.78,40.80.145.38,40.80.145.27,40.112.213.22 enable=yes
NETSH advfirewall firewall add rule name="telemetry_diagnostics.support.microsoft.com" dir=out action=block remoteip=134.170.52.151 enable=yes
NETSH advfirewall firewall add rule name="telemetry_diagnostics.support.microsoft.akadns.net" dir=out action=block remoteip=157.56.121.89 enable=yes
NETSH advfirewall firewall add rule name="telemetry_df.telemetry.microsoft.com" dir=out action=block remoteip=65.52.100.7 enable=yes
NETSH advfirewall firewall add rule name="telemetry_descargas.diximedia.es.c.footprint.net" dir=out action=block remoteip=185.13.160.61 enable=yes
NETSH advfirewall firewall add rule name="telemetry_deploy.static.akamaitechnologies.com" dir=out action=block remoteip=23.218.212.69 enable=yes
NETSH advfirewall firewall add rule name="telemetry_deploy.akamaitechnologies.com" dir=out action=block remoteip=95.100.38.95 enable=yes
NETSH advfirewall firewall add rule name="telemetry_db5.wns.notify.windows.com.akadns.net" dir=out action=block remoteip=40.77.226.246,40.77.226.247 enable=yes
NETSH advfirewall firewall add rule name="telemetry_db5.vortex.data.microsoft.com.akadns.net" dir=out action=block remoteip=40.77.226.250 enable=yes
NETSH advfirewall firewall add rule name="telemetry_db5.settings.data.microsoft.com.akadns.net" dir=out action=block remoteip=40.77.226.249,191.232.139.253 enable=yes
NETSH advfirewall firewall add rule name="telemetry_db5.displaycatalog.md.mp.microsoft.com.akadns.net" dir=out action=block remoteip=40.77.229.125 enable=yes
NETSH advfirewall firewall add rule name="telemetry_db3wns2011111.wns.windows.com" dir=out action=block remoteip=157.56.124.87 enable=yes
NETSH advfirewall firewall add rule name="telemetry_dart.l.doubleclick.net" dir=out action=block remoteip=173.194.113.219,173.194.113.220,173.194.113.219,216.58.209.166,172.217.20.134 enable=yes
NETSH advfirewall firewall add rule name="telemetry_cy2.settings.data.microsoft.com.akadns.net" dir=out action=block remoteip=64.4.54.253,13.78.188.147 enable=yes
NETSH advfirewall firewall add rule name="telemetry_cs697.wac.thetacdn.net" dir=out action=block remoteip=192.229.233.249 enable=yes
NETSH advfirewall firewall add rule name="telemetry_cs479.wac.edgecastcdn.net" dir=out action=block remoteip=68.232.35.139 enable=yes
NETSH advfirewall firewall add rule name="telemetry_corpext.msitadfs.glbdns2.microsoft.com" dir=out action=block remoteip=131.107.113.238 enable=yes
NETSH advfirewall firewall add rule name="telemetry_compatexchange.cloudapp.net" dir=out action=block remoteip=23.99.10.11 enable=yes
NETSH advfirewall firewall add rule name="telemetry_colonialtoolset.com" dir=out action=block remoteip=208.84.0.53 enable=yes
NETSH advfirewall firewall add rule name="telemetry_col130-afx.ms.a-0008.a-msedge.net" dir=out action=block remoteip=204.79.197.210 enable=yes
NETSH advfirewall firewall add rule name="telemetry_co4.telecommand.telemetry.microsoft.com.akadns.net" dir=out action=block remoteip=65.55.252.190 enable=yes
NETSH advfirewall firewall add rule name="telemetry_cn.msn.fr" dir=out action=block remoteip=23.102.21.4 enable=yes
NETSH advfirewall firewall add rule name="telemetry_choice.microsoft.com.nsatc.net" dir=out action=block remoteip=65.55.128.81,157.56.91.77 enable=yes
NETSH advfirewall firewall add rule name="telemetry_chinamobileltd.com" dir=out action=block remoteip=211.137.82.38 enable=yes
NETSH advfirewall firewall add rule name="telemetry_cdn.energetichabits.com" dir=out action=block remoteip=93.184.220.20 enable=yes
NETSH advfirewall firewall add rule name="telemetry_cdn.deezer.com.c.footprint.net" dir=out action=block remoteip=8.254.209.254 enable=yes
NETSH advfirewall firewall add rule name="telemetry_cannon-construction.co.uk" dir=out action=block remoteip=93.184.220.29 enable=yes
NETSH advfirewall firewall add rule name="telemetry_candycrushsoda.king.com" dir=out action=block remoteip=185.48.81.162 enable=yes
NETSH advfirewall firewall add rule name="telemetry_c.nine.com.au" dir=out action=block remoteip=207.46.194.10 enable=yes
NETSH advfirewall firewall add rule name="telemetry_c.microsoft.akadns.net" dir=out action=block remoteip=134.170.188.139 enable=yes
NETSH advfirewall firewall add rule name="telemetry_bsnl.eyeblaster.akadns.net" dir=out action=block remoteip=82.199.80.141 enable=yes
NETSH advfirewall firewall add rule name="telemetry_bots.teams.skype.com" dir=out action=block remoteip=13.107.3.128 enable=yes
NETSH advfirewall firewall add rule name="telemetry_bn2.vortex.data.microsoft.com.akadns.net" dir=out action=block remoteip=65.55.44.109 enable=yes
NETSH advfirewall firewall add rule name="telemetry_blu173-mail-live-com.a-0006.a-msedge.net" dir=out action=block remoteip=204.79.197.208 enable=yes
NETSH advfirewall firewall add rule name="telemetry_beta.t.urs.microsoft.com" dir=out action=block remoteip=157.56.74.250 enable=yes
NETSH advfirewall firewall add rule name="telemetry_bay175-mail-live-com.a-0007.a-msedge.net" dir=out action=block remoteip=204.79.197.209 enable=yes
NETSH advfirewall firewall add rule name="telemetry_b.ns.nsatc.net" dir=out action=block remoteip=198.78.208.155 enable=yes
NETSH advfirewall firewall add rule name="telemetry_auth.nym2.appnexus.net" dir=out action=block remoteip=68.67.155.138 enable=yes
NETSH advfirewall firewall add rule name="telemetry_auth.lax1.appnexus.net" dir=out action=block remoteip=68.67.133.169 enable=yes
NETSH advfirewall firewall add rule name="telemetry_auth.ams1.appnexus.net" dir=out action=block remoteip=37.252.164.5 enable=yes
NETSH advfirewall firewall add rule name="telemetry_assets2.parliament.uk.c.footprint.net" dir=out action=block remoteip=192.221.106.126 enable=yes
NETSH advfirewall firewall add rule name="telemetry_assets.dishonline.com.c.footprint.net" dir=out action=block remoteip=207.123.56.252 enable=yes
NETSH advfirewall firewall add rule name="telemetry_asimov-sandbox.vortex.data.microsoft.com.akadns.net" dir=out action=block remoteip=64.4.54.32 enable=yes
NETSH advfirewall firewall add rule name="telemetry_array204-prod.dodsp.mp.microsoft.com.nsatc.net" dir=out action=block remoteip=65.52.0.0-65.52.255.255 enable=yes
NETSH advfirewall firewall add rule name="telemetry_apnic.net" dir=out action=block remoteip=221.232.247.2,222.216.3.213 enable=yes
NETSH advfirewall firewall add rule name="telemetry_a-msedge.net" dir=out action=block remoteip=204.79.197.204 enable=yes
NETSH advfirewall firewall add rule name="telemetry_ams1-ib.adnxs.com" dir=out action=block remoteip=37.252.163.207,37.252.162.228,37.252.162.216 enable=yes
NETSH advfirewall firewall add rule name="telemetry_ampudc.udc0.glbdns2.microsoft.com" dir=out action=block remoteip=137.116.81.24 enable=yes
NETSH advfirewall firewall add rule name="telemetry_akadns.info" dir=out action=block remoteip=157.56.96.54 enable=yes
NETSH advfirewall firewall add rule name="telemetry_ads.msn.com" dir=out action=block remoteip=157.56.91.82,157.56.23.91,104.82.14.146,207.123.56.252,185.13.160.61,8.254.209.254,65.55.128.80,8.12.207.125 enable=yes
NETSH advfirewall firewall add rule name="telemetry_adnxs.com" dir=out action=block remoteip=37.252.170.80,37.252.170.142,37.252.170.140,37.252.169.43 enable=yes
NETSH advfirewall firewall add rule name="telemetry_ad.doubleclick.net" dir=out action=block remoteip=172.217.20.230 enable=yes
NETSH advfirewall firewall add rule name="telemetry_acyfdr.explicit.bing.net" dir=out action=block remoteip=204.79.197.201 enable=yes
NETSH advfirewall firewall add rule name="telemetry_a.msft.net" dir=out action=block remoteip=208.76.45.53 enable=yes


NETSH advfirewall firewall add rule name="Block_TCP-69" dir=in action=block protocol=tcp localport=69 enable=yes
NETSH advfirewall firewall add rule name="Block_TCP-135" dir=in action=block protocol=tcp localport=135 enable=yes
NETSH advfirewall firewall add rule name="Block_TCP-137" dir=in action=block protocol=tcp localport=137 enable=yes
NETSH advfirewall firewall add rule name="Block_TCP-138" dir=in action=block protocol=tcp localport=138 enable=yes
NETSH advfirewall firewall add rule name="Block_TCP-139" dir=in action=block protocol=tcp localport=139 enable=yes
NETSH advfirewall firewall add rule name="Block_TCP-445" dir=in action=block protocol=tcp localport=445 enable=yes
NETSH advfirewall firewall add rule name="Block_TCP-1025" dir=in action=block protocol=tcp localport=1025 enable=yes
NETSH advfirewall firewall add rule name="Block_TCP-4444" dir=in action=block protocol=tcp localport=4444 enable=yes
NETSH advfirewall firewall add rule name="Block_TCP-5000" dir=in action=block protocol=tcp localport=5000 enable=yes
GOTO REG

echo MSGBOX "operation successful" > %temp%\TEMPmessage.vbs
call %temp%\TEMPmessage.vbs
del %temp%\TEMPmessage.vbs /f /q

:RESTART
shutdown -r -s -t 1

:TASK4
title av
type %USERPROFILE%\Downloads\nahfam.txt
echo.
CD C:\ProgramData\Microsoft\Windows Defender\Platform\4.18*
MpCmdRun -Scan -ScanType 2
pause

:TASK5
title advanced tweaks
type %USERPROFILE%\Downloads\nahfam.txt
echo.
echo WARNING!!!! some tweaks may break arm or 32 bit cpus do you wish to cobtinue (y/n)?
SET /P M=Type y or n then press enter
IF %M%==y GOTO gay
IF %M%==y GOTO gay1
:gay1 
exit
:gay
Select your tool
echo 1= ram tweaks
echo 2= bcedit reset
echo 3= advanced debloat
echo 4= Disable windows defender
SET /P M=Type 1 ,2 ,3 or 4 then press enter
IF %M%==y GOTO TASK10
IF %M%==y GOTO TASK11
IF %M%==y GOTO TASK12
IF %M%==y GOTO TASK13

:TASK10
set WHITELIST=ACPI AcpiDev AcpiPmi AFD AMDPCIDev amdgpio2 amdgpio3 AmdPPM amdpsp amdsata amdsbs amdxata asmtxhci atikmdag BasicDisplay BasicRender dc1-controll Disk DXGKrnl e1iexpress e1rexpress genericusbfn hwpolicy IntcAzAudAdd kbdclass kbdhid MMCSS monitor mouclass mouhid mountmgr mt7612US MTConfig NDIS nvdimm nvlddmkm pci PktMon Psched rt640x64 RTCore64 RzCommon RzDev_0244 Tcpip usbehci usbhub USBHUB3 USBXHCI Wdf01000 xboxgip xinputhid
for /f %%i in ('driverquery ^| findstr "!WHITELIST!"') do set "DRIVERLIST=!DRIVERLIST!%%i\0"
reg add "HKLM\SYSTEM\currentcontrolset\control\session manager\Memory Management" /v "LargePageDrivers" /t REG_MULTI_SZ /d "!DRIVERLIST!" /f >nul 2>&1
:TASK11

bcdedit /deletevalue allowedinmemorysettings >nul 2>&1
bcdedit /deletevalue avoidlowmemory >nul 2>&1
bcdedit /deletevalue bootems >nul 2>&1
bcdedit /deletevalue bootlog  >nul 2>&1
bcdedit /deletevalue bootmenupolicy >nul 2>&1
bcdedit /deletevalue bootux >nul 2>&1
bcdedit /deletevalue configaccesspolicy >nul 2>&1
bcdedit /deletevalue configflags >nul 2>&1
bcdedit /deletevalue debug >nul 2>&1
bcdedit /deletevalue disabledynamictick  >nul 2>&1
bcdedit /deletevalue disableelamdrivers  >nul 2>&1
bcdedit /deletevalue ems >nul 2>&1
bcdedit /deletevalue extendedinput  >nul 2>&1
bcdedit /deletevalue firstmegabytepolicy >nul 2>&1
bcdedit /deletevalue forcefipscrypto >nul 2>&1
bcdedit /deletevalue forcelegacyplatform >nul 2>&1
bcdedit /deletevalue graphicsmodedisabled >nul 2>&1
bcdedit /deletevalue halbreakpoint >nul 2>&1
bcdedit /deletevalue highestmode  >nul 2>&1
bcdedit /deletevalue hypervisorlaunchtype >nul 2>&1
bcdedit /deletevalue increaseuserva >nul 2>&1
bcdedit /deletevalue integrityservices >nul 2>&1
bcdedit /deletevalue isolatedcontext >nul 2>&1
bcdedit /deletevalue nointegritychecks >nul 2>&1
bcdedit /deletevalue nolowmem  >nul 2>&1
bcdedit /deletevalue noumex  >nul 2>&1
bcdedit /deletevalue nx >nul 2>&1
bcdedit /deletevalue onecpu >nul 2>&1
bcdedit /deletevalue pae >nul 2>&1
bcdedit /deletevalue perfmem >nul 2>&1
bcdedit /deletevalue quietboot  >nul 2>&1
bcdedit /deletevalue sos  >nul 2>&1
bcdedit /deletevalue testsigning >nul 2>&1
bcdedit /deletevalue tpmbootentropy >nul 2>&1
bcdedit /deletevalue tscsyncpolicy >nul 2>&1
bcdedit /deletevalue usefirmwarepcisettings >nul 2>&1
bcdedit /deletevalue usephysicaldestination >nul 2>&1
bcdedit /deletevalue useplatformclock >nul 2>&1
bcdedit /deletevalue useplatformtick  >nul 2>&1
bcdedit /deletevalue vm >nul 2>&1
bcdedit /deletevalue vsmlaunchtype >nul 2>&1
shutdown /r /f /t 5

:TASK12
@powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0..\Core.ps1" -include "%~dp0..\Functions.psm1" -include "%~dp0..\Functions_Upgrade.psm1" -log "%~dpn0.log" UninstallWorstThirdPartyBloat WaitForY Restart
Reg.exe add HKLM /F >nul 2>&1
if %errorlevel% neq 0 start "" /wait /I /min powershell -NoProfile -Command start -verb runas "'%~s0'" && exit /b
reg add "HKCU\Control Panel\Desktop" /v "JPEGImportQuality" /t "REG_DWORD" /d "100" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d "3" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\AnimateMinMax" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ComboBoxAnimation" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ControlAnimations" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\CursorShadow" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DragFullWindows" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DropShadow" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DWMAeroPeekEnabled" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DWMEnabled" /v "DefaultApplied" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DWMSaveThumbnailEnabled" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\FontSmoothing" /v "DefaultApplied" /t REG_SZ /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListBoxSmoothScrolling" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListviewAlphaSelect" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListviewShadow" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\MenuAnimation" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\SelectionFade" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\TaskbarAnimations" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ThumbnailsOrIcon" /v "DefaultApplied" /t REG_SZ /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\TooltipAnimation" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "SearchboxTaskbarMode" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCloudSearch" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "DisableWebSearch" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortanaAboveLock" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\TermServicentVersion\Search" /v "AllowCortana" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /v "value" /t REG_SZ /d "00000000" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AarSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AJRouter" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ALG" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AppIDSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Appinfo" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AppMgmt" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AppReadiness" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AppVClient" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AppXSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AssignedAccessManagerSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AudioEndpointBuilder" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Audiosrv" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\autotimesvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AxInstSV" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BcastDVRUserService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BFE" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BITS" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BluetoothUserService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BrokerInfrastructure" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BTAGService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BthAvctpSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\bthserv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\camsvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CaptureService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\cbdhsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CDPSvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CDPUserSvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CertPropSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ClipSVC" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\COMSysApp" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ConsentUxUserSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CoreMessagingRegistrar" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CredentialEnrollmentManagerUserSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CryptSvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CscService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DcomLaunch" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\defragsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DeviceAssociationBrokerSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DeviceAssociationService" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DeviceInstall" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DevicePickerUserSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DevicesFlowUserSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DevQueryBroker" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dhcp" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\diagnosticshub.standardcollector.service" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\diagsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DispBrokerDesktopSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DisplayEnhancementService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DmEnrollmentSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\dmwappushservice" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DoSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\dot3svc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DPS" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DsmSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DsSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DusmSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Eaphost" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\EFS" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\embeddedmode" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\EntAppSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\EventLog" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\EventSystem" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\fdPHost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\FDResPub" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\fhsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\FontCache" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\FontCache3.0.0.0" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\FrameServer" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\gpsvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GraphicsPerfSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\hidserv" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\HvHost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\icssvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\IKEEXT" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\InstallService" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iphlpsvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\IpxlatCfgSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\KeyIso" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\KtmRm" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\lfsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LicenseManager" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\lltdsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\lmhosts" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LSM" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LxpSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MapsBroker" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MessagingService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mpssvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MSDTC" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MSiSCSI" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\msiserver" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NaturalAuthentication" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NcaSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NcbService" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NcdAutoSetup" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Netlogon" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Netman" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\netprofm" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NetSetupSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NetTcpPortSharing" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NgcCtnrSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NgcSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nsi" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\p2pimsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\p2psvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PcaSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PeerDistSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PerfHost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PhoneSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PimIndexMaintenanceSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\pla" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PlugPlay" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PNRPAutoReg" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PNRPsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PolicyAgent" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Power" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PrintWorkflowUserSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ProfSvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PushToInstall" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\QWAVE" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RasAuto" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RasMan" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RemoteAccess" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RmSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RpcEptMapper" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RpcSs" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SamSs" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SCardSvr" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ScDeviceEnum" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Schedule" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SCPolicySvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SDRSVC" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\seclogon" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SEMgrSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SENS" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SensorDataService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SensorService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SensrSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SessionEnv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SgrmBroker" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ShellHWDetection" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\shpamsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\smphost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SmsRouter" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SNMPTRAP" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Spooler" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\sppsvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SSDPSRV" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ssh-agent" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SstpSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\StateRepository" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\stisvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\StorSvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\swprv" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SystemEventsBroker" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TapiSrv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Themes" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TieringEngineService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TimeBrokerSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TokenBroker" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TrkWks" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TroubleshootingSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TrustedInstaller" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\tzautoupdate" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UdkUserSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UevAgentService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UnistoreSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\upnphost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UserDataSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UserManager" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UsoSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\VaultSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\vds" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\VSS" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\W32Time" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WaaSMedicSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WalletService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WarpJITSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wbengine" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WbioSrvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Wcmsvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wcncsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WdiServiceHost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WdiSystemHost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WebClient" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Wecsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WEPHOSTSVC" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wercplsupport" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WerSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WFDSConMgrSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WiaRpc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WinHttpAutoProxySvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Winmgmt" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WinRM" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WlanSvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wlidsvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wlpasvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WManSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wmiApSrv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WpcMonSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WPDBusEnum" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WSearch" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wuauserv" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WwanSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" /v "CursorUpdateInterval" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "TimeStampInterval" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "CompositionPolicy" /t REG_DWORD /d "0" /f
takeown /f "%WinDir%\System32\mcupdate_genuineintel.dll" /r /d y
takeown /f "%WinDir%\System32\mcupdate_authenticamd.dll" /r /d y
icacls "%WinDir%\System32\mcupdate_genuineintel.dll" /grant:r Administrators:F /c
icacls "%WinDir%\System32\mcupdate_authenticamd.dll" /grant:r Administrators:F /c
del "%WinDir%\System32\mcupdate_genuineintel.dll" /s /f /q
del "%WinDir%\System32\mcupdate_authenticamd.dll" /s /f /q
icacls "%localappdata%\Google\Chrome\User Data\SwReporter" /inheritance:r /deny "*S-1-1-0:(OI)(CI)(F)" "*S-1-5-7:(OI)(CI)(F)"
cacls "%localappdata%\Google\Chrome\User Data\SwReporter" /e /c /d %username%
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "DisallowRun" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "1" /t REG_SZ /d "software_reporter_tool.exe" /
del /s /f /q %temp%\*.*
del /s /f /q %WinDir%\temp\*.*
echo MSGBOX "operation successful" > %temp%\TEMPmessage.vbs
call %temp%\TEMPmessage.vbs
del %temp%\TEMPmessage.vbs /f /q
shutdown /r -t 2

:TASK13
reg delete "HKLM\Software\Policies\Microsoft\Windows Defender" /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender" /v "DisableAntiVirus" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\MpEngine" /v "MpEnablePus" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableBehaviorMonitoring" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableIOAVProtection" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableOnAccessProtection" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableRealtimeMonitoring" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableRoutinelyTakingAction" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableScanOnRealtimeEnable" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Reporting" /v "DisableEnhancedNotifications" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\SpyNet" /v "DisableBlockAtFirstSeen" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\SpyNet" /v "SpynetReporting" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\SpyNet" /v "SubmitSamplesConsent" /t REG_DWORD /d "1" /f
reg add "HKLM\System\CurrentControlSet\Services\WdFilter" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\System\CurrentControlSet\Services\WdNisDrv" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\System\CurrentControlSet\Services\WdNisSvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\System\CurrentControlSet\Services\WinDefend" /v "Start" /t REG_DWORD /d "2" /f

:TASK6
title pc go brrrrrrrr
type %USERPROFILE%\Downloads\nahfam.txt
echo.

echo 1:powerplan
echo 2:network tweaks
echo 3:mc gamer pro 
echo 4:intel igpu tweaks
echo 5:debloat



SET /P M=Type 1, 2, 3 , 4 then press ENTER:
CLS

IF %M%==1 GOTO TASK1
IF %M%==2 GOTO TASK2
IF %M%==2 GOTO TASK3
IF %M%==2 GOTO TASK4
IF %M%==2 GOTO TASk5

:TASK1
powercfg /duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 !POWER_GUID! >nul 2>&1
powercfg /changename !POWER_GUID! "Post tweaks" "Promotes high performance at the expense of power consumption." >nul 2>&1
powercfg /setactive !POWER_GUID! >nul 2>&1
powercfg /hibernate off >nul 2>&1
powercfg /setacvalueindex !POWER_GUID! 238c9fa8-0aad-41ed-83f4-97be242c8f20 94ac6d29-73ce-41a6-809f-6363ba21b47e 0 >nul 2>&1
powercfg /setacvalueindex !POWER_GUID! 238c9fa8-0aad-41ed-83f4-97be242c8f20 bd3b718a-0680-4d9d-8ab2-e1d2b4ac806d 0 >nul 2>&1
powercfg /setacvalueindex !POWER_GUID! 238c9fa8-0aad-41ed-83f4-97be242c8f20 7bc4a2f9-d8fc-4469-b07b-33eb785aaca0 0 >nul 2>&1
powercfg /setacvalueindex !POWER_GUID! 238c9fa8-0aad-41ed-83f4-97be242c8f20 abfc2519-3608-4c2a-94ea-171b0ed546ab 0 >nul 2>&1
powercfg /setacvalueindex !POWER_GUID! 2a737441-1930-4402-8d77-b2bebba308a3 48e6b7a6-50f5-4782-a5d4-53bb8f07e226 0 >nul 2>&1
powercfg /setacvalueindex !POWER_GUID! 2a737441-1930-4402-8d77-b2bebba308a3 d4e98f31-5ffe-4ce1-be31-1b38b384c009 0 >nul 2>&1
powercfg /setacvalueindex !POWER_GUID! 2e601130-5351-4d9d-8e04-252966bad054 d502f7ee-1dc7-4efd-a55d-f04b6f5c0545 0 >nul 2>&1
powercfg /setacvalueindex !POWER_GUID! 54533251-82be-4824-96c1-47b60b740d00 06cadf0e-64ed-448a-8927-ce7bf90eb35d 10 >nul 2>&1
powercfg /setacvalueindex !POWER_GUID! 54533251-82be-4824-96c1-47b60b740d00 3b04d4fd-1cc7-4f23-ab1c-d1337819c4bb 0 >nul 2>&1
powercfg /setacvalueindex !POWER_GUID! 54533251-82be-4824-96c1-47b60b740d00 4b92d758-5a24-4851-a470-815d78aee119 100 >nul 2>&1
powercfg /setacvalueindex !POWER_GUID! 54533251-82be-4824-96c1-47b60b740d00 619b7505-003b-4e82-b7a6-4dd29c300971 100 >nul 2>&1
powercfg /setacvalueindex !POWER_GUID! 54533251-82be-4824-96c1-47b60b740d00 7b224883-b3cc-4d79-819f-8374152cbe7c 100 >nul 2>&1
powercfg /setacvalueindex !POWER_GUID! 54533251-82be-4824-96c1-47b60b740d00 c7be0679-2817-4d69-9d02-519a537ed0c6 2 >nul 2>&1
powercfg /setacvalueindex !POWER_GUID! 54533251-82be-4824-96c1-47b60b740d00 12a0ab44-fe28-4fa9-b3bd-4b64f44960a6 5 >nul 2>&1
powercfg /setacvalueindex !POWER_GUID! 54533251-82be-4824-96c1-47b60b740d00 12a0ab44-fe28-4fa9-b3bd-4b64f44960a7 10 >nul 2>&1
powercfg /setacvalueindex !POWER_GUID! 7516b95f-f776-4464-8c53-06167f40cc99 17aaa29b-8b43-4b94-aafe-35f64daaf1ee 0 >nul 2>&1
powercfg /setacvalueindex !POWER_GUID! 7516b95f-f776-4464-8c53-06167f40cc99 3c0bc021-c8a8-4e07-a973-6b14cbcb2b7e 0 >nul 2>&1
powercfg /setacvalueindex !POWER_GUID! e73a048d-bf27-4f12-9731-8b2076e8891f 637ea02f-bbcb-4015-8e2c-a1c7b9c0b546 1 >nul 2>&1
powercfg /setdcvalueindex !POWER_GUID! fea3413e-7e05-4911-9a71-700331f1c294 68afb2d9-ee95-47a8-8f50-4115088073b1 1 >nul 2>&1
powercfg /setdcvalueindex !POWER_GUID! 0012ee47-9041-4b5d-9b77-535fba8b1442 6738e2c4-e8a5-4a42-b16a-e040e769756e 300 >nul 2>&1
powercfg /setdcvalueindex !POWER_GUID! 0012ee47-9041-4b5d-9b77-535fba8b1442 fc95af4d-40e7-4b6d-835a-56d131dbc80e 200 >nul 2>&1
powercfg /setdcvalueindex !POWER_GUID! 54533251-82be-4824-96c1-47b60b740d00 6c2993b0-8f48-481f-bcc6-00dd2742aa06 1 >nul 2>&1
powercfg /setdcvalueindex !POWER_GUID! 54533251-82be-4824-96c1-47b60b740d00 bc5038f7-23e0-4960-96da-33abaf5935ed 75 >nul 2>&1
powercfg /setdcvalueindex !POWER_GUID! 5fb4938d-1ee8-4b0f-9a3c-5036b0ab995c dd848b2a-8a5d-4451-9ae2-39cd41658f6c 1 >nul 2>&1
powercfg /setdcvalueindex !POWER_GUID! 9596fb26-9850-41fd-ac3e-f7c3c00afd4b 34c7b99f-9a6d-4b3c-8dc7-b6693b78cef4 2 >nul 2>&1
powercfg /setdcvalueindex !POWER_GUID! e73a048d-bf27-4f12-9731-8b2076e8891f 637ea02f-bbcb-4015-8e2c-a1c7b9c0b546 1 >nul 2>&1
powercfg /setactive scheme_current >nul 2>&1

if "!POWER_SAVING!"=="OFF" (
    call:ECHOX Disabling power throttling
    reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "1" /f >nul 2>&1

    call:ECHOX Disabling hibernation
    reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f >nul 2>&1

    call:ECHOX Disabling timer coalescing
    reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f >nul 2>&1

    if "!HT_SMT!"=="OFF" (
        call:MSGBOX "Would you like to disable CPU idle state ?\n\nDisabling the CPU idle state reduces latency but increases the CPU temperature." vbYesNo+vbQuestion "Power settings"
        if !ERRORLEVEL! equ 6 (
            call:ECHOX Disabling CPU idle state
            powercfg /setacvalueindex scheme_current sub_processor 5d76a2ca-e8c0-402f-a133-2158492d58ad 1 >nul 2>&1
            powercfg /setactive scheme_current >nul 2>&1
        )
    )
REM for /f %%i in ('wmic path Win32_IDEController get PNPDeviceID^| findstr /l "PCI\VEN_"') do reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f >nul 2>&1
for /f %%i in ('wmic path Win32_USBController get PNPDeviceID^| findstr /l "PCI\VEN_"') do reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f >nul 2>&1
for /f %%i in ('wmic path Win32_VideoController get PNPDeviceID^| findstr /l "PCI\VEN_"') do reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f >nul 2>&1
for /f %%i in ('wmic path Win32_NetworkAdapter get PNPDeviceID^| findstr /l "PCI\VEN_"') do reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f >nul 2>&1
echo MSGBOX "operation successful" > %temp%\TEMPmessage.vbs
call %temp%\TEMPmessage.vbs
del %temp%\TEMPmessage.vbs /f /q

:TASK2
  netsh int tcp set global ecncapability=disabled >nul 2>&1
    netsh int tcp set global dca=enabled >nul 2>&1
    netsh int tcp set global netdma=enabled >nul 2>&1
    netsh int tcp set global rsc=disabled >nul 2>&1
    netsh int tcp set global rss=enabled >nul 2>&1
    netsh int tcp set global timestamps=disabled >nul 2>&1
    netsh int tcp set global initialRto=2000 >nul 2>&1
    netsh int tcp set global nonsackrttresiliency=disabled >nul 2>&1
    netsh int tcp set global maxsynretransmissions=2 >nul 2>&1
    netsh int tcp set security mpp=disabled >nul 2>&1
    netsh int tcp set security profiles=disabled >nul 2>&1    
netsh advfirewall set allprofiles state off >nul 2>&1
netsh advfirewall firewall delete rule all
netsh advfirewall set allprofiles firewallpolicy blockinbound,blockoutbound >nul 2>&1
netsh advfirewall reset >nul 2>&1
netsh advfirewall set allprofiles state on >nul 2>&1
for /f "tokens=3,*" %%i in ('netsh int show interface^|find "Connected"') do (
	netsh int set interface name="%%j" admin="disabled" >nul 2>&1
	netsh int set interface name="%%j" admin="enabled" >nul 2>&1
)


:TASK3
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "3" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f >nul 2>&1
reg add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_DWORD /d "0" /f 1>NUL 2>NUL
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_DWORD /d "0" /f 1>NUL 2>NUL
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_DWORD /d "0" /f 1>NUL 2>NUL
echo MSGBOX "operation successful" > %temp%\TEMPmessage.vbs
call %temp%\TEMPmessage.vbs
del %temp%\TEMPmessage.vbs /f /q

:TASK4
  for /f %%i in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}" /s /v "DriverDesc"^| findstr "HKEY Intel"') do if /i "%%i" neq "DriverDesc" (set "REGPATH_INTEL=%%i") else (
        if "!POWER_SAVING!"=="OFF" reg add "!REGPATH_INTEL!" /v "AllowDeepCStates" /t REG_DWORD /d "0" /f
        reg add "!REGPATH_INTEL!" /v "Disable_OverlayDSQualityEnhancement" /t REG_DWORD /d "1" /f
        reg add "!REGPATH_INTEL!" /v "IncreaseFixedSegment" /t REG_DWORD /d "1" /f
        reg add "!REGPATH_INTEL!" /v "AdaptiveVsyncEnable" /t REG_DWORD /d "0" /f
        reg add "!REGPATH_INTEL!" /v "DisablePFonDP" /t REG_DWORD /d "1" /f
        reg add "!REGPATH_INTEL!" /v "EnableCompensationForDVI" /t REG_DWORD /d "1" /f
        reg add "!REGPATH_INTEL!" /v "NoFastLinkTrainingForeDP" /t REG_DWORD /d "0" /f
        reg add "!REGPATH_INTEL!" /v "ACPowerPolicyVersion" /t REG_DWORD /d "16898" /f
        reg add "!REGPATH_INTEL!" /v "DCPowerPolicyVersion" /t REG_DWORD /d "16642" /f
    ) >nul 2>&1
)
echo MSGBOX "operation successful" > %temp%\TEMPmessage.vbs
call %temp%\TEMPmessage.vbs
del %temp%\TEMPmessage.vbs /f /q

:TASK5
taskkill /F /IM "OneDrive.exe" 1>NUL 2>NUL
%SystemRoot%\SysWOW64\OneDriveSetup.exe /uninstall 1>NUL 2>NUL
rd "%UserProfile%\OneDrive" /Q /S 1>NUL 2>NUL
rd "%LocalAppData%\Microsoft\OneDrive" /Q /S 1>NUL 2>NUL
rd "%ProgramData%\Microsoft OneDrive" /Q /S 1>NUL 2>NUL
rd "C:\OneDriveTemp" /Q /S 1>NUL 2>NUL
powershell.exe "Get-AppxPackage *Microsoft.3DBuilder* | Remove-AppxPackage"
powershell.exe "Get-AppxPackage *Microsoft.Appconnector* | Remove-AppxPackage"
powershell.exe "Get-AppxPackage *Microsoft.BingFinance* | Remove-AppxPackage"
powershell.exe "Get-AppxPackage *Microsoft.BingNews* | Remove-AppxPackage"
powershell.exe "Get-AppxPackage *Microsoft.BingSports* | Remove-AppxPackage"
powershell.exe "Get-AppxPackage *Microsoft.BingTranslator* | Remove-AppxPackage"
powershell.exe "Get-AppxPackage *Microsoft.BingWeather* | Remove-AppxPackage"
powershell.exe "Get-AppxPackage *Microsoft.FreshPaint* | Remove-AppxPackage"
powershell.exe "Get-AppxPackage *Microsoft.DesktopAppInstaller* | Remove-AppxPackage"
powershell.exe "Get-AppxPackage *Microsoft.Getstarted* | Remove-AppxPackage"
powershell.exe "Get-AppxPackage *Microsoft.GetHelp* | Remove-AppxPackage"
powershell.exe "Get-AppxPackage *Microsoft.Messaging* | Remove-AppxPackage"
powershell.exe "Get-AppxPackage *Microsoft.Microsoft3DViewer* | Remove-AppxPackage"
powershell.exe "Get-AppxPackage *Microsoft.MicrosoftOfficeHub* | Remove-AppxPackage"
powershell.exe "Get-AppxPackage *Microsoft.MicrosoftPowerBIForWindows* | Remove-AppxPackage"
powershell.exe "Get-AppxPackage *Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage"
powershell.exe "Get-AppxPackage *Microsoft.MicrosoftStickyNotes* | Remove-AppxPackage"
powershell.exe "Get-AppxPackage *Microsoft.MinecraftUWP* | Remove-AppxPackage"
powershell.exe "Get-AppxPackage *Microsoft.NetworkSpeedTest* | Remove-AppxPackage"
powershell.exe "Get-AppxPackage *Microsoft.WindowsPhone* | Remove-AppxPackage"
powershell.exe "Get-AppxPackage *Microsoft.CommsPhone* | Remove-AppxPackage"
powershell.exe "Get-AppxPackage *Microsoft.ConnectivityStore* | Remove-AppxPackage"
powershell.exe "Get-AppxPackage *Microsoft.Office.Sway* | Remove-AppxPackage"
powershell.exe "Get-AppxPackage *Microsoft.BingFoodAndDrink* | Remove-AppxPackage"


