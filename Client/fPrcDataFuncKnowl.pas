unit fPrcDataFuncKnowl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, ActnList, StdCtrls,
  Buttons, ExtCtrls, fBaseFrame, fDBFrame, fFieldEditFrame,
  fTreeNodeFieldEditFrame, fTreeOnlyNodeFieldEditFrame,
  fProcessKnowlFieldEditFrame, Mask, DBCtrls;

type
  TfmPrcDataFuncKnowl = class(TEditForm)
    frProcessKnowl: TfrProcessKnowlFieldEditFrame;
    gbRing: TGroupBox;
    edtRingNo: TDBEdit;
    lblRingNo: TLabel;
    edtRingLocalNo: TDBEdit;
    lblRingLocalNo: TLabel;
  private
    { Private declarations }
  public
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  end;

implementation

{$R *.dfm}

{ TfmPrcDataFuncKnowl }

procedure TfmPrcDataFuncKnowl.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frProcessKnowl) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;  { if }

  inherited SetDBFrameReadOnly(AFrame);
end;

end.
