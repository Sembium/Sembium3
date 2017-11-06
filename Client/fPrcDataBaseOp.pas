unit fPrcDataBaseOp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, ActnList, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls,
  fBaseFrame, fDBFrame, fFieldEditFrame, fTreeNodeFieldEditFrame, fTreeOnlyNodeFieldEditFrame,
  fProcessBaseOperationFieldEditFrame, uClientTypes;

type
  TfmPrcDataBaseOp = class(TEditForm)
    frProcessBaseOperation: TfrProcessBaseOperationFieldEditFrame;
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

{ TfmPrcDataBaseOp }

procedure TfmPrcDataBaseOp.ChangeEditMode(var AEditMode: TEditMode);
begin
  inherited ChangeEditMode(AEditMode);
  if (AEditMode = emEdit) then
    AEditMode:= emReadOnly;
end;

procedure TfmPrcDataBaseOp.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frProcessBaseOperation) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;  { if }

  inherited SetDBFrameReadOnly(AFrame);
end;

end.
