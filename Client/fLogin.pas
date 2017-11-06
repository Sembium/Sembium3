unit fLogin;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fDataForm, ImgList, ActnList, StdCtrls, Buttons, ExtCtrls, Menus,
  JvButtons, JvComponentBase, JvCaptionButton, System.Actions,
  AbmesAutoComplete, JvExExtCtrls, JvBevel, JvExControls, JvLabel;

type
  TfmLogin = class(TDataForm)
    edtUserName: TEdit;
    lblUserName: TLabel;
    edtPassword: TEdit;
    lblPassword: TLabel;
    imgPassword: TImage;
    imgUser: TImage;
    edtDBName: TEdit;
    lblDBName: TLabel;
    imgDB: TImage;
    imgBackground: TImage;
    btnOK2: TBitBtn;
    btnCancel2: TBitBtn;
    edtUserNameAutoComplete: TAbmesAutoComplete;
    JvBevel1: TJvBevel;
    pnlForgotPassword: TPanel;
    lblForgotPassword: TLabel;
    pnlSignup: TPanel;
    lblSignup: TLabel;
    lblLogoAppName: TJvLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lblForgotPasswordClick(Sender: TObject);
    procedure lblSignupClick(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure LinkLabelMouseEnter(Sender: TObject);
    procedure LinkLabelMouseLeave(Sender: TObject);
  private
    FRequiredLoginName: string;
    FRequiredServerNames: string;
    FRequiredDBName: string;
    procedure SetRecentUsers;
  protected
    procedure DoApplyUpdates; override;
  public
    procedure Initialize; override;
    class function HasCaptionMenu: Boolean; override;
    procedure SetDataParams(const ALoginName: string = ''; const AServerNames: string = ''; const ADBName: string = ''); reintroduce; virtual;
    class function ShowForm(const ALoginName: string = ''; const AServerNames: string = ''; const ADBName: string = ''): Boolean;
  end;

implementation

uses
  dMain, uClientUtils, fSetContextDate, fMain, System.StrUtils, uRecentUsers,
  System.TimeSpan, Winapi.ShellAPI, uDocClientUtils, uConnectionUtils,
  uIdentity.Manager, System.UITypes, uClientApp;

{$R *.DFM}

resourcestring
  SFieldMustHaveValue = 'Полето "%s" трябва да има стойност';

{ TfmLogin }

procedure TfmLogin.Initialize;
begin
  inherited;
  CheckLocaleSettings;
end;

procedure TfmLogin.lblForgotPasswordClick(Sender: TObject);
begin
  inherited;
  ExecURI(SForgotPasswordUrl);
end;

procedure TfmLogin.LinkLabelMouseLeave(Sender: TObject);
begin
  inherited;
  (Sender as TLabel).Font.Style:= (Sender as TLabel).Font.Style - [fsUnderline];
end;

procedure TfmLogin.LinkLabelMouseEnter(Sender: TObject);
begin
  inherited;
  (Sender as TLabel).Font.Style:= (Sender as TLabel).Font.Style + [fsUnderline];
end;

procedure TfmLogin.lblSignupClick(Sender: TObject);
begin
  inherited;
  ExecURI(SSignupUrl);
end;

procedure TfmLogin.SetDataParams(const ALoginName, AServerNames, ADBName: string);
begin
  FRequiredLoginName:= ALoginName;
  FRequiredServerNames:= AServerNames;
  FRequiredDBName:= ADBName;
end;

procedure TfmLogin.SetRecentUsers;
var
  UserName: string;
begin
  edtUserNameAutoComplete.ACStrings.BeginUpdate;
  try
    edtUserNameAutoComplete.ACStrings.Clear;

    for UserName in LoadRecentUsers(TTimeSpan.FromDays(14)) do
      edtUserNameAutoComplete.ACStrings.Add(UserName);
  finally
    edtUserNameAutoComplete.ACStrings.EndUpdate;
  end;
end;

class function TfmLogin.ShowForm(const ALoginName, AServerNames, ADBName: string): Boolean;
var
  f: TfmLogin;
begin
  f:= CreateEx;
  try
    f.SetDataParams(ALoginName, AServerNames, ADBName);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmLogin.actFormUpdate(Sender: TObject);
begin
  inherited;
  lblSignup.Visible:= (dmMain.AuthenticationTokenIssuer in atiIdentityServers4);
  lblForgotPassword.Visible:= (dmMain.AuthenticationTokenIssuer in atiIdentityServers4);
end;

procedure TfmLogin.DoApplyUpdates;

  procedure CheckRequired(const AEdit: TEdit; const ALabel: TLabel);
  begin
    if (AEdit.Text = '') then
      begin
        AEdit.SetFocus;
        raise Exception.CreateFmt(SFieldMustHaveValue, [ALabel.Caption]);
      end;  { if }
  end;

begin
  if (ActiveControl = edtUserName) and (edtPassword.Text = '') then
    begin
      ActiveControl:= edtPassword;
      Abort;
    end;

  edtUserName.Text:= Trim(edtUserName.Text);
  edtDBName.Text:= Trim(edtDBName.Text);

  CheckRequired(edtUserName, lblUserName);
  CheckRequired(edtPassword, lblPassword);
  CheckRequired(edtDBName, lblDBName);

  if dmMain.IsContextDateParameterSpecified then
    begin
      if not TfmSetContextDate.ShowForm then
        Abort;
    end;  { if }

  dmMain.AuthenticateAndLogin(
    edtUserName.Text,
    edtPassword.Text,
    IfThen(FRequiredServerNames <> '', FRequiredServerNames, dmMain.ServerComputerNamesParam),
    edtDBName.Text);

  AddRecentUser(edtUserName.Text);
end;

procedure TfmLogin.FormCreate(Sender: TObject);
begin
  inherited;

  lblLogoAppName.Caption:= ReplaceAppParams(lblLogoAppName.Caption);
  TryLoadPictureFromResource(imgBackground.Picture, AppLoginBitmapResourceName);

  if fmMain.Visible then
    Position:= poMainFormCenter
  else
    Position:= poScreenCenter;
end;

procedure TfmLogin.FormShow(Sender: TObject);
const
  EditColors: array[Boolean] of TColor = (clWindow, clBtnFace);
begin
  inherited;

  edtUserName.Text:= FRequiredLoginName;
  edtPassword.Clear;
  edtDBName.Text:= IfThen(FRequiredDBName <> '', FRequiredDBName, dmMain.DBName);

  SetControlReadOnly((FRequiredLoginName <> ''), edtUserName);
  SetControlReadOnly((FRequiredDBName <> '') or (dmMain.DBNameParam <> ''), edtDBName);

  if (FRequiredLoginName <> '') then
    edtPassword.SetFocus;

  SetRecentUsers;
end;

class function TfmLogin.HasCaptionMenu: Boolean;
begin
  Result:= False;
end;

end.

