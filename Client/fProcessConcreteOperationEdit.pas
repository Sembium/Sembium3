unit fProcessConcreteOperationEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvComponentBase,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, AbmesFields, ComCtrls,
  ToolWin, Mask, DBCtrls, dDocClient, uClientTypes, fDateFieldEditFrame,
  AbmesDBCheckBox, fBaseFrame, fDBFrame, fFieldEditFrame,
  fTreeNodeFieldEditFrame, fProductFieldEditFrame, fBaseForm;

type
  [CanUseDocs]
  [CanEditOuterDataSet(False)]
  TfmProcessConcreteOperationEdit = class(TEditForm)
    gbProcessConcreteOperation: TGroupBox;
    lblName: TLabel;
    lblShortName: TLabel;
    btnNameToShortName: TSpeedButton;
    lblProcessConcreteOperationNo: TLabel;
    edtProcessConcreteOperationName: TDBEdit;
    edtProcessConcreteOperationShortName: TDBEdit;
    edtProcessConcreteOperationLocalNo: TDBEdit;
    edtParentProcessConcreteOperationFullNo: TDBEdit;
    tbDocButton: TToolBar;
    btnDoc: TToolButton;
    cdsDataPRC_CONCRETE_OP_CODE: TAbmesFloatField;
    cdsDataPARENT_PRC_CONCRETE_OP_CODE: TAbmesFloatField;
    cdsDataPRC_CONCRETE_OP_LOCAL_NO: TAbmesFloatField;
    cdsDataPRC_CONCRETE_OP_NAME: TAbmesWideStringField;
    cdsDataPRC_CONCRETE_OP_SHORT_NAME: TAbmesWideStringField;
    cdsDataIS_GROUP: TAbmesFloatField;
    cdsDataPARENT_FULL_NO: TAbmesWideStringField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsDataHAS_DOC_ITEMS: TAbmesFloatField;
    cdsDataDOC_PRODUCT_CODE: TAbmesFloatField;
    actCopyNameToShortName: TAction;
    actDoc: TAction;
    frProcessConcreteOperationProduct: TfrProductFieldEditFrame;
    grpDeactivation: TGroupBox;
    lblDeactiveFrom: TLabel;
    chbIsInactive: TAbmesDBCheckBox;
    frDeactivationDate: TfrDateFieldEditFrame;
    cdsDataDEACTIVATION_DATE: TAbmesSQLTimeStampField;
    cdsDataIS_INACTIVE: TAbmesFloatField;
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure actCopyNameToShortNameUpdate(Sender: TObject);
    procedure actCopyNameToShortNameExecute(Sender: TObject);
    procedure actDocUpdate(Sender: TObject);
    procedure actDocExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actApplyUpdatesExecute(Sender: TObject);
    procedure actCancelUpdatesExecute(Sender: TObject);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsDataIS_INACTIVEChange(Sender: TField);
  private
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    FInsertGroupProcessConcreteOperation: Boolean;
    FProcessConcreteOperationCode: Integer;
    procedure dmDocClientOnDataChanged(Sender: TObject);
    function IsRoot: Boolean;
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function GetOriginalFormCaption: string; override;
  public
    procedure Finalize; override;
    procedure Initialize; override;

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
  dMain, uUtils, uClientUtils, uDocUtils, fTreeSelectForm, StrUtils;

resourcestring
  SIsGroupCaption = 'Група Познавателни Операнти';
  SIsGroupFormCaption = 'Група Познавателни Операнти - %s';
  SIsDefiniteCaption = 'Познавателен Оперант';
  SIsDefiniteFormCaption = 'Познавателен Оперант - %s';
  SIdentification = 'Идентификация на';

const
  RootProcessConcreteOperationCode = 1;

{$R *.dfm}

{ TfmProcessConcreteOperationEdit }

procedure TfmProcessConcreteOperationEdit.actApplyUpdatesExecute(
  Sender: TObject);
begin
  inherited;
  FProcessConcreteOperationCode:= cdsDataPRC_CONCRETE_OP_CODE.AsInteger;
end;

procedure TfmProcessConcreteOperationEdit.actCancelUpdatesExecute(
  Sender: TObject);
begin
  inherited;
  FProcessConcreteOperationCode:= 0;
end;

procedure TfmProcessConcreteOperationEdit.actCopyNameToShortNameExecute(
  Sender: TObject);
begin
  inherited;
  CheckEditMode(cdsData);
  edtProcessConcreteOperationShortName.SetFocus;
  cdsDataPRC_CONCRETE_OP_SHORT_NAME.AsVariant:= cdsDataPRC_CONCRETE_OP_NAME.AsVariant;
end;

procedure TfmProcessConcreteOperationEdit.actCopyNameToShortNameUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (EditMode <> emReadOnly) and not IsRoot;
end;

procedure TfmProcessConcreteOperationEdit.actDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    EditMode,
    (Sender as TAction).ActionComponent as TControl,
    dotProcessFunction,
    cdsData);
end;

procedure TfmProcessConcreteOperationEdit.actDocUpdate(Sender: TObject);
begin
  inherited;
  actDoc.ImageIndex:= Ord(cdsDataHAS_DOC_ITEMS.AsBoolean);
end;

procedure TfmProcessConcreteOperationEdit.actFormUpdate(Sender: TObject);
var
  ro: Boolean;
  ConcreteOperationCaption: string;
begin
  inherited;
  ro:= (EditMode = emReadOnly) or IsRoot;

  SetControlsReadOnly(ro, [
    edtProcessConcreteOperationName,
    edtProcessConcreteOperationShortName,
    edtProcessConcreteOperationLocalNo,
    chbIsInactive]);

  if cdsDataIS_GROUP.AsBoolean then
    ConcreteOperationCaption:= SIsGroupCaption
  else
    ConcreteOperationCaption:= SIsDefiniteCaption;

  gbProcessConcreteOperation.Caption:= Format(' %s %s ', [SIdentification, ConcreteOperationCaption]);
end;

procedure TfmProcessConcreteOperationEdit.cdsDataBeforeApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;


procedure TfmProcessConcreteOperationEdit.cdsDataIS_INACTIVEChange(Sender: TField);
begin
  inherited;
  if not Sender.AsBoolean then
    cdsDataDEACTIVATION_DATE.Clear;
end;

procedure TfmProcessConcreteOperationEdit.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDataPRC_CONCRETE_OP_CODE.AsInteger:= dmMain.SvrProcesses.GetNewProcessConcreteOperationCode;
  cdsDataPARENT_PRC_CONCRETE_OP_CODE.AsVariant:= OuterDataSet.FieldByName('PRC_CONCRETE_OP_CODE').AsVariant;
  cdsDataIS_GROUP.AsBoolean:= FInsertGroupProcessConcreteOperation;
                                   
  if (cdsDataPARENT_PRC_CONCRETE_OP_CODE.AsInteger <> RootProcessConcreteOperationCode) then
    cdsDataPARENT_FULL_NO.AsVariant:= OuterDataSet.FieldByName('PRC_CONCRETE_OP_FULL_NO').AsVariant;

  cdsDataPRC_CONCRETE_OP_LOCAL_NO.AsInteger:=
    dmMain.SvrProcesses.GetNewProcessConcreteOperationLocalNo(cdsDataPARENT_PRC_CONCRETE_OP_CODE.AsInteger);
    
  cdsDataIS_INACTIVE.AsBoolean:= False;
end;

procedure TfmProcessConcreteOperationEdit.dmDocClientOnDataChanged(
  Sender: TObject);
begin
  dmDocClient.SetHasDocItemsField(cdsData.FieldByName('HAS_DOC_ITEMS'));
end;

procedure TfmProcessConcreteOperationEdit.Initialize;
begin
  inherited;
  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  if cdsDataIS_GROUP.AsBoolean then
    begin
      frProcessConcreteOperationProduct.Visible:= False;
      grpDeactivation.Top:= grpDeactivation.Top - frProcessConcreteOperationProduct.Height - 8;
      ClientHeight:= ClientHeight - frProcessConcreteOperationProduct.Height - 8;
    end
  else
    actDoc.Visible:= False;
end;

procedure TfmProcessConcreteOperationEdit.Finalize;
begin
  inherited;
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
  FOlddmDocClientOnDataChanged:= nil;
end;

procedure TfmProcessConcreteOperationEdit.FormCreate(Sender: TObject);
begin
  inherited;
  frProcessConcreteOperationProduct.TreeDetailSelection:= tdsInstance;
  frProcessConcreteOperationProduct.FieldNames:= 'DOC_PRODUCT_CODE';
  frDeactivationDate.FieldNames:= 'DEACTIVATION_DATE';
end;

function TfmProcessConcreteOperationEdit.GetOriginalFormCaption: string;
begin
  if cdsDataIS_GROUP.AsBoolean then
    Result:= SIsGroupFormCaption
  else
    Result:= SIsDefiniteFormCaption;
end;

function TfmProcessConcreteOperationEdit.IsRoot: Boolean;
begin
  Result:= cdsDataPARENT_PRC_CONCRETE_OP_CODE.IsNull;
end;

procedure TfmProcessConcreteOperationEdit.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AInsertGroup: Boolean);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FInsertGroupProcessConcreteOperation:= AInsertGroup;
end;

procedure TfmProcessConcreteOperationEdit.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  inherited;
  if (AFrame = frProcessConcreteOperationProduct) then
    AFrame.ReadOnly:= (EditMode = emReadOnly) or IsRoot
  else
    begin
      if (AFrame = frDeactivationDate) then
        AFrame.ReadOnly:= not cdsDataIS_INACTIVE.AsBoolean or IsRoot
      else
        inherited SetDBFrameReadOnly(AFrame);
    end;
end;

class function TfmProcessConcreteOperationEdit.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AInsertGroup: Boolean): Integer;
var
  f: TfmProcessConcreteOperationEdit;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AInsertGroup);
    f.InternalShowForm;
    Result:= f.FProcessConcreteOperationCode;
  finally
    f.ReleaseForm;
  end;
end;

end.
