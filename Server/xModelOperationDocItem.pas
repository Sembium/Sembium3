
{***********************************************************************************}
{                                                                                   }
{                                 XML Data Binding                                  }
{                                                                                   }
{         Generated on: 25.8.2005 17:05:39                                          }
{       Generated from: XMLSchemas\Public\ModelOperationDocItem.xsd                 }
{                                                                                   }
{***********************************************************************************}

unit xModelOperationDocItem;

interface

uses xmldom, XMLDoc, XMLIntf, xBaseObjectDocItem, xTModelOperation;

type

{ Forward Decls }

  IXMLTModelOperationDocItem = interface;

{ IXMLTModelOperationDocItem }

  IXMLTModelOperationDocItem = interface(IXMLTBaseObjectDocItem)
    ['{A86199C2-C9C4-40FC-978A-C1CFB98D1422}']
    { Property Accessors }
    function Get_ModelOperation: IXMLTModelOperation;
    { Methods & Properties }
    property ModelOperation: IXMLTModelOperation read Get_ModelOperation;
  end;

{ Forward Decls }

  TXMLTModelOperationDocItem = class;

{ TXMLTModelOperationDocItem }

  TXMLTModelOperationDocItem = class(TXMLTBaseObjectDocItem, IXMLTModelOperationDocItem)
  protected
    { IXMLTModelOperationDocItem }
    function Get_ModelOperation: IXMLTModelOperation;
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetModelOperationDocItem(Doc: IXMLDocument): IXMLTModelOperationDocItem;
function LoadModelOperationDocItem(const FileName: WideString): IXMLTModelOperationDocItem;
function NewModelOperationDocItem: IXMLTModelOperationDocItem;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetModelOperationDocItem(Doc: IXMLDocument): IXMLTModelOperationDocItem;
begin
  Result := Doc.GetDocBinding('ModelOperationDocItem', TXMLTModelOperationDocItem, TargetNamespace) as IXMLTModelOperationDocItem;
end;

function LoadModelOperationDocItem(const FileName: WideString): IXMLTModelOperationDocItem;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('ModelOperationDocItem', TXMLTModelOperationDocItem, TargetNamespace) as IXMLTModelOperationDocItem;
end;

function NewModelOperationDocItem: IXMLTModelOperationDocItem;
begin
  Result := NewXMLDocument.GetDocBinding('ModelOperationDocItem', TXMLTModelOperationDocItem, TargetNamespace) as IXMLTModelOperationDocItem;
end;

{ TXMLTModelOperationDocItem }

procedure TXMLTModelOperationDocItem.AfterConstruction;
begin
  RegisterChildNode('ModelOperation', TXMLTModelOperation);
  inherited;
end;

function TXMLTModelOperationDocItem.Get_ModelOperation: IXMLTModelOperation;
begin
  Result := ChildNodes['ModelOperation'] as IXMLTModelOperation;
end;

end.
