unit fSMVSOperationEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, Menus, DBClient, AbmesClientDataSet,
  JvButtons, ImgList, ActnList, StdCtrls, Buttons, ExtCtrls, JvDBLookup,
  Mask, DBCtrls, fBaseFrame, fDBFrame, fFieldEditFrame,
  dDocClient, uClientTypes, AbmesDBCheckBox, ToolWin, ComCtrls, AbmesFields,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, fDeptFieldEditFrameBald,
  fProductFieldEditFrame, fProductFieldEditFrameBald, fSpecAndXModelUnapproveAbstract,
  JvExControls, JvComponent, JvCaptionButton, JvComponentBase, JvExMask,
  JvToolEdit, JvDBControls, fEnumFieldEditFrame, fProfessionFieldEditFrame,
  fProfessionFieldEditFrameBald, fTreeOnlyNodeFieldEditFrame, System.Actions;

type
  TfmSMVSOperationEdit = class(TBevelEditForm)
    gbOperationData: TGroupBox;
    txtCaption1: TStaticText;
    txtCaption2: TStaticText;
    edtShowNo: TDBMemo;
    edtHasDocumentation: TDBMemo;
    txtCaption3: TStaticText;
    edtOperationSetupName: TEdit;
    edtOperationName: TEdit;
    txtCaption4: TStaticText;
    edtSetupDeptName: TDBEdit;
    txtCaption5: TStaticText;
    txtCaption6: TStaticText;
    edtSetupEffortCoef: TDBEdit;
    edtEffortCoef: TDBEdit;
    txtCaption7: TStaticText;
    edtSetupHourPrice: TDBEdit;
    edtHourPrice: TDBEdit;
    txtCaption8: TStaticText;
    edtSetupHourTechQuantity: TDBEdit;
    edtHourTechQuantity: TDBEdit;
    lblCaption: TLabel;
    lblCaption2: TLabel;
    txtCaption9: TStaticText;
    Panel1: TPanel;
    pnlProgramToolRequirement: TPanel;
    pnlSpecificToolRequirement: TPanel;
    pnlTypicalToolRequirement: TPanel;
    gbToolProducts: TGroupBox;
    lblProgramTool: TLabel;
    lblSpecificTool: TLabel;
    lblTypicalTool: TLabel;
    gbNotes: TGroupBox;
    moNotes: TDBMemo;
    txtProgramToolRequirement: TDBText;
    txtSpecificToolRequirement: TDBText;
    txtTypicalToolRequirement: TDBText;
    dsLines: TDataSource;
    dsStages: TDataSource;
    txtDetailTechMeasureAbbrev2: TDBText;
    gbDetail: TGroupBox;
    txtDetailTechMeasureAbbrev: TDBText;
    txtProductTechMeasureAbbrev: TDBText;
    lblDetailTreeNodeName: TLabel;
    lblDetailTechQuantity: TLabel;
    lblProductTreeNodeName: TLabel;
    lblProductTechQuantity: TLabel;
    edtDetailTechQuantity: TDBEdit;
    edtProductTechQuantity: TDBEdit;
    gbStage: TGroupBox;
    gbDept: TGroupBox;
    lblStageNo: TLabel;
    lblStageDeptTreeNodeName: TLabel;
    edtStageNo: TDBEdit;
    ToolBar1: TToolBar;
    btnStageDocs: TSpeedButton;
    gbWorkdaysFor: TGroupBox;
    lblTreatmentWorkdays: TLabel;
    lblOutgoingWorkdays: TLabel;
    edtTreatmentWorkdays: TDBEdit;
    edtOutgoingWorkdays: TDBEdit;
    edtSpecificToolDetailTechQuantity: TDBEdit;
    edtTypicalToolDetailTechQuantity: TDBEdit;
    gbWorkdays: TGroupBox;
    edtTreatmentBeginWorkdayNo: TDBEdit;
    lblTreatmentBeginWorkdayNo: TLabel;
    lblOperationTreatmentWorkdays: TLabel;
    edtOperationTreatmentWorkdays: TDBEdit;
    pnlDocs: TToolBar;
    btnDocs: TSpeedButton;
    lblDay: TLabel;
    lblDays: TLabel;
    pblSpecialControl: TGroupBox;
    chbSpecialControl: TAbmesDBCheckBox;
    txtCaption10: TStaticText;
    edtHasSpecialControl: TDBMemo;
    actDeptDetailFlow: TAction;
    btnDeptDetailFlow: TBitBtn;
    cdsDeptDetailFlowParams: TAbmesClientDataSet;
    cdsDeptDetailFlowParamsFLOW_LEVEL: TAbmesFloatField;
    cdsDeptDetailFlowParamsFLOW_TYPE: TAbmesFloatField;
    cdsDeptDetailFlowParamsCHOSEN_DEPTS: TAbmesWideStringField;
    cdsDeptProfessions: TAbmesClientDataSet;
    cdsDeptProfessionsPROFESSION_CODE: TAbmesFloatField;
    cdsDeptProfessionsPROFESSION_NAME: TAbmesWideStringField;
    dsDeptProfessions: TDataSource;
    frOperationDept: TfrDeptFieldEditFrameBald;
    frStageDept: TfrDeptFieldEditFrameBald;
    frDetail: TfrProductFieldEditFrameBald;
    frProduct: TfrProductFieldEditFrameBald;
    frProgramToolProduct: TfrProductFieldEditFrameBald;
    frSpecificToolProduct: TfrProductFieldEditFrameBald;
    frTypicalToolProduct: TfrProductFieldEditFrameBald;
    edtProgramToolRequirement: TJvDBComboEdit;
    edtSpecificToolRequirement: TJvDBComboEdit;
    edtTypicalToolRequirement: TJvDBComboEdit;
    tmrRefreshRequirements: TTimer;
    actDeptSpecDocStatus: TAction;
    pnlDeptSpecDocStatus: TPanel;
    btnDeptSpecDocStatus: TSpeedButton;
    pnlDeptStructStatus: TPanel;
    cdsProductSpecStructStatus: TAbmesClientDataSet;
    cdsProductSpecStructStatusLEVEL_NO: TAbmesFloatField;
    cdsProductSpecStructStatusLEVEL_IS_COMPLETE: TAbmesFloatField;
    cdsProductSpecStructStatusMAX_LEVEL_NO: TAbmesFloatField;
    cdsProductSpecStructStatusHAS_MISSING_CHILDREN: TAbmesFloatField;
    cdsProductSpecStructStatus_DISPLAY_TEXT: TAbmesWideStringField;
    pnlProgramToolSpecDocStatus: TPanel;
    btnProgramToolSpecDocStatus: TSpeedButton;
    pnlProgramToolStructStatus: TPanel;
    pnlSpecificToolSpecDocStatus: TPanel;
    btnSpecificToolSpecDocStatus: TSpeedButton;
    pnlSpecificToolStructStatus: TPanel;
    pnlTypicalToolSpecDocStatus: TPanel;
    btnTypicalToolSpecDocStatus: TSpeedButton;
    pnlTypicalToolStructStatus: TPanel;
    actProgramToolSpecDocStatus: TAction;
    actSpecificToolSpecDocStatus: TAction;
    actTypicalToolSpecDocStatus: TAction;
    btnSetProgramToolComplete: TSpeedButton;
    btnSetSpecificToolComplete: TSpeedButton;
    btnSetTypicalToolComplete: TSpeedButton;
    actSetProgramToolComplete: TAction;
    actSetSpecificToolComplete: TAction;
    actSetTypicalToolComplete: TAction;
    gbSetupCount: TGroupBox;
    edtSetupCount: TDBEdit;
    cdsBaseGroupsParams: TAbmesClientDataSet;
    cdsBaseGroupsParamsGROUP_DEPT_CODE: TAbmesFloatField;
    actBaseGroups: TAction;
    btnBaseGroups: TBitBtn;
    cdsBaseGroupsParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    frSetupProfession: TfrProfessionFieldEditFrameBald;
    frProfession: TfrProfessionFieldEditFrameBald;
    StaticText1: TStaticText;
    chbIsAutoSetup: TAbmesDBCheckBox;
    chbIsAutoMovement: TAbmesDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure btnDocsClick(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure btnStageDocsClick(Sender: TObject);
    procedure actDeptDetailFlowUpdate(Sender: TObject);
    procedure actDeptDetailFlowExecute(Sender: TObject);
    procedure frOperationDeptactNodeChangedExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtToolRequirementButtonClick(Sender: TObject);
    procedure dsDataDataChange(Sender: TObject; Field: TField);
    procedure tmrRefreshRequirementsTimer(Sender: TObject);
    procedure actDeptSpecDocStatusUpdate(Sender: TObject);
    procedure actDeptSpecDocStatusExecute(Sender: TObject);
    procedure cdsProductSpecStructStatusCalcFields(DataSet: TDataSet);
    procedure actProgramToolSpecDocStatusUpdate(Sender: TObject);
    procedure actSpecificToolSpecDocStatusUpdate(Sender: TObject);
    procedure actTypicalToolSpecDocStatusUpdate(Sender: TObject);
    procedure actProgramToolSpecDocStatusExecute(Sender: TObject);
    procedure actSpecificToolSpecDocStatusExecute(Sender: TObject);
    procedure actTypicalToolSpecDocStatusExecute(Sender: TObject);
    procedure actSetProgramToolCompleteExecute(Sender: TObject);
    procedure actSetSpecificToolCompleteExecute(Sender: TObject);
    procedure actSetTypicalToolCompleteExecute(Sender: TObject);
    procedure actBaseGroupsExecute(Sender: TObject);
    procedure actSetProgramToolCompleteUpdate(Sender: TObject);
    procedure actSetSpecificToolCompleteUpdate(Sender: TObject);
    procedure actSetTypicalToolCompleteUpdate(Sender: TObject);
  private
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    FOlddmDocClientOnDocItemEdited: TDocItemEditedEvent;
    FMaxDetailTechQuantity: Real;
    FUnapproveFormClass: TfmSpecAndXModelUnapproveAbstractClass;
    FLineHasApprovedDocItems: Boolean;
    FPrefix: string;
    FModelIdentifier: string;
    FInitialized: Boolean;
    FOperationTypeCode: Integer;
    procedure dmDocClientOnDataChanged(Sender: TObject);
    procedure RefreshDeptProfessions;
    function ProductStructStatus(ProductCode: Integer): string;
    procedure SetProductStructStatus(AField: TField; APanel: TPanel);
    procedure SetToolComplete(AToolIsCompleteField: TField);
  protected
    FUnapproveInfo: TUnapproveInfo;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure dmDocClientOnDocItemEdited(DocItemUnapproved: Boolean);

    property Prefix: string read FPrefix write FPrefix;
    property UnapproveFormClass: TfmSpecAndXModelUnapproveAbstractClass read FUnapproveFormClass write FUnapproveFormClass;
  public
    class function ShowForm(AdmDocClient: TdmDocClient; ADataSet: TDataSet;
      AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
      ALinesDataSet: TDataSet; AStagesDataSet: TDataSet;
      AMaxDetailTechQuantity: Real; ALineHasApprovedDocItems: Boolean;
      AModelIdentifier: string; AOperationTypeCode: Integer;
      out AUnapproveInfo: TUnapproveInfo): Boolean;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      ALinesDataSet: TDataSet = nil; AStagesDataSet: TDataSet = nil;
      AMaxDetailTechQuantity: Real = 0;
      ALineHasApprovedDocItems: Boolean = False;
      AModelIdentifier: string = ''; AOperationTypeCode: Integer = 0); reintroduce; virtual;
    procedure Initialize; override;
    procedure Finalize; override;
  end;

resourcestring
  SNoBaseProductSpec = 'Не е зададен Типо-Представител или няма Принципен МОДЕл!';
  SNoBaseProductOperations = 'Няма операции в Принципния МОДЕл на Типо-Представителя!';
  SCantLoadBaseProductSelfOperations = 'Не можете да пренасяте операции от типопредставителя в типопредставителя';

implementation

uses
  fTreeSelectForm, uUtils, dMain, fDeptDetailFlow, uXMLUtils, Math,
  AbmesDialogs, uDocUtils, fSpecUnapprove, fToolRequirement, StrUtils,
  uToolRequirements, uClientUtils, fSpecDocStatus, uProducts, uDocClientUtils,
  fBaseGroups, uUserActivityConsts, uOperationTypes;

{$R *.dfm}

resourcestring
  SWorkdaysExceedCalculated = 'Зададените дни за изпълнение превишават с повече от %d%%' + SLineBreak +
                              'изчислените спрямо зададената производителност!' + SLineBreak +
                              'Желаете ли да продължите?';
  SConfirmToolIsComplete = 'Потвърдете крайна определеност';
  SMoreThanOneBaseProductOperations =
    'В П-МОДЕл-а на Типопредставителя на Базовата Група има повече от една операция за това ОпТП!';
  SConfirmOperationImport = 'Съществуващите данни ще бъдат изтрити.' + SLineBreak + 'Желате ли да продължите?';

procedure TfmSMVSOperationEdit.FormCreate(Sender: TObject);
begin
  inherited;

  frProgramToolProduct.FieldNames:= 'PROGRAM_TOOL_PRODUCT_CODE';
  frSpecificToolProduct.FieldNames:= 'SPECIFIC_TOOL_PRODUCT_CODE';
  frTypicalToolProduct.FieldNames:= 'TYPICAL_TOOL_PRODUCT_CODE';

  frProgramToolProduct.AllowColorOverride:= False;
  frSpecificToolProduct.AllowColorOverride:= False;
  frTypicalToolProduct.AllowColorOverride:= False;

  frOperationDept.TreeDetailSelection:= tdsInstance;
  frProgramToolProduct.TreeDetailSelection:= tdsInstance;
  frSpecificToolProduct.TreeDetailSelection:= tdsInstance;
  frTypicalToolProduct.TreeDetailSelection:= tdsInstance;

  frDetail.FieldNames:= 'DETAIL_CODE';
  frProduct.FieldNames:= 'PRODUCT_CODE';

  frSetupProfession.FieldNames:= 'SETUP_PROFESSION_CODE';
  frProfession.FieldNames:= 'PROFESSION_CODE';

  Prefix:= 'SMVS';

  UnapproveFormClass:= TfmSpecUnapprove;
end;

procedure TfmSMVSOperationEdit.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin;
  ALinesDataSet, AStagesDataSet: TDataSet;
  AMaxDetailTechQuantity: Real;
  ALineHasApprovedDocItems: Boolean;
  AModelIdentifier: string;
  AOperationTypeCode: Integer);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);

  frDetail.SetDataSet(ALinesDataSet);
  frProduct.SetDataSet(ALinesDataSet);
  frStageDept.SetDataSet(AStagesDataSet);

  dsLines.DataSet:= ALinesDataSet;
  dsStages.DataSet:= AStagesDataSet;
  FMaxDetailTechQuantity:= AMaxDetailTechQuantity;

  FLineHasApprovedDocItems:= ALineHasApprovedDocItems;

  FModelIdentifier:= AModelIdentifier;
  FOperationTypeCode:= AOperationTypeCode;
end;

procedure TfmSMVSOperationEdit.SetDBFrameReadOnly(AFrame: TDBFrame);
var
  RequirementFieldName: string;
begin
  if (AFrame = frDetail) or
     (AFrame = frProduct) or
     (AFrame = frStageDept) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;

  if (AFrame = frOperationDept) and
     (FOperationTypeCode <> otNormal) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;

  if (AFrame = frSetupProfession) or
     (AFrame = frProfession) then
    begin
      AFrame.ReadOnly:=
        (FOperationTypeCode <> otNormal) or
        (not dsData.DataSet.Active) or
        dsData.DataSet.FieldByName('DEPT_CODE').IsNull;;
      Exit;
    end;

  if ( (AFrame = frSpecificToolProduct) or
       (AFrame = frTypicalToolProduct) ) and
     (FOperationTypeCode <> otNormal) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;

  if (AFrame = frProgramToolProduct) or
     (AFrame = frSpecificToolProduct) or
     (AFrame = frTypicalToolProduct) then
    begin
      RequirementFieldName:=
        StringReplace((AFrame as TFieldEditFrame).FieldNames, 'PRODUCT', 'REQUIREMENT', []);
      AFrame.ReadOnly:=
        (IntToToolRequirement(dsData.DataSet.FieldByName(RequirementFieldName).AsInteger) <> trNotEmpty);
      Exit;
    end;

  inherited SetDBFrameReadOnly(AFrame);
end;

procedure TfmSMVSOperationEdit.SetProductStructStatus(AField: TField;
  APanel: TPanel);
begin
  APanel.Caption:= ProductStructStatus(AField.AsInteger);
end;

procedure TfmSMVSOperationEdit.SetToolComplete(
  AToolIsCompleteField: TField);
var
  mr: Integer;
begin
  Assert(Assigned(AToolIsCompleteField));

  mr:= MessageDlgEx(SConfirmToolIsComplete, mtConfirmation, mbYesNoCancel, 0);
  if (mr <> mrYes) and (mr <> mrNo) then
    Abort;

  CheckEditMode(dsData.DataSet);
  AToolIsCompleteField.AsBoolean:= (mr = mrYes);
end;

class function TfmSMVSOperationEdit.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin;
  ALinesDataSet, AStagesDataSet: TDataSet;
  AMaxDetailTechQuantity: Real;
  ALineHasApprovedDocItems: Boolean;
  AModelIdentifier: string;
  AOperationTypeCode: Integer;
  out AUnapproveInfo: TUnapproveInfo): Boolean;
var
  f: TfmSMVSOperationEdit;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin,
      ALinesDataSet, AStagesDataSet, AMaxDetailTechQuantity, ALineHasApprovedDocItems,
      AModelIdentifier, AOperationTypeCode);
    f.InternalShowForm;
    AUnapproveInfo:= f.FUnapproveInfo;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmSMVSOperationEdit.tmrRefreshRequirementsTimer(
  Sender: TObject);
begin
  inherited;

  tmrRefreshRequirements.Enabled:= False;

  RefreshDBComboEdit(edtProgramToolRequirement);
  txtProgramToolRequirement.DataSource:= nil;
  txtProgramToolRequirement.DataSource:= dsData;

  RefreshDBComboEdit(edtSpecificToolRequirement);
  txtSpecificToolRequirement.DataSource:= nil;
  txtSpecificToolRequirement.DataSource:= dsData;

  RefreshDBComboEdit(edtTypicalToolRequirement);
  txtTypicalToolRequirement.DataSource:= nil;
  txtTypicalToolRequirement.DataSource:= dsData;

  actForm.Update;
end;

procedure TfmSMVSOperationEdit.Initialize;
var
  StageDeptCode: Integer;
begin
  inherited;

  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  FOlddmDocClientOnDocItemEdited:= dmDocClient.OnDocItemEdited;
  dmDocClient.OnDocItemEdited:= dmDocClientOnDocItemEdited;

  StageDeptCode:= dsStages.DataSet.FieldByName('DEPT_CODE').AsInteger;

  if (EditMode = emInsert) then
    with dsData.DataSet do
      begin
        FieldByName('OPERATION_TYPE_CODE').AsInteger:= FOperationTypeCode;

        if (FOperationTypeCode in [otBegin, otEnd]) then
          begin
            FieldByName('EFFORT_COEF').Clear;
            FieldByName('PROFESSION_CODE').AsInteger:=
              LoginContext.ProductionOrganizerProfessionCode;
            FieldByName('DEPT_CODE').AsInteger:= StageDeptCode;

            if (FOperationTypeCode = otBegin) then
              FieldByName('TREATMENT_BEGIN_WORKDAY_NO').AsInteger:= 1
            else
              FieldByName('TREATMENT_BEGIN_WORKDAY_NO').AsInteger:=
                dsStages.DataSet.FieldByName('TREATMENT_WORKDAYS').AsInteger;

            FieldByName('TREATMENT_WORKDAYS').AsInteger:= 1;

            FieldByName('HAS_SPECIAL_CONTROL').AsBoolean:= False;
          end;
      end;

  with dsData.DataSet.FieldByName('DEPT_CODE') do
    if IsNull or
       ( (AsInteger <> StageDeptCode) and
         dmMain.SvrDeptsTree.IsDescendantOf(AsInteger, StageDeptCode) ) then
      frOperationDept.RootCode:= StageDeptCode;

  RefreshDeptProfessions;

  SetProductStructStatus(dsData.DataSet.FieldByName('DEPT_PRODUCT_CODE'), pnlDeptStructStatus);
  SetProductStructStatus(dsData.DataSet.FieldByName('PROGRAM_TOOL_PRODUCT_CODE'), pnlProgramToolStructStatus);
  SetProductStructStatus(dsData.DataSet.FieldByName('SPECIFIC_TOOL_PRODUCT_CODE'), pnlSpecificToolStructStatus);
  SetProductStructStatus(dsData.DataSet.FieldByName('TYPICAL_TOOL_PRODUCT_CODE'), pnlTypicalToolStructStatus);

  frSetupProfession.DefaultColor:= $00E1E1E1;

  FInitialized:= True;

  actForm.Update;
end;

function TfmSMVSOperationEdit.ProductStructStatus(
  ProductCode: Integer): string;
begin
  if (ProductCode = 0) then
    Result:= ''
  else
    begin
      cdsProductSpecStructStatus.Params.ParamByName('SPEC_PRODUCT_CODE').AsInteger:= ProductCode;
      cdsProductSpecStructStatus.Open;
      try
        Result:= cdsProductSpecStructStatus_DISPLAY_TEXT.AsString;
      finally
        cdsProductSpecStructStatus.Close;
      end;
    end;  { if }
end;

procedure TfmSMVSOperationEdit.Finalize;
begin
  inherited;
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
  dmDocClient.OnDocItemEdited:= FOlddmDocClientOnDocItemEdited;
end;

procedure TfmSMVSOperationEdit.dmDocClientOnDataChanged(Sender: TObject);
var
  ActiveDocItemCount: Integer;
begin
  if dmDocClient.DSIsCurrent(dsData.DataSet) then
    begin
      ActiveDocItemCount:=
        dmDocClient.DSDocItemCount(dsData.DataSet, True);

      CheckEditMode(dsData.DataSet);
      dsData.DataSet.FieldByName('HAS_DOCUMENTATION').AsBoolean:=
        (ActiveDocItemCount > 0);
      dsData.DataSet.FieldByName('DOC_EMPTINESS_REQUIREMENT_CODE').AsVariant:=
        dmDocClient.cdsDocsDOC_EMPTINESS_REQUIREMENT_CODE.AsVariant;
      dsData.DataSet.FieldByName('DOC_IS_COMPLETE').AsVariant:=
        dmDocClient.cdsDocsIS_COMPLETE.AsVariant;
      dsData.DataSet.FieldByName('UNAPPROVED_ACTIVE_DI_COUNT').AsInteger:=
        ActiveDocItemCount - dmDocClient.DSApprovedDocItemCount(dsData.DataSet, True);
    end;
end;

procedure TfmSMVSOperationEdit.btnDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(EditMode, btnDocs, dotSpecOperation,
    dsData.DataSet.FieldByName('DOC_BRANCH_CODE'),
    dsData.DataSet.FieldByName('DOC_CODE'),
    dsData.DataSet.FieldByName('SMVS_OPERATION_VARIANT_NO').AsInteger);
end;

procedure TfmSMVSOperationEdit.actFormUpdate(Sender: TObject);

  procedure SetToolRequirementFont(AEdit: TJvDBComboEdit); overload;
  var
    Prefix: string;
    ToolIsComplete: Boolean;
  begin
    if Assigned(AEdit.Field) then
      begin
        Prefix:= LeftStr(AEdit.DataField, Pos('_', AEdit.DataField) - 1);
        ToolIsComplete:= dsData.DataSet.FieldByName(Prefix + '_TOOL_IS_COMPLETE').AsBoolean;

        if ToolIsComplete then
          AEdit.Font.Color:= clGreen
        else
          AEdit.Font.Color:= clRed;
      end;  { if }
  end;

  procedure SetToolRequirementFont(AText: TDBText); overload;
  var
    Prefix: string;
    ToolIsComplete: Boolean;
  begin
    if Assigned(AText.Field) then
      begin
        Prefix:= LeftStr(AText.DataField, Pos('_', AText.DataField) - 1);
        ToolIsComplete:= dsData.DataSet.FieldByName(Prefix + '_TOOL_IS_COMPLETE').AsBoolean;

        if ToolIsComplete then
          AText.Font.Color:= clGreen
        else
          AText.Font.Color:= clRed;
      end;  { if }
  end;

  procedure SetStructStatusColor(APanel: TPanel);
  begin
    if (APanel.Caption = '') or IsDocStatusComplete(APanel.Caption) then
      APanel.Font.Color:= clWindowText
    else
      APanel.Font.Color:= clRed;
  end;  { SetStructStatusColor }

var
  ro: Boolean;
begin
  inherited;

  ro:=
    (not dsData.DataSet.Active) or
    dsData.DataSet.FieldByName('SETUP_PROFESSION_CODE').IsNull;

  edtSetupEffortCoef.ReadOnly:= ro;
  edtSetupHourTechQuantity.ReadOnly:= ro;
  edtSetupCount.ReadOnly:= ro;
  chbIsAutoSetup.ReadOnly:= ro;

  ro:=
    (not dsData.DataSet.Active) or
    (FOperationTypeCode <> otNormal) or
    (EditMode = emReadOnly);

  edtEffortCoef.ReadOnly:= ro;
  edtHourTechQuantity.ReadOnly:= ro;
  chbSpecialControl.ReadOnly:= ro;
  edtTreatmentBeginWorkdayNo.ReadOnly:= ro;
  edtOperationTreatmentWorkdays.ReadOnly:= ro;
  edtSpecificToolRequirement.ReadOnly:= ro;
  edtSpecificToolDetailTechQuantity.ReadOnly:= ro;
  edtTypicalToolRequirement.ReadOnly:= ro;
  edtTypicalToolDetailTechQuantity.ReadOnly:= ro;
  moNotes.ReadOnly:= ro;

  edtProgramToolRequirement.ReadOnly:=
    (not dsData.DataSet.Active) or
    (EditMode = emReadOnly);

  SetToolRequirementFont(edtProgramToolRequirement);
  SetToolRequirementFont(edtSpecificToolRequirement);
  SetToolRequirementFont(edtTypicalToolRequirement);

  SetToolRequirementFont(txtProgramToolRequirement);
  SetToolRequirementFont(txtSpecificToolRequirement);
  SetToolRequirementFont(txtTypicalToolRequirement);

  SetStructStatusColor(pnlDeptStructStatus);
  SetStructStatusColor(pnlProgramToolStructStatus);
  SetStructStatusColor(pnlSpecificToolStructStatus);
  SetStructStatusColor(pnlTypicalToolStructStatus);

  chbIsAutoSetup.Enabled:=
    (FOperationTypeCode = otBegin) and
    (dsData.DataSet.FieldByName('SETUP_PROFESSION_CODE').IsNull or
     not dsData.DataSet.FieldByName('IS_AUTO_MOVEMENT').AsBoolean);

  chbIsAutoMovement.Enabled:= (FOperationTypeCode = otBegin);
end;

procedure TfmSMVSOperationEdit.actProgramToolSpecDocStatusExecute(
  Sender: TObject);
begin
  inherited;
  TfmSpecDocStatus.ShowForm(nil,
    dsData.DataSet.FieldByName('PROGRAM_TOOL_PRODUCT_CODE').AsInteger, emReadOnly);
end;

procedure TfmSMVSOperationEdit.actProgramToolSpecDocStatusUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not dsData.DataSet.FieldByName('PROGRAM_TOOL_PRODUCT_CODE').IsNull;
end;

procedure TfmSMVSOperationEdit.actSetProgramToolCompleteExecute(
  Sender: TObject);
begin
  inherited;
  SetToolComplete(dsData.DataSet.FieldByName('PROGRAM_TOOL_IS_COMPLETE'));
end;

procedure TfmSMVSOperationEdit.actSetProgramToolCompleteUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly);
end;

procedure TfmSMVSOperationEdit.actSetSpecificToolCompleteExecute(
  Sender: TObject);
begin
  inherited;
  SetToolComplete(dsData.DataSet.FieldByName('SPECIFIC_TOOL_IS_COMPLETE'));
end;

procedure TfmSMVSOperationEdit.actSetSpecificToolCompleteUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    (FOperationTypeCode = otNormal);
end;

procedure TfmSMVSOperationEdit.actSetTypicalToolCompleteExecute(
  Sender: TObject);
begin
  inherited;
  SetToolComplete(dsData.DataSet.FieldByName('TYPICAL_TOOL_IS_COMPLETE'));
end;

procedure TfmSMVSOperationEdit.actSetTypicalToolCompleteUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    (FOperationTypeCode = otNormal);
end;

procedure TfmSMVSOperationEdit.actSpecificToolSpecDocStatusExecute(
  Sender: TObject);
begin
  inherited;
  TfmSpecDocStatus.ShowForm(nil,
    dsData.DataSet.FieldByName('SPECIFIC_TOOL_PRODUCT_CODE').AsInteger, emReadOnly);
end;

procedure TfmSMVSOperationEdit.actSpecificToolSpecDocStatusUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not dsData.DataSet.FieldByName('SPECIFIC_TOOL_PRODUCT_CODE').IsNull;
end;

procedure TfmSMVSOperationEdit.actTypicalToolSpecDocStatusExecute(
  Sender: TObject);
begin
  inherited;
  TfmSpecDocStatus.ShowForm(nil,
    dsData.DataSet.FieldByName('TYPICAL_TOOL_PRODUCT_CODE').AsInteger, emReadOnly);
end;

procedure TfmSMVSOperationEdit.actTypicalToolSpecDocStatusUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not dsData.DataSet.FieldByName('TYPICAL_TOOL_PRODUCT_CODE').IsNull;
end;

procedure TfmSMVSOperationEdit.btnStageDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnStageDocs, dotSpecStage, dsStages.DataSet);
end;

procedure TfmSMVSOperationEdit.cdsProductSpecStructStatusCalcFields(
  DataSet: TDataSet);
begin
  inherited;

  if cdsProductSpecStructStatusLEVEL_NO.IsNull then
    cdsProductSpecStructStatus_DISPLAY_TEXT.Clear
  else
    cdsProductSpecStructStatus_DISPLAY_TEXT.AsString:=
      DocStatusToStr(
        cdsProductSpecStructStatusLEVEL_NO.AsInteger,
        cdsProductSpecStructStatusLEVEL_IS_COMPLETE.AsBoolean,
        cdsProductSpecStructStatusMAX_LEVEL_NO.AsInteger,
        cdsProductSpecStructStatusHAS_MISSING_CHILDREN.AsBoolean
      );
end;

procedure TfmSMVSOperationEdit.actDeptDetailFlowUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    dsData.DataSet.Active and
    (not dsData.DataSet.FieldByName('DEPT_CODE').IsNull);
end;

procedure TfmSMVSOperationEdit.actDeptSpecDocStatusExecute(
  Sender: TObject);
begin
  inherited;
  TfmSpecDocStatus.ShowForm(dmDocClient,
    dsData.DataSet.FieldByName('DEPT_PRODUCT_CODE').AsInteger, emReadOnly);
end;

procedure TfmSMVSOperationEdit.actDeptSpecDocStatusUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not dsData.DataSet.FieldByName('DEPT_PRODUCT_CODE').IsNull;
end;

procedure TfmSMVSOperationEdit.actBaseGroupsExecute(Sender: TObject);
var
  AEditMode: TEditMode;
begin
  inherited;

  LoginContext.CheckUserActivity(uaBaseGroups);

  if (EditMode <> emReadOnly) and LoginContext.HasUserActivity(uaBaseGroupsEdit) then
    AEditMode:= emEdit
  else
    AEditMode:= emReadOnly;

  with cdsBaseGroupsParams do
    begin
      CreateDataSet;
      try
        Append;
        try
// ne filtrirame po Rod       
//          cdsBaseGroupsParamsCHOSEN_PRODUCTS.AsString:=
//            ChosenNodeCodeToXML(dsLines.DataSet.FieldByName('DETAIL_PARENT_CODE').AsInteger);
          cdsBaseGroupsParamsGROUP_DEPT_CODE.AsInteger:=
            dsData.DataSet.FieldByName('DEPT_CODE').AsInteger;

          Post;
        except
          Cancel;
          raise;
        end;  { try }

        TfmBaseGroups.ShowForm(nil, cdsBaseGroupsParams, AEditMode, doNone, False,
          IntegerArrayOf([dsLines.DataSet.FieldByName('DETAIL_CODE').AsInteger]));
      finally
        Close;
      end;  { try }
    end;  { with }
end;

procedure TfmSMVSOperationEdit.actDeptDetailFlowExecute(Sender: TObject);
begin
  inherited;

  with cdsDeptDetailFlowParams do
    begin
      CreateDataSet;
      try
        Append;
        try
          cdsDeptDetailFlowParamsFLOW_LEVEL.AsInteger:= 1;
          cdsDeptDetailFlowParamsFLOW_TYPE.AsInteger:= 0;
          cdsDeptDetailFlowParamsCHOSEN_DEPTS.AsString:=
            ChosenNodeCodeToXML(dsData.DataSet.FieldByName('DEPT_CODE').AsInteger);

          Post;
        except
          Cancel;
          raise;
        end;  { try }

        TfmDeptDetailFlow.ShowForm(dmDocClient, cdsDeptDetailFlowParams, emReadOnly, doNone, False);
      finally
        Close;
      end;  { try }
    end;  { with }
end;

procedure TfmSMVSOperationEdit.frOperationDeptactNodeChangedExecute(
  Sender: TObject);

  procedure CheckProfession(AFieldName: string);
  begin
    with dsData.DataSet.FieldByName(AFieldName) do
      if (not IsNull) and
         (not cdsDeptProfessions.Locate('PROFESSION_CODE', AsInteger, [])) then
        Clear;
  end;

begin
  inherited;
  RefreshDeptProfessions;
  CheckProfession('SETUP_PROFESSION_CODE');
  CheckProfession('PROFESSION_CODE');
end;

procedure TfmSMVSOperationEdit.RefreshDeptProfessions;
begin
  with cdsDeptProfessions do
    begin
      Close;
      SetParams(Params, dsData.DataSet);
      Open;
    end;  { with }
end;

procedure TfmSMVSOperationEdit.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  WorkHours: Real;
  WorkDays: Integer;
  ddwh: Real;
begin
  with dsData.DataSet do
    if (State in dsEditModes) and
       (ModalResult = mrOk) and
       (not FieldByName('DEPT_CODE').IsNull) and
       (not FieldByName('HOUR_TECH_QUANTITY').IsNull) and
       (FieldByName('TREATMENT_WORKDAYS').AsInteger > 1) then
      begin
        ActiveControl:= btnOK;

        WorkHours:=
          FMaxDetailTechQuantity / FieldByName('HOUR_TECH_QUANTITY').AsFloat;

        if not FieldByName('SETUP_HOUR_TECH_QUANTITY').IsNull then
          WorkHours:=
            WorkHours + (FieldByName('SETUP_COUNT').AsFloat / FieldByName('SETUP_HOUR_TECH_QUANTITY').AsFloat);

        if (FieldByName('D_PARALLEL_PROCESS_COUNT').AsFloat <> 0) then
          WorkHours:= WorkHours / FieldByName('D_PARALLEL_PROCESS_COUNT').AsFloat;

        ddwh:= dmMain.SvrHumanResource.DeptDayWorkHours(FieldByName('DEPT_CODE').AsInteger);

        if (ddwh > 0) then
          begin
            WorkDays:= Ceil(WorkHours / ddwh);

            if (FieldByName('TREATMENT_WORKDAYS').AsInteger >
                WorkDays * (1 + LoginContext.OperationWorkdaysDeviationPercent)) or
               (FieldByName('TREATMENT_WORKDAYS').AsInteger <
                WorkDays * (1 - LoginContext.OperationWorkdaysDeviationPercent)) then
              begin
                FieldByName('TREATMENT_WORKDAYS').FocusControl;
                if (MessageDlgFmtEx(SWorkdaysExceedCalculated,
                      [Trunc(LoginContext.OperationWorkdaysDeviationPercent * 100)], mtWarning, mbOkCancel, 0) <> mrOk) then
                  Abort;
              end;
          end;
      end;  { if }

  inherited;
end;

procedure TfmSMVSOperationEdit.dmDocClientOnDocItemEdited(DocItemUnapproved: Boolean);
var
  ui: TUnapproveInfo;
  OperationNo: Integer;
begin
  if DocItemUnapproved then
    begin
      if FLineHasApprovedDocItems then
        ui:=
          UnapproveFormClass.SelectUnapproveMethod(dmDocClient,
            dsLines.DataSet.FieldByName('NO_AS_TEXT').AsString,
            edtStageNo.Field.AsInteger,
            dsData.DataSet.FieldByName('_SHOW_NO').AsString,
            FModelIdentifier,
            True,
            [umNone..umAllModelVariantsLineStagesAndOperationsDocs]
          )
      else
        ui:= EmptyUnapproveInfo;

      OperationNo:= dsData.DataSet.FieldByName(Prefix + '_OPERATION_NO').AsInteger;

      if (ui.UnapproveMethod <> umNone) and
         ((ui.UnapproveMethod <> umRangeOperationsDocs) or
          ((ui.FromOperationNo <= OperationNo) and (OperationNo <= ui.ToOperationNo)))then
        dmDocClient.UnapproveDocItems(
          dsData.DataSet.FieldByName('DOC_BRANCH_CODE').AsInteger,
          dsData.DataSet.FieldByName('DOC_CODE').AsInteger,
          (ui.UnapproveMethod <> umDocItemOnly), [dmDocClient.cdsDocItemsDOC_ITEM_CODE.AsInteger]);

      if (ui.UnapproveMethod >= umRangeOperationsDocs) and
         (ui.UnapproveMethod >= FUnapproveInfo.UnapproveMethod) then
        FUnapproveInfo:= ui;
    end;  { if }

  FLineHasApprovedDocItems:=
    FLineHasApprovedDocItems or (not dmDocClient.cdsDocItemsAPPROVE_EMPLOYEE_CODE.IsNull);
end;

procedure TfmSMVSOperationEdit.dsDataDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if FInitialized then
    begin
      tmrRefreshRequirements.Enabled:= False;
      tmrRefreshRequirements.Enabled:= True;

      if Assigned(Field) and (Field.FieldName = 'DEPT_PRODUCT_CODE') then
        SetProductStructStatus(Field, pnlDeptStructStatus);
      if Assigned(Field) and (Field.FieldName = 'PROGRAM_TOOL_PRODUCT_CODE') then
        SetProductStructStatus(Field, pnlProgramToolStructStatus);
      if Assigned(Field) and (Field.FieldName = 'SPECIFIC_TOOL_PRODUCT_CODE') then
        SetProductStructStatus(Field, pnlSpecificToolStructStatus);
      if Assigned(Field) and (Field.FieldName = 'TYPICAL_TOOL_PRODUCT_CODE') then
        SetProductStructStatus(Field, pnlTypicalToolStructStatus);
    end;  { if }
end;

procedure TfmSMVSOperationEdit.edtToolRequirementButtonClick(
  Sender: TObject);
var
  em: TEditMode;
begin
  inherited;

  if (Sender as TJvDBComboEdit).ReadOnly then
    em:= emReadOnly
  else
    if (EditMode = emInsert) then
      em:= emEdit
    else
      em:= EditMode;

  TfmToolRequirement.ShowForm(nil, dsData.DataSet, em, doNone, (Sender as TJvDBComboEdit).Field);
end;

end.

