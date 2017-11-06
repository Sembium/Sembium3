
{*********************************************************************}
{                                                                     }
{                          XML Data Binding                           }
{                                                                     }
{         Generated on: 17.5.2006 11:10:36                            }
{       Generated from: XMLSchemas\Public\TSalary.xsd                 }
{                                                                     }
{*********************************************************************}

unit xTSalary;

interface

uses
  xmldom, XMLDoc, XMLIntf, xTCurrency, xTDateUnit;

type

{ Forward Decls }

  IXMLTSalary = interface;

{ IXMLTSalary }

  IXMLTSalary = interface(IXMLNode)
    ['{C6264DE4-173F-4147-907E-9F83740D988F}']
    { Property Accessors }
    function Get_Currency: IXMLTCurrency;
    function Get_Salary: Variant;
    function Get_AsText: Variant;
    function Get_DateUnit: IXMLTDateUnit;
    procedure Set_Salary(Value: Variant);
    procedure Set_AsText(Value: Variant);
    { Methods & Properties }
    property Currency: IXMLTCurrency read Get_Currency;
    property Salary: Variant read Get_Salary write Set_Salary;
    property AsText: Variant read Get_AsText write Set_AsText;
    property DateUnit: IXMLTDateUnit read Get_DateUnit;
  end;

{ Forward Decls }

  TXMLTSalary = class;

{ TXMLTSalary }

  TXMLTSalary = class(TXMLNode, IXMLTSalary)
  protected
    { IXMLTSalary }
    function Get_Currency: IXMLTCurrency;
    function Get_Salary: Variant;
    function Get_AsText: Variant;
    function Get_DateUnit: IXMLTDateUnit;
    procedure Set_Salary(Value: Variant);
    procedure Set_AsText(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTSalary;
function LoadUnknown(const FileName: WideString): IXMLTSalary;
function NewUnknown: IXMLTSalary;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTSalary;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTSalary, TargetNamespace) as IXMLTSalary;
end;

function LoadUnknown(const FileName: WideString): IXMLTSalary;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTSalary, TargetNamespace) as IXMLTSalary;
end;

function NewUnknown: IXMLTSalary;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTSalary, TargetNamespace) as IXMLTSalary;
end;

{ TXMLTSalary }

procedure TXMLTSalary.AfterConstruction;
begin
  RegisterChildNode('Currency', TXMLTCurrency);
  RegisterChildNode('DateUnit', TXMLTDateUnit);
  inherited;
end;

function TXMLTSalary.Get_Currency: IXMLTCurrency;
begin
  Result := ChildNodes['Currency'] as IXMLTCurrency;
end;

function TXMLTSalary.Get_Salary: Variant;
begin
  Result := ChildNodes['Salary'].NodeValue;
end;

procedure TXMLTSalary.Set_Salary(Value: Variant);
begin
  ChildNodes['Salary'].NodeValue := Value;
end;

function TXMLTSalary.Get_AsText: Variant;
begin
  Result := ChildNodes['AsText'].NodeValue;
end;

procedure TXMLTSalary.Set_AsText(Value: Variant);
begin
  ChildNodes['AsText'].NodeValue := Value;
end;

function TXMLTSalary.Get_DateUnit: IXMLTDateUnit;
begin
  Result := ChildNodes['DateUnit'] as IXMLTDateUnit;
end;

end.
