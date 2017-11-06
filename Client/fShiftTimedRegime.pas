unit fShiftTimedRegime;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, DBClient, AbmesClientDataSet, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, AbmesFields,
  AbmesDBCheckBox, JvComponent, JvCaptionButton, fBaseFrame, fDBFrame,
  fFieldEditFrame, fDateIntervalFrame, JvComponentBase, ComCtrls, ToolWin,
  JvExStdCtrls, JvDBCombobox, DBCtrlsEh;

type
  TfmShiftTimedRegime = class(TBevelEditForm)
    lblDateIntervalFrame: TLabel;
    chkCalendarOffDays: TAbmesDBCheckBox;
    frDateIntervalFrame: TfrDateIntervalFrame;
    lblCycleDurationDays: TLabel;
    edtCycleDurationDays: TDBEdit;
    lblShiftRegimeNo: TLabel;
    edtShiftRegimeNo: TDBEdit;
    edtShiftRegimeName: TDBEdit;
    lblShiftRegimeName: TLabel;
    dsMaster: TDataSource;
    chkIsOvertime: TAbmesDBCheckBox;
    cbIsCycleOnWorkdaysOnly: TDBComboBox;
    procedure actFormUpdate(Sender: TObject);
    procedure cbIsCycleOnWorkdaysOnlyChange(Sender: TObject);
  private
    FIsCycleOnWorkdaysOnlyField: TField;
  public
    procedure Initialize; override;
  end;

implementation

uses
  dMain, uUtils;

{$R *.dfm}

{ TfmShiftTimedRegime }

procedure TfmShiftTimedRegime.actFormUpdate(Sender: TObject);
begin
  inherited;
  chkCalendarOffDays.Enabled:= not FIsCycleOnWorkdaysOnlyField.AsBoolean;
end;

procedure TfmShiftTimedRegime.cbIsCycleOnWorkdaysOnlyChange(Sender: TObject);
begin
  inherited;
  dsData.DataSet.UpdateRecord;
end;

procedure TfmShiftTimedRegime.Initialize;
begin
  inherited;
  dsMaster.DataSet:= dsData.DataSet.DataSetField.DataSet;
  FIsCycleOnWorkdaysOnlyField:= dsData.DataSet.FieldByName('IS_CYCLE_ON_WORKDAYS_ONLY');
end;

end.
