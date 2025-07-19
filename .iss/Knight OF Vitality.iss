[Setup]
AppName=OpenFrquShGame
AppVersion=1.0
DefaultDirName={autopf}\OpenFrquShGame
DefaultGroupName=OpenFrquShGame
UninstallDisplayIcon={app}\KnightOFVitality_openfrqushgame.exe
OutputBaseFilename=KnightInstaller
Compression=lzma
SolidCompression=yes
SetupIconFile=C:\Users\zxxuh\Desktop\MC_UI\favicon (1).ico
WizardImageFile=C:\Users\zxxuh\Desktop\MC_UI\orig_480x480.bmp
ArchitecturesInstallIn64BitMode=x64compatible
PrivilegesRequired=admin

[Files]
Source: "F:\BaiduNetdiskDownload\1\KnightOFVitalityGame\*"; DestDir: "{app}"; Flags: recursesubdirs ignoreversion createallsubdirs

[Icons]
Name: "{commondesktop}\OpenFrquShGame"; Filename: "{app}\KnightOFVitality_openfrqushgame.exe"; WorkingDir: "{app}"

[Run]
Filename: "{app}\KnightOFVitality\Binaries\Win64\KnightOFVitality-Win64-Shipping.exe"; Description: "运行 OpenFrquShGame"; Flags: nowait postinstall skipifsilent

[Icons]
Name: "{commondesktop}\OpenFrquShGame"; Filename: "{app}\KnightOFVitality\Binaries\Win64\KnightOFVitality-Win64-Shipping.exe"; WorkingDir: "{app}\KnightOFVitality\Binaries\Win64"