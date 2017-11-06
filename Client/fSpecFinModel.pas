unit fSpecFinModel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBottomButtonGridForm, JvComponentBase, JvCaptionButton, DB,
  AbmesFields, ParamDataSet, ActnList, DBClient, AbmesClientDataSet, GridsEh,
  DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons,
  StdCtrls, ExtCtrls, dDocClient, uClientTypes, fBaseFrame, fDBFrame,
  fFieldEditFrame, fTreeNodeFieldEditFrame, fProductFieldEditFrame,
  fProductFieldEditFrameBald, Mask, uBorderRelTypes, fDateIntervalFrame,
  fPartnerFieldEditFrame, fPartnerExFieldEditFrame, Menus, JvExControls,
  JvDBLookup, DBGridEhGrouping, fDeptFieldEditFrame, fDeptFieldEditFrameBald;

type
  TfmSpecFinModel = class(TBottomButtonGridForm)
    edtSpecFinModelName: TDBEdit;
    frFinancialProduct: TfrProductFieldEditFrameBald;
    lblFinanacialProduct: TLabel;
    lblSpecFinModelName: TLabel;
    frPartner: TfrPartnerExFieldEditFrame;
    gbDateInterval: TGroupBox;
    frDateInterval: TfrDateIntervalFrame;
    tlbDocs: TToolBar;
    btnDocs: TToolButton;
    dsParRelPeriods: TDataSource;
    actMoveUpLine: TAction;
    actMoveDownLine: TAction;
    actAuthorize: TAction;
    actUnauthorize: TAction;
    pnlAuthorizeButtons: TPanel;
    pnlAuthorize: TPanel;
    btnAuthorize: TBitBtn;
    pnlUnauthorize: TPanel;
    btnUnauthorize: TBitBtn;
    cbFMMovementOffsetType: TJvDBLookupCombo;
    lblFMMovementOffsetType: TLabel;
    actCreateLike: TAction;
    btnMoveUpLine: TSpeedButton;
    btnMoveDownLine: TSpeedButton;
    btnCreateLike: TBitBtn;
    frExecDept: TfrDeptFieldEditFrameBald;
    lblExecDept: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnDocsClick(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actMoveUpLineUpdate(Sender: TObject);
    procedure actMoveDownLineUpdate(Sender: TObject);
    procedure actMoveUpLineExecute(Sender: TObject);
    procedure actMoveDownLineExecute(Sender: TObject);
    procedure navDataBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure actUnauthorizeExecute(Sender: TObject);
    procedure actAuthorizeExecute(Sender: TObject);
    procedure actAuthorizeUpdate(Sender: TObject);
    procedure actUnauthorizeUpdate(Sender: TObject);
    procedure actCreateLikeUpdate(Sender: TObject);
    procedure actCreateLikeExecute(Sender: TObject);
  private
    FSavecdsGridData: TAbmesClientDataSet;
    FBorderRelType: TBorderRelType;
    FOriginalFormCaption: string;
    FCreatingLike: Boolean;
    FInitialSavePoint: Int64;
    function MoveUpLineEnabled: Boolean;
    function MoveDownLineEnabled: Boolean;
    procedure MoveLine(MoveUp: Boolean);
    function AuthorizeEnabled: Boolean;
    function UnauthorizeEnabled: Boolean;
    function IsAuthorized: Boolean;
    procedure Unauthorize;
  protected
    function GetOriginalFormCaption: string; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function GetGridRecordReadOnly: Boolean; override;
    function GetInsertRecordEnabled: Boolean; override;
    function GetDelRecordEnabled: Boolean; override;
    procedure DoCancelUpdates; override;
  public
    class function ShowForm(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True;
      ASpecFinModelLinesDataSet: TDataSet = nil): Boolean;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True;
      ASpecFinModelLinesDataSet: TDataSet = nil); reintroduce; virtual;
    procedure Initialize; override;
    procedure Finalize; override;
  end;

implementation

uses
  uBorderRelTypeClientUtils, uClientUtils, uProducts, fSpecFinModelLine, uUtils,
  uDocUtils, VDBConsts, uFinanceClientUtils, uDataSetUtils, AbmesDialogs,
  fTreeSelectForm;

{$R *.dfm}

const
  Eps = 0.00000001;

{ TfmSpecFinModel }

procedure TfmSpecFinModel.actAuthorizeExecute(Sender: TObject);
begin
  inherited;

  CheckRequiredFields(dsData.DataSet, 'FINANCIAL_PRODUCT_CODE; SPEC_FIN_MODEL_NAME');

  if (LargeZero(VarToFloat(dsGridData.DataSet.FieldByName('_SUM_PRIMARY_LINE_QTY_PERCENT').AsVariant) - 1, Eps) <> 0) then
    raise Exception.Create(SIncorrectPrimaryLineQtyPercentSum);

  CheckEditMode(dsData.DataSet);
  dsData.DataSet.FieldByName('AUTHORIZE_EMPLOYEE_CODE').AsInteger:= LoginContext.UserCode;
end;

procedure TfmSpecFinModel.actAuthorizeUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= AuthorizeEnabled;
end;

procedure TfmSpecFinModel.actCreateLikeExecute(Sender: TObject);
var
  CreateLikeFieldValues: Variant;
  SavePoint: Integer;
begin
  inherited;

  CreateLikeFieldValues:= GetRecordData(dsGridData.DataSet, True);
  try
    dsGridData.DataSet.Tag:= NativeInt(@CreateLikeFieldValues);
    try
      SavePoint:= (dsGridData.DataSet as TClientDataSet).SavePoint;
      try
        if not DoShowEditForm(emInsert) then
          Abort;
      except
        (dsGridData.DataSet as TClientDataSet).SavePoint:= SavePoint;
        raise;
      end;
    finally
      dsGridData.DataSet.Tag:= 0;
    end;
  finally
    CreateLikeFieldValues:= Unassigned;
  end;
end;

procedure TfmSpecFinModel.actCreateLikeUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    GetInsertRecordEnabled and
    dsGridData.DataSet.Active and
    (dsGridData.DataSet.RecordCount > 0);
end;

procedure TfmSpecFinModel.actFormUpdate(Sender: TObject);
begin
  inherited;
  btnDocs.ImageIndex:= dsParRelPeriods.DataSet.FieldByName('HAS_DOC_ITEMS').AsInteger;
  pnlAuthorize.Visible:= not IsAuthorized;
  pnlUnauthorize.Visible:= IsAuthorized;

  SetControlsReadOnly((EditMode = emReadOnly) or UnauthorizeEnabled,
    [edtSpecFinModelName, cbFMMovementOffsetType]);
end;

procedure TfmSpecFinModel.actMoveDownLineExecute(Sender: TObject);
begin
  inherited;
  MoveLine(False);
end;

procedure TfmSpecFinModel.actMoveDownLineUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= MoveDownLineEnabled;
end;

procedure TfmSpecFinModel.actMoveUpLineExecute(Sender: TObject);
begin
  inherited;
  MoveLine(True);
end;

procedure TfmSpecFinModel.actMoveUpLineUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= MoveUpLineEnabled;
end;

procedure TfmSpecFinModel.actUnauthorizeExecute(Sender: TObject);
begin
  inherited;
  Unauthorize;
end;

procedure TfmSpecFinModel.actUnauthorizeUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= UnauthorizeEnabled;
end;

function TfmSpecFinModel.AuthorizeEnabled: Boolean;
begin
  Result:= (EditMode <> emReadOnly) and not IsAuthorized;
end;

procedure TfmSpecFinModel.btnDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnDocs, dotParRelPeriod, dsParRelPeriods.DataSet);
end;

procedure TfmSpecFinModel.CloseDataSets;
begin
//  inherited;  do nothing
end;

procedure TfmSpecFinModel.DoCancelUpdates;
begin
  inherited;
  (dsData.DataSet as TClientDataSet).SavePoint:= FInitialSavePoint;
end;

procedure TfmSpecFinModel.Finalize;
begin
  inherited;
  cdsGridData:= FSavecdsGridData;
end;

procedure TfmSpecFinModel.FormCreate(Sender: TObject);
begin
  inherited;

  EditFormClass:= TfmSpecFinModelLine;

  frPartner.FieldNames:= 'PARTNER_CODE';
  frPartner.PartnerStatusVisible:= True;
  frFinancialProduct.FieldNames:= 'FINANCIAL_PRODUCT_CODE';
  frFinancialProduct.ProductClass:= pcFinancial;
  frFinancialProduct.TreeDetailSelection:= tdsInstance;
  frExecDept.FieldNames:= 'EXEC_DEPT_CODE';
end;

function TfmSpecFinModel.GetDelRecordEnabled: Boolean;
begin
  Result:=
    inherited GetDelRecordEnabled and
    AuthorizeEnabled;
end;

function TfmSpecFinModel.GetGridRecordReadOnly: Boolean;
begin
  Result:=
    inherited GetGridRecordReadOnly or
    UnauthorizeEnabled;
end;

function TfmSpecFinModel.GetInsertRecordEnabled: Boolean;
begin
  Result:=
    inherited GetInsertRecordEnabled and
    AuthorizeEnabled;
end;

function TfmSpecFinModel.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmSpecFinModel.Initialize;
var
  cdsParRelPeriods: TClientDataSet;
  cdsParRel: TClientDataSet;
  MsgParams: TStringList;
  CreateLikeRecordData: Variant;
begin
  FInitialSavePoint:= (dsData.DataSet as TClientDataSet).SavePoint;

  cdsParRelPeriods:= (dsData.DataSet as TClientDataSet).DataSetField.DataSet as TClientDataSet;
  cdsParRel:= cdsParRelPeriods.DataSetField.DataSet as TClientDataSet;

  dsParRelPeriods.DataSet:= cdsParRelPeriods;

  FBorderRelType:= IntToBorderRelType(cdsParRel.FieldByName('BORDER_REL_TYPE_CODE').AsInteger);

  FSavecdsGridData:= cdsGridData;
  cdsGridData:= dsData.DataSet as TAbmesClientDataSet;

  frPartner.SetDataSet(cdsParRelPeriods);
  frDateInterval.SetDataSet(cdsParRelPeriods);

  if FCreatingLike then
    CreateLikeRecordData:= GetRecordData(dsData.DataSet, True);

  inherited;

  MsgParams:= CreateCommonMsgParams(FBorderRelType);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;

  if FCreatingLike then
    begin
      SetRecordData(dsData.DataSet, CreateLikeRecordData, False);
      CheckEditMode(cdsParRelPeriods);
      CheckEditMode(cdsParRel);
      Unauthorize;
    end;
end;

function TfmSpecFinModel.IsAuthorized: Boolean;
begin
  Result:=
    not dsData.DataSet.FieldByName('AUTHORIZE_EMPLOYEE_CODE').IsNull;
end;

function TfmSpecFinModel.MoveDownLineEnabled: Boolean;
begin
  Result:=
    AuthorizeEnabled and
    (not dsGridData.DataSet.IsEmpty) and
    (dsGridData.DataSet.FieldByName('FIN_MODEL_LINE_NO').AsInteger <
     VarToInt(dsGridData.DataSet.FieldByName('_MAX_FIN_MODEL_LINE_NO').AsVariant));
end;

procedure TfmSpecFinModel.MoveLine(MoveUp: Boolean);

  procedure SetFinModelLineNo(ASpecFinModelLineCode, ANewFinModelLineNo: Integer);
  begin
    Assert(dsGridData.DataSet.Locate('SPEC_FIN_MODEL_LINE_CODE', ASpecFinModelLineCode, []));
    dsGridData.DataSet.Edit;
    try
      dsGridData.DataSet.FieldByName('FIN_MODEL_LINE_NO').AsInteger:= ANewFinModelLineNo;
      dsGridData.DataSet.Post;
    except
      dsGridData.DataSet.Cancel;
      raise;
    end;
  end;  { SetLineNo }

var
  SaveCursor: TCursor;
  CurrentSpecFinModelLineCode: Integer;
  CurrentFinModelLineNo: Integer;
  OtherSpecFinModelLineCode: Integer;
  OtherFinModelLineNo: Integer;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    dsGridData.DataSet.DisableControls;
    try
      CurrentSpecFinModelLineCode:= dsGridData.DataSet.FieldByName('SPEC_FIN_MODEL_LINE_CODE').AsInteger;
      CurrentFinModelLineNo:= dsGridData.DataSet.FieldByName('FIN_MODEL_LINE_NO').AsInteger;

      if MoveUp then
        begin
          Assert(MoveUpLineEnabled);
          dsGridData.DataSet.Prior;
        end
      else
        begin
          Assert(MoveDownLineEnabled);
          dsGridData.DataSet.Next;
        end;

      OtherSpecFinModelLineCode:= dsGridData.DataSet.FieldByName('SPEC_FIN_MODEL_LINE_CODE').AsInteger;
      OtherFinModelLineNo:= dsGridData.DataSet.FieldByName('FIN_MODEL_LINE_NO').AsInteger;

      SetFinModelLineNo(CurrentSpecFinModelLineCode, -1);
      SetFinModelLineNo(OtherSpecFinModelLineCode, CurrentFinModelLineNo);
      SetFinModelLineNo(CurrentSpecFinModelLineCode, OtherFinModelLineNo);
    finally
      dsGridData.DataSet.EnableControls;
    end;
  finally
    Screen.Cursor:= SaveCursor;
  end;
end;

function TfmSpecFinModel.MoveUpLineEnabled: Boolean;
begin
  Result:=
    AuthorizeEnabled and
    (not dsGridData.DataSet.IsEmpty) and
    (dsGridData.DataSet.FieldByName('FIN_MODEL_LINE_NO').AsInteger >
     VarToInt(dsGridData.DataSet.FieldByName('_MIN_FIN_MODEL_LINE_NO').AsVariant));
end;

procedure TfmSpecFinModel.navDataBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;

  if (Button = nbDelete) then
    begin
      if (MessageDlgEx(SDeleteRecordQuestion, mtConfirmation, mbOKCancel, 0) <> idCancel) then
        begin
          dsGridData.DataSet.DisableControls;
          try
            while MoveDownLineEnabled do
              MoveLine(False);
            dsGridData.DataSet.Delete;
          finally
            dsGridData.DataSet.EnableControls;
          end;
        end;
      Abort;
    end;
end;

procedure TfmSpecFinModel.OpenDataSets;
begin
//  inherited;  do nothing
end;

procedure TfmSpecFinModel.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; ASpecFinModelLinesDataSet: TDataSet);
begin
  Assert(Assigned(ASpecFinModelLinesDataSet));

  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode,
    doNone, AFilterFormEnabled);

  dsGridData.DataSet:= ASpecFinModelLinesDataSet;
  FCreatingLike:= (AEditMode = emInsert) and (ADefaultsOrigin = doServer);
end;

procedure TfmSpecFinModel.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frPartner) or (AFrame = frDateInterval) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;  { if }

  if ( (AFrame = frFinancialProduct) or
       (AFrame = frExecDept) ) and
     UnauthorizeEnabled then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;  { if }

  inherited;
end;

function TfmSpecFinModel.ShowEditForm(AEditMode: TEditMode): Boolean;
var
  cdsPartnerBankAccounts: TClientDataSet;
begin
  PostDataSet(dsData.DataSet);

  cdsPartnerBankAccounts:=
    dsGridData.DataSet.FieldByName('_PARTNER_ACCOUNT_FULL_NAME').LookupDataSet as TClientDataSet;

  cdsPartnerBankAccounts.Tag:= dsData.DataSet.FieldByName('FINANCIAL_PRODUCT_CODE').AsInteger;
  cdsPartnerBankAccounts.Filtered:= False;
  cdsPartnerBankAccounts.Filtered:= True;

  Result:=
    TfmSpecFinModelLine.ShowForm(dmDocClient, dsGridData.DataSet, AEditMode, doNone);
end;

class function TfmSpecFinModel.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; ASpecFinModelLinesDataSet: TDataSet): Boolean;
var
  f: TfmSpecFinModel;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled,
      ASpecFinModelLinesDataSet);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmSpecFinModel.Unauthorize;
begin
  CheckEditMode(dsData.DataSet);
  dsData.DataSet.FieldByName('AUTHORIZE_EMPLOYEE_CODE').Clear;
end;

function TfmSpecFinModel.UnauthorizeEnabled: Boolean;
begin
  Result:= (EditMode <> emReadOnly) and IsAuthorized;
end;

end.
