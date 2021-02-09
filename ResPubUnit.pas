unit ResPubUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGridEh, ImgList,GridsEh,EhLibBDE;

type
  TResPubFrm = class(TForm)
  private
    { Private declarations }
    FSortDrict: Boolean;

  public
    { Public declarations }

    procedure DBGridEhSortSupport(DBGridEh: TDBGridEh);
    procedure DBGridEhTitleSort(Column: TColumnEh);
  published
    procedure DBGridEhDrawRec(const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState; DBGridEh: TDBGridEh);
    function CompactACCESSDatabase(const AFileName, APassWord: string): Boolean;
    function GetTempPathFileName(): string;
  end;

resourcestring
  Demo = 'Demo';
  CompactOK = 'ѹ���ɹ�';
  payout = '֧��';
  Incom = '����';
  InComeTypeEdit ='��������';
  ConsumeType ='��������';

var
  ResPubFrm: TResPubFrm;

implementation
{$R *.dfm}

uses comobj, PayOutUnit;
//ԭ����
procedure TResPubFrm.DBGridEhSortSupport(DBGridEh: TDBGridEh);
var
  i: integer;
begin
  for i := 0 to DBGridEh.Columns.Count - 1 do // ����֧��
    DBGridEh.Columns.Items[i].Title.TitleButton := true;
end;

procedure TResPubFrm.DBGridEhTitleSort(Column: TColumnEh);
var
  FadoQry: TADOQuery;
begin
try
  FadoQry := Column.Field.DataSet as TADOQuery;
  if FSortDrict = True then //��ǰ������
  begin
    FadoQry.Sort := Column.FieldName + '  DESC'; //Attion Add Space Chart
    FSortDrict := false;
  end
  else if FSortDrict = false then //��ǰ�ǽ���
  begin
    FadoQry.Sort := Column.FieldName + '  ASC';
    FSortDrict := true;
  end;
except
end
end;
//-------------------------------------------------------------------------------------------------

procedure TResPubFrm.DBGridEhDrawRec(const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState; DBGridEh: TDBGridEh);
begin
  if DBGridEh.DataSource.Dataset.RecNo mod 2 = 0 then
//    DBGridEh.Canvas.Brush.Color := clCream //���屳����ɫ
      DBGridEh.Canvas.Brush.Color := $00FAE3D3 //���屳����ɫ
  else
    DBGridEh.Canvas.Brush.Color := clWhite; //���屳����ɫ
    // DBGridEh.Canvas.Brush.Color := clblue; //���屳����ɫ


  if (gdSelected in State) and (gdFocused in State) then
    DBGridEh.Canvas.Font.Color := clBlue
  else
    DBGridEh.Canvas.Font.Color := clBlack;

  DBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;
//-------------------------------------------------------------------------------------------------

function TResPubFrm.GetTempPathFileName(): string; //ȡ����ʱ�ļ���
var
  SPath, SFile: array[0..254] of char;
begin
  GetTempPath(254, SPath);
  GetTempFileName(SPath, '~SM', 0, SFile);
  result := SFile;
  DeleteFile(result);
end;



//------------------------------------------------------------------------------

function TResPubFrm.CompactACCESSDatabase(const AFileName, APassWord: string): Boolean;
const
  SConnectionString = 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=%s;'
    + 'Jet OLEDB:Database Password=gigi2009;';
var
  SPath: string;
  SFile: array[0..254] of Char;
  STempFileName: string;
  JE: OleVariant;

  function GetTempDir: string;
  var
    Buffer: array[0..MAX_PATH] of Char;
  begin
    ZeroMemory(@Buffer, MAX_PATH);
    GetTempPath(MAX_PATH, Buffer);
    Result := IncludeTrailingBackslash(StrPas(Buffer));
  end;

begin
  Result := False;
  SPath := GetTempDir; //ȡ��Windows��Temp·��
  GetTempFileName(PChar(SPath), '~ACP', 0, SFile); //ȡ��Temp�ļ���,Windows���Զ�����0�ֽ��ļ�
  STempFileName := SFile; //PChar->String
  if not DeleteFile(STempFileName) then Exit; //ɾ��Windows������0�ֽ��ļ�
  try
    JE := CreateOleObject('JRO.JetEngine'); //����OLE����,��������OLE���󳬹��������Զ��ͷ�
    OleCheck(JE.CompactDatabase(Format(SConnectionString, [AFileName, APassWord]),
      Format(SConnectionString, [STempFileName, APassWord]))); //ѹ�����ݿ�

    Result := CopyFile(PChar(STempFileName), PChar(AFileName), False); //���Ʋ�����Դ���ݿ��ļ�,�������ʧ���������ؼ�,ѹ���ɹ���û�е������Ĺ���
    DeleteFile(STempFileName); //ɾ����ʱ�ļ�
  except
    //ѹ��ʧ��
  end;
  ShowMessage(CompactOK);
end;


//-------------------------------------------------------------------------------------------------
end.
