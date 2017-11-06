unit fNewFinOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvComponentBase,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, fBevelEditForm,
  fProductFieldEditFrame, fBaseFrame, fDBFrame, fFieldEditFrame,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, JvExControls, JvDBLookup,
  dDocClient, uClientTypes, AbmesFields, uBorderRelTypes, fPartnerFieldEditFrame;

type
  TfmNewFinOrder = class(TEditForm)
    gbPriority: TGroupBox;
    cbPriority: TJvDBLookupCombo;
    frExecDept: TfrDeptFieldEditFrame;
    frFinProduct: TfrProductFieldEditFrame;
    cdsPriorities: TAbmesClientDataSet;
    dsPriorities: TDataSource;
    gbSpecFinModel: TGroupBox;
    cdsPrioritiesPRIORITY_CODE: TAbmesFloatField;
    cdsPrioritiesPRIORITY_NO: TAbmesFloatField;
    cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField;
    cdsSpecFinModels: TAbmesClientDataSet;
    cdsSpecFinModelsSPEC_FIN_MODEL_CODE: TAbmesFloatField;
    cdsSpecFinModelsFINANCIAL_PRODUCT_CODE: TAbmesFloatField;
    cdsSpecFinModelsSPEC_FIN_MODEL_NAME: TAbmesWideStringField;
    cbSpecFinModel: TJvDBLookupCombo;
    dsSpecFinModels: TDataSource;
    gbBranch: TGroupBox;
    cbBranch: TJvDBLookupCombo;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField;
    cdsBranchesBRANCH_NO: TAbmesFloatField;
    cdsBranchesIS_INACTIVE: TAbmesFloatField;
    dsBranches: TDataSource;
    frFinPartner: TfrPartnerFieldEditFrame;
    btnCopyBranchToExecDept: TSpeedButton;
    actCopyBranchToExecDept: TAction;
    procedure FormCreate(Sender: TObject);
    procedure dsDataDataChange(Sender: TObject; Field: TField);
    procedure cdsSpecFinModelsBeforeOpen(DataSet: TDataSet);
    procedure actCopyBranchToExecDeptUpdate(Sender: TObject);
    procedure actCopyBranchToExecDeptExecute(Sender: TObject);
  private
    FStartBranchCode: Variant;
    FStartExecDeptCode: Variant;
    FStartPriorityCode: Variant;
    FStartWorkFinancialProductCode: Variant;
    FPartnerCode: Integer;
    FBaseBeginDate: TDateTime;
    FBaseEndDate: TDateTime;
    FBorderRelType: TBorderRelType;
    FBranchCode: Integer;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      APartnerCode: Integer = 0; ABorderRelType: TBorderRelType = brtNone;
      ABaseBeginDate: TDateTime = 0; ABaseEndDate: TDateTime = 0;
      ABranchCode: Integer = 0); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      APartnerCode: Integer = 0; ABorderRelType: TBorderRelType = brtNone;
      ABaseBeginDate: TDateTime = 0; ABaseEndDate: TDateTime = 0;
      ABranchCode: Integer = 0): Boolean;
    procedure Initialize; override;
    procedure Finalize; override;
    procedure DoApplyUpdates; override;
    procedure DoCancelUpdates; override;
  end;

implementation

uses uUtils, uProducts, uClientUtils, dMain, fTreeSelectForm, uCompanyClasses;

resourcestring
  SWorkFinProductOrSpecFinModelRequired = 'Не сте задали Оперативен ФОб или Вариант на П-МОДЕл - Финансов';

{$R *.dfm}

{ TfmNewFinOrder }

procedure TfmNewFinOrder.actCopyBranchToExecDeptExecute(Sender: TObject);
begin
  inherited;
  CheckEditMode(dsData.DataSet);
  dsData.DataSet.FieldByName('FO_EXEC_DEPT_CODE').Assign(
    dsData.DataSet.FieldByName('FO_BRANCH_CODE'));
end;

procedure TfmNewFinOrder.actCopyBranchToExecDeptUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    (not dsData.DataSet.FieldByName('FO_BRANCH_CODE').IsNull);
end;

procedure TfmNewFinOrder.cdsSpecFinModelsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsSpecFinModels.Params.ParamByName('PARTNER_CODE').Value:= dsData.DataSet.FieldByName('FO_PARTNER_CODE').AsVariant;
  cdsSpecFinModels.Params.ParamByName('BORDER_REL_TYPE_CODE').AsInteger:= BorderRelTypeToInt(FBorderRelType);
  cdsSpecFinModels.Params.ParamByName('BEGIN_DATE').AsDateTime:= FBaseBeginDate;
  cdsSpecFinModels.Params.ParamByName('END_DATE').AsDateTime:= FBaseEndDate;
  cdsSpecFinModels.Params.ParamByName('EXEC_DEPT_CODE').Value:= dsData.DataSet.FieldByName('FO_EXEC_DEPT_CODE').AsVariant;
end;

procedure TfmNewFinOrder.CloseDataSets;
begin
  inherited;
  cdsSpecFinModels.Close;
  cdsPriorities.Close;
  cdsBranches.Close;
end;

procedure TfmNewFinOrder.DoApplyUpdates;
begin
  CheckRequiredFields(dsData.DataSet, 'FO_BRANCH_CODE; FO_EXEC_DEPT_CODE; FO_PRIORITY_CODE; FO_PARTNER_CODE');

  if dsData.DataSet.FieldByName('FO_WORK_FINANCIAL_PRODUCT_CODE').IsNull and
     dsData.DataSet.FieldByName('SPEC_FIN_MODEL_CODE').IsNull then
    raise Exception.Create(SWorkFinProductOrSpecFinModelRequired);
end;

procedure TfmNewFinOrder.DoCancelUpdates;
begin
  if dsData.DataSet.State in dsEditModes then
    begin
      dsData.DataSet.FieldByName('FO_BRANCH_CODE').AsVariant:= FStartBranchCode;
      dsData.DataSet.FieldByName('FO_EXEC_DEPT_CODE').AsVariant:= FStartExecDeptCode;
      dsData.DataSet.FieldByName('FO_PRIORITY_CODE').AsVariant:= FStartPriorityCode;
      dsData.DataSet.FieldByName('FO_WORK_FINANCIAL_PRODUCT_CODE').AsVariant:= FStartWorkFinancialProductCode;
    end;
end;

procedure TfmNewFinOrder.dsDataDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if Assigned(Field) and
     ( (Field.FieldName = 'FO_PARTNER_CODE') or
       (Field.FieldName = 'FO_EXEC_DEPT_CODE')
     ) then
    begin
      Screen.TempCursor(crSQLWait)/
        procedure begin
          cdsSpecFinModels.Close;
          cdsSpecFinModels.Open;
        end;

      dsData.DataSet.FieldByName('SPEC_FIN_MODEL_CODE').Clear;
      dsData.DataSet.FieldByName('FO_WORK_FINANCIAL_PRODUCT_CODE').Clear;
    end;

  if Assigned(Field) and (Field.FieldName = 'SPEC_FIN_MODEL_CODE') and not Field.IsNull then
    dsData.DataSet.FieldByName('FO_WORK_FINANCIAL_PRODUCT_CODE').AsVariant:=
      cdsSpecFinModels.Lookup('SPEC_FIN_MODEL_CODE', Field.AsVariant, 'FINANCIAL_PRODUCT_CODE');
end;

procedure TfmNewFinOrder.Finalize;
begin
//  inherited;  do nothing
end;

procedure TfmNewFinOrder.FormCreate(Sender: TObject);
begin
  inherited;
  frExecDept.FieldNames:= 'FO_EXEC_DEPT_CODE';
  frFinProduct.FieldNames:= 'FO_WORK_FINANCIAL_PRODUCT_CODE';
  frFinProduct.TreeDetailSelection:= tdsInstance;
  frFinProduct.ProductClass:= pcFinancial;
  frFinPartner.FieldNames:= 'FO_PARTNER_CODE';
  frFinPartner.ShownCompanyClasses:= [ccFirm, ccPerson, ccCumulative];
end;

procedure TfmNewFinOrder.Initialize;
var
  FinPartnerCode: Variant;
begin
  inherited;

  dsData.DataSet.FieldByName('FO_BRANCH_CODE').DisplayLabel:=
    Trim(gbBranch.Caption);
  dsData.DataSet.FieldByName('FO_EXEC_DEPT_CODE').DisplayLabel:=
    Trim(frExecDept.gbTreeNode.Caption);
  dsData.DataSet.FieldByName('FO_PRIORITY_CODE').DisplayLabel:=
    Trim(gbPriority.Caption);

  FStartBranchCode:= dsData.DataSet.FieldByName('FO_BRANCH_CODE').AsVariant;
  FStartExecDeptCode:= dsData.DataSet.FieldByName('FO_EXEC_DEPT_CODE').AsVariant;
  FStartPriorityCode:= dsData.DataSet.FieldByName('FO_PRIORITY_CODE').AsVariant;
  FStartWorkFinancialProductCode:= dsData.DataSet.FieldByName('FO_WORK_FINANCIAL_PRODUCT_CODE').AsVariant;

  if (EditMode = emEdit) and
     dsData.DataSet.FieldByName('FO_EXEC_DEPT_CODE').IsNull then
    begin
      CheckEditMode(dsData.DataSet);

      if (LoginContext.DefaultFinOrderBranchCode > 0) then
        dsData.DataSet.FieldByName('FO_BRANCH_CODE').AsInteger:= LoginContext.DefaultFinOrderBranchCode;

      if (FBranchCode > 0) then
        dsData.DataSet.FieldByName('FO_BRANCH_CODE').AsInteger:= FBranchCode;

      if (LoginContext.DefaultFinOrderExecDeptCode > 0) then
        dsData.DataSet.FieldByName('FO_EXEC_DEPT_CODE').AsInteger:= LoginContext.DefaultFinOrderExecDeptCode;

      FinPartnerCode:=
        dmMain.SvrCompanies.GetFinPartner(FPartnerCode, BorderRelTypeToInt(FBorderRelType), FBaseBeginDate, FBaseEndDate);

      if VarIsNull(FinPartnerCode) then
        FinPartnerCode:= FPartnerCode;

      dsData.DataSet.FieldByName('FO_PARTNER_CODE').AsInteger:= FinPartnerCode;
    end;

  cdsSpecFinModels.Active:= True;
end;

procedure TfmNewFinOrder.OpenDataSets;
begin
  cdsBranches.Open;
  cdsPriorities.Open;
  inherited;
end;

procedure TfmNewFinOrder.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  APartnerCode: Integer; ABorderRelType: TBorderRelType; ABaseBeginDate, ABaseEndDate: TDateTime;
  ABranchCode: Integer);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);

  FPartnerCode:= APartnerCode;
  FBorderRelType:= ABorderRelType;
  FBaseBeginDate:= ABaseBeginDate;

  if (ABaseEndDate = 0) then
    FBaseEndDate:= ABaseBeginDate
  else
    FBaseEndDate:= ABaseEndDate;

  FBranchCode:= ABranchCode;
end;

procedure TfmNewFinOrder.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frFinProduct) then
    begin
      AFrame.ReadOnly:=
        (EditMode = emReadOnly) or
        not dsData.DataSet.FieldByName('SPEC_FIN_MODEL_CODE').IsNull;
      Exit;
    end;

  inherited;
end;

class function TfmNewFinOrder.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  APartnerCode: Integer; ABorderRelType: TBorderRelType; ABaseBeginDate, ABaseEndDate: TDateTime;
  ABranchCode: Integer): Boolean;
var
  f: TfmNewFinOrder;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin,
      APartnerCode, ABorderRelType, ABaseBeginDate, ABaseEndDate, ABranchCode);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

end.
