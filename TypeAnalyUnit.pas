unit TypeAnalyUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DBCtrls, Grids, DBGridEh, ExtCtrls, Series,
  TeEngine, TeeFunci, TeeProcs, Chart, DbChart, DB, Buttons, ActnList,
  ADODB, PrnDbgeh, GridsEh,EhLibADO;

type
  TTypeAnalyseFrm = class(TForm)
    DS_TypeS: TDataSource;
    DS_TypeC: TDataSource;
    Panel2: TPanel;
    Splitter2: TSplitter;
    DBGridEh_DayC: TDBGridEh;
    DBGridEh_MontS: TDBGridEh;
    Panel1: TPanel;
    UpDown1: TUpDown;
    Edt_Year: TEdit;
    Edt_month: TEdit;
    UpDown2: TUpDown;
    Label1: TLabel;
    Label2: TLabel;
    ActionList1: TActionList;
    SpeedButton2: TSpeedButton;
    actQuery: TAction;
    actLine: TAction;
    actPie: TAction;
    actClose: TAction;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    actPrint: TAction;
    PrintDBGridEh1: TPrintDBGridEh;
    PrintDBGridEh2: TPrintDBGridEh;
    DBChart1: TDBChart;
    PieSers: TPieSeries;
    DBNavigator1: TDBNavigator;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh_MontSCellClick(Column: TColumnEh);
    procedure actCloseExecute(Sender: TObject);
    procedure actQueryExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh_MontSDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure DBGridEh_DayCDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure actPrintExecute(Sender: TObject);
    procedure DBGridEh_DayCCellClick(Column: TColumnEh);
  private
  public
    { Public declarations }
  end;

var
  TypeAnalyseFrm: TTypeAnalyseFrm;

//--------------------------------------------------------------------------------------------
implementation

uses ResPubUnit, DataModuleUnit;

{$R *.dfm}

procedure TTypeAnalyseFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TTypeAnalyseFrm.DBGridEh_MontSCellClick(Column: TColumnEh);
begin
  DBNavigator1.DataSource := DS_TypeS;
  DBGridEh_DayC.SumList.Active := False; //refersh sumlist
  DBGridEh_DayC.SumList.Active := True;

end;

procedure TTypeAnalyseFrm.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TTypeAnalyseFrm.actQueryExecute(Sender: TObject);
begin
  if (Updown2.Position <> 0) then // differ Year and Month SQL Langane
  begin
    ExpensenDM.SwtConsTypAnlySQL(false); //switch month sql
    ExpensenDM.adoQ_ConsumeTypeS.Parameters.ParamByName('MonthA').Value := Updown2.Position;
    ExpensenDM.adoQ_ConsumeTypeC.Parameters.ParamByName('MonthA').Value := Updown2.Position;
  end
  else
  begin
    ExpensenDM.SwtConsTypAnlySQL(true); //switch year sql
  end;
  ExpensenDM.adoQ_ConsumeTypeS.Parameters.ParamByName('YearA').Value := Updown1.Position;
  ExpensenDM.adoQ_ConsumeTypeC.Parameters.ParamByName('YearA').Value := Updown1.Position;

  if (ExpensenDM.adoQ_ConsumeTypeS.Active) then //refresh
  begin
    ExpensenDM.adoQ_ConsumeTypeS.Active := False;
    ExpensenDM.adoQ_ConsumeTypeC.Active := False;
  end;
  ExpensenDM.adoQ_ConsumeTypeS.DisableControls;
  ExpensenDM.adoQ_ConsumeTypec.DisableControls;
  ExpensenDM.adoQ_ConsumeTypeS.Active := True;
  ExpensenDM.adoQ_ConsumeTypeC.Active := True;
  ExpensenDM.adoQ_ConsumeTypeS.EnableControls;
  ExpensenDM.adoQ_ConsumeTypec.EnableControls;

end;

procedure TTypeAnalyseFrm.FormShow(Sender: TObject);
const
  Y : string = 'yyyy';
    M : string = 'mm';
begin

  Edt_Year.Text :=  FormatDateTime(Y,Now);
  Edt_Month.Text := FormatDateTime(M,Now);

  ResPubFrm.DBGridEhSortSupport(DBGridEh_MontS);
  ResPubFrm.DBGridEhSortSupport(DBGridEh_DayC);
end;

procedure TTypeAnalyseFrm.DBGridEh_MontSDrawColumnCell
(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
State: TGridDrawState);
begin
  ResPubFrm.DBGridEhDrawRec(Rect, DataCol, Column, State, DBGridEh_MontS);
end;

procedure TTypeAnalyseFrm.DBGridEh_DayCDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  ResPubFrm.DBGridEhDrawRec(Rect, DataCol, Column, State, DBGridEh_DayC);
end;


procedure TTypeAnalyseFrm.actPrintExecute(Sender: TObject);
begin
  DBChart1.Print;
  PrintDBGridEh1.Print;
  PrintDBGridEh2.Print;
end;

procedure TTypeAnalyseFrm.DBGridEh_DayCCellClick(Column: TColumnEh);
begin
DBNavigator1.DataSource := DS_TypeC;
end;

end.
