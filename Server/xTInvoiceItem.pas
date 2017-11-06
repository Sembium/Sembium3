
{**************************************************************************}
{                                                                          }
{                             XML Data Binding                             }
{                                                                          }
{         Generated on: 09.05.2012 16:11:29                                }
{       Generated from: XMLSchemas\Public\TInvoiceItem.xsd                 }
{                                                                          }
{**************************************************************************}

unit xTInvoiceItem;

interface

uses xmldom, XMLDoc, XMLIntf, xTProcessObject;

type

{ Forward Decls }

  IXMLTInvoiceItem = interface;

{ IXMLTInvoiceItem }

  IXMLTInvoiceItem = interface(IXMLNode)
    ['{45E11571-C897-4DED-BA4A-86B65280BD77}']
    { Property Accessors }
    function Get_ItemName: Variant;
    function Get_ItemIntlName: Variant;
    function Get_BoundProcessObject: IXMLTProcessObject;
    function Get_AccountQuantity: Variant;
    function Get_AccountMeasureAbbrev: Variant;
    function Get_AccountMeasureIntlAbbrev: Variant;
    function Get_MarketSinglePrice: Variant;
    function Get_DiscountPercent: Variant;
    function Get_SinglePrice: Variant;
    function Get_TotalPrice: Variant;
    procedure Set_ItemName(Value: Variant);
    procedure Set_ItemIntlName(Value: Variant);
    procedure Set_AccountQuantity(Value: Variant);
    procedure Set_AccountMeasureAbbrev(Value: Variant);
    procedure Set_AccountMeasureIntlAbbrev(Value: Variant);
    procedure Set_MarketSinglePrice(Value: Variant);
    procedure Set_DiscountPercent(Value: Variant);
    procedure Set_SinglePrice(Value: Variant);
    procedure Set_TotalPrice(Value: Variant);
    { Methods & Properties }
    property ItemName: Variant read Get_ItemName write Set_ItemName;
    property ItemIntlName: Variant read Get_ItemIntlName write Set_ItemIntlName;
    property BoundProcessObject: IXMLTProcessObject read Get_BoundProcessObject;
    property AccountQuantity: Variant read Get_AccountQuantity write Set_AccountQuantity;
    property AccountMeasureAbbrev: Variant read Get_AccountMeasureAbbrev write Set_AccountMeasureAbbrev;
    property AccountMeasureIntlAbbrev: Variant read Get_AccountMeasureIntlAbbrev write Set_AccountMeasureIntlAbbrev;
    property MarketSinglePrice: Variant read Get_MarketSinglePrice write Set_MarketSinglePrice;
    property DiscountPercent: Variant read Get_DiscountPercent write Set_DiscountPercent;
    property SinglePrice: Variant read Get_SinglePrice write Set_SinglePrice;
    property TotalPrice: Variant read Get_TotalPrice write Set_TotalPrice;
  end;

{ Forward Decls }

  TXMLTInvoiceItem = class;

{ TXMLTInvoiceItem }

  TXMLTInvoiceItem = class(TXMLNode, IXMLTInvoiceItem)
  protected
    { IXMLTInvoiceItem }
    function Get_ItemName: Variant;
    function Get_ItemIntlName: Variant;
    function Get_BoundProcessObject: IXMLTProcessObject;
    function Get_AccountQuantity: Variant;
    function Get_AccountMeasureAbbrev: Variant;
    function Get_AccountMeasureIntlAbbrev: Variant;
    function Get_MarketSinglePrice: Variant;
    function Get_DiscountPercent: Variant;
    function Get_SinglePrice: Variant;
    function Get_TotalPrice: Variant;
    procedure Set_ItemName(Value: Variant);
    procedure Set_ItemIntlName(Value: Variant);
    procedure Set_AccountQuantity(Value: Variant);
    procedure Set_AccountMeasureAbbrev(Value: Variant);
    procedure Set_AccountMeasureIntlAbbrev(Value: Variant);
    procedure Set_MarketSinglePrice(Value: Variant);
    procedure Set_DiscountPercent(Value: Variant);
    procedure Set_SinglePrice(Value: Variant);
    procedure Set_TotalPrice(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTInvoiceItem;
function LoadUnknown(const FileName: string): IXMLTInvoiceItem;
function NewUnknown: IXMLTInvoiceItem;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTInvoiceItem;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTInvoiceItem, TargetNamespace) as IXMLTInvoiceItem;
end;

function LoadUnknown(const FileName: string): IXMLTInvoiceItem;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTInvoiceItem, TargetNamespace) as IXMLTInvoiceItem;
end;

function NewUnknown: IXMLTInvoiceItem;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTInvoiceItem, TargetNamespace) as IXMLTInvoiceItem;
end;

{ TXMLTInvoiceItem }

procedure TXMLTInvoiceItem.AfterConstruction;
begin
  RegisterChildNode('BoundProcessObject', TXMLTProcessObject);
  inherited;
end;

function TXMLTInvoiceItem.Get_ItemName: Variant;
begin
  Result := ChildNodes['ItemName'].NodeValue;
end;

procedure TXMLTInvoiceItem.Set_ItemName(Value: Variant);
begin
  ChildNodes['ItemName'].NodeValue := Value;
end;

function TXMLTInvoiceItem.Get_ItemIntlName: Variant;
begin
  Result := ChildNodes['ItemIntlName'].NodeValue;
end;

procedure TXMLTInvoiceItem.Set_ItemIntlName(Value: Variant);
begin
  ChildNodes['ItemIntlName'].NodeValue := Value;
end;

function TXMLTInvoiceItem.Get_BoundProcessObject: IXMLTProcessObject;
begin
  Result := ChildNodes['BoundProcessObject'] as IXMLTProcessObject;
end;

function TXMLTInvoiceItem.Get_AccountQuantity: Variant;
begin
  Result := ChildNodes['AccountQuantity'].NodeValue;
end;

procedure TXMLTInvoiceItem.Set_AccountQuantity(Value: Variant);
begin
  ChildNodes['AccountQuantity'].NodeValue := Value;
end;

function TXMLTInvoiceItem.Get_AccountMeasureAbbrev: Variant;
begin
  Result := ChildNodes['AccountMeasureAbbrev'].NodeValue;
end;

procedure TXMLTInvoiceItem.Set_AccountMeasureAbbrev(Value: Variant);
begin
  ChildNodes['AccountMeasureAbbrev'].NodeValue := Value;
end;

function TXMLTInvoiceItem.Get_AccountMeasureIntlAbbrev: Variant;
begin
  Result := ChildNodes['AccountMeasureIntlAbbrev'].NodeValue;
end;

procedure TXMLTInvoiceItem.Set_AccountMeasureIntlAbbrev(Value: Variant);
begin
  ChildNodes['AccountMeasureIntlAbbrev'].NodeValue := Value;
end;

function TXMLTInvoiceItem.Get_MarketSinglePrice: Variant;
begin
  Result := ChildNodes['MarketSinglePrice'].NodeValue;
end;

procedure TXMLTInvoiceItem.Set_MarketSinglePrice(Value: Variant);
begin
  ChildNodes['MarketSinglePrice'].NodeValue := Value;
end;

function TXMLTInvoiceItem.Get_DiscountPercent: Variant;
begin
  Result := ChildNodes['DiscountPercent'].NodeValue;
end;

procedure TXMLTInvoiceItem.Set_DiscountPercent(Value: Variant);
begin
  ChildNodes['DiscountPercent'].NodeValue := Value;
end;

function TXMLTInvoiceItem.Get_SinglePrice: Variant;
begin
  Result := ChildNodes['SinglePrice'].NodeValue;
end;

procedure TXMLTInvoiceItem.Set_SinglePrice(Value: Variant);
begin
  ChildNodes['SinglePrice'].NodeValue := Value;
end;

function TXMLTInvoiceItem.Get_TotalPrice: Variant;
begin
  Result := ChildNodes['TotalPrice'].NodeValue;
end;

procedure TXMLTInvoiceItem.Set_TotalPrice(Value: Variant);
begin
  ChildNodes['TotalPrice'].NodeValue := Value;
end;

end.
