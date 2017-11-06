unit fEmployeesFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvButtons, ActnList, JvDBLookup, Buttons, StdCtrls, ExtCtrls, Mask, DBCtrls,
  fBaseFrame, fDBFrame, fDualGridFrame, JvDBCombobox, JvExStdCtrls,
  JvComponent, JvCaptionButton, JvExControls, fFieldEditFrame,
  fDateIntervalFrame, JvComponentBase, fEmployeeFieldEditFrame,
  fEmployeeFieldEditFrameBald, fTreeNodeFieldEditFrame,
  fTreeOnlyNodeFieldEditFrame, fDiscEventTypeFieldEditFrame, JvCombobox;

type
  TfmEmployeesFilter = class(TBevelFilterForm)
    lblCompanyNo: TLabel;
    lblEmployeeAbbrev: TLabel;
    lblEmployeeName: TLabel;
    lblEmployeeMiddleName: TLabel;
    lblEmployeeLastName: TLabel;
    edtEmployeeAbbrev: TDBEdit;
    edtEmployeeName: TDBEdit;
    edtEmployeeMiddleName: TDBEdit;
    edtEmployeeLastName: TDBEdit;
    lblEducation: TLabel;
    cbEducation: TJvDBLookupCombo;
    lblGender: TLabel;
    lblProfession: TLabel;
    cbProfession: TJvDBLookupCombo;
    cbGender: TJvDBComboBox;
    cdsEducations: TAbmesClientDataSet;
    dsEducations: TDataSource;
    cdsEducationsEDUCATION_CODE: TAbmesFloatField;
    cdsEducationsEDUCATION_SHORT_NAME: TAbmesWideStringField;
    cdsEducationsEDUCATION_NAME: TAbmesWideStringField;
    cdsProfessions: TAbmesClientDataSet;
    dsProfessions: TDataSource;
    cdsProfessionsPROFESSION_CODE: TAbmesFloatField;
    cdsProfessionsPROFESSION_NAME: TAbmesWideStringField;
    cdsProfessionsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsProfessionsDOC_CODE: TAbmesFloatField;
    cdsProfessionsHOUR_PRICE: TAbmesFloatField;
    cdsProfessionsRECORD_CHANGED: TAbmesFloatField;
    cdsProfessionsHAS_DOCUMENTATION: TAbmesFloatField;
    lblEGN: TLabel;
    edtEGN: TDBEdit;
    lblStatusCode: TLabel;
    gbDisciplineStatus: TGroupBox;
    edtCompanyNo: TDBEdit;
    cdsStatuses: TAbmesClientDataSet;
    cdsStatusesCOMPANY_STATUS_CODE: TAbmesFloatField;
    cdsStatusesCOMPANY_STATUS_NAME: TAbmesWideStringField;
    dsStatuses: TDataSource;
    cbMinStatusCode: TJvDBLookupCombo;
    cbIsExternal: TJvDBComboBox;
    lblIsExternal: TLabel;
    lblIsInactive: TLabel;
    cbIsInactive: TJvDBComboBox;
    cbMaxStatusCode: TJvDBLookupCombo;
    lblStatusCodeDash: TLabel;
    cbDisciplineEventStatus: TJvDBComboBox;
    pnlDisciplineStatus: TPanel;
    lblDisciplineEventDateInterval: TLabel;
    lblAuthorizeEmployee: TLabel;
    chkHasPositiveRating: TDBCheckBox;
    chkHasNegativeRating: TDBCheckBox;
    chkHasNotPositiveRating: TDBCheckBox;
    chkHasNotNegativeRating: TDBCheckBox;
    frDisciplineEventDateInterval: TfrDateIntervalFrame;
    frAuthorizeEmployee: TfrEmployeeFieldEditFrameBald;
    frDiscEventType: TfrDiscEventTypeFieldEditFrame;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
  private
    FDisciplineEventStatusCodeField: TField;
  protected
    function GetControlReadOnly(AWinControl: TWinControl): Boolean; override;
  public
    procedure Initialize; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  end;

implementation

uses
  dMain, uClientUtils, uUserActivityConsts, uComboBoxUtils;

{$R *.dfm}

{ TfmEmployeesFilter }

procedure TfmEmployeesFilter.CloseDataSets;
begin
  cdsEducations.Close;
  cdsProfessions.Close;
  cdsStatuses.Close;
  inherited;
end;

procedure TfmEmployeesFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frDisciplineEventDateInterval.FieldNames:= 'BEGIN_DISCIPLINE_EVENT_DATE;END_DISCIPLINE_EVENT_DATE';
  frDiscEventType.FieldNames:= 'DISC_EVENT_TYPE_CODE';
  frAuthorizeEmployee.FieldNames:= 'AUTHORIZE_EMPLOYEE_CODE';
end;

function TfmEmployeesFilter.GetControlReadOnly(
  AWinControl: TWinControl): Boolean;
begin
  if (AWinControl = edtEGN) and
     not IsEGNVisible then
    Exit(True);

  Result:= inherited GetControlReadOnly(AWinControl);
end;

procedure TfmEmployeesFilter.Initialize;
begin
  inherited;
  InitializeDBComboBox(cbIsExternal);
  FDisciplineEventStatusCodeField:= dsData.DataSet.FieldByName('DISCIPLINE_EVENT_STATUS_CODE');
end;

procedure TfmEmployeesFilter.OpenDataSets;
begin
  inherited;
  cdsStatuses.Open;
  cdsProfessions.Open;
  cdsEducations.Open;
end;

procedure TfmEmployeesFilter.actFormUpdate(Sender: TObject);
begin
  inherited;
  pnlDisciplineStatus.Visible:= not FDisciplineEventStatusCodeField.IsNull;
end;

end.
