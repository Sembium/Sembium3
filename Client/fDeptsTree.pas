unit fDeptsTree;
                                       
interface                            
                                 
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,                    
  fTreeGridForm, Db, DBClient, ActnList, ImgList, ComCtrls, GridsEh,                          
  StdCtrls, ToolWin, Buttons, ExtCtrls, fTreeSelectForm, DBCtrls,                          
  ColorNavigator, fTreeNomForm, TreeParentsComboBox, Menus,
  AbmesClientDataSet, DBGridEh, AbmesDBGrid, AbmesFields, fBaseFrame,                                 
  fDBFrame, fTreeNodeParamsFrame, JvButtons, fTreeForm, dDocClient,
  JvComponent, JvCaptionButton, JvComponentBase, ParamDataSet, AbmesDBCheckBox,
  DBGridEhGrouping;

type
  TfmDeptsTree = class(TTreeSelectForm)                                                             
    cdsNodeChildrenSHOW_NO: TAbmesWideStringField;                         
    cdsPrintTreeSHOW_NO: TAbmesWideStringField;
    cdsTreeNodeChildrenIS_STORE: TAbmesFloatField;
    cdsTreeNodeChildrenIS_COMPUTERIZED_STORE: TAbmesFloatField;
    cdsTreeToNodeIS_STORE: TAbmesFloatField;
    cdsTreeToNodeIS_COMPUTERIZED_STORE: TAbmesFloatField;
    cdsTreeNodeIS_STORE: TAbmesFloatField;
    cdsTreeNodeIS_COMPUTERIZED_STORE: TAbmesFloatField;
    cdsNodeChildrenIS_STORE: TAbmesFloatField;
    cdsNodeChildrenIS_COMPUTERIZED_STORE: TAbmesFloatField;
    tlbDocs: TToolBar;
    btnDocs: TToolButton;
    cdsNodeChildrenHAS_DOCUMENTATION: TAbmesFloatField;
    cdsTreeNodeChildrenSHOW_NO: TAbmesWideStringField;
    cdsPrintTreeHAS_CHILDREN: TAbmesFloatField;
    cdsNodeChildrenPRODUCT_CODE: TAbmesFloatField;
    actSpecDocStatus: TAction;
    btnSpecDocStatus: TSpeedButton;
    actOperationLevelDeptDetailFlow: TAction;
    actStageLevelDeptDetailFlow: TAction;
    cdsDeptDetailFlowParams: TAbmesClientDataSet;
    cdsDeptDetailFlowParamsCHOSEN_DEPTS: TAbmesWideStringField;
    cdsDeptDetailFlowParamsFLOW_LEVEL: TAbmesFloatField;
    pmDeptDetailFlow: TPopupMenu;
    miOperationLevelDeptDetailFlow: TMenuItem;
    miStageLevelDeptDetailFlow: TMenuItem;
    tlbChildren: TToolBar;
    sepDeptDetailFlow: TToolButton;
    btnDeptDetailFlow: TToolButton;
    cdsNodeChildrenIS_FIN_STORE: TAbmesFloatField;
    pdsFindParamsFIND_PRODUCT: TAbmesFloatField;
    chkFindProduct: TAbmesDBCheckBox;
    cdsFindSHOW_NO: TAbmesWideStringField;
    actStoreQuantities: TAction;
    cdsStoreQuantitiesParams: TAbmesClientDataSet;
    cdsStoreQuantitiesParamsCHOSEN_PRODUCTS: TStringField;
    cdsStoreQuantitiesParamsCHOSEN_DEPTS: TStringField;
    cdsStoreQuantitiesParamsSTORE_DEAL_DATE: TAbmesDateTimeField;
    btnStoreQuantities: TSpeedButton;
    cdsTreeNodeChildrenIS_FIN_STORE: TAbmesFloatField;
    cdsTreeToNodeIS_FIN_STORE: TAbmesFloatField;
    procedure actCopyNoToClipboardExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnDocsClick(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actSpecDocStatusUpdate(Sender: TObject);
    procedure actSpecDocStatusExecute(Sender: TObject);
    procedure actOperationLevelDeptDetailFlowUpdate(Sender: TObject);
    procedure actStageLevelDeptDetailFlowUpdate(Sender: TObject);
    procedure actOperationLevelDeptDetailFlowExecute(Sender: TObject);
    procedure actStageLevelDeptDetailFlowExecute(Sender: TObject);
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
  private
    FSelectStore: Boolean;
    FSelectFinancialStore: Boolean;
    FDenyFinancialStore: Boolean;
    procedure ShowDeptDetailFlow(OnOperationLevel: Boolean);
  protected
    class function NodesHaveParams: Boolean; override;
    class function CanUseDocs: Boolean; override;
    function LevelsToExpand: Integer; override;
    function GetNodeImageIndex(ANodeType: Integer;
      ANodeImage: TNodeImage; ADataSet: TDataSet): Integer; override;
    function IsInstance(ANodeID: Integer): Boolean; override;
    function GetSortByDescFields(const ADescFields: string): string; override;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ANodeID: Integer = 0; ARootNodeID: Integer = 1;
      ATreeDetailSelection: TTreeDetailSelection = tdsAll;
      ASelectStore: Boolean = False; ASelectFinancialStore: Boolean = False;
      ADenyFinancialStore: Boolean = False); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ANodeID: Integer = 0; ARootNodeID: Integer = 1;
      ATreeDetailSelection: TTreeDetailSelection = tdsAll;
      ASelectStore: Boolean = False; ASelectFinancialStore: Boolean = False;
      ADenyFinancialStore: Boolean = False): Integer;
  end;

implementation

uses
  dMain, Clipbrd, rDepts, uClientTypes, fSpecDocStatus, uXMLUtils,
  fDeptDetailFlow, uUserActivityConsts, fStoreQuantities, uUtils, Variants,
  uClientDateTime, uProducts, uFinanceClientUtils, uTreeClientUtils;

{$R *.DFM}

procedure TfmDeptsTree.actCopyNoToClipboardExecute(Sender: TObject);
begin
//  inherited;    new behaviour
  Clipboard.AsText:= cdsNodeChildrenSHOW_NO.AsString;
end;

function TfmDeptsTree.LevelsToExpand: Integer;
begin
  Result:= LoginContext.DeptsTreeExpandLevels;
end;

class function TfmDeptsTree.NodesHaveParams: Boolean;
begin
  Result:= False;
end;

procedure TfmDeptsTree.FormCreate(Sender: TObject);
begin
  inherited;
  ReportClass:= TrptDepts;
end;

class function TfmDeptsTree.CanUseDocs: Boolean;
begin
  Result:= True;       
end;

procedure TfmDeptsTree.cdsFindBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsFind.Params.ParamByName('SHOW_FIN_STORES').AsInteger:=
    Ord(LoginContext.HasUserActivity(uaShowFinStores));
  cdsFind.Params.ParamByName('SHOW_OWD_FIN_STORES').AsInteger:=
    Ord(LoginContext.HasUserActivity(uaShowOccupationWorkDeptFinStores));
end;

procedure TfmDeptsTree.cdsNodeChildrenBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsNodeChildren.Params.ParamByName('SHOW_FIN_STORES').AsInteger:=
    Ord(LoginContext.HasUserActivity(uaShowFinStores));
  cdsNodeChildren.Params.ParamByName('SHOW_OWD_FIN_STORES').AsInteger:=
    Ord(LoginContext.HasUserActivity(uaShowOccupationWorkDeptFinStores));
end;

procedure TfmDeptsTree.cdsPrintTreeBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsPrintTree.Params.ParamByName('SHOW_FIN_STORES').AsInteger:=
    Ord(LoginContext.HasUserActivity(uaShowFinStores));
  cdsPrintTree.Params.ParamByName('SHOW_OWD_FIN_STORES').AsInteger:=
    Ord(LoginContext.HasUserActivity(uaShowOccupationWorkDeptFinStores));
end;

procedure TfmDeptsTree.cdsTreeNodeChildrenNODE_NAMEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  FinStoreFieldGetText(Sender, Text, DisplayText, cdsTreeNodeChildrenIS_FIN_STORE.AsBoolean);
end;

procedure TfmDeptsTree.cdsTreeNodeChildrenSHOW_NOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  FinStoreFieldGetText(Sender, Text, DisplayText, cdsTreeNodeChildrenIS_FIN_STORE.AsBoolean);
end;

procedure TfmDeptsTree.cdsTreeToNodeNODE_NAMEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  FinStoreFieldGetText(Sender, Text, DisplayText, cdsTreeToNodeIS_FIN_STORE.AsBoolean);
end;

function TfmDeptsTree.GetNodeImageIndex(ANodeType: Integer;
  ANodeImage: TNodeImage; ADataSet: TDataSet): Integer;
begin
  Result:= inherited GetNodeImageIndex(ANodeType, ANodeImage, ADataSet);

  if (ANodeType > 0) and ADataSet.FieldByName('IS_STORE').AsBoolean then
    Inc(Result, 3);
end;

function TfmDeptsTree.GetSortByDescFields(const ADescFields: string): string;
begin
  if (ADescFields = '') then
    Result:= 'NODE_TYPE'
  else
    Result:= ADescFields;
end;

function TfmDeptsTree.IsInstance(ANodeID: Integer): Boolean;
begin
  Result:= dmMain.SvrDeptsTree.IsInstance(ANodeID);
end;

procedure TfmDeptsTree.SetDataParams(AdmDocClient: TdmDocClient; ANodeID,
  ARootNodeID: Integer; ATreeDetailSelection: TTreeDetailSelection;
  ASelectStore, ASelectFinancialStore, ADenyFinancialStore: Boolean);
begin
  inherited SetDataParams(AdmDocClient, ANodeID, ARootNodeID, ATreeDetailSelection);
  FSelectStore:= ASelectStore;
  FSelectFinancialStore:= ASelectFinancialStore;
  FDenyFinancialStore:= ADenyFinancialStore;
end;

procedure TfmDeptsTree.ShowDeptDetailFlow(OnOperationLevel: Boolean);
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

class function TfmDeptsTree.ShowForm(AdmDocClient: TdmDocClient; ANodeID,
  ARootNodeID: Integer; ATreeDetailSelection: TTreeDetailSelection;
  ASelectStore, ASelectFinancialStore, ADenyFinancialStore: Boolean): Integer;
var
  f: TfmDeptsTree;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ANodeID, ARootNodeID, ATreeDetailSelection,
      ASelectStore, ASelectFinancialStore, ADenyFinancialStore);
    if (f.InternalShowForm = mrOK) then
      Result:= f.EndNodeID
    else
      Result:= 0;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmDeptsTree.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  OriginalModalResult: Integer;
begin
  OriginalModalResult:= ModalResult;

  inherited;

  if (OriginalModalResult = mrOk) and
     FSelectStore and
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

procedure TfmDeptsTree.btnDocsClick(Sender: TObject);
begin
  inherited;
  Assert(cdsNodeChildren.Active);

  dmDocClient.OpenDeptDoc(emReadOnly, btnDocs,
    cdsNodeChildrenNODE_ID.AsInteger);
end;

procedure TfmDeptsTree.actFormUpdate(Sender: TObject);
begin
  inherited;                   

  btnDocs.Enabled:=
    cdsNodeChildren.Active and
    (cdsNodeChildren.RecordCount > 0);
                                                                           
  with cdsNodeChildren, cdsNodeChildrenHAS_DOCUMENTATION do
    if Active and (Ord(AsBoolean) <> btnDocs.ImageIndex) then
      btnDocs.ImageIndex:= Ord(AsBoolean);
end;

procedure TfmDeptsTree.actOperationLevelDeptDetailFlowExecute(
  Sender: TObject);
begin
  inherited;
  ShowDeptDetailFlow(True);
end;

procedure TfmDeptsTree.actOperationLevelDeptDetailFlowUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsNodeChildren.Active and
    not cdsNodeChildren.IsEmpty;
end;

procedure TfmDeptsTree.actSpecDocStatusExecute(Sender: TObject);
begin
  inherited;
  TfmSpecDocStatus.ShowForm(dmDocClient, cdsNodeChildrenPRODUCT_CODE.AsInteger, emReadOnly);
end;

procedure TfmDeptsTree.actSpecDocStatusUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsNodeChildren.Active and
    not cdsNodeChildrenPRODUCT_CODE.IsNull;
end;

procedure TfmDeptsTree.actStageLevelDeptDetailFlowExecute(Sender: TObject);
begin
  inherited;
  ShowDeptDetailFlow(False);
end;

procedure TfmDeptsTree.actStageLevelDeptDetailFlowUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsNodeChildren.Active and
    not cdsNodeChildren.IsEmpty;
end;

procedure TfmDeptsTree.actStoreQuantitiesExecute(Sender: TObject);
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

procedure TfmDeptsTree.actStoreQuantitiesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsNodeChildren.Active and
    (cdsNodeChildren.RecordCount > 0);
end;

end.
