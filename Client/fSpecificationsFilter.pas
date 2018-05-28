unit fSpecificationsFilter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fFilterForm, Db, DBClient, ImgList, ActnList, StdCtrls, Buttons, ExtCtrls,
  Mask, JvToolEdit, JvDBControls, DBCtrls, AbmesClientDataSet,
  fBaseFrame, fDBFrame, fFieldEditFrame, AbmesFields,
  JvDBLookup, Menus, JvButtons, AbmesDBCheckBox, fBevelFilterForm,
  fParamProductFilter, fTreeNodeFilter, fProductFilter,
  fTreeNodeFieldEditFrame, fProductFieldEditFrame, fEmployeeFieldEditFrame,
  fDateIntervalFrame, fPartnerFieldEditFrame, fEmployeeFieldEditFrameBald,
  fPartnerFieldEditFrameBald, JvComponent, JvCaptionButton, JvExControls,
  DBCtrlsEh, JvComponentBase, fDeptFieldEditFrame, fDeptFieldEditFrameBald,
  fFilterFrame, fTreeNodeGridFilter, System.Actions, fDateFieldEditFrame;

type
  TfmSpecificationsFilter = class(TFilterForm)
    gbSpecificationData: TGroupBox;
    lblManufacturer: TLabel;
    lblSpecificationType: TLabel;
    cbSpecificationType: TJvDBLookupCombo;
    lblAuthor: TLabel;
    lblAuthorizationEmployee: TLabel;
    chbIncludeDetails: TAbmesDBCheckBox;
    gbActive: TGroupBox;
    chbActive: TAbmesDBCheckBox;
    chbInactive: TAbmesDBCheckBox;
    lblCreateDateInterval: TLabel;
    frSpecProduct: TfrParamProductFilter;
    lblChangeDateInterval: TLabel;
    chbInactiveProduct: TGroupBox;
    chbHasInactiveProduct: TAbmesDBCheckBox;
    chbHasNotInactiveProduct: TAbmesDBCheckBox;
    chbInactiveDetail: TGroupBox;
    chbHasInactiveDetail: TAbmesDBCheckBox;
    chbHasNotInactiveDetail: TAbmesDBCheckBox;
    frIncludeDetail: TfrProductFieldEditFrame;
    frIncludeProduct: TfrProductFieldEditFrame;
    frAuthor: TfrEmployeeFieldEditFrameBald;
    frAuthorizationEmployee: TfrEmployeeFieldEditFrameBald;
    frCreateDateInterval: TfrDateIntervalFrame;
    frChangeDateInterval: TfrDateIntervalFrame;
    frManufacturer: TfrPartnerFieldEditFrameBald;
    gbImported: TGroupBox;
    chbImported: TAbmesDBCheckBox;
    chbNotImported: TAbmesDBCheckBox;
    lblDash: TLabel;
    cbMinSpecState: TDBComboBoxEh;
    cbMaxSpecState: TDBComboBoxEh;
    lblStatus: TLabel;
    cdsEmployeeFrameAllEmployees: TAbmesClientDataSet;
    frSpecModelMainDept: TfrDeptFieldEditFrameBald;
    lblSpecModelMainDept: TLabel;
    frSMVSDept: TfrDeptFieldEditFrameBald;
    lblSMVSDept: TLabel;
    gbForDate: TGroupBox;
    frForDate: TfrDateFieldEditFrame;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uUtils, uCompanyKinds, uModelUtils;

{$R *.DFM}

{ TfmSpecificationsFilter }

procedure TfmSpecificationsFilter.FormCreate(Sender: TObject);
begin
  inherited;

  frSpecProduct.FieldNames:= 'CHOSEN_SPEC_PRODUCTS';
  frIncludeDetail.FieldNames:= 'INCLUDE_DETAIL_CODE';
  frIncludeProduct.FieldNames:= 'INCLUDE_PRODUCT_CODE';
  frAuthor.FieldNames:= 'AUTHOR_EMPLOYEE_CODE';
  frAuthor.OuterAllEmployeesDataSet:= cdsEmployeeFrameAllEmployees;
  frAuthor.EmployeeTypeName:= lblAuthor.Caption;
  frAuthorizationEmployee.FieldNames:= 'AUTHORIZATION_EMPLOYEE_CODE';
  frAuthorizationEmployee.OuterAllEmployeesDataSet:= cdsEmployeeFrameAllEmployees;
  frAuthorizationEmployee.EmployeeTypeName:= lblAuthorizationEmployee.Caption;
  frCreateDateInterval.FieldNames:= 'CREATE_BEGIN_DATE;CREATE_END_DATE';
  frChangeDateInterval.FieldNames:= 'CHANGE_BEGIN_DATE;CHANGE_END_DATE';
  frManufacturer.FieldNames:= 'MANUFACTURER_COMPANY_CODE';
  frManufacturer.ShowOurCompany:= True;
  frSpecModelMainDept.FieldNames:= 'MAIN_DEPT_CODE';
  frSMVSDept.FieldNames:= 'SMVS_DEPT_CODE';
  frForDate.FieldNames:= 'FOR_DATE';

  InitializeComboBoxWithSpecStates(cbMinSpecState);
  InitializeComboBoxWithSpecStates(cbMaxSpecState);
end;

procedure TfmSpecificationsFilter.actFormUpdate(Sender: TObject);
begin
  inherited;
  chbIncludeDetails.Enabled:= not (frSpecProduct.cdsChosenNodes.Bof and frSpecProduct.cdsChosenNodes.Eof);
end;

end.
