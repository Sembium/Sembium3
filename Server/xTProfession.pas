
{*************************************************************************}
{                                                                         }
{                            XML Data Binding                             }
{                                                                         }
{         Generated on: 17.9.2005 09:54:39                                }
{       Generated from: XMLSchemas\Public\TProfession.xsd                 }
{                                                                         }
{*************************************************************************}

unit xTProfession;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTProfession = interface;

{ IXMLTProfession }

  IXMLTProfession = interface(IXMLNode)
    ['{9C903435-623B-44E2-96B4-AFA2C93B66F6}']
    { Property Accessors }
    function Get_ProfessionName: Variant;
    function Get_HourPrice: Variant;
    procedure Set_ProfessionName(Value: Variant);
    procedure Set_HourPrice(Value: Variant);
    { Methods & Properties }
    property ProfessionName: Variant read Get_ProfessionName write Set_ProfessionName;
    property HourPrice: Variant read Get_HourPrice write Set_HourPrice;
  end;

{ Forward Decls }

  TXMLTProfession = class;

{ TXMLTProfession }

  TXMLTProfession = class(TXMLNode, IXMLTProfession)
  protected
    { IXMLTProfession }
    function Get_ProfessionName: Variant;
    function Get_HourPrice: Variant;
    procedure Set_ProfessionName(Value: Variant);
    procedure Set_HourPrice(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTProfession;
function LoadUnknown(const FileName: WideString): IXMLTProfession;
function NewUnknown: IXMLTProfession;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTProfession;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTProfession, TargetNamespace) as IXMLTProfession;
end;

function LoadUnknown(const FileName: WideString): IXMLTProfession;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTProfession, TargetNamespace) as IXMLTProfession;
end;

function NewUnknown: IXMLTProfession;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTProfession, TargetNamespace) as IXMLTProfession;
end;

{ TXMLTProfession }

function TXMLTProfession.Get_ProfessionName: Variant;
begin
  Result := ChildNodes['ProfessionName'].NodeValue;
end;

procedure TXMLTProfession.Set_ProfessionName(Value: Variant);
begin
  ChildNodes['ProfessionName'].NodeValue := Value;
end;

function TXMLTProfession.Get_HourPrice: Variant;
begin
  Result := ChildNodes['HourPrice'].NodeValue;
end;

procedure TXMLTProfession.Set_HourPrice(Value: Variant);
begin
  ChildNodes['HourPrice'].NodeValue := Value;
end;

end.
