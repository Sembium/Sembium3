unit fCompanyStatus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, AbmesFields, DBClient, AbmesClientDataSet,
  ActnList, StdCtrls, Mask, DBCtrls, Buttons, fStatusAbstract, System.Actions;

type
  TfrCompanyStatus = class(TfrStatusAbstract)
    cdsStatusCOMPANY_STATUS_CODE: TAbmesFloatField;
    cdsStatusSTATUS_DATE: TAbmesSQLTimeStampField;
    cdsStatusBASE_ROLE_CODE: TAbmesFloatField;
    cdsStatusCOMPANY_NAME: TAbmesWideStringField;
    cdsStatusCOMPANY_STATUS_NAME: TAbmesWideStringField;
    cdsStatusEXISTANCE_MONTHS: TAbmesFloatField;
    cdsStatusCURRENT_STATUS_REACH_MONTHS: TAbmesFloatField;
    cdsStatusCOMPANY_CODE: TAbmesFloatField;
    cdsStatusPRIORITY_NO: TAbmesFloatField;
    cdsStatusqryCompanyStatusesChanges: TDataSetField;
    procedure cdsStatusCOMPANY_STATUS_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure actCompanyStatusesHistoryUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    procedure Initialize; override;
    procedure DoApplyUpdates; override;
  end;

implementation

uses
  fCompanyStatuses, dMain, uCompanyClientUtils;

{$R *.dfm}

{ TfrCompanyStatus }

procedure TfrCompanyStatus.actCompanyStatusesHistoryUpdate(Sender: TObject);
begin
//  inherited;
  (Sender as TAction).Enabled:= not cdsStatusCOMPANY_STATUS_CODE.IsNull;
end;

procedure TfrCompanyStatus.cdsStatusCOMPANY_STATUS_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  CompanyStatusFieldGetText(Sender, cdsStatusCOMPANY_STATUS_NAME, cdsStatusBASE_ROLE_CODE, Text, DisplayText);
end;

constructor TfrCompanyStatus.Create(AOwner: TComponent);
begin
  inherited;
  EditFormClass:= TfmCompanyStatuses;
end;

procedure TfrCompanyStatus.DoApplyUpdates;
begin
  cdsStatus.ApplyUpdates(0);
  inherited;
end;

procedure TfrCompanyStatus.Initialize;
begin
  inherited;
  FieldNames:= 'COMPANY_CODE';
end;

end.
