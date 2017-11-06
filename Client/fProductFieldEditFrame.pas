unit fProductFieldEditFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fTreeNodeFieldEditFrame, DB, DBClient, AbmesClientDataSet,
  ActnList, StdCtrls, Mask, JvToolEdit, JvDBControls, Buttons, ExtCtrls,
  ComCtrls, ToolWin, AbmesFields, DBCtrls, uDocUtils, JvExMask, uProducts, System.Actions;

type
  TfrProductFieldEditFrame = class(TTreeNodeFieldEditFrame)
    actShowProductVIM: TAction;
    btnProductVIM: TSpeedButton;
    procedure actShowProductVIMUpdate(Sender: TObject);
    procedure actShowProductVIMExecute(Sender: TObject);
    procedure actFrameUpdate(Sender: TObject);
  private
    FVIMButtonVisible: Boolean;
    FVIMDate: TDateTime;
    FProductClass: TProductClass;
    FBOIOrderType: Integer;
    FPartnerCode: Integer;
    FCommonStatuses: TCommonStatuses;
  protected
    function GetNodeCode(ANodeNo: string): Integer; override;
    function IsInstance(ANodeCode: Integer): Boolean; override;
    function NoMatchingNodeErrorMsg: string; override;
    function NodeNotAnInstanceErrorMsg: string; override;
    function DoEditTreeNodeCode(ANodeCode: Integer): Integer; override;
    procedure UpdateTreeNode; override;
    procedure ValidateNode(ANodeCode: Integer); override;
    function GetEditTreeNodeButtonHint: string; override;
    function GetDocOwnerType: TDocOwnerType; override;
    function GetDocButtonHintFormat: string; override;
    function RawNoWidth: Integer; override;
  public
    constructor Create(AOwner: TComponent); override;

    property VIMButtonVisible: Boolean read FVIMButtonVisible write FVIMButtonVisible;
    property VIMDate: TDateTime read FVIMDate write FVIMDate;
    property ProductClass: TProductClass read FProductClass write FProductClass default pcNormal;
    property BOIOrderType: Integer read FBOIOrderType write FBOIOrderType;
    property PartnerCode: Integer read FPartnerCode write FPartnerCode;
    property CommonStatuses: TCommonStatuses read FCommonStatuses write FCommonStatuses default AllCommonStatuses;
  end;

implementation

uses
  dMain, uTreeClientUtils, uClientTypes, uUtils, fVIMQuantity,
  uOpenVIMConsts, uProductClientUtils, uClientDateTime, Math,
  uClientConsts;

{$R *.dfm}

const
  ProductNoWidth = 85;

resourcestring
  SInvokeTreeEditorHint1 = 'Избор от дървото на %s';
  SInvokeTreeEditorHint2 = 'Ако задържите Shift се отваря дървото с наличности от %s';
  SNoMatchingProduct = 'Не съществува %s с такъв id цифров';
  SProductNotAnInstance = 'Не можете да избирате Група %s';
  SNotADescendantOf = 'Трябва да изберете %s наследник на "%s"';
  SVimButtonHintFormat = 'Показва ВИМ - Наличност за избрания %s';
  SBudgetDocButtonHintFormat = 'Показва МИИО на избраната %s';

{ TfrProductFieldEditFrame }

constructor TfrProductFieldEditFrame.Create(AOwner: TComponent);
begin
  inherited;
  FieldNames:= 'PRODUCT_CODE';
  VIMButtonVisible:= True;
  VIMDate:= ContextDate;
  FProductClass:= pcNormal;
  FPartnerCode:= -1;
  FCommonStatuses:= AllCommonStatuses;
end;

function TfrProductFieldEditFrame.DoEditTreeNodeCode(ANodeCode: Integer): Integer;
begin
  Result:= EditProductCode(ANodeCode, RootCode, TreeDetailSelectionIfReadOnly,
    ProductClass, BOIOrderType, PartnerCode, CommonStatuses);
end;

function TfrProductFieldEditFrame.GetNodeCode(ANodeNo: string): Integer;
begin
  Result:= dmMain.SvrProductsTree.GetProductCode(StrToFloat(ANodeNo), ProductClassToInt(ProductClass));
end;

function TfrProductFieldEditFrame.IsInstance(ANodeCode: Integer): Boolean;
begin
  Result:= dmMain.SvrProductsTree.IsInstance(ANodeCode);
end;

function TfrProductFieldEditFrame.NodeNotAnInstanceErrorMsg: string;
begin
  Result:= Format(SProductNotAnInstance, [ProductsClassNames[ProductClass]]);
end;

function TfrProductFieldEditFrame.NoMatchingNodeErrorMsg: string;
begin
  Result:= Format(SNoMatchingProduct, [ProductClassCommonNames[ProductClass]]);
end;

function TfrProductFieldEditFrame.RawNoWidth: Integer;
begin
  Result:= ProductNoWidth;
end;

procedure TfrProductFieldEditFrame.ValidateNode(ANodeCode: Integer);
var
  DummyInteger: Integer;
  DummyDouble: Double;
  DummyBoolean: Boolean;
  DummyString: string;
  RootName: string;
  CommonStatusCode: Integer;
begin
  inherited;

  if (RootCode = ANodeCode) or
     (not dmMain.SvrProductsTree.IsDescendantOf(ANodeCode, RootCode)) then
    begin
      dmMain.SvrProductsTree.GetProductData(RootCode, RootName,
        DummyDouble, DummyInteger, DummyInteger, DummyDouble,
        DummyInteger, DummyDouble, DummyDouble, DummyDouble,
        DummyBoolean, DummyBoolean, DummyInteger, DummyDouble,
        DummyInteger, DummyBoolean, DummyInteger, DummyInteger,
        DummyInteger, DummyBoolean, DummyBoolean, DummyDouble,
        DummyInteger, DummyInteger, DummyInteger, CommonStatusCode, DummyBoolean);

      raise Exception.CreateFmt(SNotADescendantOf, [ProductClassCommonNames[ProductClass], RootName]);
    end;

  if (CommonStatuses <> AllCommonStatuses) then
    begin
      dmMain.SvrProductsTree.GetProductData(ANodeCode, DummyString,
        DummyDouble, DummyInteger, DummyInteger, DummyDouble,
        DummyInteger, DummyDouble, DummyDouble, DummyDouble,
        DummyBoolean, DummyBoolean, DummyInteger, DummyDouble,
        DummyInteger, DummyBoolean, DummyInteger, DummyInteger,
        DummyInteger, DummyBoolean, DummyBoolean, DummyDouble,
        DummyInteger, DummyInteger, DummyInteger, CommonStatusCode, DummyBoolean);

      CheckSelectedCommonStatus(IntToCommonStatus(CommonStatusCode), FCommonStatuses, ProductClass);
    end;
end;

procedure TfrProductFieldEditFrame.UpdateTreeNode;
var
  ProductName: string;
  ProductNo: Double;
  DocBranchCode, DocCode: Integer;
  HasDocumentation: Boolean;
begin
  dmMain.SvrProductsTree.GetProductNameAndDoc(cdsTreeNodeNODE_CODE.AsInteger,
    ProductName, ProductNo, DocBranchCode, DocCode, HasDocumentation);
  cdsTreeNodeNODE_NAME.AsString:= ProductName;

  if (ProductNo = 0) then
    cdsTreeNodeNODE_NO.Clear
  else
    cdsTreeNodeNODE_NO.AsString:= FormatFloat('############', ProductNo);

  cdsTreeNodeDOC_BRANCH_CODE.AsVariant:= IntToVar(DocBranchCode);
  cdsTreeNodeDOC_CODE.AsVariant:= IntToVar(DocCode);
  cdsTreeNodeHAS_DOCUMENTATION.AsBoolean:= HasDocumentation;
end;

procedure TfrProductFieldEditFrame.actShowProductVIMUpdate(
  Sender: TObject);
begin
  inherited;
  with (Sender as TAction) do
    begin
      Visible:= VIMButtonVisible and (ProductClass in [pcNormal, pcFinancial]);
      Enabled:= not cdsTreeNodeNODE_CODE.IsNull;
    end;

  actShowProductVIM.Hint:= Format(SVimButtonHintFormat, [ProductClassCommonNames[ProductClass]]);
end;

procedure TfrProductFieldEditFrame.actFrameUpdate(Sender: TObject);
begin
  inherited;
  if (ProductClass <> pcNormal) and
     (gbTreeNode.Caption = ' ' + ProductClassCommonNames[pcNormal] + ' ') then
    gbTreeNode.Caption:= ' ' + ProductClassCommonNames[ProductClass] + ' ';

  pnlRightButtons.Width:=
    IfThen(DocButtonVisible, tlbDocButton.Width) +
    IfThen(VIMButtonVisible, btnProductVIM.Width);
end;

procedure TfrProductFieldEditFrame.actShowProductVIMExecute(
  Sender: TObject);
begin
  inherited;
  SetFocus;
  ShowProductVIM(nil, cdsTreeNodeNODE_CODE.AsInteger, VIMDate, False, vofVIMOpenedFromSale, ProductClass);
end;

function TfrProductFieldEditFrame.GetEditTreeNodeButtonHint: string;
begin
  Result:= Format(SInvokeTreeEditorHint1, [ProductsClassNames[ProductClass]]);
  if (ProductClass in [pcNormal, pcFinancial]) then
    Result:= Result + SLineBreak + Format(SInvokeTreeEditorHint2, [ProductsClassNames[ProductClass]]);
end;

function TfrProductFieldEditFrame.GetDocButtonHintFormat: string;
begin
  if (ProductClass = pcBudget) then
    Result:= SBudgetDocButtonHintFormat
  else
    Result:= inherited GetDocButtonHintFormat;
end;

function TfrProductFieldEditFrame.GetDocOwnerType: TDocOwnerType;
begin
  Result:= dotProduct;
end;

end.

