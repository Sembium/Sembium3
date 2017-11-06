unit fShipmentNeededMaterials;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fMasterDetailForm, ExtCtrls, Menus, JvButtons,
  ParamDataSet, ActnList, DB, DBClient, AbmesClientDataSet, ComCtrls,
  ToolWin, Buttons, GridsEh, DBGridEh, AbmesDBGrid, DBCtrls, ColorNavigator,
  StdCtrls, AbmesFields, dDocClient, uClientTypes, JvComponent,
  JvCaptionButton, JvComponentBase;

type
  TfmShipmentNeededMaterials = class(TMasterDetailForm)
    btnShowAnnuledLines: TSpeedButton;
    cdsDetailMATERIAL_CODE: TAbmesFloatField;
    cdsDetailMATERIAL_NAME: TAbmesWideStringField;
    cdsDetailMATERIAL_NO: TAbmesFloatField;                                                               
    cdsDetailMATERIAL_MEASURE_CODE: TAbmesFloatField;
    cdsDetailMATERIAL_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetailMATERIAL_ACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsDetailMATERIAL_ACC_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetailDETAIL_CODE: TAbmesFloatField;
    cdsDetailDETAIL_NAME: TAbmesWideStringField;
    cdsDetailDETAIL_NO: TAbmesFloatField;
    cdsDetailDETAIL_MEASURE_CODE: TAbmesFloatField;
    cdsDetailDETAIL_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetailDETAIL_ACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsDetailDETAIL_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDetailQUANTITY: TAbmesFloatField;
    cdsDetailACCOUNT_QUANTITY: TAbmesFloatField;
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure btnShowAnnuledLinesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsDataDataChange(Sender: TObject; Field: TField);
    procedure actExcelExportUpdate(Sender: TObject);
  private
    FAnnuledLinesButtonState: Boolean;
    FOuterGrid: TAbmesDBGrid;
    procedure FetchDetails;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  public
    class function ShowForm(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True;
      AAnnuledLinesButtonState: Boolean = False; AGrid: TAbmesDBGrid = nil): Boolean;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True;
      AAnnuledLinesButtonState: Boolean = False; AGrid: TAbmesDBGrid = nil); reintroduce; virtual;
  end;

implementation

uses
  dMain, uUtils, uColorConsts;

{$R *.dfm}

{ TfmShipmentNeededMaterials }

procedure TfmShipmentNeededMaterials.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
const
  eps = -0.5;
var
  Highlight: Boolean;
  Field: TField;

begin
  inherited;

  Highlight:= (gdSelected in State);
  Field:= Column.Field;

  if Field.DataSet.Bof and Field.DataSet.Eof then
    Exit;

  if Field.DataSet.FieldByName('IS_ANNULED').AsFloat = 1 then
    if not Highlight then
      BackGround:= ccAnnuledObjectBackground
    else
  else
    begin
      if ( (Field.FieldName = '_DEV_VALUE_GAINED') and
           (Field.DataSet.FieldByName('_DEV_VALUE_GAINED').AsFloat < eps)  ) or
         ( (Field.FieldName = '_DEV_QUANTITY') and
           (Field.DataSet.FieldByName('_DEV_QUANTITY').AsFloat < eps)  ) or
         ( (Field.FieldName = '_DEV_VALUE_ADDED') and
           (Field.DataSet.FieldByName('_DEV_VALUE_ADDED').AsFloat < eps)  )  then
          begin
            if Highlight then
              Background:= ccNegativeDevSelected
            else
              Background:= ccNegativeDevNotSelected;
          end;
      if (Field.FieldName = 'SALE_ORDER_TYPE_ABBREV') and (not Highlight) then
        BackGround:= SaleOrderTypeColors[Field.DataSet.FieldByName('SALE_ORDER_TYPE_CODE').AsInteger];
      if (Field.FieldName = 'UNCOVERED_LINES') and (Field.DataSet.FieldByName('UNCOVERED_LINES').AsFloat > 0) then
        begin
          if Highlight then
            Background:= ccNegativeDevSelected
          else
            Background:= ccNegativeDevNotSelected;
        end;
    end;

  if (Field.FieldName = 'PRIORITY_FULL_NAME') and not Field.IsNull then
    begin
      if not Field.DataSet.FieldByName('_PRIORITY_COLOR').IsNull then
        AFont.Color:= Field.DataSet.FieldByName('_PRIORITY_COLOR').AsInteger;

      if not Field.DataSet.FieldByName('_PRIORITY_BACKGROUND_COLOR').IsNull then
        Background:= Field.DataSet.FieldByName('_PRIORITY_BACKGROUND_COLOR').AsInteger;
    end;  { if }
end;

procedure TfmShipmentNeededMaterials.SetDataParams(
  AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean;
  AAnnuledLinesButtonState: Boolean; AGrid: TAbmesDBGrid);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
  FAnnuledLinesButtonState:= AAnnuledLinesButtonState;
  FOuterGrid:= AGrid;
end;

class function TfmShipmentNeededMaterials.ShowForm(
  AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean;
  AAnnuledLinesButtonState: Boolean; AGrid: TAbmesDBGrid): Boolean;
var
  f: TfmShipmentNeededMaterials;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled, AAnnuledLinesButtonState, AGrid);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmShipmentNeededMaterials.CloseDataSets;
begin
  // don't call inherited
end;

procedure TfmShipmentNeededMaterials.OpenDataSets;
begin
  // don't call inherited
end;

procedure TfmShipmentNeededMaterials.btnShowAnnuledLinesClick(
  Sender: TObject);
begin
  inherited;
  dsData.DataSet.Filtered:= not btnShowAnnuledLines.Down;
end;

procedure TfmShipmentNeededMaterials.FormShow(Sender: TObject);
var
  i: Integer;
begin
  inherited;

  for i:= 0 to FOuterGrid.Columns.Count - 1 do
    if FOuterGrid.Columns[i].Visible then
      (grdData.Columns.Add).Assign(FOuterGrid.Columns[i]);

  btnShowAnnuledLines.Down:= FAnnuledLinesButtonState;
  FetchDetails;
end;

procedure TfmShipmentNeededMaterials.dsDataDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  FetchDetails;
end;

procedure TfmShipmentNeededMaterials.FetchDetails;
var
  SaveCursor: TCursor;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crSQLWait;
  with cdsDetail do
    try
      DisableControls;
      try
        Close;

        if dsData.DataSet.IsEmpty then
          ClearParams(Params)
        else
          SetParams(Params, dsData.DataSet);

        Open;
      finally
        EnableControls;
      end;  { try }
    finally
      Screen.Cursor:= SaveCursor;
    end;  { try }
end;

procedure TfmShipmentNeededMaterials.actExcelExportUpdate(Sender: TObject);
begin
//  inherited;
  (Sender as TAction).Enabled:=
    dsData.DataSet.Active and
    (dsData.DataSet.RecordCount > 0);
end;

end.
