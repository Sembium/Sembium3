unit fFinClassFieldEditFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fTreeOnlyNodeFieldEditFrame, DB, AbmesFields, DBClient,
  AbmesClientDataSet, ActnList, ComCtrls, ToolWin, Buttons, JvExMask,
  JvToolEdit, JvDBControls, StdCtrls, Mask, DBCtrls, ExtCtrls, uDocUtils,
  System.Actions;

type
  TfrFinClassFieldEditFrame = class(TTreeOnlyNodeFieldEditFrame)
    cdsFinClass: TAbmesClientDataSet;
    cdsFinClassFIN_CLASS_CODE: TAbmesFloatField;
    cdsFinClassPARENT_FIN_CLASS_CODE: TAbmesFloatField;
    cdsFinClassFIN_CLASS_LOCAL_NO: TAbmesFloatField;
    cdsFinClassNAME: TAbmesWideStringField;
    cdsFinClassSHORT_NAME: TAbmesWideStringField;
    cdsFinClassIS_GROUP: TAbmesFloatField;
    cdsFinClassDOC_BRANCH_CODE: TAbmesFloatField;
    cdsFinClassDOC_CODE: TAbmesFloatField;
    cdsFinClassHAS_DOC_ITEMS: TAbmesFloatField;
    cdsFinClassPARENT_FULL_NO: TAbmesWideStringField;
    cdsFinClass_FIN_CLASS_DISPLAY_NAME: TAbmesWideStringField;
    procedure cdsFinClassCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
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
  fFinClassesTree, uClientTypes, StrUtils, dMain;

resourcestring
  SEditTreeNodeButtonHint = 'Избор от Финансов Класификатор';
  SNodeNotAnInstance = 'Избраната Финансова Статия трябва да бъде единична';
  SNoMatchingFinClass = 'Не съществува Финансова Статия с такъв номер';
  SFinClassIsInactive = 'Избраната Финансова Статия трябва да бъде активна';

{$R *.dfm}

{ TfrFinClassFieldEditFrame }

constructor TfrFinClassFieldEditFrame.Create(AOwner: TComponent);
begin
  inherited;
  FieldNames:= 'FIN_CLASS_CODE';
end;

function TfrFinClassFieldEditFrame.DoEditTreeNodeCode(ANodeCode: Integer): Integer;
begin
  Result:=
    TfmFinClassesTree.ShowForm(
      nil,
      nil,
      emReadOnly,
      doNone,
      ANodeCode,
      TreeDetailSelectionIfReadOnly);
end;

function TfrFinClassFieldEditFrame.GetDocOwnerType: TDocOwnerType;
begin
  Result:= dotFinanceClass;
end;

function TfrFinClassFieldEditFrame.GetEditTreeNodeButtonHint: string;
begin
  Result:= SEditTreeNodeButtonHint;
end;

function TfrFinClassFieldEditFrame.GetNodeCode(ANodeNo: string): Integer;
begin
  if (RightStr(ANodeNo, 1) <> '.') then
    ANodeNo:= ANodeNo + '.';

  Result:= dmMain.SvrFinance.GetFinClassCodeByFullNo(ANodeNo);
end;

function TfrFinClassFieldEditFrame.GetTreeNodeIsInactive(ANodeCode: Integer): Boolean;
begin
  Result:= False;
end;

function TfrFinClassFieldEditFrame.NodeNotAnInstanceErrorMsg: string;
begin
  Result:= SNodeNotAnInstance;
end;

function TfrFinClassFieldEditFrame.NoMatchingNodeErrorMsg: string;
begin
  Result:= SNoMatchingFinClass;
end;

function TfrFinClassFieldEditFrame.TreeNodeIsInactiveErrorMsg: string;
begin
  Result:= SFinClassIsInactive;
end;

function TfrFinClassFieldEditFrame.IsInstance(ANodeCode: Integer): Boolean;
begin
  Result:= dmMain.SvrFinance.GetFinClassIsInstance(ANodeCode);
end;

procedure TfrFinClassFieldEditFrame.cdsFinClassCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsFinClass_FIN_CLASS_DISPLAY_NAME.AsString:=
    cdsFinClassSHORT_NAME.AsString + ' - ' + cdsFinClassNAME.AsString;
end;

procedure TfrFinClassFieldEditFrame.UpdateTreeNode;
begin
  cdsFinClass.Params.ParamByName('FIN_CLASS_CODE').AsInteger:= cdsTreeNodeNODE_CODE.AsInteger;
  cdsFinClass.Open;
  try
    cdsTreeNodeNODE_NAME.AsString:= cdsFinClass_FIN_CLASS_DISPLAY_NAME.AsString;

    if cdsFinClassFIN_CLASS_LOCAL_NO.IsNull then
      cdsTreeNodeNODE_NO.Clear
    else
      cdsTreeNodeNODE_NO.AsString:=
        cdsFinClassPARENT_FULL_NO.AsString +
        cdsFinClassFIN_CLASS_LOCAL_NO.AsString + '.';

    cdsTreeNodeDOC_BRANCH_CODE.AsInteger:= cdsFinClassDOC_BRANCH_CODE.AsInteger;
    cdsTreeNodeDOC_CODE.AsInteger:= cdsFinClassDOC_CODE.AsInteger;
    cdsTreeNodeHAS_DOCUMENTATION.AsBoolean:= cdsFinClassHAS_DOC_ITEMS.AsBoolean;
  finally
    cdsFinClass.Close;
  end;  { try }
end;

end.
