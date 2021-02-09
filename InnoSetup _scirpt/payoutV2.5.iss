; 脚本用 Inno Setup 脚本向导生成。
; 查阅文档获取创建 INNO SETUP 脚本文件详细资料!

[Setup]
AppName=个人理财助手2009
AppVerName=V2.5
AppPublisher=旌龙数码
AppPublisherURL=http://shop34234272.taobao.com/
AppSupportURL=http://shop34234272.taobao.com/
AppUpdatesURL=http://shop34234272.taobao.com/
DefaultDirName=d:\Money\个人理财助手2009
DefaultGroupName=个人理财助手2009
InfoBeforeFile=H:\16 软件工程项目\finish\payout\New Folder\简述.txt
OutputBaseFilename=payoutV2.5
Compression=lzma
SolidCompression=yes

[Languages]
Name: chi; MessagesFile: compiler:Default.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked
Name: quicklaunchicon; Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked

[Files]
Source: H:\16 软件工程项目\finish\payout\New Folder\PersonPayOut.exe; DestDir: {app}; Flags: ignoreversion
Source: H:\16 软件工程项目\finish\payout\New Folder\简述.txt; DestDir: {app}; Flags: ignoreversion
Source: H:\16 软件工程项目\finish\payout\New Folder\快捷键.txt; DestDir: {app}; Flags: ignoreversion
Source: H:\16 软件工程项目\finish\payout\New Folder\更新20090331.txt; DestDir: {app}; Flags: ignoreversion
Source: H:\16 软件工程项目\finish\payout\New Folder\Money.mdb; DestDir: {app}; Flags: ignoreversion
Source: H:\16 软件工程项目\finish\payout\New Folder\PersonInOut.ini; DestDir: {app}; Flags: ignoreversion
Source: H:\16 软件工程项目\finish\payout\New Folder\PersonPayOut.exe; DestDir: {app}; Flags: ignoreversion
Source: H:\16 软件工程项目\finish\payout\New Folder\RegEnc.dll; DestDir: {app}; Flags: ignoreversion
; 注意: 不要在任何共享系统文件中使用“Flags: ignoreversion”

[Icons]
Name: {group}\个人理财助手2009; Filename: {app}\PersonPayOut.exe; WorkingDir: {app}; IconIndex: 0
Name: {group}\{cm:UninstallProgram,个人理财助手2009}; Filename: {uninstallexe}; WorkingDir: {app}
Name: {userdesktop}\个人理财助手2009; Filename: {app}\PersonPayOut.exe; Tasks: desktopicon; WorkingDir: {app}; IconIndex: 0
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\个人理财助手2009; Filename: {app}\PersonPayOut.exe; Tasks: quicklaunchicon; WorkingDir: {app}; IconIndex: 0

[Run]
Filename: {app}\PersonPayOut.exe; Description: {cm:LaunchProgram,个人理财助手2009}; Flags: nowait postinstall skipifsilent

