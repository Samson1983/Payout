unit TimeAnalyUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Series, StdCtrls, TeEngine, TeeFunci, ExtCtrls, TeeProcs, Chart,
  DbChart, ComCtrls, DBCtrls, DB, Grids, DBGrids, DBGridEh, ADODB, Buttons,
  PrnDbgeh, GridsEh;

type
  TTimeAnalyseFrm = class(TForm)
    DS_MonthS: TDataSource;
    Ds_DayC: TDataSource;
    Panel2: TPanel;
    Splitter2: TSplitter;
    DBGridEh_DayC: TDBGridEh;
    DBGridEh_MontS: TDBGridEh;
    DBGridEh_DayS: TDBGridEh;
    Splitter1: TSplitter;
    Ds_DayS: TDataSource;
    Panel1: TPanel;
    Chart1: TChart;
    Panel3: TPanel;
    UpDown1: TUpDown;
    Edt_Year: TEdit;
    SpeedButton2: TSpeedButton;
    Series1: TBarSeries;
    SpeedButton1: TSpeedButton;
    PrintDBGridEh1: TPrintDBGridEh;
    PrintDBGridEh2: TPrintDBGridEh;
    PrintDBGridEh3: TPrintDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh_MontSCellClick(Column: TColumnEh);
    procedure DBGridEh_DaySCellClick(Column: TColumnEh);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGridEh_MontSDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure DBGridEh_DaySDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure DBGridEh_DayCDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
    IsMonthQuery: boolean;
  public
    { Public declarations }
    procedure DataDrawToChart(chart: Tchart; AdoQ: TADOQuery; FieldValue, FieldLabel: string);
  end;

var
  TimeAnalyseFrm: TTimeAnalyseFrm;


implementation

uses ResPubUnit, DataModuleUnit, MainUnit;

{$R *.dfm}

procedure TTimeAnalyseFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ExpensenDM.adoQ_SomeMonthS.Active := False;
  ExpensenDM.adoQ_SomeDayS.Active := False;
  ExpensenDM.adoQ_SomeDayC.Active := False;
  
  Action := CaFree;
end;

procedure TTimeAnalyseFrm.DataDrawToChart(chart: Tchart; AdoQ: TADOQuery; FieldValue,
  FieldLabel: string);
var //手工从数据集填加数据到Chart
  i, ReCount: integer;
begin
  ReCount := AdoQ.RecordCount;
  chart.Series[0].Active := False;
  chart.Series[0].Clear;

  for i := 1 to ReCount do
  begin
    chart.Series[0].AddXY(AdoQ.FieldByName(FieldLabel).AsInteger,
      AdoQ.FieldByName(FieldValue).AsFloat,
      FloatToStr(AdoQ.FieldByName(FieldLabel).AsInteger) + FieldLabel, clRed);
    AdoQ.Next();
  end;
  chart.Series[0].Active := true;
end;

procedure TTimeAnalyseFrm.DBGridEh_MontSCellClick(Column: TColumnEh);
begin
  ExpensenDM.adoQ_SomeDayS.DisableControls;
  DBGridEh_DayS.SumList.Active := false;
  DBGridEh_DayS.SumList.Active := true;
  DataDrawToChart(Chart1, ExpensenDM.adoQ_SomeDayS, '总额', '号');
  Chart1.Title.Text.Strings[0] := Edt_Year.Text + '年' + '月度' + '消费统计图';
  ExpensenDM.adoQ_SomeDayS.EnableControls;


end;

procedure TTimeAnalyseFrm.DBGridEh_DaySCellClick(Column: TColumnEh);
//var
//  Date, Year, Month, Day: string;
begin
  ExpensenDM.adoQ_SomeDayC.DisableControls;
  DBGridEh_DayC.SumList.Active := false;
  DBGridEh_DayC.SumList.Active := true;
  ExpensenDM.adoQ_SomeDayC.EnableControls;



//  Year := ExpensenDM.adoq_SomeMonthS.Parameters.ParamValues['YearA'];
//  Month := ExpensenDM.adoQ_SomeMonthS.Fields.FieldByName('月份').AsString;
//  Day := ExpensenDM.adoQ_SomeDayS.Fields.FieldByName('号').AsString;
//  Date := ''''+'%'+Year + '-' + Month + '-' + Day+'%'+'''';
//
//  with ExpensenDM.adoQ_SomeDayC do
//  begin
//    Close;
//    sql.Text := 'select * from 支出 where 日期 like '+date;
//    Open;
//  end;

end;

procedure TTimeAnalyseFrm.SpeedButton1Click(Sender: TObject);
begin
  Chart1.Print;
  PrintDBGridEh1.Print;
  PrintDBGridEh2.Print;
  PrintDBGridEh3.Print;
end;

procedure TTimeAnalyseFrm.SpeedButton2Click(Sender: TObject);
begin
  ExpensenDM.adoQ_SomeMonthS.Active := False;
  ExpensenDM.adoQ_SomeDayS.Active := False;
  ExpensenDM.adoQ_SomeDayC.Active := False;

  ExpensenDM.adoQ_SomeMonthS.Parameters.ParamByName('YearA').Value := UpDown1.Position;
  ExpensenDM.adoQ_SomeDayS.Parameters.ParamByName('YearA').Value := UpDown1.Position;
  ExpensenDM.adoQ_SomeDayC.Parameters.ParamByName('YearA').Value := UpDown1.Position;

  ExpensenDM.adoQ_SomeMonths.DisableControls;
  ExpensenDM.adoQ_SomeDayS.DisableControls;
  ExpensenDM.adoQ_SomeDayC.DisableControls;

  ExpensenDM.adoQ_SomeMonthS.Active := True;
  ExpensenDM.adoQ_SomeDayS.Active := True;
  ExpensenDM.adoQ_SomeDayC.Active := True;
  IsMonthQuery := True;
  DataDrawToChart(Chart1, ExpensenDM.adoQ_SomeMonthS, '总额', '月份');
  Chart1.Title.Text.Strings[0] := Edt_Year.Text + '年度' + '消费统计图';
  ExpensenDM.adoQ_SomeMonths.EnableControls;
  ExpensenDM.adoQ_SomeDayS.EnableControls;
  ExpensenDM.adoQ_SomeDayC.EnableControls;
  DBGridEh_MontS.SetFocus;
end;

procedure TTimeAnalyseFrm.DBGridEh_MontSDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  ResPubFrm.DBGridEhDrawRec(Rect, DataCol, Column, State, DBGridEh_MontS);
end;

procedure TTimeAnalyseFrm.DBGridEh_DaySDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  ResPubFrm.DBGridEhDrawRec(Rect, DataCol, Column, State, DBGridEh_DayS);
end;

procedure TTimeAnalyseFrm.DBGridEh_DayCDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  ResPubFrm.DBGridEhDrawRec(Rect, DataCol, Column, State, DBGridEh_DayC);
end;

procedure TTimeAnalyseFrm.FormShow(Sender: TObject);
const
  Y : string = 'yyyy';
    M : string = 'mm';
begin

  Edt_Year.Text :=  FormatDateTime(Y,Now);
 

end;

end.
