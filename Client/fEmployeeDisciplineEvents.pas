unit fEmployeeDisciplineEvents;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFieldEditFrame, DB, ActnList, GridsEh, DBGridEh, AbmesDBGrid,
  ExtCtrls, StdCtrls, Buttons, DBClient, AbmesClientDataSet, AbmesFields,
  Mask, DBCtrls, ToolWin, ComCtrls, ColorNavigator, fBaseFrame, fDBFrame,
  fDateIntervalFrame, uUtils;

type
  TfrEmployeeDisciplineEvents = class(TFieldEditFrame)
    actAddEvent: TAction;
    cdsGridData: TAbmesClientDataSet;
    dsGridData: TDataSource;
    pnlGrid: TPanel;
    grdDisciplineEvents: TAbmesDBGrid;
    pnlButtons: TPanel;
    pnlSummary: TPanel;
    pnlEditButtons: TPanel;
    btnAddEvent: TSpeedButton;
    lblTotalNegativeRating: TLabel;
    edtTotalNegativeRating: TDBEdit;
    lblTotalPositiveRating: TLabel;
    edtTotalPositiveRating: TDBEdit;
    bvlSummary: TBevel;
    cdsGridDataEMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataDISCIPLINE_EVENT_CODE: TAbmesFloatField;
    cdsGridDataDISC_EVENT_TYPE_CODE: TAbmesFloatField;
    cdsGridDataDISCIPLINE_EVENT_COMMENT: TAbmesWideStringField;
    cdsGridDataDISCIPLINE_EVENT_DATE: TAbmesSQLTimeStampField;
    cdsGridData_MAX_DISCIPLINE_EVENT_CODE: TAggregateField;
    cdsGridData_TOTAL_POSITIVE_RATING: TAggregateField;
    cdsGridDataRATING: TAbmesFloatField;
    cdsGridDataIS_NEGATIVE: TAbmesFloatField;
    cdsGridDataIS_POSITIVE: TAbmesFloatField;
    cdsGridDataIS_ACTIVE: TAbmesFloatField;
    cdsGridData_TOTAL_NEGATIVE_RATING: TAggregateField;
    cdsGridDataAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataHAS_DOC_ITEMS: TAbmesFloatField;
    cdsGridDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCREATE_TIME: TAbmesSQLTimeStampField;
    cdsGridDataSTORNO_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataSTORNO_DATE: TAbmesSQLTimeStampField;
    cdsGridDataSTORNO_TIME: TAbmesSQLTimeStampField;
    cdsGridDataIS_NOT_STORNO: TAbmesFloatField;
    cdsGridDataOLD_DISCIPLINE_EVENT_CODE: TAbmesFloatField;
    cdsGridDataDIRECT_STORNO: TAbmesFloatField;
    actEditEvent: TAction;
    btnEditEvent: TSpeedButton;
    cdsGridData_STATUS_NAME: TAbmesWideStringField;
    actShowStorno: TAction;
    pnlEmployeeDisciplineEventsNavigator: TPanel;
    ToolBar4: TToolBar;
    navEmployeeDisciplineEvents: TDBColorNavigator;
    tlbTopButtons: TToolBar;
    btnShowStorno: TSpeedButton;
    sepDocs: TToolButton;
    btnDocs: TSpeedButton;
    sepShowStorno: TToolButton;
    actShowActive: TAction;
    actShowPassive: TAction;
    btnShowActive: TSpeedButton;
    btnShowPassive: TSpeedButton;
    sepDateInterval: TToolButton;
    pnlDateInterval: TPanel;
    frDateInterval: TfrDateIntervalFrame;
    cdsFilter: TAbmesClientDataSet;
    cdsFilterBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsFilterEND_DATE: TAbmesSQLTimeStampField;
    actPrint: TAction;
    sepPrint: TToolButton;
    btnPrint: TToolButton;
    cdsFilter_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsFilter_DATE_INTERVAL: TAbmesWideStringField;
    cdsFilter_EMPLOYEE_NO: TAbmesFloatField;
    cdsGridDataDISCIPLINE_EVENT_STATE_CODE: TAbmesFloatField;
    cdsDisciplineEventStates: TAbmesClientDataSet;
    cdsDisciplineEventStatesDISCIPLINE_EVENT_STATE_CODE: TAbmesFloatField;
    cdsDisciplineEventStatesDISCIPLINE_EVENT_STATE_NAME: TAbmesWideStringField;
    cdsGridData_DISCIPLINE_EVENT_STATE: TAbmesWideStringField;
    cdsGridDataSTATUS_CODE: TAbmesFloatField;
    actShowReplaced: TAction;
    actShowCanceled: TAction;
    btnShowCanceled: TSpeedButton;
    btnShowReplaced: TSpeedButton;
    cdsGridDataIS_IN_NORMAL_STATE: TAbmesFloatField;
    cdsGridDataDISC_EVENT_TYPE_NAME: TAbmesWideStringField;
    cdsGridDataACTIVE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsGridDataACTIVE_DATE_UNIT_COUNT: TAbmesFloatField;
    cdsGridDataCOLOR: TAbmesFloatField;
    cdsGridDataBACKGROUND_COLOR: TAbmesFloatField;
    procedure actShowCanceledExecute(Sender: TObject);
    procedure actShowReplacedExecute(Sender: TObject);
    procedure actAddEventExecute(Sender: TObject);
    procedure actAddEventUpdate(Sender: TObject);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure grdDisciplineEventsGetCellParams(Sender: TObject;
      Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
    procedure cdsGridDataDISC_EVENT_TYPE_CODEChange(Sender: TField);
    procedure cdsGridDataDISCIPLINE_EVENT_DATEChange(Sender: TField);
    procedure actEditEventUpdate(Sender: TObject);
    procedure actEditEventExecute(Sender: TObject);
    procedure grdDisciplineEventsDblClick(Sender: TObject);
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
    procedure grdDisciplineEventsDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure actShowStornoExecute(Sender: TObject);
    procedure cdsGridDataFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure actFrameUpdate(Sender: TObject);
    procedure btnDocsClick(Sender: TObject);
    procedure actShowActiveExecute(Sender: TObject);
    procedure actShowPassiveExecute(Sender: TObject);
    procedure frDateIntervaldsDataDataChange(Sender: TObject;
      Field: TField);
    procedure actPrintUpdate(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure cdsFilterCalcFields(DataSet: TDataSet);
  private
    FDataSetsOpened: Boolean;
    FNewDisciplineEventCode: Integer;
    procedure RecalcDataFields;  // vsichki tia mojeshe da sa lookups i calculates, ako mojeshe da se pravi aggregate po tiah
    procedure Refilter(ABookmark: TBookmark);
  protected
    procedure NewReadOnlySet; override;
  public
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function LocateDisciplineEvent(ADisciplineEventCode: Integer): Boolean;
  end;

implementation

uses
  dMain, fEmployeeDisciplineEvent, uClientConsts, AbmesDialogs, uClientTypes,
  uPeriods, DateUtils, uClientUtils, uColorConsts,
  uDocUtils, fEditForm, StrUtils, rEmployeeDisciplineEvents, uTreeClientUtils,
  uClientDateTime;

{$R *.dfm}

resourcestring
  SFutureDisciplineEventNotAllowed = 'Не можете да въвеждате бъдещо Дисциплинарно Събитие!';
  SStorno = 'Анул.';

const
  desNormal = 1;
  desReplaced = 2;
  desCanceled = 3;

procedure TfrEmployeeDisciplineEvents.actAddEventExecute(Sender: TObject);
var
  b: TBookmark;
begin
  inherited;
  b:= cdsGridData.Bookmark;
  if not TfmEmployeeDisciplineEvent.ShowForm(dmDocClient, cdsGridData, emInsert) then
    cdsGridData.Bookmark:= b;
end;

procedure TfrEmployeeDisciplineEvents.actAddEventUpdate(Sender: TObject);
begin
  inherited;
  actAddEvent.Enabled:= not ReadOnly;
end;

procedure TfrEmployeeDisciplineEvents.CloseDataSets;
begin
  cdsDisciplineEventStates.Close;
  inherited;
  cdsFilter.Close;
end;

procedure TfrEmployeeDisciplineEvents.OpenDataSets;
begin
  cdsFilter.CreateDataSet;
  cdsFilter.AppendRecord([]);
  inherited;
  Refilter(EmptyBookmark);
  cdsDisciplineEventStates.Open;
  FDataSetsOpened:= True;
end;

procedure TfrEmployeeDisciplineEvents.cdsGridDataNewRecord(
  DataSet: TDataSet);
var
  NowDateTime: TDateTime;
begin
  inherited;

  NowDateTime:= ContextNow;

  cdsGridDataDISCIPLINE_EVENT_CODE.AsInteger:= FNewDisciplineEventCode ;
  Inc(FNewDisciplineEventCode);
  cdsGridDataDISCIPLINE_EVENT_DATE.AsDateTime:= ContextDate;
  cdsGridDataCREATE_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
  cdsGridDataCREATE_DATE.AsDateTime:= DateOf(NowDateTime);
  cdsGridDataCREATE_TIME.AsDateTime:= TimeOf(NowDateTime);
  cdsGridDataIS_NOT_STORNO.AsBoolean:= True;
  cdsGridDataDISCIPLINE_EVENT_STATE_CODE.AsInteger:= desNormal;
  cdsGridDataIS_IN_NORMAL_STATE.AsBoolean:= True;
end;

procedure TfrEmployeeDisciplineEvents.grdDisciplineEventsGetCellParams(
  Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if (Column.Field = cdsGridDataDISC_EVENT_TYPE_NAME) and
     not (gdSelected in State) then
    begin
      if not cdsGridDataCOLOR.IsNull then
        AFont.Color:= cdsGridDataCOLOR.AsInteger;
      if not cdsGridDataBACKGROUND_COLOR.IsNull then
        Background:= cdsGridDataBACKGROUND_COLOR.AsInteger;
    end
  else
    begin
      if (Column.Field = cdsGridDataRATING) and
         not (gdSelected in State) then
        begin
          if (cdsGridDataRATING.AsInteger < 0) then
            AFont.Color:= clRed
          else
            begin
              if (cdsGridDataRATING.AsInteger > 0) then
                AFont.Color:= clGreen;
            end;
        end
      else
        begin
          if not cdsGridDataIS_ACTIVE.AsBoolean then
            AFont.Color:= clGrayText;
        end;
    end;

  if not cdsGridDataSTORNO_EMPLOYEE_CODE.IsNull then
    Background:= ccAnnuledObjectBackground;
end;

function TfrEmployeeDisciplineEvents.LocateDisciplineEvent(
  ADisciplineEventCode: Integer): Boolean;

  function LocateInDataSet: Boolean;
  begin
    cdsGridData.First;
    Result:=
      cdsGridData.Locate('DISCIPLINE_EVENT_CODE', ADisciplineEventCode, []);
  end;

  function LocateInUncheckedAction(act: TAction): Boolean;
  begin
    Result:= False;
    if act.Checked then
      Exit;

    act.Execute;

    Result:= LocateInDataSet;
    
    if not Result then
      act.Execute;
  end;

var
  b: TBookmark;
  SaveCursor: TCursor;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    cdsGridData.DisableControls;
    try
      b:= cdsGridData.Bookmark;
      try
        Result:=
          LocateInDataSet or
          LocateInUncheckedAction(actShowActive) or
          LocateInUncheckedAction(actShowPassive) or
          LocateInUncheckedAction(actShowReplaced) or
          LocateInUncheckedAction(actShowCanceled) or
          LocateInUncheckedAction(actShowStorno);

        if Result then
          b:= cdsGridData.Bookmark;
      finally
        cdsGridData.Bookmark:= b;
      end;
    finally
      cdsGridData.EnableControls;
    end;
  finally
    Screen.Cursor:= SaveCursor;
  end;
end;

procedure TfrEmployeeDisciplineEvents.RecalcDataFields;
begin
  CheckEditMode(cdsGridData);

  DoDiscEventTypeFieldChanged(
    cdsGridDataDISC_EVENT_TYPE_CODE,
    cdsGridDataDISCIPLINE_EVENT_DATE,
    nil, nil, nil, nil,
    cdsGridDataDISC_EVENT_TYPE_NAME,
    nil, nil, nil, nil, nil,
    cdsGridDataRATING,
    cdsGridDataACTIVE_DATE_UNIT_COUNT,
    cdsGridDataACTIVE_DATE_UNIT_CODE,
    cdsGridDataCOLOR,
    cdsGridDataBACKGROUND_COLOR
  );

  cdsGridDataIS_POSITIVE.AsBoolean:= not cdsGridDataRATING.IsNull and (cdsGridDataRATING.AsInteger > 0);
  cdsGridDataIS_NEGATIVE.AsBoolean:= not cdsGridDataRATING.IsNull and (cdsGridDataRATING.AsInteger < 0);

  if cdsGridDataACTIVE_DATE_UNIT_CODE.IsNull or
     cdsGridDataDISCIPLINE_EVENT_DATE.IsNull or
     cdsGridDataACTIVE_DATE_UNIT_COUNT.IsNull then
    cdsGridDataIS_ACTIVE.Clear
  else
    cdsGridDataIS_ACTIVE.AsBoolean:=
      ( IncDate(
          cdsGridDataDISCIPLINE_EVENT_DATE.AsDateTime - 1,
          GetPeriodValue(cdsGridDataACTIVE_DATE_UNIT_CODE.AsInteger),
          cdsGridDataACTIVE_DATE_UNIT_COUNT.AsInteger
        ) >= ContextDate );
end;

procedure TfrEmployeeDisciplineEvents.cdsGridDataDISC_EVENT_TYPE_CODEChange(
  Sender: TField);
begin
  inherited;
  RecalcDataFields;
end;

procedure TfrEmployeeDisciplineEvents.cdsGridDataDISCIPLINE_EVENT_DATEChange(
  Sender: TField);
begin
  inherited;
  RecalcDataFields;
end;

procedure TfrEmployeeDisciplineEvents.actEditEventUpdate(Sender: TObject);
begin
  inherited;

  with (Sender as TAction) do
    begin
      Enabled:=
        cdsGridData.Active and
        (cdsGridData.RecordCount > 0);

      if ReadOnly or (not cdsGridDataIS_NOT_STORNO.AsBoolean) then
        Hint:= SReadOnlyCaption
      else
        Hint:= SEditCaption;
    end;  { with }
end;

procedure TfrEmployeeDisciplineEvents.actEditEventExecute(Sender: TObject);
var
  em: TEditMode;
  b: TBookmark;
begin
  inherited;

  if ReadOnly or (not cdsGridDataIS_NOT_STORNO.AsBoolean) then
    em:= emReadOnly
  else
    em:= emEdit;

  b:= cdsGridData.Bookmark;
  if not TfmEmployeeDisciplineEvent.ShowForm(dmDocClient, cdsGridData, em) then
    cdsGridData.Bookmark:= b;
end;

procedure TfrEmployeeDisciplineEvents.grdDisciplineEventsDblClick(
  Sender: TObject);
begin
  inherited;
  if not actEditEvent.Execute then
    actAddEvent.Execute;
end;

procedure TfrEmployeeDisciplineEvents.cdsGridDataBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  CheckRequiredFields(cdsGridData,
    'DISCIPLINE_EVENT_DATE; DISC_EVENT_TYPE_CODE; _DISCIPLINE_EVENT_STATE; AUTHORIZE_EMPLOYEE_CODE');

  if (cdsGridDataDISCIPLINE_EVENT_DATE.AsDateTime > ContextDate) then
    raise Exception.Create(SFutureDisciplineEventNotAllowed);

  cdsGridDataIS_NOT_STORNO.AsBoolean:= cdsGridDataSTORNO_EMPLOYEE_CODE.IsNull;

  if cdsGridDataIS_NOT_STORNO.AsBoolean then
    case cdsGridDataDISCIPLINE_EVENT_STATE_CODE.AsInteger of
      desNormal:
        if cdsGridDataIS_ACTIVE.AsBoolean then
          cdsGridDataSTATUS_CODE.AsInteger:= 1
        else
          cdsGridDataSTATUS_CODE.AsInteger:= 2;

      desReplaced:
        cdsGridDataSTATUS_CODE.AsInteger:= 3;

      desCanceled:
        cdsGridDataSTATUS_CODE.AsInteger:= 4;
    else
      raise Exception.Create('Unknown discipline event state!')
    end
  else
    cdsGridDataSTATUS_CODE.AsInteger:= 5;
end;

procedure TfrEmployeeDisciplineEvents.grdDisciplineEventsDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  GridDrawColumnCell(Sender, Rect, DataCol, Column, State);
end;

procedure TfrEmployeeDisciplineEvents.cdsGridDataCalcFields(
  DataSet: TDataSet);
begin
  inherited;

  if cdsGridDataIS_NOT_STORNO.AsBoolean then
    begin
      if (cdsGridDataDISCIPLINE_EVENT_STATE_CODE.AsInteger = desNormal) then
        cdsGridData_STATUS_NAME.AsString:= cdsGridDataIS_ACTIVE.DisplayText
      else
        cdsGridData_STATUS_NAME.AsString:= cdsGridData_DISCIPLINE_EVENT_STATE.DisplayText;
    end
  else
    cdsGridData_STATUS_NAME.AsString:= SStorno;
end;

procedure TfrEmployeeDisciplineEvents.actShowStornoExecute(
  Sender: TObject);
begin
  inherited;

  with Sender as TAction do
    begin
      Checked:= not Checked;
      Refilter(IfThen(cdsGridDataSTORNO_EMPLOYEE_CODE.IsNull, cdsGridData.Bookmark, EmptyBookmark));
    end;  { with }
end;

procedure TfrEmployeeDisciplineEvents.cdsGridDataFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:=
    ( ( actShowStorno.Checked and
        (not cdsGridDataSTORNO_EMPLOYEE_CODE.IsNull)
      ) or

      ( actShowCanceled.Checked and
        cdsGridDataSTORNO_EMPLOYEE_CODE.IsNull and
        (cdsGridDataDISCIPLINE_EVENT_STATE_CODE.AsInteger = desCanceled)
      ) or

      ( actShowReplaced.Checked and
        cdsGridDataSTORNO_EMPLOYEE_CODE.IsNull and
        (cdsGridDataDISCIPLINE_EVENT_STATE_CODE.AsInteger = desReplaced)
      ) or

      ( actShowPassive.Checked and
        cdsGridDataSTORNO_EMPLOYEE_CODE.IsNull and
        (cdsGridDataDISCIPLINE_EVENT_STATE_CODE.AsInteger = desNormal) and
        (not cdsGridDataIS_ACTIVE.AsBoolean)
      ) or

      ( actShowActive.Checked and
        cdsGridDataSTORNO_EMPLOYEE_CODE.IsNull and
        (cdsGridDataDISCIPLINE_EVENT_STATE_CODE.AsInteger = desNormal) and
        cdsGridDataIS_ACTIVE.AsBoolean
      )
    ) and

    ( cdsFilterBEGIN_DATE.IsNull or
      (cdsFilterBEGIN_DATE.AsDateTime <= cdsGridDataDISCIPLINE_EVENT_DATE.AsDateTime) ) and
    ( cdsFilterEND_DATE.IsNull or
      (cdsGridDataDISCIPLINE_EVENT_DATE.AsDateTime <= cdsFilterEND_DATE.AsDateTime) );
end;

procedure TfrEmployeeDisciplineEvents.actFrameUpdate(Sender: TObject);
begin
  inherited;

  btnDocs.Enabled:= cdsGridDataHAS_DOC_ITEMS.AsBoolean;
end;

procedure TfrEmployeeDisciplineEvents.btnDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, (Sender as TControl), dotEmployeeDisciplineEvent, cdsGridData);
end;

procedure TfrEmployeeDisciplineEvents.actShowActiveExecute(
  Sender: TObject);
begin
  inherited;

  with Sender as TAction do
    begin
      Checked:= not Checked;
      Refilter(IfThen(not cdsGridDataIS_ACTIVE.AsBoolean, cdsGridData.Bookmark, EmptyBookmark));
    end;  { with }
end;

procedure TfrEmployeeDisciplineEvents.actShowCanceledExecute(
  Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    begin
      Checked:= not Checked;
      Refilter(IfThen(cdsGridDataDISCIPLINE_EVENT_STATE_CODE.AsInteger <> desCanceled, cdsGridData.Bookmark, EmptyBookmark));
    end;  { with }
end;

procedure TfrEmployeeDisciplineEvents.actShowPassiveExecute(
  Sender: TObject);
begin
  inherited;

  with Sender as TAction do
    begin
      Checked:= not Checked;
      Refilter(IfThen(cdsGridDataIS_ACTIVE.AsBoolean, cdsGridData.Bookmark, EmptyBookmark));
    end;  { with }
end;

procedure TfrEmployeeDisciplineEvents.actShowReplacedExecute(
  Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    begin
      Checked:= not Checked;
      Refilter(IfThen(cdsGridDataDISCIPLINE_EVENT_STATE_CODE.AsInteger <> desReplaced, cdsGridData.Bookmark, EmptyBookmark));
    end;  { with }
end;

procedure TfrEmployeeDisciplineEvents.Refilter(ABookmark: TBookmark);
begin
  with cdsGridData do
    begin
      DisableControls;
      try
        Filtered:= False;
        FNewDisciplineEventCode:= VarToInt(cdsGridData_MAX_DISCIPLINE_EVENT_CODE.AsVariant) + 1;
        Filtered:= True;

        if not IsBookmarkEmpty(ABookmark) then
          Bookmark:= ABookmark;
      finally
        EnableControls;
      end;  { try }
    end;  { with }
end;

procedure TfrEmployeeDisciplineEvents.frDateIntervaldsDataDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  if FDataSetsOpened then
    Refilter(EmptyBookmark);
end;

procedure TfrEmployeeDisciplineEvents.actPrintUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0);
end;

procedure TfrEmployeeDisciplineEvents.actPrintExecute(Sender: TObject);
begin
  inherited;
  // recalc calc fields
  cdsFilter.Last;
  cdsFilter.First;

  TrptEmployeeDisciplineEvents.PrintReport(cdsGridData, cdsFilter);
end;

procedure TfrEmployeeDisciplineEvents.cdsFilterCalcFields(
  DataSet: TDataSet);
var
  f: TField;
begin
  inherited;

  f:= cdsGridData.DataSetField.DataSet.FindField('EMPLOYEE_NAME');
  if Assigned(f) then
    cdsFilter_EMPLOYEE_NAME.AsString:= f.AsString
  else
    begin
      f:= cdsGridData.DataSetField.DataSet.FindField('_EMPLOYEE_NAME');
      if Assigned(f) then
        cdsFilter_EMPLOYEE_NAME.AsString:= f.AsString
    end;

  f:= cdsGridData.DataSetField.DataSet.FindField('_EMPLOYEE_NO');
  if Assigned(f) then
    cdsFilter_EMPLOYEE_NO.AsString:= f.AsString;

  cdsFilter_DATE_INTERVAL.AsString:=
    dmMain.GetDateIntervalAsString(cdsFilterBEGIN_DATE.AsDateTime, cdsFilterEND_DATE.AsDateTime);
end;

procedure TfrEmployeeDisciplineEvents.NewReadOnlySet;
begin
//  inherited; do nothing
end;

end.

