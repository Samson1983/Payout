unit IncomeUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, ExtCtrls, DBCtrls, Grids, DBGrids, DBGridEh,
  Buttons, TeEngine, Series, TeeProcs, Chart, DbChart, GridsEh,EhLibADO,
  ADODB, PropFilerEh, PropStorageEh;

type
  TIncomeFrm = class(TForm)
    DS_ALLIN: TDataSource;
    Splitter1: TSplitter;
    DBGridEh1: TDBGridEh;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    adoQurIn: TADOQuery;
    adoQurInDSDesigner2: TDateTimeField;
    adoQurInDSDesigner3: TWideStringField;
    adoQurInDSDesigner4: TBCDField;
    adoQurInDSDesigner5: TWideStringField;
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1TitleClick(Column: TColumnEh);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure adoQurInDSDesigner2SetText(Sender: TField;
      const Text: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IncomeFrm: TIncomeFrm;

implementation

uses ResPubUnit, DataModuleUnit, MainUnit,PayOutUnit, InComeTypeEditUnit;

{$R *.dfm}

procedure TIncomeFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DS_ALLIN.DataSet.Close;
  ExpensenDM.InLinkComeType.Close;
  Action := CaFree;
end;

procedure TIncomeFrm.FormCreate(Sender: TObject);
begin
  DS_ALLIN.DataSet.Open;
  Self.FormStyle := fsMDIChild;
  ExpensenDM.InLinkComeType.Open ;
  if not ExpensenDM.InLinkComeType.IsEmpty then
  begin
    ExpensenDM.InLinkComeType.First;
    DBGridEh1.Columns[1].PickList.Clear;
    while not ExpensenDM.InLinkComeType.Eof do
    begin
      DBGridEh1.Columns[1].PickList.Add(ExpensenDM.InLinkComeType.FieldByName('收入类型').AsString);
      ExpensenDM.InLinkComeType.Next;
    end;
  end;
end;

procedure TIncomeFrm.DBGridEh1TitleClick(Column: TColumnEh);
begin
//  ResPubFrm.DBGridEhTitleSort(Column);
end;

procedure TIncomeFrm.FormShow(Sender: TObject);
begin
  ResPubFrm.DBGridEhSortSupport(DBGridEh1);
end;

procedure TIncomeFrm.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TIncomeFrm.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
    if DBGridEh1.SelectedRows.Count <= 1 then
    if DBGridEh1.DataSource.Dataset.RecNo mod 2 = 0 then
      DBGridEh1.Canvas.Brush.Color := $00FAE3D3 //定义背景颜色
    else
      DBGridEh1.Canvas.Brush.Color := clWhite; //定义背景颜色

  if (gdSelected in State) and (gdFocused in State) then
    DBGridEh1.Canvas.Font.Color := clBlue;


  if (Rect.Top = DBGridEh1.CellRect(DBGridEh1.Col,DBGridEh1.Row).Top) and (not (gdFocused in State) or not DBGridEh1.Focused) then
    DBGridEh1.Canvas.Brush.Color :=clSkyBlue;//clAqua;
  DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TIncomeFrm.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key <>#27 then
   k1 := False;
 MainFrm.all_DBGridEh1KeyPress(Sender, Key);
end;

procedure TIncomeFrm.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if key =vk_F2 then
   k1 := False;

   MainFrm.All_DBGridEh1KeyDown(Sender, key, Shift);

end;

procedure TIncomeFrm.adoQurInDSDesigner2SetText(Sender: TField;
  const Text: String);
begin
try         
if DBGridEh1.InplaceEditor <> nil then
    begin
      adoQurIn.FieldByName('日期').AsString := DBGridEh1.InplaceEditor.Text;
      end;
 except
    MessageBox(0,PChar('日期不对：'+text), '错误',MB_OK + MB_ICONSTOP);
   end;

end;

end.

