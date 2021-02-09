unit DataModuleUnit;

interface

uses
  SysUtils, Classes, ADODB, DB, Dialogs, DBGrids, DBGridEh,Windows
  ,PayOutUnit;


type
  TExpensenDM = class(TDataModule)
    ADOCon: TADOConnection;
    adoQ_SomeMonthS: TADOQuery;
    adoQ_SomeDayS: TADOQuery;
    adoQ_SomeDayC: TADOQuery;
    ds_SomeMonthS: TDataSource;
    adoQ_ConsumeTypeS: TADOQuery;
    adoQ_ConsumeTypeC: TADOQuery;
    ds_ConsumeType: TDataSource;
    QuryAllOut: TADOQuery;
    adoQryBudget: TADOQuery;
    adoQryConsumTypeIsNull: TADOQuery;
    adoQryConsumTypeIsNullID: TAutoIncField;
    adoQryConsumTypeIsNullDSDesigner: TDateTimeField;
    adoQryConsumTypeIsNullDSDesigner2: TWideStringField;
    adoQryConsumTypeIsNullDSDesigner3: TBCDField;
    adoQryConsumTypeIsNullDSDesigner4: TWideStringField;
    adoQryConsumTypeIsNullDSDesigner5: TWideStringField;
    NameAnaylseMasterDS: TDataSource;
    NameAnayDelitaQry: TADOQuery;
    Qry_ConsumTypeError: TADOQuery;
    ds_tabOfenConsumName: TDataSource;
    InComeAndPayOut: TADOQuery;
    ds_SomeDayS: TDataSource;
    ADOclear: TADOQuery;
    DSclear: TDataSource;
    ADOpassword: TADOQuery;
    DSpassword: TDataSource;
    exportXLS: TADOQuery;
    temp: TADOQuery;
    dsexportXLS: TDataSource;
    dstemp: TDataSource;
    InLinkComeType: TADOQuery;
    OutLinkComeType: TADOQuery;
    tabOfenConsumName: TADOQuery;
    NameAnayMastQry: TADOQuery;
    NameAnayMastQryDSDesigner: TWideStringField;
    NameAnayMastQryDSDesigner2: TBCDField;
    procedure adoQ_SomeMonthSBeforeOpen(DataSet: TDataSet);
    procedure adoQ_SomeMonthSAfterOpen(DataSet: TDataSet);
    procedure NameAnayMastQryAfterScroll(DataSet: TDataSet);
    procedure adoQ_ConsumeTypeCBeforeOpen(DataSet: TDataSet);
    procedure adoQ_ConsumeTypeCAfterOpen(DataSet: TDataSet);
    procedure adoQ_SomeDaySAfterOpen(DataSet: TDataSet);
    procedure adoQ_SomeDaySBeforeOpen(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure SwtConsTypAnlySQL(IsYear: boolean);
    procedure QueryAllOut(Year, Month: Integer);
  end;

var
  ExpensenDM: TExpensenDM;
  t1,Ins1 : Boolean;


implementation

uses IncomeUnit;

{$R *.dfm}

procedure TExpensenDM.SwtConsTypAnlySQL(IsYear: boolean);
begin
  if (IsYear) then
  begin
    adoQ_ConsumeTypeS.Active := False;
    adoQ_ConsumeTypeS.SQL.Text := 'SELECT [��������], sum([���]) AS �ܶ� FROM ֧�� WHERE [��������] Is Not Null and year(����)=:YearA GROUP BY [��������];';
    adoQ_ConsumeTypeC.Active := False;
    adoQ_ConsumeTypeC.SQL.Text := 'SELECT * FROM ֧�� WHERE ��������=:�������� and year(����)=:YearA;';
  end
  else
  begin
    adoQ_ConsumeTypeS.Active := False;
    adoQ_ConsumeTypeS.SQL.Text := 'SELECT [��������], sum([���]) AS �ܶ� FROM ֧�� WHERE [��������] Is Not Null and year(����)=:YearA And month(����)=:MonthA GROUP BY [��������];';
    adoQ_ConsumeTypeC.Active := False;
    adoQ_ConsumeTypeC.SQL.Text := 'SELECT * FROM ֧�� WHERE ��������=:�������� and year(����)=:YearA And month(����)=:MonthA;';
  end;

end;

procedure TExpensenDM.adoQ_SomeMonthSBeforeOpen(DataSet: TDataSet);
begin
  adoQ_SomeMonthS.DisableControls;
  adoQ_SomeDayS.DisableControls;
end;

procedure TExpensenDM.adoQ_SomeMonthSAfterOpen(DataSet: TDataSet);
begin
  adoQ_SomeMonthS.EnableControls;
  adoQ_SomeDayS.EnableControls;

end;

procedure TExpensenDM.QueryAllOut(Year, Month: Integer);
begin
  QuryAllOut.Active := False;
  QuryAllOut.SQL.Text := 'Select * From ֧�� Where Year(����) = ' + IntToStr(Year) + ' ';
  if (Month > 0) then
    QuryAllOut.SQL.Add('and Month(����) =' + IntToStr(Month));
  QuryAllOut.Open;
end;


procedure TExpensenDM.NameAnayMastQryAfterScroll(DataSet: TDataSet);
begin
  NameAnayDelitaQry.Close;
  NameAnayDelitaQry.Parameters.ParamByName('Name').Value := NameAnayMastQry.FieldByName('��������').Value;
  NameAnayDelitaQry.Open;
end;

procedure TExpensenDM.adoQ_ConsumeTypeCBeforeOpen(DataSet: TDataSet);
begin
  DataSet.DisableControls;
end;

procedure TExpensenDM.adoQ_ConsumeTypeCAfterOpen(DataSet: TDataSet);
begin
  DataSet.EnableControls;
end;

procedure TExpensenDM.adoQ_SomeDaySAfterOpen(DataSet: TDataSet);
begin
  adoQ_SomeDayC.EnableControls;

end;

procedure TExpensenDM.adoQ_SomeDaySBeforeOpen(DataSet: TDataSet);
begin
 adoQ_SomeDayC.DisableControls;

end;

end.


