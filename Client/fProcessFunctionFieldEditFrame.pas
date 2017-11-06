unit fProcessFunctionFieldEditFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fTreeOnlyNodeFieldEditFrame, DB, AbmesFields, DBClient,
  AbmesClientDataSet, ActnList, ComCtrls, ToolWin, Buttons, JvExMask,
  JvToolEdit, JvDBControls, StdCtrls, Mask, DBCtrls, ExtCtrls, uDocUtils;

type
  TfrProcessFunctionFieldEditFrame = class(TTreeOnlyNodeFieldEditFrame)
    cdsProcessFunction: TAbmesClientDataSet;
    cdsProcessFunctionPRC_FUNC_CODE: TAbmesFloatField;
    cdsProcessFunctionPARENT_PRC_FUNC_CODE: TAbmesFloatField;
    cdsProcessFunctionPRC_FUNC_LOCAL_NO: TAbmesFloatField;
    cdsProcessFunctionPRC_FUNC_NAME: TAbmesWideStringField;
    cdsProcessFunctionPRC_FUNC_SHORT_NAME: TAbmesWideStringField;
    cdsProcessFunctionIS_GROUP: TAbmesFloatField;
    cdsProcessFunctionPARENT_FULL_NO: TAbmesWideStringField;
    cdsProcessFunctionDOC_BRANCH_CODE: TAbmesFloatField;
    cdsProcessFunctionDOC_CODE: TAbmesFloatField;
    cdsProcessFunctionHAS_DOC_ITEMS: TAbmesFloatField;
    cdsProcessFunction_PRC_FUNC_DISPLAY_NAME: TAbmesWideStringField;
    procedure cdsProcessFunctionCalcFields(DataSet: TDataSet);
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
  fProcessFunctionsTree, uClientTypes, StrUtils, dMain;

resourcestring
  SNoMatchingProcessFunction = 'Не съществува такава Функция за Управление в Духа на Съзидание';
  SEditTreeNodeButtonHint = 'Избор от Класификатор на Функции за Управление в Духа на Съзидание';
  SNodeNotAnInstance = 'Избрания Процес трябва да бъде единичен';
  SProcessFunctionIsInactive = 'Избрания Процес трябва да бъде активен';

{$R *.dfm}

{ TfrProcessFunctionFieldEditFrame }

function TfrProcessFunctionFieldEditFrame.RawNoWidth: Integer;
begin
  Result:= 49;
end;

procedure TfrProcessFunctionFieldEditFrame.cdsProcessFunctionCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  cdsProcessFunction_PRC_FUNC_DISPLAY_NAME.AsString:=
    cdsProcessFunctionPRC_FUNC_SHORT_NAME.AsString +
    ' - ' +
    cdsProcessFunctionPRC_FUNC_NAME.AsString;
end;

constructor TfrProcessFunctionFieldEditFrame.Create(AOwner: TComponent);
begin
  inherited;
  FieldNames:= 'PRC_FUNC_CODE';
end;

function TfrProcessFunctionFieldEditFrame.DoEditTreeNodeCode(
  ANodeCode: Integer): Integer;
begin
  Result:=
    TfmProcessFunctionsTree.ShowForm(
      nil,
      nil,
      emReadOnly,
      doNone,
      ANodeCode,
      TreeDetailSelectionIfReadOnly);
end;

function TfrProcessFunctionFieldEditFrame.GetDocOwnerType: TDocOwnerType;
begin
  Result:= dotProcessFunction;
end;

function TfrProcessFunctionFieldEditFrame.GetEditTreeNodeButtonHint: string;
begin
  Result:= SEditTreeNodeButtonHint;
end;

function TfrProcessFunctionFieldEditFrame.GetNodeCode(ANodeNo: string): Integer;
begin
  if (RightStr(ANodeNo, 1) <> '.') then
    ANodeNo:= ANodeNo + '.';

  Result:= dmMain.SvrProcesses.GetProcessFunctionCodeByFullNo(ANodeNo);
end;

function TfrProcessFunctionFieldEditFrame.GetTreeNodeIsInactive(
  ANodeCode: Integer): Boolean;
begin
  Result:= False;
end;

function TfrProcessFunctionFieldEditFrame.IsInstance(
  ANodeCode: Integer): Boolean;
begin
  Result:= dmMain.SvrProcesses.GetProcessFunctionIsInstance(ANodeCode);
end;

function TfrProcessFunctionFieldEditFrame.NodeNotAnInstanceErrorMsg: string;
begin
  Result:= SNodeNotAnInstance;
end;

function TfrProcessFunctionFieldEditFrame.NoMatchingNodeErrorMsg: string;
begin
  Result:= SNoMatchingProcessFunction;
end;

function TfrProcessFunctionFieldEditFrame.TreeNodeIsInactiveErrorMsg: string;
begin
  Result:= SProcessFunctionIsInactive;
end;

procedure TfrProcessFunctionFieldEditFrame.UpdateTreeNode;
begin
  inherited;
  cdsProcessFunction.Params.ParamByName('PRC_FUNC_CODE').AsInteger:= cdsTreeNodeNODE_CODE.AsInteger;
  cdsProcessFunction.Open;
  try
    cdsTreeNodeNODE_NAME.AsString:= cdsProcessFunction_PRC_FUNC_DISPLAY_NAME.AsString;

    if cdsProcessFunctionPRC_FUNC_LOCAL_NO.IsNull then
      cdsTreeNodeNODE_NO.Clear
    else
      cdsTreeNodeNODE_NO.AsString:=
        cdsProcessFunctionPARENT_FULL_NO.AsString +
        cdsProcessFunctionPRC_FUNC_LOCAL_NO.AsString + '.';

    cdsTreeNodeDOC_BRANCH_CODE.AsInteger:= cdsProcessFunctionDOC_BRANCH_CODE.AsInteger;
    cdsTreeNodeDOC_CODE.AsInteger:= cdsProcessFunctionDOC_CODE.AsInteger;
    cdsTreeNodeHAS_DOCUMENTATION.AsBoolean:= cdsProcessFunctionHAS_DOC_ITEMS.AsBoolean;
  finally
    cdsProcessFunction.Close;
  end;  { try }
end;

end.
