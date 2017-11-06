unit fCompanyContacts;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fRightButtonGridForm, ImgList, ParamDataSet, ActnList, Db,
  DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, DBCtrls,
  ColorNavigator, Buttons, StdCtrls, ExtCtrls, AbmesFields, Menus,
  JvButtons, ComCtrls, ToolWin, JvComponent, JvCaptionButton, JvComponentBase,
  Mask;

type
  TfmCompanyContacts = class(TRightButtonGridForm)
    cdsGridDataCOMPANY_CODE: TAbmesFloatField;
    cdsGridDataCONTACT_CODE: TAbmesFloatField;
    cdsGridDataOFFICE_COMPANY_CODE: TAbmesFloatField;
    cdsGridDataOFFICE_CODE: TAbmesFloatField;
    cdsGridDataREPRESENTATIVE_COMPANY_CODE: TAbmesFloatField;
    cdsGridDataREPRESENTATIVE_CODE: TAbmesFloatField;
    cdsGridDataCONTACT_TYPE_CODE: TAbmesFloatField;
    cdsGridDataCONTACT_TEXT: TAbmesWideStringField;
    cdsGridDataNOTES: TAbmesWideStringField;                                                    
    cdsContactTypes: TAbmesClientDataSet;
    cdsCompanyRepresentatives: TAbmesClientDataSet;
    cdsCompanyOffices: TAbmesClientDataSet;
    cdsContactTypesCONTACT_TYPE_CODE: TAbmesFloatField;
    cdsContactTypesCONTACT_TYPE_NAME: TAbmesWideStringField;
    cdsCompanyRepresentativesCOMPANY_CODE: TAbmesFloatField;
    cdsCompanyRepresentativesREPRESENTATIVE_CODE: TAbmesFloatField;
    cdsCompanyRepresentativesOFFICE_COMPANY_CODE: TAbmesFloatField;
    cdsCompanyRepresentativesOFFICE_CODE: TAbmesFloatField;
    cdsCompanyRepresentativesFIRST_NAME: TAbmesWideStringField;
    cdsCompanyRepresentativesMIDDLE_NAME: TAbmesWideStringField;
    cdsCompanyRepresentativesLAST_NAME: TAbmesWideStringField;
    cdsCompanyRepresentativesOCCUPATION: TAbmesWideStringField;
    cdsCompanyRepresentativesEGN: TAbmesWideStringField;
    cdsCompanyRepresentativesMALE: TAbmesFloatField;
    cdsCompanyRepresentativesLANGUAGE_CODE: TAbmesFloatField;
    cdsCompanyOfficesCOMPANY_CODE: TAbmesFloatField;
    cdsCompanyOfficesOFFICE_CODE: TAbmesFloatField;
    cdsCompanyOfficesOFFICE_NAME: TAbmesWideStringField;
    cdsCompanyOfficesCOUNTRY_CODE: TAbmesFloatField;
    cdsCompanyOfficesSTATE: TAbmesWideStringField;
    cdsCompanyOfficesREGION: TAbmesWideStringField;
    cdsCompanyOfficesZIP: TAbmesWideStringField;
    cdsCompanyOfficesCITY: TAbmesWideStringField;
    cdsCompanyOfficesADDRESS: TAbmesWideStringField;
    cdsGridData_CONTACT_TYPE_NAME: TAbmesWideStringField;
    cdsGridData_OFFICE_NAME: TAbmesWideStringField;
    cdsCompanyRepresentativesNAME: TAbmesWideStringField;
    cdsGridData_REPRESENTATIVE_NAME: TAbmesWideStringField;
    cdsGridDataOFFICE_NAME: TAbmesWideStringField;
    cdsGridDataCONTACT_TYPE_NAME: TAbmesWideStringField;
    cdsGridData_OCCUPATION: TAbmesWideStringField;
    cdsGridData_COMPANY_CLASS_CODE: TAbmesFloatField;
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure cdsGridDataAfterClose(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure cdsGridDataOFFICE_CODEChange(Sender: TField);
    procedure cdsGridDataREPRESENTATIVE_CODEChange(Sender: TField);
    procedure cdsGridDataAfterPost(DataSet: TDataSet);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    CompanyClassCode: Integer;
  end;

implementation

uses
  dMain, fCompanyContact, uClientUtils, uCompanyClasses;

{$R *.DFM}

{ TfmCompanyContacts }

procedure TfmCompanyContacts.cdsGridDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsCompanyOffices.Params.ParamByName('COMPANY_CODE').Value:=
    cdsGridData.Params.ParamByName('COMPANY_CODE').Value;
  cdsCompanyOffices.Open;

  cdsCompanyRepresentatives.Params.ParamByName('COMPANY_CODE').Value:=
    cdsGridData.Params.ParamByName('COMPANY_CODE').Value;
  cdsCompanyRepresentatives.Open;

  cdsContactTypes.Open;
end;

procedure TfmCompanyContacts.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsGridData_COMPANY_CLASS_CODE.AsInteger:= CompanyClassCode;
end;

procedure TfmCompanyContacts.cdsGridDataAfterClose(DataSet: TDataSet);
begin
  inherited;
  cdsCompanyOffices.Close;
  cdsCompanyRepresentatives.Close;
  cdsContactTypes.Close;
end;

procedure TfmCompanyContacts.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmCompanyContact;
end;

procedure TfmCompanyContacts.FormShow(Sender: TObject);
begin
  inherited;
  with grdData do
    begin
      Columns[2].Visible:= (IntToCompanyClass(CompanyClassCode) = ccFirm);
      Columns[3].Visible:= (IntToCompanyClass(CompanyClassCode) = ccFirm);
      Columns[4].Visible:= (IntToCompanyClass(CompanyClassCode) = ccFirm);
      AutoSizeColumn(grdData, 1);
    end;  { with }
end;

procedure TfmCompanyContacts.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataCOMPANY_CODE.AsInteger:= cdsGridData.Params.ParamByName('COMPANY_CODE').AsInteger;
  cdsGridDataCONTACT_CODE.AsInteger:= 0;
end;

procedure TfmCompanyContacts.cdsGridDataOFFICE_CODEChange(Sender: TField);
begin
  inherited;
  if cdsGridDataOFFICE_CODE.IsNull then
    cdsGridDataOFFICE_COMPANY_CODE.Clear
  else
    cdsGridDataOFFICE_COMPANY_CODE.Value:= cdsGridDataCOMPANY_CODE.AsVariant;
end;

procedure TfmCompanyContacts.cdsGridDataREPRESENTATIVE_CODEChange(
  Sender: TField);
begin
  inherited;
  if cdsGridDataREPRESENTATIVE_CODE.IsNull then
    cdsGridDataREPRESENTATIVE_COMPANY_CODE.Clear
  else
    cdsGridDataREPRESENTATIVE_COMPANY_CODE.Value:=
      cdsGridDataCOMPANY_CODE.AsVariant;
end;

procedure TfmCompanyContacts.cdsGridDataAfterPost(DataSet: TDataSet);
begin
  inherited;
  RefreshDataSet(DataSet);
end;

end.
