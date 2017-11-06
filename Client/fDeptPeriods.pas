unit fDeptPeriods;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvButtons, DB, AbmesFields, ParamDataSet,
  ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid,
  ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  fBottomButtonGridForm, JvComponent, JvCaptionButton, JvComponentBase,
  dDocClient, uClientTypes, JvExStdCtrls, JvDBCombobox, AbmesDBCheckBox,
  fBaseFrame, fDBFrame, fFieldEditFrame, fDateIntervalFrame, Mask, JvCombobox, Menus,
  DBGridEhGrouping;

type
  TfmDeptPeriods = class(TBottomButtonGridForm)
    cdsGridDataDEPT_PERIOD_CODE: TAbmesFloatField;
    cdsGridDataDEPT_CODE: TAbmesFloatField;
    cdsGridDataBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataEND_DATE: TAbmesSQLTimeStampField;
    cdsGridDataHOUR_PRICE: TAbmesFloatField;
    cdsGridDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsGridData_MAX_DEPT_PERIOD_CODE: TAggregateField;
    cdsGridDataEST_CAPACITY_DAY_LIMIT_HOURS: TAbmesFloatField;
    pnlTop: TPanel;
    gbDept: TGroupBox;
    gbOptions: TGroupBox;
    lblsExternal: TLabel;
    lblIsRecurrent: TLabel;
    chbIsBranch: TAbmesDBCheckBox;
    chbIsStore: TAbmesDBCheckBox;
    chbIsComputerizedStore: TAbmesDBCheckBox;
    cbIsExternal: TJvDBComboBox;
    cbIsRecurrent: TJvDBComboBox;
    cdsHeader: TAbmesClientDataSet;
    cdsHeaderDEPT_CODE: TAbmesFloatField;
    cdsHeaderSHOW_NO: TAbmesWideStringField;
    cdsHeaderNAME: TAbmesWideStringField;
    cdsHeaderDOC_BRANCH_CODE: TAbmesFloatField;
    cdsHeaderDOC_CODE: TAbmesFloatField;
    cdsHeaderBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsHeaderEND_DATE: TAbmesSQLTimeStampField;
    cdsHeaderHAS_DOCUMENTATION: TAbmesFloatField;
    cdsHeaderIS_BRANCH: TAbmesFloatField;
    cdsHeaderIS_STORE: TAbmesFloatField;
    cdsHeaderIS_COMPUTERIZED_STORE: TAbmesFloatField;
    cdsHeaderIS_EXTERNAL: TAbmesFloatField;
    cdsHeaderIS_RECURRENT: TAbmesFloatField;
    dsHeader: TDataSource;
    edtName: TDBEdit;
    lblName: TLabel;
    edtCustomCode: TDBEdit;
    lblCustomCode: TLabel;
    frDateInterval: TfrDateIntervalFrame;
    tlbDeptDocs: TToolBar;
    btnDeptDocs: TToolButton;
    cdsGridDataPARALLEL_PROCESS_COUNT: TAbmesFloatField;
    cdsGridDataPARALLEL_OPERATOR_COUNT: TAbmesFloatField;
    cdsGridDataMAINTAINANCE_HOUR_PRICE: TAbmesFloatField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataHAS_DOC_ITEMS: TAbmesFloatField;
    tlbDocs: TToolBar;
    sepDocs: TToolButton;
    pnlDocs: TPanel;
    btnDocs: TToolButton;
    actDocs: TAction;
    chbIsFinStore: TAbmesDBCheckBox;
    cdsGridDataIS_PAST: TAbmesFloatField;
    cdsGridDataIS_PRESENT: TAbmesFloatField;
    cdsGridDataIS_FUTURE: TAbmesFloatField;
    actPastPeriods: TAction;
    actPresentPeriods: TAction;
    actFuturePeriods: TAction;
    tlbPastPresentFuturePeriods: TToolBar;
    sepPastPresentFuturePeriods: TToolButton;
    btnPastPeriods: TSpeedButton;
    btnPresentPeriods: TSpeedButton;
    btnFuturePeriods: TSpeedButton;
    cdsGridData_NODE_TYPE: TAbmesFloatField;
    cdsGridDataDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    cdsGridDataDOC_IS_COMPLETE: TAbmesFloatField;
    cdsGridDataACTIVE_DI_COUNT: TAbmesFloatField;
    cdsGridDataUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsGridDataUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    procedure btnDeptDocsClick(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsHeaderBeforeOpen(DataSet: TDataSet);
    procedure cdsGridDataEST_CAPACITY_DAY_LIMIT_HOURSGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGridDataBEGIN_DATEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataAfterPost(DataSet: TDataSet);
    procedure cdsGridDataAfterDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure actDocsUpdate(Sender: TObject);
    procedure actDocsExecute(Sender: TObject);
    procedure cdsGridDataFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure actPastPresentFuturePeriodsExecute(Sender: TObject);
    procedure cdsGridDataBeforeInsert(DataSet: TDataSet);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure cdsGridDataDOC_EMPTINESS_REQUIREMENT_CODEGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGridDataUNAUTHORIZED_ACTIVE_DI_COUNTGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    FExternalData: Boolean;
    FGridDataSavePoint: Integer;
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    FMaxDeptPeriodCode: Integer;
    procedure dmDocClientOnDataChanged(Sender: TObject);
    procedure RefilterPeriods;
  protected
    class function CanUseDocs: Boolean; override;
    procedure DoApplyUpdates; override;
    procedure DoCancelUpdates; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    ChangeProc: procedure of object;
    function ExternalShowForm(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True): Boolean;
    procedure Initialize; override;
    procedure Finalize; override;
  end;

implementation

uses
  dMain, uClientUtils, fDeptPeriod, uUtils, uDocUtils, uYearParts, Math,
  uClientDateTime, uTreeNodes, uDocClientUtils;

{$R *.dfm}

{ TfmDeptPeriods }

procedure TfmDeptPeriods.cdsGridDataAfterPost(DataSet: TDataSet);
begin
  inherited;
  ChangeProc;
end;

procedure TfmDeptPeriods.actDocsExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, (Sender as TAction).ActionComponent as TControl,
    dotDeptPeriod, cdsGridData);
end;

procedure TfmDeptPeriods.actDocsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
  (Sender as TAction).ImageIndex:= cdsGridDataHAS_DOC_ITEMS.AsInteger;
end;

procedure TfmDeptPeriods.actFormUpdate(Sender: TObject);
begin
  inherited;
  btnDeptDocs.ImageIndex:= cdsHeaderHAS_DOCUMENTATION.AsInteger;
end;

procedure TfmDeptPeriods.actPastPresentFuturePeriodsExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  RefilterPeriods;
end;

procedure TfmDeptPeriods.btnDeptDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnDeptDocs, dotDept, cdsHeader);
end;

class function TfmDeptPeriods.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmDeptPeriods.cdsGridDataAfterDelete(DataSet: TDataSet);
begin
  inherited;
  ChangeProc;
end;

procedure TfmDeptPeriods.Finalize;
begin
  if not FExternalData then
    inherited;
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
end;

procedure TfmDeptPeriods.FormCreate(Sender: TObject);
begin
  inherited;

  SetBaseCurrencyAbbrevColumnCaption(grdData.Columns[1]);
  SetBaseCurrencyAbbrevColumnCaption(grdData.Columns[2]);

  EditFormClass:= TfmDeptPeriod;

  RegisterDateFields(cdsGridData);

  RegisterFieldsTextVisibility(
    IsHighLevelInvestedValueVisible,
    [ cdsGridDataHOUR_PRICE,
      cdsGridDataMAINTAINANCE_HOUR_PRICE]);
end;

procedure TfmDeptPeriods.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;
  DocFieldsGetCellParams(Sender, Column, AFont, Background, State);
end;

procedure TfmDeptPeriods.Initialize;
var
  i: Integer;
  IsInstance: Boolean;
begin
  inherited;

  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  FGridDataSavePoint:= cdsGridData.SavePoint;

  LocateDateInterval(ContextDate, cdsGridData);

  IsInstance:= OuterDataSet.FieldByName('NODE_TYPE').AsInteger = Ord(ntInstance);

  for i:= 1 to grdData.Columns.Count - 3 do  // bez poslednite dve koloni za iio-ta
    grdData.Columns[i].Visible:= IsInstance;

  chbIsStore.Visible:= IsInstance;
  chbIsComputerizedStore.Visible:= IsInstance;
  chbIsFinStore.Visible:= IsInstance;
end;

procedure TfmDeptPeriods.OpenDataSets;

  procedure CreateHeaderFromOuterDataSet;
  begin
    cdsHeader.Close;
    cdsHeader.CreateDataSet;
    cdsHeader.Append;
    try
      AssignFields(OuterDataSet, cdsHeader);
      cdsHeader.Post;
    except
      cdsHeader.Cancel;
      raise;
    end;
  end;  { CreateHeaderFromOuterDataSet }

begin
  if cdsGridData.Active then
    CreateHeaderFromOuterDataSet
  else
    begin
      inherited;

      if FExternalData then
        CreateHeaderFromOuterDataSet
      else
        cdsHeader.Open;
    end;
end;

procedure TfmDeptPeriods.RefilterPeriods;
var
  DeptPeriodCode: Integer;
begin
  with cdsGridData do
    begin
      DisableControls;
      try
        DeptPeriodCode:= cdsGridDataDEPT_PERIOD_CODE.AsInteger;

        Filtered:= False;
        Filtered:= True;

        Locate('DEPT_PERIOD_CODE', DeptPeriodCode, []);
      finally
        EnableControls;
      end;  { try }
    end;  { with }
end;

procedure TfmDeptPeriods.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frDateInterval) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;  { if }

  inherited;
end;

function TfmDeptPeriods.ExternalShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean): Boolean;
begin
  SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
  FExternalData:= True;
  InternalShowForm;
  Result:= IsDataModified;
end;

procedure TfmDeptPeriods.cdsGridDataBeforeInsert(DataSet: TDataSet);
var
  SaveFiltered: Boolean;
begin
  inherited;
  cdsGridData.DisableControls;
  try
    SaveFiltered:= cdsGridData.Filtered;
    cdsGridData.Filtered:= False;
    try
      FMaxDeptPeriodCode:= 0;
      cdsGridData.First;
      while not cdsGridData.Eof do
        begin
          FMaxDeptPeriodCode:=
            Max(FMaxDeptPeriodCode, cdsGridDataDEPT_PERIOD_CODE.AsInteger);
          cdsGridData.Next;
        end;
    finally
      cdsGridData.Filtered:= SaveFiltered;
    end;
  finally
    cdsGridData.EnableControls;
  end;
end;

procedure TfmDeptPeriods.cdsGridDataBeforePost(DataSet: TDataSet);
var
  NowDate: TDateTime;
begin
  inherited;

  CheckRequiredFields([cdsGridDataBEGIN_DATE, cdsGridDataEND_DATE, cdsGridDataHOUR_PRICE]);

  if (dsData.DataSet.FieldByName('NODE_TYPE').AsInteger = Ord(ntInstance)) then
    CheckRequiredField(cdsGridDataMAINTAINANCE_HOUR_PRICE);

  CheckDatePeriodYearParts(
    cdsGridDataBEGIN_DATE.AsDateTime,
    cdsGridDataEND_DATE.AsDateTime,
    LoginContext.DatePeriodsYearPartCode);

  NowDate:= ContextDate;

  cdsGridDataIS_PAST.AsBoolean:=
    (cdsGridDataEND_DATE.AsDateTime < NowDate);
  cdsGridDataIS_FUTURE.AsBoolean:=
    (cdsGridDataBEGIN_DATE.AsDateTime > NowDate);
  cdsGridDataIS_PRESENT.AsBoolean:=
    not cdsGridDataIS_PAST.AsBoolean and
    not cdsGridDataIS_FUTURE.AsBoolean;
end;

procedure TfmDeptPeriods.cdsGridDataBEGIN_DATEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:= dmMain.GetDateIntervalAsString(
    cdsGridDataBEGIN_DATE.AsDateTime, cdsGridDataEND_DATE.AsDateTime);
end;

procedure TfmDeptPeriods.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsGridData_NODE_TYPE.Assign(OuterDataSet.FieldByName('NODE_TYPE'));
end;

procedure TfmDeptPeriods.cdsGridDataDOC_EMPTINESS_REQUIREMENT_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  DocEmptinessRequirementFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmDeptPeriods.cdsGridDataEST_CAPACITY_DAY_LIMIT_HOURSGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText and not Sender.IsNull then
    Text:= HoursToStr(Sender.AsFloat)
  else
    Text:= Sender.AsString;
end;

procedure TfmDeptPeriods.cdsGridDataFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:=
    (cdsGridDataIS_PAST.AsBoolean and actPastPeriods.Checked) or
    (cdsGridDataIS_PRESENT.AsBoolean and actPresentPeriods.Checked) or
    (cdsGridDataIS_FUTURE.AsBoolean and actFuturePeriods.Checked);
end;

procedure TfmDeptPeriods.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataDEPT_PERIOD_CODE.AsInteger:= FMaxDeptPeriodCode + 1;
  cdsGridDataDEPT_CODE.AsInteger:=
    cdsGridData.Params.ParamByName('DEPT_CODE').AsInteger;
  cdsGridDataPARALLEL_PROCESS_COUNT.AsInteger:= 1;
  cdsGridDataPARALLEL_OPERATOR_COUNT.AsInteger:= 1;

  if (dsData.DataSet.FieldByName('NODE_TYPE').AsInteger <> Ord(ntInstance)) then
    cdsGridDataHOUR_PRICE.AsFloat:= 0;
end;

procedure TfmDeptPeriods.cdsGridDataUNAUTHORIZED_ACTIVE_DI_COUNTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  UnauthorizedActiveDocItemCountFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmDeptPeriods.cdsHeaderBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsHeader.Params.AssignValues(cdsGridData.Params);
end;

procedure TfmDeptPeriods.CloseDataSets;
begin
  if not FExternalData then
    inherited;
end;

procedure TfmDeptPeriods.dmDocClientOnDataChanged(Sender: TObject);

  procedure SetFields;
  begin
    cdsGridDataDOC_EMPTINESS_REQUIREMENT_CODE.AsVariant:=
      dmDocClient.cdsDocsDOC_EMPTINESS_REQUIREMENT_CODE.AsVariant;
    cdsGridDataDOC_IS_COMPLETE.AsVariant:=
      dmDocClient.cdsDocsIS_COMPLETE.AsVariant;
    cdsGridDataACTIVE_DI_COUNT.AsInteger:=
      dmDocClient.DSDocItemCount(cdsGridData, True);
    cdsGridDataUNAUTHORIZED_ACTIVE_DI_COUNT.AsInteger:=
      cdsGridDataACTIVE_DI_COUNT.AsInteger - dmDocClient.DSAuthorizedDocItemCount(cdsGridData, True);
    cdsGridDataUNAPPROVED_ACTIVE_DI_COUNT.AsInteger:=
      cdsGridDataACTIVE_DI_COUNT.AsInteger - dmDocClient.DSApprovedDocItemCount(cdsGridData, True);

    cdsGridDataHAS_DOC_ITEMS.AsBoolean:=
      (cdsGridDataACTIVE_DI_COUNT.AsInteger > 0);
  end;

begin
  if dmDocClient.DSIsCurrent(cdsGridData) then
    begin
      if (cdsGridData.State in dsEditModes) then
        SetFields
      else
        begin
          cdsGridData.Edit;
          try
            SetFields;
            cdsGridData.Post;
          except
            cdsGridData.Cancel;
            raise;
          end;  { try }
        end;
    end;
end;

procedure TfmDeptPeriods.DoApplyUpdates;
begin
  if not FExternalData then
    inherited;
end;

procedure TfmDeptPeriods.DoCancelUpdates;
begin
  if FExternalData then
    begin
      if cdsGridData.Active then
        cdsGridData.SavePoint:= FGridDataSavePoint;
    end
  else
    inherited;
end;

end.

