unit fPrcDataKnowl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, ActnList, StdCtrls, Buttons, ExtCtrls, fBaseFrame, fDBFrame,
  fFieldEditFrame, fTreeNodeFieldEditFrame, fTreeOnlyNodeFieldEditFrame, fProcessKnowlFieldEditFrame, Mask, DBCtrls,
  uClientTypes;

type
  TfmPrcDataKnowl = class(TEditForm)
    frProcessKnowl: TfrProcessKnowlFieldEditFrame;
    gbRing: TGroupBox;
    lblRingNo: TLabel;
    lblRingLocalNo: TLabel;
    edtRingNo: TDBEdit;
    edtRingLocalNo: TDBEdit;
  private
    { Private declarations }
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure ChangeEditMode(var AEditMode: TEditMode); override;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

{ TfmPrcDataKnowl }

procedure TfmPrcDataKnowl.ChangeEditMode(var AEditMode: TEditMode);
begin
  inherited ChangeEditMode(AEditMode);
  if (AEditMode = emEdit) then
    AEditMode:= emReadOnly;
end;

procedure TfmPrcDataKnowl.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frProcessKnowl) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;  { if }

  inherited SetDBFrameReadOnly(AFrame);
end;

end.
