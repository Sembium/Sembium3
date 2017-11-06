
{********************************************************************************}
{                                                                                }
{                                XML Data Binding                                }
{                                                                                }
{         Generated on: 15.4.2013 г/ 11:36:09                                    }
{       Generated from: XMLSchemas\Public\ExceptEventDocItem.xsd                 }
{                                                                                }
{********************************************************************************}

unit xExceptEventDocItem;

interface

uses xmldom, XMLDoc, XMLIntf, xBaseObjectDocItem, xTExceptEvent;

type

{ Forward Decls }

  IXMLTExceptEventDocItem = interface;

{ IXMLTExceptEventDocItem }

  IXMLTExceptEventDocItem = interface(IXMLTBaseObjectDocItem)
    ['{EAA8C744-FE66-424B-A3E1-29F229BE5657}']
    { Property Accessors }
    function Get_ExceptEvent: IXMLTExceptEvent;
    { Methods & Properties }
    property ExceptEvent: IXMLTExceptEvent read Get_ExceptEvent;
  end;

{ Forward Decls }

  TXMLTExceptEventDocItem = class;

{ TXMLTExceptEventDocItem }

  TXMLTExceptEventDocItem = class(TXMLTBaseObjectDocItem, IXMLTExceptEventDocItem)
  protected
    { IXMLTExceptEventDocItem }
    function Get_ExceptEvent: IXMLTExceptEvent;
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetExceptEventDocItem(Doc: IXMLDocument): IXMLTExceptEventDocItem;
function LoadExceptEventDocItem(const FileName: WideString): IXMLTExceptEventDocItem;
function NewExceptEventDocItem: IXMLTExceptEventDocItem;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetExceptEventDocItem(Doc: IXMLDocument): IXMLTExceptEventDocItem;
begin
  Result := Doc.GetDocBinding('ExceptEventDocItem', TXMLTExceptEventDocItem, TargetNamespace) as IXMLTExceptEventDocItem;
end;

function LoadExceptEventDocItem(const FileName: WideString): IXMLTExceptEventDocItem;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('ExceptEventDocItem', TXMLTExceptEventDocItem, TargetNamespace) as IXMLTExceptEventDocItem;
end;

function NewExceptEventDocItem: IXMLTExceptEventDocItem;
begin
  Result := NewXMLDocument.GetDocBinding('ExceptEventDocItem', TXMLTExceptEventDocItem, TargetNamespace) as IXMLTExceptEventDocItem;
end;

{ TXMLTExceptEventDocItem }

procedure TXMLTExceptEventDocItem.AfterConstruction;
begin
  RegisterChildNode('ExceptEvent', TXMLTExceptEvent);
  inherited;
end;

function TXMLTExceptEventDocItem.Get_ExceptEvent: IXMLTExceptEvent;
begin
  Result := ChildNodes['ExceptEvent'] as IXMLTExceptEvent;
end;

end.
