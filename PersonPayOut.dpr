program PersonPayOut;

uses
  Forms,
  MainUnit in 'MainUnit.pas' {MainFrm},
  DataModuleUnit in 'DataModuleUnit.pas' {ExpensenDM: TDataModule},
  PayOutUnit in 'PayOutUnit.pas' {PayOutFrm},
  TimeAnalyUnit in 'TimeAnalyUnit.pas' {TimeAnalyseFrm},
  AllPayOutUnit in 'AllPayOutUnit.pas' {AllPayOutFrm},
  IncomeUnit in 'IncomeUnit.pas' {IncomeFrm},
  BudgetUnit in 'BudgetUnit.pas' {BudgetFrm},
  ConsumeTypeUnit in 'ConsumeTypeUnit.pas' {ConsumeTypeFrm},
  UpdateConsumTypeUnit in 'UpdateConsumTypeUnit.pas' {UpdateConsumTypeFrm},
  NameAnalyUnit in 'NameAnalyUnit.pas' {NameAnalyseFrm},
  TypeAnalyUnit in 'TypeAnalyUnit.pas' {TypeAnalyseFrm},
  ResPubUnit in 'ResPubUnit.pas' {ResPubFrm},
  InComeTypeEditUnit in 'InComeTypeEditUnit.pas' {InComeTypeEditFrm},
  IncomePayOutCompare in 'IncomePayOutCompare.pas' {InComePayOutFrm},
  U_share in 'U_share.pas' {F_share},
  clearF in 'clearF.pas' {fclear},
  U_login in 'U_login.pas' {F_login},
  U_wait in 'U_wait.pas' {F_PleaseWait},
  usersF in 'usersF.pas' {Fusers},
  DesHex64 in 'DesHex64.pas',
  HardInfo in 'HardInfo.pas',
  MACAddressInfo in 'MACAddressInfo.pas',
  pa in 'pa.pas' {Form3},
  Unit4 in 'Unit4.pas' {Form4},
  CodeEncDec in 'CodeEncDec.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '个人理财助手2009';
  Application.CreateForm(TExpensenDM, ExpensenDM);
  Application.CreateForm(TMainFrm, MainFrm);
  Application.ShowMainForm := False; // 隐藏窗口
//  if aboutfrmb  then
//  Application.CreateForm(TAboutFrm, AboutFrm);


  Application.CreateForm(TF_login, F_login);
  F_login.ShowModal;       //显示窗口

  Application.Run;
end.

