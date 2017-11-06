
{****************************************************************************}
{                                                                            }
{                              XML Data Binding                              }
{                                                                            }
{         Generated on: 09.05.2012 17:35:15                                  }
{       Generated from: XMLSchemas\Public\InvoiceDocItem.xsd                 }
{   Settings stored in: XMLSchemas\Public\InvoiceDocItem.xdb   }
{                                                                            }
{****************************************************************************}

unit xInvoiceDocItem;

interface

uses xmldom, XMLDoc, XMLIntf, xBaseObjectDocItem, xTInvoice;

type

{ Forward Decls }

  IXMLTInvoiceDocItem = interface;

{ IXMLTInvoiceDocItem }

  IXMLTInvoiceDocItem = interface(IXMLTBaseObjectDocItem)
    ['{186186D9-1428-448A-9D12-07A341484613}']
    { Property Accessors }
    function Get_Invoice: IXMLTInvoice;
    { Methods & Properties }
    property Invoice: IXMLTInvoice read Get_Invoice;
  end;

{ Forward Decls }

  TXMLTInvoiceDocItem = class;

{ TXMLTInvoiceDocItem }

  TXMLTInvoiceDocItem = class(TXMLTBaseObjectDocItem, IXMLTInvoiceDocItem)
  protected
    { IXMLTInvoiceDocItem }
    function Get_Invoice: IXMLTInvoice;
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetInvoiceDocItem(Doc: IXMLDocument): IXMLTInvoiceDocItem;
function LoadInvoiceDocItem(const FileName: string): IXMLTInvoiceDocItem;
function NewInvoiceDocItem: IXMLTInvoiceDocItem;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetInvoiceDocItem(Doc: IXMLDocument): IXMLTInvoiceDocItem;
begin
  Result := Doc.GetDocBinding('InvoiceDocItem', TXMLTInvoiceDocItem, TargetNamespace) as IXMLTInvoiceDocItem;
end;

function LoadInvoiceDocItem(const FileName: string): IXMLTInvoiceDocItem;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('InvoiceDocItem', TXMLTInvoiceDocItem, TargetNamespace) as IXMLTInvoiceDocItem;
end;

function NewInvoiceDocItem: IXMLTInvoiceDocItem;
begin
  Result := NewXMLDocument.GetDocBinding('InvoiceDocItem', TXMLTInvoiceDocItem, TargetNamespace) as IXMLTInvoiceDocItem;
end;

{ TXMLTInvoiceDocItem }

procedure TXMLTInvoiceDocItem.AfterConstruction;
begin
  RegisterChildNode('Invoice', TXMLTInvoice);
  inherited;
end;

function TXMLTInvoiceDocItem.Get_Invoice: IXMLTInvoice;
begin
  Result := ChildNodes['Invoice'] as IXMLTInvoice;
end;

end.
