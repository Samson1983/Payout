unit NameAnalyUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DBCtrls, Grids, DBGridEh, ExtCtrls, Series,
  TeEngine, TeeFunci, TeeProcs, Chart, DbChart, DB, Buttons, ActnList,
  PrnDbgeh, GridsEh,EhLibADO, Mask, RzEdit, RzSpnEdt;

type
  TNameAnalyseFrm = class(TForm)
    DBChart1: TDBChart;
    PieSers: TPieSeries;
    Panel1: TPanel;
    Splitter1: TSplitter;
    DBGridEh3: TDBGridEh;
    DBGridEh2: TDBGridEh;
    RaBut_Year: TRadioButton;
    RaBut_Month: TRadioButton;
    NameAnayMastDS: TDataSource;
    NameAnayDelitaDS: TDataSource;
    ActionList1: TActionList;
    actQuery: TAction;
    actBar: TAction;
    actLine: TAction;
    actPie: TAction;
    actClose: TAction;
    SpeedButton2: TSpeedButton;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    SpeedButton1: TSpeedButton;
    PrintAct: TAction;
    PrintDBGridEh1: TPrintDBGridEh;
    PrintDBGridEh2: TPrintDBGridEh;
    Edt_Year: TRzSpinEdit;
    Edt_Month: TRzSpinEdit;
    procedure DBGridEh3CellClick(Column: TColumnEh);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure actQueryExecute(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure PrintActExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure NameAnayMastQryAfterScroll(DataSet: TDataSet);

  end;

var
  NameAnalyseFrm: TNameAnalyseFrm;

implementation

uses ResPubUnit, DataModuleUnit;

{$R *.dfm}

procedure TNameAnalyseFrm.DBGridEh3CellClick(Column: TColumnEh);
begin
  DBNavigator1.DataSource := NameAnayDelitaDS;
  {
  PieSers.DataSource := ExpensenDM.NameAnayDelitaQry;
  PieSers.Title := 'PieSeries';
  PieSers.XLabelsSource := ExpensenDM.NameAnayDelitaQry.FieldValues['日期'];
  PieSers.xl
  PieSers.PieValues     := ExpensenDM.NameAnayDelitaQry.FieldValues['金额'];

  DBChart1.CheckDataSource(PieSers);
  }
end;

procedure TNameAnalyseFrm.DBGridEh2CellClick(Column: TColumnEh);
begin
  DBNavigator1.DataSource := NameAnayMastDS;
  {
  PieSers.DataSource := ExpensenDM.NameAnayDelitaQry;
  PieSers.Title := 'PieSeries';
  PieSers.XLabelsSource := '消费名称' ;
  PieSers.PieValues:= '总额';
  DBChart1.CheckDataSource(PieSers);   }
end;

procedure TNameAnalyseFrm.actQueryExecute(Sender: TObject);
begin
  ExpensenDM.NameAnayMastQry.Close;
  ExpensenDM.NameAnayDelitaQry.Close;
  if (RaBut_Year.Checked) then
  begin
    with ExpensenDM do
    begin
      NameAnayMastQry.Parameters.ParamByName('Yea').Value := Edt_Year.Value;
      NameAnayMastQry.Open;
      NameAnayDelitaQry.Parameters.ParamByName('Name').Value := NameAnayMastQry.fieldByName('消费名称').Value;
      NameAnayDelitaQry.Parameters.ParamByName('Yea').Value := Edt_Year.Value;
      NameAnayDelitaQry.Open;
    end;
  end
  else
    if (RaBut_Month.Checked) then
    begin
      with ExpensenDM do
      begin
        NameAnayMastQry.Parameters.ParamByName('Yea').Value := Edt_Year.Value;
        NameAnayMastQry.Parameters.ParamByName('Mon').Value := Edt_Month.Value;
        NameAnayMastQry.Open;

        NameAnayDelitaQry.Parameters.ParamByName('Yea').Value := Edt_Year.Value;
        NameAnayDelitaQry.Parameters.ParamByName('Name').Value := NameAnayMastQry.fieldByName('消费名称').Value;
        NameAnayDelitaQry.Open;
      end;
    end;
end;

procedure TNameAnalyseFrm.NameAnayMastQryAfterScroll(DataSet: TDataSet);
begin

end;

procedure TNameAnalyseFrm.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TNameAnalyseFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  NameAnayMastDS.DataSet.Close;
  NameAnayDelitaDS.DataSet.Close;
  Action := CaFree;
end;

procedure TNameAnalyseFrm.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  ResPubFrm.DBGridEhDrawRec(Rect, DataCol, Column, State, DBGridEh2);
end;

procedure TNameAnalyseFrm.DBGridEh3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  ResPubFrm.DBGridEhDrawRec(Rect, DataCol, Column, State, DBGridEh3);
end;

procedure TNameAnalyseFrm.PrintActExecute(Sender: TObject);
begin
  DBChart1.Print;
  PrintDBGridEh1.Print;
  PrintDBGridEh2.Print;
end;

procedure TNameAnalyseFrm.FormShow(Sender: TObject);
const
  Y : string = 'yyyy';
    M : string = 'mm';
begin

  Edt_Year.Text :=  FormatDateTime(Y,Now);
  Edt_Month.Text := FormatDateTime(M,Now);
end;

end.
