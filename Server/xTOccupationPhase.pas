
{******************************************************************************}
{                                                                              }
{                               XML Data Binding                               }
{                                                                              }
{         Generated on: 17.9.2005 12:18:33                                     }
{       Generated from: XMLSchemas\Public\TOccupationPhase.xsd                 }
{                                                                              }
{******************************************************************************}

unit xTOccupationPhase;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTOccupationPhase = interface;

{ IXMLTOccupationPhase }

  IXMLTOccupationPhase = interface(IXMLNode)
    ['{9FE46A1F-8B01-4DD0-833D-BAEFEEFC9E72}']
    { Property Accessors }
    function Get_OccupationPhaseName: Variant;
    procedure Set_OccupationPhaseName(Value: Variant);
    { Methods & Properties }
    property OccupationPhaseName: Variant read Get_OccupationPhaseName write Set_OccupationPhaseName;
  end;

{ Forward Decls }

  TXMLTOccupationPhase = class;

{ TXMLTOccupationPhase }

  TXMLTOccupationPhase = class(TXMLNode, IXMLTOccupationPhase)
  protected
    { IXMLTOccupationPhase }
    function Get_OccupationPhaseName: Variant;
    procedure Set_OccupationPhaseName(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTOccupationPhase;
function LoadUnknown(const FileName: WideString): IXMLTOccupationPhase;
function NewUnknown: IXMLTOccupationPhase;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTOccupationPhase;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTOccupationPhase, TargetNamespace) as IXMLTOccupationPhase;
end;

function LoadUnknown(const FileName: WideString): IXMLTOccupationPhase;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTOccupationPhase, TargetNamespace) as IXMLTOccupationPhase;
end;

function NewUnknown: IXMLTOccupationPhase;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTOccupationPhase, TargetNamespace) as IXMLTOccupationPhase;
end;

{ TXMLTOccupationPhase }

function TXMLTOccupationPhase.Get_OccupationPhaseName: Variant;
begin
  Result := ChildNodes['OccupationPhaseName'].NodeValue;
end;

procedure TXMLTOccupationPhase.Set_OccupationPhaseName(Value: Variant);
begin
  ChildNodes['OccupationPhaseName'].NodeValue := Value;
end;

end.
