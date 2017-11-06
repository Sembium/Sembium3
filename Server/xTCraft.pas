
{********************************************************************}
{                                                                    }
{                          XML Data Binding                          }
{                                                                    }
{         Generated on: 10.5.2006 14:35:41                           }
{       Generated from: XMLSchemas\Public\TCraft.xsd                 }
{                                                                    }
{********************************************************************}

unit xTCraft;

interface

uses
  xmldom, XMLDoc, XMLIntf, xTCraftType;

type

{ Forward Decls }

  IXMLTCraft = interface;

{ IXMLTCraft }

  IXMLTCraft = interface(IXMLNode)
    ['{F6A75C57-56B4-49EF-806E-F40F544E5286}']
    { Property Accessors }
    function Get_CraftNo: Variant;
    function Get_CraftName: Variant;
    function Get_CraftType: IXMLTCraftType;
    procedure Set_CraftNo(Value: Variant);
    procedure Set_CraftName(Value: Variant);
    { Methods & Properties }
    property CraftNo: Variant read Get_CraftNo write Set_CraftNo;
    property CraftName: Variant read Get_CraftName write Set_CraftName;
    property CraftType: IXMLTCraftType read Get_CraftType;
  end;

{ Forward Decls }

  TXMLTCraft = class;

{ TXMLTCraft }

  TXMLTCraft = class(TXMLNode, IXMLTCraft)
  protected
    { IXMLTCraft }
    function Get_CraftNo: Variant;
    function Get_CraftName: Variant;
    function Get_CraftType: IXMLTCraftType;
    procedure Set_CraftNo(Value: Variant);
    procedure Set_CraftName(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTCraft;
function LoadUnknown(const FileName: WideString): IXMLTCraft;
function NewUnknown: IXMLTCraft;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTCraft;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTCraft, TargetNamespace) as IXMLTCraft;
end;

function LoadUnknown(const FileName: WideString): IXMLTCraft;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTCraft, TargetNamespace) as IXMLTCraft;
end;

function NewUnknown: IXMLTCraft;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTCraft, TargetNamespace) as IXMLTCraft;
end;

{ TXMLTCraft }

procedure TXMLTCraft.AfterConstruction;
begin
  RegisterChildNode('CraftType', TXMLTCraftType);
  inherited;
end;

function TXMLTCraft.Get_CraftNo: Variant;
begin
  Result := ChildNodes['CraftNo'].NodeValue;
end;

procedure TXMLTCraft.Set_CraftNo(Value: Variant);
begin
  ChildNodes['CraftNo'].NodeValue := Value;
end;

function TXMLTCraft.Get_CraftName: Variant;
begin
  Result := ChildNodes['CraftName'].NodeValue;
end;

procedure TXMLTCraft.Set_CraftName(Value: Variant);
begin
  ChildNodes['CraftName'].NodeValue := Value;
end;

function TXMLTCraft.Get_CraftType: IXMLTCraftType;
begin
  Result := ChildNodes['CraftType'] as IXMLTCraftType;
end;

end.
