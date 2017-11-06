
{*************************************************************************************}
{                                                                                     }
{                                  XML Data Binding                                   }
{                                                                                     }
{         Generated on: 30.8.2005 11:39:32                                            }
{       Generated from: XMLSchemas\Public\EngineeringOrderDocItem.xsd                 }
{                                                                                     }
{*************************************************************************************}

unit xEngineeringOrderDocItem;

interface

uses xmldom, XMLDoc, XMLIntf, xBaseObjectDocItem, xTEngineeringOrder;

type

{ Forward Decls }

  IXMLTEngineeringOrderDocItem = interface;

{ IXMLTEngineeringOrderDocItem }

  IXMLTEngineeringOrderDocItem = interface(IXMLTBaseObjectDocItem)
    ['{1516BEB9-F47B-49C5-8802-5B75C3E80ED6}']
    { Property Accessors }
    function Get_EngineeringOrder: IXMLTEngineeringOrder;
    { Methods & Properties }
    property EngineeringOrder: IXMLTEngineeringOrder read Get_EngineeringOrder;
  end;

{ Forward Decls }

  TXMLTEngineeringOrderDocItem = class;

{ TXMLTEngineeringOrderDocItem }

  TXMLTEngineeringOrderDocItem = class(TXMLTBaseObjectDocItem, IXMLTEngineeringOrderDocItem)
  protected
    { IXMLTEngineeringOrderDocItem }
    function Get_EngineeringOrder: IXMLTEngineeringOrder;
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetEngineeringOrderDocItem(Doc: IXMLDocument): IXMLTEngineeringOrderDocItem;
function LoadEngineeringOrderDocItem(const FileName: WideString): IXMLTEngineeringOrderDocItem;
function NewEngineeringOrderDocItem: IXMLTEngineeringOrderDocItem;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetEngineeringOrderDocItem(Doc: IXMLDocument): IXMLTEngineeringOrderDocItem;
begin
  Result := Doc.GetDocBinding('EngineeringOrderDocItem', TXMLTEngineeringOrderDocItem, TargetNamespace) as IXMLTEngineeringOrderDocItem;
end;

function LoadEngineeringOrderDocItem(const FileName: WideString): IXMLTEngineeringOrderDocItem;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('EngineeringOrderDocItem', TXMLTEngineeringOrderDocItem, TargetNamespace) as IXMLTEngineeringOrderDocItem;
end;

function NewEngineeringOrderDocItem: IXMLTEngineeringOrderDocItem;
begin
  Result := NewXMLDocument.GetDocBinding('EngineeringOrderDocItem', TXMLTEngineeringOrderDocItem, TargetNamespace) as IXMLTEngineeringOrderDocItem;
end;

{ TXMLTEngineeringOrderDocItem }

procedure TXMLTEngineeringOrderDocItem.AfterConstruction;
begin
  RegisterChildNode('EngineeringOrder', TXMLTEngineeringOrder);
  inherited;
end;

function TXMLTEngineeringOrderDocItem.Get_EngineeringOrder: IXMLTEngineeringOrder;
begin
  Result := ChildNodes['EngineeringOrder'] as IXMLTEngineeringOrder;
end;

end.
