unit IncomeOutgoCompare;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, Grids, DBGridEh;

type
  TFormIncomeOutgoCompare = class(TForm)
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Splitter1: TSplitter;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormIncomeOutgoCompare: TFormIncomeOutgoCompare;

implementation

uses DataModuleUnit, ResPubUnit;

{$R *.dfm}

procedure TFormIncomeOutgoCompare.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
