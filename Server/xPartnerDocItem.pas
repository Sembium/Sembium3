
{****************************************************************************}
{                                                                            }
{                              XML Data Binding                              }
{                                                                            }
{         Generated on: 17.9.2005 14:41:31                                   }
{       Generated from: XMLSchemas\Public\PartnerDocItem.xsd                 }
{                                                                            }
{****************************************************************************}

unit xPartnerDocItem;

interface

uses xmldom, XMLDoc, XMLIntf, xTPartner, xBaseObjectDocItem;

type

{ Forward Decls }

  IXMLTPartnerDocItem = interface;

{ IXMLTPartnerDocItem }

  IXMLTPartnerDocItem = interface(IXMLTBaseObjectDocItem)
    ['{39D4D643-D7D7-4514-9469-E4CBF93763C2}']
    { Property Accessors }
    function Get_Partner: IXMLTPartner;
    { Methods & Properties }
    property Partner: IXMLTPartner read Get_Partner;
  end;

{ Forward Decls }

  TXMLTPartnerDocItem = class;

{ TXMLTPartnerDocItem }

  TXMLTPartnerDocItem = class(TXMLTBaseObjectDocItem, IXMLTPartnerDocItem)
  protected
    { IXMLTPartnerDocItem }
    function Get_Partner: IXMLTPartner;
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetPartnerDocItem(Doc: IXMLDocument): IXMLTPartnerDocItem;
function LoadPartnerDocItem(const FileName: WideString): IXMLTPartnerDocItem;
function NewPartnerDocItem: IXMLTPartnerDocItem;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetPartnerDocItem(Doc: IXMLDocument): IXMLTPartnerDocItem;
begin
  Result := Doc.GetDocBinding('PartnerDocItem', TXMLTPartnerDocItem, TargetNamespace) as IXMLTPartnerDocItem;
end;

function LoadPartnerDocItem(const FileName: WideString): IXMLTPartnerDocItem;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('PartnerDocItem', TXMLTPartnerDocItem, TargetNamespace) as IXMLTPartnerDocItem;
end;

function NewPartnerDocItem: IXMLTPartnerDocItem;
begin
  Result := NewXMLDocument.GetDocBinding('PartnerDocItem', TXMLTPartnerDocItem, TargetNamespace) as IXMLTPartnerDocItem;
end;

{ TXMLTPartnerDocItem }

procedure TXMLTPartnerDocItem.AfterConstruction;
begin
  RegisterChildNode('Partner', TXMLTPartner);
  inherited;
end;

function TXMLTPartnerDocItem.Get_Partner: IXMLTPartner;
begin
  Result := ChildNodes['Partner'] as IXMLTPartner;
end;

end.
