
{****************************************************************************************}
{                                                                                        }
{                                    XML Data Binding                                    }
{                                                                                        }
{         Generated on: 11.1.2006 16:04:28                                               }
{       Generated from: XMLSchemas\Public\TBudgetOrderRegularityType.xsd                 }
{                                                                                        }
{****************************************************************************************}

unit xTBudgetOrderRegularityType;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTBudgetOrderRegularityType = interface;

{ IXMLTBudgetOrderRegularityType }

  IXMLTBudgetOrderRegularityType = interface(IXMLNode)
    ['{40E455EB-607B-4521-95ED-74E2E44A88C0}']
    { Property Accessors }
    function Get_BudgetOrderRegularityTypeName: Variant;
    function Get_BudgetOrderRegularityTypeAbbrev: Variant;
    procedure Set_BudgetOrderRegularityTypeName(Value: Variant);
    procedure Set_BudgetOrderRegularityTypeAbbrev(Value: Variant);
    { Methods & Properties }
    property BudgetOrderRegularityTypeName: Variant read Get_BudgetOrderRegularityTypeName write Set_BudgetOrderRegularityTypeName;
    property BudgetOrderRegularityTypeAbbrev: Variant read Get_BudgetOrderRegularityTypeAbbrev write Set_BudgetOrderRegularityTypeAbbrev;
  end;

{ Forward Decls }

  TXMLTBudgetOrderRegularityType = class;

{ TXMLTBudgetOrderRegularityType }

  TXMLTBudgetOrderRegularityType = class(TXMLNode, IXMLTBudgetOrderRegularityType)
  protected
    { IXMLTBudgetOrderRegularityType }
    function Get_BudgetOrderRegularityTypeName: Variant;
    function Get_BudgetOrderRegularityTypeAbbrev: Variant;
    procedure Set_BudgetOrderRegularityTypeName(Value: Variant);
    procedure Set_BudgetOrderRegularityTypeAbbrev(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTBudgetOrderRegularityType;
function LoadUnknown(const FileName: WideString): IXMLTBudgetOrderRegularityType;
function NewUnknown: IXMLTBudgetOrderRegularityType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTBudgetOrderRegularityType;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTBudgetOrderRegularityType, TargetNamespace) as IXMLTBudgetOrderRegularityType;
end;

function LoadUnknown(const FileName: WideString): IXMLTBudgetOrderRegularityType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTBudgetOrderRegularityType, TargetNamespace) as IXMLTBudgetOrderRegularityType;
end;

function NewUnknown: IXMLTBudgetOrderRegularityType;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTBudgetOrderRegularityType, TargetNamespace) as IXMLTBudgetOrderRegularityType;
end;

{ TXMLTBudgetOrderRegularityType }

function TXMLTBudgetOrderRegularityType.Get_BudgetOrderRegularityTypeName: Variant;
begin
  Result := ChildNodes['BudgetOrderRegularityTypeName'].NodeValue;
end;

procedure TXMLTBudgetOrderRegularityType.Set_BudgetOrderRegularityTypeName(Value: Variant);
begin
  ChildNodes['BudgetOrderRegularityTypeName'].NodeValue := Value;
end;

function TXMLTBudgetOrderRegularityType.Get_BudgetOrderRegularityTypeAbbrev: Variant;
begin
  Result := ChildNodes['BudgetOrderRegularityTypeAbbrev'].NodeValue;
end;

procedure TXMLTBudgetOrderRegularityType.Set_BudgetOrderRegularityTypeAbbrev(Value: Variant);
begin
  ChildNodes['BudgetOrderRegularityTypeAbbrev'].NodeValue := Value;
end;

end.
