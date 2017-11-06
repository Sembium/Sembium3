unit fOrgPrcDataDistribution;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fMasterDetailForm, ExtCtrls, Menus, DB, AbmesFields, ParamDataSet, ActnList, DBClient, AbmesClientDataSet,
  Buttons, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, StdCtrls, DBGridEhGrouping,
  Generics.Collections, uPrcUtils, ImgList, fBaseFrame, fBaseForm, fEditForm, uClientConsts, fGridTreeListExpanderFrame;

type
  TRollupColumn = record
    FieldName: string;
    IsVisible: Boolean;
    Width: Integer;
  end;

type
  TFieldGetTextEventProc = reference to procedure (Sender: TField; var Text: string; DisplayText: Boolean);

type
  [CanUseDocs]
  [VerticalResizeStep(TreeListRowHeight)]
  TfmOrgPrcDataDistribution = class(TMasterDetailForm)
    pcMaster: TPageControl;
    tsBaseOps: TTabSheet;
    pcDetail: TPageControl;
    tsDepts: TTabSheet;
    cdsProcessActions: TAbmesClientDataSet;
    cdsProcessActionsPRC_ACTION_CODE: TAbmesFloatField;
    cdsProcessActionsPRC_ACTION_NO: TAbmesFloatField;
    cdsProcessActionsPRC_ACTION_NAME: TAbmesWideStringField;
    cdsProcessActionsPRC_ACTION_ABBREV: TAbmesWideStringField;
    pdsGridDataParamsPRC_FUNC_CODE: TAbmesFloatField;
    pdsGridDataParamsPRC_CONCRETE_OP_CODE: TAbmesFloatField;
    pdsGridDataParamsPRC_CONCRETE_ACTION_CODE: TAbmesFloatField;
    pdsGridDataParamsPRC_KNOWL_CODE: TAbmesFloatField;
    pdsGridDataParamsPRC_BASE_OP_CODE: TAbmesFloatField;
    pdsGridDataParamsPRC_BASE_ACTION_CODE: TAbmesFloatField;
    pdsGridDataParamsMIN_DISTRIBUTION_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_DISTRIBUTION_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsTO_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsOTP_DISTRIBUTION_STATE_CODE: TAbmesFloatField;
    tsOccupations: TTabSheet;
    grdOccupations: TAbmesDBGrid;
    cdsOccupations: TAbmesClientDataSet;
    dsOccupations: TDataSource;
    pnlOccupationsTop: TPanel;
    tsConcreteOps: TTabSheet;
    pnlDeptsTop: TPanel;
    cdsConcreteOps: TAbmesClientDataSet;
    dsConcreteOps: TDataSource;
    pnlBaseOpsTop: TPanel;
    pnlConcreteOpsTop: TPanel;
    navBaseOps: TDBColorNavigator;
    navConcreteOps: TDBColorNavigator;
    navOccupations: TDBColorNavigator;
    pnlBaseOpsFilter: TPanel;
    btnBaseOpsFilter: TSpeedButton;
    pnlConcreteOpsFilter: TPanel;
    btnConcreteOpsFilter: TSpeedButton;
    tsOrgTaskProposals: TTabSheet;
    tsProfessions: TTabSheet;
    pnlOrgTaskProposalsTop: TPanel;
    navOrgTaskProposals: TDBColorNavigator;
    grdOrgTaskProposals: TAbmesDBGrid;
    dsOrgTaskProposals: TDataSource;
    cdsOrgTaskProposals: TAbmesClientDataSet;
    ilOrgTaskProposalRollupStatuses: TImageList;
    ilOrgTaskProposalRollupStatusesGrey: TImageList;
    pnlProfessionsTop: TPanel;
    navProfessions: TDBColorNavigator;
    grdProfessions: TAbmesDBGrid;
    dsProfessions: TDataSource;
    cdsProfessions: TAbmesClientDataSet;
    tlbBaseOpDoc: TToolBar;
    pnlBaseOpDocLabel: TPanel;
    btnBaseOpDoc: TToolButton;
    tlbConcreteOpDoc: TToolBar;
    pnlConcreteOpDoc: TPanel;
    btnConcreteOpDoc: TToolButton;
    actConcreteOpDoc: TAction;
    actBaseOpDoc: TAction;
    tlbProfessionDoc: TToolBar;
    sepProfessionDoc: TToolButton;
    pnlProfessionDoc: TPanel;
    btnProfessionDoc: TToolButton;
    actProfessionDoc: TAction;
    tlbProjectDoc: TToolBar;
    sepProjectDoc: TToolButton;
    pnlProjectDoc: TPanel;
    btnProjectDoc: TToolButton;
    pnlProjectProductDoc: TPanel;
    btnProjectProductDoc: TToolButton;
    actProjectDoc: TAction;
    actProjectProductDoc: TAction;
    tlbOccupationDoc: TToolBar;
    sepOccupationDoc: TToolButton;
    pnlOccupationDoc: TPanel;
    btnOccupationDoc: TToolButton;
    pnlOccupationProductDoc: TPanel;
    btnOccupationProductDoc: TToolButton;
    actOccupationDoc: TAction;
    actOccupationProductDoc: TAction;
    tlbDeptDoc: TToolBar;
    pnlDeptDoc: TPanel;
    btnDeptDoc: TToolButton;
    pnlDeptProductDoc: TPanel;
    btnDeptProductDoc: TToolButton;
    actDeptDoc: TAction;
    actDeptProductDoc: TAction;
    actOccupations: TAction;
    cdsOccupationsParams: TAbmesClientDataSet;
    cdsOccupationsParamsSTATUS_DATE: TAbmesSQLTimeStampField;
    cdsOccupationsParamsPRC_FUNC_CODE: TAbmesFloatField;
    cdsOccupationsParamsPRC_KNOWL_CODE: TAbmesFloatField;
    cdsOccupationsParamsPRC_BASE_OP_CODE: TAbmesFloatField;
    cdsOccupationsParamsPRC_CONCRETE_OP_CODE: TAbmesFloatField;
    btnOccupations: TBitBtn;
    sepOccupations: TToolButton;
    sepOrgTaskProposals: TToolButton;
    actOrgTaskProposals: TAction;
    cdsOrgTaskProposalsParams: TAbmesClientDataSet;
    cdsOrgTaskProposalsParamsPRC_FUNC_CODE: TAbmesFloatField;
    cdsOrgTaskProposalsParamsPRC_KNOWL_CODE: TAbmesFloatField;
    cdsOrgTaskProposalsParamsPRC_BASE_OP_CODE: TAbmesFloatField;
    cdsOrgTaskProposalsParamsPRC_CONCRETE_OP_CODE: TAbmesFloatField;
    cdsOrgTaskProposalsParamsMAX_PROPOSAL_STATE_CODE: TAbmesFloatField;
    btnOrgTaskProposals: TBitBtn;
    tlbOccupationButtons: TToolBar;
    btnToggleEmployee: TToolButton;
    sepDeptsDoc: TToolButton;
    sepBaseOpsDoc: TToolButton;
    sepConcreteOpsDoc: TToolButton;
    grdBaseOps: TAbmesDBGrid;
    frBaseOpsTreeListExpander: TfrGridTreeListExpanderFrame;
    grdConcreteOps: TAbmesDBGrid;
    frConcreteOpsTreeListExpander: TfrGridTreeListExpanderFrame;
    grdDepts: TAbmesDBGrid;
    frDeptsTreeListExpander: TfrGridTreeListExpanderFrame;
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure cdsDetailAfterOpen(DataSet: TDataSet);
    procedure cdsDetailBeforeClose(DataSet: TDataSet);
    procedure cdsOccupationsBeforeOpen(DataSet: TDataSet);
    procedure cdsDetailBeforeOpen(DataSet: TDataSet);
    procedure grdOccupationsDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer;
      Column: TColumnEh; State: TGridDrawState);
    procedure cdsOccupationsAfterOpen(DataSet: TDataSet);
    procedure cdsConcreteOpsBeforeOpen(DataSet: TDataSet);
    procedure cdsGridDataBeforeClose(DataSet: TDataSet);
    procedure pcMasterChange(Sender: TObject);
    procedure cdsConcreteOpsAfterScroll(DataSet: TDataSet);
    procedure grdOrgTaskProposalsDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure cdsOrgTaskProposalsBeforeOpen(DataSet: TDataSet);
    procedure cdsOrgTaskProposalsAfterOpen(DataSet: TDataSet);
    procedure cdsProfessionsBeforeOpen(DataSet: TDataSet);
    procedure actBaseOpDocUpdate(Sender: TObject);
    procedure actBaseOpDocExecute(Sender: TObject);
    procedure actConcreteOpDocUpdate(Sender: TObject);
    procedure actConcreteOpDocExecute(Sender: TObject);
    procedure actProfessionDocUpdate(Sender: TObject);
    procedure actProfessionDocExecute(Sender: TObject);
    procedure actProjectProductDocExecute(Sender: TObject);
    procedure actProjectProductDocUpdate(Sender: TObject);
    procedure actProjectDocUpdate(Sender: TObject);
    procedure actProjectDocExecute(Sender: TObject);
    procedure actOccupationDocExecute(Sender: TObject);
    procedure actOccupationDocUpdate(Sender: TObject);
    procedure actOccupationProductDocUpdate(Sender: TObject);
    procedure actOccupationProductDocExecute(Sender: TObject);
    procedure actDeptProductDocUpdate(Sender: TObject);
    procedure actDeptProductDocExecute(Sender: TObject);
    procedure actDeptDocUpdate(Sender: TObject);
    procedure actDeptDocExecute(Sender: TObject);
    procedure actOccupationsUpdate(Sender: TObject);
    procedure actOccupationsExecute(Sender: TObject);
    procedure actOrgTaskProposalsExecute(Sender: TObject);
    procedure actOrgTaskProposalsUpdate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsConcreteOpsAfterOpen(DataSet: TDataSet);
    procedure navBaseOpsBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure navConcreteOpsBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure grdBaseOpsDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure grdBaseOpsGetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
    procedure grdConcreteOpsDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure grdConcreteOpsGetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
    procedure grdDeptsDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure grdDeptsGetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
  private
    FCurrentProcessActionOffset: Integer;
    FRelevantColumnCodes: TObjectDictionary<TControl, TList<Integer>>;
    FConcreteOpsViewed: Boolean;
    procedure CreateRollupColumns;
    function IsRollupColumn(const AColumnName: string): Boolean; overload;
    function IsRollupColumn(AColumn: TColumnEh): Boolean; overload;
    function IsDistributionStatusColumn(const AColumnName: string): Boolean; overload;
    function IsDistributionStatusColumn(AColumn: TColumnEh): Boolean; overload;
    function GetRollupField(ARollupColumn: TColumnEh; const AEquivalentColumnName: string): TField;
    function GetRollupColumnCode(const AColumnName: string): Integer; overload;
    function GetRollupColumnCode(AColumn: TColumnEh): Integer; overload;
    function IsRelevantColumn(AColumn: TColumnEh): Boolean; overload;
    procedure AddRelevantColumnCodes(AControl: TControl; AProcessActionType: TProcessActionType);
    procedure GridDrawRollupColumnCell(ADistribStatusesImageList, ADistribStatusesGreyImageList: TImageList;
      AGrid: TAbmesDBGrid; const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure RollupGridDrawColumnCell(ADistribStatusesImageList, ADistribStatusesGreyImageList: TImageList;
      Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DrawBackground(ACanvas: TCanvas; ARect: TRect; AColor: TColor); overload;
    procedure CreateGridRollupColumns(AGrid: TAbmesDBGrid; AFirstColIndex: Integer);
    procedure InitGridColumn(AGridColumn: TColumnEh; ARollupColumn: TRollupColumn; AFirstColIndex: Integer);
    function TryGetRollupColumnName(AColumn: TColumnEh): string;
    procedure cdsOccupationsIS_OCCUPIEDGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsOccupationsIS_MAINOnGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure DetailDataSetBeforeOpen(ADataSet: TAbmesClientDataSet);
    function GetMasterDataSet: TDataSet;
    function GetProcessActionType: TProcessActionType;
    procedure cdsOrgTaskProposalsOTP_STATE_CODEOnGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure PrcDataDocActionExecute(Sender: TObject; ADataSet: TAbmesClientDataSet; const APrefix: string = '');
    procedure PrcDataDocActionUpdate(Sender: TObject; ADataSet: TAbmesClientDataSet; const APrefix: string = '');
    function GetDocField(ADataSet: TAbmesClientDataSet; const APrefix, AFieldName: string): TField;
    procedure InitCountField(ADataSet: TDataSet; const ACountFieldName, ATotalCountFieldName: string);
    procedure CountFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure RefreshDeptsPrcData;
    procedure cdsDetailDEPT_IDENTIFIEROnGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsDetailDEPT_NAMEOnGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    function MakeRollupColumnFieldName(const APrcActionCode: Integer; const ARollupColumn: TRollupColumn): string;
    procedure GetCountColumnCellParams(AColumn: TColumnEh; AFont: TFont; var Background: TColor);
    procedure InitDataSetRollupField(ADataSet: TDataSet);
    procedure RollupFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    function GetRollupFieldCode(AField: TField): Integer;
  protected
    procedure DoFilterGridData; override;
    function OpenTimeInSeconds: Integer; override;
  public
    { Public declarations }
  end;

implementation

uses
  uClientUtils, uUtils, StrUtils, JclStrings, dMain,
  uClientPrcUtils, fOrgPrcDataDistributionFilter, uClientDateTime,
  Math, uOrganisationTaskClientUtils, fProfession, uDocUtils,
  uClientTypes, uUserActivityConsts, fOccupationsAndEmployees,
  fOrganisationTaskProposals, uToolbarUtils, uTotalCountField,
  uFinanceClientUtils, uTreeListUtils;

{$R *.dfm}

resourcestring
  SPrcActionsCaption = 'ПФ';

// pri dobawqne da se dobawi i w RollupColumns w initialization
const
  rcPrcDistribStatusCode: TRollupColumn = (FieldName: 'PRC_DISTRIB_STATUS_CODE'; IsVisible: True; Width: 23);
  rcPrcDistributionCount: TRollupColumn = (FieldName: 'PRC_DISTRIBUTION_COUNT'; IsVisible: False; Width: 23);
  rcIsFilterAccepted: TRollupColumn = (FieldName: 'IS_FILTER_ACCEPTED'; IsVisible: False; Width: 23);

var
  RollupColumns: array[1..3] of TRollupColumn;

const
  BaseOpsRollupColumnsIndex = 2;
  DeptsRollupColumnsIndex = 2;
  OccupationsRollupColumnsIndex = 9;
  ConcreteOpsRollupColumnsIndex = 1;
  OrgTaskProposalsRollupColumnsIndex = 5;

{ TfmOrgPrcDataDistribution }

procedure TfmOrgPrcDataDistribution.AddRelevantColumnCodes(AControl: TControl; AProcessActionType: TProcessActionType);
var
  List: TList<Integer>;
begin
  List:= TList<Integer>.Create;
  try
    cdsProcessActions.Params.ParamByName('PROCESS_ACTION_TYPE').AsVarInteger:= ProcessActionTypeToInt(AProcessActionType);
    cdsProcessActions.TempOpen/
      cdsProcessActions.ForEach/
        procedure begin
          List.Add(cdsProcessActionsPRC_ACTION_CODE.AsInteger);
        end;

    FRelevantColumnCodes.Add(AControl, List);
  except
    FreeAndNil(List);
    raise;
  end;
end;

procedure TfmOrgPrcDataDistribution.FormCreate(Sender: TObject);
begin
  inherited;
  MaximizeStyle:= msFull;
  FilterFormClass:= TfmOrgPrcDataDistributionFilter;

  CreateRollupColumns;

  FRelevantColumnCodes:= TObjectDictionary<TControl, TList<Integer>>.Create([doOwnsValues]);

  AddRelevantColumnCodes(tsBaseOps, patBase);
  AddRelevantColumnCodes(tsConcreteOps, patConcrete);
  AddRelevantColumnCodes(grdOrgTaskProposals, patProject);

  frBaseOpsTreeListExpander.TreeListGrid:= grdBaseOps;
  frConcreteOpsTreeListExpander.TreeListGrid:= grdConcreteOps;
  frDeptsTreeListExpander.TreeListGrid:= grdDepts;

  pdsGridDataParamsPRC_KNOWL_CODE.DependsOn:= pdsGridDataParamsPRC_FUNC_CODE.FieldName;
  pdsGridDataParamsPRC_BASE_OP_CODE.DependsOn:= pdsGridDataParamsPRC_FUNC_CODE.FieldName;
  pdsGridDataParamsPRC_BASE_ACTION_CODE.DependsOn:= pdsGridDataParamsPRC_FUNC_CODE.FieldName;
  pdsGridDataParamsPRC_CONCRETE_OP_CODE.DependsOn:= pdsGridDataParamsPRC_FUNC_CODE.FieldName;
  pdsGridDataParamsPRC_CONCRETE_ACTION_CODE.DependsOn:= pdsGridDataParamsPRC_FUNC_CODE.FieldName;
end;

procedure TfmOrgPrcDataDistribution.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FRelevantColumnCodes);
end;

function TfmOrgPrcDataDistribution.OpenTimeInSeconds: Integer;
begin
  Result:=
    inherited OpenTimeInSeconds +
    cdsConcreteOps.OpenTimeInSeconds +
    cdsOccupations.OpenTimeInSeconds +
    cdsOrgTaskProposals.OpenTimeInSeconds +
    cdsProfessions.OpenTimeInSeconds;
end;

function TfmOrgPrcDataDistribution.GetMasterDataSet: TDataSet;
begin
  Result:= nil;

  if (pcMaster.ActivePage = tsBaseOps) then
    Result:= cdsGridData;

  if (pcMaster.ActivePage = tsConcreteOps) then
    Result:= cdsConcreteOps;

  Assert(Result <> nil);
end;

function TfmOrgPrcDataDistribution.GetProcessActionType: TProcessActionType;
begin
  Result:= patNone;

  if (pcMaster.ActivePage = tsBaseOps) then
    Result:= patBase;

  if (pcMaster.ActivePage = tsConcreteOps) then
    Result:= patConcrete;

  Assert(Result <> patNone);
end;

procedure TfmOrgPrcDataDistribution.DetailDataSetBeforeOpen(ADataSet: TAbmesClientDataSet);
begin
  SetParams(ADataSet.Params, pdsGridDataParams);
  SetParams(ADataSet.Params, GetMasterDataSet);
  ADataSet.Params.ParamByName('PROCESS_ACTION_TYPE').AsInteger:= ProcessActionTypeToInt(GetProcessActionType);
end;

procedure TfmOrgPrcDataDistribution.cdsOccupationsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  DetailDataSetBeforeOpen(DataSet as TAbmesClientDataSet);
end;

procedure TfmOrgPrcDataDistribution.cdsOrgTaskProposalsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cdsOrgTaskProposals.FieldByName('OTP_STATE_CODE').OnGetText:= cdsOrgTaskProposalsOTP_STATE_CODEOnGetText;
  cdsOrgTaskProposals.FieldByName('OTP_STATE_CODE').Alignment:= taLeftJustify;

  InitDataSetRollupField(DataSet);
end;

procedure TfmOrgPrcDataDistribution.cdsOrgTaskProposalsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  DetailDataSetBeforeOpen(DataSet as TAbmesClientDataSet);
end;

procedure TfmOrgPrcDataDistribution.cdsDetailBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  DetailDataSetBeforeOpen(DataSet as TAbmesClientDataSet);
end;

procedure TfmOrgPrcDataDistribution.cdsDetailAfterOpen(DataSet: TDataSet);
begin
  inherited;

  (cdsDetail.FieldByName('IS_FIN_STORE') as TAbmesFloatField).FieldValueType:= fvtBoolean;

  cdsDetail.FieldByName('DEPT_NAME').OnGetText:= cdsDetailDEPT_NAMEOnGetText;
  cdsDetail.FieldByName('DEPT_IDENTIFIER').OnGetText:= cdsDetailDEPT_IDENTIFIEROnGetText;

  InitDataSetRollupField(DataSet);

  cdsOccupations.Open;
  RegisterDateFields(cdsOccupations);

  cdsOrgTaskProposals.Open;
  RegisterDateFields(cdsOrgTaskProposals);

  cdsProfessions.Open;
  RegisterDateFields(cdsProfessions);

  grdDepts.ConvertToTreeList('DEPT_CODE', 'PARENT_CODE');
end;

procedure TfmOrgPrcDataDistribution.cdsDetailBeforeClose(DataSet: TDataSet);
begin
  inherited;

  UnregisterDateFields(cdsProfessions);
  cdsProfessions.Close;

  UnregisterDateFields(cdsOrgTaskProposals);
  cdsOrgTaskProposals.Close;

  UnregisterDateFields(cdsOccupations);
  cdsOccupations.Close;
end;

procedure TfmOrgPrcDataDistribution.CountFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if Sender.IsNull then
    Text:= ''
  else
    Text:= Format('%d/%d', [-Sender.AsInteger, Sender.DataSet.FieldByName(Sender.TotalCountField.FieldName).AsInteger]);
end;

procedure TfmOrgPrcDataDistribution.InitCountField(ADataSet: TDataSet; const ACountFieldName, ATotalCountFieldName: string);
begin
  // reda na tezi e wajen
  ADataSet.FieldByName(ACountFieldName).TotalCountField:= ADataSet.FieldByName(ATotalCountFieldName);
  ADataSet.FieldByName(ACountFieldName).OnGetText:= CountFieldGetText;
  ADataSet.FieldByName(ACountFieldName).Alignment:= taCenter;
end;

procedure TfmOrgPrcDataDistribution.cdsGridDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  InitCountField(DataSet, 'NOT_CLOSED_OTP_COUNT', 'TOTAL_OTP_COUNT');
  InitCountField(DataSet, 'NOT_OCCUPATION_DEPT_COUNT', 'TOTAL_DEPT_COUNT');
  InitCountField(DataSet, 'NOT_MASTERED_OCCUPATION_COUNT', 'TOTAL_OCCUPATION_COUNT');

  InitDataSetRollupField(DataSet);

  if FConcreteOpsViewed then
    cdsConcreteOps.Open;

  grdBaseOps.ConvertToTreeList('PRC_OBJECT_CODE', 'PARENT_PRC_OBJECT_CODE');
end;

procedure TfmOrgPrcDataDistribution.cdsGridDataBeforeClose(DataSet: TDataSet);
begin
  inherited;
  if FConcreteOpsViewed then
    cdsConcreteOps.Close;
end;

procedure TfmOrgPrcDataDistribution.DoFilterGridData;
begin
  inherited DoFilterGridData;
end;

procedure TfmOrgPrcDataDistribution.cdsOccupationsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cdsOccupations.FieldByName('IS_OCCUPIED').OnGetText:= cdsOccupationsIS_OCCUPIEDGetText;
  cdsOccupations.FieldByName('IS_OCCUPIED').Alignment:= taLeftJustify;
  cdsOccupations.FieldByName('IS_MAIN').OnGetText:= cdsOccupationsIS_MAINOnGetText;
  cdsOccupations.FieldByName('IS_MAIN').Alignment:= taLeftJustify;

  InitDataSetRollupField(DataSet);
end;

function TfmOrgPrcDataDistribution.MakeRollupColumnFieldName(const APrcActionCode: Integer; const ARollupColumn: TRollupColumn): string;
begin
  Result:= Format('%d_%s', [APrcActionCode, ARollupColumn.FieldName]);
end;

procedure TfmOrgPrcDataDistribution.InitGridColumn(AGridColumn: TColumnEh; ARollupColumn: TRollupColumn; AFirstColIndex: Integer);
begin
  with AGridColumn do
    begin
      FieldName:= MakeRollupColumnFieldName(cdsProcessActionsPRC_ACTION_CODE.AsInteger, ARollupColumn);
      Title.Caption:= Format('%s|%d', [SPrcActionsCaption, cdsProcessActionsPRC_ACTION_NO.AsInteger]);
      Title.Hint:= cdsProcessActionsPRC_ACTION_ABBREV.AsString;
      AutoFitColWidth:= False;
      Width:= ARollupColumn.Width - 1;
      ToolTips:= True;
      Visible:= ARollupColumn.IsVisible;
      Index:= AFirstColIndex + FCurrentProcessActionOffset * Length(RollupColumns);
    end;
end;

procedure TfmOrgPrcDataDistribution.CreateGridRollupColumns(AGrid: TAbmesDBGrid; AFirstColIndex: Integer);
var
  rc: TRollupColumn;
begin
  for rc in RollupColumns do
    InitGridColumn(AGrid.Columns.Add, rc, AFirstColIndex);
end;

procedure TfmOrgPrcDataDistribution.CreateRollupColumns;
begin
  FCurrentProcessActionOffset:= 0;
  try
    cdsProcessActions.TempOpen/
      cdsProcessActions.ForEach/
        procedure begin
          CreateGridRollupColumns(grdBaseOps, BaseOpsRollupColumnsIndex);
          CreateGridRollupColumns(grdConcreteOps, ConcreteOpsRollupColumnsIndex);
          CreateGridRollupColumns(grdDepts, DeptsRollupColumnsIndex);
          CreateGridRollupColumns(grdOccupations, OccupationsRollupColumnsIndex);
          CreateGridRollupColumns(grdOrgTaskProposals, OrgTaskProposalsRollupColumnsIndex);
          Inc(FCurrentProcessActionOffset);
        end;
  finally
    FCurrentProcessActionOffset:= 0;
  end;
end;

procedure TfmOrgPrcDataDistribution.InitDataSetRollupField(ADataSet: TDataSet);
var
  RollupField: TField;
begin
  cdsProcessActions.Params.ParamByName('PROCESS_ACTION_TYPE').Clear;
  cdsProcessActions.TempOpen/
    cdsProcessActions.ForEach/
      procedure begin
        RollupField:= ADataSet.FieldByName(MakeRollupColumnFieldName(cdsProcessActionsPRC_ACTION_CODE.AsInteger, rcPrcDistribStatusCode));
        RollupField.DisplayLabel:= cdsProcessActionsPRC_ACTION_ABBREV.AsString;
        RollupField.OnGetText:= RollupFieldGetText;
        RollupField.Alignment:= taLeftJustify;
      end;
end;

procedure TfmOrgPrcDataDistribution.RollupFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);
var
  DistributionCountField: TField;
begin
  if not Sender.IsNull then
    begin
      DistributionCountField:= Sender.DataSet.FindField(MakeRollupColumnFieldName(GetRollupFieldCode(Sender), rcPrcDistributionCount));

      Text:= Sender.DisplayLabel;

      if (Sender.AsInteger > 0) then
        begin
          Text:= IfThen(Text <> '', Text + SLineBreak) + PrcOrgDistributionStatusNames[IntToPrcOrgDistributionStatus(Sender.AsInteger)];
          if Assigned(DistributionCountField) and (DistributionCountField.AsInteger > 1) then
            Text:= Text + SLineBreak + SGreaterThanOneOrgDistrubutionCount;
        end;
    end;
end;

function TfmOrgPrcDataDistribution.TryGetRollupColumnName(AColumn: TColumnEh): string;
var
  FieldName: string;
  FirstUnderscorePos: Integer;
begin
  FieldName:= AColumn.FieldName;
  FirstUnderscorePos:= Pos('_', FieldName);

  if (FirstUnderscorePos < 1) then
    Exit(FieldName);

  Result:= Format('%s_%s', [Copy(FieldName, FirstUnderscorePos + 1, MaxInt), Copy(FieldName, 1, FirstUnderscorePos - 1)]);
end;

function TfmOrgPrcDataDistribution.IsRollupColumn(const AColumnName: string): Boolean;
begin
  Result:= CharIsDigit(AColumnName[Length(AColumnName)]);
end;

function TfmOrgPrcDataDistribution.IsRollupColumn(AColumn: TColumnEh): Boolean;
begin
  Result:= IsRollupColumn(TryGetRollupColumnName(AColumn));
end;

function TfmOrgPrcDataDistribution.IsDistributionStatusColumn(const AColumnName: string): Boolean;
begin
  Result:= ContainsStr(AColumnName, 'PRC_DISTRIB_STATUS_CODE');
end;

function TfmOrgPrcDataDistribution.IsDistributionStatusColumn(AColumn: TColumnEh): Boolean;
begin
  Result:= IsDistributionStatusColumn(TryGetRollupColumnName(AColumn));
end;

function TfmOrgPrcDataDistribution.GetRollupFieldCode(AField: TField): Integer;
begin
  Result:= StrToInt(Copy(AField.FieldName, 1, Pos('_', AField.FieldName) - 1));
end;

function TfmOrgPrcDataDistribution.GetRollupColumnCode(const AColumnName: string): Integer;
var
  LastUnderscorePos: Integer;
begin
  LastUnderscorePos:= CharLastPos(AColumnName, '_');
  Result:= StrToInt(Copy(AColumnName, LastUnderscorePos + 1, MaxInt));
end;

function TfmOrgPrcDataDistribution.GetRollupColumnCode(AColumn: TColumnEh): Integer;
begin
  Assert(IsRollupColumn(AColumn));
  Result:= GetRollupColumnCode(TryGetRollupColumnName(AColumn));
end;

function TfmOrgPrcDataDistribution.GetRollupField(ARollupColumn: TColumnEh; const AEquivalentColumnName: string): TField;
begin
  Assert(IsRollupColumn(ARollupColumn));
  Result:= ARollupColumn.Grid.DataSource.DataSet.FieldByName(Format('%d_%s', [GetRollupColumnCode(TryGetRollupColumnName(ARollupColumn)), AEquivalentColumnName]));
end;

function TfmOrgPrcDataDistribution.IsRelevantColumn(AColumn: TColumnEh): Boolean;
begin
  Assert(IsRollupColumn(AColumn));
  Result:=
    FRelevantColumnCodes[pcMaster.ActivePage].Contains(GetRollupColumnCode(AColumn)) and
    ( not FRelevantColumnCodes.ContainsKey(AColumn.Grid) or
      FRelevantColumnCodes[AColumn.Grid].Contains(GetRollupColumnCode(AColumn))
    );
end;

procedure TfmOrgPrcDataDistribution.DrawBackground(ACanvas: TCanvas; ARect: TRect; AColor: TColor);
begin
  ACanvas.Brush.Color:= AColor;
  ACanvas.FillRect(ARect);
end;

procedure TfmOrgPrcDataDistribution.GetCountColumnCellParams(AColumn: TColumnEh; AFont: TFont; var Background: TColor);
begin
  if AColumn.Field.IsNull then
    Background:= clWindow
  else
    if (AColumn.Field.DataSet.FieldByName(AColumn.Field.TotalCountField.FieldName).AsInteger = 0) then
      Background:= NotDistributedColor
    else
      Background:= CountColumnColors[AColumn.Field.AsInteger > 0];

  AFont.Color:= clWindowText;
end;

procedure TfmOrgPrcDataDistribution.grdBaseOpsDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer;
  Column: TColumnEh; State: TGridDrawState);
begin
  inherited;

  if Column.Field.DataSet.IsEmpty then
    Exit;

  if (Column.FieldName = 'PRC_OBJECT_SHORT_NAME') then
    DrawTreeImageColumnCell(
      grdBaseOps,
      dmMain.ilActions,
      Column.Field.DataSet.FieldByName('PRC_OBJECT_IMAGE_INDEX').AsInteger,
      Rect,
      Column);

  if IsRollupColumn(Column) then
    RollupGridDrawColumnCell(dmMain.ilPrcDistributionStatuses, dmMain.ilPrcDistributionStatusesGrey, Sender, Rect, DataCol, Column, State);
end;

procedure TfmOrgPrcDataDistribution.grdBaseOpsGetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont;
  var Background: TColor; State: TGridDrawState);
begin
  inherited;
  if (Column.FieldName = 'NOT_CLOSED_OTP_COUNT') or
     (Column.FieldName = 'NOT_OCCUPATION_DEPT_COUNT') or
     (Column.FieldName = 'NOT_MASTERED_OCCUPATION_COUNT') then
    begin
      GetCountColumnCellParams(Column, AFont, Background);
    end;
end;

procedure TfmOrgPrcDataDistribution.grdConcreteOpsDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer;
  Column: TColumnEh; State: TGridDrawState);
begin
  inherited;

  if Column.Field.DataSet.IsEmpty then
    Exit;

  if (Column.FieldName = 'PRC_CONCRETE_OP_DISPLAY_NAME') then
    DrawTreeImageColumnCell(
      grdConcreteOps,
      dmMain.ilActions,
      Column.Field.DataSet.FieldByName('PRC_CONCRETE_OP_IMAGE_INDEX').AsInteger,
      Rect,
      Column);

  if IsRollupColumn(Column) then
    RollupGridDrawColumnCell(dmMain.ilPrcDistributionStatuses, dmMain.ilPrcDistributionStatusesGrey, Sender, Rect, DataCol, Column, State);
end;

procedure TfmOrgPrcDataDistribution.grdConcreteOpsGetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont;
  var Background: TColor; State: TGridDrawState);
begin
  inherited;
  if (Column.FieldName = 'NOT_CLOSED_OTP_COUNT') or
     (Column.FieldName = 'NOT_OCCUPATION_DEPT_COUNT') or
     (Column.FieldName = 'NOT_MASTERED_OCCUPATION_COUNT') then
    begin
      GetCountColumnCellParams(Column, AFont, Background);
    end;
end;

procedure TfmOrgPrcDataDistribution.grdDeptsDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer;
  Column: TColumnEh; State: TGridDrawState);
begin
  inherited;

  if Column.Field.DataSet.IsEmpty then
    Exit;

  if (Column.FieldName = 'DEPT_NAME') then
    DrawTreeImageColumnCell(
      grdDepts,
      dmMain.ilDeptTypes,
      Column.Field.DataSet.FieldByName('DEPT_IMAGE_INDEX').AsInteger,
      Rect,
      Column);

  if IsRollupColumn(Column) then
    RollupGridDrawColumnCell(dmMain.ilPrcDistributionStatuses, dmMain.ilPrcDistributionStatusesGrey, Sender, Rect, DataCol, Column, State);
end;

procedure TfmOrgPrcDataDistribution.grdDeptsGetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont;
  var Background: TColor; State: TGridDrawState);
begin
  inherited;
  if (Column.Field.DataSet.FieldByName('IS_GROUP').AsInteger = 1) and
     not ((gdSelected in State) and (gdFocused in State)) then
    AFont.Color:= clGrayText;
end;

procedure TfmOrgPrcDataDistribution.pcMasterChange(Sender: TObject);
begin
  inherited;
  if (pcMaster.ActivePage = tsConcreteOps) and not FConcreteOpsViewed and not cdsConcreteOps.Active then
    Screen.TempCursor(crSQLWait)/
      procedure begin
        cdsConcreteOps.Open;
        FConcreteOpsViewed:= True;
      end;

  FetchDetailsAfterScroll;
end;

procedure TfmOrgPrcDataDistribution.cdsConcreteOpsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  InitCountField(DataSet, 'NOT_CLOSED_OTP_COUNT', 'TOTAL_OTP_COUNT');
  InitCountField(DataSet, 'NOT_OCCUPATION_DEPT_COUNT', 'TOTAL_DEPT_COUNT');
  InitCountField(DataSet, 'NOT_MASTERED_OCCUPATION_COUNT', 'TOTAL_OCCUPATION_COUNT');

  InitDataSetRollupField(DataSet);

  grdConcreteOps.ConvertToTreeList('PRC_CONCRETE_OP_CODE', 'PARENT_PRC_CONCRETE_OP_CODE');
end;

procedure TfmOrgPrcDataDistribution.cdsConcreteOpsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  FetchDetailsAfterScroll;
end;

procedure TfmOrgPrcDataDistribution.cdsConcreteOpsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SetParams(cdsConcreteOps.Params, pdsGridDataParams);
end;

procedure TfmOrgPrcDataDistribution.pdsGridDataParamsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  pdsGridDataParams.SafeEdit/
    procedure begin
      pdsGridDataParamsTO_DATE.AsDateTime:= ContextDate;
    end;
end;

procedure TfmOrgPrcDataDistribution.RollupGridDrawColumnCell(ADistribStatusesImageList, ADistribStatusesGreyImageList: TImageList;
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if IsRollupColumn(Column) then
    GridDrawRollupColumnCell(ADistribStatusesImageList, ADistribStatusesGreyImageList, (Sender as TAbmesDBGrid), Rect, DataCol, Column, State)
  else
    GridDrawColumnCell(Sender, Rect, DataCol, Column, State);
end;

procedure TfmOrgPrcDataDistribution.grdOccupationsDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  inherited;
  RollupGridDrawColumnCell(dmMain.ilPrcDistributionStatuses, dmMain.ilPrcDistributionStatusesGrey, Sender, Rect, DataCol, Column, State);
end;

procedure TfmOrgPrcDataDistribution.grdOrgTaskProposalsDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  inherited;
  RollupGridDrawColumnCell(ilOrgTaskProposalRollupStatuses, ilOrgTaskProposalRollupStatusesGrey, Sender, Rect, DataCol, Column, State);
end;

procedure TfmOrgPrcDataDistribution.GridDrawRollupColumnCell(ADistribStatusesImageList, ADistribStatusesGreyImageList: TImageList;
  AGrid: TAbmesDBGrid; const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);

  procedure DrawImage(AImageList: TImageList; AImageIndex: Integer);
  begin
    AImageList.Draw(AGrid.Canvas, Rect.Left + 3, Rect.Top + 1, AImageIndex);
  end;

  procedure DrawImageForCurrentColumn(AImageList: TImageList);
  begin
    if not Column.Field.IsNull then
      DrawImage(AImageList, Column.Field.AsInteger);
  end;

  procedure DrawDistributionStatusColumn;
  begin
    if (GetRollupField(Column, 'PRC_DISTRIBUTION_COUNT').AsInteger > 1) and
       (GetRollupField(Column, 'IS_FILTER_ACCEPTED').AsInteger = 1) then
      DrawBackground(AGrid.Canvas, Rect, PrcGreaterThanOneDistrubutionCountBackgroundColor)
    else
      DrawBackground(AGrid.Canvas, Rect, clWindow);

    if (GetRollupField(Column, 'IS_FILTER_ACCEPTED').AsInteger = 1) then
      DrawImageForCurrentColumn(ADistribStatusesImageList)
    else
      DrawImageForCurrentColumn(ADistribStatusesGreyImageList);
  end;

  procedure DrawIrrelevantColumn;
  begin
    DrawBackground(AGrid.Canvas, Rect, PrcIrrelevantColumnColor);
  end;

begin
  Assert(IsRollupColumn(Column));

  if not IsRelevantColumn(Column) then
    DrawIrrelevantColumn
  else
    if IsDistributionStatusColumn(Column) then
      DrawDistributionStatusColumn;
end;

procedure TfmOrgPrcDataDistribution.cdsOccupationsIS_OCCUPIEDGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if Sender.IsNull then
    Text:= ''
  else
    Text:=
      OccupationActivityStatuses[cdsOccupations.FieldByName('IS_ACTIVE').AsInteger] +
      OccupationAvailabilityStatuses[cdsOccupations.FieldByName('IS_OCCUPIED').AsInteger];
end;

procedure TfmOrgPrcDataDistribution.cdsOccupationsIS_MAINOnGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if Sender.IsNull then
    Text:= ''
  else
    Text:= OccupationIsMainAbbrevs[Sender.AsInteger];
end;

procedure TfmOrgPrcDataDistribution.cdsOrgTaskProposalsOTP_STATE_CODEOnGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if DisplayText and
     InRange(Sender.AsInteger, Low(OTPStateNames), High(OTPStateNames)) then
    Text:= OTPStateNames[Sender.AsInteger]
  else
    Text:= Sender.AsString;
end;

procedure TfmOrgPrcDataDistribution.cdsDetailDEPT_NAMEOnGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  FinStoreFieldGetText(Sender, Text, DisplayText, Sender.DataSet.FieldByName('IS_FIN_STORE').AsBoolean);
end;

procedure TfmOrgPrcDataDistribution.cdsDetailDEPT_IDENTIFIEROnGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  FinStoreFieldGetText(Sender, Text, DisplayText, Sender.DataSet.FieldByName('IS_FIN_STORE').AsBoolean);
end;

procedure TfmOrgPrcDataDistribution.cdsProfessionsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  DetailDataSetBeforeOpen(DataSet as TAbmesClientDataSet);
end;

procedure TfmOrgPrcDataDistribution.actFormUpdate(Sender: TObject);
begin
  inherited;
  UpdateColumnsVisibility(grdOccupations, tlbOccupationButtons);
end;

// Doc stuff

function TfmOrgPrcDataDistribution.GetDocField(ADataSet: TAbmesClientDataSet; const APrefix, AFieldName: string): TField;
begin
  Result:= ADataSet.FieldByName(IfThen(APrefix <> '', APrefix + '_') + AFieldName);
end;

procedure TfmOrgPrcDataDistribution.PrcDataDocActionExecute(Sender: TObject; ADataSet: TAbmesClientDataSet; const APrefix: string);
begin
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    IntToDocOwnerType(GetDocField(ADataSet, APrefix, 'DOC_OWNER_TYPE_CODE').AsInteger),
    GetDocField(ADataSet, APrefix, 'DOC_BRANCH_CODE'),
    GetDocField(ADataSet, APrefix, 'DOC_CODE'));
end;

procedure TfmOrgPrcDataDistribution.PrcDataDocActionUpdate(Sender: TObject; ADataSet: TAbmesClientDataSet; const APrefix: string);
begin
  if ADataSet.Active then
    (Sender as TAction).ImageIndex:= GetDocField(ADataSet, APrefix, 'HAS_DOC_ITEMS').AsInteger;

  (Sender as TAction).Enabled:= not ADataSet.IsEmpty;
end;

procedure TfmOrgPrcDataDistribution.actBaseOpDocExecute(Sender: TObject);
begin
  inherited;
  PrcDataDocActionExecute(Sender, cdsGridData);
end;

procedure TfmOrgPrcDataDistribution.actBaseOpDocUpdate(Sender: TObject);
begin
  inherited;
  PrcDataDocActionUpdate(Sender, cdsGridData);
end;

procedure TfmOrgPrcDataDistribution.actConcreteOpDocExecute(Sender: TObject);
begin
  inherited;
  PrcDataDocActionExecute(Sender, cdsConcreteOps);
end;

procedure TfmOrgPrcDataDistribution.actConcreteOpDocUpdate(Sender: TObject);
begin
  inherited;
  PrcDataDocActionUpdate(Sender, cdsConcreteOps);
end;

procedure TfmOrgPrcDataDistribution.actDeptDocExecute(Sender: TObject);
begin
  inherited;
  PrcDataDocActionExecute(Sender, cdsDetail);
end;

procedure TfmOrgPrcDataDistribution.actDeptDocUpdate(Sender: TObject);
begin
  inherited;
  PrcDataDocActionUpdate(Sender, cdsDetail);

  (Sender as TAction).Enabled:=
    (Sender as TAction).Enabled and
    (not cdsDetail.FieldByName('IS_FIN_STORE').AsBoolean or
     LoginContext.HasUserActivity(uaShowFinStores) or
     (LoginContext.HasUserWorkDept(cdsDetail.FieldByName('DEPT_CODE').AsInteger) and
      LoginContext.HasUserActivity(uaShowOccupationWorkDeptFinStores))
    );
end;

procedure TfmOrgPrcDataDistribution.actDeptProductDocExecute(Sender: TObject);
begin
  inherited;
  PrcDataDocActionExecute(Sender, cdsDetail, 'PRODUCT');
end;

procedure TfmOrgPrcDataDistribution.actDeptProductDocUpdate(Sender: TObject);
begin
  inherited;
  PrcDataDocActionUpdate(Sender, cdsDetail, 'PRODUCT');

  (Sender as TAction).Enabled:=
    (Sender as TAction).Enabled and
    (not cdsDetail.FieldByName('IS_FIN_STORE').AsBoolean or
     LoginContext.HasUserActivity(uaShowFinStores) or
     (LoginContext.HasUserWorkDept(cdsDetail.FieldByName('DEPT_CODE').AsInteger) and
      LoginContext.HasUserActivity(uaShowOccupationWorkDeptFinStores))
    );
end;

procedure TfmOrgPrcDataDistribution.actOccupationDocExecute(Sender: TObject);
begin
  inherited;
  PrcDataDocActionExecute(Sender, cdsOccupations);
end;

procedure TfmOrgPrcDataDistribution.actOccupationDocUpdate(Sender: TObject);
begin
  inherited;
  PrcDataDocActionUpdate(Sender, cdsOccupations);
end;

procedure TfmOrgPrcDataDistribution.actOccupationProductDocExecute(Sender: TObject);
begin
  inherited;
  PrcDataDocActionExecute(Sender, cdsOccupations, 'PRODUCT');
end;

procedure TfmOrgPrcDataDistribution.actOccupationProductDocUpdate(Sender: TObject);
begin
  inherited;
  PrcDataDocActionUpdate(Sender, cdsOccupations, 'PRODUCT');
end;

procedure TfmOrgPrcDataDistribution.actProfessionDocExecute(Sender: TObject);
begin
  inherited;
  PrcDataDocActionExecute(Sender, cdsProfessions);
end;

procedure TfmOrgPrcDataDistribution.actProfessionDocUpdate(Sender: TObject);
begin
  inherited;
  PrcDataDocActionUpdate(Sender, cdsProfessions);
end;

procedure TfmOrgPrcDataDistribution.actProjectDocExecute(Sender: TObject);
begin
  inherited;
  PrcDataDocActionExecute(Sender, cdsOrgTaskProposals);
end;

procedure TfmOrgPrcDataDistribution.actProjectDocUpdate(Sender: TObject);
begin
  inherited;
  PrcDataDocActionUpdate(Sender, cdsOrgTaskProposals);
end;

procedure TfmOrgPrcDataDistribution.actProjectProductDocExecute(Sender: TObject);
begin
  inherited;
  PrcDataDocActionExecute(Sender, cdsOrgTaskProposals, 'PRODUCT');
end;

procedure TfmOrgPrcDataDistribution.actProjectProductDocUpdate(Sender: TObject);
begin
  inherited;
  PrcDataDocActionUpdate(Sender, cdsOrgTaskProposals, 'PRODUCT');
end;

// potywane kym drugi sprawki

procedure TfmOrgPrcDataDistribution.actOccupationsExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaOccupationsAndEmployees);

  cdsOccupationsParams.TempCreateDataSet/
    procedure begin
      cdsOccupationsParams.SafeAppend/
        procedure begin
          cdsOccupationsParams.AssignFields(GetMasterDataSet);
          cdsOccupationsParamsSTATUS_DATE.AsDateTime:= ContextDate;
        end;

      TfmOccupationsAndEmployees.ShowForm(dmDocClient, cdsOccupationsParams, emReadOnly, doNone, False);
    end;
end;

procedure TfmOrgPrcDataDistribution.actOccupationsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsOccupations.IsEmpty;
end;

procedure TfmOrgPrcDataDistribution.actOrgTaskProposalsExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaOrganisationTaskProposals);

  cdsOrgTaskProposalsParams.TempCreateDataSet/
    procedure begin
      cdsOrgTaskProposalsParams.SafeAppend/
        procedure begin
          cdsOrgTaskProposalsParams.AssignFields(GetMasterDataSet);
          cdsOrgTaskProposalsParamsMAX_PROPOSAL_STATE_CODE.AsInteger:= OTPStateProposalAnnuled;
        end;

      TfmOrganisationTaskProposals.ShowForm(dmDocClient, cdsOrgTaskProposalsParams, emReadOnly, doNone, False);
    end;
end;

procedure TfmOrgPrcDataDistribution.actOrgTaskProposalsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsOrgTaskProposals.IsEmpty;
end;

procedure TfmOrgPrcDataDistribution.RefreshDeptsPrcData;
begin
  ConfirmRefresh;
  RefreshGridData;

  if Assigned(dmDocClient) then
    dmDocClient.ClearDocs;

  Abort;
end;

procedure TfmOrgPrcDataDistribution.navBaseOpsBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
  inherited;
  if (Button = nbRefresh) then
    RefreshDeptsPrcData;
end;

procedure TfmOrgPrcDataDistribution.navConcreteOpsBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
  inherited;
  if (Button = nbRefresh) then
    RefreshDeptsPrcData;
end;

initialization
  RollupColumns[1]:= rcPrcDistribStatusCode;
  RollupColumns[2]:= rcPrcDistributionCount;
  RollupColumns[3]:= rcIsFilterAccepted;
end.
