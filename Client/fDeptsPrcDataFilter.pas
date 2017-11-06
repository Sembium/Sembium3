unit fDeptsPrcDataFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet, ActnList, JvExControls, JvDBLookup, Buttons,
  StdCtrls, ExtCtrls, fBaseFrame, fDBFrame, fFieldEditFrame, fDateFieldEditFrame, fTreeNodeFilter, fDeptFilter,
  fProductFilter, fParamProductFilter, fPrcDataFilterFrame, fFilterFrame, fTreeNodeGridFilter, DBGridEh, Mask,
  DBCtrlsEh, DBLookupEh, AbmesDBCheckBox, JvExStdCtrls, JvCombobox, JvDBCombobox;

type
  TfmDeptsPrcDataFilter = class(TFilterForm)
    gbToDate: TGroupBox;
    frToDate: TfrDateFieldEditFrame;
    gbDepts: TGroupBox;
    frDept: TfrDeptFilter;
    frProductsFilter: TfrParamProductFilter;
    gbPrcData: TGroupBox;
    frPrcDataFilter: TfrPrcDataFilterFrame;
    gbOccWorkDeptPriority: TGroupBox;
    cbOccWorkDeptPriority: TJvDBLookupCombo;
    gbOrgWorkType: TGroupBox;
    cbOrgWorkType: TDBLookupComboboxEh;
    gbOccupations: TGroupBox;
    frOccupationDept: TfrDeptFilter;
    gbShift: TGroupBox;
    cbShift: TJvDBLookupCombo;
    gbOccupationStatus: TGroupBox;
    gbOrgWorkActivity: TGroupBox;
    cbOrgWorkActivity: TJvDBLookupCombo;
    gbOWDPriorityState: TGroupBox;
    lblBetweenExceptEventState: TLabel;
    cbMaxOWDPriorityState: TDBComboBoxEh;
    cbMinOWDPriorityState: TDBComboBoxEh;
    cbIsActive: TJvDBComboBox;
    cbIsOccupied: TJvDBComboBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uClientUtils, uOWDPriorityStates;

{$R *.dfm}

{ TfmDeptsPrcDataFilter }

procedure TfmDeptsPrcDataFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frToDate.FieldNames:= 'TO_DATE';
  frDept.FieldNames:= 'CHOSEN_DEPTS';
  frProductsFilter.FieldNames:= 'CHOSEN_PRODUCTS';
  frOccupationDept.FieldNames:= 'CHOSEN_OCCUPATION_DEPTS';

  InitializeComboBoxWithOWDPriorityStates(cbMinOWDPriorityState);
  InitializeComboBoxWithOWDPriorityStates(cbMaxOWDPriorityState);
end;

end.
