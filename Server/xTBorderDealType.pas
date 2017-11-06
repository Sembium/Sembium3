
{*****************************************************************************}
{                                                                             }
{                              XML Data Binding                               }
{                                                                             }
{         Generated on: 16.9.2005 14:22:38                                    }
{       Generated from: XMLSchemas\Public\TBorderDealType.xsd                 }
{                                                                             }
{*****************************************************************************}

unit xTBorderDealType;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTBorderDealType = interface;

{ IXMLTBorderDealType }

  IXMLTBorderDealType = interface(IXMLNode)
    ['{1DC91AE7-1C44-47C7-A446-1035974BE9DA}']
    { Property Accessors }
    function Get_BorderDealTypeAbbrev: Variant;
    function Get_BorderDealTypeName: Variant;
    procedure Set_BorderDealTypeAbbrev(Value: Variant);
    procedure Set_BorderDealTypeName(Value: Variant);
    { Methods & Properties }
    property BorderDealTypeAbbrev: Variant read Get_BorderDealTypeAbbrev write Set_BorderDealTypeAbbrev;
    property BorderDealTypeName: Variant read Get_BorderDealTypeName write Set_BorderDealTypeName;
  end;

{ Forward Decls }

  TXMLTBorderDealType = class;

{ TXMLTBorderDealType }

  TXMLTBorderDealType = class(TXMLNode, IXMLTBorderDealType)
  protected
    { IXMLTBorderDealType }
    function Get_BorderDealTypeAbbrev: Variant;
    function Get_BorderDealTypeName: Variant;
    procedure Set_BorderDealTypeAbbrev(Value: Variant);
    procedure Set_BorderDealTypeName(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTBorderDealType;
function LoadUnknown(const FileName: WideString): IXMLTBorderDealType;
function NewUnknown: IXMLTBorderDealType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTBorderDealType;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTBorderDealType, TargetNamespace) as IXMLTBorderDealType;
end;

function LoadUnknown(const FileName: WideString): IXMLTBorderDealType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTBorderDealType, TargetNamespace) as IXMLTBorderDealType;
end;

function NewUnknown: IXMLTBorderDealType;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTBorderDealType, TargetNamespace) as IXMLTBorderDealType;
end;

{ TXMLTBorderDealType }

function TXMLTBorderDealType.Get_BorderDealTypeAbbrev: Variant;
begin
  Result := ChildNodes['BorderDealTypeAbbrev'].NodeValue;
end;

procedure TXMLTBorderDealType.Set_BorderDealTypeAbbrev(Value: Variant);
begin
  ChildNodes['BorderDealTypeAbbrev'].NodeValue := Value;
end;

function TXMLTBorderDealType.Get_BorderDealTypeName: Variant;
begin
  Result := ChildNodes['BorderDealTypeName'].NodeValue;
end;

procedure TXMLTBorderDealType.Set_BorderDealTypeName(Value: Variant);
begin
  ChildNodes['BorderDealTypeName'].NodeValue := Value;
end;

end.
