unit fAccessRule;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fBevelEditForm, Data.DB, Datasnap.DBClient, AbmesClientDataSet, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, AbmesFields, Vcl.Mask, Vcl.DBCtrls, fTreeNodeFieldEditFrame,
  fDeptFieldEditFrame, fDeptFieldEditFrameBald, fBaseFrame, fDBFrame, fFieldEditFrame, fEmployeeFieldEditFrame,
  fEmployeeFieldEditFrameBald, JvExControls, JvDBLookup, JvExExtCtrls, JvExtComponent, JvDBRadioPanel,
  fEditForm;

type
  [CanEditOuterDataset(False)]
  TfmAccessRule = class(TBevelEditForm)
    cdsDataACCESS_RULE_CODE: TAbmesFloatField;
    cdsDataACCESS_RULE_NAME: TAbmesWideStringField;
    cdsDataEMPLOYEE_CODE: TAbmesFloatField;
    cdsDataDEPT_CODE: TAbmesFloatField;
    cdsDataINCLUDE_DEPT_DESCENDANTS: TAbmesFloatField;
    cdsDataIP_ADDRESS_PATTERN: TAbmesWideStringField;
    cdsDataACCESS_TYPE_CODE: TAbmesFloatField;
    cdsDataIS_ACTIVE: TAbmesFloatField;
    edtAccessRuleName: TDBEdit;
    lblAccessRuleName: TLabel;
    gbCondition: TGroupBox;
    frUser: TfrEmployeeFieldEditFrameBald;
    lblUser: TLabel;
    frDept: TfrDeptFieldEditFrameBald;
    lblDept: TLabel;
    lblIPAddressPattern: TLabel;
    edtIPAddressPattern: TDBEdit;
    cdsAccessTypes: TAbmesClientDataSet;
    rgAccessType: TDBRadioGroup;
    chbIsEnabled: TDBCheckBox;
    lblIPAddressPatternExamples1: TLabel;
    Label1: TLabel;
    cdsAccessTypesACCESS_TYPE_CODE: TAbmesFloatField;
    cdsAccessTypesACCESS_TYPE_NAME: TAbmesWideStringField;
    chbIncludeDeptDescendants: TDBCheckBox;
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsDataDEPT_CODEChange(Sender: TField);
    procedure cdsDataBeforePost(DataSet: TDataSet);
  private
    procedure LoadAccessTypes;
  public
    procedure Initialize; override;
  end;

implementation

uses
  dMain, uUtils, uClientUtils, uClientTypes;

resourcestring
  SConditionRequired = 'Не сте задали Условие!';

{$R *.dfm}

procedure TfmAccessRule.actFormUpdate(Sender: TObject);
begin
  inherited;
  chbIncludeDeptDescendants.Enabled:= not cdsDataDEPT_CODE.IsNull;
  SetControlsReadOnly(EditMode = emReadOnly,
    [edtAccessRuleName, chbIncludeDeptDescendants, edtIPAddressPattern, chbIsEnabled]);
  rgAccessType.ReadOnly:= (EditMode = emReadOnly);
end;

procedure TfmAccessRule.cdsDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsDataEMPLOYEE_CODE.IsNull and
     cdsDataDEPT_CODE.IsNull and
     cdsDataIP_ADDRESS_PATTERN.IsNull then
    begin
      frUser.SetFocus;
      raise Exception.Create(SConditionRequired);
    end;
end;

procedure TfmAccessRule.cdsDataDEPT_CODEChange(Sender: TField);
begin
  inherited;
  if cdsDataDEPT_CODE.IsNull then
    cdsDataINCLUDE_DEPT_DESCENDANTS.AsBoolean:= False;
end;

procedure TfmAccessRule.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDataACCESS_RULE_CODE.AsInteger:= -1;
  cdsDataINCLUDE_DEPT_DESCENDANTS.AsBoolean:= False;
  cdsDataIS_ACTIVE.AsBoolean:= True;
  cdsDataACCESS_TYPE_CODE.AsInteger:= 1;
end;

procedure TfmAccessRule.Initialize;
begin
  frUser.FieldNames:= 'EMPLOYEE_CODE';
  frUser.ShowUsersOnly:= True;
  frDept.FieldNames:= 'DEPT_CODE';
  LoadAccessTypes;
  inherited;
end;

procedure TfmAccessRule.LoadAccessTypes;
begin
  rgAccessType.Values.Clear;
  rgAccessType.Items.Clear;

  cdsAccessTypes.TempOpen/
    cdsAccessTypes.ForEach/
      procedure begin
        rgAccessType.Values.Add(cdsAccessTypesACCESS_TYPE_CODE.AsString);
        rgAccessType.Items.Add(cdsAccessTypesACCESS_TYPE_NAME.AsString);
      end;
end;

end.
