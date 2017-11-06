
{***********************************************************************}
{                                                                       }
{                           XML Data Binding                            }
{                                                                       }
{         Generated on: 10.1.2006 16:55:27                              }
{       Generated from: XMLSchemas\Public\TDateTime.xsd                 }
{                                                                       }
{***********************************************************************}

unit xTDateTime;

interface

uses
  xmldom, XMLDoc, XMLIntf, xTDate, xTTime;

type

{ Forward Decls }

  IXMLTDateTime = interface;

{ IXMLTDateTime }

  IXMLTDateTime = interface(IXMLNode)
    ['{C7E4D379-733E-4F54-9C05-294597A72BD4}']
    { Property Accessors }
    function Get_Date: IXMLTDate;
    function Get_Time: IXMLTTime;
    { Methods & Properties }
    property Date: IXMLTDate read Get_Date;
    property Time: IXMLTTime read Get_Time;
  end;

{ Forward Decls }

  TXMLTDateTime = class;

{ TXMLTDateTime }

  TXMLTDateTime = class(TXMLNode, IXMLTDateTime)
  protected
    { IXMLTDateTime }
    function Get_Date: IXMLTDate;
    function Get_Time: IXMLTTime;
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTDateTime;
function LoadUnknown(const FileName: WideString): IXMLTDateTime;
function NewUnknown: IXMLTDateTime;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTDateTime;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTDateTime, TargetNamespace) as IXMLTDateTime;
end;

function LoadUnknown(const FileName: WideString): IXMLTDateTime;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTDateTime, TargetNamespace) as IXMLTDateTime;
end;

function NewUnknown: IXMLTDateTime;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTDateTime, TargetNamespace) as IXMLTDateTime;
end;

{ TXMLTDateTime }

procedure TXMLTDateTime.AfterConstruction;
begin
  RegisterChildNode('Date', TXMLTDate);
  RegisterChildNode('Time', TXMLTTime);
  inherited;
end;

function TXMLTDateTime.Get_Date: IXMLTDate;
begin
  Result := ChildNodes['Date'] as IXMLTDate;
end;

function TXMLTDateTime.Get_Time: IXMLTTime;
begin
  Result := ChildNodes['Time'] as IXMLTTime;
end;

end. 
