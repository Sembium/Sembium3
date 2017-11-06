
{********************************************************************************}
{                                                                                }
{                                XML Data Binding                                }
{                                                                                }
{         Generated on: 10.1.2006 17:40:32                                       }
{       Generated from: XMLSchemas\Public\TOperationMovement.xsd                 }
{                                                                                }
{********************************************************************************}

unit xTOperationMovement;

interface

uses
  xmldom, XMLDoc, XMLIntf, xTDateTime, xTDate, xTTeam, xTOperationMovementType,
  xTModelOperation, xTEmployee, xTDept;

type

{ Forward Decls }

  IXMLTOperationMovement = interface;

{ IXMLTOperationMovement }

  IXMLTOperationMovement = interface(IXMLNode)
    ['{C9D2192E-68E9-4426-95F8-3FD5A7D30D44}']
    { Property Accessors }
    function Get_OperationMovementBranch: IXMLTDept;
    function Get_OperationMovementNo: Variant;
    function Get_OperationMovementType: IXMLTOperationMovementType;
    function Get_OperationMovementDateTime: IXMLTDateTime;
    function Get_FromOperation: IXMLTModelOperation;
    function Get_ToOperation: IXMLTModelOperation;
    function Get_ToDept: IXMLTDept;
    function Get_FromEmployee: IXMLTEmployee;
    function Get_FromTeam: IXMLTTeam;
    function Get_ToEmployee: IXMLTEmployee;
    function Get_ToTeam: IXMLTTeam;
    function Get_WasteDocNo: Variant;
    function Get_WasteDocDate: IXMLTDate;
    function Get_WorkDetailTechQuantity: Variant;
    function Get_TotalDetailTechQuantity: Variant;
    function Get_QADetailTechQuantity: Variant;
    function Get_WorkProductTechQuantity: Variant;
    function Get_TotalProductTechQuantity: Variant;
    function Get_QAProductTechQuantity: Variant;
    function Get_QAEmployee: IXMLTEmployee;
    function Get_CreateEmployee: IXMLTEmployee;
    function Get_CreateDateTime: IXMLTDateTime;
    function Get_StornoEmployee: IXMLTEmployee;
    function Get_StornoDateTime: IXMLTDateTime;
    function Get_TotalPrice: Variant;
    procedure Set_OperationMovementNo(Value: Variant);
    procedure Set_WasteDocNo(Value: Variant);
    procedure Set_WorkDetailTechQuantity(Value: Variant);
    procedure Set_TotalDetailTechQuantity(Value: Variant);
    procedure Set_QADetailTechQuantity(Value: Variant);
    procedure Set_WorkProductTechQuantity(Value: Variant);
    procedure Set_TotalProductTechQuantity(Value: Variant);
    procedure Set_QAProductTechQuantity(Value: Variant);
    procedure Set_TotalPrice(Value: Variant);
    { Methods & Properties }
    property OperationMovementBranch: IXMLTDept read Get_OperationMovementBranch;
    property OperationMovementNo: Variant read Get_OperationMovementNo write Set_OperationMovementNo;
    property OperationMovementType: IXMLTOperationMovementType read Get_OperationMovementType;
    property OperationMovementDateTime: IXMLTDateTime read Get_OperationMovementDateTime;
    property FromOperation: IXMLTModelOperation read Get_FromOperation;
    property ToOperation: IXMLTModelOperation read Get_ToOperation;
    property ToDept: IXMLTDept read Get_ToDept;
    property FromEmployee: IXMLTEmployee read Get_FromEmployee;
    property FromTeam: IXMLTTeam read Get_FromTeam;
    property ToEmployee: IXMLTEmployee read Get_ToEmployee;
    property ToTeam: IXMLTTeam read Get_ToTeam;
    property WasteDocNo: Variant read Get_WasteDocNo write Set_WasteDocNo;
    property WasteDocDate: IXMLTDate read Get_WasteDocDate;
    property WorkDetailTechQuantity: Variant read Get_WorkDetailTechQuantity write Set_WorkDetailTechQuantity;
    property TotalDetailTechQuantity: Variant read Get_TotalDetailTechQuantity write Set_TotalDetailTechQuantity;
    property QADetailTechQuantity: Variant read Get_QADetailTechQuantity write Set_QADetailTechQuantity;
    property WorkProductTechQuantity: Variant read Get_WorkProductTechQuantity write Set_WorkProductTechQuantity;
    property TotalProductTechQuantity: Variant read Get_TotalProductTechQuantity write Set_TotalProductTechQuantity;
    property QAProductTechQuantity: Variant read Get_QAProductTechQuantity write Set_QAProductTechQuantity;
    property QAEmployee: IXMLTEmployee read Get_QAEmployee;
    property CreateEmployee: IXMLTEmployee read Get_CreateEmployee;
    property CreateDateTime: IXMLTDateTime read Get_CreateDateTime;
    property StornoEmployee: IXMLTEmployee read Get_StornoEmployee;
    property StornoDateTime: IXMLTDateTime read Get_StornoDateTime;
    property TotalPrice: Variant read Get_TotalPrice write Set_TotalPrice;
  end;

{ Forward Decls }

  TXMLTOperationMovement = class;

{ TXMLTOperationMovement }

  TXMLTOperationMovement = class(TXMLNode, IXMLTOperationMovement)
  protected
    { IXMLTOperationMovement }
    function Get_OperationMovementBranch: IXMLTDept;
    function Get_OperationMovementNo: Variant;
    function Get_OperationMovementType: IXMLTOperationMovementType;
    function Get_OperationMovementDateTime: IXMLTDateTime;
    function Get_FromOperation: IXMLTModelOperation;
    function Get_ToOperation: IXMLTModelOperation;
    function Get_ToDept: IXMLTDept;
    function Get_FromEmployee: IXMLTEmployee;
    function Get_FromTeam: IXMLTTeam;
    function Get_ToEmployee: IXMLTEmployee;
    function Get_ToTeam: IXMLTTeam;
    function Get_WasteDocNo: Variant;
    function Get_WasteDocDate: IXMLTDate;
    function Get_WorkDetailTechQuantity: Variant;
    function Get_TotalDetailTechQuantity: Variant;
    function Get_QADetailTechQuantity: Variant;
    function Get_WorkProductTechQuantity: Variant;
    function Get_TotalProductTechQuantity: Variant;
    function Get_QAProductTechQuantity: Variant;
    function Get_QAEmployee: IXMLTEmployee;
    function Get_CreateEmployee: IXMLTEmployee;
    function Get_CreateDateTime: IXMLTDateTime;
    function Get_StornoEmployee: IXMLTEmployee;
    function Get_StornoDateTime: IXMLTDateTime;
    function Get_TotalPrice: Variant;
    procedure Set_OperationMovementNo(Value: Variant);
    procedure Set_WasteDocNo(Value: Variant);
    procedure Set_WorkDetailTechQuantity(Value: Variant);
    procedure Set_TotalDetailTechQuantity(Value: Variant);
    procedure Set_QADetailTechQuantity(Value: Variant);
    procedure Set_WorkProductTechQuantity(Value: Variant);
    procedure Set_TotalProductTechQuantity(Value: Variant);
    procedure Set_QAProductTechQuantity(Value: Variant);
    procedure Set_TotalPrice(Value: Variant);
  public
    procedure AfterConstruction; override;
  end;

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTOperationMovement;
function LoadUnknown(const FileName: WideString): IXMLTOperationMovement;
function NewUnknown: IXMLTOperationMovement;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetUnknown(Doc: IXMLDocument): IXMLTOperationMovement;
begin
  Result := Doc.GetDocBinding('Unknown', TXMLTOperationMovement, TargetNamespace) as IXMLTOperationMovement;
end;

function LoadUnknown(const FileName: WideString): IXMLTOperationMovement;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Unknown', TXMLTOperationMovement, TargetNamespace) as IXMLTOperationMovement;
end;

function NewUnknown: IXMLTOperationMovement;
begin
  Result := NewXMLDocument.GetDocBinding('Unknown', TXMLTOperationMovement, TargetNamespace) as IXMLTOperationMovement;
end;

{ TXMLTOperationMovement }

procedure TXMLTOperationMovement.AfterConstruction;
begin
  RegisterChildNode('OperationMovementBranch', TXMLTDept);
  RegisterChildNode('OperationMovementType', TXMLTOperationMovementType);
  RegisterChildNode('OperationMovementDateTime', TXMLTDateTime);
  RegisterChildNode('FromOperation', TXMLTModelOperation);
  RegisterChildNode('ToOperation', TXMLTModelOperation);
  RegisterChildNode('ToDept', TXMLTDept);
  RegisterChildNode('FromEmployee', TXMLTEmployee);
  RegisterChildNode('FromTeam', TXMLTTeam);
  RegisterChildNode('ToEmployee', TXMLTEmployee);
  RegisterChildNode('ToTeam', TXMLTTeam);
  RegisterChildNode('WasteDocDate', TXMLTDate);
  RegisterChildNode('QAEmployee', TXMLTEmployee);
  RegisterChildNode('CreateEmployee', TXMLTEmployee);
  RegisterChildNode('CreateDateTime', TXMLTDateTime);
  RegisterChildNode('StornoEmployee', TXMLTEmployee);
  RegisterChildNode('StornoDateTime', TXMLTDateTime);
  inherited;
end;

function TXMLTOperationMovement.Get_OperationMovementBranch: IXMLTDept;
begin
  Result := ChildNodes['OperationMovementBranch'] as IXMLTDept;
end;

function TXMLTOperationMovement.Get_OperationMovementNo: Variant;
begin
  Result := ChildNodes['OperationMovementNo'].NodeValue;
end;

procedure TXMLTOperationMovement.Set_OperationMovementNo(Value: Variant);
begin
  ChildNodes['OperationMovementNo'].NodeValue := Value;
end;

function TXMLTOperationMovement.Get_OperationMovementType: IXMLTOperationMovementType;
begin
  Result := ChildNodes['OperationMovementType'] as IXMLTOperationMovementType;
end;

function TXMLTOperationMovement.Get_OperationMovementDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['OperationMovementDateTime'] as IXMLTDateTime;
end;

function TXMLTOperationMovement.Get_FromOperation: IXMLTModelOperation;
begin
  Result := ChildNodes['FromOperation'] as IXMLTModelOperation;
end;

function TXMLTOperationMovement.Get_ToOperation: IXMLTModelOperation;
begin
  Result := ChildNodes['ToOperation'] as IXMLTModelOperation;
end;

function TXMLTOperationMovement.Get_ToDept: IXMLTDept;
begin
  Result := ChildNodes['ToDept'] as IXMLTDept;
end;

function TXMLTOperationMovement.Get_FromEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['FromEmployee'] as IXMLTEmployee;
end;

function TXMLTOperationMovement.Get_FromTeam: IXMLTTeam;
begin
  Result := ChildNodes['FromTeam'] as IXMLTTeam;
end;

function TXMLTOperationMovement.Get_ToEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['ToEmployee'] as IXMLTEmployee;
end;

function TXMLTOperationMovement.Get_ToTeam: IXMLTTeam;
begin
  Result := ChildNodes['ToTeam'] as IXMLTTeam;
end;

function TXMLTOperationMovement.Get_WasteDocNo: Variant;
begin
  Result := ChildNodes['WasteDocNo'].NodeValue;
end;

procedure TXMLTOperationMovement.Set_WasteDocNo(Value: Variant);
begin
  ChildNodes['WasteDocNo'].NodeValue := Value;
end;

function TXMLTOperationMovement.Get_WasteDocDate: IXMLTDate;
begin
  Result := ChildNodes['WasteDocDate'] as IXMLTDate;
end;

function TXMLTOperationMovement.Get_WorkDetailTechQuantity: Variant;
begin
  Result := ChildNodes['WorkDetailTechQuantity'].NodeValue;
end;

procedure TXMLTOperationMovement.Set_WorkDetailTechQuantity(Value: Variant);
begin
  ChildNodes['WorkDetailTechQuantity'].NodeValue := Value;
end;

function TXMLTOperationMovement.Get_TotalDetailTechQuantity: Variant;
begin
  Result := ChildNodes['TotalDetailTechQuantity'].NodeValue;
end;

procedure TXMLTOperationMovement.Set_TotalDetailTechQuantity(Value: Variant);
begin
  ChildNodes['TotalDetailTechQuantity'].NodeValue := Value;
end;

function TXMLTOperationMovement.Get_QADetailTechQuantity: Variant;
begin
  Result := ChildNodes['QADetailTechQuantity'].NodeValue;
end;

procedure TXMLTOperationMovement.Set_QADetailTechQuantity(Value: Variant);
begin
  ChildNodes['QADetailTechQuantity'].NodeValue := Value;
end;

function TXMLTOperationMovement.Get_WorkProductTechQuantity: Variant;
begin
  Result := ChildNodes['WorkProductTechQuantity'].NodeValue;
end;

procedure TXMLTOperationMovement.Set_WorkProductTechQuantity(Value: Variant);
begin
  ChildNodes['WorkProductTechQuantity'].NodeValue := Value;
end;

function TXMLTOperationMovement.Get_TotalProductTechQuantity: Variant;
begin
  Result := ChildNodes['TotalProductTechQuantity'].NodeValue;
end;

procedure TXMLTOperationMovement.Set_TotalProductTechQuantity(Value: Variant);
begin
  ChildNodes['TotalProductTechQuantity'].NodeValue := Value;
end;

function TXMLTOperationMovement.Get_QAProductTechQuantity: Variant;
begin
  Result := ChildNodes['QAProductTechQuantity'].NodeValue;
end;

procedure TXMLTOperationMovement.Set_QAProductTechQuantity(Value: Variant);
begin
  ChildNodes['QAProductTechQuantity'].NodeValue := Value;
end;

function TXMLTOperationMovement.Get_QAEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['QAEmployee'] as IXMLTEmployee;
end;

function TXMLTOperationMovement.Get_CreateEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['CreateEmployee'] as IXMLTEmployee;
end;

function TXMLTOperationMovement.Get_CreateDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['CreateDateTime'] as IXMLTDateTime;
end;

function TXMLTOperationMovement.Get_StornoEmployee: IXMLTEmployee;
begin
  Result := ChildNodes['StornoEmployee'] as IXMLTEmployee;
end;

function TXMLTOperationMovement.Get_StornoDateTime: IXMLTDateTime;
begin
  Result := ChildNodes['StornoDateTime'] as IXMLTDateTime;
end;

function TXMLTOperationMovement.Get_TotalPrice: Variant;
begin
  Result := ChildNodes['TotalPrice'].NodeValue;
end;

procedure TXMLTOperationMovement.Set_TotalPrice(Value: Variant);
begin
  ChildNodes['TotalPrice'].NodeValue := Value;
end;

end.
