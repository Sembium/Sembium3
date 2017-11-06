unit fPRPerPriceModifiers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, Menus, DB, AbmesFields, ParamDataSet, ActnList, DBClient, AbmesClientDataSet,
  GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls,
  ExtCtrls, DBGridEhGrouping, uClientTypes, System.Actions;

type
  TfmPRPerPriceModifiers = class(TGridForm)
    cdsGridDataPRPER_PRICE_MODIFIER_CODE: TAbmesFloatField;
    cdsGridDataPARTNER_CODE: TAbmesFloatField;
    cdsGridDataBORDER_REL_TYPE_CODE: TAbmesFloatField;
    cdsGridDataPAR_REL_PERIOD_CODE: TAbmesFloatField;
    cdsGridDataPRPER_PRICE_MODIFIER_NO: TAbmesFloatField;
    cdsGridDataPRPER_PRICE_MODIFIER_NAME: TAbmesWideStringField;
    cdsGridDataPRODUCT_SET_CODE: TAbmesFloatField;
    cdsGridDataACQUIRE_PRICE_MODIFIER: TAbmesFloatField;
    cdsGridDataLEASE_PRICE_MODIFIER: TAbmesFloatField;
    cdsGridData_MAX_PRPER_PRICE_MODIFIER_NO: TAggregateField;
    cdsProductSets: TAbmesClientDataSet;
    cdsProductSetsPRODUCT_SET_CODE: TAbmesFloatField;
    cdsProductSetsPRODUCT_SET_NO: TAbmesFloatField;
    cdsProductSetsPRODUCT_SET_NAME: TAbmesWideStringField;
    cdsGridData_PRODUCT_SET_NO: TAbmesFloatField;
    cdsGridData_PRODUCT_SET_NAME: TAbmesWideStringField;
    procedure actFormUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataACQUIRE_PRICE_MODIFIERGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsGridDataACQUIRE_PRICE_MODIFIERSetText(Sender: TField; const Text: string);
    procedure cdsGridDataLEASE_PRICE_MODIFIERGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsGridDataLEASE_PRICE_MODIFIERSetText(Sender: TField; const Text: string);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
    procedure actDelRecordExecute(Sender: TObject);
    procedure actInsertRecordExecute(Sender: TObject);
  private
    function ParRelPeriodDataSet: TDataSet;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure ChangeEditMode(var AEditMode: TEditMode); override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
  public
    procedure CheckUniqueConstraints;
  end;

implementation

uses
  uClientUtils, fPRPerPriceModifier, uUtils, DBConsts, dMain,
  uUserActivityConsts;

resourcestring
  SUniqueIndexErrorMessage = 'Съществуват Отстъпки с едни и същи %s';
  SUniqueNosErrorMessage = 'номера';
  SUniqueNamesErrorMessage = 'Наименования';
  SUniqueProductSetsErrorMessage = 'Обектови набори';

{$R *.dfm}

procedure TfmPRPerPriceModifiers.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmPRPerPriceModifier;
end;

procedure TfmPRPerPriceModifiers.actDelRecordExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaParRelPeriodPriceModifiersEdit);
  inherited;
end;

procedure TfmPRPerPriceModifiers.actFormUpdate(Sender: TObject);
begin
  inherited;
  AutoSizeColumn(grdData, 1);
end;

procedure TfmPRPerPriceModifiers.actInsertRecordExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaParRelPeriodPriceModifiersEdit);
  inherited;
end;

procedure TfmPRPerPriceModifiers.cdsGridDataACQUIRE_PRICE_MODIFIERGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  DiscountModifierFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmPRPerPriceModifiers.cdsGridDataACQUIRE_PRICE_MODIFIERSetText(Sender: TField; const Text: string);
begin
  inherited;
  DiscountModifierFieldSetText(Sender, Text);
end;

procedure TfmPRPerPriceModifiers.cdsGridDataBeforePost(DataSet: TDataSet);
begin
  inherited;

  if cdsGridDataPRPER_PRICE_MODIFIER_CODE.IsNull then
    cdsGridDataPRPER_PRICE_MODIFIER_CODE.AsInteger:= dmMain.SvrCompanies.GetNewPRPerPriceModifierCode;

  cdsGridDataPARTNER_CODE.Assign(ParRelPeriodDataSet.FieldByName('PARTNER_CODE'));
  cdsGridDataBORDER_REL_TYPE_CODE.Assign(ParRelPeriodDataSet.FieldByName('BORDER_REL_TYPE_CODE'));
  cdsGridDataPAR_REL_PERIOD_CODE.Assign(ParRelPeriodDataSet.FieldByName('PAR_REL_PERIOD_CODE'));
end;

procedure TfmPRPerPriceModifiers.cdsGridDataLEASE_PRICE_MODIFIERGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  DiscountModifierFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmPRPerPriceModifiers.cdsGridDataLEASE_PRICE_MODIFIERSetText(Sender: TField; const Text: string);
begin
  inherited;
  DiscountModifierFieldSetText(Sender, Text);
end;

function TfmPRPerPriceModifiers.ParRelPeriodDataSet: TDataSet;
begin
  Result:= cdsGridData.DataSetField.DataSet;
end;

function TfmPRPerPriceModifiers.ShowEditForm(
  AEditMode: TEditMode): Boolean;
begin
  PostDataSet(cdsGridData.DataSetField.DataSet);

  if (AEditMode = emEdit) and
     not LoginContext.HasUserActivity(uaParRelPeriodPriceModifiersEdit) then
    AEditMode:= emReadOnly;

  Result:= inherited ShowEditForm(AEditMode);
end;

procedure TfmPRPerPriceModifiers.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataPRPER_PRICE_MODIFIER_NO.AsInteger:= VarToInt(cdsGridData_MAX_PRPER_PRICE_MODIFIER_NO.AsVariant) + 1;
  cdsGridDataACQUIRE_PRICE_MODIFIER.AsInteger:= 1;
  cdsGridDataLEASE_PRICE_MODIFIER.AsInteger:= 1;
end;

procedure TfmPRPerPriceModifiers.OpenDataSets;
begin
  cdsProductSets.Open;
  inherited;
end;

procedure TfmPRPerPriceModifiers.CloseDataSets;
begin
  inherited;
  cdsProductSets.Close;
end;

procedure TfmPRPerPriceModifiers.ChangeEditMode(var AEditMode: TEditMode);
begin
  inherited;
  if (AEditMode = emInsert) then
    AEditMode:= emEdit;
end;

procedure TfmPRPerPriceModifiers.CheckUniqueConstraints;
begin
  cdsGridData.CheckUniqueConstraint('idxUniqueNo', Format(SUniqueIndexErrorMessage, [SUniqueNosErrorMessage]));
  cdsGridData.CheckUniqueConstraint('idxUniqueName', Format(SUniqueIndexErrorMessage, [SUniqueNamesErrorMessage]));
  cdsGridData.CheckUniqueConstraint('idxUniqueProductSet', Format(SUniqueIndexErrorMessage, [SUniqueProductSetsErrorMessage]));
end;

end.
