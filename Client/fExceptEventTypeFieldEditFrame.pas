unit fExceptEventTypeFieldEditFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, fTreeOnlyNodeFieldEditFrame, DB, AbmesFields, DBClient, AbmesClientDataSet,
  ActnList, ComCtrls, ToolWin, Buttons, JvExMask, JvToolEdit, JvDBControls, StdCtrls, Mask, DBCtrls,
  ExtCtrls, uDocUtils, System.Actions;

type
  TfrExceptEventTypeFieldEditFrame = class(TTreeOnlyNodeFieldEditFrame)
    cdsExceptEventType: TAbmesClientDataSet;
    cdsExceptEventTypeEXCEPT_EVENT_TYPE_CODE: TAbmesFloatField;
    cdsExceptEventTypePARENT_EXCEPT_EVENT_TYPE_CODE: TAbmesFloatField;
    cdsExceptEventTypeEXCEPT_EVENT_TYPE_LOCAL_NO: TAbmesFloatField;
    cdsExceptEventTypeEXCEPT_EVENT_TYPE_NAME: TAbmesWideStringField;
    cdsExceptEventTypeEXCEPT_EVENT_TYPE_SHORT_NAME: TAbmesWideStringField;
    cdsExceptEventTypeIS_GROUP: TAbmesFloatField;
    cdsExceptEventTypePARENT_FULL_NO: TAbmesWideStringField;
    cdsExceptEventTypeDOC_BRANCH_CODE: TAbmesFloatField;
    cdsExceptEventTypeDOC_CODE: TAbmesFloatField;
    cdsExceptEventTypeHAS_DOC_ITEMS: TAbmesFloatField;
    cdsExceptEventType_EE_TYPE_DISPLAY_NAME: TAbmesWideStringField;
    procedure cdsExceptEventTypeCalcFields(DataSet: TDataSet);
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
    function RawNoWidth: Integer; override;
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses
  fExceptEventTypesTree, uClientTypes, dMain, StrUtils, uUtils;

resourcestring
  SEditTreeNodeButtonHint = 'Избор от Класификатор на Видове Недопустими Отклонения';
  SNodeNotAnInstance = 'Избраният Вид Недопустими Отклонения трябва да бъде единичен';
  SNoMatchingExceptEventTypeClass = 'Не съществува Вид Недопустими Отклонения с такъв номер';
  SExceptEventTypeIsInactive = 'Избраният Вид Недопустими Отклонения трябва да бъде активен';

{$R *.dfm}

{ TfrExceptEventTypeFieldEditFrame }

function TfrExceptEventTypeFieldEditFrame.RawNoWidth: Integer;
begin
  Result:= 59;
end;

constructor TfrExceptEventTypeFieldEditFrame.Create(AOwner: TComponent);
begin
  inherited;
  FieldNames:= 'EXCEPT_EVENT_TYPE_CODE';
end;

function TfrExceptEventTypeFieldEditFrame.DoEditTreeNodeCode(ANodeCode: Integer): Integer;
begin
  Result:=
    TfmExceptEventTypesTree.ShowForm(
      nil,
      nil,
      emReadOnly,
      doNone,
      ANodeCode,
      TreeDetailSelectionIfReadOnly);
end;

function TfrExceptEventTypeFieldEditFrame.GetDocOwnerType: TDocOwnerType;
begin
  Result:= dotExceptEventType;
end;

function TfrExceptEventTypeFieldEditFrame.GetEditTreeNodeButtonHint: string;
begin
  Result:= SEditTreeNodeButtonHint;
end;

function TfrExceptEventTypeFieldEditFrame.GetNodeCode(ANodeNo: string): Integer;
begin
  if (RightStr(ANodeNo, 1) <> '.') then
    ANodeNo:= ANodeNo + '.';

  Result:= dmMain.SvrExceptEvents.GetExceptEventTypeCodeByFullNo(ANodeNo);
end;

function TfrExceptEventTypeFieldEditFrame.GetTreeNodeIsInactive(ANodeCode: Integer): Boolean;
begin
  Result:= False;
end;

function TfrExceptEventTypeFieldEditFrame.IsInstance(ANodeCode: Integer): Boolean;
begin
  Result:= dmMain.SvrExceptEvents.GetExceptEventTypeIsInstance(ANodeCode);
end;

function TfrExceptEventTypeFieldEditFrame.NodeNotAnInstanceErrorMsg: string;
begin
  Result:= SNodeNotAnInstance;
end;

function TfrExceptEventTypeFieldEditFrame.NoMatchingNodeErrorMsg: string;
begin
  Result:= SNoMatchingExceptEventTypeClass;
end;

function TfrExceptEventTypeFieldEditFrame.TreeNodeIsInactiveErrorMsg: string;
begin
  Result:= SExceptEventTypeIsInactive;
end;

procedure TfrExceptEventTypeFieldEditFrame.cdsExceptEventTypeCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsExceptEventType_EE_TYPE_DISPLAY_NAME.AsString:=
    cdsExceptEventTypeEXCEPT_EVENT_TYPE_SHORT_NAME.AsString + ' - ' + cdsExceptEventTypeEXCEPT_EVENT_TYPE_NAME.AsString;
end;

procedure TfrExceptEventTypeFieldEditFrame.UpdateTreeNode;
begin
  inherited;
  cdsExceptEventType.Params.ParamByName('EXCEPT_EVENT_TYPE_CODE').AsInteger:= cdsTreeNodeNODE_CODE.AsInteger;
  cdsExceptEventType.TempOpen/
    procedure begin
      cdsTreeNodeNODE_NAME.AsString:= cdsExceptEventType_EE_TYPE_DISPLAY_NAME.AsString;

      if cdsExceptEventTypeEXCEPT_EVENT_TYPE_LOCAL_NO.IsNull then
        cdsTreeNodeNODE_NO.Clear
      else
        cdsTreeNodeNODE_NO.AsString:=
          cdsExceptEventTypePARENT_FULL_NO.AsString +
          cdsExceptEventTypeEXCEPT_EVENT_TYPE_LOCAL_NO.AsString + '.';

      cdsTreeNodeDOC_BRANCH_CODE.AsInteger:= cdsExceptEventTypeDOC_BRANCH_CODE.AsInteger;
      cdsTreeNodeDOC_CODE.AsInteger:= cdsExceptEventTypeDOC_CODE.AsInteger;
      cdsTreeNodeHAS_DOCUMENTATION.AsBoolean:= cdsExceptEventTypeHAS_DOC_ITEMS.AsBoolean;
    end;
end;

end.
