@echo off
setlocal EnableExtensions
set "APPDIR=%LOCALAPPDATA%\Programs\Mini AVI"
set "STARTDIR=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Mini AVI"

reg delete "HKCU\Software\Classes\MiniAVI.avi" /f >nul 2>nul
reg delete "HKCU\Software\Classes\.avi\OpenWithProgids" /v "MiniAVI.avi" /f >nul 2>nul
reg delete "HKCU\Software\Classes\Applications\Mini_AVI.exe" /f >nul 2>nul
reg delete "HKCU\Software\Classes\SystemFileAssociations\.avi\shell\MiniAVI" /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\App Paths\Mini_AVI.exe" /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Uninstall\Mini AVI Player" /f >nul 2>nul

del /q "%USERPROFILE%\Desktop\Mini AVI.lnk" >nul 2>nul
rmdir /s /q "%STARTDIR%" >nul 2>nul

start "" /min cmd.exe /c "timeout /t 2 /nobreak >nul & rmdir /s /q \"%APPDIR%\""
exit /b 0
