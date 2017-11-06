unit fCompanyTypes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBottomButtonGridForm, JvComponentBase, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh,
  AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls,
  ExtCtrls, fGridForm;

type
  TfmCompanyTypes = class(TBottomButtonGridForm)
    cdsGridDataCOMPANY_TYPE_CODE: TAbmesFloatField;
    cdsGridDataCOMPANY_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridDataABBREV_BEFORE: TAbmesFloatField;
    cdsGridDataCOMPANY_TYPE_NAME: TAbmesWideStringField;
    cdsGridDataCOMPANY_TYPE_NO: TAbmesFloatField;
    cdsGridData_MAX_COMPANY_TYPE_NO: TAggregateField;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataABBREV_BEFOREGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  fCompanyType, dMain, uUtils;

{$R *.dfm}

resourcestring
  SAbbrevAfter = 'Отзад';
  SAbbrevBefore = 'Отпред';

{ TfmCompanyTypes }

procedure TfmCompanyTypes.cdsGridDataABBREV_BEFOREGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
const
  AbbrevPositionTexts: array[Boolean] of string = (SAbbrevAfter, SAbbrevBefore);
begin
  inherited;
  if DisplayText and not Sender.IsNull then
    Text:= AbbrevPositionTexts[Sender.AsBoolean];
end;

procedure TfmCompanyTypes.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataCOMPANY_TYPE_CODE.AsInteger:= dmMain.SvrCompanies.GetNewCompanyTypeCode;
  cdsGridDataCOMPANY_TYPE_NO.AsInteger:= VarToInt(cdsGridData_MAX_COMPANY_TYPE_NO.AsVariant) + 1;
end;

procedure TfmCompanyTypes.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmCompanyType;
end;

end.
