
{**********************************************************************}
{                                                                      }
{                           XML Data Binding                           }
{                                                                      }
{         Generated on: 17.9.2005 11:40:32                             }
{       Generated from: XMLSchemas\Public\TProcess.xsd                 }
{                                                                      }
{**********************************************************************}

unit xTProcess;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTProcess = interface;

{ IXMLTProcess }

  IXMLTProcess = interface(IXMLNode)
    ['{D367D900-A984-46EF-974B-362CAD17FF7A}']
    { Property Accessors }
    function Get_ProcessName: Variant;
    function Get_ProcessAbbrev: Variant;
    procedure Set_ProcessName(Value: Variant);
    procedure Set_ProcessAbbrev(Value: Variant);
    { Methods & Properties }
    property ProcessName: Variant read Get_ProcessName write Set_ProcessName;
    property ProcessAbbrev: Variant read Get_ProcessAbbrev write Set_ProcessAbbrev;
  end;

{ Forward Decls }

  TXMLTProcess = class;

{ TXMLTProcess }

  TXMLTProcess = class(TXMLNode, IXMLTProcess)
  protected
    { IXMLTProcess }
    function Get_ProcessName: Variant;
    function Get_ProcessAbbrev: Variant;
    procedure Set_ProcessName(Value: Variant);
    procedure Set_ProcessAbbrev(Value: Variant);
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTProcess;
function LoadUnknown(const FileName: WideString): IXMLTProcess;
function NewUnknown: IXMLTProcess;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTProcess;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTProcess, TargetNamespace) as IXMLTProcess;
end;

function LoadUnknown(const FileName: WideString): IXMLTProcess;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTProcess, TargetNamespace) as IXMLTProcess;
end;

function NewUnknown: IXMLTProcess;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTProcess, TargetNamespace) as IXMLTProcess;
end;

{ TXMLTProcess }

function TXMLTProcess.Get_ProcessName: Variant;
begin
  Result := ChildNodes['ProcessName'].NodeValue;
end;

procedure TXMLTProcess.Set_ProcessName(Value: Variant);
begin
  ChildNodes['ProcessName'].NodeValue := Value;
end;

function TXMLTProcess.Get_ProcessAbbrev: Variant;
begin
  Result := ChildNodes['ProcessAbbrev'].NodeValue;
end;

procedure TXMLTProcess.Set_ProcessAbbrev(Value: Variant);
begin
  ChildNodes['ProcessAbbrev'].NodeValue := Value;
end;

end.
