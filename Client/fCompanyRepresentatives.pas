unit fCompanyRepresentatives;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fRightButtonGridForm, ImgList, ParamDataSet, ActnList, Db,
  DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, DBCtrls,
  ColorNavigator, Buttons, StdCtrls, ExtCtrls, AbmesFields, Menus,
  JvButtons, ComCtrls, ToolWin, JvComponent, JvCaptionButton,
  JvComponentBase, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  System.Actions, EhLibVCL, DBAxisGridsEh;

type
  TfmCompanyRepresentatives = class(TRightButtonGridForm)
    cdsGridDataCOMPANY_CODE: TAbmesFloatField;
    cdsGridDataREPRESENTATIVE_CODE: TAbmesFloatField;
    cdsGridDataOFFICE_COMPANY_CODE: TAbmesFloatField;
    cdsGridDataOFFICE_CODE: TAbmesFloatField;
    cdsGridDataFIRST_NAME: TAbmesWideStringField;
    cdsGridDataMIDDLE_NAME: TAbmesWideStringField;                                      
    cdsGridDataLAST_NAME: TAbmesWideStringField;
    cdsGridDataOCCUPATION: TAbmesWideStringField;
    cdsGridDataEGN: TAbmesWideStringField;
    cdsGridDataMALE: TAbmesFloatField;
    cdsGridDataLANGUAGE_CODE: TAbmesFloatField;
    cdsCompanyOffices: TAbmesClientDataSet;
    cdsCompanyOfficesCOMPANY_CODE: TAbmesFloatField;
    cdsCompanyOfficesOFFICE_CODE: TAbmesFloatField;
    cdsCompanyOfficesOFFICE_NAME: TAbmesWideStringField;
    cdsCompanyOfficesCOUNTRY_CODE: TAbmesFloatField;
    cdsCompanyOfficesSTATE: TAbmesWideStringField;
    cdsCompanyOfficesREGION: TAbmesWideStringField;
    cdsCompanyOfficesZIP: TAbmesWideStringField;
    cdsCompanyOfficesCITY: TAbmesWideStringField;
    cdsCompanyOfficesADDRESS: TAbmesWideStringField;
    cdsGridData_OFFICE_NAME: TAbmesWideStringField;
    cdsGridData_NAME: TAbmesWideStringField;
    cdsLanguages: TAbmesClientDataSet;
    cdsLanguagesLANGUAGE_CODE: TAbmesFloatField;
    cdsLanguagesLANGUAGE_NAME: TAbmesWideStringField;
    cdsGridData_LANGUAGE_NAME: TAbmesWideStringField;
    cdsGridDataNAME: TAbmesWideStringField;
    cdsGridDataOFFICE_NAME: TAbmesWideStringField;
    cdsGridDataI_FIRST_NAME: TAbmesWideStringField;
    cdsGridDataI_MIDDLE_NAME: TAbmesWideStringField;
    cdsGridDataI_LAST_NAME: TAbmesWideStringField;
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure cdsGridDataAfterClose(DataSet: TDataSet);
    procedure cdsGridDataOFFICE_CODEChange(Sender: TField);
    procedure cdsGridDataFirstOrLastNameChange(Sender: TField);
    procedure cdsGridDataAfterPost(DataSet: TDataSet);
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  dMain, fCompanyRepresentative, uClientUtils, uUtils;

{$R *.DFM}

resourcestring
  SInvalidEGN = 'Невалиден ЕГН/ЛНЧ';
  SCannotSaveEmptyRepresentative = 'Не можете да запишете представител с празно име';

procedure TfmCompanyRepresentatives.cdsGridDataCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if cdsGridDataMIDDLE_NAME.IsNull then
    cdsGridData_NAME.Value:=
      cdsGridDataFIRST_NAME.Value + ' ' + cdsGridDataLAST_NAME.Value
  else
    cdsGridData_NAME.Value:=
      cdsGridDataFIRST_NAME.Value + ' ' + cdsGridDataMIDDLE_NAME.Value + ' ' + cdsGridDataLAST_NAME.Value;
end;

procedure TfmCompanyRepresentatives.cdsGridDataNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  cdsGridDataCOMPANY_CODE.AsInteger:= cdsGridData.Params.ParamByName('COMPANY_CODE').AsInteger;
  cdsGridDataREPRESENTATIVE_CODE.AsInteger:= 0; // da ne reve field value required
  cdsGridDataMALE.AsBoolean:= True;
end;

procedure TfmCompanyRepresentatives.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmCompanyRepresentative;

  RegisterFieldTextVisibility(IsEGNVisible, cdsGridDataEGN);
end;

procedure TfmCompanyRepresentatives.cdsGridDataBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsCompanyOffices.Params.ParamByName('COMPANY_CODE').Value:=
    cdsGridData.Params.ParamByName('COMPANY_CODE').Value;
  cdsCompanyOffices.Open;
end;

procedure TfmCompanyRepresentatives.cdsGridDataAfterClose(
  DataSet: TDataSet);
begin
  inherited;
  cdsCompanyOffices.Close;
end;

procedure TfmCompanyRepresentatives.cdsGridDataOFFICE_CODEChange(
  Sender: TField);
begin
  inherited;
  if cdsGridDataOFFICE_CODE.IsNull then
    cdsGridDataOFFICE_COMPANY_CODE.Clear
  else
    cdsGridDataOFFICE_COMPANY_CODE.AsInteger:=
      cdsGridDataCOMPANY_CODE.AsInteger;
end;

procedure TfmCompanyRepresentatives.cdsGridDataFirstOrLastNameChange(
  Sender: TField);
begin
  inherited;
  cdsGridDataNAME.AsString:=
    cdsGridDataFIRST_NAME.AsString + ' ' + cdsGridDataLAST_NAME.AsString;
end;

procedure TfmCompanyRepresentatives.cdsGridDataAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  RefreshDataSet(DataSet);
end;

procedure TfmCompanyRepresentatives.cdsGridDataBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if (
       (
         cdsGridDataFIRST_NAME.IsNull and
         cdsGridDataMIDDLE_NAME.IsNull and
         cdsGridDataLAST_NAME.IsNull
       ) or
       (
         cdsGridDataI_FIRST_NAME.IsNull and
         cdsGridDataI_MIDDLE_NAME.IsNull and
         cdsGridDataI_LAST_NAME.IsNull
       )
     ) then
    raise Exception.Create(SCannotSaveEmptyRepresentative);

  if not cdsGridDataEGN.IsNull and
     not ValidEGN(StrToInt64(cdsGridDataEGN.AsString), cdsGridDataMALE.AsBoolean) and
     not ValidLNCh(StrToInt64(cdsGridDataEGN.AsString)) then
    raise Exception.Create(SInvalidEGN);
end;

end.


