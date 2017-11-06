unit fProcessBaseOperationFieldEditFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fTreeOnlyNodeFieldEditFrame, DB, AbmesFields, DBClient,
  AbmesClientDataSet, ActnList, ComCtrls, ToolWin, Buttons, JvExMask,
  JvToolEdit, JvDBControls, StdCtrls, Mask, DBCtrls, ExtCtrls, uDocUtils;

type
  TfrProcessBaseOperationFieldEditFrame = class(TTreeOnlyNodeFieldEditFrame)
    cdsProcessBaseOperation: TAbmesClientDataSet;
    cdsProcessBaseOperationPRC_BASE_OP_CODE: TAbmesFloatField;
    cdsProcessBaseOperationPARENT_PRC_BASE_OP_CODE: TAbmesFloatField;
    cdsProcessBaseOperationPRC_BASE_OP_LOCAL_NO: TAbmesFloatField;
    cdsProcessBaseOperationPRC_BASE_OP_NAME: TAbmesWideStringField;
    cdsProcessBaseOperationPRC_BASE_OP_SHORT_NAME: TAbmesWideStringField;
    cdsProcessBaseOperationIS_GROUP: TAbmesFloatField;
    cdsProcessBaseOperationPARENT_FULL_NO: TAbmesWideStringField;
    cdsProcessBaseOperationDOC_BRANCH_CODE: TAbmesFloatField;
    cdsProcessBaseOperationDOC_CODE: TAbmesFloatField;
    cdsProcessBaseOperationHAS_DOC_ITEMS: TAbmesFloatField;
    cdsProcessBaseOperationDOC_PRODUCT_CODE: TAbmesFloatField;
    cdsProcessBaseOperationPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsProcessBaseOperationPRODUCT_DOC_CODE: TAbmesFloatField;
    cdsProcessBaseOperationPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    cdsProcessBaseOperation_PRC_BASE_OP_DISPLAY_NAME: TAbmesWideStringField;
    procedure cdsProcessBaseOperationCalcFields(DataSet: TDataSet);
  protected
    procedure UpdateTreeNode; override;
    function NoMatchingNodeErrorMsg: string; override;
    function NodeNotAnInstanceErrorMsg: string; override;
    function GetNodeCode(ANodeNo: string): Integer; override;
    function GetEditTreeNodeButtonHint: string; override;
    function DoEditTreeNodeCode(ANodeCode: Integer): Integer; override;
    function IsInstance(ANodeCode: Integer): Boolean; override;
    function TreeNodeIsInactiveErrorMsg: string; override;
    function GetTreeNodeIsInactive(ANodeCode: Integer): Boolean; override;
    function GetDocOwnerType: TDocOwnerType; override;
    function RawNoWidth: Integer; override;
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses
  fProcessBaseOperationsTree, uClientTypes, StrUtils, dMain;

resourcestring
  SNoMatchingProcessBaseOperation = 'Не съществува Познавателен Оператор с такъв номер';
  SEditTreeNodeButtonHint = 'Избор от Структура на Познавателни Оператори';
  SNodeNotAnInstance = 'Избрания Процес трябва да бъде единичен';
  SProcessBaseOperationIsInactive = 'Избрания Процес трябва да бъде активен';

{$R *.dfm}

{ TfrProcessBaseOperationFieldEditFrame }

function TfrProcessBaseOperationFieldEditFrame.RawNoWidth: Integer;
begin
  Result:= 49;
end;

procedure TfrProcessBaseOperationFieldEditFrame.cdsProcessBaseOperationCalcFields(
  DataSet: TDataSet);
begin
  inherited;

  cdsProcessBaseOperation_PRC_BASE_OP_DISPLAY_NAME.AsString:=
    cdsProcessBaseOperationPRC_BASE_OP_SHORT_NAME.AsString +
    ' - ' +
    cdsProcessBaseOperationPRC_BASE_OP_NAME.AsString;
end;

constructor TfrProcessBaseOperationFieldEditFrame.Create(AOwner: TComponent);
begin
  inherited;
  FieldNames:= 'PRC_BASE_OP_CODE';
end;

function TfrProcessBaseOperationFieldEditFrame.DoEditTreeNodeCode(
  ANodeCode: Integer): Integer;
begin
  Result:=
    TfmProcessBaseOperationsTree.ShowForm(
      nil,
      nil,
      emReadOnly,
      doNone,
      ANodeCode,
      TreeDetailSelectionIfReadOnly);
end;

function TfrProcessBaseOperationFieldEditFrame.GetDocOwnerType: TDocOwnerType;
begin
  if cdsProcessBaseOperationIS_GROUP.AsBoolean then
    Result:= dotProcessBaseOperation
  else
    Result:= dotProduct;
end;

function TfrProcessBaseOperationFieldEditFrame.GetEditTreeNodeButtonHint: string;
begin
  Result:= SEditTreeNodeButtonHint;
end;

function TfrProcessBaseOperationFieldEditFrame.GetNodeCode(
  ANodeNo: string): Integer;
begin
  if (RightStr(ANodeNo, 1) <> '.') then
    ANodeNo:= ANodeNo + '.';

  Result:= dmMain.SvrProcesses.GetProcessBaseOperationCodeByFullNo(ANodeNo);
end;

function TfrProcessBaseOperationFieldEditFrame.GetTreeNodeIsInactive(
  ANodeCode: Integer): Boolean;
begin
  Result:= False;
end;

function TfrProcessBaseOperationFieldEditFrame.IsInstance(
  ANodeCode: Integer): Boolean;
begin
  Result:= dmMain.SvrProcesses.GetProcessBaseOperationIsInstance(ANodeCode);
end;

function TfrProcessBaseOperationFieldEditFrame.NodeNotAnInstanceErrorMsg: string;
begin
  Result:= SNodeNotAnInstance;
end;

function TfrProcessBaseOperationFieldEditFrame.NoMatchingNodeErrorMsg: string;
begin
  Result:= SNoMatchingProcessBaseOperation;
end;

function TfrProcessBaseOperationFieldEditFrame.TreeNodeIsInactiveErrorMsg: string;
begin
  Result:= SProcessBaseOperationIsInactive;
end;

procedure TfrProcessBaseOperationFieldEditFrame.UpdateTreeNode;
begin
  inherited;
  cdsProcessBaseOperation.Params.ParamByName('PRC_BASE_OP_CODE').AsInteger:= cdsTreeNodeNODE_CODE.AsInteger;
  cdsProcessBaseOperation.Open;
  try
    cdsTreeNodeNODE_NAME.AsString:= cdsProcessBaseOperation_PRC_BASE_OP_DISPLAY_NAME.AsString;

    if cdsProcessBaseOperationPRC_BASE_OP_LOCAL_NO.IsNull then
      cdsTreeNodeNODE_NO.Clear
    else
      cdsTreeNodeNODE_NO.AsString:=
        cdsProcessBaseOperationPARENT_FULL_NO.AsString +
        cdsProcessBaseOperationPRC_BASE_OP_LOCAL_NO.AsString + '.';

    if cdsProcessBaseOperationIS_GROUP.AsBoolean then
      begin
        cdsTreeNodeDOC_BRANCH_CODE.AsInteger:= cdsProcessBaseOperationDOC_BRANCH_CODE.AsInteger;
        cdsTreeNodeDOC_CODE.AsInteger:= cdsProcessBaseOperationDOC_CODE.AsInteger;
        cdsTreeNodeHAS_DOCUMENTATION.AsBoolean:= cdsProcessBaseOperationHAS_DOC_ITEMS.AsBoolean;
      end
    else
      begin
        cdsTreeNodeDOC_BRANCH_CODE.AsInteger:= cdsProcessBaseOperationPRODUCT_DOC_BRANCH_CODE.AsInteger;
        cdsTreeNodeDOC_CODE.AsInteger:= cdsProcessBaseOperationPRODUCT_DOC_CODE.AsInteger;
        cdsTreeNodeHAS_DOCUMENTATION.AsBoolean:= cdsProcessBaseOperationPRODUCT_HAS_DOCUMENTATION.AsBoolean;
      end;
  finally
    cdsProcessBaseOperation.Close;
  end;  { try }
end;

end.
