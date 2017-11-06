
{*******************************************************************}
{                                                                   }
{                         XML Data Binding                          }
{                                                                   }
{         Generated on: 23.12.2005 15:38:05                         }
{       Generated from: XMLSchemas\Public\TDept.xsd                 }
{                                                                   }
{*******************************************************************}

unit xTDept;

interface

uses xmldom, XMLDoc, XMLIntf, xTTreeNode, xTDate, xTProduct;

type

{ Forward Decls }

  IXMLTDept = interface;

{ IXMLTDept }

  IXMLTDept = interface(IXMLTTreeNode)
    ['{4B460450-CE57-4523-8914-5FBFF4D79737}']
    { Property Accessors }
    function Get_DeptIdentifier: Variant;
    function Get_BeginDate: IXMLTDate;
    function Get_EndDate: IXMLTDate;
    function Get_IsBranch: Variant;
    function Get_IsStore: Variant;
    function Get_IsFinancialStore: Variant;
    function Get_IsExternal: Variant;
    function Get_IsRecurrent: Variant;
    function Get_Product: IXMLTProduct;
    procedure Set_DeptIdentifier(Value: Variant);
    procedure Set_IsBranch(Value: Variant);
    procedure Set_IsStore(Value: Variant);
    procedure Set_IsFinancialStore(Value: Variant);
    procedure Set_IsExternal(Value: Variant);
    procedure Set_IsRecurrent(Value: Variant);
    { Methods & Properties }
    property DeptIdentifier: Variant read Get_DeptIdentifier write Set_DeptIdentifier;
    property BeginDate: IXMLTDate read Get_BeginDate;
    property EndDate: IXMLTDate read Get_EndDate;
    property IsBranch: Variant read Get_IsBranch write Set_IsBranch;
    property IsStore: Variant read Get_IsStore write Set_IsStore;
    property IsFinancialStore: Variant read Get_IsFinancialStore write Set_IsFinancialStore;
    property IsExternal: Variant read Get_IsExternal write Set_IsExternal;
    property IsRecurrent: Variant read Get_IsRecurrent write Set_IsRecurrent;
    property Product: IXMLTProduct read Get_Product;
  end;

{ Forward Decls }

  TXMLTDept = class;

{ TXMLTDept }

  TXMLTDept = class(TXMLTTreeNode, IXMLTDept)
  protected
    { IXMLTDept }
    function Get_DeptIdentifier: Variant;
    function Get_BeginDate: IXMLTDate;
    function Get_EndDate: IXMLTDate;
    function Get_IsBranch: Variant;
    function Get_IsStore: Variant;
    function Get_IsFinancialStore: Variant;
    function Get_IsExternal: Variant;
    function Get_IsRecurrent: Variant;
    function Get_Product: IXMLTProduct;
    procedure Set_DeptIdentifier(Value: Variant);
    procedure Set_IsBranch(Value: Variant);
    procedure Set_IsStore(Value: Variant);
    procedure Set_IsFinancialStore(Value: Variant);
    procedure Set_IsExternal(Value: Variant);
    procedure Set_IsRecurrent(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTDept;
function LoadUnknown(const FileName: WideString): IXMLTDept;
function NewUnknown: IXMLTDept;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTDept;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTDept, TargetNamespace) as IXMLTDept;
end;

function LoadUnknown(const FileName: WideString): IXMLTDept;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTDept, TargetNamespace) as IXMLTDept;
end;

function NewUnknown: IXMLTDept;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTDept, TargetNamespace) as IXMLTDept;
end;

{ TXMLTDept }

procedure TXMLTDept.AfterConstruction;
begin
  RegisterChildNode('BeginDate', TXMLTDate);
  RegisterChildNode('EndDate', TXMLTDate);
  RegisterChildNode('Product', TXMLTProduct);
  inherited;
end;

function TXMLTDept.Get_DeptIdentifier: Variant;
begin
  Result := ChildNodes['DeptIdentifier'].NodeValue;
end;

procedure TXMLTDept.Set_DeptIdentifier(Value: Variant);
begin
  ChildNodes['DeptIdentifier'].NodeValue := Value;
end;

function TXMLTDept.Get_BeginDate: IXMLTDate;
begin
  Result := ChildNodes['BeginDate'] as IXMLTDate;
end;

function TXMLTDept.Get_EndDate: IXMLTDate;
begin
  Result := ChildNodes['EndDate'] as IXMLTDate;
end;

function TXMLTDept.Get_IsBranch: Variant;
begin
  Result := ChildNodes['IsBranch'].NodeValue;
end;

procedure TXMLTDept.Set_IsBranch(Value: Variant);
begin
  ChildNodes['IsBranch'].NodeValue := Value;
end;

function TXMLTDept.Get_IsStore: Variant;
begin
  Result := ChildNodes['IsStore'].NodeValue;
end;

procedure TXMLTDept.Set_IsStore(Value: Variant);
begin
  ChildNodes['IsStore'].NodeValue := Value;
end;

function TXMLTDept.Get_IsFinancialStore: Variant;
begin
  Result := ChildNodes['IsFinancialStore'].NodeValue;
end;

procedure TXMLTDept.Set_IsFinancialStore(Value: Variant);
begin
  ChildNodes['IsFinancialStore'].NodeValue := Value;
end;

function TXMLTDept.Get_IsExternal: Variant;
begin
  Result := ChildNodes['IsExternal'].NodeValue;
end;

procedure TXMLTDept.Set_IsExternal(Value: Variant);
begin
  ChildNodes['IsExternal'].NodeValue := Value;
end;

function TXMLTDept.Get_IsRecurrent: Variant;
begin
  Result := ChildNodes['IsRecurrent'].NodeValue;
end;

procedure TXMLTDept.Set_IsRecurrent(Value: Variant);
begin
  ChildNodes['IsRecurrent'].NodeValue := Value;
end;

function TXMLTDept.Get_Product: IXMLTProduct;
begin
  Result := ChildNodes['Product'] as IXMLTProduct;
end;

end.
