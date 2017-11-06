
{*************************************************************************}
{                                                                         }
{                            XML Data Binding                             }
{                                                                         }
{         Generated on: 28.4.2006 16:10:30                                }
{       Generated from: XMLSchemas\Public\TOccupation.xsd                 }
{                                                                         }
{*************************************************************************}

unit xTOccupation;

interface

uses
  xmldom, XMLDoc, XMLIntf, xTDept, xTDateInterval, xTShift, xTOccupationPhase,
  xTProduct, xTCraft, xTSalary, xTFloatRange;

type

{ Forward Decls }

  IXMLTOccupation = interface;

{ IXMLTOccupation }

  IXMLTOccupation = interface(IXMLNode)
    ['{3179D11F-B6D9-43C2-9A9A-B0976C76DC04}']
    { Property Accessors }
    function Get_OccupationName: Variant;
    function Get_OccupationDept: IXMLTDept;
    function Get_OccupationDateInterval: IXMLTDateInterval;
    function Get_Shift: IXMLTShift;
    function Get_OccupationLevel: Variant;
    function Get_Notes: Variant;
    function Get_IsMain: Variant;
    function Get_OccupationPhase: IXMLTOccupationPhase;
    function Get_Product: IXMLTProduct;
    function Get_Craft: IXMLTCraft;
    function Get_CurrentBaseSalary: IXMLTSalary;
    function Get_CurrentSalaryRatioCoefRange: IXMLTFloatRange;
    function Get_OccupationWorkDepts: Variant;
    function Get_OccupationProfessions: Variant;
    procedure Set_OccupationName(Value: Variant);
    procedure Set_OccupationLevel(Value: Variant);
    procedure Set_Notes(Value: Variant);
    procedure Set_IsMain(Value: Variant);
    procedure Set_OccupationWorkDepts(Value: Variant);
    procedure Set_OccupationProfessions(Value: Variant);
    { Methods & Properties }
    property OccupationName: Variant read Get_OccupationName write Set_OccupationName;
    property OccupationDept: IXMLTDept read Get_OccupationDept;
    property OccupationDateInterval: IXMLTDateInterval read Get_OccupationDateInterval;
    property Shift: IXMLTShift read Get_Shift;
    property OccupationLevel: Variant read Get_OccupationLevel write Set_OccupationLevel;
    property Notes: Variant read Get_Notes write Set_Notes;
    property IsMain: Variant read Get_IsMain write Set_IsMain;
    property OccupationPhase: IXMLTOccupationPhase read Get_OccupationPhase;
    property Product: IXMLTProduct read Get_Product;
    property Craft: IXMLTCraft read Get_Craft;
    property CurrentBaseSalary: IXMLTSalary read Get_CurrentBaseSalary;
    property CurrentSalaryRatioCoefRange: IXMLTFloatRange read Get_CurrentSalaryRatioCoefRange;
    property OccupationWorkDepts: Variant read Get_OccupationWorkDepts write Set_OccupationWorkDepts;
    property OccupationProfessions: Variant read Get_OccupationProfessions write Set_OccupationProfessions;
  end;

{ Forward Decls }

  TXMLTOccupation = class;

{ TXMLTOccupation }

  TXMLTOccupation = class(TXMLNode, IXMLTOccupation)
  protected
    { IXMLTOccupation }
    function Get_OccupationName: Variant;
    function Get_OccupationDept: IXMLTDept;
    function Get_OccupationDateInterval: IXMLTDateInterval;
    function Get_Shift: IXMLTShift;
    function Get_OccupationLevel: Variant;
    function Get_Notes: Variant;
    function Get_IsMain: Variant;
    function Get_OccupationPhase: IXMLTOccupationPhase;
    function Get_Product: IXMLTProduct;
    function Get_Craft: IXMLTCraft;
    function Get_CurrentBaseSalary: IXMLTSalary;
    function Get_CurrentSalaryRatioCoefRange: IXMLTFloatRange;
    function Get_OccupationWorkDepts: Variant;
    function Get_OccupationProfessions: Variant;
    procedure Set_OccupationName(Value: Variant);
    procedure Set_OccupationLevel(Value: Variant);
    procedure Set_Notes(Value: Variant);
    procedure Set_IsMain(Value: Variant);
    procedure Set_OccupationWorkDepts(Value: Variant);
    procedure Set_OccupationProfessions(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTOccupation;
function LoadUnknown(const FileName: WideString): IXMLTOccupation;
function NewUnknown: IXMLTOccupation;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTOccupation;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTOccupation, TargetNamespace) as IXMLTOccupation;
end;

function LoadUnknown(const FileName: WideString): IXMLTOccupation;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTOccupation, TargetNamespace) as IXMLTOccupation;
end;

function NewUnknown: IXMLTOccupation;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTOccupation, TargetNamespace) as IXMLTOccupation;
end;

{ TXMLTOccupation }

procedure TXMLTOccupation.AfterConstruction;
begin
  RegisterChildNode('OccupationDept', TXMLTDept);
  RegisterChildNode('OccupationDateInterval', TXMLTDateInterval);
  RegisterChildNode('Shift', TXMLTShift);
  RegisterChildNode('OccupationPhase', TXMLTOccupationPhase);
  RegisterChildNode('Product', TXMLTProduct);
  RegisterChildNode('Craft', TXMLTCraft);
  RegisterChildNode('CurrentBaseSalary', TXMLTSalary);
  RegisterChildNode('CurrentSalaryRatioCoefRange', TXMLTFloatRange);
  inherited;
end;

function TXMLTOccupation.Get_OccupationName: Variant;
begin
  Result := ChildNodes['OccupationName'].NodeValue;
end;

procedure TXMLTOccupation.Set_OccupationName(Value: Variant);
begin
  ChildNodes['OccupationName'].NodeValue := Value;
end;

function TXMLTOccupation.Get_OccupationDept: IXMLTDept;
begin
  Result := ChildNodes['OccupationDept'] as IXMLTDept;
end;

function TXMLTOccupation.Get_OccupationDateInterval: IXMLTDateInterval;
begin
  Result := ChildNodes['OccupationDateInterval'] as IXMLTDateInterval;
end;

function TXMLTOccupation.Get_Shift: IXMLTShift;
begin
  Result := ChildNodes['Shift'] as IXMLTShift;
end;

function TXMLTOccupation.Get_OccupationLevel: Variant;
begin
  Result := ChildNodes['OccupationLevel'].NodeValue;
end;

procedure TXMLTOccupation.Set_OccupationLevel(Value: Variant);
begin
  ChildNodes['OccupationLevel'].NodeValue := Value;
end;

function TXMLTOccupation.Get_Notes: Variant;
begin
  Result := ChildNodes['Notes'].NodeValue;
end;

procedure TXMLTOccupation.Set_Notes(Value: Variant);
begin
  ChildNodes['Notes'].NodeValue := Value;
end;

function TXMLTOccupation.Get_IsMain: Variant;
begin
  Result := ChildNodes['IsMain'].NodeValue;
end;

procedure TXMLTOccupation.Set_IsMain(Value: Variant);
begin
  ChildNodes['IsMain'].NodeValue := Value;
end;

function TXMLTOccupation.Get_OccupationPhase: IXMLTOccupationPhase;
begin
  Result := ChildNodes['OccupationPhase'] as IXMLTOccupationPhase;
end;

function TXMLTOccupation.Get_Product: IXMLTProduct;
begin
  Result := ChildNodes['Product'] as IXMLTProduct;
end;

function TXMLTOccupation.Get_Craft: IXMLTCraft;
begin
  Result := ChildNodes['Craft'] as IXMLTCraft;
end;

function TXMLTOccupation.Get_CurrentBaseSalary: IXMLTSalary;
begin
  Result := ChildNodes['CurrentBaseSalary'] as IXMLTSalary;
end;

function TXMLTOccupation.Get_CurrentSalaryRatioCoefRange: IXMLTFloatRange;
begin
  Result := ChildNodes['CurrentSalaryRatioCoefRange'] as IXMLTFloatRange;
end;

function TXMLTOccupation.Get_OccupationWorkDepts: Variant;
begin
  Result := ChildNodes['OccupationWorkDepts'].NodeValue;
end;

procedure TXMLTOccupation.Set_OccupationWorkDepts(Value: Variant);
begin
  ChildNodes['OccupationWorkDepts'].NodeValue := Value;
end;

function TXMLTOccupation.Get_OccupationProfessions: Variant;
begin
  Result := ChildNodes['OccupationProfessions'].NodeValue;
end;

procedure TXMLTOccupation.Set_OccupationProfessions(Value: Variant);
begin
  ChildNodes['OccupationProfessions'].NodeValue := Value;
end;

end.
