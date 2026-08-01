@echo off
setlocal EnableExtensions
cd /d "%~dp0"

echo =====================================================
echo        MINI AVI PLAYER - BUILD INNO SETUP
echo =====================================================
echo.

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

call :FindISCC
if defined ISCC goto Compile

echo Inno Setup nu este instalat. Incerc instalarea automata cu winget...
where winget >nul 2>nul
if errorlevel 1 goto NoCompiler

winget install --id JRSoftware.InnoSetup -e --silent --accept-package-agreements --accept-source-agreements
if errorlevel 1 goto NoCompiler

call :FindISCC
if not defined ISCC goto NoCompiler

:Compile
if not exist "Output" mkdir "Output"
echo.
echo Compilare cu: %ISCC%
"%ISCC%" "MiniAVI_Setup.iss"
if errorlevel 1 (
  echo.
  echo EROARE: Inno Setup nu a putut compila scriptul.
  pause
  exit /b 2
)

echo.
echo GATA:
echo %CD%\Output\Mini_AVI_Player_Setup_1.1.exe
start "" "%CD%\Output"
pause
exit /b 0

:FindISCC
set "ISCC="
for %%I in (
  "%ProgramFiles%\Inno Setup 7\ISCC.exe"
  "%ProgramFiles(x86)%\Inno Setup 7\ISCC.exe"
  "%LocalAppData%\Programs\Inno Setup 7\ISCC.exe"
  "%ProgramFiles%\Inno Setup 6\ISCC.exe"
  "%ProgramFiles(x86)%\Inno Setup 6\ISCC.exe"
  "%LocalAppData%\Programs\Inno Setup 6\ISCC.exe"
) do if exist "%%~I" set "ISCC=%%~I"
exit /b 0

:NoCompiler
echo.
echo EROARE: Inno Setup nu a putut fi gasit sau instalat automat.
echo Instaleaza Inno Setup, apoi ruleaza din nou BUILD_INSTALLER.bat.
pause
exit /b 3
