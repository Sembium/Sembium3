
{***************************************************************************}
{                                                                           }
{                             XML Data Binding                              }
{                                                                           }
{         Generated on: 10.1.2006 16:51:50                                  }
{       Generated from: XMLSchemas\Public\TTimeInterval.xsd                 }
{                                                                           }
{***************************************************************************}

unit xTTimeInterval;

interface

uses
  xmldom, XMLDoc, XMLIntf, xTTime;

type

{ Forward Decls }

  IXMLTTimeInterval = interface;

{ IXMLTTimeInterval }

  IXMLTTimeInterval = interface(IXMLNode)
    ['{87382D3E-8D89-4396-BE5A-AE6413C01742}']
    { Property Accessors }
    function Get_BeginTime: IXMLTTime;
    function Get_EndTime: IXMLTTime;
    { Methods & Properties }
    property BeginTime: IXMLTTime read Get_BeginTime;
    property EndTime: IXMLTTime read Get_EndTime;
  end;

{ Forward Decls }

  TXMLTTimeInterval = class;

{ TXMLTTimeInterval }

  TXMLTTimeInterval = class(TXMLNode, IXMLTTimeInterval)
  protected
    { IXMLTTimeInterval }
    function Get_BeginTime: IXMLTTime;
    function Get_EndTime: IXMLTTime;
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTTimeInterval;
function LoadUnknown(const FileName: WideString): IXMLTTimeInterval;
function NewUnknown: IXMLTTimeInterval;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTTimeInterval;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTTimeInterval, TargetNamespace) as IXMLTTimeInterval;
end;

function LoadUnknown(const FileName: WideString): IXMLTTimeInterval;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTTimeInterval, TargetNamespace) as IXMLTTimeInterval;
end;

function NewUnknown: IXMLTTimeInterval;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTTimeInterval, TargetNamespace) as IXMLTTimeInterval;
end;

{ TXMLTTimeInterval }

procedure TXMLTTimeInterval.AfterConstruction;
begin
  RegisterChildNode('BeginTime', TXMLTTime);
  RegisterChildNode('EndTime', TXMLTTime);
  inherited;
end;

function TXMLTTimeInterval.Get_BeginTime: IXMLTTime;
begin
  Result := ChildNodes['BeginTime'] as IXMLTTime;
end;

function TXMLTTimeInterval.Get_EndTime: IXMLTTime;
begin
  Result := ChildNodes['EndTime'] as IXMLTTime;
end;

end.
