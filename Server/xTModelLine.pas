
{************************************************************************}
{                                                                        }
{                            XML Data Binding                            }
{                                                                        }
{         Generated on: 06.2.2006 16:24:54                               }
{       Generated from: XMLSchemas\Public\TModelLine.xsd                 }
{                                                                        }
{************************************************************************}

unit xTModelLine;

interface

uses
  xmldom, XMLDoc, XMLIntf, xTProduct, xTModel;

type

{ Forward Decls }

  IXMLTModelLine = interface;

{ IXMLTModelLine }

  IXMLTModelLine = interface(IXMLNode)
    ['{D63F9F06-F35A-43B3-B5EA-5EA92B3D8A60}']
    { Property Accessors }
    function Get_NoAsText: Variant;
    function Get_ForkNo: Variant;
    function Get_Detail: IXMLTProduct;
    function Get_DetailTechQuantity: Variant;
    function Get_LineDetailTechQuantity: Variant;
    function Get_Notes: Variant;
    function Get_Material: IXMLTProduct;
    function Get_MaterialTechQuantity: Variant;
    function Get_IsForSingleUse: Variant;
    function Get_ConstructionNotes: Variant;
    function Get_IsComplete: Variant;
    function Get_Model: IXMLTModel;
    procedure Set_NoAsText(Value: Variant);
    procedure Set_ForkNo(Value: Variant);
    procedure Set_DetailTechQuantity(Value: Variant);
    procedure Set_LineDetailTechQuantity(Value: Variant);
    procedure Set_Notes(Value: Variant);
    procedure Set_MaterialTechQuantity(Value: Variant);
    procedure Set_IsForSingleUse(Value: Variant);
    procedure Set_ConstructionNotes(Value: Variant);
    procedure Set_IsComplete(Value: Variant);
    { Methods & Properties }
    property NoAsText: Variant read Get_NoAsText write Set_NoAsText;
    property ForkNo: Variant read Get_ForkNo write Set_ForkNo;
    property Detail: IXMLTProduct read Get_Detail;
    property DetailTechQuantity: Variant read Get_DetailTechQuantity write Set_DetailTechQuantity;
    property LineDetailTechQuantity: Variant read Get_LineDetailTechQuantity write Set_LineDetailTechQuantity;
    property Notes: Variant read Get_Notes write Set_Notes;
    property Material: IXMLTProduct read Get_Material;
    property MaterialTechQuantity: Variant read Get_MaterialTechQuantity write Set_MaterialTechQuantity;
    property IsForSingleUse: Variant read Get_IsForSingleUse write Set_IsForSingleUse;
    property ConstructionNotes: Variant read Get_ConstructionNotes write Set_ConstructionNotes;
    property IsComplete: Variant read Get_IsComplete write Set_IsComplete;
    property Model: IXMLTModel read Get_Model;
  end;

{ Forward Decls }

  TXMLTModelLine = class;

{ TXMLTModelLine }

  TXMLTModelLine = class(TXMLNode, IXMLTModelLine)
  protected
    { IXMLTModelLine }
    function Get_NoAsText: Variant;
    function Get_ForkNo: Variant;
    function Get_Detail: IXMLTProduct;
    function Get_DetailTechQuantity: Variant;
    function Get_LineDetailTechQuantity: Variant;
    function Get_Notes: Variant;
    function Get_Material: IXMLTProduct;
    function Get_MaterialTechQuantity: Variant;
    function Get_IsForSingleUse: Variant;
    function Get_ConstructionNotes: Variant;
    function Get_IsComplete: Variant;
    function Get_Model: IXMLTModel;
    procedure Set_NoAsText(Value: Variant);
    procedure Set_ForkNo(Value: Variant);
    procedure Set_DetailTechQuantity(Value: Variant);
    procedure Set_LineDetailTechQuantity(Value: Variant);
    procedure Set_Notes(Value: Variant);
    procedure Set_MaterialTechQuantity(Value: Variant);
    procedure Set_IsForSingleUse(Value: Variant);
    procedure Set_ConstructionNotes(Value: Variant);
    procedure Set_IsComplete(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTModelLine;
function LoadUnknown(const FileName: WideString): IXMLTModelLine;
function NewUnknown: IXMLTModelLine;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTModelLine;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTModelLine, TargetNamespace) as IXMLTModelLine;
end;

function LoadUnknown(const FileName: WideString): IXMLTModelLine;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTModelLine, TargetNamespace) as IXMLTModelLine;
end;

function NewUnknown: IXMLTModelLine;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTModelLine, TargetNamespace) as IXMLTModelLine;
end;

{ TXMLTModelLine }

procedure TXMLTModelLine.AfterConstruction;
begin
  RegisterChildNode('Detail', TXMLTProduct);
  RegisterChildNode('Material', TXMLTProduct);
  RegisterChildNode('Model', TXMLTModel);
  inherited;
end;

function TXMLTModelLine.Get_NoAsText: Variant;
begin
  Result := ChildNodes['NoAsText'].NodeValue;
end;

procedure TXMLTModelLine.Set_NoAsText(Value: Variant);
begin
  ChildNodes['NoAsText'].NodeValue := Value;
end;

function TXMLTModelLine.Get_ForkNo: Variant;
begin
  Result := ChildNodes['ForkNo'].NodeValue;
end;

procedure TXMLTModelLine.Set_ForkNo(Value: Variant);
begin
  ChildNodes['ForkNo'].NodeValue := Value;
end;

function TXMLTModelLine.Get_Detail: IXMLTProduct;
begin
  Result := ChildNodes['Detail'] as IXMLTProduct;
end;

function TXMLTModelLine.Get_DetailTechQuantity: Variant;
begin
  Result := ChildNodes['DetailTechQuantity'].NodeValue;
end;

procedure TXMLTModelLine.Set_DetailTechQuantity(Value: Variant);
begin
  ChildNodes['DetailTechQuantity'].NodeValue := Value;
end;

function TXMLTModelLine.Get_LineDetailTechQuantity: Variant;
begin
  Result := ChildNodes['LineDetailTechQuantity'].NodeValue;
end;

procedure TXMLTModelLine.Set_LineDetailTechQuantity(Value: Variant);
begin
  ChildNodes['LineDetailTechQuantity'].NodeValue := Value;
end;

function TXMLTModelLine.Get_Notes: Variant;
begin
  Result := ChildNodes['Notes'].NodeValue;
end;

procedure TXMLTModelLine.Set_Notes(Value: Variant);
begin
  ChildNodes['Notes'].NodeValue := Value;
end;

function TXMLTModelLine.Get_Material: IXMLTProduct;
begin
  Result := ChildNodes['Material'] as IXMLTProduct;
end;

function TXMLTModelLine.Get_MaterialTechQuantity: Variant;
begin
  Result := ChildNodes['MaterialTechQuantity'].NodeValue;
end;

procedure TXMLTModelLine.Set_MaterialTechQuantity(Value: Variant);
begin
  ChildNodes['MaterialTechQuantity'].NodeValue := Value;
end;

function TXMLTModelLine.Get_IsForSingleUse: Variant;
begin
  Result := ChildNodes['IsForSingleUse'].NodeValue;
end;

procedure TXMLTModelLine.Set_IsForSingleUse(Value: Variant);
begin
  ChildNodes['IsForSingleUse'].NodeValue := Value;
end;

function TXMLTModelLine.Get_ConstructionNotes: Variant;
begin
  Result := ChildNodes['ConstructionNotes'].NodeValue;
end;

procedure TXMLTModelLine.Set_ConstructionNotes(Value: Variant);
begin
  ChildNodes['ConstructionNotes'].NodeValue := Value;
end;

function TXMLTModelLine.Get_IsComplete: Variant;
begin
  Result := ChildNodes['IsComplete'].NodeValue;
end;

procedure TXMLTModelLine.Set_IsComplete(Value: Variant);
begin
  ChildNodes['IsComplete'].NodeValue := Value;
end;

function TXMLTModelLine.Get_Model: IXMLTModel;
begin
  Result := ChildNodes['Model'] as IXMLTModel;
end;

end.
