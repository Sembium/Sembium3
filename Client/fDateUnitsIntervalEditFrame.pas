unit fDateUnitsIntervalEditFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFieldEditFrame, DB, ActnList, StdCtrls, Buttons, DBCtrls, Mask,
  JvToolEdit, JvDBControls, ExtCtrls, ComCtrls, JvDBLookup, DBClient,
  AbmesClientDataSet, AbmesFields, JvExMask, JvExControls, JvComponent,
  AbmesDBDateEdit, System.Actions;

type
  TfrDateUnitsIntervalEditFrame = class(TFieldEditFrame)
    gbTimeUnits: TGroupBox;
    lblTimeUnit: TLabel;
    lblTimeUnitCount: TLabel;
    lblTUStart: TLabel;
    lblTUEnd: TLabel;
    cbTimeUnit: TJvDBLookupCombo;
    tbTimeUnitCount: TTrackBar;
    pnlTimeUnitsNum: TPanel;
    gbDates: TGroupBox;
    deBeginDate: TAbmesDBDateEdit;
    edtBeginDate: TDBEdit;
    deEndDate: TAbmesDBDateEdit;
    edtEndDate: TDBEdit;
    btnPrev: TBitBtn;
    btnFinePrev: TBitBtn;
    btnFineNext: TBitBtn;
    btnNext: TBitBtn;
    cdsLocal: TAbmesClientDataSet;
    dsLocal: TDataSource;
    cdsLocalTIME_UNIT_CODE: TAbmesFloatField;
    cdsLocalTIME_UNIT_COUNT: TAbmesFloatField;
    cdsLocalBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsTimeUnits: TAbmesClientDataSet;
    cdsTimeUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsTimeUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsTimeUnitsTABLE_NAME: TAbmesWideStringField;
    cdsTimeUnitsKEY_FIELD_NAME: TAbmesWideStringField;
    cdsTimeUnitsYEAR_UNIT_NO_NAME: TAbmesWideStringField;
    cdsTimeUnitsDEFAULT_UNIT_COUNT: TAbmesFloatField;
    cdsTimeUnitsMIN_UNIT_COUNT: TAbmesFloatField;
    cdsTimeUnitsMAX_UNIT_COUNT: TAbmesFloatField;
    cdsTimeUnitsTHE_DATE_UNIT_NAME_PLURAL: TAbmesWideStringField;
    cdsLocal_TIME_UNIT_NAME: TAbmesWideStringField;
    cdsLocal_TIME_UNIT_DEFAULT_UNIT_COUNT: TAbmesFloatField;
    cdsLocal_TIME_UNIT_MIN_UNIT_COUNT: TAbmesFloatField;
    cdsLocal_TIME_UNIT_MAX_UNIT_COUNT: TAbmesFloatField;
    cdsLocal_CENTER_DATE: TAbmesSQLTimeStampField;
    cdsLocal_END_DATE: TAbmesSQLTimeStampField;
    actNext: TAction;
    actPrev: TAction;
    actPrevFine: TAction;
    actNextFine: TAction;
    procedure tbTimeUnitCountChange(Sender: TObject);
    procedure actPrevExecute(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure actPrevFineExecute(Sender: TObject);
    procedure actNextFineExecute(Sender: TObject);
    procedure actFrameUpdate(Sender: TObject);
    procedure dsLocalDataChange(Sender: TObject; Field: TField);
    procedure cdsLocalCalcFields(DataSet: TDataSet);
  private
    FNeedsInitialUpdate: Boolean;
    FDataChanging: Boolean;
    FLocalDataChanging: Boolean;
    FIsBeginDateOriginOnIntervalChange: Boolean;
    procedure CalcBeginDate;
    procedure LocalDataChanged(Field: TField; UpdateOuterDataSet: Boolean = True);
    procedure AdjustDatesOnTimeUnitChange;
  protected
    procedure DataChange(Sender: TObject); override;
    procedure UpdateData(Sender: TObject); override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;

    property IsBeginDateOriginOnIntervalChange: Boolean read FIsBeginDateOriginOnIntervalChange write FIsBeginDateOriginOnIntervalChange;
  end;

implementation

uses
  uGraphUtils, uPeriods, uUtils;

{$R *.dfm}

{ TfrDateUnitsIntervalEditFrame }

procedure TfrDateUnitsIntervalEditFrame.CloseDataSets;
begin
  inherited;
  cdsTimeUnits.Close;
end;

procedure TfrDateUnitsIntervalEditFrame.OpenDataSets;
begin
  cdsTimeUnits.Open;
  inherited;
end;

procedure TfrDateUnitsIntervalEditFrame.tbTimeUnitCountChange(
  Sender: TObject);
begin
  inherited;

  cdsLocalTIME_UNIT_COUNT.AsInteger:= tbTimeUnitCount.Position;
  pnlTimeUnitsNum.Caption:= IntToStr(tbTimeUnitCount.Position);

  AdjustDatesOnTimeUnitChange;
end;

procedure TfrDateUnitsIntervalEditFrame.actPrevExecute(Sender: TObject);
begin
  inherited;
  cdsLocal_CENTER_DATE.AsDateTime:=
    MoveCenterDateBackward(
      cdsLocal_CENTER_DATE.AsDateTime,
      GetPeriodValue(cdsLocalTIME_UNIT_CODE.AsInteger),
      cdsLocalTIME_UNIT_COUNT.AsInteger 
    );
  CalcBeginDate;
end;

procedure TfrDateUnitsIntervalEditFrame.actNextExecute(Sender: TObject);
begin
  inherited;
  cdsLocal_CENTER_DATE.AsDateTime:=
    MoveCenterDateForward(
      cdsLocal_CENTER_DATE.AsDateTime,
      GetPeriodValue(cdsLocalTIME_UNIT_CODE.AsInteger),
      cdsLocalTIME_UNIT_COUNT.AsInteger
    );
  CalcBeginDate;
end;

procedure TfrDateUnitsIntervalEditFrame.CalcBeginDate;
begin
  cdsLocalBEGIN_DATE.AsDateTime:=
    uGraphUtils.CalcBeginDate(
      cdsLocal_CENTER_DATE.AsDateTime,
      GetPeriodValue(cdsLocalTIME_UNIT_CODE.AsInteger),
      cdsLocalTIME_UNIT_COUNT.AsInteger
    )
end;

procedure TfrDateUnitsIntervalEditFrame.actPrevFineExecute(
  Sender: TObject);
begin
  inherited;
  cdsLocal_CENTER_DATE.AsDateTime:=
    MoveCenterDateBackward(
      cdsLocal_CENTER_DATE.AsDateTime,
      GetPeriodValue(cdsLocalTIME_UNIT_CODE.AsInteger),
      2
    );
  CalcBeginDate;
end;

procedure TfrDateUnitsIntervalEditFrame.actNextFineExecute(
  Sender: TObject);
begin
  inherited;
  cdsLocal_CENTER_DATE.AsDateTime:=
    MoveCenterDateForward(
      cdsLocal_CENTER_DATE.AsDateTime,
      GetPeriodValue(cdsLocalTIME_UNIT_CODE.AsInteger),
      2
    );
  CalcBeginDate;
end;

procedure TfrDateUnitsIntervalEditFrame.LocalDataChanged(Field: TField; UpdateOuterDataSet: Boolean);
begin
  if FLocalDataChanging or FDataChanging then
    Exit;

  FLocalDataChanging:= True;
  try
    if Assigned(Field) and (Field.FieldName = 'TIME_UNIT_COUNT') then
      begin
        tbTimeUnitCount.Position:= Field.AsInteger;
        pnlTimeUnitsNum.Caption:= IntToStr(Field.AsInteger);
        AdjustDatesOnTimeUnitChange;
      end;

    if Assigned(Field) and (Field.FieldName = 'TIME_UNIT_CODE') then
      begin
        if cdsLocalTIME_UNIT_COUNT.IsNull then
          begin
            cdsLocalTIME_UNIT_COUNT.AsInteger:=
              cdsLocal_TIME_UNIT_DEFAULT_UNIT_COUNT.AsInteger;
          end;

        AdjustDatesOnTimeUnitChange;
        tbTimeUnitCount.Position:= cdsLocalTIME_UNIT_COUNT.AsInteger;
        pnlTimeUnitsNum.Caption:= IntToStr(tbTimeUnitCount.Position);

        with cdsLocal_TIME_UNIT_MIN_UNIT_COUNT do
          begin
            tbTimeUnitCount.Min:= AsInteger;
            lblTUStart.Caption:= IntToStr(AsInteger);
          end;

        with cdsLocal_TIME_UNIT_MAX_UNIT_COUNT do
          begin
            tbTimeUnitCount.Max:= AsInteger;
            lblTUEnd.Caption:= IntToStr(AsInteger);
          end;
      end;

    if UpdateOuterDataSet and
       Assigned(Field) and
       ( (Field.FieldName = 'TIME_UNIT_CODE') or
         (Field.FieldName = 'BEGIN_DATE') or
         (Field.FieldName = 'TIME_UNIT_COUNT') ) then
      ForceUpdateRecord;

  finally
    FLocalDataChanging:= False;
  end;
end;

procedure TfrDateUnitsIntervalEditFrame.AdjustDatesOnTimeUnitChange;
var
  Period: TPeriod;
begin
  if not cdsLocalTIME_UNIT_CODE.IsNull then
    begin
      Period:= GetPeriodValue(cdsLocalTIME_UNIT_CODE.AsInteger);
      if IsBeginDateOriginOnIntervalChange then
        cdsLocal_CENTER_DATE.AsDateTime:= IncDate(
          GetPeriodFirstDate(cdsLocalBEGIN_DATE.AsDateTime, Period),
          Period,
          cdsLocalTIME_UNIT_COUNT.AsInteger div 2
        )
      else
        cdsLocalBEGIN_DATE.AsDateTime:=
          uGraphUtils.CalcBeginDate(
            cdsLocal_CENTER_DATE.AsDateTime,
            Period,
            cdsLocalTIME_UNIT_COUNT.AsInteger
          );
    end;
end;

procedure TfrDateUnitsIntervalEditFrame.actFrameUpdate(Sender: TObject);
begin
  inherited;

  if FNeedsInitialUpdate then
    begin
      DataChange(Self);
      Modified;
      ForceUpdateRecord;
      FNeedsInitialUpdate:= False;
    end;
end;

constructor TfrDateUnitsIntervalEditFrame.Create(AOwner: TComponent);
begin
  inherited;
  FieldNames:= 'TIME_UNIT_CODE;BEGIN_DATE;TIME_UNIT_COUNT';
  FNeedsInitialUpdate:= True;
end;

procedure TfrDateUnitsIntervalEditFrame.DataChange(Sender: TObject);
var
  Period: TPeriod;
begin
  inherited DataChange(Sender);

  if (FieldCount > 2) and
     Assigned(Sender) and
     Assigned(Fields[0]) and
     Assigned(Fields[1]) and
     Assigned(Fields[2]) and
     not FDataChanging then
    begin
      try
        FDataChanging:= True;
        with cdsLocal do
          if not Active then
            begin
              CreateDataSet;
              Append;
            end;

        CheckEditMode(cdsLocal);

        cdsLocalTIME_UNIT_CODE.AsVariant:= Fields[0].AsVariant;
        Period:= GetPeriodValue(cdsLocalTIME_UNIT_CODE.AsInteger);
        cdsLocalBEGIN_DATE.AsVariant:= Fields[1].AsVariant;
        cdsLocalTIME_UNIT_COUNT.AsVariant:= Fields[2].AsVariant;
        cdsLocal_CENTER_DATE.AsDateTime:= IncDate(
          GetPeriodFirstDate(cdsLocalBEGIN_DATE.AsDateTime, Period),
          Period,
          cdsLocalTIME_UNIT_COUNT.AsInteger div 2
        );

      finally
        FDataChanging:= False;
      end;

      LocalDataChanged(cdsLocalTIME_UNIT_CODE, False);
    end;
end;

procedure TfrDateUnitsIntervalEditFrame.UpdateData(Sender: TObject);

  procedure SetModifiedFieldValue(AField: TField; AValue: Variant);
  begin
    if (AField.AsVariant <> AValue) then
      AField.AsVariant:= AValue;
  end;

begin
  inherited UpdateData(Sender);

  Assert(cdsLocal.Active);
  Assert(FieldCount > 2);
  Assert(Assigned(Fields[0]));
  Assert(Assigned(Fields[0].DataSet));
  Assert(Assigned(Fields[1]));
  Assert(Assigned(Fields[1].DataSet));
  Assert(Assigned(Fields[2]));
  Assert(Assigned(Fields[2].DataSet));

  if not FDataChanging then
    try
      FDataChanging:= True;
      cdsLocal.UpdateRecord;

      try
        CheckEditMode(Fields[0].DataSet);
        SetModifiedFieldValue(Fields[0], cdsLocalTIME_UNIT_CODE.AsVariant);
        CheckEditMode(Fields[1].DataSet);
        SetModifiedFieldValue(Fields[1], cdsLocalBEGIN_DATE.AsVariant);
        CheckEditMode(Fields[2].DataSet);
        SetModifiedFieldValue(Fields[2], cdsLocalTIME_UNIT_COUNT.AsVariant);
      except
        Reset;
        raise;
      end;  { try }

    finally
      FDataChanging:= False;
    end;  { try }
end;

procedure TfrDateUnitsIntervalEditFrame.dsLocalDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  LocalDataChanged(Field);
end;

procedure TfrDateUnitsIntervalEditFrame.cdsLocalCalcFields(
  DataSet: TDataSet);
begin
  inherited;

  if cdsLocalTIME_UNIT_CODE.IsNull then
    cdsLocal_END_DATE.Clear
  else
    cdsLocal_END_DATE.AsDateTime:=
      CalcEndDate(cdsLocalBEGIN_DATE.AsDateTime, GetPeriodValue(cdsLocalTIME_UNIT_CODE.AsInteger), cdsLocalTIME_UNIT_COUNT.AsInteger);
end;

end.
