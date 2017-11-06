unit fProcessConcreteOperationFieldEditFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fTreeOnlyNodeFieldEditFrame, DB, AbmesFields, DBClient,
  AbmesClientDataSet, ActnList, ComCtrls, ToolWin, Buttons, JvExMask,
  JvToolEdit, JvDBControls, StdCtrls, Mask, DBCtrls, ExtCtrls, uDocUtils,
  System.Actions;

type
  TfrProcessConcreteOperationFieldEditFrame = class(TTreeOnlyNodeFieldEditFrame)
    cdsProcessConcreteOperation: TAbmesClientDataSet;
    cdsProcessConcreteOperationPRC_CONCRETE_OP_CODE: TAbmesFloatField;
    cdsProcessConcreteOperationPARENT_PRC_CONCRETE_OP_CODE: TAbmesFloatField;
    cdsProcessConcreteOperationPRC_CONCRETE_OP_LOCAL_NO: TAbmesFloatField;
    cdsProcessConcreteOperationPRC_CONCRETE_OP_NAME: TAbmesWideStringField;
    cdsProcessConcreteOperationPRC_CONCRETE_OP_SHORT_NAME: TAbmesWideStringField;
    cdsProcessConcreteOperationIS_GROUP: TAbmesFloatField;
    cdsProcessConcreteOperationPARENT_FULL_NO: TAbmesWideStringField;
    cdsProcessConcreteOperationDOC_BRANCH_CODE: TAbmesFloatField;
    cdsProcessConcreteOperationHAS_DOC_ITEMS: TAbmesFloatField;
    cdsProcessConcreteOperationDOC_PRODUCT_CODE: TAbmesFloatField;
    cdsProcessConcreteOperationDEACTIVATION_DATE: TAbmesSQLTimeStampField;
    cdsProcessConcreteOperationIS_INACTIVE: TAbmesFloatField;
    cdsProcessConcreteOperationDOC_CODE: TAbmesFloatField;
    cdsProcessConcreteOperation_PRC_CONCRETE_OP_DISPLAY_NAME: TAbmesWideStringField;
    cdsProcessConcreteOperationPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsProcessConcreteOperationPRODUCT_DOC_CODE: TAbmesFloatField;
    cdsProcessConcreteOperationPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    procedure cdsProcessConcreteOperationCalcFields(DataSet: TDataSet);
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
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses
  fProcessConcreteOperationsTree, uClientTypes, StrUtils, dMain;

resourcestring
  SNoMatchingProcessConcreteAction = 'Не съществува Познавателен Оперант с такъв номер';
  SEditTreeNodeButtonHint = 'Избор от Класификатор на Познавателни Операнти';
  SNodeNotAnInstance = 'Избрания Процес трябва да бъде единичен';
  SProcessConcreteActionIsInactive = 'Избрания Процес трябва да бъде активен';

{$R *.dfm}

{ TfrProcessConcreteOperationFieldEditFrame }

procedure TfrProcessConcreteOperationFieldEditFrame.cdsProcessConcreteOperationCalcFields(
  DataSet: TDataSet);
begin
  inherited;

  cdsProcessConcreteOperation_PRC_CONCRETE_OP_DISPLAY_NAME.AsString:=
    cdsProcessConcreteOperationPRC_CONCRETE_OP_SHORT_NAME.AsString +
    ' - ' +
    cdsProcessConcreteOperationPRC_CONCRETE_OP_NAME.AsString;
end;

constructor TfrProcessConcreteOperationFieldEditFrame.Create(
  AOwner: TComponent);
begin
  inherited;
  FieldNames:= 'PRC_CONCRETE_OP_CODE';
end;

function TfrProcessConcreteOperationFieldEditFrame.DoEditTreeNodeCode(
  ANodeCode: Integer): Integer;
begin
  Result:=
    TfmProcessConcreteOperationsTree.ShowForm(
      nil,
      nil,
      emReadOnly,
      doNone,
      ANodeCode,
      TreeDetailSelectionIfReadOnly);
end;

function TfrProcessConcreteOperationFieldEditFrame.GetDocOwnerType: TDocOwnerType;
begin
  if cdsProcessConcreteOperationIS_GROUP.AsBoolean then  
    Result:= dotProcessConcreteOperation
  else
    Result:= dotProduct;
end;

function TfrProcessConcreteOperationFieldEditFrame.GetEditTreeNodeButtonHint: string;
begin
  Result:= SEditTreeNodeButtonHint;
end;

function TfrProcessConcreteOperationFieldEditFrame.GetNodeCode(
  ANodeNo: string): Integer;
begin
  if (RightStr(ANodeNo, 1) <> '.') then
    ANodeNo:= ANodeNo + '.';

  Result:= dmMain.SvrProcesses.GetProcessConcreteOperationCodeByFullNo(ANodeNo);
end;

function TfrProcessConcreteOperationFieldEditFrame.GetTreeNodeIsInactive(
  ANodeCode: Integer): Boolean;
begin
  Result:= dmMain.SvrProcesses.GetProcessConcreteOperationIsInactive(ANodeCode);
end;

function TfrProcessConcreteOperationFieldEditFrame.IsInstance(
  ANodeCode: Integer): Boolean;
begin
  Result:= dmMain.SvrProcesses.GetProcessConcreteOperationIsInstance(ANodeCode);
end;

function TfrProcessConcreteOperationFieldEditFrame.NodeNotAnInstanceErrorMsg: string;
begin
  Result:= SNodeNotAnInstance;
end;

function TfrProcessConcreteOperationFieldEditFrame.NoMatchingNodeErrorMsg: string;
begin
  Result:= SNoMatchingProcessConcreteAction;
end;

function TfrProcessConcreteOperationFieldEditFrame.TreeNodeIsInactiveErrorMsg: string;
begin
  Result:= SProcessConcreteActionIsInactive;
end;

procedure TfrProcessConcreteOperationFieldEditFrame.UpdateTreeNode;
begin
  inherited;
  cdsProcessConcreteOperation.Params.ParamByName('PRC_CONCRETE_OP_CODE').AsInteger:= cdsTreeNodeNODE_CODE.AsInteger;
  cdsProcessConcreteOperation.Open;
  try
    cdsTreeNodeNODE_NAME.AsString:= cdsProcessConcreteOperation_PRC_CONCRETE_OP_DISPLAY_NAME.AsString;

    if cdsProcessConcreteOperationPRC_CONCRETE_OP_LOCAL_NO.IsNull then
      cdsTreeNodeNODE_NO.Clear
    else
      cdsTreeNodeNODE_NO.AsString:=
        cdsProcessConcreteOperationPARENT_FULL_NO.AsString +
        cdsProcessConcreteOperationPRC_CONCRETE_OP_LOCAL_NO.AsString + '.';

    if cdsProcessConcreteOperationIS_GROUP.AsBoolean then
      begin
        cdsTreeNodeDOC_BRANCH_CODE.AsInteger:= cdsProcessConcreteOperationDOC_BRANCH_CODE.AsInteger;
        cdsTreeNodeDOC_CODE.AsInteger:= cdsProcessConcreteOperationDOC_CODE.AsInteger;
        cdsTreeNodeHAS_DOCUMENTATION.AsBoolean:= cdsProcessConcreteOperationHAS_DOC_ITEMS.AsBoolean;
      end
    else
      begin
        cdsTreeNodeDOC_BRANCH_CODE.AsInteger:= cdsProcessConcreteOperationPRODUCT_DOC_BRANCH_CODE.AsInteger;
        cdsTreeNodeDOC_CODE.AsInteger:= cdsProcessConcreteOperationPRODUCT_DOC_CODE.AsInteger;
        cdsTreeNodeHAS_DOCUMENTATION.AsBoolean:= cdsProcessConcreteOperationPRODUCT_HAS_DOCUMENTATION.AsBoolean;
      end;
  finally
    cdsProcessConcreteOperation.Close;
  end;  { try }
end;

end.
