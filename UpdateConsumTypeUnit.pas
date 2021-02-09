unit UpdateConsumTypeUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, DB,
  DBGridEh, Buttons, ActnList, GridsEh,EhLibADO;

type
  TUpdateConsumTypeFrm = class(TForm)
    DS_FindISNull: TDataSource;
    ActionList1: TActionList;
    actClose: TAction;
    ConSumeTypeSoucre: TDataSource;
    GroupBox1: TGroupBox;
    DBGridEh_ConsumTypeError: TDBGridEh;
    DS_ConsumTypeError: TDataSource;
    GroupBox2: TGroupBox;
    DBGridEh_ConsumTypeNull: TDBGridEh;
    Splitter1: TSplitter;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure ComSumeTypeListToGrid(Column: TColumnEh);
    procedure DBGridEh_ConsumTypeNullDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure DBGridEh_ConsumTypeErrorDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  UpdateConsumTypeFrm: TUpdateConsumTypeFrm;

implementation

uses ResPubUnit, DataModuleUnit, ConsumeTypeUnit;

{$R *.dfm}

procedure TUpdateConsumTypeFrm.FormCreate(Sender: TObject);
begin
  Self.FormStyle := fsMDIChild;
  Self.DS_FindISNULL.DataSet.Open;
  ConSumeTypeSoucre.DataSet.Open;
  DS_ConsumTypeError.DataSet.Open;
end;

procedure TUpdateConsumTypeFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Self.DS_FindISNULL.DataSet.Close;
  ConSumeTypeSoucre.DataSet.Close;
  DS_ConsumTypeError.DataSet.Close;
  Action := caFree;
end;

procedure TUpdateConsumTypeFrm.FormShow(Sender: TObject);
begin
  ComSumeTypeListToGrid(DBGridEh_ConsumTypeNull.Columns[4]);
  ComSumeTypeListToGrid(DBGridEh_ConsumTypeError.Columns[4]);
end;

procedure TUpdateConsumTypeFrm.ComSumeTypeListToGrid(Column: TColumnEh);
begin
  if ExpensenDM.OutLinkComeType.Active then
    if not ExpensenDM.OutLinkComeType.IsEmpty then
    begin
      ExpensenDM.OutLinkComeType.First;
      Column.PickList.Clear;
      while not ExpensenDM.OutLinkComeType.Eof do
      begin
        Column.PickList.Add(ExpensenDM.OutLinkComeType.FieldByName('消费类型').AsString);
        ExpensenDM.OutLinkComeType.Next;
      end;
    end;
end;


procedure TUpdateConsumTypeFrm.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TUpdateConsumTypeFrm.DBGridEh_ConsumTypeNullDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
ResPubFrm.DBGridEhDrawRec(Rect, DataCol, Column, State,DBGridEh_ConsumTypeNull);
end;

procedure TUpdateConsumTypeFrm.DBGridEh_ConsumTypeErrorDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
ResPubFrm.DBGridEhDrawRec(Rect, DataCol, Column, State, DBGridEh_ConsumTypeError);
end;

end.

