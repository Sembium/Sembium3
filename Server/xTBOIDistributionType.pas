
{**********************************************************************************}
{                                                                                  }
{                                 XML Data Binding                                 }
{                                                                                  }
{         Generated on: 11.1.2006 17:59:25                                         }
{       Generated from: XMLSchemas\Public\TBOIDistributionType.xsd                 }
{                                                                                  }
{**********************************************************************************}

unit xTBOIDistributionType;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTBOIDistributionType = interface;

{ IXMLTBOIDistributionType }

  IXMLTBOIDistributionType = interface(IXMLNode)
    ['{AC9AB613-812F-4C85-9E2B-C9AE405E0FD4}']
    { Property Accessors }
    function Get_BOIDistributionTypeName: Variant;
    function Get_BOIDistributionTypeAbbrev: Variant;
    procedure Set_BOIDistributionTypeName(Value: Variant);
    procedure Set_BOIDistributionTypeAbbrev(Value: Variant);
    { Methods & Properties }
    property BOIDistributionTypeName: Variant read Get_BOIDistributionTypeName write Set_BOIDistributionTypeName;
    property BOIDistributionTypeAbbrev: Variant read Get_BOIDistributionTypeAbbrev write Set_BOIDistributionTypeAbbrev;
  end;

{ Forward Decls }

  TXMLTBOIDistributionType = class;

{ TXMLTBOIDistributionType }

  TXMLTBOIDistributionType = class(TXMLNode, IXMLTBOIDistributionType)
  protected
    { IXMLTBOIDistributionType }
    function Get_BOIDistributionTypeName: Variant;
    function Get_BOIDistributionTypeAbbrev: Variant;
    procedure Set_BOIDistributionTypeName(Value: Variant);
    procedure Set_BOIDistributionTypeAbbrev(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTBOIDistributionType;
function LoadUnknown(const FileName: WideString): IXMLTBOIDistributionType;
function NewUnknown: IXMLTBOIDistributionType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTBOIDistributionType;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTBOIDistributionType, TargetNamespace) as IXMLTBOIDistributionType;
end;

function LoadUnknown(const FileName: WideString): IXMLTBOIDistributionType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTBOIDistributionType, TargetNamespace) as IXMLTBOIDistributionType;
end;

function NewUnknown: IXMLTBOIDistributionType;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTBOIDistributionType, TargetNamespace) as IXMLTBOIDistributionType;
end;

{ TXMLTBOIDistributionType }

function TXMLTBOIDistributionType.Get_BOIDistributionTypeName: Variant;
begin
  Result := ChildNodes['BOIDistributionTypeName'].NodeValue;
end;

procedure TXMLTBOIDistributionType.Set_BOIDistributionTypeName(Value: Variant);
begin
  ChildNodes['BOIDistributionTypeName'].NodeValue := Value;
end;

function TXMLTBOIDistributionType.Get_BOIDistributionTypeAbbrev: Variant;
begin
  Result := ChildNodes['BOIDistributionTypeAbbrev'].NodeValue;
end;

procedure TXMLTBOIDistributionType.Set_BOIDistributionTypeAbbrev(Value: Variant);
begin
  ChildNodes['BOIDistributionTypeAbbrev'].NodeValue := Value;
end;

end.
