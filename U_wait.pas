unit U_wait;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzStatus, ComCtrls;

type
  TF_PleaseWait = class(TForm)
    Panel1: TPanel;
    Timer1: TTimer;
    ProgressBar1: TProgressBar;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_PleaseWait: TF_PleaseWait;
  percentNo : Integer=0;
  trimebol : Boolean= False;
implementation

uses DataModuleUnit,MainUnit;

{$R *.dfm}

procedure TF_PleaseWait.Timer1Timer(Sender: TObject);
const
  Pstr = '正在处理数据,请稍后...';
var
    Excel: OleVariant;
    iRow,iCol : integer;
    iword : Word;
    mdbFilename,sqls,str,pc,cc,pu,ic,yc: string;
begin
    if ProgressBar1.Position >=100 then
       FreeAndNil(F_PleaseWait);

try
      if trimebol = True then
       begin
        trimebol:= False;
        with ExpensenDM.exportXLS do
        begin
          ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+edt1+';Persist Security Info=False';
          Close;
          sql.Text := 'select * from 消费类型';
          Open;
          pc:= '消费类型;';
          ProgressBar1.Position   :=  0;
          Panel1.Caption :=Pstr+pc;
          Panel1.Update;     //更新
          ExpensenDM.temp.Close;
          ExpensenDM.temp.SQL.Text:='select * from 消费类型';
          ExpensenDM.temp.Open;

          while not ExpensenDM.exportXLS.Eof do
          begin
            ExpensenDM.temp.Append;
            if Trim(FieldByName('消费类型').AsString) = '' then
            ExpensenDM.temp.FieldByName('消费类型').AsString := '未定义'
           else
            ExpensenDM.temp.FieldByName('消费类型').AsString := FieldByName('消费类型').AsString;
            ExpensenDM.temp.Edit;
            ExpensenDM.temp.post;
            Next;
            ProgressBar1.Position   :=   ProgressBar1.Position+5;
            ProgressBar1.Update;
          end;


          Close;
          sql.Text := 'select * from 收入类型';
          Open;
            cc:='收入类型;';
            Panel1.Caption :=Pstr+cc;
            Panel1.Update;
            ExpensenDM.temp.Close;
            ExpensenDM.temp.SQL.Text:='select * from 收入类型';
            ExpensenDM.temp.Open;
          ProgressBar1.Position   :=  0;
          while not ExpensenDM.exportXLS.Eof do
          begin
            ExpensenDM.temp.Append;
            if Trim(FieldByName('收入类型').AsString) = '' then
            ExpensenDM.temp.FieldByName('收入类型').AsString := '未定义'
           else
            ExpensenDM.temp.FieldByName('收入类型').AsString :=FieldByName('收入类型').AsString;
            ExpensenDM.temp.Edit;
            ExpensenDM.temp.post;
            Next;
            ProgressBar1.Position   :=   ProgressBar1.Position+5;
            ProgressBar1.Update;
          end;


          Close;
          sql.Text := 'select * from 支出';
          Open;
            pu := '支出;';
            Panel1.Caption :=Pstr+pu;
            Panel1.Update;
            ExpensenDM.temp.Close;
            ExpensenDM.temp.SQL.Text:='select * from 支出';
            ExpensenDM.temp.Open;

          ProgressBar1.Position   :=  0;
          // 批量导入，但不能更新
//            ExpensenDM.ADOQuery1.Open;
//            ExpensenDM.ADOQuery1.Clone(ExpensenDM.exportXLS);
//            ExpensenDM.adoquery1.UpdateBatch(arAll);
          while not ExpensenDM.exportXLS.Eof do
          begin
            ExpensenDM.temp.Append;
            ExpensenDM.temp.FieldByName('日期').AsDateTime := FieldByName('日期').AsDateTime;
            if Trim(FieldByName('消费名称').AsString) = '' then
            ExpensenDM.temp.FieldByName('消费名称').AsString := '未定义'
           else
            ExpensenDM.temp.FieldByName('消费名称').AsString :=FieldByName('消费名称').AsString;
            ExpensenDM.temp.FieldByName('金额').AsInteger := FieldByName('金额').AsInteger;
            if Trim(FieldByName('消费类型').AsString) = '' then
            ExpensenDM.temp.FieldByName('消费类型').AsString := '未定义'
           else
            ExpensenDM.temp.FieldByName('消费类型').AsString :=FieldByName('消费类型').AsString;
            ExpensenDM.temp.FieldByName('注解').AsString :=FieldByName('注解').AsString;
            ExpensenDM.temp.Edit;
            ExpensenDM.temp.post;
            Next;
            ProgressBar1.Position   :=   ProgressBar1.Position+5;
            ProgressBar1.Update;
          end;

          Close;
          sql.Text := 'select * from 收入';
          Open;
            ic:='收入;';
            Panel1.Caption :=Pstr+ic;
            Panel1.Update;
            ExpensenDM.temp.Close;
            ExpensenDM.temp.SQL.Text:='select * from 收入';
            ExpensenDM.temp.Open;

          ProgressBar1.Position   :=  0;
         while not ExpensenDM.exportXLS.Eof do
          begin
            ExpensenDM.temp.Append;
            ExpensenDM.temp.FieldByName('日期').AsDateTime := FieldByName('日期').AsDateTime;
            ExpensenDM.temp.FieldByName('收入项目').AsString :=FieldByName('收入项目').AsString;
            ExpensenDM.temp.FieldByName('金额').AsInteger := FieldByName('金额').AsInteger;
            ExpensenDM.temp.FieldByName('备注').AsString :=FieldByName('备注').AsString;
            ExpensenDM.temp.Edit;
            ExpensenDM.temp.post;
            Next;
            ProgressBar1.Position   :=   ProgressBar1.Position+5;
            ProgressBar1.Update;

          end;

          Close;
          sql.Text := 'select * from 预算';
          Open;
            yc := '预算';
            Panel1.Caption :=Pstr+yc;
            Panel1.Update;  //更新
            ExpensenDM.temp.Close;
            ExpensenDM.temp.SQL.Text:='select * from 预算';
            ExpensenDM.temp.Open;

          ProgressBar1.Position   :=  0;
          while not ExpensenDM.exportXLS.Eof do
          begin
            ExpensenDM.temp.Append;
            ExpensenDM.temp.FieldByName('预算项目名称').AsString :=FieldByName('预算项目名称').AsString;
            ExpensenDM.temp.FieldByName('预算采购时间').AsDateTime := FieldByName('预算采购时间').AsDateTime;
            ExpensenDM.temp.FieldByName('预算金额').AsInteger := FieldByName('预算金额').AsInteger;
            ExpensenDM.temp.FieldByName('完成时间').AsDateTime := FieldByName('完成时间').AsDateTime;
            ExpensenDM.temp.FieldByName('完成金额').AsInteger := FieldByName('完成金额').AsInteger;
            ExpensenDM.temp.Edit;
            ExpensenDM.temp.post;
            Next;
            ProgressBar1.Position   :=   ProgressBar1.Position+5;
            ProgressBar1.Update;
            Close; 

          end;

        end;
        ExpensenDM.temp.Close;
         FreeAndNil(F_PleaseWait);
        MessageBox(GetActiveWindow(), '数据导入成功', '提示信息', MB_OK +
        MB_ICONWARNING);
       end;
    except
       MessageDlg(Format('导入数据%s%s%s%s%s出错!',[pc,cc,pu,ic,yc]), mtInformation, [mbOK], 0);
        Application.Terminate;

   end;
   
  end;










procedure TF_PleaseWait.FormShow(Sender: TObject);
begin
 Timer1.Enabled :=True;
end;

end.
