unit fPartnerExFieldEditFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fPartnerFieldEditFrame, DB, AbmesFields, DBClient,
  AbmesClientDataSet, ActnList, StdCtrls, Mask, DBCtrls, JvExControls,
  JvComponent, JvDBLookup, ComCtrls, ToolWin, ExtCtrls, fBaseFrame,
  fDBFrame, fCompanyStatus, uCompanyKindClientUtils, fFieldEditFrame, fStatusAbstract,
  Buttons, uCompanyKinds, System.Actions;

type
  TfrPartnerExFieldEditFrame = class(TfrPartnerFieldEditFrame)
    frPartnerStatus: TfrCompanyStatus;
    pnlPriority: TPanel;
    pnlNameAndButtonsTop: TPanel;
    lblPartnerCode: TLabel;
    lblPartner: TLabel;
    lblPriority: TLabel;
    edtPriority: TDBEdit;
    cdsPartnersPRIORITY_NO: TAbmesFloatField;
    cdsPartnersPRIORITY_COLOR: TAbmesFloatField;
    cdsPartnersPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsPartner_PRIORITY_NO: TAbmesFloatField;
    cdsPartner_PRIORITY_COLOR: TAbmesFloatField;
    cdsPartner_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    pnlCountry: TPanel;
    edtCountry: TDBEdit;
    lblCountry: TLabel;
    cdsPartnersCOUNTRY_ABBREV: TAbmesWideStringField;
    cdsPartner_COUNTRY_ABBREV: TAbmesWideStringField;
    pnlParRelButton: TPanel;
    btnParRel: TBitBtn;
    actParRel: TAction;
    procedure actFrameUpdate(Sender: TObject);
    procedure cdsPartnersBeforeOpen(DataSet: TDataSet);
    procedure actParRelUpdate(Sender: TObject);
    procedure actParRelExecute(Sender: TObject);
    procedure cdsPartnerCOMPANY_CODEChange(Sender: TField);
  private
    FPriorityCompanyKind: TCompanyKind;
    FPartnerStatusVisible: Boolean;
    FCountryVisible: Boolean;
    FParRelButtonVisible: Boolean;
    procedure SetPriorityCompanyKind(const Value: TCompanyKind);
  protected
    procedure UpdateData(Sender: TObject); override;
  public
    property PartnerStatusVisible: Boolean read FPartnerStatusVisible write FPartnerStatusVisible;
    property PriorityCompanyKind: TCompanyKind read FPriorityCompanyKind write SetPriorityCompanyKind;
    property CountryVisible: Boolean read FCountryVisible write FCountryVisible;
    property ParRelButtonVisible: Boolean read FParRelButtonVisible write FParRelButtonVisible;
    procedure Initialize; override;
  end;

implementation

uses
  StrUtils, uBorderRelTypes, fParRel, uClientTypes, uClientUtils;

{$R *.dfm}

resourcestring
  SPriorityLabel = 'Приор%s';
  SParRelCaption = 'УМ Пар%s...';

{ TfrPartnerExFieldEditFrame }

procedure TfrPartnerExFieldEditFrame.SetPriorityCompanyKind(
  const Value: TCompanyKind);
begin
  if (Value <> FPriorityCompanyKind) then
    begin
      FPriorityCompanyKind:= Value;

      if cdsPartners.Active then
        begin
          cdsPartner.DisableControls;
          try
            cdsPartners.Close;
            cdsPartners.Open;

            if not cdsPartnerCOMPANY_CODE.IsNull then
              RefreshLookupFields;
          finally
            cdsPartner.EnableControls;
          end;  { try }
        end;  { if }

      lblPriority.Caption:= Format(SPriorityLabel, [CompanyKindAbbrev(PriorityCompanyKind)]);
    end;  { if }
end;

procedure TfrPartnerExFieldEditFrame.UpdateData(Sender: TObject);
begin
  if not RefreshingLookupFields then
    inherited;
end;

procedure TfrPartnerExFieldEditFrame.actFrameUpdate(Sender: TObject);
begin
  inherited;

  frPartnerStatus.Visible:= PartnerStatusVisible;
  pnlPriority.Visible:= (PriorityCompanyKind <> ckNone);
  pnlCountry.Visible:= CountryVisible;

  edtPriority.Font.Color:= cdsPartner_PRIORITY_COLOR.AsInteger;
  if cdsPartner_PRIORITY_BACKGROUND_COLOR.IsNull then
    edtPriority.Color:= clBtnFace
  else
    edtPriority.Color:= cdsPartner_PRIORITY_BACKGROUND_COLOR.AsInteger;

  pnlParRelButton.Visible:=
    (PriorityCompanyKind in [ckClient, ckVendor]) and
    ParRelButtonVisible;
end;

procedure TfrPartnerExFieldEditFrame.actParRelExecute(Sender: TObject);
var
  brt: TBorderRelType;
begin
  inherited;

  case PriorityCompanyKind of
    ckClient: brt:= brtClient;
    ckVendor: brt:= brtVendor;
  else
    brt:= brtNone;
  end;

  TfmParRel.ShowForm(nil, nil, emReadOnly, doNone, True,
    cdsPartnerCOMPANY_CODE.AsInteger, brt);
end;

procedure TfrPartnerExFieldEditFrame.actParRelUpdate(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    begin
      Enabled:=
        (PriorityCompanyKind in [ckClient, ckVendor]) and
        (not cdsPartnerCOMPANY_CODE.IsNull);

      Caption:=
        Format(SParRelCaption, [LeftStr(CompanyKindAbbrev(PriorityCompanyKind), 1)]);
    end;
end;

procedure TfrPartnerExFieldEditFrame.cdsPartnerCOMPANY_CODEChange(Sender: TField);
begin
  inherited;
  RefreshDBEdit(edtPriority);
end;

procedure TfrPartnerExFieldEditFrame.cdsPartnersBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsPartners.Params.ParamByName('PRIORITY_COMPANY_KIND').AsInteger:=
    CompanyKindToInt(PriorityCompanyKind);
end;

procedure TfrPartnerExFieldEditFrame.Initialize;
begin
  inherited;
  frPartnerStatus.ReadOnly:= True;
end;

end.
