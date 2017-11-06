
{*******************************************************************************}
{                                                                               }
{                               XML Data Binding                                }
{                                                                               }
{         Generated on: 25.8.2005 15:44:02                                      }
{       Generated from: XMLSchemas\Public\ModelStageDocItem.xsd                 }
{                                                                               }
{*******************************************************************************}

unit xModelStageDocItem;

interface

uses xmldom, XMLDoc, XMLIntf, xBaseObjectDocItem, xTModelStage;

type

{ Forward Decls }

  IXMLTModelStageDocItem = interface;

{ IXMLTModelStageDocItem }

  IXMLTModelStageDocItem = interface(IXMLTBaseObjectDocItem)
    ['{B84D6B12-3A23-431A-A6BE-C13B6F5166E9}']
    { Property Accessors }
    function Get_ModelStage: IXMLTModelStage;
    { Methods & Properties }
    property ModelStage: IXMLTModelStage read Get_ModelStage;
  end;

{ Forward Decls }

  TXMLTModelStageDocItem = class;

{ TXMLTModelStageDocItem }

  TXMLTModelStageDocItem = class(TXMLTBaseObjectDocItem, IXMLTModelStageDocItem)
  protected
    { IXMLTModelStageDocItem }
    function Get_ModelStage: IXMLTModelStage;
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetModelStageDocItem(Doc: IXMLDocument): IXMLTModelStageDocItem;
function LoadModelStageDocItem(const FileName: WideString): IXMLTModelStageDocItem;
function NewModelStageDocItem: IXMLTModelStageDocItem;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetModelStageDocItem(Doc: IXMLDocument): IXMLTModelStageDocItem;
begin
  Result := Doc.GetDocBinding('ModelStageDocItem', TXMLTModelStageDocItem, TargetNamespace) as IXMLTModelStageDocItem;
end;

function LoadModelStageDocItem(const FileName: WideString): IXMLTModelStageDocItem;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('ModelStageDocItem', TXMLTModelStageDocItem, TargetNamespace) as IXMLTModelStageDocItem;
end;

function NewModelStageDocItem: IXMLTModelStageDocItem;
begin
  Result := NewXMLDocument.GetDocBinding('ModelStageDocItem', TXMLTModelStageDocItem, TargetNamespace) as IXMLTModelStageDocItem;
end;

{ TXMLTModelStageDocItem }

procedure TXMLTModelStageDocItem.AfterConstruction;
begin
  RegisterChildNode('ModelStage', TXMLTModelStage);
  inherited;
end;

function TXMLTModelStageDocItem.Get_ModelStage: IXMLTModelStage;
begin
  Result := ChildNodes['ModelStage'] as IXMLTModelStage;
end;

end. 
