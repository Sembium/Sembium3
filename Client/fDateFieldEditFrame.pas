unit fDateFieldEditFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFieldEditFrame, DB, ActnList, JvToolEdit, JvDBControls, StdCtrls,
  Mask, DBCtrls, Buttons, ExtCtrls, DBClient, AbmesClientDataSet,
  AbmesFields, JvExMask, JvMaskEdit, AbmesDBDateEdit, uSection, System.Actions;

type
  TfrDateFieldEditFrame = class(TFieldEditFrame)
    edtDate: TJvDBMaskEdit;
    deDate: TAbmesDBDateEdit;
    pnlEditButtons: TPanel;
    deCalendarButton: TAbmesDBDateEdit;
    btnClearFieldValues: TSpeedButton;
    cdsDate: TAbmesClientDataSet;
    cdsDateTHE_DATE: TAbmesSQLTimeStampField;
    dsDate: TDataSource;
    actDropDown: TAction;
    procedure edtDateChange(Sender: TObject);
    procedure actFrameUpdate(Sender: TObject);
    procedure cdsDateTHE_DATEChange(Sender: TField);
    procedure actDropDownUpdate(Sender: TObject);
    procedure actDropDownExecute(Sender: TObject);
  private
    FFontColor: TColor;
    FInDataChange: Boolean;
    FNeedsInitialUpdate: Boolean;
    FOpeningDatasets: TMultiPassSection;
    FClosingDatasets: TMultiPassSection;
  protected
    procedure DataChange(Sender: TObject); override;
    procedure UpdateData(Sender: TObject); override;
    function GetFocusControl: TWinControl; override;
  public
    property FontColor: TColor read FFontColor write FFontColor;

    constructor Create(AOwner: TComponent); override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  end;

implementation

uses uUtils, uColorConsts, dMain, uClientPeriods, Menus;

{$R *.dfm}

{ TfrDateFieldEditFrame }

procedure TfrDateFieldEditFrame.CloseDataSets;
begin
  FClosingDatasets.TempEnter/
    procedure begin
      cdsDate.Close;
      inherited;
    end;
end;

procedure TfrDateFieldEditFrame.OpenDataSets;
begin
  FOpeningDatasets.TempEnter/
    procedure begin
      with cdsDate do
        if not Active then
          begin
            CreateDataSet;
            Append;
          end;
      inherited OpenDataSets;
    end;
end;

procedure TfrDateFieldEditFrame.DataChange(Sender: TObject);
begin
  inherited DataChange(Sender);

  if not SettingModified and
     not SettingEdit and
     (FieldCount > 0) and
     Assigned(Fields[0]) then
    begin
      FInDataChange:= True;
      try
        if not cdsDate.Active then
          begin
            cdsDate.CreateDataSet;
            cdsDate.Append;
          end;

        cdsDateTHE_DATE.AsVariant:= Fields[0].AsVariant;

      finally
        FInDataChange:= False;
      end;  { try }
    end;  { if }
end;

procedure TfrDateFieldEditFrame.edtDateChange(Sender: TObject);
begin
  inherited;
  if not FInDataChange then
    begin
      if (not FOpeningDatasets.IsEntered) and (not FClosingDatasets.IsEntered) then
        Edit;

      Modified;
    end;
end;

function TfrDateFieldEditFrame.GetFocusControl: TWinControl;
begin
  if edtDate.Visible then
    Result:= edtDate
  else
    Result:= deDate;
end;

procedure TfrDateFieldEditFrame.UpdateData(Sender: TObject);
begin
  inherited UpdateData(Sender);

  Assert(cdsDate.Active);
  Assert(FieldCount > 0);
  Assert(Assigned(Fields[0]));
  Assert(Assigned(Fields[0].DataSet));

  cdsDate.UpdateRecord;

  try
    CheckEditMode(Fields[0].DataSet);
    Fields[0].AsVariant:= cdsDateTHE_DATE.AsVariant;
  except
    Reset;
    raise;
  end;  { try }
end;

procedure TfrDateFieldEditFrame.actDropDownExecute(Sender: TObject);
begin
  inherited;
  deCalendarButton.DoClick;
end;

procedure TfrDateFieldEditFrame.actDropDownUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not ReadOnly;
end;

procedure TfrDateFieldEditFrame.actFrameUpdate(Sender: TObject);
begin
  inherited;
  if FNeedsInitialUpdate then
    begin
      FNeedsInitialUpdate:= False;
      DataChange(Self);
    end;

  if not (FieldCount > 0) then
    pnlEditButtons.Visible:= False
  else
    pnlEditButtons.Visible:=
      not ReadOnly and
      Assigned(dsData.DataSet) and
      dsData.DataSet.Active and
      (dsData.DataSet.CanModify) and
      Assigned(Fields[0]) and
      Fields[0].CanModify;

  pnlEditButtons.Height:= Height - 3;
  pnlEditButtons.Top:= 1;
  deCalendarButton.Height:= btnClearFieldValues.Height;
  deCalendarButton.Top:= (pnlEditButtons.Height - deCalendarButton.Height) div 2;
  pnlEditButtons.Left:= Width - pnlEditButtons.Width - 2;

  edtDate.Visible:= (dmMain.DateFormat = diWeek);
  edtDate.ReadOnly:= not pnlEditButtons.Visible;
  edtDate.Font.Color:= FFontColor;
  deDate.Visible:= not edtDate.Visible;
  deDate.ReadOnly:= not pnlEditButtons.Visible;
  edtDate.Color:= DateReadOnlyColors[edtDate.ReadOnly];
  edtDate.Font.Color:= FFontColor;
  deDate.Color:= DateReadOnlyColors[deDate.ReadOnly];
  deDate.Font.Color:= FFontColor;

  if Assigned(Screen.ActiveControl) and (Screen.ActiveControl.Owner = Self) then
    actDropDown.ShortCut:= TextToShortCut('Alt+Down')
  else
    actDropDown.ShortCut:= scNone;
end;

constructor TfrDateFieldEditFrame.Create(AOwner: TComponent);
begin
  inherited;
  FInDataChange:= False;
  FNeedsInitialUpdate:= True;
  FFontColor:= clWindowText;
end;

procedure TfrDateFieldEditFrame.cdsDateTHE_DATEChange(Sender: TField);
begin
  inherited;
  if not FInDataChange then
    try
      FInDataChange:= True;
      ForceUpdateRecord;
    finally
      FInDataChange:= False;
    end;  { try }
end;

end.
