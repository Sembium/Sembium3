
{***********************************************************************}
{                                                                       }
{                           XML Data Binding                            }
{                                                                       }
{         Generated on: 16.9.2005 14:17:58                              }
{       Generated from: XMLSchemas\Public\TTreeNode.xsd                 }
{                                                                       }
{***********************************************************************}

unit xTTreeNode;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTTreeNode = interface;

{ IXMLTTreeNode }

  IXMLTTreeNode = interface(IXMLNode)
    ['{DEC460D1-CD1E-4660-90A2-35BFC2967439}']
    { Property Accessors }
    function Get_Name: Variant;
    function Get_IsGroup: Variant;
    procedure Set_Name(Value: Variant);
    procedure Set_IsGroup(Value: Variant);
    { Methods & Properties }
    property Name: Variant read Get_Name write Set_Name;
    property IsGroup: Variant read Get_IsGroup write Set_IsGroup;
  end;

{ Forward Decls }

  TXMLTTreeNode = class;

{ TXMLTTreeNode }

  TXMLTTreeNode = class(TXMLNode, IXMLTTreeNode)
  protected
    { IXMLTTreeNode }
    function Get_Name: Variant;
    function Get_IsGroup: Variant;
    procedure Set_Name(Value: Variant);
    procedure Set_IsGroup(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTTreeNode;
function LoadUnknown(const FileName: WideString): IXMLTTreeNode;
function NewUnknown: IXMLTTreeNode;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTTreeNode;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTTreeNode, TargetNamespace) as IXMLTTreeNode;
end;

function LoadUnknown(const FileName: WideString): IXMLTTreeNode;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTTreeNode, TargetNamespace) as IXMLTTreeNode;
end;

function NewUnknown: IXMLTTreeNode;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTTreeNode, TargetNamespace) as IXMLTTreeNode;
end;

{ TXMLTTreeNode }

function TXMLTTreeNode.Get_Name: Variant;
begin
  Result := ChildNodes['Name'].NodeValue;
end;

procedure TXMLTTreeNode.Set_Name(Value: Variant);
begin
  ChildNodes['Name'].NodeValue := Value;
end;

function TXMLTTreeNode.Get_IsGroup: Variant;
begin
  Result := ChildNodes['IsGroup'].NodeValue;
end;

procedure TXMLTTreeNode.Set_IsGroup(Value: Variant);
begin
  ChildNodes['IsGroup'].NodeValue := Value;
end;

end.
