
{**********************************************************************}
{                                                                      }
{                           XML Data Binding                           }
{                                                                      }
{         Generated on: 18.4.2006 11:42:01                             }
{       Generated from: XMLSchemas\Public\TGlobals.xsd                 }
{                                                                      }
{**********************************************************************}

unit xTGlobals;

interface

uses
  xmldom, XMLDoc, XMLIntf, xTCurrency;

type

{ Forward Decls }

  IXMLTGlobals = interface;

{ IXMLTGlobals }

  IXMLTGlobals = interface(IXMLNode)
    ['{3EF9C269-97F9-43B5-A635-DEE067B40FD6}']
    { Property Accessors }
    function Get_BaseCurrency: IXMLTCurrency;
    function Get_SecondaryCurrency: IXMLTCurrency;
    { Methods & Properties }
    property BaseCurrency: IXMLTCurrency read Get_BaseCurrency;
    property SecondaryCurrency: IXMLTCurrency read Get_SecondaryCurrency;
  end;

{ Forward Decls }

  TXMLTGlobals = class;

{ TXMLTGlobals }

  TXMLTGlobals = class(TXMLNode, IXMLTGlobals)
  protected
    { IXMLTGlobals }
    function Get_BaseCurrency: IXMLTCurrency;
    function Get_SecondaryCurrency: IXMLTCurrency;
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTGlobals;
function LoadUnknown(const FileName: WideString): IXMLTGlobals;
function NewUnknown: IXMLTGlobals;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTGlobals;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTGlobals, TargetNamespace) as IXMLTGlobals;
end;

function LoadUnknown(const FileName: WideString): IXMLTGlobals;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTGlobals, TargetNamespace) as IXMLTGlobals;
end;

function NewUnknown: IXMLTGlobals;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTGlobals, TargetNamespace) as IXMLTGlobals;
end;

{ TXMLTGlobals }

procedure TXMLTGlobals.AfterConstruction;
begin
  RegisterChildNode('BaseCurrency', TXMLTCurrency);
  RegisterChildNode('SecondaryCurrency', TXMLTCurrency);
  inherited;
end;

function TXMLTGlobals.Get_BaseCurrency: IXMLTCurrency;
begin
  Result := ChildNodes['BaseCurrency'] as IXMLTCurrency;
end;

function TXMLTGlobals.Get_SecondaryCurrency: IXMLTCurrency;
begin
  Result := ChildNodes['SecondaryCurrency'] as IXMLTCurrency;
end;

end.
