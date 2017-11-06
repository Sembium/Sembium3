unit fProfessionFieldEditFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fTreeOnlyNodeFieldEditFrame, DB, AbmesFields, DBClient, AbmesClientDataSet,
  ActnList, JvExControls, JvDBLookup, StdCtrls, Mask, DBCtrls,
  fEnumFieldEditFrame, uDocUtils, ComCtrls, ToolWin, Buttons, JvExMask,
  JvToolEdit, JvDBControls, ExtCtrls;

type
  TfrProfessionFieldEditFrame = class(TTreeOnlyNodeFieldEditFrame)
    cdsProfession: TAbmesClientDataSet;
    cdsProfessionPROFESSION_CODE: TAbmesFloatField;
    cdsProfessionPROFESSION_NAME: TAbmesWideStringField;
    cdsProfessionDOC_BRANCH_CODE: TAbmesFloatField;
    cdsProfessionDOC_CODE: TAbmesFloatField;
    cdsProfessionPROFESSION_LOCAL_NO: TAbmesFloatField;
    cdsProfessionPARENT_FULL_NO: TAbmesWideStringField;
    cdsProfessionIS_GROUP: TAbmesFloatField;
    cdsProfessionHAS_DOC_ITEMS: TAbmesFloatField;
    cdsProfession_PROFESSION_DISPLAY_NAME: TAbmesWideStringField;
    procedure cdsProfessionCalcFields(DataSet: TDataSet);
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
  fProfessionsTree, uClientTypes, StrUtils, dMain, uProfessionTypes;

resourcestring
  SNoMatchinigProfession = 'Не съществува Процесна Роля с такъв номер';
  SEditTreeNodeButtonHint = 'Избор от Структура на Процесни Роли';
  SNodeNotAnInstance = 'Избраната Процесна Роля трябва да бъде единична';
  SProfessionIsInactive = 'Избраната Процесна Роля трябва да бъде активна';
{$R *.dfm}

{ TfrProfessionFieldEditFrame }

procedure TfrProfessionFieldEditFrame.cdsProfessionCalcFields(
  DataSet: TDataSet);
begin
  inherited;

  // tova tuk shte pridobie po-golqm smisyl, kogato (ako) na PROFESSIONS im se dobavi SHORT_NAME
  cdsProfession_PROFESSION_DISPLAY_NAME.AsString:= cdsProfessionPROFESSION_NAME.AsString;
end;

constructor TfrProfessionFieldEditFrame.Create(AOwner: TComponent);
begin
  inherited;
  FieldNames:= 'PROFESSION_CODE';
  RootCode:= ProfessionsTreeRootCode;
end;

function TfrProfessionFieldEditFrame.DoEditTreeNodeCode(
  ANodeCode: Integer): Integer;
begin
  Result:=
    TfmProfessionsTree.ShowForm(
      nil,
      nil,
      emReadOnly,
      doNone,
      ANodeCode,
      TreeDetailSelectionIfReadOnly);
end;

function TfrProfessionFieldEditFrame.GetDocOwnerType: TDocOwnerType;
begin
  Result:= dotProfession;
end;

function TfrProfessionFieldEditFrame.GetEditTreeNodeButtonHint: string;
begin
  Result:= SEditTreeNodeButtonHint;
end;

function TfrProfessionFieldEditFrame.GetNodeCode(ANodeNo: string): Integer;
begin
  if (RightStr(ANodeNo, 1) <> '.') then
    ANodeNo:= ANodeNo + '.';

  Result:= dmMain.SvrHumanResource.GetProfessionCodeByFullNo(ANodeNo);
end;

function TfrProfessionFieldEditFrame.GetTreeNodeIsInactive(
  ANodeCode: Integer): Boolean;
begin
  Result:= False;
end;

function TfrProfessionFieldEditFrame.IsInstance(ANodeCode: Integer): Boolean;
begin
  Result:= dmMain.SvrHumanResource.GetProfessionIsInstance(ANodeCode);
end;

function TfrProfessionFieldEditFrame.NodeNotAnInstanceErrorMsg: string;
begin
  Result:= SNodeNotAnInstance;
end;

function TfrProfessionFieldEditFrame.NoMatchingNodeErrorMsg: string;
begin
  Result:= SNoMatchinigProfession;
end;

function TfrProfessionFieldEditFrame.RawNoWidth: Integer;
begin
  Result:= 49;
end;

function TfrProfessionFieldEditFrame.TreeNodeIsInactiveErrorMsg: string;
begin
  Result:= SProfessionIsInactive;
end;

procedure TfrProfessionFieldEditFrame.UpdateTreeNode;
begin
  inherited;
  cdsProfession.Params.ParamByName('PROFESSION_CODE').AsInteger:= cdsTreeNodeNODE_CODE.AsInteger;
  cdsProfession.Open;
  try
    cdsTreeNodeNODE_NAME.AsString:= cdsProfession_PROFESSION_DISPLAY_NAME.AsString;

    if cdsProfessionPROFESSION_LOCAL_NO.IsNull then
      cdsTreeNodeNODE_NO.Clear
    else
      cdsTreeNodeNODE_NO.AsString:=
        cdsProfessionPARENT_FULL_NO.AsString +
        cdsProfessionPROFESSION_LOCAL_NO.AsString + '.';

      cdsTreeNodeDOC_BRANCH_CODE.AsInteger:= cdsProfessionDOC_BRANCH_CODE.AsInteger;
      cdsTreeNodeDOC_CODE.AsInteger:= cdsProfessionDOC_CODE.AsInteger;
      cdsTreeNodeHAS_DOCUMENTATION.AsBoolean:= cdsProfessionHAS_DOC_ITEMS.AsBoolean;
  finally
    cdsProfession.Close;
  end;  { try }
end;

end.
