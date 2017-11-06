unit fEmployeeDateAvailabilityMovements;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fRightFlatButtonGridForm, JvComponent, JvCaptionButton, DB,
  AbmesFields, ParamDataSet, ActnList, DBClient,
  AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin,
  DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls, uClientTypes,
  JvComponentBase, DBGridEhGrouping, Menus;

type
  TfmEmployeeDateAvailabilityMovements = class(TRightFlatButtonGridForm)
    actShowStorno: TAction;
    sepShowStorno: TToolButton;
    btnShowStorno: TSpeedButton;
    procedure actInsertRecordExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actShowStornoUpdate(Sender: TObject);
    procedure actShowStornoExecute(Sender: TObject);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    FEmployeeFrameAllEmployees: TDataSet;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetGridRecordReadOnly: Boolean; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
  public
    property EmployeeFrameAllEmployees: TDataSet write FEmployeeFrameAllEmployees;
  end;

implementation

uses
  fEmployeeDateAvailabilityMovement, uColorConsts, uUserActivityConsts,
  uUtils;

{$R *.dfm}

resourcestring
  SStornoCaption = 'Ан';

procedure TfmEmployeeDateAvailabilityMovements.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmEmployeeDateAvailabilityMovement;
end;

function TfmEmployeeDateAvailabilityMovements.GetGridRecordReadOnly: Boolean;
begin
  Result:=
    inherited GetGridRecordReadOnly or
    not LoginContext.HasUserActivity(uaEmployeeMovementsEdit);
end;

procedure TfmEmployeeDateAvailabilityMovements.OpenDataSets;
begin
//  inherited;  do nothing
end;

function TfmEmployeeDateAvailabilityMovements.ShowEditForm(
  AEditMode: TEditMode): Boolean;
begin
  Result:=
    TfmEmployeeDateAvailabilityMovement.ShowForm(dmDocClient, dsGridData.DataSet, AEditMode, doNone,
      FEmployeeFrameAllEmployees);
end;

procedure TfmEmployeeDateAvailabilityMovements.CloseDataSets;
begin
//  inherited;  do nothing
end;

procedure TfmEmployeeDateAvailabilityMovements.actShowStornoUpdate(
  Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:=
    dsGridData.DataSet.Active;

  if Assigned((dsGridData.DataSet as TClientDataSet).DataSetField) and
     (dsGridData.DataSet as TClientDataSet).DataSetField.DataSet.Active and
     ((dsGridData.DataSet as TClientDataSet).DataSetField.DataSet.FieldByName('_STORNO_MOVEMENT_COUNT').AsInteger > 0) then
    (Sender as TAction).Caption:=
      IntToStr((dsGridData.DataSet as TClientDataSet).DataSetField.DataSet.FieldByName('_STORNO_MOVEMENT_COUNT').AsInteger) + SStornoCaption
  else
    (Sender as TAction).Caption:= SStornoCaption;
end;

procedure TfmEmployeeDateAvailabilityMovements.actInsertRecordExecute(
  Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaEmployeeMovementsEdit);
  inherited;
end;

procedure TfmEmployeeDateAvailabilityMovements.actShowStornoExecute(
  Sender: TObject);
var
  b: TBookmark;
begin
  inherited;

  with Sender as TAction do
    begin
      Checked:= not Checked;

      with dsGridData.DataSet do
        begin
          if FieldByName('STORNO_EMPLOYEE_CODE').IsNull then
            b:= Bookmark
          else
            b:= EmptyBookmark;
          try
            Filtered:= not Checked;
          finally
            if not IsBookmarkEmpty(b) then
              Bookmark:= b;
          end;  { try }
        end;  { with }
    end;  { with }
end;

procedure TfmEmployeeDateAvailabilityMovements.grdDataGetCellParams(
  Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if not dsGridData.DataSet.FieldByName('STORNO_EMPLOYEE_CODE').IsNull then
    Background:= ccAnnuledObjectBackground;

  if dsGridData.DataSet.FieldByName('FOR_OTHER_DATE').AsBoolean then
    AFont.Color:= clGray;

  if dsGridData.DataSet.FieldByName('IS_UNMATCHED_MOVEMENT').AsBoolean then
    AFont.Color:= clRed;
end;

end.
