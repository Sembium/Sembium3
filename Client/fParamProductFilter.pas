unit fParamProductFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fProductFilter, DB, ActnList, AbmesFields, DBClient,
  AbmesClientDataSet, Buttons, GridsEh, DBGridEh, AbmesDBGrid, ExtCtrls,
  StdCtrls, xChosenNodes, JvExControls, JvComponent, JvDBLookup,
  JvExStdCtrls, JvDBCombobox, AbmesSQLQuery, Grids, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, System.Actions, EhLibVCL,
  DBAxisGridsEh;

type
  TfrParamProductFilter = class(TfrProductFilter)
    actAddParam: TAction;
    actDelParam: TAction;
    actEditParam: TAction;
    pnlParams: TPanel;
    grdChosenNodeParams: TAbmesDBGrid;
    pnlParamsButtons: TPanel;
    btnAddParam: TSpeedButton;
    btnDelParam: TSpeedButton;
    btnEditParam: TSpeedButton;
    dsChosenNodeParams: TDataSource;
    lblUsedBy: TLabel;
    lblProvidedBy: TLabel;
    lblProductOrigin: TLabel;
    cbProductOrigin: TJvDBLookupCombo;
    cdsChosenNodesParamsUSED_BY_CODE: TAbmesFloatField;
    cdsChosenNodesParamsPROVIDED_BY_CODE: TAbmesFloatField;
    cdsChosenNodesParamsPRODUCT_ORIGIN_CODE: TAbmesFloatField;
    cdsProductOrigins: TAbmesClientDataSet;
    cdsProductOriginsPRODUCT_ORIGIN_CODE: TAbmesFloatField;
    cdsProductOriginsPRODUCT_ORIGIN_NAME: TAbmesWideStringField;
    cdsProductOriginsPRODUCT_ORIGIN_ABBREV: TAbmesWideStringField;
    dsProductOrigins: TDataSource;
    cbProvidedBy: TJvDBLookupCombo;
    cbUsedBy: TJvDBLookupCombo;
    cdsUsedBy: TAbmesClientDataSet;
    cdsProvidedBy: TAbmesClientDataSet;
    dsUsedBy: TDataSource;
    dsProvidedBy: TDataSource;
    cdsUsedByCODE: TAbmesFloatField;
    cdsUsedByABBREV: TAbmesWideStringField;
    cdsUsedByNAME: TAbmesWideStringField;
    cdsProvidedByCODE: TAbmesFloatField;
    cdsProvidedByABBREV: TAbmesWideStringField;
    cdsProvidedByNAME: TAbmesWideStringField;
    cbCommonStatuses: TJvDBLookupCombo;
    cdsCommonStatuses: TAbmesClientDataSet;
    dsCommonStatuses: TDataSource;
    cdsCommonStatusesCOMMON_STATUS_CODE: TAbmesFloatField;
    cdsCommonStatusesCOMMON_STATUS_NAME: TAbmesWideStringField;
    cdsChosenNodesParamsCOMMON_STATUS_CODE: TAbmesFloatField;
    lblCommonStatus: TLabel;
    cdsCommonStatusesCOMMON_STATUS_ABBREV: TAbmesWideStringField;
    cbIsActive: TJvDBLookupCombo;
    lblIsActive: TLabel;
    cdsIsActive: TAbmesClientDataSet;
    dsIsActive: TDataSource;
    cdsIsActiveCODE: TAbmesFloatField;
    cdsIsActiveABBREV: TAbmesWideStringField;
    cdsIsActiveNAME: TAbmesWideStringField;
    cdsChosenNodesParamsACTIVE_CODE: TAbmesFloatField;
    procedure cdsChosenNodesNODE_CODEChange(Sender: TField);
    procedure actAddParamUpdate(Sender: TObject);
    procedure actDelParamUpdate(Sender: TObject);
    procedure actEditParamUpdate(Sender: TObject);
    procedure actAddParamExecute(Sender: TObject);
    procedure actDelParamExecute(Sender: TObject);
    procedure actEditParamExecute(Sender: TObject);
    procedure grdChosenNodeParamsDblClick(Sender: TObject);
    procedure cdsChosenNodeParamsNewRecord(DataSet: TDataSet);
    procedure cdsChosenNodeParamsAfterCancel(DataSet: TDataSet);
    procedure actFrameUpdate(Sender: TObject);
    procedure cdsChosenNodeParamValuesNewRecord(DataSet: TDataSet);
    procedure cdsChosenNodeParamsBeforePost(DataSet: TDataSet);
    procedure cdsChosenNodeParamsNODE_PARAM_CODEChange(Sender: TField);
    procedure cdsChosenNodesBeforeDelete(DataSet: TDataSet);
    procedure cdsChosenNodeParamsBeforeDelete(DataSet: TDataSet);
    procedure cdsChosenNodesAfterOpen(DataSet: TDataSet);
    procedure cdsChosenNodeParamValuesBeforeDelete(DataSet: TDataSet);
  private
    FOriginalParamsPanelHeight: Integer;
    FChosenNodeParamsVisible: Boolean;
    FMaxNodeParamValueCode: Integer;
    function ParamsDataSet: TAbmesClientDataSet;
    function ParamValuesDataSet: TAbmesClientDataSet;
    procedure CalcMaxNodeParamValueCode;
    function GetNewNodeParamValueCode: Integer;
    procedure HookParamValuesDataSetEvents;
  protected
    function GetAddParamEnabled: Boolean; virtual;
    function GetDelParamEnabled: Boolean; virtual;
    function GetEditParamEnabled: Boolean; virtual;

    procedure ReadFromDataSets(XMLChosenNode: IXMLChosenNode); override;
    procedure WriteToDataSets(XMLChosenNode: IXMLChosenNode); override;

    procedure EnableDataSetControls; override;
    procedure DisableDataSetControls; override;

    procedure FillRememberChosenNodes(SkipCurrentNode: Boolean); override;
  public
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure Initialize; override;
    constructor Create(AOwner: TComponent); override;

    property ChosenNodeParamsVisible: Boolean read FChosenNodeParamsVisible write FChosenNodeParamsVisible default True;
  end;

implementation

{$R *.dfm}

uses
  dMain, VDBConsts, AbmesDialogs, uUtils, uClientUtils, fProductEdit,
  uClientTypes, uTreeNodes, uTreeNodeParams, fTreeSelectForm,
  uTreeClientUtils, fParamProductFilterParamEdit, XMLDoc, XMLIntf, uProducts,
  uProductClientUtils, uXMLEnumerators, uChosenNodes, StrUtils, Math, fEditForm,
  Menus, uScalingUtils;

resourcestring
  SProvidedByEnvProductionName = 'Вътрешно обезпечаване на Елементи на Среда';
  SProvidedByEnvProductionAbbrev = 'ВОЕлС';
  SProvidedBySaleProductionName = 'Вътрешно обезпечаване на Продажби';
  SProvidedBySaleProductionAbbrev = 'ВОПрд';
  SDeliveriesName = 'Доставки';
  SDeliveriesAbbrev = 'Дст';
  SEnvProductionName = 'Вътрешно обезпечаване на Елементи на Среда';
  SEnvProductionAbbrev = 'ВОЕлС';
  SSaleProductionName = 'Вътрешно обезпечаване на Продажби';
  SSaleProductionAbbrev = 'ВОПрд';
  SSales = 'Продажби';
  SSalesAbbrev = 'Прд';
  SActiveAbbrev = 'Акт';
  SActiveName = 'Активен';
  SNotActiveAbbrev = 'Неакт';
  SNotActiveName = 'Неактивен';
  SExistingParam = 'Вече има добавен такъв Присъщ параметър';
  SNodeNameDisplayLabel = 'id логически';
  SNodeNoDisplayLabel = 'id цифров';
  SNodeParamNameDisplayLabel = 'Присъщ параметър';
  SNodeParamValueDisplayLabel = 'Стойност';

{ TfrParamProductFilter }

function TfrParamProductFilter.GetAddParamEnabled: Boolean;
begin
  Result:=
    ((not ReadOnly) or BaseFilterEnabled) and
    (not ParamsDataSet.ReadOnly) and
    (not (cdsChosenNodes.BOF and cdsChosenNodes.EOF));
end;

function TfrParamProductFilter.GetDelParamEnabled: Boolean;
begin
  Result:=
    not (ParamsDataSet.BOF and ParamsDataSet.EOF) and
    ((not ReadOnly) or BaseFilterEnabled) and
    (not ParamsDataSet.ReadOnly) and
    (not (cdsChosenNodes.BOF and cdsChosenNodes.EOF));
end;

function TfrParamProductFilter.GetEditParamEnabled: Boolean;
begin
  Result:=
    (not (ParamsDataSet.BOF and ParamsDataSet.Eof)) and
    (not (cdsChosenNodes.BOF and cdsChosenNodes.EOF));
end;

function TfrParamProductFilter.GetNewNodeParamValueCode: Integer;
begin
  Inc(FMaxNodeParamValueCode);
  Result:= FMaxNodeParamValueCode;
end;

procedure TfrParamProductFilter.CalcMaxNodeParamValueCode;
var
  MaxNodeParamValueCode: Integer;
begin
  MaxNodeParamValueCode:= 0;
  ParamValuesDataSet.TempDisableControls/
    ParamValuesDataSet.PreserveBookmark/
      ParamValuesDataSet.ForEach/
        procedure begin
          MaxNodeParamValueCode:=
            Max(MaxNodeParamValueCode, ParamValuesDataSet.FieldByName('NODE_PARAM_VALUE_CODE').AsInteger);
        end;

  FMaxNodeParamValueCode:= MaxNodeParamValueCode;
end;

procedure TfrParamProductFilter.actAddParamUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetAddParamEnabled;
end;

procedure TfrParamProductFilter.actDelParamUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetDelParamEnabled;
end;

procedure TfrParamProductFilter.actEditParamUpdate(Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:= GetEditParamEnabled;

  if ReadOnly then
    (Sender as TAction).Hint:= SReadOnlyCaption + cDialogSuffix
  else
    (Sender as TAction).Hint:= SEditCaption + cDialogSuffix;
end;

procedure TfrParamProductFilter.actFrameUpdate(Sender: TObject);

  procedure SetComboReadOnly(ACombo: TJvDBLookupCombo);
  begin
    SetControlReadOnly(ReadOnly and not BaseFilterEnabled, ACombo);
  end;

begin
  inherited;
  SetComboReadOnly(cbIsActive);

  cbIsActive.Visible:= ChosenNodeParamsVisible;
  lblIsActive.Visible:= ChosenNodeParamsVisible;

  SetComboReadOnly(cbUsedBy);
  cbUsedBy.Visible:= (ProductClass in [pcNormal, pcFinancial]) and ChosenNodeParamsVisible ;
  lblUsedBy.Visible:= (ProductClass in [pcNormal, pcFinancial]) and ChosenNodeParamsVisible;

  SetComboReadOnly(cbProvidedBy);
  cbProvidedBy.Visible:= (ProductClass in [pcNormal, pcFinancial]) and ChosenNodeParamsVisible;
  lblProvidedBy.Visible:= (ProductClass in [pcNormal, pcFinancial]) and ChosenNodeParamsVisible;

  SetComboReadOnly(cbProductOrigin);
  cbProductOrigin.Visible:= (ProductClass in [pcNormal, pcFinancial]) and ChosenNodeParamsVisible;
  lblProductOrigin.Visible:= (ProductClass in [pcNormal, pcFinancial]) and ChosenNodeParamsVisible;

  SetComboReadOnly(cbCommonStatuses);
  cbCommonStatuses.Visible:= (ProductClass in [pcNormal, pcFinancial]) and ChosenNodeParamsVisible;
  lblCommonStatus.Visible:= (ProductClass in [pcNormal, pcFinancial]) and ChosenNodeParamsVisible;

  if not ChosenNodeParamsVisible then
    pnlParams.Height:= Height - pnlParams.Top - ScalePixels(8);
end;

procedure TfrParamProductFilter.actAddParamExecute(Sender: TObject);
begin
  inherited;

  HookParamValuesDataSetEvents;

  CalcMaxNodeParamValueCode;
  cdsChosenNodes.SafeEdit/
    procedure begin
      if not TfmParamProductFilterParamEdit.ShowForm(nil, ParamsDataSet, emInsert, doNone) then
        Abort;
    end;

  ForceUpdateRecord;
end;

procedure TfrParamProductFilter.actDelParamExecute(Sender: TObject);
begin
  inherited;
  if not ConfirmRecordDelete then
    Exit;

  ParamsDataSet.Delete;
  ForceUpdateRecord;
end;

procedure TfrParamProductFilter.actEditParamExecute(Sender: TObject);
var
  em: TEditMode;
begin
  inherited;

  if ReadOnly and not BaseFilterEnabled then
    em:= emReadOnly
  else
    em:= emEdit;

  HookParamValuesDataSetEvents;

  CalcMaxNodeParamValueCode;
  cdsChosenNodes.SafeEdit/
    procedure begin
      if not TfmParamProductFilterParamEdit.ShowForm(nil, ParamsDataSet, em, doNone) then
        Abort;
    end;

  ForceUpdateRecord;
end;

procedure TfrParamProductFilter.cdsChosenNodeParamsNewRecord(DataSet: TDataSet);
begin
  inherited;
  ParamsDataSet.FieldByName('NODE_CODE').AsInteger:=
    cdsChosenNodes.FieldByName('NODE_CODE').AsInteger;
end;

procedure TfrParamProductFilter.cdsChosenNodeParamsNODE_PARAM_CODEChange(
  Sender: TField);
var
  NodeParamName, Abbrev: string;
  NodeParamOrderNo, ValueType, NomCode: Integer;
  DocBranchCode: Integer;
  DocCode: Integer;
  HasDocItems: Boolean;
  NomDocBranchCode: Integer;
  NomDocCode: Integer;
  NomHasDocItems: Boolean;
begin
  inherited;

  dmMain.SvrProductsTree.GetProductParam(
    ParamsDataSet.FieldByName('NODE_CODE').AsInteger,
    ParamsDataSet.FieldByName('NODE_PARAM_CODE').AsInteger,
    NodeParamName,
    Abbrev,
    NodeParamOrderNo,
    ValueType,
    NomCode,
    DocBranchCode,
    DocCode,
    HasDocItems,
    NomDocBranchCode,
    NomDocCode,
    NomHasDocItems);

  ParamsDataSet.FieldByName('VALUE_TYPE').AsInteger:= ValueType;
  ParamsDataSet.FieldByName('NOM_CODE').AsVarInteger:= NomCode;
  ParamsDataSet.FieldByName('DOC_BRANCH_CODE').AsVarInteger:= DocBranchCode;
  ParamsDataSet.FieldByName('DOC_CODE').AsVarInteger:= DocCode;
  ParamsDataSet.FieldByName('HAS_DOC_ITEMS').AsInteger:= Ord(HasDocItems);
  ParamsDataSet.FieldByName('NOM_DOC_BRANCH_CODE').AsVarInteger:= NomDocBranchCode;
  ParamsDataSet.FieldByName('NOM_DOC_CODE').AsVarInteger:= NomDocCode;
  ParamsDataSet.FieldByName('NOM_HAS_DOC_ITEMS').AsInteger:= Ord(NomHasDocItems);
end;

procedure TfrParamProductFilter.cdsChosenNodeParamValuesNewRecord(
  DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('NODE_CODE').AsInteger:= ParamsDataSet.FieldByName('NODE_CODE').AsInteger;
  DataSet.FieldByName('NODE_PARAM_CODE').AsInteger:= ParamsDataSet.FieldByName('NODE_PARAM_CODE').AsInteger;
  DataSet.FieldByName('NODE_PARAM_VALUE_CODE').AsInteger:= GetNewNodeParamValueCode;

  DataSet.FieldByName('VALUE_NOM_CODE').AsVariant:= ParamsDataSet.FieldByName('NOM_CODE').AsVariant;
end;

procedure TfrParamProductFilter.grdChosenNodeParamsDblClick(Sender: TObject);
begin
  inherited;
  if not actEditParam.Execute then
    actAddParam.Execute;
end;

procedure TfrParamProductFilter.HookParamValuesDataSetEvents;
begin
  ParamValuesDataSet.OnNewRecord:= cdsChosenNodeParamValuesNewRecord;
  ParamValuesDataSet.BeforeDelete:= cdsChosenNodeParamValuesBeforeDelete;
end;

procedure TfrParamProductFilter.Initialize;
begin
  inherited;
  dsChosenNodeParams.DataSet:= ParamsDataSet;
  FOriginalParamsPanelHeight:= pnlParams.Height;
end;

procedure TfrParamProductFilter.cdsChosenNodeParamsAfterCancel(DataSet: TDataSet);
begin
  inherited;
  cdsChosenNodes.Cancel;
end;

procedure TfrParamProductFilter.cdsChosenNodeParamsBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  while not ParamValuesDataSet.IsEmpty do
    ParamValuesDataSet.Delete;
end;

procedure TfrParamProductFilter.cdsChosenNodeParamsBeforePost(
  DataSet: TDataSet);
var
  NodeParamName, Abbrev: string;
  NodeParamOrderNo, ValueType, NomCode: Integer;
  DocBranchCode: Integer;
  DocCode: Integer;
  HasDocItems: Boolean;
  NomDocBranchCode: Integer;
  NomDocCode: Integer;
  NomHasDocItems: Boolean;
begin
  inherited;

  if not ParamsDataSet.FieldByName('NODE_PARAM_CODE').IsNull then
    begin
      dmMain.SvrProductsTree.GetProductParam(
        ParamsDataSet.FieldByName('NODE_CODE').AsInteger,
        ParamsDataSet.FieldByName('NODE_PARAM_CODE').AsInteger,
        NodeParamName,
        Abbrev,
        NodeParamOrderNo,
        ValueType,
        NomCode,
        DocBranchCode,
        DocCode,
        HasDocItems,
        NomDocBranchCode,
        NomDocCode,
        NomHasDocItems);

      ParamsDataSet.FieldByName('NODE_PARAM_NAME').AsString:= NodeParamName;
      ParamsDataSet.FieldByName('ABBREV').AsString:= Abbrev;
      ParamsDataSet.FieldByName('NODE_PARAM_ORDER_NO').AsInteger:= NodeParamOrderNo;
      ParamsDataSet.FieldByName('VALUE_TYPE').AsInteger:= ValueType;
      ParamsDataSet.FieldByName('NOM_CODE').AsVarInteger:= NomCode;
      ParamsDataSet.FieldByName('DOC_BRANCH_CODE').AsVarInteger:= DocBranchCode;
      ParamsDataSet.FieldByName('DOC_CODE').AsVarInteger:= DocCode;
      ParamsDataSet.FieldByName('HAS_DOC_ITEMS').AsInteger:= Ord(HasDocItems);
      ParamsDataSet.FieldByName('NOM_DOC_BRANCH_CODE').AsVarInteger:= NomDocBranchCode;
      ParamsDataSet.FieldByName('NOM_DOC_CODE').AsVarInteger:= NomDocCode;
      ParamsDataSet.FieldByName('NOM_HAS_DOC_ITEMS').AsInteger:= Ord(NomHasDocItems);
      ParamsDataSet.FieldByName('DISPLAY_VALUE').AsString:=
        GetParamDisplayValue(ParamValuesDataSet, ValueType);
    end;  { if }
end;

procedure TfrParamProductFilter.cdsChosenNodesAfterOpen(DataSet: TDataSet);
var
  id: TIndexDef;
begin
  inherited;
  cdsChosenNodes.FieldByName('NODE_CODE').DisplayLabel:= ProductClassCommonNames[ProductClass];
  cdsChosenNodes.FieldByName('NODE_CODE').OnChange:= cdsChosenNodesNODE_CODEChange;
  cdsChosenNodes.FieldByName('NODE_NAME').DisplayLabel:= SNodeNameDisplayLabel;
  cdsChosenNodes.FieldByName('NODE_NO').DisplayLabel:= SNodeNoDisplayLabel;

  ParamsDataSet.OnNewRecord:= cdsChosenNodeParamsNewRecord;
  ParamsDataSet.BeforePost:= cdsChosenNodeParamsBeforePost;
  ParamsDataSet.BeforeDelete:= cdsChosenNodeParamsBeforeDelete;
  ParamsDataSet.FieldByName('NODE_PARAM_CODE').Required:= True;
  ParamsDataSet.FieldByName('NODE_PARAM_CODE').DisplayLabel:= SNodeParamNameDisplayLabel;
  ParamsDataSet.FieldByName('NODE_PARAM_CODE').OnChange:= cdsChosenNodeParamsNODE_PARAM_CODEChange;
  ParamsDataSet.FieldByName('NODE_PARAM_NAME').DisplayLabel:= SNodeParamNameDisplayLabel;
  ParamsDataSet.FieldByName('DISPLAY_VALUE').DisplayLabel:= SNodeParamValueDisplayLabel;

  grdChosenNodes.Columns[0].Title.Caption:= SNodeNameDisplayLabel;
  grdChosenNodes.Columns[1].Title.Caption:= SNodeNoDisplayLabel;

  grdChosenNodeParams.Columns[0].Title.Caption:= SNodeParamNameDisplayLabel;
  grdChosenNodeParams.Columns[1].Title.Caption:= SNodeParamValueDisplayLabel;

  id:= ParamsDataSet.IndexDefs.AddIndexDef;
  id.Fields:= 'NODE_CODE;NODE_PARAM_CODE';
  id.Name:= 'idxDefault';
  id.Options:= id.Options + [ixUnique];
  ParamsDataSet.IndexName:= 'idxDefault';
  ParamsDataSet.KeyViolationErrorMessage:= SExistingParam;

  HookParamValuesDataSetEvents;
end;

procedure TfrParamProductFilter.cdsChosenNodesBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  while not ParamsDataSet.IsEmpty do
    ParamsDataSet.Delete;
end;

procedure TfrParamProductFilter.cdsChosenNodesNODE_CODEChange(
  Sender: TField);
begin
  inherited;
  ParamsDataSet.First;
  while not ParamsDataSet.IsEmpty do
    ParamsDataSet.Delete;
end;

procedure TfrParamProductFilter.cdsChosenNodeParamValuesBeforeDelete(
  DataSet: TDataSet);
begin
  ParamsDataSet.Edit;
end;

procedure TfrParamProductFilter.EnableDataSetControls;
begin
  inherited;
  ParamsDataSet.EnableControls;
end;

procedure TfrParamProductFilter.DisableDataSetControls;
begin
  ParamsDataSet.DisableControls;
  inherited;
end;

procedure TfrParamProductFilter.ReadFromDataSets(XMLChosenNode: IXMLChosenNode);
var
  XMLNodeParam: IXMLNodeParam;
  XMLNodeParamValue: IXMLNodeParamValue;
begin
  inherited;
  ParamsDataSet.TempDisableControls/
    ParamsDataSet.PreserveBookmark/
      ParamsDataSet.ForEach/
        procedure begin
          XMLNodeParam:= XMLChosenNode.NodeParams.Add;
          XMLNodeParam.NodeParamCode:= ParamsDataSet.FieldByName('NODE_PARAM_CODE').AsVariant;

          ParamValuesDataSet.TempDisableControls/
            ParamValuesDataSet.PreserveBookmark/
              ParamValuesDataSet.ForEach/
                procedure begin
                  XMLNodeParamValue:= XMLNodeParam.NodeParamValues.Add;

                  XMLNodeParamValue.NodeParamValueCode:= ParamValuesDataSet.FieldByName('NODE_PARAM_VALUE_CODE').AsVariant;

                  if not ParamValuesDataSet.FieldByName('VALUE_NOM_CODE').IsNull then
                    XMLNodeParamValue.ValueNomCode:= ParamValuesDataSet.FieldByName('VALUE_NOM_CODE').AsVariant;

                  if not ParamValuesDataSet.FieldByName('VALUE_NOM_ITEM_CODE').IsNull then
                    XMLNodeParamValue.ValueNomItemCode:= ParamValuesDataSet.FieldByName('VALUE_NOM_ITEM_CODE').AsVariant;

                  if not ParamValuesDataSet.FieldByName('VALUE_FLOAT_MIN').IsNull then
                    XMLNodeParamValue.ValueFloatMin:= ParamValuesDataSet.FieldByName('VALUE_FLOAT_MIN').AsVariant;

                  if not ParamValuesDataSet.FieldByName('VALUE_FLOAT_MAX').IsNull then
                    XMLNodeParamValue.ValueFloatMax:= ParamValuesDataSet.FieldByName('VALUE_FLOAT_MAX').AsVariant;

                  if not ParamValuesDataSet.FieldByName('VALUE_STRING').IsNull then
                    XMLNodeParamValue.ValueString:= ParamValuesDataSet.FieldByName('VALUE_STRING').AsVariant;
                end;
            end;
end;

procedure TfrParamProductFilter.WriteToDataSets(XMLChosenNode: IXMLChosenNode);
var
  XMLNodeParam: IXMLNodeParam;
  NodeParamName, Abbrev: string;
  NodeParamOrderNo, ValueType, NomCode: Integer;
  NomItemName, NomItemDescription: string;
  DocBranchCode: Integer;
  DocCode: Integer;
  HasDocItems: Boolean;
  NomDocBranchCode: Integer;
  NomDocCode: Integer;
  NomHasDocItems: Boolean;
begin
  inherited;

  Assert(not VarIsNullOrEmpty(XMLChosenNode.NodeCode));

  for XMLNodeParam in All(XMLChosenNode.NodeParams) do
    begin
      Assert(not VarIsNullOrEmpty(XMLNodeParam.NodeParamCode));

      dmMain.SvrProductsTree.GetProductParam(
        XMLChosenNode.NodeCode,
        XMLNodeParam.NodeParamCode,
        NodeParamName,
        Abbrev,
        NodeParamOrderNo,
        ValueType,
        NomCode,
        DocBranchCode,
        DocCode,
        HasDocItems,
        NomDocBranchCode,
        NomDocCode,
        NomHasDocItems);

      ParamsDataSet.SafeAppend/
        procedure
        var
          XMLNodeParamValue: IXMLNodeParamValue;
        begin
          ParamsDataSet.FieldByName('NODE_CODE').AsVariant:= XMLChosenNode.NodeCode;
          ParamsDataSet.FieldByName('NODE_PARAM_CODE').AsVariant:= XMLNodeParam.NodeParamCode;

          ParamsDataSet.FieldByName('NODE_PARAM_NAME').AsString:= NodeParamName;
          ParamsDataSet.FieldByName('NODE_PARAM_ORDER_NO').AsInteger:= NodeParamOrderNo;
          ParamsDataSet.FieldByName('VALUE_TYPE').AsInteger:= ValueType;
          ParamsDataSet.FieldByName('ABBREV').AsString:= Abbrev;

          ParamsDataSet.FieldByName('NOM_CODE').AsVarInteger:= NomCode;

          ParamsDataSet.FieldByName('DOC_BRANCH_CODE').AsVarInteger:= DocBranchCode;
          ParamsDataSet.FieldByName('DOC_CODE').AsVarInteger:= DocCode;
          ParamsDataSet.FieldByName('HAS_DOC_ITEMS').AsInteger:= Ord(HasDocItems);

          ParamsDataSet.FieldByName('NOM_DOC_BRANCH_CODE').AsVarInteger:= NomDocBranchCode;
          ParamsDataSet.FieldByName('NOM_DOC_CODE').AsVarInteger:= NomDocCode;
          ParamsDataSet.FieldByName('NOM_HAS_DOC_ITEMS').AsInteger:= Ord(NomHasDocItems);

          for XMLNodeParamValue in All(XMLNodeParam.NodeParamValues) do
            begin
              ParamValuesDataSet.SafeAppend/
                procedure
                var
                  DocBranchCode: Integer;
                  DocCode: Integer;
                  HasDocItems: Boolean;
                begin
                  ParamValuesDataSet.FieldByName('NODE_CODE').AsVariant:= XMLChosenNode.NodeCode;
                  ParamValuesDataSet.FieldByName('NODE_PARAM_CODE').AsVariant:= XMLNodeParam.NodeParamCode;
                  ParamValuesDataSet.FieldByName('NODE_PARAM_VALUE_CODE').AsVariant:= XMLNodeParamValue.NodeParamValueCode;
                  ParamValuesDataSet.FieldByName('VALUE_NOM_CODE').AsVariant:= XMLNodeParamValue.ValueNomCode;
                  ParamValuesDataSet.FieldByName('VALUE_NOM_ITEM_CODE').AsVariant:= XMLNodeParamValue.ValueNomItemCode;
                  ParamValuesDataSet.FieldByName('VALUE_FLOAT_MIN').AsVariant:= XMLNodeParamValue.ValueFloatMin;
                  ParamValuesDataSet.FieldByName('VALUE_FLOAT_MAX').AsVariant:= XMLNodeParamValue.ValueFloatMax;
                  ParamValuesDataSet.FieldByName('VALUE_STRING').AsVariant:= XMLNodeParamValue.ValueString;

                  if VarIsNullOrEmpty(XMLNodeParamValue.ValueNomCode) or
                     VarIsNullOrEmpty(XMLNodeParamValue.ValueNomItemCode) then
                    begin
                      ParamValuesDataSet.FieldByName('VALUE_NOM_ITEM_NAME').Clear;
                      ParamValuesDataSet.FieldByName('VALUE_NOM_ITEM_DESCRIPTION').Clear;
                      ParamValuesDataSet.FieldByName('VALUE_NOM_ITEM_DISPLAY_NAME').Clear;
                    end
                  else
                    begin
                      dmMain.SvrCommon.GetNomItemData(
                        XMLNodeParamValue.ValueNomCode,
                        XMLNodeParamValue.ValueNomItemCode,
                        NomItemName,
                        NomItemDescription,
                        DocBranchCode,
                        DocCode,
                        HasDocItems);

                      ParamValuesDataSet.FieldByName('VALUE_NOM_ITEM_NAME').AsString:= NomItemName;
                      ParamValuesDataSet.FieldByName('VALUE_NOM_ITEM_DESCRIPTION').AsString:= NomItemDescription;
                      ParamValuesDataSet.FieldByName('VALUE_NOM_ITEM_DISPLAY_NAME').AsString:=
                        GetParamValueDisplayName(
                          ParamValuesDataSet.FieldByName('VALUE_NOM_ITEM_NAME') as TAbmesWideStringField,
                          ParamValuesDataSet.FieldByName('VALUE_NOM_ITEM_DESCRIPTION') as TAbmesWideStringField);
                      ParamValuesDataSet.FieldByName('VALUE_NOM_ITEM_DOC_BRANCH_CODE').AsInteger:= DocBranchCode;
                      ParamValuesDataSet.FieldByName('VALUE_NOM_ITEM_DOC_CODE').AsInteger:= DocCode;
                      ParamValuesDataSet.FieldByName('VALUE_NOM_ITEM_HAS_DOC_ITEMS').AsInteger:= Ord(HasDocItems);
                    end;
                end;
            end;  { for }

          ParamsDataSet.FieldByName('DISPLAY_VALUE').AsString:=
            GetParamDisplayValue(ParamValuesDataSet, ValueType);
        end;
    end;  { for }
end;

procedure TfrParamProductFilter.FillRememberChosenNodes(SkipCurrentNode: Boolean);
begin
  ParamsDataSet.PreserveBookmark/
    procedure begin
      inherited;
    end;
end;

procedure TfrParamProductFilter.CloseDataSets;
begin
  cdsIsActive.Close;
  cdsProvidedBy.Close;
  cdsUsedBy.Close;
  cdsProductOrigins.Close;
  cdsCommonStatuses.Close;
  inherited;
end;

constructor TfrParamProductFilter.Create(AOwner: TComponent);
begin
  inherited;
  FChosenNodeParamsVisible:= True;
end;

procedure TfrParamProductFilter.OpenDataSets;
type
  TNomItem = record
    Code: Integer;
    Abbrev: string;
    Name: string;
  end;

const
  cdsUsedByValues: array [1..3] of TNomItem = (
    (Code: pubcSales; Abbrev: SSalesAbbrev; Name: SSales),
    (Code: pubcSaleProduction; Abbrev: SSaleProductionAbbrev; Name: SSaleProductionName),
    (Code: pubcEnvProduction; Abbrev: SEnvProductionAbbrev; Name: SEnvProductionName)
  );

const
  cdsProvidedByValues: array [1..3] of TNomItem = (
    (Code: ppbcDeliveries; Abbrev: SDeliveriesAbbrev; Name: SDeliveriesName),
    (Code: ppbcSaleProduction; Abbrev: SProvidedBySaleProductionAbbrev; Name: SProvidedBySaleProductionName),
    (Code: ppbcEnvProduction; Abbrev: SProvidedByEnvProductionAbbrev; Name: SProvidedByEnvProductionName)
  );

const
  cdsCommonStatusesValues: array[1..4] of TNomItem = (
    (Code: cscSingle; Abbrev: SSingleAbbrev; Name: SSingleName),
    (Code: cscCommon; Abbrev: SCommonAbbrev; Name: SCommonName),
    (Code: cscJoined; Abbrev: SJoinedAbbrev; Name: SJoinedName),
    (Code: cscFilterThruCommon; Abbrev: SFilterThruCommonAbbrev; Name: SFilterThruCommonName)
  );

const
  cdsIsActiveValues: array[1..2] of TNomItem = (
    (Code: piacActive; Abbrev: SActiveAbbrev; Name: SActiveName),
    (Code: piacNotActive; Abbrev: SNotActiveAbbrev; Name: SNotActiveName)
  );

  procedure FillDataSetValues(ADataSet: TDataSet; AValues: array of TNomItem);
  var
    NomItem: TNomItem;
  begin
    for NomItem in AValues do
      ADataSet.AppendRecord([IntToVar(NomItem.Code), NomItem.Abbrev, NomItem.Name]);
  end;

begin
  inherited;

  cdsCommonStatuses.CreateDataSet;
  FillDataSetValues(cdsCommonStatuses, cdsCommonStatusesValues);

  cdsProductOrigins.Open;

  cdsUsedBy.CreateDataSet;
  FillDataSetValues(cdsUsedBy, cdsUsedByValues);

  cdsProvidedBy.CreateDataSet;
  FillDataSetValues(cdsProvidedBy, cdsProvidedByValues);

  cdsIsActive.CreateDataSet;
  FillDataSetValues(cdsIsActive, cdsIsActiveValues);
end;

function TfrParamProductFilter.ParamsDataSet: TAbmesClientDataSet;
begin
  Result:= (cdsChosenNodes.FieldByName('NODE_PARAMS') as TDataSetField).NestedDataSet as TAbmesClientDataSet;
end;

function TfrParamProductFilter.ParamValuesDataSet: TAbmesClientDataSet;
begin
  Result:= (ParamsDataSet.FieldByName('NODE_PARAM_VALUES') as TDataSetField).NestedDataSet as TAbmesClientDataSet;
end;

end.












