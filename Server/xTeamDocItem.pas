
{*************************************************************************}
{                                                                         }
{                            XML Data Binding                             }
{                                                                         }
{         Generated on: 25.8.2005 12:02:05                                }
{       Generated from: XMLSchemas\Public\TeamDocItem.xsd                 }
{                                                                         }
{*************************************************************************}

unit xTeamDocItem;

interface

uses xmldom, XMLDoc, XMLIntf, xBaseObjectDocItem, xTTeam;

type

{ Forward Decls }

  IXMLTTeamDocItem = interface;

{ IXMLTTeamDocItem }

  IXMLTTeamDocItem = interface(IXMLTBaseObjectDocItem)
    ['{DFFDD0D7-CCBD-4701-A426-E6B2A8E1E57F}']
    { Property Accessors }
    function Get_Team: IXMLTTeam;
    { Methods & Properties }
    property Team: IXMLTTeam read Get_Team;
  end;

{ Forward Decls }

  TXMLTTeamDocItem = class;

{ TXMLTTeamDocItem }

  TXMLTTeamDocItem = class(TXMLTBaseObjectDocItem, IXMLTTeamDocItem)
  protected
    { IXMLTTeamDocItem }
    function Get_Team: IXMLTTeam;
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetTeamDocItem(Doc: IXMLDocument): IXMLTTeamDocItem;
function LoadTeamDocItem(const FileName: WideString): IXMLTTeamDocItem;
function NewTeamDocItem: IXMLTTeamDocItem;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetTeamDocItem(Doc: IXMLDocument): IXMLTTeamDocItem;
begin
  Result := Doc.GetDocBinding('TeamDocItem', TXMLTTeamDocItem, TargetNamespace) as IXMLTTeamDocItem;
end;

function LoadTeamDocItem(const FileName: WideString): IXMLTTeamDocItem;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('TeamDocItem', TXMLTTeamDocItem, TargetNamespace) as IXMLTTeamDocItem;
end;

function NewTeamDocItem: IXMLTTeamDocItem;
begin
  Result := NewXMLDocument.GetDocBinding('TeamDocItem', TXMLTTeamDocItem, TargetNamespace) as IXMLTTeamDocItem;
end;

{ TXMLTTeamDocItem }

procedure TXMLTTeamDocItem.AfterConstruction;
begin
  RegisterChildNode('Team', TXMLTTeam);
  inherited;
end;

function TXMLTTeamDocItem.Get_Team: IXMLTTeam;
begin
  Result := ChildNodes['Team'] as IXMLTTeam;
end;

end. 
