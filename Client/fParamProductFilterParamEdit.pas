unit fParamProductFilterParamEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, Menus, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, AbmesFields, DBCtrls, JvDBLookup,
  Mask, JvExControls, fGridForm, ParamDataSet, GridsEh, DBGridEh, AbmesDBGrid,
  ComCtrls, ToolWin, ColorNavigator, fBaseFrame, fDBFrame, fDualGridFrame,
  uClientConsts, uClientTypes, dDocClient, DBGridEhGrouping, fBaseForm;

type
  [CanUseDocs]
  TfmParamProductFilterParamEdit = class(TGridForm)
    cdsNomItems: TAbmesClientDataSet;
    cdsNomItemsNOM_ITEM_CODE: TAbmesFloatField;
    cdsNomItemsNOM_ITEM_NAME: TAbmesWideStringField;
    dsNomItems: TDataSource;
    pnlParamNomValues: TPanel;
    frParamNomValues: TDualGridFrame;
    pnlTop: TPanel;
    bvlTop: TBevel;
    cbParam: TJvDBLookupCombo;
    lblParam: TLabel;
    cdsNomItemsNOM_CODE: TAbmesFloatField;
    cdsNomItemsNOM_ITEM_DESCRIPTION: TAbmesWideStringField;
    cdsNomItemNotValues: TAbmesClientDataSet;
    cdsNomItemNotValuesVALUE_NOM_CODE: TAbmesFloatField;
    cdsNomItemNotValuesVALUE_NOM_ITEM_CODE: TAbmesFloatField;
    cdsNomItemNotValuesVALUE_NOM_ITEM_NAME: TAbmesWideStringField;
    cdsNomItemNotValuesVALUE_NOM_ITEM_DESCRIPTION: TAbmesWideStringField;
    cdsProductParams: TAbmesClientDataSet;
    cdsProductParamsPRODUCT_CODE: TAbmesFloatField;
    cdsProductParamsPRODUCT_PARAM_CODE: TAbmesFloatField;
    cdsProductParamsPRODUCT_PARAM_NAME: TAbmesWideStringField;
    dsProductParams: TDataSource;
    cdsNomItemNotValuesVALUE_NOM_ITEM_DISPLAY_NAME: TAbmesWideStringField;
    tlbNomDocs: TToolBar;
    btnNomDocs: TToolButton;
    pnlNomDocsCaption: TPanel;
    actNomDocs: TAction;
    cdsNomItemsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsNomItemsDOC_CODE: TAbmesFloatField;
    cdsNomItemsHAS_DOC_ITEMS: TAbmesFloatField;
    cdsNomItemNotValuesVALUE_NOM_ITEM_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsNomItemNotValuesVALUE_NOM_ITEM_DOC_CODE: TAbmesFloatField;
    cdsNomItemNotValuesVALUE_NOM_ITEM_HAS_DOC_ITEMS: TAbmesFloatField;
    tlbNomItemValues: TToolBar;
    btnNomItemValues: TToolButton;
    sepNomItemValues: TToolButton;
    tlbNomItemNotValues: TToolBar;
    sepNomItemNotValues: TToolButton;
    btnNomItemNotValues: TToolButton;
    actNomItemValuesDocs: TAction;
    actNomItemNotValuesDocs: TAction;
    procedure actFormUpdate(Sender: TObject);
    procedure cbParamChange(Sender: TObject);
    procedure cdsNomItemsBeforeOpen(DataSet: TDataSet);
    procedure cdsProductParamsBeforeOpen(DataSet: TDataSet);
    procedure cdsNomItemsAfterOpen(DataSet: TDataSet);
    procedure actNomDocsExecute(Sender: TObject);
    procedure actNomDocsUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actNomItemValuesDocsExecute(Sender: TObject);
    procedure actNomItemValuesDocsUpdate(Sender: TObject);
    procedure actNomItemNotValuesDocsExecute(Sender: TObject);
    procedure actNomItemNotValuesDocsUpdate(Sender: TObject);
  private
    FMasterSavePoint: Integer;
    function GetValueType: Integer;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure DoApplyUpdates; override;
    procedure DoCancelUpdates; override;
  public
    procedure Initialize; override;
    procedure Finalize; override;
  end;

implementation

uses
  dMain, uTreeNodeParams, uUtils, StrUtils, uClientUtils, uDocUtils;

{$R *.dfm}

procedure TfmParamProductFilterParamEdit.actFormUpdate(Sender: TObject);
var
  ValueType: Integer;
begin
  inherited;

  ValueType:= GetValueType;
  pnlGrid.Visible:= (ValueType in [ptFloat, ptString]);
  pnlParamNomValues.Visible:= (ValueType = ptNom);

  grdData.Columns[0].Visible:= (ValueType = ptFloat);
  grdData.Columns[1].Visible:= (ValueType = ptFloat);
  grdData.Columns[2].Visible:= (ValueType = ptString);

  SetControlsReadOnly((EditMode = emReadOnly), [cbParam, grdData]);
end;

procedure TfmParamProductFilterParamEdit.OpenDataSets;
begin
  inherited OpenDataSets;
  cdsProductParams.Open;
  cdsNomItemNotValues.CreateDataSet;
  cdsNomItems.Open;
end;

procedure TfmParamProductFilterParamEdit.CloseDataSets;
begin
  cdsNomItems.Close;
  cdsNomItemNotValues.Close;
  cdsProductParams.Close;
  inherited CloseDataSets;
end;

function TfmParamProductFilterParamEdit.GetValueType: Integer;
begin
  if dsData.DataSet.FieldByName('VALUE_TYPE').IsNull then
    Result:= -1
  else
    Result:= dsData.DataSet.FieldByName('VALUE_TYPE').AsInteger;
end;

procedure TfmParamProductFilterParamEdit.Initialize;
begin
  FMasterSavePoint:= (dsData.DataSet as TAbmesClientDataSet).SavePoint;

  cdsGridData.OnNewRecord:= (dsData.DataSet.FieldByName('NODE_PARAM_VALUES') as TDataSetField).NestedDataSet.OnNewRecord;
  cdsGridData.DataSetField:= dsData.DataSet.FieldByName('NODE_PARAM_VALUES') as TDataSetField;

  frParamNomValues.SetDataSet(cdsGridData);

  inherited;

  if (EditMode <> emREadOnly) then
    CheckEditMode(dsData.DataSet);
end;

procedure TfmParamProductFilterParamEdit.DoApplyUpdates;
begin
  inherited;
  FMasterSavePoint:= (dsData.DataSet as TAbmesClientDataSet).SavePoint;
end;

procedure TfmParamProductFilterParamEdit.DoCancelUpdates;
begin
  inherited;
  (dsData.DataSet as TAbmesClientDataSet).SavePoint:= FMasterSavePoint;
end;

procedure TfmParamProductFilterParamEdit.Finalize;
begin
  cdsGridData.DataSetField:= nil;
  inherited;
end;

procedure TfmParamProductFilterParamEdit.FormCreate(Sender: TObject);
begin
  inherited;

  tlbNomItemValues.Parent:= frParamNomValues.pnlIncludedNavigator;
  tlbNomItemValues.Align:= alLeft;

  tlbNomItemNotValues.Parent:= frParamNomValues.pnlExcludedNavigator;
  tlbNomItemNotValues.Align:= alRight;
  tlbNomItemNotValues.Left:= 0;
end;

procedure TfmParamProductFilterParamEdit.actNomDocsExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, (Sender as TAction).ActionComponent as TControl,
    dotNom, dsData.DataSet, 'NOM_DOC_BRANCH_CODE', 'NOM_DOC_CODE');
end;

procedure TfmParamProductFilterParamEdit.actNomDocsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not dsData.DataSet.FieldByName('NOM_CODE').IsNull;
  (Sender as TAction).ImageIndex:= dsData.DataSet.FieldByName('NOM_HAS_DOC_ITEMS').AsInteger;
end;

procedure TfmParamProductFilterParamEdit.actNomItemNotValuesDocsExecute(
  Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, (Sender as TAction).ActionComponent as TControl,
    dotNomItem, cdsNomItemNotValues, 'VALUE_NOM_ITEM_DOC_BRANCH_CODE', 'VALUE_NOM_ITEM_DOC_CODE');
end;

procedure TfmParamProductFilterParamEdit.actNomItemNotValuesDocsUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsNomItemNotValues.IsEmpty;
  (Sender as TAction).ImageIndex:= cdsNomItemNotValuesVALUE_NOM_ITEM_HAS_DOC_ITEMS.AsInteger;
end;

procedure TfmParamProductFilterParamEdit.actNomItemValuesDocsExecute(
  Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, (Sender as TAction).ActionComponent as TControl,
    dotNomItem, cdsGridData, 'VALUE_NOM_ITEM_DOC_BRANCH_CODE', 'VALUE_NOM_ITEM_DOC_CODE');
end;

procedure TfmParamProductFilterParamEdit.actNomItemValuesDocsUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
  (Sender as TAction).ImageIndex:= cdsGridData.FieldByName('VALUE_NOM_ITEM_HAS_DOC_ITEMS').AsInteger;
end;

procedure TfmParamProductFilterParamEdit.cbParamChange(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dsData.DataSet));

  while not cdsGridData.IsEmpty do
    cdsGridData.Delete;

  cdsNomItems.Close;
  cdsNomItems.Open;
end;

procedure TfmParamProductFilterParamEdit.cdsNomItemsAfterOpen(
  DataSet: TDataSet);
begin
  inherited;

  cdsNomItemNotValues.EmptyDataSet;
  cdsNomItems.ForEach/
    cdsNomItemNotValues.SafeAppend/
      procedure begin
        cdsNomItemNotValuesVALUE_NOM_CODE.Assign(cdsNomItemsNOM_CODE);
        cdsNomItemNotValuesVALUE_NOM_ITEM_CODE.Assign(cdsNomItemsNOM_ITEM_CODE);
        cdsNomItemNotValuesVALUE_NOM_ITEM_NAME.Assign(cdsNomItemsNOM_ITEM_NAME);
        cdsNomItemNotValuesVALUE_NOM_ITEM_DESCRIPTION.Assign(cdsNomItemsNOM_ITEM_DESCRIPTION);
        cdsNomItemNotValuesVALUE_NOM_ITEM_DOC_CODE.Assign(cdsNomItemsDOC_CODE);
        cdsNomItemNotValuesVALUE_NOM_ITEM_DOC_BRANCH_CODE.Assign(cdsNomItemsDOC_BRANCH_CODE);
        cdsNomItemNotValuesVALUE_NOM_ITEM_HAS_DOC_ITEMS.Assign(cdsNomItemsHAS_DOC_ITEMS);
        cdsNomItemNotValuesVALUE_NOM_ITEM_DISPLAY_NAME.AsString:=
          GetParamValueDisplayName(cdsNoMItemNotValuesVALUE_NOM_ITEM_NAME, cdsNomItemNotValuesVALUE_NOM_ITEM_DESCRIPTION);
      end;

  cdsNomItemNotValues.Subtract(cdsGridData, 'VALUE_NOM_ITEM_CODE');
end;

procedure TfmParamProductFilterParamEdit.cdsNomItemsBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsNomItems.Params.ParamByName('NOM_CODE').AsInteger:= dsData.DataSet.FieldByName('NOM_CODE').AsInteger;
end;

procedure TfmParamProductFilterParamEdit.cdsProductParamsBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsProductParams.Params.ParamByName('PRODUCT_CODE').AsInteger:= dsData.DataSet.FieldByName('NODE_CODE').AsInteger;
end;

end.
