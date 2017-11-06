
{******************************************************************************************}
{                                                                                          }
{                                     XML Data Binding                                     }
{                                                                                          }
{         Generated on: 20.5.2013 г/ 14:17:19                                              }
{       Generated from: XMLSchemas\Public\DeliveryProjectDocItem.xsd                 }
{                                                                                          }
{******************************************************************************************}

unit xDeliveryProjectDocItem;

interface

uses
  xmldom, XMLDoc, XMLIntf, xTDeliveryProject, xBaseObjectDocItem;

type

{ Forward Decls }

  IXMLTDeliveryProjectDocItem = interface;

{ IXMLTDeliveryProjectDocItem }

  IXMLTDeliveryProjectDocItem = interface(IXMLTBaseObjectDocItem)
    ['{20483267-27BC-41C1-B0E6-0C82219DE782}']
    { Property Accessors }
    function Get_DeliveryProject: IXMLTDeliveryProject;
    { Methods & Properties }
    property DeliveryProject: IXMLTDeliveryProject read Get_DeliveryProject;
  end;

{ Forward Decls }

  TXMLTDeliveryProjectDocItem = class;

{ TXMLTDeliveryProjectDocItem }

  TXMLTDeliveryProjectDocItem = class(TXMLTBaseObjectDocItem, IXMLTDeliveryProjectDocItem)
  protected
    { IXMLTDeliveryProjectDocItem }
    function Get_DeliveryProject: IXMLTDeliveryProject;
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetDeliveryProjectDocItem(Doc: IXMLDocument): IXMLTDeliveryProjectDocItem;
function LoadDeliveryProjectDocItem(const FileName: WideString): IXMLTDeliveryProjectDocItem;
function NewDeliveryProjectDocItem: IXMLTDeliveryProjectDocItem;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetDeliveryProjectDocItem(Doc: IXMLDocument): IXMLTDeliveryProjectDocItem;
begin
  Result := Doc.GetDocBinding('DeliveryProjectDocItem', TXMLTDeliveryProjectDocItem, TargetNamespace) as IXMLTDeliveryProjectDocItem;
end;

function LoadDeliveryProjectDocItem(const FileName: WideString): IXMLTDeliveryProjectDocItem;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('DeliveryProjectDocItem', TXMLTDeliveryProjectDocItem, TargetNamespace) as IXMLTDeliveryProjectDocItem;
end;

function NewDeliveryProjectDocItem: IXMLTDeliveryProjectDocItem;
begin
  Result := NewXMLDocument.GetDocBinding('DeliveryProjectDocItem', TXMLTDeliveryProjectDocItem, TargetNamespace) as IXMLTDeliveryProjectDocItem;
end;

{ TXMLTDeliveryProjectDocItem }

procedure TXMLTDeliveryProjectDocItem.AfterConstruction;
begin
  RegisterChildNode('DeliveryProject', TXMLTDeliveryProject);
  inherited;
end;

function TXMLTDeliveryProjectDocItem.Get_DeliveryProject: IXMLTDeliveryProject;
begin
  Result := ChildNodes['DeliveryProject'] as IXMLTDeliveryProject;
end;

end.
