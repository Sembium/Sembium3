unit fParRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvComponentBase, JvCaptionButton, DB,
  AbmesFields, ParamDataSet, ActnList, DBClient,
  AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin,
  DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls, fBaseFrame,
  fDBFrame, fFieldEditFrame, fPartnerFieldEditFrame,
  fPartnerExFieldEditFrame, fGridForm,fBottomButtonGridForm, uBorderRelTypes,
  dDocClient, uClientTypes, Mask, Menus, Provider, DBGridEhGrouping, System.Actions;

type
  TfmParRel = class(TBottomButtonGridForm)
    frPartner: TfrPartnerExFieldEditFrame;
    cdsGridDataPARTNER_CODE: TAbmesFloatField;
    cdsGridDataBORDER_REL_TYPE_CODE: TAbmesFloatField;
    cdsGridDataPAR_REL_PERIOD_CODE: TAbmesFloatField;
    cdsGridDataBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataEND_DATE: TAbmesSQLTimeStampField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataHAS_DOC_ITEMS: TAbmesFloatField;
    cdsGridDataCURRENCY_CODE: TAbmesFloatField;
    cdsGridDataSTORE_CODE: TAbmesFloatField;
    cdsGridDataPARTNER_OFFICE_CODE: TAbmesFloatField;
    cdsGridDataTRANSPORT_DURATION_DAYS: TAbmesFloatField;
    cdsGridDataMEDIATOR_COMPANY_CODE: TAbmesFloatField;
    cdsGridDataSHIPMENT_TYPE_CODE: TAbmesFloatField;
    cdsGridDataIS_PARTNER_TRANSPORT: TAbmesFloatField;
    cdsGridDataCUSTOMHOUSE_CODE: TAbmesFloatField;
    cdsGridData_MAX_PAR_REL_PERIOD_CODE: TAggregateField;
    cdsDataPARTNER_CODE: TAbmesFloatField;
    cdsDataBORDER_REL_TYPE_CODE: TAbmesFloatField;
    cdsDataPRIORITY_CODE: TAbmesFloatField;
    cdsDataqryParRelPeriods: TDataSetField;
    cdsGridDataSTORE_IDENTIFIER: TAbmesWideStringField;
    cdsPartnerOffices: TAbmesClientDataSet;
    cdsPartnerOfficesOFFICE_CODE: TAbmesFloatField;
    cdsPartnerOfficesOFFICE_NAME: TAbmesWideStringField;
    cdsGridData_PARTNER_OFFICE_NAME: TAbmesWideStringField;
    cdsCurrencies: TAbmesClientDataSet;
    cdsCurrenciesCURRENCY_CODE: TAbmesFloatField;
    cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridData_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsShipmentTypes: TAbmesClientDataSet;
    cdsShipmentTypesSHIPMENT_TYPE_CODE: TAbmesFloatField;
    cdsShipmentTypesSHIPMENT_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridData_SHIPMENT_TYPE_ABBREV: TAbmesWideStringField;
    cdsCustomhouses: TAbmesClientDataSet;
    cdsCustomhousesCUSTOMHOUSE_CODE: TAbmesFloatField;
    cdsCustomhousesCUSTOMHOUSE_NAME: TAbmesWideStringField;
    cdsGridData_CUSTOMHOUSE_NAME: TAbmesWideStringField;
    cdsGridData_HAS_CUSTOMHOUSE: TAbmesFloatField;
    cdsGridData_RIGHT_ARROW: TAbmesWideStringField;
    tlbDocs: TToolBar;
    btnDocs: TToolButton;
    pnlDocs: TPanel;
    sepDocs: TToolButton;
    cdsShipmentTypesSHIPMENT_TYPE_NAME: TAbmesWideStringField;
    cdsShipmentTypes_SHOW_NAME: TAbmesWideStringField;
    cdsGridData_SHIPMENT_TYPE_SHOW_NAME: TAbmesWideStringField;
    cdsGridDataMEDIATOR_COMPANY_SHORT_NAME: TAbmesWideStringField;
    lblFormCaption: TLabel;
    actCreateLike: TAction;
    btnCreateLike: TBitBtn;
    cdsGridDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCREATE_TIME: TAbmesSQLTimeStampField;
    cdsGridDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsSpecFinModels: TAbmesClientDataSet;
    cdsGridDataqrySpecFinModels: TDataSetField;
    cdsSpecFinModelsSPEC_FIN_MODEL_CODE: TAbmesFloatField;
    cdsSpecFinModelsPARTNER_CODE: TAbmesFloatField;
    cdsSpecFinModelsBORDER_REL_TYPE_CODE: TAbmesFloatField;
    cdsSpecFinModelsPAR_REL_PERIOD_CODE: TAbmesFloatField;
    cdsSpecFinModelsFINANCIAL_PRODUCT_CODE: TAbmesFloatField;
    cdsSpecFinModelsFINANCIAL_PRODUCT_NAME: TAbmesWideStringField;
    cdsSpecFinModelsFINANCIAL_PRODUCT_NO: TAbmesFloatField;
    cdsSpecFinModelsSPEC_FIN_MODEL_NAME: TAbmesWideStringField;
    cdsSpecFinModelsIS_EST_MODEL: TAbmesFloatField;
    cdsSpecFinModelsAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsSpecFinModelsAUTHORIZE_DATE: TAbmesSQLTimeStampField;
    cdsSpecFinModelsAUTHORIZE_TIME: TAbmesSQLTimeStampField;
    cdsSpecFinModelsCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsSpecFinModelsCREATE_DATE: TAbmesSQLTimeStampField;
    cdsSpecFinModelsCREATE_TIME: TAbmesSQLTimeStampField;
    cdsSpecFinModelsCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsSpecFinModelsCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsSpecFinModelsCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsSpecFinModelsqrySpecFinModelLines: TDataSetField;
    cdsFinModelLineReasons: TAbmesClientDataSet;
    cdsFinModelLineReasonsFIN_MODEL_LINE_REASON_CODE: TAbmesFloatField;
    cdsFinModelLineReasonsFIN_MODEL_LINE_REASON_NO: TAbmesFloatField;
    cdsFinModelLineReasonsFIN_MODEL_LINE_REASON_NAME: TAbmesWideStringField;
    cdsFinModelLineReasonsFIN_MODEL_LINE_REASON_ABBREV: TAbmesWideStringField;
    cdsSpecFinModelLines: TAbmesClientDataSet;
    cdsSpecFinModelLinesSPEC_FIN_MODEL_LINE_CODE: TAbmesFloatField;
    cdsSpecFinModelLinesSPEC_FIN_MODEL_CODE: TAbmesFloatField;
    cdsSpecFinModelLinesPARTNER_CODE: TAbmesFloatField;
    cdsSpecFinModelLinesFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField;
    cdsSpecFinModelLinesFIN_MODEL_LINE_NO: TAbmesFloatField;
    cdsSpecFinModelLinesLINE_QUANTITY_PERCENT: TAbmesFloatField;
    cdsSpecFinModelLinesMOVEMENT_OFFSET_DAYS: TAbmesFloatField;
    cdsSpecFinModelLinesMOVEMENT_DURATION_DAYS: TAbmesFloatField;
    cdsSpecFinModelLinesFIN_STORE_CODE: TAbmesFloatField;
    cdsSpecFinModelLinesPARTNER_ACCOUNT_CODE: TAbmesFloatField;
    cdsSpecFinModelLinesFIN_MODEL_LINE_REASON_CODE: TAbmesFloatField;
    cdsSpecFinModels_IS_AUTHORIZED: TAbmesFloatField;
    cdsSpecFinModelsPRIMARY_FIN_MODEL_LINE_COUNT: TAbmesFloatField;
    cdsSpecFinModelsSECONDARY_LINE_QTY_PERCENT: TAbmesFloatField;
    cdsSpecFinModelLinesIS_PRIMARY_FIN_MODEL_LINE_TYPE: TAbmesFloatField;
    cdsSpecFinModelLinesSECONDARY_LINE_QTY_PERCENT: TAbmesFloatField;
    cdsFinModelLineTypes: TAbmesClientDataSet;
    cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField;
    cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_NO: TAbmesFloatField;
    cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_NAME: TAbmesWideStringField;
    cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_ABBREV: TAbmesWideStringField;
    cdsSpecFinModelLines_FIN_MODEL_LINE_TYPE_ABBREV: TAbmesWideStringField;
    cdsSpecFinModelLines_SHOW_NO: TAbmesWideStringField;
    cdsSpecFinModelLines_FIN_MODEL_LINE_REASON_ABBREV: TAbmesWideStringField;
    cdsSpecFinModelLinesFIN_STORE_IDENTIFIER: TAbmesWideStringField;
    cdsSpecFinModelLinesPRIMARY_LINE_QTY_PERCENT: TAbmesFloatField;
    cdsSpecFinModelLines_SUM_PRIMARY_LINE_QTY_PERCENT: TAggregateField;
    cdsSpecFinModelLines_PRIMARY_FIN_MODEL_LINE_COUNT: TAggregateField;
    cdsSpecFinModelLines_SUM_SECONDARY_LINE_QTY_PERCENT: TAggregateField;
    cdsSpecFinModelLines_MAX_FIN_MODEL_LINE_NO: TAggregateField;
    cdsSpecFinModelLines_MAX_SPEC_FIN_MODEL_LINE_CODE: TAggregateField;
    cdsSpecFinModelLinesABS_MOVEMENT_OFFSET_DAYS: TAbmesFloatField;
    cdsSpecFinModelLinesMOVEMENT_OFFSET_DAYS_SIGN: TAbmesFloatField;
    cdsDateOffsetSigns: TAbmesClientDataSet;
    cdsDateOffsetSignsMOVEMENT_OFFSET_DAYS_SIGN: TAbmesFloatField;
    cdsDateOffsetSignsMOVEMENT_OFFSET_DAYS_SIGN_NAME: TAbmesWideStringField;
    cdsSpecFinModelLines_MOVEMENT_OFFSET_DAYS_SIGN_NAME: TAbmesWideStringField;
    cdsPartnerAccounts: TAbmesClientDataSet;
    cdsPartnerAccountsACCOUNT_CODE: TAbmesFloatField;
    cdsSpecFinModelLines_FIN_MODEL_LINE_TYPE_NAME: TAbmesWideStringField;
    cdsSpecFinModelLines_PARTNER_ACCOUNT_FULL_NAME: TAbmesWideStringField;
    cdsPartnerAccountsACCOUNT_FULL_NAME: TAbmesWideStringField;
    cdsSpecFinModelLines_FIN_MODEL_LINE_REASON_NAME: TAbmesWideStringField;
    cdsSpecFinModelLines_ARROW: TAbmesFloatField;
    cdsSpecFinModels_MAX_SPEC_FIN_MODEL_CODE: TAggregateField;
    cdsSpecFinModels_SHOW_NAME: TAbmesWideStringField;
    cdsPartnerAccountsCURRENCY_PRODUCT_CODE: TAbmesFloatField;
    cdsSpecFinModelLines_MIN_FIN_MODEL_LINE_NO: TAggregateField;
    cdsSpecFinModels_AUTHORIZED_COUNT: TAggregateField;
    cdsGridDataAUTHORIZED_SPEC_FIN_MODEL_CNT: TAbmesFloatField;
    cdsGridDataIS_PAST: TAbmesFloatField;
    cdsGridDataIS_PRESENT: TAbmesFloatField;
    cdsGridDataIS_FUTURE: TAbmesFloatField;
    actPastPeriods: TAction;
    actPresentPeriods: TAction;
    actFuturePeriods: TAction;
    tlbPastPresentFuturePeriods: TToolBar;
    sepPastPresentFuturePeriods: TToolButton;
    btnPastPeriods: TSpeedButton;
    btnPresentPeriods: TSpeedButton;
    btnFuturePeriods: TSpeedButton;
    cdsDataMAX_SPEC_FIN_MODEL_CODE: TAbmesFloatField;
    cdsSpecFinModels_MAX_IS_EST_MODEL: TAggregateField;
    cdsGridDataCOMPANY_CLASS_CODE: TAbmesFloatField;
    cdsDataCOMPANY_CLASS_CODE: TAbmesFloatField;
    cdsGridDataOVERRIDE_CURRENCY: TAbmesFloatField;
    cdsGridDataOVERRIDE_STORE: TAbmesFloatField;
    cdsGridDataOVERRIDE_TRANSPORT_DUR_DAYS: TAbmesFloatField;
    cdsGridDataOVERRIDE_MEDIATOR_COMPANY: TAbmesFloatField;
    cdsGridDataOVERRIDE_SHIPMENT_TYPE: TAbmesFloatField;
    cdsGridDataOVERRIDE_IS_PARTNER_TRANSPORT: TAbmesFloatField;
    cdsGridDataOVERRIDE_CUSTOMHOUSE: TAbmesFloatField;
    cdsGridDataINHRT_CURRENCY_CODE: TAbmesFloatField;
    cdsGridDataINHRT_STORE_CODE: TAbmesFloatField;
    cdsGridDataINHRT_STORE_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataINHRT_TRANSPORT_DURATION_DAYS: TAbmesFloatField;
    cdsGridDataINHRT_MEDIATOR_COMPANY_CODE: TAbmesFloatField;
    cdsGridDataINHRT_MED_COMPANY_SHORT_NAME: TAbmesWideStringField;
    cdsGridDataINHRT_SHIPMENT_TYPE_CODE: TAbmesFloatField;
    cdsGridDataINHRT_IS_PARTNER_TRANSPORT: TAbmesFloatField;
    cdsGridDataINHRT_CUSTOMHOUSE_CODE: TAbmesFloatField;
    cdsCommonParRelPeriod: TAbmesClientDataSet;
    cdsCommonParRelPeriodCURRENCY_CODE: TAbmesFloatField;
    cdsCommonParRelPeriodSTORE_CODE: TAbmesFloatField;
    cdsCommonParRelPeriodSTORE_IDENTIFIER: TAbmesWideStringField;
    cdsCommonParRelPeriodTRANSPORT_DURATION_DAYS: TAbmesFloatField;
    cdsCommonParRelPeriodMEDIATOR_COMPANY_CODE: TAbmesFloatField;
    cdsCommonParRelPeriodMEDIATOR_COMPANY_SHORT_NAME: TAbmesWideStringField;
    cdsCommonParRelPeriodSHIPMENT_TYPE_CODE: TAbmesFloatField;
    cdsCommonParRelPeriodIS_PARTNER_TRANSPORT: TAbmesFloatField;
    cdsCommonParRelPeriodCUSTOMHOUSE_CODE: TAbmesFloatField;
    cdsGridData_INHRT_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridData_INHRT_SHIPMENT_TYPE_SHOW_NAME: TAbmesWideStringField;
    cdsGridData_INHRT_CUSTOMHOUSE_NAME: TAbmesWideStringField;
    cdsGridData_SHOW_STORE_IDENTIFIER: TAbmesWideStringField;
    cdsGridData_SHOW_TRANSPORT_DURATION_DAYS: TAbmesFloatField;
    cdsGridData_SHOW_MED_COMPANY_SHORT_NAME: TAbmesWideStringField;
    cdsGridData_SHOW_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridData_INHRT_SHIPMENT_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridData_SHOW_SHIPMENT_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridData_SHOW_IS_PARTNER_TRANSPORT: TAbmesFloatField;
    cdsPartnerAccountsBANK_ACCOUNT_TYPE_CODE: TAbmesFloatField;
    cdsGridDataqryPRPerPriceModifiers: TDataSetField;
    cdsSpecFinModelsFM_MOVEMENT_OFFSET_TYPE_CODE: TAbmesFloatField;
    cdsFMMovementOffsetTypes: TAbmesClientDataSet;
    cdsFMMovementOffsetTypesFM_MOVEMENT_OFFSET_TYPE_CODE: TAbmesFloatField;
    cdsFMMovementOffsetTypesFM_MOVEMENT_OFFSET_TYPE_NAME: TAbmesWideStringField;
    cdsSpecFinModels_FM_MOVEMENT_OFFSET_TYPE_NAME: TAbmesWideStringField;
    cdsGridDataFIN_PARTNER_CODE: TAbmesFloatField;
    cdsGridDataFIN_PARTNER_SHORT_NAME: TAbmesWideStringField;
    cdsGridDataOVERRIDE_FIN_PARTNER: TAbmesFloatField;
    cdsGridDataINHRT_FIN_PARTNER_CODE: TAbmesFloatField;
    cdsGridDataINHRT_FIN_PARTNER_SHORT_NAME: TAbmesWideStringField;
    cdsCommonParRelPeriodFIN_PARTNER_CODE: TAbmesFloatField;
    cdsCommonParRelPeriodFIN_PARTNER_SHORT_NAME: TAbmesWideStringField;
    cdsGridData_SHOW_FIN_PARTNER_SHORT_NAME: TAbmesWideStringField;
    cdsSpecFinModelsEXEC_DEPT_CODE: TAbmesFloatField;
    cdsSpecFinModelsEXEC_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsShipmentTypesNOTES: TAbmesWideStringField;
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
    procedure cdsGridDataMEDIATOR_COMPANY_CODEChange(Sender: TField);
    procedure cdsShipmentTypesCalcFields(DataSet: TDataSet);
    procedure btnDocsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataBEGIN_DATEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure cdsGridDataSTORE_CODEChange(Sender: TField);
    procedure cdsPartnerOfficesBeforeOpen(DataSet: TDataSet);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure actCreateLikeUpdate(Sender: TObject);
    procedure actCreateLikeExecute(Sender: TObject);
    procedure cdsGridDataBeforeEdit(DataSet: TDataSet);
    procedure navDataBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cdsSpecFinModelsNewRecord(DataSet: TDataSet);
    procedure cdsSpecFinModelsCalcFields(DataSet: TDataSet);
    procedure cdsSpecFinModelLinesBeforePost(DataSet: TDataSet);
    procedure cdsSpecFinModelLinesCalcFields(DataSet: TDataSet);
    procedure cdsSpecFinModelLinesAfterPost(DataSet: TDataSet);
    procedure cdsSpecFinModelLinesAfterDelete(DataSet: TDataSet);
    procedure cdsSpecFinModelsSECONDARY_LINE_QTY_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsSpecFinModelsBeforePost(DataSet: TDataSet);
    procedure cdsSpecFinModelLinesLINE_QUANTITY_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsSpecFinModelLinesLINE_QUANTITY_PERCENTSetText(Sender: TField;
      const Text: string);
    procedure cdsSpecFinModelLinesFIN_STORE_CODEChange(Sender: TField);
    procedure cdsSpecFinModelLinesNewRecord(DataSet: TDataSet);
    procedure cdsSpecFinModelsFINANCIAL_PRODUCT_CODEChange(Sender: TField);
    procedure cdsSpecFinModelLinesMOVEMENT_OFFSET_DAYSChange(Sender: TField);
    procedure cdsSpecFinModelLinesABS_MOVEMENT_OFFSET_DAYSChange(
      Sender: TField);
    procedure cdsSpecFinModelLinesMOVEMENT_OFFSET_DAYS_SIGNChange(
      Sender: TField);
    procedure cdsPartnerAccountsBeforeOpen(DataSet: TDataSet);
    procedure cdsSpecFinModelLinesBeforeInsert(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure cdsSpecFinModelLinesFIN_MODEL_LINE_TYPE_CODEChange(
      Sender: TField);
    procedure cdsPartnerAccountsFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cdsSpecFinModelsAUTHORIZE_EMPLOYEE_CODEChange(Sender: TField);
    procedure cdsSpecFinModelsAfterPost(DataSet: TDataSet);
    procedure cdsSpecFinModelsAfterDelete(DataSet: TDataSet);
    procedure cdsGridDataBeforeDelete(DataSet: TDataSet);
    procedure cdsSpecFinModelsBeforeDelete(DataSet: TDataSet);
    procedure cdsGridDataFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure actPastPresentFuturePeriodsExecute(Sender: TObject);
    procedure cdsGridDataBeforeInsert(DataSet: TDataSet);
    procedure cdsGridDataBEGIN_DATEChange(Sender: TField);
    procedure cdsSpecFinModelLinesFIN_STORE_IDENTIFIERGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataFIN_PARTNER_CODEChange(Sender: TField);
    procedure cdsSpecFinModelsEXEC_DEPT_CODEChange(Sender: TField);
  private
    FBorderRelType: TBorderRelType;
    FMsgParams: TStringList;
    FCreateLikeFieldValues: Variant;
    FBeforeEditBeginDate: TDateTime;
    FSettingMovementDateOffset: Boolean;
    FMaxFinModelLineNos: TStringList;
    FMaxParRelPeriodCode: Integer;
    FMaxSpecFinModelCode: Integer;
    FFocusDate: TDateTime;
    procedure SetSpecFinModelTotals;
    procedure CalcMaxFinModelLineNos;
    procedure ClearMaxFinModelLineNos;
    function GetMaxFinModelLineNo(AModelLineTypeCode: Integer): Integer;
    procedure SetAuthorizedSpecFinModelCount;
    procedure RefilterPeriods;
    function NewSpecFinModelCode: Integer;
  protected
    class function CanUseDocs: Boolean; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetOriginalFormCaption: string; override;
    function GetGridRecordReadOnly: Boolean; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
  public
    class function ShowForm(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True;
      APartnerCode: Integer = -1; ABorderRelType: TBorderRelType = brtNone;
      AFocusDate: TDateTime = 0): Boolean;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True;
      APartnerCode: Integer = -1; ABorderRelType: TBorderRelType = brtNone;
      AFocusDate: TDateTime = 0); reintroduce; virtual;
    procedure Initialize; override;
    procedure Finalize; override;
  end;

implementation

uses
  dMain, uUtils, uTreeClientUtils, uDocUtils, JclStrings,
  fParRelPeriod, uClientUtils, uCompanyKinds, uUserActivityConsts, uYearParts,
  uFinModelLineTypes, uBorderRelTypeClientUtils, Math, uDataSetUtils, DateUtils,
  uFinanceClientUtils, uClientDateTime, StrUtils, uBankAccountTypes;

{$R *.dfm}

resourcestring
  SNoUserActivityForPastOrCurrentParRelPeriod =
    'Нямате Информационна Отговорност да задавате или изтривате Допълваща Информация за изминал или текущ Времеви Интервал! (%d)';

{ TfmParRel }

procedure TfmParRel.actCreateLikeExecute(Sender: TObject);
var
  SavePoint: Integer;
begin
  inherited;

  FCreateLikeFieldValues:= GetRecordData(cdsGridData, True);
  try
    SavePoint:= cdsGridData.SavePoint;
    try
      if not DoShowEditForm(emInsert) then
        Abort;
    except
      cdsGridData.SavePoint:= SavePoint;
      raise;
    end;
  finally
    FCreateLikeFieldValues:= Unassigned;
  end;
end;

procedure TfmParRel.actCreateLikeUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0);
end;

procedure TfmParRel.actFormUpdate(Sender: TObject);
begin
  inherited;
  btnDocs.Enabled:= cdsGridData.Active and (cdsGridData.RecordCount > 0);
  btnDocs.ImageIndex:= cdsGridDataHAS_DOC_ITEMS.AsInteger;
end;

procedure TfmParRel.actPastPresentFuturePeriodsExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  RefilterPeriods;
end;

procedure TfmParRel.btnDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnDocs, dotParRelPeriod, cdsGridData);
end;

procedure TfmParRel.CalcMaxFinModelLineNos;
var
  b: TBookmark;
  FinModelLineTypeCode: Integer;
begin
  ClearMaxFinModelLineNos;

  cdsSpecFinModelLines.DisableControls;
  try
    b:= cdsSpecFinModelLines.Bookmark;
    try
      FinModelLineTypeCode:= 0;
      cdsSpecFinModelLines.First;
      while not cdsSpecFinModelLines.Eof do
        begin
          if (FinModelLineTypeCode <> cdsSpecFinModelLinesFIN_MODEL_LINE_TYPE_CODE.AsInteger) then
            begin
              FinModelLineTypeCode:= cdsSpecFinModelLinesFIN_MODEL_LINE_TYPE_CODE.AsInteger;
              FMaxFinModelLineNos.Values[IntToStr(FinModelLineTypeCode)]:=
                IntToStr(VarToInt(cdsSpecFinModelLines_MAX_FIN_MODEL_LINE_NO.AsVariant));
            end;

          cdsSpecFinModelLines.Next;
        end;  { while }
    finally
      cdsSpecFinModelLines.Bookmark:= b;
    end;  { try }
  finally
    cdsSpecFinModelLines.EnableControls;
  end;  { try }
end;

class function TfmParRel.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmParRel.cdsDataBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:=
    VarArrayOf([
      cdsData.Params.ParamByName('PARTNER_CODE').AsInteger,
      cdsData.Params.ParamByName('BORDER_REL_TYPE_CODE').AsInteger,
      DocsDelta
    ]);
end;

procedure TfmParRel.cdsGridDataBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  while not cdsSpecFinModels.IsEmpty do
    cdsSpecFinModels.Delete;
end;

procedure TfmParRel.cdsGridDataBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  FBeforeEditBeginDate:= cdsGridDataBEGIN_DATE.AsDateTime;
end;

procedure TfmParRel.cdsGridDataBeforeInsert(DataSet: TDataSet);
var
  SaveFiltered: Boolean;
begin
  inherited;
  cdsGridData.DisableControls;
  try
    SaveFiltered:= cdsGridData.Filtered;
    cdsGridData.Filtered:= False;
    try
      FMaxParRelPeriodCode:= 0;
      cdsGridData.First;
      while not cdsGridData.Eof do
        begin
          FMaxParRelPeriodCode:=
            Max(FMaxParRelPeriodCode, cdsGridDataPAR_REL_PERIOD_CODE.AsInteger);
          cdsGridData.Next;
        end;
    finally
      cdsGridData.Filtered:= SaveFiltered;
    end;
  finally
    cdsGridData.EnableControls;
  end;
end;

procedure TfmParRel.cdsGridDataBeforePost(DataSet: TDataSet);
var
  NowDate: TDateTime;
begin
  inherited;

  CheckRequiredFields([cdsGridDataBEGIN_DATE, cdsGridDataEND_DATE]);

  CheckDatePeriodYearParts(
    cdsGridDataBEGIN_DATE.AsDateTime,
    cdsGridDataEND_DATE.AsDateTime,
    LoginContext.DatePeriodsYearPartCode);

  if ( (DataSet.State = dsInsert) or
       (cdsGridDataBEGIN_DATE.AsDateTime < FBeforeEditBeginDate) ) and
     (cdsGridDataBEGIN_DATE.AsDateTime <= ContextDate) and
     (not LoginContext.HasUserActivity(uaPastOrCurrentParRelPeriodEdit)) then
    begin
      cdsGridDataBEGIN_DATE.FocusControl;
      raise Exception.CreateFmt(SNoUserActivityForPastOrCurrentParRelPeriod, [uaPastOrCurrentParRelPeriodEdit]);
    end;

  NowDate:= ContextDate;

  cdsGridDataIS_PAST.AsBoolean:=
    (cdsGridDataEND_DATE.AsDateTime < NowDate);
  cdsGridDataIS_FUTURE.AsBoolean:=
    (cdsGridDataBEGIN_DATE.AsDateTime > NowDate);
  cdsGridDataIS_PRESENT.AsBoolean:=
    not cdsGridDataIS_PAST.AsBoolean and
    not cdsGridDataIS_FUTURE.AsBoolean;
end;

procedure TfmParRel.cdsGridDataBEGIN_DATEChange(Sender: TField);
var
  i: Integer;
begin
  inherited;

  for i:= 0 to cdsGridData.FieldCount - 1 do
    if StartsStr('INHRT_', cdsGridData.Fields[i].FieldName) then
      cdsGridData.Fields[i].Clear;

  if not Sender.IsNull then
    begin
      Screen.TempCursor(crHourGlass) /
      procedure begin
        SetParams(cdsCommonParRelPeriod.Params, cdsGridData);
        cdsCommonParRelPeriod.Params.ParamByName('THE_DATE').Value:= Sender.AsVariant;

        cdsCommonParRelPeriod.TempOpen /
          procedure
          var
            k: Integer;
            FldName: string;
          begin
            if (cdsCommonParRelPeriod.RecordCount > 0) then
              for k:= 0 to cdsGridData.FieldCount - 1 do
                if StartsStr('INHRT_', cdsGridData.Fields[k].FieldName) then
                  begin
                    FldName:= cdsGridData.Fields[k].FieldName;
                    FldName:= StringReplace(FldName, '_MED_', '_MEDIATOR_', []);
                    FldName:= StringReplace(FldName, 'INHRT_', '', []);

                    cdsGridData.Fields[k].AsVariant:=
                      cdsCommonParRelPeriod.FieldByName(FldName).AsVariant;
                  end;
          end;
      end;
    end;
end;

procedure TfmParRel.cdsGridDataBEGIN_DATEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:= dmMain.GetDateIntervalAsShortString(
    cdsGridDataBEGIN_DATE.AsDateTime, cdsGridDataEND_DATE.AsDateTime);
end;

procedure TfmParRel.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  if cdsGridDataOVERRIDE_STORE.AsBoolean then
    cdsGridData_SHOW_STORE_IDENTIFIER.Assign(cdsGridDataSTORE_IDENTIFIER)
  else
    cdsGridData_SHOW_STORE_IDENTIFIER.Assign(cdsGridDataINHRT_STORE_IDENTIFIER);

  if cdsGridDataOVERRIDE_TRANSPORT_DUR_DAYS.AsBoolean then
    cdsGridData_SHOW_TRANSPORT_DURATION_DAYS.Assign(cdsGridDataTRANSPORT_DURATION_DAYS)
  else
    cdsGridData_SHOW_TRANSPORT_DURATION_DAYS.Assign(cdsGridDataINHRT_TRANSPORT_DURATION_DAYS);

  if cdsGridDataOVERRIDE_MEDIATOR_COMPANY.AsBoolean then
    cdsGridData_SHOW_MED_COMPANY_SHORT_NAME.Assign(cdsGridDataMEDIATOR_COMPANY_SHORT_NAME)
  else
    cdsGridData_SHOW_MED_COMPANY_SHORT_NAME.Assign(cdsGridDataINHRT_MED_COMPANY_SHORT_NAME);

  if cdsGridDataOVERRIDE_FIN_PARTNER.AsBoolean then
    cdsGridData_SHOW_FIN_PARTNER_SHORT_NAME.Assign(cdsGridDataFIN_PARTNER_SHORT_NAME)
  else
    cdsGridData_SHOW_FIN_PARTNER_SHORT_NAME.Assign(cdsGridDataINHRT_FIN_PARTNER_SHORT_NAME);

  if cdsGridDataOVERRIDE_CURRENCY.AsBoolean then
    cdsGridData_SHOW_CURRENCY_ABBREV.Assign(cdsGridData_CURRENCY_ABBREV)
  else
    cdsGridData_SHOW_CURRENCY_ABBREV.Assign(cdsGridData_INHRT_CURRENCY_ABBREV);

  if cdsGridDataOVERRIDE_SHIPMENT_TYPE.AsBoolean then
    cdsGridData_SHOW_SHIPMENT_TYPE_ABBREV.Assign(cdsGridData_SHIPMENT_TYPE_ABBREV)
  else
    cdsGridData_SHOW_SHIPMENT_TYPE_ABBREV.Assign(cdsGridData_INHRT_SHIPMENT_TYPE_ABBREV);

  if cdsGridDataOVERRIDE_IS_PARTNER_TRANSPORT.AsBoolean then
    cdsGridData_SHOW_IS_PARTNER_TRANSPORT.Assign(cdsGridDataIS_PARTNER_TRANSPORT)
  else
    cdsGridData_SHOW_IS_PARTNER_TRANSPORT.Assign(cdsGridDataINHRT_IS_PARTNER_TRANSPORT);

  if cdsGridDataOVERRIDE_CUSTOMHOUSE.AsBoolean then
    cdsGridData_HAS_CUSTOMHOUSE.AsBoolean:=
      not cdsGridDataCUSTOMHOUSE_CODE.IsNull
  else
    cdsGridData_HAS_CUSTOMHOUSE.AsBoolean:=
      not cdsGridDataINHRT_CUSTOMHOUSE_CODE.IsNull;

  cdsGridData_RIGHT_ARROW.AsString:= '®';
end;

procedure TfmParRel.cdsGridDataFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:=
    (cdsGridDataIS_PAST.AsBoolean and actPastPeriods.Checked) or
    (cdsGridDataIS_PRESENT.AsBoolean and actPresentPeriods.Checked) or
    (cdsGridDataIS_FUTURE.AsBoolean and actFuturePeriods.Checked);
end;

procedure TfmParRel.cdsGridDataFIN_PARTNER_CODEChange(Sender: TField);
var
  ShortName: string;
  Dummy: string;
  DummyBool: Boolean;
  DummyInt: Integer;
begin
  inherited;

  if Sender.IsNull then
    cdsGridDataFIN_PARTNER_SHORT_NAME.Clear
  else
    begin
      dmMain.SvrCompanies.GetCompanyInfo(Sender.AsInteger,
        Dummy, Dummy, Dummy, Dummy, Dummy, Dummy, Dummy, ShortName, Dummy, Dummy, DummyBool, Dummy, Dummy, Dummy, Dummy, DummyInt, DummyBool, Dummy, Dummy, Dummy, Dummy, Dummy, Dummy, Dummy, Dummy);
      cdsGridDataFIN_PARTNER_SHORT_NAME.AsString:= ShortName;
    end;
end;

procedure TfmParRel.cdsGridDataMEDIATOR_COMPANY_CODEChange(
  Sender: TField);
var
  ShortName: string;
  Dummy: string;
  DummyBool: Boolean;
  DummyInt: Integer;
begin
  inherited;

  if Sender.IsNull then
    cdsGridDataMEDIATOR_COMPANY_SHORT_NAME.Clear
  else
    begin
      dmMain.SvrCompanies.GetCompanyInfo(Sender.AsInteger,
        Dummy, Dummy, Dummy, Dummy, Dummy, Dummy, Dummy, ShortName, Dummy, Dummy, DummyBool, Dummy, Dummy, Dummy, Dummy, DummyInt, DummyBool, Dummy, Dummy, Dummy, Dummy, Dummy, Dummy, Dummy, Dummy);
      cdsGridDataMEDIATOR_COMPANY_SHORT_NAME.AsString:= ShortName;
    end;
end;

procedure TfmParRel.cdsGridDataNewRecord(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;

  cdsGridDataPAR_REL_PERIOD_CODE.AsInteger:= FMaxParRelPeriodCode + 1;
  cdsGridDataCOMPANY_CLASS_CODE.AsInteger:= cdsDataCOMPANY_CLASS_CODE.AsInteger;

  if not VarIsEmpty(FCreateLikeFieldValues) then
    begin
      SetRecordData(cdsGridData, FCreateLikeFieldValues, False);

      dmDocClient.CreateDocLike(
        cdsGridDataDOC_BRANCH_CODE.AsInteger, cdsGridDataDOC_CODE.AsInteger, True,
        cdsGridDataDOC_BRANCH_CODE, cdsGridDataDOC_CODE);
    end
  else
    begin
      for i:= 0 to cdsGridData.FieldCount - 1 do
        if StartsStr('OVERRIDE_', cdsGridData.Fields[i].FieldName) then
          cdsGridData.Fields[i].AsBoolean:= False;
    end;
end;

procedure TfmParRel.cdsGridDataSTORE_CODEChange(Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(Sender, nil, cdsGridDataSTORE_IDENTIFIER);
end;

procedure TfmParRel.cdsPartnerAccountsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsPartnerAccounts.Params.ParamByName('COMPANY_CODE').AsInteger:=
    cdsData.Params.ParamByName('PARTNER_CODE').AsInteger
end;

procedure TfmParRel.cdsPartnerAccountsFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;

  Accept:=
    (IntToBankAccountType(cdsPartnerAccountsBANK_ACCOUNT_TYPE_CODE.AsInteger) <> batDefinedBanking) or
    (cdsPartnerAccountsCURRENCY_PRODUCT_CODE.AsInteger = cdsPartnerAccounts.Tag);
end;

procedure TfmParRel.cdsPartnerOfficesBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsPartnerOffices.Params.ParamByName('COMPANY_CODE').AsInteger:=
    cdsData.Params.ParamByName('PARTNER_CODE').AsInteger;
end;

procedure TfmParRel.cdsShipmentTypesCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsShipmentTypes_SHOW_NAME.AsString:=
    StrPadRight(cdsShipmentTypesSHIPMENT_TYPE_ABBREV.AsString, 20) +
    cdsShipmentTypesNOTES.AsString;
end;

procedure TfmParRel.cdsSpecFinModelLinesABS_MOVEMENT_OFFSET_DAYSChange(
  Sender: TField);
begin
  inherited;

  if FSettingMovementDateOffset then
    Exit;

  FSettingMovementDateOffset:= True;
  try
    if (cdsSpecFinModelLinesABS_MOVEMENT_OFFSET_DAYS.AsInteger = 0) then
      begin
        cdsSpecFinModelLinesMOVEMENT_OFFSET_DAYS.AsInteger:= 0;
        cdsSpecFinModelLinesMOVEMENT_OFFSET_DAYS_SIGN.AsInteger:= 0;
      end
    else
      cdsSpecFinModelLinesMOVEMENT_OFFSET_DAYS.AsInteger:=
        cdsSpecFinModelLinesMOVEMENT_OFFSET_DAYS_SIGN.AsInteger *
        cdsSpecFinModelLinesABS_MOVEMENT_OFFSET_DAYS.AsInteger;
  finally
    FSettingMovementDateOffset:= False;
  end;
end;

procedure TfmParRel.cdsSpecFinModelLinesAfterDelete(DataSet: TDataSet);
begin
  inherited;
  SetSpecFinModelTotals;
end;

procedure TfmParRel.cdsSpecFinModelLinesAfterPost(DataSet: TDataSet);
begin
  inherited;
  SetSpecFinModelTotals;
end;

procedure TfmParRel.cdsSpecFinModelLinesBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not cdsSpecFinModelLines.ControlsDisabled then
    CalcMaxFinModelLineNos;
end;

procedure TfmParRel.cdsSpecFinModelLinesBeforePost(DataSet: TDataSet);
var
  FinModelLineType: TFinModelLineType;
begin
  inherited;

  CheckRequiredFields(DataSet,
    '_FIN_MODEL_LINE_TYPE_NAME; LINE_QUANTITY_PERCENT; ABS_MOVEMENT_OFFSET_DAYS');

  if (cdsSpecFinModelLinesABS_MOVEMENT_OFFSET_DAYS.AsInteger > 0) and
     (cdsSpecFinModelLinesMOVEMENT_OFFSET_DAYS_SIGN.AsInteger = 0) then
    begin
      cdsSpecFinModelLines_MOVEMENT_OFFSET_DAYS_SIGN_NAME.FocusControl;
      raise Exception.Create(SMovementDateOffsetSignRequired);
    end;

  CheckRequiredFields(DataSet,
    'FIN_STORE_CODE; MOVEMENT_DURATION_DAYS; _PARTNER_ACCOUNT_FULL_NAME');

  FinModelLineType:= IntToFinModelLineType(cdsSpecFinModelLinesFIN_MODEL_LINE_TYPE_CODE.AsInteger);

  if (FinModelLineType = fmltSecondary) then
    CheckRequiredField(cdsSpecFinModelLines_FIN_MODEL_LINE_REASON_NAME)
  else
    cdsSpecFinModelLinesFIN_MODEL_LINE_REASON_CODE.Clear;

  cdsSpecFinModelLinesIS_PRIMARY_FIN_MODEL_LINE_TYPE.AsBoolean:= (FinModelLineType = fmltPrimary);

  if (FinModelLineType = fmltPrimary) then
    cdsSpecFinModelLinesPRIMARY_LINE_QTY_PERCENT.Assign(cdsSpecFinModelLinesLINE_QUANTITY_PERCENT)
  else
    cdsSpecFinModelLinesPRIMARY_LINE_QTY_PERCENT.Clear;

  if (FinModelLineType = fmltSecondary) then
    cdsSpecFinModelLinesSECONDARY_LINE_QTY_PERCENT.Assign(cdsSpecFinModelLinesLINE_QUANTITY_PERCENT)
  else
    cdsSpecFinModelLinesSECONDARY_LINE_QTY_PERCENT.Clear;

  cdsSpecFinModelLinesSPEC_FIN_MODEL_CODE.Assign(cdsSpecFinModelsSPEC_FIN_MODEL_CODE);
  cdsSpecFinModelLinesPARTNER_CODE.Assign(cdsSpecFinModelsPARTNER_CODE);
end;

procedure TfmParRel.cdsSpecFinModelLinesCalcFields(DataSet: TDataSet);
begin
  inherited;

  if cdsSpecFinModelLines_FIN_MODEL_LINE_TYPE_ABBREV.IsNull or
     cdsSpecFinModelLinesFIN_MODEL_LINE_NO.IsNull then
    cdsSpecFinModelLines_SHOW_NO.Clear
  else
    cdsSpecFinModelLines_SHOW_NO.AsString:=
      Format('%s.%d', [
        cdsSpecFinModelLines_FIN_MODEL_LINE_TYPE_ABBREV.AsString,
        cdsSpecFinModelLinesFIN_MODEL_LINE_NO.AsInteger
      ]);

  cdsSpecFinModelLines_ARROW.AsBoolean:= (FBorderRelType = brtVendor);
end;

procedure TfmParRel.cdsSpecFinModelLinesFIN_MODEL_LINE_TYPE_CODEChange(
  Sender: TField);
begin
  inherited;
  if (cdsSpecFinModelLines.State = dsInsert) then
    cdsSpecFinModelLinesFIN_MODEL_LINE_NO.AsInteger:=
      GetMaxFinModelLineNo(Sender.AsInteger) + 1;
end;

procedure TfmParRel.cdsSpecFinModelLinesFIN_STORE_CODEChange(Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(Sender, nil, cdsSpecFinModelLinesFIN_STORE_IDENTIFIER);
end;

procedure TfmParRel.cdsSpecFinModelLinesFIN_STORE_IDENTIFIERGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  FinStoreFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRel.cdsSpecFinModelLinesLINE_QUANTITY_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRel.cdsSpecFinModelLinesLINE_QUANTITY_PERCENTSetText(
  Sender: TField; const Text: string);
begin
  inherited;
  PercentFieldSetText(Sender, Text);
end;

procedure TfmParRel.cdsSpecFinModelLinesMOVEMENT_OFFSET_DAYSChange(
  Sender: TField);
begin
  inherited;

  if FSettingMovementDateOffset then
    Exit;

  FSettingMovementDateOffset:= True;
  try
    cdsSpecFinModelLinesABS_MOVEMENT_OFFSET_DAYS.AsInteger:=
      Abs(cdsSpecFinModelLinesMOVEMENT_OFFSET_DAYS.AsInteger);
    cdsSpecFinModelLinesMOVEMENT_OFFSET_DAYS_SIGN.AsInteger:=
      Sign(cdsSpecFinModelLinesMOVEMENT_OFFSET_DAYS.AsInteger);
  finally
    FSettingMovementDateOffset:= False;
  end;
end;

procedure TfmParRel.cdsSpecFinModelLinesMOVEMENT_OFFSET_DAYS_SIGNChange(
  Sender: TField);
begin
  inherited;

  if FSettingMovementDateOffset then
    Exit;

  FSettingMovementDateOffset:= True;
  try
    if (cdsSpecFinModelLinesMOVEMENT_OFFSET_DAYS_SIGN.AsInteger = 0) then
      begin
        cdsSpecFinModelLinesMOVEMENT_OFFSET_DAYS.AsInteger:= 0;
        cdsSpecFinModelLinesABS_MOVEMENT_OFFSET_DAYS.AsInteger:= 0;
      end
    else
      cdsSpecFinModelLinesMOVEMENT_OFFSET_DAYS.AsInteger:=
        cdsSpecFinModelLinesMOVEMENT_OFFSET_DAYS_SIGN.AsInteger *
        cdsSpecFinModelLinesABS_MOVEMENT_OFFSET_DAYS.AsInteger;
  finally
    FSettingMovementDateOffset:= False;
  end;
end;

procedure TfmParRel.cdsSpecFinModelLinesNewRecord(DataSet: TDataSet);
var
  CreateLikeFieldValues: Variant;
begin
  inherited;

  cdsSpecFinModelLinesSPEC_FIN_MODEL_LINE_CODE.AsInteger:=
    VarToInt(cdsSpecFinModelLines_MAX_SPEC_FIN_MODEL_LINE_CODE.AsVariant) + 1;
  cdsSpecFinModelLinesSPEC_FIN_MODEL_CODE.Assign(cdsSpecFinModelsSPEC_FIN_MODEL_CODE);
  cdsSpecFinModelLinesPARTNER_CODE.Assign(cdsSpecFinModelsPARTNER_CODE);

  cdsSpecFinModelLinesMOVEMENT_OFFSET_DAYS_SIGN.AsInteger:= 0;

  if (cdsSpecFinModelLines.Tag <> 0) then
    begin
      CreateLikeFieldValues:= PVariant(cdsSpecFinModelLines.Tag)^;
      if not VarIsEmpty(CreateLikeFieldValues) then
        SetRecordData(DataSet, CreateLikeFieldValues, False);
    end;
end;

procedure TfmParRel.cdsSpecFinModelsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  SetAuthorizedSpecFinModelCount;
end;

procedure TfmParRel.cdsSpecFinModelsAfterPost(DataSet: TDataSet);
begin
  inherited;
  SetAuthorizedSpecFinModelCount;
end;

procedure TfmParRel.cdsSpecFinModelsAUTHORIZE_EMPLOYEE_CODEChange(
  Sender: TField);
var
  NowDateTime: TDateTime;
begin
  inherited;

  if Sender.IsNull then
    begin
      cdsSpecFinModelsAUTHORIZE_DATE.Clear;
      cdsSpecFinModelsAUTHORIZE_TIME.Clear;
    end
  else
    begin
      NowDateTime:= ContextNow;
      cdsSpecFinModelsAUTHORIZE_DATE.AsDateTime:= DateOf(NowDateTime);
      cdsSpecFinModelsAUTHORIZE_TIME.AsDateTime:= TimeOf(NowDateTime);
    end;                                   
end;

procedure TfmParRel.cdsSpecFinModelsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  while not cdsSpecFinModelLines.IsEmpty do
    cdsSpecFinModelLines.Delete;
end;

procedure TfmParRel.cdsSpecFinModelsBeforePost(DataSet: TDataSet);
begin
  inherited;

  CheckRequiredFields(DataSet,
    'FINANCIAL_PRODUCT_CODE; SPEC_FIN_MODEL_NAME; _FM_MOVEMENT_OFFSET_TYPE_NAME');

  cdsSpecFinModelsPARTNER_CODE.Assign(cdsGridDataPARTNER_CODE);
  cdsSpecFinModelsBORDER_REL_TYPE_CODE.Assign(cdsGridDataBORDER_REL_TYPE_CODE);
  cdsSpecFinModelsPAR_REL_PERIOD_CODE.Assign(cdsGridDataPAR_REL_PERIOD_CODE);
end;

procedure TfmParRel.cdsSpecFinModelsCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsSpecFinModels_IS_AUTHORIZED.AsBoolean:=
    not cdsSpecFinModelsAUTHORIZE_EMPLOYEE_CODE.IsNull;
  cdsSpecFinModels_SHOW_NAME.AsString:=
    Format('%s - %s', [
      cdsSpecFinModelsFINANCIAL_PRODUCT_NAME.DisplayText,
      cdsSpecFinModelsSPEC_FIN_MODEL_NAME.DisplayText
    ]);
end;

procedure TfmParRel.cdsSpecFinModelsEXEC_DEPT_CODEChange(Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(cdsSpecFinModelsEXEC_DEPT_CODE, nil, cdsSpecFinModelsEXEC_DEPT_IDENTIFIER);
end;

procedure TfmParRel.cdsSpecFinModelsFINANCIAL_PRODUCT_CODEChange(
  Sender: TField);
begin
  inherited;
  DoProductFieldChanged(Sender,
    cdsSpecFinModelsFINANCIAL_PRODUCT_NAME, cdsSpecFinModelsFINANCIAL_PRODUCT_NO);
end;

procedure TfmParRel.cdsSpecFinModelsNewRecord(DataSet: TDataSet);
begin
  inherited;

  cdsSpecFinModelsSPEC_FIN_MODEL_CODE.AsInteger:= NewSpecFinModelCode;

  cdsSpecFinModelsPARTNER_CODE.Assign(cdsGridDataPARTNER_CODE);
  cdsSpecFinModelsBORDER_REL_TYPE_CODE.Assign(cdsGridDataBORDER_REL_TYPE_CODE);
  cdsSpecFinModelsPAR_REL_PERIOD_CODE.Assign(cdsGridDataPAR_REL_PERIOD_CODE);
  cdsSpecFinModelsIS_EST_MODEL.AsBoolean:= False;
end;

procedure TfmParRel.cdsSpecFinModelsSECONDARY_LINE_QTY_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmParRel.OpenDataSets;
begin
  cdsDateOffsetSigns.CreateDataSet;
  cdsDateOffsetSigns.AppendRecord([-1, SBefore]);
  cdsDateOffsetSigns.AppendRecord([0]);
  cdsDateOffsetSigns.AppendRecord([1, SAfter]);

  cdsPartnerAccounts.Open;
  cdsPartnerOffices.Open;
  cdsCurrencies.Open;
  cdsShipmentTypes.Open;
  cdsCustomhouses.Open;
  cdsFinModelLineTypes.Open;
  cdsFinModelLineReasons.Open;
  cdsFMMovementOffsetTypes.Open;
  inherited;
end;

procedure TfmParRel.RefilterPeriods;
var
  ParRelPeriodCode: Integer;
begin
  with cdsGridData do
    begin
      DisableControls;
      try
        ParRelPeriodCode:= cdsGridDataPAR_REL_PERIOD_CODE.AsInteger;

        Filtered:= False;
        Filtered:= True;

        Locate('PAR_REL_PERIOD_CODE', ParRelPeriodCode, []);
      finally
        EnableControls;
      end;  { try }
    end;  { with }
end;

procedure TfmParRel.ClearMaxFinModelLineNos;
begin
  FMaxFinModelLineNos.Clear;
end;

procedure TfmParRel.CloseDataSets;
begin
  inherited;
  cdsFMMovementOffsetTypes.Close;
  cdsFinModelLineReasons.Close;
  cdsFinModelLineTypes.Close;
  cdsCustomhouses.Close;
  cdsShipmentTypes.Close;
  cdsCurrencies.Close;
  cdsPartnerOffices.Close;
  cdsPartnerAccounts.Close;
  cdsDateOffsetSigns.Close;
end;

procedure TfmParRel.FormCreate(Sender: TObject);
begin
  inherited;

  EditFormClass:= TfmParRelPeriod;

  FMaxFinModelLineNos:= TStringList.Create;

  RegisterDateFields(cdsGridData);
end;

procedure TfmParRel.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FMaxFinModelLineNos);
end;

function TfmParRel.GetGridRecordReadOnly: Boolean;
begin
  Result:=
    inherited GetGridRecordReadOnly or
    ( (cdsGridDataBEGIN_DATE.AsDateTime <= ContextDate) and
      (not LoginContext.HasUserActivity(uaPastOrCurrentParRelPeriodEdit)) );
end;

function TfmParRel.GetMaxFinModelLineNo(AModelLineTypeCode: Integer): Integer;
begin
  Result:= StrToIntDef(FMaxFinModelLineNos.Values[IntToStr(AModelLineTypeCode)], 0);
end;

function TfmParRel.GetOriginalFormCaption: string;
begin
  Result:= lblFormCaption.Caption;
end;

procedure TfmParRel.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  AFrame.ReadOnly:= True;
end;

procedure TfmParRel.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; APartnerCode: Integer;
  ABorderRelType: TBorderRelType; AFocusDate: TDateTime);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);

  if not Assigned(ADataSet) then
    begin
      cdsData.Params.ParamByName('PARTNER_CODE').AsInteger:= APartnerCode;
      cdsData.Params.ParamByName('BORDER_REL_TYPE_CODE').AsInteger:= BorderRelTypeToInt(ABorderRelType);
    end;

  FFocusDate:= AFocusDate;
end;

function TfmParRel.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  Result:=
    TfmParRelPeriod.ShowForm(dmDocClient, dsGridData.DataSet, AEditMode, doNone, True,
      cdsSpecFinModels, cdsSpecFinModelLines, cdsGridDataqryPRPerPriceModifiers);
end;

class function TfmParRel.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; APartnerCode: Integer;
  ABorderRelType: TBorderRelType; AFocusDate: TDateTime): Boolean;
var
  f: TfmParRel;
begin
  dmMain.LoginContext.CheckUserActivity(uaParRel);

  if not dmMain.LoginContext.HasUserActivity(uaParRelEdit) then
    AEditMode:= emReadOnly;

  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled,
      APartnerCode, ABorderRelType, AFocusDate);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmParRel.Initialize;
var
  b: TBookmark;
begin
  inherited;

  Assert(EditMode <> emInsert);

  FBorderRelType:= IntToBorderRelType(cdsDataBORDER_REL_TYPE_CODE.AsInteger);
  Assert(FBorderRelType <> brtNone);

  FMsgParams:= CreateCommonMsgParams(FBorderRelType);
  RecursivelyFormatCaptions(Self, FMsgParams);

  case FBorderRelType of
    brtClient: frPartner.PriorityCompanyKind:= ckClient;
    brtVendor: frPartner.PriorityCompanyKind:= ckVendor;
  end;
  frPartner.FieldNames:= 'PARTNER_CODE';
  frPartner.PartnerStatusVisible:= True;

  if (FBorderRelType = brtVendor) then
    begin
      grdData.Columns[2].Index:= 5;
      grdData.Columns[4].Index:= 2;
    end;

  LocateDateInterval(ContextDate, cdsGridData);

  FMaxSpecFinModelCode:= cdsDataMAX_SPEC_FIN_MODEL_CODE.AsInteger;

  if (FFocusDate > 0) then
    cdsGridData.TempDisableControls /
      procedure begin
        b:= cdsGridData.Bookmark;
        try
          cdsGridData.TempUnfilter /
            cdsGridData.ForEach /
              procedure begin
                if InRange(FFocusDate, cdsGridDataBEGIN_DATE.AsDateTime, cdsGridDataEND_DATE.AsDateTime) then
                  begin
                    b:= cdsGridData.Bookmark;

                    if cdsGridDataIS_PAST.AsBoolean then
                      actPastPeriods.Checked:= True;
                  end;
              end;
        finally
          cdsGridData.Bookmark:= b;
        end;
      end;
end;

procedure TfmParRel.navDataBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;

  if (Button = nbDelete) and cdsGridData.Active and (cdsGridData.RecordCount > 0) then
    begin
      if (cdsGridDataBEGIN_DATE.AsDateTime <= ContextDate) and
         (not LoginContext.HasUserActivity(uaPastOrCurrentParRelPeriodEdit)) then
        raise Exception.CreateFmt(SNoUserActivityForPastOrCurrentParRelPeriod, [uaPastOrCurrentParRelPeriodEdit]);
    end;
end;

function TfmParRel.NewSpecFinModelCode: Integer;
begin
  Inc(FMaxSpecFinModelCode);
  Result:= FMaxSpecFinModelCode;
end;

procedure TfmParRel.Finalize;
begin
  inherited;
  FreeAndNil(FMsgParams);
end;

procedure TfmParRel.SetAuthorizedSpecFinModelCount;
begin
  CheckEditMode(cdsGridData);
  cdsGridDataAUTHORIZED_SPEC_FIN_MODEL_CNT.AsInteger:= 
    VarToInt(cdsSpecFinModels_AUTHORIZED_COUNT.AsVariant);
end;

procedure TfmParRel.SetSpecFinModelTotals;
begin
  CheckEditMode(cdsSpecFinModels);

  cdsSpecFinModelsPRIMARY_FIN_MODEL_LINE_COUNT.AsInteger:=
    VarToInt(cdsSpecFinModelLines_PRIMARY_FIN_MODEL_LINE_COUNT.AsVariant);
  cdsSpecFinModelsSECONDARY_LINE_QTY_PERCENT.AsFloat:=
    VarToFloat(cdsSpecFinModelLines_SUM_SECONDARY_LINE_QTY_PERCENT.AsVariant);

  cdsSpecFinModels.Post;
end;

end.
