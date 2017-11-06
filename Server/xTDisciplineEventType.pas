
{**********************************************************************************}
{                                                                                  }
{                                 XML Data Binding                                 }
{                                                                                  }
{         Generated on: 28.4.2006 17:34:11                                         }
{       Generated from: XMLSchemas\Public\TDisciplineEventType.xsd                 }
{                                                                                  }
{**********************************************************************************}

unit xTDisciplineEventType;

interface

uses
  xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTDisciplineEventType = interface;

{ IXMLTDisciplineEventType }

  IXMLTDisciplineEventType = interface(IXMLNode)
    ['{51C83B21-B20E-4195-B2F0-996C46CABC61}']
    { Property Accessors }
    function Get_DisciplineEventTypeName: Variant;
    function Get_DisciplinePoints: Variant;
    procedure Set_DisciplineEventTypeName(Value: Variant);
    procedure Set_DisciplinePoints(Value: Variant);
    { Methods & Properties }
    property DisciplineEventTypeName: Variant read Get_DisciplineEventTypeName write Set_DisciplineEventTypeName;
    property DisciplinePoints: Variant read Get_DisciplinePoints write Set_DisciplinePoints;
  end;

{ Forward Decls }

  TXMLTDisciplineEventType = class;

{ TXMLTDisciplineEventType }

  TXMLTDisciplineEventType = class(TXMLNode, IXMLTDisciplineEventType)
  protected
    { IXMLTDisciplineEventType }
    function Get_DisciplineEventTypeName: Variant;
    function Get_DisciplinePoints: Variant;
    procedure Set_DisciplineEventTypeName(Value: Variant);
    procedure Set_DisciplinePoints(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTDisciplineEventType;
function LoadUnknown(const FileName: WideString): IXMLTDisciplineEventType;
function NewUnknown: IXMLTDisciplineEventType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTDisciplineEventType;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTDisciplineEventType, TargetNamespace) as IXMLTDisciplineEventType;
end;

function LoadUnknown(const FileName: WideString): IXMLTDisciplineEventType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTDisciplineEventType, TargetNamespace) as IXMLTDisciplineEventType;
end;

function NewUnknown: IXMLTDisciplineEventType;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTDisciplineEventType, TargetNamespace) as IXMLTDisciplineEventType;
end;

{ TXMLTDisciplineEventType }

function TXMLTDisciplineEventType.Get_DisciplineEventTypeName: Variant;
begin
  Result := ChildNodes['DisciplineEventTypeName'].NodeValue;
end;

procedure TXMLTDisciplineEventType.Set_DisciplineEventTypeName(Value: Variant);
begin
  ChildNodes['DisciplineEventTypeName'].NodeValue := Value;
end;

function TXMLTDisciplineEventType.Get_DisciplinePoints: Variant;
begin
  Result := ChildNodes['DisciplinePoints'].NodeValue;
end;

procedure TXMLTDisciplineEventType.Set_DisciplinePoints(Value: Variant);
begin
  ChildNodes['DisciplinePoints'].NodeValue := Value;
end;

end.
