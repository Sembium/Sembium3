unit fExceptEventTypeEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, ActnList, StdCtrls,
  Buttons, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls,
  fBaseForm, fDataForm, dDocClient, uClientTypes, AbmesFields, PrnDbgeh;

type
  [CanUseDocs]
  [CanEditOuterDataSet(False)]
  TfmExceptEventTypeEdit = class(TEditForm)
    gbExceptEventType: TGroupBox;
    lblName: TLabel;
    lblShortName: TLabel;
    btnNameToShortName: TSpeedButton;
    lblExceptEventTypeNo: TLabel;
    edtExceptEventTypeName: TDBEdit;
    edtExceptEventTypeShortName: TDBEdit;
    edtExceptEventTypeLocalNo: TDBEdit;
    edtParentExceptEventTypeFullNo: TDBEdit;
    tbDocButton: TToolBar;
    btnDoc: TToolButton;
    cdsDataEXCEPT_EVENT_TYPE_CODE: TAbmesFloatField;
    cdsDataPARENT_EXCEPT_EVENT_TYPE_CODE: TAbmesFloatField;
    cdsDataEXCEPT_EVENT_TYPE_LOCAL_NO: TAbmesFloatField;
    cdsDataEXCEPT_EVENT_TYPE_NAME: TAbmesWideStringField;
    cdsDataEXCEPT_EVENT_TYPE_SHORT_NAME: TAbmesWideStringField;
    cdsDataIS_GROUP: TAbmesFloatField;
    cdsDataPARENT_FULL_NO: TAbmesWideStringField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsDataHAS_DOC_ITEMS: TAbmesFloatField;
    actCopyNameToShortName: TAction;
    actDoc: TAction;
    procedure FormCreate(Sender: TObject);
    procedure actApplyUpdatesExecute(Sender: TObject);
    procedure actCancelUpdatesExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure actCopyNameToShortNameExecute(Sender: TObject);
    procedure actCopyNameToShortNameUpdate(Sender: TObject);
    procedure actDocUpdate(Sender: TObject);
    procedure actDocExecute(Sender: TObject);
  private
    FInsertGroupExceptEventType: Boolean;
    FExceptEventTypeCode: Integer;
    function IsRoot: Boolean;
  protected
    function GetOriginalFormCaption: string; override;
  public
    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AInsertGroup: Boolean = False); reintroduce; virtual;
    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AInsertGroup: Boolean = False): Integer;
  end;

implementation

uses
  uClientUtils, dMain, uUtils, uDocUtils;

resourcestring
  SIsGroupCaption = 'Група Видове Недопустими Отклонения';
  SIsDefiniteCaption = 'Вид Недопустими Отклонения';
  SIdentification = 'Идентификация на';

const
  RootExceptEventTypeCode = 1;

{$R *.dfm}

{ TfmExceptEventTypeEdit }

procedure TfmExceptEventTypeEdit.actApplyUpdatesExecute(Sender: TObject);
begin
  inherited;
  FExceptEventTypeCode:= cdsDataEXCEPT_EVENT_TYPE_CODE.AsInteger;
end;

procedure TfmExceptEventTypeEdit.actCancelUpdatesExecute(Sender: TObject);
begin
  inherited;
  FExceptEventTypeCode:= 0;
end;

procedure TfmExceptEventTypeEdit.actCopyNameToShortNameExecute(Sender: TObject);
begin
  inherited;
  CheckEditMode(cdsData);
  edtExceptEventTypeShortName.SetFocus;
  cdsDataEXCEPT_EVENT_TYPE_SHORT_NAME.Assign(cdsDataEXCEPT_EVENT_TYPE_NAME);
end;

procedure TfmExceptEventTypeEdit.actCopyNameToShortNameUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (EditMode <> emReadOnly) and not IsRoot;
end;

procedure TfmExceptEventTypeEdit.actDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    EditMode,
    (Sender as TAction).ActionComponent as TControl,
    dotExceptEventType,
    cdsData);
end;

procedure TfmExceptEventTypeEdit.actDocUpdate(Sender: TObject);
begin
  inherited;
  actDoc.ImageIndex:= Ord(cdsDataHAS_DOC_ITEMS.AsBoolean);
end;

procedure TfmExceptEventTypeEdit.actFormUpdate(Sender: TObject);
var
  ExceptEventTypeCaption: string;
begin
  inherited;

  SetControlsReadOnly((EditMode = emReadOnly) or IsRoot, [
    edtExceptEventTypeName,
    edtExceptEventTypeShortName,
    edtExceptEventTypeLocalNo]);

  ExceptEventTypeCaption:= IfThen(cdsDataIS_GROUP.AsBoolean, SIsGroupCaption, SIsDefiniteCaption);
  gbExceptEventType.Caption:= Format(' %s %s ', [SIdentification, ExceptEventTypeCaption]);
end;

procedure TfmExceptEventTypeEdit.cdsDataBeforeApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;

procedure TfmExceptEventTypeEdit.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDataEXCEPT_EVENT_TYPE_CODE.AsInteger:= dmMain.SvrExceptEvents.GetNewExceptEventTypeCode;

  cdsDataPARENT_EXCEPT_EVENT_TYPE_CODE.Assign(OuterDataSet.FieldByName('EXCEPT_EVENT_TYPE_CODE'));
  cdsDataIS_GROUP.AsBoolean:= FInsertGroupExceptEventType;

  if (cdsDataPARENT_EXCEPT_EVENT_TYPE_CODE.AsInteger <> RootExceptEventTypeCode) then
    cdsDataPARENT_FULL_NO.AsVariant:= OuterDataSet.FieldByName('EE_TYPE_FULL_NO').AsVariant;

  cdsDataEXCEPT_EVENT_TYPE_LOCAL_NO.AsInteger:=
    dmMain.SvrExceptEvents.GetNextExceptEventTypeNo(cdsDataPARENT_EXCEPT_EVENT_TYPE_CODE.AsInteger);
end;

procedure TfmExceptEventTypeEdit.FormCreate(Sender: TObject);
begin
  inherited;
  HasDocItemsField:= cdsDataHAS_DOC_ITEMS;
end;

function TfmExceptEventTypeEdit.GetOriginalFormCaption: string;
begin
  Result:= IfThen(cdsDataIS_GROUP.AsBoolean, SIsGroupCaption, SIsDefiniteCaption) + ' - %s';
end;

function TfmExceptEventTypeEdit.IsRoot: Boolean;
begin
  Result:= cdsDataPARENT_EXCEPT_EVENT_TYPE_CODE.IsNull;
end;

procedure TfmExceptEventTypeEdit.SetDataParams(AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AInsertGroup: Boolean);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FInsertGroupExceptEventType:= AInsertGroup;
end;

class function TfmExceptEventTypeEdit.ShowForm(AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AInsertGroup: Boolean): Integer;
var
  f: TfmExceptEventTypeEdit;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AInsertGroup);
    f.InternalShowForm;
    Result:= f.FExceptEventTypeCode;
  finally
    f.ReleaseForm;
  end;
end;

end.
