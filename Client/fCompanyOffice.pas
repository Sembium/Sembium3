unit fCompanyOffice;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fEditForm, Db, DBClient, ImgList, ActnList, StdCtrls, Buttons, ExtCtrls,
  fBevelEditForm, JvDBLookup, Mask, DBCtrls, AbmesClientDataSet, AbmesFields,
  Menus, JvButtons, JvExControls, JvComponent, JvCaptionButton, JvComponentBase;

type
  TfmCompanyOffice = class(TBevelEditForm)
    lblOfficeName: TLabel;
    edtOfficeName: TDBEdit;
    lblCountry: TLabel;
    cbCountry: TJvDBLookupCombo;
    dsCountries: TDataSource;
    cdsCountries: TAbmesClientDataSet;
    cdsCountriesCOUNTRY_CODE: TAbmesFloatField;
    cdsCountriesCOUNTRY_ABBREV: TAbmesWideStringField;
    cdsCountriesCOUNTRY_NAME: TAbmesWideStringField;
    edtIOfficeName: TDBEdit;
    lblIOfficeName: TLabel;
    edtZIP: TDBEdit;
    lblZIP: TLabel;
    edtState: TDBEdit;
    lblState: TLabel;
    edtIState: TDBEdit;
    lblIState: TLabel;
    edtIRegion: TDBEdit;
    lblIRegion: TLabel;
    lblRegion: TLabel;
    edtRegion: TDBEdit;
    lblCity: TLabel;
    edtCity: TDBEdit;
    edtICity: TDBEdit;
    lblICity: TLabel;
    edtIAddress: TDBEdit;
    lblIAdress: TLabel;
    edtAddress: TDBEdit;
    lblAddress: TLabel;
    btnCopyOfficeName: TSpeedButton;
    actCopyOfficeName: TAction;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actCopyOfficeNameUpdate(Sender: TObject);
    procedure actCopyOfficeNameExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  dMain, uClientTypes, uUtils;

{$R *.DFM}

procedure TfmCompanyOffice.FormShow(Sender: TObject);
begin
  inherited;
  cdsCountries.Open;
end;

procedure TfmCompanyOffice.actCopyOfficeNameExecute(Sender: TObject);
begin
  inherited;

  CheckEditMode(dsData.DataSet);
  dsData.DataSet.UpdateRecord;
  dsData.DataSet.FieldByName('I_OFFICE_NAME').Assign(dsData.DataSet.FieldByName('OFFICE_NAME'));
end;

procedure TfmCompanyOffice.actCopyOfficeNameUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly);
end;

procedure TfmCompanyOffice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsCountries.Close;
end;

end.
