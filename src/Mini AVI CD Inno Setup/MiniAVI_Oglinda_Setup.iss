#define MyAppName "Mini AVI Player and Oglinda"
#define MyAppVersion "1.0"
#define MyAppPublisher "Paul A. Gagniuc"

[Setup]
AppId={{D8E1AC52-8D4E-4EA4-A72B-75E52C2DC734}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={localappdata}\Programs\Mini AVI and Oglinda
DefaultGroupName=Mini AVI and Oglinda
DisableProgramGroupPage=yes
PrivilegesRequired=lowest
OutputDir=Output
OutputBaseFilename=Mini_AVI_and_Oglinda_Setup_Inno
SetupIconFile=payload\oglinda.ico
Compression=lzma2/ultra64
SolidCompression=yes
WizardStyle=modern
UninstallDisplayIcon={app}\Mini_AVI.exe
VersionInfoVersion=1.0.0.0
VersionInfoCompany={#MyAppPublisher}
VersionInfoDescription=Mini AVI Player and Oglinda Setup
VersionInfoProductName={#MyAppName}
VersionInfoProductVersion={#MyAppVersion}

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "Create Desktop shortcuts"; GroupDescription: "Additional shortcuts:"; Flags: checkedonce

[Files]
Source: "payload\Mini_AVI.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "payload\MiniAVI_AutoStart.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "payload\msvbvm60.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "payload\Oglinda.alfa"; DestDir: "{app}"; Flags: ignoreversion
Source: "payload\Oglinda.beta"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\Mini AVI Player"; Filename: "{app}\Mini_AVI.exe"; WorkingDir: "{app}"
Name: "{group}\Oglinda - Mini AVI CD Builder"; Filename: "{app}\MiniAVI_AutoStart.exe"; WorkingDir: "{app}"
Name: "{group}\Uninstall Mini AVI and Oglinda"; Filename: "{uninstallexe}"
Name: "{autodesktop}\Mini AVI Player"; Filename: "{app}\Mini_AVI.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{autodesktop}\Oglinda"; Filename: "{app}\MiniAVI_AutoStart.exe"; WorkingDir: "{app}"; Tasks: desktopicon

[Registry]
Root: HKCU; Subkey: "Software\Classes\Applications\Mini_AVI.exe"; ValueType: string; ValueName: "FriendlyAppName"; ValueData: "Mini AVI Player"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Applications\Mini_AVI.exe\DefaultIcon"; ValueType: string; ValueData: "{app}\Mini_AVI.exe,0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Applications\Mini_AVI.exe\shell\open\command"; ValueType: string; ValueData: """{app}\Mini_AVI.exe"" ""%1"""; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\MiniAVI.avi"; ValueType: string; ValueData: "Mini AVI video file"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\MiniAVI.avi\DefaultIcon"; ValueType: string; ValueData: "{app}\Mini_AVI.exe,0"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\MiniAVI.avi\shell\open\command"; ValueType: string; ValueData: """{app}\Mini_AVI.exe"" ""%1"""; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\Applications\Mini_AVI.exe\SupportedTypes"; ValueType: string; ValueName: ".avi"; ValueData: ""; Flags: uninsdeletevalue
Root: HKCU; Subkey: "Software\Classes\Applications\Mini_AVI.exe\SupportedTypes"; ValueType: string; ValueName: ".mpg"; ValueData: ""; Flags: uninsdeletevalue
Root: HKCU; Subkey: "Software\Classes\Applications\Mini_AVI.exe\SupportedTypes"; ValueType: string; ValueName: ".mpeg"; ValueData: ""; Flags: uninsdeletevalue
Root: HKCU; Subkey: "Software\Classes\Applications\Mini_AVI.exe\SupportedTypes"; ValueType: string; ValueName: ".wmv"; ValueData: ""; Flags: uninsdeletevalue
Root: HKCU; Subkey: "Software\Classes\Applications\Mini_AVI.exe\SupportedTypes"; ValueType: string; ValueName: ".asf"; ValueData: ""; Flags: uninsdeletevalue
Root: HKCU; Subkey: "Software\Classes\.avi\OpenWithProgids"; ValueType: string; ValueName: "MiniAVI.avi"; ValueData: ""; Flags: uninsdeletevalue
Root: HKCU; Subkey: "Software\Classes\.mpg\OpenWithProgids"; ValueType: string; ValueName: "MiniAVI.avi"; ValueData: ""; Flags: uninsdeletevalue
Root: HKCU; Subkey: "Software\Classes\.mpeg\OpenWithProgids"; ValueType: string; ValueName: "MiniAVI.avi"; ValueData: ""; Flags: uninsdeletevalue
Root: HKCU; Subkey: "Software\Classes\.wmv\OpenWithProgids"; ValueType: string; ValueName: "MiniAVI.avi"; ValueData: ""; Flags: uninsdeletevalue
Root: HKCU; Subkey: "Software\Classes\.asf\OpenWithProgids"; ValueType: string; ValueName: "MiniAVI.avi"; ValueData: ""; Flags: uninsdeletevalue
Root: HKCU; Subkey: "Software\Classes\SystemFileAssociations\.avi\shell\MiniAVI.Play"; ValueType: string; ValueName: "MUIVerb"; ValueData: "Play with Mini AVI"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\SystemFileAssociations\.avi\shell\MiniAVI.Play"; ValueType: string; ValueName: "Icon"; ValueData: "{app}\Mini_AVI.exe,0"
Root: HKCU; Subkey: "Software\Classes\SystemFileAssociations\.avi\shell\MiniAVI.Play\command"; ValueType: string; ValueData: """{app}\Mini_AVI.exe"" ""%1"""

[Run]
Filename: "{app}\Mini_AVI.exe"; Description: "Launch Mini AVI Player"; Flags: nowait postinstall skipifsilent unchecked
Filename: "{app}\MiniAVI_AutoStart.exe"; Description: "Launch Oglinda"; Flags: nowait postinstall skipifsilent unchecked
