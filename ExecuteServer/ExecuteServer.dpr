program ExecuteServer;

uses
  MidasLib,
  Forms,
  IPPeerServer,
  fSvrExecuteMain in 'fSvrExecuteMain.pas' {fmSvrExecuteMain},
  uUtils in '..\Common\uUtils.pas',
  dSvrExecute in 'dSvrExecute.pas' {dmSvrExecute: TDSServerModule},
  uNestProc in '..\Common\uNestProc.pas',
  uEnumeratorUtils in '..\Common\uEnumeratorUtils.pas',
  uServerMessageIds in '..\Common\uServerMessageIds.pas',
  uFuncUtils in '..\Common\uFuncUtils.pas',
  uParallelUtils in '..\Common\uParallelUtils.pas',
  uRttiUtils in '..\Common\uRttiUtils.pas',
  uSystemLocaleUtils in '..\Common\uSystemLocaleUtils.pas',
  uContentStorageUtils in 'uContentStorageUtils.pas',
  uSvrDocUtils in '..\Server\uSvrDocUtils.pas',
  uContentStorageLocatorsCache in '..\Server\uContentStorageLocatorsCache.pas',
  uJsonUtils in '..\Common\uJsonUtils.pas',
  uContentStorage.Contents in '..\Server\uContentStorage.Contents.pas',
  uContentStorage.Results in '..\Common\uContentStorage.Results.pas',
  uContentStorage.Utils in '..\Common\uContentStorage.Utils.pas',
  uCommonApp in '..\..\App\uCommonApp.pas',
  uComputerInfo in '..\Common\uComputerInfo.pas',
  uHttpClientProxyUtils in '..\Common\uHttpClientProxyUtils.pas',
  uApp in '..\..\App\ExecuteServer\uApp.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := SVendorName + ' Execute Server';
  Application.CreateForm(TfmSvrExecuteMain, fmSvrExecuteMain);
  Application.Run;
end.
