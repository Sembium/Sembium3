unit fDeptDetailFlowFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, DBClient, AbmesClientDataSet, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, fBaseFrame, fDBFrame, JvExControls,
  fFieldEditFrame, fTreeNodeFilter, fProductFilter, fParamProductFilter,
  DBCtrls, Mask, JvToolEdit, JvDBControls, fDeptFilter, JvCaptionButton,
  AbmesFields, JvDBLookup, fDateIntervalFrame, JvComponent, JvComponentBase,
  JvExStdCtrls, JvDBCombobox, JvCombobox, fFilterFrame, fTreeNodeGridFilter,
  System.Actions, fTreeNodeFieldEditFrame, fProductFieldEditFrame;

type
  TfmDeptDetailFlowFilter = class(TFilterForm)
    frDeptProductFilter: TfrParamProductFilter;
    frDetailProductFilter: TfrParamProductFilter;
    rgFlowType: TDBRadioGroup;
    gbPeriod: TGroupBox;
    frDeptFilter: TfrDeptFilter;
    rgFlowLevel: TDBRadioGroup;
    frDateInterval: TfrDateIntervalFrame;
    cdsParRelProductStatuses: TAbmesClientDataSet;
    cdsParRelProductStatusesPAR_REL_PRODUCT_STATUS_CODE: TAbmesFloatField;
    cdsParRelProductStatusesPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField;
    dsParRelProductStatuses: TDataSource;
    gbParRelProductStatus: TGroupBox;
    cbMinParRelProductStatus: TJvDBLookupCombo;
    lblBetweenParRelProductStatuses: TLabel;
    cbMaxParRelProductStatus: TJvDBLookupCombo;
    gbProductCommonLevel: TGroupBox;
    cbProductCommonLevel: TJvDBComboBox;
    lblPeriod: TLabel;
    gbPartnerCommonLevel: TGroupBox;
    cbPartnerCommonLevel: TJvDBComboBox;
    frToolDetail: TfrProductFieldEditFrame;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  end;

implementation

uses
  dMain;

{$R *.dfm}

{ TfmDeptDetailFlowFilter }

procedure TfmDeptDetailFlowFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frDeptFilter.FieldNames:= 'CHOSEN_DEPTS';
  frDeptProductFilter.FieldNames:= 'CHOSEN_DEPT_PRODUCTS';
  frDetailProductFilter.FieldNames:= 'CHOSEN_DETAIL_PRODUCTS';
  frToolDetail.FieldNames:= 'TOOL_DETAIL_CODE';
end;

procedure TfmDeptDetailFlowFilter.actFormUpdate(Sender: TObject);
begin
  inherited;
  frDeptProductFilter.Visible:=
    (rgFlowLevel.Value = rgFlowLevel.Values[1]);

  frToolDetail.Visible:=
    (rgFlowLevel.Value = rgFlowLevel.Values[1]);

  gbPeriod.Visible:=
    (rgFlowType.Value = rgFlowType.Values[1]) or
    (rgFlowType.Value = rgFlowType.Values[2]);

  gbParRelProductStatus.Visible:=
    (rgFlowType.Value = rgFlowType.Values[2]);

  gbProductCommonLevel.Visible:=
    (rgFlowType.Value = rgFlowType.Values[2]);

  gbPartnerCommonLevel.Visible:=
    (rgFlowType.Value = rgFlowType.Values[2]);
end;

procedure TfmDeptDetailFlowFilter.OpenDataSets;
begin
  cdsParRelProductStatuses.Open;
  inherited OpenDataSets;
end;

procedure TfmDeptDetailFlowFilter.CloseDataSets;
begin
  inherited CloseDataSets;
  cdsParRelProductStatuses.Close;
end;

end.
