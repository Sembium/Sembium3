unit fSvrMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, Menus, JvAppEvent, StdCtrls, Buttons, ExtCtrls,
  JvComponent, JvTrayIcon, JvComponentBase, System.Actions;

type
  TfmSvrMain = class(TForm)
    bvlMain: TBevel;
    imgIcon: TImage;
    lblTotalDataModules: TLabel;
    btnMinimize: TBitBtn;
    btnShutDown: TBitBtn;
    AppEvents: TJvAppEvents;
    tiServer: TJvTrayIcon;
    pmTrayIcon: TPopupMenu;
    miRestore: TMenuItem;
    ml1: TMenuItem;
    miShutDown: TMenuItem;
    alActions: TActionList;
    actRestore: TAction;
    actShutDown: TAction;
    btnRefresh: TBitBtn;
    actMinimize: TAction;
    actRefresh: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actRestoreExecute(Sender: TObject);
    procedure actShutDownExecute(Sender: TObject);
    procedure actMinimizeExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure Loaded; override;
  public
    { Public declarations }
  end;

const
  STotalDataModules = '%d active objects';
  SConfirmShutDown  = 'Shut down server application';

implementation

uses
  uUtils, uSvrUtils, ShellApi, dDBPooledDataModule, dSvrMain, UITypes, AbmesCrypt;

{$R *.DFM}

procedure TfmSvrMain.FormCreate(Sender: TObject);
var
  LargeIcon: HICON;
  SmallIcon: HICON;
begin
  Caption:= Application.Title;
  tiServer.Hint:= Application.Title;

  imgIcon.Picture.Assign(Application.Icon);

  ExtractIconEx(PChar(Application.ExeName), 0, LargeIcon, SmallIcon, 1);
  tiServer.Icon.Handle:= SmallIcon;
end;

procedure TfmSvrMain.FormShow(Sender: TObject);
begin
  actRefresh.Execute;
  ForceForegroundWindow(Handle);
end;

procedure TfmSvrMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caHide;
end;

procedure TfmSvrMain.actMinimizeExecute(Sender: TObject);
begin
  Hide;
end;

procedure TfmSvrMain.actRestoreExecute(Sender: TObject);
begin
  Show;
end;

procedure TfmSvrMain.actShutDownExecute(Sender: TObject);
begin
  if (MessageDlg(SConfirmShutDown, mtConfirmation, mbOkCancel, 0) = mrOk) then
    begin
      tiServer.Active:= False;
      KillApplication(0);
    end;
end;

procedure TfmSvrMain.actRefreshExecute(Sender: TObject);
begin
  GlobalNameSpace.BeginRead;
  try
    lblTotalDataModules.Caption:= Format(STotalDataModules, [Screen.DataModuleCount]);
  finally
    GlobalNameSpace.EndRead;
  end;  { try }
end;

procedure TfmSvrMain.Loaded;
begin
  inherited;
  TServerComponentChecker.CheckForDisconnectedEventHandlers(Self);
  TServerComponentChecker.CheckComponentsNotConnected(Self);
end;

end.
