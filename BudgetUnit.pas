unit BudgetUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, DB, ComCtrls, DBGridEh,
  Buttons, TeEngine, Series, TeeProcs, Chart, DbChart, GridsEh,
  PropFilerEh, PropStorageEh;

type
  TBudgetFrm = class(TForm)
    DS_Budget: TDataSource;
    DBGridEh1: TDBGridEh;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    Series2: TBarSeries;
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1TitleClick(Column: TColumnEh);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
//--------------------------------------------------------------------------------------------------
var
  BudgetFrm: TBudgetFrm;

implementation

uses ResPubUnit, DataModuleUnit,PayOutUnit, MainUnit;

{$R *.dfm}

procedure TBudgetFrm.FormCreate(Sender: TObject);
begin
  DS_Budget.DataSet.Open;
  Self.FormStyle := fsMDIChild;
end;

procedure TBudgetFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DS_Budget.DataSet.Close;
  Action := caFree;
end;

procedure TBudgetFrm.DBGridEh1TitleClick(Column: TColumnEh);
begin
//  ResPubFrm.DBGridEhTitleSort(Column);
end;

procedure TBudgetFrm.FormShow(Sender: TObject);
begin
  ResPubFrm.DBGridEhSortSupport(DBGridEh1);
  DBChart1.Title.Text.Strings[0] := '‘§À„¿˝Õº';
  DBChart1.SeriesDown(DBChart1.Series[0]);
end;

procedure TBudgetFrm.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TBudgetFrm.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
    ResPubFrm.DBGridEhDrawRec(Rect, DataCol, Column, State, DBGridEh1);
    
   if (Rect.Top = DBGridEh1.CellRect(DBGridEh1.Col,DBGridEh1.Row).Top) and (not (gdFocused in State) or not DBGridEh1.Focused) then
    DBGridEh1.Canvas.Brush.Color :=clSkyBlue;//clAqua;
  DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);

 
end;

procedure TBudgetFrm.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key <>#27 then
   k1 := False;
 MainFrm.all_DBGridEh1KeyPress(Sender, Key);
end;

procedure TBudgetFrm.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key =vk_F2 then
   k1 := False;

   MainFrm.All_DBGridEh1KeyDown(Sender, key, Shift);
end;

end.
