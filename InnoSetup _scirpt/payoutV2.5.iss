; �ű��� Inno Setup �ű������ɡ�
; �����ĵ���ȡ���� INNO SETUP �ű��ļ���ϸ����!

[Setup]
AppName=�����������2009
AppVerName=V2.5
AppPublisher=�������
AppPublisherURL=http://shop34234272.taobao.com/
AppSupportURL=http://shop34234272.taobao.com/
AppUpdatesURL=http://shop34234272.taobao.com/
DefaultDirName=d:\Money\�����������2009
DefaultGroupName=�����������2009
InfoBeforeFile=H:\16 ���������Ŀ\finish\payout\New Folder\����.txt
OutputBaseFilename=payoutV2.5
Compression=lzma
SolidCompression=yes

[Languages]
Name: chi; MessagesFile: compiler:Default.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked
Name: quicklaunchicon; Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked

[Files]
Source: H:\16 ���������Ŀ\finish\payout\New Folder\PersonPayOut.exe; DestDir: {app}; Flags: ignoreversion
Source: H:\16 ���������Ŀ\finish\payout\New Folder\����.txt; DestDir: {app}; Flags: ignoreversion
Source: H:\16 ���������Ŀ\finish\payout\New Folder\��ݼ�.txt; DestDir: {app}; Flags: ignoreversion
Source: H:\16 ���������Ŀ\finish\payout\New Folder\����20090331.txt; DestDir: {app}; Flags: ignoreversion
Source: H:\16 ���������Ŀ\finish\payout\New Folder\Money.mdb; DestDir: {app}; Flags: ignoreversion
Source: H:\16 ���������Ŀ\finish\payout\New Folder\PersonInOut.ini; DestDir: {app}; Flags: ignoreversion
Source: H:\16 ���������Ŀ\finish\payout\New Folder\PersonPayOut.exe; DestDir: {app}; Flags: ignoreversion
Source: H:\16 ���������Ŀ\finish\payout\New Folder\RegEnc.dll; DestDir: {app}; Flags: ignoreversion
; ע��: ��Ҫ���κι���ϵͳ�ļ���ʹ�á�Flags: ignoreversion��

[Icons]
Name: {group}\�����������2009; Filename: {app}\PersonPayOut.exe; WorkingDir: {app}; IconIndex: 0
Name: {group}\{cm:UninstallProgram,�����������2009}; Filename: {uninstallexe}; WorkingDir: {app}
Name: {userdesktop}\�����������2009; Filename: {app}\PersonPayOut.exe; Tasks: desktopicon; WorkingDir: {app}; IconIndex: 0
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\�����������2009; Filename: {app}\PersonPayOut.exe; Tasks: quicklaunchicon; WorkingDir: {app}; IconIndex: 0

[Run]
Filename: {app}\PersonPayOut.exe; Description: {cm:LaunchProgram,�����������2009}; Flags: nowait postinstall skipifsilent

