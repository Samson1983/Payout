unit U_login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,IniFiles, ImgList,Registry;

type
  TF_login = class(TForm)
    edt_ID: TEdit;
    edt_password: TEdit;
    Image1: TImage;
    ImageList1: TImageList;
    Timer1: TTimer;
    Image2: TImage;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    procedure edt_IDKeyPress(Sender: TObject; var Key: Char);
    procedure edt_passwordKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure createODBC(sender: TObject);
    { Private declarations }
  public
  


    { Public declarations }
  end;

var
  F_login: TF_login;
  i: Integer=0;
  yes :Boolean;
  authority: Integer;
  ID,password : string;



implementation

uses DataModuleUnit, MainUnit, U_wait,usersF;



{$R *.dfm}


procedure TF_login.edt_IDKeyPress(Sender: TObject; var Key: Char);
begin
if Key =#13 then
  edt_password.SetFocus;
  
      case Key of
        '0'..'9','a'..'z','A'..'Z', #8, #13, #27: ;
        else
        Key := #0;
        end;

end;


procedure TF_login.edt_passwordKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
           ID := f_login.edt_ID.Text ;      //得到用户名
           password := f_login.edt_password.Text;     //得到密码

    if not(Assigned(F_PleaseWait)) then
     begin
       F_PleaseWait:= TF_PleaseWait.Create(Application);

      end;
      F_PleaseWait.Show;
try
 //用户认证
   with  ExpensenDM.ADOpassword do
    begin
      Close;
      SQL.Text:='select count(name) as counts from users where name='+''''+ID+''''+' and pass_word ='+''''+Fusers.StringEncrypt(password)+'''';
       Open;
       F_PleaseWait.ProgressBar1.Position := 50;
       if (FieldValues['counts'] = 1) then  //判断返回返
       begin
        Close;
        F_PleaseWait.ProgressBar1.Position := 70;
        MainFrm.Show;
        yes := True;
        F_PleaseWait.ProgressBar1.Position := 100;
        FreeAndNil(F_PleaseWait);
        f_login.Close;
        end
        else
        begin
        FreeAndNil(F_PleaseWait);
        MessageBox(Handle,'密码不正确!','信息',32);
        edt_password.Text := '';
        end;

     end;

    except
      MessageBox(Handle, '数据库不存在!', '信息', MB_OK + MB_ICONSTOP);
     Application.Terminate;
    end;
    end;

end;

procedure TF_login.FormClose(Sender: TObject; var Action: TCloseAction);
begin
try
if not yes then
FreeAndNil(MainFrm);
finally
   action :=caFree; 
  end;

end;

procedure TF_login.Timer1Timer(Sender: TObject);
begin
if Image2.Visible then
 Image2.Visible := False
else
 Image2.Visible := True;
end;

procedure TF_login.createODBC(sender: TObject);
var
  reg : TRegistry;
  data: array[0..0]of byte;
begin
  reg := TRegistry.Create;
  with reg do
  begin
    RootKey := HKEY_CURRENT_USER;
    if OpenKey('Software\ODBC\ODBC.INI\ODBC Data Sources',True) then
    if not ValueExists('Money') then
    begin
      WriteString('Money','Microsoft Access Driver (*.mdb)');
    end
    else
    begin
      Exit
    end;
    CloseKey;
    if OpenKey('Software\ODBC\ODBC.INI\Money',True) then
    begin
      WriteString('DBQ',ExtractFilePath(paramstr(0))+'Money.mdb');
      WriteString('description','个人理财助手2009');
      WriteString('Driver','c:\WINDOWS\SYSTEM\ODBCJT32.dll');
      WriteInteger('DriverId',25);
      WriteString('FIL','MS Access;');
      WriteInteger('Safe Transaction',0);
      WriteString('UID','');
      Data[0]:= 0 ;
      WriteBinaryData('Exclusive',Data,1);
      WriteBinaryData('ReadOnly',Data,1);
   end
   else
   begin
     ShowMessage('数据源添加失败。');
     Exit;
   end;
   CloseKey;
   if OPenKey('Software\ODBC\ODBC.INI\first\Engines\Jet',True)then
   begin
     WriteString('ImplicitCommitSync','');
     WriteInteger('MaxBufferSize',2048);
     WriteInteger('PageTimeout',5);
     WriteInteger('Threads',3);
     WriteString('UserCommitSync','yes');
   end
   else
   begin
     ShowMessage('数据源添加失败。');
     Exit;
   end;
   CloseKey;
//   ShowMessage('数据源添加成功。');
   Free;
  end;
end;

procedure TF_login.FormCreate(Sender: TObject);
begin
//createODBC(sender);
end;

end.
