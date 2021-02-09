unit AboutUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Buttons, RzPanel, RzRadGrp, RzLabel
  , MainUnit,Registry;

type
  TAboutFrm = class(TForm)
    Image1: TImage;
    Label2: TLabel;
    Button1: TButton;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure RzURLLabel1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RzURLLabel2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutFrm: TAboutFrm;
  imgtrue : Boolean = True;
implementation

uses Unit4;

{$R *.dfm}

procedure TAboutFrm.FormCreate(Sender: TObject);
begin
Image1.Picture.Icon := Application.Icon;
Label2.Caption := Application.Title;

    with TRegistry.Create do
    begin
     RootKey := HKEY_CURRENT_USER;
      if OpenKey('Software\Microsoft\Windows\Money',True) then
         begin
           if not ValueExists('aboutfrmbReg') then
                 aboutfrmbReg := True;

            if aboutfrmbReg <> Boolean(1) then
              Button1.Visible :=False
              else
              Button1.Visible := True;
         end;
    end;

end;

procedure TAboutFrm.RzURLLabel1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   FreeAndNil(AboutFrm);
end;

procedure TAboutFrm.Image2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  FreeAndNil(AboutFrm);
end;

procedure TAboutFrm.Image4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
FreeAndNil(AboutFrm);
end;

procedure TAboutFrm.RzURLLabel2MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
FreeAndNil(AboutFrm);
end;

procedure TAboutFrm.Button1Click(Sender: TObject);
begin
    if not(Assigned(form4)) then
        form4:=Tform4.Create(Application);  
        Form4.ShowModal;
end;

procedure TAboutFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(AboutFrm);
end;

end.

