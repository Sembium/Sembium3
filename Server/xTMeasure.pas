
{**********************************************************************}
{                                                                      }
{                           XML Data Binding                           }
{                                                                      }
{         Generated on: 16.9.2005 14:22:38                             }
{       Generated from: XMLSchemas\Public\TMeasure.xsd                 }
{                                                                      }
{**********************************************************************}

unit xTMeasure;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTMeasure = interface;

{ IXMLTMeasure }

  IXMLTMeasure = interface(IXMLNode)
    ['{A24B42C4-50B0-4947-ABD5-905398C13751}']
    { Property Accessors }
    function Get_MeasureAbbrev: Variant;
    function Get_MeasureName: Variant;
    procedure Set_MeasureAbbrev(Value: Variant);
    procedure Set_MeasureName(Value: Variant);
    { Methods & Properties }
    property MeasureAbbrev: Variant read Get_MeasureAbbrev write Set_MeasureAbbrev;
    property MeasureName: Variant read Get_MeasureName write Set_MeasureName;
  end;

{ Forward Decls }

  TXMLTMeasure = class;

{ TXMLTMeasure }

  TXMLTMeasure = class(TXMLNode, IXMLTMeasure)
  protected
    { IXMLTMeasure }
    function Get_MeasureAbbrev: Variant;
    function Get_MeasureName: Variant;
    procedure Set_MeasureAbbrev(Value: Variant);
    procedure Set_MeasureName(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTMeasure;
function LoadUnknown(const FileName: WideString): IXMLTMeasure;
function NewUnknown: IXMLTMeasure;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTMeasure;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTMeasure, TargetNamespace) as IXMLTMeasure;
end;

function LoadUnknown(const FileName: WideString): IXMLTMeasure;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTMeasure, TargetNamespace) as IXMLTMeasure;
end;

function NewUnknown: IXMLTMeasure;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTMeasure, TargetNamespace) as IXMLTMeasure;
end;

{ TXMLTMeasure }

function TXMLTMeasure.Get_MeasureAbbrev: Variant;
begin
  Result := ChildNodes['MeasureAbbrev'].NodeValue;
end;

procedure TXMLTMeasure.Set_MeasureAbbrev(Value: Variant);
begin
  ChildNodes['MeasureAbbrev'].NodeValue := Value;
end;

function TXMLTMeasure.Get_MeasureName: Variant;
begin
  Result := ChildNodes['MeasureName'].NodeValue;
end;

procedure TXMLTMeasure.Set_MeasureName(Value: Variant);
begin
  ChildNodes['MeasureName'].NodeValue := Value;
end;

end.
