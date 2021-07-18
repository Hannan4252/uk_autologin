@echo off 
cd c:\Autologin
:loop
set /p id="Enter 'i' for Install and Enter 'u' for Uninstall  "
if %id%==i (python -m pip install selenium chromedriver-autoinstaller
python chrome_driver_install.py
SCHTASKS /Create /XML uk_autologin.xml /TN uk_autologin
call create_shortcut.bat

echo Installation finised successfully.
echo All Hail to the Illuminati )
if %id%==u (SCHTASKS /DELETE /TN "uk_autologin"
del "%HOMEDRIVE%%HOMEPATH%\Desktop\uk_autologin.lnk"
echo uninstalled successfully )
if NOT %id%==u (if NOT %id%==i (goto loop) )

@pause



REM SCHTASKS /CREATE /SC ONLOGON /TN "uk_autologin" /TR "C:\Autologin\autologin_2.bat"