unit fSpecModelVariantStageEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Forms, Dialogs,
  Db, DBClient, AbmesClientDataSet, ImgList, ActnList,
  StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, fBaseFrame, fDBFrame,
  fFieldEditFrame, JvToolEdit, Menus,
  JvButtons, fInnerButtonGridForm, ParamDataSet, GridsEh, DBGridEh,
  AbmesDBGrid, ColorNavigator, uClientTypes, AbmesDBCheckBox, ComCtrls,
  ToolWin, dDocClient, dbcgrids, fSpecificationAndXModelAbstract,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, fDeptFieldEditFrameBald, fProductFieldEditFrame,
  fProductFieldEditFrameBald, fSpecAndXModelUnapproveAbstract,
  JvExControls, JvComponent, JvDBLookup, JvCaptionButton,
  JvComponentBase, fSpecOperationsInvestedValues, DBGridEhGrouping,
  AbmesFields, fEditForm, uClientConsts, Controls, fDBDataForm, System.Actions, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, DBAxisGridsEh;

type
  TGetStageOperationInvestedValue = function: TOperationInvestedValue of object;

type
  [VerticalResizeStep(DualGridRowHeight)]
  [PrintActiveGridEnabled(False)]
  TfmSpecModelVariantStageEdit = class(TInnerButtonGridForm)
    bvlOperations: TBevel;
    pnlOperationsCaption: TPanel;
    btnMoveUpOperation: TSpeedButton;
    btnMoveDownOperation: TSpeedButton;
    actMoveUpOperation: TAction;
    actMoveDownOperation: TAction;
    dsLines: TDataSource;
    gbDetail: TGroupBox;
    txtDetailTechMeasureAbbrev: TDBText;
    pmAdd: TPopupMenu;
    actAddOperation: TAction;
    actInsertOperation: TAction;
    actAddOperationVariant: TAction;
    actInsertOperationVariant: TAction;
    actAddBeginOperation: TAction;
    actAddEndOperation: TAction;
    miAddOperation: TMenuItem;
    miInsertOperation: TMenuItem;
    miAddOperationVariant: TMenuItem;
    mlAddOperationVariant: TMenuItem;
    miInsertOperationVariant: TMenuItem;
    miAddBeginOperation: TMenuItem;
    mlAddBeginOperation: TMenuItem;
    miAddEndOperation: TMenuItem;
    edtDetailTechQuantity: TDBEdit;
    edtProductTechQuantity: TDBEdit;
    txtProductTechMeasureAbbrev: TDBText;
    lblDetail: TLabel;
    lblDetailTechQuantity: TLabel;
    lblProduct: TLabel;
    lblProductTechQuantity: TLabel;
    gbStage: TGroupBox;
    gbDept: TGroupBox;
    lblStageNo: TLabel;
    lblDept: TLabel;
    edtStageNo: TDBEdit;
    gbWorkdaysFor: TGroupBox;
    lblTreatmentWorkdays: TLabel;
    lblOutgoingWorkdays: TLabel;
    edtTreatmentWorkdays: TDBEdit;
    edtOutgoingWorkdays: TDBEdit;
    chbIsAutoMovment: TAbmesDBCheckBox;
    pnlDocs: TToolBar;
    btnDocs: TSpeedButton;
    cbSMVSType: TJvDBLookupCombo;
    lblSMVSType: TLabel;
    pnlPrintOperationsButton: TPanel;
    btnPrintOperations: TBitBtn;
    actPrintOperations: TAction;
    actBaseGroups: TAction;
    cdsBaseGroupsParams: TAbmesClientDataSet;
    cdsBaseGroupsParamsGROUP_DEPT_CODE: TAbmesFloatField;
    actAddOperationVariantLike: TAction;
    miAddOperationVariantLike: TMenuItem;
    frDept: TfrDeptFieldEditFrameBald;
    frDetail: TfrProductFieldEditFrameBald;
    frProduct: TfrProductFieldEditFrameBald;
    pnlExternalWorkPrice: TPanel;
    lblApproveCycleNo: TLabel;
    edtApproveCycleNo: TDBEdit;
    tlbDocs1: TToolBar;
    sepOperationDoc: TToolButton;
    lblOperationDoc: TLabel;
    btnOperationDoc: TToolButton;
    sepBeforeProgramToolDoc: TToolButton;
    lblProgramToolDoc: TLabel;
    btnProgramToolDoc: TToolButton;
    sepBeforeSpecificToolDoc: TToolButton;
    lblSpecificToolDoc: TLabel;
    btnSpecificToolDoc: TToolButton;
    tlbSpecificToolSpecDocStatus: TToolBar;
    btnSpecificToolSpecDocStatus: TToolButton;
    tlbDocs3: TToolBar;
    sepBeforeTypicalToolDoc: TToolButton;
    lblTypicalToolDoc: TLabel;
    btnTypicalToolDoc: TToolButton;
    tlbTypicalToolSpecDocStatus: TToolBar;
    btnTypicalToolSpecDocStatus: TToolButton;
    actProgramToolSpecDocStatus: TAction;
    actSpecificToolSpecDocStatus: TAction;
    actTypicalToolSpecDocStatus: TAction;
    tlbProgramToolSpecDocStatus: TToolBar;
    btnProgramToolSpecDocStatus: TToolButton;
    edtExternalWorkPrice: TDBEdit;
    lblExternalWorkPrice: TLabel;
    lblExternalWorkPriceCurrency: TLabel;
    txtDetailTechMeasureAbbrev2: TDBText;
    actOperationsInvestedValues: TAction;
    cdsOperationsInvestedValues: TAbmesClientDataSet;
    cdsOperationsInvestedValues_SHOW_NO: TAbmesWideStringField;
    cdsOperationsInvestedValuesDEPT_NAME: TAbmesWideStringField;
    cdsOperationsInvestedValuesDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsOperationsInvestedValues_SETUP_PROFESSION_NAME: TAbmesWideStringField;
    cdsOperationsInvestedValues_PROFESSION_NAME: TAbmesWideStringField;
    cdsOperationsInvestedValuesSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField;
    cdsOperationsInvestedValuesHOUR_TECH_QUANTITY: TAbmesFloatField;
    cdsOperationsInvestedValuesSETUP_INVESTED_VALUE: TAbmesFloatField;
    cdsOperationsInvestedValuesINVESTED_VALUE: TAbmesFloatField;
    cdsOperationsInvestedValuesTOTAL_INVESTED_VALUE: TAbmesFloatField;
    cdsOperationsInvestedValuesSETUP_INVESTED_VALUE_II: TAbmesFloatField;
    cdsOperationsInvestedValuesINVESTED_VALUE_II: TAbmesFloatField;
    cdsOperationsInvestedValuesTOTAL_INVESTED_VALUE_II: TAbmesFloatField;
    btnOperationsInvestedValues: TBitBtn;
    cdsOperationsInvestedValuesSETUP_HOUR_PRICE: TAbmesFloatField;
    cdsOperationsInvestedValuesHOUR_PRICE: TAbmesFloatField;
    cdsOperationsInvestedValuesOPERATION_NO: TAbmesFloatField;
    cdsOperationsInvestedValuesOPERATION_VARIANT_NO: TAbmesFloatField;
    cdsOperationsInvestedValues_TOTAL_SETUP_INVESTED_VALUE: TAggregateField;
    cdsOperationsInvestedValues_TOTAL_SETUP_INVESTED_VALUE_II: TAggregateField;
    cdsOperationsInvestedValues_TOTAL_INVESTED_VALUE: TAggregateField;
    cdsOperationsInvestedValues_TOTAL_INVESTED_VALUE_II: TAggregateField;
    cdsOperationsInvestedValues_TOTAL_TOTAL_INVESTED_VALUE: TAggregateField;
    cdsOperationsInvestedValues_TOTAL_TOTAL_INVESTED_VALUE_II: TAggregateField;
    cdsOperationsInvestedValuesDEPT_HOUR_PRICE: TAbmesFloatField;
    cdsOperationsInvestedValuesIS_ACTIVE: TAbmesFloatField;
    btnBaseGroups: TBitBtn;
    cdsBaseGroupsParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    grdHeader: TAbmesDBGrid;
    bvlMain: TBevel;
    procedure btnTypicalToolDocClick(Sender: TObject);
    procedure btnSpecificToolDocClick(Sender: TObject);
    procedure btnProgramToolDocClick(Sender: TObject);
    procedure btnOperationDocClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actMoveUpOperationUpdate(Sender: TObject);
    procedure actMoveUpOperationExecute(Sender: TObject);
    procedure actMoveDownOperationUpdate(Sender: TObject);
    procedure actMoveDownOperationExecute(Sender: TObject);
    procedure btnDocsClick(Sender: TObject);
    procedure actInsertRecordExecute(Sender: TObject);
    procedure actAddOperationUpdate(Sender: TObject);
    procedure actAddOperationExecute(Sender: TObject);
    procedure actInsertOperationUpdate(Sender: TObject);
    procedure actInsertOperationExecute(Sender: TObject);
    procedure actAddOperationVariantUpdate(Sender: TObject);
    procedure actAddOperationVariantExecute(Sender: TObject);
    procedure actInsertOperationVariantUpdate(Sender: TObject);
    procedure actInsertOperationVariantExecute(Sender: TObject);
    procedure actAddBeginOperationUpdate(Sender: TObject);
    procedure actAddBeginOperationExecute(Sender: TObject);
    procedure actAddEndOperationUpdate(Sender: TObject);
    procedure actAddEndOperationExecute(Sender: TObject);
    procedure actDelRecordExecute(Sender: TObject);
    procedure actEditRecordUpdate(Sender: TObject);
    procedure actPrintOperationsExecute(Sender: TObject);
    procedure actPrintOperationsUpdate(Sender: TObject);
    procedure actBaseGroupsExecute(Sender: TObject);
    procedure actAddOperationVariantLikeExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actProgramToolSpecDocStatusUpdate(Sender: TObject);
    procedure actSpecificToolSpecDocStatusUpdate(Sender: TObject);
    procedure actTypicalToolSpecDocStatusUpdate(Sender: TObject);
    procedure actProgramToolSpecDocStatusExecute(Sender: TObject);
    procedure actSpecificToolSpecDocStatusExecute(Sender: TObject);
    procedure actTypicalToolSpecDocStatusExecute(Sender: TObject);
    procedure actOperationsInvestedValuesExecute(Sender: TObject);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure grdHeaderEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FSaveGridData: TAbmesClientDataSet;
    FGridSavePoint: Integer;
    FPrefix: string;
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    FOlddmDocClientOnDocItemEdited: TDocItemEditedEvent;
    FVariantsDataSet: TAbmesClientDataSet;
    FUnapproveFormClass: TfmSpecAndXModelUnapproveAbstractClass;
    FModelIdentifier: string;
    FInitialized: Boolean;
    FOperationsInvestedValuesClass: TOperationsInvestedValuesClass;
    FGetStageOperationInvestedValue: TGetStageOperationInvestedValue;
    FInvestedValueFilter: TInvestedValueFilter;
    FNewOperationTypeCode: Integer;
    procedure MoveOperation(MoveUp: Boolean; UnapprovePrompt: Boolean = False);
    procedure dmDocClientOnDataChanged(Sender: TObject);
    procedure AddBeginOrEndOperation(AOperationType: Integer);
    procedure CheckProductionOrganizerProfessionConfigured;
    procedure PostInsertStage;
  protected
    NewOperationData: TNewOperationData;
    FUnapproveMethod: TUnapproveMethod;
    FLineHasApprovedDocItems: Boolean;
    cdsGridDataOPERATION_TYPE_CODE: TField;
    cdsGridData_MIN_OPERATION_TYPE_CODE: TField;
    cdsGridData_MAX_OPERATION_TYPE_CODE: TField;
    cdsGridData_MAX_OPERATION_NO: TField;
    cdsGridDataDEPT_CODE: TField;
    procedure DoApplyUpdates; override;
    procedure DoCancelUpdates; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure DoGridApplyUpdates; override;
    procedure DoGridCancelUpdates; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    function GetEditRecordEnabled: Boolean; override;
    function GetInsertRecordEnabled: Boolean; override;
    function GetDelRecordEnabled: Boolean; override;
    function GetOperationCode: Variant; virtual;
    procedure LocateOperationCode(AOperationCode: Variant); virtual;
    function GetMoveUpOperationEnabled: Boolean; virtual;
    function GetMoveDownOperationEnabled: Boolean; virtual;
    function OperationsEditable: Boolean; virtual;
    function GetAddBeginOperationEnabled: Boolean; virtual;
    function GetAddEndOperationEnabled: Boolean; virtual;
    function GetInsertOperationEnabled: Boolean; virtual;
    function GetAddOperationEnabled: Boolean; virtual;
    procedure dmDocClientOnDocItemEdited(DocItemUnapproved: Boolean);
    procedure UnapproveDataSet(DataSet: TDataSet; DefaultUnapproveInfo: TUnapproveInfo;
      UnapproveMethods: TUnapproveMethods; ShowOperation: Boolean; CurrentDocOnly: Boolean = False);
    procedure UpdateOperationVariantsDocData;
    function EditOperationTypeCode(AEditMode: TEditMode): Integer;
    procedure UpdateStageIsAutoMovement;
    function StageReadOnly: Boolean; virtual;

    property Prefix: string read FPrefix write FPrefix;
    property UnapproveFormClass: TfmSpecAndXModelUnapproveAbstractClass read FUnapproveFormClass write FUnapproveFormClass;
    property ModelIdentifier: string read FModelIdentifier;
    property OperationsInvestedValuesClass: TOperationsInvestedValuesClass read FOperationsInvestedValuesClass write FOperationsInvestedValuesClass;
  public
    class function ShowForm(AdmDocClient: TdmDocClient; ADataSet: TDataSet;
      AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean;
      AGridDataSet: TAbmesClientDataSet; ALinesDataSet: TAbmesClientDataSet;
      ANewOperationData: TNewOperationData;
      AVariantsDataSet: TAbmesClientDataSet;
      ALineHasApprovedDocItems: Boolean;
      AModelIdentifier: string;
      out AUnapproveMethod: TUnapproveMethod;
      AGetStageOperationInvestedValue: TGetStageOperationInvestedValue;
      AInvestedValueFilter: TInvestedValueFilter): Boolean;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True;
      AGridDataSet: TAbmesClientDataSet = nil; ALinesDataSet: TAbmesClientDataSet = nil;
      ANewOperationData: TNewOperationData = nil;
      AVariantsDataSet: TAbmesClientDataSet = nil;
      ALineHasApprovedDocItems: Boolean = False; AModelIdentifier: string = '';
      AGetStageOperationInvestedValue: TGetStageOperationInvestedValue = nil;
      AInvestedValueFilter: TInvestedValueFilter = nil); reintroduce; virtual;
    procedure Initialize; override;
    procedure Finalize; override;
  end;

resourcestring
  SIncorrectOperationWorkdays = 'Дните на операцията излизат извън дните на етапа';

implementation

uses
  uUtils, fSMVSOperationEdit, uClientUtils, uOperationTypes, AbmesDialogs,
  DBConsts, dMain, fDataForm, fAnimatedSplash, uExcelExport,
  uProductionLevels, rSpecOperations, fBaseGroups, uUserActivityConsts,
  Math, uDocUtils, fSpecUnapprove, Variants, fSpecification,
  uToolRequirements, fSpecDocStatus, uXMLUtils, uScalingUtils;

{$R *.DFM}

resourcestring
  SIncorrectOperationBegin = 'Операцията започва по-рано от началото на предходната!';
  SIncorrectOperationEnd = 'Операцията приключва по-рано от края на предходната!';
  SIncorrectDept = 'ОпТП не е наследник на ЕтТП!';
  SProductionOrganizerProfessionCodeNotConfigured = 'Не е конфигурирана Специфична Процесна Роля "Организатор"';
  SEditCaption = 'Промяна';
  SCaptionSuffix = ' на ID Оп' + cDialogSuffix;
  SConfirmOperationsImport = 'Съществуващите операции ще бъдат изтрити.'+ SLineBreak +'Желате ли да продължите?';
  SMoreThanOneBaseProductStages =
    'В П-МОДЕл-а на Типопредставителя на Базовата Група има повече от един етап за това ЕтТП!';
  SAutoMovementWithVariantsNotAllowed = 'Не е възможно автоматично отчитане на операция с варианти';

{ TfmSpecModelVariantStageEdit }

procedure TfmSpecModelVariantStageEdit.DoApplyUpdates;
var
  b: TBookmark;
  StageDeptCode: Integer;
  StageTreatmentWorkdays: Integer;
  cdsGridData_MIN_BEGIN_DAY_NO: TField;
  cdsGridData_MAX_END_DAY_NO: TField;
  PrevMinBeginDayNo: Integer;
  PrevMaxEndDayNo: Integer;
  HasBeginOperation: Boolean;
  HasEndOperation: Boolean;
  d: Integer;
  OperationNoField: TField;
  MaxOperationNo: Integer;
  OperationHasVariants: TArray<Boolean>;
  OperationIsAutoMovement: TArray<Boolean>;
begin
  CheckRequiredFields(dsData.DataSet,
    'DEPT_NAME; TREATMENT_WORKDAYS; OUTGOING_WORKDAYS');

  cdsGridData_MIN_BEGIN_DAY_NO:= cdsGridData.FieldByName('_MIN_BEGIN_DAY_NO');
  cdsGridData_MAX_END_DAY_NO:= cdsGridData.FieldByName('_MAX_END_DAY_NO');

  StageDeptCode:= dsData.DataSet.FieldByName('DEPT_CODE').AsInteger;
  StageTreatmentWorkdays:= dsData.DataSet.FieldByName('TREATMENT_WORKDAYS').AsInteger;

  with cdsGridData do
    begin
      DisableControls;
      try
        b:= Bookmark;
        try
          HasBeginOperation:=
            (VarToInt(FieldByName('_MIN_OPERATION_TYPE_CODE').AsVariant) = otBegin);
          HasEndOperation:=
            (VarToInt(FieldByName('_MAX_OPERATION_TYPE_CODE').AsVariant) = otEnd);

          if HasBeginOperation then
            begin
              d:= Min(StageTreatmentWorkdays, VarToInt(FieldByName('_MIN_NORMAL_BEGIN_WORKDAY_NO').AsVariant));
              if (d = 0) then
                d:= StageTreatmentWorkdays;

              First;
              if (FieldByName('TREATMENT_WORKDAYS').AsInteger <> d) then
                begin
                  Edit;
                  try
                    FieldByName('TREATMENT_WORKDAYS').AsInteger:= d;
                    Post;
                  except
                    Cancel;
                    raise;
                  end;  { try }
                end;
            end;

          if HasEndOperation then
            begin
              d:= VarToInt(FieldByName('_MAX_NORMAL_END_WORKDAY_NO').AsVariant);
              if (d = 0) then
                d:= IfThen(HasBeginOperation, StageTreatmentWorkdays, 1);

              Last;
              if (FieldByName('TREATMENT_BEGIN_WORKDAY_NO').AsInteger <> d) or
                 (FieldByName('TREATMENT_WORKDAYS').AsInteger <> StageTreatmentWorkdays - d + 1) then
                begin
                  Edit;
                  try
                    FieldByName('TREATMENT_BEGIN_WORKDAY_NO').AsInteger:= d;
                    FieldByName('TREATMENT_WORKDAYS').AsInteger:= StageTreatmentWorkdays - d + 1;
                    Post;
                  except
                    Cancel;
                    raise;
                  end;  { try }
                end;
            end;


          PrevMinBeginDayNo:= 0;
          PrevMaxEndDayNo:= 0;
          First;
          while not Eof do
            begin
              if (cdsGridDataOPERATION_TYPE_CODE.AsInteger = otNormal) then
                begin
                  if (FieldByName('DEPT_CODE').AsInteger = StageDeptCode) or
                     (not dmMain.SvrDeptsTree.IsDescendantOf(FieldByName('DEPT_CODE').AsInteger, StageDeptCode)) then
                    begin
                      b:= Bookmark;
                      raise Exception.Create(SIncorrectDept);
                    end;

                  if (FieldByName('TREATMENT_BEGIN_WORKDAY_NO').AsInteger +
                      FieldByName('TREATMENT_WORKDAYS').AsInteger - 1 >
                      StageTreatmentWorkdays) then
                    begin
                      b:= Bookmark;
                      raise Exception.Create(SIncorrectOperationWorkdays);
                    end;
                end;

              if (cdsGridDataOPERATION_TYPE_CODE.AsInteger <> otNormal) then
                begin
                  Edit;
                  try
                    FieldByName('DEPT_CODE').AsInteger:= StageDeptCode;
                    Post;
                  except
                    Cancel;
                    raise;
                  end;  { try }
                end;

              if (PrevMinBeginDayNo > VarToInt(cdsGridData_MIN_BEGIN_DAY_NO.AsVariant)) then
                begin
                  b:= Bookmark;
                  raise Exception.Create(SIncorrectOperationBegin);
                end;

              if (PrevMaxEndDayNo > VarToInt(cdsGridData_MAX_END_DAY_NO.AsVariant)) then
                begin
                  b:= Bookmark;
                  raise Exception.Create(SIncorrectOperationEnd);
                end;

              PrevMinBeginDayNo:= VarToInt(cdsGridData_MIN_BEGIN_DAY_NO.AsVariant);
              PrevMaxEndDayNo:= VarToInt(cdsGridData_MAX_END_DAY_NO.AsVariant);

              Next;
            end;   { while }

            if (not cdsGridData.IsEmpty) then
              begin
                cdsGridData.Last;

                OperationNoField:= cdsGridData.FieldByName(Prefix + '_OPERATION_NO');
                MaxOperationNo:= OperationNoField.AsInteger;

                SetLength(OperationHasVariants, MaxOperationNo + 1);
                SetLength(OperationIsAutoMovement, MaxOperationNo + 1);

                cdsGridData.ForEach/
                  procedure begin
                    OperationHasVariants[OperationNoField.AsInteger]:=
                      (cdsGridData.FieldByName(Prefix + '_OPERATION_VARIANT_NO').AsInteger > 0);
                    OperationIsAutoMovement[OperationNoField.AsInteger]:=
                      cdsGridData.FieldByName('IS_AUTO_MOVEMENT').AsBoolean or
                      cdsGridData.FieldByName('IS_AUTO_SETUP').AsBoolean;

                    if OperationHasVariants[OperationNoField.AsInteger] and OperationIsAutoMovement[OperationNoField.AsInteger] then
                      raise Exception.Create(SAutoMovementWithVariantsNotAllowed);

                    if (OperationNoField.AsInteger = MaxOperationNo) and
                       (cdsGridData.FieldByName('IS_AUTO_MOVEMENT').AsBoolean <> dsData.DataSet.FieldByName('IS_AUTO_MOVEMENT').AsBoolean) then
                      begin
                        if (not OperationsEditable) then
                          begin
                            cdsGridData.SafeEdit/
                              procedure begin
                                cdsGridData.FieldByName('IS_AUTO_MOVEMENT').AsBoolean:= dsData.DataSet.FieldByName('IS_AUTO_MOVEMENT').AsBoolean;
                              end;
                          end
                        else
                          begin
                            CheckEditMode(dsData.DataSet);
                            dsData.DataSet.FieldByName('IS_AUTO_MOVEMENT').AsBoolean:= cdsGridData.FieldByName('IS_AUTO_MOVEMENT').AsBoolean;
                          end;
                      end;
                  end;
              end;
        finally
          Bookmark:= b;
        end;   { try }
      finally
        EnableControls;
      end;   { try }
    end;   { with }

  inherited;
end;

procedure TfmSpecModelVariantStageEdit.FormCreate(Sender: TObject);
begin
  inherited;

  FNewOperationTypeCode:= otNormal;

  frDetail.FieldNames:= 'DETAIL_CODE';

  EditFormClass:= TfmSMVSOperationEdit;
  Prefix:= 'SMVS';

  UnapproveFormClass:= TfmSpecUnapprove;
  OperationsInvestedValuesClass:= TfmSpecOperationsInvestedValues;

  with lblExternalWorkPriceCurrency do
    Caption:= FormatBaseCurrencyAbbrevString(Caption);

  RegisterFieldsTextVisibility(
    IsHighLevelInvestedValueVisible,
    [ cdsOperationsInvestedValuesDEPT_HOUR_PRICE,
      cdsOperationsInvestedValuesHOUR_PRICE,
      cdsOperationsInvestedValuesSETUP_HOUR_PRICE,
      cdsOperationsInvestedValuesSETUP_INVESTED_VALUE,
      cdsOperationsInvestedValues_TOTAL_SETUP_INVESTED_VALUE,
      cdsOperationsInvestedValuesINVESTED_VALUE,
      cdsOperationsInvestedValues_TOTAL_INVESTED_VALUE,
      cdsOperationsInvestedValuesTOTAL_INVESTED_VALUE,
      cdsOperationsInvestedValues_TOTAL_TOTAL_INVESTED_VALUE]);
end;

procedure TfmSpecModelVariantStageEdit.OpenDataSets;
begin
//  inherited;   do nothing
end;

procedure TfmSpecModelVariantStageEdit.CloseDataSets;
begin
//  inherited;   do nothing
end;

procedure TfmSpecModelVariantStageEdit.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean;
  AGridDataSet, ALinesDataSet: TAbmesClientDataSet;
  ANewOperationData: TNewOperationData;
  AVariantsDataSet: TAbmesClientDataSet;
  ALineHasApprovedDocItems: Boolean;
  AModelIdentifier: string;
  AGetStageOperationInvestedValue: TGetStageOperationInvestedValue;
  AInvestedValueFilter: TInvestedValueFilter);
begin
  Assert(Assigned(AGridDataSet));

  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);

  FSaveGridData:= cdsGridData;
  cdsGridData:= AGridDataSet;
  dsGridData.DataSet:= cdsGridData;

  dsLines.DataSet:= ALinesDataSet;

  frDetail.SetDataSet(ALinesDataSet);
  frProduct.SetDataSet(ALinesDataSet);

  NewOperationData:= ANewOperationData;

  FVariantsDataSet:= AVariantsDataSet;

  FLineHasApprovedDocItems:= ALineHasApprovedDocItems;

  FModelIdentifier:= AModelIdentifier;

  FGetStageOperationInvestedValue:= AGetStageOperationInvestedValue;
  FInvestedValueFilter:= AInvestedValueFilter;
end;

class function TfmSpecModelVariantStageEdit.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean;
  AGridDataSet, ALinesDataSet: TAbmesClientDataSet;
  ANewOperationData: TNewOperationData;
  AVariantsDataSet: TAbmesClientDataSet;
  ALineHasApprovedDocItems: Boolean;
  AModelIdentifier: string;
  out AUnapproveMethod: TUnapproveMethod;
  AGetStageOperationInvestedValue: TGetStageOperationInvestedValue;
  AInvestedValueFilter: TInvestedValueFilter): Boolean;
var
  f: TfmSpecModelVariantStageEdit;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode,
      ADefaultsOrigin, AFilterFormEnabled,
      AGridDataSet, ALinesDataSet, ANewOperationData, AVariantsDataSet,
      ALineHasApprovedDocItems,
      AModelIdentifier,
      AGetStageOperationInvestedValue,
      AInvestedValueFilter);
    f.InternalShowForm;
    AUnapproveMethod:= f.FUnapproveMethod;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

function TfmSpecModelVariantStageEdit.StageReadOnly: Boolean;
begin
  Result:= (EditMode = emReadOnly);
end;

procedure TfmSpecModelVariantStageEdit.FormDestroy(Sender: TObject);
begin
  inherited;
  cdsGridData:= FSaveGridData;
end;

procedure TfmSpecModelVariantStageEdit.FormShow(Sender: TObject);
var
  R: TRect;
  SaveCanResize: TCanResizeEvent;
begin
  inherited;
  bvlMain.Anchors:= pnlMain.Anchors - [akBottom];
  try
    bvlOperations.Anchors:= pnlMain.Anchors - [akBottom];
    try
      pnlMain.Anchors:= pnlMain.Anchors - [akBottom];
      try
        R:= bvlOperations.BoundsRect;
        R.Bottom:= pnlMain.BoundsRect.Bottom + ScalePixels(8);
        bvlOperations.BoundsRect:= R;

        R:= bvlMain.BoundsRect;
        R.Bottom:= bvlOperations.BoundsRect.Bottom + ScalePixels(8);
        bvlMain.BoundsRect:= R;

        SaveCanResize:= OnCanResize;
        OnCanResize:= nil;
        try
          ClientHeight:= bvlMain.Top + bvlMain.Height + ScalePixels(8) + pnlBottomButtons.Height;
        finally
          OnCanResize:= SaveCanResize;
        end;
      finally
        pnlMain.Anchors:= pnlMain.Anchors + [akBottom];
      end;
    finally
      bvlOperations.Anchors:= pnlMain.Anchors + [akBottom];
    end;
  finally
    bvlMain.Anchors:= pnlMain.Anchors + [akBottom];
  end;
end;

procedure TfmSpecModelVariantStageEdit.DoGridApplyUpdates;
begin
//  inherited;   do nothing
end;

procedure TfmSpecModelVariantStageEdit.DoGridCancelUpdates;
begin
//  inherited;   do nothing
end;

function TfmSpecModelVariantStageEdit.EditOperationTypeCode(
  AEditMode: TEditMode): Integer;
begin
  if (AEditMode = emInsert) then
    Result:= FNewOperationTypeCode
  else
    Result:= dsGridData.DataSet.FieldByName('OPERATION_TYPE_CODE').AsInteger;
end;

procedure TfmSpecModelVariantStageEdit.MoveOperation(MoveUp: Boolean; UnapprovePrompt: Boolean);
const
  IncDelta: array[Boolean] of Integer = (1, -1);
var
  OperationCode: Variant;
  OperationNoField: TField;
  VariantNoField: TField;
  MaxVariantNoField: TField;
  OldOperationNo: Integer;
  NewOperationNo: Integer;

  procedure IncOperationVariantNo(MoveUp: Boolean);
  begin
    with cdsGridData do
      begin
        Edit;
        try
          with FieldByName(Prefix + '_OPERATION_VARIANT_NO') do
            AsInteger:= AsInteger + IncDelta[MoveUp];
          Post;
        except
          Cancel;
          raise;
        end;   { try }
      end;   { with }
  end;   { IncOperatioNo }

  procedure ReplaceOperationNo(OldNo, NewNo: Integer);
  begin
    with cdsGridData do
      while Locate(OperationNoField.FieldName, OldNo, []) do
        begin
          Edit;
          try
            OperationNoField.AsInteger:= NewNo;
            Post;
          except
            Cancel;
            raise;
          end;   { try }
        end;   { while }
  end;   { ReplaceOperationNo }

begin
  with cdsGridData do
    begin
      DisableControls;
      try
        OperationNoField:= FieldByName(Prefix + '_OPERATION_NO');
        VariantNoField:= FieldByName(Prefix + '_OPERATION_VARIANT_NO');
        MaxVariantNoField:= FieldByName('_MAX_OPERATION_VARIANT_NO');

        OperationCode:= GetOperationCode;

        if (MoveUp and (VariantNoField.AsInteger > 0)) or
           ((not MoveUp) and (VariantNoField.AsInteger < VarToInt(MaxVariantNoField.AsVariant))) then
          begin
            if MoveUp then
              Prior
            else
              Next;

            IncOperationVariantNo(not MoveUp);

            LocateOperationCode(OperationCode);
            IncOperationVariantNo(MoveUp);

            OldOperationNo:= -1;

            UnapprovePrompt:= False;
          end
        else   { if }
          begin
            OldOperationNo:= OperationNoField.AsInteger;
            NewOperationNo:= OldOperationNo + IncDelta[MoveUp];

            ReplaceOperationNo(OldOperationNo, -OldOperationNo);
            ReplaceOperationNo(NewOperationNo, OldOperationNo);
            ReplaceOperationNo(-OldOperationNo, NewOperationNo);

            LocateOperationCode(OperationCode);
          end;   { if }
      finally
        EnableControls;
      end;   { try }

      if UnapprovePrompt then
        begin
          UnapproveDataSet(cdsGridData, EmptyUnapproveInfo, [umDoc..umAllModelVariantsLineStagesAndOperationsDocs], True);

          if (OldOperationNo >= 0) then
            try
              cdsGridData.Locate(OperationNoField.FieldName + '; ' + VariantNoField.FieldName,
                VarArrayOf([OldOperationNo, 0]), []);

              UnapproveDataSet(cdsGridData, EmptyUnapproveInfo, [umDoc..umAllModelVariantsLineStagesAndOperationsDocs], True);
            finally
              LocateOperationCode(OperationCode);
            end;
        end;
    end;   { with }
end;

procedure TfmSpecModelVariantStageEdit.actMoveUpOperationUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetMoveUpOperationEnabled;
end;

procedure TfmSpecModelVariantStageEdit.actMoveUpOperationExecute(
  Sender: TObject);
begin
  inherited;
  MoveOperation(True, True);
end;

procedure TfmSpecModelVariantStageEdit.actMoveDownOperationUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetMoveDownOperationEnabled;
end;

procedure TfmSpecModelVariantStageEdit.actMoveDownOperationExecute(
  Sender: TObject);
begin
  inherited;
  MoveOperation(False, True);
end;

procedure TfmSpecModelVariantStageEdit.btnDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(EditMode, btnDocs, dotSpecStage, dsData.DataSet);
end;

procedure TfmSpecModelVariantStageEdit.btnOperationDocClick(
  Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    (Sender as TControl),
    dotSpecOperation,
    dsGridData.DataSet.FieldByName('DOC_BRANCH_CODE'),
    dsGridData.DataSet.FieldByName('DOC_CODE'),
    dsGridData.DataSet.FieldByName('SMVS_OPERATION_VARIANT_NO').AsInteger);
end;

procedure TfmSpecModelVariantStageEdit.btnProgramToolDocClick(
  Sender: TObject);
begin
  inherited;

  dmDocClient.OpenProductDoc(
    emReadOnly,
    (Sender as TControl),
    dsGridData.DataSet.FieldByName('PROGRAM_TOOL_PRODUCT_CODE').AsInteger);
end;

procedure TfmSpecModelVariantStageEdit.btnSpecificToolDocClick(
  Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(
    emReadOnly,
    (Sender as TControl),
    dsGridData.DataSet.FieldByName('SPECIFIC_TOOL_PRODUCT_CODE').AsInteger);
end;

procedure TfmSpecModelVariantStageEdit.btnTypicalToolDocClick(
  Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(
    emReadOnly,
    (Sender as TControl),
    dsGridData.DataSet.FieldByName('TYPICAL_TOOL_PRODUCT_CODE').AsInteger);
end;

procedure TfmSpecModelVariantStageEdit.Initialize;
begin
  inherited;

  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  FOlddmDocClientOnDocItemEdited:= dmDocClient.OnDocItemEdited;
  dmDocClient.OnDocItemEdited:= dmDocClientOnDocItemEdited;

  FGridSavePoint:= cdsGridData.SavePoint;
  cdsGridData.First;

  cdsGridDataOPERATION_TYPE_CODE:=
    cdsGridData.FieldByName('OPERATION_TYPE_CODE');
  cdsGridData_MIN_OPERATION_TYPE_CODE:=
    cdsGridData.FieldByName('_MIN_OPERATION_TYPE_CODE');
  cdsGridData_MAX_OPERATION_TYPE_CODE:=
    cdsGridData.FieldByName('_MAX_OPERATION_TYPE_CODE');
  cdsGridData_MAX_OPERATION_NO:=
    cdsGridData.FieldByName('_MAX_OPERATION_NO');
  cdsGridDataDEPT_CODE:=
    cdsGridData.FieldByName('DEPT_CODE');

  FInitialized:= True;
end;

procedure TfmSpecModelVariantStageEdit.Finalize;
begin
  inherited;
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
  dmDocClient.OnDocItemEdited:= FOlddmDocClientOnDocItemEdited;
end;

procedure TfmSpecModelVariantStageEdit.dmDocClientOnDataChanged(
  Sender: TObject);
var
  ActiveDocItemCount: Integer;
  ds: TDataSource;
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

      ds:= edtApproveCycleNo.DataSource;
      edtApproveCycleNo.DataSource:= nil;
      edtApproveCycleNo.DataSource:= ds;
    end;
end;

procedure TfmSpecModelVariantStageEdit.SetDBFrameReadOnly(
  AFrame: TDBFrame);
begin
  if (AFrame = frDetail) or (AFrame = frProduct) then
    AFrame.ReadOnly:= True
  else
    inherited;
end;

function TfmSpecModelVariantStageEdit.ShowEditForm(
  AEditMode: TEditMode): Boolean;
var
  b: TBookmark;
  MaxDetailTechQuantity: Real;
  ui: TUnapproveInfo;
begin
  with FVariantsDataSet do
    begin
      DisableControls;
      try
        b:= Bookmark;
        try
          if (FieldByName('SPEC_MODEL_VARIANT_NO').AsInteger = dsData.DataSet.FieldByName('SPEC_MODEL_VARIANT_NO').AsInteger) or
             Locate('SPEC_MODEL_VARIANT_NO', dsData.DataSet.FieldByName('SPEC_MODEL_VARIANT_NO').AsInteger, []) then
            MaxDetailTechQuantity:=
              FieldByName('MAX_TECH_QUANTITY').AsFloat *
              dsLines.DataSet.FieldByName('TOTAL_DETAIL_TECH_QUANTITY').AsFloat
          else
            MaxDetailTechQuantity:= 0;
        finally
          Bookmark:= b;
        end;  { try }
      finally
        EnableControls;
      end;  { try }
    end;  { with }

  Result:= TfmSMVSOperationEdit.ShowForm(dmDocClient, cdsGridData,
    AEditMode, doNone, dsLines.DataSet, dsData.DataSet, MaxDetailTechQuantity,
    FLineHasApprovedDocItems, ModelIdentifier, EditOperationTypeCode(AEditMode), ui);

  if Result then
    UpdateOperationVariantsDocData;

  if Result and (ui.UnapproveMethod >= FUnapproveMethod) then
    FUnapproveMethod:= ui.UnapproveMethod;

  if Result then
    begin
      UnapproveDataSet(cdsGridData, ui, [], True);
      UnapproveDataSet(cdsGridData, EmptyUnapproveInfo, [umDoc..umAllModelVariantsLineStagesAndOperationsDocs], True);
    end;

  if Result then
    UpdateStageIsAutoMovement;
end;

procedure TfmSpecModelVariantStageEdit.actInsertRecordExecute(
  Sender: TObject);
begin
//  inherited;     new behaviour

  CheckRequiredField(dsData.DataSet.FieldByName('DEPT_NAME'));

  PopupMenuFromButton(btnAddData, pmAdd);
end;

procedure TfmSpecModelVariantStageEdit.actOperationsInvestedValuesExecute(
  Sender: TObject);
var
  b: TBookmark;
  OperationInvestedValue: TOperationInvestedValue;
begin
  inherited;

  Assert(Assigned(FGetStageOperationInvestedValue));

  cdsOperationsInvestedValues.CreateDataSet;
  try
    cdsGridData.DisableControls;
    try
      b:= cdsGridData.Bookmark;
      try
        cdsGridData.First;
        while not cdsGridData.Eof do
          begin
            cdsOperationsInvestedValues.Append;
            try
              cdsOperationsInvestedValuesIS_ACTIVE.AsBoolean:=
                (cdsGridData.FieldByName(Prefix + '_OPERATION_VARIANT_NO').AsInteger = 0);

              cdsOperationsInvestedValues.AssignFields(cdsGridData);

              // ako ne e aktiven da stane null, ta da go preskachat agregatite
              cdsOperationsInvestedValuesIS_ACTIVE.AsVariant:=
                IntToVar(cdsOperationsInvestedValuesIS_ACTIVE.AsInteger);

              cdsOperationsInvestedValuesOPERATION_NO.AsVariant:=
                cdsGridData.FieldByName(Prefix + '_OPERATION_NO').AsVariant;
              cdsOperationsInvestedValuesOPERATION_VARIANT_NO.AsVariant:=
                cdsGridData.FieldByName(Prefix + '_OPERATION_VARIANT_NO').AsVariant;

              if cdsGridData.FieldByName('D_HOUR_PRICE').IsNull then
                cdsOperationsInvestedValuesDEPT_HOUR_PRICE.Clear
              else
                cdsOperationsInvestedValuesDEPT_HOUR_PRICE.AsFloat:=
                  cdsGridData.FieldByName('D_HOUR_PRICE').AsFloat +
                  cdsGridData.FieldByName('D_MAINTAINANCE_HOUR_PRICE').AsFloat;

              if (cdsGridData.FieldByName('OPERATION_TYPE_CODE').AsInteger = otNormal) then
                begin
                  OperationInvestedValue:= FGetStageOperationInvestedValue;

                  if FInvestedValueFilter.InvestedValueSingle then
                    OperationInvestedValue:= OperationInvestedValue / FInvestedValueFilter.ResultProductTechQuantity;

                  if OperationInvestedValue.HasSetup then
                    begin
                      cdsOperationsInvestedValuesSETUP_INVESTED_VALUE.AsFloat:=
                        OperationInvestedValue.SetupInvestedValue.Value;
                      cdsOperationsInvestedValuesSETUP_INVESTED_VALUE_II.AsBoolean:=
                        OperationInvestedValue.SetupInvestedValue.IsIncomplete;
                    end;

                  cdsOperationsInvestedValuesINVESTED_VALUE.AsFloat:=
                    OperationInvestedValue.DetailInvestedValue.Value;
                  cdsOperationsInvestedValuesINVESTED_VALUE_II.AsBoolean:=
                    OperationInvestedValue.DetailInvestedValue.IsIncomplete;

                  cdsOperationsInvestedValuesTOTAL_INVESTED_VALUE.AsFloat:=
                    OperationInvestedValue.TotalInvestedValue.Value;
                  cdsOperationsInvestedValuesTOTAL_INVESTED_VALUE_II.AsBoolean:=
                    OperationInvestedValue.TotalInvestedValue.IsIncomplete;
                end;

              cdsOperationsInvestedValues.Post;
            except
              cdsOperationsInvestedValues.Cancel;
              raise;
            end;

            cdsGridData.Next;
          end;
      finally
        cdsGridData.Bookmark:= b;
      end;
    finally
      cdsGridData.EnableControls;
    end;

    cdsOperationsInvestedValues.First;

    OperationsInvestedValuesClass.ShowForm(dmDocClient, dsData.DataSet,
      emReadOnly, doNone, False, cdsOperationsInvestedValues,
      (dsLines.DataSet as TAbmesClientDataSet), FVariantsDataSet, FInvestedValueFilter);
  finally
    cdsOperationsInvestedValues.Close;
  end;
end;

procedure TfmSpecModelVariantStageEdit.actAddOperationUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetAddOperationEnabled;
end;

procedure TfmSpecModelVariantStageEdit.actAddOperationExecute(
  Sender: TObject);
var
  RecCount: Integer;
  b: TBookmark;
begin
  inherited;

  PostInsertStage;
  
  if (VarToInt(cdsGridData_MAX_OPERATION_TYPE_CODE.AsVariant) = otEnd) then
    begin
      with cdsGridData do
        begin
          RecCount:= RecordCount;
          b:= Bookmark;

          Last;
          actInsertOperation.Execute;

          if (RecordCount = RecCount) then
            Bookmark:= b;
        end;  { with }
    end
  else
    begin
      NewOperationData.SetData(VarToInt(cdsGridData_MAX_OPERATION_NO.AsVariant) + 1, 0);
      DoShowEditForm(emInsert);
    end;
end;

procedure TfmSpecModelVariantStageEdit.actInsertOperationUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetInsertOperationEnabled;
end;

procedure TfmSpecModelVariantStageEdit.actInsertOperationExecute(
  Sender: TObject);
var
  InsertOperationNo: Integer;
  MaxOperationNo: Integer;
  i: Integer;
begin
  inherited;

  PostInsertStage;

  InsertOperationNo:= cdsGridData.FieldByName(Prefix + '_OPERATION_NO').AsInteger;
  MaxOperationNo:= VarToInt(cdsGridData_MAX_OPERATION_NO.AsVariant);

  NewOperationData.SetData(MaxOperationNo + 1, 0, -1, -1, InsertOperationNo);

  if DoShowEditForm(emInsert) then
    for i:= InsertOperationNo to MaxOperationNo do
      MoveOperation(True);
end;

procedure TfmSpecModelVariantStageEdit.actAddOperationVariantUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0) and
    (cdsGridDataOPERATION_TYPE_CODE.AsInteger = otNormal);
end;

procedure TfmSpecModelVariantStageEdit.actAddOperationVariantExecute(
  Sender: TObject);
begin
  inherited;

  PostInsertStage;

  NewOperationData.SetData(
    cdsGridData.FieldByName(Prefix + '_OPERATION_NO').AsInteger,
    VarToInt(cdsGridData.FieldByName('_MAX_OPERATION_VARIANT_NO').AsVariant) + 1,
    cdsGridData.FieldByName('DOC_BRANCH_CODE').AsInteger,
    cdsGridData.FieldByName('DOC_CODE').AsInteger,
    -1, -1,
    cdsGridData.FieldByName('HAS_DOCUMENTATION').AsBoolean,
    cdsGridData.FieldByName('DOC_EMPTINESS_REQUIREMENT_CODE').AsInteger,
    cdsGridData.FieldByName('DOC_IS_COMPLETE').AsBoolean,
    cdsGridData.FieldByName('UNAPPROVED_ACTIVE_DI_COUNT').AsInteger);
  DoShowEditForm(emInsert);
end;

procedure TfmSpecModelVariantStageEdit.actInsertOperationVariantUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0) and
    (cdsGridDataOPERATION_TYPE_CODE.AsInteger = otNormal);
end;

procedure TfmSpecModelVariantStageEdit.actInsertOperationVariantExecute(
  Sender: TObject);
var
  OperationNo: Integer;
  InsertOperationVariantNo: Integer;
  MaxOperationVariantNo: Integer;
  i: Integer;
begin
  inherited;

  PostInsertStage;

  OperationNo:= cdsGridData.FieldByName(Prefix + '_OPERATION_NO').AsInteger;
  InsertOperationVariantNo:= cdsGridData.FieldByName(Prefix + '_OPERATION_VARIANT_NO').AsInteger;
  MaxOperationVariantNo:= VarToInt(cdsGridData.FieldByName('_MAX_OPERATION_VARIANT_NO').AsVariant);

  NewOperationData.SetData(OperationNo, MaxOperationVariantNo + 1,
    cdsGridData.FieldByName('DOC_BRANCH_CODE').AsInteger,
    cdsGridData.FieldByName('DOC_CODE').AsInteger,
    OperationNo, InsertOperationVariantNo,
    cdsGridData.FieldByName('HAS_DOCUMENTATION').AsBoolean,
    cdsGridData.FieldByName('DOC_EMPTINESS_REQUIREMENT_CODE').AsInteger,
    cdsGridData.FieldByName('DOC_IS_COMPLETE').AsBoolean,
    cdsGridData.FieldByName('UNAPPROVED_ACTIVE_DI_COUNT').AsInteger);

  if DoShowEditForm(emInsert) then
    for i:= InsertOperationVariantNo to MaxOperationVariantNo do
      MoveOperation(True);
end;

procedure TfmSpecModelVariantStageEdit.actAddBeginOperationUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetAddBeginOperationEnabled;
end;

procedure TfmSpecModelVariantStageEdit.AddBeginOrEndOperation(
  AOperationType: Integer);
begin
  CheckProductionOrganizerProfessionConfigured;

  PostInsertStage;

  FNewOperationTypeCode:= AOperationType;
  try
    ShowEditForm(emInsert);
  finally
    FNewOperationTypeCode:= otNormal;    
  end;
end;

procedure TfmSpecModelVariantStageEdit.actAddBeginOperationExecute(
  Sender: TObject);
begin
  inherited;

  PostInsertStage;

  NewOperationData.SetData(0, 0);

  AddBeginOrEndOperation(otBegin);
end;

procedure TfmSpecModelVariantStageEdit.actAddEndOperationUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetAddEndOperationEnabled;
end;

procedure TfmSpecModelVariantStageEdit.actAddEndOperationExecute(
  Sender: TObject);
begin
  inherited;

  PostInsertStage;

  NewOperationData.SetData(VarToInt(cdsGridData_MAX_OPERATION_NO.AsVariant) + 1, 0);

  AddBeginOrEndOperation(otEnd);
end;

procedure TfmSpecModelVariantStageEdit.DoCancelUpdates;
begin
  inherited;
  cdsGridData.SavePoint:= FGridSavePoint;
end;

function TfmSpecModelVariantStageEdit.GetEditRecordEnabled: Boolean;
begin
  Result:=
    inherited GetEditRecordEnabled and
    OperationsEditable;
end;

procedure TfmSpecModelVariantStageEdit.actDelRecordExecute(
  Sender: TObject);
var
  MaxNo: Integer;
  i: Integer;
  SaveRecNo: Integer;
begin
//  inherited;

  if not ConfirmRecordDelete then
    Abort;

  with cdsGridData do
    begin
      DisableControls;
      try
        SaveRecNo:= RecNo;

        if (cdsGridData.FieldByName(Prefix + '_OPERATION_VARIANT_NO').AsInteger > 0) then
          Dec(SaveRecNo);

        if (cdsGridDataOPERATION_TYPE_CODE.AsInteger <> otEnd) then
          begin
            MaxNo:= VarToInt(cdsGridData.FieldByName('_MAX_OPERATION_VARIANT_NO').AsVariant);

            if (MaxNo > 0) then
              begin
                for i:= cdsGridData.FieldByName(Prefix + '_OPERATION_VARIANT_NO').AsInteger to MaxNo - 1 do
                  MoveOperation(False);
              end
            else  { if }
              begin
                if (cdsGridData.FieldByName(Prefix + '_OPERATION_NO').AsInteger > 0) then  // toia if triabva da se razkara, kato spre nachalnata or. operacia da ima no.1
                  begin
                    MaxNo:= VarToInt(cdsGridData_MAX_OPERATION_NO.AsVariant);
                    for i:= cdsGridData.FieldByName(Prefix + '_OPERATION_NO').AsInteger to MaxNo - 1 do
                      MoveOperation(False);
                  end;
              end;  { if }
          end;

        Delete;

        if (SaveRecNo > RecordCount) then
          Last
        else
          RecNo:= SaveRecNo;

        UpdateStageIsAutoMovement;
      finally
        EnableControls;
      end;   { try }

      UnapproveDataSet(cdsGridData, EmptyUnapproveInfo, [umRangeOperationsDocs..umAllModelVariantsLineStagesAndOperationsDocs], True);
    end;   { with }
end;

procedure TfmSpecModelVariantStageEdit.CheckProductionOrganizerProfessionConfigured;
begin
  if (LoginContext.ProductionOrganizerProfessionCode = 0) then
    raise Exception.Create(SProductionOrganizerProfessionCodeNotConfigured);
end;

procedure TfmSpecModelVariantStageEdit.actEditRecordUpdate(
  Sender: TObject);
begin
  (Sender as TAction).Enabled:= GetEditRecordEnabled;

  if GetGridRecordReadOnly then
    (Sender as TAction).Caption:= SReadOnlyCaption + SCaptionSuffix
  else
    (Sender as TAction).Caption:= SEditCaption + SCaptionSuffix;
end;

procedure TfmSpecModelVariantStageEdit.grdDataGetCellParams(
  Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);

  procedure SetToolRequirementFont(ToolRequirementField, ToolIsCompleteField: TField);
  var
    ToolIsComplete: Boolean;
  begin
    ToolIsComplete:= (ToolIsCompleteField.AsInteger = 1);

    if ToolIsComplete then
      AFont.Color:= clGreen
    else
      AFont.Color:= clRed;
  end;

begin
  inherited;

  if (Column.FieldName = '_SHOW_APPROVE_CYCLE_NO') then
    begin
      if (Column.Field.AsString <> '') and (Column.Field.AsString[1] = '(') then
        AFont.Color:= clRed
      else
        AFont.Color:= clGreen;
    end;

  if (Column.FieldName = 'PROGRAM_TOOL_REQUIREMENT_CODE') then
    SetToolRequirementFont(Column.Field, dsGridData.DataSet.FieldByName('PROGRAM_TOOL_IS_COMPLETE'));

  if (Column.FieldName = 'SPECIFIC_TOOL_REQUIREMENT_CODE') then
    SetToolRequirementFont(Column.Field, dsGridData.DataSet.FieldByName('SPECIFIC_TOOL_IS_COMPLETE'));

  if (Column.FieldName = 'TYPICAL_TOOL_REQUIREMENT_CODE') then
    SetToolRequirementFont(Column.Field, dsGridData.DataSet.FieldByName('TYPICAL_TOOL_IS_COMPLETE'));
end;

procedure TfmSpecModelVariantStageEdit.grdHeaderEnter(Sender: TObject);
begin
  inherited;
  ActiveControl:= grdData;
end;

function TfmSpecModelVariantStageEdit.GetOperationCode: Variant;
begin
  Result:= cdsGridData.FieldByName('SMVS_OPERATION_CODE').AsInteger;
end;

procedure TfmSpecModelVariantStageEdit.LocateOperationCode(
  AOperationCode: Variant);
begin
  cdsGridData.Locate('SMVS_OPERATION_CODE', AOperationCode, []);
end;

function TfmSpecModelVariantStageEdit.GetMoveUpOperationEnabled: Boolean;
var
  BeginOperationExists: Boolean;
begin
  BeginOperationExists:=
    cdsGridData.Active and
    (VarToInt(cdsGridData.FieldByName('_MIN_OPERATION_TYPE_CODE').AsVariant) = otBegin);

  Result:=
    cdsGridData.Active and
    (not (cdsGridData.Bof and cdsGridData.Eof)) and
    (cdsGridData.RecNo > 1 + Ord(BeginOperationExists)) and
    (cdsGridData.FieldByName('OPERATION_TYPE_CODE').AsInteger = otNormal) and
    (EditMode <> emReadOnly);
end;

function TfmSpecModelVariantStageEdit.GetMoveDownOperationEnabled: Boolean;
var
  EndOperationExists: Boolean;
begin
  EndOperationExists:=
    cdsGridData.Active and
    (VarToInt(cdsGridData.FieldByName('_MAX_OPERATION_TYPE_CODE').AsVariant) = otEnd);

  Result:=
    cdsGridData.Active and
    (not (cdsGridData.Bof and cdsGridData.Eof)) and
    (cdsGridData.RecNo < cdsGridData.RecordCount - Ord(EndOperationExists)) and
    (cdsGridData.FieldByName('OPERATION_TYPE_CODE').AsInteger = otNormal) and
    (EditMode <> emReadOnly);
end;

function TfmSpecModelVariantStageEdit.OperationsEditable: Boolean;
begin
  Result:= (LoginContext.ProductionLevelCode <> plStage);
end;

procedure TfmSpecModelVariantStageEdit.actPrintOperationsExecute(
  Sender: TObject);
var
  b: TBookmark;
begin
  inherited;
  with FVariantsDataSet do
    begin
      DisableControls;
      try
        b:= Bookmark;
        try
          Locate('SPEC_MODEL_VARIANT_NO',
            dsData.DataSet.FieldByName('SPEC_MODEL_VARIANT_NO').AsInteger, []);

          TrptSpecOperations.PrintReport((dsData.DataSet as TClientDataSet),
            (dsLines.DataSet as TClientDataSet), cdsGridData, True, -1, FVariantsDataSet);
        finally
          Bookmark:= b;
        end;  { try }
      finally
        EnableControls;
      end;  { try }
    end;  { with }          
end;

procedure TfmSpecModelVariantStageEdit.actPrintOperationsUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0);
end;

procedure TfmSpecModelVariantStageEdit.actProgramToolSpecDocStatusExecute(
  Sender: TObject);
begin
  inherited;
  TfmSpecDocStatus.ShowForm(nil,
    dsGridData.DataSet.FieldByName('PROGRAM_TOOL_PRODUCT_CODE').AsInteger, emReadOnly);
end;

procedure TfmSpecModelVariantStageEdit.actProgramToolSpecDocStatusUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not dsGridData.DataSet.FieldByName('PROGRAM_TOOL_PRODUCT_CODE').IsNull;
end;

procedure TfmSpecModelVariantStageEdit.actSpecificToolSpecDocStatusExecute(
  Sender: TObject);
begin
  inherited;
  TfmSpecDocStatus.ShowForm(nil,
    dsGridData.DataSet.FieldByName('SPECIFIC_TOOL_PRODUCT_CODE').AsInteger, emReadOnly);
end;

procedure TfmSpecModelVariantStageEdit.actSpecificToolSpecDocStatusUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not dsGridData.DataSet.FieldByName('SPECIFIC_TOOL_PRODUCT_CODE').IsNull;
end;

procedure TfmSpecModelVariantStageEdit.actTypicalToolSpecDocStatusExecute(
  Sender: TObject);
begin
  inherited;
  TfmSpecDocStatus.ShowForm(nil,
    dsGridData.DataSet.FieldByName('TYPICAL_TOOL_PRODUCT_CODE').AsInteger, emReadOnly);
end;

procedure TfmSpecModelVariantStageEdit.actTypicalToolSpecDocStatusUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not dsGridData.DataSet.FieldByName('TYPICAL_TOOL_PRODUCT_CODE').IsNull;
end;

procedure TfmSpecModelVariantStageEdit.actBaseGroupsExecute(
  Sender: TObject);
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

procedure TfmSpecModelVariantStageEdit.PostInsertStage;
begin
  if (dsData.State = dsInsert) then
    dsData.DataSet.Post;
end;

procedure TfmSpecModelVariantStageEdit.actAddOperationVariantLikeExecute(
  Sender: TObject);
begin
  inherited;

  PostInsertStage;

  NewOperationData.SetData(
    cdsGridData.FieldByName(Prefix + '_OPERATION_NO').AsInteger,
    VarToInt(cdsGridData.FieldByName('_MAX_OPERATION_VARIANT_NO').AsVariant) + 1,
    cdsGridData.FieldByName('DOC_BRANCH_CODE').AsInteger,
    cdsGridData.FieldByName('DOC_CODE').AsInteger,
    -1, -1, 
    cdsGridData.FieldByName('HAS_DOCUMENTATION').AsBoolean,
    cdsGridData.FieldByName('DOC_EMPTINESS_REQUIREMENT_CODE').AsInteger,
    cdsGridData.FieldByName('DOC_IS_COMPLETE').AsBoolean,
    cdsGridData.FieldByName('UNAPPROVED_ACTIVE_DI_COUNT').AsInteger);
  NewOperationData.CreateLike:= True;
  
  DoShowEditForm(emInsert);
end;

function TfmSpecModelVariantStageEdit.GetAddBeginOperationEnabled: Boolean;
begin
  Result:=
    (EditMode <> emReadOnly) and
    cdsGridData.Active and
    (VarToInt(cdsGridData_MIN_OPERATION_TYPE_CODE.AsVariant) <> otBegin);
end;

function TfmSpecModelVariantStageEdit.GetAddEndOperationEnabled: Boolean;
begin
  Result:=
    (EditMode <> emReadOnly) and
    cdsGridData.Active and
    (VarToInt(cdsGridData_MAX_OPERATION_TYPE_CODE.AsVariant) <> otEnd);
end;

function TfmSpecModelVariantStageEdit.GetInsertOperationEnabled: Boolean;
begin
  Result:=
    (EditMode <> emReadOnly) and
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0) and
    (cdsGridDataOPERATION_TYPE_CODE.AsInteger <> otBegin);
end;

function TfmSpecModelVariantStageEdit.GetAddOperationEnabled: Boolean;
begin
  Result:=
    (EditMode <> emReadOnly) and
    cdsGridData.Active;
end;

function TfmSpecModelVariantStageEdit.GetInsertRecordEnabled: Boolean;
begin
  Result:=
    inherited GetInsertRecordEnabled and
    OperationsEditable;
end;

function TfmSpecModelVariantStageEdit.GetDelRecordEnabled: Boolean;
begin
  Result:=
    inherited GetDelRecordEnabled and
    OperationsEditable;
end;

procedure TfmSpecModelVariantStageEdit.actFormUpdate(Sender: TObject);
var
  ApproveCycleNo: string;
  ro: Boolean;
begin
  inherited;

  if edtApproveCycleNo.Field.DataSet.Active then
    ApproveCycleNo:= edtApproveCycleNo.Field.AsString
  else
    ApproveCycleNo:= '';

  if (ApproveCycleNo <> '') and (ApproveCycleNo[1] = '(') then
    edtApproveCycleNo.Font.Color:= clRed
  else
    edtApproveCycleNo.Font.Color:= clGreen;

  btnOperationDoc.Enabled:= dsGridData.DataSet.FieldByName('HAS_DOCUMENTATION').AsBoolean;
  btnProgramToolDoc.Enabled:= not dsGridData.DataSet.FieldByName('PROGRAM_TOOL_PRODUCT_CODE').IsNull;
  btnSpecificToolDoc.Enabled:= not dsGridData.DataSet.FieldByName('SPECIFIC_TOOL_PRODUCT_CODE').IsNull;
  btnTypicalToolDoc.Enabled:= not dsGridData.DataSet.FieldByName('TYPICAL_TOOL_PRODUCT_CODE').IsNull;

  SetControlReadOnly((EditMode = emReadOnly), cbSMVSType);

  SetControlsReadOnly(StageReadOnly, [
    edtTreatmentWorkdays,
    edtOutgoingWorkdays,
    chbIsAutoMovment]);

  ro:=
    (EditMode = emReadOnly) or
    not LoginContext.HasUserActivity(uaEditExternalWorkPrice);
  edtExternalWorkPrice.ReadOnly:= ro;
  edtExternalWorkPrice.Color:= ReadOnlyColors[ro];

  chbIsAutoMovment.Visible:= not OperationsEditable;
end;

procedure TfmSpecModelVariantStageEdit.dmDocClientOnDocItemEdited(
  DocItemUnapproved: Boolean);
begin
  if DocItemUnapproved then
    UnapproveDataSet(dsData.DataSet, EmptyUnapproveInfo,
      [umNone..umAllModelVariantsLineStagesAndOperationsDocs]-[umRangeOperationsDocs], False, True);

  FLineHasApprovedDocItems:=
    FLineHasApprovedDocItems or (not dmDocClient.cdsDocItemsAPPROVE_EMPLOYEE_CODE.IsNull);
end;

procedure TfmSpecModelVariantStageEdit.UnapproveDataSet(DataSet: TDataSet;
  DefaultUnapproveInfo: TUnapproveInfo; UnapproveMethods: TUnapproveMethods;
  ShowOperation, CurrentDocOnly: Boolean);
var
  ui: TUnapproveInfo;
  OperationShowNo: string;
  FromOperationNo: Integer;
  ToOperationNo: Integer;
  b: TBookmark;
  OperationNoField: TField;
  SaveCursor: TCursor;
begin
  if ShowOperation then
    OperationShowNo:= cdsGridData.FieldByName('_SHOW_NO').AsString
  else
    OperationShowNo:= '';

  if (DefaultUnapproveInfo.UnapproveMethod = umNone) then
    begin
      if FLineHasApprovedDocItems then
        ui:=
          UnapproveFormClass.SelectUnapproveMethod(dmDocClient,
            dsLines.DataSet.FieldByName('NO_AS_TEXT').AsString,
            edtStageNo.Field.AsInteger,
            OperationShowNo,
            ModelIdentifier,
            False,
            UnapproveMethods
          )
      else
        ui:= EmptyUnapproveInfo;
    end
  else
    ui:= DefaultUnapproveInfo;

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    if CurrentDocOnly then
      begin
        if (ui.UnapproveMethod <> umNone) then
          dmDocClient.UnapproveDocItems(
            dsData.DataSet.FieldByName('DOC_BRANCH_CODE').AsInteger,
            dsData.DataSet.FieldByName('DOC_CODE').AsInteger,
            (ui.UnapproveMethod <> umDocItemOnly), [dmDocClient.cdsDocItemsDOC_ITEM_CODE.AsInteger]);
      end
    else
      case ui.UnapproveMethod of
        umDocItemOnly, umDoc:
          dmDocClient.UnapproveDocItems(
            DataSet.FieldByName('DOC_BRANCH_CODE').AsInteger,
            DataSet.FieldByName('DOC_CODE').AsInteger,
            (ui.UnapproveMethod = umDoc), [dmDocClient.cdsDocItemsDOC_ITEM_CODE.AsInteger]);

        umRangeOperationsDocs..umAllModelVariantsLineStagesAndOperationsDocs:
          begin
            if (ui.UnapproveMethod = umRangeOperationsDocs) then
              begin
                FromOperationNo:= ui.FromOperationNo;
                ToOperationNo:= ui.ToOperationNo;
              end
            else
              begin
                dmDocClient.UnapproveDocItems(
                  dsData.DataSet.FieldByName('DOC_BRANCH_CODE').AsInteger,
                  dsData.DataSet.FieldByName('DOC_CODE').AsInteger,
                  True, []);

                FromOperationNo:= -1;
                ToOperationNo:= MaxInt;
              end;

            with cdsGridData do
              begin
                DisableControls;
                try
                  OperationNoField:= FieldByName(Prefix + '_OPERATION_NO');

                  b:= Bookmark;
                  try
                    First;
                    while not Eof do
                      begin
                        if (OperationNoField.AsInteger >= FromOperationNo) and
                           (OperationNoField.AsInteger <= ToOperationNo) then
                          dmDocClient.UnapproveDocItems(
                            FieldByName('DOC_BRANCH_CODE').AsInteger,
                            FieldByName('DOC_CODE').AsInteger,
                            True, []);

                        Edit;
                        try
                          FieldByName('UNAPPROVED_ACTIVE_DI_COUNT').AsInteger:=
                            dmDocClient.DSDocItemCount(cdsGridData, True);
                          Post;
                        except
                          Cancel;
                          raise;
                        end;  { try }

                        Next;
                      end;  { while }
                  finally
                    Bookmark:= b;
                  end;  { try }
                finally
                  EnableControls;
                end;  { try }
              end;  { with }

            if (ui.UnapproveMethod >= umLineStagesAndOperationsDocs) and
               (ui.UnapproveMethod >= FUnapproveMethod) then
              FUnapproveMethod:= ui.UnapproveMethod;
          end;
      end;
  finally
    Screen.Cursor:= SaveCursor;
  end;  { cursor try }
end;

procedure TfmSpecModelVariantStageEdit.UpdateOperationVariantsDocData;
var
  SaveCursor: TCursor;
  b: TBookmark;
  HasDocumentationField: TField;
  DocEmptinessRequirementField: TField;
  DocIsCompleteField: TField;
  UnapprovedActiveDICountField: TField;
  OperationNoField: TField;
  HasDocumentation: Boolean;
  DocEmptinessRequirementCode: Integer;
  DocIsComplete: Boolean;
  UnapprovedActiveDICount: Integer;
  OperationNo: Integer;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    with cdsGridData do
      begin
        DisableControls;
        try
          b:= Bookmark;
          try
            HasDocumentationField:= cdsGridData.FieldByName('HAS_DOCUMENTATION');
            DocEmptinessRequirementField:= cdsGridData.FieldByName('DOC_EMPTINESS_REQUIREMENT_CODE');
            DocIsCompleteField:= cdsGridData.FieldByName('DOC_IS_COMPLETE');
            UnapprovedActiveDICountField:= cdsGridData.FieldByName('UNAPPROVED_ACTIVE_DI_COUNT');
            OperationNoField:= cdsGridData.FieldByName(Prefix + '_OPERATION_NO');

            HasDocumentation:= HasDocumentationField.AsBoolean;
            DocEmptinessRequirementCode:= DocEmptinessRequirementField.AsInteger;
            DocIsComplete:= DocIsCompleteField.AsBoolean;
            UnapprovedActiveDICount:= UnapprovedActiveDICountField.AsInteger;
            OperationNo:= OperationNoField.AsInteger;

            First;
            while not Eof do
              begin
                if (OperationNoField.AsInteger = OperationNo) then
                  begin
                    Edit;
                    try
                      HasDocumentationField.AsBoolean:= HasDocumentation;
                      DocEmptinessRequirementField.AsInteger:= DocEmptinessRequirementCode;
                      DocIsCompleteField.AsBoolean:= DocIsComplete;
                      UnapprovedActiveDICountField.AsInteger:= UnapprovedActiveDICount;

                      Post;
                    except
                      Cancel;
                      raise;
                    end;  { try }
                  end;

                Next;
              end;  { while }
          finally
            Bookmark:= b;
          end;  { try }
        finally
          EnableControls;
        end;  { try }
      end;  { with }
  finally
    Screen.Cursor:= SaveCursor;
  end;  { cursor try }
end;

procedure TfmSpecModelVariantStageEdit.UpdateStageIsAutoMovement;
var
  OperationNoField: TField;
  OperationNo: Integer;
  IsAutoMovement: Boolean;
begin
  if not cdsGridData.IsEmpty then
    cdsGridData.TempDisableControls/
      cdsGridData.PreserveRecNo/
        procedure begin
          cdsGridData.Last;

          OperationNoField:= cdsGridData.FieldByName(Prefix + '_OPERATION_NO');
          OperationNo:= OperationNoField.AsInteger;

          IsAutoMovement:= False;
          cdsGridData.ForEach/
            procedure begin
              if (OperationNoField.AsInteger = OperationNo) then
                IsAutoMovement:= IsAutoMovement or cdsGridData.FieldByName('IS_AUTO_MOVEMENT').AsBoolean;
            end;

          if (dsData.DataSet.FieldByName('IS_AUTO_MOVEMENT').AsBoolean <> IsAutoMovement) then
            begin
              CheckEditMode(dsData.DataSet);
              dsData.DataSet.FieldByName('IS_AUTO_MOVEMENT').AsBoolean:= IsAutoMovement;
            end;
        end;
end;

end.



