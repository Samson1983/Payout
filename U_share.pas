unit U_share;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls, DB, DBClient, Grids,
  DBGridEh, DBTables, Spin;

type
  TF_share = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    ListBox1: TListBox;
    NB: TNotebook;
    Label7: TLabel;
    Edit7: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    ComboBox2: TComboBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    memo1: TMemo;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Panel3: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    Label2: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure ListBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ListBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private

    { Private declarations }
  public
      procedure clearText(sender: Tobject);
    { Public declarations }
  end;

var
  F_share: TF_share;
  LString: string;
  tableName,field,value: Variant; C_out :OleVariant;
  j : Integer=0; j2 : Integer=0;  k: Integer= 0;
  widestring1,ChsStr:string;
  Strvalue,ChsField  : array of string;
  SelCtl1,selCtl2 : TWinControl; aa,cc,printOut: string;
implementation

uses DataModuleUnit,MainUnit;

{$R *.dfm}

procedure TF_share.BitBtn2Click(Sender: TObject);
begin
Close;
end;




procedure TF_share.ListBox1Click(Sender: TObject);
var i,k : Integer;  
begin
///////////////////////////////////////////////////////////////
{原理：当第一次点击ListBox时，赋当前的列名，并在激活的控件赋给一个控件变量
,接着内容赋给AA；当第二次点击ListBox时，先把激活的控件的内容，赋给AA，
然后把AA加上当前的列名，接着再把当前的控件赋给控件变量；当第三次点击ListBox时，
先把激活的控件的内容，赋给AA，然后把AA加上当前的列名，接着再把当前的控件赋给控件变量.
串式如：工号 = aa + and +入职日期 + aa + and + 性别 + aa + 第N次的列名
}
////////////////////////////////////////////////////////////////

  i := 0;
  SetLength(Strvalue,N);    // 初始化英文符数组
  SetLength(ChsField,N);   // 初始化中文符数据
//   if (FCurCtrl is TWinControl) then
//     FCurCtrl.Visible := False;
    if (j = 0) then         // j 为点击的次数累计变量，
    begin
        while i <= ListBox1.Count - 1 do
             begin
              if ListBox1.Selected[i] then
              for  k := 0 to N-1 do
              if  ListBox1.Items[i] = x[k].Name then
///////////////////////////////////////////////////////* case ... of
                case x[k].FileName.DataType of
               ftBCD,ftInteger :       // 奇怪这里的Menoy字段类型居然是ftBCD
                        begin
                         NB.PageIndex := 4;
                         SelCtl1 := Edit1;
                         selCtl2 := Edit2;
                         Strvalue[j] := X[k].FileName.DisplayName;    // list字段赋给字符串数组。
                         ChsField[j] := X[k].Name+'：';    // list字段赋中文字段给数组。
                         Edit1.SetFocus;
                        end;
                  ftDateTime,ftDate :
                        begin
                         NB.PageIndex := 1;
                         SelCtl1 := DateTimePicker1;
                         selCtl2 := DateTimePicker2;
                         Strvalue[j] := X[k].FileName.DisplayName;    // list字段赋给字符串数组。
                         ChsField[j] := X[k].Name+'：';    // list字段赋中文字段给数组。
                         DateTimePicker1.SetFocus;
                        end;
                  ftString :
                     if (x[k].Name = '员工编号') or (X[k].Name = '部门编号')  then
                        begin
                         NB.PageIndex := 0;
                         SelCtl1 := memo1;
                         Strvalue[j] := X[k].FileName.DisplayName;    // list字段赋给字符串数组。
                         ChsField[j] := X[k].Name+'= ';    // list字段赋给字符串数组。
                         memo1.SetFocus;
                        end
                        else
                        begin
                         NB.PageIndex := 2;
                         SelCtl1 := Edit7;
                         Strvalue[j] := X[k].FileName.DisplayName ;    // list字段赋给字符串数组。
                         ChsField[j] := X[k].Name+'= ';    // list字段赋给字符串数组。
                         Edit7.SetFocus;
                        end;
                 ftFloat,ftVariant :
                        begin
                         NB.PageIndex := 3;
                         SelCtl1 := ComboBox2;
                         Strvalue[j] := X[k].FileName.DisplayName + ' = ';    // list字段赋给字符串数组。
                         ChsField[j] := X[k].Name+'= ';    // list字段赋给字符串数组。
                         ComboBox2.SetFocus;
                        end;
                   else
                        begin
                         NB.PageIndex := 0;
                         SelCtl1 := memo1;
                           if X[k].FileName.DisplayName = '消费类型2'then
                           Strvalue[j] :=aa +' and '+ Copy(X[k].FileName.DisplayName,0,Length(X[k].FileName.DisplayName)-1)
                           else
                         Strvalue[j] := X[k].FileName.DisplayName;    // list字段赋给字符串数组。
                         ChsField[j] := X[k].Name+'= ';    // list字段赋给字符串数组。
                         memo1.SetFocus;
                        end;
                end;


////////////////////////////////////////////////////////////*   case ... of

              begin
//                  x[k].controrl.Visible := True;
//                  FCurCtrl := x[k].controrl;
              end;

              i := i+1;
              end;
             if (SelCtl1 is TMemo) then
                begin
                 aa := ''''+Tmemo(SelCtl1).Text+'''';
                 cc := Tmemo(SelCtl1).Text;
                end;
                 if (SelCtl1 is TEdit) then
                    begin
                    aa := ''''+TEdit(SelCtl1).Text+'''';
                    cc := TEdit(SelCtl1).Text;
                    end;
                   if (SelCtl1 is TDateTimePicker) then
                      begin
                      aa := ' Between ' + '#'+FormatDateTime('yyyy-mm-dd',TDateTimePicker(SelCtl1).DateTime)+ '#'+
                            ' and ' + '#'+FormatDateTime('yyyy-mm-dd',TDateTimePicker(SelCtl2).DateTime)+'#';
                      cc := ' 从 ' +FormatDateTime('yyyy-mm-dd',TDateTimePicker(SelCtl1).DateTime)+
                            ' 至 ' +FormatDateTime('yyyy-mm-dd',TDateTimePicker(SelCtl2).DateTime);

                      end;
                     if (SelCtl1 is TComboBox) then
                      begin
                        aa := ''''+TComboBox(SelCtl1).Text+'''';
                        cc := TComboBox(SelCtl1).Text;
                      end;
            end;


if j > 0 then
  if j <= ListBox1.Count - 1 then          //判断是否大于列表总数
   begin
    if (j >=1) and (j<=10) then       // 最多10个条件,  j 为点击的次数累计变量，
    begin
         if (SelCtl1 is TMemo) then
            begin
              aa := '';
              cc := '';
             for i :=0 to Tmemo(SelCtl1).Lines.Count do
                if Tmemo(SelCtl1).Lines[i] <> '' then
                  begin
                    aa := aa+ ''''+Tmemo(SelCtl1).Lines[i]+'''' + ',' ;
                    cc := cc+ ''''+Tmemo(SelCtl1).Lines[i]+'''' + ',' ;
                  end;
            if aa <> '' then
              begin
               aa := ' in('+ Copy(aa,0,Length(aa)-1)+')';
               cc :=  Copy(cc,0,Length(cc)-1);
              end
              else
            begin
              aa := ' in(''0'')';
              cc :=  ' ';
              end;
            end;


           if (SelCtl1 is TEdit) then
             begin
                aa := '';
                cc := '';
             if (TEdit(SelCtl1).Name <> 'Edit7') then
               begin
                 if (Edit1.Text = '') and (Edit2.Text <>'') then
                    begin
                    aa := ' Between 0' +' and ' +  Trim(Edit2.Text);
                    cc := ' 从 0 ' +' 至 ' +  Trim(Edit2.Text);
                    end;
                 if (Edit1.Text <> '') and(Edit2.Text = '')  then
                    begin
                    aa := ' Between ' + Trim(Edit1.Text)+' and '+ Trim(Edit1.Text);
                    cc := ' 从 ' + Trim(Edit1.Text)+' 至 '+ Trim(Edit1.Text);
                    end;
                 if (Edit1.Text <> '') and (Edit2.Text <>'') then
                    begin
                    aa := ' Between ' + Trim(Edit1.Text)+' and ' +  Trim(Edit2.Text);
                    cc := ' 从 ' + Trim(Edit1.Text)+' 至 ' +  Trim(Edit2.Text);
                    end;
                 if (Edit1.Text = '') and (Edit2.Text ='') then
                   begin
                    aa := ' Between 0 and  0';
                    cc := ' 从 0 至  0';
                   end;
                 end
                      else
                        begin
                          aa := ' like('+''''+'%'+TEdit(SelCtl1).Text+'%'+''''+')';
                          cc := ''+TEdit(SelCtl1).Text+'';
                        end;
              end;






  {
             if (SelCtl1 is TEdit) then
               begin
                aa := '';
                cc := '';
                aa := ' like('+''''+'%'+TEdit(SelCtl1).Text+'%'+''''+')';
                cc := ''+TEdit(SelCtl1).Text+'';
               end;
  }
               if (SelCtl1 is TDateTimePicker) then
                  begin
                  aa := '';
                  cc := '';
                  aa := ' Between ' + '#'+FormatDateTime('yyyy-mm-dd',TDateTimePicker(SelCtl1).DateTime)+ '#'+
                        ' and ' + '#'+FormatDateTime('yyyy-mm-dd',TDateTimePicker(SelCtl2).DateTime)+'#';
                  cc := ' 从 ' +FormatDateTime('yyyy-mm-dd',TDateTimePicker(SelCtl1).DateTime)+
                        ' 至 ' + FormatDateTime('yyyy-mm-dd',TDateTimePicker(SelCtl2).DateTime);

                  end;
                 if (SelCtl1 is TComboBox) then
                 begin
                    aa := '';
                    cc := '';
                    aa := ''''+TComboBox(SelCtl1).Text+'''';
                    cc := TComboBox(SelCtl1).Text;
                 end;

               i :=0;

          while i <= ListBox1.Count - 1 do
               begin
                if ListBox1.Selected[i] then
                for  k := 0 to N-1 do
                if  ListBox1.Items[i] = x[k].Name then     //对比
  ///////////////////////////////////////////////////////*  case ..... of
                  case x[k].FileName.DataType of
                  ftBCD,ftInteger :
                          begin
                           NB.PageIndex := 4;
                           SelCtl1:= Edit1;
                           selCtl2:= Edit2;
                           Strvalue[j] :=aa +' and '+ X[k].FileName.DisplayName;    // and 是多条件查询，不能是or
                           ChsField[j] :=cc+'；'+X[k].Name+  ': ';    // list字段赋给字符串数组。
                           Edit1.SetFocus;
                          end;
                    ftDateTime,ftDate :
                          begin
                           NB.PageIndex := 1;
                           SelCtl1:= DateTimePicker1;
                           SelCtl2:= DateTimePicker2;
                           Strvalue[j] :=aa+  'and '+X[k].FileName.DisplayName;    // list字段赋给字符串数组。
                           ChsField[j] :=cc+'；'+ X[k].Name+'：';    // list字段赋给字符串数组。
                           DateTimePicker1.SetFocus;
                          end;
                    ftString :
                        if (X[k].Name = '员工编号') or (X[k].Name = '部门编号')  then
                          begin
                           NB.PageIndex := 0;
                           SelCtl1:= memo1;
                           Strvalue[j] :=aa +' and '+ X[k].FileName.DisplayName;    // and 是多条件查询，不能是or
                           ChsField[j] :=cc+'；'+X[k].Name+  '= ';    // list字段赋给字符串数组。
                           memo1.SetFocus;
                          end
                          else
                          begin
                           NB.PageIndex := 2;
                           SelCtl1:= Edit7;
                           Strvalue[j] := aa +' and '+ X[k].FileName.DisplayName;    // list字段赋给字符串数组。
                           ChsField[j] :=cc+'；'+X[k].Name+  '= ';    // list字段赋给字符串数组。
                           Edit7.SetFocus;
                          end;
                    ftFloat,ftVariant :
                          begin
                           NB.PageIndex := 3;
                           SelCtl1:= ComboBox2;
                           Strvalue[j] :=aa+' and '+ X[k].FileName.DisplayName+' = ';    // list字段赋给字符串数组。
                           ChsField[j] :=cc+'；'+X[k].Name+  '= ';    // list字段赋给字符串数组。
                           ComboBox2.SetFocus;
                          end;
                     else
                          begin
                           NB.PageIndex := 0;
                           SelCtl1:= memo1;
                           if X[k].FileName.DisplayName = '消费类型2'then
                           Strvalue[j] :=aa +' and '+ Copy(X[k].FileName.DisplayName,0,Length(X[k].FileName.DisplayName)-1)
                           else
                           Strvalue[j] :=aa +' and '+ X[k].FileName.DisplayName;    // list字段赋给字符串数组。
                           ChsField[j] :=cc+'；'+X[k].Name+  '= ';    // list字段赋给字符串数组。
                           memo1.SetFocus;
                          end;
                  end;


  ////////////////////////////////////////////////////////////*   case ... of

                begin
  //                  x[k].controrl.Visible := True;
  //                  FCurCtrl := x[k].controrl;
                end;
                i := i+1;
                end;

       end
       else
           MessageDlg('输入条件有误!',mtInformation, [mbOK], 0);
      end
        else
           MessageDlg('大于创建数组位数.输入条件有误!', mtInformation, [mbOK], 0);





   Inc(j);

{i := 0;
 SetLength(Strvalue,N);    // 初始化数组
   if (k = 0) then         // K 为点击的次数累计变量，
          while i <= ListBox1.Count - 1 do
             begin
              if ListBox1.Selected[i] then
                 for j := 0 to N-1 do     // 是Str数组的长度
                 if ListBox1.Items[i] = str1[0,j]then
                       begin
                       if str1[1,j] = 'ftString' then
                            begin
                               Notebook1.PageIndex := 0;
                               Strvalue[K] := str1[2,j]+' = ';    // list字段赋给字符串数组。
                              end;
                       if str1[1,j] = 'ftDateTime' then
                            begin
                              Notebook1.PageIndex:= 1 ;
                              Strvalue[K] := str1[2,j]+' = ';    // list字段赋给字符串数组。
                            end;
                       end;

                   i := i+1;
                end;


   if (k >=1) and (K<=10) then         // 最多10个条件
          while i <= ListBox1.Count - 1 do
             begin
              if ListBox1.Selected[i] then
                for j := 0 to N-1 do
                 if ListBox1.Items[i] = str1[0,j]then
                       begin
                       if str1[1,j] = 'ftString' then
                            begin
                              Notebook1.PageIndex := 0;
                              Strvalue[K] :=Edit1.Text +' and '+ str1[2,j]+' = ';    // list字段赋给字符串数组。
                            end;
                       if str1[1,j] = 'ftDateTime' then
                            begin
                              Notebook1.PageIndex:= 1 ;
                              Strvalue[K] :=Edit2.Text +' and '+str1[2,j]+' = ';    // list字段赋给字符串数组。
                            end;
                       end;

                   i := i+1;

                end;
   Inc(K);
}

{   if (j2 >= 1) and (j2 <=10) then
       widestring1 := strvalue[k];
      Inc(j2);
 }

{if ListBox1.ItemIndex = 1 then
  ShowMessage('a');
}
end;

procedure TF_share.ListBox1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  var i : Integer;
begin
 for i := 0 to N-1 do             // 为Strvalue[i]的长度
 begin
 widestring1 := widestring1 + Strvalue[i];
 ChsStr:=ChsStr+ ChsField[i];
 end;
 Panel1.Caption := ChsStr;       //显示中文
    printOut:= widestring1;             // 查询用字符串
 widestring1:= '';
 ChsStr := '';

   clearText(Sender);   // 清空Text
 end;

procedure TF_share.clearText(sender : Tobject);
begin
 memo1.Text:= '';
 Edit1.Text :='';
 Edit2.Text :='';
 Edit7.Text := '';
 ComboBox2.Text := '';
 DateTimePicker1.DateTime := Now;
 DateTimePicker2.DateTime := Now;

end;



procedure TF_share.ListBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (key = vk_down) or (Key = vk_UP) or
  (key = vk_left) or (Key = vk_right) then  // 禁用方向键
      begin
        Key := 0;
      end;

end;

procedure TF_share.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  x := nil;
  Strvalue := nil;
  ChsField := nil;
  J := 0;
  N:= 0;
  Panel1.Caption := '';    //清除显示中文
  printOut := '';    // 清除查询用字符串
  aa:='';
  clearText(Sender);   //清空Text
  NB.PageIndex := 0;
end;



procedure TF_share.BitBtn1Click(Sender: TObject);
var bb : string;
  i: Integer;
begin
   if (SelCtl1 is TMemo) then
       begin
         for i :=0 to Tmemo(SelCtl1).Lines.Count do
            if Tmemo(SelCtl1).Lines[i] <> '' then
              bb := bb+''''+ Tmemo(SelCtl1).Lines[i]+''''+ ',' ;

       if bb <> '' then
          bb := ' in('+ Copy(bb,0,Length(bb)-1)+')'
          else
          begin
          bb := ' in(''0'')';
          end;
       end;
           
   if (SelCtl1 is TEdit) then
     if (TEdit(SelCtl1).Name <> 'Edit7') then
       begin
         if (Edit1.Text = '') and (Edit2.Text <>'') then
            bb := ' Between 0' +' and ' +  Trim(Edit2.Text);
         if (Edit1.Text <> '') and(Edit2.Text = '')  then
            bb := ' Between ' + Trim(Edit1.Text)+' and '+ Trim(Edit1.Text);
         if (Edit1.Text <> '') and (Edit2.Text <>'') then
          bb := ' Between ' + Trim(Edit1.Text)+' and ' +  Trim(Edit2.Text);
         if (Edit1.Text = '') and (Edit2.Text ='') then
           begin
           bb := ' Between 0 and  0';
           end;
         end
              else
                  bb := ' like('+''''+'%'+TEdit(SelCtl1).Text+'%'+''''+')';





     if (SelCtl1 is TDateTimePicker) then
        begin
        bb := ' Between ' +'#'+FormatDateTime('yyyy-mm-dd',TDateTimePicker(SelCtl1).DateTime)+'#'+
              ' and ' +'#'+FormatDateTime('yyyy-mm-dd',TDateTimePicker(SelCtl2).DateTime)+'#';
        end;
       if (SelCtl1 is TComboBox) then
          bb := ''''+TComboBox(SelCtl1).Text+'''';

   if printOut ='消费类型2' then
     printOut:= Copy(printOut,0,Length(printOut)-1);

  value := printOut +bb;
  tableName:= tableNamestr;
  field := '*';
  Close;
  MainFrm.seachStr(tableName,value);
{   ClientDataSet1.Params[1].AsString := TableName;
   ClientDataSet1.Params[2].AsString := Field;
   ClientDataSet1.Params[3].AsString := value;
  ClientDataSet1.Active := True;

 }


end;


end.
