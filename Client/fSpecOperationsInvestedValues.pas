unit fSpecOperationsInvestedValues;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponentBase, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh,
  AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls,
  ExtCtrls, JvExControls, JvDBLookup, AbmesDBCheckBox, fDeptFieldEditFrame,
  fDeptFieldEditFrameBald, fBaseFrame, fDBFrame, fFieldEditFrame,
  fTreeNodeFieldEditFrame, fProductFieldEditFrame, fProductFieldEditFrameBald,
  Mask, uClientTypes, dDocClient, fSpecificationAndXModelAbstract, JvExStdCtrls,
  JvEdit;

type
  TfmSpecOperationsInvestedValues = class(TGridForm)
    pnlTop: TPanel;
    gbDetail: TGroupBox;
    txtDetailTechMeasureAbbrev: TDBText;
    txtProductTechMeasureAbbrev: TDBText;
    lblDetail: TLabel;
    lblDetailTechQuantity: TLabel;
    lblProduct: TLabel;
    lblProductTechQuantity: TLabel;
    edtDetailTechQuantity: TDBEdit;
    edtProductTechQuantity: TDBEdit;
    frDetail: TfrProductFieldEditFrameBald;
    frProduct: TfrProductFieldEditFrameBald;
    gbStage: TGroupBox;
    lblSMVSType: TLabel;
    lblApproveCycleNo: TLabel;
    gbDept: TGroupBox;
    lblStageNo: TLabel;
    lblDept: TLabel;
    edtStageNo: TDBEdit;
    pnlDocs: TToolBar;
    btnDocs: TSpeedButton;
    frDept: TfrDeptFieldEditFrameBald;
    gbWorkdaysFor: TGroupBox;
    lblTreatmentWorkdays: TLabel;
    lblOutgoingWorkdays: TLabel;
    edtTreatmentWorkdays: TDBEdit;
    edtOutgoingWorkdays: TDBEdit;
    chbIsAutoMovment: TAbmesDBCheckBox;
    cbSMVSType: TJvDBLookupCombo;
    pnlExternalWorkPrice: TPanel;
    lblExternalWorkPrice: TLabel;
    lblExternalWorkPriceCurrency: TLabel;
    txtDetailTechMeasureAbbrev2: TDBText;
    edtExternalWorkPrice: TDBEdit;
    edtApproveCycleNo: TDBEdit;
    dsLines: TDataSource;
    gbPrices: TGroupBox;
    lblInvestedValueType: TLabel;
    lblInvestedValueResultProductTechQuantity: TLabel;
    txtSpecProductTechMeasureAbbrev: TDBText;
    edtInvestedValueType: TEdit;
    edtInvestedValueResultProductTechQuantity: TJvEdit;
    edtInvestedValuesDate: TJvEdit;
    dsModel: TDataSource;
    lblInvestedValueDate: TLabel;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnDocsClick(Sender: TObject);
    procedure grdDataGetFooterParams(Sender: TObject; DataCol, Row: Integer;
      Column: TColumnEh; AFont: TFont; var Background: TColor;
      var Alignment: TAlignment; State: TGridDrawState; var Text: string);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure actPrintExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
  private
    FSaveGridData: TAbmesClientDataSet;
    FVariantsDataSet: TAbmesClientDataSet;
    FInvestedValueFilter: TInvestedValueFilter;
    function GetInvestedValueTitle: string;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;

    property InvestedValueTitle: string read GetInvestedValueTitle;
    property InvestedValueFilter: TInvestedValueFilter read FInvestedValueFilter;
  public
    class function ShowForm(AdmDocClient: TdmDocClient; ADataSet: TDataSet;
      AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean;
      AGridDataSet: TAbmesClientDataSet; ALinesDataSet: TAbmesClientDataSet;
      AVariantsDataSet: TAbmesClientDataSet;
      AInvestedValueFilter: TInvestedValueFilter): Boolean;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True;
      AGridDataSet: TAbmesClientDataSet = nil; ALinesDataSet: TAbmesClientDataSet = nil;
      AVariantsDataSet: TAbmesClientDataSet = nil;
      AInvestedValueFilter: TInvestedValueFilter = nil); reintroduce; virtual;
    procedure Initialize; override;
  end;

type
  TOperationsInvestedValuesClass = class of TfmSpecOperationsInvestedValues;

implementation

uses
  dMain, uDocUtils, uUtils, rSpecOperationsInvestedValues, JclDateTime;

{$R *.dfm}

resourcestring
  SInvestedValueAbbrev = 'ВС';

{ TfmSpecModelVariantStageInvestedValues }

procedure TfmSpecOperationsInvestedValues.actFormUpdate(Sender: TObject);
begin
  inherited;

  edtInvestedValuesDate.Text:=
    JclDateTime.FormatDateTime(dmMain.GetDateDisplayFormat, FInvestedValueFilter.InvestedValueDate);
end;

procedure TfmSpecOperationsInvestedValues.actPrintExecute(Sender: TObject);
var
  b: TBookmark;
begin
  with FVariantsDataSet do
    begin
      DisableControls;
      try
        b:= Bookmark;
        try
          Locate('SPEC_MODEL_VARIANT_NO',
            dsData.DataSet.FieldByName('SPEC_MODEL_VARIANT_NO').AsInteger, []);

          TrptSpecOperationsInvestedValues.PrintReport(cdsGridData, (dsData.DataSet as TClientDataSet),
            (dsLines.DataSet as TClientDataSet), InvestedValueTitle, InvestedValueFilter,
            txtSpecProductTechMeasureAbbrev.Field.DisplayText, FVariantsDataSet);
        finally
          Bookmark:= b;
        end;  { try }
      finally
        EnableControls;
      end;  { try }
    end;  { with }
end;

procedure TfmSpecOperationsInvestedValues.btnDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, btnDocs, dotSpecStage, dsData.DataSet);
end;

procedure TfmSpecOperationsInvestedValues.CloseDataSets;
begin
//  inherited;   do nothing
end;

procedure TfmSpecOperationsInvestedValues.FormCreate(Sender: TObject);
begin
  inherited;

  frDetail.FieldNames:= 'DETAIL_CODE';

  with lblExternalWorkPriceCurrency do
    Caption:= FormatBaseCurrencyAbbrevString(Caption);

  SetBaseCurrencyAbbrevColumnCaption(grdData.Columns[3]);
  SetBaseCurrencyAbbrevColumnCaption(grdData.Columns[5]);
  SetBaseCurrencyAbbrevColumnCaption(grdData.Columns[7]);

  ReportClass:= TrptSpecOperationsInvestedValues;
end;

procedure TfmSpecOperationsInvestedValues.FormDestroy(Sender: TObject);
begin
  inherited;
  cdsGridData:= FSaveGridData;
end;

function TfmSpecOperationsInvestedValues.GetInvestedValueTitle: string;
var
  i: Integer;
begin
  Result:= '';

  if (FInvestedValueFilter.InvestedValueSum = ivsNone) or
     (FInvestedValueFilter.InvestedValueLevel = 1) then
    Result:= FInvestedValueFilter.InvestedValueAbbrev
  else
    begin
      if (FInvestedValueFilter.InvestedValueSum in [ivsAggregated, ivsFull]) then
        begin
          Result:= Format('%s %d', [SInvestedValueAbbrev, 2]);
          for i:= 3 to FInvestedValueFilter.InvestedValueLevel do
            if (i <> 4) then
              Result:= Result + Format(' + %s %d', [SInvestedValueAbbrev, i]);
        end;
    end;

  Result:=
    Format('%s (%s)', [Result, FInvestedValueFilter.CurrencyAbbrev]);
end;

procedure TfmSpecOperationsInvestedValues.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var
  IsActive: Boolean;
begin
  inherited;

  IsActive:= cdsGridData.FieldByName('IS_ACTIVE').AsBoolean;

  if not IsActive then
    AFont.Color:= clGray;

  if (Pos('INVESTED_VALUE', Column.FieldName) > 0) and
     cdsGridData.FieldByName(Column.FieldName + '_II').AsBoolean then
    begin
      if IsActive then
        AFont.Color:= clRed
      else
        AFont.Color:= clPurple;
    end;
end;

procedure TfmSpecOperationsInvestedValues.grdDataGetFooterParams(
  Sender: TObject; DataCol, Row: Integer; Column: TColumnEh; AFont: TFont;
  var Background: TColor; var Alignment: TAlignment; State: TGridDrawState;
  var Text: string);
begin
  inherited;

  if (Column.Footer.FieldName <> '') and
     (VarToInt(cdsGridData.FieldByName(Column.Footer.FieldName + '_II').AsVariant) = 1) then
    AFont.Color:= clRed;
end;

procedure TfmSpecOperationsInvestedValues.Initialize;

  procedure SetColumnFormatedCaption(ColumnIndex: Integer; FormatParam: string);
  begin
    grdData.Columns[ColumnIndex].Title.Caption:=
      Format(grdData.Columns[ColumnIndex].Title.Caption, [FormatParam]);
  end;

begin
  inherited;

  edtInvestedValueType.Text:= Format('%s / %s / %s',
    [FInvestedValueFilter.InvestedValueAbbrev,
     FInvestedValueFilter.AggregatedAbbrev,
     FInvestedValueFilter.InvestedValueSingleAbbrev]);

  edtInvestedValueResultProductTechQuantity.Text:=
    FormatFloat(',0.###', FInvestedValueFilter.ResultProductTechQuantity);

  SetColumnFormatedCaption(10, InvestedValueTitle);
  SetColumnFormatedCaption(11, InvestedValueTitle);
  SetColumnFormatedCaption(12, InvestedValueTitle);
end;

procedure TfmSpecOperationsInvestedValues.OpenDataSets;
begin
//  inherited;   do nothing
end;

procedure TfmSpecOperationsInvestedValues.SetDataParams(
  AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean; AGridDataSet,
  ALinesDataSet, AVariantsDataSet: TAbmesClientDataSet;
  AInvestedValueFilter: TInvestedValueFilter);

begin
  Assert(Assigned(AGridDataSet));

  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);

  FSaveGridData:= cdsGridData;
  cdsGridData:= AGridDataSet;
  dsGridData.DataSet:= cdsGridData;

  dsLines.DataSet:= ALinesDataSet;
  dsModel.DataSet:= ALinesDataSet.DataSetField.DataSet;

  frDetail.SetDataSet(ALinesDataSet);
  frProduct.SetDataSet(ALinesDataSet);

  FVariantsDataSet:= AVariantsDataSet;
  FInvestedValueFilter:= AInvestedValueFilter;
end;

class function TfmSpecOperationsInvestedValues.ShowForm(
  AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean; AGridDataSet,
  ALinesDataSet, AVariantsDataSet: TAbmesClientDataSet;
  AInvestedValueFilter: TInvestedValueFilter): Boolean;
var
  f: TfmSpecOperationsInvestedValues;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode,
      ADefaultsOrigin, AFilterFormEnabled,
      AGridDataSet, ALinesDataSet, AVariantsDataSet, AInvestedValueFilter);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

end.
