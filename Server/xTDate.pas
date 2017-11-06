
{*******************************************************************}
{                                                                   }
{                         XML Data Binding                          }
{                                                                   }
{         Generated on: 17.9.2005 15:41:07                          }
{       Generated from: XMLSchemas\Public\TDate.xsd                 }
{                                                                   }
{*******************************************************************}

unit xTDate;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTDate = interface;

{ IXMLTDate }

  IXMLTDate = interface(IXMLNode)
    ['{947B2CB8-8622-4928-8A3E-AADD6438AA8B}']
    { Property Accessors }
    function Get_InDefaultFormat: Variant;
    function Get_InWeekFormat: Variant;
    function Get_InMonthFormat: Variant;
    procedure Set_InDefaultFormat(Value: Variant);
    procedure Set_InWeekFormat(Value: Variant);
    procedure Set_InMonthFormat(Value: Variant);
    { Methods & Properties }
    property InDefaultFormat: Variant read Get_InDefaultFormat write Set_InDefaultFormat;
    property InWeekFormat: Variant read Get_InWeekFormat write Set_InWeekFormat;
    property InMonthFormat: Variant read Get_InMonthFormat write Set_InMonthFormat;
  end;

{ Forward Decls }

  TXMLTDate = class;

{ TXMLTDate }

  TXMLTDate = class(TXMLNode, IXMLTDate)
  protected
    { IXMLTDate }
    function Get_InDefaultFormat: Variant;
    function Get_InWeekFormat: Variant;
    function Get_InMonthFormat: Variant;
    procedure Set_InDefaultFormat(Value: Variant);
    procedure Set_InWeekFormat(Value: Variant);
    procedure Set_InMonthFormat(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTDate;
function LoadUnknown(const FileName: WideString): IXMLTDate;
function NewUnknown: IXMLTDate;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTDate;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTDate, TargetNamespace) as IXMLTDate;
end;

function LoadUnknown(const FileName: WideString): IXMLTDate;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTDate, TargetNamespace) as IXMLTDate;
end;

function NewUnknown: IXMLTDate;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTDate, TargetNamespace) as IXMLTDate;
end;

{ TXMLTDate }

function TXMLTDate.Get_InDefaultFormat: Variant;
begin
  Result := ChildNodes['InDefaultFormat'].NodeValue;
end;

procedure TXMLTDate.Set_InDefaultFormat(Value: Variant);
begin
  ChildNodes['InDefaultFormat'].NodeValue := Value;
end;

function TXMLTDate.Get_InWeekFormat: Variant;
begin
  Result := ChildNodes['InWeekFormat'].NodeValue;
end;

procedure TXMLTDate.Set_InWeekFormat(Value: Variant);
begin
  ChildNodes['InWeekFormat'].NodeValue := Value;
end;

function TXMLTDate.Get_InMonthFormat: Variant;
begin
  Result := ChildNodes['InMonthFormat'].NodeValue;
end;

procedure TXMLTDate.Set_InMonthFormat(Value: Variant);
begin
  ChildNodes['InMonthFormat'].NodeValue := Value;
end;

end.
