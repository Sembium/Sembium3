
{************************************************************************}
{                                                                        }
{                            XML Data Binding                            }
{                                                                        }
{         Generated on: 20.2.2006 09:48:33                               }
{       Generated from: XMLSchemas\Public\TProductEx.xsd                 }
{                                                                        }
{************************************************************************}

unit xTProductEx;

interface

uses
  xmldom, XMLDoc, XMLIntf, xTProduct;

type

{ Forward Decls }

  IXMLTProductEx = interface;

{ IXMLTProductEx }

  IXMLTProductEx = interface(IXMLTProduct)
    ['{70924032-58C7-4E41-82D6-83EB77D2CEA0}']
    { Property Accessors }
    function Get_Material: IXMLTProduct;
    function Get_MaterialTechQuantity: Variant;
    procedure Set_MaterialTechQuantity(Value: Variant);
    { Methods & Properties }
    property Material: IXMLTProduct read Get_Material;
    property MaterialTechQuantity: Variant read Get_MaterialTechQuantity write Set_MaterialTechQuantity;
  end;

{ Forward Decls }

  TXMLTProductEx = class;

{ TXMLTProductEx }

  TXMLTProductEx = class(TXMLTProduct, IXMLTProductEx)
  protected
    { IXMLTProductEx }
    function Get_Material: IXMLTProduct;
    function Get_MaterialTechQuantity: Variant;
    procedure Set_MaterialTechQuantity(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTProductEx;
function LoadUnknown(const FileName: WideString): IXMLTProductEx;
function NewUnknown: IXMLTProductEx;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTProductEx;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTProductEx, TargetNamespace) as IXMLTProductEx;
end;

function LoadUnknown(const FileName: WideString): IXMLTProductEx;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTProductEx, TargetNamespace) as IXMLTProductEx;
end;

function NewUnknown: IXMLTProductEx;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTProductEx, TargetNamespace) as IXMLTProductEx;
end;

{ TXMLTProductEx }

procedure TXMLTProductEx.AfterConstruction;
begin
  RegisterChildNode('Material', TXMLTProduct);
  inherited;
end;

function TXMLTProductEx.Get_Material: IXMLTProduct;
begin
  Result := ChildNodes['Material'] as IXMLTProduct;
end;

function TXMLTProductEx.Get_MaterialTechQuantity: Variant;
begin
  Result := ChildNodes['MaterialTechQuantity'].NodeValue;
end;

procedure TXMLTProductEx.Set_MaterialTechQuantity(Value: Variant);
begin
  ChildNodes['MaterialTechQuantity'].NodeValue := Value;
end;

end.
