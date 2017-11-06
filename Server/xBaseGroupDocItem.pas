
{******************************************************************************}
{                                                                              }
{                               XML Data Binding                               }
{                                                                              }
{         Generated on: 26.8.2005 15:04:37                                     }
{       Generated from: XMLSchemas\Public\BaseGroupDocItem.xsd                 }
{                                                                              }
{******************************************************************************}

unit xBaseGroupDocItem;

interface

uses xmldom, XMLDoc, XMLIntf, xBaseObjectDocItem, xTBaseGroup;

type

{ Forward Decls }

  IXMLTBaseGroupDocItem = interface;

{ IXMLTBaseGroupDocItem }

  IXMLTBaseGroupDocItem = interface(IXMLTBaseObjectDocItem)
    ['{85BDABD7-374C-45B3-852C-378E36EDC4E8}']
    { Property Accessors }
    function Get_BaseGroup: IXMLTBaseGroup;
    { Methods & Properties }
    property BaseGroup: IXMLTBaseGroup read Get_BaseGroup;
  end;

{ Forward Decls }

  TXMLTBaseGroupDocItem = class;

{ TXMLTBaseGroupDocItem }

  TXMLTBaseGroupDocItem = class(TXMLTBaseObjectDocItem, IXMLTBaseGroupDocItem)
  protected
    { IXMLTBaseGroupDocItem }
    function Get_BaseGroup: IXMLTBaseGroup;
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetBaseGroupDocItem(Doc: IXMLDocument): IXMLTBaseGroupDocItem;
function LoadBaseGroupDocItem(const FileName: WideString): IXMLTBaseGroupDocItem;
function NewBaseGroupDocItem: IXMLTBaseGroupDocItem;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetBaseGroupDocItem(Doc: IXMLDocument): IXMLTBaseGroupDocItem;
begin
  Result := Doc.GetDocBinding('BaseGroupDocItem', TXMLTBaseGroupDocItem, TargetNamespace) as IXMLTBaseGroupDocItem;
end;

function LoadBaseGroupDocItem(const FileName: WideString): IXMLTBaseGroupDocItem;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('BaseGroupDocItem', TXMLTBaseGroupDocItem, TargetNamespace) as IXMLTBaseGroupDocItem;
end;

function NewBaseGroupDocItem: IXMLTBaseGroupDocItem;
begin
  Result := NewXMLDocument.GetDocBinding('BaseGroupDocItem', TXMLTBaseGroupDocItem, TargetNamespace) as IXMLTBaseGroupDocItem;
end;

{ TXMLTBaseGroupDocItem }

procedure TXMLTBaseGroupDocItem.AfterConstruction;
begin
  RegisterChildNode('BaseGroup', TXMLTBaseGroup);
  inherited;
end;

function TXMLTBaseGroupDocItem.Get_BaseGroup: IXMLTBaseGroup;
begin
  Result := ChildNodes['BaseGroup'] as IXMLTBaseGroup;
end;

end.
