
{**************************************************************************************}
{                                                                                      }
{                                   XML Data Binding                                   }
{                                                                                      }
{         Generated on: 30.8.2005 16:29:27                                             }
{       Generated from: XMLSchemas\Public\OperationMovementDocItem.xsd                 }
{                                                                                      }
{**************************************************************************************}

unit xOperationMovementDocItem;

interface

uses xmldom, XMLDoc, XMLIntf, xBaseObjectDocItem, xTOperationMovement;

type

{ Forward Decls }

  IXMLTOperationMovementDocItem = interface;

{ IXMLTOperationMovementDocItem }

  IXMLTOperationMovementDocItem = interface(IXMLTBaseObjectDocItem)
    ['{0F0A7779-7040-4F41-B3CD-B3F4332A92E5}']
    { Property Accessors }
    function Get_OperationMovement: IXMLTOperationMovement;
    { Methods & Properties }
    property OperationMovement: IXMLTOperationMovement read Get_OperationMovement;
  end;

{ Forward Decls }

  TXMLTOperationMovementDocItem = class;

{ TXMLTOperationMovementDocItem }

  TXMLTOperationMovementDocItem = class(TXMLTBaseObjectDocItem, IXMLTOperationMovementDocItem)
  protected
    { IXMLTOperationMovementDocItem }
    function Get_OperationMovement: IXMLTOperationMovement;
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetOperationMovementDocItem(Doc: IXMLDocument): IXMLTOperationMovementDocItem;
function LoadOperationMovementDocItem(const FileName: WideString): IXMLTOperationMovementDocItem;
function NewOperationMovementDocItem: IXMLTOperationMovementDocItem;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetOperationMovementDocItem(Doc: IXMLDocument): IXMLTOperationMovementDocItem;
begin
  Result := Doc.GetDocBinding('OperationMovementDocItem', TXMLTOperationMovementDocItem, TargetNamespace) as IXMLTOperationMovementDocItem;
end;

function LoadOperationMovementDocItem(const FileName: WideString): IXMLTOperationMovementDocItem;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('OperationMovementDocItem', TXMLTOperationMovementDocItem, TargetNamespace) as IXMLTOperationMovementDocItem;
end;

function NewOperationMovementDocItem: IXMLTOperationMovementDocItem;
begin
  Result := NewXMLDocument.GetDocBinding('OperationMovementDocItem', TXMLTOperationMovementDocItem, TargetNamespace) as IXMLTOperationMovementDocItem;
end;

{ TXMLTOperationMovementDocItem }

procedure TXMLTOperationMovementDocItem.AfterConstruction;
begin
  RegisterChildNode('OperationMovement', TXMLTOperationMovement);
  inherited;
end;

function TXMLTOperationMovementDocItem.Get_OperationMovement: IXMLTOperationMovement;
begin
  Result := ChildNodes['OperationMovement'] as IXMLTOperationMovement;
end;

end.
