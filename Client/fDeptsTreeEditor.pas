unit fDeptsTreeEditor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fDeptsTree, Db, DBClient, ImgList, ActnList, ComCtrls, GridsEh,
  StdCtrls, TreeParentsComboBox, DBCtrls, ColorNavigator,
  ToolWin, Buttons, ExtCtrls, Menus, fTreeNomForm, fTreeNomEditorForm,
  AbmesClientDataSet, DBGridEh, AbmesDBGrid, AbmesFields, fBaseFrame,
  fDBFrame, fTreeNodeParamsFrame, JvButtons, fTreeForm, uClientTypes,
  fFieldEditFrame, fDoc, JvComponent, JvCaptionButton, JvComponentBase,
  fTreeSelectForm, dDocClient, ParamDataSet, AbmesDBCheckBox,
  DBGridEhGrouping, System.Actions;
                                                             
type
  TfmDeptsTreeEditor = class(TTreeNomEditorForm)
    cdsNodeChildrenDEPT_CODE: TAbmesFloatField;                                  
    cdsNodeChildrenPARENT_CODE: TAbmesFloatField;                         
    cdsNodeChildrenNAME: TAbmesWideStringField;
    cdsNodeChildrenCUSTOM_CODE: TAbmesFloatField;
    cdsNodeChildrenDEPT_TYPE_CODE: TAbmesFloatField;
    cdsNodeChildrenSUFFIX_LETTER: TAbmesWideStringField;
    cdsDeptTypes: TAbmesClientDataSet;
    cdsDeptTypesDEPT_TYPE_CODE: TAbmesFloatField;
    cdsDeptTypesDEPT_TYPE_ABBREV: TAbmesWideStringField;
    cdsNodeChildren_DEPT_TYPE_ABBREV: TAbmesWideStringField;                         
    cdsNodeChildrenIS_BRANCH: TAbmesFloatField;
    cdsNodeChildrenSHOW_NO: TAbmesWideStringField;
    cdsNodeChildrenPRODUCT_CODE: TAbmesFloatField;
    cdsNodeChildrenIS_GROUP: TAbmesFloatField;
    cdsNodeChildrenPRODUCT_NAME: TAbmesWideStringField;
    cdsNodeChildrenPRODUCT_NO: TAbmesFloatField;
    cdsPrintTreeSHOW_NO: TAbmesWideStringField;
    cdsNodeChildrenDOC_BRANCH_CODE: TAbmesFloatField;
    cdsNodeChildrenDOC_CODE: TAbmesFloatField;
    actInsertOccupation: TAction;
    actEditOccupation: TAction;
    pnlOccupationsUpper: TPanel;
    navOccupations: TDBColorNavigator;
    cdsNodeChildrenIS_STORE: TAbmesFloatField;
    cdsNodeChildrenIS_COMPUTERIZED_STORE: TAbmesFloatField;
    cdsTreeNodeChildrenIS_STORE: TAbmesFloatField;
    cdsTreeNodeChildrenIS_COMPUTERIZED_STORE: TAbmesFloatField;
    cdsTreeToNodeIS_STORE: TAbmesFloatField;
    cdsTreeToNodeIS_COMPUTERIZED_STORE: TAbmesFloatField;
    cdsTreeNodeIS_STORE: TAbmesFloatField;
    cdsTreeNodeIS_COMPUTERIZED_STORE: TAbmesFloatField;
    tlbDocs: TToolBar;
    btnDocs: TToolButton;
    cdsNodeChildrenHAS_DOCUMENTATION: TAbmesFloatField;
    cdsNodeChildrenCHANGE_DATE_TIME: TAbmesSQLTimeStampField;
    cdsOccupations: TAbmesClientDataSet;
    cdsOccupationsNODE_PARAM_CODE: TAbmesFloatField;
    cdsOccupationsNODE_PARAM_NAME: TAbmesWideStringField;
    cdsOccupationsNODE_PARAM_ORDER_NO: TAbmesFloatField;                                          
    cdsOccupationsPARAM_VALUE: TAbmesWideStringField;
    cdsOccupationsOCCUPATION_CODE: TAbmesFloatField;
    cdsOccupationsIS_ACTIVE: TAbmesFloatField;
    cdsOccupationsIS_OCCUPIED: TAbmesFloatField;
    cdsOccupationsIS_DEFINED: TAbmesFloatField;
    cdsOccupationsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsOccupationsDOC_CODE: TAbmesFloatField;
    cdsOccupationsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    cdsOccupationsDOC_IS_COMPLETE: TAbmesFloatField;
    cdsTreeNodeChildrenSHOW_NO: TAbmesWideStringField;
    cdsOccupationsACTIVE_DI_COUNT: TAbmesFloatField;
    cdsOccupationsUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsOccupationsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    pnlDocs: TPanel;
    bvlDocBottomLine: TBevel;
    pnlDocStatusPanels: TPanel;
    pnlDocStatusDeptName: TPanel;
    txtDeptName: TDBText;
    pnlDocStatusDeptNo: TPanel;
    txtDeptNo: TDBText;
    frDoc: TfrDoc;
    btnShowDocs: TToolButton;
    actShowDocs: TAction;
    cdsNodeChildrenDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    cdsNodeChildrenDOC_IS_COMPLETE: TAbmesFloatField;
    cdsNodeChildrenACTIVE_DI_COUNT: TAbmesFloatField;
    cdsNodeChildrenUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsNodeChildrenUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsNodeChildrenBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsNodeChildrenEND_DATE: TAbmesSQLTimeStampField;
    cdsNodeChildrenIS_EXTERNAL: TAbmesFloatField;
    cdsNodeChildrenIS_RECURRENT: TAbmesFloatField;
    cdsNodeChildrenPARENT_IS_RECURRENT: TAbmesFloatField;
    cdsNodeChildrenPARENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsNodeChildrenPARENT_END_DATE: TAbmesSQLTimeStampField;
    cdsOccupationsIS_MAIN: TAbmesFloatField;
    cdsOccupationsOCCUPATION_PHASE_NAME: TAbmesWideStringField;
    cdsOccupationsIS_PAST: TAbmesFloatField;
    cdsOccupationsIS_FUTURE: TAbmesFloatField;
    tlbOccupations: TToolBar;
    sepBeforeShowPastOccupations: TToolButton;
    actShowPastOccupations: TAction;
    actShowActiveOccupations: TAction;
    actShowFutureOccupations: TAction;
    btnShowFutureOccupations: TSpeedButton;
    btnShowActiveOccupations: TSpeedButton;
    btnShowPastOccupations: TSpeedButton;
    actSpecDocStatus: TAction;
    btnSpecDocStatus: TToolButton;
    sepSpecDocStatus: TToolButton;
    actOperationLevelDeptDetailFlow: TAction;
    actStageLevelDeptDetailFlow: TAction;
    cdsDeptDetailFlowParams: TAbmesClientDataSet;
    cdsDeptDetailFlowParamsCHOSEN_DEPTS: TAbmesWideStringField;
    cdsDeptDetailFlowParamsFLOW_LEVEL: TAbmesFloatField;
    pmDeptDetailFlow: TPopupMenu;
    miOperationLevelDeptDetailFlow: TMenuItem;
    miStageLevelDeptDetailFlow: TMenuItem;
    btnDeptDetailFlow: TToolButton;
    cdsNodeChildrenIS_FIN_STORE: TAbmesFloatField;
    ilStore: TImageList;
    ilExternal: TImageList;
    ilRecurrent: TImageList;
    ilInactive: TImageList;
    cdsTreeNodeChildrenIS_BRANCH: TAbmesFloatField;
    cdsTreeNodeChildrenIS_FIN_STORE: TAbmesFloatField;
    cdsTreeNodeChildrenIS_EXTERNAL: TAbmesFloatField;
    cdsTreeNodeChildrenIS_RECURRENT: TAbmesFloatField;
    cdsTreeNodeChildrenINACTIVE_TYPE_CODE: TAbmesFloatField;
    cdsTreeToNodeIS_BRANCH: TAbmesFloatField;
    cdsTreeToNodeIS_FIN_STORE: TAbmesFloatField;
    cdsTreeToNodeIS_EXTERNAL: TAbmesFloatField;
    cdsTreeToNodeIS_RECURRENT: TAbmesFloatField;
    cdsTreeToNodeINACTIVE_TYPE_CODE: TAbmesFloatField;
    cdsTreeNodeIS_BRANCH: TAbmesFloatField;
    cdsTreeNodeIS_FIN_STORE: TAbmesFloatField;
    cdsTreeNodeIS_EXTERNAL: TAbmesFloatField;
    cdsTreeNodeIS_RECURRENT: TAbmesFloatField;
    cdsTreeNodeINACTIVE_TYPE_CODE: TAbmesFloatField;
    cdsNodeChildrenINACTIVE_TYPE_CODE: TAbmesFloatField;
    actOccupationCreateLike: TAction;
    sepEditOccupations: TToolButton;
    btnAddOccupation: TToolButton;
    btnDelOccupation: TToolButton;
    btnEditOccupation: TToolButton;
    actDelOccupation: TAction;
    pmInsertOccupationMenu: TPopupMenu;
    miInsertOccupation: TMenuItem;
    miCreateLikeOccupation: TMenuItem;
    cdsNodeChildrenSTORE_TYPE_CODE: TAbmesFloatField;
    cdsNodeChildrenPRC_DATA: TBlobField;
    pdsFindParamsFIND_PRODUCT: TAbmesFloatField;
    chkFindProduct: TAbmesDBCheckBox;
    cdsFindSHOW_NO: TAbmesWideStringField;
    actStoreQuantities: TAction;
    cdsStoreQuantitiesParams: TAbmesClientDataSet;
    cdsStoreQuantitiesParamsCHOSEN_PRODUCTS: TStringField;
    cdsStoreQuantitiesParamsCHOSEN_DEPTS: TStringField;
    cdsStoreQuantitiesParamsSTORE_DEAL_DATE: TAbmesDateTimeField;
    btnStoreQuantities: TToolButton;
    cdsNodeChildrenIS_OWD_PRIORITIES_SET_COMPLETE: TAbmesFloatField;
    cdsNodeChildrenSKIP_OWDP_TYPE_CHECK: TAbmesFloatField;
    tlbOccupationsMaximize: TToolBar;
    btnMaximize: TSpeedButton;
    pnlOccupationsUpperCaption: TPanel;
    cdsPrintTreeINACTIVE_TYPE_CODE: TAbmesFloatField;
    cdsPrintTreeIS_EXTERNAL: TAbmesFloatField;
    cdsPrintTreeIS_RECURRENT: TAbmesFloatField;
    cdsPrintTreeIS_BRANCH: TAbmesFloatField;
    cdsPrintTreeIS_STORE: TAbmesFloatField;
    cdsPrintTreeIS_FIN_STORE: TAbmesFloatField;
    procedure actFilterOccupationsExecute(Sender: TObject);
    procedure grdParamsColumns0GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
    procedure cdsOccupationsFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cdsNodeChildrenNODE_TYPEChange(Sender: TField);
    procedure cdsNodeChildrenNODE_NAMEChange(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure cdsNodeChildrenNewRecord(DataSet: TDataSet);
    procedure cdsNodeChildrenBeforePost(DataSet: TDataSet);
    procedure cdsNodeChildrenPRODUCT_CODEChange(Sender: TField);
    procedure cdsNodeChildrenBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsNodeChildrenBeforeDelete(DataSet: TDataSet);
    procedure frTreeNodeParamsgrdParamsDblClick(Sender: TObject);
    procedure actInsertOccupationExecute(Sender: TObject);
    procedure actInsertOccupationUpdate(Sender: TObject);
    procedure actEditOccupationExecute(Sender: TObject);
    procedure actEditOccupationUpdate(Sender: TObject);
    procedure sptParamsMoved(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsNodeChildrenIS_STOREChange(Sender: TField);
    procedure btnDocsClick(Sender: TObject);
    procedure frTreeNodeParamscdsParamsPARAM_VALUEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure frTreeNodeParamscdsParamsAfterOpen(DataSet: TDataSet);
    procedure frTreeNodeParamscdsParamsBeforeClose(DataSet: TDataSet);
    procedure cdsOccupationsAfterScroll(DataSet: TDataSet);
    procedure frTreeNodeParamscdsParamsAfterScroll(DataSet: TDataSet);
    procedure cdsOccupationsDOC_EMPTINESS_REQUIREMENT_CODEGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsOccupationsUNAUTHORIZED_ACTIVE_DI_COUNTGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsNodeChildrenAfterOpen(DataSet: TDataSet);
    procedure cdsNodeChildrenBeforeClose(DataSet: TDataSet);
    procedure actShowDocsUpdate(Sender: TObject);
    procedure actShowDocsExecute(Sender: TObject);
    procedure actShowParamsExecute(Sender: TObject);
    procedure cdsNodeChildrenDOC_EMPTINESS_REQUIREMENT_CODEGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsNodeChildrenUNAUTHORIZED_ACTIVE_DI_COUNTGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsOccupationsReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure actSpecDocStatusUpdate(Sender: TObject);
    procedure actSpecDocStatusExecute(Sender: TObject);
    procedure actOperationLevelDeptDetailFlowUpdate(Sender: TObject);
    procedure actStageLevelDeptDetailFlowUpdate(Sender: TObject);
    procedure actOperationLevelDeptDetailFlowExecute(Sender: TObject);
    procedure actStageLevelDeptDetailFlowExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actOccupationCreateLikeUpdate(Sender: TObject);
    procedure actOccupationCreateLikeExecute(Sender: TObject);
    procedure actDelOccupationUpdate(Sender: TObject);
    procedure actDelOccupationExecute(Sender: TObject);
    procedure cdsNodeChildrenBeforeOpen(DataSet: TDataSet);
    procedure cdsFindBeforeOpen(DataSet: TDataSet);
    procedure actStoreQuantitiesUpdate(Sender: TObject);
    procedure actStoreQuantitiesExecute(Sender: TObject);
    procedure cdsTreeNodeChildrenNODE_NAMEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsTreeNodeChildrenSHOW_NOGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsTreeToNodeNODE_NAMEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsPrintTreeBeforeOpen(DataSet: TDataSet);
    procedure actCopyNoToClipboardExecute(Sender: TObject);
    procedure grdChildrenGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure frTreeNodeParamsgrdParamsGetCellParams(Sender: TObject;
      Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
  private
    FDeptPeriodsClientDataSet: TClientDataSet;
    FStoreMinQuantitiesClientDataSet: TClientDataSet;
    FDeptOWDPrioritiesClientDataSet: TClientDataSet;
    FSynchronizing: Boolean;
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    FSelectStore: Boolean;
    FSelectFinancialStore: Boolean;
    FDenyFinancialStore: Boolean;
    procedure dmDocClientOnDataChanged(Sender: TObject);
    procedure ShowDeptDetailFlow(OnOperationLevel: Boolean);
    procedure ClearPrcData;
    procedure RefreshOccupations;
    procedure SyncTreeNodeParams;
  protected
    function LevelsToExpand: Integer; override;
    function GetEditActivityCode: Integer; override;
    class function CanUseDocs: Boolean; override;
    function GetInactiveNodeImageIndex(ANodeType: Integer;
      ANodeImage: TNodeImage; ADataSet: TDataSet): Integer; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    function SplitterLowerBound: Integer; override;
    function IsInstance(ANodeID: Integer): Boolean; override;
    function GetSortByDescFields(const ADescFields: string): string; override;
    procedure ShowCurrentNodeParams; override;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ANodeID: Integer = 0; ARootNodeID: Integer = 1;
      AEditMode: TEditMode = emEdit;
      ATreeDetailSelection: TTreeDetailSelection = tdsAll;
      ASelectStore: Boolean = False; ASelectFinancialStore: Boolean = False;
      ADenyFinancialStore: Boolean = False); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ANodeID: Integer = 0; ARootNodeID: Integer = 1;
      AEditMode: TEditMode = emEdit;
      ATreeDetailSelection: TTreeDetailSelection = tdsAll;
      ASelectStore: Boolean = False; ASelectFinancialStore: Boolean = False;
      ADenyFinancialStore: Boolean = False): Integer;
    procedure Initialize; override;
    procedure Finalize; override;
  end;

implementation

uses
  dMain, fDeptsTreeEditorEdit, uTreeClientUtils, uUserActivityConsts,
  rDepts, fOccupation, uUtils, uClientUtils, uClientConsts,
  uTreeNodes, Variants, uDocClientUtils, uDocUtils, uLoginContext, 
  uColorConsts, fSpecDocStatus, uXMLUtils, fDeptDetailFlow, fBaseForm,
  uCombImageList, uClientDateTime, uPrcDeclarations, uPrcUtils,
  uClientPrcData, fStoreQuantities, uProducts, uFinanceClientUtils, Clipbrd;

{$R *.DFM}

resourcestring
  SDatePeriodNotInParent = 'Времевия интервал на съществуване трябва да се включва в този на ТП-то от горно ниво (%s)!';

procedure TfmDeptsTreeEditor.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  OriginalModalResult: Integer;
begin
  OriginalModalResult:= ModalResult;

  inherited;

  if (OriginalModalResult = mrOk) and
     FSelectFinancialStore and
     (not cdsNodeChildrenIS_FIN_STORE.AsBoolean) then
    raise Exception.Create(SFinancialStoreNotSelected);

  if (OriginalModalResult = mrOk) and
     FDenyFinancialStore and
     cdsNodeChildrenIS_FIN_STORE.AsBoolean then
    raise Exception.Create(SFinancialStoreDenied);

  if (OriginalModalResult = mrOk) and
     FSelectStore and
     (not cdsNodeChildrenIS_STORE.AsBoolean) then
    raise Exception.Create(SStoreNotSelected);
end;

procedure TfmDeptsTreeEditor.FormCreate(Sender: TObject);
begin
  inherited;
  ChildEditFormClass:= TfmDeptsTreeEditorEdit;
  ReportClass:= TrptDepts;
  frTreeNodeParams.ResizebleColumnFieldNames:= 'NODE_PARAM_NAME';
  btnShowDocs.Left:= 46;
  frDoc.DocOwnerType:= dotDept;

  ilIcons.GenerateCombImages(
    [dmMain.ilDeptTypes, ilStore, ilExternal, ilRecurrent, ilInactive]);
end;

procedure TfmDeptsTreeEditor.cdsNodeChildrenNewRecord(DataSet: TDataSet);

  function GetPrcOwner: TProcessOwner;
  begin
    if cdsNodeChildrenIS_GROUP.AsBoolean then
      Result:= ProcessOwners.GroupDept
    else
      Result:= ProcessOwners.DefiniteDept;
  end;

begin
  inherited;

  cdsNodeChildrenPARENT_CODE.Assign(cdsNodeChildrenPARENT_NODE_ID);
  cdsNodeChildrenIS_OWD_PRIORITIES_SET_COMPLETE.AsBoolean:= False;
  cdsNodeChildrenSKIP_OWDP_TYPE_CHECK.AsBoolean:= False;

  if (CreateLikeNodeID = 0) then
    begin
      cdsNodeChildrenIS_BRANCH.AsBoolean:= False;
      cdsNodeChildrenIS_STORE.AsBoolean:= False;
      cdsNodeChildrenIS_COMPUTERIZED_STORE.AsBoolean:= False;
      cdsNodeChildrenIS_EXTERNAL.AsBoolean:= False;
      cdsNodeChildrenIS_FIN_STORE.AsBoolean:= False;

      DoDeptFieldChanged(cdsNodeChildrenPARENT_NODE_ID,
        nil, nil, nil, nil, nil,
        cdsNodeChildrenPARENT_IS_RECURRENT,
        cdsNodeChildrenPARENT_BEGIN_DATE,
        cdsNodeChildrenPARENT_END_DATE);

      cdsNodeChildrenIS_RECURRENT.Assign(cdsNodeChildrenPARENT_IS_RECURRENT);
    end
  else
    begin
      dmDocClient.CreateDocLike(
        cdsNodeChildrenDOC_BRANCH_CODE.AsInteger,
        cdsNodeChildrenDOC_CODE.AsInteger,
        False,
        cdsNodeChildrenDOC_BRANCH_CODE,
        cdsNodeChildrenDOC_CODE);

      WriteVariantToBlobField(
        dmMain.SvrProcesses.LoadPrcData(GetPrcOwner.Name, CreateLikeNodeId),
        cdsNodeChildrenPRC_DATA);

      PrcDataCreateLike(cdsNodeChildrenPRC_DATA, GetPrcOwner);
    end;
end;

procedure TfmDeptsTreeEditor.cdsNodeChildrenNODE_NAMEChange(
  Sender: TField);
begin
  inherited;
  cdsNodeChildrenNAME.Assign(Sender);
end;

procedure TfmDeptsTreeEditor.cdsNodeChildrenNODE_TYPEChange(
  Sender: TField);
begin
  inherited;
  cdsNodeChildrenSHOW_NO.AsString:=
    cdsNodeChildren_DEPT_TYPE_ABBREV.AsString +
    cdsNodeChildrenNODE_NO.AsString +
    cdsNodeChildrenSUFFIX_LETTER.AsString;
end;

procedure TfmDeptsTreeEditor.cdsNodeChildrenBeforePost(DataSet: TDataSet);
var
  TodayDate: TDateTime;
begin                                 
  if (Screen.ActiveForm is ChildEditFormClass) then
    inherited;

  if cdsNodeChildrenIS_STORE.AsBoolean then
    CheckRequiredField(cdsNodeChildrenSTORE_TYPE_CODE);

  CheckRequiredFields(cdsNodeChildren, 'BEGIN_DATE; END_DATE');

  cdsNodeChildrenSHOW_NO.AsString:=
    cdsNodeChildren_DEPT_TYPE_ABBREV.AsString +
    cdsNodeChildrenNODE_NO.AsString +
    cdsNodeChildrenSUFFIX_LETTER.AsString;

  if (cdsNodeChildrenSUFFIX_LETTER.Value = '') then
    cdsNodeChildrenSUFFIX_LETTER.Clear;

  cdsNodeChildrenCHANGE_DATE_TIME.AsDateTime:= ContextNow;

  if cdsNodeChildrenDOC_CODE.IsNull then
    dmDocClient.DSNewDoc(cdsNodeChildren);

  if not cdsNodeChildrenEND_DATE.IsNull then
    CheckDatePeriod(cdsNodeChildrenBEGIN_DATE, cdsNodeChildrenEND_DATE);

  if not IsDateSubPeriod(cdsNodeChildrenBEGIN_DATE, cdsNodeChildrenEND_DATE,
           cdsNodeChildrenPARENT_BEGIN_DATE, cdsNodeChildrenPARENT_END_DATE) then
    raise Exception.CreateFmt(SDatePeriodNotInParent, [
            dmMain.GetDateIntervalAsString(
              cdsNodeChildrenPARENT_BEGIN_DATE.AsDateTime,
              cdsNodeChildrenPARENT_END_DATE.AsDateTime)]);

  TodayDate:= ContextDate;

  cdsNodeChildrenIS_INACTIVE.AsBoolean:=
    not ((cdsNodeChildrenBEGIN_DATE.AsDateTime <= TodayDate) and
         (cdsNodeChildrenEND_DATE.IsNull or (TodayDate <= cdsNodeChildrenEND_DATE.AsDateTime)));

  if (TodayDate < cdsNodeChildrenBEGIN_DATE.AsDateTime) then
    cdsNodeChildrenINACTIVE_TYPE_CODE.AsInteger:= 2
  else
    cdsNodeChildrenINACTIVE_TYPE_CODE.AsInteger:= cdsNodeChildrenIS_INACTIVE.AsInteger;
end;

function TfmDeptsTreeEditor.LevelsToExpand: Integer;
begin
  Result:= LoginContext.DeptsTreeExpandLevels;
end;

procedure TfmDeptsTreeEditor.RefreshOccupations;
begin
  frTreeNodeParams.cdsParams.TempDisableCache/
    cdsOccupations.TempDisableCache/
      procedure begin
        RefreshDataSet(frTreeNodeParams.cdsParams);
      end;
end;

procedure TfmDeptsTreeEditor.cdsNodeChildrenPRODUCT_CODEChange(
  Sender: TField);
begin
  inherited;
  DoProductFieldChanged(
    cdsNodeChildrenPRODUCT_CODE,
    cdsNodeChildrenPRODUCT_NAME,
    cdsNodeChildrenPRODUCT_NO);
end;

function TfmDeptsTreeEditor.GetEditActivityCode: Integer;
begin
  Result:= uaDepts;
end;

function TfmDeptsTreeEditor.GetInactiveNodeImageIndex(ANodeType: Integer;
  ANodeImage: TNodeImage; ADataSet: TDataSet): Integer;
var
  StoreState: Integer;
  IsExternal: Integer;
  IsRecurrent: Integer;
  InactiveTypeCode: Integer;
begin
  InactiveTypeCode:= ADataSet.FieldByName('INACTIVE_TYPE_CODE').AsInteger;

  if ADataSet.FieldByName('IS_BRANCH').AsBoolean then
    ANodeType:= 3;

  if (InactiveTypeCode > 0) then
    begin
      StoreState:= 0;
      IsExternal:= 0;
      IsRecurrent:= 0;
    end
  else
    begin
      if ADataSet.FieldByName('IS_FIN_STORE').AsBoolean then
        StoreState:= 2
      else
        StoreState:= ADataSet.FieldByName('IS_STORE').AsInteger;

      IsExternal:= ADataSet.FieldByName('IS_EXTERNAL').AsInteger;
      IsRecurrent:= ADataSet.FieldByName('IS_RECURRENT').AsInteger;
    end;

  Result:=
    ilIcons.GetCombImageIndex(
      [ dmMain.ilDeptTypes,
        ilStore,
        ilExternal,
        ilRecurrent,
        ilInactive
      ],
      [ ANodeType,
        StoreState,
        IsExternal,
        IsRecurrent,
        InactiveTypeCode
      ]
    );
end;

function TfmDeptsTreeEditor.GetSortByDescFields(
  const ADescFields: string): string;
begin
  if (ADescFields = '') then
    Result:= 'NODE_TYPE'
  else
    Result:= ADescFields;
end;

class function TfmDeptsTreeEditor.CanUseDocs: Boolean;
begin
  Result:= True;             
end;

procedure TfmDeptsTreeEditor.cdsNodeChildrenBeforeApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);

  procedure SetDetailDataSet(ADataSet: TClientDataSet; AIndex: Integer);
  begin
    if Assigned(ADataSet) and (ADataSet.ChangeCount > 0) then
      OwnerData[AIndex]:= ADataSet.Delta
    else
      OwnerData[AIndex]:= Unassigned;
  end;

begin
  inherited;

  OwnerData:= VarArrayCreate([1, 4], varVariant);

  OwnerData[1]:= DocsDelta;

  SetDetailDataSet(FDeptPeriodsClientDataSet, 2);
  SetDetailDataSet(FStoreMinQuantitiesClientDataSet, 3);
  SetDetailDataSet(FDeptOWDPrioritiesClientDataSet, 4);
end;

procedure TfmDeptsTreeEditor.cdsNodeChildrenBeforeDelete(
  DataSet: TDataSet);                                                                            
begin
  dmDocClient.DeleteProductDoc(cdsNodeChildrenNODE_ID.AsInteger);
  inherited;
end;                                                                          
                                     
procedure TfmDeptsTreeEditor.cdsNodeChildrenBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsNodeChildren.Params.ParamByName('SHOW_FIN_STORES').AsInteger:=
    Ord(LoginContext.HasUserActivity(uaShowFinStores));
  cdsNodeChildren.Params.ParamByName('SHOW_OWD_FIN_STORES').AsInteger:=
    Ord(LoginContext.HasUserActivity(uaShowOccupationWorkDeptFinStores));
end;

procedure TfmDeptsTreeEditor.frTreeNodeParamsgrdParamsDblClick(
  Sender: TObject);
begin
  inherited;
  if not actEditOccupation.Execute then
    actInsertOccupation.Execute;
end;

procedure TfmDeptsTreeEditor.frTreeNodeParamsgrdParamsGetCellParams(
  Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;
  DocFieldsGetCellParams(Sender, Column, AFont, Background, State);
end;

procedure TfmDeptsTreeEditor.actInsertOccupationExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaOccupationsAndEmployeesEdit);
  if ShiftIsPressed then
    actOccupationCreateLike.Execute
  else
    if TfmOccupation.ShowForm(dmDocClient, cdsNodeChildren, emInsert) then
      RefreshOccupations;
end;

procedure TfmDeptsTreeEditor.actInsertOccupationUpdate(Sender: TObject);
begin
  inherited;
  actInsertOccupation.Enabled:=
    (EditMode <> emReadOnly) and
    (frTreeNodeParams.CurrentNodeID <> tnRootDeptCode);
end;

procedure TfmDeptsTreeEditor.actOccupationCreateLikeExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaOccupationsAndEmployeesEdit);
  if TfmOccupation.ShowForm(dmDocClient, cdsOccupations, emInsert, doServer, False) then
    RefreshOccupations;
end;

procedure TfmDeptsTreeEditor.actOccupationCreateLikeUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    (frTreeNodeParams.CurrentNodeID <> tnRootDeptCode) and
    not cdsOccupations.IsEmpty;
end;

procedure TfmDeptsTreeEditor.actOperationLevelDeptDetailFlowExecute(
  Sender: TObject);
begin
  inherited;
  ShowDeptDetailFlow(True);
end;

procedure TfmDeptsTreeEditor.actOperationLevelDeptDetailFlowUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsNodeChildren.Active and
    not cdsNodeChildren.IsEmpty;
end;

procedure TfmDeptsTreeEditor.actCopyNoToClipboardExecute(Sender: TObject);
begin
//  inherited;    new behaviour
  Clipboard.AsText:= cdsNodeChildrenSHOW_NO.AsString;
end;

procedure TfmDeptsTreeEditor.actDelOccupationExecute(Sender: TObject);
var
  OccupationCode: Integer;
begin
  inherited;
  LoginContext.CheckUserActivity(uaOccupationsAndEmployeesEdit);

  ConfirmAction(SConfirmDeleteRecord);

  OccupationCode:= cdsOccupationsOCCUPATION_CODE.AsInteger;

  cdsOccupations.Delete;
  if (cdsOccupations.ApplyUpdates(0) = 0) then
    OccupationCode:= cdsOccupationsOCCUPATION_CODE.AsInteger;

  RefreshOccupations;

  if (OccupationCode > 0) then
    cdsOccupations.Locate('OCCUPATION_CODE', OccupationCode, []);
end;

procedure TfmDeptsTreeEditor.actDelOccupationUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    not cdsOccupations.IsEmpty;
end;

procedure TfmDeptsTreeEditor.actEditOccupationExecute(Sender: TObject);
var
  em: TEditMode;
begin
  inherited;
  if LoginContext.HasUserActivity(uaOccupationsAndEmployeesEdit) then
    em:= EditMode
  else
    em:= emReadOnly;

  if TfmOccupation.ShowForm(dmDocClient, frTreeNodeParams.cdsParams, em) then
    RefreshOccupations;
end;

procedure TfmDeptsTreeEditor.actEditOccupationUpdate(Sender: TObject);
begin
  inherited;
  actEditOccupation.Enabled:=
    (not (frTreeNodeParams.cdsParams.Bof and frTreeNodeParams.cdsParams.Eof)) and
    (frTreeNodeParams.CurrentNodeID <> tnRootDeptCode);
end;

procedure TfmDeptsTreeEditor.sptParamsMoved(Sender: TObject);
begin
  inherited;
  pnlOccupationsUpper.Top:= frTreeNodeParams.Top;
end;

procedure TfmDeptsTreeEditor.actFilterOccupationsExecute(Sender: TObject);
var
  OccupationCode: Integer;
begin
  inherited;

  with Sender as TAction do
    Checked:= not Checked;

  with cdsOccupations do
    begin
      DisableControls;
      try
        OccupationCode:= cdsOccupationsOCCUPATION_CODE.AsInteger;

        Filtered:= False;
        Filtered:= True;

        First;
        Locate('OCCUPATION_CODE', OccupationCode, []);
      finally
        EnableControls;
      end;  { try }
    end;  { with }
end;

procedure TfmDeptsTreeEditor.actFormUpdate(Sender: TObject);
var
  v: Boolean;
begin
  inherited;
                                                  
  navOccupations.Enabled:=
    (frTreeNodeParams.CurrentNodeID <> tnRootDeptCode);

  btnDocs.Enabled:=
    cdsNodeChildren.Active and
    (cdsNodeChildren.RecordCount > 0);                                           

  with cdsNodeChildren, cdsNodeChildrenHAS_DOCUMENTATION do
    if Active and (Ord(AsBoolean) <> btnDocs.ImageIndex) then
      btnDocs.ImageIndex:= Ord(AsBoolean);

  v:= sptParams.Visible;
  sptParams.Visible:= frTreeNodeParams.Visible or pnlDocs.Visible;

  if (not v) and sptParams.Visible then
    begin
      sptParams.Align:= alTop;
      sptParams.Align:= alBottom;
    end;

  frDoc.ReadOnly:= not GetDelChildEnabled;

  pnlOccupationsUpper.Visible:= frTreeNodeParams.Visible;
  pnlOccupationsUpper.Top:= frTreeNodeParams.Top;
end;

procedure TfmDeptsTreeEditor.cdsNodeChildrenIS_STOREChange(Sender: TField);
begin
  inherited;

  if not cdsNodeChildrenIS_STORE.AsBoolean then
    begin
      cdsNodeChildrenIS_COMPUTERIZED_STORE.AsBoolean:= False;
      cdsNodeChildrenIS_FIN_STORE.AsBoolean:= False;
      cdsNodeChildrenSTORE_TYPE_CODE.Clear;
    end;
end;

procedure TfmDeptsTreeEditor.btnDocsClick(Sender: TObject);
begin
  inherited;
  Assert(cdsNodeChildren.Active);

  dmDocClient.OpenDeptDoc(emReadOnly, btnDocs,
    cdsNodeChildrenNODE_ID.AsInteger);
end;

procedure TfmDeptsTreeEditor.frTreeNodeParamscdsParamsPARAM_VALUEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);        
var
  sf: TAbmesWideStringField;
begin
  inherited;
  sf:= (Sender as TAbmesWideStringField);
  if (sf.AsString <> '') then
    Text:=
      OccupationActivityStatuses[StrToInt(Copy(sf.AsString, 1, 1))] +
      OccupationAvailabilityStatuses[StrToInt(Copy(sf.AsString, 2, 1))];
end;

procedure TfmDeptsTreeEditor.SetDataParams(AdmDocClient: TdmDocClient; ANodeID,
  ARootNodeID: Integer; AEditMode: TEditMode;
  ATreeDetailSelection: TTreeDetailSelection; ASelectStore,
  ASelectFinancialStore, ADenyFinancialStore: Boolean);
begin
  inherited SetDataParams(AdmDocClient, ANodeID, ARootNodeID, AEditMode, ATreeDetailSelection);
  FSelectStore:= ASelectStore;
  FSelectFinancialStore:= ASelectFinancialStore;
  FDenyFinancialStore:= ADenyFinancialStore;
end;

procedure TfmDeptsTreeEditor.ShowCurrentNodeParams;
begin
  inherited;
  SyncTreeNodeParams;
end;

procedure TfmDeptsTreeEditor.ShowDeptDetailFlow(OnOperationLevel: Boolean);
begin
  cdsDeptDetailFlowParams.CreateDataSet;
  try
    cdsDeptDetailFlowParams.AppendRecord([
      ChosenNodeCodeToXML(cdsNodeChildrenNODE_ID.AsInteger),
      Ord(OnOperationLevel)
    ]);

    TfmDeptDetailFlow.ShowForm(nil, cdsDeptDetailFlowParams, emReadOnly, doNone, False);
  finally
    cdsDeptDetailFlowParams.Close;
  end;
end;

procedure TfmDeptsTreeEditor.ClearPrcData;
begin
  if not cdsNodeChildrenPRC_DATA.IsNull then
    begin
      cdsNodeChildren.SafeEdit/
        procedure begin
          cdsNodeChildrenPRC_DATA.Clear;
        end;

      cdsNodeChildren.MergeChangeLog;
    end;
end;

function TfmDeptsTreeEditor.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  Assert(Assigned(ChildEditFormClass));
  Assert(ChildEditFormClass.InheritsFrom(TfmDeptsTreeEditorEdit));

  Assert(not dmDocClient.Modified);
  Assert(dmDocClient.cdsDocs.State = dsBrowse);

  Result:=
    TfmDeptsTreeEditorEditClass(ChildEditFormClass).ShowForm(dmDocClient, cdsNodeChildren,
      AEditMode, doNone, InsertingGroup,
      @FDeptPeriodsClientDataSet,
      @FStoreMinQuantitiesClientDataSet,
      @FDeptOWDPrioritiesClientDataSet);

  ClearPrcData;

  Assert(not dmDocClient.Modified);
  Assert(dmDocClient.cdsDocs.State = dsBrowse);
end;

class function TfmDeptsTreeEditor.ShowForm(AdmDocClient: TdmDocClient; ANodeID,
  ARootNodeID: Integer; AEditMode: TEditMode;
  ATreeDetailSelection: TTreeDetailSelection; ASelectStore,
  ASelectFinancialStore, ADenyFinancialStore: Boolean): Integer;
var
  f: TfmDeptsTreeEditor;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ANodeID, ARootNodeID, AEditMode, ATreeDetailSelection,
      ASelectStore, ASelectFinancialStore, ADenyFinancialStore);
    if (f.InternalShowForm = mrOK) then
      Result:= f.EndNodeID
    else
      Result:= 0;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmDeptsTreeEditor.frTreeNodeParamscdsParamsAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsOccupations.Params.AssignValues(frTreeNodeParams.cdsParams.Params);
  cdsOccupations.Open;
end;

procedure TfmDeptsTreeEditor.frTreeNodeParamscdsParamsBeforeClose(
  DataSet: TDataSet);
begin
  inherited;
  cdsOccupations.Close;
end;

procedure TfmDeptsTreeEditor.cdsOccupationsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  SyncTreeNodeParams;
end;

procedure TfmDeptsTreeEditor.SyncTreeNodeParams;
begin
  if not FSynchronizing then
    begin
      FSynchronizing:= True;
      try
        if frTreeNodeParams.cdsParams.Active then
          frTreeNodeParams.cdsParams.Locate('NODE_PARAM_CODE', cdsOccupationsNODE_PARAM_CODE.AsInteger, []);
      finally
        FSynchronizing:= False;
      end;  { try }
    end;
end;

procedure TfmDeptsTreeEditor.frTreeNodeParamscdsParamsAfterScroll(
  DataSet: TDataSet);
begin
  inherited;

  if not FSynchronizing then
    begin
      FSynchronizing:= True;
      try
        cdsOccupations.Locate('NODE_PARAM_CODE', frTreeNodeParams.cdsParamsNODE_PARAM_CODE.AsInteger, []);
      finally
        FSynchronizing:= False;
      end;  { try }
    end;
end;

procedure TfmDeptsTreeEditor.cdsOccupationsDOC_EMPTINESS_REQUIREMENT_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  DocEmptinessRequirementFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmDeptsTreeEditor.cdsOccupationsFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:=
    (actShowPastOccupations.Checked and cdsOccupationsIS_PAST.AsBoolean) or
    (actShowActiveOccupations.Checked and cdsOccupationsIS_ACTIVE.AsBoolean) or
    (actShowFutureOccupations.Checked and cdsOccupationsIS_FUTURE.AsBoolean);
end;

procedure TfmDeptsTreeEditor.grdChildrenGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;
  DocFieldsGetCellParams(Sender, Column, AFont, Background, State);
end;

procedure TfmDeptsTreeEditor.grdParamsColumns0GetCellParams(
  Sender: TObject; EditMode: Boolean; Params: TColCellParamsEh);
begin
  inherited;

  if cdsOccupationsIS_ACTIVE.AsBoolean then
    Params.Background:= $00E8E8E8;

  if cdsOccupationsIS_FUTURE.AsBoolean then
    Params.Background:= $00CACACA;
end;

procedure TfmDeptsTreeEditor.cdsOccupationsUNAUTHORIZED_ACTIVE_DI_COUNTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    Text:= DocItemsUnauthorizedStatus(cdsOccupationsUNAUTHORIZED_ACTIVE_DI_COUNT.AsInteger,
             cdsOccupationsACTIVE_DI_COUNT.AsInteger)
  else
    Text:= Sender.AsString;
end;

procedure TfmDeptsTreeEditor.cdsPrintTreeBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsPrintTree.Params.ParamByName('SHOW_FIN_STORES').AsInteger:=
    Ord(LoginContext.HasUserActivity(uaShowFinStores));
  cdsPrintTree.Params.ParamByName('SHOW_OWD_FIN_STORES').AsInteger:=
    Ord(LoginContext.HasUserActivity(uaShowOccupationWorkDeptFinStores));
end;

procedure TfmDeptsTreeEditor.cdsTreeNodeChildrenNODE_NAMEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  FinStoreFieldGetText(Sender, Text, DisplayText, cdsTreeNodeChildrenIS_FIN_STORE.AsBoolean);
end;

procedure TfmDeptsTreeEditor.cdsTreeNodeChildrenSHOW_NOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  FinStoreFieldGetText(Sender, Text, DisplayText, cdsTreeNodeChildrenIS_FIN_STORE.AsBoolean);
end;

procedure TfmDeptsTreeEditor.cdsTreeToNodeNODE_NAMEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  FinStoreFieldGetText(Sender, Text, DisplayText, cdsTreeToNodeIS_FIN_STORE.AsBoolean);
end;

procedure TfmDeptsTreeEditor.cdsFindBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsFind.Params.ParamByName('SHOW_FIN_STORES').AsInteger:=
    Ord(LoginContext.HasUserActivity(uaShowFinStores));
  cdsFind.Params.ParamByName('SHOW_OWD_FIN_STORES').AsInteger:=
    Ord(LoginContext.HasUserActivity(uaShowOccupationWorkDeptFinStores));
end;

procedure TfmDeptsTreeEditor.cdsNodeChildrenAfterOpen(DataSet: TDataSet);
begin
  inherited;
  frDoc.OpenDataSets;
end;

procedure TfmDeptsTreeEditor.cdsNodeChildrenBeforeClose(DataSet: TDataSet);
begin
  frDoc.CloseDataSets;
  inherited;
end;

procedure TfmDeptsTreeEditor.actShowDocsUpdate(Sender: TObject);
begin
  inherited;
  pnlDocs.Visible:= (Sender as TAction).Checked;
end;

procedure TfmDeptsTreeEditor.actShowDocsExecute(Sender: TObject);
begin
  inherited;

  with (Sender as TAction) do
    begin
      Checked:= not Checked;

      if Checked then
        begin
          actShowParams.Checked:= False;
          frTreeNodeParams.Visible:= False;

          frDoc.dsData.DataSet:= cdsNodeChildren;
        end
      else
        frDoc.dsData.DataSet:= nil;
    end;
end;

procedure TfmDeptsTreeEditor.actShowParamsExecute(Sender: TObject);
begin
  inherited;
  with (Sender as TAction) do
    if Checked and actShowDocs.Checked then
      actShowDocs.Execute;
end;

procedure TfmDeptsTreeEditor.actSpecDocStatusExecute(Sender: TObject);
begin
  inherited;
  TfmSpecDocStatus.ShowForm(dmDocClient, cdsNodeChildrenPRODUCT_CODE.AsInteger, emReadOnly);
end;

procedure TfmDeptsTreeEditor.actSpecDocStatusUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsNodeChildren.Active and
    not cdsNodeChildrenPRODUCT_CODE.IsNull;
end;

procedure TfmDeptsTreeEditor.actStageLevelDeptDetailFlowExecute(
  Sender: TObject);
begin
  inherited;
  ShowDeptDetailFlow(False);
end;

procedure TfmDeptsTreeEditor.actStageLevelDeptDetailFlowUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsNodeChildren.Active and
    not cdsNodeChildren.IsEmpty;
end;

procedure TfmDeptsTreeEditor.actStoreQuantitiesExecute(Sender: TObject);
var
  ProductClass: TProductClass;
begin
  inherited;
  LoginContext.CheckUserActivity(uaStoreQuantities);
  cdsStoreQuantitiesParams.TempCreateDataSet /
    procedure begin
      if cdsNodeChildrenIS_FIN_STORE.AsBoolean then
        ProductClass:= pcFinancial
      else
        ProductClass:= pcNormal;

      cdsStoreQuantitiesParams.AppendRecord([Null, ChosenNodeCodeToXML(cdsNodeChildrenNODE_ID.AsInteger), ContextDate]);
      TfmStoreQuantities.ShowForm(nil, cdsStoreQuantitiesParams, emReadOnly, doNone, False, ProductClass);
    end;
end;

procedure TfmDeptsTreeEditor.actStoreQuantitiesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsNodeChildren.Active and
    (cdsNodeChildren.RecordCount > 0);
end;

procedure TfmDeptsTreeEditor.dmDocClientOnDataChanged(Sender: TObject);

  procedure SetFields;
  begin
    cdsNodeChildrenDOC_EMPTINESS_REQUIREMENT_CODE.AsVariant:=
      dmDocClient.cdsDocsDOC_EMPTINESS_REQUIREMENT_CODE.AsVariant;
    cdsNodeChildrenDOC_IS_COMPLETE.AsVariant:=
      dmDocClient.cdsDocsIS_COMPLETE.AsVariant;
    cdsNodeChildrenACTIVE_DI_COUNT.AsInteger:=
      dmDocClient.DSDocItemCount(cdsNodeChildren, True);
    cdsNodeChildrenUNAUTHORIZED_ACTIVE_DI_COUNT.AsInteger:=
      cdsNodeChildrenACTIVE_DI_COUNT.AsInteger - dmDocClient.DSAuthorizedDocItemCount(cdsNodeChildren, True);
    cdsNodeChildrenUNAPPROVED_ACTIVE_DI_COUNT.AsInteger:=
      cdsNodeChildrenACTIVE_DI_COUNT.AsInteger - dmDocClient.DSApprovedDocItemCount(cdsNodeChildren, True);

    cdsNodeChildrenHAS_DOCUMENTATION.AsBoolean:=
      (cdsNodeChildrenACTIVE_DI_COUNT.AsInteger > 0);
  end;

begin
  if dmDocClient.DSIsCurrent(cdsNodeChildren) then
    begin
      if (cdsNodeChildren.State in dsEditModes) then
        SetFields
      else
        begin
          cdsNodeChildren.Edit;
          try
            SetFields;
            cdsNodeChildren.Post;
          except
            cdsNodeChildren.Cancel;
            raise;
          end;  { try }

          cdsNodeChildren.MergeChangeLog;
        end;
    end;                                                             
end;

procedure TfmDeptsTreeEditor.Initialize;
begin
  inherited;

  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  if (IntToDeptsTreeShowDetail(LoginContext.DeptsTreeShowDetail) <> dtsdOccupations) then
    actShowParams.Execute;

  if (IntToDeptsTreeShowDetail(LoginContext.DeptsTreeShowDetail) = dtsdDocs) then
    actShowDocs.Execute;
end;

function TfmDeptsTreeEditor.IsInstance(ANodeID: Integer): Boolean;
begin
  Result:= dmMain.SvrDeptsTreeEditor.IsInstance(ANodeID);
end;

procedure TfmDeptsTreeEditor.Finalize;
begin
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
  inherited;
end;

procedure TfmDeptsTreeEditor.cdsNodeChildrenDOC_EMPTINESS_REQUIREMENT_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  DocEmptinessRequirementFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmDeptsTreeEditor.cdsNodeChildrenUNAUTHORIZED_ACTIVE_DI_COUNTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  UnauthorizedActiveDocItemCountFieldGetText(Sender, Text, DisplayText);
end;

function TfmDeptsTreeEditor.SplitterLowerBound: Integer;
begin                                                            
  if pnlDocs.Visible then                    
    Result:= 144
  else
    Result:= (inherited SplitterLowerBound);
end;

procedure TfmDeptsTreeEditor.cdsOccupationsReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
  ReconcileError(E);
end;

end.


