
{***********************************************************************}
{                                                                       }
{                           XML Data Binding                            }
{                                                                       }
{         Generated on: 16.9.2005 14:34:27                              }
{       Generated from: XMLSchemas\Public\TPriority.xsd                 }
{                                                                       }
{***********************************************************************}

unit xTPriority;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTPriority = interface;

{ IXMLTPriority }

  IXMLTPriority = interface(IXMLNode)
    ['{ED0E8446-76F8-42AE-A3B0-A44A9C3157A7}']
    { Property Accessors }
    function Get_PriorityNo: Variant;
    function Get_PriorityName: Variant;
    function Get_PriorityColor: Variant;
    function Get_PriorityBackgroundColor: Variant;
    procedure Set_PriorityNo(Value: Variant);
    procedure Set_PriorityName(Value: Variant);
    procedure Set_PriorityColor(Value: Variant);
    procedure Set_PriorityBackgroundColor(Value: Variant);
    { Methods & Properties }
    property PriorityNo: Variant read Get_PriorityNo write Set_PriorityNo;
    property PriorityName: Variant read Get_PriorityName write Set_PriorityName;
    property PriorityColor: Variant read Get_PriorityColor write Set_PriorityColor;
    property PriorityBackgroundColor: Variant read Get_PriorityBackgroundColor write Set_PriorityBackgroundColor;
  end;

{ Forward Decls }

  TXMLTPriority = class;

{ TXMLTPriority }

  TXMLTPriority = class(TXMLNode, IXMLTPriority)
  protected
    { IXMLTPriority }
    function Get_PriorityNo: Variant;
    function Get_PriorityName: Variant;
    function Get_PriorityColor: Variant;
    function Get_PriorityBackgroundColor: Variant;
    procedure Set_PriorityNo(Value: Variant);
    procedure Set_PriorityName(Value: Variant);
    procedure Set_PriorityColor(Value: Variant);
    procedure Set_PriorityBackgroundColor(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTPriority;
function LoadUnknown(const FileName: WideString): IXMLTPriority;
function NewUnknown: IXMLTPriority;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTPriority;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTPriority, TargetNamespace) as IXMLTPriority;
end;

function LoadUnknown(const FileName: WideString): IXMLTPriority;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTPriority, TargetNamespace) as IXMLTPriority;
end;

function NewUnknown: IXMLTPriority;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTPriority, TargetNamespace) as IXMLTPriority;
end;

{ TXMLTPriority }

function TXMLTPriority.Get_PriorityNo: Variant;
begin
  Result := ChildNodes['PriorityNo'].NodeValue;
end;

procedure TXMLTPriority.Set_PriorityNo(Value: Variant);
begin
  ChildNodes['PriorityNo'].NodeValue := Value;
end;

function TXMLTPriority.Get_PriorityName: Variant;
begin
  Result := ChildNodes['PriorityName'].NodeValue;
end;

procedure TXMLTPriority.Set_PriorityName(Value: Variant);
begin
  ChildNodes['PriorityName'].NodeValue := Value;
end;

function TXMLTPriority.Get_PriorityColor: Variant;
begin
  Result := ChildNodes['PriorityColor'].NodeValue;
end;

procedure TXMLTPriority.Set_PriorityColor(Value: Variant);
begin
  ChildNodes['PriorityColor'].NodeValue := Value;
end;

function TXMLTPriority.Get_PriorityBackgroundColor: Variant;
begin
  Result := ChildNodes['PriorityBackgroundColor'].NodeValue;
end;

procedure TXMLTPriority.Set_PriorityBackgroundColor(Value: Variant);
begin
  ChildNodes['PriorityBackgroundColor'].NodeValue := Value;
end;

end.
