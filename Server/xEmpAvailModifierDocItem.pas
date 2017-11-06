
{*************************************************************************************}
{                                                                                     }
{                                  XML Data Binding                                   }
{                                                                                     }
{         Generated on: 10.1.2006 09:28:28                                            }
{       Generated from: XMLSchemas\Public\EmpAvailModifierDocItem.xsd                 }
{                                                                                     }
{*************************************************************************************}

unit xEmpAvailModifierDocItem;

interface

uses xmldom, XMLDoc, XMLIntf, xBaseObjectDocItem, xTEmpAvailModifier;

type

{ Forward Decls }

  IXMLTEmpAvailModifierDocItem = interface;

{ IXMLTEmpAvailModifierDocItem }

  IXMLTEmpAvailModifierDocItem = interface(IXMLTBaseObjectDocItem)
    ['{7E5E9609-2EDB-46BF-A80F-763C1E09A7E1}']
    { Property Accessors }
    function Get_EmpAvailModifier: IXMLTEmpAvailModifier;
    { Methods & Properties }
    property EmpAvailModifier: IXMLTEmpAvailModifier read Get_EmpAvailModifier;
  end;

{ Forward Decls }

  TXMLTEmpAvailModifierDocItem = class;

{ TXMLTEmpAvailModifierDocItem }

  TXMLTEmpAvailModifierDocItem = class(TXMLTBaseObjectDocItem, IXMLTEmpAvailModifierDocItem)
  protected
    { IXMLTEmpAvailModifierDocItem }
    function Get_EmpAvailModifier: IXMLTEmpAvailModifier;
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetEmpAvailModifierDocItem(Doc: IXMLDocument): IXMLTEmpAvailModifierDocItem;
function LoadEmpAvailModifierDocItem(const FileName: WideString): IXMLTEmpAvailModifierDocItem;
function NewEmpAvailModifierDocItem: IXMLTEmpAvailModifierDocItem;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetEmpAvailModifierDocItem(Doc: IXMLDocument): IXMLTEmpAvailModifierDocItem;
begin
  Result := Doc.GetDocBinding('EmpAvailModifierDocItem', TXMLTEmpAvailModifierDocItem, TargetNamespace) as IXMLTEmpAvailModifierDocItem;
end;

function LoadEmpAvailModifierDocItem(const FileName: WideString): IXMLTEmpAvailModifierDocItem;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('EmpAvailModifierDocItem', TXMLTEmpAvailModifierDocItem, TargetNamespace) as IXMLTEmpAvailModifierDocItem;
end;

function NewEmpAvailModifierDocItem: IXMLTEmpAvailModifierDocItem;
begin
  Result := NewXMLDocument.GetDocBinding('EmpAvailModifierDocItem', TXMLTEmpAvailModifierDocItem, TargetNamespace) as IXMLTEmpAvailModifierDocItem;
end;

{ TXMLTEmpAvailModifierDocItem }

procedure TXMLTEmpAvailModifierDocItem.AfterConstruction;
begin
  RegisterChildNode('EmpAvailModifier', TXMLTEmpAvailModifier);
  inherited;
end;

function TXMLTEmpAvailModifierDocItem.Get_EmpAvailModifier: IXMLTEmpAvailModifier;
begin
  Result := ChildNodes['EmpAvailModifier'] as IXMLTEmpAvailModifier;
end;

end.
