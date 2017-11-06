unit fPrcDataFuncKnowlBaseOp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, ActnList, StdCtrls,
  Buttons, ExtCtrls, Mask, DBCtrls, fBaseFrame, fDBFrame, fFieldEditFrame,
  fTreeNodeFieldEditFrame, fTreeOnlyNodeFieldEditFrame,
  fProcessBaseOperationFieldEditFrame;

type
  TfmPrcDataFuncKnowlBaseOp = class(TEditForm)
    frProcessBaseOperation: TfrProcessBaseOperationFieldEditFrame;
    gbRing: TGroupBox;
    lblRingNo: TLabel;
    lblRingLocalNo: TLabel;
    edtRingNo: TDBEdit;
    edtRingLocalNo: TDBEdit;
  private
    { Private declarations }
  public
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  end;

implementation

{$R *.dfm}

{ TfmPrcDataFuncKnowlBaseOp }

procedure TfmPrcDataFuncKnowlBaseOp.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frProcessBaseOperation) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;  { if }

  inherited SetDBFrameReadOnly(AFrame);
end;

end.
