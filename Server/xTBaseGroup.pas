
{************************************************************************}
{                                                                        }
{                            XML Data Binding                            }
{                                                                        }
{         Generated on: 17.9.2005 10:34:56                               }
{       Generated from: XMLSchemas\Public\TBaseGroup.xsd                 }
{                                                                        }
{************************************************************************}

unit xTBaseGroup;

interface

uses xmldom, XMLDoc, XMLIntf, xTProduct, xTDept;

type

{ Forward Decls }

  IXMLTBaseGroup = interface;

{ IXMLTBaseGroup }

  IXMLTBaseGroup = interface(IXMLNode)
    ['{49D6ABF2-6FEF-4226-8D00-F42668460B77}']
    { Property Accessors }
    function Get_GroupProduct: IXMLTProduct;
    function Get_GroupDept: IXMLTDept;
    function Get_BaseGroupNo: Variant;
    function Get_BaseGroupName: Variant;
    procedure Set_BaseGroupNo(Value: Variant);
    procedure Set_BaseGroupName(Value: Variant);
    { Methods & Properties }
    property GroupProduct: IXMLTProduct read Get_GroupProduct;
    property GroupDept: IXMLTDept read Get_GroupDept;
    property BaseGroupNo: Variant read Get_BaseGroupNo write Set_BaseGroupNo;
    property BaseGroupName: Variant read Get_BaseGroupName write Set_BaseGroupName;
  end;

{ Forward Decls }

  TXMLTBaseGroup = class;

{ TXMLTBaseGroup }

  TXMLTBaseGroup = class(TXMLNode, IXMLTBaseGroup)
  protected
    { IXMLTBaseGroup }
    function Get_GroupProduct: IXMLTProduct;
    function Get_GroupDept: IXMLTDept;
    function Get_BaseGroupNo: Variant;
    function Get_BaseGroupName: Variant;
    procedure Set_BaseGroupNo(Value: Variant);
    procedure Set_BaseGroupName(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTBaseGroup;
function LoadUnknown(const FileName: WideString): IXMLTBaseGroup;
function NewUnknown: IXMLTBaseGroup;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTBaseGroup;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTBaseGroup, TargetNamespace) as IXMLTBaseGroup;
end;

function LoadUnknown(const FileName: WideString): IXMLTBaseGroup;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTBaseGroup, TargetNamespace) as IXMLTBaseGroup;
end;

function NewUnknown: IXMLTBaseGroup;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTBaseGroup, TargetNamespace) as IXMLTBaseGroup;
end;

{ TXMLTBaseGroup }

procedure TXMLTBaseGroup.AfterConstruction;
begin
  RegisterChildNode('GroupProduct', TXMLTProduct);
  RegisterChildNode('GroupDept', TXMLTDept);
  inherited;
end;

function TXMLTBaseGroup.Get_GroupProduct: IXMLTProduct;
begin
  Result := ChildNodes['GroupProduct'] as IXMLTProduct;
end;

function TXMLTBaseGroup.Get_GroupDept: IXMLTDept;
begin
  Result := ChildNodes['GroupDept'] as IXMLTDept;
end;

function TXMLTBaseGroup.Get_BaseGroupNo: Variant;
begin
  Result := ChildNodes['BaseGroupNo'].NodeValue;
end;

procedure TXMLTBaseGroup.Set_BaseGroupNo(Value: Variant);
begin
  ChildNodes['BaseGroupNo'].NodeValue := Value;
end;

function TXMLTBaseGroup.Get_BaseGroupName: Variant;
begin
  Result := ChildNodes['BaseGroupName'].NodeValue;
end;

procedure TXMLTBaseGroup.Set_BaseGroupName(Value: Variant);
begin
  ChildNodes['BaseGroupName'].NodeValue := Value;
end;

end. 
