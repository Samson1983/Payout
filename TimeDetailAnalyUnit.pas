unit TimeDetailAnalyUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Series, StdCtrls, TeEngine, TeeFunci, ExtCtrls, TeeProcs, Chart,
  DbChart, ComCtrls, DBCtrls, DB, Grids, DBGrids, DBGridEh;

type
  TTimeDetailAnalyFrm = class(TForm)
    DBChart1: TDBChart;
    LinSers: TLineSeries;
    BarSers: TBarSeries;
    PieSers: TPieSeries;
    Button3: TButton;
    Button2: TButton;
    But_Line: TButton;
    DS_MonthS: TDataSource;
    StatusBar1: TStatusBar;
    UpDown1: TUpDown;
    Edt_Year: TEdit;
    Ds_DayC: TDataSource;
    Button1: TButton;
    Panel2: TPanel;
    Splitter2: TSplitter;
    DBGridEh_DayC: TDBGridEh;
    DBGridEh_MontS: TDBGridEh;
    DBGridEh_DayS: TDBGridEh;
    Splitter1: TSplitter;
    Ds_DayS: TDataSource;
    procedure But_LineClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh_MontSCellClick(Column: TColumnEh);
    procedure DBGridEh_DaySCellClick(Column: TColumnEh);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TimeDetailAnalyFrm: TTimeDetailAnalyFrm;

implementation

uses DataModul;

{$R *.dfm}

procedure TTimeDetailAnalyFrm.But_LineClick(Sender: TObject);
var
 i:Integer;
begin
 for i:=0 to DBChart1.SeriesCount-1 do
  DBChart1.SeriesList.Series[i].active:=False;
 DBChart1.SeriesList.Series[0].active:=true;
end;

procedure TTimeDetailAnalyFrm.Button2Click(Sender: TObject);
var
 i:Integer;
begin
 for i:=0 to DBChart1.SeriesCount-1 do
  DBChart1.SeriesList.Series[i].active:=False;
 DBChart1.SeriesList.Series[1].active:=true;
end;

procedure TTimeDetailAnalyFrm.Button3Click(Sender: TObject);
var
 i:Integer;
begin
 for i:=0 to DBChart1.SeriesCount-1 do
  DBChart1.SeriesList.Series[i].active:=False;
 DBChart1.SeriesList.Series[2].active:=true;
end;

procedure TTimeDetailAnalyFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ExpensenDM.adoQ_SomeMonthS.Active:=False;
  Action:=CaFree;
end;

procedure TTimeDetailAnalyFrm.Button1Click(Sender: TObject);
begin
          LinSers.DataSource:=ExpensenDM.adoQ_SomeMonthS;
          LinSers.XLabelsSource := '';
          LinSers.XValues.ValueSource := '月份';
          LinSers.YValues.ValueSource := '总额';
          BarSers.DataSource:=ExpensenDM.adoQ_SomeMonthS;
          BarSers.XLabelsSource := '';
          BarSers.XValues.ValueSource := '月份';
          BarSers.YValues.ValueSource := '总额';
          PieSers.DataSource:=ExpensenDM.adoQ_SomeMonthS;
          PieSers.XLabelsSource := '';
          PieSers.PieValues.ValueSource := '总额';
          ExpensenDM.adoQ_SomeMonthS.Parameters.ParamByName('YearA').Value:=UpDown1.Position;
          ExpensenDM.adoQ_SomeDayS.Parameters.ParamByName('YearA').Value:=UpDown1.Position;
          ExpensenDM.adoQ_SomeMonthS.Active:=True;
          ExpensenDM.adoQ_SomeDayS.Active:=True;
          ExpensenDM.adoQ_SomeDayC.Active:=True;
end;

procedure TTimeDetailAnalyFrm.FormShow(Sender: TObject);
begin
      Height:=505;
      Width:=752;
end;

procedure TTimeDetailAnalyFrm.DBGridEh_MontSCellClick(Column: TColumnEh);
begin
          LinSers.DataSource:=ExpensenDM.adoQ_SomeMonthS;
          LinSers.XLabelsSource := '';
          LinSers.XValues.ValueSource := '月份';
          LinSers.YValues.ValueSource := '总额';
          BarSers.DataSource:=ExpensenDM.adoQ_SomeMonthS;
          BarSers.XLabelsSource := '';
          BarSers.XValues.ValueSource := '月份';
          BarSers.YValues.ValueSource := '总额';
          PieSers.DataSource:=ExpensenDM.adoQ_SomeMonthS;
          PieSers.XLabelsSource := '';
          PieSers.PieValues.ValueSource := '总额';
end;

procedure TTimeDetailAnalyFrm.DBGridEh_DaySCellClick(Column: TColumnEh);
begin
          LinSers.DataSource:=ExpensenDM.adoQ_SomeDayS;
          LinSers.XLabelsSource := '';
          LinSers.XValues.ValueSource := '';
          LinSers.YValues.ValueSource := '总额';
          BarSers.DataSource:=ExpensenDM.adoQ_SomeDayS;
          BarSers.XLabelsSource := '';
          BarSers.XValues.ValueSource := '号';
          BarSers.YValues.ValueSource := '总额';
          PieSers.DataSource:=ExpensenDM.adoQ_SomeDayS;
          PieSers.XLabelsSource := '';
          PieSers.PieValues.ValueSource := '总额';

end;

end.
