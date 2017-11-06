unit fReconnect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ActnList, fBaseForm, System.Actions, JvExControls, JvAnimatedImage, JvGIFCtrl;

type
  TfmReconnect = class(TBaseForm)
    pnlTop: TPanel;
    pnlBottom: TPanel;
    moMessages: TMemo;
    lblConnectionLost: TLabel;
    btnReconnect: TBitBtn;
    btnExit: TBitBtn;
    btnDetails: TBitBtn;
    actReconnect: TAction;
    actExit: TAction;
    actDetails: TAction;
    pnlConnecting: TPanel;
    lblConnecting: TLabel;
    pnlStatus: TPanel;
    lblStatus: TLabel;
    lblSuccessful: TLabel;
    pnlConnectingPicture: TPanel;
    imgConnecting: TJvGIFAnimator;
    pnlConnectionLostPicture: TPanel;
    imgConnectionLost: TImage;
    pnlConnectionOKPicture: TPanel;
    imgConnectionOK: TImage;
    procedure FormCreate(Sender: TObject);
    procedure actDetailsExecute(Sender: TObject);
    procedure actDetailsUpdate(Sender: TObject);
    procedure actReconnectExecute(Sender: TObject);
    procedure actExitExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    FStarted: Boolean;
    FConnected: Boolean;
    class var FLastShowTick: Cardinal;
    function TrySingleReconnect: Boolean;
    procedure TryMultiReconnect(ATryCount: Integer);
    function InternetConnectionAvailable: Boolean;
    procedure CheckInternetConnection;
    class constructor CreateClass;
  end;

implementation

uses
  dMain, DBXCommon, uUtils,
  OtlTaskControl, OtlTask, uPing, System.StrUtils, uClientConnectionInfo;

resourcestring
  SConnecting = 'Свързване към %s...';
  SNoInternetConnection = 'Няма Интернет връзка.';
  SNoServerConnection = 'Услугата не е достъпна.';

{$R *.dfm}

procedure TfmReconnect.actDetailsExecute(Sender: TObject);
begin
  Height:= Height + moMessages.Height;
  moMessages.Visible:= True;
end;

procedure TfmReconnect.actDetailsUpdate(Sender: TObject);
begin
  (Sender as TAction).Visible:= not moMessages.Visible;
end;

procedure TfmReconnect.actExitExecute(Sender: TObject);
begin
  KillApplication(1);
end;

procedure TfmReconnect.actFormUpdate(Sender: TObject);
begin
  inherited;
  lblStatus.Caption:= Format(SConnecting, [ClientConnectionInfo.ActiveServerName]);
end;

procedure TfmReconnect.actReconnectExecute(Sender: TObject);
begin
  TryMultiReconnect(1);
end;

function TfmReconnect.InternetConnectionAvailable: Boolean;
var
  Available: Boolean;
begin
  Available:= False;

  CreateTask(
    procedure (const task: IOmniTask)
    begin
      Available:= Ping('www.google.com', 200);
    end
  ).Run().Terminate(300);

  Result:= Available;
end;

procedure TfmReconnect.CheckInternetConnection;
begin
  lblConnectionLost.Caption:= '...';
  Application.ProcessMessages;

  if not InternetConnectionAvailable then
    lblConnectionLost.Caption:= SNoInternetConnection
  else
    lblConnectionLost.Caption:= SNoServerConnection;

  Application.ProcessMessages;
end;

class constructor TfmReconnect.CreateClass;
begin
  FLastShowTick:= GetTickCount;
end;

procedure TfmReconnect.FormActivate(Sender: TObject);
begin
  inherited;

  if not FStarted then
    begin
      FStarted:= True;

      try
        if (TickCountDiff(FLastShowTick, GetTickCount) > 30 * 1000) then
          TryMultiReconnect(1);
      finally
        FLastShowTick:= GetTickCount;
      end;

      actDetails.Visible:= True;
      actReconnect.Visible:= True;
      actExit.Visible:= True;
    end;
end;

procedure TfmReconnect.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if not FConnected then
    KillApplication(1);
end;

procedure TfmReconnect.FormCreate(Sender: TObject);
begin
  inherited;
  lblStatus.Caption:= '...';
  lblConnectionLost.Caption:= '';
  Height:= Height - moMessages.Height;
end;

procedure TfmReconnect.FormShow(Sender: TObject);
begin
  inherited;
  CheckInternetConnection;
end;

procedure TfmReconnect.TryMultiReconnect(ATryCount: Integer);
var
  i: Integer;
begin
  CheckInternetConnection;

  pnlConnectionOKPicture.Visible:= False;
  pnlConnectionLostPicture.Visible:= False;
  pnlConnecting.Visible:= True;
  pnlConnectingPicture.Visible:= True;
  try
    Application.ProcessMessages;
    for i:= 1 to ATryCount do
      if TrySingleReconnect then
        Break;
  finally
    pnlConnecting.Visible:= False;
    pnlConnectingPicture.Visible:= False;
    pnlConnectionLostPicture.Visible:= True;
  end;
end;

function TfmReconnect.TrySingleReconnect: Boolean;
begin
  Result:= False;
  try
    moMessages.Clear;
    lblSuccessful.Visible:= False;

    dmMain.CheckServerConnection;

    lblSuccessful.Visible:= True;
    pnlConnectionLostPicture.Visible:= False;
    pnlConnectingPicture.Visible:= False;
    pnlConnectionOKPicture.Visible:= True;
    imgConnecting.Animate:= False;
    Application.ProcessMessages;
    Sleep(1000);
    Application.ProcessMessages;
    Result:= True;
    FConnected:= True;
    PostMessage(Handle, WM_CLOSE, 0, 0);
  except
    on E: Exception do
      moMessages.Lines.Text:= E.Message;
  end;
end;

end.
