unit fProcessKnowlFieldEditFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fTreeOnlyNodeFieldEditFrame, DB, AbmesFields, DBClient,
  AbmesClientDataSet, ActnList, ComCtrls, ToolWin, Buttons, JvExMask,
  JvToolEdit, JvDBControls, StdCtrls, Mask, DBCtrls, ExtCtrls, uDocUtils;

type
  TfrProcessKnowlFieldEditFrame = class(TTreeOnlyNodeFieldEditFrame)
    cdsProcessKnowl: TAbmesClientDataSet;
    cdsProcessKnowlPRC_KNOWL_CODE: TAbmesFloatField;
    cdsProcessKnowlPARENT_PRC_KNOWL_CODE: TAbmesFloatField;
    cdsProcessKnowlPRC_KNOWL_LOCAL_NO: TAbmesFloatField;
    cdsProcessKnowlPRC_KNOWL_NAME: TAbmesWideStringField;
    cdsProcessKnowlPRC_KNOWL_SHORT_NAME: TAbmesWideStringField;
    cdsProcessKnowlIS_GROUP: TAbmesFloatField;
    cdsProcessKnowlPARENT_FULL_NO: TAbmesWideStringField;
    cdsProcessKnowlDOC_BRANCH_CODE: TAbmesFloatField;
    cdsProcessKnowlDOC_CODE: TAbmesFloatField;
    cdsProcessKnowlHAS_DOC_ITEMS: TAbmesFloatField;
    cdsProcessKnowl_PRC_KNOWL_DISPLAY_NAME: TAbmesWideStringField;
    procedure cdsProcessKnowlCalcFields(DataSet: TDataSet);
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
  fProcessKnowlsTree, uClientTypes, StrUtils, dMain, uUtils;

{$R *.dfm}

resourcestring
  SNoMatchingProcessKnowl = 'Не съществува такова Познание за Управление в Духа на Съзидание';
  SEditTreeNodeButtonHint = 'Избор от Класификатор на Познания за Управление в Духа на Съзидание';
  SNodeNotAnInstance = 'Избрания Процес трябва да бъде единичен';
  SProcessKnowlIsInactive = 'Избрания Процес трябва да бъде активен';

{ TfrProcessKnowlFieldEditFrame }

function TfrProcessKnowlFieldEditFrame.RawNoWidth: Integer;
begin
  Result:= 49;
end;

procedure TfrProcessKnowlFieldEditFrame.cdsProcessKnowlCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  cdsProcessKnowl_PRC_KNOWL_DISPLAY_NAME.AsString:=
    cdsProcessKnowlPRC_KNOWL_SHORT_NAME.AsString +
    ' - ' +
    cdsProcessKnowlPRC_KNOWL_NAME.AsString;
end;

constructor TfrProcessKnowlFieldEditFrame.Create(AOwner: TComponent);
begin
  inherited;
  FieldNames:= 'PRC_KNOWL_CODE';
end;

function TfrProcessKnowlFieldEditFrame.DoEditTreeNodeCode(
  ANodeCode: Integer): Integer;
begin
  Result:=
    TfmProcessKnowlsTree.ShowForm(
      nil,
      nil,
      emReadOnly,
      doNone,
      ANodeCode,
      TreeDetailSelectionIfReadOnly);
end;

function TfrProcessKnowlFieldEditFrame.GetDocOwnerType: TDocOwnerType;
begin
  Result:= dotProcessKnowl;
end;

function TfrProcessKnowlFieldEditFrame.GetEditTreeNodeButtonHint: string;
begin
  Result:= SEditTreeNodeButtonHint;
end;

function TfrProcessKnowlFieldEditFrame.GetNodeCode(
  ANodeNo: string): Integer;
begin
  if (RightStr(ANodeNo, 1) <> '.') then
    ANodeNo:= ANodeNo + '.';

  Result:= dmMain.SvrProcesses.GetProcessKnowlCodeByFullNo(ANodeNo);
end;

function TfrProcessKnowlFieldEditFrame.GetTreeNodeIsInactive(
  ANodeCode: Integer): Boolean;
begin
  Result:= False;
end;

function TfrProcessKnowlFieldEditFrame.IsInstance(
  ANodeCode: Integer): Boolean;
begin
  Result:= dmMain.SvrProcesses.GetProcessKnowlIsInstance(ANodeCode);
end;

function TfrProcessKnowlFieldEditFrame.NodeNotAnInstanceErrorMsg: string;
begin
  Result:= SNodeNotAnInstance;
end;

function TfrProcessKnowlFieldEditFrame.NoMatchingNodeErrorMsg: string;
begin
  Result:= SNoMatchingProcessKnowl;
end;

function TfrProcessKnowlFieldEditFrame.TreeNodeIsInactiveErrorMsg: string;
begin
  Result:= SProcessKnowlIsInactive;
end;

procedure TfrProcessKnowlFieldEditFrame.UpdateTreeNode;
begin
  inherited;
  cdsProcessKnowl.Params.ParamByName('PRC_KNOWL_CODE').AsInteger:= cdsTreeNodeNODE_CODE.AsInteger;
  cdsProcessKnowl.TempOpen/
    procedure begin
      cdsTreeNodeNODE_NAME.AsString:= cdsProcessKnowl_PRC_KNOWL_DISPLAY_NAME.AsString;

      if cdsProcessKnowlPRC_KNOWL_LOCAL_NO.IsNull then
        cdsTreeNodeNODE_NO.Clear
      else
        cdsTreeNodeNODE_NO.AsString:=
          cdsProcessKnowlPARENT_FULL_NO.AsString +
          cdsProcessKnowlPRC_KNOWL_LOCAL_NO.AsString + '.';

      cdsTreeNodeDOC_BRANCH_CODE.AsInteger:= cdsProcessKnowlDOC_BRANCH_CODE.AsInteger;
      cdsTreeNodeDOC_CODE.AsInteger:= cdsProcessKnowlDOC_CODE.AsInteger;
      cdsTreeNodeHAS_DOCUMENTATION.AsBoolean:= cdsProcessKnowlHAS_DOC_ITEMS.AsBoolean;
    end;
end;

end.
