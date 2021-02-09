unit ConsumeTypeUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ComCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, DBGridEh,EhLibADO,
  GridsEh, ADODB, PropFilerEh, PropStorageEh ;

type
  TConsumeTypeFrm = class(TForm)
    DS_ConsumeType: TDataSource;
    DBGridEh1: TDBGridEh;
    ConsumeType: TADOQuery;
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1TitleClick(Column: TColumnEh);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsumeTypeFrm: TConsumeTypeFrm;

implementation

uses ResPubUnit, DataModuleUnit, MainUnit,PayOutUnit;

{$R *.dfm}

procedure TConsumeTypeFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Self.DS_ConsumeType.DataSet.Close;
  Action := CaFree;
end;

procedure TConsumeTypeFrm.FormCreate(Sender: TObject);
begin
  Self.FormStyle := fsMDIChild;
  Self.DS_ConsumeType.DataSet.Open;
end;

procedure TConsumeTypeFrm.DBGridEh1TitleClick(Column: TColumnEh);
begin
//  ResPubFrm.DBGridEhTitleSort(Column);
end;

procedure TConsumeTypeFrm.FormShow(Sender: TObject);
begin
  ResPubFrm.DBGridEhSortSupport(DBGridEh1);
end;

procedure TConsumeTypeFrm.DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if DBGridEh1.SelectedRows.Count <= 1 then
         ResPubFrm.DBGridEhDrawRec(Rect, DataCol, Column, State, DBGridEh1);
         
   if (Rect.Top = DBGridEh1.CellRect(DBGridEh1.Col,DBGridEh1.Row).Top) and (not (gdFocused in State) or not DBGridEh1.Focused) then
    DBGridEh1.Canvas.Brush.Color :=clSkyBlue;//clAqua;
  DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);

  
end;

procedure TConsumeTypeFrm.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key =vk_F2 then
   k1 := False;

   MainFrm.All_DBGridEh1KeyDown(Sender, key, Shift);
end;

procedure TConsumeTypeFrm.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key <>#27 then
   k1 := False;
 MainFrm.all_DBGridEh1KeyPress(Sender, Key);
end;

end.
