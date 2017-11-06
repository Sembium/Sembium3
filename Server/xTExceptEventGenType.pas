
{*********************************************************************************}
{                                                                                 }
{                                XML Data Binding                                 }
{                                                                                 }
{         Generated on: 12.4.2013 г/ 17:06:41                                     }
{       Generated from: XMLSchemas\Public\TExceptEventGenType.xsd                 }
{                                                                                 }
{*********************************************************************************}

unit xTExceptEventGenType;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTExceptEventGenType = interface;

{ IXMLTExceptEventGenType }

  IXMLTExceptEventGenType = interface(IXMLNode)
    ['{2444D122-1111-4AFE-8674-44FB544D007A}']
    { Property Accessors }
    function Get_ExceptEventGenTypeNo: Variant;
    function Get_ExceptEventGenTypeName: Variant;
    function Get_ExceptEventGenTypeAbbrev: Variant;
    procedure Set_ExceptEventGenTypeNo(Value: Variant);
    procedure Set_ExceptEventGenTypeName(Value: Variant);
    procedure Set_ExceptEventGenTypeAbbrev(Value: Variant);
    { Methods & Properties }
    property ExceptEventGenTypeNo: Variant read Get_ExceptEventGenTypeNo write Set_ExceptEventGenTypeNo;
    property ExceptEventGenTypeName: Variant read Get_ExceptEventGenTypeName write Set_ExceptEventGenTypeName;
    property ExceptEventGenTypeAbbrev: Variant read Get_ExceptEventGenTypeAbbrev write Set_ExceptEventGenTypeAbbrev;
  end;

{ Forward Decls }

  TXMLTExceptEventGenType = class;

{ TXMLTExceptEventGenType }

  TXMLTExceptEventGenType = class(TXMLNode, IXMLTExceptEventGenType)
  protected
    { IXMLTExceptEventGenType }
    function Get_ExceptEventGenTypeNo: Variant;
    function Get_ExceptEventGenTypeName: Variant;
    function Get_ExceptEventGenTypeAbbrev: Variant;
    procedure Set_ExceptEventGenTypeNo(Value: Variant);
    procedure Set_ExceptEventGenTypeName(Value: Variant);
    procedure Set_ExceptEventGenTypeAbbrev(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTExceptEventGenType;
function LoadUnknown(const FileName: string): IXMLTExceptEventGenType;
function NewUnknown: IXMLTExceptEventGenType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTExceptEventGenType;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTExceptEventGenType, TargetNamespace) as IXMLTExceptEventGenType;
end;

function LoadUnknown(const FileName: string): IXMLTExceptEventGenType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTExceptEventGenType, TargetNamespace) as IXMLTExceptEventGenType;
end;

function NewUnknown: IXMLTExceptEventGenType;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTExceptEventGenType, TargetNamespace) as IXMLTExceptEventGenType;
end;

{ TXMLTExceptEventGenType }

function TXMLTExceptEventGenType.Get_ExceptEventGenTypeNo: Variant;
begin
  Result := ChildNodes['ExceptEventGenTypeNo'].NodeValue;
end;

procedure TXMLTExceptEventGenType.Set_ExceptEventGenTypeNo(Value: Variant);
begin
  ChildNodes['ExceptEventGenTypeNo'].NodeValue := Value;
end;

function TXMLTExceptEventGenType.Get_ExceptEventGenTypeName: Variant;
begin
  Result := ChildNodes['ExceptEventGenTypeName'].NodeValue;
end;

procedure TXMLTExceptEventGenType.Set_ExceptEventGenTypeName(Value: Variant);
begin
  ChildNodes['ExceptEventGenTypeName'].NodeValue := Value;
end;

function TXMLTExceptEventGenType.Get_ExceptEventGenTypeAbbrev: Variant;
begin
  Result := ChildNodes['ExceptEventGenTypeAbbrev'].NodeValue;
end;

procedure TXMLTExceptEventGenType.Set_ExceptEventGenTypeAbbrev(Value: Variant);
begin
  ChildNodes['ExceptEventGenTypeAbbrev'].NodeValue := Value;
end;

end.
