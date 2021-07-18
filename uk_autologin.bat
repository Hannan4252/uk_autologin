@echo off 
cd c:\Autologin
:loop
set /p id="Enter 'e' for enable autologin and Enter 'd' for disable autologin "
if %id%==d ( SCHTASKS /CHANGE /TN "uk_autologin" /DISABLE)
if %id%==e (
cscript.exe autologin.vbs
SCHTASKS /CHANGE /TN "uk_autologin" /ENABLE)
if NOT %id%==u (if NOT %id%==i (goto loop) )

@pause
