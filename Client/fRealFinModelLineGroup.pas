unit fRealFinModelLineGroup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, ActnList, StdCtrls,
  Buttons, ExtCtrls, DBCtrls, Mask, fDateFieldEditFrame, JvExControls,
  JvDBLookup, fBaseFrame, fDBFrame, fFieldEditFrame, fTreeNodeFieldEditFrame,
  fDeptFieldEditFrame, fDeptFieldEditFrameBald, AbmesFields;

type
  TfmRealFinModelLineGroup = class(TEditForm)
    gbLine: TGroupBox;
    lblFinancialStore: TLabel;
    lblPartnerOffice: TLabel;
    lblMovementBeginDate: TLabel;
    lblMovementEndDate: TLabel;
    frFinancialStore: TfrDeptFieldEditFrameBald;
    cbPartnerOffice: TJvDBLookupCombo;
    frMovementPlanBeginDate: TfrDateFieldEditFrame;
    frMovementPlanEndDate: TfrDateFieldEditFrame;
    lblTransportDurationDays: TLabel;
    lblTransportDurationDaysMeasure: TLabel;
    edtTransportDurationDays: TDBEdit;
    lblWorkFinancialProductName: TLabel;
    edtWorkFinancialProductName: TDBEdit;
    lblPartnerShortName: TLabel;
    edtPartnerShortName: TDBEdit;
    txtArrow: TDBText;
    cdsPartnerAccounts: TAbmesClientDataSet;
    cdsPartnerAccountsACCOUNT_CODE: TAbmesFloatField;
    cdsPartnerAccountsACCOUNT_FULL_NAME: TAbmesWideStringField;
    cdsPartnerAccountsCURRENCY_PRODUCT_CODE: TAbmesFloatField;
    dsPartnerAccounts: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure cdsPartnerAccountsBeforeOpen(DataSet: TDataSet);
    procedure dsDataDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  end;

implementation

uses
  uUtils;

{$R *.dfm}

procedure TfmRealFinModelLineGroup.cdsPartnerAccountsBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsPartnerAccounts.Params.ParamByName('COMPANY_CODE').Value:=
    dsData.DataSet.FieldByName('PARTNER_CODE').AsVariant;
end;

procedure TfmRealFinModelLineGroup.CloseDataSets;
begin
  inherited;
  cdsPartnerAccounts.Close;
end;

procedure TfmRealFinModelLineGroup.dsDataDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if Assigned(Field) and (Field.FieldName = cbPartnerOffice.DataField) then
    dsData.DataSet.FieldByName('PARTNER_ACCOUNT_FULL_NAME').AsString:=
      cbPartnerOffice.Text;
end;

procedure TfmRealFinModelLineGroup.FormCreate(Sender: TObject);
begin
  inherited;
  frMovementPlanBeginDate.FieldNames:= 'EDIT_MOVEMENT_PLAN_BEGIN_DATE';
  frMovementPlanEndDate.FieldNames:= 'EDIT_MOVEMENT_PLAN_END_DATE';
  frFinancialStore.FieldNames:= 'EDIT_FIN_STORE_CODE';
  frFinancialStore.SelectStore:= True;
  frFinancialStore.SelectFinancialStore:= True;
end;

procedure TfmRealFinModelLineGroup.OpenDataSets;
begin
  inherited;
  cdsPartnerAccounts.Open;
end;

end.
