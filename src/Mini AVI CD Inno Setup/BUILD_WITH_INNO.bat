@echo off
setlocal

set "ISCC="

rem Inno Setup installed only for the current user
if exist "%LocalAppData%\Programs\Inno Setup 6\ISCC.exe" set "ISCC=%LocalAppData%\Programs\Inno Setup 6\ISCC.exe"

rem Standard system-wide installation locations
if not defined ISCC if exist "%ProgramFiles(x86)%\Inno Setup 6\ISCC.exe" set "ISCC=%ProgramFiles(x86)%\Inno Setup 6\ISCC.exe"
if not defined ISCC if exist "%ProgramFiles%\Inno Setup 6\ISCC.exe" set "ISCC=%ProgramFiles%\Inno Setup 6\ISCC.exe"

rem Also accept ISCC.exe available through PATH
if not defined ISCC (
  for /f "delims=" %%I in ('where ISCC.exe 2^>nul') do if not defined ISCC set "ISCC=%%I"
)

if not defined ISCC (
  echo ERROR: Inno Setup 6 was not found.
  echo Checked LocalAppData, Program Files and PATH.
  pause
  exit /b 1
)

echo Using: "%ISCC%"
"%ISCC%" "%~dp0MiniAVI_Oglinda_Setup.iss"

if errorlevel 1 (
  echo.
  echo ERROR: Inno Setup could not compile the installer.
  pause
  exit /b 1
)

echo.
echo Installer created in the Output folder.
pause
