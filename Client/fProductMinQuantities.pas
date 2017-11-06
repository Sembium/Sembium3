unit fProductMinQuantities;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fInnerButtonGridForm, Menus, JvButtons, ParamDataSet,
  ActnList, DB, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid,
  ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  fBottomButtonGridForm, AbmesFields, JvComponent, JvCaptionButton,
  JvComponentBase, uClientTypes, DBGridEhGrouping;

type
  TfmProductMinQuantities = class(TBottomButtonGridForm)
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataSTORE_CODE: TAbmesFloatField;
    cdsGridDataIS_INHERITED: TAbmesFloatField;
    cdsGridDataPRODUCT_LEVEL: TAbmesFloatField;
    cdsGridDataMIN_QUANTITY: TAbmesFloatField;
    cdsMeasures: TAbmesClientDataSet;
    cdsMeasuresMEASURE_CODE: TAbmesFloatField;
    cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataSTORE_FULL_NAME: TAbmesWideStringField;
    cdsGridDataPRODUCT_STORE_CODE: TAbmesFloatField;
    cdsGridDataBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataEND_DATE: TAbmesSQLTimeStampField;
    cdsGridData_MAX_PRODUCT_STORE_CODE: TAggregateField;
    cdsGridDataACCOUNT_MIN_QUANTITY: TAbmesFloatField;
    cdsGridDataACCOUNT_MEASURE_COEF: TAbmesFloatField;
    cdsGridDataMEASURE_CODE: TAbmesFloatField;
    cdsGridDataACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsGridData_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    tlbToggleMeasures: TToolBar;
    actWorkMeasure: TAction;
    actAccountMeasure: TAction;
    btnWorkMeasure: TToolButton;
    btnAccountMeasure: TToolButton;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataHAS_DOC_ITEMS: TAbmesFloatField;
    tlbDocs: TToolBar;
    sepBeforeDocs: TToolButton;
    pnlDocs: TPanel;
    btnDocs: TSpeedButton;
    cdsGridDataIS_PAST: TAbmesFloatField;
    cdsGridDataIS_PRESENT: TAbmesFloatField;
    cdsGridDataIS_FUTURE: TAbmesFloatField;
    actPastMinQuantities: TAction;
    actPresentMinQuantities: TAction;
    actFutureMinQuantities: TAction;
    tlbMinQuantities: TToolBar;
    btnPastMinQuantities: TSpeedButton;
    btnPresentMinQuantities: TSpeedButton;
    btnFutureMinQuantities: TSpeedButton;
    sepPastMinQuantities: TToolButton;
    sepAfterDocs: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cdsGridDataAfterPost(DataSet: TDataSet);
    procedure cdsGridDataAfterDelete(DataSet: TDataSet);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure cdsGridDataSTORE_CODEChange(Sender: TField);
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
    procedure cdsGridDataBEGIN_DATEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataMIN_QUANTITYChange(Sender: TField);
    procedure cdsGridDataACCOUNT_MIN_QUANTITYChange(Sender: TField);
    procedure actWorkMeasureExecute(Sender: TObject);
    procedure actAccountMeasureExecute(Sender: TObject);
    procedure btnDocsClick(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actPastPresentFutureMinQuantitiesExecute(Sender: TObject);
    procedure cdsGridDataFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
  private
    FProductLevel: Integer;
    FDataChanging: Boolean;
    FCreateLike: Boolean;
    procedure SetVisibleColumns;
    procedure RefilterMinQuantities;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetGridRecordReadOnly: Boolean; override;
    function GetInsertRecordEnabled: Boolean; override;
    function GetDelRecordEnabled: Boolean; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
  public
    ChangeProc: procedure of object;
    property CreateLike: Boolean read FCreateLike write FCreateLike;
  end;

implementation

uses
  dMain, fProductMinQuantityEdit, uColorConsts, 
  uUserActivityConsts, uTreeClientUtils, uUtils, fDBDataForm,
  uDocUtils, uClientDateTime, uProducts;

resourcestring
  SProductMinQuantity = 'Задела трябва да не е отрицателно число';

{$R *.dfm}

procedure TfmProductMinQuantities.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmProductMinQuantityEdit;
  RegisterDateField(cdsGridDataBEGIN_DATE);
  SetVisibleColumns;
end;

function TfmProductMinQuantities.GetDelRecordEnabled: Boolean;
begin
  Result:=
    (inherited GetDelRecordEnabled) and
    (not cdsGridDataIS_INHERITED.AsBoolean) and
    LoginContext.HasUserActivity(uaProductMinQuantitiesEdit);
end;

function TfmProductMinQuantities.GetGridRecordReadOnly: Boolean;
begin
  Result:=
    (inherited GetGridRecordReadOnly) or
    cdsGridDataIS_INHERITED.AsBoolean or
    not LoginContext.HasUserActivity(uaProductMinQuantitiesEdit);
end;

procedure TfmProductMinQuantities.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if cdsGridDataIS_INHERITED.AsBoolean and
     not (gdSelected in State) then
    Background:= ccGridTreeInheritedItem;
end;

procedure TfmProductMinQuantities.cdsGridDataAfterPost(DataSet: TDataSet);
begin
  inherited;
  ChangeProc;
end;

procedure TfmProductMinQuantities.cdsGridDataAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  ChangeProc;
end;

procedure TfmProductMinQuantities.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;

  cdsGridDataPRODUCT_CODE.AsVariant:= dsData.DataSet.FieldByName('PRODUCT_CODE').AsVariant;
  DoProductFieldChanged(cdsGridDataPRODUCT_CODE, nil, nil,
    cdsGridDataMEASURE_CODE,
    cdsGridDataACCOUNT_MEASURE_CODE, cdsGridDataACCOUNT_MEASURE_COEF);

  cdsGridDataPRODUCT_STORE_CODE.AsInteger:=
    VarToInt(cdsGridData_MAX_PRODUCT_STORE_CODE.AsVariant) + 1;
  cdsGridDataIS_INHERITED.AsBoolean:= False;
  cdsGridDataPRODUCT_LEVEL.AsInteger:= FProductLevel;
  cdsGridDataHAS_DOC_ITEMS.AsBoolean:= False;
end;

procedure TfmProductMinQuantities.cdsGridDataAfterOpen(DataSet: TDataSet);
begin
  inherited;

  FProductLevel:= MaxInt;

  with cdsGridData do
    if not (Bof and Eof) then
      begin
        DisableControls;
        try
          Last;

          if not cdsGridDataIS_INHERITED.AsBoolean then
            FProductLevel:= cdsGridDataPRODUCT_LEVEL.AsInteger;

          First;

          if CreateLike then
            begin
              while not Eof do
                begin
                  if not cdsGridDataDOC_CODE.IsNull then
                    begin
                      Edit;
                      try
                        dmDocClient.CreateDocLike(cdsGridDataDOC_BRANCH_CODE.AsInteger, cdsGridDataDOC_CODE.AsInteger, True,
                          cdsGridDataDOC_BRANCH_CODE, cdsGridDataDOC_CODE);
                        Post;
                      except
                        Cancel;
                        raise;
                      end;  { try }
                    end;

                  Next;
                end;  { while }

              First;
            end;  { if }
        finally
          EnableControls;
        end;   { try }
      end;   { with }
end;

function TfmProductMinQuantities.GetInsertRecordEnabled: Boolean;
begin
  Result:=
    inherited GetInsertRecordEnabled and
    LoginContext.HasUserActivity(uaProductMinQuantitiesEdit);
end;

procedure TfmProductMinQuantities.cdsGridDataSTORE_CODEChange(
  Sender: TField);
begin
  inherited;
  cdsGridDataSTORE_FULL_NAME.AsString:= GetDeptFullName(cdsGridDataSTORE_CODE.AsInteger);
end;

procedure TfmProductMinQuantities.cdsGridDataBeforePost(DataSet: TDataSet);
var
  NowDate: TDateTime;
begin
  inherited;

  if (cdsGridDataMIN_QUANTITY.AsFloat < 0) then
    raise Exception.Create(SProductMinQuantity);

  NowDate:= ContextDate;

  cdsGridDataIS_PAST.AsBoolean:=
    (cdsGridDataEND_DATE.AsDateTime < NowDate);
  cdsGridDataIS_FUTURE.AsBoolean:=
    (cdsGridDataBEGIN_DATE.AsDateTime > NowDate);
  cdsGridDataIS_PRESENT.AsBoolean:=
    not cdsGridDataIS_PAST.AsBoolean and
    not cdsGridDataIS_FUTURE.AsBoolean;
end;

procedure TfmProductMinQuantities.cdsGridDataBEGIN_DATEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;

  if Sender.IsNull then
    Text:= ''
  else
    Text:= dmMain.GetDateIntervalAsString(Sender.AsDateTime, cdsGridDataEND_DATE.AsDateTime);
end;

procedure TfmProductMinQuantities.cdsGridDataFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:=
    (cdsGridDataIS_PAST.AsBoolean and actPastMinQuantities.Checked) or
    (cdsGridDataIS_PRESENT.AsBoolean and actPresentMinQuantities.Checked) or
    (cdsGridDataIS_FUTURE.AsBoolean and actFutureMinQuantities.Checked);
end;

procedure TfmProductMinQuantities.cdsGridDataMIN_QUANTITYChange(
  Sender: TField);
begin
  inherited;

  if FDataChanging then
    Exit;

  FDataChanging:= True;
  try
    if cdsGridDataMIN_QUANTITY.IsNull or cdsGridDataACCOUNT_MEASURE_COEF.IsNull then
      cdsGridDataACCOUNT_MIN_QUANTITY.Clear
    else
      cdsGridDataACCOUNT_MIN_QUANTITY.AsFloat:=
        cdsGridDataMIN_QUANTITY.AsFloat * cdsGridDataACCOUNT_MEASURE_COEF.AsFloat;
        
  finally
    FDataChanging:= False;
  end;  { try }
end;

procedure TfmProductMinQuantities.cdsGridDataACCOUNT_MIN_QUANTITYChange(
  Sender: TField);
begin
  inherited;

  if FDataChanging then
    Exit;

  FDataChanging:= True;
  try
    if cdsGridDataACCOUNT_MIN_QUANTITY.IsNull or
       cdsGridDataACCOUNT_MEASURE_COEF.IsNull or
       (cdsGridDataACCOUNT_MEASURE_COEF.AsFloat = 0) then
      cdsGridDataMIN_QUANTITY.Clear
    else
      cdsGridDataMIN_QUANTITY.AsFloat:=
        cdsGridDataACCOUNT_MIN_QUANTITY.AsFloat / cdsGridDataACCOUNT_MEASURE_COEF.AsFloat;
        
  finally
    FDataChanging:= False;
  end;  { try }
end;

procedure TfmProductMinQuantities.OpenDataSets;
begin
  cdsMeasures.Open;
  inherited;
end;

procedure TfmProductMinQuantities.RefilterMinQuantities;
var
  ProductStoreCode: Integer;
begin
  with cdsGridData do
    begin
      DisableControls;
      try
        ProductStoreCode:= cdsGridDataPRODUCT_STORE_CODE.AsInteger;

        Filtered:= False;
        Filtered:= True;

        Locate('PRODUCT_STORE_CODE', ProductStoreCode, []);
      finally
        EnableControls;
      end;  { try }
    end;  { with }
end;

procedure TfmProductMinQuantities.CloseDataSets;
begin
  inherited;
  cdsMeasures.Close;
end;

procedure TfmProductMinQuantities.SetVisibleColumns;
begin
  grdData.Columns[2].Visible:= actWorkMeasure.Checked;
  grdData.Columns[3].Visible:= actWorkMeasure.Checked;
  grdData.Columns[4].Visible:= actAccountMeasure.Checked;
  grdData.Columns[5].Visible:= actAccountMeasure.Checked;
end;

function TfmProductMinQuantities.ShowEditForm(
  AEditMode: TEditMode): Boolean;
var
  FSelectFinancialObject: Boolean;
begin
  FSelectFinancialObject:= (dsData.DataSet.FieldByName('PRODUCT_CLASS_CODE').AsInteger = Ord(pcFinancial));
  Result:= TfmProductMinQuantityEdit.ShowForm(dmDocClient, dsGridData.DataSet, AEditMode, doNone, FSelectFinancialObject);
end;

procedure TfmProductMinQuantities.actWorkMeasureExecute(Sender: TObject);
begin
  inherited;
  SetVisibleColumns;
end;

procedure TfmProductMinQuantities.actAccountMeasureExecute(
  Sender: TObject);
begin
  inherited;
  SetVisibleColumns;
end;

procedure TfmProductMinQuantities.btnDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, (Sender as TControl), dotProductStore, cdsGridData);
end;

procedure TfmProductMinQuantities.actFormUpdate(Sender: TObject);
begin
  inherited;
  btnDocs.Enabled:=
    cdsGridData.Active and
    cdsGridDataHAS_DOC_ITEMS.AsBoolean;
end;

procedure TfmProductMinQuantities.actPastPresentFutureMinQuantitiesExecute(
  Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  RefilterMinQuantities;
end;

end.

