unit fPrcActionLearningStatus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvComponentBase,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, JvExControls,
  JvDBLookup, fBaseFrame, fDBFrame, fFieldEditFrame, fDateFieldEditFrame,
  uClientTypes;

type
  TfmPrcActionLearningStatus = class(TEditForm)
    pnlMain: TPanel;
    lblStatusName: TLabel;
    lblStatusDate: TLabel;
    frStatusDate: TfrDateFieldEditFrame;
    cbStatusName: TJvDBLookupCombo;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    { Public declarations }
  end;

implementation

uses
  uClientUtils;

{$R *.dfm}

procedure TfmPrcActionLearningStatus.actFormUpdate(Sender: TObject);
begin
  inherited;
  SetControlReadOnly(EditMode = emReadOnly, cbStatusName);
end;

procedure TfmPrcActionLearningStatus.FormCreate(Sender: TObject);
begin
  inherited;
  frStatusDate.FieldNames:= 'STATUS_DATE';
end;

procedure TfmPrcActionLearningStatus.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frStatusDate) then
    begin
      AFrame.ReadOnly:= (EditMode <> emInsert);
      Exit;
    end;  { if }

  inherited SetDBFrameReadOnly(AFrame);
end;

end.
