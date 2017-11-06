
{***************************************************************************}
{                                                                           }
{                             XML Data Binding                              }
{                                                                           }
{         Generated on: 21.9.2005 10:04:35                                  }
{       Generated from: XMLSchemas\Public\TDateInterval.xsd                 }
{                                                                           }
{***************************************************************************}

unit xTDateInterval;

interface

uses xmldom, XMLDoc, XMLIntf, xTDate;

type

{ Forward Decls }

  IXMLTDateInterval = interface;

{ IXMLTDateInterval }

  IXMLTDateInterval = interface(IXMLNode)
    ['{857CDE0B-D751-45C2-92D7-B5C868585BD4}']
    { Property Accessors }
    function Get_BeginDate: IXMLTDate;
    function Get_EndDate: IXMLTDate;
    function Get_Days: Variant;
    function Get_Workdays: Variant;
    procedure Set_Days(Value: Variant);
    procedure Set_Workdays(Value: Variant);
    { Methods & Properties }
    property BeginDate: IXMLTDate read Get_BeginDate;
    property EndDate: IXMLTDate read Get_EndDate;
    property Days: Variant read Get_Days write Set_Days;
    property Workdays: Variant read Get_Workdays write Set_Workdays;
  end;

{ Forward Decls }

  TXMLTDateInterval = class;

{ TXMLTDateInterval }

  TXMLTDateInterval = class(TXMLNode, IXMLTDateInterval)
  protected
    { IXMLTDateInterval }
    function Get_BeginDate: IXMLTDate;
    function Get_EndDate: IXMLTDate;
    function Get_Days: Variant;
    function Get_Workdays: Variant;
    procedure Set_Days(Value: Variant);
    procedure Set_Workdays(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTDateInterval;
function LoadUnknown(const FileName: WideString): IXMLTDateInterval;
function NewUnknown: IXMLTDateInterval;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTDateInterval;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTDateInterval, TargetNamespace) as IXMLTDateInterval;
end;

function LoadUnknown(const FileName: WideString): IXMLTDateInterval;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTDateInterval, TargetNamespace) as IXMLTDateInterval;
end;

function NewUnknown: IXMLTDateInterval;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTDateInterval, TargetNamespace) as IXMLTDateInterval;
end;

{ TXMLTDateInterval }

procedure TXMLTDateInterval.AfterConstruction;
begin
  RegisterChildNode('BeginDate', TXMLTDate);
  RegisterChildNode('EndDate', TXMLTDate);
  inherited;
end;

function TXMLTDateInterval.Get_BeginDate: IXMLTDate;
begin
  Result := ChildNodes['BeginDate'] as IXMLTDate;
end;

function TXMLTDateInterval.Get_EndDate: IXMLTDate;
begin
  Result := ChildNodes['EndDate'] as IXMLTDate;
end;

function TXMLTDateInterval.Get_Days: Variant;
begin
  Result := ChildNodes['Days'].NodeValue;
end;

procedure TXMLTDateInterval.Set_Days(Value: Variant);
begin
  ChildNodes['Days'].NodeValue := Value;
end;

function TXMLTDateInterval.Get_Workdays: Variant;
begin
  Result := ChildNodes['Workdays'].NodeValue;
end;

procedure TXMLTDateInterval.Set_Workdays(Value: Variant);
begin
  ChildNodes['Workdays'].NodeValue := Value;
end;

end. 
