unit dNomWithParamsTree;

interface

uses
  Windows, Messages, SysUtils, Classes, Db, DBClient, Provider,
  AbmesSQLQuery, AbmesFields, dTree, dNomTree,
  AbmesClientDataSet, WideStrings, FMTBcd, SqlExpr, AbmesSQLConnection,
  JvStringHolder, DBXDevartOracle, uSmartLock, dPooledDataModule;

type
  TdmNomWithParamsTree = class(TdmNomTree)
    qryNodeParams: TAbmesSQLQuery;
    qryNodeParamsNODE_ID: TAbmesFloatField;
    qryNodeParamsNODE_PARAM_ID: TAbmesFloatField;
    qryNodeParamsNODE_PARAM_NAME: TAbmesWideStringField;
    qryNodeParamsVALUE_TYPE: TAbmesFloatField;
    qryNodeParamsNOM_CODE: TAbmesFloatField;
    qryNodeParamsVALUE_NOM_CODE: TAbmesFloatField;
    qryNodeParamsVALUE_NOM_ITEM_CODE: TAbmesFloatField;
    qryNodeParamsVALUE_FLOAT: TAbmesFloatField;
    qryNodeParamsVALUE_FLOAT_FORMAT: TAbmesWideStringField;
    qryNodeParamsVALUE_FLOAT_RANGE_START: TAbmesFloatField;
    qryNodeParamsVALUE_FLOAT_RANGE_END: TAbmesFloatField;
    qryNodeParamsVALUE_STRING: TAbmesWideStringField;
    qryNodeParamsABBREV: TAbmesWideStringField;
    qryNodeParamsPREFIX: TAbmesWideStringField;
    qryNodeParamsSUFFIX: TAbmesWideStringField;
    qryNodeParamsIS_REQUIRED: TAbmesFloatField;
    qryNodeParamsIS_PART_OF_NAME: TAbmesFloatField;
    qryNodeParamsIS_INHERITED: TAbmesFloatField;
    qryNodeParamsIS_VALUE_INHERITED: TAbmesFloatField;
    qryNodeParamsNOM_ITEM_NAME: TAbmesWideStringField;
    prvNodeParams: TDataSetProvider;
    qryMaxNodeParamID: TAbmesSQLQuery;
    qryMaxNodeParamIDMAX_NODE_PARAM_ID: TAbmesFloatField;
    qryMaxNodeID: TAbmesSQLQuery;
    qryMaxNodeIDMAX_NODE_ID: TAbmesFloatField;
    qryNodeParamsNODE_PARAM_ORDER_NO: TAbmesFloatField;
    qryCalcNodeChildrenNames: TAbmesSQLQuery;
    prvFilterNodeParams: TDataSetProvider;
    qryFilterNodeParams: TAbmesSQLQuery;
    qryFilterNodeParamsVALUE_TYPE: TAbmesFloatField;
    qryFilterNodeParamsNOM_CODE: TAbmesFloatField;
    qryFilterNodeParamsNOM_NAME: TAbmesWideStringField;
    qryFilterNodeParamsVALUE_NOM_CODE: TAbmesFloatField;
    qryFilterNodeParamsVALUE_NOM_ITEM_CODE: TAbmesFloatField;
    qryFilterNodeParamsVALUE_NOM_ITEM_NAME: TAbmesWideStringField;
    qryFilterNodeParamsVALUE_FLOAT: TAbmesFloatField;
    qryFilterNodeParamsVALUE_STRING: TAbmesWideStringField;
    qryFilterNodeParamsIS_READ_ONLY: TAbmesFloatField;
    qryFilterNodeParamsVALUE_FLOAT_MIN: TAbmesFloatField;
    qryFilterNodeParamsVALUE_FLOAT_MAX: TAbmesFloatField;
    qryFilterNodeParamsNODE_PARAM_CODE: TAbmesFloatField;
    qryFilterNodeParamsNODE_PARAM_NAME: TAbmesWideStringField;
    qryFilterNodeParamsNODE_PARAM_ORDER_NO: TAbmesFloatField;
    qryInsNodeParams: TAbmesSQLQuery;
    qryUpdNodeParams: TAbmesSQLQuery;
    qryDelNodeParams: TAbmesSQLQuery;
    qryNodeParamsIS_DEFINED: TAbmesFloatField;
    qryNodeParamsPARENT_IS_DEFINED: TAbmesFloatField;
    qryNodeChildrenCHANGE_DATE_TIME: TAbmesSQLTimeStampField;
    qryNodeParamsDOC_BRANCH_CODE: TAbmesFloatField;
    qryNodeParamsDOC_CODE: TAbmesFloatField;
    qryNodeParamsHAS_DOC_ITEMS: TAbmesFloatField;
    qryFilterNodeParamsDOC_BRANCH_CODE: TAbmesFloatField;
    qryFilterNodeParamsDOC_CODE: TAbmesFloatField;
    qryFilterNodeParamsHAS_DOC_ITEMS: TAbmesFloatField;
    qryFilterNodeParamsNOM_DOC_BRANCH_CODE: TAbmesFloatField;
    qryFilterNodeParamsNOM_DOC_CODE: TAbmesFloatField;
    qryFilterNodeParamsNOM_HAS_DOC_ITEMS: TAbmesFloatField;
    qryFilterNodeParamsVALUE_NOM_ITEM_DOC_BRANCH_CODE: TAbmesFloatField;
    qryFilterNodeParamsVALUE_NOM_ITEM_DOC_CODE: TAbmesFloatField;
    qryFilterNodeParamsVALUE_NOM_ITEM_HAS_DOC_ITEMS: TAbmesFloatField;
    qryShowNodeParamsIS_INHERITED: TAbmesFloatField;
    qryShowNodeParamsIS_DEFINED: TAbmesFloatField;
    qryPrintTreeChildrenNODE_PARAM_NAMES: TAbmesWideStringField;
    qryPrintTreeChildrenNODE_PARAM_VALUES: TAbmesWideStringField;
    cdsPrintTreeChildrenNODE_PARAM_NAMES: TAbmesWideStringField;
    cdsPrintTreeChildrenNODE_PARAM_VALUES: TAbmesWideStringField;
    qryPrintTreeNODE_PARAM_NAMES: TAbmesWideStringField;
    qryPrintTreeNODE_PARAM_VALUES: TAbmesWideStringField;
    qryNodeParamsNOM_ITEM_IS_NOT_PART_OF_NAME: TAbmesFloatField;
    qryNodeParamsIS_FOR_EXPORT: TAbmesFloatField;
    qryNodeParamsEXPORT_IDENTIFIER: TAbmesWideStringField;
    qryNodeParamsPARENT_IS_FOR_EXPORT: TAbmesFloatField;
    procedure prvNodeParamsUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
      var Response: TResolverResponse);
    procedure prvNodeParamsAfterUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure prvNodeParamsBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure prvNodeChildrenBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure qryFilterNodeParamsCalcFields(DataSet: TDataSet);
    procedure prvNodeChildrenBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryNodeChildrenBeforeProviderEndTransaction(
      DataSet: TDataSet; Commit: Boolean);
    procedure prvNodeChildrenAfterUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure prvNodeParamsBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
  private
    FSourceDS: TDataSet;
    FNodeID: Integer;
    FParamsDelta: Variant;
    FErrorMessage: string;
    procedure SetNodeParamKey(ADataSet: TCustomClientDataSet);
    procedure SetNodeKey(AClientDataSet: TCustomClientDataSet);
  protected
    function NodeIDFieldNamePrefix: string; virtual;
    property NodeID: Integer read FNodeID;
  end;

type
  IdmNomWithParamsTreeProxy = interface(IdmNomTreeProxy)
  end;

type
  TdmNomWithParamsTreeProxy = class abstract(TdmNomTreeProxy, IdmNomWithParamsTreeProxy)
  strict private
    function GetLockedInstance: ISmartLock<TdmNomWithParamsTree>;
  strict protected
    property LockedInstance: ISmartLock<TdmNomWithParamsTree> read GetLockedInstance;
  end;

implementation

uses
  uUtils, uSvrUtils, uTreeNodeParams, Variants, uTreeNodes;

{$R *.DFM}

{ TdmNomWithParamsTreeProxy }

function TdmNomWithParamsTreeProxy.GetLockedInstance: ISmartLock<TdmNomWithParamsTree>;
begin
  Result:= ISmartLock<TdmNomWithParamsTree>(inherited LockedInstance);
end;

{ TdmNomWithParamsTree }

procedure TdmNomWithParamsTree.prvNodeParamsBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
var
  FNewNode: Boolean;
begin
  inherited;

  FSourceDS:= SourceDS;

  FNewNode:= DeltaDS.GetOptionalParam('NEW_NODE');

  case UpdateKind of
    ukInsert:
      if not FNewNode then
        SetNodeParamKey(DeltaDS);
    ukModify:
      if FNewNode then
        UpdateKind:= ukInsert;
    ukDelete:
      if FNewNode then
        begin
          Applied:= True;
          Exit;
        end;
  end;   { case }

  if (UpdateKind = ukInsert) then
    DeltaDS.FieldByName('NODE_ID').NewValue:= FNodeID;

  if (UpdateKind <> ukDelete) then
    with DeltaDS do
      begin
        FieldByName(NodeIDFieldNamePrefix + '_CODE').NewValue:=
          GetFieldValue(FieldByName('NODE_ID'));
        FieldByName(NodeIDFieldNamePrefix + '_PARAM_CODE').NewValue:=
          GetFieldValue(FieldByName('NODE_PARAM_ID'));
        FieldByName(NodeIDFieldNamePrefix + '_PARAM_NAME').NewValue:=
          GetFieldValue(FieldByName('NODE_PARAM_NAME'));
        FieldByName(NodeIDFieldNamePrefix + '_PARAM_ORDER_NO').NewValue:=
          GetFieldValue(FieldByName('NODE_PARAM_ORDER_NO'));
      end;   { if, with }

  ExecUpdateQuery(UpdateKind, DeltaDS,
    qryInsNodeParams, qryUpdNodeParams, qryDelNodeParams,
    False);

  Applied:= True;
end;

procedure TdmNomWithParamsTree.prvNodeParamsAfterUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind);
begin
  inherited;
  ResetApplyRetryCounter;
end;

procedure TdmNomWithParamsTree.prvNodeParamsUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  inherited;

  if (FErrorMessage = '') then
    FErrorMessage:= E.Message;

  ApplyRetry(E, Response);
end;

procedure TdmNomWithParamsTree.SetNodeParamKey(ADataSet: TCustomClientDataSet);
begin
  with qryMaxNodeParamID do
    begin
      ParamByName('NODE_ID').AsInteger:=
        GetFieldValue(ADataSet.FieldByName('NODE_ID'));

      Open;
      try
        ADataSet.FieldByName('NODE_PARAM_ID').NewValue:=
          qryMaxNodeParamIDMAX_NODE_PARAM_ID.AsInteger + 1;
      finally
        Close;
      end;   { try }
    end;   { with }
end;

procedure TdmNomWithParamsTree.prvNodeChildrenBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
var
  RecChanged: Boolean;
begin
  inherited;

  RecChanged:=
    (not VarIsEmpty(DeltaDS.FieldByName('NODE_NAME').NewValue)) or
    (not VarIsEmpty(DeltaDS.FieldByName('NODE_NO').NewValue)) or
    RecordChanged(DeltaDS);

  if (SourceDS = qryNodeChildren) then
    begin
      if (UpdateKind = ukInsert) then
        SetNodeKey(DeltaDS);

      if (UpdateKind <> ukDelete) then
        with DeltaDS do
          begin
            if (UpdateKind = ukInsert) then
              begin
                FieldByName(NodeIDFieldNamePrefix + '_CODE').NewValue:=
                  GetFieldValue(FieldByName('NODE_ID'));
                FieldByName('PARENT_CODE').NewValue:=
                  GetFieldValue(FieldByName('PARENT_NODE_ID'));
              end;   { if }

            if RecChanged then
              begin
                FieldByName('NAME').NewValue:=
                  GetFieldValue(FieldByName('NODE_NAME'));
                FieldByName('CUSTOM_CODE').NewValue:=
                  GetFieldValue(FieldByName('NODE_NO'));
              end;
          end;   { if, with }
    end;   { if }

  if (UpdateKind = ukInsert) then
    begin
      DeltaDS.FieldByName('IS_GROUP').NewValue:=
        Ord(DeltaDS.FieldByName('NODE_TYPE').NewValue <> Ord(ntInstance));
    end;   { if }

  Applied:= not RecChanged;
end;

procedure TdmNomWithParamsTree.SetNodeKey(
  AClientDataSet: TCustomClientDataSet);
begin
  with qryMaxNodeID do
    begin
      Open;
      try
        AClientDataSet.FieldByName('NODE_ID').NewValue:=
          qryMaxNodeIDMAX_NODE_ID.Value + 1;
      finally
        Close;
      end;  { try }
    end;  { with }
end;

function TdmNomWithParamsTree.NodeIDFieldNamePrefix: string;
begin
  Result:= 'NODE';
end;

procedure TdmNomWithParamsTree.qryFilterNodeParamsCalcFields(
  DataSet: TDataSet);
var
  IsReadOnly: Boolean;
begin
  inherited;

  case qryFilterNodeParamsVALUE_TYPE.AsInteger of
    ptNom:
      IsReadOnly:= not qryFilterNodeParamsVALUE_NOM_ITEM_CODE.IsNull;
    ptFloat:
      IsReadOnly:= not qryFilterNodeParamsVALUE_FLOAT.IsNull;
    ptString:
      IsReadOnly:= not qryFilterNodeParamsVALUE_STRING.IsNull;
  else
    raise Exception.Create('Not processed tree node param type');
  end;   { case }

  qryFilterNodeParamsIS_READ_ONLY.Value:= Ord(IsReadOnly);
end;

procedure TdmNomWithParamsTree.prvNodeChildrenBeforeApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FParamsDelta:= OwnerData[0];
end;

procedure TdmNomWithParamsTree.qryNodeChildrenBeforeProviderEndTransaction(
  DataSet: TDataSet; Commit: Boolean);
var
  ErrorCount: Integer;
begin
  inherited;

  if Commit and not VarIsEmpty(FParamsDelta) then
    begin
      prvNodeParams.ApplyUpdates(FParamsDelta, 0, ErrorCount);

      if (ErrorCount > 0) then
        raise Exception.Create(FErrorMessage);

      if Commit then
        begin
          with qryCalcNodeChildrenNames do
            begin
              ParamByName('NODE_ID').AsInteger:= FNodeID;
              ExecSQL;
            end;   { with }
        end;   { if }
    end;
end;

procedure TdmNomWithParamsTree.prvNodeChildrenAfterUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind);
begin
  inherited;
  FNodeID:= GetFieldValue(DeltaDS.FieldByName('NODE_ID'));
end;

procedure TdmNomWithParamsTree.prvNodeParamsBeforeApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FErrorMessage:= '';
end;

end.
