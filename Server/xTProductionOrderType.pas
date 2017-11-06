
{**********************************************************************************}
{                                                                                  }
{                                 XML Data Binding                                 }
{                                                                                  }
{         Generated on: 17.9.2005 12:06:28                                         }
{       Generated from: XMLSchemas\Public\TProductionOrderType.xsd                 }
{                                                                                  }
{**********************************************************************************}

unit xTProductionOrderType;

interface

uses xmldom, XMLDoc, XMLIntf, xTProductionOrderBaseType;

type

{ Forward Decls }

  IXMLTProductionOrderType = interface;

{ IXMLTProductionOrderType }

  IXMLTProductionOrderType = interface(IXMLNode)
    ['{097D0092-0B61-4605-A745-8F4D7B72B028}']
    { Property Accessors }
    function Get_ProductionOrderTypeName: Variant;
    function Get_ProductionOrderTypeAbbrev: Variant;
    function Get_ProductionOrderBaseType: IXMLTProductionOrderBaseType;
    procedure Set_ProductionOrderTypeName(Value: Variant);
    procedure Set_ProductionOrderTypeAbbrev(Value: Variant);
    { Methods & Properties }
    property ProductionOrderTypeName: Variant read Get_ProductionOrderTypeName write Set_ProductionOrderTypeName;
    property ProductionOrderTypeAbbrev: Variant read Get_ProductionOrderTypeAbbrev write Set_ProductionOrderTypeAbbrev;
    property ProductionOrderBaseType: IXMLTProductionOrderBaseType read Get_ProductionOrderBaseType;
  end;

{ Forward Decls }

  TXMLTProductionOrderType = class;

{ TXMLTProductionOrderType }

  TXMLTProductionOrderType = class(TXMLNode, IXMLTProductionOrderType)
  protected
    { IXMLTProductionOrderType }
    function Get_ProductionOrderTypeName: Variant;
    function Get_ProductionOrderTypeAbbrev: Variant;
    function Get_ProductionOrderBaseType: IXMLTProductionOrderBaseType;
    procedure Set_ProductionOrderTypeName(Value: Variant);
    procedure Set_ProductionOrderTypeAbbrev(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTProductionOrderType;
function LoadUnknown(const FileName: WideString): IXMLTProductionOrderType;
function NewUnknown: IXMLTProductionOrderType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTProductionOrderType;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTProductionOrderType, TargetNamespace) as IXMLTProductionOrderType;
end;

function LoadUnknown(const FileName: WideString): IXMLTProductionOrderType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTProductionOrderType, TargetNamespace) as IXMLTProductionOrderType;
end;

function NewUnknown: IXMLTProductionOrderType;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTProductionOrderType, TargetNamespace) as IXMLTProductionOrderType;
end;

{ TXMLTProductionOrderType }

procedure TXMLTProductionOrderType.AfterConstruction;
begin
  RegisterChildNode('ProductionOrderBaseType', TXMLTProductionOrderBaseType);
  inherited;
end;

function TXMLTProductionOrderType.Get_ProductionOrderTypeName: Variant;
begin
  Result := ChildNodes['ProductionOrderTypeName'].NodeValue;
end;

procedure TXMLTProductionOrderType.Set_ProductionOrderTypeName(Value: Variant);
begin
  ChildNodes['ProductionOrderTypeName'].NodeValue := Value;
end;

function TXMLTProductionOrderType.Get_ProductionOrderTypeAbbrev: Variant;
begin
  Result := ChildNodes['ProductionOrderTypeAbbrev'].NodeValue;
end;

procedure TXMLTProductionOrderType.Set_ProductionOrderTypeAbbrev(Value: Variant);
begin
  ChildNodes['ProductionOrderTypeAbbrev'].NodeValue := Value;
end;

function TXMLTProductionOrderType.Get_ProductionOrderBaseType: IXMLTProductionOrderBaseType;
begin
  Result := ChildNodes['ProductionOrderBaseType'] as IXMLTProductionOrderBaseType;
end;

end. 
