unit fSpecFinModelLine;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvComponentBase,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, JvExControls,
  JvDBLookup, Mask, DBCtrls, ComCtrls, ToolWin, fDateIntervalFrame, fBaseFrame,
  fDBFrame, fFieldEditFrame, fPartnerFieldEditFrame, fPartnerExFieldEditFrame,
  uClientTypes, dDocClient, fTreeNodeFieldEditFrame, fDeptFieldEditFrame,
  fDeptFieldEditFrameBald;

type
  TfmSpecFinModelLine = class(TEditForm)
    gbLine: TGroupBox;
    cbFinModelLineType: TJvDBLookupCombo;
    lblFinModelLineType: TLabel;
    edtShowNo: TDBEdit;
    lblShowNo: TLabel;
    frPartner: TfrPartnerExFieldEditFrame;
    gbDateInterval: TGroupBox;
    frDateInterval: TfrDateIntervalFrame;
    tlbDocs: TToolBar;
    btnDocs: TToolButton;
    lblLineQuantityPercent: TLabel;
    edtLineQuantityPercent: TDBEdit;
    lblAbsMovementDateOffset: TLabel;
    edtAbsMovementDateOffset: TDBEdit;
    lblAbsMovementDateOffsetMeasure: TLabel;
    cbMovementDateOffsetSign: TJvDBLookupCombo;
    frFinancialStore: TfrDeptFieldEditFrameBald;
    lblFinancialStore: TLabel;
    pnlMovement: TPanel;
    lblTransportDurationDays: TLabel;
    lblTransportDurationDaysMeasure: TLabel;
    edtTransportDurationDays: TDBEdit;
    lblPartnerOffice: TLabel;
    cbPartnerOffice: TJvDBLookupCombo;
    pnlFinModelLineReason: TPanel;
    lblFinModelLineReason: TLabel;
    cbFinModelLineReason: TJvDBLookupCombo;
    lblLineQuantityPercentMeasure: TLabel;
    lblArrow: TDBText;
    gbFinModel: TGroupBox;
    edtFinModel: TDBEdit;
    dsSpecFinModels: TDataSource;
    dsParRelPeriods: TDataSource;
    edtAfterAbsMovementDateOffset: TEdit;
    edtFMMovementOffsetType: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure btnDocsClick(Sender: TObject);
  private
    FOriginalFormCaption: string;
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function GetOriginalFormCaption: string; override;
  public
    procedure Initialize; override;
  end;

implementation

uses
  uBorderRelTypes, uCompanyKinds, uBorderRelTypeClientUtils, uClientUtils,
  uFinModelLineTypes, uDocUtils;

{$R *.dfm}

{ TfmSpecFinModelLine }

procedure TfmSpecFinModelLine.actFormUpdate(Sender: TObject);
var
  ro: Boolean;
begin
  inherited;

  cbMovementDateOffsetSign.Enabled:=
    (edtAbsMovementDateOffset.Field.AsInteger > 0);

  pnlFinModelLineReason.Visible:=
    (IntToFinModelLineType(dsData.DataSet.FieldByName('FIN_MODEL_LINE_TYPE_CODE').AsInteger) = fmltSecondary);

  btnDocs.ImageIndex:= dsParRelPeriods.DataSet.FieldByName('HAS_DOC_ITEMS').AsInteger;

  SetControlReadOnly((EditMode <> emInsert), cbFinModelLineType);

  ro:= (EditMode = emReadOnly);

  edtLineQuantityPercent.Color:= ReadOnlyColors[ro];
  cbMovementDateOffsetSign.Color:= ReadOnlyColors[ro];
  cbPartnerOffice.Color:= ReadOnlyColors[ro];
  cbFinModelLineReason.Color:= ReadOnlyColors[ro];
end;

procedure TfmSpecFinModelLine.btnDocsClick(Sender: TObject);
begin
  inherited;

  dmDocClient.DSOpenDoc(emReadOnly, btnDocs, dotParRelPeriod, dsParRelPeriods.DataSet);
end;

procedure TfmSpecFinModelLine.FormCreate(Sender: TObject);
begin
  inherited;

  frPartner.FieldNames:= 'PARTNER_CODE';
  frPartner.PartnerStatusVisible:= True;
  frFinancialStore.FieldNames:= 'FIN_STORE_CODE';
  frFinancialStore.SelectStore:= True;
  frFinancialStore.SelectFinancialStore:= True;
end;

function TfmSpecFinModelLine.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmSpecFinModelLine.Initialize;
var
  cdsSpecFinModels: TClientDataSet;
  cdsParRelPeriods: TClientDataSet;
  BorderRelType: TBorderRelType;
  MsgParams: TStringList;
begin
  cdsSpecFinModels:= (dsData.DataSet as TClientDataSet).DataSetField.DataSet as TClientDataSet;
  cdsParRelPeriods:= cdsSpecFinModels.DataSetField.DataSet as TClientDataSet;

  dsParRelPeriods.DataSet:= cdsParRelPeriods;
  dsSpecFinModels.DataSet:= cdsSpecFinModels;

  BorderRelType:=
    IntToBorderRelType(
      cdsParRelPeriods.DataSetField.DataSet.FieldByName('BORDER_REL_TYPE_CODE').AsInteger);

  frPartner.SetDataSet(cdsParRelPeriods);
  frDateInterval.SetDataSet(cdsParRelPeriods);

  case BorderRelType of
    brtClient: frPartner.PriorityCompanyKind:= ckClient;
    brtVendor: frPartner.PriorityCompanyKind:= ckVendor;
  else
    UnknownBorderRelTypeError;
  end;

  inherited;

  MsgParams:= CreateCommonMsgParams(BorderRelType);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;
end;

procedure TfmSpecFinModelLine.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frPartner) or (AFrame = frDateInterval) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;  { if }

  inherited;
end;

end.
