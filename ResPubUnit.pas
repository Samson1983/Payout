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
  CompactOK = '压缩成功';
  payout = '支出';
  Incom = '收入';
  InComeTypeEdit ='收入类型';
  ConsumeType ='消费类型';

var
  ResPubFrm: TResPubFrm;

implementation
{$R *.dfm}

uses comobj, PayOutUnit;
//原作者
procedure TResPubFrm.DBGridEhSortSupport(DBGridEh: TDBGridEh);
var
  i: integer;
begin
  for i := 0 to DBGridEh.Columns.Count - 1 do // 排序支持
    DBGridEh.Columns.Items[i].Title.TitleButton := true;
end;

procedure TResPubFrm.DBGridEhTitleSort(Column: TColumnEh);
var
  FadoQry: TADOQuery;
begin
try
  FadoQry := Column.Field.DataSet as TADOQuery;
  if FSortDrict = True then //当前是升序
  begin
    FadoQry.Sort := Column.FieldName + '  DESC'; //Attion Add Space Chart
    FSortDrict := false;
  end
  else if FSortDrict = false then //当前是降序
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
//    DBGridEh.Canvas.Brush.Color := clCream //定义背景颜色
      DBGridEh.Canvas.Brush.Color := $00FAE3D3 //定义背景颜色
  else
    DBGridEh.Canvas.Brush.Color := clWhite; //定义背景颜色
    // DBGridEh.Canvas.Brush.Color := clblue; //定义背景颜色


  if (gdSelected in State) and (gdFocused in State) then
    DBGridEh.Canvas.Font.Color := clBlue
  else
    DBGridEh.Canvas.Font.Color := clBlack;

  DBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;
//-------------------------------------------------------------------------------------------------

function TResPubFrm.GetTempPathFileName(): string; //取得临时文件名
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
  SPath := GetTempDir; //取得Windows的Temp路径
  GetTempFileName(PChar(SPath), '~ACP', 0, SFile); //取得Temp文件名,Windows将自动建立0字节文件
  STempFileName := SFile; //PChar->String
  if not DeleteFile(STempFileName) then Exit; //删除Windows建立的0字节文件
  try
    JE := CreateOleObject('JRO.JetEngine'); //建立OLE对象,函数结束OLE对象超过作用域自动释放
    OleCheck(JE.CompactDatabase(Format(SConnectionString, [AFileName, APassWord]),
      Format(SConnectionString, [STempFileName, APassWord]))); //压缩数据库

    Result := CopyFile(PChar(STempFileName), PChar(AFileName), False); //复制并覆盖源数据库文件,如果复制失败则函数返回假,压缩成功但没有到函数的功能
    DeleteFile(STempFileName); //删除临时文件
  except
    //压缩失败
  end;
  ShowMessage(CompactOK);
end;


//-------------------------------------------------------------------------------------------------
end.
