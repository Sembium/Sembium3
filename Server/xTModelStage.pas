
{*************************************************************************}
{                                                                         }
{                            XML Data Binding                             }
{                                                                         }
{         Generated on: 25.8.2005 15:41:35                                }
{       Generated from: XMLSchemas\Public\TModelStage.xsd                 }
{                                                                         }
{*************************************************************************}

unit xTModelStage;

interface

uses xmldom, XMLDoc, XMLIntf, xTDept, xTModelLine;

type

{ Forward Decls }

  IXMLTModelStage = interface;

{ IXMLTModelStage }

  IXMLTModelStage = interface(IXMLNode)
    ['{4CE0827D-8486-4AA2-AD9E-CBB360FED9A5}']
    { Property Accessors }
    function Get_StageNo: Variant;
    function Get_StageDept: IXMLTDept;
    function Get_TreatmentWorkdays: Variant;
    function Get_OutgoingWorkdays: Variant;
    function Get_IsAutoMovement: Variant;
    function Get_ExternalWorkPrice: Variant;
    function Get_ModelLine: IXMLTModelLine;
    procedure Set_StageNo(Value: Variant);
    procedure Set_TreatmentWorkdays(Value: Variant);
    procedure Set_OutgoingWorkdays(Value: Variant);
    procedure Set_IsAutoMovement(Value: Variant);
    procedure Set_ExternalWorkPrice(Value: Variant);
    { Methods & Properties }
    property StageNo: Variant read Get_StageNo write Set_StageNo;
    property StageDept: IXMLTDept read Get_StageDept;
    property TreatmentWorkdays: Variant read Get_TreatmentWorkdays write Set_TreatmentWorkdays;
    property OutgoingWorkdays: Variant read Get_OutgoingWorkdays write Set_OutgoingWorkdays;
    property IsAutoMovement: Variant read Get_IsAutoMovement write Set_IsAutoMovement;
    property ExternalWorkPrice: Variant read Get_ExternalWorkPrice write Set_ExternalWorkPrice;
    property ModelLine: IXMLTModelLine read Get_ModelLine;
  end;

{ Forward Decls }

  TXMLTModelStage = class;

{ TXMLTModelStage }

  TXMLTModelStage = class(TXMLNode, IXMLTModelStage)
  protected
    { IXMLTModelStage }
    function Get_StageNo: Variant;
    function Get_StageDept: IXMLTDept;
    function Get_TreatmentWorkdays: Variant;
    function Get_OutgoingWorkdays: Variant;
    function Get_IsAutoMovement: Variant;
    function Get_ExternalWorkPrice: Variant;
    function Get_ModelLine: IXMLTModelLine;
    procedure Set_StageNo(Value: Variant);
    procedure Set_TreatmentWorkdays(Value: Variant);
    procedure Set_OutgoingWorkdays(Value: Variant);
    procedure Set_IsAutoMovement(Value: Variant);
    procedure Set_ExternalWorkPrice(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTModelStage;
function LoadUnknown(const FileName: WideString): IXMLTModelStage;
function NewUnknown: IXMLTModelStage;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTModelStage;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTModelStage, TargetNamespace) as IXMLTModelStage;
end;

function LoadUnknown(const FileName: WideString): IXMLTModelStage;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTModelStage, TargetNamespace) as IXMLTModelStage;
end;

function NewUnknown: IXMLTModelStage;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTModelStage, TargetNamespace) as IXMLTModelStage;
end;

{ TXMLTModelStage }

procedure TXMLTModelStage.AfterConstruction;
begin
  RegisterChildNode('StageDept', TXMLTDept);
  RegisterChildNode('ModelLine', TXMLTModelLine);
  inherited;
end;

function TXMLTModelStage.Get_StageNo: Variant;
begin
  Result := ChildNodes['StageNo'].NodeValue;
end;

procedure TXMLTModelStage.Set_StageNo(Value: Variant);
begin
  ChildNodes['StageNo'].NodeValue := Value;
end;

function TXMLTModelStage.Get_StageDept: IXMLTDept;
begin
  Result := ChildNodes['StageDept'] as IXMLTDept;
end;

function TXMLTModelStage.Get_TreatmentWorkdays: Variant;
begin
  Result := ChildNodes['TreatmentWorkdays'].NodeValue;
end;

procedure TXMLTModelStage.Set_TreatmentWorkdays(Value: Variant);
begin
  ChildNodes['TreatmentWorkdays'].NodeValue := Value;
end;

function TXMLTModelStage.Get_OutgoingWorkdays: Variant;
begin
  Result := ChildNodes['OutgoingWorkdays'].NodeValue;
end;

procedure TXMLTModelStage.Set_OutgoingWorkdays(Value: Variant);
begin
  ChildNodes['OutgoingWorkdays'].NodeValue := Value;
end;

function TXMLTModelStage.Get_IsAutoMovement: Variant;
begin
  Result := ChildNodes['IsAutoMovement'].NodeValue;
end;

procedure TXMLTModelStage.Set_IsAutoMovement(Value: Variant);
begin
  ChildNodes['IsAutoMovement'].NodeValue := Value;
end;

function TXMLTModelStage.Get_ExternalWorkPrice: Variant;
begin
  Result := ChildNodes['ExternalWorkPrice'].NodeValue;
end;

procedure TXMLTModelStage.Set_ExternalWorkPrice(Value: Variant);
begin
  ChildNodes['ExternalWorkPrice'].NodeValue := Value;
end;

function TXMLTModelStage.Get_ModelLine: IXMLTModelLine;
begin
  Result := ChildNodes['ModelLine'] as IXMLTModelLine;
end;

end.
