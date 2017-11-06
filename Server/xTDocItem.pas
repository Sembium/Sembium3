
{**********************************************************************}
{                                                                      }
{                           XML Data Binding                           }
{                                                                      }
{         Generated on: 22.3.2006 14:11:49                             }
{       Generated from: XMLSchemas\Public\TDocItem.xsd                 }
{                                                                      }
{**********************************************************************}

unit xTDocItem;

interface

uses
  xmldom, XMLDoc, XMLIntf, xTEmployee, xTDateTime;

type

{ Forward Decls }

  IXMLTDocItem = interface;

{ IXMLTDocItem }

  IXMLTDocItem = interface(IXMLNode)
    ['{E659C963-37DD-4EA9-B2EB-A68428A89669}']
    { Property Accessors }
    function Get_DocItemNo: Variant;
    function Get_DocItemTypeName: Variant;
    function Get_DocItemName: Variant;
    function Get_DevelopEmployee: IXMLTEmployee;
    function Get_DevelopDateTime: IXMLTDateTime;
    function Get_AuthorizeEmployee: IXMLTEmployee;
    function Get_AuthorizeDateTime: IXMLTDateTime;
    function Get_ApproveEmployee: IXMLTEmployee;
    function Get_ApproveDateTime: IXMLTDateTime;
    function Get_Notes: Variant;
    function Get_IsInactive: Variant;
    procedure Set_DocItemNo(Value: Variant);
    procedure Set_DocItemTypeName(Value: Variant);
    procedure Set_DocItemName(Value: Variant);
    procedure Set_Notes(Value: Variant);
    procedure Set_IsInactive(Value: Variant);
    { Methods & Properties }
    property DocItemNo: Variant read Get_DocItemNo write Set_DocItemNo;
    property DocItemTypeName: Variant read Get_DocItemTypeName write Set_DocItemTypeName;
    property DocItemName: Variant read Get_DocItemName write Set_DocItemName;
    property DevelopEmployee: IXMLTEmployee read Get_DevelopEmployee;
    property DevelopDateTime: IXMLTDateTime read Get_DevelopDateTime;
    property AuthorizeEmployee: IXMLTEmployee read Get_AuthorizeEmployee;
    property AuthorizeDateTime: IXMLTDateTime read Get_AuthorizeDateTime;
    property ApproveEmployee: IXMLTEmployee read Get_ApproveEmployee;
    property ApproveDateTime: IXMLTDateTime read Get_ApproveDateTime;
    property Notes: Variant read Get_Notes write Set_Notes;
    property IsInactive: Variant read Get_IsInactive write Set_IsInactive;
  end;

{ Forward Decls }

  TXMLTDocItem = class;

{ TXMLTDocItem }

  TXMLTDocItem = class(TXMLNode, IXMLTDocItem)
  protected
    { IXMLTDocItem }
    function Get_DocItemNo: Variant;
    function Get_DocItemTypeName: Variant;
    function Get_DocItemName: Variant;
    function Get_DevelopEmployee: IXMLTEmployee;
    function Get_DevelopDateTime: IXMLTDateTime;
    function Get_AuthorizeEmployee: IXMLTEmployee;
    function Get_AuthorizeDateTime: IXMLTDateTime;
    function Get_ApproveEmployee: IXMLTEmployee;
    function Get_ApproveDateTime: IXMLTDateTime;
    function Get_Notes: Variant;
    function Get_IsInactive: Variant;
    procedure Set_DocItemNo(Value: Variant);
    procedure Set_DocItemTypeName(Value: Variant);
    procedure Set_DocItemName(Value: Variant);
    procedure Set_Notes(Value: Variant);
    procedure Set_IsInactive(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTDocItem;
function LoadUnknown(const FileName: WideString): IXMLTDocItem;
function NewUnknown: IXMLTDocItem;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTDocItem;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTDocItem, TargetNamespace) as IXMLTDocItem;
end;

function LoadUnknown(const FileName: WideString): IXMLTDocItem;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTDocItem, TargetNamespace) as IXMLTDocItem;
end;

function NewUnknown: IXMLTDocItem;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTDocItem, TargetNamespace) as IXMLTDocItem;
end;

{ TXMLTDocItem }

procedure TXMLTDocItem.AfterConstruction;
begin
  RegisterChildNode('DevelopEmployee', TXMLTEmployee);
  RegisterChildNode('DevelopDateTime', TXMLTDateTime);
  RegisterChildNode('AuthorizeEmployee', TXMLTEmployee);
  RegisterChildNode('AuthorizeDateTime', TXMLTDateTime);
  RegisterChildNode('ApproveEmployee', TXMLTEmployee);
  RegisterChildNode('ApproveDateTime', TXMLTDateTime);
  inherited;
end;

function TXMLTDocItem.Get_DocItemNo: Variant;
begin
  Result := ChildNodes['DocItemNo'].NodeValue;
end;

procedure TXMLTDocItem.Set_DocItemNo(Value: Variant);
begin
  ChildNodes['DocItemNo'].NodeValue := Value;
end;

function TXMLTDocItem.Get_DocItemTypeName: Variant;
begin
  Result := ChildNodes['DocItemTypeName'].NodeValue;
end;

procedure TXMLTDocItem.Set_DocItemTypeName(Value: Variant);
begin
  ChildNodes['DocItemTypeName'].NodeValue := Value;
end;

function TXMLTDocItem.Get_DocItemName: Variant;
begin
  Result := ChildNodes['DocItemName'].NodeValue;
end;

procedure TXMLTDocItem.Set_DocItemName(Value: Variant);
begin
  ChildNodes['DocItemName'].NodeValue := Value;
end;

function TXMLTDocItem.Get_DevelopEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['DevelopEmployee'] as IXMLTEmployee;
end;

function TXMLTDocItem.Get_DevelopDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['DevelopDateTime'] as IXMLTDateTime;
end;

function TXMLTDocItem.Get_AuthorizeEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['AuthorizeEmployee'] as IXMLTEmployee;
end;

function TXMLTDocItem.Get_AuthorizeDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['AuthorizeDateTime'] as IXMLTDateTime;
end;

function TXMLTDocItem.Get_ApproveEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['ApproveEmployee'] as IXMLTEmployee;
end;

function TXMLTDocItem.Get_ApproveDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['ApproveDateTime'] as IXMLTDateTime;
end;

function TXMLTDocItem.Get_Notes: Variant;
begin
  Result := ChildNodes['Notes'].NodeValue;
end;

procedure TXMLTDocItem.Set_Notes(Value: Variant);
begin
  ChildNodes['Notes'].NodeValue := Value;
end;

function TXMLTDocItem.Get_IsInactive: Variant;
begin
  Result := ChildNodes['IsInactive'].NodeValue;
end;

procedure TXMLTDocItem.Set_IsInactive(Value: Variant);
begin
  ChildNodes['IsInactive'].NodeValue := Value;
end;

end.
