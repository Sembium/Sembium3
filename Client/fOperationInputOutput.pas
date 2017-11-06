unit fOperationInputOutput;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvButtons, ParamDataSet, ActnList, DB,
  DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls,
  ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  AbmesFields, Mask, JvComponent, JvCaptionButton, JvComponentBase,
  DBGridEhGrouping, Menus, ToolCtrlsEh, DBGridEhToolCtrls, System.Actions;

type
  TfmOperationInputOutput = class(TGridForm)
    cdsGridDataMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataMLMSO_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataMLMS_OPERATION_NO: TAbmesFloatField;
    cdsGridDataMLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    cdsGridDataOPERATION_TYPE_CODE: TAbmesFloatField;
    cdsGridDataOPERATION_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridDataSHOW_NO: TAbmesWideStringField;
    cdsGridDataTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataTREATMENT_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataTREATMENT_DATE: TAbmesSQLTimeStampField;
    cdsGridDataRESERVE_DAYS: TAbmesFloatField;
    cdsGridDataDEPT_NAME: TAbmesWideStringField;
    cdsGridDataSTAGE_DEPT_NAME: TAbmesWideStringField;
    cdsGridDataNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    cdsGridDataDETAIL_CODE: TAbmesFloatField;
    cdsGridDataDETAIL_NAME: TAbmesWideStringField;
    cdsGridDataDETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataCLIENT_DETAIL_NAME: TAbmesWideStringField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataHAS_DOCUMENTATION: TAbmesFloatField;
    cdsGridDataHOUR_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataAVAILABLE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataTO_LEAVE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataFORK_NO: TAbmesFloatField;
    cdsGridDataML_MODEL_STAGE_NO: TAbmesFloatField;
    actToggleClientData: TAction;
    btnToggleClientData: TSpeedButton;
    sepBeforebtnShowCapacityGraph: TToolButton;
    btnInputOperationDoc: TSpeedButton;
    actInputOperationDoc: TAction;
    actNewOperationMovement: TAction;
    btnNewOperationMovement: TBitBtn;
    pnlTop: TPanel;
    lblInput: TLabel;
    grdOutput: TAbmesDBGrid;
    cdsOperationOutput: TAbmesClientDataSet;
    dsOperationOutput: TDataSource;
    cdsOperationOutputMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsOperationOutputMLMSO_OBJECT_CODE: TAbmesFloatField;
    cdsOperationOutputMLMS_OPERATION_NO: TAbmesFloatField;
    cdsOperationOutputMLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    cdsOperationOutputOPERATION_TYPE_CODE: TAbmesFloatField;
    cdsOperationOutputSHOW_NO: TAbmesWideStringField;
    cdsOperationOutputTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsOperationOutputTREATMENT_END_DATE: TAbmesSQLTimeStampField;
    cdsOperationOutputTREATMENT_DATE: TAbmesSQLTimeStampField;
    cdsOperationOutputRESERVE_DAYS: TAbmesFloatField;
    cdsOperationOutputDEPT_NAME: TAbmesWideStringField;
    cdsOperationOutputSTAGE_DEPT_NAME: TAbmesWideStringField;
    lblOutput: TLabel;
    grpOperation: TGroupBox;
    lblSale: TLabel;
    edtProductionOrderIdentifier: TDBEdit;
    edtMllNo: TDBEdit;
    edtDetail: TDBEdit;
    lblMllNo: TLabel;
    lblDetail: TLabel;
    edtMllForkNo: TDBEdit;
    btnDetailDoc: TSpeedButton;
    actOperationDoc: TAction;
    actDetailDoc: TAction;
    edtShowNo: TDBEdit;
    lblShowNo: TLabel;
    btnOperationDoc: TSpeedButton;
    edtStageDept: TDBEdit;
    edtDept: TDBEdit;
    lblStageDept: TLabel;
    lblDept: TLabel;
    btnDeptDoc: TSpeedButton;
    actDeptDoc: TAction;
    pnlCurrentOperation: TPanel;
    lblCurrentOperation: TLabel;
    grdCurrentOperation: TAbmesDBGrid;
    pnlPrint: TPanel;
    btnPrint: TBitBtn;
    cdsOperationOutputSTAGE_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataSTAGE_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataSETUP_PROFESSION_CODE: TAbmesFloatField;
    cdsGridDataIS_SETUP_DONE: TAbmesFloatField;
    actShowCapacityGraph: TAction;
    cdsGridDataDEPT_CODE: TAbmesFloatField;
    btnShowCapacityGraph: TSpeedButton;
    cdsGridDataHAS_CAPACITY_DEFICIT: TAbmesFloatField;
    btnModelStatus: TBitBtn;
    actModelStatus: TAction;
    cdsGridDataML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataML_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataMLL_OBJECT_CODE: TAbmesFloatField;
    actModelCapacityStatus: TAction;
    btnModelCapacityStatus: TBitBtn;
    cdsGridDataMLMSO_IS_AUTO_MOVEMENT: TAbmesFloatField;
    lblMllForkNo: TLabel;
    lblInputOperationDoc: TLabel;
    sepBeforeInputOperationDoc: TToolButton;
    cdsOperationOutputNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    cdsOperationOutputFORK_NO: TAbmesFloatField;
    cdsOperationOutputDETAIL_CODE: TAbmesFloatField;
    cdsOperationOutputDETAIL_NAME: TAbmesWideStringField;
    cdsOperationOutputDEPT_CODE: TAbmesFloatField;
    edtPriority: TDBEdit;
    lblPriority: TLabel;
    cdsGridDataDETAIL_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDETAIL_DOC_CODE: TAbmesFloatField;
    cdsGridDataDETAIL_HAS_DOC: TAbmesFloatField;
    actInputDetailDoc: TAction;
    sepBeforeInputDetailDoc: TToolButton;
    btnInputDetailDoc: TSpeedButton;
    lblInputDetailDoc: TLabel;
    edtWorkPriority: TDBEdit;
    lblWorkPriority: TLabel;
    cdsGridDataVARIANT_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataSTORE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataWASTED_BEFORE_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataIN_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataOUT_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actToggleClientDataExecute(Sender: TObject);
    procedure actToggleClientDataUpdate(Sender: TObject);
    procedure actInputOperationDocExecute(Sender: TObject);
    procedure actInputOperationDocUpdate(Sender: TObject);
    procedure actNewOperationMovementExecute(Sender: TObject);
    procedure actNewOperationMovementUpdate(Sender: TObject);
    procedure actOperationDocExecute(Sender: TObject);
    procedure actOperationDocUpdate(Sender: TObject);
    procedure actDetailDocExecute(Sender: TObject);
    procedure actDeptDocExecute(Sender: TObject);
    procedure cdsGridDataBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsOperationOutputBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure actPrintExecute(Sender: TObject);
    procedure grdDataDblClick(Sender: TObject);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure grdOutputGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure actShowCapacityGraphUpdate(Sender: TObject);
    procedure actShowCapacityGraphExecute(Sender: TObject);
    procedure actModelStatusExecute(Sender: TObject);
    procedure actModelStatusUpdate(Sender: TObject);
    procedure actModelCapacityStatusUpdate(Sender: TObject);
    procedure actModelCapacityStatusExecute(Sender: TObject);
    procedure grdDataColumns15GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
    procedure actInputDetailDocExecute(Sender: TObject);
    procedure actInputDetailDocUpdate(Sender: TObject);
  private
    FShowClientData: Boolean;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetPrintButtonOnToolbarEnabled: Boolean; override;
  public
    { Public declarations }
  end;

implementation

uses
  dMain, uClientTypes, uUtils, fOperationMovement, uModelMovementTypes,
  uClientUtils, fOperationMovements, uColorConsts, rOperationInputOutput,
  uUserActivityConsts, uClientConsts, fCapacityGraph, fModelStatus,
  fModelCapacityStatus, uDocUtils, uAspectTypes;

{$R *.dfm}

{ TfmOperationInputOutput }

procedure TfmOperationInputOutput.FormCreate(Sender: TObject);
begin
  inherited;
  RegisterDateFields(cdsGridData);
  RegisterDateFields(cdsOperationOutput);
  ReportClass:= TrptOperationInputOutput;
end;

procedure TfmOperationInputOutput.actFormUpdate(Sender: TObject);
begin
  inherited;
  edtPriority.Font.Color:= dsData.DataSet.FieldByName('PRIORITY_COLOR').AsInteger;
  edtPriority.Color:= dsData.DataSet.FieldByName('PRIORITY_BACKGROUND_COLOR').AsInteger;

  grdData.Columns[4].Visible:= not FShowClientData;
  grdData.Columns[5].Visible:= FShowClientData;
end;

procedure TfmOperationInputOutput.OpenDataSets;
begin
  inherited OpenDataSets;
  SetParams(cdsOperationOutput.Params, dsData.DataSet);
  cdsOperationOutput.Open;
end;

procedure TfmOperationInputOutput.CloseDataSets;
begin
  cdsOperationOutput.Close;
  inherited CloseDataSets;
end;

procedure TfmOperationInputOutput.actToggleClientDataExecute(
  Sender: TObject);
begin
  inherited;
  FShowClientData:= not FShowClientData;
end;

procedure TfmOperationInputOutput.actToggleClientDataUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked:= FShowClientData;
end;

procedure TfmOperationInputOutput.actNewOperationMovementExecute(
  Sender: TObject);
begin
  inherited;

  if not LoginContext.HasUserActivity(uaNewOwnOperationMovement) then
    LoginContext.CheckUserActivity(uaNewOperationMovement);

  if (not cdsGridDataSETUP_PROFESSION_CODE.IsNull) and
     (not cdsGridDataIS_SETUP_DONE.AsBoolean) then
    raise Exception.Create(SSetupNotDone);

  if (TfmOperationMovement.ShowForm(
        dmDocClient,
        cdsGridData,
        emInsert,
        doNone,
        NormalOperationMovementTypes[cdsGridDataOPERATION_TYPE_CODE.AsInteger, dsData.DataSet.FieldByName('OPERATION_TYPE_CODE').AsInteger],
        dsData.DataSet.FieldByName('MLMS_OPERATION_VARIANT_NO').AsInteger)) then
    begin
      RefreshDataSet(dsData.DataSet);
      RefreshDataSet(cdsGridData);
      RefreshDataSet(cdsOperationOutput);
    end;  { if }
end;

procedure TfmOperationInputOutput.actNewOperationMovementUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not cdsGridData.IsEmpty and
    (EditMode <> emReadOnly) and
    (cdsGridDataML_MODEL_STAGE_NO.AsInteger > 0) and
    (not cdsGridDataMLMSO_IS_AUTO_MOVEMENT.AsBoolean);
end;

procedure TfmOperationInputOutput.actInputOperationDocExecute(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dmDocClient));
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotRealOperation,
    cdsGridDataDOC_BRANCH_CODE,
    cdsGridDataDOC_CODE,
    cdsGridDataMLMS_OPERATION_VARIANT_NO.AsInteger);
end;

procedure TfmOperationInputOutput.actInputOperationDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= cdsGridDataHAS_DOCUMENTATION.AsBoolean;
end;

procedure TfmOperationInputOutput.actOperationDocExecute(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dmDocClient));
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotRealOperation,
    dsData.DataSet.FieldByName('DOC_BRANCH_CODE'),
    dsData.DataSet.FieldByName('DOC_CODE'),
    dsData.DataSet.FieldByName('MLMS_OPERATION_VARIANT_NO').AsInteger);
end;

procedure TfmOperationInputOutput.actOperationDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    dsData.DataSet.FieldByName('HAS_DOCUMENTATION').AsBoolean;
end;

procedure TfmOperationInputOutput.actDetailDocExecute(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dmDocClient));
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotProduct,
    dsData.DataSet,
    'DETAIL_DOC_BRANCH_CODE',
    'DETAIL_DOC_CODE');
end;

procedure TfmOperationInputOutput.actDeptDocExecute(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dmDocClient));
  dmDocClient.OpenDeptDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dsData.DataSet.FieldByName('DEPT_CODE').AsInteger);
end;

procedure TfmOperationInputOutput.cdsGridDataBeforeGetRecords(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= PackageParams((Sender as TAbmesClientDataSet).Params);
end;

procedure TfmOperationInputOutput.cdsOperationOutputBeforeGetRecords(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= PackageParams((Sender as TAbmesClientDataSet).Params);
end;

procedure TfmOperationInputOutput.actPrintExecute(Sender: TObject);

var
  CompositeDataSet: TAbmesClientDataSet;

  procedure CreateCompositeDataSetStructure;
    procedure AddFieldDefToCompositeDataSet(Src: TFieldDef);
    var
      Dest: TFieldDef;
    begin
      Dest:= CompositeDataSet.FieldDefs.AddFieldDef;
      Dest.Assign(Src);
      Dest.Attributes:= [];
    end;
  var
    i: Integer;
  begin
    with CompositeDataSet do
      begin
        with FieldDefs.AddFieldDef do
          begin
            Name:= 'ORIGIN_INDEX';
            DataType:= ftFloat;
          end;

        with FieldDefs.AddFieldDef do
          begin
            Name:= 'TITLE';
            DataType:= ftWideString;
          end;

        for i:= 0 to cdsGridData.FieldDefs.Count - 1 do
          if (FieldDefs.IndexOf(cdsGridData.FieldDefs[i].Name) = -1) then
            AddFieldDefToCompositeDataSet(cdsGridData.FieldDefs[i]);

        for i:= 0 to cdsOperationOutput.FieldDefs.Count - 1 do
          if (FieldDefs.IndexOf(cdsOperationOutput.FieldDefs[i].Name) = -1) then
            AddFieldDefToCompositeDataSet(cdsOperationOutput.FieldDefs[i]);
      end;
  end;

  procedure FillCompositeDataSet;
  var
    b: TBookmark;
  begin
    with CompositeDataSet do
      begin
        CreateDataSet;

        (FieldByName('HAS_CAPACITY_DEFICIT') as TAbmesFloatField).FieldValueType:= fvtBoolean;

        // izhod header
        Append;
        FieldByName('ORIGIN_INDEX').Value:= 1;
        Post;

        // izhod records
        b:= cdsOperationOutput.Bookmark;
        cdsOperationOutput.First;
        try
          (CompositeDataSet.FieldByName('TREATMENT_DATE') as TSQLTimeStampField).DisplayFormat:=
            cdsOperationOutputTREATMENT_DATE.DisplayFormat;

          while not cdsOperationOutput.Eof do
            begin
              Append;
              FieldByName('ORIGIN_INDEX').Value:= 2;
              CompositeDataSet.AssignFields(cdsOperationOutput);
              Post;

              cdsOperationOutput.Next;
            end;
        finally
          cdsOperationOutput.Bookmark:= b;
        end;  { try }

        // vhod header
        Append;
        FieldByName('ORIGIN_INDEX').Value:= 3;
        Post;

        // vhod records
        b:= cdsGridData.Bookmark;
        cdsGridData.First;
        try
          (CompositeDataSet.FieldByName('TREATMENT_DATE') as TSQLTimeStampField).DisplayFormat:=
            cdsGridDataTREATMENT_DATE.DisplayFormat;
          with (CompositeDataSet.FieldByName('HAS_DOCUMENTATION') as TAbmesFloatField) do
            begin
              FieldValueType:= cdsGridDataHAS_DOCUMENTATION.FieldValueType;
              DisplayBoolValues:= cdsGridDataHAS_DOCUMENTATION.DisplayBoolValues;
            end;

          while not cdsGridData.Eof do
            begin
              Append;
              FieldByName('ORIGIN_INDEX').Value:= 4;
              CompositeDataSet.AssignFields(cdsGridData);
              Post;

              cdsGridData.Next;
            end;
        finally
          cdsGridData.Bookmark:= b;
        end;  { try }
      end;
  end;

begin
  // do not call inherited

  CompositeDataSet:= TAbmesClientDataSet.Create(Self);
  try
    CreateCompositeDataSetStructure;
    FillCompositeDataSet;
    TrptOperationInputOutput.PrintReport(CompositeDataSet, dsData.DataSet);
  finally
    FreeAndNil(CompositeDataSet);
  end;  { try }
end;

procedure TfmOperationInputOutput.grdDataDblClick(Sender: TObject);
var
  Field: TField;
begin
  inherited;
  Field:= grdData.Columns[grdData.Col - 1].Field;
  if (Field = cdsGridDataTO_LEAVE_DETAIL_TECH_QUANTITY) then
    TfmOperationMovements.ShowForm(dmDocClient, cdsGridData, EditMode, doNone, False, mdOutAndWaste);
end;

procedure TfmOperationInputOutput.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var
  Highlight: Boolean;
  Field: TField;
begin
  inherited;
  Highlight:= (gdSelected in State);
  Field:= Column.Field;

  if not Assigned(Field) or Highlight then
    Exit;

  if (Field = cdsGridDataRESERVE_DAYS) then
    begin
      if (Field.AsInteger < 0) then
        begin
          if (Field.AsInteger > -LoginContext.ProductionOrderLateDays) then
            Background:= ccModelActualLate
          else
            Background:= ccModelLate;
        end;  { if }
    end;  { if }

  if (Field = cdsGridDataHAS_CAPACITY_DEFICIT) and Field.AsBoolean then
    Background:= ccTotalLateNotSelected;
end;

procedure TfmOperationInputOutput.grdOutputGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var
  Highlight: Boolean;
  Field: TField;
begin
  inherited;
  Highlight:= (gdSelected in State);
  Field:= Column.Field;

  if not Assigned(Field) or Highlight then
    Exit;

  if (Field = cdsOperationOutputRESERVE_DAYS) then
    begin
      if (Field.AsInteger < 0) then
        begin
          if (Field.AsInteger > -LoginContext.ProductionOrderLateDays) then
            Background:= ccModelActualLate
          else
            Background:= ccModelLate;
        end;  { if }
    end;  { if }
end;

procedure TfmOperationInputOutput.actShowCapacityGraphUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= cdsGridData.Active;
end;

procedure TfmOperationInputOutput.actShowCapacityGraphExecute(
  Sender: TObject);
begin
  inherited;
  TfmCapacityGraph.ShowGraph(
    dmDocClient,
    atRealization,
    cdsGridDataDEPT_CODE.AsInteger,
    cdsGridDataTREATMENT_BEGIN_DATE.AsDateTime
  );
end;

procedure TfmOperationInputOutput.actModelStatusExecute(Sender: TObject);
begin
  inherited;

  if TfmModelStatus.ShowForm(dmDocClient, cdsGridData, EditMode) then
    RefreshDataSet(cdsGridData);
end;

procedure TfmOperationInputOutput.actModelStatusUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

function TfmOperationInputOutput.GetPrintButtonOnToolbarEnabled: Boolean;
begin
  Result:= False;
end;

procedure TfmOperationInputOutput.actModelCapacityStatusUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmOperationInputOutput.actModelCapacityStatusExecute(
  Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaModelCapacityStatus);
  TfmModelCapacityStatus.ShowForm(dmDocClient, cdsGridData, emReadOnly);
end;

procedure TfmOperationInputOutput.grdDataColumns15GetCellParams(
  Sender: TObject; EditMode: Boolean; Params: TColCellParamsEh);
begin
  inherited;
  if cdsGridDataMLMSO_IS_AUTO_MOVEMENT.AsBoolean then
    Params.Background:= $00DECCC0;
end;

procedure TfmOperationInputOutput.actInputDetailDocExecute(
  Sender: TObject);
begin
  inherited;
  Assert(Assigned(dmDocClient));
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotProduct,
    cdsGridDataDETAIL_DOC_BRANCH_CODE,
    cdsGridDataDETAIL_DOC_CODE);
end;

procedure TfmOperationInputOutput.actInputDetailDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= cdsGridDataDETAIL_HAS_DOC.AsBoolean;
end;

end.
