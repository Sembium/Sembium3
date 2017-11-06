
{*******************************************************************************}
{                                                                               }
{                               XML Data Binding                                }
{                                                                               }
{         Generated on: 25.8.2005 11:58:18                                      }
{       Generated from: XMLSchemas\Public\ProfessionDocItem.xsd                 }
{                                                                               }
{*******************************************************************************}

unit xProfessionDocItem;

interface

uses xmldom, XMLDoc, XMLIntf, xBaseObjectDocItem, xTProfession;

type

{ Forward Decls }

  IXMLTProfessionDocItem = interface;

{ IXMLTProfessionDocItem }

  IXMLTProfessionDocItem = interface(IXMLTBaseObjectDocItem)
    ['{68F89B3D-4CEE-48AC-9A95-8B547D6431F1}']
    { Property Accessors }
    function Get_Profession: IXMLTProfession;
    { Methods & Properties }
    property Profession: IXMLTProfession read Get_Profession;
  end;

{ Forward Decls }

  TXMLTProfessionDocItem = class;

{ TXMLTProfessionDocItem }

  TXMLTProfessionDocItem = class(TXMLTBaseObjectDocItem, IXMLTProfessionDocItem)
  protected
    { IXMLTProfessionDocItem }
    function Get_Profession: IXMLTProfession;
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetProfessionDocItem(Doc: IXMLDocument): IXMLTProfessionDocItem;
function LoadProfessionDocItem(const FileName: WideString): IXMLTProfessionDocItem;
function NewProfessionDocItem: IXMLTProfessionDocItem;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetProfessionDocItem(Doc: IXMLDocument): IXMLTProfessionDocItem;
begin
  Result := Doc.GetDocBinding('ProfessionDocItem', TXMLTProfessionDocItem, TargetNamespace) as IXMLTProfessionDocItem;
end;

function LoadProfessionDocItem(const FileName: WideString): IXMLTProfessionDocItem;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('ProfessionDocItem', TXMLTProfessionDocItem, TargetNamespace) as IXMLTProfessionDocItem;
end;

function NewProfessionDocItem: IXMLTProfessionDocItem;
begin
  Result := NewXMLDocument.GetDocBinding('ProfessionDocItem', TXMLTProfessionDocItem, TargetNamespace) as IXMLTProfessionDocItem;
end;

{ TXMLTProfessionDocItem }

procedure TXMLTProfessionDocItem.AfterConstruction;
begin
  RegisterChildNode('Profession', TXMLTProfession);
  inherited;
end;

function TXMLTProfessionDocItem.Get_Profession: IXMLTProfession;
begin
  Result := ChildNodes['Profession'] as IXMLTProfession;
end;

end. 
