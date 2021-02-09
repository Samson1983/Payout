unit clearF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, RzRadGrp, ExtCtrls, RzPanel, RzButton,
  RzRadChk;

type
  Tfclear = class(TForm)
    RzGroupBox2: TRzGroupBox;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    RzGroupBox3: TRzGroupBox;
    Label2: TLabel;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    RzCheckGroup1: TRzCheckGroup;
    RzCheckBox1: TRzCheckBox;
    RzCheckBox2: TRzCheckBox;
    RzBitBtn4: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    procedure RzCheckBox1Click(Sender: TObject);
    procedure RzCheckBox2Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fclear: Tfclear;

implementation

uses DataModuleUnit, MainUnit, U_wait;

{$R *.dfm}

procedure Tfclear.RzCheckBox1Click(Sender: TObject);
begin
if RzCheckBox1.Checked then
 begin
 DateTimePicker1.Enabled := True;
 DateTimePicker2.Enabled := True;
 end
 else
 begin
 DateTimePicker1.Enabled := False;
 DateTimePicker2.Enabled := False;
 end;


end;

procedure Tfclear.RzCheckBox2Click(Sender: TObject);
begin
if RzCheckBox2.Checked then
 begin
 DateTimePicker3.Enabled := True;
 DateTimePicker4.Enabled := True;
 end
 else
 begin
 DateTimePicker3.Enabled := False;
 DateTimePicker4.Enabled := False;
 end;

end;

procedure Tfclear.RzBitBtn1Click(Sender: TObject);
var
InstrB,InstrD,OutstrB,OutstrD,i,j,k,l,m : string;
 iNO : Integer;
const
 str = '%,%,%��������������!';
begin

 for iNO := 0 to MainFrm.MDIChildCount-1 do
    begin
      if MainFrm.MDIChildCount > 0 then
        begin
        if MainFrm.MDIChildren[iNO].CloseQuery then
           MainFrm.MDIChildren[iNO].Close ;
        end
        else
        Break;
    end;




  if RzCheckBox1.Checked then
    begin
      InstrB := DateToStr( DateTimePicker1.DateTime);
      InstrD := DateToStr( DateTimePicker2.DateTime);
        with ExpensenDM.ADOclear do
            begin
              SQL.Text :='delete from ���� where ���� between  #'+instrB +'# and #'+instrD+'#';
              ExecSQL;
              i := '����,';
            end;
      end;

  if RzCheckBox2.Checked then
    begin
      OutstrB := DateToStr( DateTimePicker3.DateTime);
      OutstrD := DateToStr( DateTimePicker4.DateTime);
        with ExpensenDM.ADOclear do
            begin
              SQL.Text :='delete from ֧�� where ���� between  #'+OutstrB +'# and #'+OutstrD+'#';
              ExecSQL;
              j := '֧��;';
            end;

      end;

  if RzCheckGroup1.ItemChecked[0] then
  begin
        with ExpensenDM.ADOclear do
            begin
              SQL.Text :='delete from Ԥ��';
              ExecSQL;
              k := 'Ԥ��;';
            end;
    end;

  if RzCheckGroup1.ItemChecked[1] then
  begin
        with ExpensenDM.ADOclear do
            begin
              SQL.Text :='delete from ��������';
              ExecSQL;
              l := '��������;';
            end;
    end;

  if RzCheckGroup1.ItemChecked[2] then
  begin
        with ExpensenDM.ADOclear do
            begin
              SQL.Text :='delete from ��������';
              ExecSQL;
              m := '��������;';
            end;
    end;
    if (i<>'') or (j<>'')or(k<>'')or(l<>'')or (m<>'') then
       MessageDlg(Format('%s%s%s%s%s������!',[i,j,k,l,m]), mtInformation, [mbOK], 0)
       else
       MessageBox(Handle, '��ѡ��Ҫ�������Ŀ��', '��Ϣ', MB_OK + 
         MB_ICONWARNING);
         
       

end;

procedure Tfclear.RzBitBtn4Click(Sender: TObject);
var inputStr : string;
iNO : Integer;
begin


     for iNO := 0 to MainFrm.MDIChildCount-1 do
        begin
          if MainFrm.MDIChildCount > 0 then
            begin
            if MainFrm.MDIChildren[iNO].CloseQuery then
               MainFrm.MDIChildren[iNO].Close ;
            end
            else
            Break;
        end;


  if InputQuery('��ʾ','�������д''OK''     ',inputStr) then
    if inputStr ='OK' then
     begin
       if not(Assigned(F_PleaseWait)) then
         begin
           F_PleaseWait:= TF_PleaseWait.Create(Application);
          end;
          F_PleaseWait.Show;
          F_PleaseWait.Update;
      try
      with ExpensenDM.ADOclear do
          begin
            SQL.Text :='delete from abac';
            ExecSQL;
            F_PleaseWait.ProgressBar1.Position :=F_PleaseWait.ProgressBar1.Position+10;
            F_PleaseWait.ProgressBar1.Update;

            SQL.Text :='delete from ����';
            ExecSQL;
            F_PleaseWait.ProgressBar1.Position :=F_PleaseWait.ProgressBar1.Position+10;
            F_PleaseWait.ProgressBar1.Update;

            SQL.Text :='delete from ��������';
            ExecSQL;
            F_PleaseWait.ProgressBar1.Position :=F_PleaseWait.ProgressBar1.Position+10;
            F_PleaseWait.ProgressBar1.Update;

            SQL.Text :='delete from ��֧��';
            ExecSQL;
            F_PleaseWait.ProgressBar1.Position :=F_PleaseWait.ProgressBar1.Position+10;
            F_PleaseWait.ProgressBar1.Update;

            SQL.Text :='delete from ��������';
            ExecSQL;
            F_PleaseWait.ProgressBar1.Position :=F_PleaseWait.ProgressBar1.Position+10;
            F_PleaseWait.ProgressBar1.Update;

            SQL.Text :='delete from Ԥ��';
            ExecSQL;
            F_PleaseWait.ProgressBar1.Position :=F_PleaseWait.ProgressBar1.Position+10;
            F_PleaseWait.ProgressBar1.Update;

            SQL.Text :='delete from ֧��';
            ExecSQL;
            F_PleaseWait.ProgressBar1.Position :=100;
            F_PleaseWait.ProgressBar1.Update;

            if F_PleaseWait.ProgressBar1.Position >=100 then
            begin
//                FreeAndNil(F_PleaseWait);
                MessageDlg('������!', mtInformation, [mbOK], 0);
            end;

          end;
      except
        Application.Terminate;
      end;

    end;


end;

end.
