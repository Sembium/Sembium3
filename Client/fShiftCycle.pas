unit fShiftCycle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, DBClient, AbmesClientDataSet, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, AbmesDBCheckBox,
  JvComponent, JvCaptionButton, fEditForm, JvExControls, JvDBLookup,
  fShiftCycleBreaks, JvComponentBase, System.Actions;

type
  TfmShiftCycle = class(TEditForm)
    gbShiftCycle: TGroupBox;
    lblShiftNo: TLabel;
    edtShiftNo: TDBEdit;
    grpWorkDescription: TGroupBox;
    lblBeginTime: TLabel;
    lblEndTime: TLabel;
    lblHours: TLabel;
    lblPercents: TLabel;
    lblDurationHours: TLabel;
    lblDensity: TLabel;
    edtBeginTime: TDBEdit;
    edtEndTime: TDBEdit;
    edtDurationHours: TDBEdit;
    edtDensity: TDBEdit;
    chkWorkDay: TAbmesDBCheckBox;
    gbShift: TGroupBox;
    lblShift: TLabel;
    lblCaption1: TLabel;
    lblCaption2: TLabel;
    lblArrow: TLabel;
    cbShift: TJvDBLookupCombo;
    gbBreaks: TGroupBox;
    pnlBreaks: TPanel;
    lblWorkdayWorktimeHours: TLabel;
    edtWorkdayWorktimeHours: TDBEdit;
    procedure actFormUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FfmShiftCycleBreaks: TfmShiftCycleBreaks;
    FBreaksSavePoint: Integer;
  protected
    procedure DoApplyUpdates; override;
    procedure DoCancelUpdates; override;
    function GetApplyUpdatesEnabled: Boolean; override;
  public
    procedure Initialize; override;
  end;

implementation

uses
  dMain, uClientUtils, uUtils;

resourcestring
  SIncorrectTotalDurationHours = 'Продължителността на смяната и почивките не запълват точно времевия интервал от Начало до Край!';
  SExceededShCycleBreakPeriodText = 'ВрмИн на Почивката излиза извън ВрмИнт на Времевата Смяна: %s - %s';

{$R *.dfm}

{ TfmShiftCycle }

procedure TfmShiftCycle.actFormUpdate(Sender: TObject);
var
  IsReadOnly: Boolean;
begin
  inherited;
  IsReadOnly:= not dsData.DataSet.FieldByName('IS_WORK_CYCLE').AsBoolean;

  edtBeginTime.ReadOnly:= IsReadOnly;
  edtEndTime.ReadOnly:= IsReadOnly;
  edtDurationHours.ReadOnly:= IsReadOnly;
  edtDensity.ReadOnly:= IsReadOnly;

  edtBeginTime.Color:= ReadOnlyColors[IsReadOnly];
  edtEndTime.Color:= ReadOnlyColors[IsReadOnly];
  edtDurationHours.Color:= ReadOnlyColors[IsReadOnly];
  edtDensity.Color:= ReadOnlyColors[IsReadOnly];
end;

procedure TfmShiftCycle.FormCreate(Sender: TObject);
begin
  inherited;

  FfmShiftCycleBreaks:= TfmShiftCycleBreaks.CreateDockedTo(pnlBreaks);
  FfmShiftCycleBreaks.Align:= alClient;
end;

function TfmShiftCycle.GetApplyUpdatesEnabled: Boolean;
begin
  Result:=
    inherited GetApplyUpdatesEnabled or
    (FfmShiftCycleBreaks.cdsGridData.ChangeCount > 0);
end;

procedure TfmShiftCycle.Initialize;
begin
  inherited;

  FfmShiftCycleBreaks.cdsGridData.DataSetField:=
    dsData.DataSet.FieldByName('qryShiftCycleBreak') as TDataSetField;
  FBreaksSavePoint:= FfmShiftCycleBreaks.cdsGridData.SavePoint;
end;

procedure TfmShiftCycle.DoCancelUpdates;
begin
  inherited;
  FfmShiftCycleBreaks.cdsGridData.SavePoint:= FBreaksSavePoint;
end;

procedure TfmShiftCycle.DoApplyUpdates;
const
  Eps = 0.0001;
var
  TotalDurationHours: Real;
  WorkdayBeginTime: TDateTime;
  WorkdayEndTime: TDateTime;
  SaveRecNo: Integer;
begin
  with FfmShiftCycleBreaks.cdsGridData do
    begin
      if dsData.DataSet.FieldByName('IS_WORK_CYCLE').AsBoolean then
        begin
          ActiveControl:= btnOK;

          TotalDurationHours:=
            dsData.DataSet.FieldByName('WORKDAY_DURATION_HOURS').AsFloat +
            VarToFloat(FieldByName('_TOTAL_BREAK_DURATION_HOURS').AsVariant);

          WorkdayBeginTime:= dsData.DataSet.FieldByName('WORKDAY_BEGIN_TIME').AsDateTime;
          WorkdayEndTime:=  dsData.DataSet.FieldByName('WORKDAY_END_TIME').AsDateTime;

          if (WorkdayBeginTime >= WorkdayEndTime) then
            WorkdayEndTime:= WorkdayEndTime + 1;

          if (LargeZero((WorkdayEndTime - WorkdayBeginTime) - (TotalDurationHours / 24), Eps) <> 0) then
            raise Exception.Create(SIncorrectTotalDurationHours);

          DisableControls;
          try
            SaveRecNo:= RecNo;
            try
              First;
              while not Eof do
                begin
                  if (FfmShiftCycleBreaks.cdsGridDataBREAK_BEGIN_TIME.AsDateTime >
                      FfmShiftCycleBreaks.cdsGridDataBREAK_END_TIME.AsDateTime) then
                    begin
                      Edit;
                      try
                        FfmShiftCycleBreaks.cdsGridDataBREAK_END_TIME.AsDateTime:=
                          FfmShiftCycleBreaks.cdsGridDataBREAK_END_TIME.AsDateTime + 1;
                        Post;
                      except
                        Cancel;
                        raise;
                      end;  { try }
                    end;

                  if (FfmShiftCycleBreaks.cdsGridDataBREAK_BEGIN_TIME.AsDateTime < WorkdayBeginTime) then
                    begin
                      Edit;
                      try
                        FfmShiftCycleBreaks.cdsGridDataBREAK_BEGIN_TIME.AsDateTime:=
                          FfmShiftCycleBreaks.cdsGridDataBREAK_BEGIN_TIME.AsDateTime + 1;
                        FfmShiftCycleBreaks.cdsGridDataBREAK_END_TIME.AsDateTime:=
                          FfmShiftCycleBreaks.cdsGridDataBREAK_END_TIME.AsDateTime + 1;
                        Post;
                      except
                        Cancel;
                        raise;
                      end;  { try }
                    end;

                  if (FfmShiftCycleBreaks.cdsGridDataBREAK_BEGIN_TIME.AsDateTime < WorkdayBeginTime) or
                     (FfmShiftCycleBreaks.cdsGridDataBREAK_END_TIME.AsDateTime > WorkdayEndTime) then
                    begin
                      SaveRecNo:= RecNo;
                      raise Exception.CreateFmt(SExceededShCycleBreakPeriodText, [
                        FfmShiftCycleBreaks.cdsGridDataBREAK_BEGIN_TIME.AsString,
                        FfmShiftCycleBreaks.cdsGridDataBREAK_END_TIME.AsString]);
                    end;

                  Next;
                end;  { while }
            finally
              RecNo:= SaveRecNo;
            end;  { try }
          finally
            EnableControls;
          end;  { try }
        end
      else
        begin
          DisableControls;
          try
            while (RecordCount > 0) do
              Delete;

          finally
            EnableControls;
          end;  { try }
        end;
    end;  { with }

  inherited;
end;

end.


