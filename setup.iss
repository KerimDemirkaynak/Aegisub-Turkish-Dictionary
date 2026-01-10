; Script Düzenleme Tarihi: 31.12.2025
; Hedef: Aegisub Türkçe Sözlük Eklentisi (GitHub Uyumlu)

#define MyAppName "Aegisub Türkçe Sözlük Eklentisi"
#define MyAppVersion "1.0"
#define MyAppPublisher "Kerim Demirkaynak"
; {src} demek, bu .iss dosyasının olduğu klasör demektir.
#define MySourcePath "{src}" 

[Setup]
OutputBaseFilename=Aegisub-3.4.2-dict-tr_TR
OutputDir={#MySourcePath}\Output
AppId={{A4F79320-9D73-45B6-8964-F8E398918235}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
ArchitecturesInstallIn64BitMode=x64
DefaultDirName={autopf}\Aegisub
DirExistsWarning=no
DisableDirPage=yes
WizardStyle=modern
Compression=lzma2/ultra64
SolidCompression=yes
PrivilegesRequired=admin

; --- Görseller (resources klasöründen çeker) ---
WizardImageFile={#MySourcePath}\resources\welcome-large.bmp
WizardSmallImageFile={#MySourcePath}\resources\aegisub.bmp
SetupIconFile={#MySourcePath}\resources\aegisub.ico

[Languages]
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"

[Files]
; --- Dosyalar (dictionaries klasöründen çeker) ---
Source: "{#MySourcePath}\dictionaries\tr_TR.aff"; DestDir: "{app}\dictionaries"; Flags: ignoreversion
Source: "{#MySourcePath}\dictionaries\tr_TR.dic"; DestDir: "{app}\dictionaries"; Flags: ignoreversion

[Run]
Filename: "{app}\aegisub32.exe"; Description: "Aegisub uygulamasını başlat"; Flags: nowait postinstall skipifsilent shellexec runasoriginaluser; Check: FileExists(ExpandConstant('{app}\aegisub32.exe'))
Filename: "{app}\aegisub64.exe"; Description: "Aegisub uygulamasını başlat"; Flags: nowait postinstall skipifsilent shellexec runasoriginaluser; Check: FileExists(ExpandConstant('{app}\aegisub64.exe'))