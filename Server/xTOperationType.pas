
{****************************************************************************}
{                                                                            }
{                              XML Data Binding                              }
{                                                                            }
{         Generated on: 17.9.2005 10:31:54                                   }
{       Generated from: XMLSchemas\Public\TOperationType.xsd                 }
{                                                                            }
{****************************************************************************}

unit xTOperationType;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTOperationType = interface;

{ IXMLTOperationType }

  IXMLTOperationType = interface(IXMLNode)
    ['{F25E65CD-3D5D-48B9-81CD-62C88A29DBC1}']
    { Property Accessors }
    function Get_OperationTypeName: Variant;
    function Get_OperationTypeAbbrev: Variant;
    procedure Set_OperationTypeName(Value: Variant);
    procedure Set_OperationTypeAbbrev(Value: Variant);
    { Methods & Properties }
    property OperationTypeName: Variant read Get_OperationTypeName write Set_OperationTypeName;
    property OperationTypeAbbrev: Variant read Get_OperationTypeAbbrev write Set_OperationTypeAbbrev;
  end;

{ Forward Decls }

  TXMLTOperationType = class;

{ TXMLTOperationType }

  TXMLTOperationType = class(TXMLNode, IXMLTOperationType)
  protected
    { IXMLTOperationType }
    function Get_OperationTypeName: Variant;
    function Get_OperationTypeAbbrev: Variant;
    procedure Set_OperationTypeName(Value: Variant);
    procedure Set_OperationTypeAbbrev(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTOperationType;
function LoadUnknown(const FileName: WideString): IXMLTOperationType;
function NewUnknown: IXMLTOperationType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTOperationType;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTOperationType, TargetNamespace) as IXMLTOperationType;
end;

function LoadUnknown(const FileName: WideString): IXMLTOperationType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTOperationType, TargetNamespace) as IXMLTOperationType;
end;

function NewUnknown: IXMLTOperationType;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTOperationType, TargetNamespace) as IXMLTOperationType;
end;

{ TXMLTOperationType }

function TXMLTOperationType.Get_OperationTypeName: Variant;
begin
  Result := ChildNodes['OperationTypeName'].NodeValue;
end;

procedure TXMLTOperationType.Set_OperationTypeName(Value: Variant);
begin
  ChildNodes['OperationTypeName'].NodeValue := Value;
end;

function TXMLTOperationType.Get_OperationTypeAbbrev: Variant;
begin
  Result := ChildNodes['OperationTypeAbbrev'].NodeValue;
end;

procedure TXMLTOperationType.Set_OperationTypeAbbrev(Value: Variant);
begin
  ChildNodes['OperationTypeAbbrev'].NodeValue := Value;
end;

end.
