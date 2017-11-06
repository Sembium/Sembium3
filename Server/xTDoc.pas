
{**********************************************************************}
{                                                                      }
{                           XML Data Binding                           }
{                                                                      }
{         Generated on: 09.05.2012 17:43:13                            }
{       Generated from: XMLSchemas\Public\TInvoice.xsd                 }
{   Settings stored in: XMLSchemas\Public\TInvoice.xdb   }
{                                                                      }
{**********************************************************************}

unit xTDoc;

interface

uses xmldom, XMLDoc, XMLIntf, xTDocItems;

type

{ Forward Decls }

  IXMLTDoc = interface;

{ IXMLTDoc }

  IXMLTDoc = interface(IXMLNode)
    ['{A1A0E88B-ECF0-47D1-A0C6-5D8580F3AD36}']
    { Property Accessors }
    function Get_DocEmptinessRequirementName: Variant;
    function Get_IsComplete: Variant;
    function Get_DocItems: IXMLTDocItems;
    procedure Set_DocEmptinessRequirementName(Value: Variant);
    procedure Set_IsComplete(Value: Variant);
    { Methods & Properties }
    property DocEmptinessRequirementName: Variant read Get_DocEmptinessRequirementName write Set_DocEmptinessRequirementName;
    property IsComplete: Variant read Get_IsComplete write Set_IsComplete;
    property DocItems: IXMLTDocItems read Get_DocItems;
  end;

{ Forward Decls }

  TXMLTDoc = class;

{ TXMLTDoc }

  TXMLTDoc = class(TXMLNode, IXMLTDoc)
  protected
    { IXMLTDoc }
    function Get_DocEmptinessRequirementName: Variant;
    function Get_IsComplete: Variant;
    function Get_DocItems: IXMLTDocItems;
    procedure Set_DocEmptinessRequirementName(Value: Variant);
    procedure Set_IsComplete(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

implementation

{ TXMLTDoc }

procedure TXMLTDoc.AfterConstruction;
begin
  RegisterChildNode('DocItems', TXMLTDocItems);
  inherited;
end;

function TXMLTDoc.Get_DocEmptinessRequirementName: Variant;
begin
  Result := ChildNodes['DocEmptinessRequirementName'].NodeValue;
end;

procedure TXMLTDoc.Set_DocEmptinessRequirementName(Value: Variant);
begin
  ChildNodes['DocEmptinessRequirementName'].NodeValue := Value;
end;

function TXMLTDoc.Get_IsComplete: Variant;
begin
  Result := ChildNodes['IsComplete'].NodeValue;
end;

procedure TXMLTDoc.Set_IsComplete(Value: Variant);
begin
  ChildNodes['IsComplete'].NodeValue := Value;
end;

function TXMLTDoc.Get_DocItems: IXMLTDocItems;
begin
  Result := ChildNodes['DocItems'] as IXMLTDocItems;
end;

end.
