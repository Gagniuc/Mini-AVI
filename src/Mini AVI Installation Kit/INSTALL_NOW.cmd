@echo off
setlocal EnableExtensions
cd /d "%~dp0"
set "APPDIR=%LOCALAPPDATA%\Programs\Mini AVI"
set "STARTDIR=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Mini AVI"

if not exist "payload\Mini_AVI.exe" (
  echo EROARE: lipseste payload\Mini_AVI.exe
  pause
  exit /b 1
)
if not exist "payload\msvbvm60.dll" (
  echo EROARE: lipseste payload\msvbvm60.dll
  pause
  exit /b 1
)

mkdir "%APPDIR%" 2>nul
copy /y "payload\Mini_AVI.exe" "%APPDIR%\Mini_AVI.exe" >nul
copy /y "payload\msvbvm60.dll" "%APPDIR%\msvbvm60.dll" >nul
copy /y "UNINSTALL_NOW.cmd" "%APPDIR%\UNINSTALL_NOW.cmd" >nul

mkdir "%STARTDIR%" 2>nul
set "PS1=$ws=New-Object -ComObject WScript.Shell; $s=$ws.CreateShortcut('%STARTDIR%\Mini AVI.lnk'); $s.TargetPath='%APPDIR%\Mini_AVI.exe'; $s.WorkingDirectory='%APPDIR%'; $s.IconLocation='%APPDIR%\Mini_AVI.exe,0'; $s.Save(); $d=$ws.CreateShortcut([Environment]::GetFolderPath('Desktop')+'\Mini AVI.lnk'); $d.TargetPath='%APPDIR%\Mini_AVI.exe'; $d.WorkingDirectory='%APPDIR%'; $d.IconLocation='%APPDIR%\Mini_AVI.exe,0'; $d.Save()"
powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "%PS1%" >nul 2>nul

reg add "HKCU\Software\Classes\MiniAVI.avi" /ve /d "AVI video - Mini AVI" /f >nul
reg add "HKCU\Software\Classes\MiniAVI.avi\DefaultIcon" /ve /d "\"%APPDIR%\Mini_AVI.exe\",0" /f >nul
reg add "HKCU\Software\Classes\MiniAVI.avi\shell\open\command" /ve /d "\"%APPDIR%\Mini_AVI.exe\" \"%%1\"" /f >nul
reg add "HKCU\Software\Classes\.avi\OpenWithProgids" /v "MiniAVI.avi" /t REG_NONE /d "" /f >nul 2>nul
reg add "HKCU\Software\Classes\Applications\Mini_AVI.exe" /v "FriendlyAppName" /d "Mini AVI" /f >nul
reg add "HKCU\Software\Classes\Applications\Mini_AVI.exe\SupportedTypes" /v ".avi" /t REG_SZ /d "" /f >nul
reg add "HKCU\Software\Classes\Applications\Mini_AVI.exe\shell\open\command" /ve /d "\"%APPDIR%\Mini_AVI.exe\" \"%%1\"" /f >nul
reg add "HKCU\Software\Classes\SystemFileAssociations\.avi\shell\MiniAVI" /ve /d "Reda cu Mini AVI" /f >nul
reg add "HKCU\Software\Classes\SystemFileAssociations\.avi\shell\MiniAVI" /v "Icon" /d "\"%APPDIR%\Mini_AVI.exe\",0" /f >nul
reg add "HKCU\Software\Classes\SystemFileAssociations\.avi\shell\MiniAVI\command" /ve /d "\"%APPDIR%\Mini_AVI.exe\" \"%%1\"" /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\App Paths\Mini_AVI.exe" /ve /d "%APPDIR%\Mini_AVI.exe" /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\App Paths\Mini_AVI.exe" /v "Path" /d "%APPDIR%" /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Uninstall\Mini AVI Player" /v "DisplayName" /d "Mini AVI Player 1.1" /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Uninstall\Mini AVI Player" /v "DisplayIcon" /d "%APPDIR%\Mini_AVI.exe" /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Uninstall\Mini AVI Player" /v "Publisher" /d "Paul A. Gagniuc" /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Uninstall\Mini AVI Player" /v "DisplayVersion" /d "1.1" /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Uninstall\Mini AVI Player" /v "UninstallString" /d "\"%APPDIR%\UNINSTALL_NOW.cmd\"" /f >nul

ie4uinit.exe -ClearIconCache >nul 2>nul

echo.
echo Mini AVI a fost instalat in:
echo %APPDIR%
echo.
start "" "%APPDIR%\Mini_AVI.exe"
pause
