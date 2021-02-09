unit AllPayOutUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, ExtCtrls, DBCtrls, Grids, DBGrids, DBGridEh, ADODB,
  StdCtrls, Buttons, GridsEh, Mask, RzEdit, RzSpnEdt,EhLibADO, PropFilerEh,
  PropStorageEh, Menus;

type
  TAllPayOutFrm = class(TForm)
    DBGridEh1: TDBGridEh;

    DS_AllOut: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    YearEdit: TRzSpinEdit;
    MonthEdit: TRzSpinEdit;
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1TitleClick(Column: TColumnEh);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


//--------------------------------------------------------------------------------------------------
var
  AllPayOutFrm: TAllPayOutFrm;

implementation

uses ResPubUnit, DataModuleUnit;

{$R *.dfm}

procedure TAllPayOutFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin

//  ConSumeTypeSoucre.DataSet.Close;
  DS_AllOut.DataSet.Close;
  Action := caFree;
end;


procedure TAllPayOutFrm.FormShow(Sender: TObject);
//var
//  TypeStrings: TStringList;
//  i: integer;
//  ADOTab: TADOQuery;
begin
// // Self.FormStyle := fsMDIChild;
//  ConSumeTypeSoucre.DataSet.Open;
//  TypeStrings := TStringList.Create; //主要填充消费类型给PickList
//  ADOTab := (ConSumeTypeSoucre.DataSet) as TADOQuery;
//  ADOTab.Open;
//  for i := 1 to ADOTab.RecordCount do
//  begin
//    TypeStrings.Add(ADOTab.FieldByName('消费类型').AsString);
//    ADOTab.Next;
//  end;
//
//  DBGridEh1.Columns[4].PickList := TypeStrings;

//  ResPubFrm.DBGridEhSortSupport(DBGridEh1); //排序支持
  YearEdit.Value := StrToInt(FormatDateTime('yyyy',Now));
    MonthEdit.Value := StrToInt(FormatDateTime('mm',Now));


end;

procedure TAllPayOutFrm.DBGridEh1TitleClick(Column: TColumnEh);
begin
//  ResPubFrm.DBGridEhTitleSort(Column); //启动排序
end;

procedure TAllPayOutFrm.SpeedButton1Click(Sender: TObject);
var //分别根据年月来查询
  Month, Year: integer;
begin
  Month := 0;
  Year := 0;


  ExpensenDM.QueryAllOut(YearEdit.IntValue, MonthEdit.IntValue);
end;

procedure TAllPayOutFrm.SpeedButton2Click(Sender: TObject);
begin
  close;
end;

procedure TAllPayOutFrm.DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin //各行色
//  ResPubFrm.DBGridEhDrawRec(Rect, DataCol, Column, State, DBGridEh1);
end;

procedure TAllPayOutFrm.SpeedButton3Click(Sender: TObject);
begin
  ExpensenDM.QuryAllOut.Active := False;
  ExpensenDM.QuryAllOut.SQL.Text := 'Select * From 支出 ';
  ExpensenDM.QuryAllOut.Open; //全部打开
end;

end.
