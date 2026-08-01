MINI AVI PLAYER 1.1 - INSTALLATION KIT
======================================

Pachetul include executabilul Mini AVI si singura dependenta externa necesara:

  payload\Mini_AVI.exe
  payload\msvbvm60.dll

INSTALATORUL INNO SETUP
-----------------------
Ruleaza BUILD_INSTALLER.bat.

Daca Inno Setup nu este instalat, scriptul incearca sa-l instaleze automat
prin winget. Instalatorul rezultat va fi creat aici:

  Output\Mini_AVI_Player_Setup_1.1.exe

INSTALARE IMEDIATA, FARA COMPILARE
----------------------------------
Ruleaza INSTALL_NOW.cmd. Aceasta varianta instaleaza programul direct in:

  %LOCALAPPDATA%\Programs\Mini AVI

si creeaza scurtaturi, intrarea de dezinstalare, Open with si comanda
"Reda cu Mini AVI" pentru fisierele AVI.

DEZINSTALARE
------------
Kitul Inno are dezinstalator propriu. Pentru instalarea facuta prin
INSTALL_NOW.cmd se poate folosi Apps / Installed apps sau UNINSTALL_NOW.cmd.

DEPENDENTE EXCLUSE INTENTIONAT
------------------------------
COMCAT.DLL, comdlg32.dll, oleaut32.dll si olepro32.dll sunt componente Windows
si nu sunt copiate de acest kit.

CORECTIE INNO SETUP
--------------------
Scriptul foloseste numai fisierul standard compiler:Default.isl. Nu mai depinde
de Languages\Romanian.isl, care nu este inclus in toate instalarile Inno Setup.
