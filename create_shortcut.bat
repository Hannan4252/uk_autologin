@echo off
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "%HOMEDRIVE%%HOMEPATH%\Desktop\uk_autologin.lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "c:\Autologin\uk_autologin.bat"  >> CreateShortcut.vbs
echo oLink.WorkingDirectory = "c:\Autologin"  >> CreateShortcut.vbs
echo oLink.IconLocation = "c:\Autologin\logo.ico">> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs
cscript CreateShortcut.vbs
del CreateShortcut.vbs
@pause