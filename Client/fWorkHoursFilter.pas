unit fWorkHoursFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvButtons, ActnList, JvDBLookup, Buttons, StdCtrls, ExtCtrls, JvToolEdit,
  JvDBControls, Mask, DBCtrls, fBaseFrame, fDBFrame, fFieldEditFrame,
  AbmesDBCheckBox, fTreeNodeFieldEditFrame,
  fDeptFieldEditFrame, fDateIntervalFrame, JvComponent, JvCaptionButton,
  JvExControls, fFilterForm, fEmployeeFieldEditFrame,
  fEmployeeFieldEditFrameBald, JvComponentBase;

type
  TfmWorkHoursFilter = class(TFilterForm)
    gbPeriod: TGroupBox;
    gbSale: TGroupBox;
    lblSaleType: TLabel;
    lblSaleBranch: TLabel;
    cbSaleBranch: TJvDBLookupCombo;
    edtSaleNo: TDBEdit;
    lblSaleNo: TLabel;
    lblProductionOrderType: TLabel;
    lblPriority: TLabel;
    cbPriority: TJvDBLookupCombo;
    gbOperationType: TGroupBox;
    chbIsSetup: TAbmesDBCheckBox;
    chbIsNotSetup: TAbmesDBCheckBox;
    frDept: TfrDeptFieldEditFrame;
    frDateInterval: TfrDateIntervalFrame;
    gbShift: TGroupBox;
    cbShift: TJvDBLookupCombo;
    gbTeamAndEmployee: TGroupBox;
    lblBaseTeam: TLabel;
    edtTeamNo: TDBEdit;
    cbTeamName: TJvDBLookupCombo;
    lblEmployee: TLabel;
    cdsProductionOrderTypes: TAbmesClientDataSet;
    cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_NAME: TAbmesWideStringField;
    cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_TEXT: TAbmesWideStringField;
    cdsProductionOrderTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    cdsProductionOrderTypesPROD_ORDER_BASE_TYPE_NO: TAbmesFloatField;
    cdsProductionOrderTypesPROD_ORDER_BASE_ROLE_CODE: TAbmesFloatField;
    cdsProductionOrderTypesPROD_ORDER_BASE_ROLE_NO: TAbmesFloatField;
    cdsProductionOrderTypesIS_REVERSIBLE: TAbmesFloatField;
    dsProductionOrderTypes: TDataSource;
    cdsSaleTypes: TAbmesClientDataSet;
    cdsSaleTypesSALE_TYPE_CODE: TAbmesFloatField;
    cdsSaleTypesSALE_TYPE_ABBREV: TAbmesWideStringField;
    cdsSaleTypesSALE_TYPE_NAME: TAbmesWideStringField;
    dsSaleTypes: TDataSource;
    cbProductionOrderType: TJvDBLookupCombo;
    cbSaleType: TJvDBLookupCombo;
    frEmployee: TfrEmployeeFieldEditFrameBald;
    frOccupationDept: TfrDeptFieldEditFrame;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    class function CanUseDocs: Boolean; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetDBFrameReadOnly(AFrame: TDBFrame): Boolean; override;
    function GetControlReadOnly(AWinControl: TWinControl): Boolean; override;
  public
    { Public declarations }
  end;

implementation

uses uClientUtils;

{$R *.dfm}

{ TfmWorkHoursFilter }

class function TfmWorkHoursFilter.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmWorkHoursFilter.OpenDataSets;
begin
  cdsProductionOrderTypes.Open;
  cdsSaleTypes.Open;
  inherited;
end;

function TfmWorkHoursFilter.GetControlReadOnly(
  AWinControl: TWinControl): Boolean;
begin
  if ((AWinControl = edtTeamNo) or (AWinControl = cbTeamName)) and
     not dsData.DataSet.FieldByName('EMPLOYEE_CODE').IsNull then
    Exit(True);

  Result:= inherited GetControlReadOnly(AWinControl);
end;

function TfmWorkHoursFilter.GetDBFrameReadOnly(AFrame: TDBFrame): Boolean;
begin
  if (AFrame = frEmployee) and
     not dsData.DataSet.FieldByName('TEAM_CODE').IsNull then
    Exit(True);

  Result:= inherited GetDBFrameReadOnly(AFrame);
end;

procedure TfmWorkHoursFilter.CloseDataSets;
begin
  inherited;
  cdsSaleTypes.Open;
  cdsProductionOrderTypes.Open;
end;

procedure TfmWorkHoursFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frEmployee.FieldNAmes:= 'EMPLOYEE_CODE';
  frOccupationDept.FieldNAmes:= 'OCCUPATION_DEPT_CODE';
end;

end.
