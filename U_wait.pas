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
  Pstr = '���ڴ�������,���Ժ�...';
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
          sql.Text := 'select * from ��������';
          Open;
          pc:= '��������;';
          ProgressBar1.Position   :=  0;
          Panel1.Caption :=Pstr+pc;
          Panel1.Update;     //����
          ExpensenDM.temp.Close;
          ExpensenDM.temp.SQL.Text:='select * from ��������';
          ExpensenDM.temp.Open;

          while not ExpensenDM.exportXLS.Eof do
          begin
            ExpensenDM.temp.Append;
            if Trim(FieldByName('��������').AsString) = '' then
            ExpensenDM.temp.FieldByName('��������').AsString := 'δ����'
           else
            ExpensenDM.temp.FieldByName('��������').AsString := FieldByName('��������').AsString;
            ExpensenDM.temp.Edit;
            ExpensenDM.temp.post;
            Next;
            ProgressBar1.Position   :=   ProgressBar1.Position+5;
            ProgressBar1.Update;
          end;


          Close;
          sql.Text := 'select * from ��������';
          Open;
            cc:='��������;';
            Panel1.Caption :=Pstr+cc;
            Panel1.Update;
            ExpensenDM.temp.Close;
            ExpensenDM.temp.SQL.Text:='select * from ��������';
            ExpensenDM.temp.Open;
          ProgressBar1.Position   :=  0;
          while not ExpensenDM.exportXLS.Eof do
          begin
            ExpensenDM.temp.Append;
            if Trim(FieldByName('��������').AsString) = '' then
            ExpensenDM.temp.FieldByName('��������').AsString := 'δ����'
           else
            ExpensenDM.temp.FieldByName('��������').AsString :=FieldByName('��������').AsString;
            ExpensenDM.temp.Edit;
            ExpensenDM.temp.post;
            Next;
            ProgressBar1.Position   :=   ProgressBar1.Position+5;
            ProgressBar1.Update;
          end;


          Close;
          sql.Text := 'select * from ֧��';
          Open;
            pu := '֧��;';
            Panel1.Caption :=Pstr+pu;
            Panel1.Update;
            ExpensenDM.temp.Close;
            ExpensenDM.temp.SQL.Text:='select * from ֧��';
            ExpensenDM.temp.Open;

          ProgressBar1.Position   :=  0;
          // �������룬�����ܸ���
//            ExpensenDM.ADOQuery1.Open;
//            ExpensenDM.ADOQuery1.Clone(ExpensenDM.exportXLS);
//            ExpensenDM.adoquery1.UpdateBatch(arAll);
          while not ExpensenDM.exportXLS.Eof do
          begin
            ExpensenDM.temp.Append;
            ExpensenDM.temp.FieldByName('����').AsDateTime := FieldByName('����').AsDateTime;
            if Trim(FieldByName('��������').AsString) = '' then
            ExpensenDM.temp.FieldByName('��������').AsString := 'δ����'
           else
            ExpensenDM.temp.FieldByName('��������').AsString :=FieldByName('��������').AsString;
            ExpensenDM.temp.FieldByName('���').AsInteger := FieldByName('���').AsInteger;
            if Trim(FieldByName('��������').AsString) = '' then
            ExpensenDM.temp.FieldByName('��������').AsString := 'δ����'
           else
            ExpensenDM.temp.FieldByName('��������').AsString :=FieldByName('��������').AsString;
            ExpensenDM.temp.FieldByName('ע��').AsString :=FieldByName('ע��').AsString;
            ExpensenDM.temp.Edit;
            ExpensenDM.temp.post;
            Next;
            ProgressBar1.Position   :=   ProgressBar1.Position+5;
            ProgressBar1.Update;
          end;

          Close;
          sql.Text := 'select * from ����';
          Open;
            ic:='����;';
            Panel1.Caption :=Pstr+ic;
            Panel1.Update;
            ExpensenDM.temp.Close;
            ExpensenDM.temp.SQL.Text:='select * from ����';
            ExpensenDM.temp.Open;

          ProgressBar1.Position   :=  0;
         while not ExpensenDM.exportXLS.Eof do
          begin
            ExpensenDM.temp.Append;
            ExpensenDM.temp.FieldByName('����').AsDateTime := FieldByName('����').AsDateTime;
            ExpensenDM.temp.FieldByName('������Ŀ').AsString :=FieldByName('������Ŀ').AsString;
            ExpensenDM.temp.FieldByName('���').AsInteger := FieldByName('���').AsInteger;
            ExpensenDM.temp.FieldByName('��ע').AsString :=FieldByName('��ע').AsString;
            ExpensenDM.temp.Edit;
            ExpensenDM.temp.post;
            Next;
            ProgressBar1.Position   :=   ProgressBar1.Position+5;
            ProgressBar1.Update;

          end;

          Close;
          sql.Text := 'select * from Ԥ��';
          Open;
            yc := 'Ԥ��';
            Panel1.Caption :=Pstr+yc;
            Panel1.Update;  //����
            ExpensenDM.temp.Close;
            ExpensenDM.temp.SQL.Text:='select * from Ԥ��';
            ExpensenDM.temp.Open;

          ProgressBar1.Position   :=  0;
          while not ExpensenDM.exportXLS.Eof do
          begin
            ExpensenDM.temp.Append;
            ExpensenDM.temp.FieldByName('Ԥ����Ŀ����').AsString :=FieldByName('Ԥ����Ŀ����').AsString;
            ExpensenDM.temp.FieldByName('Ԥ��ɹ�ʱ��').AsDateTime := FieldByName('Ԥ��ɹ�ʱ��').AsDateTime;
            ExpensenDM.temp.FieldByName('Ԥ����').AsInteger := FieldByName('Ԥ����').AsInteger;
            ExpensenDM.temp.FieldByName('���ʱ��').AsDateTime := FieldByName('���ʱ��').AsDateTime;
            ExpensenDM.temp.FieldByName('��ɽ��').AsInteger := FieldByName('��ɽ��').AsInteger;
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
        MessageBox(GetActiveWindow(), '���ݵ���ɹ�', '��ʾ��Ϣ', MB_OK +
        MB_ICONWARNING);
       end;
    except
       MessageDlg(Format('��������%s%s%s%s%s����!',[pc,cc,pu,ic,yc]), mtInformation, [mbOK], 0);
        Application.Terminate;

   end;
   
  end;










procedure TF_PleaseWait.FormShow(Sender: TObject);
begin
 Timer1.Enabled :=True;
end;

end.
