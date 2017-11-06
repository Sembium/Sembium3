unit fDeptFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fTreeNodeGridFilter, DB, AbmesFields, DBClient, AbmesClientDataSet,
  ActnList, Buttons, GridsEh, DBGridEh, AbmesDBGrid, ExtCtrls, uClientTypes, StdCtrls,
  JvDBCombobox, JvExStdCtrls, JvExControls, JvComponent, JvDBLookup,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, System.Actions,
  EhLibVCL, DBAxisGridsEh;

type
  TfrDeptFilter = class(TfrTreeNodeGridFilter)
    lblsExternal: TLabel;
    lblIsRecurrent: TLabel;
    lblIsActive: TLabel;
    cbIsExternal: TJvDBLookupCombo;
    cdsIsExternal: TAbmesClientDataSet;
    cdsIsExternalABBREV: TAbmesWideStringField;
    cdsIsExternalNAME: TAbmesWideStringField;
    dsIsExternal: TDataSource;
    cdsIsExternalVALUE: TAbmesFloatField;
    cbIsRecurrent: TJvDBLookupCombo;
    dsIsRecurrent: TDataSource;
    cdsIsRecurrent: TAbmesClientDataSet;
    cbIsRecurrentVALUE: TAbmesFloatField;
    cbIsRecurrentABBREV: TAbmesWideStringField;
    cbIsRecurrentNAME: TAbmesWideStringField;
    cbIsActive: TJvDBLookupCombo;
    dsIsActive: TDataSource;
    cdsIsActive: TAbmesClientDataSet;
    cdsIsActiveVALUE: TAbmesFloatField;
    cdsIsActiveABBREV: TAbmesWideStringField;
    cdsIsActiveNAME: TAbmesWideStringField;
    cdsChosenNodesParamsACTIVE: TAbmesFloatField;
    cdsChosenNodesParamsEXTERNAL: TAbmesFloatField;
    cdsChosenNodesParamsRECURRENT: TAbmesFloatField;
    cbStoreType: TJvDBLookupCombo;
    cdsChosenNodesParamsSTORE_TYPE_CODE: TAbmesFloatField;
    cdsStoreTypes: TAbmesClientDataSet;
    cdsStoreTypesSTORE_TYPE_CODE: TAbmesFloatField;
    cdsStoreTypesSTORE_TYPE_NAME: TAbmesWideStringField;
    cdsStoreTypesSTORE_TYPE_ABBREV: TAbmesWideStringField;
    dsStoreTypes: TDataSource;
    lblStoreType: TLabel;
    cdsChosenNodesParamsDEPTH: TAbmesFloatField;
    cdsDepth: TAbmesClientDataSet;
    dsDepth: TDataSource;
    lblDepth: TLabel;
    cbDepth: TJvDBLookupCombo;
    cdsDepthVALUE: TAbmesFloatField;
    cdsDepthABBREV: TAbmesWideStringField;
    cdsDepthNAME: TAbmesWideStringField;
    procedure actFrameUpdate(Sender: TObject);
    procedure cdsChosenNodesAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    procedure DoNodeFieldChanged; override;
    function EditNodeField: Integer; override;
    function ShowNodeEditForm(em: TEditMode): Boolean; override;
    function CheckNodeRelations(ChosenNode: Integer): Integer; override;
  public
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  end;

implementation

uses
  dMain, uTreeNodes, fTreeSelectForm, uTreeClientUtils, fDeptEdit, Math, uUtils,
  uClientUtils, fTreeNodeFilter;

resourcestring
  SExternalAbbrev = 'Внш';
  SExternalName = 'Външно';
  SNotExternalAbbrev = 'Втр';
  SNotExternalName = 'Вътрешно';

  SRecurrentAbbrev = 'Пулс';
  SRecurrentName = 'Пулсиращо';
  SNotRecurrentAbbrev = 'Уст';
  SNotRecurrentName = 'Установено';

  SActiveAbbrev = 'Акт';
  SActiveName = 'Активно';
  SNotActiveAbbrev = 'Неакт';
  SNotActiveName = 'Неактивно';

  SDepthAbbrev = 'Избр';
  SDepthName = 'Само избраните';

  SNodeCodeDisplayLabel = 'ТП';
  SNodeNameDisplayLabel = 'Наименование';
  SNodeIdentifierDisplayLabel = 'Код';

{$R *.dfm}

{ TfrDeptFilter }

procedure TfrDeptFilter.actFrameUpdate(Sender: TObject);

  procedure SetComboReadOnly(ACombo: TJvDBLookupCombo);
  begin
    SetControlReadOnly(ReadOnly and not BaseFilterEnabled, ACombo);
  end;

begin
  inherited;
  SetComboReadOnly(cbIsActive);
  SetComboReadOnly(cbIsExternal);
  SetComboReadOnly(cbIsRecurrent);
  SetComboReadOnly(cbStoreType);
  SetComboReadOnly(cbDepth);
end;

procedure TfrDeptFilter.cdsChosenNodesAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cdsChosenNodes.FieldByName('NODE_CODE').DisplayLabel:= SNodeCodeDisplayLabel;
  cdsChosenNodes.FieldByName('NODE_NAME').DisplayLabel:= SNodeNameDisplayLabel;
  cdsChosenNodes.FieldByName('NODE_IDENTIFIER').DisplayLabel:= SNodeIdentifierDisplayLabel;

  grdChosenNodes.Columns[0].Title.Caption:= SNodeNameDisplayLabel;
  grdChosenNodes.Columns[1].Title.Caption:= SNodeIdentifierDisplayLabel;
end;

function TfrDeptFilter.CheckNodeRelations(ChosenNode: Integer): Integer;
var
  Dept1, Dept2: Integer;
begin
  Dept1:=
    IfThen(
      cdsChosenNodes.FieldByName('NODE_CODE').AsInteger = -1,
      LoginContext.CurrentDeptCode,
      cdsChosenNodes.FieldByName('NODE_CODE').AsInteger);
  Dept2:= IfThen(ChosenNode = -1, LoginContext.CurrentDeptCode, ChosenNode);
  Result:= dmMain.SvrDeptsTree.CheckDeptRelation(Dept1, Dept2);
end;

procedure TfrDeptFilter.DoNodeFieldChanged;
begin
  DoDeptFieldChanged(
    cdsChosenNodes.FieldByName('NODE_CODE'),
    cdsChosenNodes.FieldByName('NODE_NAME'),
    cdsChosenNodes.FieldByName('NODE_IDENTIFIER'));
end;

function TfrDeptFilter.EditNodeField: Integer;
begin
  Result:= EditDeptField(cdsChosenNodes.FieldByName('NODE_CODE'), tnRootDeptCode, tdsAll, False, False, False);
end;

function TfrDeptFilter.ShowNodeEditForm(em: TEditMode): Boolean;
begin
  Result:= TfmDeptEdit.ShowForm(nil, cdsChosenNodes, em);
end;

procedure TfrDeptFilter.CloseDataSets;
begin
  cdsDepth.Close;
  cdsStoreTypes.Close;
  cdsIsActive.Close;
  cdsIsRecurrent.Close;
  cdsIsExternal.Close;
  inherited;
end;

procedure TfrDeptFilter.OpenDataSets;
const
  cdsIsExternalValues: array[1..2] of TNomItem = (
    (Code: 2; Abbrev: SNotExternalAbbrev; Name: SNotExternalName),
    (Code: 1; Abbrev: SExternalAbbrev; Name: SExternalName)
  );

  cdsIsRecurrentValues: array[1..2] of TNomItem = (
    (Code: 2; Abbrev: SNotRecurrentAbbrev; Name: SNotRecurrentName),
    (Code: 1; Abbrev: SRecurrentAbbrev; Name: SRecurrentName)
  );

  cdsIsActiveValues: array[1..2] of TNomItem = (
    (Code: 1; Abbrev: SActiveAbbrev; Name: SActiveName),
    (Code: 2; Abbrev: SNotActiveAbbrev; Name: SNotActiveName)
  );

  cdsDepthValues: array[1..1] of TNomItem = (
    (Code: 1; Abbrev: SDepthAbbrev; Name: SDepthName)
  );

begin
  inherited;

  cdsIsExternal.CreateDataSet;
  FillDataSetValues(cdsIsExternal, cdsIsExternalValues);

  cdsIsRecurrent.CreateDataSet;
  FillDataSetValues(cdsIsRecurrent, cdsIsRecurrentValues);

  cdsIsActive.CreateDataSet;
  FillDataSetValues(cdsIsActive, cdsIsActiveValues);

  cdsStoreTypes.Open;

  cdsDepth.CreateDataSet;
  FillDataSetValues(cdsDepth, cdsDepthValues);
end;

end.
