unit fXModelStageEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fSpecModelVariantStageEdit, Menus, Db, DBClient, AbmesClientDataSet,
  JvButtons, ImgList, ActnList, StdCtrls, Mask, DBCtrls, fBaseFrame,
  fDBFrame, fFieldEditFrame, Buttons, ExtCtrls,
  ParamDataSet, GridsEh, DBGridEh, AbmesDBGrid, ColorNavigator,
  AbmesDBCheckBox, ComCtrls, ToolWin, dbcgrids,
  uClientTypes, JvDBLookup, AbmesFields, fTreeNodeFieldEditFrame,
  fDeptFieldEditFrame, fDeptFieldEditFrameBald, fProductFieldEditFrame,
  fProductFieldEditFrameBald, fSpecAndXModelUnapproveAbstract,
  JvComponentBase, JvCaptionButton, JvExControls, JvComponent,
  DBGridEhGrouping, System.Actions, ToolCtrlsEh, DBGridEhToolCtrls;

type
  TfmXModelStageEdit = class(TfmSpecModelVariantStageEdit)
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actPrintOperationsExecute(Sender: TObject);
    procedure btnDocsClick(Sender: TObject);
    procedure btnOperationDocClick(Sender: TObject);
  private
    FLastOMMlmsOperationNo: Variant;
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    function GetOperationCode: Variant; override;
    procedure LocateOperationCode(AOperationCode: Variant); override;
    function GetMoveUpOperationEnabled: Boolean; override;
    function GetMoveDownOperationEnabled: Boolean; override;
    function OperationsEditable: Boolean; override;
    function GetDelRecordEnabled: Boolean; override;
    function GetAddBeginOperationEnabled: Boolean; override;
    function GetAddEndOperationEnabled: Boolean; override;
    function GetInsertOperationEnabled: Boolean; override;
    function GetAddOperationEnabled: Boolean; override;
    function GetGridRecordReadOnly: Boolean; override;
    function StageReadOnly: Boolean; override;
  public
    procedure Initialize; override;
  end;

implementation

uses
  uMaterialListLineChanges, fMLMSOperationEdit, Variants,
  rXModelOperations, uClientUtils, uUtils, uOperationTypes, uDocUtils,
  fXModelUnapprove, fXModelOperationsInvestedValues;

{$R *.DFM}

procedure TfmXModelStageEdit.FormCreate(Sender: TObject);
begin
  inherited;

  EditFormClass:= TfmMLMSOperationEdit;
  Prefix:= 'MLMS';
  FLastOMMlmsOperationNo:= Null;

  UnapproveFormClass:= TfmXModelUnapprove;
  OperationsInvestedValuesClass:= TfmXModelOperationsInvestedValues;
end;

procedure TfmXModelStageEdit.actFormUpdate(Sender: TObject);
begin
  inherited;
  SetControlsReadOnly(StageReadOnly, [
    edtTreatmentWorkdays,
    edtOutgoingWorkdays,
    chbIsAutoMovment]);
end;

procedure TfmXModelStageEdit.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frDept) then
    AFrame.ReadOnly:= StageReadOnly
  else
    inherited SetDBFrameReadOnly(AFrame);
end;

function TfmXModelStageEdit.ShowEditForm(AEditMode: TEditMode): Boolean;
var
  MaxDetailTechQuantity: Real;
  ui: TUnapproveInfo;
begin
  MaxDetailTechQuantity:=
    (dsLines.DataSet as TCLientDataSet).DataSetField.DataSet.FieldByName('TECH_QUANTITY').AsFloat *
    dsLines.DataSet.FieldByName('LINE_DETAIL_TECH_QUANTITY').AsFloat;

  Result:= TfmMLMSOperationEdit.ShowForm(dmDocClient, cdsGridData,
    AEditMode, doNone, dsLines.DataSet, dsData.DataSet, MaxDetailTechQuantity,
    FLineHasApprovedDocItems, ModelIdentifier, EditOperationTypeCode(AEditMode), ui);

  if Result then
    UpdateOperationVariantsDocData;

  if Result and (ui.UnapproveMethod >= FUnapproveMethod) then
    FUnapproveMethod:= ui.UnapproveMethod;

  if Result then
    UnapproveDataSet(cdsGridData, EmptyUnapproveInfo, [umDoc..umAllModelVariantsLineStagesAndOperationsDocs], True);

  if Result then
    UpdateStageIsAutoMovement;
end;

function TfmXModelStageEdit.StageReadOnly: Boolean;
var
  DS, MasterDS: TDataSet;
begin
  DS:= dsData.DataSet;
  Assert(Assigned(DS));

  MasterDS:= DS.DataSetField.DataSet;
  Assert(Assigned(MasterDS));

  Result:=
    (EditMode = emReadOnly) or
    not (
      (MasterDS.FieldByName('MLL_CHANGE_STATUS').AsInteger = lcsOK) and
      ( MasterDS.FieldByName('LAST_MM_MLMS_MODEL_STAGE_NO').IsNull or
        (DS.FieldByName('ML_MODEL_STAGE_NO').AsInteger > MasterDS.FieldByName('LAST_MM_MLMS_MODEL_STAGE_NO').AsInteger))
    );
end;

function TfmXModelStageEdit.GetOperationCode: Variant;
begin
  Result:= VarArrayOf([
    cdsGridData.FieldByName('MLMSO_OBJECT_BRANCH_CODE').AsInteger,
    cdsGridData.FieldByName('MLMSO_OBJECT_CODE').AsInteger]);
end;

procedure TfmXModelStageEdit.LocateOperationCode(AOperationCode: Variant);
begin
  cdsGridData.Locate('MLMSO_OBJECT_BRANCH_CODE; MLMSO_OBJECT_CODE', AOperationCode, []);
end;

function TfmXModelStageEdit.GetMoveUpOperationEnabled: Boolean;
begin
  Result:=
    (inherited GetMoveUpOperationEnabled) and
    (VarIsNull(FLastOMMlmsOperationNo) or
     (cdsGridData.FieldByName('MLMS_OPERATION_NO').AsInteger > FLastOMMlmsOperationNo + 1)) and
    (EditMode <> emReadOnly);
end;

function TfmXModelStageEdit.GetMoveDownOperationEnabled: Boolean;
begin
  Result:=
    (inherited GetMoveDownOperationEnabled) and
    (VarIsNull(FLastOMMlmsOperationNo) or
     (cdsGridData.FieldByName('MLMS_OPERATION_NO').AsInteger > FLastOMMlmsOperationNo)) and
    (EditMode <> emReadOnly);
end;

procedure TfmXModelStageEdit.Initialize;
begin
  inherited;
  FLastOMMlmsOperationNo:=
    dsData.DataSet.FieldByName('LAST_OM_MLMS_OPERATION_NO').AsVariant;
end;

function TfmXModelStageEdit.OperationsEditable: Boolean;
var
  cdsLines: TClientDataSet;
begin
  cdsLines:= (dsData.DataSet as TClientDataSet).DataSetField.DataSet as TClientDataSet;
  Result:= cdsLines.DataSetField.DataSet.FieldByName('IS_OPERATIONS_MODEL').AsBoolean;
end;

procedure TfmXModelStageEdit.actPrintOperationsExecute(Sender: TObject);
begin
  TrptXModelOperations.PrintReport((dsData.DataSet as TClientDataSet),
    (dsLines.DataSet as TClientDataSet), cdsGridData, True);
end;

function TfmXModelStageEdit.GetDelRecordEnabled: Boolean;
begin
  Result:=
    (inherited GetDelRecordEnabled) and
    (not cdsGridData.FieldByName('HAS_IN_MOVEMENTS').AsBoolean);
end;

function TfmXModelStageEdit.GetAddBeginOperationEnabled: Boolean;
begin
  Result:=
    (inherited GetAddBeginOperationEnabled) and
    VarIsNull(FLastOMMlmsOperationNo);
end;

function TfmXModelStageEdit.GetInsertOperationEnabled: Boolean;
begin
  Result:=
    (inherited GetInsertOperationEnabled) and
    (VarIsNull(FLastOMMlmsOperationNo) or
     (cdsGridData.FieldByName('MLMS_OPERATION_NO').AsInteger > FLastOMMlmsOperationNo));
end;

function TfmXModelStageEdit.GetAddOperationEnabled: Boolean;
begin
  Result:=
    (inherited GetAddOperationEnabled) and
    (not ( (VarToInt(cdsGridData_MAX_OPERATION_TYPE_CODE.AsVariant) = otEnd) and
           (VarToInt(cdsGridData_MAX_OPERATION_NO.AsVariant) = FLastOMMlmsOperationNo) ) ) and
    (dsData.DataSet.FieldByName('ML_MODEL_STAGE_NO').AsInteger >=
     dsLines.DataSet.FieldByName('LAST_MM_MLMS_MODEL_STAGE_NO').AsInteger);
end;

function TfmXModelStageEdit.GetGridRecordReadOnly: Boolean;
begin
  Result:=
    (inherited GetGridRecordReadOnly) or
    (cdsGridData.Active and cdsGridData.FieldByName('HAS_OUT_MOVEMENTS').AsBoolean);
end;

function TfmXModelStageEdit.GetAddEndOperationEnabled: Boolean;
begin
  Result:=
    (inherited GetAddEndOperationEnabled) and
    (dsData.DataSet.FieldByName('ML_MODEL_STAGE_NO').AsInteger >=
     dsLines.DataSet.FieldByName('LAST_MM_MLMS_MODEL_STAGE_NO').AsInteger);
end;

procedure TfmXModelStageEdit.btnDocsClick(Sender: TObject);
var
  em: TEditMode;
begin
  if StageReadOnly then
    em:= emReadOnly
  else
    em:= EditMode;

  dmDocClient.DSOpenDoc(em, btnDocs, dotRealStage, dsData.DataSet);
end;

procedure TfmXModelStageEdit.btnOperationDocClick(Sender: TObject);
begin
  // inherited; do not call inherited
  dmDocClient.DSOpenDoc(
    emReadOnly,
    (Sender as TControl),
    dotRealOperation,
    dsGridData.DataSet.FieldByName('DOC_BRANCH_CODE'),
    dsGridData.DataSet.FieldByName('DOC_CODE'),
    dsGridData.DataSet.FieldByName('MLMS_OPERATION_VARIANT_NO').AsInteger);
end;

end.
