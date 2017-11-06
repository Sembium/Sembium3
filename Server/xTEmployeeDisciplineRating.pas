
{***************************************************************************************}
{                                                                                       }
{                                   XML Data Binding                                    }
{                                                                                       }
{         Generated on: 28.4.2006 17:29:47                                              }
{       Generated from: XMLSchemas\Public\TEmployeeDisciplineRating.xsd                 }
{                                                                                       }
{***************************************************************************************}

unit xTEmployeeDisciplineRating;

interface

uses
  xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTEmployeeDisciplineRating = interface;

{ IXMLTEmployeeDisciplineRating }

  IXMLTEmployeeDisciplineRating = interface(IXMLNode)
    ['{9098BFEE-083D-40A1-8ECD-1A6D2FF31B25}']
    { Property Accessors }
    function Get_NegativeDisciplinePoints: Variant;
    function Get_PositiveDisciplinePoints: Variant;
    procedure Set_NegativeDisciplinePoints(Value: Variant);
    procedure Set_PositiveDisciplinePoints(Value: Variant);
    { Methods & Properties }
    property NegativeDisciplinePoints: Variant read Get_NegativeDisciplinePoints write Set_NegativeDisciplinePoints;
    property PositiveDisciplinePoints: Variant read Get_PositiveDisciplinePoints write Set_PositiveDisciplinePoints;
  end;

{ Forward Decls }

  TXMLTEmployeeDisciplineRating = class;

{ TXMLTEmployeeDisciplineRating }

  TXMLTEmployeeDisciplineRating = class(TXMLNode, IXMLTEmployeeDisciplineRating)
  protected
    { IXMLTEmployeeDisciplineRating }
    function Get_NegativeDisciplinePoints: Variant;
    function Get_PositiveDisciplinePoints: Variant;
    procedure Set_NegativeDisciplinePoints(Value: Variant);
    procedure Set_PositiveDisciplinePoints(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTEmployeeDisciplineRating;
function LoadUnknown(const FileName: WideString): IXMLTEmployeeDisciplineRating;
function NewUnknown: IXMLTEmployeeDisciplineRating;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTEmployeeDisciplineRating;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTEmployeeDisciplineRating, TargetNamespace) as IXMLTEmployeeDisciplineRating;
end;

function LoadUnknown(const FileName: WideString): IXMLTEmployeeDisciplineRating;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTEmployeeDisciplineRating, TargetNamespace) as IXMLTEmployeeDisciplineRating;
end;

function NewUnknown: IXMLTEmployeeDisciplineRating;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTEmployeeDisciplineRating, TargetNamespace) as IXMLTEmployeeDisciplineRating;
end;

{ TXMLTEmployeeDisciplineRating }

function TXMLTEmployeeDisciplineRating.Get_NegativeDisciplinePoints: Variant;
begin
  Result := ChildNodes['NegativeDisciplinePoints'].NodeValue;
end;

procedure TXMLTEmployeeDisciplineRating.Set_NegativeDisciplinePoints(Value: Variant);
begin
  ChildNodes['NegativeDisciplinePoints'].NodeValue := Value;
end;

function TXMLTEmployeeDisciplineRating.Get_PositiveDisciplinePoints: Variant;
begin
  Result := ChildNodes['PositiveDisciplinePoints'].NodeValue;
end;

procedure TXMLTEmployeeDisciplineRating.Set_PositiveDisciplinePoints(Value: Variant);
begin
  ChildNodes['PositiveDisciplinePoints'].NodeValue := Value;
end;

end.
