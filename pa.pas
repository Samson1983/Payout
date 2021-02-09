unit pa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, RzPanel, RzRadGrp, ExtCtrls, RzButton,
  RzLabel, jpeg,Unit4, OleCtrls, SHDocVw,WinInet,MainUnit, RzDBEdit,
  RzDBSpin,ShellAPI;

type
  TForm3 = class(TForm)
    RzPanel1: TRzPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    RzEdit1: TRzEdit;
    RzMemo1: TRzMemo;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    RzPanel2: TRzPanel;
    RzRadioGroup1: TRzRadioGroup;
    RzButton1: TRzButton;
    RzURLLabel1: TRzURLLabel;
    Image2: TImage;
    RzEdit2: TRzEdit;
    Label3: TLabel;
    RzNumericEdit1: TEdit;
    Label6: TLabel;
    RzURLLabel5: TRzURLLabel;
    procedure RzButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzNumericEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}


function PostURL(const aUrl: string; FTPostQuery: string; const strPostOkResult: string = 'Send OK!'): Boolean;
var
hSession: HINTERNET;
hConnect, hRequest: hInternet;
lpBuffer: array[0..1024 + 1] of Char;
dwBytesRead: DWORD;
HttpStr: string;
HostName, FileName: string;
FTResult: Boolean;
AcceptType: LPStr;
Buf: Pointer;
dwBufLen, dwIndex: DWord;
procedure ParseURL(URL: string; var HostName, FileName: string);
procedure ReplaceChar(c1, c2: Char; var St: string);
var
p: Integer;
begin
while True do
begin
p := Pos(c1, St);
if p = 0 then Break
else St[p] := c2;
end;
end;
var
i: Integer;
begin
if Pos(UpperCase('http://'), UpperCase(URL)) <> 0 then
System.Delete(URL, 1, 7);
i := Pos('/', URL);
HostName := Copy(URL, 1, i);
FileName := Copy(URL, i, Length(URL) - i + 1);
if (Length(HostName) > 0) and (HostName[Length(HostName)] = '/') then
SetLength(HostName, Length(HostName) - 1);
end;
begin
Result := False;
hSession := InternetOpen('MyApp', INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);
try
if Assigned(hSession) then
begin
ParseURL(aUrl, HostName, FileName);
hConnect := InternetConnect(hSession, PChar(HostName),
INTERNET_DEFAULT_HTTP_PORT, nil, nil, INTERNET_SERVICE_HTTP, 0, 0);

AcceptType := PChar('Accept: */*');

hRequest := HttpOpenRequest(hConnect, 'POST', PChar(FileName), 'HTTP/1.1',
nil, @AcceptType, INTERNET_FLAG_RELOAD, 0);
//
HttpSendRequest(hRequest, 'Content-Type: application/x-www-form-urlencoded', 47,
PChar(FTPostQuery), Length(FTPostQuery));

dwIndex := 0;
dwBufLen := 1024;
GetMem(Buf, dwBufLen);
FTResult := HttpQueryInfo(hRequest, HTTP_QUERY_CONTENT_LENGTH,
Buf, dwBufLen, dwIndex);
if FTResult = True then
try
while True do
begin
dwBytesRead := 1024;
InternetReadFile(hRequest, @lpBuffer, 1024, dwBytesRead);
if dwBytesRead = 0 then break;
lpBuffer[dwBytesRead] := #0;
HttpStr := HttpStr + lpBuffer;
end;
Result := pos(strPostOkResult {'���ͳɹ�'}, HttpStr) > 0;
finally
InternetCloseHandle(hRequest);
InternetCloseHandle(hConnect);
end;
end;
finally
InternetCloseHandle(hSession);
end;
end;


procedure TForm3.FormShow(Sender: TObject);
begin
//  if chek then
//    RzNumericEdit1.Text := '1'
//    else
//    RzNumericEdit1.Text := '9.9';

end;

procedure TForm3.RzButton1Click(Sender: TObject);
var
  amount,name,mail,memo,bank:string;
begin
if StrToFloat(RzNumericEdit1.Text) <1 then
  begin
MessageBox(Handle, '��������1Ԫ��', '��ʾ��Ϣ', MB_OK +
  MB_ICONINFORMATION);
  exit;
  end
  else
    amount:= 'amount='+RzNumericEdit1.Text;

if Trim(RzEdit1.Text)='' then
  begin
  MessageBox(Handle, '�����˲���Ϊ��', '��ʾ��Ϣ', MB_OK +
  MB_ICONINFORMATION);
  exit;
  end
  else
     name :='&&deliverInfo.userName='+rzedit1.Text;


if Trim(RzEdit2.Text) = '' then
  begin
MessageBox(Handle, '���䲻��Ϊ��', '��ʾ��Ϣ', MB_OK +
  MB_ICONINFORMATION);
  Exit;
  end
  else

 if Pos('@',RzEdit2.Text) > 4 then
   begin
    mail := '&&deliverInfo.email='+ RzEdit2.Text;
    end
    else
    begin
 MessageBox(Handle, '����ȷ��д����', '��ʾ��Ϣ', MB_OK +
  MB_ICONINFORMATION);
    Exit;
    end;

if RzMemo1.Text <>'' then
  begin
   memo:= '&&deliverInfo.leaveMessage='+trim(RzMemo1.Text);
  end
  else
   memo := '&&deliverInfo.leaveMessage=BuyWinXPStart';



if RzRadioGroup1.ItemIndex = -1 then
  begin
MessageBox(Handle, '��ѡ�����У�', '��ʾ��Ϣ', MB_OK +
  MB_ICONINFORMATION);
  Exit;
  end;
   case RzRadioGroup1.ItemIndex of
      0: bank:='&&frpId='+'1004006' ;   //��������
      1:bank:='&&frpId='+'1004012' ;    //  ũҵ����
      2:bank:='&&frpId='+'1001008' ;    //  ��������
      3:bank:='&&frpId='+'1008007' ;    //  ��������
      4:bank:='&&frpId='+'1001020' ;    //    ��ͨ����
      5:bank:='&&frpId='+'1001009' ;     //  ��������
      6:bank:='&&frpId='+'1001013' ;       //���ڷ�չ����
      7:bank:='&&frpId='+'1001016' ;   //    ��������
      8:bank:='&&frpId='+'10060008' ;     //  �㶫��չ����
      9:bank:='&&frpId='+'1001019' ;     // �ַ�����
      10:bank:='&&frpId='+'1001047' ;     //  �������
      11:bank:='&&frpId='+'1001015' ;       // ��������
      12:bank:='&&frpId='+'1001014' ;         // ��ҵ����
      13:bank:='&&frpId='+'10060002' ;           //������ũ����
      14:bank:='&&frpId='+'10060001' ;             //�й�����
      15:bank:='&&frpId='+'10060004' ; // ��������ҵ����
      16:bank:='&&frpId='+'10062001' ;   // �Ϻ�ũ������
      17:bank:='&&frpId='+'10060005' ;     // ˳��ũ����
      18:bank:='&&frpId='+'1009081' ;       // �Ͼ�����
      19:bank:='&&frpId='+'1000001' ;         // �ױ���Ա֧��
    end;


RzURLLabel1.URL :='https://www.yeepay.com/payment?hezhenfei168@yahoo.com.cn';
RzURLLabel1.Click;
Sleep(5000);
RzURLLabel1.URL :='';
RzURLLabel1.URL := 'https://www.yeepay.com/app-merchant-proxy/customerOrderInput.action?'+
  amount +name+mail+memo
  +'&&donateAmount=hezhenfei168@yahoo.com.cn&&donaterEmail=hezhenfei168@yahoo.com.cn&&donateOrderId='+bank;

   RzURLLabel1.Click;

  if RzButton1.Caption='���ɶ���' then
    RzButton1.Caption:= '����'
    else
    RzButton1.Caption:='���ɶ���';


 PostURL('http://heechenhe.398.cn/me_action.asp?','username='+rzedit1.Text+'&body='
 +label4.Caption+RzEdit1.Text+'; '+label5.Caption+Rzedit2.Text
 +'; '+label1.Caption+RzNumericEdit1.Text
 +'; '+label2.Caption+Rzmemo1.Text+'; ������:'+skey);

  MessageBox(Handle, '������Ϣ���ύ,������Ѿ�����,���ǻ���24Сʱ�ڷ���ע����.'+#13#10
  +'������http://heechenhe.398.cn/message.asp;лл����֧�֣�'
  ,'��ʾ��Ϣ', MB_OK +
  MB_ICONINFORMATION);

//  ShellExecute(GetActiveWindow,'open','http://heechenhe.398.cn/message.asp','','',SW_SHOWNORMAL);
// RzURLLabel1.URL := 'http://heechenhe.398.cn/message.asp';
// RzURLLabel1.Click;
end;





procedure TForm3.RzNumericEdit1KeyPress(Sender: TObject; var Key: Char);
begin
      case Key of
        '0'..'9',#8, #13, #27,#46: ;
        else
        Key := #0;
        end;
end;

end.
