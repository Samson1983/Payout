unit IncomePayOutCompare;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, Grids, DBGridEh, GridsEh,ADODB, PropFilerEh,
  PropStorageEh;

type
  TInComePayOutFrm = class(TForm)
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InComePayOutFrm: TInComePayOutFrm;

implementation

uses DataModuleUnit, ResPubUnit,PayOutUnit, MainUnit;

{$R *.dfm}

procedure TInComePayOutFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ExpensenDM.InComeAndPayOut.Active then
     expensenDM.InComeAndPayOut.Close;
  
  Action := caFree;
end;

procedure TInComePayOutFrm.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

  ResPubFrm.DBGridEhDrawRec(Rect, DataCol, Column, State, DBGridEh1);
end;

procedure TInComePayOutFrm.FormShow(Sender: TObject);
var
  qry1 : TADOQuery;
  qrystr: string;
begin
 { qrystr := 'select * from MSysObjects where Name = "abac"';
  qry1:= TADOQuery.Create(Self);
  qry1.Connection := ExpensenDM.ADOCon;
  qry1.SQL.Text := qrystr;
  }
  try
   // qry1.Open;
  {ifdef debug}
  // ShowMessage(qrystr);
  {enddef}
 // if not qry1.Eof  then
  begin
      ExpensenDM.InComeAndPayOut.SQL.Text:='Drop table abac';
      ExpensenDM.InComeAndPayOut.ExecSQL;


      ExpensenDM.InComeAndPayOut.SQL.Text:='SELECT * INTO [abac] FROM [收支集合R] ';
      ExpensenDM.InComeAndPayOut.ExecSQL;

      ExpensenDM.InComeAndPayOut.SQL.Text:='INSERT INTO [abac] SELECT * FROM [LandR]';
      ExpensenDM.InComeAndPayOut.ExecSQL;

      ExpensenDM.InComeAndPayOut.SQL.text:='UPDATE abac SET 收入 = 0 WHERE ((收入) Is Null)';
      ExpensenDM.InComeAndPayOut.ExecSQL;

      ExpensenDM.InComeAndPayOut.SQL.text:='UPDATE abac SET 支出 = 0 WHERE ((支出) Is Null)';
      ExpensenDM.InComeAndPayOut.ExecSQL;


        ExpensenDM.InComeAndPayOut.SQL.text:='select * from 收支对比';
        DataSource1.DataSet.Open;

//  //   if DataSource1.DataSet.FieldByName('节余').AsInteger <0 then
//       while not DataSource1.DataSet.Eof do
//       begin
//        DBGridEh1.Columns[4].Font.Color := clRed;
//       end;



  end;

  except
      ExpensenDM.InComeAndPayOut.SQL.Text:='SELECT * INTO [abac] FROM [收支集合R] ';
      ExpensenDM.InComeAndPayOut.ExecSQL;
      ExpensenDM.InComeAndPayOut.Close;



  end;

end;


procedure TInComePayOutFrm.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  { if StrToCurr(DBGridEh1.Columns[4].DisplayText) <0 then
   DBGridEh1.Columns[4].Font.Color := clRed;
  }

//  ShowMessage( DBGridEh1.Fields[4].Text);

  //  if DataSource1.DataSet.FieldByName('节余').AsInteger <0 then
//   DBGridEh1.Columns[4].Font.Color := clRed;

end;

end.
