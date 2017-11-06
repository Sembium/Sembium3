unit fCompanyFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fTreeNodeFilter, DB, AbmesFields, DBClient, AbmesClientDataSet,
  ActnList, Buttons, ExtCtrls, StdCtrls, DBGridEhGrouping, GridsEh,
  DBGridEh, AbmesDBGrid, JvExControls, JvDBLookup, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh, System.Actions;

type
  TfrCompanyFilter = class(TfrTreeNodeFilter)
    pnlChosenCompanies: TPanel;
    grdChosenCompanies: TAbmesDBGrid;
    actAdd: TAction;
    actRemove: TAction;
    actRemoveAll: TAction;
    pnlButtons: TPanel;
    btnAdd: TSpeedButton;
    btnRemove: TSpeedButton;
    btnRemoveAll: TSpeedButton;
    pnlNotChosenCompanies: TPanel;
    grdNotChosenCompanies: TAbmesDBGrid;
    cdsCommonStatuses: TAbmesClientDataSet;
    cdsCommonStatusesCOMMON_STATUS_CODE: TAbmesFloatField;
    cdsCommonStatusesCOMMON_STATUS_ABBREV: TAbmesWideStringField;
    cdsCommonStatusesCOMMON_STATUS_NAME: TAbmesWideStringField;
    dsCommonStatuses: TDataSource;
    pnlBottom: TPanel;
    lblCommonStatus: TLabel;
    cbCommonStatuses: TJvDBLookupCombo;
    cdsChosenNodesParamsCOMMON_STATUS_CODE: TAbmesFloatField;
    cdsChosenCompanies: TAbmesClientDataSet;
    cdsChosenCompaniesCOMPANY_CODE: TAbmesFloatField;
    cdsChosenCompaniesCOMPANY_NO: TAbmesFloatField;
    cdsChosenCompaniesSHORT_NAME: TAbmesWideStringField;
    dsChosenCompanies: TDataSource;
    cdsNotChosenCompanies: TAbmesClientDataSet;
    cdsNotChosenCompaniesCOMPANY_CODE: TAbmesFloatField;
    cdsNotChosenCompaniesCOMPANY_NO: TAbmesFloatField;
    cdsNotChosenCompaniesSHORT_NAME: TAbmesWideStringField;
    dsNotChosenCompanies: TDataSource;
    cdsCompanies: TAbmesClientDataSet;
    cdsCompaniesCOMPANY_CODE: TAbmesFloatField;
    cdsCompaniesCOMPANY_NO: TAbmesFloatField;
    cdsCompaniesSHORT_NAME: TAbmesWideStringField;
    cdsCompaniesIS_CHOSEN: TAbmesFloatField;
    procedure actAddUpdate(Sender: TObject);
    procedure actAddExecute(Sender: TObject);
    procedure actRemoveUpdate(Sender: TObject);
    procedure actRemoveExecute(Sender: TObject);
    procedure actRemoveAllUpdate(Sender: TObject);
    procedure actRemoveAllExecute(Sender: TObject);
    procedure actFrameUpdate(Sender: TObject);
    procedure grdChosenCompaniesDblClick(Sender: TObject);
    procedure grdNotChosenCompaniesDblClick(Sender: TObject);
    procedure cdsChosenCompaniesSHORT_NAMEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure grdChosenCompaniesSortMarkingChanged(Sender: TObject);
    procedure grdNotChosenCompaniesSortMarkingChanged(Sender: TObject);
  private
    FFrameUpdatePassed: Boolean;
    procedure TransferRecord(SourceDataSet, DestDataSet: TClientDataset);
    procedure TransferAllRecords(SourceDataSet, DestDataSet: TClientDataset);
    procedure UpdateChosenNodes;
    procedure FillChosenCompaniesDataSets(const AChosenCompaniesXML: string);
  protected
    procedure AfterSetAsString(const Value: string); override;
    procedure DoNodeFieldChanged; override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure Initialize; override;
  end;

var
  frCompanyFilter: TfrCompanyFilter;

implementation

uses
  uClientUtils, uClientConsts, uProducts, uProductClientUtils, uUtils,
  uXMLUtils, fGridForm;

{$R *.dfm}

procedure TfrCompanyFilter.TransferRecord(SourceDataSet,
  DestDataSet: TClientDataset);
begin
  DestDataSet.DisableControls;
  try
    SourceDataSet.DisableControls;
    try
      DestDataSet.AppendRecord([
        SourceDataSet.FieldByName('COMPANY_CODE').AsVariant,
        SourceDataSet.FieldByName('COMPANY_NO').AsVariant,
        SourceDataSet.FieldByName('SHORT_NAME').AsVariant]);

      SourceDataSet.Delete;
    finally
      SourceDataSet.EnableControls;
    end;  { try }
  finally
    DestDataSet.EnableControls;
  end;  { try }
end;

procedure TfrCompanyFilter.TransferAllRecords(SourceDataSet,
  DestDataSet: TClientDataset);
begin
  DestDataSet.DisableControls;
  try
    SourceDataSet.DisableControls;
    try
      SourceDataSet.First;
      while not (SourceDataSet.Bof and SourceDataSet.Eof) do
        begin
          TransferRecord(SourceDataSet, DestDataSet);
        end;  { while }
    finally
      SourceDataSet.EnableControls;
    end;  { try }
  finally
    DestDataSet.EnableControls;
  end;  { try }
end;

procedure TfrCompanyFilter.UpdateChosenNodes;
begin
  cdsChosenNodes.EmptyDataSet;
  cdsChosenCompanies.TempDisableControls/
    cdsChosenCompanies.PreserveBookmark/
      cdsChosenCompanies.ForEach/
        procedure begin
          cdsChosenNodes.AppendRecord([cdsChosenCompaniesCOMPANY_CODE.AsInteger]);
        end;
end;

procedure TfrCompanyFilter.actAddExecute(Sender: TObject);
begin
  inherited;
  TransferRecord(cdsNotChosenCompanies, cdsChosenCompanies);
  UpdateChosenNodes;
  ForceUpdateRecord;
end;

procedure TfrCompanyFilter.actAddUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    ((not ReadOnly) or BaseFilterEnabled) and
    not cdsNotChosenCompanies.IsEmpty;
end;

procedure TfrCompanyFilter.actFrameUpdate(Sender: TObject);
begin
  inherited;

  if not FFrameUpdatePassed then
    begin
      FFrameUpdatePassed:= True;

      // delayed load
      if (not cdsChosenCompanies.Active) and (not cdsNotChosenCompanies.Active) then
        Screen.TempCursor(crSQLWait)/
          procedure begin
            FillChosenCompaniesDataSets(AsString);
          end;
    end;

  SetControlReadOnly(ReadOnly and not BaseFilterEnabled, cbCommonStatuses);
end;

procedure TfrCompanyFilter.actRemoveAllExecute(Sender: TObject);
begin
  inherited;
  TransferAllRecords(cdsChosenCompanies, cdsNotChosenCompanies);
  UpdateChosenNodes;
  ForceUpdateRecord;
end;

procedure TfrCompanyFilter.actRemoveAllUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    ((not ReadOnly) or BaseFilterEnabled) and
    not cdsChosenCompanies.IsEmpty;
end;

procedure TfrCompanyFilter.actRemoveExecute(Sender: TObject);
begin
  inherited;
  TransferRecord(cdsChosenCompanies, cdsNotChosenCompanies);
  UpdateChosenNodes;
  ForceUpdateRecord;
end;

procedure TfrCompanyFilter.actRemoveUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    ((not ReadOnly) or BaseFilterEnabled) and
    not cdsChosenCompanies.IsEmpty;
end;

procedure TfrCompanyFilter.AfterSetAsString(const Value: string);
begin
  inherited;
  FillChosenCompaniesDataSets(Value);
end;

procedure TfrCompanyFilter.cdsChosenCompaniesSHORT_NAMEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;

  if Sender.IsNull and Sender.DataSet.Bof and Sender.DataSet.Eof then
    Text:= SAllInBrackets
  else
    Text:= Sender.AsString;
end;

procedure TfrCompanyFilter.CloseDataSets;
begin
  cdsChosenCompanies.Close;
  cdsNotChosenCompanies.Close;
  cdsCommonStatuses.Close;
  inherited;
end;

constructor TfrCompanyFilter.Create(AOwner: TComponent);
begin
  inherited;
  ShowAllWhenEmpty:= True;
end;

procedure TfrCompanyFilter.DoNodeFieldChanged;
begin
  // do nothing
end;

procedure TfrCompanyFilter.FillChosenCompaniesDataSets(
  const AChosenCompaniesXML: string);
var
  ADataSet: TAbmesClientDataSet;
begin
  Screen.TempCursor(crSQLWait)/
    cdsChosenCompanies.TempDisableControls/
      cdsNotChosenCompanies.TempDisableControls/
        procedure begin
          cdsChosenCompanies.Close;
          cdsNotChosenCompanies.Close;

          cdsChosenCompanies.CreateDataSet;
          cdsNotChosenCompanies.CreateDataSet;

          cdsCompanies.Params.ParamByName('CHOSEN_COMPANIES').AsString:= SplitXMLs(AChosenCompaniesXML).XML1;
          cdsCompanies.TempOpen/
            cdsCompanies.ForEach/
              procedure begin
                if cdsCompaniesIS_CHOSEN.AsBoolean then
                  ADataSet:= cdsChosenCompanies
                else
                  ADataSet:= cdsNotChosenCompanies;

                ADataSet.SafeAppend/
                  procedure begin
                    ADataSet.AssignFields(cdsCompanies);
                  end;
              end;

          cdsChosenCompanies.First;
          cdsNotChosenCompanies.First;
        end;
end;

procedure TfrCompanyFilter.grdChosenCompaniesDblClick(Sender: TObject);
begin
  inherited;
  actRemove.Execute;
end;

procedure TfrCompanyFilter.grdChosenCompaniesSortMarkingChanged(
  Sender: TObject);
begin
  inherited;
  SortGrid(grdChosenCompanies, SortIndexName);
end;

procedure TfrCompanyFilter.grdNotChosenCompaniesDblClick(Sender: TObject);
begin
  inherited;
  actAdd.Execute;
end;

procedure TfrCompanyFilter.grdNotChosenCompaniesSortMarkingChanged(
  Sender: TObject);
begin
  inherited;
  SortGrid(grdNotChosenCompanies, SortIndexName);
end;

procedure TfrCompanyFilter.Initialize;
begin
  inherited;
  InitializeAbmesDBGrid(grdChosenCompanies);
  InitializeAbmesDBGrid(grdNotChosenCompanies);
end;

procedure TfrCompanyFilter.OpenDataSets;
const
  cdsCommonStatusesValues: array[1..4] of TNomItem = (
    (Code: cscSingle; Abbrev: SSingleAbbrev; Name: SSingleName),
    (Code: cscCommon; Abbrev: SCommonAbbrev; Name: SCommonName),
    (Code: cscJoined; Abbrev: SJoinedAbbrev; Name: SJoinedName),
    (Code: cscFilterThruCommon; Abbrev: SFilterThruCommonAbbrev; Name: SFilterThruCommonName)
  );
begin
  inherited;

  cdsCommonStatuses.CreateDataSet;
  FillDataSetValues(cdsCommonStatuses, cdsCommonStatusesValues);
end;

end.
