unit fPartnerFieldEditFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFieldEditFrame, DB, ActnList, AbmesFields, DBClient,
  AbmesClientDataSet, ComCtrls, ToolWin, StdCtrls, Mask, DBCtrls,
  ExtCtrls, uCompanyKinds, JvExControls, JvComponent, JvDBLookup,
  uCompanyClasses, uCompanyStatuses, System.Actions;

type
  TfrPartnerFieldEditFrame = class(TFieldEditFrame)
    cdsPartners: TAbmesClientDataSet;
    dsPartners: TDataSource;
    cdsPartnersCOMPANY_CODE: TAbmesFloatField;
    cdsPartnersPARTNER_NAME: TAbmesWideStringField;
    cdsPartner: TAbmesClientDataSet;
    cdsPartnerCOMPANY_CODE: TAbmesFloatField;
    cdsPartnerCOMPANY_NO: TAbmesFloatField;
    dsPartner: TDataSource;
    cdsPartnersCOMPANY_NO: TAbmesFloatField;
    gbPartner: TGroupBox;
    pnlNameAndButtons: TPanel;
    pnlRightButtons: TPanel;
    tlbDocButton: TToolBar;
    btnDocumentation: TToolButton;
    pnlPartnerName: TPanel;
    cbPartner: TJvDBLookupCombo;
    pnlPaddingRight: TPanel;
    pnlPartnerCode: TPanel;
    edtPartnerCode: TDBEdit;
    pnlPaddingLeft: TPanel;
    actDocumentation: TAction;
    cdsPartnersDOC_BRANCH_CODE: TAbmesFloatField;
    cdsPartnersDOC_CODE: TAbmesFloatField;
    cdsPartnersHAS_DOCUMENTATION: TAbmesFloatField;
    edtPartnerName: TDBEdit;
    cdsPartner_PARTNER_NAME: TAbmesWideStringField;
    cdsPartnersCOMPANY_STATUS_CODE: TAbmesFloatField;
    cdsPartner_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsPartner_DOC_CODE: TAbmesFloatField;
    cdsPartner_HAS_DOCUMENTATION: TAbmesFloatField;
    cdsPartnersPARTNER_ID: TAbmesWideStringField;
    procedure edtPartnerCodeChange(Sender: TObject);
    procedure actFrameUpdate(Sender: TObject);
    procedure cdsPartnerCOMPANY_NOChange(Sender: TField);
    procedure cdsPartnerCOMPANY_CODEChange(Sender: TField);
    procedure actDocumentationExecute(Sender: TObject);
    procedure actDocumentationUpdate(Sender: TObject);
    procedure cdsPartnersFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cdsPartnerCOMPANY_NOSetText(Sender: TField; const Text: string);
  private
    FNeedsInitialUpdate: Boolean;
    FAllowColorOverride: Boolean;
    FShowCurrentEmployee: Boolean;
    FShowPersonsOnly: Boolean;
    FShowCompaniesOnly: Boolean;
    FShowOurCompany: Boolean;
    FFilterCompanyKind: TCompanyKind;
    FSecondaryFilterCompanyKind: TCompanyKind;
    FUpdating: Boolean;
    FInDataChange: Boolean;
    FDocButtonVisible: Boolean;
    FShownCompanyClasses: TCompanyClassesSet;
    FShownCompanyStatuses: TCompanyStatusesSet;
    FRefreshingLookupFields: Boolean;
    procedure SetShowCurrentEmployee(const Value: Boolean);
    procedure UpdateShowCurrentEmployee;
    procedure UpdateShowOurCompany;
    procedure SetShowCompaniesOnly(const Value: Boolean);
    procedure SetShowPersonsOnly(const Value: Boolean);
    procedure SetShowOurCompany(const Value: Boolean);
    procedure InternalOpenDataSetsIfNeeded;
    function GetKeyValue: Variant;
    procedure SetKeyValue(const Value: Variant);
    procedure SetFilterCompanyKind(const Value: TCompanyKind);
    procedure SetSecondaryFilterCompanyKind(const Value: TCompanyKind);
    procedure ClearCompanyFieldIfNotFoundInLookup;
  protected
    procedure DataChange(Sender: TObject); override;
    procedure UpdateData(Sender: TObject); override;
    procedure FieldsChanged; override;
    function GetFocusControl: TWinControl; override;
    procedure RefreshLookupFields;
    property RefreshingLookupFields: Boolean read FRefreshingLookupFields;
  public
    constructor Create(AOwner: TComponent); override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure Initialize; override;
    procedure Finalize; override;

    property ShowCurrentEmployee: Boolean read FShowCurrentEmployee write SetShowCurrentEmployee;
    property AllowColorOverride: Boolean read FAllowColorOverride write FAllowColorOverride default True;
    property ShowPersonsOnly: Boolean read FShowPersonsOnly write SetShowPersonsOnly;
    property ShowCompaniesOnly: Boolean read FShowCompaniesOnly write SetShowCompaniesOnly;
    property ShowOurCompany: Boolean read FShowOurCompany write SetShowOurCompany;
    property FilterCompanyKind: TCompanyKind read FFilterCompanyKind write SetFilterCompanyKind;
    property SecondaryFilterCompanyKind: TCompanyKind read FSecondaryFilterCompanyKind write SetSecondaryFilterCompanyKind;
    property KeyValue: Variant read GetKeyValue write SetKeyValue;
    property DocButtonVisible: Boolean read FDocButtonVisible write FDocButtonVisible default True;
    property ShownCompanyClasses: TCompanyClassesSet read FShownCompanyClasses write FShownCompanyClasses;
    property ShownCompanyStatuses: TCompanyStatusesSet read FShownCompanyStatuses write FShownCompanyStatuses;
  end;

implementation

uses
  dMain, uColorConsts, uClientUtils, uUtils, fBaseFrame, uLoginContext,
  uClientTypes, uDocClientUtils, uDocUtils, uToolbarUtils, uScalingUtils;

resourcestring
  SNotExistingPartner = 'Не е намерен %s с такъв код';
  SAllInBrackets = '< всички >';
  SCurrentEmployeeFormat = '<текущ потребител> %s';

{$R *.dfm}

{ TfrPartnerFieldEditFrame }

procedure TfrPartnerFieldEditFrame.CloseDataSets;
begin
  cdsPartner.Close;
  inherited;
  cdsPartners.Close;
end;

constructor TfrPartnerFieldEditFrame.Create(AOwner: TComponent);
begin
  inherited;

  FShowOurCompany:= False;
  FShowCurrentEmployee:= False;
  FAllowColorOverride:= True;
  FShowPersonsOnly:= False;
  FShowCompaniesOnly:= False;
  FNeedsInitialUpdate:= True;
  FDocButtonVisible:= True;
  FShownCompanyClasses:= [ccFirm, ccPerson, ccCumulative];
  FShownCompanyStatuses:= AllCompanyStatuses;
end;

procedure TfrPartnerFieldEditFrame.OpenDataSets;
begin
  inherited;
  InternalOpenDataSetsIfNeeded;
end;

procedure TfrPartnerFieldEditFrame.SetShowCurrentEmployee(const Value: Boolean);
begin
  if Value and ShowCompaniesOnly then
    raise Exception.Create('frPartnerFieldEditFrame: Cannot include current user in ShowCompaniesOnly mode');

  if (Value <> FShowCurrentEmployee) then
    begin
      FShowCurrentEmployee:= Value;
      UpdateShowCurrentEmployee;
    end;
end;

procedure TfrPartnerFieldEditFrame.UpdateShowCurrentEmployee;
begin   
  if cdsPartners.Active then
    begin
      if FShowCurrentEmployee and ShowPersonsOnly and not cdsPartners.Locate('COMPANY_CODE', -1, []) then
        cdsPartners.SafeAppend/
          procedure begin
            cdsPartnersCOMPANY_NO.AsInteger:= -1;
            cdsPartnersPARTNER_NAME.AsString:= Format(SCurrentEmployeeFormat, [LoginContext.UserFullName]);
            cdsPartnersCOMPANY_STATUS_CODE.AsInteger:= CompanyStatusToInt(csReal);
          end;

      if (not FShowCurrentEmployee or not ShowPersonsOnly) and cdsPartners.Locate('COMPANY_CODE', -1, []) then
        cdsPartners.Delete;
    end;
end;

procedure TfrPartnerFieldEditFrame.actFrameUpdate(Sender: TObject);
var
  IsReadOnly: Boolean;
begin
  inherited;

  if FNeedsInitialUpdate then
    begin
      FNeedsInitialUpdate:= False;
    end;

  IsReadOnly:= ReadOnly or not Assigned(dsData.DataSet) or not (dsData.DataSet.CanModify);

  edtPartnerCode.ReadOnly:= IsReadOnly;
  cbPartner.ReadOnly:= IsReadOnly;

  if AllowColorOverride then
    begin
      edtPartnerCode.Color:= ReadOnlyColors[IsReadOnly];
      cbPartner.Color:= ReadOnlyColors[IsReadOnly];
    end;

  if ShowAllWhenEmpty then
    cbPartner.DisplayEmpty:= SAllInBrackets
  else
    cbPartner.DisplayEmpty:= ' ';

  NormalizedToolbar(tlbDocButton).Visible:= DocButtonVisible and Assigned(dmDocClient);

  cbPartner.Visible:= not IsReadOnly;
  cbPartner.Width:= pnlPartnerName.Width;
  edtPartnerName.Visible:= IsReadOnly;
  edtPartnerName.Top:= cbPartner.Top;
  edtPartnerName.Width:= cbPartner.Width-1;

  if (cbPartner.Width < ScalePixels(170)) then
    cbPartner.DropDownWidth:= ScalePixels(200)
  else
    cbPartner.DropDownWidth:= 0;
end;

procedure TfrPartnerFieldEditFrame.SetSecondaryFilterCompanyKind(
  const Value: TCompanyKind);
begin
  if (Value <> FSecondaryFilterCompanyKind) then
    begin
      FSecondaryFilterCompanyKind:= Value;

      // don't initialize if too early
      if not FNeedsInitialUpdate then
        InternalOpenDataSetsIfNeeded;
    end;
end;

procedure TfrPartnerFieldEditFrame.SetShowCompaniesOnly(
  const Value: Boolean);
begin
  if (Value <> FShowCompaniesOnly) then
    begin
      FShowCompaniesOnly:= Value;

      if FShowCompaniesOnly and
         ShowPersonsOnly then
        ShowPersonsOnly:= False;

      // don't initialize if too early
      if not FNeedsInitialUpdate then
        InternalOpenDataSetsIfNeeded;
    end;
end;

procedure TfrPartnerFieldEditFrame.SetShowPersonsOnly(
  const Value: Boolean);
begin
  if (Value <> FShowPersonsOnly) then
    begin
      FShowPersonsOnly:= Value;

      if FShowPersonsOnly and
         ShowCompaniesOnly then
        ShowCompaniesOnly:= False;

      // don't initialize if too early
      if not FNeedsInitialUpdate then
        InternalOpenDataSetsIfNeeded;
    end;
end;

procedure TfrPartnerFieldEditFrame.cdsPartnerCOMPANY_NOChange(
  Sender: TField);
var
  CompanyCode: Variant;
begin
  inherited;

  if not FUpdating then
    try
      FUpdating:= True;

      if cdsPartnerCOMPANY_NO.IsNull then
        cdsPartnerCOMPANY_CODE.Clear
      else
        begin
          CompanyCode:= cdsPartners.Lookup('COMPANY_NO', cdsPartnerCOMPANY_NO.AsInteger, 'COMPANY_CODE');

          if VarIsNullOrEmpty(CompanyCode) then
            raise Exception.Create(Format(SNotExistingPartner, [Trim(gbPartner.Caption)]));

          cdsPartnerCOMPANY_CODE.AsInteger:= CompanyCode;
        end;

        ForceUpdateRecord;

    finally
      FUpdating:= False;
    end;  { try }
end;

procedure TfrPartnerFieldEditFrame.cdsPartnerCOMPANY_NOSetText(Sender: TField; const Text: string);
var
  PartnerID: Real;
begin
  inherited;

  PartnerID:= StrToFloatDef(Text, 0);
  if (PartnerID < 0) then
    Sender.AsVariant:= cdsPartners.Lookup('PARTNER_ID', -PartnerID, 'COMPANY_NO')
  else
    Sender.AsString:= Text;
end;

procedure TfrPartnerFieldEditFrame.cdsPartnersFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:= IntToCompanyStatus(cdsPartnersCOMPANY_STATUS_CODE.AsInteger) in ShownCompanyStatuses;
end;

procedure TfrPartnerFieldEditFrame.cdsPartnerCOMPANY_CODEChange(
  Sender: TField);
begin
  inherited;

  if not FUpdating then
    try
      FUpdating:= True;

      if cdsPartnerCOMPANY_CODE.IsNull then
        cdsPartnerCOMPANY_NO.Clear
      else
        cdsPartners.TempUnfilter/
          procedure begin
            cdsPartnerCOMPANY_NO.AsVariant:= cdsPartners.Lookup('COMPANY_CODE', cdsPartnerCOMPANY_CODE.AsInteger, 'COMPANY_NO');
          end;

      ForceUpdateRecord;

    finally
      FUpdating:= False;
    end;  { try }
end;

procedure TfrPartnerFieldEditFrame.DataChange(Sender: TObject);
begin
  inherited;

  if not FUpdating and
     not FInDataChange and
     (FieldCount > 0) and
     Assigned(Fields[0]) then
    begin
      FInDataChange:= True;
      try
        InternalOpenDataSetsIfNeeded;

        cdsPartnerCOMPANY_CODE.AsVariant:= Fields[0].AsVariant;

        // workaround na TDBEdit
        RefreshDBEdit(edtPartnerName);
      finally
        FInDataChange:= False;
      end;  { try }
    end;
end;

procedure TfrPartnerFieldEditFrame.edtPartnerCodeChange(Sender: TObject);
begin
  inherited;
  if not FUpdating then
    Modified;
end;

procedure TfrPartnerFieldEditFrame.UpdateData(Sender: TObject);
begin
  inherited;

  if not FInDataChange and
     not SettingModified and
     not SettingEdit then
    begin
      Assert(cdsPartner.Active);
      Assert(FieldCount > 0);
      Assert(Assigned(Fields[0]));
      Assert(Assigned(Fields[0].DataSet));

      cdsPartner.UpdateRecord;

      try
        CheckEditMode(Fields[0].DataSet);
        Fields[0].AsVariant:= cdsPartnerCOMPANY_CODE.AsVariant;
      except
        Reset;
        raise;
      end;  { try }

    end;
end;

procedure TfrPartnerFieldEditFrame.SetShowOurCompany(
  const Value: Boolean);
begin
  if Value and ShowPersonsOnly then
    raise Exception.Create('frPartnerFieldEditFrame: Cannot include OurCompany in ShowPersonsOnly mode');

  if (Value <> FShowOurCompany) then
    begin
      FShowOurCompany:= Value;
      UpdateShowOurCompany;
    end;
end;

procedure TfrPartnerFieldEditFrame.UpdateShowOurCompany;
begin
  if cdsPartners.Active then
    begin
      if FShowOurCompany and not cdsPartners.Locate('COMPANY_CODE', 0, []) then
        cdsPartners.SafeAppend/
          procedure begin
            cdsPartnersCOMPANY_CODE.AsInteger:= 0;
            cdsPartnersCOMPANY_NO.AsInteger:= 0;
            cdsPartnersPARTNER_NAME.AsString:= LoginContext.CompanyShortName;
            cdsPartnersCOMPANY_STATUS_CODE.AsInteger:= CompanyStatusToInt(csReal);
          end;

      if not FShowOurCompany and cdsPartners.Locate('COMPANY_CODE', 0, []) then
        cdsPartners.Delete;
    end;
end;

procedure TfrPartnerFieldEditFrame.ClearCompanyFieldIfNotFoundInLookup;
begin
  if (FieldCount > 0) and
     Assigned(Fields[0]) and
     Assigned(Fields[0].DataSet) and
     cdsPartners.Active and
     not cdsPartners.Locate('COMPANY_CODE', Fields[0].AsVariant, []) and
     (Fields[0].DataSet.State in dsEditModes) then
    begin
      Fields[0].Clear;
    end;
end;

procedure TfrPartnerFieldEditFrame.Initialize;
begin
  inherited;
  cdsPartners.Filtered:= True;
end;

procedure TfrPartnerFieldEditFrame.Finalize;
begin
  cdsPartners.Filtered:= False;
  inherited;
end;

procedure TfrPartnerFieldEditFrame.InternalOpenDataSetsIfNeeded;

const
  IsCompanyOrPersonLookup: array[False..True, False..True] of Integer = ((1, 2), (3, -1));

  function PartnersParamsChanged: Boolean;
  begin
    with cdsPartners.Params do
      Result:=
        (ParamByName('COMPANY_KIND_FILTER').AsInteger <> Ord(FilterCompanyKind)) or
        (ParamByName('SECONDARY_COMPANY_KIND_FILTER').AsInteger <> Ord(SecondaryFilterCompanyKind)) or
        (ParamByName('IS_COMPANY_OR_PERSON_CODE').AsInteger <> IsCompanyOrPersonLookup[ShowPersonsOnly, ShowCompaniesOnly]) or
        (ParamByName('SHOW_CC_FIRM').AsInteger <> Ord(ccFirm in ShownCompanyClasses)) or
        (ParamByName('SHOW_CC_PERSON').AsInteger <> Ord(ccPerson in ShownCompanyClasses)) or
        (ParamByName('SHOW_CC_CUMULATIVE').AsInteger <> Ord(ccCumulative in ShownCompanyClasses)) or
        (ParamByName('SHOW_CC_COMMON').AsInteger <> Ord(ccCommon in ShownCompanyClasses));
  end;

  procedure OpenPartners;
  begin
    Screen.TempCursor(crSQLWait)/
      procedure begin
        with cdsPartners.Params do
          begin
            ParamByName('COMPANY_KIND_FILTER').AsInteger:= Ord(FilterCompanyKind);
            ParamByName('SECONDARY_COMPANY_KIND_FILTER').AsInteger:= Ord(SecondaryFilterCompanyKind);
            ParamByName('IS_COMPANY_OR_PERSON_CODE').AsInteger:= IsCompanyOrPersonLookup[ShowPersonsOnly, ShowCompaniesOnly];
            ParamByName('SHOW_CC_FIRM').AsInteger:= Ord(ccFirm in ShownCompanyClasses);
            ParamByName('SHOW_CC_PERSON').AsInteger:= Ord(ccPerson in ShownCompanyClasses);
            ParamByName('SHOW_CC_CUMULATIVE').AsInteger:= Ord(ccCumulative in ShownCompanyClasses);
            ParamByName('SHOW_CC_COMMON').AsInteger:= Ord(ccCommon in ShownCompanyClasses);
          end;  { with }

        cdsPartners.Open;
        UpdateShowCurrentEmployee;
        UpdateShowOurCompany;
        RefreshLookupFields;
        ClearCompanyFieldIfNotFoundInLookup;
      end;
  end;

begin
  if not cdsPartners.Active then
    OpenPartners
  else
    begin
      if PartnersParamsChanged then
        begin
          cdsPartners.Close;
          OpenPartners;
        end;
    end;

  if not cdsPartner.Active then
    begin
      cdsPartner.CreateDataSet;
      cdsPartner.Append;
    end;
end;

function TfrPartnerFieldEditFrame.GetFocusControl: TWinControl;
begin
  Result:= edtPartnerCode;
end;

function TfrPartnerFieldEditFrame.GetKeyValue: Variant;
begin
  Result:= cdsPartnerCOMPANY_CODE.AsVariant;
end;

procedure TfrPartnerFieldEditFrame.SetKeyValue(const Value: Variant);
begin
  if FInDataChange then
    Exit;

  FInDataChange:= True;
  try
    InternalOpenDataSetsIfNeeded;
    CheckEditMode(cdsPartner);
    cdsPartnerCOMPANY_CODE.AsVariant:= Value;

  finally
    FInDataChange:= False;
  end;  { try }
end;

procedure TfrPartnerFieldEditFrame.FieldsChanged;
begin
  inherited;
  DataChange(Self);
end;

procedure TfrPartnerFieldEditFrame.SetFilterCompanyKind(
  const Value: TCompanyKind);
begin
  if (Value <> FFilterCompanyKind) then
    begin
      FFilterCompanyKind:= Value;

      // don't initialize if too early
      if not FNeedsInitialUpdate then
        InternalOpenDataSetsIfNeeded;
    end;
end;

procedure TfrPartnerFieldEditFrame.actDocumentationExecute(
  Sender: TObject);
begin
  inherited;
  Assert(not Fields[0].IsNull);
  Assert(Assigned(dmDocClient));

  SetFocus;

  dmDocClient.OpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotCompany,
    cdsPartner_DOC_BRANCH_CODE.AsInteger,
    cdsPartner_DOC_CODE.AsInteger);
end;

procedure TfrPartnerFieldEditFrame.actDocumentationUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (FieldCount > 0) and Assigned(Fields[0]) and not Fields[0].IsNull;
  (Sender as TAction).ImageIndex:= cdsPartner_HAS_DOCUMENTATION.AsInteger;
end;

procedure TfrPartnerFieldEditFrame.RefreshLookupFields;
var
  CompanyCode: Variant;
begin
  if not cdsPartner.Active then
    Exit;

  FRefreshingLookupFields:= True;
  try
    if (cdsPartner.State in dsEditModes) then
      begin
        CompanyCode := cdsPartnerCOMPANY_CODE.AsVariant;
        cdsPartnerCOMPANY_CODE.Clear;
        cdsPartnerCOMPANY_CODE.AsVariant := CompanyCode;
      end
    else
      begin
        cdsPartner.Last;
        cdsPartner.First;
      end;
  finally
    FRefreshingLookupFields:= False;
  end;
end;

end.
