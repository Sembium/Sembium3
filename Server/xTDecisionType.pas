
{***************************************************************************}
{                                                                           }
{                           XML Data Binding                                }
{                                                                           }
{         Generated on: 24.8.2012 10:12:38                                  }
{       Generated from: XMLSchemas\Public\TDecisionType.xsd                 }
{                                                                           }
{***************************************************************************}

unit xTDecisionType;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTDecisionType = interface;

{ IXMLTDecisionType }

  IXMLTDecisionType = interface(IXMLNode)
    ['{A9C6BB9A-30F8-4B0E-A576-B896E1790036}']
    { Property Accessors }
    function Get_DecisionTypeAbbrev: Variant;
    function Get_DecisionTypeName: Variant;
    procedure Set_DecisionTypeAbbrev(Value: Variant);
    procedure Set_DecisionTypeName(Value: Variant);
    { Methods & Properties }
    property DecisionTypeAbbrev: Variant read Get_DecisionTypeAbbrev write Set_DecisionTypeAbbrev;
    property DecisionTypeName: Variant read Get_DecisionTypeName write Set_DecisionTypeName;
  end;

{ Forward Decls }

  TXMLTDecisionType = class;

{ TXMLTDecisionType }

  TXMLTDecisionType = class(TXMLNode, IXMLTDecisionType)
  protected
    { IXMLTDecisionType }
    function Get_DecisionTypeAbbrev: Variant;
    function Get_DecisionTypeName: Variant;
    procedure Set_DecisionTypeAbbrev(Value: Variant);
    procedure Set_DecisionTypeName(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTDecisionType;
function LoadUnknown(const FileName: WideString): IXMLTDecisionType;
function NewUnknown: IXMLTDecisionType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTDecisionType;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTDecisionType, TargetNamespace) as IXMLTDecisionType;
end;

function LoadUnknown(const FileName: WideString): IXMLTDecisionType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTDecisionType, TargetNamespace) as IXMLTDecisionType;
end;

function NewUnknown: IXMLTDecisionType;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTDecisionType, TargetNamespace) as IXMLTDecisionType;
end;

{ TXMLTDecisionType }

function TXMLTDecisionType.Get_DecisionTypeAbbrev: Variant;
begin
  Result := ChildNodes['DecisionTypeAbbrev'].NodeValue;
end;

procedure TXMLTDecisionType.Set_DecisionTypeAbbrev(Value: Variant);
begin
  ChildNodes['DecisionTypeAbbrev'].NodeValue := Value;
end;

function TXMLTDecisionType.Get_DecisionTypeName: Variant;
begin
  Result := ChildNodes['DecisionTypeName'].NodeValue;
end;

procedure TXMLTDecisionType.Set_DecisionTypeName(Value: Variant);
begin
  ChildNodes['DecisionTypeName'].NodeValue := Value;
end;

end.
