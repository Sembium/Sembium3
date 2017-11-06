unit fStageInputOutput;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvButtons, ParamDataSet, ActnList, DB,
  DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls,
  ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  AbmesFields, Mask, JvComponent, JvCaptionButton, JvComponentBase;

type
  TfmStageInputOutput = class(TGridForm)
    cdsGridDataTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataTREATMENT_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataRESERVE_DAYS: TAbmesFloatField;
    cdsGridDataNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    cdsGridDataDETAIL_CODE: TAbmesFloatField;
    cdsGridDataDETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataCLIENT_DETAIL_NAME: TAbmesWideStringField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataHAS_DOCUMENTATION: TAbmesFloatField;
    cdsGridDataAVAILABLE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataTO_LEAVE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataFORK_NO: TAbmesFloatField;
    actToggleClientData: TAction;
    btnToggleClientData: TSpeedButton;
    sepBeforebtnShowCapacityGraph: TToolButton;
    btnInputStageDoc: TSpeedButton;
    actInputStageDoc: TAction;
    actNewOperationMovement: TAction;
    btnNewOperationMovement: TBitBtn;
    pnlTop: TPanel;
    lblInput: TLabel;
    grdOutput: TAbmesDBGrid;
    cdsOutput: TAbmesClientDataSet;
    dsOutput: TDataSource;
    lblOutput: TLabel;
    grpStage: TGroupBox;
    lblSale: TLabel;
    edtProductionOrderIdentifier: TDBEdit;
    edtMllNo: TDBEdit;
    edtDetail: TDBEdit;
    lblMllNo: TLabel;
    lblDetail: TLabel;
    edtMllForkNo: TDBEdit;
    btnDetailDoc: TSpeedButton;
    actStageDoc: TAction;
    actDetailDoc: TAction;
    edtStageNo: TDBEdit;
    lblShowNo: TLabel;
    btnStageDoc: TSpeedButton;
    edtDept: TDBEdit;
    lblDept: TLabel;
    btnDeptDoc: TSpeedButton;
    actDeptDoc: TAction;
    pnlCurrentStage: TPanel;
    lblCurrentStage: TLabel;
    grdCurrentStage: TAbmesDBGrid;
    pnlPrint: TPanel;
    btnPrint: TBitBtn;
    actShowCapacityGraph: TAction;
    cdsGridDataDEPT_CODE: TAbmesFloatField;
    btnShowCapacityGraph: TSpeedButton;
    btnModelStatus: TBitBtn;
    actModelStatus: TAction;
    cdsGridDataML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataML_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataMLL_OBJECT_CODE: TAbmesFloatField;
    actModelCapacityStatus: TAction;
    btnModelCapacityStatus: TBitBtn;
    cdsGridDataIS_AUTO_MOVEMENT: TAbmesFloatField;
    lblMllForkNo: TLabel;
    lblInputStageDoc: TLabel;
    sepBeforeInputStageDoc: TToolButton;
    cdsOutputMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsOutputMLMS_OBJECT_CODE: TAbmesFloatField;
    cdsOutputMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsOutputMLMSO_OBJECT_CODE: TAbmesFloatField;
    cdsOutputOPERATION_TYPE_CODE: TAbmesFloatField;
    cdsOutputML_MODEL_STAGE_NO: TAbmesFloatField;
    cdsOutputTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsOutputTREATMENT_END_DATE: TAbmesSQLTimeStampField;
    cdsOutputRESERVE_DAYS: TAbmesFloatField;
    cdsOutputDEPT_CODE: TAbmesFloatField;
    cdsOutputDEPT_NAME: TAbmesWideStringField;
    cdsOutputDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataMLMS_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataMLMSO_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataOPERATION_TYPE_CODE: TAbmesFloatField;
    cdsGridDataML_MODEL_STAGE_NO: TAbmesFloatField;
    cdsGridDataDEPT_NAME: TAbmesWideStringField;
    cdsGridDataDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataDETAIL_NAME: TAbmesWideStringField;
    cdsGridDataWASTED_BEFORE_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataIN_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataOUT_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataHAS_CAPACITY_DEFICIT: TAbmesFloatField;
    cdsGridDataOPERATION_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridDataLINE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsOutputFORK_NO: TAbmesFloatField;
    cdsOutputDETAIL_CODE: TAbmesFloatField;
    cdsOutputDETAIL_NAME: TAbmesWideStringField;
    lblPriority: TLabel;
    edtPriority: TDBEdit;
    cdsOutputNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    cdsGridDataDETAIL_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDETAIL_DOC_CODE: TAbmesFloatField;
    cdsGridDataDETAIL_HAS_DOC: TAbmesFloatField;
    actInputDetailDoc: TAction;
    lblInputDetailDoc: TLabel;
    btnInputDetailDoc: TSpeedButton;
    sepBeforeInputDetailDoc: TToolButton;
    edtWorkPriority: TDBEdit;
    lblWorkPriority: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actToggleClientDataExecute(Sender: TObject);
    procedure actToggleClientDataUpdate(Sender: TObject);
    procedure actInputStageDocExecute(Sender: TObject);
    procedure actInputStageDocUpdate(Sender: TObject);
    procedure actNewOperationMovementExecute(Sender: TObject);
    procedure actNewOperationMovementUpdate(Sender: TObject);
    procedure actStageDocExecute(Sender: TObject);
    procedure actStageDocUpdate(Sender: TObject);
    procedure actDetailDocExecute(Sender: TObject);
    procedure actDeptDocExecute(Sender: TObject);
    procedure cdsGridDataBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsOutputBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
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
    procedure grdDataDblClick(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
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
  uClientUtils, uColorConsts, fModelMovementsOverview, fModelStatus,
  uUserActivityConsts, uClientConsts, fCapacityGraph, fModelCapacityStatus,
  uDocUtils, dDocClient, rStageInputOutput, uAspectTypes;

{$R *.dfm}

{ TfmStageInputOutput }

procedure TfmStageInputOutput.FormCreate(Sender: TObject);
begin
  inherited;
  RegisterDateFields(cdsGridData);
  RegisterDateFields(cdsOutput);
  ReportClass:= TrptStageInputOutput;
end;

procedure TfmStageInputOutput.actFormUpdate(Sender: TObject);
begin
  inherited;
  edtPriority.Font.Color:= dsData.DataSet.FieldByName('PRIORITY_COLOR').AsInteger;
  edtPriority.Color:= dsData.DataSet.FieldByName('PRIORITY_BACKGROUND_COLOR').AsInteger;

  grdData.Columns[4].Visible:= not FShowClientData;
  grdData.Columns[5].Visible:= FShowClientData;
end;

procedure TfmStageInputOutput.OpenDataSets;
begin
  inherited OpenDataSets;
  SetParams(cdsOutput.Params, dsData.DataSet);
  cdsOutput.Open;
end;

procedure TfmStageInputOutput.CloseDataSets;
begin
  cdsOutput.Close;
  inherited CloseDataSets;
end;

procedure TfmStageInputOutput.actToggleClientDataExecute(
  Sender: TObject);
begin
  inherited;
  FShowClientData:= not FShowClientData;
end;

procedure TfmStageInputOutput.actToggleClientDataUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked:= FShowClientData;
end;

procedure TfmStageInputOutput.actNewOperationMovementExecute(
  Sender: TObject);
begin
  inherited;

  if not LoginContext.HasUserActivity(uaNewOwnOperationMovement) then
    LoginContext.CheckUserActivity(uaNewOperationMovement);

  if TfmOperationMovement.ShowForm(
        dmDocClient,
        cdsGridData,
        emInsert,
        doNone,
        omtOrganizationOrganization) then
    begin
      RefreshDataSet(dsData.DataSet);
      RefreshDataSet(cdsGridData);
      RefreshDataSet(cdsOutput);
    end;  { if }
end;

procedure TfmStageInputOutput.actNewOperationMovementUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    not cdsGridData.IsEmpty and
    (EditMode <> emReadOnly) and
    (cdsGridDataML_MODEL_STAGE_NO.AsInteger > 0) and
    (cdsGridDataOPERATION_TYPE_CODE.AsInteger = 1) and
    (dsData.DataSet.FieldByName('OPERATION_TYPE_CODE').AsInteger = 1) and
    not cdsGridDataIS_AUTO_MOVEMENT.AsBoolean;
end;

procedure TfmStageInputOutput.actInputStageDocExecute(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dmDocClient));
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotRealStage,
    cdsGridDataDOC_BRANCH_CODE,
    cdsGridDataDOC_CODE);
end;

procedure TfmStageInputOutput.actInputStageDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= cdsGridDataHAS_DOCUMENTATION.AsBoolean;
end;

procedure TfmStageInputOutput.actStageDocExecute(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dmDocClient));
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotRealStage,
    dsData.DataSet);
end;

procedure TfmStageInputOutput.actStageDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    dsData.DataSet.FieldByName('HAS_DOCUMENTATION').AsBoolean;
end;

procedure TfmStageInputOutput.actDetailDocExecute(Sender: TObject);
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

procedure TfmStageInputOutput.actDeptDocExecute(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dmDocClient));
  dmDocClient.OpenDeptDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dsData.DataSet.FieldByName('STAGE_DEPT_CODE').AsInteger);
end;

procedure TfmStageInputOutput.cdsGridDataBeforeGetRecords(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= PackageParams((Sender as TAbmesClientDataSet).Params);
end;

procedure TfmStageInputOutput.cdsOutputBeforeGetRecords(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= PackageParams((Sender as TAbmesClientDataSet).Params);
end;

procedure TfmStageInputOutput.grdDataGetCellParams(Sender: TObject;
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

procedure TfmStageInputOutput.grdOutputGetCellParams(Sender: TObject;
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

  if (Field = cdsOutputRESERVE_DAYS) then
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

procedure TfmStageInputOutput.actShowCapacityGraphUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= cdsGridData.Active;
end;

procedure TfmStageInputOutput.actShowCapacityGraphExecute(
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

procedure TfmStageInputOutput.actModelStatusExecute(Sender: TObject);
begin
  inherited;

  if TfmModelStatus.ShowForm(dmDocClient, cdsGridData, EditMode) then
    RefreshDataSet(cdsGridData);
end;

procedure TfmStageInputOutput.actModelStatusUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

function TfmStageInputOutput.GetPrintButtonOnToolbarEnabled: Boolean;
begin
  Result:= False;
end;

procedure TfmStageInputOutput.actModelCapacityStatusUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmStageInputOutput.actModelCapacityStatusExecute(
  Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaModelCapacityStatus);
  TfmModelCapacityStatus.ShowForm(dmDocClient, cdsGridData, emReadOnly);
end;

procedure TfmStageInputOutput.grdDataColumns15GetCellParams(
  Sender: TObject; EditMode: Boolean; Params: TColCellParamsEh);
begin
  inherited;
  if cdsGridDataIS_AUTO_MOVEMENT.AsBoolean then
    Params.Background:= $00DECCC0;
end;

procedure TfmStageInputOutput.grdDataDblClick(Sender: TObject);
var
  Field: TField;
begin
  inherited;
  Field:= grdData.Columns[grdData.Col - 1].Field;
  
  if (Field = cdsGridDataTO_LEAVE_DETAIL_TECH_QUANTITY) then
    TfmModelMovementsOverview.ShowForm(dmDocClient, cdsGridData, EditMode, doNone, False, mdOutAndWaste);
end;

procedure TfmStageInputOutput.actPrintExecute(Sender: TObject);

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

        for i:= 0 to cdsOutput.FieldDefs.Count - 1 do
          if (FieldDefs.IndexOf(cdsOutput.FieldDefs[i].Name) = -1) then
            AddFieldDefToCompositeDataSet(cdsOutput.FieldDefs[i]);
      end;
  end;

  procedure FillCompositeDataSet;
  var
    b: TBookmark;
  begin
    with CompositeDataSet do
      begin
        CreateDataSet;
        with (CompositeDataSet.FieldByName('HAS_CAPACITY_DEFICIT') as TAbmesFloatField) do
          begin
            FieldValueType:= fvtBoolean;
            DisplayBoolValues:= cdsGridDataHAS_CAPACITY_DEFICIT.DisplayBoolValues;
          end;

        // izhod header
        Append;
        FieldByName('ORIGIN_INDEX').Value:= 1;
        Post;

        // izhod records
        b:= cdsOutput.Bookmark;
        cdsOutput.First;
        try
          (CompositeDataSet.FieldByName('TREATMENT_BEGIN_DATE') as TSQLTimeStampField).DisplayFormat:=
            cdsOutputTREATMENT_BEGIN_DATE.DisplayFormat;

          while not cdsOutput.Eof do
            begin
              Append;
              FieldByName('ORIGIN_INDEX').Value:= 2;
              CompositeDataSet.AssignFields(cdsOutput);
              Post;

              cdsOutput.Next;
            end;
        finally
          cdsOutput.Bookmark:= b;
        end;  { try }

        // vhod header
        Append;
        FieldByName('ORIGIN_INDEX').Value:= 3;
        Post;

        // vhod records
        b:= cdsGridData.Bookmark;
        cdsGridData.First;
        try
          (CompositeDataSet.FieldByName('TREATMENT_BEGIN_DATE') as TSQLTimeStampField).DisplayFormat:=
            cdsGridDataTREATMENT_BEGIN_DATE.DisplayFormat;
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
    TrptStageInputOutput.PrintReport(CompositeDataSet, dsData.DataSet);
  finally
    FreeAndNil(CompositeDataSet);
  end;  { try }
end;

procedure TfmStageInputOutput.actInputDetailDocExecute(Sender: TObject);
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

procedure TfmStageInputOutput.actInputDetailDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= cdsGridDataDETAIL_HAS_DOC.AsBoolean;
end;

end.
