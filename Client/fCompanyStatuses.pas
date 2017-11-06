unit fCompanyStatuses;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fRightFlatButtonGridForm, JvComponent, JvCaptionButton, DB,
  AbmesFields, ParamDataSet, ActnList, DBClient,
  AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin,
  DBCtrls, ColorNavigator, StdCtrls, ExtCtrls, Mask, Buttons, JvComponentBase,
  fStatusesAbstract;

type
  TfmCompanyStatuses = class(TfmStatusesAbstract)
    pnlCompanyInfo: TPanel;
    gbCompanyName: TGroupBox;
    edtCompanyName: TDBEdit;
    gbRoleAndPriority: TGroupBox;
    edtRole: TDBEdit;
    edtPriority: TDBEdit;
    cdsGridDataCOMPANY_CODE: TAbmesFloatField;
    cdsGridDataCOMPANY_STATUS_CODE: TAbmesFloatField;
    cdsGridDataCOMPANY_STATUS_NAME: TAbmesWideStringField;
    cdsGridData_COMPANY_STATUS_NAME: TAbmesWideStringField;
    cdsGridData_PRIORITY_NO: TAbmesFloatField;
    cdsGridData_BASE_ROLE_NAME: TAbmesWideStringField;
    cdsStatusesCOMPANY_STATUS_CODE: TAbmesFloatField;
    cdsStatusesCOMPANY_STATUS_NAME: TAbmesWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure cdsDataBASE_ROLE_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    procedure AssignOuterDataSetStatusFields; override;
    function IsResetStatus: Boolean; override;
  end;

implementation

uses
  fCompanyStatusForm, fGridForm, dMain, uCompanyKindClientUtils, uCompanyKinds, DateUtils,
  fEditForm, uUtils, fDBDataForm;

{$R *.dfm}

{ TfmCompanyStatuses }

procedure TfmCompanyStatuses.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmCompanyStatus;
end;

function TfmCompanyStatuses.IsResetStatus: Boolean;
begin
  Result:= (cdsGridDataCOMPANY_STATUS_CODE.AsInteger = 5);
end;

procedure TfmCompanyStatuses.AssignOuterDataSetStatusFields;
begin
  inherited;
  OuterDataSet.FieldByName('COMPANY_STATUS_NAME').AsVariant:= cdsGridData_COMPANY_STATUS_NAME.AsVariant;
end;

procedure TfmCompanyStatuses.cdsDataBASE_ROLE_CODEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text:= CompanyKindName(IntToCompanyKind(Sender.AsInteger));
end;

procedure TfmCompanyStatuses.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsGridData_PRIORITY_NO.AsVariant:= OuterDataSet.FieldByName('PRIORITY_NO').AsVariant;
  if OuterDataSet.FieldByName('BASE_ROLE_CODE').IsNull then
    cdsGridData_BASE_ROLE_NAME.Clear
  else
    cdsGridData_BASE_ROLE_NAME.AsVariant:= CompanyKindName(IntToCompanyKind(OuterDataSet.FieldByName('BASE_ROLE_CODE').AsVariant));
end;

procedure TfmCompanyStatuses.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataCOMPANY_STATUS_CODE.AsInteger:= 3;
  cdsGridDataCOMPANY_CODE.AsInteger:= OuterDataSet.FieldByName('COMPANY_CODE').AsInteger;
end;

end.

