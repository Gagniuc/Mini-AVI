#define MyAppName "Mini AVI Player"
#define MyAppShortName "Mini AVI"
#define MyAppVersion "1.1"
#define MyAppPublisher "Paul A. Gagniuc"
#define MyAppExeName "Mini_AVI.exe"
#define MyProgId "MiniAVI.avi"

[Setup]
AppId={{B3B6757A-37C7-4A5B-9D45-477AD37A6648}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
VersionInfoCompany={#MyAppPublisher}
VersionInfoDescription=Mini AVI Player Setup
VersionInfoProductName={#MyAppName}
VersionInfoVersion=1.1.0.0
VersionInfoProductVersion=1.1.0.0
DefaultDirName={localappdata}\Programs\Mini AVI
DefaultGroupName=Mini AVI
DisableProgramGroupPage=yes
PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputDir=Output
OutputBaseFilename=Mini_AVI_Player_Setup_1.1
Compression=lzma2/ultra64
SolidCompression=yes
WizardStyle=modern
ChangesAssociations=yes
UninstallDisplayName={#MyAppName} {#MyAppVersion}
UninstallDisplayIcon={app}\{#MyAppExeName}
CloseApplications=yes
RestartApplications=no
SetupLogging=yes
MinVersion=6.1sp1
SetupIconFile=payload\MiniAVI.ico

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[CustomMessages]
DesktopIcon=Create a Desktop shortcut
AdditionalIcons=Additional shortcuts:
AssociateAVI=Register Mini AVI for AVI files
FileAssociation=File association:
LaunchProgram=Launch Mini AVI

[Tasks]
Name: "desktopicon"; Description: "{cm:DesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"
Name: "associateavi"; Description: "{cm:AssociateAVI}"; GroupDescription: "{cm:FileAssociation}"; Flags: checkedonce

[Files]
Source: "payload\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "payload\msvbvm60.dll"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{autoprograms}\Mini AVI"; Filename: "{app}\{#MyAppExeName}"; WorkingDir: "{app}"
Name: "{autodesktop}\Mini AVI"; Filename: "{app}\{#MyAppExeName}"; WorkingDir: "{app}"; Tasks: desktopicon

[Registry]
; Program identifier and open command.
Root: HKCU; Subkey: "Software\Classes\{#MyProgId}"; ValueType: string; ValueName: ""; ValueData: "AVI video - Mini AVI"; Flags: uninsdeletekey; Tasks: associateavi
Root: HKCU; Subkey: "Software\Classes\{#MyProgId}\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"",0"; Tasks: associateavi
Root: HKCU; Subkey: "Software\Classes\{#MyProgId}\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Tasks: associateavi

; Open with registration.
Root: HKCU; Subkey: "Software\Classes\.avi\OpenWithProgids"; ValueType: string; ValueName: "{#MyProgId}"; ValueData: ""; Flags: uninsdeletevalue; Tasks: associateavi
Root: HKCU; Subkey: "Software\Classes\Applications\{#MyAppExeName}"; ValueType: string; ValueName: "FriendlyAppName"; ValueData: "{#MyAppShortName}"; Flags: uninsdeletekey; Tasks: associateavi
Root: HKCU; Subkey: "Software\Classes\Applications\{#MyAppExeName}\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"",0"; Tasks: associateavi
Root: HKCU; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".avi"; ValueData: ""; Tasks: associateavi
Root: HKCU; Subkey: "Software\Classes\Applications\{#MyAppExeName}\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Tasks: associateavi

; Windows Default Apps registration.
Root: HKCU; Subkey: "Software\MiniAVI\Capabilities"; ValueType: string; ValueName: "ApplicationName"; ValueData: "{#MyAppShortName}"; Flags: uninsdeletekey; Tasks: associateavi
Root: HKCU; Subkey: "Software\MiniAVI\Capabilities"; ValueType: string; ValueName: "ApplicationDescription"; ValueData: "Compact AVI player by Paul A. Gagniuc"; Tasks: associateavi
Root: HKCU; Subkey: "Software\MiniAVI\Capabilities\FileAssociations"; ValueType: string; ValueName: ".avi"; ValueData: "{#MyProgId}"; Tasks: associateavi
Root: HKCU; Subkey: "Software\RegisteredApplications"; ValueType: string; ValueName: "Mini AVI"; ValueData: "Software\MiniAVI\Capabilities"; Flags: uninsdeletevalue; Tasks: associateavi

; Context menu command remains available even when another player is the default.
Root: HKCU; Subkey: "Software\Classes\SystemFileAssociations\.avi\shell\MiniAVI"; ValueType: string; ValueName: ""; ValueData: "Redă cu Mini AVI"; Flags: uninsdeletekey; Tasks: associateavi
Root: HKCU; Subkey: "Software\Classes\SystemFileAssociations\.avi\shell\MiniAVI"; ValueType: string; ValueName: "Icon"; ValueData: """{app}\{#MyAppExeName}"",0"; Tasks: associateavi
Root: HKCU; Subkey: "Software\Classes\SystemFileAssociations\.avi\shell\MiniAVI\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Tasks: associateavi

; App Paths allows launching Mini_AVI.exe from Run or a command prompt.
Root: HKCU; Subkey: "Software\Microsoft\Windows\CurrentVersion\App Paths\{#MyAppExeName}"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Microsoft\Windows\CurrentVersion\App Paths\{#MyAppExeName}"; ValueType: string; ValueName: "Path"; ValueData: "{app}"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram}"; Flags: nowait postinstall skipifsilent
