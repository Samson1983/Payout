 unit PayOutUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBCtrls, ExtCtrls, Grids, DBGrids, StdCtrls, Mask, ComCtrls,
  DBGridEh, DBCtrlsEh, Buttons, ActnList, GridsEh,EhLibADO, ADODB,
  PropFilerEh, PropStorageEh, Menus;

type
  TPayOutFrm = class(TForm)
    PayOutSource: TDataSource;
    DBGridEh1: TDBGridEh;
    adoQryPayOut: TADOQuery;
    adoQryPayOutDSDesigner: TAutoIncField;
    adoQryPayOutDSDesigner2: TDateTimeField;
    adoQryPayOutDSDesigner3: TWideStringField;
    adoQryPayOutDSDesigner4: TBCDField;
    adoQryPayOutDSDesigner5: TWideStringField;
    adoQryPayOutWideStringField2: TWideStringField;
    adoQryPayOutDSDesigner6: TWideStringField;
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1ColExit(Sender: TObject);
    procedure DBGridEh1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1CellMouseClick(Grid: TCustomGridEh;
      Cell: TGridCoord; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure adoQryPayOutAfterEdit(DataSet: TDataSet);
    procedure adoQryPayOutDSDesigner2SetText(Sender: TField;
      const Text: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PayOutFrm: TPayOutFrm;
  NoE : Integer = 1;  { TODO 1 -ohzf -c回车次数计算 : enter }
  NOE2 : Boolean = False;
  k1 : Boolean = True;
implementation

uses ResPubUnit, DataModuleUnit, MainUnit;

{$R *.dfm}

procedure TPayOutFrm.FormDestroy(Sender: TObject);
begin
  PayOutSource.DataSet.Close();
    ExpensenDM.OutLinkComeType.close;
  expensenDM.ds_tabOfenConsumName.DataSet.Close;    
end;

procedure TPayOutFrm.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
   { 当eh手动加入字段时,就定到这
      if (gdfocused in state) then
         begin
             If DBGridEh1.SelectedField.FieldName = DBComboBoxEh1.DataField then
              begin
             dbcomboBoxeh1.Left := Rect.Left + DBGridEh1.Left;
             dbcomboBoxeh1.Top := Rect.Top + DBGridEh1.top;
             dbcomboBoxeh1.Width := Rect.Right - Rect.Left;
             dbcomboBoxeh1.Height := Rect.Bottom - Rect.Top;
             dbcomboBoxeh1.Visible := True;
             dbcomboBoxeh1.SetFocus;
          end;
         end;   }

    if DBGridEh1.SelectedRows.Count <= 1 then
    if DBGridEh1.DataSource.Dataset.RecNo mod 2 = 0 then
      DBGridEh1.Canvas.Brush.Color := $00FAE3D3 //定义背景颜色
    else
      DBGridEh1.Canvas.Brush.Color := clWhite; //定义背景颜色

  if (gdSelected in State) and (gdFocused in State) then
    DBGridEh1.Canvas.Font.Color := clBlue;


  if (Rect.Top = DBGridEh1.CellRect(DBGridEh1.Col,DBGridEh1.Row).Top) and (not (gdFocused in State) or not DBGridEh1.Focused) then
    DBGridEh1.Canvas.Brush.Color :=clSkyBlue;//clAqua;
  DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);





end;

procedure TPayOutFrm.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key =vk_F2 then
   k1 := False;

   MainFrm.All_DBGridEh1KeyDown(Sender, key, Shift);
end;

procedure TPayOutFrm.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key <>#27 then
   k1 := False;


                             {
if (key <>chr(9)) then
 begin
   if (DBGrideh1.SelectedField.FieldName =DBComboBoxeh1.DataField) then
   begin
     DBComboBoxEh1.Visible := True;
     DBComboBoxEh1.SetFocus;
     SendMessage(DBComboBoxEh1.Handle,WM_Char,word(Key),0);
   end;
 end;

                         }

  {
  if key =#13 then
  case NoE of
    1: begin
         Inc(NoE)
    end;
    2: begin
         Key := #0;
          DBGridEh1.Columns[DBGridEh1.SelectedIndex].DropDown;
              {
          If DBGridEh1.SelectedField.FieldName = DBComboBoxEh1.DataField then
              begin
               // SendMessage(DBGridEh1.Handle,WM_LBUTTONDOWN,0,0);
                //SendMessage(DBGridEh1.Handle,WM_LBUTTONUP,0,0);

                DBComboBoxEh1.Visible := True;
                DBComboBoxEh1.SetFocus;
                dbcomboBoxeh1.DropDown;
                SendMessage(DBComboBoxEh1.Handle,WM_Char,word(Key),0);
             end;
             }
      {        Inc(NoE);
     end;
    3: begin
            DBGridEh1.SelectedIndex := DBGridEh1.SelectedIndex+1;
            Inc(NoE);
    end;
  else
        begin
          MainFrm.all_DBGridEh1KeyPress(Sender, Key);
          NoE := 2;
  end;

  end;
          }

     MainFrm.all_DBGridEh1KeyPress(Sender, Key);
{ TODO -ohzf -c笔记 :   // 强制弹出下拉列表框 }
 //  SendMessage(combox1.handle, CB_SHOWDROPDOWN, Integer(True), 0);
//   SendMessage(combox1.handle, CB_SHOWDROPDOWN, Integer(false), 0);
end;

procedure TPayOutFrm.DBGridEh1ColExit(Sender: TObject);
begin
  if k1 then        { TODO -oHZF -ceh开关 : 判断表格是否为编辑状态 }
    k1 := false ;
{ If DBGridEh1.SelectedField.FieldName = DBComboBoxEh1.DataField then
   begin
     dbcomboBoxeh1.Visible := false;
   end;
 }
end;

procedure TPayOutFrm.DBGridEh1DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
   // ShowMessage(IntToStr(Rect.Left)+inttostr(Rect.Top));
    // 要求eh内不能手动增加字段
{     if (gdFocused in State) then
     begin
      if (Field.FieldName = DBComboBoxeh1.DataField ) then
       begin
         DBComboBoxeh1.Left := Rect.Left + DBGrideh1.Left;
         DBComboBoxeh1.Top := Rect.Top + DBGrideh1.top;
         DBComboBoxeh1.Width := Rect.Right - Rect.Left;
         DBComboBoxeh1.Height := Rect.Bottom - Rect.Top;
         DBComboBoxeh1.Visible := True;

       end;
     end;
     }
end;

procedure TPayOutFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=caFree;
  ib := 10;  //变回默认值
  
end;

procedure TPayOutFrm.FormShow(Sender: TObject);
begin
  ExpensenDM.OutLinkComeType.Open;
  PayOutSource.DataSet.Open;
  expensenDM.ds_tabOfenConsumName.DataSet.Open;
  while not expensenDM.ds_tabOfenConsumName.DataSet.Eof do
  begin
     DBGridEh1.Columns[1].PickList.Append(ExpensenDM.ds_tabOfenConsumName.DataSet.FieldByName('消费名称').asString);
     ExpensenDM.ds_tabOfenConsumName.DataSet.Next;
  end;
   ExpensenDM.ds_tabOfenConsumName.DataSet.First;



   ClientHeight := MainFrm.ClientHeight - MainFrm.ToolBar1.ClientHeight -MainFrm.CoolBar1.ClientHeight -52;
   ClientWidth := MainFrm.ClientWidth -9;
//  MainFrm.ToolButton18Click(Sender);


end;

procedure TPayOutFrm.Button1Click(Sender: TObject);
begin
 //if dbgrideh1.InplaceEditor <> nil then
  //Button1.Caption := DBGridEh1.InplaceEditor.Text;

end;

procedure TPayOutFrm.DBGridEh1CellMouseClick(Grid: TCustomGridEh;
  Cell: TGridCoord; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
   k1 := False;
end;

procedure TPayOutFrm.adoQryPayOutAfterEdit(DataSet: TDataSet);
begin

  t1 := True;  // 判断数据集是否被修改
end;

procedure TPayOutFrm.adoQryPayOutDSDesigner2SetText(Sender: TField;
  const Text: String);
begin
try         
if   DBGridEh1.InplaceEditor <> nil then
    begin
      adoQryPayOut.FieldByName('日期').AsString := DBGridEh1.InplaceEditor.Text;
      end;
 except
    MessageBox(0,PChar('日期不对：'+text), '错误',MB_OK + MB_ICONSTOP);
   end;

end;

end.
