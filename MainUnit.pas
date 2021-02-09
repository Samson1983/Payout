unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, ComCtrls, StdCtrls, ActnList, Buttons, ImgList,
  ToolWin, WinSkinData, WinSkinStore, ActnMan, IniFiles, jpeg, StdActns,
  PrnDbgeh, DB,Registry ,PropStorageEh
  ,DBClient,DBGridEh, ADODB,Grids,DBGrids,GridsEh,ShellAPI, XPBarMenu,
  StatusBarEx, RzStatus,StrUtils, auHTTP, auAutoUpgrader, ShareRegist
  , DesHex64, HardInfo, MACAddressInfo, CodeEncDec,U_login;


type
    Tseach = array of array of string;  //万能查询器字段名储存的字符数组
    //记录，动态地把各表的字段载入。
    TMyRec = record
      Name : string;
      FileName: TField;
     Control : TWinControl;
     Control2 : TWinControl;
    end;

    TmyRecArray = array of TMyRec;  // 记录型数组

    TESeachFull = class(Exception);

    //建立枚举类型    TQryDataType
    TQryDataType = (qdtText,qdtNumber,qdtDate,qdtBool);


type
  TMainFrm = class(TForm)
    ActionList1: TActionList;
    MainClose: TAction;
    AllOutShow: TAction;
    AllInShow: TAction;
    BudgetShow: TAction;
    ConsumeTypeShow: TAction;
    ThisMonthOut: TAction;
    UpdateConsumType: TAction;
    ConsumTimeAnalyse: TAction;
    ConsumTypeAnalyse: TAction;
    ConsumNameAnalyse: TAction;
    PopTitleHoriz: TAction;
    PopTitlVbr: TAction;
    MainMenu1: TMainMenu;
    N3: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N4: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    MenuItem_SwitchSkin: TMenuItem;
    SkinData: TSkinData;
    ImageList2: TImageList;
    CompressAct: TAction;
    N21: TMenuItem;
    N22: TMenuItem;
    IncomeOutgoCompareAct: TAction;
    N23: TMenuItem;
    Action_InComeType: TAction;
    Action_CloseSubFrm: TAction;
    N20: TMenuItem;
    SkinStore_Skin: TSkinStore;
    Timer1: TTimer;
    ImageList1: TImageList;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton7: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    ToolButton11: TToolButton;
    ToolButton14: TToolButton;
    ToolButton16: TToolButton;
    ToolButton9: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton21: TToolButton;
    ToolButton12: TToolButton;
    CoolBar1: TCoolBar;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton12: TSpeedButton;
    PrintDBGridEh1: TPrintDBGridEh;
    WindowCascade1: TWindowCascade;
    WindowTileVertical1: TWindowTileVertical;
    Bevel1: TBevel;
    SpeedButton4: TSpeedButton;
    Bevel2: TBevel;
    SpeedButton10: TSpeedButton;
    Bevel3: TBevel;
    ToolButton15: TToolButton;
    Bevel6: TBevel;
    SpeedButton14: TSpeedButton;
    PrintEh: TAction;
    Tb1: TAction;
    Tb4: TAction;
    Tb11: TAction;
    Tb16: TAction;
    N24: TMenuItem;
    N25: TMenuItem;
    Label_TimeShow: TLabel;
    N26: TMenuItem;
    ToolButton10: TToolButton;
    ToolButton13: TToolButton;
    OpenDialog1: TOpenDialog;
    AutoUpgraderPro1: TauAutoUpgrader;
    XPBarMenu1: TXPBarMenu;
    ShareRegist1: TShareRegist;
    ToolButton20: TToolButton;
    ToolButton22: TToolButton;

    procedure seachStr (tableName:string;seachStr2:string);     // 查询器
    procedure toolAllclick(sender: TObject);
    procedure MainCloseExecute(Sender: TObject);
    procedure ConsumTimeAnalyseExecute(Sender: TObject);
    procedure UpdateConsumTypeExecute(Sender: TObject);
    procedure AllOutShowExecute(Sender: TObject);
    procedure AllInShowExecute(Sender: TObject);
    procedure BudgetShowExecute(Sender: TObject);
    procedure ConsumeTypeShowExecute(Sender: TObject);
    procedure ThisMonthOutExecute(Sender: TObject);
    procedure ConsumTypeAnalyseExecute(Sender: TObject);
    procedure ConsumNameAnalyseExecute(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure MenuItem_SwitchSkinClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure CompressActExecute(Sender: TObject);
    procedure IncomeOutgoCompareActExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SubFromShow(Caption: string; SubFrmClass: TFormClass);
    procedure Action_InComeTypeExecute(Sender: TObject);
    procedure ToolButton21Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure ToolButton18Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Action_CloseSubFrmExecute(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure ShareRegist1GetMachineCode(var MachineCode: String);
    procedure ToolButton20Click(Sender: TObject);
  private
    SkinIni: TIniFile;
    AppPatch: string;
    SkinIndex: Integer;
    hotkeyid,hotkeyid2  :integer;
    procedure WMhotkeyhandle(var msg:Tmessage); message wm_hotkey;

  public
    procedure printDH(sender : TObject);
    procedure OpenChildForm(FormClass: TFormClass; var Fm;
      AOwner: TComponent);
    procedure All_DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure all_DBGridEh1KeyPress(Sender: TObject; var Key: Char);

    procedure AppMessage(var Msg: TMsg; var Handled: boolean);
    { Public declarations }
  end;

var
  MainFrm: TMainFrm;
  t_tools : Integer;
   str1 : Tseach;
   N : Integer;  // 数组的维数
   tableNamestr,edt1: string;
   x : TmyRecArray;
   ctrols: array[TQryDataType] of TWinControl;
   FCurCtrl : TWinControl;
   cboxSFtVr : Integer;
   ib : Integer;
   aboutfrmbReg,Checked : Boolean;
  //滚轮
   MouseHook: HHOOK;
   adoQuery :TADOQuery;
   dbgrideh : TDBGridEh;
   sSignature:array[0..32] of char;
   sSystemID:array[0..9] of char;
   skey: string;
   
resourcestring
  SkinSection = 'Skin';
  SkinIndent = 'SkinStoreIndex';
  Skindataini = 'skindata';
  sknatn='SkindDataAction';
  AboutFrmini  ='abountfrm';
  AboutFrmbool='CheckBox';

//-------------------------------------------------------------------------------------------------

implementation



uses UpdateConsumTypeUnit, TypeAnalyUnit, TimeAnalyUnit, ResPubUnit, PayOutUnit,
  NameAnalyUnit, IncomeUnit, DataModuleUnit, ConsumeTypeUnit, BudgetUnit, AllPayOutUnit,
  AboutUnit, InComeTypeEditUnit, IncomeOutgoCompare, IncomePayOutCompare,
  U_share,DBGridEhImpExp, clearF, usersF, U_wait, Unit4;

{$R *.dfm}


		//????DLL??????
		function RE_GetDllSignature(sUserKey:string; sSignature:PChar):Integer; stdcall;
    external 'RegEnc.dll';

		function RE_RunItOnStart(iType,iParam:Integer; sProgramID:string; EncodeNum:Integer):Integer; stdcall;
    external 'RegEnc.dll';

		function RE_GetRegStatus():Integer; stdcall;
    external 'RegEnc.dll';

		function RE_GetRemainingTimes():Integer; stdcall;
    external 'RegEnc.dll';

 		function RE_GetRemainingDays():Integer;  stdcall;
    external 'RegEnc.dll';

 		function RE_Register(sProgramID:string; EncodeNum:Integer; sRegCode:string):Integer; stdcall;
    external 'RegEnc.dll';

 		function RE_GetSystemID(sSystemID:pchar):Integer; stdcall;
    external 'RegEnc.dll';

 		function RE_GetRegCode(sSystemID:string; EncodeNum:Integer; sRegCode:PChar):Integer; stdcall;
    external 'RegEnc.dll';

 		function RE_ClearRegInfo(sProgramID:string; EncodeNum:Integer):Integer; stdcall;
    external 'RegEnc.dll';


function GetMsgProc(code: Integer; wParam: wParam; lParam: lParam): LRESULT; stdcall;
var
  lpMsg: pMsg;
  KeyDown, ScrState: string;
  i,ii,iii : Integer;
  all_eh : TDBGridEh;

   j : Integer;
   eh : TDBGridEh;
   all_datsource : TDataSource;
   key : Word;
    e: Exception;

begin
  if code = HC_ACTION then
  begin
    lpMsg := Pointer(lParam);
    case lpMsg.message of
      WM_MOUSEWHEEL:
        begin
          if lpMsg.wParam > 0 then
          begin
          ScrState := 'UP';
          case Smallint(lpMsg.wParam shl 16 shr 16) of
            MK_CONTROL:
            begin
            KeyDown := 'CTRL'; Inc(i);

                 if MainFrm.MDIChildCount >0 then
                   begin
                 //eh
                   for   i:=   0   to  MainFrm.ActiveMDIChild.ComponentCount-1   do
                      if   MainFrm.ActiveMDIChild.Components[i]   is   TDBGridEh   then
                      begin
                        all_eh :=TDBGridEh(MainFrm.ActiveMDIChild.Components[i]);
                      end;

                        if all_eh.Font.Size < 100 then
                            begin
                             ib:=all_eh.Font.Size+2;
//                               Inc(ib,2);
                               all_eh.Font.Size := ib;   // 保持行的宽
                               all_eh.FooterFont.Size :=ib; // 保持合计行的宽

                           for ii := 0 to all_eh.FieldCount-1 do
                           // colums颜色改变了,colums的size就不能随eh变,所以加了循环
                             begin
                             all_eh.Columns[ii].Width := all_eh.Columns[ii].Width+10;
                             all_eh.Columns[ii].Font.Size :=ib;
                             all_eh.Columns[ii].Footer.Font.Size :=ib;

                               if  all_eh.Columns[ii].Footers.Count <> 0 then
                               for iii := 0 to all_eh.Columns[ii].Footers.Count -1 do
                               all_eh.Columns[ii].Footers[iii].Font.Size :=ib;
                            end;
                          end;

                         end;

            end;
            else
          end;
          end
          else
          begin
          ScrState := 'DOWN';
          case Smallint(lpMsg.wParam shl 16 shr 16) of
            MK_CONTROL: begin
            KeyDown := 'CTRL'; Dec(i);
//            MainFrm.ActiveMDIChild.Font.Size := i;
                 if MainFrm.MDIChildCount >0 then
                   begin
                 //eh
                   for   i:=   0   to  MainFrm.ActiveMDIChild.ComponentCount-1   do
                      if   MainFrm.ActiveMDIChild.Components[i]   is   TDBGridEh   then
                      begin
                        all_eh :=TDBGridEh(MainFrm.ActiveMDIChild.Components[i]);
                      end;

                           if all_eh.Font.Size > 2 then
                            begin
                              ib:=all_eh.Font.Size-2 ;
//                                Dec(ib,2);
                              all_eh.Font.Size := ib;
                              all_eh.FooterFont.Size :=ib;


                             for ii := all_eh.FieldCount-1 downto 0 do
                             begin
                             all_eh.Columns[ii].Width := all_eh.Columns[ii].Width-10;

                             all_eh.Columns[ii].Font.Size :=ib;
                             all_eh.Columns[ii].Footer.Font.Size :=ib;

                               if  all_eh.Columns[ii].Footers.Count <> 0 then
                               for iii := 0 to all_eh.Columns[ii].Footers.Count -1 do
                               all_eh.Columns[ii].Footers[iii].Font.Size :=ib;

                             end;

                           end;

                     end;
             end
          else
          end;
          end;

        end;
    end;
//
// try
//        if lpMsg.message = wm_keydown then
//                begin
////                       if t_tools = 6 then
////                          t_tools := 0
////                          else
//                         if lpMsg.wparam= 271 {ord('a')} then
//                                    begin
//
//                                    if MainFrm.MDIChildCount >0 then
//                                      begin
//
//                                     for   j:=   0   to  MainFrm.ActiveMDIChild.ComponentCount-1   do
//                                        if   MainFrm.ActiveMDIChild.Components[j]   is   TDataSource   then
//                                        begin
//                                             all_datsource :=TDataSource(MainFrm.ActiveMDIChild.Components[j]);
//                                            //TDataSource(ActiveMDIChild.Components[j]).DataSet.Append;
//                                           // PayOutSource.DataSet.
//                                        end;
//                                              //eh
//                                       for   i:=   0   to   MainFrm.ActiveMDIChild.ComponentCount-1   do
//                                          if   MainFrm.ActiveMDIChild.Components[i]   is   TDBGridEh   then
//                                          begin
//                                            all_eh :=TDBGridEh(MainFrm.ActiveMDIChild.Components[i]);
//                                             // TDBGridEh(ActiveMDIChild.Components[i]).Color := clBlue;
//
//                                          end;
//
//
//
//                                          //   Msg.wParam :=0;      //取消Esc功能 // 注意不取消多按2两,会自动,撤消数据
//
//
//                                        if k1 then    //判断eh是否为编辑状态,由第二格开始
//                                           begin           //不编辑状态
////                                            all_datsource.DataSet.Cancel;
//                                            MainFrm.Action_CloseSubFrmExecute(Application);
//                                         //   handled := true;
//                                            end
//                                           else
//                                              begin
//                                                 k1 := True;
//                                                 if all_datsource.DataSet.State  in   [dsedit,dsinsert] then
//                                              //   if t1  or all_datsource.DataSet.Modified then     //不编辑,检查数据集是否被修改
//                                                       begin
//
//
//                                                     //     case MessageDlg('是否保存修改?',mtConfirmation,[mbYes,mbNo,mbCancel],0 ) of
//                                                        case  MessageBox(Application.Handle,
//                                                           '是否保存修改', '警告',
//                                                           MB_YESNOCANCEL +
//                                                           MB_ICONWARNING) of
//
//                                                           mrYes :
//                                                           begin
//                                                              all_datsource.DataSet.Post;
//                                                              t1 := False;      { TODO 1 -ohzf -c全局变量_支出_数据集 : 数据集修改开关 }
//                                                              MainFrm.Action_CloseSubFrmExecute(Application);
////                                                              handled := true;
//                                                           end;
//                                                           mrNo:
//                                                            begin                                                                                                     all_datsource.DataSet.Cancel;
//                                                              MainFrm.Action_CloseSubFrmExecute(Application);
////                                                              handled := true;
//                                                               t1 := False;     { TODO 1 -ohzf -c全局变量_支出_数据集 : 数据集修改开关 }
//                                                            end;
//
//                                                          else
//
//                                                          // ShowMessage('cancel');
//                                                          end;
//
//
//
//
//
//
//                                                       end;
//
//
//
//                                      // if   all_datsource.DataSet.state   in   [dsedit,dsinsert]   then   ShowMessage('修改过');
//                                      {if all_datsource.DataSet.Modified or ( not   (all_datsource.DataSet.State  in   [dsInsert]) then}
//
//
//
//
//                                             end;
//
//
//                                 end
//                                     else
//                                        begin
//                                           MainFrm.close;
//                                  {        if MessageBox(Handle, '是否关闭窗口?', '警告', MB_YESNO +
//                                            MB_ICONQUESTION)=mryes  then
//                                            begin
//                                             MainFrm.Close;
//                                            end;}
//                                        end;
//
//
//                        end;
//
//
//           end;
//       except
//
//        end;





  end;
  {下传消息}
  Result := CallNextHookEx(MouseHook, code, wParam, lParam);
end;

function NewThread(P:pointer):Longint;stdcall;
  begin

    if not(Assigned(F_PleaseWait)) then
     begin
       F_PleaseWait:= TF_PleaseWait.Create(Application);

      end;
      F_PleaseWait.Show;  
 
  end;


procedure TMainFrm.FormCreate(Sender: TObject);
var sql : string;
  sharebool : Boolean;
Day,RegStatus : Integer;
   sRegCode:array[0..32] of char; 
begin
  application.Onmessage := appmessage;
  AppPatch := ExtractFilePath(Application.ExeName);
  SkinIni := TIniFile.Create(AppPatch + 'PersonInOut.ini');
  SkinIndex := SkinIni.ReadInteger(SkinSection, SkinIndent, 1);
  SkinData.Active := SkinIni.ReadBool(Skindataini,sknatn,Boolean(1));
//  aboutfrmbReg:= SkinIni.ReadBool(AboutFrmini,AboutFrmbool,Boolean(1));

     MouseHook := 0;

//    with TRegistry.Create do
//        begin
//         RootKey := HKEY_CURRENT_USER;
//          if OpenKey('Software\Microsoft\Windows\Money',True) then
//             begin
//             if ValueExists('StartUserkey') then
//               begin
//                 		//获取正在运行程序的这台电脑的系统特征码
//               		RE_GetSystemID(@sSystemID);
//                  //利用系统特征码生成这台电脑的系统特征码
//                  RE_GetRegCode(sSystemID,282615,@sRegCode);
//                  if Encrypt(ReadString('StartUserkey')) = Encrypt(sRegCode) then
//                    begin
//                     ShareRegist1.Action := False;
//                     sharebool := True;
//                     Application.Title := Application.Title+'[注册用户]';
//                    end;
//
//               end;
//             CloseKey;
//             end;
//        end;
//
//       if sharebool = False then
//       ShareRegist1.Action := True;

end;

procedure TMainFrm.FormShow(Sender: TObject);


begin
  SkinData.LoadFromCollection(SkinStore_Skin, SkinIndex);
  MouseHook := SetWindowsHookEx(WH_GETMESSAGE, @GetMsgProc, HInstance, GetCurrentThreadId());
  if MouseHook = 0 then ShowMessage('Create Hook Error!');

    // 检查更新
  AutoUpgraderPro1.CheckUpdate;


end;

procedure TMainFrm.FormClose(Sender: TObject; var Action: TCloseAction);
var i: Integer;
begin
 try
   // 滚轮
   if MouseHook <> 0 then UnhookWindowsHookEx(MouseHook);

  if MessageBox(Handle, '是否关闭窗口?', '警告', MB_YESNO +
    MB_ICONQUESTION)=mryes  then
    begin
         SkinIni.WriteInteger(SkinSection, SkinIndent, SkinIndex);
         SkinIni.WriteInteger(Skindataini,sknatn,Integer(SkinData.active));
         SkinIni.WriteInteger(AboutFrmini,AboutFrmbool,Integer(Checked));


           for i := 0 to MainFrm.MDIChildCount-1 do
                MainFrm.MDIChildren[i].Free; ;


         SkinIni.Destroy;

            action :=caFree;

           ShellExecute(GetActiveWindow,'open','http://www.wyszg.com/','','',SW_SHOWNORMAL);
      end
      else
       Action := caNone;
  finally

  end;


end;


procedure TMainFrm.MainCloseExecute(Sender: TObject);
begin

  Close();
end;
//-------------------------------------------------------------------------------------------------

procedure TMainFrm.SubFromShow(Caption: string; SubFrmClass: TFormClass);
var
  I: Integer;
  SubFrm: TForm;
begin
  for I := 0 to Screen.FormCount - 1 do // Iterate
  begin
    if (Screen.Forms[i].Caption = Caption) then
    begin
      Screen.Forms[i].BringToFront();
      Exit;
    end
    else
    begin
      SubFrm := SubFrmClass.Create(Self);
      SubFrm.Show();
      Exit;
    end;
  end; // for
end;


procedure TMainFrm.ConsumTimeAnalyseExecute(Sender: TObject);
begin
   OpenChildForm(TTimeAnalyseFrm,TimeAnalyseFrm,MainFrm);
end;

procedure TMainFrm.UpdateConsumTypeExecute(Sender: TObject);
begin
   OpenChildForm(TUpdateConsumTypeFrm,UpdateConsumTypeFrm,MainFrm);
end;

procedure TMainFrm.AllOutShowExecute(Sender: TObject);
begin
   OpenChildForm(TAllPayOutFrm,AllPayOutFrm,MainFrm);
end;

procedure TMainFrm.IncomeOutgoCompareActExecute(Sender: TObject);
begin
   OpenChildForm(TInComePayOutFrm,InComePayOutFrm,MainFrm);
end;

procedure TMainFrm.AllInShowExecute(Sender: TObject);
begin
   OpenChildForm(TIncomeFrm,IncomeFrm,MainFrm);
end;

procedure TMainFrm.ConsumNameAnalyseExecute(Sender: TObject);
begin
   OpenChildForm(TNameAnalyseFrm,NameAnalyseFrm,MainFrm);
end;

procedure TMainFrm.BudgetShowExecute(Sender: TObject);
begin
   OpenChildForm(TBudgetFrm,BudgetFrm,MainFrm);
end;

procedure TMainFrm.ConsumeTypeShowExecute(Sender: TObject);
begin
   OpenChildForm(TConsumeTypeFrm,ConsumeTypeFrm,MainFrm);
end;

procedure TMainFrm.ThisMonthOutExecute(Sender: TObject);
begin
    OpenChildForm(TPayOutFrm,PayOutFrm,MainFrm);
end;

procedure TMainFrm.ConsumTypeAnalyseExecute(Sender: TObject);
begin
   OpenChildForm(TTypeAnalyseFrm,TypeAnalyseFrm,MainFrm);
end;

procedure TMainFrm.Action_InComeTypeExecute(Sender: TObject);
begin
   OpenChildForm(TInComeTypeEditFrm,InComeTypeEditFrm,MainFrm);
end;

//-------------------------------------------------------------------------------------------------

procedure TMainFrm.N10Click(Sender: TObject);
var
  AboutForm: TAboutFrm;
begin
 ShellAbout(Application.MainForm.Handle, PChar(Format('%s ',[Application.Title]))
            , PChar('程式:David,我为DELPHI狂 QQ:289355319,65517285'
            +#13#10),Application.Icon.Handle);

//  AboutForm := TAboutFrm.Create(Self);
//  AboutForm.Show;
end;

procedure TMainFrm.MenuItem_SwitchSkinClick(Sender: TObject); //换皮肤
var
  i: integer;
begin
  i := MenuItem_SwitchSkin.Tag;
  SkinIndex := i;
  SkinData.LoadFromCollection(SkinStore_Skin, i);

  if not SkinData.Active  then
      begin
      SkinData.Active :=True;
      //MainFrm.Paint;
      end;

  if MenuItem_SwitchSkin.Tag <= SkinStore_Skin.Store.Count-1 then
    MenuItem_SwitchSkin.Tag := MenuItem_SwitchSkin.Tag + 1
  else
    begin
    MenuItem_SwitchSkin.Tag := 0;
    skindata.Active:=not skindata.Active;
    end;

end;

procedure TMainFrm.Timer1Timer(Sender: TObject);
begin
  Label_TimeShow.Caption := DateTimeToStr(Now());
  CoolBar1.Color := Self.Color;
end;

procedure TMainFrm.CompressActExecute(Sender: TObject); //压缩数据库
var
  SoucDB, NewDB: string;
begin

  SoucDB := AppPatch + 'Money.mdb';
  NewDB := AppPatch + 'NewMoney.mdb';
  ExpensenDM.ADOCon.Close;
  ResPubFrm.CompactACCESSDatabase(SoucDB, '');
  ExpensenDM.ADOCon.Open;
end;

procedure TMainFrm.ToolButton21Click(Sender: TObject);
begin
if CoolBar1.Visible then
  begin
  coolbar1.Visible := false;
  ToolButton21.ImageIndex := 17;
  printDH(Self);
  end

  else
  begin
  coolbar1.Visible := True;
  ToolButton21.ImageIndex := 16;
  MainFrm.ToolButton18Click(Sender);
  end;


end;

procedure TMainFrm.ToolButton1Click(Sender: TObject);
begin
 t_tools:= 1;
 toolAllclick(Self);
end;

procedure TMainFrm.ToolButton2Click(Sender: TObject);
begin
 t_tools:= 2;
 toolAllclick(Self);
end;

procedure TMainFrm.ToolButton3Click(Sender: TObject);
begin
 t_tools:= 3;
 toolAllclick(Self);
end;

procedure TMainFrm.ToolButton4Click(Sender: TObject);
begin
 t_tools:= 4;
 toolAllclick(Self);
end;

procedure TMainFrm.ToolButton5Click(Sender: TObject);
begin
 t_tools:= 5;
 toolAllclick(Self);
end;

procedure TMainFrm.ToolButton6Click(Sender: TObject);
begin
 t_tools:= 6;
 toolAllclick(Self);
end;

procedure TMainFrm.ToolButton8Click(Sender: TObject);
begin
 t_tools:= 7;
 toolAllclick(Self);
end;


//  万能查询器执行
procedure tmainFrm.seachStr(tableName:string;seachStr2:string);
var s : string;
i : Integer;
adoQuery2 : TADOQuery;
dbgrideh3 : TDBGridEh;
begin
 try

           for i := 0 to ActiveMDIChild.ComponentCount -1 do
            begin
              if ActiveMDIChild.Components[i] is TADOQuery then
                 begin
                   adoQuery2 := TADOQuery((ActiveMDIChild.Components[i]));
 //                   TADOQuery((ActiveMDIChild.Components[i])).SQL.Text :='aa';
                     end;
               if ActiveMDIChild.Components[i] is TDBGridEh then
                  begin
                    dbgrideh3 :=TDBGridEh((ActiveMDIChild.Components[i]));
                    end;
              end;




   with adoQuery2,dbgrideh3 do
   begin
   Close;
   SQL.Text :='';
   adoQuery2.SQL.Text :='select * from '+tableName+ ' where '+ seachStr2;
   adoQuery2.Open;

   Refresh;
   end;

 except

   MessageBox(Handle,'查询出错!','提示',32);
   end;
end;

// function   rightpos(substr,   s:   string):   integer;
//  begin   
//      result   :=   pos(reversestring(substr),   reversestring(s));   
//      if   result   >   0   then   result   :=   length(s)   -   result   +   1   -   length(substr)   +   1;
//  end;   {   rightpos   }

procedure TMainFrm.ToolButton11Click(Sender: TObject);
var i,j,aa,copyStr : Integer;
  bb,cc : string;
begin
   if MainFrm.MDIChildCount >0 then
    if (ActiveMDIChild.Name ='PayOutFrm') or (ActiveMDIChild.Name ='IncomeFrm') or
    (ActiveMDIChild.Name ='InComeTypeEditFrm') or (ActiveMDIChild.Name ='ConsumeTypeFrm') then
       begin
       if (ActiveMDIChild.Name ='PayOutFrm') then
            tableNamestr :=  payout;
       if (ActiveMDIChild.Name ='IncomeFrm') then
          tableNamestr := Incom;
       if (ActiveMDIChild.Name ='InComeTypeEditFrm') then
          tableNamestr := InComeTypeEdit;
       if (ActiveMDIChild.Name ='ConsumeTypeFrm') then
          tableNamestr := ConsumeType;

      if not(Assigned(F_share)) then
      begin
         F_share := TF_share.Create(Application);
         F_share.Hide;
       end
         else
          F_share.ListBox1.Clear;

           F_share.Show;

           for i := 0 to ActiveMDIChild.ComponentCount -1 do
            begin
              if ActiveMDIChild.Components[i] is TADOQuery then
                 begin
                   adoQuery := TADOQuery((ActiveMDIChild.Components[i]));
 //                   TADOQuery((ActiveMDIChild.Components[i])).SQL.Text :='aa';
                     end;
               if ActiveMDIChild.Components[i] is TDBGridEh then
                  begin
                    dbgrideh :=TDBGridEh((ActiveMDIChild.Components[i]));
                    end;
              end;


//               bb := Trim(Copy(adoQuery.SQL.Text,Pos('m',adoQuery.SQL.Text)+1,Length(adoQuery.SQL.Text)));
//               bb := Trim(RightStr(adoQuery.SQL.Text,5));
              //             我是把cds的Name，命名成表名的，所以取ProviderName赋给tableNamestr,当动态查询的表名

             with adoQuery,dbgrideh do
                begin
                N := FieldCount;
                SetLength(x,N);  // 记录型数组的长度，也就是当前表中，有多少个字段的数量

               for j := 0 to N-1 do
                if Fields[j].DataType <> ftBlob  then      // 除去照片
                   begin
                     x[j].Name :=  Columns[j].Title.Caption;     // DBGridEh1中文的标题
                     x[j].FileName := Fields[j];
                   end;

         for aa := 0 to N-1 do        //读字符数组
          if x[aa].Name <>'' then
          begin     //去除空字段
          F_share.ListBox1.AddItem(x[aa].Name,Sender);

          end;
        end;


////
//             if Active = False then     // 有可能因为出现异常,备用
//                 begin
//                  Close;
//                  CommandText := '';
//                  CommandText := 'select * from ' + tableNamestr;
//                   Open;
//                 end;
//             {取DBGridEh的字段总数，是因为有些字段，我设 Visble:= false,
//             如用户管理连接的password字段。
//              如果用cds的FieldCoun会把password显示出来，因为赖不想去改动每个表的cds,
//              所以变换一下，用DBGirgEh}

//     因为有些控件了有lable 不想再加字段，在记录，所以改了，保留这是因为这方面可以方法。怕忘了
    {            case Fields[j].DataType of
                  ftDateTime,ftDate :
                        begin
                          x[j].control := F_share.DateTimePicker1;
                          x[j].control.Visible := False;
                        end;
                  ftString :
                        begin
                          x[j].control := F_share.Edit7;
                          x[j].control.Visible := False;
                        end;
                  ftInteger :
                        begin
                          x[j].control := F_share.Edit1;
                          x[j].control.Visible := False;
                        end;
                  ftFloat,ftVariant :
                        begin
                          x[j].control := F_share.ComboBox2;
                          x[j].control.Visible := False;
                        end;
                   else
                        begin
                          x[j].control := F_share.ComboBox2;
                          x[j].control.Visible := False;
                        end;

                  end;
               }
//            ListBox1.Items.AddObject(x[j].Name,x[j].FileName);

   end
  else
    MessageBox(Handle, '只可用于查询收入、收入类型、支出、消费类型。', '信息', MB_OK +
     MB_ICONINFORMATION);
 end;


procedure TMainFrm.ToolButton16Click(Sender: TObject);
var
   j : Integer;
   all_datsource : TDataSource;
begin

       if MainFrm.MDIChildCount >0 then
         begin

                    //datasource
             for   j:=   0   to   ActiveMDIChild.ComponentCount-1   do
                if   ActiveMDIChild.Components[j]   is   TDataSource   then
                begin
                     all_datsource :=TDataSource(ActiveMDIChild.Components[j]);
                    //TDataSource(ActiveMDIChild.Components[j]).DataSet.Append;
                   // PayOutSource.DataSet.
                end;

          if all_datsource.DataSet.IsEmpty then
              exit ;

              PrintDBGridEh1.PageFooter.CenterText.Text:='第&[Page]页 共&[Pages]页';
              PrintDBGridEh1.PageFooter.LeftText.Text:='用户:'+ID+'印';
              PrintDBGridEh1.PageFooter.RightText.Text:=FormatDateTime('yyyy-mm-dd hh:mm:ss',Now);
              PrintDBGridEh1.DBGridEh:= TDBGridEh(ActiveMDIChild.FindComponent('DBGridEh1'));
              PrintDBGridEh1.Preview;
         end;

end;         

procedure TMainFrm.ToolButton18Click(Sender: TObject);
 var i : Integer;
begin

   for i := 0  to MDIChildCount-1 do
     begin
       with MDIChildren[i] do
           begin
             ClientHeight := MainFrm.ClientHeight - ToolBar1.ClientHeight -CoolBar1.ClientHeight -35;
             ClientWidth := MainFrm.ClientWidth -9;
             Left :=0;
             top := 0;

           end;



     end;

end;

procedure tmainfrm.printDH(sender : TObject);
var i : Integer;
begin
    { 显示coolbar时,子窗的宽度}
   for i := 0  to MDIChildCount-1 do
     begin
       with MDIChildren[i] do
           begin
             ClientHeight := MainFrm.ClientHeight - ToolBar1.ClientHeight -30;
             ClientWidth := MainFrm.ClientWidth -9;
             Left :=0;
             top := 0;

          end;
        end;



  end;



//只允许建立一次子窗体
procedure TMainfrm.OpenChildForm(FormClass: TFormClass; var Fm; AOwner:TComponent);
var
I: Integer;
Child: TForm;
begin
for I := 0 to Screen.FormCount - 1 do
    if Screen.Forms[I].ClassType = FormClass then
        begin
        Child := Screen.Forms[I];
        if Child.WindowState = wsMinimized then
        ShowWindow(Child.Handle, SW_SHOWNORMAL)
        else
        ShowWindow(Child.handle,SW_SHOWNA);
        if (not Child.Visible) then Child.Visible := True;
        Child.BringToFront;
        Child.Setfocus;
        TForm(Fm) := Child;
        Exit;
        end;
  Child := TForm(FormClass.NewInstance);
  TForm(Fm) := Child;
  Child.Create(AOwner);


        //平铺
       Child.ClientHeight := MainFrm.ClientHeight - ToolBar1.ClientHeight -CoolBar1.ClientHeight -35;
       Child.ClientWidth := MainFrm.ClientWidth -9;
      Child.Left :=0;
      Child.top := 0;

end;



procedure tMainFrm.toolAllclick( sender: TObject);
var sql,oadd :Variant;
   i,j,SelRow : Integer;
   all_eh : TDBGridEh; all_datsource : TDataSource;
begin
               //查找当前激动的子窗,的'query',查到后,
               //调用命令，因为所有存储过程都是一样不用另加参数
       if MainFrm.MDIChildCount >0 then
         begin
                     //eh
             for   i:=   0   to   ActiveMDIChild.ComponentCount-1   do
                if   ActiveMDIChild.Components[i]   is   TDBGridEh   then
                begin
                  all_eh :=TDBGridEh(ActiveMDIChild.Components[i]);
                   // TDBGridEh(ActiveMDIChild.Components[i]).Color := clBlue;
                   // PayOutSource.DataSet.
                end;


                    //datasource
             for   j:=   0   to   ActiveMDIChild.ComponentCount-1   do
                if   ActiveMDIChild.Components[j]   is   TDataSource   then
                begin
                     all_datsource :=TDataSource(ActiveMDIChild.Components[j]);
                    //TDataSource(ActiveMDIChild.Components[j]).DataSet.Append;
                   // PayOutSource.DataSet.
                end;


                     with  all_eh,all_datsource.DataSet do
                           begin

                                 if not all_eh.ReadOnly  then
                                 case t_tools of
                                     1 :  First;
                                     2 :  Prior;
                                     3 :  Next;
                                     4 :  Last;
                                     5 :
                                           begin
                                                        begin
                                                        Append;
                                                        SelectedIndex:=0 ;//改变光标焦点列到第一列
                                                        end;
                                         end;
                                     6 :
                                         begin
                                              begin
                                              if (not IsEmpty()) then
                                               if (SelectedRows.Count = 0) or (SelectedRows.Count <2) then
                                                  begin
//                                                    ShowMessage(IntToStr(RecordCount));
                                                   if MessageDlg('是否真的要删除这数据行?', mtConfirmation, [mbYes,mbNo], 0) = mryes then
                                                   if RecordCount=1 then
                                                      First;

                                                    Delete;
                                                  end
                                                  else
                                                if MessageDlg('是否真的要删除 '+ IntToStr(SelectedRows.Count)
                                                +' 数据行?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
                                                 begin
                                                   for SelRow:=0 to SelectedRows.Count-1 do
                                                       begin
                                                        GotoBookmark(pointer(SelectedRows.Items[SelRow]));
                                                           Delete;
                                                           Edit;
                                                          // Post;
                                                       end;
                                                 end;
                                             end;
                                         end;
                                     7 :
                                      try

                                      //  if t1 then       //判断数据集是否被修改
                                       // if all_datsource.DataSet.Modified then //不准确
                                          if (not IsEmpty()) then
                                               begin
                                               Edit;
                                               Post;
                                          //     t1 := False;
                                               MessageBox(Handle,'保存成功。','信息',64);
                                               //Close;
                                               //TForm(ActiveMDIChild).Free;
                                               end;
                                      except
                                        Application.MessageBox('保存出错。',
                                          '错误',
                                          MB_OK
                                          +
                                          MB_ICONSTOP);
                                            Exit;
//                                           TForm(ActiveMDIChild).Free;

                                      end;



                                     else ;
                                     end;
                                end;


         end;


  end;




procedure Tmainfrm.Appmessage(var Msg: TMsg; Var Handled: boolean);
var
   i,j : Integer;
   all_eh,eh : TDBGridEh; all_datsource : TDataSource;
   key : Word;
    e: Exception;

begin
   try
        if msg.message = wm_keydown then
                begin
                       if t_tools = 6 then
                          t_tools := 0
                          else
                         if msg.wparam= 27 {ord('a')} then
                                    begin

                                    if MainFrm.MDIChildCount >0 then
                                      begin

                                     for   j:=   0   to   ActiveMDIChild.ComponentCount-1   do
                                        if   ActiveMDIChild.Components[j]   is   TDataSource   then
                                        begin
                                             all_datsource :=TDataSource(ActiveMDIChild.Components[j]);
                                            //TDataSource(ActiveMDIChild.Components[j]).DataSet.Append;
                                           // PayOutSource.DataSet.
                                        end;
                                              //eh
                                       for   i:=   0   to   ActiveMDIChild.ComponentCount-1   do
                                          if   ActiveMDIChild.Components[i]   is   TDBGridEh   then
                                          begin
                                            all_eh :=TDBGridEh(ActiveMDIChild.Components[i]);
                                             // TDBGridEh(ActiveMDIChild.Components[i]).Color := clBlue;

                                          end;





                                             //   Msg.wParam :=0;      //取消Esc功能 // 注意不取消多按2两,会自动,撤消数据



                                        if k1 then    //判断eh是否为编辑状态,由第二格开始
                                           begin           //不编辑状态
                                           if all_eh.ReadOnly =False then
                                            all_datsource.DataSet.Cancel;
                                            MainFrm.Action_CloseSubFrmExecute(Self );
                                            handled := true;
                                            end
                                           else
                                              begin
                                                 k1 := True;
                                                 if all_datsource.DataSet.State  in   [dsedit,dsinsert] then
                                              //   if t1  or all_datsource.DataSet.Modified then     //不编辑,检查数据集是否被修改
                                                       begin


                                                     //     case MessageDlg('是否保存修改?',mtConfirmation,[mbYes,mbNo,mbCancel],0 ) of
                                                        case  MessageBox(Handle,
                                                           '是否保存修改', '警告',
                                                           MB_YESNOCANCEL +
                                                           MB_ICONWARNING) of

                                                           mrYes :
                                                           begin
                                                              all_datsource.DataSet.Post;
                                                              t1 := False;      { TODO 1 -ohzf -c全局变量_支出_数据集 : 数据集修改开关 }
                                                              MainFrm.Action_CloseSubFrmExecute(Self );
                                                              handled := true;
                                                           end;
                                                           mrNo:
                                                            begin                                                                                                     all_datsource.DataSet.Cancel;
                                                              MainFrm.Action_CloseSubFrmExecute(Self );
                                                              handled := true;
                                                               t1 := False;     { TODO 1 -ohzf -c全局变量_支出_数据集 : 数据集修改开关 }
                                                            end;

                                                          else

                                                          // ShowMessage('cancel');
                                                          end;






                                                       end;



                                      // if   all_datsource.DataSet.state   in   [dsedit,dsinsert]   then   ShowMessage('修改过');
                                      {if all_datsource.DataSet.Modified or ( not   (all_datsource.DataSet.State  in   [dsInsert]) then}




                                             end;


                                 end
                                     else
                                        begin
                                           close;
                                  {        if MessageBox(Handle, '是否关闭窗口?', '警告', MB_YESNO +
                                            MB_ICONQUESTION)=mryes  then
                                            begin
                                             MainFrm.Close;
                                            end;}
                                        end;


                        end;


           end;
       except

        end;

end;


procedure TMainFrm.SpeedButton10Click(Sender: TObject);
begin
   OpenChildForm(TInComePayOutFrm,InComePayOutFrm,MainFrm);
 // SubFromShow('净收入', TInComePayOutFrm);
end;

procedure TMainFrm.SpeedButton4Click(Sender: TObject);
begin
// 全部收入查询
end;


//所有表格的KeyPress事件
procedure TMainFrm.all_DBGridEh1KeyPress(Sender: TObject; var Key: Char);
var
   i,j : Integer;
   all_eh : TDBGridEh; all_datsource : TDataSource;
begin
               //查找当前激动的子窗,的'query',查到后,
               //调用命令，因为所有存储过程都是一样不用另加参数


               //eh
   for   i:=   0   to   ActiveMDIChild.ComponentCount-1   do
      if   ActiveMDIChild.Components[i]   is   TDBGridEh   then
      begin
        all_eh :=TDBGridEh(ActiveMDIChild.Components[i]);
         // TDBGridEh(ActiveMDIChild.Components[i]).Color := clBlue;
         // PayOutSource.DataSet.
      end;


          //datasource
   for   j:=   0   to   ActiveMDIChild.ComponentCount-1   do
      if   ActiveMDIChild.Components[j]   is   TDataSource   then
      begin
           all_datsource :=TDataSource(ActiveMDIChild.Components[j]);
          //TDataSource(ActiveMDIChild.Components[j]).DataSet.Append;
         // PayOutSource.DataSet.
      end;


           with  all_eh,all_datsource.DataSet do
     begin
        {
        if (SelectedIndex= 0) then
        case Key of
        '0'..'9', #8, #13, #27: ;
        else
        Key := #0;
        end;
       }

        if   key=#13   then         //判断接收者是否是TDBGRID
          if   not   (ActiveMDIChild.ActiveControl is   TDBGridEh)   then
          begin
              key:=#0;
              Perform(WM_NEXTDLGCTL,0,0);
          end
          else
          if   (ActiveMDIChild.ActiveControl   is   TDBGridEh)    then
            begin
              if   all_eh.SelectedIndex<all_eh.FieldCount-1     then
                  begin
                   SelectedIndex:=SelectedIndex+1;
                   cboxSFtVr := selectedindex;   // dbcombox 焦点继续
                  end
              else
                   begin
                  Next;
                  if   Eof   then
                  append;

                  SelectedIndex:=0;
                  end;


          end;


  end;
end;









  //所有表格的KeyDown事件
procedure  TMainFrm.All_DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   i,j : Integer;
   all_eh : TDBGridEh; all_datsource : TDataSource;
begin
               //查找当前激动的子窗,的'query',查到后,
               //调用命令，因为所有存储过程都是一样不用另加参数

               //eh
   for   i:=   0   to   ActiveMDIChild.ComponentCount-1   do
      if   ActiveMDIChild.Components[i]   is   TDBGridEh   then
      begin
        all_eh :=TDBGridEh(ActiveMDIChild.Components[i]);
         // TDBGridEh(ActiveMDIChild.Components[i]).Color := clBlue;

      end;


          //datasource
   for   j:=   0   to   ActiveMDIChild.ComponentCount-1   do
      if   ActiveMDIChild.Components[j]   is   TDataSource   then
      begin
           all_datsource :=TDataSource(ActiveMDIChild.Components[j]);
      end;


           with  all_eh,all_datsource.DataSet do
           begin
          if (key = vk_insert) or (Key = vk_F5)  then  // 追加一行
              begin
                   Key := 0;
                   t_tools:= 5;
                   toolAllclick(Self);

                 end;

                if key = vk_down then  //禁止用方向键增加行
                  begin
                   if  SumList.RecNo = RowCount-1 then
                       Key := 0;
                  end;


                   if (ssAlt in Shift) and (Key = vk_delete)  then
                   begin
                    t_tools:= 6;
                    toolAllclick(Self);
                    end;
                   //保存
                  if key = vk_F1 then
                    begin
                    t_tools:= 7;
                    toolAllclick(Self);

                    end;


                  //编辑,下拉列表
                  if key = vk_F2 then
                    begin
                      Columns[SelectedIndex].DropDown;
                     // If SelectedField.FieldName = PayOutFrm.DBComboBoxEh1.DataField then
                       //     PayOutFrm.dbcomboBoxeh1.DropDown;

                    end;


       end;

   end;


procedure TMainFrm.Action_CloseSubFrmExecute(Sender: TObject);
begin
  if MainFrm.MDIChildCount > 0 then
    begin
    if MainFrm.MDIChildren[0].CloseQuery then
       MainFrm.MDIChildren[0].Close ;
    end;
end;

procedure TMainFrm.ToolButton15Click(Sender: TObject);
var
        ExpClass: TDBGridEhExportClass;
        Ext: string;
        saveDlg: TSaveDialog;

   i,j : Integer;
   all_eh : TDBGridEh; all_datsource : TDataSource;
begin
               //查找当前激动的子窗,的'query',查到后,
               //调用命令，因为所有存储过程都是一样不用另加参数

 if MainFrm.MDIChildCount >0 then
     begin
               //eh
   for   i:=   0   to   ActiveMDIChild.ComponentCount-1   do
      if   ActiveMDIChild.Components[i]   is   TDBGridEh   then
      begin
        all_eh :=TDBGridEh(ActiveMDIChild.Components[i]);
         // TDBGridEh(ActiveMDIChild.Components[i]).Color := clBlue;

      end;




  saveDlg := TSaveDialog.Create(nil);
  saveDlg.Filter := 'Execl 文件(*.XLS)|*.XLS|HTML 文件(*.HTM)|*.HTM|TXT 文件 (*.txt)|*.TXT|Word 文件 (*.doc)|*.doc';
  saveDlg.DefaultExt := 'XLS';
  saveDlg.FileName := 'MVC';
  try
       all_eh.SetFocus;
    if saveDlg.Execute then
    begin
      case saveDlg.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
        2: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        3: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
        4: begin ExpClass := TDBGridEhExportAsText; Ext := 'doc'; end;
      else
        ExpClass := nil; Ext := '';
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(saveDlg.FileName, Length(saveDlg.FileName) - 2, 3)) <>
          UpperCase(Ext) then
          saveDlg.FileName := saveDlg.FileName + '.' + Ext;
        SaveDBGridEhToExportFile(ExpClass, TDBGridEh(all_eh),
          saveDlg.FileName, True);
      end;
      
      MessageBox(Handle, '导出完毕！', '信息', MB_OK +
        MB_ICONINFORMATION);
    end;
  finally
    saveDlg.Free;
  end;

 end;
end;

procedure Tmainfrm.Wmhotkeyhandle(var msg:Tmessage);
var i,ii,iii : Integer;
all_eh : TDBGridEh;
  begin
   if MainFrm.MDIChildCount >0 then
     begin
   //eh
     for   i:=   0   to   ActiveMDIChild.ComponentCount-1   do
        if   ActiveMDIChild.Components[i]   is   TDBGridEh   then
        begin
          all_eh :=TDBGridEh(ActiveMDIChild.Components[i]);
           // TDBGridEh(ActiveMDIChild.Components[i]).Color := clBlue;

        end;




       if (msg.LParamHi=107) and (msg.lparamLo=MOD_CONTROL or mod_Alt) then
       begin
         msg.Result:=1;
          if all_eh.Font.Size < 100 then
              begin
               ib:=all_eh.Font.Size+1;

                 all_eh.Font.Size := ib;   // 保持行的宽
                 all_eh.FooterFont.Size :=ib; // 保持合计行的宽

             for ii := 0 to all_eh.FieldCount-1 do
             // colums颜色改变了,colums的size就不能随eh变,所以加了循环
               begin
               all_eh.Columns[ii].Width := all_eh.Columns[ii].Width+10;
               all_eh.Columns[ii].Font.Size :=ib;
               all_eh.Columns[ii].Footer.Font.Size :=ib;

                 if  all_eh.Columns[ii].Footers.Count <> 0 then
                 for iii := 0 to all_eh.Columns[ii].Footers.Count -1 do
                 all_eh.Columns[ii].Footers[iii].Font.Size :=ib;


              end;
            end;

       end;


       if (msg.LParamHi=109) and (msg.lparamLo=MOD_CONTROL or mod_Alt) then
       begin
         msg.Result:=1;
             if all_eh.Font.Size > 4 then
              begin
                ib:=all_eh.Font.Size-1 ;
                all_eh.Font.Size := ib;
                all_eh.FooterFont.Size :=ib;


               for ii := all_eh.FieldCount-1 downto 0 do
               begin
               all_eh.Columns[ii].Width := all_eh.Columns[ii].Width-10;

               all_eh.Columns[ii].Font.Size :=ib;
               all_eh.Columns[ii].Footer.Font.Size :=ib;

                 if  all_eh.Columns[ii].Footers.Count <> 0 then
                 for iii := 0 to all_eh.Columns[ii].Footers.Count -1 do
                 all_eh.Columns[ii].Footers[iii].Font.Size :=ib;

               end;


            end;
       end;




{
          //eh
     for   i:=   0   to   ActiveMDIChild.ComponentCount-1   do
        if   ActiveMDIChild.Components[i]   is   TDBGridEh   then
        begin
          eh :=TDBGridEh(ActiveMDIChild.Components[i]);
           // TDBGridEh(ActiveMDIChild.Components[i]).Color := clBlue;

        end;

         if (Msg.wParam = 107 ) or (Msg.wParam = 45) then
               SendMessage(Handle ,WM_MOUSEWHEEL,word(Ord('f')),1 shl 29);

             Button1.Caption := IntToStr(i)+','+inttostr(Msg.wParam);

         if (Msg.message = wm_keydown) and (Msg.message = wm_MouseWheel) then
           //  if   (msg.wParam = 17)  and (Msg.lParam = wm_mousewheel)  then
                   begin
                     if   Msg.wParam >0   then
                         ib:=ib+1
                        else
                         if ib >8 then   // 控件默认
                             ib:=ib-1 ;


                //wheelDelta参数表示滚动一格的值，向上滚动为正数，向下滚动则为负数
                    Button1.Caption := IntToStr(i)+','+inttostr(Msg.wParam);
                    eh.Font.Size := ib;

              //  DBGridEh1.Height := i;
             //   Label1.Caption:=inttostr(i);

                     end;
                                  //eh.Font.Size := ib;



 }




     end;
   end;



procedure TMainFrm.N24Click(Sender: TObject);
begin
if not(Assigned(form4)) then
 begin
   form4:= Tform4.Create(Application);

  end;
  form4.Show;  
end;

procedure TMainFrm.N25Click(Sender: TObject);
begin
if not(Assigned(fclear)) then
 begin
   fclear:= Tfclear.Create(Application);

  end;
  fclear.Show;
end;


procedure TMainFrm.N26Click(Sender: TObject);
begin
//    if not(Assigned(Fusers)) then
//     begin
//       Fusers:= TFusers.Create(Application);
//      end;
      Fusers:= TFusers.Create(Application);
      Fusers.Show;
end;


procedure TMainFrm.ToolButton13Click(Sender: TObject);
const 
    BeginRow = 2; BeginCol = 1;
var
    iNo : Integer;
    hThread:Thandle;//声明了一个句柄
    ThreadID:DWord;
begin
 if MessageBox(Handle, '只支持"个人理财助手2009 2.3版"数据库导入。', '提示', MB_YESNO +
    MB_ICONQUESTION)=mryes  then
    begin
    // 关闭所有子窗
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

      OpenDialog1.Title := '请选择Money.mdb文件';
      OpenDialog1.Filter := 'access(*.mdb) |*.mdb';
      if OpenDialog1.Execute then
        edt1 := OpenDialog1.FileName;

      if (trim(edt1) = '') then
        begin
          MessageBox(Handle, '请选择正确的access路径。', '提示信息', MB_OK +
            MB_ICONWARNING);
          exit;
        end;

               if not(Assigned(F_PleaseWait)) then
             begin
               F_PleaseWait:= TF_PleaseWait.Create(Application);
              end;
              trimebol:= True;
              F_PleaseWait.Show;
     end;
 end;
procedure TMainFrm.ShareRegist1GetMachineCode(var MachineCode: String);
begin
skey :=MachineCode;
end;

procedure TMainFrm.ToolButton20Click(Sender: TObject);
var iNo : Integer;
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

   with TRegistry.Create do
   begin
     RootKey := HKEY_CURRENT_USER;
      if OpenKey('Software\Microsoft\Windows\Money',True) then
       begin
          if KeyExists('Eh') then
            DeleteKey('Eh');
            Application.MessageBox('所有"表格"格式已初始化.', '提示', MB_OK + 
              MB_ICONINFORMATION);
              
         end;
    CloseKey;
   end;

end;

end.

