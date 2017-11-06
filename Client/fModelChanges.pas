unit fModelChanges;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, Menus, JvButtons, ImgList, ParamDataSet,
  ActnList, DB, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid,
  DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls, ComCtrls,
  AbmesFields, ToolWin, dDocClient, JvComponent, JvCaptionButton,
  JvComponentBase;

type
  TfmModelChanges = class(TGridForm)
    pcMain: TPageControl;
    tsMainData: TTabSheet;
    tsSystemData: TTabSheet;
    grdChanges: TAbmesDBGrid;
    cdsGridDataMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataMLL_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataMATERIAL_LIST_LINE_CHANGE_NO: TAbmesFloatField;
    cdsGridDataNO_1: TAbmesFloatField;
    cdsGridDataNO_2: TAbmesFloatField;
    cdsGridDataNO_3: TAbmesFloatField;
    cdsGridDataNO_4: TAbmesFloatField;
    cdsGridDataNO_5: TAbmesFloatField;
    cdsGridDataNO_6: TAbmesFloatField;
    cdsGridDataNO_7: TAbmesFloatField;
    cdsGridDataNO_8: TAbmesFloatField;
    cdsGridDataFORK_NO: TAbmesFloatField;
    cdsGridDataDETAIL_CODE: TAbmesFloatField;
    cdsGridDataDETAIL_NAME: TAbmesWideStringField;
    cdsGridDataDETAIL_NO: TAbmesFloatField;
    cdsGridDataO_PRODUCT_CODE: TAbmesFloatField;
    cdsGridDataO_PRODUCT_NAME: TAbmesWideStringField;                             
    cdsGridDataO_PRODUCT_NO: TAbmesFloatField;
    cdsGridDataN_PRODUCT_CODE: TAbmesFloatField;
    cdsGridDataN_PRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataN_PRODUCT_NO: TAbmesFloatField;
    cdsGridDataO_STORE_CODE: TAbmesFloatField;
    cdsGridDataO_STORE_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataN_STORE_CODE: TAbmesFloatField;
    cdsGridDataN_STORE_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataO_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataN_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataREQUEST_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataREQUEST_DATE: TAbmesSQLTimeStampField;
    cdsGridDataREQUEST_TIME: TAbmesSQLTimeStampField;
    cdsGridDataREPLY_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataREPLY_DATE: TAbmesSQLTimeStampField;
    cdsGridDataREPLY_TIME: TAbmesSQLTimeStampField;
    cdsGridDataREPLY_ACCEPT_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataREPLY_ACCEPT_DATE: TAbmesSQLTimeStampField;
    cdsGridDataREPLY_ACCEPT_TIME: TAbmesSQLTimeStampField;
    btnEditData: TBitBtn;
    grdSysInfo: TAbmesDBGrid;
    cdsGridDataO_PRODUCT_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataN_PRODUCT_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataREQUEST_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridDataREPLY_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridDataREPLY_ACCEPT_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridDataMLL_CHANGE_REPLY_TYPE_CODE: TAbmesFloatField;
    cdsGridData_STATUS: TAbmesWideStringField;
    cdsGridData_REPLY_ACCEPT_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridData_REPLY_ACCEPT_DATE: TAbmesSQLTimeStampField;
    cdsGridData_REPLY_ACCEPT_TIME: TAbmesSQLTimeStampField;
    cdsGridDataNO_9: TAbmesFloatField;
    cdsGridDataNO_10: TAbmesFloatField;
    cdsGridDataNO_11: TAbmesFloatField;
    cdsGridDataNO_12: TAbmesFloatField;
    cdsGridDataNO_13: TAbmesFloatField;
    cdsGridDataNO_14: TAbmesFloatField;
    cdsGridDataNO_15: TAbmesFloatField;
    cdsGridDataNO_16: TAbmesFloatField;
    cdsGridDataNO_17: TAbmesFloatField;
    cdsGridDataNO_18: TAbmesFloatField;
    cdsGridDataNO_19: TAbmesFloatField;
    cdsGridDataNO_20: TAbmesFloatField;
    cdsGridDataNO_21: TAbmesFloatField;
    cdsGridDataNO_22: TAbmesFloatField;
    cdsGridDataNO_23: TAbmesFloatField;
    cdsGridDataNO_24: TAbmesFloatField;
    cdsGridDataNO_25: TAbmesFloatField;
    cdsGridDataNO_AS_TEXT: TAbmesWideStringField;
    cdsGridDataNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    cdsGridDataNO_AS_FORMATED_TEXT_EX: TAbmesWideStringField;
    cdsGridDataIS_DIRECT_CHANGE: TAbmesFloatField;
    tlbTop: TToolBar;
    actShowAutoChanges: TAction;
    btnShowAutoChanges: TToolButton;
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure grdChangesGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure actShowAutoChangesExecute(Sender: TObject);
  private
    { Private declarations }
  protected
    function GetEditRecordEnabled: Boolean; override;
  public
    class function ShowForm(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil): Boolean;
  end;

implementation

uses
  uClientTypes, uUtils, dMain, fMaterialListLineChange,
  uMaterialListLineChanges, uClientMaterialListLineChanges;

{$R *.dfm}

{ TfmModelChanges }

class function TfmModelChanges.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet): Boolean;
var
  f: TfmModelChanges;
begin
  Assert(Assigned(ADataSet), 'ADataSet must be assigned');

  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, emReadOnly);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmModelChanges.cdsGridDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;

  with cdsGridData do
    begin
      Params.ParamByName('MLL_OBJECT_BRANCH_CODE').Clear;
      Params.ParamByName('MLL_OBJECT_CODE').Clear;

      SetParams(Params, OuterDataSet);
    end;   { with }
end;

procedure TfmModelChanges.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmMaterialListLineChange;
  RegisterDateFields([cdsGridDataREQUEST_DATE, cdsGridDataREPLY_DATE, cdsGridData_REPLY_ACCEPT_DATE]);
end;

procedure TfmModelChanges.cdsGridDataCalcFields(DataSet: TDataSet);
var
  ChangeReplyType: TMllChangeReplyType;
begin
  inherited;

  ChangeReplyType:=
    IntToMllChangeReplyType(cdsGridDataMLL_CHANGE_REPLY_TYPE_CODE.AsInteger);

  cdsGridData_STATUS.AsString:=
    MllChangeReplyTypeAbbrev(ChangeReplyType, not cdsGridDataREPLY_ACCEPT_EMPLOYEE_CODE.IsNull);

  if (ChangeReplyType = crtChangeAccepted) then
    begin
      cdsGridData_REPLY_ACCEPT_EMPLOYEE_NAME.Clear;
      cdsGridData_REPLY_ACCEPT_DATE.Clear;
      cdsGridData_REPLY_ACCEPT_TIME.Clear;
    end
  else   { if }
    begin
      cdsGridData_REPLY_ACCEPT_EMPLOYEE_NAME.Assign(cdsGridDataREPLY_ACCEPT_EMPLOYEE_NAME);
      cdsGridData_REPLY_ACCEPT_DATE.Assign(cdsGridDataREPLY_ACCEPT_DATE);
      cdsGridData_REPLY_ACCEPT_TIME.Assign(cdsGridDataREPLY_ACCEPT_TIME);
    end;   { if }
end;

function TfmModelChanges.GetEditRecordEnabled: Boolean;
begin
  Result:=
    (inherited GetEditRecordEnabled) and
    (not cdsGridDataIS_DIRECT_CHANGE.AsBoolean);
end;

procedure TfmModelChanges.grdChangesGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if Assigned(Column) and (Column.Field = cdsGridData_STATUS) then
    begin
      AFont.Color:=
        MllChangeReplyTypeColor(
          IntToMllChangeReplyType(cdsGridDataMLL_CHANGE_REPLY_TYPE_CODE.AsInteger),
          not cdsGridDataREPLY_ACCEPT_EMPLOYEE_CODE.IsNull);
      Background:=
        MllChangeReplyTypeBackgroundColor(
          IntToMllChangeReplyType(cdsGridDataMLL_CHANGE_REPLY_TYPE_CODE.AsInteger),
          not cdsGridDataREPLY_ACCEPT_EMPLOYEE_CODE.IsNull);
    end;  { if }

  if ( (not (gdSelected in State)) or
       (ActiveControl <> Sender) ) and
     cdsGridDataIS_DIRECT_CHANGE.AsBoolean then
    Background:= $00E1E1E1;
end;

procedure TfmModelChanges.actShowAutoChangesExecute(Sender: TObject);
begin
  inherited;
  with (Sender as TAction) do
    begin
      Checked:= not Checked;
      cdsGridData.Filtered:= not Checked;
    end;
end;

end.
