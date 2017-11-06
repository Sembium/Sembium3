unit fDisciplineEventTypeEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponentBase, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet,
  GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator,
  Buttons, StdCtrls, ExtCtrls, dDocClient, uClientTypes, Mask, fBaseFrame,
  fDBFrame, fFieldEditFrame, fColor, Menus;

type
  TfmDisciplineEventTypeEdit = class(TGridForm)
    cdsGridDataDISC_EVENT_TYPE_PERIOD_CODE: TAbmesFloatField;
    cdsGridDataDISC_EVENT_TYPE_CODE: TAbmesFloatField;
    cdsGridDataBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataEND_DATE: TAbmesSQLTimeStampField;
    cdsGridDataACTIVE_DATE_UNIT_COUNT: TAbmesFloatField;
    cdsGridDataACTIVE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsGridDataRATING: TAbmesFloatField;
    actCopyNameToShortName: TAction;
    cdsDateUnits: TAbmesClientDataSet;
    cdsDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsGridData_ACTIVE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsDataDISC_EVENT_TYPE_CODE: TAbmesFloatField;
    cdsDataPARENT_DISC_EVENT_TYPE_CODE: TAbmesFloatField;
    cdsDataDISC_EVENT_TYPE_LOCAL_NO: TAbmesFloatField;
    cdsDataNAME: TAbmesWideStringField;
    cdsDataSHORT_NAME: TAbmesWideStringField;
    cdsDataIS_GROUP: TAbmesFloatField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsDataHAS_DOC_ITEMS: TAbmesFloatField;
    cdsDataDISC_EVENT_TYPE_SIGN: TAbmesFloatField;
    cdsDataCOLOR: TAbmesFloatField;
    cdsDataBACKGROUND_COLOR: TAbmesFloatField;
    cdsDataPARENT_FULL_NO: TAbmesWideStringField;
    cdsDataqryDiscEventTypePeriods: TDataSetField;
    actDoc: TAction;
    pnlTop: TPanel;
    gbDiscEventType: TGroupBox;
    lblDiscEventTypeNo: TLabel;
    lblName: TLabel;
    btnNameToShortName: TSpeedButton;
    lblShortName: TLabel;
    gbDiscEventTypeSign: TDBRadioGroup;
    edtParentDiscEventTypeFullNo: TDBEdit;
    edtDiscEventTypeLocalNo: TDBEdit;
    edtDiscEventTypeName: TDBEdit;
    edtDiscEventTypeShortName: TDBEdit;
    pnlMinus: TPanel;
    imgMinus: TImage;
    pnlPlus: TPanel;
    imgPlus: TImage;
    pnlColors: TPanel;
    frDiscEventTypeColor: TfrColor;
    frDiscEventTypeBackgroundColor: TfrColor;
    tbDocButton: TToolBar;
    btnDoc: TToolButton;
    procedure actApplyUpdatesExecute(Sender: TObject);
    procedure actCancelUpdatesExecute(Sender: TObject);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure actCopyNameToShortNameUpdate(Sender: TObject);
    procedure actCopyNameToShortNameExecute(Sender: TObject);
    procedure cdsGridDataBEGIN_DATEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure actFormUpdate(Sender: TObject);
    procedure actDocExecute(Sender: TObject);
    procedure actDocUpdate(Sender: TObject);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    FInsertGroupDisciplineEventType: Boolean;
    FDisciplineEventTypeCode: Integer;
    FOriginalgbDiscEventTypeHeight: Integer;
    FOriginalFormHeight: Integer;
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    procedure dmDocClientOnDataChanged(Sender: TObject);
    function IsRoot: Boolean;
  protected
    function GetOriginalFormCaption: string; override;
    procedure CloseDataSets; override;
    procedure OpenDataSets; override;
    class function CanUseDocs: Boolean; override;
  public
    procedure Initialize; override;
    procedure Finalize; override;
    class function CanEditOuterDataSet: Boolean; override;
    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      АInsertGroup: Boolean = False); reintroduce;  virtual;
    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      АInsertGroup: Boolean = False): Integer;
  end;

implementation

uses
  dMain, uUtils, fDisciplineEventTypePeriod, uDocUtils, uClientUtils;

{$R *.dfm}

resourcestring
  SIsNotGroupCaption = 'Вид Извънредно Отклонение в Работно Поведение';
  SIsGroupCaption = 'Група Видове Извънредни Отклонения в Работно Поведение';
  SIdentificationOf = 'Идентификация на';

const
  RootDiscEventTypeCode = 1;

  OriginalFormCaptions: array[Boolean] of string =
    (SIsNotGroupCaption, SIsGroupCaption);

{ TfmDisciplineEventTypeEdit }

class function TfmDisciplineEventTypeEdit.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmDisciplineEventTypeEdit.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; АInsertGroup: Boolean);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode);
  FInsertGroupDisciplineEventType:= АInsertGroup;
end;

class function TfmDisciplineEventTypeEdit.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; АInsertGroup: Boolean): Integer;
var
  f: TfmDisciplineEventTypeEdit;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, АInsertGroup);
    f.InternalShowForm;
    Result:= f.FDisciplineEventTypeCode;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmDisciplineEventTypeEdit.actApplyUpdatesExecute(Sender: TObject);
begin
  inherited;
  FDisciplineEventTypeCode:= cdsDataDISC_EVENT_TYPE_CODE.AsInteger;
end;

procedure TfmDisciplineEventTypeEdit.actCancelUpdatesExecute(Sender: TObject);
begin
  inherited;
  FDisciplineEventTypeCode:= 0;
end;

function TfmDisciplineEventTypeEdit.GetOriginalFormCaption: string;
begin
  Result:= OriginalFormCaptions[cdsDataIS_GROUP.AsBoolean] + ' - %s';
end;

procedure TfmDisciplineEventTypeEdit.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDataDISC_EVENT_TYPE_CODE.AsInteger:= dmMain.SvrHumanResource.GetNewDiscEventTypeCode;
  cdsDataPARENT_DISC_EVENT_TYPE_CODE.AsVariant:= OuterDataSet.FieldByName('DISC_EVENT_TYPE_CODE').AsVariant;

  if (OuterDataSet.FieldByName('DISC_EVENT_TYPE_CODE').AsInteger <> RootDiscEventTypeCode) then
    cdsDataPARENT_FULL_NO.AsVariant:= OuterDataSet.FieldByName('DISC_EVENT_TYPE_FULL_NO').AsVariant;

  cdsDataDISC_EVENT_TYPE_LOCAL_NO.AsInteger:=
    dmMain.SvrHumanResource.GetNewDiscEventTypeLocalNo(
      cdsDataPARENT_DISC_EVENT_TYPE_CODE.AsInteger);

  cdsDataIS_GROUP.AsBoolean:= FInsertGroupDisciplineEventType;
end;

procedure TfmDisciplineEventTypeEdit.cdsGridDataBEGIN_DATEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if cdsGridDataBEGIN_DATE.IsNull then
    Text:= ''
  else
    Text:= dmMain.GetDateIntervalAsShortString(cdsGridDataBEGIN_DATE.AsDateTime, cdsGridDataEND_DATE.AsDateTime);
end;

procedure TfmDisciplineEventTypeEdit.actCopyNameToShortNameExecute(
  Sender: TObject);
begin
  inherited;
  CheckEditMode(cdsData);
  edtDiscEventTypeShortName.SetFocus;                   // Tiq dva reda sa s razmeneni mesta, za da moje pyrvo da zapishe poleto NAME,
  cdsDataSHORT_NAME.AsVariant:= cdsDataNAME.AsVariant;  // kato napusne kontrola mu i posle da kopira stoinostta mu v ShortName
end;

procedure TfmDisciplineEventTypeEdit.actCopyNameToShortNameUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (EditMode <> emReadOnly) and not IsRoot;
end;

procedure TfmDisciplineEventTypeEdit.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmDisciplineEventTypePeriod;

  frDiscEventTypeColor.FieldNames:= 'COLOR';
  frDiscEventTypeBackgroundColor.FieldNames:= 'BACKGROUND_COLOR';

  RegisterDateFields(cdsGridData);

  FOriginalFormHeight:= Height;
  FOriginalgbDiscEventTypeHeight:= gbDiscEventType.Height;
end;

procedure TfmDisciplineEventTypeEdit.OpenDataSets;
begin
  cdsDateUnits.Open;
  inherited;
end;

procedure TfmDisciplineEventTypeEdit.CloseDataSets;
begin
  inherited;
  cdsDateUnits.Close;
end;

procedure TfmDisciplineEventTypeEdit.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataDISC_EVENT_TYPE_PERIOD_CODE.AsInteger:= dmMain.SvrHumanResource.GetNewDiscEventTypePeriodCode;
  cdsGridDataDISC_EVENT_TYPE_CODE.AsInteger:= cdsDataDISC_EVENT_TYPE_CODE.AsInteger;
end;

function TfmDisciplineEventTypeEdit.IsRoot: Boolean;
begin
  Result:= cdsDataPARENT_DISC_EVENT_TYPE_CODE.IsNull;
end;

procedure TfmDisciplineEventTypeEdit.actFormUpdate(Sender: TObject);
begin
  inherited;

  SetControlsReadOnly((EditMode = emReadOnly) or IsRoot, [
    edtDiscEventTypeName,
    edtDiscEventTypeShortName,
    edtDiscEventTypeLocalNo]);

  gbDiscEventType.Caption:= ' ' + SIdentificationOf + ' ' + OriginalFormCaptions[cdsDataIS_GROUP.AsBoolean] + ' ';
end;

class function TfmDisciplineEventTypeEdit.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmDisciplineEventTypeEdit.cdsDataBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;

procedure TfmDisciplineEventTypeEdit.actDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    EditMode,
    (Sender as TAction).ActionComponent as TControl,
    dotDiscEventType,
    cdsData);
end;

procedure TfmDisciplineEventTypeEdit.actDocUpdate(Sender: TObject);
begin
  inherited;
  actDoc.ImageIndex:= Ord(cdsDataHAS_DOC_ITEMS.AsBoolean);
end;

procedure TfmDisciplineEventTypeEdit.dmDocClientOnDataChanged(Sender: TObject);
begin
  dmDocClient.SetHasDocItemsField(cdsData.FieldByName('HAS_DOC_ITEMS'));
end;

procedure TfmDisciplineEventTypeEdit.Initialize;
begin
  inherited;
  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  gbDiscEventTypeSign.Visible:= not cdsDataIS_GROUP.AsBoolean;
  pnlPlus.Visible:= not cdsDataIS_GROUP.AsBoolean;
  pnlMinus.Visible:= not cdsDataIS_GROUP.AsBoolean;
  pnlGrid.Visible:= not cdsDataIS_GROUP.AsBoolean;
  pnlColors.Visible:= not cdsDataIS_GROUP.AsBoolean;

  gbDiscEventType.Height:= FOriginalgbDiscEventTypeHeight - Ord(cdsDataIS_GROUP.AsBoolean) * pnlColors.Height;
  Height:= FOriginalFormHeight - Ord(cdsDataIS_GROUP.AsBoolean) * (pnlColors.Height + pnlGrid.Height);

  if not cdsDataIS_GROUP.AsBoolean then
    BorderIcons:= BorderIcons + [biMaximize];

  if (EditMode = emInsert) then
    dmDocClient.DSInitDoc(dotDiscEventType, dsData.DataSet);
end;

procedure TfmDisciplineEventTypeEdit.Finalize;
begin
  inherited;
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
  FOlddmDocClientOnDataChanged:= nil;
end;

procedure TfmDisciplineEventTypeEdit.cdsDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  cdsDataDISC_EVENT_TYPE_SIGN.Required:= not cdsDataIS_GROUP.AsBoolean;
end;

procedure TfmDisciplineEventTypeEdit.FormShow(Sender: TObject);
begin
  inherited;
  actForm.Update;
end;

end.
