unit fInvoiceNoGenerator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, fEditForm, DB, DBClient,
  AbmesClientDataSet, ActnList, StdCtrls, Buttons, ExtCtrls,
  AbmesFields, fBevelEditForm, fTreeNodeFieldEditFrame, fDeptFieldEditFrame,
  JvExStdCtrls, JvCombobox, JvDBCombobox, fBaseFrame, fDBFrame, fFieldEditFrame,
  fDateIntervalFrame, Mask, DBCtrls, fDualGridFrame;

type
  [CanEditOuterDataSet(False)]
  TfmInvoiceNoGenerator = class(TBevelEditForm)
    cdsDataINVOICE_NO_GENERATOR_CODE: TAbmesFloatField;
    cdsDataINVOICE_NO_GENERATOR_NO: TAbmesFloatField;
    cdsDataBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDataEND_DATE: TAbmesSQLTimeStampField;
    cdsDataDEPT_CODE: TAbmesFloatField;
    cdsDataIS_PROFORM_INVOICE: TAbmesFloatField;
    cdsDataIS_APPROVED: TAbmesFloatField;
    cdsDataMIN_INVOICE_NO: TAbmesFloatField;
    cdsDataMAX_INVOICE_NO: TAbmesFloatField;
    cdsDataCURRENT_INVOICE_NO: TAbmesFloatField;
    edtNo: TDBEdit;
    lblNo: TLabel;
    frDateInterval: TfrDateIntervalFrame;
    lblDateInterval: TLabel;
    cbIsProformInvoice: TJvDBComboBox;
    lblIsProformInvoice: TLabel;
    cbIsApproved: TJvDBComboBox;
    lblIsApproved: TLabel;
    frDept: TfrDeptFieldEditFrame;
    gbInvoiceTypes: TGroupBox;
    frInvoiceTypes: TDualGridFrame;
    gbCurrencies: TGroupBox;
    frCurrencies: TDualGridFrame;
    gbInvoiceNo: TGroupBox;
    lblMinInvoiceNo: TLabel;
    edtMinInvoiceNo: TDBEdit;
    lblMaxInvoiceNo: TLabel;
    edtMaxInvoiceNo: TDBEdit;
    lblCurrentInvoiceNo: TLabel;
    edtCurrentInvoiceNo: TDBEdit;
    btnEditCurrentNo: TSpeedButton;
    actCurrentNoEdit: TAction;
    cdsINGInvoiceTypes: TAbmesClientDataSet;
    cdsINGNotInvoiceTypes: TAbmesClientDataSet;
    cdsINGCurrencies: TAbmesClientDataSet;
    cdsINGNotCurrencies: TAbmesClientDataSet;
    cdsINGInvoiceTypesINVOICE_NO_GENERATOR_CODE: TAbmesFloatField;
    cdsINGInvoiceTypesINVOICE_TYPE_CODE: TAbmesFloatField;
    cdsINGNotInvoiceTypesINVOICE_TYPE_CODE: TAbmesFloatField;
    cdsINGCurrenciesINVOICE_NO_GENERATOR_CODE: TAbmesFloatField;
    cdsINGCurrenciesCURRENCY_CODE: TAbmesFloatField;
    cdsINGNotCurrenciesCURRENCY_CODE: TAbmesFloatField;
    cdsInvoiceTypes: TAbmesClientDataSet;
    cdsInvoiceTypesINVOICE_TYPE_CODE: TAbmesFloatField;
    cdsInvoiceTypesINVOICE_TYPE_NAME: TAbmesWideStringField;
    cdsCurrencies: TAbmesClientDataSet;
    cdsCurrenciesCURRENCY_CODE: TAbmesFloatField;
    cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField;
    cdsINGInvoiceTypes_INVOICE_TYPE_NAME: TAbmesWideStringField;
    cdsINGNotInvoiceTypes_INVOICE_TYPE_NAME: TAbmesWideStringField;
    cdsINGCurrencies_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsINGNotCurrencies_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsDataqryINGNotCurrencies: TDataSetField;
    cdsDataqryINGCurrencies: TDataSetField;
    cdsDataqryINGNotInvoiceTypes: TDataSetField;
    cdsDataqryINGInvoiceTypes: TDataSetField;
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure actFormUpdate(Sender: TObject);
    procedure actCurrentNoEditUpdate(Sender: TObject);
    procedure cdsINGInvoiceTypesNewRecord(DataSet: TDataSet);
    procedure cdsINGCurrenciesNewRecord(DataSet: TDataSet);
    procedure cdsInvoiceTypesFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure actCurrentNoEditExecute(Sender: TObject);
    procedure frInvoiceTypesgrdIncludedDblClick(Sender: TObject);
    procedure frInvoiceTypesgrdExcludedDblClick(Sender: TObject);
    procedure frCurrenciesgrdIncludedDblClick(Sender: TObject);
    procedure frCurrenciesgrdExcludedDblClick(Sender: TObject);
    procedure cdsINGInvoiceTypes_INVOICE_TYPE_NAMEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure IncludedListFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsINGCurrencies_CURRENCY_ABBREVGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsDataCURRENT_INVOICE_NOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    procedure FillNotInvoiceTypes;
    procedure FillNotCurrencies;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  public
    procedure Initialize; override;
    procedure DoApplyUpdates; override;
  end;

implementation

uses
  dMain, uUtils, uClientUtils, uClientTypes, Math, uClientConsts;

resourcestring
  SInvalidInvoiceNoRange = 'Некоректен диапазон на номера на фактури';
  SInvalidCurrentInvoiceNo = '"%s" трябва да бъде в диапазона "%s" ÷ "%s"';

{$R *.dfm}

procedure TfmInvoiceNoGenerator.actCurrentNoEditExecute(Sender: TObject);
begin
  inherited;

  with Sender as TAction do
    begin
      Checked:= not Checked;
      if Checked then
        begin
          edtCurrentInvoiceNo.SetFocus;
        end;
    end;
end;

procedure TfmInvoiceNoGenerator.actCurrentNoEditUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (EditMode <> emReadOnly);
end;

procedure TfmInvoiceNoGenerator.actFormUpdate(Sender: TObject);
begin
  inherited;
  SetControlsReadOnly((EditMode = emReadOnly),
    [edtNo, cbIsProformInvoice, cbIsApproved, edtMinInvoiceNo, edtMaxInvoiceNo]);

  SetControlReadOnly(
    (EditMode = emReadOnly) or not actCurrentNoEdit.Checked,
    edtCurrentInvoiceNo);

  if actCurrentNoEdit.Checked and edtCurrentInvoiceNo.Focused then
    cdsDataCURRENT_INVOICE_NO.DisplayFormat:= '0'
  else
    cdsDataCURRENT_INVOICE_NO.DisplayFormat:= '0000000000';
end;

procedure TfmInvoiceNoGenerator.cdsINGCurrenciesNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsINGCurrenciesINVOICE_NO_GENERATOR_CODE.Assign(cdsDataINVOICE_NO_GENERATOR_CODE);
end;

procedure TfmInvoiceNoGenerator.cdsINGCurrencies_CURRENCY_ABBREVGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  IncludedListFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmInvoiceNoGenerator.cdsDataCURRENT_INVOICE_NOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText and Sender.IsNull then
    Text:= SNotExists
  else
    NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmInvoiceNoGenerator.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;

  if cdsDataINVOICE_NO_GENERATOR_CODE.IsNull then
    cdsDataINVOICE_NO_GENERATOR_CODE.AsInteger:= -1;

  cdsDataINVOICE_NO_GENERATOR_NO.AsInteger:=
    OuterDataSet.FieldByName('_MAX_INVOICE_NO_GENERATOR_NO').AsVarInteger + 1;

  cdsDataCURRENT_INVOICE_NO.Clear;
end;

procedure TfmInvoiceNoGenerator.cdsINGInvoiceTypesNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsINGInvoiceTypesINVOICE_NO_GENERATOR_CODE.Assign(cdsDataINVOICE_NO_GENERATOR_CODE);
end;

procedure TfmInvoiceNoGenerator.cdsINGInvoiceTypes_INVOICE_TYPE_NAMEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  IncludedListFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmInvoiceNoGenerator.cdsInvoiceTypesFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:= (cdsInvoiceTypesINVOICE_TYPE_CODE.AsInteger in [1, 2, 3, 8]);
end;

procedure TfmInvoiceNoGenerator.OpenDataSets;
begin
  inherited;
  cdsInvoiceTypes.Open;
  cdsCurrencies.Open;
end;

procedure TfmInvoiceNoGenerator.CloseDataSets;
begin
  cdsCurrencies.Close;
  cdsInvoiceTypes.Close;
  inherited;
end;

procedure TfmInvoiceNoGenerator.DoApplyUpdates;
begin
  CheckRequiredFields([
    cdsDataINVOICE_NO_GENERATOR_NO,
    cdsDataBEGIN_DATE,
    cdsDataEND_DATE,
    cdsDataDEPT_CODE,
    cdsDataMIN_INVOICE_NO,
    cdsDataMAX_INVOICE_NO
  ]);

  if (cdsDataMIN_INVOICE_NO.AsInteger > cdsDataMAX_INVOICE_NO.AsInteger) then
    begin
      cdsDataMIN_INVOICE_NO.FocusControl;
      raise Exception.Create(SInvalidInvoiceNoRange);
    end;

  if not cdsDataCURRENT_INVOICE_NO.IsNull and
     not InRange(cdsDataCURRENT_INVOICE_NO.AsInteger, cdsDataMIN_INVOICE_NO.AsInteger, cdsDataMAX_INVOICE_NO.AsInteger) then
    begin
      cdsDataCURRENT_INVOICE_NO.FocusControl;
      raise Exception.CreateFmt(SInvalidCurrentInvoiceNo,
        [cdsDataCURRENT_INVOICE_NO.DisplayLabel, cdsDataMIN_INVOICE_NO.DisplayLabel, cdsDataMAX_INVOICE_NO.DisplayLabel]);
    end;

  inherited;
end;

procedure TfmInvoiceNoGenerator.FillNotInvoiceTypes;
begin
  cdsINGNotInvoiceTypes.TempDisableControls/
    procedure begin
      cdsInvoiceTypes.ForEach/
        cdsINGNotInvoiceTypes.SafeAppend/
          procedure begin
            cdsINGNotInvoiceTypesINVOICE_TYPE_CODE.Assign(cdsInvoiceTypesINVOICE_TYPE_CODE);
          end;

      cdsINGNotInvoiceTypes.First;
    end;
end;

procedure TfmInvoiceNoGenerator.frCurrenciesgrdExcludedDblClick(
  Sender: TObject);
begin
  inherited;
  frCurrencies.actInclude.Execute;
end;

procedure TfmInvoiceNoGenerator.frCurrenciesgrdIncludedDblClick(
  Sender: TObject);
begin
  inherited;
  frCurrencies.actExclude.Execute;
end;

procedure TfmInvoiceNoGenerator.frInvoiceTypesgrdExcludedDblClick(
  Sender: TObject);
begin
  inherited;
  frInvoiceTypes.actInclude.Execute;
end;

procedure TfmInvoiceNoGenerator.frInvoiceTypesgrdIncludedDblClick(
  Sender: TObject);
begin
  inherited;
  frInvoiceTypes.actExclude.Execute;
end;

procedure TfmInvoiceNoGenerator.FillNotCurrencies;
begin
  cdsINGNotCurrencies.TempDisableControls/
    procedure begin
      cdsCurrencies.ForEach/
        cdsINGNotCurrencies.SafeAppend/
          procedure begin
            cdsINGNotCurrenciesCURRENCY_CODE.Assign(cdsCurrenciesCURRENCY_CODE);
          end;

      cdsINGNotCurrencies.First;
    end;
end;

procedure TfmInvoiceNoGenerator.IncludedListFieldGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DisplayText and Sender.DataSet.IsEmpty then
    Text:= SAllInBrackets
  else
    Text:= Sender.AsString;
end;

procedure TfmInvoiceNoGenerator.Initialize;
begin
  inherited;

  if (EditMode = emInsert) and (DefaultsOrigin <> doServer) then
    begin
      FillNotInvoiceTypes;
      FillNotCurrencies;
    end;

  cdsINGInvoiceTypes.First;
  cdsINGNotInvoiceTypes.First;
  cdsINGCurrencies.First;
  cdsINGNotCurrencies.First;
end;

end.
