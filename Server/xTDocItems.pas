
{***************************************************************************}
{                                                                           }
{                             XML Data Binding                              }
{                                                                           }
{         Generated on: 09.05.2012 17:03:11                                 }
{       Generated from: XMLSchemas\Public\TDocItems.xsd                 }
{   Settings stored in: XMLSchemas\Public\TDocItems.xdb   }
{                                                                           }
{***************************************************************************}

unit xTDocItems;

interface

uses xmldom, XMLDoc, XMLIntf, xTDocItem;

type

{ Forward Decls }

  IXMLTDocItems = interface;

{ IXMLTDocItems }

  IXMLTDocItems = interface(IXMLNodeCollection)
    ['{A04ECF9C-744A-410B-B805-982D4A5922A4}']
    { Property Accessors }
    function Get_DocItem(Index: Integer): IXMLTDocItem;
    { Methods & Properties }
    function Add: IXMLTDocItem;
    function Insert(const Index: Integer): IXMLTDocItem;
    property DocItem[Index: Integer]: IXMLTDocItem read Get_DocItem; default;
  end;

{ Forward Decls }

  TXMLTDocItems = class;

{ TXMLTDocItems }

  TXMLTDocItems = class(TXMLNodeCollection, IXMLTDocItems)
  protected
    { IXMLTDocItems }
    function Get_DocItem(Index: Integer): IXMLTDocItem;
    function Add: IXMLTDocItem;
    function Insert(const Index: Integer): IXMLTDocItem;
  public
    procedure AfterConstruction; override;
  end;

implementation

{ TXMLTDocItems }

procedure TXMLTDocItems.AfterConstruction;
begin
  RegisterChildNode('DocItem', TXMLTDocItem);
  ItemTag := 'DocItem';
  ItemInterface := IXMLTDocItem;
  inherited;
end;

function TXMLTDocItems.Get_DocItem(Index: Integer): IXMLTDocItem;
begin
  Result := List[Index] as IXMLTDocItem;
end;

function TXMLTDocItems.Add: IXMLTDocItem;
begin
  Result := AddItem(-1) as IXMLTDocItem;
end;

function TXMLTDocItems.Insert(const Index: Integer): IXMLTDocItem;
begin
  Result := AddItem(Index) as IXMLTDocItem;
end;

end.
