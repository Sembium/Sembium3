unit fSvrExecuteMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvComponent, JvTrayIcon, StdCtrls, Menus, ActnList, ExtCtrls,
  JvAppEvent, JvComponentBase, DSCommonServer, DSTCPServerTransport, DSServer,
  IPPeerServer, System.Actions, DbxCompressionFilter;

type
  TfmSvrExecuteMain = class(TForm)
    tiServer: TJvTrayIcon;
    alActions: TActionList;
    actRestore: TAction;
    actShutDown: TAction;
    actMinimize: TAction;
    pmTrayIcon: TPopupMenu;
    miRestore: TMenuItem;
    ml1: TMenuItem;
    miShutDown: TMenuItem;
    btnShutDown: TButton;
    btnMinimize: TButton;
    Bevel1: TBevel;
    imgIcon: TImage;
    AppEvents: TJvAppEvents;
    DSServer: TDSServer;
    dsscSvrExecute: TDSServerClass;
    DSTCPServerTransport: TDSTCPServerTransport;
    procedure btnMinimizeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actRestoreExecute(Sender: TObject);
    procedure actMinimizeExecute(Sender: TObject);
    procedure actShutDownExecute(Sender: TObject);
    procedure dsscSvrExecuteGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
  private
    { Private declarations }
  public
    { Public declarations }  
  end;

var
  fmSvrExecuteMain: TfmSvrExecuteMain;

implementation

uses
  dSvrExecute, System.UITypes, uApp;

{$R *.dfm}

resourcestring
  SConfirmShutDown  = 'Shut down Execute Server';

procedure TfmSvrExecuteMain.btnMinimizeClick(Sender: TObject);
begin
  Hide;
end;

procedure TfmSvrExecuteMain.dsscSvrExecuteGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TdmSvrExecute;
end;

procedure TfmSvrExecuteMain.FormCreate(Sender: TObject);
begin
  Caption:= SVendorName + ' ' + Caption;
  tiServer.Hint:= Caption;

  tiServer.Icon.Assign(Application.Icon);
  imgIcon.Picture.Assign(Application.Icon);
end;

procedure TfmSvrExecuteMain.actRestoreExecute(Sender: TObject);
begin
  Show;
end;

procedure TfmSvrExecuteMain.actMinimizeExecute(Sender: TObject);
begin
  Hide;
end;

procedure TfmSvrExecuteMain.actShutDownExecute(Sender: TObject);
begin
  if (MessageDlg(SConfirmShutDown, mtConfirmation, mbOkCancel, 0) = mrOk) then
    Application.Terminate;
end;

end.
