unit fPlannedStoreDeal;

interface
                         
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uClientTypes, Db, DBClient, ImgList, ActnList, StdCtrls, Buttons, ExtCtrls,
  Mask, DBCtrls, JvDBLookup, JvDBControls, JvToolEdit, fFieldEditFrame, fBaseFrame,
  fDBFrame, AbmesClientDataSet, AbmesFields,
  fProcessBindingFrame, fStoreDealProcessBinding, Menus, JvButtons,
  fEditForm, fTreeNodeFieldEditFrame, fDeptFieldEditFrame,
  fProductFieldEditFrame, fDateIntervalFrame, JvExControls, JvComponent,
  JvCaptionButton, JvComponentBase, uProducts, dDocClient, System.Actions;

type
  TfmPlannedStoreDeal = class(TEditForm)
    gbIdentification: TGroupBox;
    lblPlannedStoreDealBranch: TLabel;
    lblPlannedStoreDealCode: TLabel;
    edtCreateEmployee: TDBEdit;
    lblCreateEmployee: TLabel;
    gbStuff: TGroupBox;
    edtQuantity: TDBEdit;
    lblQuantity: TLabel;
    edtAccountQuantity: TDBEdit;
    lblAccountQuantity: TLabel;
    edtSinglePrice: TDBEdit;
    lblSinglePrice: TLabel;
    lblCurrency: TLabel;
    cbCurrency: TJvDBLookupCombo;
    lblTotalPrice: TLabel;
    edtTotalPrice: TDBEdit;
    dbtMeasure: TDBText;
    dbtAccountMeasure: TDBText;
    cdsCurrencies: TAbmesClientDataSet;
    dsCurrencies: TDataSource;
    cdsCurrenciesCURRENCY_CODE: TAbmesFloatField;
    cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField;
    cdsCurrenciesROUNDER: TAbmesFloatField;
    cdsCurrenciesORDER_NO: TAbmesFloatField;
    btnStornoRequest: TBitBtn;
    btnCloseRequest: TBitBtn;
    edtPlannedStoreDealCode: TDBEdit;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_NO: TAbmesFloatField;
    cdsBranchesNAME: TAbmesWideStringField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    cdsDataPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField;
    cdsDataPLANNED_STORE_DEAL_CODE: TAbmesFloatField;
    cdsDataPLANNED_STORE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsDataSTORE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsDataPRIORITY_CODE: TAbmesFloatField;
    cdsDataIS_PLANNED_MANUALLY: TAbmesFloatField;
    cdsDataBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    cdsDataBND_PROCESS_CODE: TAbmesFloatField;
    cdsDataSTORE_CODE: TAbmesFloatField;
    cdsDataSTORE_DEAL_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDataSTORE_DEAL_END_DATE: TAbmesSQLTimeStampField;
    cdsDataPRODUCT_CODE: TAbmesFloatField;
    cdsDataQUANTITY: TAbmesFloatField;
    cdsDataACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDataCURRENCY_CODE: TAbmesFloatField;
    cdsDataTOTAL_PRICE: TAbmesFloatField;
    cdsDataDEPT_CODE: TAbmesFloatField;
    cdsDataWORK_ORDER_NO: TAbmesWideStringField;
    cdsDataANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataANNUL_DATE: TAbmesSQLTimeStampField;
    cdsDataANNUL_TIME: TAbmesSQLTimeStampField;
    cdsDataCLOSE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCLOSE_DATE: TAbmesSQLTimeStampField;
    cdsDataCLOSE_TIME: TAbmesSQLTimeStampField;
    cdsDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsDataCREATE_TIME: TAbmesSQLTimeStampField;
    cdsDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsDataCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsDataPRODUCT_NAME: TAbmesWideStringField;
    cdsDataPRODUCT_NO: TAbmesFloatField;
    cdsDataMEASURE_CODE: TAbmesFloatField;
    cdsDataACCOUNT_MEASURE_CODE: TAbmesFloatField;
    lblPlannedStoreDealType: TLabel;
    lblPriority: TLabel;
    cbPlannedStoreDealType: TJvDBLookupCombo;
    cbPriority: TJvDBLookupCombo;
    cdsPlannedStoreDealTypes: TAbmesClientDataSet;
    cdsPriorities: TAbmesClientDataSet;
    dsPlannedStoreDealTypes: TDataSource;
    dsPriorities: TDataSource;
    cdsPlannedStoreDealTypesPLANNED_STORE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsPlannedStoreDealTypesPLANNED_STORE_DEAL_TYPE_NAME: TAbmesWideStringField;
    cdsPrioritiesPRIORITY_CODE: TAbmesFloatField;
    cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField;
    cdsProcesses: TAbmesClientDataSet;
    cdsProcessesPROCESS_CODE: TAbmesFloatField;
    cdsProcessesPROCESS_NAME: TAbmesWideStringField;
    cdsProcessesPROCESS_ABBREV: TAbmesWideStringField;
    cdsData_BND_PROCESS_ABBREV: TAbmesWideStringField;
    cdsData_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsData_PLANNED_STORE_DEAL_BRANCH_NAME: TAbmesWideStringField;
    cdsDataDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsDataSINGLE_PRICE: TAbmesFloatField;
    cdsData_BND_PROCESS_NAME: TAbmesWideStringField;
    actClosePSD: TAction;
    actAnnulPSD: TAction;
    cdsDataCREATE_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsMeasures: TAbmesClientDataSet;
    cdsData_MEASURE_ABBREV: TAbmesWideStringField;
    cdsMeasuresMEASURE_CODE: TAbmesFloatField;
    cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField;
    cdsMeasuresMEASURE_NAME: TAbmesWideStringField;
    cdsData_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cbPlannedStoreDealBranch: TJvDBLookupCombo;
    cdsAllBranches: TAbmesClientDataSet;
    cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField;
    dsAllBranches: TDataSource;
    cdsAllBranchesBRANCH_CODE: TAbmesFloatField;
    cdsAllBranchesBRANCH_NO: TAbmesFloatField;
    cdsAllBranchesNAME: TAbmesWideStringField;
    cdsAllBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsAllBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    cdsAllBranchesIS_LOCAL_BRANCH: TAbmesFloatField;
    cdsBranchesIS_INACTIVE: TAbmesFloatField;
    cdsDataPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    frProduct: TfrProductFieldEditFrame;
    frStoreDealProcessBinding: TfrStoreDealProcessBinding;
    cdsPrioritiesPRIORITY_NO: TAbmesFloatField;
    cdsPrioritiesPRIORITY_COLOR: TAbmesFloatField;
    cdsPrioritiesPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    frStore: TfrDeptFieldEditFrame;
    gbSDPlannedPeriod: TGroupBox;
    frDateInterval: TfrDateIntervalFrame;
    cdsProcessesPROCESS_NO: TAbmesFloatField;
    procedure FormShow(Sender: TObject);
    procedure cdsDataPRODUCT_CODEChange(Sender: TField);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure actApplyUpdatesExecute(Sender: TObject);
    procedure cdsDataTOTAL_PRICEChange(Sender: TField);
    procedure cdsDataSINGLE_PRICEorACCOUNT_QUANTITYChange(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure actClosePSDExecute(Sender: TObject);
    procedure actAnnulPSDExecute(Sender: TObject);
    procedure actClosePSDUpdate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actAnnulPSDUpdate(Sender: TObject);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
    FDisableFieldChanges: Boolean;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function GetOriginalFormCaption: string; override;
    class function CanUseDocs: Boolean; override;
    function IsQuantityField(const AField: TAbmesFloatField): Boolean; override;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AProductClass: TProductClass= pcNone); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AProductClass: TProductClass= pcNone): Boolean;

    class function CanEditOuterDataSet: Boolean; override;
    procedure Initialize; override;
  end;

implementation

uses
  dMain,
  fTreeSelectForm,
  uClientUtils,
  uProcesses,
  uUtils,
  AbmesDialogs,
  uTreeClientUtils,
  uProductClientUtils,
  uScalingUtils;

{$R *.DFM}

resourcestring
  SPlannedStoreDealSaved = 'Планираното Постъпление/Теглене е записано под номер %d';
  SConfirmAnnul = 'Желаете ли анулиране на Планираното Постъпление/Теглене?';
  SConfirmClose = 'Желаете ли приключване на Планираното Постъпление/Теглене?';

{ TfmPlannedStoreDeal }

class function TfmPlannedStoreDeal.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmPlannedStoreDeal.CloseDataSets;
begin
  inherited;
  cdsCurrencies.Close;
  cdsPlannedStoreDealTypes.Close;
  cdsPriorities.Close;
  cdsProcesses.Close;
  cdsMeasures.Close;
  cdsBranches.Close;
  cdsAllBranches.Close;
end;

procedure TfmPlannedStoreDeal.OpenDataSets;
begin
  frStoreDealProcessBinding.cdsProcesses.Params.ParamByName('IS_FINANCIAL_PROCESS').AsInteger:=
    ProductClassToInt(FProductClass) - 1;

  inherited;
  cdsCurrencies.Open;
  cdsPlannedStoreDealTypes.Open;
  cdsPriorities.Open;
  cdsProcesses.Open;
  cdsMeasures.Open;
  cdsBranches.Open;
  cdsAllBranches.Open;
end;

procedure TfmPlannedStoreDeal.FormShow(Sender: TObject);
begin
  inherited;

  cdsBranches.Filtered:= (EditMode = emInsert);

  frProduct.TreeDetailSelection:= tdsInstance;

  actAnnulPSD.Enabled:= dmMain.SvrStore.CanAnnulPlannedStoreDeal(
    cdsDataPLANNED_STORE_DEAL_BRANCH_CODE.AsInteger,
    cdsDataPLANNED_STORE_DEAL_CODE.AsInteger
  );
end;

function TfmPlannedStoreDeal.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmPlannedStoreDeal.Initialize;
var
  MsgParams: TStrings;
begin
  if (FProductClass = pcNormal) then
    Height:= ScalePixels(405)
  else
    Height:= ScalePixels(445);

  inherited Initialize;

  Assert(FProductClass in [pcNormal, pcFinancial]);

  frProduct.ProductClass:= FProductClass;
  frStoreDealProcessBinding.frDeficitCoverDecisionProcessObject.ProductClass:= FProductClass;
  frStoreDealProcessBinding.frDeliveryProcessObject.ProductClass:= FProductClass;
  frStoreDealProcessBinding.frPPProcessObject.ProductClass:= FProductClass;
  frStoreDealProcessBinding.frSaleShipmentProcessObject.ProductClass:= FProductClass;

  MsgParams:=
    uProductClientUtils.CreateCommonMsgParams(LoginContext, FProductClass);

  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }
  
  FOriginalFormCaption:= actForm.Caption;
end;

function TfmPlannedStoreDeal.IsQuantityField(
  const AField: TAbmesFloatField): Boolean;
begin
  Result:= False;
end;

procedure TfmPlannedStoreDeal.cdsDataPRODUCT_CODEChange(Sender: TField);
begin
  inherited;
  DoProductFieldChanged(cdsDataPRODUCT_CODE, cdsDataPRODUCT_NAME, cdsDataPRODUCT_NO,
    cdsDataMEASURE_CODE, cdsDataACCOUNT_MEASURE_CODE);
end;

procedure TfmPlannedStoreDeal.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;

  cdsDataBND_PROCESS_CODE.AsInteger:= pNSR;
  cdsDataIS_PLANNED_MANUALLY.AsBoolean:= True;
  cdsDataCREATE_EMPLOYEE_NAME.AsString:= LoginContext.UserFullName;
end;

procedure TfmPlannedStoreDeal.actApplyUpdatesExecute(Sender: TObject);
var
  PlannedStoreDealCode: Integer;
begin
  PlannedStoreDealCode:= cdsDataPLANNED_STORE_DEAL_CODE.AsInteger;

  inherited;

  if (PlannedStoreDealCode <> cdsDataPLANNED_STORE_DEAL_CODE.AsInteger) then
    ShowMessageFmtEx(SPlannedStoreDealSaved, [cdsDataPLANNED_STORE_DEAL_CODE.AsInteger]);
end;

procedure TfmPlannedStoreDeal.cdsDataTOTAL_PRICEChange(Sender: TField);
begin
  inherited;

  if not cdsDataACCOUNT_QUANTITY.IsNull and
     not cdsDataTOTAL_PRICE.IsNull and
     not FDisableFieldChanges then
    begin
      FDisableFieldChanges:= True;  // da ne stava bezkraina rekursia
      cdsDataSINGLE_PRICE.AsFloat:=
        cdsDataTOTAL_PRICE.AsFloat / cdsDataACCOUNT_QUANTITY.AsFloat;
      FDisableFieldChanges:= False;
    end;
end;

procedure TfmPlannedStoreDeal.cdsDataSINGLE_PRICEorACCOUNT_QUANTITYChange(Sender: TField);
begin
  inherited;

  if not cdsDataACCOUNT_QUANTITY.IsNull and                   
     not cdsDataSINGLE_PRICE.IsNull and
     not FDisableFieldChanges then
    begin
      FDisableFieldChanges:= True;  // da ne stava bezkraina rekursia
      cdsDataTOTAL_PRICE.AsFloat:=
        cdsDataSINGLE_PRICE.AsFloat * cdsDataACCOUNT_QUANTITY.AsFloat;
      FDisableFieldChanges:= False;
    end;
end;

procedure TfmPlannedStoreDeal.FormCreate(Sender: TObject);
begin
  inherited;
  FDisableFieldChanges:= False;
  frStore.FieldNames:= 'STORE_CODE';
  frStore.SelectStore:= True;
  frDateInterval.FieldNAmes:= 'STORE_DEAL_BEGIN_DATE;STORE_DEAL_END_DATE';

  RegisterFieldsTextVisibility(
    IsLevelOneInvestedValueVisible,
    [ cdsDataSINGLE_PRICE,
      cdsDataTOTAL_PRICE,
      cdsCurrenciesCURRENCY_ABBREV]);
end;

procedure TfmPlannedStoreDeal.actClosePSDExecute(Sender: TObject);
begin
  inherited;
  Assert(cdsDataCLOSE_EMPLOYEE_CODE.IsNull and cdsDataANNUL_EMPLOYEE_CODE.IsNull);

  if (MessageDlgEx(SConfirmClose, mtConfirmation, mbOkCancel, 0) = mrOk) then
    begin
      CheckEditMode(cdsData);
      cdsDataCLOSE_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
    end;
end;

procedure TfmPlannedStoreDeal.actAnnulPSDExecute(Sender: TObject);
begin
  inherited;
  Assert(cdsDataCLOSE_EMPLOYEE_CODE.IsNull and cdsDataANNUL_EMPLOYEE_CODE.IsNull);

  if (MessageDlgEx(SConfirmAnnul, mtConfirmation, mbOkCancel, 0) = mrOk) then
    begin
      CheckEditMode(cdsData);
      cdsDataANNUL_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
    end;
end;

procedure TfmPlannedStoreDeal.actClosePSDUpdate(Sender: TObject);
begin
  inherited;
  actClosePSD.Enabled:= not cdsData.ReadOnly;
end;

procedure TfmPlannedStoreDeal.actFormUpdate(Sender: TObject);
begin
  inherited;
  
  cdsData.ReadOnly:=
    not cdsDataCLOSE_EMPLOYEE_CODE.IsNull or
    not cdsDataANNUL_EMPLOYEE_CODE.IsNull or
    (EditMode = emReadOnly) or
    not cdsDataIS_PLANNED_MANUALLY.AsBoolean;

  pnlClose.Visible:= cdsData.ReadOnly;
  pnlOkCancel.Visible:= not pnlClose.Visible;
end;

procedure TfmPlannedStoreDeal.actAnnulPSDUpdate(Sender: TObject);
begin
  inherited;
  actAnnulPSD.Enabled:= not cdsData.ReadOnly;
end;

procedure TfmPlannedStoreDeal.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass);
begin
  FProductClass:= AProductClass;
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
end;

procedure TfmPlannedStoreDeal.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  AFrame.ReadOnly:= cdsData.ReadOnly;
end;

class function TfmPlannedStoreDeal.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass): Boolean;
var
  f: TfmPlannedStoreDeal;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AProductClass);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

class function TfmPlannedStoreDeal.CanUseDocs: Boolean;
begin
  Result:= True;
end;

end.
