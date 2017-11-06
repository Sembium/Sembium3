
{*******************************************************************}
{                                                                   }
{                         XML Data Binding                          }
{                                                                   }
{         Generated on: 17.9.2005 09:58:51                          }
{       Generated from: XMLSchemas\Public\TTeam.xsd                 }
{                                                                   }
{*******************************************************************}

unit xTTeam;

interface

uses xmldom, XMLDoc, XMLIntf, xTDept;

type

{ Forward Decls }

  IXMLTTeam = interface;

{ IXMLTTeam }

  IXMLTTeam = interface(IXMLNode)
    ['{E361BB52-317F-42D0-997A-9165FBC19477}']
    { Property Accessors }
    function Get_TeamNo: Variant;
    function Get_TeamName: Variant;
    function Get_IsActive: Variant;
    function Get_Dept: IXMLTDept;
    procedure Set_TeamNo(Value: Variant);
    procedure Set_TeamName(Value: Variant);
    procedure Set_IsActive(Value: Variant);
    { Methods & Properties }
    property TeamNo: Variant read Get_TeamNo write Set_TeamNo;
    property TeamName: Variant read Get_TeamName write Set_TeamName;
    property IsActive: Variant read Get_IsActive write Set_IsActive;
    property Dept: IXMLTDept read Get_Dept;
  end;

{ Forward Decls }

  TXMLTTeam = class;

{ TXMLTTeam }

  TXMLTTeam = class(TXMLNode, IXMLTTeam)
  protected
    { IXMLTTeam }
    function Get_TeamNo: Variant;
    function Get_TeamName: Variant;
    function Get_IsActive: Variant;
    function Get_Dept: IXMLTDept;
    procedure Set_TeamNo(Value: Variant);
    procedure Set_TeamName(Value: Variant);
    procedure Set_IsActive(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTTeam;
function LoadUnknown(const FileName: WideString): IXMLTTeam;
function NewUnknown: IXMLTTeam;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTTeam;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTTeam, TargetNamespace) as IXMLTTeam;
end;

function LoadUnknown(const FileName: WideString): IXMLTTeam;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTTeam, TargetNamespace) as IXMLTTeam;
end;

function NewUnknown: IXMLTTeam;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTTeam, TargetNamespace) as IXMLTTeam;
end;

{ TXMLTTeam }

procedure TXMLTTeam.AfterConstruction;
begin
  RegisterChildNode('Dept', TXMLTDept);
  inherited;
end;

function TXMLTTeam.Get_TeamNo: Variant;
begin
  Result := ChildNodes['TeamNo'].NodeValue;
end;

procedure TXMLTTeam.Set_TeamNo(Value: Variant);
begin
  ChildNodes['TeamNo'].NodeValue := Value;
end;

function TXMLTTeam.Get_TeamName: Variant;
begin
  Result := ChildNodes['TeamName'].NodeValue;
end;

procedure TXMLTTeam.Set_TeamName(Value: Variant);
begin
  ChildNodes['TeamName'].NodeValue := Value;
end;

function TXMLTTeam.Get_IsActive: Variant;
begin
  Result := ChildNodes['IsActive'].NodeValue;
end;

procedure TXMLTTeam.Set_IsActive(Value: Variant);
begin
  ChildNodes['IsActive'].NodeValue := Value;
end;

function TXMLTTeam.Get_Dept: IXMLTDept;
begin
  Result := ChildNodes['Dept'] as IXMLTDept;
end;

end. 
