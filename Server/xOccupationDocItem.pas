
{*******************************************************************************}
{                                                                               }
{                               XML Data Binding                                }
{                                                                               }
{         Generated on: 25.8.2005 12:11:46                                      }
{       Generated from: XMLSchemas\Public\OccupationDocItem.xsd                 }
{                                                                               }
{*******************************************************************************}

unit xOccupationDocItem;

interface

uses xmldom, XMLDoc, XMLIntf, xBaseObjectDocItem, xTOccupation;

type

{ Forward Decls }

  IXMLTOccupationDocItem = interface;

{ IXMLTOccupationDocItem }

  IXMLTOccupationDocItem = interface(IXMLTBaseObjectDocItem)
    ['{3EACC669-C63D-4A83-9058-E69DAAE5536B}']
    { Property Accessors }
    function Get_Occupation: IXMLTOccupation;
    { Methods & Properties }
    property Occupation: IXMLTOccupation read Get_Occupation;
  end;

{ Forward Decls }

  TXMLTOccupationDocItem = class;

{ TXMLTOccupationDocItem }

  TXMLTOccupationDocItem = class(TXMLTBaseObjectDocItem, IXMLTOccupationDocItem)
  protected
    { IXMLTOccupationDocItem }
    function Get_Occupation: IXMLTOccupation;
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetOccupationDocItem(Doc: IXMLDocument): IXMLTOccupationDocItem;
function LoadOccupationDocItem(const FileName: WideString): IXMLTOccupationDocItem;
function NewOccupationDocItem: IXMLTOccupationDocItem;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetOccupationDocItem(Doc: IXMLDocument): IXMLTOccupationDocItem;
begin
  Result := Doc.GetDocBinding('OccupationDocItem', TXMLTOccupationDocItem, TargetNamespace) as IXMLTOccupationDocItem;
end;

function LoadOccupationDocItem(const FileName: WideString): IXMLTOccupationDocItem;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('OccupationDocItem', TXMLTOccupationDocItem, TargetNamespace) as IXMLTOccupationDocItem;
end;

function NewOccupationDocItem: IXMLTOccupationDocItem;
begin
  Result := NewXMLDocument.GetDocBinding('OccupationDocItem', TXMLTOccupationDocItem, TargetNamespace) as IXMLTOccupationDocItem;
end;

{ TXMLTOccupationDocItem }

procedure TXMLTOccupationDocItem.AfterConstruction;
begin
  RegisterChildNode('Occupation', TXMLTOccupation);
  inherited;
end;

function TXMLTOccupationDocItem.Get_Occupation: IXMLTOccupation;
begin
  Result := ChildNodes['Occupation'] as IXMLTOccupation;
end;

end.
