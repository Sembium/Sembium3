unit fProductExFieldEditFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fProductFieldEditFrame, DB, AbmesFields, DBClient,
  AbmesClientDataSet, ActnList, ComCtrls, ToolWin, Buttons, JvExMask,
  JvToolEdit, JvDBControls, StdCtrls, Mask, DBCtrls, ExtCtrls,
  fProductFieldEditFrameLabeled, uBorderRelTypes, System.Actions;

type
  TfrProductExFieldEditFrame = class(TfrProductFieldEditFrame)
    pnlLeft: TPanel;
    pnlRight: TPanel;
    pnlProductLabels: TPanel;
    lblTreeNodeName: TLabel;
    lblTreeNodeNo: TLabel;
    pnlSpecState: TPanel;
    lblSpecState: TLabel;
    edtSpecState: TDBEdit;
    pnlLeftLeft: TPanel;
    pnlPriority: TPanel;
    edtPriorityNo: TDBEdit;
    lblPriorityNo: TLabel;
    pnlRightLeft: TPanel;
    pnlCommonStatus: TPanel;
    lblProductCommonStatus: TLabel;
    lblProductCommonProductLevels: TLabel;
    edtProductCommonStatus: TDBEdit;
    edtProductCommonProductLevels: TDBEdit;
    pnlPartnerProductNames: TPanel;
    lblPartnerProductNames: TLabel;
    edtPartnerProductNames: TDBEdit;
    pnlProductPeriodsButton: TPanel;
    btnProductPeriods: TBitBtn;
    actProductPeriods: TAction;
    pnlNotes: TPanel;
    lblNotes: TLabel;
    edtNotes: TDBEdit;
    cdsExtendedInfo: TAbmesClientDataSet;
    cdsExtendedInfoCOMMON_STATUS_CODE: TAbmesFloatField;
    cdsExtendedInfoCOMMON_PRODUCTS_LEVEL_NO: TAbmesFloatField;
    cdsExtendedInfoCOMMON_PRODUCTS_SUB_LEVELS: TAbmesFloatField;
    cdsExtendedInfoSPEC_STATE_CODE: TAbmesFloatField;
    cdsExtendedInfoPARTNER_PRODUCT_NAMES: TAbmesWideStringField;
    cdsExtendedInfoPRIORITY_NO: TAbmesFloatField;
    cdsExtendedInfoPRIORITY_COLOR: TAbmesFloatField;
    cdsExtendedInfoPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsExtendedInfoMEASURE_ABBREV: TAbmesWideStringField;
    cdsExtendedInfoNOTES: TAbmesWideStringField;
    dsExtendedInfo: TDataSource;
    cdsExtendedInfo_COMMON_PRODUCTS_LEVELS_SHOW: TAbmesWideStringField;
    cdsProductPeriodsParams: TAbmesClientDataSet;
    cdsProductPeriodsParamsPRODUCT_CODE: TAbmesFloatField;
    pnlProductOrigin: TPanel;
    lblProductOrigin: TLabel;
    edtProductOrigin: TDBEdit;
    cdsExtendedInfoPRODUCT_ORIGIN_ABBREV: TAbmesWideStringField;
    cdsExtendedInfoACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    pnlMeasures: TPanel;
    pnlMeasure: TPanel;
    lblMeasure: TLabel;
    edtMeasure: TDBEdit;
    pnlAccountMeasure: TPanel;
    lblAccountMeasure: TLabel;
    edtAccountMeasure: TDBEdit;
    pnlEngineeringButtons: TPanel;
    pnlEngineeringButtonsRightMargin: TPanel;
    pnlEngineeringButtonsTopMargin: TPanel;
    tlbEngineeringButtons: TToolBar;
    btnSpecification: TToolButton;
    btnSpecDocStatus: TToolButton;
    btnCommonGroups: TToolButton;
    actSpecification: TAction;
    actSpecDocStatus: TAction;
    actCommonGroups: TAction;
    cdsSpecParams: TAbmesClientDataSet;
    cdsSpecParamsSPEC_PRODUCT_CODE: TAbmesFloatField;
    pnlTechMeasure: TPanel;
    lblTechMeasure: TLabel;
    edtTechMeasure: TDBEdit;
    cdsExtendedInfoTECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsExtendedInfoSPEC_PRODUCT_CODE: TAbmesFloatField;
    procedure cdsExtendedInfoCalcFields(DataSet: TDataSet);
    procedure cdsExtendedInfoCOMMON_STATUS_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsExtendedInfoSPEC_STATE_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsTreeNodeNODE_CODEChange(Sender: TField);
    procedure cdsExtendedInfoBeforeOpen(DataSet: TDataSet);
    procedure actProductPeriodsUpdate(Sender: TObject);
    procedure actProductPeriodsExecute(Sender: TObject);
    procedure actFrameUpdate(Sender: TObject);
    procedure actSpecificationUpdate(Sender: TObject);
    procedure actSpecificationExecute(Sender: TObject);
    procedure actSpecDocStatusUpdate(Sender: TObject);
    procedure actSpecDocStatusExecute(Sender: TObject);
    procedure actCommonGroupsExecute(Sender: TObject);
    procedure actCommonGroupsUpdate(Sender: TObject);
  private
    FBorderRelType: TBorderRelType;
    FSpecStateVisible: Boolean;
    FPriorityVisible: Boolean;
    FMeasureVisible: Boolean;
    FAccountMeasureVisible: Boolean;
    FTechMeasureVisible: Boolean;
    FCommonStatusVisible: Boolean;
    FProductOriginVisible: Boolean;
    FPartnerProductNamesVisible: Boolean;
    FNotesVisible: Boolean;
    FProductPeriodsButtonVisible: Boolean;
    FSpecificationButtonVisible: Boolean;
    FSpecDocStatusButtonVisible: Boolean;
    FCommonGroupsButtonVisible: Boolean;
    FUseShortParnterProductNamesCaption: Boolean;
    procedure SetBorderRelType(const Value: TBorderRelType);
    procedure RefreshExtendedInfo;
  protected
    procedure DoClearFieldValues; override;
  public
    constructor Create(AOwner: TComponent); override;

    property BorderRelType: TBorderRelType read FBorderRelType write SetBorderRelType;

    property SpecStateVisible: Boolean read FSpecStateVisible write FSpecStateVisible default True;
    property PriorityVisible: Boolean read FPriorityVisible write FPriorityVisible default True;
    property MeasureVisible: Boolean read FMeasureVisible write FMeasureVisible default True;
    property AccountMeasureVisible: Boolean read FAccountMeasureVisible write FAccountMeasureVisible;
    property TechMeasureVisible: Boolean read FTechMeasureVisible write FTechMeasureVisible;
    property CommonStatusVisible: Boolean read FCommonStatusVisible write FCommonStatusVisible default True;
    property ProductOriginVisible: Boolean read FProductOriginVisible write FProductOriginVisible default True;
    property PartnerProductNamesVisible: Boolean read FPartnerProductNamesVisible write FPartnerProductNamesVisible default True;
    property NotesVisible: Boolean read FNotesVisible write FNotesVisible default False;
    property ProductPeriodsButtonVisible: Boolean read FProductPeriodsButtonVisible write FProductPeriodsButtonVisible default True;
    property SpecificationButtonVisible: Boolean read FSpecificationButtonVisible write FSpecificationButtonVisible;
    property SpecDocStatusButtonVisible: Boolean read FSpecDocStatusButtonVisible write FSpecDocStatusButtonVisible;
    property CommonGroupsButtonVisible: Boolean read FCommonGroupsButtonVisible write FCommonGroupsButtonVisible;
    property UseShortParnterProductNamesCaption: Boolean read FUseShortParnterProductNamesCaption write FUseShortParnterProductNamesCaption;
  end;

implementation

uses
  dMain, uProductClientUtils, Math, uUtils, fProductPeriods, uClientTypes,
  fTreeNodeFieldEditFrame, fSpecification, fSpecDocStatus, fCommonGroups,
  uColorConsts, uModelUtils, uProducts, Menus, uToolbarUtils;

{$R *.dfm}

resourcestring
  SPartnerProductNameCaption = 'Означение от Партньор';
  SPartnerProductNamesCaption = 'Означения от Партньори';
  SShortPartnerProductNamesCaption = 'Озн. от Партньор';

{ TfrProductExFieldEditFrame }

procedure TfrProductExFieldEditFrame.actCommonGroupsExecute(
  Sender: TObject);
begin
  inherited;
  TfmCommonGroups.ShowForm(dmDocClient, 0, Fields[0].AsInteger, ProductClass);
end;

procedure TfrProductExFieldEditFrame.actCommonGroupsUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Visible:=
    CommonGroupsButtonVisible;
end;

procedure TfrProductExFieldEditFrame.actFrameUpdate(Sender: TObject);
begin
  inherited;

  pnlSpecState.Visible:= SpecStateVisible and (ProductClass = pcNormal);
  pnlPriority.Visible:= PriorityVisible and (ProductClass in [pcNormal, pcFinancial]);
  pnlMeasure.Visible:= MeasureVisible;
  pnlAccountMeasure.Visible:= AccountMeasureVisible;
  pnlTechMeasure.Visible:= TechMeasureVisible;
  pnlCommonStatus.Visible:= CommonStatusVisible and (ProductClass in [pcNormal, pcFinancial]);
  pnlProductOrigin.Visible:= ProductOriginVisible and (ProductClass in [pcNormal, pcFinancial]);
  pnlPartnerProductNames.Visible:= PartnerProductNamesVisible and (ProductClass = pcNormal);
  pnlNotes.Visible:= NotesVisible;
  pnlProductPeriodsButton.Visible:=
    (ProductClass in [pcNormal, pcFinancial]) and
    ProductPeriodsButtonVisible;
  pnlEngineeringButtons.Visible:=
    SpecificationButtonVisible or
    SpecDocStatusButtonVisible or
    CommonGroupsButtonVisible;

  pnlEngineeringButtons.Width:= NormalizedToolbar(tlbEngineeringButtons).Width + pnlEngineeringButtonsRightMargin.Width;

  if cdsExtendedInfo.Active and
     (not cdsExtendedInfoPRIORITY_COLOR.IsNull) then
    edtPriorityNo.Font.Color:= cdsExtendedInfoPRIORITY_COLOR.AsInteger;

  if cdsExtendedInfo.Active and
     (not cdsExtendedInfoPRIORITY_BACKGROUND_COLOR.IsNull) then
    edtPriorityNo.Color:= cdsExtendedInfoPRIORITY_BACKGROUND_COLOR.AsInteger;

  if UseShortParnterProductNamesCaption then
    lblPartnerProductNames.Caption:= SShortPartnerProductNamesCaption
  else
    if cdsExtendedInfo.Params.ParamByName('PARTNER_CODE').IsNull then
      lblPartnerProductNames.Caption:= SPartnerProductNamesCaption
    else
      lblPartnerProductNames.Caption:= SPartnerProductNameCaption;

  if cdsExtendedInfo.Active and
     (not cdsExtendedInfoSPEC_STATE_CODE.IsNull) and
     InRange(cdsExtendedInfoSPEC_STATE_CODE.AsInteger, Low(SpecStateColors), High(SpecStateColors)) then
    edtSpecState.Color:= SpecStateColors[cdsExtendedInfoSPEC_STATE_CODE.AsInteger]
  else
    edtSpecState.Color:= clBtnFace;

  lblTreeNodeNo.Left:= pnlTreeNodeNo.Left;
end;

procedure TfrProductExFieldEditFrame.actProductPeriodsExecute(
  Sender: TObject);
begin
  inherited;
  cdsProductPeriodsParams.CreateDataSet;
  try
    cdsProductPeriodsParams.AppendRecord([cdsTreeNodeNODE_CODE.AsVariant]);
    TfmProductPeriods.ShowForm(nil, cdsProductPeriodsParams, emReadOnly);
  finally
    cdsProductPeriodsParams.Close;
  end;
end;

procedure TfrProductExFieldEditFrame.actProductPeriodsUpdate(
  Sender: TObject);
begin
  inherited;
  with (Sender as TAction) do
    begin
      Enabled:=
        cdsTreeNode.Active and
        (not cdsTreeNodeNODE_CODE.IsNull);
      Caption:=
        ProductPeriodAbbrevs[ProductClass] + cDialogSuffix;
    end;
end;

procedure TfrProductExFieldEditFrame.actSpecDocStatusExecute(
  Sender: TObject);
begin
  inherited;
  TfmSpecDocStatus.ShowForm(dmDocClient, cdsExtendedInfoSPEC_PRODUCT_CODE.AsInteger, emReadOnly);
end;

procedure TfrProductExFieldEditFrame.actSpecDocStatusUpdate(
  Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:=
    (FieldCount > 0) and
    not cdsExtendedInfoSPEC_PRODUCT_CODE.IsNull;

  (Sender as TAction).Visible:=
    SpecDocStatusButtonVisible;
end;

procedure TfrProductExFieldEditFrame.actSpecificationExecute(
  Sender: TObject);
begin
  inherited;
  cdsSpecParams.CreateDataSet;
  try
    cdsSpecParams.AppendRecord([cdsExtendedInfoSPEC_PRODUCT_CODE.AsInteger]);
    TfmSpecification.ShowForm(dmDocClient, cdsSpecParams, emReadOnly);
  finally
    cdsSpecParams.Close;
  end;
end;

procedure TfrProductExFieldEditFrame.actSpecificationUpdate(
  Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:=
    (FieldCount > 0) and
    not cdsExtendedInfoSPEC_PRODUCT_CODE.IsNull;

  (Sender as TAction).Visible:=
    SpecificationButtonVisible;
end;

procedure TfrProductExFieldEditFrame.cdsExtendedInfoBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;

  if (FieldCount > 0) and Assigned(Fields[0]) then
    cdsExtendedInfo.Params.ParamByName('PRODUCT_CODE').Value:= Fields[0].AsVariant;
  if (FieldCount > 1) and Assigned(Fields[1]) then
    cdsExtendedInfo.Params.ParamByName('PARTNER_CODE').Value:= Fields[1].AsVariant;
  cdsExtendedInfo.Params.ParamByName('BORDER_REL_TYPE_CODE').Value:=
    IntToVar(BorderRelTypeToInt(BorderRelType));
end;

procedure TfrProductExFieldEditFrame.cdsExtendedInfoCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  CalcCommonProductsLevelsShow(DataSet);
end;

procedure TfrProductExFieldEditFrame.cdsExtendedInfoCOMMON_STATUS_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if not Sender.IsNull then
    Text:= ProductCommonStatusAbbrevs[Sender.AsInteger];
end;

procedure TfrProductExFieldEditFrame.cdsExtendedInfoSPEC_STATE_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if (not Sender.IsNull) and
     InRange(Sender.AsInteger, Low(SpecNoQuantityStateAbbrevs), High(SpecNoQuantityStateAbbrevs)) then
    Text:= SpecNoQuantityStateAbbrevs[Sender.AsInteger];
end;

procedure TfrProductExFieldEditFrame.cdsTreeNodeNODE_CODEChange(
  Sender: TField);
begin
  inherited;
  RefreshExtendedInfo;
end;

constructor TfrProductExFieldEditFrame.Create(AOwner: TComponent);
begin
  inherited;

  FSpecStateVisible:= True;
  FPriorityVisible:= True;
  FMeasureVisible:= True;
  FAccountMeasureVisible:= False;
  FCommonStatusVisible:= True;
  FProductOriginVisible:= True;
  FPartnerProductNamesVisible:= True;
  FNotesVisible:= False;
  FProductPeriodsButtonVisible:= True;
end;

procedure TfrProductExFieldEditFrame.DoClearFieldValues;
begin
//  inherited;  new behaviour
  if (FieldCount > 0) then
    begin
      CheckEditMode(Fields[0].DataSet);
      Fields[0].Clear;
    end;
end;

procedure TfrProductExFieldEditFrame.RefreshExtendedInfo;
begin
  cdsExtendedInfo.Close;
  cdsExtendedInfo.Open;
end;

procedure TfrProductExFieldEditFrame.SetBorderRelType(
  const Value: TBorderRelType);
begin
  if (Value <> FBorderRelType) then
    begin
      FBorderRelType:= Value;
      RefreshExtendedInfo;
    end;  { if }
end;

end.
