unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,Registry, RzLabel, jpeg, RzPanel, RzRadGrp;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel2: TPanel;
    Timer1: TTimer;
    Timer2: TTimer;
    Image2: TImage;
    Image4: TImage;
    RzURLLabel1: TRzURLLabel;
    RzURLLabel2: TRzURLLabel;
    RzURLLabel3: TRzURLLabel;
    RzURLLabel4: TRzURLLabel;
    Memo1: TMemo;
    Image1: TImage;
    Label2: TLabel;
    Button2: TButton;
    GroupBox1: TGroupBox;
    Button1: TButton;
    RzURLLabel5: TRzURLLabel;
    Label3: TLabel;
    Label1: TLabel;
    procedure Timer2Timer(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RzURLLabel3Click(Sender: TObject);
    procedure RzURLLabel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
    edtCode: string;
    imgtrue : Boolean = True;
    chek : Boolean;
    aBol : Boolean = False;
implementation


uses DesHex64, HardInfo, MACAddressInfo, CodeEncDec,pa,MainUnit;

{$R *.dfm}


		//说明加密DLL模块内的函数
		function RE_GetDllSignature(sUserKey:string; sSignature:PChar):Integer; stdcall;
    external 'RegEnc.dll';

		function RE_RunItOnStart(iType,iParam:Integer; sProgramID:string; EncodeNum:Integer):Integer; stdcall;
    external 'RegEnc.dll';

		function RE_GetRegStatus():Integer; stdcall;
    external 'RegEnc.dll';

		function RE_GetRemainingTimes():Integer; stdcall;
    external 'RegEnc.dll';

 		function RE_GetRemainingDays():Integer;  stdcall;
    external 'RegEnc.dll';

 		function RE_Register(sProgramID:string; EncodeNum:Integer; sRegCode:string):Integer; stdcall;
    external 'RegEnc.dll';

 		function RE_GetSystemID(sSystemID:pchar):Integer; stdcall;
    external 'RegEnc.dll';

 		function RE_GetRegCode(sSystemID:string; EncodeNum:Integer; sRegCode:PChar):Integer; stdcall;
    external 'RegEnc.dll';

 		function RE_ClearRegInfo(sProgramID:string; EncodeNum:Integer):Integer; stdcall;
    external 'RegEnc.dll';

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if aBol then
   Application.Terminate;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
Image1.Picture.Icon := Application.Icon;
Label2.Caption := Application.Title;

 Label3.Caption :='是款付费软件,你只需要'+#13+
    '向作者支付9.9元表示支持' + #13 +
    '就可能长期使用。'+#13+
    'QQ:289355319';


end;

procedure TForm4.Image2Click(Sender: TObject);
begin
 RzURLLabel1.Click;
end;

procedure TForm4.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 Image2.Cursor := crHandPoint;
end;

procedure TForm4.Image4Click(Sender: TObject);
begin
 RzURLLabel2.Click;
end;

procedure TForm4.Image4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 Image4.Cursor := crHandPoint;
end;

procedure TForm4.Timer2Timer(Sender: TObject);
begin
   if imgtrue then
    begin
     Image2.Top := Image2.Top+2;
     Image4.Top := Image4.Top+2;
     imgtrue := False;
    end
    else
    begin
     Image2.Top := Image2.Top-2;
     Image4.Top := Image4.Top-2;
     imgtrue := True;
    end;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
    if not(Assigned(form3)) then
        form3:=Tform3.Create(Application);
        Form3.Show;
end;

procedure TForm4.RzURLLabel3Click(Sender: TObject);
begin
 RzURLLabel1.Click;
end;

procedure TForm4.RzURLLabel1Click(Sender: TObject);
begin
Button1Click(Sender);
end;

end.
