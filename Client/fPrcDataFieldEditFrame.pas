unit fPrcDataFieldEditFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFieldEditFrame, DB, ActnList, AbmesDBGrid, GridsEh, DBGridEh,
  AbmesClientDataSet, DBClient, uPrcDeclarations, uPrcData, StdCtrls,
  ExtCtrls, uClientPrcData, ComCtrls, ToolWin, AbmesFields, Menus, Buttons,
  rPrcDataReport, uSection, Generics.Collections, uClientPrcUtils,
  ImgList, uPrcUtils, uNestProc, fBaseFrame, DBGridEhGrouping, fGridTreeListExpanderFrame,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, System.ImageList, EhLibVCL,
  DBAxisGridsEh, System.Actions;

type
  TPrcEditMode = (pemNormal, pemQuick);
  TNodeExpandedStates = TDictionary<string, Boolean>;

type
  TfrPrcDataFieldEditFrame = class(TFieldEditFrame)
    pnlPrcDataTop: TPanel;
    pnlPrcDataMain: TPanel;
    cdsTree: TAbmesClientDataSet;
    cdsTreePRC_OBJECT_SHORT_NAME: TAbmesWideStringField;
    cdsTreePRC_OBJECT_NAME: TAbmesWideStringField;
    cdsTreePRC_OBJECT_CODE: TAbmesWideStringField;
    dsTree: TDataSource;
    tlbPrcDataQuickAdd: TToolBar;
    btnToggleQuickAdd: TToolButton;
    actToggleQuickAdd: TAction;
    cdsTreeLEVEL_NAME: TAbmesWideStringField;
    actPrcDataQuickAdd: TAction;
    actPrcDataDelete: TAction;
    cdsTreeVISUAL_PARENT_PRC_OBJECT_CODE: TAbmesWideStringField;
    cdsTreePRC_OBJECT_FORMATTED_NO: TAbmesWideStringField;
    cdsTreeBEGIN_DATE: TAbmesDateTimeField;
    cdsTreeEND_DATE: TAbmesDateTimeField;
    tlbPrcDataTopButtons: TToolBar;
    btnPrcDataDelete: TToolButton;
    btnPrcDataAdd: TToolButton;
    btnPrcDataEdit: TToolButton;
    actPrcDataEdit: TAction;
    cdsTreeSECONDARY_CHILD_LEVEL_NAME: TAbmesWideStringField;
    actPrcDataAddChildLevel: TAction;
    cdsTreeDOC_BRANCH_CODE: TAbmesFloatField;
    cdsTreeDOC_CODE: TAbmesFloatField;
    cdsTreeHAS_DOC_ITEMS: TAbmesFloatField;
    tlbDocs: TToolBar;
    sepDocs: TToolButton;
    btnPrcDataDoc: TToolButton;
    actPrcDataDoc: TAction;
    pnlPrcDataDocLabel: TPanel;
    cdsTreeSORT_PRC_OBJECT_FORMATTED_NO: TAbmesWideStringField;
    actPastProcesses: TAction;
    actPresentProcesses: TAction;
    actFutureProcesses: TAction;
    actToggleCurrentDateFilter: TAction;
    tlbCurrentDateFilter: TToolBar;
    btnFutureProcesses: TSpeedButton;
    btnPresentProcesses: TSpeedButton;
    btnPastProcesses: TSpeedButton;
    btnToggleCurrentDateFilter: TSpeedButton;
    sepFilterButton: TToolButton;
    cdsTreePRC_OBJECT_IMAGE_INDEX: TAbmesFloatField;
    cdsTreeIS_FILTER_ACCEPTED: TAbmesFloatField;
    cdsTreeIS_IN_PRC_DATA: TAbmesFloatField;
    cdsTreePRC_OP_REGIME_CODE: TAbmesFloatField;
    cdsPrcOpRegimes: TAbmesClientDataSet;
    cdsPrcOpRegimesPRC_OP_REGIME_CODE: TAbmesFloatField;
    cdsPrcOpRegimesPRC_OP_REGIME_NO: TAbmesFloatField;
    cdsPrcOpRegimesPRC_OP_REGIME_NAME: TAbmesWideStringField;
    cdsPrcOpRegimesPRC_OP_REGIME_ABBREV: TAbmesWideStringField;
    cdsPrcLearningStatuses: TAbmesClientDataSet;
    cdsPrcLearningStatusesPRC_LEARNING_STATUS_CODE: TAbmesFloatField;
    cdsPrcLearningStatusesPRC_LEARNING_STATUS_NO: TAbmesFloatField;
    cdsPrcLearningStatusesPRC_LEARNING_STATUS_NAME: TAbmesWideStringField;
    cdsTreePRC_LEARNING_STATUS_CODE: TAbmesFloatField;
    cdsTree_PRC_LEARNING_STATUS_NAME: TAbmesWideStringField;
    cdsTreeSTATUS_EXISTANCE_MONTHS: TAbmesFloatField;
    cdsTreeSTATUS_DATE: TAbmesSQLTimeStampField;
    tlbIntersectionFilter: TToolBar;
    sepIntersectionFilter: TToolButton;
    btnToggleIntersectionFilterOn: TSpeedButton;
    btnToggleIntersectionFitlerOff: TSpeedButton;
    actSetIntersectionFilterOn: TAction;
    actSetIntersectionFilterOff: TAction;
    sepCurrentDateFilter: TToolButton;
    tlbExcelExport: TToolBar;
    btnExcelExport: TToolButton;
    actExcelExport: TAction;
    sepExcelExport: TToolButton;
    btnPrintPrcData: TToolButton;
    actPrintPrcData: TAction;
    cdsTreeIS_LAST_CHILD: TAbmesFloatField;
    cdsTreeVISUAL_LEVEL_NO: TAbmesFloatField;
    cdsTree_PRINT_DATE_INTERVAL: TAbmesWideStringField;
    cdsTree_PRINT_STATUS_EXISTANCE_MONTHS: TAbmesWideStringField;
    cdsTree_PRINT_PRC_LEARNING_STATUS: TAbmesWideStringField;
    cdsTree_PRINT_PRC_STATUS_DATE: TAbmesWideStringField;
    tlbSpecDocStatus: TToolBar;
    sepSpecDocStatus: TToolButton;
    btnSpecDocStatus: TToolButton;
    actPrcDataSpecDocStatus: TAction;
    cdsTreeDOC_SPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsTreePRC_RING_NO: TAbmesFloatField;
    cdsTreePRC_RING_LOCAL_NO: TAbmesFloatField;
    cdsTreePRC_OBJECT_TREE_DISPLAY_NAME: TAbmesWideStringField;
    sepToggleQuickAdd: TToolButton;
    btnPrcDataAddAll: TToolButton;
    actPrcDataAddAll: TAction;
    btnPrcDataDeleteAll: TToolButton;
    actPrcDataDeleteAll: TAction;
    sepAddDeleteAll: TToolButton;
    btnAddBranch: TToolButton;
    actPrcDataAddBranch: TAction;
    btnDeleteBranch: TToolButton;
    actDeleteBranch: TAction;
    cdsTreePRC_ORG_DISTRIB_STATUS_CODE: TAbmesFloatField;
    cdsTreePRC_ORG_DISTRIBUTION_COUNT: TAbmesFloatField;
    btnToggleRollup: TToolButton;
    actToggleRollup: TAction;
    ilLocalPrcImages: TImageList;
    sepToggleRollup: TToolButton;
    grdProcesses: TAbmesDBGrid;
    cdsTreeHAS_CHILDREN: TAbmesFloatField;
    frGridTreeListExpander: TfrGridTreeListExpanderFrame;
    alCopyPaste: TActionList;
    pmCopyPaste: TPopupMenu;
    miCopy: TMenuItem;
    miPaste: TMenuItem;
    actCopy: TAction;
    actPaste: TAction;    procedure actToggleQuickAddExecute(Sender: TObject);
    procedure actPrcDataQuickAddExecute(Sender: TObject);
    procedure actPrcDataDeleteExecute(Sender: TObject);
    procedure actPrcDataDeleteUpdate(Sender: TObject);
    procedure actPrcDataQuickAddUpdate(Sender: TObject);
    procedure actFrameUpdate(Sender: TObject);
    procedure actPrcDataEditExecute(Sender: TObject);
    procedure actPrcDataEditUpdate(Sender: TObject);
    procedure actPrcDataAddChildLevelUpdate(Sender: TObject);
    procedure actPrcDataAddChildLevelExecute(Sender: TObject);
    procedure actPrcDataDocUpdate(Sender: TObject);
    procedure actPrcDataDocExecute(Sender: TObject);
    procedure actToggleQuickAddUpdate(Sender: TObject);
    procedure cdsTreeBEGIN_DATEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actPastProcessesExecute(Sender: TObject);
    procedure actPresentProcessesExecute(Sender: TObject);
    procedure actFutureProcessesExecute(Sender: TObject);
    procedure cdsTreeFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure actPastProcessesUpdate(Sender: TObject);
    procedure actPresentProcessesUpdate(Sender: TObject);
    procedure actFutureProcessesUpdate(Sender: TObject);
    procedure actToggleCurrentDateFilterUpdate(Sender: TObject);
    procedure actToggleCurrentDateFilterExecute(Sender: TObject);
    procedure cdsTreeSTATUS_EXISTANCE_MONTHSGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure actSetIntersectionFilterOnUpdate(Sender: TObject);
    procedure actSetIntersectionFilterOffUpdate(Sender: TObject);
    procedure actSetIntersectionFilterOnExecute(Sender: TObject);
    procedure actSetIntersectionFilterOffExecute(Sender: TObject);
    procedure actExcelExportUpdate(Sender: TObject);
    procedure actExcelExportExecute(Sender: TObject);
    procedure actPrintPrcDataExecute(Sender: TObject);
    procedure actPrintPrcDataUpdate(Sender: TObject);
    procedure actPrcDataSpecDocStatusUpdate(Sender: TObject);
    procedure actPrcDataSpecDocStatusExecute(Sender: TObject);
    procedure actPrcDataAddAllUpdate(Sender: TObject);
    procedure actPrcDataAddAllExecute(Sender: TObject);
    procedure actPrcDataDeleteAllExecute(Sender: TObject);
    procedure actPrcDataDeleteAllUpdate(Sender: TObject);
    procedure actPrcDataAddBranchUpdate(Sender: TObject);
    procedure actPrcDataAddBranchExecute(Sender: TObject);
    procedure actDeleteBranchUpdate(Sender: TObject);
    procedure actDeleteBranchExecute(Sender: TObject);
    procedure actToggleRollupExecute(Sender: TObject);
    procedure actToggleRollupUpdate(Sender: TObject);
    procedure grdProcessesDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure grdProcessesDblClick(Sender: TObject);
    procedure grdProcessesGetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
    procedure grdProcessesDataHintShow(Sender: TCustomDBGridEh; CursorPos: TPoint; Cell: TGridCoord;
      InCellCursorPos: TPoint; Column: TColumnEh; var Params: TDBGridEhDataHintParams; var Processed: Boolean);
    procedure actCopyExecute(Sender: TObject);
    procedure actCopyUpdate(Sender: TObject);
    procedure actPasteExecute(Sender: TObject);
    procedure actPasteUpdate(Sender: TObject);
  private
    FPrcData: TClientProcessOwnerData;
    FQuickAddPrcData: TClientProcessOwnerData;
    FPrcEditMode: TPrcEditMode;
    FSavedOwnerDataSetBeforePost: TDataSetNotifyEvent;
    FSavedOwnerDataSetBeforeCancel: TDataSetNotifyEvent;
    FSavedOwnerDataSetAfterCancel: TDataSetNotifyEvent;
    FOwnerDisplayName: string;
    FFilterPastProcesses: Boolean;
    FFilterPresentProcesses: Boolean;
    FFilterFutureProcesses: Boolean;
    FSavedOwnerLearningBeginDateFieldOnChange: TFieldNotifyEvent;
    FSavedOwnerLearningEndDateFieldOnChange: TFieldNotifyEvent;
    FIsIntersectionFilterEnabled: Boolean;
    FPrcDataReportClass: TPrcDataReportClass;
    FCancelingOwnerDataSet: Boolean;
    FOwnerNameField: TField;
    FOwnerShortNameField: TField;
    FSavedOwnerNameFieldOnChange: TFieldNotifyEvent;
    FSavedOwnerShortNameFieldOnChange: TFieldNotifyEvent;
    FSavedOwnerBeginDateFieldOnChange: TFieldNotifyEvent;
    FSavedOwnerEndDateFieldOnChange: TFieldNotifyEvent;
    FIsDataModified: Boolean;
    FMassAddingSection: TSinglePassSection;
    FMassDeletingSection: TSinglePassSection;
    FDisableUpdatesSection: TMultiPassSection;
    FcdsTreeDisableControlsSection: TMultiPassSection;
    FPreserveNodeExpandedStatesSection: TMultiPassSection;
    FPastePrcDataSection: TSinglePassSection;
    FSavedNodesExpandedState: TNodeExpandedStates;
    FDefaultPrcOrgDistributionStatus: TPrcOrgDistributionStatus;
    FIsRolledUp: Boolean;
    FRollupColumnsCreated: Boolean;
    FDataChangeSection: TTrySinglePassSection;
    FTempPrcOwner: TPrcOwner;
    FIsProcessOwnerInitialized: Boolean;
    coBEGIN_DATE: TColumnEh;
    co_PRC_LEARNING_STATUS_NAME: TColumnEh;
    coSTATUS_DATE: TColumnEh;
    coSTATUS_EXISTANCE_MONTHS: TColumnEh;
    coPRC_ORG_DISTRIB_STATUS_CODE: TColumnEh;
    procedure CheckTreeDataSetOpened;
    procedure cdsLevelDataAfterDeletePost(DataSet: TDataSet);
    procedure RefreshTree(ACovertToTreeList: Boolean = True);
    procedure cdsLevelDataNewRecord(DataSet: TDataSet);
    function AllFieldsAssigned: Boolean;
    procedure CheckTreeDataSetClosed;
    procedure SetProcessOwner(AValue: TProcessOwner);
    function GetProcessOwner: TProcessOwner;
    procedure OwnerDataSetBeforePost(DataSet: TDataSet);
    procedure OwnerDataSetBeforeCancel(DataSet: TDataSet);
    procedure OwnerDataSetAfterCancel(DataSet: TDataSet);
    procedure cdsLeveDataBeforePost(DataSet: TDataSet);
    procedure OwnerLearningBeginDateFieldOnChange(Sender: TField);
    procedure OwnerLearningEndDateFieldOnChange(Sender: TField);
    procedure OwnerNameFieldOnChange(Sender: TField);
    procedure OwnerShortNameFieldOnChange(Sender: TField);
    procedure RefreshOwnerAsRoot;
    procedure OverrideDateIntervalFieldOnChange(Sender: TField);
    procedure OwnerBeginDateFieldOnChange(Sender: TField);
    procedure OwnerEndDateFieldOnChange(Sender: TField);
    procedure OwnerDateIntervalFieldOnChange(Sender: TField; const APrcDateIntervalFieldName: string);
    function CanAddCurrentRecord: Boolean;
    function CanInsertOrDeleteRecords: Boolean;
    procedure AddRecords(const AParentPrcObjectCode: string);
    function IsCurrentRecordDescendant(const AParentPrcObjectCode: string): Boolean;
    function IsCurrentRecordInPrcData: Boolean;
    procedure DeleteRecords(const AParentPrcObjectCode: string);
    function IsDescendant(const AParentPrcObjectCode, ANodePrcObjectCode: string): Boolean;
    procedure DeleteLevelRecords(ALevel: TClientProcessLevelData; const AParentPrcObjectCode: string);
    procedure RestoreNodeExpandedStates;
    procedure SaveNodeExpandedStates;
    procedure AddRollupColumn(const AFieldName: string; ACode: Integer; const ACaption: string; const AHint: string);
    procedure AddRollupField(const AFieldName: string; ACode: Integer; const ADisplayLabel: string);
    function IsDistributionStatusColumn(AColumn: TColumnEh): Boolean;
    procedure CreateRollupComponents;
    function IsRelevantColumn(AColumn: TColumnEh): Boolean;
    function GetRollupFieldCode(AField: TField): Integer;
    function GetRollupColumnCode(AColumn: TColumnEh): Integer;
    function IsShownRollupColumn(AColumn: TColumnEh): Boolean;
    function IsPrcObjectImageIndexColumn(AColumn: TColumnEh): Boolean;
    function GetFocusedField(AField: TField): TField;
    function TempUnrollUp(AConvertToTreeList: Boolean = False): TNestProcRec;
    function GetRollupField(ARollupField: TField; const AEquivalentFieldName: string): TField;
    procedure AddOwnerAsRoot;
    procedure InternalRefreshTree(AParentPrcNode: TPrcNode);
    procedure LocatePrcObject(const APrcObjectCode: string);
    procedure AppendTreeRecord(APrcNode: TPrcNode);
    procedure AssignLearningStatusFields(ALevel: TClientProcessLevelData);
    procedure EditCurrentRolledUpRecord(APrcNode: TPrcNode);
    function IsFilterAccepted(APrcNode: TPrcNode): Boolean;
    procedure SetRecordsIsLastChildField;
    function PreserveSelectedPrcObject: TNestProcRec;
    function GetChildRollupRelevantLevel(AParentLevel: TClientProcessLevelData): TClientProcessLevelData;
    function HasOwner: Boolean;
    procedure FinalizeProcessOwner;
    procedure InitializeProcessOwner;
    procedure CheckProcessOwnerInitialized;
    procedure PrcOrgDistributionStatusCodeFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    function IsDistributionStatusField(AField: TField): Boolean;
    function IsRollupField(AField: TField): Boolean;
    procedure PrcObjectImageIndexFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    function IsPrcObjectImageIndexField(AField: TField): Boolean;
    function ColumnByFieldName(const AFieldName: string): TColumnEh;
    function MustExpandNode(const ANodePrcObjectCode: string): Boolean;
    procedure LoadQuickAddPrcData;
  protected
    procedure DataChange(Sender: TObject); override;
    procedure UpdateData(Sender: TObject); override;
  public
    procedure DeleteAllPrcData;
    procedure Initialize; override;
    procedure Finalize; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    property ProcessOwner: TProcessOwner read GetProcessOwner write SetProcessOwner;
    property OwnerDisplayName: string read FOwnerDisplayName write FOwnerDisplayName;
    property PrcDataReportClass: TPrcDataReportClass read FPrcDataReportClass write FPrcDataReportClass;
    property OwnerNameField: TField read FOwnerNameField write FOwnerNameField;
    property OwnerShortNameField: TField read FOwnerShortNameField write FOwnerShortNameField;
    property IsDataModified: Boolean read FIsDataModified;
    property DefaultPrcOrgDistributionStatus: TPrcOrgDistributionStatus read FDefaultPrcOrgDistributionStatus write FDefaultPrcOrgDistributionStatus;
    function GetSelectedPrcObjectCode(ALevel: TProcessLevel): Variant;
  end;

implementation

uses
  dMain, uClientUtils, uUtils, uPrcEditForms, fEditForm,
  Math, uClientTypes, uToolbarUtils, DBCtrls, uClientDateTime,
  fPrcActionLearningStatuses, fDBDataForm, DateUtils, uExcelExport,
  fSpecDocStatus, DBConsts, StrUtils, JclStrings, MemTableEh,
  uAbmesDBGridHelpers, uTreeListUtils;

{$R *.dfm}

resourcestring
  SConfirmDeleteRecord = 'Потвърдете изтриване на запис';
  SConfirmAddRecord = 'Потвърдете добавяне на запис';
  SCannotDeleteProcessObjectWithDescendants = 'Не може да изтривате запис, съдържащ други записи';
  SDateIntervalIsNotInOwnerDateInterval = 'Времевият Интервал трябва да попада във Времевия Интервал на %s';
  SIncompleteRecordExists = 'Процесният обхват е непълен';
  SMonths = 'месеца';
  SMonth = 'месец';
  SConfirmAddAllRecords = 'Потвърдете добавяне на всички';
  SConfirmDeleteAllRecords = 'Потвърдете изтриване на всички';
  SConfirmPastePrcData = 'Съществуващите записи ще бъдат изтрити. Потвърдете копиране от буфера.';
  SCannotAddProcessBecauseOfImpossibleDateInterval = 'Не може да добавите запис поради несъвместимост (некоректност) на наследения Времевия Интервал';

type
  ERequiredFieldIsNull = class(Exception);

const
  DateIntervalBackgroundColor = $00F5E6CB;
  FilteredRecordsColor = $00598AFF;
  FilteredRecordsImageIndex = 0;

const
  RollupColumnFieldNames: array[1..7] of string = (
    'PRC_OBJECT_IMAGE_INDEX',
    'PRC_ORG_DISTRIB_STATUS_CODE',
    'PRC_ORG_DISTRIBUTION_COUNT',
    'PRC_OBJECT_CODE',
    'IS_IN_PRC_DATA',
    'LEVEL_NAME',
    'IS_FILTER_ACCEPTED');

  RollupNonColumnFieldNames: array[1..7] of string = (
    'DOC_BRANCH_CODE',
    'DOC_CODE',
    'HAS_DOC_ITEMS',
    'DOC_SPEC_PRODUCT_CODE',
    'PRC_OBJECT_FORMATTED_NO',
    'PRC_OBJECT_NAME',
    'PRC_OBJECT_SHORT_NAME');

var
  AllRollupFieldNames: TStringArray;

{ TfrPrcDataFieldEditFrame }

function TfrPrcDataFieldEditFrame.HasOwner: Boolean;
begin
  Result:= Assigned(FPrcData);
end;

procedure TfrPrcDataFieldEditFrame.OverrideDateIntervalFieldOnChange(Sender: TField);

  function GetInheritedBeginDateValue: TDateTime;
  var
    Level: TClientProcessLevelData;
    QuickAddLevel: TClientProcessLevelData;
  begin
    Result:= dsData.DataSet.FieldByName(FPrcData.BeginDateFieldName).AsDateTime;
    if FQuickAddPrcData.HasDateIntervalFields then
      begin
        Level:= FPrcData.LevelByDataSet(Sender.DataSet);
        QuickAddLevel:= FQuickAddPrcData.LevelByName(Level.Name);
        if QuickAddLevel.CanHaveDateIntervalFields and QuickAddLevel.Locate(Level.FullStrKeyValue) then
          Result:= Max(Result, QuickAddLevel.cdsLevelData.FieldByName(FQuickAddPrcData.BeginDateFieldName).AsDateTime);
      end;
  end;

  function GetInheritedEndDateValue: TDateTime;
  var
    Level: TClientProcessLevelData;
    QuickAddLevel: TClientProcessLevelData;
  begin
    Result:= dsData.DataSet.FieldByName(FPrcData.EndDateFieldName).AsDateTime;
    if FQuickAddPrcData.HasDateIntervalFields then
      begin
        Level:= FPrcData.LevelByDataSet(Sender.DataSet);
        QuickAddLevel:= FQuickAddPrcData.LevelByName(Level.Name);
        if QuickAddLevel.CanHaveDateIntervalFields and QuickAddLevel.Locate(Level.FullStrKeyValue) then
          Result:= Min(Result, QuickAddLevel.cdsLevelData.FieldByName(FQuickAddPrcData.EndDateFieldName).AsDateTime);
      end;
  end;

var
  BeginDate: TDateTime;
  EndDate: TDateTime;

begin
  if not Sender.AsBoolean then
    begin
      if not Assigned(FQuickAddPrcData) then
        LoadQuickAddPrcData;

      BeginDate:= GetInheritedBeginDateValue;
      EndDate:= GetInheritedEndDateValue;

      if (BeginDate > EndDate) then
        raise Exception.Create(SCannotAddProcessBecauseOfImpossibleDateInterval);

      Sender.DataSet.FieldByName('BEGIN_DATE').AsDateTime:= BeginDate;
      Sender.DataSet.FieldByName('END_DATE').AsDateTime:= EndDate;
    end;
end;

procedure TfrPrcDataFieldEditFrame.cdsLeveDataBeforePost(DataSet: TDataSet);
var
  Level: TClientProcessLevelData;
begin
  Level:= FPrcData.LevelByDataSet(DataSet);

  CheckRequiredFields(DataSet);

  Level.SetFullStrKeyValueFields;

  if FPrcData.HasDateIntervalValidator and FPrcData.HasDateIntervalFields and Level.CanHaveDateIntervalFields then
    if (DataSet.FieldByName('BEGIN_DATE').AsDateTime < dsData.DataSet.FieldByName(FPrcData.BeginDateFieldName).AsDateTime) or
       (DataSet.FieldByName('END_DATE').AsDateTime > dsData.DataSet.FieldByName(FPrcData.EndDateFieldName).AsDateTime) then
      raise Exception.CreateFmt(SDateIntervalIsNotInOwnerDateInterval, [OwnerDisplayName]);
end;

procedure TfrPrcDataFieldEditFrame.OwnerDataSetBeforePost(DataSet: TDataSet);
var
  Level: TClientProcessLevelData;
  ChildLevel: TClientProcessLevelData;
  f: TField;
  IsComplete: Boolean;
begin
  if FPrcData.HasDateIntervalValidator and FPrcData.HasDateIntervalFields then
    for Level in FPrcData.LevelsSet do
      if Level.CanHaveDateIntervalFields then
        begin
          Level.cdsLevelData.First;
          while not Level.cdsLevelData.Eof do
            begin
              if (Level.cdsLevelData.FieldByName('BEGIN_DATE').AsDateTime < dsData.DataSet.FieldByName(FPrcData.BeginDateFieldName).AsDateTime) or
                 (Level.cdsLevelData.FieldByName('END_DATE').AsDateTime > dsData.DataSet.FieldByName(FPrcData.EndDateFieldName).AsDateTime) then
                begin
                  cdsTree.Locate('PRC_OBJECT_CODE', Level.FullStrKeyValue, []);
                  raise Exception.CreateFmt(SDateIntervalIsNotInOwnerDateInterval, [OwnerDisplayName]);
                end;  { if }

              Level.cdsLevelData.Next;
            end;  { while }
        end;

  f:= dsData.DataSet.FindField('VALIDATE_PRC_DATA_COMPLETENESS');
  if Assigned(f) and f.AsBoolean then
    for Level in FPrcData.LevelsSet do
      begin
        Level.cdsLevelData.First;
        while not Level.cdsLevelData.Eof do
          begin
            for ChildLevel in FPrcData.LevelChildren(Level) do
              if (ChildLevel.VisualParent = Level) then
                begin
                  IsComplete:= False;
                  ChildLevel.cdsLevelData.First;
                  while not ChildLevel.cdsLevelData.Eof do
                    begin
                      if (ChildLevel.LogicalParentFullStrKeyValue = Level.FullStrKeyValue) then
                        begin
                          IsComplete:= True;
                          Break;
                        end;  { if }

                      ChildLevel.cdsLevelData.Next;
                    end;  { while }

                  if not IsComplete then
                    begin
                      cdsTree.Locate('PRC_OBJECT_CODE', Level.FullStrKeyValue, []);
                      raise Exception.Create(SIncompleteRecordExists);
                    end;  { if }
                end;  { if, for }

            Level.cdsLevelData.Next;
          end;  { while }
      end;  { for, if }

  if Assigned(FSavedOwnerDataSetBeforePost) then
    FSavedOwnerDataSetBeforePost(DataSet);
end;

procedure TfrPrcDataFieldEditFrame.OwnerLearningBeginDateFieldOnChange(Sender: TField);
begin
  RefreshTree;

  if Assigned(FSavedOwnerLearningBeginDateFieldOnChange) then
    FSavedOwnerLearningBeginDateFieldOnChange(Sender);
end;

procedure TfrPrcDataFieldEditFrame.OwnerLearningEndDateFieldOnChange(Sender: TField);
begin
  RefreshTree;

  if Assigned(FSavedOwnerLearningEndDateFieldOnChange) then
    FSavedOwnerLearningEndDateFieldOnChange(Sender);
end;

procedure TfrPrcDataFieldEditFrame.OwnerNameFieldOnChange(Sender: TField);
begin
  RefreshOwnerAsRoot;

  if Assigned(FSavedOwnerNameFieldOnChange) then
    FSavedOwnerNameFieldOnChange(Sender);
end;

procedure TfrPrcDataFieldEditFrame.OwnerShortNameFieldOnChange(Sender: TField);
begin
  RefreshOwnerAsRoot;

  if Assigned(FSavedOwnerShortNameFieldOnChange) then
    FSavedOwnerShortNameFieldOnChange(Sender);
end;

procedure TfrPrcDataFieldEditFrame.OwnerDataSetBeforeCancel(DataSet: TDataSet);
begin
  FCancelingOwnerDataSet:= True;

  if Assigned(FSavedOwnerDataSetBeforeCancel) then
    FSavedOwnerDataSetBeforeCancel(DataSet);
end;

procedure TfrPrcDataFieldEditFrame.OwnerDataSetAfterCancel(DataSet: TDataSet);
begin
  FCancelingOwnerDataSet:= False;

  if Assigned(FSavedOwnerDataSetAfterCancel) then
    FSavedOwnerDataSetAfterCancel(DataSet)
end;

procedure TfrPrcDataFieldEditFrame.OwnerDateIntervalFieldOnChange(Sender: TField; const APrcDateIntervalFieldName: string);
var
  Level: TClientProcessLevelData;
begin
  if FPrcData.HasDateIntervalFields and FPrcData.CanOverrideDateInterval then
    for Level in FPrcData.LevelsSet do
      if Level.CanHaveDateIntervalFields then
        Level.cdsLevelData.ForEach/
          procedure begin
            if not Level.cdsLevelData.FieldByName('OVERRIDE_DATE_INTERVAL').AsBoolean then
              Level.cdsLevelData.SafeEdit/
                procedure begin
                  Level.cdsLevelData.FieldByName(APrcDateIntervalFieldName).Assign(Sender);
                end;  { lambda }
          end;  { lambda }

  RefreshTree;
end;

procedure TfrPrcDataFieldEditFrame.OwnerBeginDateFieldOnChange(Sender: TField);
begin
  OwnerDateIntervalFieldOnChange(Sender, 'BEGIN_DATE');
  if Assigned(FSavedOwnerBeginDateFieldOnChange) then
    FSavedOwnerBeginDateFieldOnChange(Sender);
end;

procedure TfrPrcDataFieldEditFrame.OwnerEndDateFieldOnChange(Sender: TField);
begin
  OwnerDateIntervalFieldOnChange(Sender, 'END_DATE');
  if Assigned(FSavedOwnerEndDateFieldOnChange) then
    FSavedOwnerEndDateFieldOnChange(Sender);
end;

// --======================--

procedure TfrPrcDataFieldEditFrame.InitializeProcessOwner;
var
  Level: TClientProcessLevelData;
begin
  for Level in FPrcData.LevelsSet do
    begin
      Level.cdsLevelData.BeforePost:= cdsLeveDataBeforePost;
      Level.cdsLevelData.AfterPost:= cdsLevelDataAfterDeletePost;
      Level.cdsLevelData.AfterDelete:= cdsLevelDataAfterDeletePost;
      Level.cdsLevelData.OnNewRecord:= cdsLevelDataNewRecord;

      if FPrcData.HasDateIntervalFields and Level.CanHaveDateIntervalFields then
        Level.OnOverrideDateIntervalFieldChange:= OverrideDateIntervalFieldOnChange;
    end;  { for }

  FSavedOwnerDataSetBeforePost:= dsData.DataSet.BeforePost;
  dsData.DataSet.BeforePost:= OwnerDataSetBeforePost;

  FSavedOwnerDataSetBeforeCancel:= dsData.DataSet.BeforeCancel;
  dsData.DataSet.BeforeCancel:= OwnerDataSetBeforeCancel;

  FSavedOwnerDataSetAfterCancel:= dsData.DataSet.AfterCancel;
  dsData.DataSet.AfterCancel:= OwnerDataSetAfterCancel;

  if Assigned(OwnerNameField) then
    begin
      FSavedOwnerNameFieldOnChange:= OwnerNameField.OnChange;
      OwnerNameField.OnChange:= OwnerNameFieldOnChange;
    end;  { if }

  if Assigned(OwnerShortNameField) then
    begin
      FSavedOwnerShortNameFieldOnChange:= OwnerShortNameField.OnChange;
      OwnerShortNameField.OnChange:= OwnerShortNameFieldOnChange;
    end;  { if }

  if FPrcData.HasActionStatusChanges then
    begin
      FSavedOwnerLearningBeginDateFieldOnChange:= dsData.DataSet.FieldByName(FPrcData.LearningBeginDateFieldName).OnChange;
      dsData.DataSet.FieldByName(FPrcData.LearningBeginDateFieldName).OnChange:= OwnerLearningBeginDateFieldOnChange;
    end;  { if }

  if FPrcData.HasActionStatusChanges then
    begin
      FSavedOwnerLearningEndDateFieldOnChange:= dsData.DataSet.FieldByName(FPrcData.LearningEndDateFieldName).OnChange;
      dsData.DataSet.FieldByName(FPrcData.LearningEndDateFieldName).OnChange:= OwnerLearningEndDateFieldOnChange;
    end;  { if }

  if FPrcData.CanOverrideDateInterval and (FPrcData.BeginDateFieldName <> '') then
    begin
      FSavedOwnerBeginDateFieldOnChange:= dsData.DataSet.FieldByName(FPrcData.BeginDateFieldName).OnChange;
      dsData.DataSet.FieldByName(FPrcData.BeginDateFieldName).OnChange:= OwnerBeginDateFieldOnChange;
    end;  { if }

  if FPrcData.CanOverrideDateInterval and (FPrcData.EndDateFieldName <> '') then
    begin
      FSavedOwnerEndDateFieldOnChange:= dsData.DataSet.FieldByName(FPrcData.EndDateFieldName).OnChange;
      dsData.DataSet.FieldByName(FPrcData.EndDateFieldName).OnChange:= OwnerEndDateFieldOnChange;
    end;  { if }

  cdsTree.Filtered:= FPrcData.HasCurrentDateFilter;

  FIsProcessOwnerInitialized:= True;
end;

procedure TfrPrcDataFieldEditFrame.FinalizeProcessOwner;
begin
  if FPrcData.CanOverrideDateInterval and (FPrcData.EndDateFieldName <> '') then
    dsData.DataSet.FieldByName(FPrcData.EndDateFieldName).OnChange:= FSavedOwnerEndDateFieldOnChange;

  if FPrcData.CanOverrideDateInterval and (FPrcData.BeginDateFieldName <> '') then
    dsData.DataSet.FieldByName(FPrcData.BeginDateFieldName).OnChange:= FSavedOwnerBeginDateFieldOnChange;

  if FPrcData.HasActionStatusChanges then
    dsData.DataSet.FieldByName(FPrcData.LearningEndDateFieldName).OnChange:= FSavedOwnerLearningEndDateFieldOnChange;

  if FPrcData.HasActionStatusChanges then
    dsData.DataSet.FieldByName(FPrcData.LearningBeginDateFieldName).OnChange:= FSavedOwnerLearningBeginDateFieldOnChange;

  if Assigned(OwnerShortNameField) then
    OwnerShortNameField.OnChange:= FSavedOwnerShortNameFieldOnChange;

  if Assigned(OwnerNameField) then
    OwnerNameField.OnChange:= FSavedOwnerNameFieldOnChange;

  dsData.DataSet.AfterCancel:= FSavedOwnerDataSetAfterCancel;
  dsData.DataSet.BeforeCancel:= FSavedOwnerDataSetBeforeCancel;
  dsData.DataSet.BeforePost:= FSavedOwnerDataSetBeforePost;

  FIsProcessOwnerInitialized:= False;
end;

procedure TfrPrcDataFieldEditFrame.Initialize;
begin
  inherited Initialize;
  CheckProcessOwnerInitialized;
  (Owner as TDBDataForm).RegisterDateFields(cdsTree);
  grdProcesses.OptionsEh:= grdProcesses.OptionsEh - [dghExtendVertLines];
end;

procedure TfrPrcDataFieldEditFrame.Finalize;
begin
  FinalizeProcessOwner;
  inherited Finalize;
end;

procedure TfrPrcDataFieldEditFrame.CheckProcessOwnerInitialized;
begin
  if HasOwner and not FIsProcessOwnerInitialized then
    InitializeProcessOwner;
end;

procedure TfrPrcDataFieldEditFrame.actFrameUpdate(Sender: TObject);
var
  col: TColumnEh;
begin
  inherited;
  coBEGIN_DATE.Visible:=                  HasOwner and not FIsRolledUp and FPrcData.HasDateIntervalFields;
  co_PRC_LEARNING_STATUS_NAME.Visible:=   HasOwner and not FIsRolledUp and FPrcData.HasActionStatusChanges;
  coSTATUS_DATE.Visible:=                 HasOwner and not FIsRolledUp and FPrcData.HasActionStatusChanges;
  coSTATUS_EXISTANCE_MONTHS.Visible:=     HasOwner and not FIsRolledUp and FPrcData.HasActionStatusChanges;
  coPRC_ORG_DISTRIB_STATUS_CODE.Visible:= HasOwner and not FIsRolledUp and FPrcData.HasPrcOrgDistributionStatus;

  for col in grdProcesses.Columns do
    if IsShownRollupColumn(col) then
      col.Visible:= FIsRolledUp;

  NormalizedToolbar(tlbCurrentDateFilter).Visible:=  HasOwner and FPrcData.HasCurrentDateFilter;
  NormalizedToolbar(tlbIntersectionFilter).Visible:= HasOwner and FPrcData.HasDateIntervalIntersectionFilter;
  NormalizedToolbar(tlbPrcDataQuickAdd).Visible:=    HasOwner and not FPrcData.HasActionStatusChanges;
end;

procedure TfrPrcDataFieldEditFrame.OpenDataSets;
begin
//  cdsPrcOpRegimes.Open;
  cdsPrcLearningStatuses.Open;
  inherited OpenDataSets;
end;

procedure TfrPrcDataFieldEditFrame.CloseDataSets;
begin
  inherited CloseDataSets;
  cdsPrcLearningStatuses.Close;
//  cdsPrcOpRegimes.Close;
  CheckTreeDataSetClosed;
end;

procedure TfrPrcDataFieldEditFrame.SetProcessOwner(AValue: TProcessOwner);
begin
  if HasOwner then
    FinalizeProcessOwner;

  FreeAndNil(FPrcData);
  FreeAndNil(FQuickAddPrcData);

  FPrcData:= TClientProcessOwnerData.Create(AValue);
  FIsIntersectionFilterEnabled:= FPrcData.HasDateIntervalIntersectionFilter;

  if Assigned(dsData.DataSet) then
    CheckProcessOwnerInitialized;
end;

function TfrPrcDataFieldEditFrame.GetProcessOwner: TProcessOwner;
begin
  Result:= FPrcData;
end;

function TfrPrcDataFieldEditFrame.IsDistributionStatusField(AField: TField): Boolean;
begin
  Result:= StartsStr(cdsTreePRC_ORG_DISTRIB_STATUS_CODE.FieldName, AField.FieldName);
end;

function TfrPrcDataFieldEditFrame.IsDistributionStatusColumn(AColumn: TColumnEh): Boolean;
begin
  Result:= IsDistributionStatusField(AColumn.Field);
end;

function TfrPrcDataFieldEditFrame.IsPrcObjectImageIndexField(AField: TField): Boolean;
begin
  Result:= StartsStr(cdsTreePRC_OBJECT_IMAGE_INDEX.FieldName, AField.FieldName);
end;

function TfrPrcDataFieldEditFrame.IsPrcObjectImageIndexColumn(AColumn: TColumnEh): Boolean;
begin
  Result:= IsPrcObjectImageIndexField(AColumn.Field);
end;

procedure TfrPrcDataFieldEditFrame.AddRollupColumn(const AFieldName: string; ACode: Integer; const ACaption: string; const AHint: string);
begin
  with grdProcesses.Columns.Add do
    begin
      FieldName:= Format('%s_%d', [AFieldName, ACode]);
      AutoFitColWidth:= False;
      Title.Caption:= ACaption;
      Title.Alignment:= taCenter;
      Title.Hint:= AHint;
      ToolTips:= True;
      Width:= 23;
      Visible:= False;
    end;
end;

procedure TfrPrcDataFieldEditFrame.AddRollupField(const AFieldName: string; ACode: Integer; const ADisplayLabel: string);
var
  cdsTreeFIELD: TField;
  f: TField;
begin
  cdsTreeFIELD:= cdsTree.FindField(AFieldName);
  Assert(Assigned(cdsTreeFIELD));

  f:= TFieldClass(cdsTreeFIELD.ClassType).Create(cdsTree);

  f.FieldName:= Format('%s_%d', [AFieldName, ACode]);

  f.DisplayLabel:= ADisplayLabel;

  if (cdsTreeFIELD is TAbmesFloatField) then
    (f as TAbmesFloatField).FieldValueType:= (cdsTreeFIELD as TAbmesFloatField).FieldValueType;

  if (cdsTreeFIELD is TAbmesWideStringField) then
    (f as TAbmesWideStringField).Size:= (cdsTreeFIELD as TAbmesWideStringField).Size;

  if IsDistributionStatusField(f) then
    begin
      f.OnGetText:= PrcOrgDistributionStatusCodeFieldGetText;
      f.Alignment:= taLeftJustify;
    end;

  if IsPrcObjectImageIndexField(f) then
    begin
      f.OnGetText:= PrcObjectImageIndexFieldGetText;
      f.Alignment:= taLeftJustify;
    end;

  f.DataSet:= cdsTree;
end;

procedure TfrPrcDataFieldEditFrame.CreateRollupComponents;
begin
  with FPrcData.RollupLevel do
    cdsLevelData.TempIndexFields('PRC_OBJECT_NO')/
      cdsLevelData.ForEach/
        procedure
        var
          FieldName: string;
        begin
          for FieldName in AllRollupFieldNames do
            AddRollupField(
              FieldName,
              cdsLevelData.FieldByName(KeyFieldName).AsInteger,
              cdsLevelData.FieldByName('PRC_OBJECT_SHORT_NAME').DisplayText);

          for FieldName in RollupColumnFieldNames do
            AddRollupColumn(
              FieldName,
              cdsLevelData.FieldByName(KeyFieldName).AsInteger,
              cdsLevelData.FieldByName('PRC_OBJECT_NO').DisplayText,
              cdsLevelData.FieldByName('PRC_OBJECT_SHORT_NAME').DisplayText);
        end;
end;

function TfrPrcDataFieldEditFrame.ColumnByFieldName(const AFieldName: string): TColumnEh;
var
  col: TColumnEh;
begin
  Result:= nil;
  for col in grdProcesses.Columns do
    if (col.FieldName = AFieldName) then
      Exit(col);
end;

constructor TfrPrcDataFieldEditFrame.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  FieldNames:= PrcDataFieldName;
  FFilterPastProcesses:= False;
  FFilterPresentProcesses:= True;
  FFilterFutureProcesses:= True;

  FDisableUpdatesSection.AfterLastLeave:= ForceUpdateRecord;

  FcdsTreeDisableControlsSection.BeforeFirstEnter:=
    procedure begin
      grdProcesses.DataSource.DataSet.DisableControls;
    end;

  FcdsTreeDisableControlsSection.AfterLastLeave:=
    procedure begin
      grdProcesses.DataSource.DataSet.EnableControls;
    end;

  FPreserveNodeExpandedStatesSection.BeforeFirstEnter:= SaveNodeExpandedStates;
  FPreserveNodeExpandedStatesSection.AfterLastLeave:= RestoreNodeExpandedStates;

  FMassAddingSection.AddCascadedSection(FDisableUpdatesSection);
  FMassAddingSection.AddCascadedSection(FPreserveNodeExpandedStatesSection);
  FMassAddingSection.AddCascadedSection(FcdsTreeDisableControlsSection);

  FMassDeletingSection.AddCascadedSection(FDisableUpdatesSection);

  frGridTreeListExpander.TreeListGrid:= grdProcesses;

  FIsRolledUp:= True;

  coBEGIN_DATE:= ColumnByFieldName('BEGIN_DATE');
  co_PRC_LEARNING_STATUS_NAME:= ColumnByFieldName('_PRC_LEARNING_STATUS_NAME');
  coSTATUS_DATE:= ColumnByFieldName('STATUS_DATE');
  coSTATUS_EXISTANCE_MONTHS:= ColumnByFieldName('STATUS_EXISTANCE_MONTHS');
  coPRC_ORG_DISTRIB_STATUS_CODE:= ColumnByFieldName('PRC_ORG_DISTRIB_STATUS_CODE');

  cdsTreePRC_ORG_DISTRIB_STATUS_CODE.OnGetText:= PrcOrgDistributionStatusCodeFieldGetText;
end;

destructor TfrPrcDataFieldEditFrame.Destroy;
begin
  FreeAndNil(FQuickAddPrcData);
  FreeAndNil(FPrcData);
  FreeAndNil(FSavedNodesExpandedState);
  inherited;
end;

function TfrPrcDataFieldEditFrame.AllFieldsAssigned: Boolean;
var
  i: Integer;
begin
  Result:= True;
  for i:= 0 to FieldCount - 1 do
    if not Assigned(Fields[i]) then
      Exit(False);
end;

procedure TfrPrcDataFieldEditFrame.DataChange(Sender: TObject);
var
  NewPrcData: TClientProcessOwnerData;
begin
  inherited DataChange(Sender);

  if (FieldCount = 0) or not AllFieldsAssigned or FCancelingOwnerDataSet or ((Sender as TFieldDataLink).Field <> Fields[0]) then
    Exit;

  FDataChangeSection.TempEnter/
    procedure begin
      NewPrcData:= TClientProcessOwnerData.Create(FPrcData);
      try
        if Fields[0].IsNull then
          NewPrcData.AsVariant:= dmMain.SvrProcesses.LoadPrcData(FPrcData.Name, 0)
        else
          NewPrcData.AsVariant:= ReadVariantFromBlobField(Fields[0]);

        if not FPrcData.IsDataEqual(NewPrcData) then
          begin
            FPrcData.AsVariant:= NewPrcData.AsVariant;

            if Assigned(FPrcData.RollupLevel) and not FRollupColumnsCreated then
              begin
                CreateRollupComponents;
                FRollupColumnsCreated:= True;
              end;

            RefreshTree;
          end;  { if }
      finally
        FreeAndNil(NewPrcData);
      end;  { try }
    end;  { if }
end;

procedure TfrPrcDataFieldEditFrame.UpdateData(Sender: TObject);
var
  DestDataSet: TDataSet;
begin
  inherited UpdateData(Sender);

  if FDataChangeSection.IsEntered or FDisableUpdatesSection.IsEntered then
    Exit;

  // ewentualnite drugi poleta ne gi redaktirame, tyi che nqma kakwo da im update-wame
  if ((Sender as TFieldDataLink).Field <> Fields[0]) then
    Exit;

  DestDataSet:= Fields[0].DataSet;

  CheckEditMode(DestDataSet);
  try
    WriteVariantToBlobField(FPrcData.AsVariant, Fields[0]);
    FIsDataModified:= True;
  except
    Reset;
    raise;
  end;  { try }
end;

procedure TfrPrcDataFieldEditFrame.cdsLevelDataAfterDeletePost(DataSet: TDataSet);
begin
  ForceUpdateRecord;
end;

// --======================--

procedure TfrPrcDataFieldEditFrame.cdsTreeBEGIN_DATEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if not Sender.IsNull then
    Text:= dmMain.GetDateIntervalAsString(Sender.AsDateTime, Sender.DataSet.FieldByName('END_DATE').AsDateTime)
  else
    Text:= '';
end;

function TfrPrcDataFieldEditFrame.GetRollupField(ARollupField: TField; const AEquivalentFieldName: string): TField;
begin
  Assert(IsRollupField(ARollupField));
  Result:= ARollupField.DataSet.FieldByName(Format('%s_%d', [AEquivalentFieldName, GetRollupFieldCode(ARollupField)]));
end;

function TfrPrcDataFieldEditFrame.IsShownRollupColumn(AColumn: TColumnEh): Boolean;
begin
  Result:=
    IsRollupField(AColumn.Field) and
    StartsStr(FPrcData.RollupDisplayColumnFieldName, AColumn.FieldName);
end;

function TfrPrcDataFieldEditFrame.IsRollupField(AField: TField): Boolean;
begin
  Result:= CharIsDigit(AField.FieldName[Length(AField.FieldName)]);
end;

function TfrPrcDataFieldEditFrame.GetRollupFieldCode(AField: TField): Integer;
var
  LastUnderscorePos: Integer;
begin
  Assert(IsRollupField(AField));
  LastUnderscorePos:= CharLastPos(AField.FieldName, '_');
  Result:= StrToInt(Copy(AField.FieldName, LastUnderscorePos + 1, MaxInt));
end;

function TfrPrcDataFieldEditFrame.GetRollupColumnCode(AColumn: TColumnEh): Integer;
begin
  Result:= GetRollupFieldCode(AColumn.Field);
end;

function TfrPrcDataFieldEditFrame.GetChildRollupRelevantLevel(AParentLevel: TClientProcessLevelData): TClientProcessLevelData;
var
  Level: TClientProcessLevelData;
begin
  Result:= nil;
  for Level in FPrcData.LevelChildren(AParentLevel) do
    if Level.CanRollup then
      Exit(Level.RelevantRollupLevel);
end;

function TfrPrcDataFieldEditFrame.IsRelevantColumn(AColumn: TColumnEh): Boolean;
var
  OwnerRelevantLevel: TClientProcessLevelData;
  RelevantLevel: TClientProcessLevelData;
  CurrentSelectedLevel: TClientProcessLevelData;
begin
  OwnerRelevantLevel:= FPrcData.RelevantRollupLevel;

  CurrentSelectedLevel:= FPrcData.FindLevel(AColumn.Field.DataSet.FieldByName('LEVEL_NAME').AsString);
  RelevantLevel:= GetChildRollupRelevantLevel(CurrentSelectedLevel);

  Result:=
    ( not Assigned(OwnerRelevantLevel) or
      OwnerRelevantLevel.cdsLevelData.Locate(OwnerRelevantLevel.KeyFieldName, GetRollupColumnCode(AColumn), [])
    ) and
    ( not Assigned(RelevantLevel) or
      RelevantLevel.cdsLevelData.Locate(RelevantLevel.KeyFieldName, GetRollupColumnCode(AColumn), [])
    );
end;

procedure TfrPrcDataFieldEditFrame.grdProcessesGetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont;
  var Background: TColor; State: TGridDrawState);
begin
  inherited;
  if not Column.Field.DataSet.FieldByName('IS_IN_PRC_DATA').AsBoolean then
    AFont.Color:= clGrayText
  else
    if cdsTree.Filtered and not Column.Field.DataSet.FieldByName('IS_FILTER_ACCEPTED').AsBoolean then
      AFont.Color:= FilteredRecordsColor;

  if (Column.FieldName = 'BEGIN_DATE') and not Column.Field.IsNull then
    begin
      Background:= DateIntervalBackgroundColor;
      AFont.Color:= clWindowText;
    end;
end;

procedure TfrPrcDataFieldEditFrame.grdProcessesDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer;
  Column: TColumnEh; State: TGridDrawState);

  function GetFieldByName(const AFieldName: string): TField;
  begin
    Result:= Column.Field.DataSet.FieldByName(AFieldName);
  end;

  procedure DrawBackground(AColor: TColor);
  begin
    grdProcesses.Canvas.Brush.Color:= AColor;
    grdProcesses.Canvas.FillRect(Rect);
  end;

  procedure DrawImage(AImageList: TImageList; AImageIndex: Integer);
  begin
    AImageList.Draw(grdProcesses.Canvas, Rect.Left + 3, Rect.Top + 2, AImageIndex);
  end;

  procedure DrawImageForCurrentColumn(AImageList: TImageList);
  begin
    if not Column.Field.IsNull then
      DrawImage(AImageList, Column.Field.AsInteger);
  end;

  procedure FinishDrawCell;
  begin
    if (gdFocused in State) then
      grdProcesses.Canvas.Brush.Color:= clBlack;
  end;

  procedure DrawDistributionStatusColumn(ADistributionCountField: TField);
  begin
    if (ADistributionCountField.AsInteger > 1) then
      DrawBackground(PrcGreaterThanOneDistrubutionCountBackgroundColor)
    else
      DrawBackground(clWindow);

    DrawImageForCurrentColumn(dmMain.ilPrcDistributionStatuses);
    FinishDrawCell;
  end;

  procedure DrawIrrelevantColumn;
  begin
    DrawBackground(PrcIrrelevantColumnColor);
    FinishDrawCell;
  end;

  procedure DrawPrcObjectImageIndexColumn;
  begin
    DrawBackground(clWindow);
    DrawImageForCurrentColumn(dmMain.ilActions);
    FinishDrawCell;
  end;

begin
  inherited;
  if Column.Field.DataSet.IsEmpty then
    Exit;

  if (Column.FieldName = 'PRC_OBJECT_TREE_DISPLAY_NAME') then
    DrawTreeImageColumnCell(
      grdProcesses,
      dmMain.ilActions,
      GetFieldByName('PRC_OBJECT_IMAGE_INDEX').AsInteger,
      Rect,
      Column);

  if (Column = coPRC_ORG_DISTRIB_STATUS_CODE) then
    DrawDistributionStatusColumn(GetFieldByName('PRC_ORG_DISTRIBUTION_COUNT'));

  if IsRollupField(Column.Field) then
    if not IsRelevantColumn(Column) then
      DrawIrrelevantColumn
    else
      begin
        if IsDistributionStatusColumn(Column) then
          DrawDistributionStatusColumn(GetRollupField(Column.Field, 'PRC_ORG_DISTRIBUTION_COUNT'))
        else
          if IsPrcObjectImageIndexColumn(Column) then
            DrawPrcObjectImageIndexColumn;

        if cdsTree.Filtered and
           not GetRollupField(Column.Field, 'IS_IN_PRC_DATA').IsNull and GetRollupField(Column.Field, 'IS_IN_PRC_DATA').AsBoolean and
           not GetRollupField(Column.Field, 'IS_FILTER_ACCEPTED').IsNull and not GetRollupField(Column.Field, 'IS_FILTER_ACCEPTED').AsBoolean then
          begin
            DrawImage(ilLocalPrcImages, FilteredRecordsImageIndex);
          end;
      end;
end;

// --======================--

procedure TfrPrcDataFieldEditFrame.CheckTreeDataSetOpened;
begin
  if not cdsTree.Active then
    begin
      cdsTree.CreateDataSet;
      grdProcesses.ConvertToTreeList('PRC_OBJECT_CODE', 'VISUAL_PARENT_PRC_OBJECT_CODE');
    end;
end;

procedure TfrPrcDataFieldEditFrame.CheckTreeDataSetClosed;
begin
  if cdsTree.Active then
    cdsTree.Close;
end;

procedure TfrPrcDataFieldEditFrame.SaveNodeExpandedStates;
begin
  FreeAndNil(FSavedNodesExpandedState);
  FSavedNodesExpandedState:= TNodeExpandedStates.Create;
  try
    grdProcesses.TreeDataSet.ForEach/
      procedure begin
        FSavedNodesExpandedState.Add(
          grdProcesses.TreeDataSet.FieldByName('PRC_OBJECT_CODE').AsString,
          grdProcesses.TreeDataSet.TreeNodeExpanded or not grdProcesses.TreeDataSet.TreeNodeHasChildren);
      end;
  except
    FreeAndNil(FSavedNodesExpandedState);
    raise;
  end;
end;

function TfrPrcDataFieldEditFrame.MustExpandNode(const ANodePrcObjectCode: string): Boolean;
begin
  Result:=
    not FSavedNodesExpandedState.ContainsKey(ANodePrcObjectCode) or
    FSavedNodesExpandedState[ANodePrcObjectCode];
end;

procedure TfrPrcDataFieldEditFrame.RestoreNodeExpandedStates;
begin
  try
    if (FSavedNodesExpandedState.Keys.Count = 0) then
      grdProcesses.TreeDataSet.TreeList.FullExpand
    else
      grdProcesses.TreeDataSet.TempDisableControls/
        procedure begin
          grdProcesses.TreeDataSet.ForEach/
            procedure begin
              grdProcesses.TreeDataSet.TreeNodeExpanded:= MustExpandNode(grdProcesses.TreeDataSet.FieldByName('PRC_OBJECT_CODE').AsString);
            end;

          grdProcesses.TreeDataSet.RecordsView.MemoryTreeList.BuildVisibleItems;
          grdProcesses.TreeDataSet.Resync([]);
        end;
  finally
    FreeAndNil(FSavedNodesExpandedState);
  end;
end;

// RefreshTree helper funcs

procedure TfrPrcDataFieldEditFrame.AddOwnerAsRoot;
begin
  Assert(AllAssigned([OwnerNameField, OwnerShortNameField]));
  cdsTree.SafeAppend/
    procedure begin
      cdsTreePRC_OBJECT_CODE.AsString:= FPrcData.RootParentStrKeyValue;
      cdsTreeVISUAL_PARENT_PRC_OBJECT_CODE.AsString:= '';
      cdsTreeIS_IN_PRC_DATA.AsBoolean:= True;
      cdsTreeLEVEL_NAME.AsString:= FakeRootLevelName;
      cdsTreePRC_OBJECT_TREE_DISPLAY_NAME.AsString:= OwnerShortNameField.AsString;
      cdsTreePRC_OBJECT_NAME.AsString:= OwnerNameField.AsString;
      cdsTreePRC_OBJECT_IMAGE_INDEX.AsInteger:= FPrcData.OwnerAsRootImageIndex;
      cdsTreeIS_FILTER_ACCEPTED.AsBoolean:= True;
      cdsTreeVISUAL_LEVEL_NO.AsInteger:= 0;
    end;
end;

procedure TfrPrcDataFieldEditFrame.InternalRefreshTree(AParentPrcNode: TPrcNode);
var
  PrcNode: TPrcNode;
begin
  for PrcNode in AParentPrcNode.Children do
    begin
      PrcNode.LocateRecord;

      if FIsRolledUp and PrcNode.Level.CanRollup then
        EditCurrentRolledUpRecord(PrcNode)
      else
        AppendTreeRecord(PrcNode);

      InternalRefreshTree(PrcNode);
    end;
end;

procedure TfrPrcDataFieldEditFrame.LocatePrcObject(const APrcObjectCode: string);

  function TryLocatePrcObject(const APrcObjectCode: string): Boolean;

    function ParentPrcObjectCode(const APrcObjectCode: string): string;
    begin
      Result:= LeftStr(APrcObjectCode, StrLastPos(';', APrcObjectCode) - 1);
    end;

    function LocalPrcObjectCode(const APrcObjectCode: string): Integer;
    begin
      Result:= StrToInt(SubString(APrcObjectCode, StrLastPos('=', APrcObjectCode) + 1, Length(APrcObjectCode)));
    end;

    function LocalPrcObjectKeyFieldName(const APrcObjectCode: string): string;
    begin
      Result:= SubString(APrcObjectCode, StrLastPos(';', APrcObjectCode) + 1, StrLastPos('=', APrcObjectCode) - 1);
    end;

    function IsRollupObject(const APrcObjectCode: string): Boolean;
    begin
      Result:= (FPrcData.RollupLevel.KeyFieldName = LocalPrcObjectKeyFieldName(APrcObjectCode));
    end;

  begin
    Result:= False;

    if grdProcesses.TreeDataSet.Locate('PRC_OBJECT_CODE', APrcObjectCode, []) then
      Exit(True);

    if not FIsRolledUp then
      Exit(False);

    if IsRollupObject(APrcObjectCode) and
       grdProcesses.TreeDataSet.Locate('PRC_OBJECT_CODE', ParentPrcObjectCode(APrcObjectCode), []) then
      begin
        grdProcesses.Col:= ColumnByFieldName(Format('%s_%d', [FPrcData.RollupDisplayColumnFieldName, LocalPrcObjectCode(APrcObjectCode)])).Index + 1;
        Exit(True);
      end;
  end;

var
  PrcObjectCode: string;
begin
  PrcObjectCode:= APrcObjectCode;
  while (PrcObjectCode <> '') do
    begin
      if TryLocatePrcObject(PrcObjectCode) then
        Exit;

      PrcObjectCode:= LeftStr(PrcObjectCode, StrLastPos(';', PrcObjectCode) - 1);
    end;

  grdProcesses.TreeDataSet.First;
end;

procedure TfrPrcDataFieldEditFrame.SetRecordsIsLastChildField;
var
  PrevLevelParentCodes: array of string;

  procedure AdjustPrevLevelParentCodes(ALevelNo: Integer);
  var
    OldLength: Integer;
    i: Integer;
  begin
    if (ALevelNo >= Length(PrevLevelParentCodes)) then
      begin
        OldLength:= Length(PrevLevelParentCodes);
        SetLength(PrevLevelParentCodes, ALevelNo + 1);
        for i:= OldLength to ALevelNo do
          PrevLevelParentCodes[i]:= '<not a parent code>';
      end;  { if }
  end;

var
  LevelNo: Integer;
  LevelParentCode: string;
begin
  cdsTree.Last;
  while not cdsTree.Bof do
    begin
      LevelNo:= cdsTreeVISUAL_LEVEL_NO.AsInteger;
      LevelParentCode:= cdsTreeVISUAL_PARENT_PRC_OBJECT_CODE.AsString;

      AdjustPrevLevelParentCodes(LevelNo);

      if (cdsTreeIS_LAST_CHILD.AsBoolean <> (LevelParentCode <> PrevLevelParentCodes[LevelNo])) then
        cdsTree.SafeEdit/
          procedure begin
            cdsTreeIS_LAST_CHILD.AsBoolean:= (LevelParentCode <> PrevLevelParentCodes[LevelNo]);
          end;

      PrevLevelParentCodes[LevelNo]:= LevelParentCode;

      cdsTree.Prior;
    end;  { while }
end;

function TfrPrcDataFieldEditFrame.IsFilterAccepted(APrcNode: TPrcNode): Boolean;
var
  BeginDate: TDateTime;
  EndDate: TDateTime;
  LearningBeginDate: TDateTime;
  LearningEndDate: TDateTime;
  ChildPrcNode: TPrcNode;
begin
  if not FPrcData.HasCurrentDateFilter or APrcNode.IsQuickAdd then
    Result:= True
  else
    if APrcNode.Level.CanHaveDateIntervalFields then
      begin
        APrcNode.LocateRecord;
        BeginDate:= APrcNode.Level.cdsLevelData.FieldByName('BEGIN_DATE').AsDateTime;
        EndDate:= APrcNode.Level.cdsLevelData.FieldByName('END_DATE').AsDateTime;

        Result:=
          (FFilterPastProcesses and (EndDate < ContextDate)) or
          (FFilterPresentProcesses and InRange(ContextDate, BeginDate, EndDate)) or
          (FFilterFutureProcesses and (BeginDate > ContextDate));

        if FPrcData.HasDateIntervalIntersectionFilter and FIsIntersectionFilterEnabled then
          begin
            LearningBeginDate:= dsData.DataSet.FieldByName(FPrcData.LearningBeginDateFieldName).AsDateTime;
            LearningEndDate:= dsData.DataSet.FieldByName(FPrcData.LearningEndDateFieldName).AsDateTime;
            Result:= Result and (LearningBeginDate <= EndDate) and (BeginDate <= LearningEndDate);
          end;  { if }
      end
    else
      begin
        Result:= False;

        for ChildPrcNode in APrcNode.Children do
          if IsFilterAccepted(ChildPrcNode) then
            Exit(True);

        if (APrcNode.Children.Count = 0) then
          Result:= True;
      end;
end;

procedure TfrPrcDataFieldEditFrame.AssignLearningStatusFields(ALevel: TClientProcessLevelData);
var
  LevelChildren: TClientProcessLevelDataArray;
  ChildLevel: TClientProcessLevelData;
begin
  LevelChildren:= FPrcData.LevelChildren(ALevel);

  if (Length(LevelChildren) <> 1) then
    Exit;

  ChildLevel:= LevelChildren[0];

  if not ChildLevel.HasLearningStatus then
    Exit;

  if dsData.DataSet.FieldByName(FPrcData.LearningBeginDateFieldName).IsNull then
    Exit;

  cdsTreePRC_LEARNING_STATUS_CODE.AsInteger:= plsUnmastered;
  cdsTreeSTATUS_DATE.AsDateTime:= dsData.DataSet.FieldByName(FPrcData.LearningBeginDateFieldName).AsDateTime;

  ChildLevel.cdsLevelData.First;
  while not ChildLevel.cdsLevelData.Eof do
    begin
      if (ChildLevel.LogicalParentFullStrKeyValue = ALevel.FullStrKeyValue) and
         (ChildLevel.cdsLevelData.FieldByName('STATUS_DATE').AsDateTime > cdsTreeSTATUS_DATE.AsDateTime) then
        begin
          cdsTreeSTATUS_DATE.AsDateTime:= ChildLevel.cdsLevelData.FieldByName('STATUS_DATE').AsDateTime;
          cdsTreePRC_LEARNING_STATUS_CODE.AsInteger:= ChildLevel.cdsLevelData.FieldByName('PRC_LEARNING_STATUS_CODE').AsInteger;
        end;  { if }

      ChildLevel.cdsLevelData.Next;
    end;  { while }

  cdsTreeSTATUS_EXISTANCE_MONTHS.AsInteger:=
    RealRound(
      MonthSpan(
        cdsTreeSTATUS_DATE.AsDateTime,
        IfThen(
          dsData.DataSet.FieldByName(FPrcData.LearningEndDateFieldName).IsNull,
          ContextDate,
          Min(ContextDate, dsData.DataSet.FieldByName(FPrcData.LearningEndDateFieldName).AsDateTime))));
end;

procedure TfrPrcDataFieldEditFrame.AppendTreeRecord(APrcNode: TPrcNode);

  function VisualParentFSK(APrcNode: TPrcNode): string;
  begin
    if (APrcNode.Parent = FTempPrcOwner.RootPrcNode) or not Assigned(APrcNode.Level.VisualParent) then
      Result:= APrcNode.Parent.FullStrKeyValue
    else
      Result:= APrcNode.Level.VisualParentFullStrKeyValue;
  end;

  function GetSortPrcObjectFormattedNo(APrcNode: TPrcNode): string;

    function SortPrcObjectFormattedNo(APrcNode: TPrcNode): string;
    begin
      if not Assigned(APrcNode.Level.LogicalParent) then
        Result:= APrcNode.Level.LocalSortPrcObjectFormattedNo
      else
        begin
          APrcNode.Parent.LocateRecord;
          Result:= SortPrcObjectFormattedNo(APrcNode.Parent) + ' ' + APrcNode.Level.LocalSortPrcObjectFormattedNo;
        end;
    end;

    function SortPrcObjectFormattedNoPrefix(APrcNode: TPrcNode): string;
    begin
      if (APrcNode.Parent = FTempPrcOwner.RootPrcNode) or Assigned(APrcNode.Level.LogicalParent) then
        Result:= ''
      else
        Result:= SortPrcObjectFormattedNo(APrcNode.Parent) + ' ';
    end;

  begin
    Result:=
      SortPrcObjectFormattedNoPrefix(APrcNode) +
      SortPrcObjectFormattedNo(APrcNode);
  end;

  function IndentPrcObjectName(const APrcObjectName: string; ACount: Integer): string;
  begin
    Result:= StringOfChar(' ', ACount * 6) + Trim(APrcObjectName);
  end;

var
  SecondaryChildLevel: TClientProcessLevelData;
begin
  cdsTree.Append;
  try
    cdsTreePRC_OBJECT_CODE.AsString:= APrcNode.FullStrKeyValue;
    cdsTreeVISUAL_PARENT_PRC_OBJECT_CODE.AsString:= VisualParentFSK(APrcNode);
    cdsTreeIS_IN_PRC_DATA.AsBoolean:= not APrcNode.IsQuickAdd;
    cdsTreeLEVEL_NAME.AsString:= APrcNode.Level.Name;
    cdsTreePRC_OBJECT_IMAGE_INDEX.AsInteger:= APrcNode.ImageIndex;
    cdsTreeIS_FILTER_ACCEPTED.AsBoolean:= IsFilterAccepted(APrcNode);
    cdsTreeIS_LAST_CHILD.AsBoolean:= False;
    cdsTreeVISUAL_LEVEL_NO.AsInteger:=
      FPrcData.LevelByName(APrcNode.Level.Name).VisualLevelNo +
      IfThen(FPrcData.ShowOwnerAsRoot, 1);

    SecondaryChildLevel:= FPrcData.SecondaryChildLevel(APrcNode.Level);
    if Assigned(SecondaryChildLevel) then
      cdsTreeSECONDARY_CHILD_LEVEL_NAME.AsString:= SecondaryChildLevel.Name;

    if FPrcData.HasActionStatusChanges then
      AssignLearningStatusFields(APrcNode.Level);

    cdsTreePRC_OBJECT_SHORT_NAME.AssignFromDataSet(APrcNode.Level.cdsLevelData);
    cdsTreePRC_OBJECT_NAME.AssignFromDataSet(APrcNode.Level.cdsLevelData);
    cdsTreePRC_OBJECT_NAME.AsString:= IndentPrcObjectName(cdsTreePRC_OBJECT_NAME.AsString, cdsTreeVISUAL_LEVEL_NO.AsInteger);
    cdsTreePRC_OBJECT_FORMATTED_NO.AssignFromDataSet(APrcNode.Level.cdsLevelData);
    cdsTreeBEGIN_DATE.AssignFromDataSet(APrcNode.Level.cdsLevelData);
    cdsTreeEND_DATE.AssignFromDataSet(APrcNode.Level.cdsLevelData);
    cdsTreeDOC_BRANCH_CODE.AssignFromDataSet(APrcNode.Level.cdsLevelData);
    cdsTreeDOC_CODE.AssignFromDataSet(APrcNode.Level.cdsLevelData);
    cdsTreeHAS_DOC_ITEMS.AssignFromDataSet(APrcNode.Level.cdsLevelData);
    cdsTreePRC_OP_REGIME_CODE.AssignFromDataSet(APrcNode.Level.cdsLevelData);
    cdsTreeDOC_SPEC_PRODUCT_CODE.AssignFromDataSet(APrcNode.Level.cdsLevelData);
    cdsTreePRC_RING_NO.AssignFromDataSet(APrcNode.Level.cdsLevelData);
    cdsTreePRC_RING_LOCAL_NO.AssignFromDataSet(APrcNode.Level.cdsLevelData);
    cdsTreePRC_ORG_DISTRIB_STATUS_CODE.AssignFromDataSet(APrcNode.Level.cdsLevelData);
    cdsTreePRC_ORG_DISTRIBUTION_COUNT.AssignFromDataSet(APrcNode.Level.cdsLevelData);

    if APrcNode.IsQuickAdd then
      ClearFieldsIfAssigned([cdsTreeBEGIN_DATE, cdsTreeEND_DATE]);

    cdsTreePRC_OBJECT_TREE_DISPLAY_NAME.AsString:=
      IfThen(APrcNode.Level.SupportsRings and Assigned(APrcNode.Level.Owner.RingFieldsOwner), Format('[%d]  ', [cdsTreePRC_RING_NO.AsInteger])) +
      cdsTreePRC_OBJECT_SHORT_NAME.AsString;

    cdsTreeSORT_PRC_OBJECT_FORMATTED_NO.AsString:= GetSortPrcObjectFormattedNo(APrcNode);

    cdsTree_PRINT_DATE_INTERVAL.AsString:= cdsTreeBEGIN_DATE.DisplayText;
    cdsTree_PRINT_STATUS_EXISTANCE_MONTHS.AsString:= cdsTreeSTATUS_EXISTANCE_MONTHS.DisplayText;
    cdsTree_PRINT_PRC_LEARNING_STATUS.AsVariant:=
      cdsPrcLearningStatuses.Lookup('PRC_LEARNING_STATUS_CODE', cdsTreePRC_LEARNING_STATUS_CODE.AsVariant, 'PRC_LEARNING_STATUS_NAME');

    cdsTree_PRINT_PRC_STATUS_DATE.AsString:= cdsTreeSTATUS_DATE.DisplayText;
    cdsTreeHAS_CHILDREN.AsBoolean:= (APrcNode.Children.Count > 0);

    cdsTree.Post;
  except
    cdsTree.Cancel;
    raise;
  end;  { try }
end;

procedure TfrPrcDataFieldEditFrame.EditCurrentRolledUpRecord(APrcNode: TPrcNode);
var
  FieldName: string;
  DestField: TField;
  SrcField: TField;
begin
  cdsTree.Edit;
  try
    for FieldName in AllRollupFieldNames do
      begin
        DestField:= cdsTree.FieldByName(Format('%s_%d', [FieldName, APrcNode.Level.cdsLevelData.FieldByName(APrcNode.Level.KeyFieldName).AsInteger]));
        SrcField:= APrcNode.Level.cdsLevelData.FindField(FieldName);

        // case FieldName of
          if (FieldName = 'PRC_OBJECT_CODE') then
            begin
              DestField.AsString:= APrcNode.FullStrKeyValue;
              Continue;
            end;

          if (FieldName = 'IS_IN_PRC_DATA') then
            begin
              DestField.AsBoolean:= not APrcNode.IsQuickAdd;
              Continue;
            end;

          if (FieldName = 'LEVEL_NAME') then
            begin
              DestField.AsString:= APrcNode.Level.Name;
              Continue;
            end;

          if (FieldName = 'IS_FILTER_ACCEPTED') then
            begin
              DestField.AsBoolean:= IsFilterAccepted(APrcNode);
              Continue;
            end;

          if (FieldName = 'PRC_OBJECT_IMAGE_INDEX') then
            begin
              DestField.AsInteger:= APrcNode.ImageIndex;
              Continue;
            end;

          if (FieldName = 'PRC_ORG_DISTRIB_STATUS_CODE') then
            begin
              if Assigned(SrcField) then
                DestField.Assign(SrcField)
              else
                DestField.AsInteger:= 0;

              Continue;
            end;

        // else
          DestField.Assign(SrcField);
        // end; { case }
      end;

    cdsTree.Post;
  except
    cdsTree.Cancel;
    raise;
  end;
end;

function TfrPrcDataFieldEditFrame.PreserveSelectedPrcObject: TNestProcRec;
begin
  Result:= TNestProcRec.Create(
    procedure (AProc: TProc)
    var
      SavedPrcObjectCode: string;
    begin
      SavedPrcObjectCode:= GetFocusedField(grdProcesses.TreeDataSet.FieldByName('PRC_OBJECT_CODE')).AsString;
      if (SavedPrcObjectCode = '') then
        SavedPrcObjectCode:= grdProcesses.TreeDataSet.FieldByName('PRC_OBJECT_CODE').AsString;
      try
        AProc;
      finally
        actFrame.Update;  // zashtoto da se wijdat wsichki kolonki predi da locate-wame
        LocatePrcObject(SavedPrcObjectCode);
      end;
    end);
end;

procedure TfrPrcDataFieldEditFrame.RefreshTree(ACovertToTreeList: Boolean);
begin
  CheckTreeDataSetOpened;

  Screen.TempCursor(crHourGlass)/
    grdProcesses.PreserveTopRow/
      FcdsTreeDisableControlsSection.TempEnter/
        PreserveSelectedPrcObject/
          FPreserveNodeExpandedStatesSection.TempEnter/
            procedure begin
              cdsTree.TempAutoCalcFields(False)/
                cdsTree.TempUnfilter/
                  procedure begin
                    cdsTree.EmptyDataSet;

                    if FPrcData.ShowOwnerAsRoot then
                      AddOwnerAsRoot;

                    FTempPrcOwner:= TPrcOwner.Create(FPrcData, Utils.IfThen<TClientProcessOwnerData>(FPrcEditMode = pemQuick, FQuickAddPrcData));
                    try
                      InternalRefreshTree(FTempPrcOwner.RootPrcNode);
                    finally
                      FreeAndNil(FTempPrcOwner);
                    end;

                    SetRecordsIsLastChildField;
                  end;

              if ACovertToTreeList then
                grdProcesses.ConvertToTreeList('PRC_OBJECT_CODE', 'VISUAL_PARENT_PRC_OBJECT_CODE');
            end;
end;

// --======================--

procedure TfrPrcDataFieldEditFrame.actPrcDataDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(GetFocusedField(cdsTreeHAS_DOC_ITEMS).AsBoolean);
  (Sender as TAction).Enabled:=
    not cdsTree.IsEmpty and
    (GetFocusedField(cdsTreeLEVEL_NAME).AsString <> FakeRootLevelName);
end;

procedure TfrPrcDataFieldEditFrame.actPrcDataDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    FPrcData.LevelByName(GetFocusedField(cdsTreeLEVEL_NAME).AsString).DocOwnerType,
    GetFocusedField(cdsTreeDOC_BRANCH_CODE),
    GetFocusedField(cdsTreeDOC_CODE));
end;

procedure TfrPrcDataFieldEditFrame.actPrcDataSpecDocStatusExecute(Sender: TObject);
begin
  inherited;
  TfmSpecDocStatus.ShowForm(dmDocClient, GetFocusedField(cdsTreeDOC_SPEC_PRODUCT_CODE).AsInteger, emReadOnly);
end;

procedure TfrPrcDataFieldEditFrame.actPrcDataSpecDocStatusUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not GetFocusedField(cdsTreeDOC_SPEC_PRODUCT_CODE).IsNull;
end;

// --======================--

procedure TfrPrcDataFieldEditFrame.actToggleQuickAddUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= CanInsertOrDeleteRecords;
  (Sender as TAction).Visible:= CanInsertOrDeleteRecords;
end;

procedure TfrPrcDataFieldEditFrame.actToggleQuickAddExecute(Sender: TObject);
const
  PrcEditModes: array[Boolean] of TPrcEditMode = (pemNormal, pemQuick);
begin
  inherited;
  FPrcEditMode:= PrcEditModes[btnToggleQuickAdd.Down];

  if (FPrcEditMode = pemQuick) and not Assigned(FQuickAddPrcData) then
    LoadQuickAddPrcData;

  RefreshTree;
end;

procedure TfrPrcDataFieldEditFrame.LoadQuickAddPrcData;
var
  OwnerPrimaryKeyValue: Variant;
begin
  Assert(not Assigned(FQuickAddPrcData));

  if (FPrcData.QuickAddOwner.IsInstance) then
    OwnerPrimaryKeyValue:= dsData.DataSet.FieldByName(FPrcData.QuickAddKeyFieldName).AsVariant
  else
    OwnerPrimaryKeyValue:= Null;

  FQuickAddPrcData:= TClientProcessOwnerData.Create(FPrcData.QuickAddOwner);
  FQuickAddPrcData.AsVariant:= dmMain.SvrProcesses.LoadPrcData(FPrcData.QuickAddOwner.Name, OwnerPrimaryKeyValue);
end;

procedure TfrPrcDataFieldEditFrame.actPrcDataAddChildLevelUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    CanInsertOrDeleteRecords and
    not cdsTree.IsEmpty and
    not cdsTreeSECONDARY_CHILD_LEVEL_NAME.IsNull and
    not Assigned(FPrcData.QuickAddOwner.FindLevel(cdsTreeSECONDARY_CHILD_LEVEL_NAME.AsString))
end;

procedure TfrPrcDataFieldEditFrame.actPrcDataQuickAddUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= CanAddCurrentRecord;
end;

procedure TfrPrcDataFieldEditFrame.actPrcDataDeleteUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    CanInsertOrDeleteRecords and
    not cdsTree.IsEmpty and
    (GetFocusedField(cdsTreeLEVEL_NAME).AsString <> FakeRootLevelName) and
    not GetFocusedField(cdsTreeIS_IN_PRC_DATA).IsNull and
    GetFocusedField(cdsTreeIS_IN_PRC_DATA).AsBoolean;
end;

procedure TfrPrcDataFieldEditFrame.actPrcDataEditUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not cdsTree.IsEmpty and
    (GetFocusedField(cdsTreeLEVEL_NAME).AsString <> FakeRootLevelName) and
    ( ( not GetFocusedField(cdsTreeIS_IN_PRC_DATA).IsNull and
        not GetFocusedField(cdsTreeIS_IN_PRC_DATA).AsBoolean
      ) or
      ( not GetFocusedField(cdsTreeLEVEL_NAME).IsNull and
        Assigned(GetOwnerLevelEditFormClass(FPrcData, FPrcData.LevelByName(GetFocusedField(cdsTreeLEVEL_NAME).AsString)))
      )
    );
end;

procedure TfrPrcDataFieldEditFrame.actPrcDataAddAllUpdate(Sender: TObject);
begin
  inherited;

  (Sender as TAction).Visible:=
    not FPrcData.HasDateIntervalFields or
    FPrcData.CanOverrideDateInterval;

  (Sender as TAction).Enabled:=
    CanInsertOrDeleteRecords and
    not cdsTree.IsEmpty and
    (FPrcEditMode = pemQuick);
end;

procedure TfrPrcDataFieldEditFrame.actPrcDataDeleteAllUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    CanInsertOrDeleteRecords and
    not cdsTree.IsEmpty;
end;

procedure TfrPrcDataFieldEditFrame.actPrcDataAddBranchUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Visible:=
    not FPrcData.HasDateIntervalFields or
    FPrcData.CanOverrideDateInterval;

  (Sender as TAction).Enabled:=
    CanInsertOrDeleteRecords and
    not cdsTree.IsEmpty and
    (FPrcEditMode = pemQuick);
end;

function TfrPrcDataFieldEditFrame.CanInsertOrDeleteRecords: Boolean;
begin
  Result:=
    not ReadOnly and
    not FPrcData.HasActionStatusChanges;
end;

function TfrPrcDataFieldEditFrame.CanAddCurrentRecord: Boolean;
begin
  Result:=
    CanInsertOrDeleteRecords and
    not cdsTree.IsEmpty and
    (FPrcEditMode = pemQuick) and
    not GetFocusedField(cdsTreeIS_IN_PRC_DATA).IsNull and
    not GetFocusedField(cdsTreeIS_IN_PRC_DATA).AsBoolean;
end;

procedure TfrPrcDataFieldEditFrame.actPrcDataAddChildLevelExecute(Sender: TObject);
var
  SelectedLevel: TClientProcessLevelData;
  DestinationLevel: TClientProcessLevelData;
  DestinationDataSet: TDataSet;
  EditFormClass: TEditFormClass;
begin
  inherited;
  SelectedLevel:= FPrcData.LevelByName(cdsTreeLEVEL_NAME.AsString);
  DestinationLevel:= FPrcData.SecondaryChildLevel(SelectedLevel);
  Assert(Assigned(DestinationLevel));

  DestinationDataSet:= DestinationLevel.cdsLevelData;

  EditFormClass:= GetOwnerLevelEditFormClass(FPrcData, DestinationLevel);
  Assert(Assigned(EditFormClass));

  if not EditFormClass.ShowForm(dmDocClient, DestinationDataSet, emInsert, doNone) then
    Abort;

  RefreshTree;
end;

procedure TfrPrcDataFieldEditFrame.actPrcDataQuickAddExecute(Sender: TObject);
var
  SelectedLevel: TClientProcessLevelData;
  DestinationDataSet: TDataSet;
  EditFormClass: TEditFormClass;

  procedure AddWithoutEditForm;
  begin
    DestinationDataSet.SafeAppend/
      procedure
      var
        f: TField;
      begin
        for f in DestinationDataSet.Fields do
          if f.Required and f.IsNull then
            raise ERequiredFieldIsNull.CreateFmt(SFieldRequired, [f.DisplayLabel]);
      end;  { lambda }
  end;

  procedure AddWithEditForm;
  begin
    Assert(Assigned(EditFormClass));
    if not EditFormClass.ShowForm(dmDocClient, DestinationDataSet, emInsert, doNone) then
      Abort;
  end;

  procedure StandardAddRecord;
  begin
    if Assigned(EditFormClass) then
      AddWithEditForm
    else
      begin
        ConfirmAction(SConfirmAddRecord);
        AddWithoutEditForm;
      end;
  end;

  procedure TryAddWithoutConfirmation;
  begin
    try
      AddWithoutEditForm;
    except
      on ERequiredFieldIsNull do
        begin
          StandardAddRecord;
        end;
    end;  { try }
  end;

begin
  inherited;

  SelectedLevel:= FPrcData.LevelByName(GetFocusedField(cdsTreeLEVEL_NAME).AsString);
  DestinationDataSet:= SelectedLevel.cdsLevelData;
  EditFormClass:= GetOwnerLevelEditFormClass(FPrcData, SelectedLevel);

  if ControlIsPressed then
    TryAddWithoutConfirmation
  else
    StandardAddRecord;

  RefreshTree;
end;

procedure TfrPrcDataFieldEditFrame.actPrcDataDeleteExecute(Sender: TObject);

  procedure CheckRecordHasNoDescendants(ALevel: TClientProcessLevelData);
  var
    Level: TClientProcessLevelData;
  begin
    for Level in FPrcData.LevelChildren(ALevel) do
      begin
        Level.cdsLevelData.First;
        while not Level.cdsLevelData.Eof do
          begin
            if (Level.LogicalParentFullStrKeyValue = ALevel.FullStrKeyValue) then
              raise Exception.Create(SCannotDeleteProcessObjectWithDescendants);

            Level.cdsLevelData.Next;
          end;  { while }
      end;  { for }
  end;

var
  SelectedLevel: TClientProcessLevelData;
begin
  inherited;

  if not ControlIsPressed then
    ConfirmAction(SConfirmDeleteRecord);

  SelectedLevel:= FPrcData.LevelByName(GetFocusedField(cdsTreeLEVEL_NAME).AsString);
  SelectedLevel.Locate(GetFocusedField(cdsTreePRC_OBJECT_CODE).AsString);
  CheckRecordHasNoDescendants(SelectedLevel);
  SelectedLevel.cdsLevelData.Delete;
  RefreshTree;
end;

procedure TfrPrcDataFieldEditFrame.actPrcDataEditExecute(Sender: TObject);
var
  DestinationDataSet: TDataSet;
  EditFormClass: TEditFormClass;
  SelectedLevel: TClientProcessLevelData;
  IsModified: Boolean;
  em: TEditMode;
begin
  inherited;
  if not GetFocusedField(cdsTreeIS_IN_PRC_DATA).AsBoolean then
    actPrcDataQuickAdd.Execute
  else
    begin
      SelectedLevel:= FPrcData.LevelByName(GetFocusedField(cdsTreeLEVEL_NAME).AsString);
      SelectedLevel.Locate(GetFocusedField(cdsTreePRC_OBJECT_CODE).AsString);
      DestinationDataSet:= SelectedLevel.cdsLevelData;

      EditFormClass:= GetOwnerLevelEditFormClass(FPrcData, SelectedLevel);
      Assert(Assigned(EditFormClass));

      if ReadOnly then
        em:= emReadOnly
      else
        em:= emEdit;

      if EditFormClass.InheritsFrom(TfmPrcActionLearningStatuses) then
        IsModified:=
          TfmPrcActionLearningStatuses.ShowForm(
            dmDocClient,
            DestinationDataSet,
            em,
            doNone,
            FPrcData,
            dsData.DataSet.FieldByName(FPrcData.LearningBeginDateFieldName).AsDateTime,
            dsData.DataSet.FieldByName(FPrcData.LearningEndDateFieldName).AsDateTime)
      else
        IsModified:= EditFormClass.ShowForm(dmDocClient, DestinationDataSet, em);

      if IsModified then
        RefreshTree;
    end;
end;

procedure TfrPrcDataFieldEditFrame.actPrcDataAddAllExecute(Sender: TObject);
begin
  inherited;
  ConfirmAction(SConfirmAddAllRecords);
  AddRecords('');
end;

procedure TfrPrcDataFieldEditFrame.DeleteLevelRecords(ALevel: TClientProcessLevelData; const AParentPrcObjectCode: string);
var
  Level: TClientProcessLevelData;
begin
  for Level in FPrcData.LevelChildren(ALevel) do
    DeleteLevelRecords(Level, AParentPrcObjectCode);

  if Assigned(ALevel) then
    begin
      ALevel.cdsLevelData.First;
      while not ALevel.cdsLevelData.Eof do
        if IsDescendant(AParentPrcObjectCode, ALevel.FullStrKeyValue) then
          ALevel.cdsLevelData.Delete
        else
          ALevel.cdsLevelData.Next;
    end;  { if }
end;

procedure TfrPrcDataFieldEditFrame.DeleteRecords(const AParentPrcObjectCode: string);
begin
  FMassDeletingSection.TempEnter/
    procedure begin
      DeleteLevelRecords(FPrcData.RootLevel, AParentPrcObjectCode);
    end;
end;

procedure TfrPrcDataFieldEditFrame.DeleteAllPrcData;
begin
  DeleteRecords('');
  RefreshTree;
end;

procedure TfrPrcDataFieldEditFrame.actPrcDataDeleteAllExecute(Sender: TObject);
begin
  inherited;
  ConfirmAction(SConfirmDeleteAllRecords);
  DeleteAllPrcData;
end;

procedure TfrPrcDataFieldEditFrame.actPrcDataAddBranchExecute(Sender: TObject);
begin
  inherited;
  ConfirmAction(SConfirmAddRecord);
  AddRecords(GetFocusedField(cdsTreePRC_OBJECT_CODE).AsString);
end;

function TfrPrcDataFieldEditFrame.IsDescendant(const AParentPrcObjectCode, ANodePrcObjectCode: string): Boolean;
begin
  Result:= StartsStr(AParentPrcObjectCode, ANodePrcObjectCode);
end;

function TfrPrcDataFieldEditFrame.IsCurrentRecordDescendant(const AParentPrcObjectCode: string): Boolean;
begin
  Result:= IsDescendant(AParentPrcObjectCode, cdsTreePRC_OBJECT_CODE.AsString);
end;

function TfrPrcDataFieldEditFrame.IsCurrentRecordInPrcData: Boolean;
begin
  Result:= cdsTreeIS_IN_PRC_DATA.AsBoolean;
end;

function TfrPrcDataFieldEditFrame.TempUnrollUp(AConvertToTreeList: Boolean): TNestProcRec;
begin
  Result:= TNestProcRec.Create(
    procedure (AProc: TProc)
    begin
      Assert(FIsRolledUp);

      FIsRolledUp:= False;
      try
        RefreshTree(AConvertToTreeList);
        AProc;
      finally
        FIsRolledUp:= True;
        RefreshTree;
      end;
    end);
end;

procedure TfrPrcDataFieldEditFrame.AddRecords(const AParentPrcObjectCode: string);
var
  RecordHasBeenAdded: Boolean;
begin
  grdProcesses.PreserveTopRow/
    PreserveSelectedPrcObject/
      FMassAddingSection.TempEnter/
        IfThen(FIsRolledUp, TempUnrollUp)/
          procedure begin
            RecordHasBeenAdded:= True;
            while RecordHasBeenAdded do
              begin
                RecordHasBeenAdded:= False;
                cdsTree.PreserveBookmark/
                  cdsTree.ForEach/
                    procedure begin
                      if not IsCurrentRecordInPrcData and IsCurrentRecordDescendant(AParentPrcObjectCode) then
                        FPrcData.LevelByName(cdsTreeLEVEL_NAME.AsString).cdsLevelData.SafeAppend/
                          procedure begin
                            RecordHasBeenAdded:= True;
                          end;
                    end;

                if RecordHasBeenAdded then
                  RefreshTree(False);
              end;
          end;
end;

procedure TfrPrcDataFieldEditFrame.cdsLevelDataNewRecord(DataSet: TDataSet);

  procedure TryAssignFieldFromTree(const AFieldName: string);
  begin
    if Assigned(DataSet.FindField(AFieldName)) then
      if FMassAddingSection.IsEntered then
        DataSet.FieldByName(AFieldName).Assign(cdsTree.FieldByName(AFieldName))
      else
        DataSet.FieldByName(AFieldName).Assign(GetFocusedField(cdsTree.FieldByName(AFieldName)));
  end;

var
  Level: TClientProcessLevelData;
  OwnerKeyField: TField;
begin
  Level:= FPrcData.LevelByDataSet(DataSet);

  if not FPastePrcDataSection.IsEntered then
    begin
      if FMassAddingSection.IsEntered then
        Level.FullStrKeyValue:= cdsTreePRC_OBJECT_CODE.AsString
      else
        Level.FullStrKeyValue:= GetFocusedField(cdsTreePRC_OBJECT_CODE).AsString;

      OwnerKeyField:= dsData.DataSet.FieldByName(FPrcData.KeyFieldName);
      DataSet.FieldByName(FPrcData.KeyFieldName).AsInteger:=
        IfThen(OwnerKeyField.IsNull, -1, OwnerKeyField.AsInteger);

      TryAssignFieldFromTree('DOC_SPEC_PRODUC_CODE');
      TryAssignFieldFromTree('DOC_BRANCH_CODE');
      TryAssignFieldFromTree('DOC_CODE');
      TryAssignFieldFromTree('HAS_DOC_ITEMS');
      TryAssignFieldFromTree('PRC_RING_NO');
      TryAssignFieldFromTree('PRC_RING_LOCAL_NO');
      TryAssignFieldFromTree('PRC_OBJECT_FORMATTED_NO');
      TryAssignFieldFromTree('PRC_OBJECT_NAME');
      TryAssignFieldFromTree('PRC_OBJECT_SHORT_NAME');

      if FPrcData.HasRegimeFields and Level.CanHaveRegimeFields then
        DataSet.FieldByName('PRC_OP_REGIME_CODE').Clear;
    end;

  if FPrcData.HasDateIntervalFields and Level.CanHaveDateIntervalFields then
    with DataSet.FieldByName('OVERRIDE_DATE_INTERVAL') do
      TempReadOnly(False)/
        procedure begin
          AsBoolean:= not FPrcData.CanOverrideDateInterval;
        end;  { lambda }

  if Assigned(DataSet.FindField(cdsTreePRC_ORG_DISTRIB_STATUS_CODE.FieldName)) then
    DataSet.FieldByName(cdsTreePRC_ORG_DISTRIB_STATUS_CODE.FieldName).AsInteger:= PrcOrgDistributionStatusToInt(DefaultPrcOrgDistributionStatus);

  if Assigned(DataSet.FindField(cdsTreePRC_ORG_DISTRIBUTION_COUNT.FieldName)) then
    DataSet.FieldByName(cdsTreePRC_ORG_DISTRIBUTION_COUNT.FieldName).AsInteger:= 0;
end;

procedure TfrPrcDataFieldEditFrame.grdProcessesDblClick(Sender: TObject);
begin
  inherited;
  if GetFocusedField(cdsTreeIS_IN_PRC_DATA).AsBoolean then
    begin
      if (FPrcEditMode = pemQuick) and ControlIsPressed then
        actPrcDataDelete.Execute
      else
        actPrcDataEdit.Execute;
    end
  else
    actPrcDataQuickAdd.Execute;
end;

function TfrPrcDataFieldEditFrame.GetFocusedField(AField: TField): TField;
var
  CurrentColIndex: Integer;
begin
  CurrentColIndex:= grdProcesses.Col - 1;

  if (CurrentColIndex >= 0) and IsRollupField(grdProcesses.Columns[CurrentColIndex].Field) then
    Result:= grdProcesses.TreeDataSet.FindField(Format('%s_%d', [AField.FieldName, GetRollupColumnCode(grdProcesses.Columns[CurrentColIndex])]))
  else
    Result:= AField;
end;

procedure TfrPrcDataFieldEditFrame.PrcOrgDistributionStatusCodeFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);
var
  DistributionCountField: TField;
begin
  if not Sender.IsNull then
    begin
      if IsRollupField(Sender) then
        DistributionCountField:= GetRollupField(Sender, 'PRC_ORG_DISTRIBUTION_COUNT')
      else
        DistributionCountField:= Sender.DataSet.FieldByName('PRC_ORG_DISTRIBUTION_COUNT');

      Text:= '';

      if IsRollupField(Sender) then
        Text:= Sender.DisplayLabel;

      if (Sender.AsInteger > 0) then
        begin
          Text:= IfThen(Text <> '', Text + SLineBreak) + PrcOrgDistributionStatusNames[IntToPrcOrgDistributionStatus(Sender.AsInteger)];
          if (DistributionCountField.AsInteger > 1) then
            Text:= Text + SLineBreak + SGreaterThanOneOrgDistrubutionCount;
        end;
    end;
end;

procedure TfrPrcDataFieldEditFrame.PrcObjectImageIndexFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if not Sender.IsNull then
    Text:= Sender.DisplayLabel;
end;

procedure TfrPrcDataFieldEditFrame.grdProcessesDataHintShow(Sender: TCustomDBGridEh; CursorPos: TPoint;
  Cell: TGridCoord; InCellCursorPos: TPoint; Column: TColumnEh; var Params: TDBGridEhDataHintParams;
  var Processed: Boolean);
begin
  inherited;
  if ControlIsPressed then
    Processed:= True;
end;

// --======================--

procedure TfrPrcDataFieldEditFrame.actToggleCurrentDateFilterUpdate(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    begin
      Enabled:= FPrcData.HasCurrentDateFilter;
      Checked:= cdsTree.Filtered;
    end;  { with }
end;

procedure TfrPrcDataFieldEditFrame.actToggleRollupExecute(Sender: TObject);
begin
  inherited;

  FIsRolledUp:= not FIsRolledUp;

  RefreshTree;

  with grdProcesses do
    if not FIsRolledUp and (Col > 0) and IsRollupField(Columns[Col - 1].Field) then
      Col:= 1;
end;

procedure TfrPrcDataFieldEditFrame.actToggleRollupUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= HasOwner and Assigned(FPrcData.RollupLevel);
end;

procedure TfrPrcDataFieldEditFrame.actToggleCurrentDateFilterExecute(Sender: TObject);
begin
  inherited;
  cdsTree.Filtered:= not cdsTree.Filtered;
  RefreshTree;
end;

procedure TfrPrcDataFieldEditFrame.actPastProcessesExecute(Sender: TObject);
begin
  inherited;
  FFilterPastProcesses:= not FFilterPastProcesses;
  RefreshTree;
end;

procedure TfrPrcDataFieldEditFrame.actPastProcessesUpdate(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    begin
      Enabled:= FPrcData.HasCurrentDateFilter and cdsTree.Filtered;
      Checked:= FFilterPastProcesses;
    end;  { with }
end;

procedure TfrPrcDataFieldEditFrame.actPresentProcessesExecute(Sender: TObject);
begin
  inherited;
  FFilterPresentProcesses:= not FFilterPresentProcesses;
  RefreshTree;
end;

procedure TfrPrcDataFieldEditFrame.actPresentProcessesUpdate(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    begin
      Enabled:= FPrcData.HasCurrentDateFilter and cdsTree.Filtered;
      Checked:= FFilterPresentProcesses;
    end;  { with }
end;

procedure TfrPrcDataFieldEditFrame.actFutureProcessesExecute(Sender: TObject);
begin
  inherited;
  FFilterFutureProcesses:= not FFilterFutureProcesses;
  RefreshTree;
end;

procedure TfrPrcDataFieldEditFrame.actFutureProcessesUpdate(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    begin
      Enabled:= FPrcData.HasCurrentDateFilter and cdsTree.Filtered;
      Checked:= FFilterFutureProcesses;
    end;  { with }
end;

procedure TfrPrcDataFieldEditFrame.cdsTreeFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:= (FPrcEditMode = pemQuick) or cdsTreeIS_FILTER_ACCEPTED.AsBoolean;
end;

// --======================--

procedure TfrPrcDataFieldEditFrame.actDeleteBranchExecute(Sender: TObject);
begin
  inherited;
  ConfirmAction(SConfirmDeleteRecord);
  DeleteRecords(GetFocusedField(cdsTreePRC_OBJECT_CODE).AsString);
  RefreshTree;
end;

procedure TfrPrcDataFieldEditFrame.actDeleteBranchUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    CanInsertOrDeleteRecords and
    not cdsTree.IsEmpty and
    not GetFocusedField(cdsTreeIS_IN_PRC_DATA).IsNull and
    GetFocusedField(cdsTreeIS_IN_PRC_DATA).AsBoolean;
end;

procedure TfrPrcDataFieldEditFrame.actExcelExportExecute(Sender: TObject);
begin
  inherited;
  GridExcelExport(grdProcesses);
end;

procedure TfrPrcDataFieldEditFrame.actExcelExportUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsTree.IsEmpty;
end;

procedure TfrPrcDataFieldEditFrame.actPrintPrcDataExecute(Sender: TObject);
begin
  inherited;
  grdProcesses.PreserveTopRow/
    PreserveSelectedPrcObject/
      IfThen(FIsRolledUp, TempUnrollUp(True))/
        procedure begin
          PrcDataReportClass.PrintReport(grdProcesses.TreeDataSet, Fields[0].DataSet);
        end;
end;

procedure TfrPrcDataFieldEditFrame.actPrintPrcDataUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Visible:= Assigned(PrcDataReportClass);
  (Sender as TAction).Enabled:= Assigned(PrcDataReportClass) and not cdsTree.IsEmpty;
end;

// --======================--

procedure TfrPrcDataFieldEditFrame.cdsTreeSTATUS_EXISTANCE_MONTHSGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText and not Sender.IsNull then
    Text:= Sender.AsString + ' ' + IfThen(Sender.AsInteger = 1, SMonth, SMonths)
  else
    Text:= Sender.AsString;
end;

// --======================--

procedure TfrPrcDataFieldEditFrame.actSetIntersectionFilterOffExecute(Sender: TObject);
begin
  inherited;
  FIsIntersectionFilterEnabled:= False;
  RefreshTree;
end;

procedure TfrPrcDataFieldEditFrame.actSetIntersectionFilterOffUpdate(Sender: TObject);
begin
  inherited;
  with (Sender as TAction) do
    begin
      Enabled:= FPrcData.HasDateIntervalIntersectionFilter and cdsTree.Filtered;
      Checked:= not FIsIntersectionFilterEnabled;
    end;  { with }
end;

procedure TfrPrcDataFieldEditFrame.actSetIntersectionFilterOnExecute(Sender: TObject);
begin
  inherited;
  FIsIntersectionFilterEnabled:= True;
  RefreshTree;
end;

procedure TfrPrcDataFieldEditFrame.actSetIntersectionFilterOnUpdate(Sender: TObject);
begin
  inherited;
  with (Sender as TAction) do
    begin
      Enabled:= FPrcData.HasDateIntervalIntersectionFilter and cdsTree.Filtered;
      Checked:= FIsIntersectionFilterEnabled;
    end;  { with }
end;

procedure TfrPrcDataFieldEditFrame.RefreshOwnerAsRoot;
begin
  Assert(FPrcData.ShowOwnerAsRoot);
  cdsTree.TempDisableControls/
    cdsTree.PreserveBookmark/
      procedure begin
        cdsTree.Locate('PRC_OBJECT_CODE', FPrcData.RootParentStrKeyValue, []);
        cdsTree.SafeEdit/
          procedure begin
            cdsTreePRC_OBJECT_NAME.Assign(OwnerNameField);
            cdsTreePRC_OBJECT_SHORT_NAME.Assign(OwnerShortNameField);
          end;
      end;
end;

// --======================--

function TfrPrcDataFieldEditFrame.GetSelectedPrcObjectCode(ALevel: TProcessLevel): Variant;
var
  sl: TStringList;
  Value: string;
begin
  sl:= TStringList.Create;
  try
    sl.Delimiter:= ';';
    sl.DelimitedText:= GetFocusedField(cdsTreePRC_OBJECT_CODE).AsString;
    Value:= sl.Values[ALevel.KeyFieldName];

    if (Value = '') then
      Result:= Null
    else
      Result:= StrToInt(Value);
  finally
    FreeAndNil(sl);
  end;
end;

// --======================--

procedure TfrPrcDataFieldEditFrame.actCopyExecute(Sender: TObject);
begin
  inherited;
  PrcDataSaveToClipboard(FPrcData);
end;

procedure TfrPrcDataFieldEditFrame.actCopyUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
     grdProcesses.Focused and
     not cdsTree.IsEmpty;
end;

procedure TfrPrcDataFieldEditFrame.actPasteExecute(Sender: TObject);
begin
  inherited;

  if not FPrcData.RootLevel.cdsLevelData.IsEmpty then
    ConfirmAction(SConfirmPastePrcData);

  FPastePrcDataSection.TempEnter/
    Utils.Using(TClientProcessOwnerData.Create(FPrcData))/
      procedure (SrcPrcData: TClientProcessOwnerData) begin
        PRcDataLoadFromClipboard(SrcPrcData);

        if not Assigned(FQuickAddPrcData) then
          LoadQuickAddPrcData;

        PrcDataCopy(SrcPrcData, FPrcData, FQuickAddPrcData);
      end;

  RefreshTree;
end;

procedure TfrPrcDataFieldEditFrame.actPasteUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    grdProcesses.Focused and
    not ReadOnly and
    CanInsertOrDeleteRecords and
    ClipboardContainsPrcData(FPrcData);
end;

initialization
  AllRollupFieldNames:= ConcatStringArrays(RollupColumnFieldNames, RollupNonColumnFieldNames);
end.
