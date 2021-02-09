unit usersF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, StdCtrls, Mask, RzEdit;

type
  TFusers = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RzEdit1: TRzEdit;
    RzEdit2: TRzEdit;
    RzEdit3: TRzEdit;
    RzBitBtn1: TRzBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RzEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure RzEdit3KeyPress(Sender: TObject; var Key: Char);
  private

    { Private declarations }
  public
        function StringEncrypt(S: string): string;
    { Public declarations }
  end;

var
  Fusers: TFusers;


implementation

uses DataModuleUnit, MainUnit, U_wait, U_login;

{$R *.dfm}


{简单自定义加密}
  function  TFusers.StringEncrypt(S:   string):   string;
  var   
      i:   Byte;   
  begin   
      for   i   :=   1   to   Length(S)   do   
          S[i]   :=   Char(i   or   $75   xor   ord(S[i]));   
      Result   :=   S;   
  end;

procedure TFusers.RzBitBtn1Click(Sender: TObject);
begin
  try
  if Trim(RzEdit1.Text)<>'' then
   begin

        ExpensenDM.ADOpassword.Close;
        ExpensenDM.ADOpassword.SQL.Text:='update users set name='+''''+RzEdit1.Text+'''';
         ExpensenDM.ADOpassword.ExecSQL;
        Label5.Caption := RzEdit1.Text;
         MessageBox(Handle,'修改用户名成功!','信息',32);
     end
     else
         MessageBox(Handle,'修改用户名失败!','信息',32);

   if RzEdit2.Text = RzEdit3.Text then
     with  ExpensenDM.ADOpassword do
      begin
        Close;
        ExpensenDM.ADOpassword.SQL.Text:='update users set pass_word='+''''+StringEncrypt(RzEdit2.Text)+'''';
        ExecSQL;
        Close;
         MessageBox(Handle,'修改密码成功!','信息',32);
       end
       else
        MessageBox(Handle,'修改密码失败!','信息',32);
 finally

  Fusers.Close;
 end;



end;

procedure TFusers.FormShow(Sender: TObject);
begin
  Label5.Caption := ID;
end;

procedure TFusers.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action :=caFree;

end;

procedure TFusers.RzEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key =#13 then
  RzEdit2.SetFocus;

end;

procedure TFusers.RzEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if key =#13 then
  RzEdit3.SetFocus;
end;

procedure TFusers.RzEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if key =#13 then
  RzBitBtn1.SetFocus;
end;

end.
