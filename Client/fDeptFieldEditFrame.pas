unit fDeptFieldEditFrame;

interface

uses                                  
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ImgList, ActnList, JvToolEdit, StdCtrls, Mask, DBCtrls,
  Buttons, ExtCtrls, ToolWin, ComCtrls, fTreeNodeFieldEditFrame, DBClient,
  AbmesClientDataSet, AbmesFields, uDocUtils, JvExMask, JvDBControls, System.Actions;

type
  TfrDeptFieldEditFrame = class(TTreeNodeFieldEditFrame)
    procedure actFrameUpdate(Sender: TObject);
    procedure cdsTreeNodeNODE_NAMEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsTreeNodeNODE_NOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    FAcceptDefaultDept: Boolean;
    FSelectStore: Boolean;
    FSelectFinancialStore: Boolean;
    FDenyFinancialStore: Boolean;
  protected
    function GetNodeCode(ANodeNo: string): Integer; override;
    function IsInstance(ANodeCode: Integer): Boolean; override;
    function NoMatchingNodeErrorMsg: string; override;
    function NodeNotAnInstanceErrorMsg: string; override;
    function DoEditTreeNodeCode(ANodeCode: Integer): Integer; override;
    procedure UpdateTreeNode; override;
    function GetEditTreeNodeButtonHint: string; override;
    procedure ValidateNode(ANodeCode: Integer); override;
    function GetDocOwnerType: TDocOwnerType; override;
    procedure SetReadOnly(const Value: Boolean); override;
  public
    constructor Create(AOwner: TComponent); override;

    property AcceptDefaultDept: Boolean read FAcceptDefaultDept write FAcceptDefaultDept;
    property SelectStore: Boolean read FSelectStore write FSelectStore;
    property SelectFinancialStore: Boolean read FSelectFinancialStore write FSelectFinancialStore;
    property DenyFinancialStore: Boolean read FDenyFinancialStore write FDenyFinancialStore;
  end;

implementation

uses
  uTreeClientUtils, dMain, fBaseFrame, uUtils, uUserActivityConsts,
  uClientUtils, uFinanceClientUtils;

{$R *.dfm}

resourcestring
  SInvokeTreeEditorHint = 'Избор от дървото на ТП';
  SNoMatchingDept = 'Не съществува ТП с такъв код';
  SDeptNotAnInstance = 'Не можете да избирате ТП, което не е листо';
  SNotADescendantOf = 'Не можете да избирате ТП, което не е наследник на "%s"';
  SCurrentDeptNotSet = 'Не е зададено текущо ТП';

{ TfrDeptFieldEditFrame }

function TfrDeptFieldEditFrame.GetNodeCode(ANodeNo: string): Integer;
begin
  if AcceptDefaultDept and
     (Copy(Trim(ANodeNo), 1, 2) = '-1') then
    Result:= -1
  else
    begin
      if (Trim(ANodeNo) = '-') then
        begin
          if AcceptDefaultDept then
            Result:= -1
          else
            Result:= LoginContext.CurrentDeptCode
        end
      else
        Result:= dmMain.SvrDeptsTree.GetDeptID(ANodeNo);
    end;
end;

function TfrDeptFieldEditFrame.IsInstance(ANodeCode: Integer): Boolean;
begin
  Result:= dmMain.SvrDeptsTree.IsInstance(ANodeCode);
end;

function TfrDeptFieldEditFrame.NodeNotAnInstanceErrorMsg: string;
begin
  Result:= SDeptNotAnInstance;
end;

function TfrDeptFieldEditFrame.NoMatchingNodeErrorMsg: string;
begin
  Result:= SNoMatchingDept;
end;

procedure TfrDeptFieldEditFrame.SetReadOnly(const Value: Boolean);
var
  NewValue: Boolean;
begin
  NewValue:=
    Value or
    (SelectFinancialStore and not LoginContext.HasAnyUserActivity([uaShowFinStores, uaShowOccupationWorkDeptFinStores]));

  inherited SetReadOnly(NewValue);
end;

procedure TfrDeptFieldEditFrame.ValidateNode(ANodeCode: Integer);
var
  RootName: string;
  DummyDouble: Double;
  DeptName: string;
  DeptIdentifier: string;
  IsStore: Boolean;
  ProductCode: Integer;
  ParentNodeID: Integer;
  IsRecurrent: Boolean;
  BeginDate: TDateTime;
  EndDate: TDateTime;
  IsExternal: Boolean;
  DeptIsFinStore: Boolean;
  HasDocumentation: Boolean;
begin
  inherited;

  if AcceptDefaultDept and
     (ANodeCode = -1) then
    begin
      if (LoginContext.CurrentDeptCode = 0) then
        raise Exception.Create(SCurrentDeptNotSet);

      ANodeCode:= LoginContext.CurrentDeptCode;
    end;

  if (RootCode = ANodeCode) or
     (not dmMain.SvrDeptsTree.IsDescendantOf(ANodeCode, RootCode)) then
    begin
      dmMain.SvrDeptsTree.GetNodeData(RootCode, RootName, DummyDouble);

      raise Exception.CreateFmt(SNotADescendantOf, [RootName]);
    end;

  dmMain.SvrDeptsTree.GetDeptData(ANodeCode, DeptName, DeptIdentifier, IsStore,
    ProductCode, ParentNodeID, IsRecurrent, BeginDate, EndDate, IsExternal, DeptIsFinStore, HasDocumentation);

  if SelectStore and not IsStore then
    raise Exception.Create(SStoreNotSelected);

  if SelectFinancialStore and not DeptIsFinStore then
    raise Exception.Create(SFinancialStoreNotSelected);

  if DenyFinancialStore and DeptIsFinStore then
    raise Exception.Create(SFinancialStoreDenied);
end;

procedure TfrDeptFieldEditFrame.actFrameUpdate(Sender: TObject);
begin
  inherited;

  Enabled:=
    not (SelectFinancialStore and not LoginContext.HasAnyUserActivity([uaShowFinStores, uaShowOccupationWorkDeptFinStores]));
  ReadOnly:=
    ReadOnly or not Enabled;
end;

procedure TfrDeptFieldEditFrame.cdsTreeNodeNODE_NAMEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if (Sender.AsString <> '') then
    FinStoreFieldGetText(Sender, Text, DisplayText, SelectFinancialStore)
  else
    inherited;
end;

procedure TfrDeptFieldEditFrame.cdsTreeNodeNODE_NOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  FinStoreFieldGetText(Sender, Text, DisplayText, SelectFinancialStore)
end;

constructor TfrDeptFieldEditFrame.Create(AOwner: TComponent);
begin
  inherited;
  AcceptDefaultDept:= False;
  FieldNames:= 'DEPT_CODE';
end;

function TfrDeptFieldEditFrame.DoEditTreeNodeCode(ANodeCode: Integer): Integer;
begin
  Result:=
    EditDeptCode(ANodeCode, RootCode, TreeDetailSelectionIfReadOnly, SelectStore, SelectFinancialStore, DenyFinancialStore);
end;

procedure TfrDeptFieldEditFrame.UpdateTreeNode;
var
  DeptName, DeptNo: string;
  DocBranchCode, DocCode: Integer;
  HasDocumentation: Boolean;
begin
  if (cdsTreeNodeNODE_CODE.AsInteger = -1) then
    begin
      if (dmMain.LoginContext.CurrentDeptCode = 0) then
        begin
          cdsTreeNodeNODE_NAME.AsString:= SEmptyCurrentDeptName;
          cdsTreeNodeNODE_NO.AsString:= SEmptyCurrentDeptNo;
          cdsTreeNodeDOC_BRANCH_CODE.Clear;
          cdsTreeNodeDOC_CODE.Clear;
          cdsTreeNodeHAS_DOCUMENTATION.AsBoolean:= False;
        end
      else
        begin
          dmMain.SvrDeptsTree.GetDeptNameAndDoc(dmMain.LoginContext.CurrentDeptCode,
            DeptName, DeptNo, DocBranchCode, DocCode, HasDocumentation);

          cdsTreeNodeNODE_NAME.AsString:= Format(SCurrentDeptName, [DeptName]);
          cdsTreeNodeNODE_NO.AsString:= Format(SCurrentDeptNo, [DeptNo]);
          cdsTreeNodeDOC_BRANCH_CODE.AsVariant:= IntToVar(DocBranchCode);
          cdsTreeNodeDOC_CODE.AsVariant:= IntToVar(DocCode);
          cdsTreeNodeHAS_DOCUMENTATION.AsBoolean:= HasDocumentation;
        end;
    end
  else
    begin
      dmMain.SvrDeptsTree.GetDeptNameAndDoc(cdsTreeNodeNODE_CODE.AsInteger,
        DeptName, DeptNo, DocBranchCode, DocCode, HasDocumentation);

      cdsTreeNodeNODE_NAME.AsString:= DeptName;
      cdsTreeNodeNODE_NO.AsString:= DeptNo;
      cdsTreeNodeDOC_BRANCH_CODE.AsVariant:= IntToVar(DocBranchCode);
      cdsTreeNodeDOC_CODE.AsVariant:= IntToVar(DocCode);
      cdsTreeNodeHAS_DOCUMENTATION.AsBoolean:= HasDocumentation;
    end;
end;

function TfrDeptFieldEditFrame.GetEditTreeNodeButtonHint: string;
begin
  Result:= SInvokeTreeEditorHint;
end;

function TfrDeptFieldEditFrame.GetDocOwnerType: TDocOwnerType;
begin
  Result:= dotDept;
end;

end.


