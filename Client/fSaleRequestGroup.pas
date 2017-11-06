unit fSaleRequestGroup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvComponentBase,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, AbmesFields, Mask,
  DBCtrls, JvExControls, JvComponent, JvDBLookup, fBaseFrame, fDBFrame,
  fFieldEditFrame, fDateFieldEditFrame, fPartnerFieldEditFrame,
  fPartnerExFieldEditFrame, fPartnerFieldEditFrameBald, fEmployeeFieldEditFrame,
  fEmployeeFieldEditFrameBald, ToolWin, ComCtrls, JvExStdCtrls, JvDBCombobox,
  uProducts, dDocClient, uClientTypes, JvCombobox;

type
  TfmSaleRequestGroup = class(TEditForm)
    cdsSaleDealTypes: TAbmesClientDataSet;
    cdsSaleDealTypesSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsSaleDealTypesSALE_DEAL_TYPE_NAME: TAbmesWideStringField;
    cdsSaleDealTypesSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    dsSaleDealTypes: TDataSource;
    dsBranches: TDataSource;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_NO: TAbmesFloatField;
    cdsBranchesNAME: TAbmesWideStringField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField;
    cdsBranchesIS_INACTIVE: TAbmesFloatField;
    gbID: TGroupBox;
    lblSaleDealType: TLabel;
    lblRequestBranch: TLabel;
    lblRequestNo: TLabel;
    lblIsActivatedByClient: TLabel;
    lblSaleCount: TLabel;
    lblRealizationSaleCount: TLabel;
    lblPrognosisSaleCount: TLabel;
    cbSaleDealType: TJvDBLookupCombo;
    cbRequestBranch: TJvDBLookupCombo;
    edtRequestNo: TDBEdit;
    edtRealizationSaleCount: TDBEdit;
    edtPrognosisSaleCount: TDBEdit;
    gbDates: TGroupBox;
    imgArrow: TImage;
    dbtRequestRegisterDateDiff: TDBText;
    lblRequestSendDate: TLabel;
    lblRequestRegisterDate: TLabel;
    frRequestSendDate: TfrDateFieldEditFrame;
    frRequestRegisterDate: TfrDateFieldEditFrame;
    frClient: TfrPartnerExFieldEditFrame;
    actFinish: TAction;
    actAnnul: TAction;
    pnlFinishButton: TPanel;
    btnFinish: TBitBtn;
    pnlAnnulButton: TPanel;
    btnAnnul: TBitBtn;
    cdsDataREQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsDataREQUEST_NO: TAbmesFloatField;
    cdsDataSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsDataSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsDataREQUEST_SEND_DATE: TAbmesSQLTimeStampField;
    cdsDataREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField;
    cdsDataCLIENT_COMPANY_CODE: TAbmesFloatField;
    cdsDataMEDIATOR_COMPANY_CODE: TAbmesFloatField;
    cdsDataSRG_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsDataCREATE_TIME: TAbmesSQLTimeStampField;
    cdsDataFINISH_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataFINISH_DATE: TAbmesSQLTimeStampField;
    cdsDataFINISH_TIME: TAbmesSQLTimeStampField;
    cdsDataANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataANNUL_DATE: TAbmesSQLTimeStampField;
    cdsDataANNUL_TIME: TAbmesSQLTimeStampField;
    cdsData_REQUEST_REGISTER_DATE_DIFF: TAbmesFloatField;
    cdsDataPROGNOSIS_SALE_COUNT: TAbmesFloatField;
    cdsDataREALIZATION_SALE_COUNT: TAbmesFloatField;
    pnlFinished: TPanel;
    chkFinished: TCheckBox;
    pnlAnnuled: TPanel;
    chkAnnuled: TCheckBox;
    frMediator: TfrPartnerFieldEditFrame;
    frSRGEmployee: TfrEmployeeFieldEditFrame;
    actDocumentation: TAction;
    cdsDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsDataCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    tbDocButton: TToolBar;
    btnDocs: TToolButton;
    cdsData_REQUEST_BRANCH_IDENTIFIER: TAbmesWideStringField;
    lblStatus: TLabel;
    edtStatus: TDBEdit;
    cdsDataSTATUS_CODE: TAbmesFloatField;
    cdsDataHAS_DOC_ITEMS: TAbmesFloatField;
    cdsDataCLIENT_REQUEST_GROUP_NO: TAbmesWideStringField;
    lblClientRequestGroupNo: TLabel;
    edtClientRequestGroupNo: TDBEdit;
    lblStreamType: TLabel;
    cbStreamType: TJvDBLookupCombo;
    cdsStreamTypes: TAbmesClientDataSet;
    cdsStreamTypesSTREAM_TYPE_CODE: TAbmesFloatField;
    cdsStreamTypesSTREAM_TYPE_ABBREV: TAbmesWideStringField;
    cdsStreamTypesSTREAM_TYPE_NAME: TAbmesWideStringField;
    dsStreamTypes: TDataSource;
    cdsDataSTREAM_TYPE_CODE: TAbmesFloatField;
    cdsDataIS_ACTIVATED_BY_CLIENT: TAbmesFloatField;
    cbIsActivatedByClient: TJvDBComboBox;
    cdsSaleRequestGroupDefaults: TAbmesClientDataSet;
    cdsSaleRequestGroupDefaultsMEDIATOR_COMPANY_CODE: TAbmesFloatField;
    cdsDataPRODUCT_CLASS_CODE: TAbmesFloatField;
    gbNotes: TGroupBox;
    moNotes: TDBMemo;
    cdsDataNOTES: TAbmesWideStringField;
    procedure actFormUpdate(Sender: TObject);
    procedure actAnnulUpdate(Sender: TObject);
    procedure actAnnulExecute(Sender: TObject);
    procedure actFinishUpdate(Sender: TObject);
    procedure actFinishExecute(Sender: TObject);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsDataREQUEST_REGISTER_DATEValidate(Sender: TField);
    procedure actDocumentationExecute(Sender: TObject);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsDataREQUEST_BRANCH_CODEChange(Sender: TField);
    procedure actApplyUpdatesExecute(Sender: TObject);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure cdsDataSTATUS_CODEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure cdsDataAfterOpen(DataSet: TDataSet);
    procedure cdsDataSALE_DEAL_TYPE_CODEChange(Sender: TField);
    procedure cdsDataCLIENT_COMPANY_CODEChange(Sender: TField);
    procedure cdsDataREQUEST_SEND_DATEChange(Sender: TField);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    procedure dmDocClientOnDataChanged(Sender: TObject);
    procedure UpdateVisiblePartners;
    procedure LoadDefaults;
  protected
    function GetOriginalFormCaption: string; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    class function CanUseDocs: Boolean; override;
  public
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    class function CanEditOuterDataSet: Boolean; override;
    procedure Initialize; override;
    procedure Finalize; override;

    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProductClass: TProductClass = pcNone); reintroduce; virtual;
    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProductClass: TProductClass = pcNone): Boolean;
  end;

implementation

uses dMain, uCompanyKinds, AbmesDialogs, uUtils, uClientConsts,
  uClientUtils, uBorderRelTypes, uDocUtils, uSalesClientUtils, uColorConsts,
  uStreamTypes, uSaleDealTypes, uProductClientUtils, uCompanyStatuses,
  uComboBoxUtils;

{$R *.dfm}
resourcestring
  SConfirmFinish = 'Потвърдете Приключване на ПДК';
  SConfirmAnnul = 'Потвърдете Анулиране на ПДК';
  SWrongDatesErrorMessage = ' трябва да е по-късна или равна на ';
  SCannonFinishSRG = 'Не можете да приключите ПДК защото по него има неприключени ОДК';
  SCannonAnnulSRG = 'Не можете да анулирате ПДК защото по него има неанулирани ОДК';
  SSaleRequestGroupSaved = 'ПДК е записан под номер %s/%d';
  SIncompatibleStreamTypeAndSaleDealType = 'Не можете да запишете Пакет Диалози за Наемаща продажба и Обратен поток';

procedure TfmSaleRequestGroup.actAnnulExecute(Sender: TObject);
begin
  inherited;

  if not dmMain.SvrSaleOrders.CanAnnulSRG(cdsDataREQUEST_BRANCH_CODE.AsInteger, cdsDataREQUEST_NO.AsInteger) then
    raise Exception.Create(SCannonAnnulSRG);

  if (MessageDlgEx(SConfirmAnnul, mtConfirmation, [mbOK, mbCancel], 0) = mrOk) then
    begin
      CheckEditMode(cdsData);
      cdsDataANNUL_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
    end;
end;

procedure TfmSaleRequestGroup.actAnnulUpdate(Sender: TObject);
begin
  inherited;
  pnlAnnulButton.Visible:=
    (EditMode = emEdit) and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull;
end;

procedure TfmSaleRequestGroup.actApplyUpdatesExecute(Sender: TObject);
var
  RequestNo: Integer;
begin
  RequestNo:= cdsDataREQUEST_NO.AsInteger;
  inherited;
  if (RequestNo <> cdsDataREQUEST_NO.AsInteger) then
    MessageDlgEx(
      Format(SSaleRequestGroupSaved, [cdsData_REQUEST_BRANCH_IDENTIFIER.AsString, cdsDataREQUEST_NO.AsInteger]),
      mtInformation,
      [mbOk],
      0
    );
end;

procedure TfmSaleRequestGroup.actDocumentationExecute(Sender: TObject);
var
  em: TEditMode;
begin
  inherited;

  em:= EditMode;

  if not cdsDataANNUL_EMPLOYEE_CODE.IsNull or
     not cdsDataFINISH_EMPLOYEE_CODE.IsNull then
    em:= emReadOnly;

  dmDocClient.DSOpenDoc(em, (Sender as TAction).ActionComponent as TControl, dotSaleRequestGroup, cdsData);
end;

procedure TfmSaleRequestGroup.actFinishExecute(Sender: TObject);
begin
  inherited;
  
  if not dmMain.SvrSaleOrders.CanFinishSRG(cdsDataREQUEST_BRANCH_CODE.AsInteger, cdsDataREQUEST_NO.AsInteger) then
    raise Exception.Create(SCannonFinishSRG);

  if (MessageDlgEx(SConfirmFinish, mtConfirmation, [mbOK, mbCancel], 0) = mrOk) then
    begin
      CheckEditMode(cdsData);
      cdsDataFINISH_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
    end;
end;

procedure TfmSaleRequestGroup.actFinishUpdate(Sender: TObject);
begin
  inherited;
  pnlFinishButton.Visible:=
    (EditMode = emEdit) and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull and
    cdsDataFINISH_EMPLOYEE_CODE.IsNull;
end;

procedure TfmSaleRequestGroup.actFormUpdate(Sender: TObject);
var
  IsReadOnly: Boolean;
  IsAnnuledOrClosed: Boolean;
begin
  inherited;

  if cdsDataSTATUS_CODE.IsNull then
    edtStatus.Color:= clBtnFace
  else
    edtStatus.Color:= SaleOrderStatusColors[cdsDataSTATUS_CODE.AsInteger];

  pnlFinished.Visible:= not cdsDataFINISH_EMPLOYEE_CODE.IsNull;
  pnlAnnuled.Visible:= not cdsDataANNUL_EMPLOYEE_CODE.IsNull;

  IsAnnuledOrClosed:= not cdsDataANNUL_EMPLOYEE_CODE.IsNull or not cdsDataFINISH_EMPLOYEE_CODE.IsNull;
  IsReadOnly:= IsAnnuledOrClosed or (EditMode <> emInsert);

  SetControlReadOnly(IsReadOnly or (FProductClass = pcFinancial), cbSaleDealType);
  SetControlsReadOnly(IsReadOnly, [
    cbStreamType,
    cbRequestBranch,
    ReplacedDBComboBox(cbIsActivatedByClient)]);

  SetControlReadOnly(IsAnnuledOrClosed, edtClientRequestGroupNo);

  SetControlReadOnly((EditMode = emReadOnly) or IsAnnuledOrClosed, moNotes);

  btnDocs.ImageIndex:= cdsDataHAS_DOC_ITEMS.AsInteger;
end;

class function TfmSaleRequestGroup.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

class function TfmSaleRequestGroup.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmSaleRequestGroup.cdsDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  UpdateVisiblePartners;
end;

procedure TfmSaleRequestGroup.cdsDataBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;

procedure TfmSaleRequestGroup.cdsDataBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (cdsDataSTREAM_TYPE_CODE.AsInteger = stReverse) and (cdsDataSALE_DEAL_TYPE_CODE.AsInteger = sdtLease) then
    raise Exception.Create(SIncompatibleStreamTypeAndSaleDealType);
end;

procedure TfmSaleRequestGroup.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  if cdsDataREQUEST_REGISTER_DATE.IsNull or cdsDataREQUEST_SEND_DATE.IsNull then
    cdsData_REQUEST_REGISTER_DATE_DIFF.Clear
  else
    cdsData_REQUEST_REGISTER_DATE_DIFF.AsInteger:=
      RealRound(cdsDataREQUEST_REGISTER_DATE.AsDateTime - cdsDataREQUEST_SEND_DATE.AsDateTime);
end;

procedure TfmSaleRequestGroup.cdsDataCLIENT_COMPANY_CODEChange(Sender: TField);
begin
  inherited;
  LoadDefaults;
end;

procedure TfmSaleRequestGroup.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDataSTATUS_CODE.AsInteger:= 1;
  cdsDataHAS_DOC_ITEMS.AsBoolean:= False;
  cdsDataPRODUCT_CLASS_CODE.AsInteger:= ProductClassToInt(FProductClass);
  if (FProductClass = pcFinancial) then
    cdsDataSALE_DEAL_TYPE_CODE.AsInteger:= sdtSale;
end;

procedure TfmSaleRequestGroup.cdsDataREQUEST_BRANCH_CODEChange(Sender: TField);
begin
  inherited;
  cdsDataREQUEST_NO.AsInteger:= dmMain.SvrSaleOrders.GetNewRequestNo(cdsDataREQUEST_BRANCH_CODE.AsInteger);
end;

procedure TfmSaleRequestGroup.cdsDataREQUEST_REGISTER_DATEValidate(
  Sender: TField);
begin
  inherited;
  if (not cdsDataREQUEST_SEND_DATE.IsNull) and
     (cdsDataREQUEST_SEND_DATE.AsDateTime > cdsDataREQUEST_REGISTER_DATE.AsDateTime) then
    raise Exception.Create(cdsDataREQUEST_REGISTER_DATE.DisplayLabel +
      SWrongDatesErrorMessage + cdsDataREQUEST_SEND_DATE.DisplayLabel);
end;

procedure TfmSaleRequestGroup.cdsDataREQUEST_SEND_DATEChange(Sender: TField);
begin
  inherited;
  LoadDefaults;                                       
end;

procedure TfmSaleRequestGroup.cdsDataSALE_DEAL_TYPE_CODEChange(Sender: TField);
begin
  inherited;
  UpdateVisiblePartners;
end;

procedure TfmSaleRequestGroup.cdsDataSTATUS_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    Text:= SaleOrderStatuses[Sender.AsInteger];
end;

procedure TfmSaleRequestGroup.OpenDataSets;
begin
  inherited;
  cdsSaleDealTypes.Open;
  cdsBranches.Open;
  cdsStreamTypes.Open;
end;

procedure TfmSaleRequestGroup.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FProductClass:= AProductClass;
end;

procedure TfmSaleRequestGroup.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frRequestSendDate) or
     (AFrame = frRequestRegisterDate) or
     (AFrame = frClient) or
     (AFrame = frMediator) then
    AFrame.ReadOnly:=
      not cdsDataANNUL_EMPLOYEE_CODE.IsNull or
      not cdsDataFINISH_EMPLOYEE_CODE.IsNull or
      ((cdsDataREALIZATION_SALE_COUNT.AsInteger + cdsDataPROGNOSIS_SALE_COUNT.AsInteger) > 0)
  else
  if (AFrame = frSRGEmployee) then
    AFrame.ReadOnly:=
      not cdsDataANNUL_EMPLOYEE_CODE.IsNull or
      not cdsDataFINISH_EMPLOYEE_CODE.IsNull
  else
    inherited;
end;

class function TfmSaleRequestGroup.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass): Boolean;
var
  f: TfmSaleRequestGroup;
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

procedure TfmSaleRequestGroup.UpdateVisiblePartners;
begin
  if (cdsDataSALE_DEAL_TYPE_CODE.AsInteger = sdtExport) then
    begin
      frClient.FilterCompanyKind:= ckVendor;
      frClient.PriorityCompanyKind:= ckVendor;
    end
  else
    begin
      frClient.FilterCompanyKind:= ckClient;
      frClient.PriorityCompanyKind:= ckClient;
    end;
end;

procedure TfmSaleRequestGroup.CloseDataSets;
begin
  cdsStreamTypes.Close;
  cdsBranches.Close;
  cdsSaleDealTypes.Close;
  inherited;
end;

procedure TfmSaleRequestGroup.dmDocClientOnDataChanged(Sender: TObject);
begin
  dmDocClient.SetHasDocItemsField(cdsDataHAS_DOC_ITEMS);
end;

procedure TfmSaleRequestGroup.Finalize;
begin
  inherited;
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
end;

procedure TfmSaleRequestGroup.FormCreate(Sender: TObject);
begin
  inherited;
  frRequestSendDate.FieldNames:= 'REQUEST_SEND_DATE';
  frRequestRegisterDate.FieldNames:= 'REQUEST_REGISTER_DATE';
  frClient.FieldNames:= 'CLIENT_COMPANY_CODE';
  frClient.PartnerStatusVisible:= True;
  frClient.CountryVisible:= True;
  frClient.ParRelButtonVisible:= True;
  frClient.ShownCompanyStatuses:= ActiveCompanyStatuses;
  frMediator.FieldNames:= 'MEDIATOR_COMPANY_CODE';
  frMediator.FilterCompanyKind:= ckMediator;
  frSRGEmployee.FieldNames:= 'SRG_EMPLOYEE_CODE';
end;

function TfmSaleRequestGroup.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmSaleRequestGroup.Initialize;
var
  MsgParams: TStrings;
begin
  inherited Initialize;
  
  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  MsgParams:= uProductClientUtils.CreateCommonMsgParams(LoginContext, FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;

  FOriginalFormCaption:= actForm.Caption;

  cdsSaleDealTypes.Filtered:= (FProductClass = pcFinancial);

  if (EditMode = emInsert) then
    dmDocClient.DSInitDoc(dotSaleRequestGroup, cdsData);
end;

procedure TfmSaleRequestGroup.LoadDefaults;
begin
  SetParams(cdsSaleRequestGroupDefaults.Params, cdsData);
  cdsSaleRequestGroupDefaults.Open;
  try
    if cdsSaleRequestGroupDefaults.Bof and cdsSaleRequestGroupDefaults.Eof then
      Exit;

    AssignFields(cdsSaleRequestGroupDefaults, cdsData);
    
  finally
    cdsSaleRequestGroupDefaults.Close;
  end;
end;

end.
