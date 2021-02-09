unit InComeTypeEditUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGridEh, DBCtrls, Buttons, ExtCtrls, GridsEh,EhLibADO,
  ADODB, PropFilerEh, PropStorageEh;

type
  TInComeTypeEditFrm = class(TForm)
    DBGridEh1: TDBGridEh;
    DS_ConsumeType: TDataSource;
    InComeType: TADOQuery;
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InComeTypeEditFrm: TInComeTypeEditFrm;

implementation

uses DataModuleUnit, ResPubUnit, MainUnit,PayOutUnit;

{$R *.dfm}

procedure TInComeTypeEditFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DS_ConsumeType.DataSet.Close;
  Action := CaFree;
end;

procedure TInComeTypeEditFrm.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if DBGridEh1.SelectedRows.Count <= 1 then
  ResPubFrm.DBGridEhDrawRec(Rect, DataCol, Column, State, DBGridEh1);
  
  if (Rect.Top = DBGridEh1.CellRect(DBGridEh1.Col,DBGridEh1.Row).Top) and (not (gdFocused in State) or not DBGridEh1.Focused) then
    DBGridEh1.Canvas.Brush.Color :=clSkyBlue;//clAqua;
  DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);

  
end;


procedure TInComeTypeEditFrm.FormShow(Sender: TObject);
begin
  DS_ConsumeType.DataSet.Open;
end;

procedure TInComeTypeEditFrm.DBGridEh1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

  if key =vk_F2 then
   k1 := False;

   MainFrm.All_DBGridEh1KeyDown(Sender, key, Shift);

end;

procedure TInComeTypeEditFrm.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if key <>#27 then
   k1 := False;
 MainFrm.all_DBGridEh1KeyPress(Sender, Key);

end;

end.

