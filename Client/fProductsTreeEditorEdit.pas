unit fProductsTreeEditorEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fTreeNomWithParamsEditForm, ImgList, ParamDataSet, ActnList, Db,
  DBClient, StdCtrls, Mask, DBCtrls, GridsEh, Buttons, ExtCtrls, ColorNavigator,
  fTreeNomWithParamsAndPrefixAndSuffixEditForm, JvDBLookup, AbmesClientDataSet,
  DBGridEh, AbmesDBGrid, AbmesFields, AbmesDBCheckBox, Menus, JvButtons,
  ComCtrls, ToolWin, JvDBCombobox, fProductLocations, uClientTypes, dDocClient,
  fProductMinQuantities, JvExStdCtrls, JvExControls, JvComponent,
  JvCaptionButton, JvComponentBase, uProducts, fBaseFrame, fDBFrame,
  fFieldEditFrame, fTreeNodeFieldEditFrame, fProductFieldEditFrame, JvCombobox, DBGridEhGrouping,
  System.Actions, ToolCtrlsEh, DBGridEhToolCtrls, fProductDeptOptions;

type
  TfmProductsTreeEditorEdit = class(TTreeNomWithParamsAndPrefixAndSuffixEditForm)
    cdsMeasures: TAbmesClientDataSet;
    dsMeasures: TDataSource;
    cdsMeasuresMEASURE_CODE: TAbmesFloatField;
    cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField;
    chbInactive: TAbmesDBCheckBox;
    tcMain: TTabControl;
    pnlProductLocations: TPanel;
    pnlProductMinQuantities: TPanel;
    actCommonGroups: TAction;
    pnlProcessPositions: TPanel;
    bvlHorizontalLine1: TBevel;
    bvlHorizontalLine2: TBevel;
    bvlVerticalLine: TBevel;
    lblUsed: TLabel;
    lblUsedPriority: TLabel;
    lblProvidedPriority: TLabel;
    lblProvided: TLabel;
    chbIsUsedBySales: TAbmesDBCheckBox;
    chbIsUsedBySaleProduction: TAbmesDBCheckBox;
    chbIsUsedByEnvProduction: TAbmesDBCheckBox;
    chbIsProvidedByDeliveries: TAbmesDBCheckBox;
    chbIsProvidedBySaleProduction: TAbmesDBCheckBox;
    chbIsProvidedByEnvProduction: TAbmesDBCheckBox;
    cdsPriorities: TAbmesClientDataSet;
    cdsPrioritiesPRIORITY_CODE: TAbmesFloatField;
    cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField;
    dsPriorities: TDataSource;
    cbUsedBySalesPriority: TJvDBLookupCombo;
    cbUsedBySaleProductionPriority: TJvDBLookupCombo;
    cbUsedByEnvProductionPriority: TJvDBLookupCombo;
    cbProvidedByDeliveriesPriority: TJvDBLookupCombo;
    cbProvidedBySaleProductionPriority: TJvDBLookupCombo;
    cbProvidedByEnvProductionPriority: TJvDBLookupCombo;
    gbProductOrigin: TGroupBox;
    cbProductOrigin: TJvDBLookupCombo;
    gbCommonStatus: TGroupBox;
    pnlCommonStatus: TPanel;
    rgCommonStatus: TDBRadioGroup;
    edtCommonProductLevels: TDBEdit;
    chbIsThorughlyEngineered: TAbmesDBCheckBox;
    gbExisting: TGroupBox;
    lblWorkdays: TLabel;
    cbTransientStatus: TJvDBLookupCombo;
    edtWorkdaysToExist: TDBEdit;
    gbMeasures: TGroupBox;
    lblMeasure: TLabel;
    lblAccountMeasure: TLabel;
    lblTechMeasure: TLabel;
    lblOne: TLabel;
    lblEqualTo: TLabel;
    bvlMeasures: TBevel;
    lblTransportMeasure: TLabel;
    cbMeasure: TJvDBLookupCombo;
    edtAccountMeasureCoef: TDBEdit;
    cbAccountMeasure: TJvDBLookupCombo;
    cbTechMeasure: TJvDBLookupCombo;
    edtTechMeasureCoef: TDBEdit;
    edtTransportMeasureCoef: TDBEdit;
    cbTransportMeasure: TJvDBLookupCombo;
    tlbDocs: TToolBar;
    btnDocs: TToolButton;
    cdsProductOrigins: TAbmesClientDataSet;
    dsProductOrigins: TDataSource;
    cdsProductOriginsPRODUCT_ORIGIN_CODE: TAbmesFloatField;
    cdsProductOriginsPRODUCT_ORIGIN_NAME: TAbmesWideStringField;
    cdsProductOriginsPRODUCT_ORIGIN_ABBREV: TAbmesWideStringField;
    cdsCommonProductInfo: TAbmesClientDataSet;
    cdsCommonProductInfoCOMMON_PRODUCTS_LEVEL_NO: TAbmesFloatField;
    cdsCommonProductInfoCOMMON_PRODUCTS_SUB_LEVELS: TAbmesFloatField;
    cdsCommonProductInfo_COMMON_PRODUCTS_LEVELS_SHOW: TAbmesWideStringField;
    dsCommonProductInfo: TDataSource;
    cdsPrioritiesPRIORITY_NO: TAbmesFloatField;
    cdsPrioritiesPRIORITY_COLOR: TAbmesFloatField;
    cdsPrioritiesPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    actProductPeriods: TAction;
    btnProductPeriods: TBitBtn;
    cdsProductOrigins_SHOW_NAME: TAbmesWideStringField;
    pnlNotesAndIsVatFree: TPanel;
    pnlNotes: TPanel;
    pnlIsVatFree: TPanel;
    chbIsVatFree: TAbmesDBCheckBox;
    lblNotes: TLabel;
    edtNotes: TDBEdit;
    cdsGridDataPRODUCT_CLASS_CODE: TAbmesFloatField;
    cdsBOIOrderTypes: TAbmesClientDataSet;
    dsBOIOrderTypes: TDataSource;
    cdsBOIOrderTypesBOI_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsBOIOrderTypesBOI_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    cdsBOIOrderTypesBOI_ORDER_TYPE_NAME: TAbmesWideStringField;
    pnlBudget: TPanel;
    GroupBox1: TGroupBox;
    cbBOIOrderType: TJvDBLookupCombo;
    frBndNormalGroupProduct: TfrProductFieldEditFrame;
    cdsNomsNOM_NO: TAbmesFloatField;
    cdsGridDataNOM_NO: TAbmesFloatField;
    gbSelfExistentStatus: TGroupBox;
    lblSelfExistentStatus: TLabel;
    cbSelfExistentStatus: TJvDBComboBox;
    gbProductSpecRequirement: TGroupBox;
    cbProductSpecRequirement: TJvDBLookupCombo;
    cdsProductSpecRequirements: TAbmesClientDataSet;
    cdsProductSpecRequirementsPRODUCT_SPEC_REQUIREMENT_CODE: TAbmesFloatField;
    cdsProductSpecRequirementsPRODUCT_SPEC_REQUIREMENT_NAME: TAbmesWideStringField;
    dsProductSpecRequirements: TDataSource;
    cbIsStrategic: TJvDBComboBox;
    gbIsProductionProduct: TGroupBox;
    cbIsProductionProduct: TJvDBComboBox;
    bvlCommonStatus: TBevel;
    btnCommonGroups: TButton;
    cdsNomsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsNomsDOC_CODE: TAbmesFloatField;
    cdsNomsHAS_DOC_ITEMS: TAbmesFloatField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataHAS_DOC_ITEMS: TAbmesFloatField;
    actShowNotDefined: TAction;
    sepShowNotDefined: TToolButton;
    tlbShowNotDefined: TToolBar;
    btnShowNotDefined: TSpeedButton;
    cdsGridData_NOT_DEFINED_COUNT: TAggregateField;
    pnlProductDeptOptions: TPanel;
    procedure actProductPeriodsExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure grdDataGetBtnParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; var SortMarker: TSortMarkerEh;
      IsDown: Boolean);
    procedure grdDataTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure tcMainChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnDocsClick(Sender: TObject);
    procedure actCommonGroupsExecute(Sender: TObject);
    procedure cdsCommonProductInfoCalcFields(DataSet: TDataSet);
    procedure actProductPeriodsUpdate(Sender: TObject);
    procedure cdsProductOriginsCalcFields(DataSet: TDataSet);
    procedure cdsMeasuresBeforeOpen(DataSet: TDataSet);
    procedure cdsNomsBeforeOpen(DataSet: TDataSet);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure cdsGridDataNOM_NOChange(Sender: TField);
    procedure cdsGridDataNOM_CODEChange(Sender: TField);
    procedure FormResize(Sender: TObject);
    procedure actShowNotDefinedExecute(Sender: TObject);
    procedure actShowNotDefinedUpdate(Sender: TObject);
    procedure cdsGridDataAfterPost(DataSet: TDataSet);
    procedure cdsGridDataAfterDelete(DataSet: TDataSet);
  private
    FfmProductLocations: TfmProductLocations;
    FfmProductMinQuantities: TfmProductMinQuantities;
    FfmProductDeptOptions: TfmProductDeptOptions;
    FProductProcessPositionsAndMinQuantitiesPageVisible: Boolean;
    FProductDeptOptionsPageVisible: Boolean;
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    FHasProductsEditUserActivity: Boolean;
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
    FSettingNom: Boolean;
    FDefaultShowNotDefinedParams: Boolean;
    FNotDefinedParamCount: Integer;
    procedure dmDocClientOnDataChanged(Sender: TObject);
    procedure UpdateNotDefinedParamCount;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure DoApplyUpdates; override;
    function GetInsertRecordEnabled: Boolean; override;
    function GetDelRecordEnabled: Boolean; override;
    function GetGridRecordReadOnly: Boolean; override;
    function GetOriginalFormCaption: string; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      ACreateLikeNodeID: Integer = 0;
      AProductClass: TProductClass = pcNormal;
      ADefaultShowNotDefinedParams: Boolean = False); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      ACreateLikeNodeID: Integer = 0;
      AParamsClientDataSetPointer: PPointer = nil;
      AProductLocationsClientDataSetPointer: PPointer = nil;
      AProductMinQuantitiesClientDataSetPointer: PPointer = nil;
      AProductDeptOptionsClientDataSetPointer: PPointer = nil;
      AProductClass: TProductClass = pcNormal;
      ADefaultShowNotDefinedParams: Boolean = False): Boolean;
    procedure Initialize; override;
    procedure Finalize; override;
  end;

type
  TfmProductsTreeEditorEditClass = class of TfmProductsTreeEditorEdit;

implementation

uses
  dMain, uUtils, uTreeNodes, fGridForm, fBaseForm, AbmesDialogs,
  uClientUtils, uDocUtils, fCommonGroups, uUserActivityConsts, fProductPeriods,
  uProductClientUtils, fParamEdit, fTreeSelectForm, uBOIOrderTypes,
  uComboBoxUtils;

{$R *.DFM}

resourcestring
  SCheckDocumentation = 'Новият Управляем Обект има ИИО-та, които трябва да проверите!';
  SProductMinQuantitiesPageTitle = 'Задели';
  SProductDeptOptionsPageTitle = 'ТП Контекст';

{ TfmProductsTreeEditorEdit }

procedure TfmProductsTreeEditorEdit.OpenDataSets;
begin
  cdsMeasures.Open;
  cdsPriorities.Open;
  cdsProductOrigins.Open;
  cdsBOIOrderTypes.Open;
  cdsProductSpecRequirements.Open;

  if (EditMode <> emInsert) then
    begin
      SetParams(cdsCommonProductInfo.Params, dsData.DataSet);
      cdsCommonProductInfo.Open;
    end;

  inherited;
end;

procedure TfmProductsTreeEditorEdit.CloseDataSets;
begin
  inherited;
  cdsCommonProductInfo.Close;
  cdsProductSpecRequirements.Close;
  cdsBOIOrderTypes.Close;
  cdsProductOrigins.Close;
  cdsPriorities.Close;
  cdsMeasures.Close;
end;

procedure TfmProductsTreeEditorEdit.actFormUpdate(Sender: TObject);
var
  IsGroup: Boolean;
begin
  inherited;
  with dsData.DataSet do
    if Active then
      begin
        edtNodeNo.ReadOnly:= not FHasProductsEditUserActivity;
        edtNotes.ReadOnly:= not FHasProductsEditUserActivity;
        edtPrefix.ReadOnly:= not FHasProductsEditUserActivity;
        edtSuffix.ReadOnly:= not FHasProductsEditUserActivity;
        cbProductOrigin.Enabled:= FHasProductsEditUserActivity;
        chbIsVatFree.Enabled:= FHasProductsEditUserActivity;

        chbIsUsedBySaleProduction.Visible:= (FProductClass = pcNormal);
        chbIsUsedByEnvProduction.Visible:= (FProductClass = pcNormal);
        chbIsProvidedBySaleProduction.Visible:= (FProductClass = pcNormal);
        chbIsProvidedByEnvProduction.Visible:= (FProductClass = pcNormal);

        cbUsedBySaleProductionPriority.Visible:= (FProductClass = pcNormal);
        cbUsedByEnvProductionPriority.Visible:= (FProductClass = pcNormal);
        cbProvidedBySaleProductionPriority.Visible:= (FProductClass = pcNormal);
        cbProvidedByEnvProductionPriority.Visible:= (FProductClass = pcNormal);

        chbIsUsedBySales.Enabled:= FHasProductsEditUserActivity;
        chbIsUsedBySaleProduction.Enabled:= FHasProductsEditUserActivity;
        chbIsUsedByEnvProduction.Enabled:= FHasProductsEditUserActivity;
        chbIsProvidedByDeliveries.Enabled:= FHasProductsEditUserActivity;
        chbIsProvidedBySaleProduction.Enabled:= FHasProductsEditUserActivity;
        chbIsProvidedByEnvProduction.Enabled:= FHasProductsEditUserActivity;

        chbInactive.Enabled:=
          FHasProductsEditUserActivity and
          (not FieldByName('HAS_JOINED_PRODUCT').AsBoolean);

        cbMeasure.ReadOnly:=
          (not FHasProductsEditUserActivity) or
          (not FieldByName('PARENT_MEASURE_CODE').IsNull);
        cbAccountMeasure.ReadOnly:=
          (FProductClass = pcFinancial) or
          (not FHasProductsEditUserActivity) or
          (not FieldByName('PARENT_ACCOUNT_MEASURE_CODE').IsNull);
        cbTechMeasure.ReadOnly:=
          (FProductClass = pcFinancial) or
          (not FHasProductsEditUserActivity) or
          (not FieldByName('PARENT_TECH_MEASURE_CODE').IsNull);
        cbTransportMeasure.ReadOnly:=
          (FProductClass = pcFinancial) or
          (not FHasProductsEditUserActivity) or
          (not FieldByName('PARENT_TRANSPORT_MEASURE_CODE').IsNull);
        edtAccountMeasureCoef.ReadOnly:=
          (FProductClass = pcFinancial) or
          (not FHasProductsEditUserActivity) or
          (not FieldByName('PARENT_ACCOUNT_MEASURE_COEF').IsNull);
        edtTechMeasureCoef.ReadOnly:=
          (FProductClass = pcFinancial) or
          (not FHasProductsEditUserActivity) or
          (not FieldByName('PARENT_TECH_MEASURE_COEF').IsNull);
        edtTransportMeasureCoef.ReadOnly:=
          (FProductClass = pcFinancial) or
          (not FHasProductsEditUserActivity) or
          (not FieldByName('PARENT_TRANSPORT_MEASURE_COEF').IsNull);

        cbAccountMeasure.Color:= ReadOnlyColors[(FProductClass = pcFinancial)];
        cbTechMeasure.Color:= ReadOnlyColors[(FProductClass = pcFinancial)];
        cbTransportMeasure.Color:= ReadOnlyColors[(FProductClass = pcFinancial)];
        edtAccountMeasureCoef.Color:= ReadOnlyColors[(FProductClass = pcFinancial)];
        edtTechMeasureCoef.Color:= ReadOnlyColors[(FProductClass = pcFinancial)];
        edtTransportMeasureCoef.Color:= ReadOnlyColors[(FProductClass = pcFinancial)];

        cbSelfExistentStatus.Enabled:=
          (FProductClass = pcNormal) and
          FHasProductsEditUserActivity and
          FieldByName('PAR_SELF_EXISTENT_STATUS_CODE').IsNull and
          CanModify;

        cbTransientStatus.Enabled:=
          (FProductClass = pcNormal) and
          FHasProductsEditUserActivity and
          FieldByName('PAR_TRANSIENT_STATUS_CODE').IsNull;
        edtWorkdaysToExist.Enabled:=
          (FProductClass = pcNormal) and
          FHasProductsEditUserActivity and
          FieldByName('PARENT_WORKDAYS_TO_EXIST').IsNull;
        edtWorkdaysToExist.ReadOnly:=
          FHasProductsEditUserActivity and
          (FieldByName('TRANSIENT_STATUS_CODE').AsInteger <> tsTransient);
        edtWorkdaysToExist.Color:= ReadOnlyColors[edtWorkdaysToExist.ReadOnly];

        rgCommonStatus.Buttons[0].Enabled:=
          FHasProductsEditUserActivity and
          (not FieldByName('IS_JOINED_PRODUCT').AsBoolean) and
          (not FieldByName('HAS_JOINED_PRODUCT').AsBoolean);
        rgCommonStatus.Buttons[1].Enabled:=
          FHasProductsEditUserActivity and
          not FieldByName('IS_JOINED_PRODUCT').AsBoolean;
        rgCommonStatus.Buttons[2].Enabled:=
          FHasProductsEditUserActivity and
          FieldByName('IS_JOINED_PRODUCT').AsBoolean;

        ReplacedDBComboBox(cbIsStrategic).Enabled:=
          FHasProductsEditUserActivity and
          rgCommonStatus.Buttons[1].Checked;

        chbIsThorughlyEngineered.Enabled:=
          FHasProductsEditUserActivity and
          rgCommonStatus.Buttons[2].Checked;

        IsGroup:= (FieldByName('NODE_TYPE').AsInteger <> Ord(ntInstance));

        pnlIsVatFree.Visible:=
          False and  // skrivame go voveki
          (not IsGroup) and (FProductClass = pcNormal);
        gbExisting.Visible:=
          (FProductClass in [pcNormal, pcFinancial]);
        gbMeasures.Visible:=
          (FProductClass in [pcNormal, pcFinancial]);
        gbCommonStatus.Visible:=
          (not IsGroup) and (FProductClass in [pcNormal, pcFinancial]);
        gbIsProductionProduct.Visible:=
          (not IsGroup) and (FProductClass in [pcNormal]);
        gbProductOrigin.Visible:=
          (not IsGroup) and (FProductClass in [pcNormal, pcFinancial]);
        gbSelfExistentStatus.Visible:=
          False and  // skrivame go
          (FProductClass in [pcNormal, pcFinancial]);
        gbProductSpecRequirement.Visible:=
          (FProductClass = pcNormal);

        cbUsedBySalesPriority.Enabled:=
          FHasProductsEditUserActivity and
          FieldByName('IS_USED_BY_SALES').AsBoolean;
        cbUsedBySaleProductionPriority.Enabled:=
          FHasProductsEditUserActivity and
          FieldByName('IS_USED_BY_SALE_PRODUCTION').AsBoolean;
        cbUsedByEnvProductionPriority.Enabled:=
          FHasProductsEditUserActivity and
          FieldByName('IS_USED_BY_ENV_PRODUCTION').AsBoolean;
        cbProvidedByDeliveriesPriority.Enabled:=
          FHasProductsEditUserActivity and
          FieldByName('IS_PROVIDED_BY_DELIVERIES').AsBoolean;
        cbProvidedBySaleProductionPriority.Enabled:=
          FHasProductsEditUserActivity and
          FieldByName('IS_PROVIDED_BY_SALE_PRODUCTION').AsBoolean;
        cbProvidedByEnvProductionPriority.Enabled:=
          FHasProductsEditUserActivity and
          FieldByName('IS_PROVIDED_BY_ENV_PRODUCTION').AsBoolean;

        cbProductSpecRequirement.Enabled:=
          FieldByName('PARENT_PRODUCT_SPEC_REQ_CODE').IsNull;

        pnlBudget.Visible:= (FProductClass = pcBudget);
        cbBOIOrderType.Enabled:= not IsGroup;
      end;   { with }

  with dsData.DataSet.FieldByName('HAS_DOCUMENTATION') do
    btnDocs.ImageIndex:= Ord(DataSet.Active and AsBoolean);

  btnDocs.Enabled:= (CreateLikeNodeID = 0);
end;

procedure TfmProductsTreeEditorEdit.actProductPeriodsExecute(
  Sender: TObject);
var
  em: TEditMode;
begin
  inherited;

  LoginContext.CheckUserActivity(uaProductPeriods);

  actApplyUpdates.Execute;

  if (EditMode = emReadOnly) then
    em:= emReadOnly
  else
    em:= emEdit;

  TfmProductPeriods.ShowForm(nil, dsData.DataSet, em);
end;

procedure TfmProductsTreeEditorEdit.actProductPeriodsUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Visible:=
    (FProductClass in [pcNormal, pcFinancial]) and
    dsData.DataSet.Active and
    (dsData.DataSet.FieldByName('NODE_TYPE').AsInteger = Ord(ntInstance));
end;

procedure TfmProductsTreeEditorEdit.actShowNotDefinedExecute(Sender: TObject);
begin
  inherited;

  with Sender as TAction do
    begin
      Checked:= not Checked;
      btnShowNotDefined.Down:= Checked;
      cdsGridData.Filtered:= not Checked;
    end;
end;

procedure TfmProductsTreeEditorEdit.actShowNotDefinedUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Caption:= IntToStr(FNotDefinedParamCount);
end;

procedure TfmProductsTreeEditorEdit.grdDataGetBtnParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  var SortMarker: TSortMarkerEh; IsDown: Boolean);
begin
// do nothing
end;

procedure TfmProductsTreeEditorEdit.grdDataTitleBtnClick(Sender: TObject;
  ACol: Integer; Column: TColumnEh);
begin
// do nothing
end;

procedure TfmProductsTreeEditorEdit.DoApplyUpdates;
var
  b: TBookmark;
begin
  with dsData.DataSet do
    begin
      if (FieldByName('NODE_TYPE').AsInteger = Ord(ntInstance)) then
        begin
          if (FProductClass = pcNormal) then
            CheckRequiredField(FieldByName('PRODUCT_SPEC_REQUIREMENT_CODE'));

          CheckRequiredFields(dsData.DataSet,
//            'SELF_EXISTENT_STATUS_CODE; ' +
            'MEASURE_CODE; '+
            'ACCOUNT_MEASURE_CODE; ACCOUNT_MEASURE_COEF; ' +
            'TECH_MEASURE_CODE; TECH_MEASURE_COEF; ' +
            'TRANSPORT_MEASURE_CODE; TRANSPORT_MEASURE_COEF'
          );
        end;

        if not FieldByName('ACCOUNT_MEASURE_COEF').IsNull then
          CheckRequiredFields(dsData.DataSet, 'MEASURE_CODE; ACCOUNT_MEASURE_CODE');

        if not FieldByName('TECH_MEASURE_COEF').IsNull then
          CheckRequiredFields(dsData.DataSet, 'MEASURE_CODE; TECH_MEASURE_CODE');

        if not FieldByName('TRANSPORT_MEASURE_COEF').IsNull then
          CheckRequiredFields(dsData.DataSet, 'MEASURE_CODE; TRANSPORT_MEASURE_CODE');
    end;   { with }

  if (FProductClass in [pcNormal, pcFinancial]) then
    begin
      FfmProductLocations.cdsGridData.SetOptionalParam('NEW_NODE', (EditMode = emInsert), True);

      if FProductProcessPositionsAndMinQuantitiesPageVisible then
        FfmProductMinQuantities.cdsGridData.SetOptionalParam('NEW_NODE', (EditMode = emInsert), True);

      if FProductDeptOptionsPageVisible then
        FfmProductDeptOptions.cdsGridData.SetOptionalParam('NEW_NODE', (EditMode = emInsert), True);

      if (EditMode = emInsert) then
        begin
          with FfmProductLocations.cdsGridData do
            begin
              DisableControls;
              try
                b:= Bookmark;
                try
                  First;
                  while not Eof do
                    begin
                      Edit;
                      try
                        FfmProductLocations.cdsGridDataPRODUCT_CODE.AsInteger:= -1;
                      except
                        Cancel;
                        raise;
                      end;   { try }

                      Next;
                    end;   { while }
                finally
                  Bookmark:= b;
                end;   { try }
              finally
                EnableControls;
              end;   { try }
            end;   { with }

          if FProductProcessPositionsAndMinQuantitiesPageVisible then
            with FfmProductMinQuantities.cdsGridData do
              begin
                DisableControls;
                try
                  b:= Bookmark;
                  try
                    First;
                    while not Eof do
                      begin
                        Edit;
                        try
                          FfmProductMinQuantities.cdsGridDataPRODUCT_CODE.AsInteger:= -1;
                        except
                          Cancel;
                          raise;
                        end;   { try }

                        Next;
                      end;   { while }
                  finally
                    Bookmark:= b;
                  end;   { try }
                finally
                  EnableControls;
                end;   { try }
              end;   { with }

          if FProductDeptOptionsPageVisible then
            with FfmProductDeptOptions.cdsGridData do
              begin
                DisableControls;
                try
                  b:= Bookmark;
                  try
                    First;
                    while not Eof do
                      begin
                        Edit;
                        try
                          FfmProductDeptOptions.cdsGridDataPRODUCT_CODE.AsInteger:= -1;
                        except
                          Cancel;
                          raise;
                        end;   { try }

                        Next;
                      end;   { while }
                  finally
                    Bookmark:= b;
                  end;   { try }
                finally
                  EnableControls;
                end;   { try }
              end;   { with }
        end;   { if }
    end;

  try
    inherited;
  finally
    FChanged:= True;
  end;   { try }

  if (CreateLikeNodeID > 0) and
     (dmDocClient.DSDocItemsCount(dsData.DataSet) > 0) then
    MessageDlgEx(SCheckDocumentation, mtWarning, [mbOK], 0);
end;

procedure TfmProductsTreeEditorEdit.tcMainChange(Sender: TObject);
begin
  inherited;
  pnlGrid.Visible:=
    (tcMain.TabIndex = 0);
  pnlProcessPositions.Visible:=
    FProductProcessPositionsAndMinQuantitiesPageVisible and (tcMain.TabIndex = 1);
  pnlProductLocations.Visible:=
    (tcMain.TabIndex = tcMain.Tabs.Count - 1 - Ord(FProductDeptOptionsPageVisible));
  pnlProductMinQuantities.Visible:=
    FProductProcessPositionsAndMinQuantitiesPageVisible and (tcMain.TabIndex = 2);
  pnlProductDeptOptions.Visible:=
    FProductDeptOptionsPageVisible and (tcMain.TabIndex = tcMain.Tabs.Count - 1);
end;

procedure TfmProductsTreeEditorEdit.UpdateNotDefinedParamCount;
begin
  cdsGridData.TempDisableControls/
    cdsGridData.PreserveRecNo/
      cdsGridData.TempUnfilter/
        procedure begin
          FNotDefinedParamCount:= cdsGridData_NOT_DEFINED_COUNT.AsVarInteger;
        end;
end;

procedure TfmProductsTreeEditorEdit.FormCreate(Sender: TObject);
begin
  FHasProductsEditUserActivity:= LoginContext.HasUserActivity(uaProductsEdit);

  inherited;

  FfmProductLocations:= TfmProductLocations.CreateDockedTo(pnlProductlocations);
  FfmProductLocations.Align:= alClient;
  FfmProductLocations.ChangeProc:= DetailsChanged;
  FfmProductLocations.cdsGridData.ReadOnly:= not FHasProductsEditUserActivity;

  FfmProductMinQuantities:= TfmProductMinQuantities.CreateDockedTo(pnlProductMinQuantities);
  FfmProductMinQuantities.Align:= alClient;
  FfmProductMinQuantities.ChangeProc:= DetailsChanged;
  FfmProductMinQuantities.cdsGridData.ReadOnly:= not FHasProductsEditUserActivity;

  FfmProductDeptOptions:= TfmProductDeptOptions.CreateDockedTo(pnlProductDeptOptions);
  FfmProductDeptOptions.Align:= alClient;
  FfmProductDeptOptions.ChangeProc:= DetailsChanged;
  FfmProductDeptOptions.cdsGridData.ReadOnly:= not FHasProductsEditUserActivity;

  tcMain.TabIndex:= 0;

  if IsAppThemed then
    begin
      pnlMain.ParentBackground:= False;
      pnlMain.Color:= clWhite;

      FfmProductLocations.Color:= clWhite;
      FfmProductMinQuantities.Color:= clWhite;
      FfmProductDeptOptions.Color:= clWhite;
    end;
end;

procedure TfmProductsTreeEditorEdit.FormResize(Sender: TObject);
begin
  inherited;
  pnlGrid.Height:= pnlMain.Height;
  pnlProcessPositions.Height:= pnlMain.Height;
  pnlProductLocations.Height:= pnlMain.Height;
  pnlProductMinQuantities.Height:= pnlMain.Height;
  pnlProductDeptOptions.Height:= pnlMain.Height;
end;

function TfmProductsTreeEditorEdit.GetDelRecordEnabled: Boolean;
begin
  Result:=
    inherited GetDelRecordEnabled and
    FHasProductsEditUserActivity;
end;

function TfmProductsTreeEditorEdit.GetGridRecordReadOnly: Boolean;
begin
  Result:=
    inherited GetGridRecordReadOnly or
    not FHasProductsEditUserActivity;
end;

function TfmProductsTreeEditorEdit.GetInsertRecordEnabled: Boolean;
begin
  Result:=
    inherited GetInsertRecordEnabled and
    FHasProductsEditUserActivity;
end;

function TfmProductsTreeEditorEdit.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmProductsTreeEditorEdit.SetDataParams(
  AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; ACreateLikeNodeID: Integer;
  AProductClass: TProductClass;
  ADefaultShowNotDefinedParams: Boolean);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode,
    ADefaultsOrigin, ACreateLikeNodeID);
  FProductClass:= AProductClass;
  FDefaultShowNotDefinedParams:= ADefaultShowNotDefinedParams;
end;

procedure TfmProductsTreeEditorEdit.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frBndNormalGroupProduct) then
   begin
     AFrame.ReadOnly:=
       (EditMode = emReadOnly) or
       (dsData.DataSet.FieldByName('BOI_ORDER_TYPE_CODE').AsInteger <> boiotProduct);
     Exit;
   end;

  inherited;
end;

function TfmProductsTreeEditorEdit.ShowEditForm(
  AEditMode: TEditMode): Boolean;
begin
  Result:= TfmParamEdit.ShowForm(dmDocClient, dsGridData.DataSet, AEditMode, doNone, FProductClass);
end;

class function TfmProductsTreeEditorEdit.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  ACreateLikeNodeID: Integer; AParamsClientDataSetPointer,
  AProductLocationsClientDataSetPointer,
  AProductMinQuantitiesClientDataSetPointer,
  AProductDeptOptionsClientDataSetPointer: PPointer;
  AProductClass: TProductClass;
  ADefaultShowNotDefinedParams: Boolean): Boolean;
var
  f: TfmProductsTreeEditorEdit;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin,
      ACreateLikeNodeID, AProductClass, ADefaultShowNotDefinedParams);
    AParamsClientDataSetPointer^:= f.cdsGridData;
    try
      AProductLocationsClientDataSetPointer^:= f.FfmProductLocations.cdsGridData;
      AProductMinQuantitiesClientDataSetPointer^:= f.FfmProductMinQuantities.cdsGridData;
      AProductDeptOptionsClientDataSetPointer^:= f.FfmProductDeptOptions.cdsGridData;
      try
        f.InternalShowForm;
      finally
        AProductLocationsClientDataSetPointer^:= nil;
        AProductMinQuantitiesClientDataSetPointer^:= nil;
        AProductDeptOptionsClientDataSetPointer^:= nil;
      end;   { try }
    finally
      AParamsClientDataSetPointer^:= nil;
    end;   { try }
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmProductsTreeEditorEdit.Initialize;
var
  NodeId: Integer;
  MsgParams: TStrings;
begin
  if (EditMode = emInsert) then
    NodeId:= CreateLikeNodeID
  else
    NodeId:= dsData.DataSet.FieldByName('NODE_ID').AsInteger;

  FfmProductLocations.cdsGridData.Params.ParamByName('PRODUCT_CODE').AsInteger:= NodeId;

  if (CreateLikeNodeID = 0) then
    FfmProductMinQuantities.cdsGridData.Params.ParamByName('PRODUCT_CODE').AsInteger:= NodeId;
  FfmProductMinQuantities.OuterdmDocClient:= dmDocClient;
  FfmProductMinQuantities.CreateLike:= (CreateLikeNodeID > 0);

  FfmProductDeptOptions.cdsGridData.Params.ParamByName('PRODUCT_CODE').AsInteger:= NodeId;

  frBndNormalGroupProduct.FieldNames:= 'BND_NORMAL_GROUP_PRODUCT_CODE';

  inherited;

  FProductProcessPositionsAndMinQuantitiesPageVisible:=
    (dsData.DataSet.FieldByName('NODE_TYPE').AsInteger = Ord(ntInstance));
  FfmProductMinQuantities.dsData.DataSet:= dsData.DataSet;

  FProductDeptOptionsPageVisible:= True;

  pnlProductLocations.Visible:= True;
  pnlProductLocations.Visible:= False;

  if (FProductClass = pcBudget) then
    begin
      tcMain.Tabs.Delete(2);
      tcMain.Tabs.Delete(1);
    end
  else
    begin
      if FProductProcessPositionsAndMinQuantitiesPageVisible then
        begin
          tcMain.Tabs.Insert(2, SProductMinQuantitiesPageTitle);
          pnlProductMinQuantities.Visible:= True;
          pnlProductMinQuantities.Visible:= False;
        end
      else
        tcMain.Tabs.Delete(1);

      if FProductDeptOptionsPageVisible then
        begin
          tcMain.Tabs.Add(SProductDeptOptionsPageTitle);
          pnlProductDeptOptions.Visible:= True;
          pnlProductDeptOptions.Visible:= False;
        end;
    end;

  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  FfmProductLocations.SetDataParams(dmDocClient, nil, EditMode);
  FfmProductMinQuantities.SetDataParams(dmDocClient, nil, EditMode);
  FfmProductDeptOptions.SetDataParams(dmDocClient, nil, EditMode);

  edtCommonProductLevels.Visible:=
    (dsData.DataSet.FieldByName('COMMON_STATUS_CODE').AsInteger <> cscSingle);

  MsgParams:=
    CreateCommonMsgParams(
      LoginContext,
      FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;

  UpdateNotDefinedParamCount;
  if FDefaultShowNotDefinedParams then
    actShowNotDefined.Execute;
end;

procedure TfmProductsTreeEditorEdit.Finalize;
begin
  inherited;
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
end;

procedure TfmProductsTreeEditorEdit.dmDocClientOnDataChanged(
  Sender: TObject);
begin
  with dsData, DataSet do
    if dmDocClient.DSIsCurrent(DataSet) then
      begin
        CheckEditMode(DataSet);

        FieldByName('DOC_EMPTINESS_REQUIREMENT_CODE').AsVariant:=
          dmDocClient.cdsDocsDOC_EMPTINESS_REQUIREMENT_CODE.AsVariant;
        FieldByName('DOC_IS_COMPLETE').AsVariant:=
          dmDocClient.cdsDocsIS_COMPLETE.AsVariant;
        FieldByName('ACTIVE_DI_COUNT').AsInteger:=
          dmDocClient.DSDocItemCount(DataSet, True);
        FieldByName('UNAUTHORIZED_ACTIVE_DI_COUNT').AsInteger:=
          FieldByName('ACTIVE_DI_COUNT').AsInteger - dmDocClient.DSAuthorizedDocItemCount(DataSet, True);
        FieldByName('UNAPPROVED_ACTIVE_DI_COUNT').AsInteger:=
          FieldByName('ACTIVE_DI_COUNT').AsInteger - dmDocClient.DSApprovedDocItemCount(DataSet, True);

        FieldByName('HAS_DOCUMENTATION').AsBoolean:=
          (FieldByName('ACTIVE_DI_COUNT').AsInteger > 0);
      end;
end;

procedure TfmProductsTreeEditorEdit.btnDocsClick(Sender: TObject);
var
  em: TEditMode;
begin
  inherited;

  if FHasProductsEditUserActivity then
    em:= EditMode
  else
    em:= emReadOnly;

  dmDocClient.DSOpenDoc(em, btnDocs, dotProduct, dsData.DataSet);
end;

procedure TfmProductsTreeEditorEdit.actCommonGroupsExecute(
  Sender: TObject);
begin
  inherited;

  TfmCommonGroups.ShowForm(
    nil,
    dsData.DataSet.FieldByName('PARENT_NODE_ID').AsInteger,
    dsData.DataSet.FieldByName('PRODUCT_CODE').AsInteger
  );
end;

procedure TfmProductsTreeEditorEdit.cdsCommonProductInfoCalcFields(
  DataSet: TDataSet);
begin
  inherited;

  if cdsCommonProductInfoCOMMON_PRODUCTS_LEVEL_NO.IsNull or
     (dsData.DataSet.FieldByName('COMMON_STATUS_CODE').AsInteger = cscSingle) then
    cdsCommonProductInfo_COMMON_PRODUCTS_LEVELS_SHOW.Clear
  else
    cdsCommonProductInfo_COMMON_PRODUCTS_LEVELS_SHOW.AsString:=
      Format('%d;%d', [
        cdsCommonProductInfoCOMMON_PRODUCTS_LEVEL_NO.AsInteger,
        cdsCommonProductInfoCOMMON_PRODUCTS_SUB_LEVELS.AsInteger
      ]);
end;

procedure TfmProductsTreeEditorEdit.cdsGridDataAfterDelete(DataSet: TDataSet);
begin
  inherited;
  UpdateNotDefinedParamCount;
end;

procedure TfmProductsTreeEditorEdit.cdsGridDataAfterPost(DataSet: TDataSet);
begin
  inherited;
  UpdateNotDefinedParamCount;
end;

procedure TfmProductsTreeEditorEdit.cdsGridDataNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  cdsGridDataPRODUCT_CLASS_CODE.AsInteger:= ProductClassToInt(FProductClass);
end;

procedure TfmProductsTreeEditorEdit.cdsGridDataNOM_CODEChange(Sender: TField);
begin
  inherited;

  if FSettingNom then
    Exit;

  FSettingNom:= True;
  try
    cdsGridDataNOM_NO.AsVariant:=
      cdsNoms.Lookup('NOM_CODE', Sender.AsInteger, 'NOM_NO');
  finally
    FSettingNom:= False;
  end;
end;

procedure TfmProductsTreeEditorEdit.cdsGridDataNOM_NOChange(Sender: TField);
begin
  inherited;

  if FSettingNom then
    Exit;

  FSettingNom:= True;
  try
    cdsGridDataNOM_CODE.AsVariant:=
      cdsNoms.Lookup('NOM_NO', Sender.AsInteger, 'NOM_CODE');

    if cdsGridDataNOM_CODE.IsNull then
      Sender.Clear;
  finally
    FSettingNom:= False;
  end;
end;

procedure TfmProductsTreeEditorEdit.cdsMeasuresBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsMeasures.Params.ParamByName('PRODUCT_CLASS_CODE').AsInteger:=
    ProductClassToInt(FProductClass);
end;

procedure TfmProductsTreeEditorEdit.cdsNomsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsNoms.Params.ParamByName('PRODUCT_CLASS_CODE').AsInteger:=
    ProductClassToInt(FProductClass);
end;

procedure TfmProductsTreeEditorEdit.cdsProductOriginsCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  cdsProductOrigins_SHOW_NAME.AsString:=
    cdsProductOriginsPRODUCT_ORIGIN_ABBREV.AsString + ' - ' +
    cdsProductOriginsPRODUCT_ORIGIN_NAME.AsString;
end;

end.


