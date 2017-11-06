unit fPrcDataProcessActionWithDateInterval;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvComponentBase,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, fBaseFrame, fDBFrame,
  fFieldEditFrame, fDateIntervalFrame, fEnumFieldEditFrame,
  fProcessActionFieldEditFrame;

type
  TfmPrcDataProcessActionWithDateInterval = class(TEditForm)
    gbDateInterval: TGroupBox;
    frProcessAction: TfrProcessActionFieldEditFrame;
    pnlToggleDateInterval: TPanel;
    pnlDateInterval: TPanel;
    pnlToggleDateIntervalButton: TPanel;
    btnToggleDateInterval: TSpeedButton;
    frDateInterval: TfrDateIntervalFrame;
    actToggleDateInterval: TAction;
    procedure actToggleDateIntervalExecute(Sender: TObject);
    procedure actToggleDateIntervalUpdate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  end;

implementation

uses
  uUtils, uClientTypes;

{$R *.dfm}

{ TfmPrcDataProcessActionWithDateInterval }

procedure TfmPrcDataProcessActionWithDateInterval.actFormUpdate(Sender: TObject);
begin
  inherited;
  pnlToggleDateIntervalButton.Visible:= not dsData.DataSet.FieldByName('OVERRIDE_DATE_INTERVAL').ReadOnly;
end;

procedure TfmPrcDataProcessActionWithDateInterval.actToggleDateIntervalExecute(Sender: TObject);
begin
  inherited;
  CheckEditMode(dsData.DataSet);
  with dsData.DataSet.FieldByName('OVERRIDE_DATE_INTERVAL') do
    AsBoolean:= not AsBoolean;

  (Sender as TAction).Update;
  SelectNext(((Sender as TAction).ActionComponent as TSpeedButton).Parent.Parent, True, True);
end;

procedure TfmPrcDataProcessActionWithDateInterval.actToggleDateIntervalUpdate(Sender: TObject);
begin
  inherited;
  pnlToggleDateIntervalButton.Enabled:= (EditMode <> emReadOnly);
  with Sender as TAction do
    begin
      Checked:= dsData.DataSet.FieldByName('OVERRIDE_DATE_INTERVAL').AsBoolean;
      Enabled:= not dsData.DataSet.FieldByName('OVERRIDE_DATE_INTERVAL').ReadOnly;
    end;  { with }
end;

procedure TfmPrcDataProcessActionWithDateInterval.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frProcessAction) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;  { if }

  if (AFrame = frDateInterval) then
    begin
      AFrame.ReadOnly:= (EditMode = emReadOnly) or not dsData.DataSet.FieldByName('OVERRIDE_DATE_INTERVAL').AsBoolean;
      Exit;
    end;  { if }

  inherited SetDBFrameReadOnly(AFrame);
end;

end.
