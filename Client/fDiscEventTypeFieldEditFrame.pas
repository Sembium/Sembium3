unit fDiscEventTypeFieldEditFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fTreeOnlyNodeFieldEditFrame, DB, AbmesFields, DBClient,
  AbmesClientDataSet, ActnList, ComCtrls, ToolWin, Buttons, JvExMask,
  JvToolEdit, JvDBControls, StdCtrls, Mask, DBCtrls, ExtCtrls,
  fTreeNodeFieldEditFrame, uDocUtils;

type
  TfrDiscEventTypeFieldEditFrame = class(TTreeOnlyNodeFieldEditFrame)
  private
    { Private declarations }
  protected
    function GetNodeCode(ANodeNo: string): Integer; override;
    function IsInstance(ANodeCode: Integer): Boolean; override;
    function NoMatchingNodeErrorMsg: string; override;
    function NodeNotAnInstanceErrorMsg: string; override;
    function DoEditTreeNodeCode(ANodeCode: Integer): Integer; override;
    function GetEditTreeNodeButtonHint: string; override;
    function GetDocOwnerType: TDocOwnerType; override;
    function TreeNodeIsInactiveErrorMsg: string; override;
    function GetTreeNodeIsInactive(ANodeCode: Integer): Boolean; override;
    procedure UpdateTreeNode; override;
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses
  StrUtils, dMain, fDisciplineEventTypesTree, uClientTypes, uTreeClientUtils;

resourcestring
  SNoMatchingDiscEventType = 'Не съществува Вид Извънредно Отклонение в РПв с такъв номер';
  SNodeNotAnInstance = 'Избраният Вид Извънредно Отклонение в РПв не трябва да бъде група';
  SEditTreeNodeButtonHint = 'Избор от Класификатор на Видовете Извънредни Отклонения в Работно Поведение';
  SDiscEventTypeIsInactive = 'Избрания Вид Извънредно Отклонение в Работно Поведение трябва да бъде активен';

{$R *.dfm}

{ TfrDiscEventTypeFieldEditFrame }

constructor TfrDiscEventTypeFieldEditFrame.Create(AOwner: TComponent);
begin
  inherited;
  FieldNames:= 'DISC_EVENT_TYPE_CODE';
  CanSelectInactive:= True;
end;

function TfrDiscEventTypeFieldEditFrame.DoEditTreeNodeCode(ANodeCode: Integer): Integer;
begin
  Result:= TfmDisciplineEventTypesTree.ShowForm(
    nil,
    nil,
    emReadOnly,
    doNone,
    ANodeCode,
    TreeDetailSelectionIfReadOnly);
end;

function TfrDiscEventTypeFieldEditFrame.GetDocOwnerType: TDocOwnerType;
begin
  Result:= dotDiscEventType;
end;

function TfrDiscEventTypeFieldEditFrame.GetEditTreeNodeButtonHint: string;
begin
  Result:= SEditTreeNodeButtonHint;
end;

function TfrDiscEventTypeFieldEditFrame.GetNodeCode(ANodeNo: string): Integer;
begin
  if (RightStr(ANodeNo, 1) <> '.') then
    ANodeNo:= ANodeNo + '.';

  Result:= dmMain.SvrHumanResource.GetDiscEventTypeCodeByFullNo(ANodeNo);
end;

function TfrDiscEventTypeFieldEditFrame.GetTreeNodeIsInactive(ANodeCode: Integer): Boolean;
begin
  Result:= dmMain.SvrHumanResource.GetDiscEventTypeIsInactive(ANodeCode);
end;

function TfrDiscEventTypeFieldEditFrame.IsInstance(ANodeCode: Integer): Boolean;
begin
  Result:= dmMain.SvrHumanResource.GetDiscEventTypeIsInstance(ANodeCode);
end;

function TfrDiscEventTypeFieldEditFrame.NodeNotAnInstanceErrorMsg: string;
begin
  Result:= SNodeNotAnInstance;
end;

function TfrDiscEventTypeFieldEditFrame.NoMatchingNodeErrorMsg: string;
begin
  Result:= SNoMatchingDiscEventType;
end;

function TfrDiscEventTypeFieldEditFrame.TreeNodeIsInactiveErrorMsg: string;
begin
  Result:= SDiscEventTypeIsInactive;
end;

procedure TfrDiscEventTypeFieldEditFrame.UpdateTreeNode;
begin
  DoDiscEventTypeFieldChanged(
    cdsTreeNodeNODE_CODE,
    nil,
    nil,
    nil,
    cdsTreeNodeNODE_NO,
    nil,
    cdsTreeNodeNODE_NAME,
    nil,
    nil,
    cdsTreeNodeDOC_BRANCH_CODE,
    cdsTreeNodeDOC_CODE,
    cdsTreeNodeHAS_DOCUMENTATION);
end;

end.
