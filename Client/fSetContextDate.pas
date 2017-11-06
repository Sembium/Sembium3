unit fSetContextDate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDataForm, JvComponentBase, JvCaptionButton, ActnList, StdCtrls,
  Buttons, ExtCtrls, Mask, JvExMask, JvToolEdit, System.Actions;

type
  TfmSetContextDate = class(TDataForm)
    lblContextDate: TLabel;
    deContextDate: TJvDateEdit;
    chkIsInEditMode: TCheckBox;
    bvlMain: TBevel;
    procedure actFormUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure DoApplyUpdates; override;
  public
    procedure Initialize; override;
  end;

implementation

uses
  uClientDateTime, dMain, fMain, uClientApp;

resourcestring
  SFieldMustHaveValue = 'Полето "%s" трябва да има стойност';
  SAppShouldBeReadOnlyInTheFuture = '%AppName% не може да бъде в режим за редактиране, когато е избрана бъдеща дата';

{$R *.dfm}

{ TfmSetContextDate }

procedure TfmSetContextDate.actFormUpdate(Sender: TObject);
begin
  inherited;
  chkIsInEditMode.Enabled:= not dmMain.RunReadOnly;
end;

procedure TfmSetContextDate.DoApplyUpdates;
begin
  inherited DoApplyUpdates;

  if (deContextDate.Date = 0) then
    raise Exception.CreateFmt(SFieldMustHaveValue, [lblContextDate.Caption]);

  if (deContextDate.Date > Date) and chkIsInEditMode.Checked then
    raise Exception.Create(uClientApp.ReplaceAppParams(SAppShouldBeReadOnlyInTheFuture));

  dmMain.StartupContextDateOverride:= deContextDate.Date;
  dmMain.IsSessionReadOnly:= not chkIsInEditMode.Checked;
end;

procedure TfmSetContextDate.FormCreate(Sender: TObject);
begin
  inherited;

  if fmMain.Visible then
    Position:= poMainFormCenter
  else
    Position:= poScreenCenter;
end;

procedure TfmSetContextDate.Initialize;
begin
  inherited;
  if (dmMain.StartupContextDateOverride <> 0) then
    deContextDate.Date:= dmMain.StartupContextDateOverride;
end;

end.
