unit fFinClassEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvComponentBase,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, ComCtrls, ToolWin,
  Mask, DBCtrls, AbmesFields, uClientTypes, dDocClient, fBaseFrame, fDBFrame,
  fFieldEditFrame, fTreeNodeFieldEditFrame, fTreeOnlyNodeFieldEditFrame,
  fFinClassFieldEditFrame;

type
  TfmFinClassEdit = class(TEditForm)
    gbFinClass: TGroupBox;
    lblFinClassNo: TLabel;
    lblName: TLabel;
    btnNameToShortName: TSpeedButton;
    lblShortName: TLabel;
    edtParentFinClassFullNo: TDBEdit;
    edtFinClassLocalNo: TDBEdit;
    edtFinClassName: TDBEdit;
    edtFinClassShortName: TDBEdit;
    tbDocButton: TToolBar;
    btnDoc: TToolButton;
    cdsDataFIN_CLASS_CODE: TAbmesFloatField;
    cdsDataPARENT_FIN_CLASS_CODE: TAbmesFloatField;
    cdsDataFIN_CLASS_LOCAL_NO: TAbmesFloatField;
    cdsDataNAME: TAbmesWideStringField;
    cdsDataSHORT_NAME: TAbmesWideStringField;
    cdsDataIS_GROUP: TAbmesFloatField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsDataHAS_DOC_ITEMS: TAbmesFloatField;
    cdsDataPARENT_FULL_NO: TAbmesWideStringField;
    actCopyNameToShortName: TAction;
    actDoc: TAction;
    procedure actCopyNameToShortNameUpdate(Sender: TObject);
    procedure actCopyNameToShortNameExecute(Sender: TObject);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure actDocExecute(Sender: TObject);
    procedure actDocUpdate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsDataNewRecord(DataSet: TDataSet);
  private
    FInsertGroupFinClass: Boolean;
    FFinClassCode: Integer;
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    procedure dmDocClientOnDataChanged(Sender: TObject);
  protected
    procedure DoApplyUpdates; override;
    procedure DoCancelUpdates; override;
    function GetOriginalFormCaption: string; override;
    class function CanUseDocs: Boolean; override;
  public
    procedure Initialize; override;
    procedure Finalize; override;
    class function CanEditOuterDataSet: Boolean; override;
    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      АInsertGroup: Boolean = False); reintroduce; virtual;
    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      АInsertGroup: Boolean = False): Integer;
  end;

implementation

uses
  uUtils, uDocUtils, uClientUtils, dMain;

{$R *.dfm}

resourcestring
  SIsNotGroupCaption = 'Единична Финансова Статия';
  SIsGroupCaption = 'Обобщаваща Финансова Статия';
  SIdentificationOf = 'Идентификация на';

const
  RootFinClassCode = 1;

  OriginalFormCaptions: array[Boolean] of string =
    (SIsNotGroupCaption, SIsGroupCaption);

{ TfmFinClassEdit }

class function TfmFinClassEdit.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmFinClassEdit.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; АInsertGroup: Boolean);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode);
  FInsertGroupFinClass:= АInsertGroup;
end;

class function TfmFinClassEdit.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; АInsertGroup: Boolean): Integer;
var
  f: TfmFinClassEdit;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, АInsertGroup);
    f.InternalShowForm;
    Result:= f.FFinClassCode;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmFinClassEdit.DoApplyUpdates;
begin
  inherited DoApplyUpdates;
  FFinClassCode:= cdsDataFIN_CLASS_CODE.AsInteger;
end;

procedure TfmFinClassEdit.DoCancelUpdates;
begin
  inherited DoCancelUpdates;
  FFinClassCode:= 0;
end;

function TfmFinClassEdit.GetOriginalFormCaption: string;
begin
  Result:= OriginalFormCaptions[cdsDataIS_GROUP.AsBoolean] + ' - %s';
end;

procedure TfmFinClassEdit.actCopyNameToShortNameExecute(Sender: TObject);
begin
  inherited;
  CheckEditMode(cdsData);
  edtFinClassShortName.SetFocus;                        // Tiq dva reda sa s razmeneni mesta, za da moje pyrvo da zapishe poleto NAME,
  cdsDataSHORT_NAME.AsVariant:= cdsDataNAME.AsVariant;  // kato napusne kontrola mu i posle da kopira stoinostta mu v ShortName
end;

procedure TfmFinClassEdit.actCopyNameToShortNameUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (EditMode <> emReadOnly);
end;

class function TfmFinClassEdit.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmFinClassEdit.cdsDataBeforeApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;

procedure TfmFinClassEdit.actDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    EditMode,
    (Sender as TAction).ActionComponent as TControl,
    dotFinanceClass,
    cdsData);
end;

procedure TfmFinClassEdit.actDocUpdate(Sender: TObject);
begin
  inherited;
  actDoc.ImageIndex:= Ord(cdsDataHAS_DOC_ITEMS.AsBoolean);
end;

procedure TfmFinClassEdit.dmDocClientOnDataChanged(Sender: TObject);
begin
  dmDocClient.SetHasDocItemsField(cdsDataHAS_DOC_ITEMS);
end;

procedure TfmFinClassEdit.Initialize;
begin
  inherited;

  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  if (EditMode = emInsert) then
    dmDocClient.DSInitDoc(dotFinanceClass, dsData.DataSet);
end;

procedure TfmFinClassEdit.Finalize;
begin
  inherited;
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
  FOlddmDocClientOnDataChanged:= nil;
end;

procedure TfmFinClassEdit.actFormUpdate(Sender: TObject);
var
  ReadOnly: Boolean;
begin
  inherited;
  ReadOnly:= (EditMode = emReadOnly);
  edtFinClassLocalNo.Color:= ReadOnlyColors[ReadOnly];
  edtFinClassName.Color:= ReadOnlyColors[ReadOnly];
  edtFinClassShortName.Color:= ReadOnlyColors[ReadOnly];

  gbFinClass.Caption:= Format(' %s %s ', [SIdentificationOf, OriginalFormCaptions[cdsDataIS_GROUP.AsBoolean]]);
end;

procedure TfmFinClassEdit.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDataFIN_CLASS_CODE.AsInteger:= dmMain.SvrFinance.GetNewFinClassCode;
  cdsDataPARENT_FIN_CLASS_CODE.AsVariant:= OuterDataSet.FieldByName('FIN_CLASS_CODE').AsVariant;

  if (OuterDataSet.FieldByName('FIN_CLASS_CODE').AsInteger <> RootFinClassCode) then
    cdsDataPARENT_FULL_NO.AsVariant:= OuterDataSet.FieldByName('FIN_CLASS_FULL_NO').AsVariant;

  cdsDataFIN_CLASS_LOCAL_NO.AsInteger:=
    dmMain.SvrFinance.GetNewFinClassLocalNo(cdsDataPARENT_FIN_CLASS_CODE.AsInteger);

  cdsDataIS_GROUP.AsBoolean:= FInsertGroupFinClass;
end;

end.
