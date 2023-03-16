@echo off
title Preparing...
color 06
Mode 130,45
setlocal EnableDelayedExpansion
reg add HKLM /F >nul 2>&1
if %errorlevel% neq 0 start "" /wait /I /min powershell -NoProfile -Command start -verb runas "'%~s0'" && exit /b
reg query "HKCU\Software\duckclient" /v "Disclaimer" >nul 2>&1 
cls
echo Disclaimer:
echo Please note that we cannot guarantee an FPS boost from applying our optimizations, every system and configuration is different.
echo.
echo Everything is "use at your own risk", we are not liable for the damages done because of this software.
echo.
echo If you don't know what a tweak is, do not use it and contact our support team to receive more assistance.
echo.
echo Please enter "I agree" without quotes to continue:
echo.
echo.
echo.
set /p "input=%DEL%                                                           
if /i "!input!" neq "i agree" goto Disclaimer
reg add "HKCU\Software\duckclient" /v "Disclaimer" /f >nul 2>&1
cls


echo Before using our software, you must install a few features. Installing them now. 
dism /online /enable-feature /featurename:MicrosoftWindowsWMICore /NoRestart >nul 2>&1
dism /Online /Enable-Feature /FeatureName:NetFx3 /All /LimitAccess /Source:d:\sources\sxs
reg add "HKLM\System\CurrentControlSet\Control\CrashControl" /v "DisplayParameters" /t REG_DWORD /d "1" /f >nul 2>&1


REM Make Directories
mkdir %SYSTEMDRIVE%\duckclient >nul 2>&1
mkdir %SYSTEMDRIVE%\duckclient\Resources >nul 2>&1


:menu 
cls
title duckclient
echo --------------------------------------------------------------------------------------------------------------------------------------------------
type C:\Users\%username%\Downloads\duckboi.txt
echo --------------------------------------------------------------------------------------------------------------------------------------------------
echo Coded by prodbyduck#7777 and nartuairs#9341 (some code and UI enhancing) and wasd#0678 for the name.  
color 06
echo Welcome to Duckclient. A tweak Optimizer and may be script executor in the future. Type the number/letter asscoiated with the word to go to menus/tweaks.
echo ---------------------------------------------------------------------------------------------------------------------------------------------------------
powershell write-host -fore Yellow [1] Windows Optimizations
powershell write-host -fore Blue   [2] Intel IGPU Optimizations 
powershell write-host -fore Green  [3] NVIDA Optimizations
powershell write-host -fore Red    [4] AMD/rGPU Optimiz
powershell write-host -fore Yellow [5] TCP optimizer
powershell write-host -fore Yellow [6] Cosmetic tweaks
powershell write-host -fore Yellow [7] Cleaner
powershell write-host -fore Yellow [8] Useful tools 
echo ---------------------------------------------------------------------------------------------------------------------------------------------------------
:choice 
set /p c= Type Here: 
if /I "%c%" EQU "1" goto :1
if /I "%c%" EQU "2" goto :2
if /I "%c%" EQU "3" goto :3
if /I "%c%" EQU "4" goto :4
if /I "%c%" EQU "5" goto :5
if /I "%c%" EQU "6" goto :6
if /I "%c%" EQU "7" goto :7
if /I "%c%" EQU "8" goto :8

:1
cls
echo --------------------------------------------------------------------------------------------------------------------------------------------------
type C:\Users\%username%\Downloads\duckboi.txt
echo --------------------------------------------------------------------------------------------------------------------------------------------------
powershell write-host -fore yellow [1] Start up Optimizations 
powershell write-host -fore Yellow [2] Telemtry Removal
powershell write-host -fore Yellow [3] SSD Optimizations 
powershell write-host -fore Yellow [4] CPU optimizations
powershell write-host -fore Yellow [5] Edge browser uninstall
powershell write-host -fore Yellow [6] Ram Tweak
powershell write-host -fore Yellow [6] CSRR
powershell write-host -fore Yellow [7] Mouse tweaks
powershell write-host -fore Yellow [8] Apps and Services tweaks
powershell write-host -fore Yellow [9] Msi mode + GPU tweaks for all manufacturers
powershell write-host -fore Yellow [10] Go back to menu. 
echo ---------------------------------------------------------------------------------------------------------------------------------------------------
set /p c= Type Here: 
if /I "%c%" EQU "1" goto :Start up Optimizations 
if /I "%c%" EQU "2" goto :Telemtry Removal
if /I "%c%" EQU "3" goto :SSD Optimizations 
if /I "%c%" EQU "4" goto :cpu optimizations
if /I "%c%" EQU "5" goto :edge uninstall
if /I "%c%" EQU "6" goto :ram
if /I "%c%" EQU "7" goto :mouse tweaks
if /I "%c%" EQU "8" goto :app and services tweaks
if /I "%c%" EQU "8" goto :msi
if /I "%c%" EQU "10" goto :menu



:Start up Optimizations 
cls
REM Disable boot tracing
bcdedit /set {default} boottrace off

REM Enable display of the boot menu
bcdedit /set {default} displaybootmenu yes

REM Set the boot menu timeout to 5 seconds
bcdedit /timeout 5

REM Enable boot performance data
bcdedit /set {default} bootlog yes

REM Disable NTFS Last Access Time updates
fsutil behavior set disablelastaccess 1

:Telemtry Removal
cls
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
NETSH advfirewall firewall add rule name="Block_TCP-69" dir=in action=block protocol=tcp localport=69 enable=yes
NETSH advfirewall firewall add rule name="Block_TCP-135" dir=in action=block protocol=tcp localport=135 enable=yes
NETSH advfirewall firewall add rule name="Block_TCP-137" dir=in action=block protocol=tcp localport=137 enable=yes
NETSH advfirewall firewall add rule name="Block_TCP-138" dir=in action=block protocol=tcp localport=138 enable=yes
NETSH advfirewall firewall add rule name="Block_TCP-139" dir=in action=block protocol=tcp localport=139 enable=yes
NETSH advfirewall firewall add rule name="Block_TCP-445" dir=in action=block protocol=tcp localport=445 enable=yes
NETSH advfirewall firewall add rule name="Block_TCP-1025" dir=in action=block protocol=tcp localport=1025 enable=yes
NETSH advfirewall firewall add rule name="Block_TCP-4444" dir=in action=block protocol=tcp localport=4444 enable=yes
NETSH advfirewall firewall add rule name="Block_TCP-5000" dir=in action=block protocol=tcp localport=5000 enable=yes
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
powershell.exe "Get-AppxPackage *Microsoft.XboxGamingOverlay* | Remove-AppxPackage"
echo The Telemetry Removal Has finished. Would you like to go back to menu or exit? (menu/exit)
set /p c= Type Here: 
if /I "%c%" EQU "exit" goto :exit	
if /I "%c%" EQU "menu" goto :menu


:SSD Optimizations 
cls
REM Defragment the SSD
defrag %systemdrive% /v

REM Trim the SSD
fsutil behavior set DisableDeleteNotify 0
defrag %systemdrive% /v /L
fsutil behavior set DisableDeleteNotify 1

REM Turn off Superfetch and Prefetch
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnableSuperfetch /t REG_DWORD /d 0 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnablePrefetch /t REG_DWORD /d 0 /f
  fsutil behavior set disabledeletenotify 0 >nul 2>&1
    reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\memory management\prefetchparameters" /v "EnableBoottrace" /t REG_DWORD /d "0" /f >nul 2>&1
    reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\memory management\prefetchparameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f >nul 2>&1
    reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\memory management\prefetchparameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f >nul 2>&1
    reg add "HKLM\SOFTWARE\Microsoft\Dfrg\BootOptimizeFunction" /v "Enable" /t REG_SZ /d "N" /f >nul 2>&1
    reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OptimalLayout" /v "EnableAutoLayout" /t REG_DWORD /d "0" /f >nul 2>&1
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\SysMain" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\FontCache" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
    reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{71a27cdd-812a-11d0-bec7-08002be2092f}" /v "LowerFilters" /t REG_MULTI_SZ /d "" /f >nul 2>&1
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\rdyboost" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
echo The SSD Optimizations Has finished. Would you like to go back to menu or exit? (menu/exit)
set /p c= Type Here: 
if /I "%c%" EQU "exit" goto :exit	
if /I "%c%" EQU "menu" goto :menu

:cpu optimizations
cls
REM Set the power plan to "High Performance"
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

REM Disable CPU Throttling
REG ADD HKLM\System\CurrentControlSet\Control\Power\PowerSettings\5ca83367-6e45-459f-a27b-476b1d01c936 /v 7b224172-bddc-485a-be2f-b1cbf871cba5 /t REG_DWORD /d 0 /f
pause 
exit
:edge uninstall
cls
echo coming soon

:ram
cls
for /f %%i in ('wmic path Win32_USBController get PNPDeviceID^| findstr /l "PCI\VEN_"') do reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f >nul 2>&1
for /f %%i in ('wmic path Win32_VideoController get PNPDeviceID^| findstr /l "PCI\VEN_"') do reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f >nul 2>&1
for /f %%i in ('wmic path Win32_NetworkAdapter get PNPDeviceID^| findstr /l "PCI\VEN_"') do reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f >nul 2>&1
set WHITELIST=ACPI AcpiDev AcpiPmi AFD AMDPCIDev amdgpio2 amdgpio3 AmdPPM amdpsp amdsata amdsbs amdxata asmtxhci atikmdag BasicDisplay BasicRender dc1-controll Disk DXGKrnl e1iexpress e1rexpress genericusbfn hwpolicy IntcAzAudAdd kbdclass kbdhid MMCSS monitor mouclass mouhid mountmgr mt7612US MTConfig NDIS nvdimm nvlddmkm pci PktMon Psched rt640x64 RTCore64 RzCommon RzDev_0244 Tcpip usbehci usbhub USBHUB3 USBXHCI Wdf01000 xboxgip xinputhid
for /f %%i in ('driverquery ^| findstr "!WHITELIST!"') do set "DRIVERLIST=!DRIVERLIST!%%i\0"
reg add "HKLM\SYSTEM\currentcontrolset\control\session manager\Memory Management" /v "LargePageDrivers" /t REG_MULTI_SZ /d "!DRIVERLIST!" /f >nul 2>&1
pa[use
exit


:csrr
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "3" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f >nul 2>&1
reg add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_DWORD /d "0" /f 1>NUL 2>NUL
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_DWORD /d "0" /f 1>NUL 2>NUL
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_DWORD /d "0" /f 1>NUL 2>NUL
reg add "HKU\!USER_SID!\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "10" /f >nul 2>&1
reg add "HKU\!USER_SID!\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "0" /f >nul 2>&1
reg add "HKU\!USER_SID!\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "0" /f >nul 2>&1
reg add "HKU\!USER_SID!\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "0" /f >nul 2>&1


:app and services tweaks
reg add "HKU\!USER_SID!\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKU\!USER_SID!\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BackgroundAppGlobalToggle" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\bam" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\dam" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
 reg add "HKU\!USER_SID!\SOFTWARE\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d "0" /f >nul 2>&1
    reg add "HKU\!USER_SID!\SOFTWARE\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
    reg add "HKU\!USER_SID!\SOFTWARE\Microsoft\GameBar" /v "GamePanelStartupTipIndex" /t REG_DWORD /d "3" /f >nul 2>&1
    reg add "HKU\!USER_SID!\SOFTWARE\Microsoft\GameBar" /v "ShowStartupPanel" /t REG_DWORD /d "0" /f >nul 2>&1
    reg add "HKU\!USER_SID!\SOFTWARE\Microsoft\GameBar" /v "UseNexusForGameBarEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
    reg add "HKU\!USER_SID!\System\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d "1" /f >nul 2>&1
    reg add "HKU\!USER_SID!\System\GameConfigStore" /v "GameDVR_DSEBehavior" /t REG_DWORD /d "2" /f >nul 2>&1
    reg add "HKU\!USER_SID!\System\GameConfigStore" /v "GameDVR_EFSEFeatureFlags" /t REG_DWORD /d "0" /f >nul 2>&1
    reg add "HKU\!USER_SID!\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f >nul 2>&1
    reg add "HKU\!USER_SID!\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d "2" /f >nul 2>&1
    reg add "HKU\!USER_SID!\System\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d "2" /f >nul 2>&1
    reg add "HKU\!USER_SID!\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "1" /f >nul 2>&1
    reg add "HKU\!USER_SID!\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
    reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowGameDVR" /t REG_DWORD /d "0" /f >nul 2>&1
    reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /v "value" /t REG_DWORD /d "0" /f >nul 2>&1
    reg delete "HKU\!USER_SID!\System\GameConfigStore\Children" /f >nul 2>&1
    reg delete "HKU\!USER_SID!\System\GameConfigStore\Parents" /f >nul 2>&1
    reg add "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Gaming.GameBar.PresenceServer.Internal.PresenceWriter" /v "ActivationType" /t REG_DWORD /d "0" /f >nul 2>&1
    reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "__COMPAT_LAYER" /t REG_SZ /d "~ DISABLEDXMAXIMIZEDWINDOWEDMODE" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WpnUserService" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
    reg add "HKU\!USER_SID!\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
    reg add "HKU\!USER_SID!\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableNotificationCenter" /t REG_DWORD /d "1" /f >nul 2>&14
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Schedule" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\TimeBrokerSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
 reg add "HKU\!USER_SID!\SOFTWARE\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d "0" /f >nul 2>&1
    reg add "HKU\!USER_SID!\SOFTWARE\Microsoft\Siuf\Rules" /v "PeriodInNanoSeconds" /t REG_DWORD /d "0" /f >nul 2>&1
    reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "DoNotShowFeedbackNotifications" /t REG_DWORD /d "1" /f >nul 2>&1

:msi
for /f %%i in ('wmic path Win32_USBController get PNPDeviceID^| findstr /l "PCI\VEN_"') do reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f >nul 2>&1
for /f %%i in ('wmic path Win32_VideoController get PNPDeviceID^| findstr /l "PCI\VEN_"') do reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f >nul 2>&1
for /f %%i in ('wmic path Win32_NetworkAdapter get PNPDeviceID^| findstr /l "PCI\VEN_"') do reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d "2" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DpiMapIommuContiguous" /t REG_DWORD /d "1" /f >nul 2>&1



:2 
cls
echo ---------------------------------------------------------------------------------------------------------------------------------------------------
type C:\Users\%username%\Downloads\duckboi.txt
echo ---------------------------------------------------------------------------------------------------------------------------------------------------
powershell write-host -fore Blue [1] Intel iGPU Optimizations
powershell write-host -fore Blue [2] Go back to menu. 
echo ----------------------------------------------------------------------------------------------------------------------------------------------------
pause
set /p c= Type Here: 
if /I "%c%" EQU "1" goto :lol
if /I "%c%" EQU "2" goto :menu

:lol
REM Set the power plan to "High Performance"
powercfg /s 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c

REM Open Intel Graphics Control Panel
start "" "%ProgramFiles(x86)%\Intel\Intel Graphics Control Panel\igfxcpl.cpl"

REM Wait for the application to start
timeout /t 10

REM Disable Vertical Sync (V-Sync)
start "" "%ProgramFiles(x86)%\Intel\Intel Graphics Control Panel\igfxcpl.cpl" 
/MakerMode=1

REM Wait for the process to complete
timeout /t 5

REM Set the graphics performance to "High"
start "" "%ProgramFiles(x86)%\Intel\Intel Graphics Control Panel\igfxcpl.cpl" 
/Performance=1

REM Wait for the process to complete
timeout /t 5
pause 
exit


:3
cls
echo ---------------------------------------------------------------------------------------------------------------------------------------------------
type C:\Users\%username%\Downloads\duckboi.txt
echo ---------------------------------------------------------------------------------------------------------------------------------------------------
powershell write-host -fore Green [1] Nvidia optimizations
powershell write-host -fore Green [2] Go back to menu. 
echo ----------------------------------------------------------------------------------------------------------------------------------------------------
pause
set /p c= Type Here: 
if /I "%c%" EQU "1" goto :gay
if /I "%c%" EQU "2" goto :menu

:gay
REM Check if the NVIDIA Control Panel is installed
IF NOT EXIST "%ProgramFiles%\NVIDIA Corporation\Control Panel Client
\NVCPLui.exe" (
  echo NVIDIA Control Panel not found. Exiting...
  exit /b 1
)

REM Set the power management mode to "Prefer Maximum Performance"
"%ProgramFiles%\NVIDIA Corporation\Control Panel Client\NVCPLui.exe" 
-a:[GPU0]/NvPowerMgmt=0

REM Set the graphics settings to "High performance NVIDIA processor"
start "" "%ProgramFiles%\NVIDIA Corporation\Control Panel Client
\NVCPLui.exe" -s -i=0x0a0a0002

REM Disable Vertical Sync (V-Sync)
"%ProgramFiles%\NVIDIA Corporation\Control Panel Client\NVCPLui.exe" 
-a:[GPU0]/VSync=0

REM Disable optimizations for Windows Media Player
"%ProgramFiles%\NVIDIA Corporation\Control Panel Client\NVCPLui.exe" 
-a:[GPU0]/ForcedLagFree=0

REM Disable optimizations for Video playback
"%ProgramFiles%\NVIDIA Corporation\Control Panel Client\NVCPLui.exe" 
-a:[GPU0]/ForcedLagFree=1

REM Enable Texture filtering - Quality
"%ProgramFiles%\NVIDIA Corporation\Control Panel Client\NVCPLui.exe" 
-a:[GPU0]/TextureFiltering=2

REM Enable Trilinear optimization
"%ProgramFiles%\NVIDIA Corporation\Control Panel Client\NVCPLui.exe" 
-a:[GPU0]/TrilinearOptimization=1
  reg add "HKLM\SYSTEM\CurrentControlSet\Services\NvTelemetryContainer" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
    reg add "HKU\!USER_SID!\SOFTWARE\NVIDIA Corporation\NVControlPanel2\Client" /v "OptInOrOutPreference" /t REG_DWORD /d "0" /f >nul 2>&1

echo NVIDIA GPU Optimization is complete.
pause
exit

:4
cls
echo ---------------------------------------------------------------------------------------------------------------------------------------------------
type C:\Users\%username%\Downloads\duckboi.txt
echo ---------------------------------------------------------------------------------------------------------------------------------------------------
powershell write-host -fore Red [1] AMD gpu optimizations
powershell write-host -fore Red [2] Go back to menu. 
echo ----------------------------------------------------------------------------------------------------------------------------------------------------
pause
set /p c= Type Here: 
if /I "%c%" EQU "1" goto :AMD gpu optimizations
if /I "%c%" EQU "2" goto :menu

:AMD gpu optimizations
REM Check if the AMD Radeon Software is installed
IF NOT EXIST "%ProgramFiles%\AMD\CNext\CNext\RadeonSoftware.exe" (
  echo AMD Radeon Software not found. Exiting...
  exit /b 1
)

REM Set the power plan to "High Performance"
powercfg /s 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c

REM Open AMD Radeon Software
start "" "%ProgramFiles%\AMD\CNext\CNext\RadeonSoftware.exe"

REM Wait for the application to start
timeout /t 10


REM Set the graphics settings to "High performance"
start "" "C:\Program Files\AMD\CNext\CNext\RadeonSoftware.exe" 
-setgpuclock:0,0,1500

REM Wait for the process to complete
timeout /t 5

REM Set the memory clock to the maximum frequency
start "" "C:\Program Files\AMD\CNext\CNext\RadeonSoftware.exe" 
-setmemclock:0,0,2250

REM Wait for the process to complete
timeout /t 5

REM Enable Surface Format Optimization
start "" "C:\Program Files\AMD\CNext\CNext\RadeonSoftware.exe" 
-setSF:1

REM Wait for the process to complete
timeout /t 5

REM Enable Enhanced Sync
start "" "C:\Program Files\AMD\CNext\CNext\RadeonSoftware.exe" 
-setEN:1

reg add "!REGPATH_AMD!" /v "AsicOnLowPower" /t REG_DWORD /d "0" /f
            reg add "!REGPATH_AMD!" /v "EnableUlps" /t REG_DWORD /d "0" /f
            reg add "!REGPATH_AMD!" /v "GCOOPTION_DisableGPIOPowerSaveMode" /t REG_DWORD /d "1" /f
            reg add "!REGPATH_AMD!" /v "PP_GPUPowerDownEnabled" /t REG_DWORD /d "0" /f
            reg add "!REGPATH_AMD!" /v "PP_SclkDeepSleepDisable" /t REG_DWORD /d "1" /f
            reg add "!REGPATH_AMD!" /v "PP_ThermalAutoThrottlingEnable" /t REG_DWORD /d "0" /f
            reg add "!REGPATH_AMD!" /v "PP_DisableSQRamping" /t REG_DWORD /d "1" /f
            reg add "!REGPATH_AMD!" /v "PP_DisablePowerContainment" /t REG_DWORD /d "1" /f
            reg add "!REGPATH_AMD!" /v "KMD_EnableContextBasedPowerManagement" /t REG_DWORD /d "0" /f
            reg add "!REGPATH_AMD!" /v "KMD_ChillEnabled" /t REG_DWORD /d "0" /f
            reg add "!REGPATH_AMD!" /v "DisableDrmdmaPowerGating" /t REG_DWORD /d "1" /f
            reg add "!REGPATH_AMD!" /v "DisableUVDPowerGating" /t REG_DWORD /d "1" /f
            reg add "!REGPATH_AMD!" /v "DisableUVDPowerGatingDynamic" /t REG_DWORD /d "1" /f
            reg add "!REGPATH_AMD!" /v "DisableVCEPowerGating" /t REG_DWORD /d "1" /f
            reg add "!REGPATH_AMD!" /v "DisableSAMUPowerGating" /t REG_DWORD /d "1" /f
            reg add "!REGPATH_AMD!" /v "DisablePowerGating" /t REG_DWORD /d "1" /f
            reg add "!REGPATH_AMD!" /v "EnableUvdClockGating" /t REG_DWORD /d "0" /f
            reg add "!REGPATH_AMD!" /v "EnableVceSwClockGating" /t REG_DWORD /d "0" /f
            reg add "!REGPATH_AMD!" /v "DisableAllClockGating" /t REG_DWORD /d "1" /f
            reg add "!REGPATH_AMD!" /v "PP_ForceHighDPMLevel" /t REG_DWORD /d "1" /f
        )
        reg add "!REGPATH_AMD!" /v "StutterMode" /t REG_DWORD /d "0" /f
        reg add "!REGPATH_AMD!" /v "PP_Force3DPerformanceMode" /t REG_DWORD /d "1" /f
        reg add "!REGPATH_AMD!" /v "DisableDMACopy" /t REG_DWORD /d "1" /f
        reg add "!REGPATH_AMD!" /v "DisableBlockWrite" /t REG_DWORD /d "0" /f
        reg add "!REGPATH_AMD!\UMD" /v "Main3D_DEF" /t REG_SZ /d "1" /f
        reg add "!REGPATH_AMD!\UMD" /v "Main3D" /t REG_BINARY /d "3100" /f
        reg add "!REGPATH_AMD!\UMD" /v "FlipQueueSize" /t REG_BINARY /d "3100" /f
        reg add "!REGPATH_AMD!\UMD" /v "ShaderCache" /t REG_BINARY /d "3200" /f
        reg add "!REGPATH_AMD!\UMD" /v "Tessellation_OPTION" /t REG_BINARY /d "3200" /f
        reg add "!REGPATH_AMD!\UMD" /v "Tessellation" /t REG_BINARY /d "3100" /f
        reg add "!REGPATH_AMD!\UMD" /v "VSyncControl" /t REG_BINARY /d "3000" /f
        reg add "!REGPATH_AMD!\UMD" /v "TFQ" /t REG_BINARY /d "3200" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\amdlog" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1

REM Wait for the process to complete
timeout /t 5

echo AMD GPU Optimization is complete.
pause
exit

:5
cls
echo ---------------------------------------------------------------------------------------------------------------------------------------------------
type C:\Users\%username%\Downloads\duckboi.txt
echo ---------------------------------------------------------------------------------------------------------------------------------------------------
powershell write-host -fore Yellow [1] tcp optimization
powershell write-host -fore Yellow [2] Go back to menu. 
echo ----------------------------------------------------------------------------------------------------------------------------------------------------
set /p c= Type Here: 
if /I "%c%" EQU "1" goto :tcp optimization	`
if /I "%c%" EQU "2" goto :menu

:tcp optimization
cls
ipconfig/flush dns
ipconfig /reset
netsh winsock reset
netsh int tcp set global autotuninglevel=normal
netsh interface teredo set state disabled
netsh interface 6to4 set state disabled
netsh winsock reset
netsh int isatap set state disable
netsh int ip set global taskoffload=enabled
netsh int ip set global neighborcachelimit=4096
netsh int tcp set global timestamps=disabled
netsh int tcp set heuristics disabled
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global congestionprovider=ctcp
netsh int tcp set supplemental Internet congestionprovider=CTCP
netsh int tcp set global chimney=disabled
netsh int tcp set global ecncapability=disabled
netsh int tcp set global rss=enabled
netsh int tcp set global rsc=disabled
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=enabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set security mpp=disabled
netsh int tcp set security profiles=disabled
 reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "64" /f >nul 2>&1
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "1" /f >nul 2>&1
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDupAcks" /t REG_DWORD /d "2" /f >nul 2>&1
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SackOpts" /t REG_DWORD /d "0" /f >nul 2>&1
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d "65534" /f >nul 2>&1
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d "30" /f >nul 2>&1
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Winsock" /v "UseDelayedAcceptance" /t REG_DWORD /d "0" /f >nul 2>&1
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Winsock" /v "MaxSockAddrLength" /t REG_DWORD /d "16" /f >nul 2>&1
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Winsock" /v "MinSockAddrLength" /t REG_DWORD /d "16" /f >nul 2>&1
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d "4" /f >nul 2>&1
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d "5" /f >nul 2>&1
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d "6" /f >nul 2>&1
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d "7" /f >nul 2>&1
echo TCP Optimization has finshed. Would you like to exit or go back to the menu? (menu/exit)
set /p c= Type Here: 
if /I "%c%" EQU "exit" goto :exit	`
if /I "%c%" EQU "menu" goto :menu
	


:7
cls
rmdir /S /Q "%SYSTEMDRIVE%\duckclient\Resources\DeviceCleanupCmd\" >nul 2>&1
del /F /Q "%SYSTEMDRIVE%\duckclient\Resources\AdwCleaner.exe" >nul 2>&1
del /F /Q "%SYSTEMDRIVE%\duckclient\Resources\EmptyStandbyList.exe" >nul 2>&1
curl -g -L -# -o "%SYSTEMDRIVE%\duckclient\Resources\EmptyStandbyList.exe" "https://github.com/eeee8392/duckclient/blob/main/EmptyStandbyList.exe?raw=true"
curl -g -L -# -o "%SYSTEMDRIVE%\duckclient\Resources\DeviceCleanupCmd.zip" "https://www.uwe-sieber.de/files/DeviceCleanupCmd.zip"
curl -g -L -# -o "%SYSTEMDRIVE%\duckclient\Resources\AdwCleaner.exe" "https://adwcleaner.malwarebytes.com/adwcleaner?channel=release"
powershell -NoProfile Expand-Archive '%SYSTEMDRIVE%\duckclient\Resources\DeviceCleanupCmd.zip' -DestinationPath '%SYSTEMDRIVE%\duckclient\Resources\DeviceCleanupCmd\'
del /F /Q "%SYSTEMDRIVE%\duckclient\Resources\DeviceCleanupCmd.zip" >nul 2>&1
del /Q %LOCALAPPDATA%\Microsoft\Windows\INetCache\IE\*.* >nul 2>&1
del /Q "%SYSTEMROOT%\Downloaded Program Files\*.*" >nul 2>&1
rd /s /q %SYSTEMDRIVE%\$Recycle.bin >nul 2>&1
del /Q %TEMP%\*.* >nul 2>&1
del /Q %SYSTEMROOT%\Temp\*.* >nul 2>&1
del /Q %SYSTEMROOT%\Prefetch\*.* >nul 2>&1
cd %SYSTEMDRIVE%\duckclient\Resources >nul 2>&1
AdwCleaner.exe /eula /clean /noreboot
for %%g in (workingsets modifiedpagelist standbylist priority0standbylist) do EmptyStandbyList.exe %%g
cd "%SYSTEMDRIVE%\duckclient\Resources\DeviceCleanupCmd\x64" >nul 2>&1
DeviceCleanupCmd.exe *
echo cleaner has finshed. Would you like to exit or go back to the menu? (menu/exit)
set /p c= Type Here: 
if /I "%c%" EQU "exit" goto :exit	`
if /I "%c%" EQU "menu" goto :menu



:8
cls
echo ---------------------------------------------------------------------------------------------------------------------------------------------------
type C:\Users\%username%\Downloads\duckboi.txt
echo ---------------------------------------------------------------------------------------------------------------------------------------------------
powershell write-host -fore Yellow [1] Timer
powershell write-host -fore Yellow [2] Python installer
powershell write-host -fore Yellow [3] Python tweaks
powershell write-host -fore Yellow [4] AHK installer
powershell write-host -fore Yellow [5] AHK tools
powershell write-host -fore Yellow [6] Go back to menu. 
echo ----------------------------------------------------------------------------------------------------------------------------------------------------
set /p c= Type Here: 
if /I "%c%" EQU "1" goto :Timer
if /I "%c%" EQU "2" goto :Python tweaks/install
if /I "%c%" EQU "3" goto :Python tweaks
if /I "%c%" EQU "4" goto :AHK installer
if /I "%c%" EQU "5" goto :AHK tools
if /I "%c%" EQU "6" goto :menu


:Timer
cls
rem installing Timer resolution
echo Timer Resolution Adjuster

echo Current timer resolution:
wmic os get CurrentTimeZone

echo Enter desired timer resolution in 100-nanosecond intervals:
set /p resolution=

echo Setting timer resolution...
:: Set the timer resolution using the timeBeginPeriod function from winmm.dll
%windir%\System32\rundll32.exe winmm.dll,timeBeginPeriod %resolution%

echo Timer resolution set to %resolution%.
pause
echo Timer resolution has finshed. Would you like to exit or go back to the menu? (menu/exit)
set /p c= Type Here: 
if /I "%c%" EQU "exit" goto :exit	`
if /I "%c%" EQU "menu" goto :menu

:Python installer
cls
start shit.ps1
if /I "%c%" EQU "exit" goto :exit	`
if /I "%c%" EQU "menu" goto :menu

:Python tweaks
cls
echo coming soon

:AHK installer
curl -g -L -# -o "%SYSTEMDRIVE%\duckclient\Resources\AutoHotkey_2.0.2_setup (1).exe" "https://github.com/eeee8392/duckclient/blob/main/AutoHotkey_2.0.2_setup%20(1).exe?raw=true"
echo please wait for AHK to install
pause
cd %SYSTEMDRIVE%\duckclient\Resources
start AutoHotkey_2.0.2_setup (1).exe
cls

:AHK tools

:exit 
cls 
pause
exit 
