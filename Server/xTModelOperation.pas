
{*****************************************************************************}
{                                                                             }
{                              XML Data Binding                               }
{                                                                             }
{         Generated on: 21.2.2007 15:17:29                                    }
{       Generated from: XMLSchemas\Public\TModelOperation.xsd                 }
{                                                                             }
{*****************************************************************************}

unit xTModelOperation;

interface

uses
  xmldom, XMLDoc, XMLIntf, xTProfession, xTDept, xTProduct, xTModelStage,
  xTOperationType;

type

{ Forward Decls }

  IXMLTModelOperation = interface;

{ IXMLTModelOperation }

  IXMLTModelOperation = interface(IXMLNode)
    ['{350759DD-526D-4F1C-B2BD-3BA6FC5AD926}']
    { Property Accessors }
    function Get_OperationNo: Variant;
    function Get_OperationVariantNo: Variant;
    function Get_OperationType: IXMLTOperationType;
    function Get_OperationDept: IXMLTDept;
    function Get_Profession: IXMLTProfession;
    function Get_EffortCoef: Variant;
    function Get_HourTechQuantity: Variant;
    function Get_SetupProfession: IXMLTProfession;
    function Get_SetupEffortCoef: Variant;
    function Get_SetupHourTechQuantity: Variant;
    function Get_ProgramToolProduct: IXMLTProduct;
    function Get_SpecificToolProduct: IXMLTProduct;
    function Get_SpecificToolDetailTechQuantity: Variant;
    function Get_TypicalToolProduct: IXMLTProduct;
    function Get_TypicalToolDetailTechQuantity: Variant;
    function Get_TreatmentBeginWorkdayNo: Variant;
    function Get_TreatmentWorkdays: Variant;
    function Get_HasSpecialControl: Variant;
    function Get_Notes: Variant;
    function Get_SetupCount: Variant;
    function Get_ModelStage: IXMLTModelStage;
    procedure Set_OperationNo(Value: Variant);
    procedure Set_OperationVariantNo(Value: Variant);
    procedure Set_EffortCoef(Value: Variant);
    procedure Set_HourTechQuantity(Value: Variant);
    procedure Set_SetupEffortCoef(Value: Variant);
    procedure Set_SetupHourTechQuantity(Value: Variant);
    procedure Set_SpecificToolDetailTechQuantity(Value: Variant);
    procedure Set_TypicalToolDetailTechQuantity(Value: Variant);
    procedure Set_TreatmentBeginWorkdayNo(Value: Variant);
    procedure Set_TreatmentWorkdays(Value: Variant);
    procedure Set_HasSpecialControl(Value: Variant);
    procedure Set_Notes(Value: Variant);
    procedure Set_SetupCount(Value: Variant);
    { Methods & Properties }
    property OperationNo: Variant read Get_OperationNo write Set_OperationNo;
    property OperationVariantNo: Variant read Get_OperationVariantNo write Set_OperationVariantNo;
    property OperationType: IXMLTOperationType read Get_OperationType;
    property OperationDept: IXMLTDept read Get_OperationDept;
    property Profession: IXMLTProfession read Get_Profession;
    property EffortCoef: Variant read Get_EffortCoef write Set_EffortCoef;
    property HourTechQuantity: Variant read Get_HourTechQuantity write Set_HourTechQuantity;
    property SetupProfession: IXMLTProfession read Get_SetupProfession;
    property SetupEffortCoef: Variant read Get_SetupEffortCoef write Set_SetupEffortCoef;
    property SetupHourTechQuantity: Variant read Get_SetupHourTechQuantity write Set_SetupHourTechQuantity;
    property ProgramToolProduct: IXMLTProduct read Get_ProgramToolProduct;
    property SpecificToolProduct: IXMLTProduct read Get_SpecificToolProduct;
    property SpecificToolDetailTechQuantity: Variant read Get_SpecificToolDetailTechQuantity write Set_SpecificToolDetailTechQuantity;
    property TypicalToolProduct: IXMLTProduct read Get_TypicalToolProduct;
    property TypicalToolDetailTechQuantity: Variant read Get_TypicalToolDetailTechQuantity write Set_TypicalToolDetailTechQuantity;
    property TreatmentBeginWorkdayNo: Variant read Get_TreatmentBeginWorkdayNo write Set_TreatmentBeginWorkdayNo;
    property TreatmentWorkdays: Variant read Get_TreatmentWorkdays write Set_TreatmentWorkdays;
    property HasSpecialControl: Variant read Get_HasSpecialControl write Set_HasSpecialControl;
    property Notes: Variant read Get_Notes write Set_Notes;
    property SetupCount: Variant read Get_SetupCount write Set_SetupCount;
    property ModelStage: IXMLTModelStage read Get_ModelStage;
  end;

{ Forward Decls }

  TXMLTModelOperation = class;

{ TXMLTModelOperation }

  TXMLTModelOperation = class(TXMLNode, IXMLTModelOperation)
  protected
    { IXMLTModelOperation }
    function Get_OperationNo: Variant;
    function Get_OperationVariantNo: Variant;
    function Get_OperationType: IXMLTOperationType;
    function Get_OperationDept: IXMLTDept;
    function Get_Profession: IXMLTProfession;
    function Get_EffortCoef: Variant;
    function Get_HourTechQuantity: Variant;
    function Get_SetupProfession: IXMLTProfession;
    function Get_SetupEffortCoef: Variant;
    function Get_SetupHourTechQuantity: Variant;
    function Get_ProgramToolProduct: IXMLTProduct;
    function Get_SpecificToolProduct: IXMLTProduct;
    function Get_SpecificToolDetailTechQuantity: Variant;
    function Get_TypicalToolProduct: IXMLTProduct;
    function Get_TypicalToolDetailTechQuantity: Variant;
    function Get_TreatmentBeginWorkdayNo: Variant;
    function Get_TreatmentWorkdays: Variant;
    function Get_HasSpecialControl: Variant;
    function Get_Notes: Variant;
    function Get_SetupCount: Variant;
    function Get_ModelStage: IXMLTModelStage;
    procedure Set_OperationNo(Value: Variant);
    procedure Set_OperationVariantNo(Value: Variant);
    procedure Set_EffortCoef(Value: Variant);
    procedure Set_HourTechQuantity(Value: Variant);
    procedure Set_SetupEffortCoef(Value: Variant);
    procedure Set_SetupHourTechQuantity(Value: Variant);
    procedure Set_SpecificToolDetailTechQuantity(Value: Variant);
    procedure Set_TypicalToolDetailTechQuantity(Value: Variant);
    procedure Set_TreatmentBeginWorkdayNo(Value: Variant);
    procedure Set_TreatmentWorkdays(Value: Variant);
    procedure Set_HasSpecialControl(Value: Variant);
    procedure Set_Notes(Value: Variant);
    procedure Set_SetupCount(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTModelOperation;
function LoadUnknown(const FileName: WideString): IXMLTModelOperation;
function NewUnknown: IXMLTModelOperation;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTModelOperation;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTModelOperation, TargetNamespace) as IXMLTModelOperation;
end;

function LoadUnknown(const FileName: WideString): IXMLTModelOperation;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTModelOperation, TargetNamespace) as IXMLTModelOperation;
end;

function NewUnknown: IXMLTModelOperation;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTModelOperation, TargetNamespace) as IXMLTModelOperation;
end;

{ TXMLTModelOperation }

procedure TXMLTModelOperation.AfterConstruction;
begin
  RegisterChildNode('OperationType', TXMLTOperationType);
  RegisterChildNode('OperationDept', TXMLTDept);
  RegisterChildNode('Profession', TXMLTProfession);
  RegisterChildNode('SetupProfession', TXMLTProfession);
  RegisterChildNode('ProgramToolProduct', TXMLTProduct);
  RegisterChildNode('SpecificToolProduct', TXMLTProduct);
  RegisterChildNode('TypicalToolProduct', TXMLTProduct);
  RegisterChildNode('ModelStage', TXMLTModelStage);
  inherited;
end;

function TXMLTModelOperation.Get_OperationNo: Variant;
begin
  Result := ChildNodes['OperationNo'].NodeValue;
end;

procedure TXMLTModelOperation.Set_OperationNo(Value: Variant);
begin
  ChildNodes['OperationNo'].NodeValue := Value;
end;

function TXMLTModelOperation.Get_OperationVariantNo: Variant;
begin
  Result := ChildNodes['OperationVariantNo'].NodeValue;
end;

procedure TXMLTModelOperation.Set_OperationVariantNo(Value: Variant);
begin
  ChildNodes['OperationVariantNo'].NodeValue := Value;
end;

function TXMLTModelOperation.Get_OperationType: IXMLTOperationType;
begin
  Result := ChildNodes['OperationType'] as IXMLTOperationType;
end;

function TXMLTModelOperation.Get_OperationDept: IXMLTDept;
begin
  Result := ChildNodes['OperationDept'] as IXMLTDept;
end;

function TXMLTModelOperation.Get_Profession: IXMLTProfession;
begin
  Result := ChildNodes['Profession'] as IXMLTProfession;
end;

function TXMLTModelOperation.Get_EffortCoef: Variant;
begin
  Result := ChildNodes['EffortCoef'].NodeValue;
end;

procedure TXMLTModelOperation.Set_EffortCoef(Value: Variant);
begin
  ChildNodes['EffortCoef'].NodeValue := Value;
end;

function TXMLTModelOperation.Get_HourTechQuantity: Variant;
begin
  Result := ChildNodes['HourTechQuantity'].NodeValue;
end;

procedure TXMLTModelOperation.Set_HourTechQuantity(Value: Variant);
begin
  ChildNodes['HourTechQuantity'].NodeValue := Value;
end;

function TXMLTModelOperation.Get_SetupProfession: IXMLTProfession;
begin
  Result := ChildNodes['SetupProfession'] as IXMLTProfession;
end;

function TXMLTModelOperation.Get_SetupEffortCoef: Variant;
begin
  Result := ChildNodes['SetupEffortCoef'].NodeValue;
end;

procedure TXMLTModelOperation.Set_SetupEffortCoef(Value: Variant);
begin
  ChildNodes['SetupEffortCoef'].NodeValue := Value;
end;

function TXMLTModelOperation.Get_SetupHourTechQuantity: Variant;
begin
  Result := ChildNodes['SetupHourTechQuantity'].NodeValue;
end;

procedure TXMLTModelOperation.Set_SetupHourTechQuantity(Value: Variant);
begin
  ChildNodes['SetupHourTechQuantity'].NodeValue := Value;
end;

function TXMLTModelOperation.Get_ProgramToolProduct: IXMLTProduct;
begin
  Result := ChildNodes['ProgramToolProduct'] as IXMLTProduct;
end;

function TXMLTModelOperation.Get_SpecificToolProduct: IXMLTProduct;
begin
  Result := ChildNodes['SpecificToolProduct'] as IXMLTProduct;
end;

function TXMLTModelOperation.Get_SpecificToolDetailTechQuantity: Variant;
begin
  Result := ChildNodes['SpecificToolDetailTechQuantity'].NodeValue;
end;

procedure TXMLTModelOperation.Set_SpecificToolDetailTechQuantity(Value: Variant);
begin
  ChildNodes['SpecificToolDetailTechQuantity'].NodeValue := Value;
end;

function TXMLTModelOperation.Get_TypicalToolProduct: IXMLTProduct;
begin
  Result := ChildNodes['TypicalToolProduct'] as IXMLTProduct;
end;

function TXMLTModelOperation.Get_TypicalToolDetailTechQuantity: Variant;
begin
  Result := ChildNodes['TypicalToolDetailTechQuantity'].NodeValue;
end;

procedure TXMLTModelOperation.Set_TypicalToolDetailTechQuantity(Value: Variant);
begin
  ChildNodes['TypicalToolDetailTechQuantity'].NodeValue := Value;
end;

function TXMLTModelOperation.Get_TreatmentBeginWorkdayNo: Variant;
begin
  Result := ChildNodes['TreatmentBeginWorkdayNo'].NodeValue;
end;

procedure TXMLTModelOperation.Set_TreatmentBeginWorkdayNo(Value: Variant);
begin
  ChildNodes['TreatmentBeginWorkdayNo'].NodeValue := Value;
end;

function TXMLTModelOperation.Get_TreatmentWorkdays: Variant;
begin
  Result := ChildNodes['TreatmentWorkdays'].NodeValue;
end;

procedure TXMLTModelOperation.Set_TreatmentWorkdays(Value: Variant);
begin
  ChildNodes['TreatmentWorkdays'].NodeValue := Value;
end;

function TXMLTModelOperation.Get_HasSpecialControl: Variant;
begin
  Result := ChildNodes['HasSpecialControl'].NodeValue;
end;

procedure TXMLTModelOperation.Set_HasSpecialControl(Value: Variant);
begin
  ChildNodes['HasSpecialControl'].NodeValue := Value;
end;

function TXMLTModelOperation.Get_Notes: Variant;
begin
  Result := ChildNodes['Notes'].NodeValue;
end;

procedure TXMLTModelOperation.Set_Notes(Value: Variant);
begin
  ChildNodes['Notes'].NodeValue := Value;
end;

function TXMLTModelOperation.Get_SetupCount: Variant;
begin
  Result := ChildNodes['SetupCount'].NodeValue;
end;

procedure TXMLTModelOperation.Set_SetupCount(Value: Variant);
begin
  ChildNodes['SetupCount'].NodeValue := Value;
end;

function TXMLTModelOperation.Get_ModelStage: IXMLTModelStage;
begin
  Result := ChildNodes['ModelStage'] as IXMLTModelStage;
end;

end.
