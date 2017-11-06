unit fProductsTree;
                                                 
interface                                                    

uses                                                                                             
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fTreeGridForm, Db, DBClient, ActnList, ImgList, ComCtrls, GridsEh,
  StdCtrls, ToolWin, Buttons, ExtCtrls, fTreeSelectForm, DBCtrls,                                  
  ColorNavigator, fTreeNomForm, TreeParentsComboBox, Menus,                                        
  AbmesClientDataSet, DBGridEh, AbmesDBGrid, AbmesFields, fBaseFrame,
  fDBFrame, fTreeNodeParamsFrame, JvButtons, dDocClient, JvComponent,
  JvCaptionButton, JvComponentBase, uProducts, ParamDataSet, AbmesDBCheckBox,
  fTreeForm, DBGridEhGrouping;
                                                                                                     
type
  TfmProductsTree = class(TTreeSelectForm)
    actEditSpecification: TAction;
    tlbEditChildren: TToolBar;
    btnEditSpecification: TToolButton;
    cdsNodeChildrenSPEC_PRODUCT_CODE: TAbmesFloatField;
    actShowDocumentation: TAction;
    tlbDocs: TToolBar;
    btnDocs: TToolButton;
    cdsNodeChildrenHAS_DOCUMENTATION: TAbmesFloatField;
    tlbShowVIM: TToolButton;
    actShowVIM: TAction;
    cdsTreeNodeChildrenNODE_NO: TAbmesFloatField;
    cdsPrintTreeHAS_CHILDREN: TAbmesFloatField;
    pdsFindParamsFIND_NODE_PARAMS: TAbmesFloatField;
    pdsFindParamsFIND_PRODUCT_PARTNER_NAMES: TAbmesFloatField;
    chkFindNodeParams: TAbmesDBCheckBox;
    chkFindProductPartnerNames: TAbmesDBCheckBox;
    pdsNodeChildrenCOMMON_PRODUCT_CODE: TAbmesFloatField;
    cdsNodeChildrenIS_THOROUGHLY_ENGINEERED: TAbmesFloatField;
    cdsNodeChildrenCOMMON_STATUS_CODE: TAbmesFloatField;
    actStoreQuantities: TAction;
    cdsStoreQuantitiesParams: TAbmesClientDataSet;
    cdsStoreQuantitiesParamsCHOSEN_PRODUCTS: TStringField;
    cdsStoreQuantitiesParamsCHOSEN_DEPTS: TStringField;
    cdsStoreQuantitiesParamsSTORE_DEAL_DATE: TAbmesDateTimeField;
    btnStoreQuantities: TToolButton;
    cdsPrintTreeIS_THOROUGHLY_ENGINEERED: TAbmesFloatField;
    cdsPrintTreeCOMMON_STATUS_CODE: TAbmesFloatField;
    procedure actEditSpecificationUpdate(Sender: TObject);
    procedure actEditSpecificationExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure btnDocsClick(Sender: TObject);
    procedure actShowVIMUpdate(Sender: TObject);
    procedure actShowVIMExecute(Sender: TObject);
    procedure cdsTreeNodeBeforeOpen(DataSet: TDataSet);
    procedure cdsTreeToNodeBeforeOpen(DataSet: TDataSet);
    procedure actFilterParamsExecute(Sender: TObject);
    procedure cdsFindBeforeOpen(DataSet: TDataSet);
    procedure actStoreQuantitiesExecute(Sender: TObject);
    procedure actStoreQuantitiesUpdate(Sender: TObject);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
    function TreeShowDetail: Integer;
  protected
    class function CanUseDocs: Boolean; override;
    function LevelsToExpand: Integer; override;
    function DefaultShowParams: Boolean; override;
    function GetFormCaption: string; override;
    function GetParamsFiltered: Boolean; override;
    function GetNodeImageIndex(ANodeType: Integer;
      ANodeImage: TNodeImage; ADataSet: TDataSet): Integer; override;
    function IsInstance(ANodeID: Integer): Boolean; override;

    property ProductClass: TProductClass read FProductClass;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ANodeID: Integer = 0; ARootNodeID: Integer = 1;
      ATreeDetailSelection: TTreeDetailSelection = tdsAll;
      AProductClass: TProductClass = pcNormal); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ANodeID: Integer = 0; ARootNodeID: Integer = 1;
      ATreeDetailSelection: TTreeDetailSelection = tdsAll;
      AProductClass: TProductClass = pcNormal): Integer;
    procedure Initialize; override;
  end;

type
  TProductsTreeFormClass = class of TfmProductsTree;

implementation

uses
  Variants, dMain, fSpecification, uClientTypes, uTreeNodeParams,
  fProductParamsFilter, fVIMQuantity, uOpenVIMConsts, 
  uTreeNodes, uLoginContext, uProductClientUtils, uClientUtils,
  uClientDateTime, fStoreQuantities, uUtils, uTreeClientUtils, uXMLUtils,
  uUserActivityConsts;

{$R *.DFM}

{ TfmProductsTree }

function TfmProductsTree.LevelsToExpand: Integer;
begin
  case FProductClass of
    pcNormal:
      Result:= LoginContext.ProductsTreeExpandLevels;
    pcFinancial:
      Result:= LoginContext.FinancialProductsTreeExpandLevels;
    pcBudget:
      Result:= LoginContext.BudgetProductsTreeExpandLevels;
  else
    UnknownProductClassError;
  end;
end;

procedure TfmProductsTree.SetDataParams(AdmDocClient: TdmDocClient;
  ANodeID, ARootNodeID: Integer;
  ATreeDetailSelection: TTreeDetailSelection;
  AProductClass: TProductClass);
begin
  inherited SetDataParams(AdmDocClient, ANodeID, ARootNodeID, ATreeDetailSelection);
  FProductClass:= AProductClass;
end;

class function TfmProductsTree.ShowForm(AdmDocClient: TdmDocClient;
  ANodeID, ARootNodeID: Integer;
  ATreeDetailSelection: TTreeDetailSelection;
  AProductClass: TProductClass): Integer;
var
  f: TfmProductsTree;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ANodeID, ARootNodeID, ATreeDetailSelection, AProductClass);
    if (f.InternalShowForm = mrOK) then
      Result:= f.EndNodeID
    else
      Result:= 0;
  finally
    f.ReleaseForm;
  end;
end;

function TfmProductsTree.DefaultShowParams: Boolean;
begin
  Result:= (IntToParamsTreeShowDetail(TreeShowDetail) = ptsdParams);
end;

function TfmProductsTree.TreeShowDetail: Integer;
begin
  case FProductClass of
    pcNormal:
      Result:= LoginContext.ProductsTreeShowDetail;
    pcFinancial:
      Result:= LoginContext.FinancialProductsTreeShowDetail;
    pcBudget:
      Result:= LoginContext.BudgetProductsTreeShowDetail;
  else
    UnknownProductClassError;
  end;
end;

procedure TfmProductsTree.actEditSpecificationUpdate(Sender: TObject);
begin                
  inherited;
  (Sender as TAction).Enabled:=
    cdsNodeChildren.Active and
    not cdsNodeChildrenSPEC_PRODUCT_CODE.IsNull;
end;

procedure TfmProductsTree.actEditSpecificationExecute(Sender: TObject);
begin                           
  inherited;
  TfmSpecification.ShowForm(dmDocClient, cdsNodeChildren, emReadOnly);
end;

procedure TfmProductsTree.FormCreate(Sender: TObject);
begin
  inherited;                     
  FTreeNodeParams:= TProductParams.Create;
  TreeNodeParamsTreeFilterFormClass:= TfmProductParamsFilter;
end;

function TfmProductsTree.GetFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

function TfmProductsTree.GetNodeImageIndex(ANodeType: Integer;
  ANodeImage: TNodeImage; ADataSet: TDataSet): Integer;
begin
  Result:= inherited GetNodeImageIndex(ANodeType, ANodeImage, ADataSet);

  if (Result = 3) then  // descendant
    Inc(Result, ADataSet.FieldByName('COMMON_STATUS_CODE').AsInteger - 1);

  if (Result = 5) then  // priobshten
    Inc(Result, ADataSet.FieldByName('IS_THOROUGHLY_ENGINEERED').AsInteger);
end;

function TfmProductsTree.GetParamsFiltered: Boolean;
begin
  Result:=
    inherited GetParamsFiltered or
    not cdsNodeChildren.Params.ParamByName('COMMON_PRODUCT_CODE').IsNull;
end;

procedure TfmProductsTree.Initialize;
var
  MsgParams: TStrings;
begin
  if (FProductClass <> pcNormal) then
    cdsFind.Params.ParamByName('FIND_PRODUCT_PARTNER_NAMES').AsInteger:= 0;

  inherited;

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
end;

function TfmProductsTree.IsInstance(ANodeID: Integer): Boolean;
begin
  Result:= dmMain.SvrProductsTree.IsInstance(ANodeID);
end;

procedure TfmProductsTree.actFilterParamsExecute(Sender: TObject);
begin
  Assert(Assigned(TreeNodeParamsTreeFilterFormClass));
  Assert(Assigned(FTreeNodeParams));

  if TfmProductParamsFilterClass(TreeNodeParamsTreeFilterFormClass).ShowForm(dmDocClient,
       pdsNodeChildren, emEdit, FTreeNodeParams, TNodeData(tvTree.Selected.Data).ID, ProductClass)  then
    RefreshDataSet(cdsNodeChildren);
end;

procedure TfmProductsTree.actFormUpdate(Sender: TObject);
begin
  inherited;                                       

  btnDocs.Enabled:=
    cdsNodeChildren.Active and
    (cdsNodeChildren.RecordCount > 0);

  with cdsNodeChildren, cdsNodeChildrenHAS_DOCUMENTATION do
    if Active and (Ord(AsBoolean) <> btnDocs.ImageIndex) then
      btnDocs.ImageIndex:= Ord(AsBoolean);

  chkFindProductPartnerNames.Visible:= (FProductClass = pcNormal);
end;

class function TfmProductsTree.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmProductsTree.cdsFindBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsFind.Params.ParamByName('PRODUCT_CLASS_CODE').AsInteger:=
    ProductClassToInt(FProductClass);
end;

procedure TfmProductsTree.cdsTreeNodeBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsTreeNode.Params.ParamByName('PRODUCT_CLASS_CODE').AsInteger:=
    ProductClassToInt(FProductClass);
end;

procedure TfmProductsTree.cdsTreeToNodeBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsTreeToNode.Params.ParamByName('PRODUCT_CLASS_CODE').AsInteger:=
    ProductClassToInt(FProductClass);
end;

procedure TfmProductsTree.btnDocsClick(Sender: TObject);
begin
  inherited;

  Assert(cdsNodeChildren.Active);

  dmDocClient.OpenProductDoc(emReadOnly, btnDocs,      
    cdsNodeChildrenNODE_ID.AsInteger);
end;

procedure TfmProductsTree.actShowVIMUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=                   
    cdsNodeChildren.Active and                                                                       
    (cdsNodeChildren.RecordCount > 0);
end;                  

procedure TfmProductsTree.actStoreQuantitiesExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaStoreQuantities);
  cdsStoreQuantitiesParams.TempCreateDataSet /
    procedure begin
      cdsStoreQuantitiesParams.AppendRecord([ChosenNodeCodeToXML(cdsNodeChildrenNODE_ID.AsInteger), Null, ContextDate]);
      TfmStoreQuantities.ShowForm(nil, cdsStoreQuantitiesParams, emReadOnly, doNone, False, FProductClass);
    end;
end;

procedure TfmProductsTree.actStoreQuantitiesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsNodeChildren.Active and
    (cdsNodeChildren.RecordCount > 0);
end;

procedure TfmProductsTree.actShowVIMExecute(Sender: TObject);
begin
  inherited;
  ShowProductVIM(dmDocClient, cdsNodeChildrenNODE_ID.AsInteger, ContextDate, False, vofVIMOpenedFromSale, FProductClass);
end;

end.
