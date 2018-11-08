unit fAnimatedSplash;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ImgList, ActnList, StdCtrls, ComCtrls, ExtCtrls, Vcl.Buttons;

type
  TfmAnimatedSplash = class(TForm)
    pnlOuter: TPanel;
    pnlInner: TPanel;
    anmSplashAnimation: TAnimate;
    pnlMessage: TPanel;
    pbMain: TProgressBar;
    pnlProgressInfo: TPanel;
    lblProgressInfo: TLabel;
    btnCancel: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnCancelClick(Sender: TObject);
    procedure btnCancelMouseEnter(Sender: TObject);
    procedure btnCancelMouseLeave(Sender: TObject);
  private
    FEscapePressed: Boolean;
    FSavedCursor: Integer;
    function GetProgressBarVisible: Boolean;
    procedure SetProgressBarVisible(const Value: Boolean);
    procedure SetProgressInfo(const AProgressInfo: string);
    procedure SetFormHeight;
    procedure AbortOperation;
  protected
    procedure Loaded; override;
    procedure DoCreate; override;
  public
    procedure ShowForm(ACommonAVI: TCommonAVI = aviNone; AMessage: string = ''); overload;
    procedure ShowForm(AResName: string; AMessage: string = ''); overload;
    procedure ReleaseForm;
    procedure SetProgress(const Value, Total: Integer; const AProgressInfo: string = '');

    property ProgressBarVisible: Boolean read GetProgressBarVisible write SetProgressBarVisible;
  end;

const
  SCheckFilesResName = 'CHECK_FILES_AVI';

implementation

uses
  ShellAnimations,  // нужен е, за да link-не няколко res-a със стандарните анимации: http://stackoverflow.com/questions/1492799/how-do-i-get-tanimates-common-avis-to-work-on-vista-and-win7
  uUtils,
  uClientUtils,
  AbmesDialogs,
  uClientApp,
  uScalingUtils,
  JclSysInfo;

resourcestring
  SConfirmAbort = 'Моля, потвърдете прекъсването на операцията!';

{$R *.DFM}
{$R Resource\AnimatedSplash.res}

{ TfmAnimatedSplash }

procedure TfmAnimatedSplash.FormCreate(Sender: TObject);
begin
  ReplaceAppParams(Self);
  PositionFormInScreen;
  SetProgressInfo('');
end;

procedure TfmAnimatedSplash.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
    FEscapePressed:= True;
end;

function TfmAnimatedSplash.GetProgressBarVisible: Boolean;
begin
  Result:= pbMain.Visible;
end;

procedure TfmAnimatedSplash.SetFormHeight;
var
  NewClientHeight: Integer;
begin
  NewClientHeight:=
    pnlOuter.BevelWidth * 2 +
    pnlOuter.BorderWidth * 2 +
    pnlMessage.Height +
    Ord(anmSplashAnimation.Visible) * anmSplashAnimation.Height +
    Ord(pnlProgressInfo.Visible) * (lblProgressInfo.Height + 2) +
    Ord(pbMain.Visible) * pbMain.Height;

  if (NewClientHeight <> ClientHeight) then
    begin
      ClientHeight:= NewClientHeight;
      Application.ProcessMessages;
    end;
end;

procedure TfmAnimatedSplash.SetProgress(const Value, Total: Integer; const AProgressInfo: string);
begin
  pbMain.Max:= Total;
  pbMain.Position:= Value;

  pbMain.Position:= Value + 1;
  pbMain.Position:= Value;

  SetProgressInfo(AProgressInfo);

  BringToFront;
  Application.ProcessMessages;

  if FEscapePressed then
    begin
      FEscapePressed:= False;
      AbortOperation;
    end;
end;

procedure TfmAnimatedSplash.AbortOperation;
begin
  if (MessageDlgEx(SConfirmAbort, mtConfirmation, mbOKCancel, 0) = mrOK) then
    Abort;
end;

procedure TfmAnimatedSplash.SetProgressBarVisible(const Value: Boolean);
begin
  if (Value <> pbMain.Visible) then
    begin
      pbMain.Visible:= Value;
      SetFormHeight;
    end;
end;

procedure TfmAnimatedSplash.SetProgressInfo(const AProgressInfo: string);
begin
  lblProgressInfo.Caption:= AProgressInfo;
  pnlProgressInfo.Visible:= (AProgressInfo <> '');
  Application.ProcessMessages;
  SetFormHeight;
end;

procedure TfmAnimatedSplash.Loaded;
begin
  inherited Loaded;
  TClientComponentChecker.CheckForDisconnectedEventHandlers(Self);
end;

procedure TfmAnimatedSplash.ReleaseForm;
begin
  Sleep(500);
  Release;
end;

procedure TfmAnimatedSplash.btnCancelClick(Sender: TObject);
begin
  FEscapePressed:= True;
end;

procedure TfmAnimatedSplash.btnCancelMouseEnter(Sender: TObject);
begin
  FSavedCursor:= Screen.Cursor;
  Screen.Cursor:= crArrow;
end;

procedure TfmAnimatedSplash.btnCancelMouseLeave(Sender: TObject);
begin
  Screen.Cursor:= FSavedCursor;
end;

procedure TfmAnimatedSplash.DoCreate;
begin
  TClientComponentChecker.CheckComponentsNotConnected(Self);
  inherited DoCreate;
end;

procedure TfmAnimatedSplash.ShowForm(ACommonAVI: TCommonAVI;
  AMessage: string);
begin
  anmSplashAnimation.CommonAVI:= ACommonAVI;
  anmSplashAnimation.Visible:= (ACommonAVI <> aviNone);
  anmSplashAnimation.Active:= (ACommonAVI <> aviNone);

  if (AMessage <> '') then
    pnlMessage.Caption:= AMessage;

  Caption:= pnlMessage.Caption;

  SetFormHeight;
  Show;

  Application.ProcessMessages;
end;

procedure TfmAnimatedSplash.ShowForm(AResName, AMessage: string);
begin
  Assert(AResName <> '', 'AResName must be non-empty string!');

  anmSplashAnimation.ResName:= AResName;
  anmSplashAnimation.Active:= True;

  if (AMessage <> '') then
    pnlMessage.Caption:= AMessage;

  SetFormHeight;
  Show;

  Application.ProcessMessages;
end;

end.
