unit fEngineeringOrders;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponent, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet,
  GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator,
  Buttons, StdCtrls, ExtCtrls, uClientTypes, dDocClient, JvComponentBase,
  ImgList, uCellParamsSetters, Menus, DBGridEhGrouping, System.Actions,
  MemTableDataEh, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  DBAxisGridsEh;

type
  TfmEngineeringOrders = class(TGridForm)
    tcMain: TTabControl;
    pnlTopMargin: TPanel;
    actCommonGroups: TAction;
    btnEditRecord: TBitBtn;
    btnInsertRecord: TBitBtn;
    btnCommonGroups: TBitBtn;
    cdsGridDataENGINEERING_ORDER_CODE: TAbmesFloatField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataHAS_DOC_ITEMS: TAbmesFloatField;
    cdsGridDataSPEC_STATE_CODE: TAbmesFloatField;
    cdsGridDataEO_STATE_CODE: TAbmesFloatField;
    cdsGridDataENGINEERING_ORDER_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataPRIORITY_NO: TAbmesFloatField;
    cdsGridDataPRIORITY_FULL_NAME: TAbmesWideStringField;
    cdsGridDataPRIORITY_COLOR: TAbmesFloatField;
    cdsGridDataPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsGridDataORDER_DEPT_NAME: TAbmesWideStringField;
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_PARENT_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    cdsGridDataHAS_THOROUGHLY_ENG_PRODUCT: TAbmesFloatField;
    cdsGridDataCOMMON_STATUS_CODE: TAbmesFloatField;
    cdsGridDataCOMMON_PRODUCT_LEVELS: TAbmesWideStringField;
    cdsGridDataJOINED_SIBLINGS: TAbmesWideStringField;
    cdsGridDataENGINEERING_PLAN_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataENGINEERING_FINAL_DATE_DIFF: TAbmesFloatField;
    cdsGridDataENGINEERING_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataENGINEERING_START_DATE_DIFF: TAbmesFloatField;
    cdsGridDataENGINEERING_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataENGINEERING_EMPLOYEE_ABBREV: TAbmesWideStringField;
    cdsGridDataENGINEERING_PLAN_WORKDAYS: TAbmesFloatField;
    cdsGridDataENGINEERING_REAL_WORKDAYS: TAbmesFloatField;
    cdsGridDataENGINEERING_WORKDAYS_DIFF: TAbmesFloatField;
    cdsGridDataENGINEERING_WORKDAYS_DIFF_PCT: TAbmesFloatField;
    cdsGridDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCREATE_TIME: TAbmesSQLTimeStampField;
    cdsGridDataCREATE_EMPLOYEE_ABBREV: TAbmesWideStringField;
    cdsGridDataCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsGridDataCHANGE_EMPLOYEE_ABBREV: TAbmesWideStringField;
    cdsGridDataACTIVATE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataACTIVATE_TIME: TAbmesSQLTimeStampField;
    cdsGridDataACTIVATE_EMPLOYEE_ABBREV: TAbmesWideStringField;
    cdsGridDataCLOSE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCLOSE_TIME: TAbmesSQLTimeStampField;
    cdsGridDataCLOSE_EMPLOYEE_ABBREV: TAbmesWideStringField;
    cdsGridDataANNUL_DATE: TAbmesSQLTimeStampField;
    cdsGridDataANNUL_TIME: TAbmesSQLTimeStampField;
    cdsGridDataANNUL_EMPLOYEE_ABBREV: TAbmesWideStringField;
    btnToggleEngineeringWorkdaysDiff: TSpeedButton;
    sepToggleEngineeringWorkdaysDiff: TToolButton;
    setProductDocs: TToolButton;
    btnProductDocs: TSpeedButton;
    sepEngineeringOrderDocs: TToolButton;
    btnEngineeringOrderDocs: TSpeedButton;
    pnlProductDocsCaption: TPanel;
    pnlEngineeringOrderDocsCaption: TPanel;
    pdsGridDataParamsMIN_EO_STATE_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_EO_STATE_CODE: TAbmesFloatField;
    pdsGridDataParamsENGINEERING_ORDER_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsENGINEERING_ORDER_NO: TAbmesFloatField;
    pdsGridDataParamsENGINEERING_ORDER_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsBEGIN_PRIORITY_CODE: TAbmesFloatField;
    pdsGridDataParamsEND_PRIORITY_CODE: TAbmesFloatField;
    pdsGridDataParamsENG_PLAN_BEGIN_DATE_BEGIN: TAbmesSQLTimeStampField;
    pdsGridDataParamsENG_PLAN_BEGIN_DATE_END: TAbmesSQLTimeStampField;
    pdsGridDataParamsBEGIN_ENG_START_DATE_DIFF: TAbmesFloatField;
    pdsGridDataParamsEND_ENG_START_DATE_DIFF: TAbmesFloatField;
    pdsGridDataParamsENGINEERING_EMPLOYEE_CODE: TAbmesFloatField;
    pdsGridDataParamsBEGIN_ENG_REAL_WORKDAYS: TAbmesFloatField;
    pdsGridDataParamsEND_ENG_REAL_WORKDAYS: TAbmesFloatField;
    pdsGridDataParamsMIN_SPEC_STATE_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_SPEC_STATE_CODE: TAbmesFloatField;
    pdsGridDataParamsIS_USED_BY: TAbmesFloatField;
    pdsGridDataParamsIS_PROVIDED_BY: TAbmesFloatField;
    pdsGridDataParamsENG_PLAN_END_DATE_BEGIN: TAbmesSQLTimeStampField;
    pdsGridDataParamsENG_PLAN_END_DATE_END: TAbmesSQLTimeStampField;
    pdsGridDataParamsBEGIN_ENG_FINAL_DATE_DIFF: TAbmesFloatField;
    pdsGridDataParamsEND_ENG_FINAL_DATE_DIFF: TAbmesFloatField;
    pdsGridDataParamsTHOROUGHLY_ENG_PRODUCT_CODE: TAbmesFloatField;
    pdsGridDataParamsBEGIN_ENG_WORKDAYS_DIFF_PCT: TAbmesFloatField;
    pdsGridDataParamsEND_ENG_WORKDAYS_DIFF_PCT: TAbmesFloatField;
    pdsGridDataParamsCHOSEN_ORDER_DEPTS: TAbmesWideStringField;
    pdsGridDataParamsCHOSEN_ENGINEERING_DEPTS: TAbmesWideStringField;
    pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    pdsGridDataParamsCOMMON_PRODUCT_CODE: TAbmesFloatField;
    cdsGridData_REPORT_TITLE: TAbmesWideStringField;
    pdsGridDataParamsHAS_PARENT_ENGINEERING_ORDER: TAbmesFloatField;
    pdsGridDataParamsPARENT_ENG_ORDER_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsPARENT_ENG_ORDER_NO: TAbmesFloatField;
    cdsGridDataHAS_PARENT_ENGINEERING_ORDER: TAbmesFloatField;
    cdsGridData_ENGINEERING_ORDER_POSITION: TAbmesWideStringField;
    cdsGridDataHAS_CHILDREN: TAbmesFloatField;
    btnToggleProductDisplay: TSpeedButton;
    cdsGridDataPARTNER_PRODUCT_NAMES: TAbmesWideStringField;
    cdsGridDataPARENT_ENGINEERING_ORDER_CODE: TAbmesFloatField;
    sepToggleTreeView: TToolButton;
    btnToggleTreeView: TSpeedButton;
    actToggleTreeView: TAction;
    pnlTreeView: TPanel;
    navDataOtherButtons: TDBColorNavigator;
    grdEngineeringOrdersTree: TAbmesDBGrid;
    cdsGridDataNOTES: TAbmesWideStringField;
    btnToggleNotes: TSpeedButton;
    btnShowInactive: TToolButton;
    actShowInactive: TAction;
    btnInsertLike: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure actEditRecordUpdate(Sender: TObject);
    procedure actCommonGroupsUpdate(Sender: TObject);
    procedure actCommonGroupsExecute(Sender: TObject);
    procedure cdsGridDataSPEC_STATE_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cdsGridDataCOMMON_STATUS_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure actFormUpdate(Sender: TObject);
    procedure btnProductDocsClick(Sender: TObject);
    procedure btnEngineeringOrderDocsClick(Sender: TObject);
    procedure cdsGridDataEO_STATE_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure actToggleTreeViewUpdate(Sender: TObject);
    procedure actToggleTreeViewExecute(Sender: TObject);
    procedure actExcelExportExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure grdEngineeringOrdersTreeDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure cdsGridDataFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure actShowInactiveUpdate(Sender: TObject);
    procedure actShowInactiveExecute(Sender: TObject);
  private
    FIsTreeViewVisible: Boolean;
    FShowInactive: Boolean;
    procedure SetCellParams(ACellParamsSetter: TCellParamsSetter);
    function GetImageIndex: Integer;
    procedure ConvertGridDataToTreeList;
  protected
    class function CanUseDocs: Boolean; override;
    function GetGridRecordReadOnly: Boolean; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    function MustResortGridDataAfterOpen: Boolean; override;
    function GetPrintEnabled: Boolean; override;
    function GetFilterFormEnabled: Boolean; override;
  public
    class function ShowForm(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True): Boolean;
  end;

implementation

uses
  fEngineeringOrder, fEditForm, fCommonGroups, dMain, uModelUtils,
  uColorConsts, uProductClientUtils, fDBDataForm, uDocUtils, uProductionOrderTypes,
  fEngineeringOrdersFilter, rEngineeringOrders, uUserActivityConsts,
  uClientUtils, uUtils, uClientConsts, StrUtils, uToolbarUtils, uExcelExport,
  uTreeListUtils, uScalingUtils, uComCtrlsHelpers;

{$R *.dfm}

resourcestring
  SEditRecordAddition = ' на ID ОПИР';

const
  FrozenCols = 4;

{ TfmEngineeringOrders }

procedure TfmEngineeringOrders.FormCreate(Sender: TObject);
begin
  inherited;

  FilterFormClass:= TfmEngineeringOrdersFilter;
  EditFormClass:= TfmEngineeringOrder;
  ReportClass:= TrptEngineeringOrders;

  RegisterDateFields([
    cdsGridDataENGINEERING_PLAN_END_DATE,
    cdsGridDataENGINEERING_PLAN_BEGIN_DATE,
    cdsGridDataCREATE_DATE,
    cdsGridDataCHANGE_DATE,
    cdsGridDataACTIVATE_DATE,
    cdsGridDataCLOSE_DATE,
    cdsGridDataANNUL_DATE
  ]);
end;

procedure TfmEngineeringOrders.FormResize(Sender: TObject);
var
  R: TRect;
begin
  inherited;

  R:= tcMain.BoundsRect;
  Inc(R.Left, ScalePixels(4));
  Dec(R.Right, ScalePixels(4));
  Inc(R.Top, tcMain.RealTabHeight + ScalePixels(4));
  Dec(R.Bottom, ScalePixels(5));

  grdData.BoundsRect:= R;
  pnlTreeView.BoundsRect:= R;
end;

procedure TfmEngineeringOrders.FormShow(Sender: TObject);
begin
  inherited;
  InitializeAbmesDBGrid(grdEngineeringOrdersTree, False);
end;

procedure TfmEngineeringOrders.actEditRecordUpdate(Sender: TObject);
begin
  // do not call inherited

  (Sender as TAction).Enabled:= GetEditRecordEnabled;

  if GetGridRecordReadOnly then
    (Sender as TAction).Hint:= SReadOnlyCaption + SEditRecordAddition
  else
    (Sender as TAction).Hint:= SEditCaption + SEditRecordAddition;

  (Sender as TAction).Caption:= (Sender as TAction).Hint + cDialogSuffix;
end;

procedure TfmEngineeringOrders.actExcelExportExecute(Sender: TObject);
begin
  if FIsTreeViewVisible then
    GridExcelExport(grdEngineeringOrdersTree)
  else
    inherited;
end;

procedure TfmEngineeringOrders.actCommonGroupsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0);
end;

procedure TfmEngineeringOrders.actCommonGroupsExecute(Sender: TObject);
begin
  inherited;
  TfmCommonGroups.ShowForm(
    dmDocClient,
    cdsGridDataPRODUCT_PARENT_CODE.AsInteger,
    cdsGridDataPRODUCT_CODE.AsInteger
  );
end;

class function TfmEngineeringOrders.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmEngineeringOrders.cdsGridDataSPEC_STATE_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if (not Sender.IsNull) and
     (Low(SpecNoQuantityStates) <= Sender.AsInteger) and
     (Sender.AsInteger <= High(SpecNoQuantityStates)) then
    Text:= SpecNoQuantityStates[Sender.AsInteger];
end;

procedure TfmEngineeringOrders.SetCellParams(ACellParamsSetter: TCellParamsSetter);
begin
  with ACellParamsSetter do
    begin
      if IsSelected then
        Exit;

      if (CurrentFieldName = 'SPEC_STATE_CODE') then
        begin
          if (not VarIsNull(GetFieldValue('SPEC_STATE_CODE'))) and
             (Low(SpecStateColors) <= VarToInt(GetFieldValue('SPEC_STATE_CODE'))) and
             (VarToInt(GetFieldValue('SPEC_STATE_CODE')) <= High(SpecStateColors)) then
            Background:= SpecStateColors[VarToInt(GetFieldValue('SPEC_STATE_CODE'))];
        end;  { if }

      if (CurrentFieldName = 'PRIORITY_FULL_NAME') then
        begin
          if not VarIsNull(GetFieldValue('PRIORITY_COLOR')) then
            Foreground:= VarToInt(GetFieldValue('PRIORITY_COLOR'));

          if not VarIsNull(GetFieldValue('PRIORITY_BACKGROUND_COLOR')) then
            Background:= VarToInt(GetFieldValue('PRIORITY_BACKGROUND_COLOR'));
        end;  { if }

      if (CurrentFieldName = 'ENGINEERING_FINAL_DATE_DIFF') or
         (CurrentFieldName = 'ENGINEERING_START_DATE_DIFF') or
         (CurrentFieldName = 'ENGINEERING_WORKDAYS_DIFF') or
         (CurrentFieldName = 'ENGINEERING_WORKDAYS_DIFF_PCT') then
        begin
          if (VarToFloat(GetFieldValue(CurrentFieldName)) < 0) then
            Foreground:= clRed
          else
            Foreground:= clGreen;
        end;  { if }

      if (CurrentFieldName = 'EO_STATE_CODE') and
         (VarToInt(GetFieldValue(CurrentFieldName)) in [Low(TEOStates)..High(TEOStates)]) then
        Background:= EOStateColors[VarToInt(GetFieldValue(CurrentFieldName))];
    end;  { with }
end;

procedure TfmEngineeringOrders.grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
var
  GridCellParamsSetter: TGridCellParamsSetter;
begin
  inherited;
  GridCellParamsSetter:= TGridCellParamsSetter.Create(Column, AFont, Background, State);
  try
    SetCellParams(GridCellParamsSetter);
  finally
    FreeAndNil(GridCellParamsSetter);
  end;  { try }
end;

procedure TfmEngineeringOrders.grdEngineeringOrdersTreeDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;

  with Column.Field.DataSet do
    if BOF and EOF then
      Exit;

  if (Column.FieldName = 'ENGINEERING_ORDER_IDENTIFIER') then
    DrawTreeImageColumnCell(grdEngineeringOrdersTree, dmMain.ilActions, GetImageIndex, Rect, Column);
end;

procedure TfmEngineeringOrders.cdsGridDataCOMMON_STATUS_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;

  if not Sender.IsNull then
    Text:= ProductCommonStatusAbbrevs[Sender.AsInteger];
end;

class function TfmEngineeringOrders.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean): Boolean;
begin
  dmMain.LoginContext.CheckUserActivity(uaEngineeringOrders);
  Result:= inherited ShowForm(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
end;

procedure TfmEngineeringOrders.actFormUpdate(Sender: TObject);

  function ColumnIndexByFieldName(const AFieldName: string): Integer;
  var
    i: Integer;
  begin
    Result:= -1;

    for i:= FrozenCols to grdData.Columns.Count - 1 do
      if (grdData.Columns[i].FieldName = AFieldName) then
        Exit(i);

    Assert(Result >= 0);
  end;

const
  MainGridNormalViewVTitleMargin = 10;
  MainGridSystemViewVTitleMargin = 27;

var
  c: TWinControlArray;
  i: Integer;
  FirstSysColumnIndex: Integer;
  FirstHiddenForNotesColumn: Integer;
begin
  inherited;

  FirstHiddenForNotesColumn:= ColumnIndexByFieldName('HAS_THOROUGHLY_ENG_PRODUCT');
  FirstSysColumnIndex:= ColumnIndexByFieldName('CREATE_DATE');

  grdData.Columns[6].Visible:= (tcMain.TabIndex = 0) and not btnToggleProductDisplay.Down;
  grdData.Columns[7].Visible:= (tcMain.TabIndex = 0) and     btnToggleProductDisplay.Down;

  grdData.Columns[19].Visible:= (tcMain.TabIndex = 0) and not btnToggleEngineeringWorkdaysDiff.Down and not btnToggleNotes.Down;
  grdData.Columns[20].Visible:= (tcMain.TabIndex = 0) and     btnToggleEngineeringWorkdaysDiff.Down and not btnToggleNotes.Down;

  grdData.Columns[21].Visible:= (tcMain.TabIndex = 0) and btnToggleNotes.Down;

  for i:= FrozenCols to grdData.Columns.Count - 1 do
    if not (i in [6, 7, 19, 20, 21]) then
      if (i < FirstHiddenForNotesColumn) then
        grdData.Columns[i].Visible:= (tcMain.TabIndex = 0)
      else
        if (i < FirstSysColumnIndex) then
          grdData.Columns[i].Visible:= (tcMain.TabIndex = 0) and not btnToggleNotes.Down
        else
          grdData.Columns[i].Visible:= (tcMain.TabIndex = 1);

  if (tcMain.TabIndex = 1) then
    begin
      if (grdData.VTitleMargin <> MainGridSystemViewVTitleMargin) then
        grdData.VTitleMargin:= MainGridSystemViewVTitleMargin;
    end
  else
    begin
      if (grdData.VTitleMargin <> MainGridNormalViewVTitleMargin) then
        grdData.VTitleMargin:= MainGridNormalViewVTitleMargin;
    end;

  btnEngineeringOrderDocs.Enabled:= cdsGridDataHAS_DOC_ITEMS.AsBoolean;
  btnProductDocs.Enabled:= cdsGridDataPRODUCT_HAS_DOC_ITEMS.AsBoolean;

  c:= NormalizedToolbarToolbarsAndFlowPanels(tlbTopGridButtons);
  UpdateColumnsVisibility(grdEngineeringOrdersTree, c);

  grdData.Visible:= not FIsTreeViewVisible;
  pnlTreeView.Visible:= FIsTreeViewVisible;

  navData.Enabled:= not FIsTreeViewVisible;
end;

procedure TfmEngineeringOrders.actShowInactiveExecute(Sender: TObject);
begin
  inherited;
  FShowInactive:= not FShowInactive;
  (Sender as TAction).Checked:= FShowInactive;
  RefilterDataSet(cdsGridData);
  ConvertGridDataToTreeList;
end;

procedure TfmEngineeringOrders.actShowInactiveUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= FIsTreeViewVisible;
end;

procedure TfmEngineeringOrders.actToggleTreeViewExecute(Sender: TObject);
var
  SavedEngineeringOrderCode: Integer;
begin
  inherited;

  if FIsTreeViewVisible then
    SavedEngineeringOrderCode:= cdsGridData.Params.ParamByName('TREE_ENGINEERING_ORDER_CODE').AsInteger
  else
    SavedEngineeringOrderCode:= cdsGridDataENGINEERING_ORDER_CODE.AsInteger;

  FIsTreeViewVisible:= not FIsTreeViewVisible;

  tcMain.Tabs.Clear;
  tcMain.Tabs.Add(TreeViewEnabledMainTabSheetCaptions[FIsTreeViewVisible]);

  if not FIsTreeViewVisible then
    tcMain.Tabs.Add(SMainTabSheetCaptionSystemInfo);

  tcMain.TabIndex:= 0;

  cdsGridData.Params.ParamByName('GET_ENGINEERING_ORDERS_TREE').AsInteger:= Ord(FIsTreeViewVisible);

  if FIsTreeViewVisible then
    cdsGridData.Params.ParamByName('TREE_ENGINEERING_ORDER_CODE').AsInteger:= cdsGridDataENGINEERING_ORDER_CODE.AsInteger
  else
    cdsGridData.Params.ParamByName('TREE_ENGINEERING_ORDER_CODE').Clear;

  cdsGridData.TempDisableControls/
    procedure begin
      RefreshDataSet(cdsGridData);
      cdsGridData.Locate('ENGINEERING_ORDER_CODE', SavedEngineeringOrderCode, []);
    end;

  actForm.Update;
  ActiveControl:= (IfThen(FIsTreeViewVisible, grdEngineeringOrdersTree, grdData) as TWinControl);

  FixDBGridEhColumnWidths(grdData);
end;

procedure TfmEngineeringOrders.actToggleTreeViewUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    FIsTreeViewVisible or
    ( not cdsGridData.IsEmpty and
      (cdsGridDataEO_STATE_CODE.AsInteger <> AnnuledEOStateCode)
    );
end;

function TfmEngineeringOrders.MustResortGridDataAfterOpen: Boolean;
begin
  Result:= Assigned(grdData.DataSource);
end;

procedure TfmEngineeringOrders.btnProductDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(emReadOnly, (Sender as TControl),
    cdsGridDataPRODUCT_CODE.AsInteger);
end;

procedure TfmEngineeringOrders.btnEngineeringOrderDocsClick(
  Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, (Sender as TControl), dotEngineeringOrder, cdsGridData);
end;

procedure TfmEngineeringOrders.cdsGridDataEO_STATE_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;

  if (Sender.AsInteger in [Low(TEOStates)..High(TEOStates)]) then
    Text:= EOStateNames[Sender.AsInteger];
end;

procedure TfmEngineeringOrders.cdsGridDataFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:=
    not FIsTreeViewVisible or
    FShowInactive or
    (cdsGridDataEO_STATE_CODE.AsInteger < ClosedEOStateCode);
end;

procedure TfmEngineeringOrders.cdsGridDataAfterOpen(DataSet: TDataSet);
begin
  inherited;

  if (cdsGridData.IndexName = '') then
    begin
      cdsGridData.IndexName:= cdsGridData.IndexDefs[0].Name;
      cdsGridData.First;
    end;

  if FIsTreeViewVisible then
    ConvertGridDataToTreeList;
end;

procedure TfmEngineeringOrders.ConvertGridDataToTreeList;
begin
  cdsGridData.IndexName:= cdsGridData.IndexDefs[0].Name;
  grdEngineeringOrdersTree.ConvertToTreeList('ENGINEERING_ORDER_CODE', 'PARENT_ENGINEERING_ORDER_CODE');

  InitializeTreeNodesExpandedState(
    grdEngineeringOrdersTree,
    function (AMemoryRecordEh: TMemoryRecordEh): Boolean begin
      Result:= (AMemoryRecordEh.DataValues['EO_STATE_CODE', dvvCurValueEh] >= ClosedEOStateCode);
    end);
end;

procedure TfmEngineeringOrders.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsGridData_REPORT_TITLE.AsString:= Caption;

  cdsGridData_ENGINEERING_ORDER_POSITION.AsString:=
    GetEngineeringOrderPosition(
      cdsGridDataHAS_PARENT_ENGINEERING_ORDER.AsBoolean,
      cdsGridDataHAS_CHILDREN.AsBoolean);
end;

function TfmEngineeringOrders.GetFilterFormEnabled: Boolean;
begin
  Result:=
    inherited GetFilterFormEnabled and
    not FIsTreeViewVisible;
end;

function TfmEngineeringOrders.GetGridRecordReadOnly: Boolean;
begin
  Result:=
    inherited GetGridRecordReadOnly or
    (not LoginContext.HasUserActivity(uaEngineeringOrdersEdit));
end;

function TfmEngineeringOrders.GetImageIndex: Integer;
begin
  Result:= 155 + Ord(not VarIsNull(grdEngineeringOrdersTree.DataSource.DataSet.FieldByName('PARENT_ENGINEERING_ORDER_CODE').AsVariant));
end;

function TfmEngineeringOrders.GetPrintEnabled: Boolean;
begin
  Result:=
    inherited GetPrintEnabled and
    not FIsTreeViewVisible;
end;

procedure TfmEngineeringOrders.pdsGridDataParamsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  InitializePriorityInterval(pdsGridDataParamsBEGIN_PRIORITY_CODE, pdsGridDataParamsEND_PRIORITY_CODE);
end;

function TfmEngineeringOrders.ShowEditForm(AEditMode: TEditMode): Boolean;
var
  DefaultsOrigin: TDefaultsOrigin;
begin
  if (AEditMode = emInsert) and InInsertLikeAction then
    DefaultsOrigin:= doServer
  else
    DefaultsOrigin:= doNone;

  Result:= TfmEngineeringOrder.ShowForm(dmDocClient, cdsGridData, AEditMode, DefaultsOrigin);
end;

end.
