unit fExceptEventDamage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponentBase, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh,
  AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls,
  ExtCtrls, Mask, fBaseFrame, fDBFrame, fFieldEditFrame,
  fExceptEventIdentification, uClientTypes, fDateFieldEditFrame, JvExControls,
  JvComponent, JvDBLookup, fProcessObjectFrame, fSaleShipmentProcessObject,
  fDeliveryProcessObject, fMLLProcessObject, fSaleOrderProcessObject,
  fTreeNodeFieldEditFrame, fProductFieldEditFrame, fProductFieldEditFrameLabeled,
  fDateIntervalFrame, dDocClient, uProducts, Menus;

type
  TfmExceptEventDamage = class(TGridForm)
    frExceptEventIdentification: TfrExceptEventIdentification;
    cdsGridDataEXCEPT_EVENT_DMG_ATTACK_CODE: TAbmesFloatField;
    cdsGridDataEXCEPT_EVENT_DAMAGE_CODE: TAbmesFloatField;
    cdsGridDataEXCEPT_EVENT_DAMAGE_ATTACK_NO: TAbmesFloatField;
    cdsGridDataPRODUCT_QUANTITY: TAbmesFloatField;
    cdsGridDataPROPOSED_PLAN_SHIFT_WORKDAYS: TAbmesFloatField;
    cdsGridDataNOTES: TAbmesWideStringField;
    cdsGridDataNORMALIZE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataNORMALIZE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataNORMALIZE_TIME: TAbmesSQLTimeStampField;
    cdsGridData_STATE_CODE: TAbmesFloatField;
    gbExceptEventDamageId: TGroupBox;
    lblState: TLabel;
    edtState: TDBEdit;
    frCreateDate: TfrDateFieldEditFrame;
    lblCreateDate: TLabel;
    edtDamageWorkdays: TDBEdit;
    lblDamageWorkdays: TLabel;
    cdsDataEXCEPT_EVENT_DAMAGE_CODE: TAbmesFloatField;
    cdsDataEXCEPT_EVENT_CODE: TAbmesFloatField;
    cdsDataPARENT_CODE: TAbmesFloatField;
    cdsDataSTATE_CODE: TAbmesFloatField;
    cdsDataDAMAGE_WORKDAYS: TAbmesFloatField;
    cdsDataPARENT_FULL_NO: TAbmesWideStringField;
    cdsDataLOCAL_NO: TAbmesFloatField;
    cdsDataEE_DAMAGE_PROCESS_TYPE_CODE: TAbmesFloatField;
    cdsDataPRODUCT_QUANTITY: TAbmesFloatField;
    cdsDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsDataCREATE_TIME: TAbmesSQLTimeStampField;
    cdsDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsDataCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsDataMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataMLL_OBJECT_CODE: TAbmesFloatField;
    cdsDataDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataDELIVERY_OBJECT_CODE: TAbmesFloatField;
    cdsDataqryExceptEventDamageAttacks: TDataSetField;
    edtParentFullNo: TDBEdit;
    lblParentFullNo: TLabel;
    edtLocalNo: TDBEdit;
    cdsExceptEventDamageProcessTypes: TAbmesClientDataSet;
    cdsExceptEventDamageProcessTypesEE_DAMAGE_PROCESS_TYPE_CODE: TAbmesFloatField;
    cdsExceptEventDamageProcessTypesEE_DAMAGE_PROCESS_TYPE_NO: TAbmesFloatField;
    cdsExceptEventDamageProcessTypesEE_DAMAGE_PROCESS_TYPE_NAME: TAbmesWideStringField;
    cdsExceptEventDamageProcessTypesEE_DAMAGE_PROCESS_TYPE_ABBREV: TAbmesWideStringField;
    cbExceptEventDamageProcessType: TJvDBLookupCombo;
    dsExceptEventDamageProcessTypes: TDataSource;
    lblProcessType: TLabel;
    pnlMaterialListLine: TPanel;
    cdsDataBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    gbMaterialListLine: TGroupBox;
    frMaterialListLine: TfrMLLProcessObject;
    pnlDelivery: TPanel;
    gbDelivery: TGroupBox;
    pnlSaleShipment: TPanel;
    gbSaleShipment: TGroupBox;
    frDelivery: TfrDeliveryProcessObject;
    btnDelivery: TBitBtn;
    actDelivery: TAction;
    gbProcessFinalization: TGroupBox;
    gbSalePrice: TGroupBox;
    edtSalePrice: TDBEdit;
    actSaleShipment: TAction;
    btnSaleShipment: TBitBtn;
    btnMaterialListLine: TBitBtn;
    actMaterialListLine: TAction;
    cdsProcessData: TAbmesClientDataSet;
    cdsProcessDataPRODUCT_CODE: TAbmesFloatField;
    cdsProcessDataPRODUCT_QUANTITY: TAbmesFloatField;
    cdsProcessDataPLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsProcessDataPLAN_END_DATE: TAbmesSQLTimeStampField;
    cdsMaterialListLineData: TAbmesClientDataSet;
    cdsDeliveryData: TAbmesClientDataSet;
    cdsSaleShipmentData: TAbmesClientDataSet;
    cdsProcessDataMEASURE_ABBREV: TAbmesWideStringField;
    cdsProcessData_DAMAGED_TOTAL_PRICE: TAbmesFloatField;
    cdsMaterialListLineDataPRODUCT_CODE: TAbmesFloatField;
    cdsMaterialListLineDataPRODUCT_QUANTITY: TAbmesFloatField;
    cdsMaterialListLineDataMEASURE_ABBREV: TAbmesWideStringField;
    cdsMaterialListLineDataPLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsMaterialListLineDataPLAN_END_DATE: TAbmesSQLTimeStampField;
    cdsDeliveryDataPRODUCT_CODE: TAbmesFloatField;
    cdsDeliveryDataPRODUCT_QUANTITY: TAbmesFloatField;
    cdsDeliveryDataMEASURE_ABBREV: TAbmesWideStringField;
    cdsDeliveryDataPLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDeliveryDataPLAN_END_DATE: TAbmesSQLTimeStampField;
    cdsSaleShipmentDataPRODUCT_CODE: TAbmesFloatField;
    cdsSaleShipmentDataPRODUCT_QUANTITY: TAbmesFloatField;
    cdsSaleShipmentDataMEASURE_ABBREV: TAbmesWideStringField;
    cdsSaleShipmentDataPLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsSaleShipmentDataPLAN_END_DATE: TAbmesSQLTimeStampField;
    dsProcessData: TDataSource;
    frProduct: TfrProductFieldEditFrameLabeled;
    frPlanDateInterval: TfrDateIntervalFrame;
    lblPlanDateInterval: TLabel;
    edtProcessProductQuantity: TDBEdit;
    lblProcessProductQuantity: TLabel;
    lblProcessProductMeasureAbbrev: TDBText;
    edtProductQuantity: TDBEdit;
    lblProductQuantity: TLabel;
    lblProductMeasureAbbrev: TDBText;
    cdsDataSHIPMENT_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataSHIPMENT_OBJECT_CODE: TAbmesFloatField;
    frSaleShipment: TfrSaleShipmentProcessObject;
    lblCurrencyAbbrev: TDBText;
    cdsSaleShipmentDataSINGLE_PRICE: TAbmesFloatField;
    cdsSaleShipmentDataCURRENCY_ABBREV: TAbmesWideStringField;
    cdsProcessDataSINGLE_PRICE: TAbmesFloatField;
    cdsProcessDataCURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridData_MAX_DAMAGE_ATTACK_NO: TAggregateField;
    cdsMLLSale: TAbmesClientDataSet;
    cdsMLLSaleSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsMLLSaleSALE_OBJECT_CODE: TAbmesFloatField;
    cdsMLLSaleSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure cdsGridData_STATE_CODEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure frMaterialListLineExit(Sender: TObject);
    procedure cdsDataBND_PROCESS_OBJECT_BRANCH_CODEChange(Sender: TField);
    procedure cdsDataBND_PROCESS_OBJECT_CODEChange(Sender: TField);
    procedure actFormUpdate(Sender: TObject);
    procedure frDeliveryExit(Sender: TObject);
    procedure cdsDataEE_DAMAGE_PROCESS_TYPE_CODEChange(Sender: TField);
    procedure actDeliveryUpdate(Sender: TObject);
    procedure actDeliveryExecute(Sender: TObject);
    procedure frSaleShipmentExit(Sender: TObject);
    procedure actSaleShipmentUpdate(Sender: TObject);
    procedure actSaleShipmentExecute(Sender: TObject);
    procedure actMaterialListLineUpdate(Sender: TObject);
    procedure actMaterialListLineExecute(Sender: TObject);
    procedure cdsDataSTATE_CODEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsMaterialListLineDataBeforeOpen(DataSet: TDataSet);
    procedure cdsDeliveryDataBeforeOpen(DataSet: TDataSet);
    procedure cdsSaleShipmentDataBeforeOpen(DataSet: TDataSet);
    procedure cdsProcessDataCalcFields(DataSet: TDataSet);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure cdsMLLSaleBeforeOpen(DataSet: TDataSet);
  private
    FProductClass: TProductClass;
    FChangingProcessType: Boolean;
    FExceptEventCode: Integer;
    FParentExceptEventDamageCode: Integer;
    function ProcessObjectBranchCodeField: TField;
    function ProcessObjectCodeField: TField;
    procedure GetProcessData;
    procedure ProcessFieldEditFrameExit(AFrame: TDBFrame);
  protected
    procedure InternalDoApplyUpdates; override;
    procedure InternalDoCancelUpdates; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure DoApplyUpdates; override;
  public
    class function CanEditOuterDataSet: Boolean; override;
    procedure Initialize; override;
    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AExceptEventCode: Integer = 0;
      AParentExceptEventDamageCode: Integer = 0); reintroduce; virtual;
    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AExceptEventCode: Integer = 0;
      AParentExceptEventDamageCode: Integer = 0): Boolean;
  published
    property ProductClass: TProductClass read FProductClass;
  end;

implementation

uses
  fExceptEventDamageAttack, Math, uExceptEventClientUtils, dMain, fDelivery,
  fXModel, uUtils, DateUtils, fSale, uSaleOrderTypes, fProductionOrder,
  uClientDateTime;

resourcestring
  SExceptEventDamageMustHaveAtLeastOneAttack = 'Трябва да има поне една атака по Верижното Поражение';

const
  DefaultProcessType = eedptMaterialListLine;
  
{$R *.dfm}

{ TfmExceptEventDamage }

procedure TfmExceptEventDamage.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AExceptEventCode: Integer; AParentExceptEventDamageCode: Integer);
begin
  Assert(
    ((AEditMode = emInsert) and (AExceptEventCode <> 0)) or
    ((AEditMode <> emInsert) and (AExceptEventCode = 0) and (AParentExceptEventDamageCode = 0)));

  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FExceptEventCode:= AExceptEventCode;
  FParentExceptEventDamageCode:= AParentExceptEventDamageCode;
end;

class function TfmExceptEventDamage.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AExceptEventCode: Integer; AParentExceptEventDamageCode: Integer): Boolean;
var
  f: TfmExceptEventDamage;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AExceptEventCode, AParentExceptEventDamageCode);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmExceptEventDamage.actFormUpdate(Sender: TObject);
var
  ExceptEventDamageProcessType: TExceptEventDamageProcessType;
begin
  inherited;
  ExceptEventDamageProcessType:=
    IntToExceptEventDamageProcessType(cdsDataEE_DAMAGE_PROCESS_TYPE_CODE.AsInteger);

  pnlMaterialListLine.Visible:= (ExceptEventDamageProcessType = eedptMaterialListLine);
  pnlDelivery.Visible:= (ExceptEventDamageProcessType = eedptDelivery);
  pnlSaleShipment.Visible:= (ExceptEventDamageProcessType = eedptSaleShipment);
end;

class function TfmExceptEventDamage.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmExceptEventDamage.cdsDataBeforePost(DataSet: TDataSet);
var
  ProcessType: TExceptEventDamageProcessType;
begin
  inherited;

  CheckRequiredField(cdsDataEE_DAMAGE_PROCESS_TYPE_CODE);

  ProcessType:= IntToExceptEventDamageProcessType(cdsDataEE_DAMAGE_PROCESS_TYPE_CODE.AsInteger);

  case ProcessType of
    eedptMaterialListLine:
      begin
        CheckRequiredField(cdsDataMLL_OBJECT_BRANCH_CODE);
        CheckRequiredField(cdsDataMLL_OBJECT_CODE);
      end;
    eedptDelivery:
      begin
        CheckRequiredField(cdsDataDELIVERY_OBJECT_BRANCH_CODE);
        CheckRequiredField(cdsDataDELIVERY_OBJECT_CODE);
      end;
    eedptSaleShipment:
      begin
        CheckRequiredField(cdsDataSHIPMENT_OBJECT_BRANCH_CODE);
        CheckRequiredField(cdsDataSHIPMENT_OBJECT_CODE);
      end;
  end;  { case }

  if (ProcessType <> eedptMaterialListLine) then
    begin
      cdsDataMLL_OBJECT_BRANCH_CODE.Clear;
      cdsDataMLL_OBJECT_CODE.Clear;
    end;  { if }

  if (ProcessType <> eedptDelivery) then
    begin
      cdsDataDELIVERY_OBJECT_BRANCH_CODE.Clear;
      cdsDataDELIVERY_OBJECT_CODE.Clear;
    end;  { if }

  if (ProcessType <> eedptSaleShipment) then
    begin
      cdsDataSHIPMENT_OBJECT_BRANCH_CODE.Clear;
      cdsDataSHIPMENT_OBJECT_CODE.Clear;
    end;  { if }
end;

procedure TfmExceptEventDamage.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  if cdsGridDataNORMALIZE_EMPLOYEE_CODE.IsNull then
    cdsGridData_STATE_CODE.AsInteger:= 2
  else
    cdsGridData_STATE_CODE.AsInteger:= 1;
end;

procedure TfmExceptEventDamage.cdsGridData_STATE_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText and
     InRange(
       cdsGridData_STATE_CODE.AsInteger,
       Low(TExceptEventDamageAttackStates),
       High(TExceptEventDamageAttackStates)) then
    Text:= ExceptEventDamageAttackStateNames[cdsGridData_STATE_CODE.AsInteger]
  else
    Text:= Sender.AsString;
end;

procedure TfmExceptEventDamage.cdsDataSTATE_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText and
     InRange(cdsDataSTATE_CODE.AsInteger, Low(TExceptEventDamageStates), High(TExceptEventDamageStates)) then
    Text:= ExceptEventDamageStateNames[cdsDataSTATE_CODE.AsInteger]
  else
    Text:= Sender.AsString;
end;

procedure TfmExceptEventDamage.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmExceptEventDamageAttack;
  RegisterDateFields(cdsGridData);

  frCreateDate.FieldNames:= 'CREATE_DATE';

  frMaterialListLine.SetDataSet(dsData.DataSet);
  frMaterialListLine.FieldNames:= 'MLL_OBJECT_BRANCH_CODE; MLL_OBJECT_CODE';
  frMaterialListLine.CheckMLLHasProduct:= False;
  frMaterialListLine.CheckMLIsActivated:= False;

  frDelivery.SetDataSet(dsData.DataSet);
  frDelivery.FieldNames:= 'DELIVERY_OBJECT_BRANCH_CODE; DELIVERY_OBJECT_CODE';

  frSaleShipment.SetDataSet(dsData.DataSet);
  frSaleShipment.FieldNames:= 'SHIPMENT_OBJECT_BRANCH_CODE; SHIPMENT_OBJECT_CODE';

  frPlanDateInterval.FieldNames:= 'PLAN_BEGIN_DATE; PLAN_END_DATE';
end;

procedure TfmExceptEventDamage.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataEXCEPT_EVENT_DMG_ATTACK_CODE.AsInteger:= dmMain.SvrExceptEvents.GetNewExceptEventDamageAttackCode;
  cdsGridDataEXCEPT_EVENT_DAMAGE_CODE.AsInteger:= cdsDataEXCEPT_EVENT_DAMAGE_CODE.AsInteger;
  cdsGridDataEXCEPT_EVENT_DAMAGE_ATTACK_NO.AsInteger:= VarToInt(cdsGridData_MAX_DAMAGE_ATTACK_NO.Value) + 1;
end;

procedure TfmExceptEventDamage.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frCreateDate) or
     (AFrame = frProduct) or
     (AFrame = frPlanDateInterval) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;  { if }

  if (AFrame = frMaterialListLine) or
     (AFrame = frSaleShipment) or
     (AFrame = frDelivery) then
    begin
      AFrame.ReadOnly:= (EditMode = emReadOnly);
      Exit;
    end;  { if }
    
  inherited SetDBFrameReadOnly(AFrame);
end;

procedure TfmExceptEventDamage.OpenDataSets;
begin
  cdsExceptEventDamageProcessTypes.Open;
  cdsProcessData.CreateDataSet;
  inherited;
end;

procedure TfmExceptEventDamage.CloseDataSets;
begin
  cdsProcessData.Close;
  cdsExceptEventDamageProcessTypes.Close;
  inherited;
end;

procedure TfmExceptEventDamage.FormShow(Sender: TObject);
begin
  inherited;
  frMaterialListLine.ShowFrame;
  frDelivery.ShowFrame;
  frSaleShipment.ShowFrame;
end;

procedure TfmExceptEventDamage.ProcessFieldEditFrameExit(AFrame: TDBFrame);
begin
  if (EditMode <> emReadOnly) then
    AFrame.DoApplyUpdates;

  cdsProcessData.Edit;
  try
    GetProcessData;
    cdsProcessData.Post;
  except
    cdsProcessData.Cancel;
    raise;
  end;  { try }
end;

procedure TfmExceptEventDamage.frMaterialListLineExit(Sender: TObject);
begin
  inherited;
  ProcessFieldEditFrameExit(frMaterialListLine);
end;

procedure TfmExceptEventDamage.frDeliveryExit(Sender: TObject);
begin
  inherited;
  ProcessFieldEditFrameExit(frDelivery);
end;

procedure TfmExceptEventDamage.frSaleShipmentExit(Sender: TObject);
begin
  inherited;
  ProcessFieldEditFrameExit(frSaleShipment);
end;

function TfmExceptEventDamage.ProcessObjectBranchCodeField: TField;
begin
  case IntToExceptEventDamageProcessType(cdsDataEE_DAMAGE_PROCESS_TYPE_CODE.AsInteger) of
    eedptMaterialListLine:
      ProcessObjectBranchCodeField:= cdsDataMLL_OBJECT_BRANCH_CODE;
    eedptDelivery:
      ProcessObjectBranchCodeField:= cdsDataDELIVERY_OBJECT_BRANCH_CODE;
    eedptSaleShipment:
      ProcessObjectBranchCodeField:= cdsDataSHIPMENT_OBJECT_BRANCH_CODE;
  else
    raise Exception.Create('Unknown ExceptEventProcessType');
  end;  { case }
end;

function TfmExceptEventDamage.ProcessObjectCodeField: TField;
begin
  case IntToExceptEventDamageProcessType(cdsDataEE_DAMAGE_PROCESS_TYPE_CODE.AsInteger) of
    eedptMaterialListLine:
      ProcessObjectCodeField:= cdsDataMLL_OBJECT_CODE;
    eedptDelivery:
      ProcessObjectCodeField:= cdsDataDELIVERY_OBJECT_CODE;
    eedptSaleShipment:
      ProcessObjectCodeField:= cdsDataSHIPMENT_OBJECT_CODE;
  else
    raise Exception.Create('Unknown ExceptEventProcessType');
  end;  { case }
end;

procedure TfmExceptEventDamage.cdsDataBND_PROCESS_OBJECT_BRANCH_CODEChange(Sender: TField);
begin
  inherited;
  if not FChangingProcessType then
    ProcessObjectBranchCodeField.AsInteger:= cdsDataBND_PROCESS_OBJECT_BRANCH_CODE.AsInteger;
end;

procedure TfmExceptEventDamage.cdsDataBND_PROCESS_OBJECT_CODEChange(Sender: TField);
begin
  inherited;
  if not FChangingProcessType then
    ProcessObjectCodeField.AsInteger:= cdsDataBND_PROCESS_OBJECT_CODE.AsInteger;
end;

procedure TfmExceptEventDamage.cdsDataEE_DAMAGE_PROCESS_TYPE_CODEChange(Sender: TField);
begin
  inherited;
  FChangingProcessType:= True;
  try
    cdsDataBND_PROCESS_OBJECT_BRANCH_CODE.AsInteger:= ProcessObjectBranchCodeField.AsInteger;
    cdsDataBND_PROCESS_OBJECT_CODE.AsInteger:= ProcessObjectCodeField.AsInteger;
  finally
    FChangingProcessType:= False;
  end;  { try }

  cdsProcessData.Edit;
  try
    GetProcessData;
    cdsProcessData.Post;
  except
    cdsProcessData.Cancel;
    raise;
  end;  { try }
end;

procedure TfmExceptEventDamage.InternalDoApplyUpdates;
var
  f: TDBFrame;
begin
  for f in Frames.OfType<TDBFrame> do
    if (f <> frMaterialListLine) and
       (f <> frDelivery) and
       (f <> frSaleShipment) then
      begin
        f.DoApplyUpdates;
      end;  { if }

  DoApplyUpdates;
  SaveDocsSavePoint;
end;

procedure TfmExceptEventDamage.InternalDoCancelUpdates;
var
  f: TDBFrame;
begin
  for f in Frames.OfType<TDBFrame> do
    if (f <> frMaterialListLine) and
       (f <> frDelivery) and
       (f <> frSaleShipment) then
      begin
        f.DoCancelUpdates;
      end;  { if }

  RevertDocsToSavePoint;
  DoCancelUpdates;
end;

procedure TfmExceptEventDamage.actDeliveryUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not cdsDataDELIVERY_OBJECT_BRANCH_CODE.IsNull and
    (cdsDataDELIVERY_OBJECT_BRANCH_CODE.AsInteger <> 0);
end;

procedure TfmExceptEventDamage.actDeliveryExecute(Sender: TObject);
begin
  inherited;
  TfmDelivery.ShowForm(dmDocClient, frDelivery.pdsProcessObjectParams, emReadOnly, doNone, nil, FProductClass);
end;

procedure TfmExceptEventDamage.actSaleShipmentUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not cdsDataSHIPMENT_OBJECT_BRANCH_CODE.IsNull and
    (cdsDataSHIPMENT_OBJECT_BRANCH_CODE.AsInteger <> 0);
end;

procedure TfmExceptEventDamage.actSaleShipmentExecute(Sender: TObject);
begin
  inherited;
  TfmSale.ShowForm(dmDocClient, frSaleShipment.pdsProcessObjectParams, emReadOnly, 0);
end;

procedure TfmExceptEventDamage.actMaterialListLineUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not cdsDataMLL_OBJECT_BRANCH_CODE.IsNull and
    (cdsDataMLL_OBJECT_BRANCH_CODE.AsInteger <> 0);
end;

procedure TfmExceptEventDamage.actMaterialListLineExecute(Sender: TObject);
begin
  inherited;
  cdsMLLSale.Open;
  try
    if (cdsMLLSaleSALE_ORDER_TYPE_CODE.AsInteger = sotProductionOrder) then
      TfmProductionOrder.ShowForm(dmDocClient, cdsMLLSale, emReadOnly)
    else
      TfmSale.ShowForm(dmDocClient, cdsMLLSale, emReadOnly, 0);
  finally
    cdsMLLSale.Close;
  end;  { try }
end;

procedure TfmExceptEventDamage.GetProcessData;

  procedure AssignProcessData(ADataSet: TAbmesClientDataSet);
  begin
    cdsProcessData.ClearFields;
    ADataSet.Open;
    try
      AssignFields(ADataSet, cdsProcessData);
    finally
      ADataSet.Close;
    end;  { try }
  end;

var
  ProcessType: TExceptEventDamageProcessType;
begin
  Assert(cdsProcessData.State in dsEditModes);

  ProcessType:= IntToExceptEventDamageProcessType(cdsDataEE_DAMAGE_PROCESS_TYPE_CODE.AsInteger);

  case ProcessType of
    eedptMaterialListLine:
      AssignProcessData(cdsMaterialListLineData);
    eedptDelivery:
      AssignProcessData(cdsDeliveryData);
    eedptSaleShipment:
      AssignProcessData(cdsSaleShipmentData);
  else
    raise Exception.Create('Unknown ExceptEventDamageProcessType');
  end;  { case }
end;

procedure TfmExceptEventDamage.Initialize;
begin
  inherited Initialize;

  cdsProcessData.Append;
  try
    GetProcessData;
    cdsProcessData.Post;
  except
    cdsProcessData.Cancel;
    raise;
  end;  { try }

  FProductClass:= pcNormal;
end;

procedure TfmExceptEventDamage.cdsMLLSaleBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsMLLSale.Params.ParamByName('MLL_OBJECT_BRANCH_CODE').AsInteger:= cdsDataMLL_OBJECT_BRANCH_CODE.AsInteger;
  cdsMLLSale.Params.ParamByName('MLL_OBJECT_CODE').AsInteger:= cdsDataMLL_OBJECT_CODE.AsInteger;
end;

procedure TfmExceptEventDamage.cdsMaterialListLineDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsMaterialListLineData.Params.ParamByName('MLL_OBJECT_BRANCH_CODE').AsInteger:= cdsDataMLL_OBJECT_BRANCH_CODE.AsInteger;
  cdsMaterialListLineData.Params.ParamByName('MLL_OBJECT_CODE').AsInteger:= cdsDataMLL_OBJECT_CODE.AsInteger;
end;

procedure TfmExceptEventDamage.cdsDeliveryDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsDeliveryData.Params.ParamByName('DELIVERY_OBJECT_BRANCH_CODE').AsInteger:= cdsDataDELIVERY_OBJECT_BRANCH_CODE.AsInteger;
  cdsDeliveryData.Params.ParamByName('DELIVERY_OBJECT_CODE').AsInteger:= cdsDataDELIVERY_OBJECT_CODE.AsInteger;
end;

procedure TfmExceptEventDamage.cdsSaleShipmentDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsSaleShipmentData.Params.ParamByName('SHIPMENT_OBJECT_BRANCH_CODE').AsInteger:= cdsDataSHIPMENT_OBJECT_BRANCH_CODE.AsInteger;
  cdsSaleShipmentData.Params.ParamByName('SHIPMENT_OBJECT_CODE').AsInteger:= cdsDataSHIPMENT_OBJECT_CODE.AsInteger;
end;

procedure TfmExceptEventDamage.cdsProcessDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsProcessData_DAMAGED_TOTAL_PRICE.AsFloat:=
    cdsDataPRODUCT_QUANTITY.AsFloat *
    cdsProcessDataSINGLE_PRICE.AsFloat;
end;

procedure TfmExceptEventDamage.cdsDataNewRecord(DataSet: TDataSet);
var
  CurrentDateTime: TDateTime;
begin
  inherited;
  Assert(FExceptEventCode <> 0);

  cdsDataEXCEPT_EVENT_DAMAGE_CODE.AsInteger:= dmMain.SvrExceptEvents.GetNewExceptEventDamageCode;
  cdsDataEXCEPT_EVENT_CODE.AsInteger:= FExceptEventCode;

  if (FParentExceptEventDamageCode <> 0) then
    begin
      cdsDataPARENT_CODE.AsInteger:= FParentExceptEventDamageCode;
      cdsDataPARENT_FULL_NO.AsString:= dmMain.SvrExceptEvents.GetExceptEventDamageFullNo(cdsDataPARENT_CODE.AsInteger);
    end;  { if }

  cdsDataLOCAL_NO.AsInteger:=
     dmMain.SvrExceptEvents.GetNextExceptEventDamageLocalNo(FExceptEventCode, FParentExceptEventDamageCode);
  cdsDataEE_DAMAGE_PROCESS_TYPE_CODE.AsInteger:= ExceptEventDamageProcessTypeToInt(DefaultProcessType);

  CurrentDateTime:= ContextNow;
  cdsDataCREATE_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
  cdsDataCREATE_DATE.AsDateTime:= DateOf(CurrentDateTime);
  cdsDataCREATE_TIME.AsDateTime:= TimeOf(CurrentDateTime);
end;

procedure TfmExceptEventDamage.DoApplyUpdates;
begin
  if cdsGridData.IsEmpty then
    raise Exception.Create(SExceptEventDamageMustHaveAtLeastOneAttack);

  inherited DoApplyUpdates;
end;

end.
