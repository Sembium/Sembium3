unit fProcessActions;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBottomButtonGridForm, Menus, JvComponentBase, JvCaptionButton, DB,
  AbmesFields, ParamDataSet, ActnList, DBClient, AbmesClientDataSet, GridsEh,
  DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons,
  StdCtrls, ExtCtrls, fProcessAction, DBGridEhGrouping, fBaseForm;

type
  [CanUseDocs]
  TfmProcessActions = class(TBottomButtonGridForm)
    cdsGridDataPRC_ACTION_NO: TAbmesFloatField;
    cdsGridDataPRC_ACTION_NAME: TAbmesWideStringField;
    cdsGridDataPRC_ACTION_ABBREV: TAbmesWideStringField;
    cdsGridDataIS_CONCRETE_ACTION: TAbmesFloatField;
    cdsGridData_MAX_PRC_ACTION_NO: TAggregateField;
    cdsGridDataIS_BASE_ACTION: TAbmesFloatField;
    cdsGridDataPRC_ACTION_CODE: TAbmesFloatField;
    tlbDocs: TToolBar;
    sepBeforeDocs: TToolButton;
    lblDoc: TLabel;
    btnDoc: TToolButton;
    actDoc: TAction;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataHAS_DOC_ITEMS: TAbmesFloatField;
    cdsGridDataIS_PROJECT_ACTION: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure actDocExecute(Sender: TObject);
    procedure actDocUpdate(Sender: TObject);
    procedure cdsGridDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
  private
    { Private declarations }
  protected
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    procedure dmDocClientOnDataChanged(Sender: TObject);
    procedure DoGridApplyUpdates; override;
  public
    procedure Finalize; override;
    procedure Initialize; override;
  end;

implementation

uses
  uUtils, uDocUtils, uClientTypes;

{$R *.dfm}

{ TfmProcessActions }

procedure TfmProcessActions.actDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    (Sender as TAction).ActionComponent as TControl,
    dotProcessAction,
    cdsGridData);
end;

procedure TfmProcessActions.actDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (cdsGridData.RecordCount > 0);
  (Sender as TAction).ImageIndex:= Ord(cdsGridDataHAS_DOC_ITEMS.AsBoolean);
end;

procedure TfmProcessActions.cdsGridDataBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;

procedure TfmProcessActions.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataPRC_ACTION_CODE.AsInteger:= -1;
  cdsGridDataPRC_ACTION_NO.AsInteger:= VarToInt(cdsGridData_MAX_PRC_ACTION_NO.Value) + 1;
  cdsGridDataIS_BASE_ACTION.AsBoolean:= True;
  cdsGridDataIS_CONCRETE_ACTION.AsBoolean:= False;
  cdsGridDataIS_PROJECT_ACTION.AsBoolean:= False;
end;

procedure TfmProcessActions.dmDocClientOnDataChanged(Sender: TObject);
begin
  dmDocClient.SetHasDocItemsField(cdsGridDataHAS_DOC_ITEMS);
end;

procedure TfmProcessActions.DoGridApplyUpdates;
begin
  inherited;
  dmDocClient.CommitUpdates;
end;

procedure TfmProcessActions.Finalize;
begin
  inherited;
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
  FOlddmDocClientOnDataChanged:= nil;  
end;

procedure TfmProcessActions.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmProcessAction;
end;

procedure TfmProcessActions.Initialize;
begin
  inherited;
  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;
end;

end.
