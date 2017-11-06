
{************************************************************************************}
{                                                                                    }
{                                  XML Data Binding                                  }
{                                                                                    }
{         Generated on: 17.9.2005 11:12:10                                           }
{       Generated from: XMLSchemas\Public\TOperationMovementType.xsd                 }
{                                                                                    }
{************************************************************************************}

unit xTOperationMovementType;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTOperationMovementType = interface;

{ IXMLTOperationMovementType }

  IXMLTOperationMovementType = interface(IXMLNode)
    ['{057BECB7-486F-4BB4-99D5-CC4934089F6C}']
    { Property Accessors }
    function Get_OperationMovementTypeName: Variant;
    function Get_OperationMovementTypeAbbrev: Variant;
    procedure Set_OperationMovementTypeName(Value: Variant);
    procedure Set_OperationMovementTypeAbbrev(Value: Variant);
    { Methods & Properties }
    property OperationMovementTypeName: Variant read Get_OperationMovementTypeName write Set_OperationMovementTypeName;
    property OperationMovementTypeAbbrev: Variant read Get_OperationMovementTypeAbbrev write Set_OperationMovementTypeAbbrev;
  end;

{ Forward Decls }

  TXMLTOperationMovementType = class;

{ TXMLTOperationMovementType }

  TXMLTOperationMovementType = class(TXMLNode, IXMLTOperationMovementType)
  protected
    { IXMLTOperationMovementType }
    function Get_OperationMovementTypeName: Variant;
    function Get_OperationMovementTypeAbbrev: Variant;
    procedure Set_OperationMovementTypeName(Value: Variant);
    procedure Set_OperationMovementTypeAbbrev(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTOperationMovementType;
function LoadUnknown(const FileName: WideString): IXMLTOperationMovementType;
function NewUnknown: IXMLTOperationMovementType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTOperationMovementType;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTOperationMovementType, TargetNamespace) as IXMLTOperationMovementType;
end;

function LoadUnknown(const FileName: WideString): IXMLTOperationMovementType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTOperationMovementType, TargetNamespace) as IXMLTOperationMovementType;
end;

function NewUnknown: IXMLTOperationMovementType;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTOperationMovementType, TargetNamespace) as IXMLTOperationMovementType;
end;

{ TXMLTOperationMovementType }

function TXMLTOperationMovementType.Get_OperationMovementTypeName: Variant;
begin
  Result := ChildNodes['OperationMovementTypeName'].NodeValue;
end;

procedure TXMLTOperationMovementType.Set_OperationMovementTypeName(Value: Variant);
begin
  ChildNodes['OperationMovementTypeName'].NodeValue := Value;
end;

function TXMLTOperationMovementType.Get_OperationMovementTypeAbbrev: Variant;
begin
  Result := ChildNodes['OperationMovementTypeAbbrev'].NodeValue;
end;

procedure TXMLTOperationMovementType.Set_OperationMovementTypeAbbrev(Value: Variant);
begin
  ChildNodes['OperationMovementTypeAbbrev'].NodeValue := Value;
end;

end.
