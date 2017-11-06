unit fEmployeeDisciplineEvent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, fBevelEditForm, DBCtrls, Mask,
  JvToolEdit, JvDBControls, JvDBLookup, AbmesFields, fBaseFrame, fDBFrame,
  fFieldEditFrame, fDateFieldEditFrame, JvExControls, JvComponent,
  JvComponentBase, JvCaptionButton, fEmployeeFieldEditFrame,
  fEmployeeFieldEditFrameBald, ComCtrls, ToolWin, fTreeNodeFieldEditFrame,
  fTreeOnlyNodeFieldEditFrame, fDiscEventTypeFieldEditFrame;

type
  TfmEmployeeDisciplineEvent = class(TBevelEditForm)
    lblDisciplineEventDate: TLabel;
    lblDisciplineEventComment: TLabel;
    edtDisciplineEventComment: TDBEdit;
    lblStatus: TLabel;
    edtStatus: TDBEdit;
    edtRating: TDBEdit;
    lblRating: TLabel;
    frDisciplineEventDate: TfrDateFieldEditFrame;
    frAuthorizeEmployee: TfrEmployeeFieldEditFrameBald;
    lblAuthorizeEmployee: TLabel;
    gbStornoInfo: TGroupBox;
    lblStornoTime: TLabel;
    lblStornoDate: TLabel;
    lblStornoEmployee: TLabel;
    frStornoDate: TfrDateFieldEditFrame;
    edtStornoTime: TDBEdit;
    frStornoEmployee: TfrEmployeeFieldEditFrameBald;
    pnlStornoButton: TPanel;
    btnStorno: TBitBtn;
    pnlStorned: TPanel;
    chbStorned: TCheckBox;
    actStorno: TAction;
    tlbDocs: TToolBar;
    btnDocs: TToolButton;
    gbCreateInfo: TGroupBox;
    lblCreateTime: TLabel;
    lblCreateDate: TLabel;
    lblCreateEmployee: TLabel;
    frCreateDate: TfrDateFieldEditFrame;
    edtCreateTime: TDBEdit;
    frCreateEmployee: TfrEmployeeFieldEditFrameBald;
    cbDisciplineEventState: TJvDBLookupCombo;
    lblDisciplineEventState: TLabel;
    frDiscEventType: TfrDiscEventTypeFieldEditFrame;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actStornoExecute(Sender: TObject);
    procedure btnDocsClick(Sender: TObject);
  private
    FStartStornoEmployeeCode: Integer;
    FCanModifyData: Boolean;
    StornoSavePoint: Variant;
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    procedure AddNewLikeCurrentDisciplineEvent(SetToFiltered: Boolean);
    procedure dmDocClientOnDataChanged(Sender: TObject);
  protected
    class function CanUseDocs: Boolean; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure DoCancelUpdates; override;
  public
    procedure Initialize; override;
    procedure Finalize; override;
  end;

implementation

uses
  dMain, uClientTypes, uClientUtils, AbmesDialogs, uUtils, uDocUtils,
  fDBDataForm, Math, fTreeSelectForm;

{$R *.dfm}

resourcestring
  SConfirmStorno = 'Анулиране с оставане на екран?';
  
{ TfmEmployeeDisciplineEvent }

procedure TfmEmployeeDisciplineEvent.FormCreate(Sender: TObject);
begin
  inherited;
  frDisciplineEventDate.FieldNames:= 'DISCIPLINE_EVENT_DATE';
  frDiscEventType.FieldNames:= 'DISC_EVENT_TYPE_CODE';
  frDiscEventType.TreeDetailSelection:= tdsInstance;
  frAuthorizeEmployee.FieldNames:= 'AUTHORIZE_EMPLOYEE_CODE';
  frCreateDate.FieldNames:= 'CREATE_DATE';
  frCreateEmployee.FieldNames:= 'CREATE_EMPLOYEE_CODE';
  frStornoDate.FieldNames:= 'STORNO_DATE';
  frStornoEmployee.FieldNames:= 'STORNO_EMPLOYEE_CODE';
end;

procedure TfmEmployeeDisciplineEvent.Initialize;
begin
  inherited;

  StornoSavePoint:= Null;
  FStartStornoEmployeeCode:= dsData.DataSet.FieldByName('STORNO_EMPLOYEE_CODE').AsInteger;
  FCanModifyData:=
    (EditMode = emInsert) or
    ( (EditMode = emEdit) and
      ((dsData.DataSet as TClientDataSet).UpdateStatus = usInserted) );

  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  if (EditMode = emInsert) then
    dmDocClient.DSInitDoc(dotEmployeeDisciplineEvent, dsData.DataSet);
end;

procedure TfmEmployeeDisciplineEvent.Finalize;
begin
  inherited;
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
end;

procedure TfmEmployeeDisciplineEvent.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frDisciplineEventDate) or
     (AFrame = frDiscEventType) or
     (AFrame = frAuthorizeEmployee) then
    begin
      AFrame.ReadOnly:= not FCanModifyData;
      Exit;
    end;  { if }

  if (AFrame = frCreateDate) or
     (AFrame = frCreateEmployee) or
     (AFrame = frStornoDate) or
     (AFrame = frStornoEmployee) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;  { if }

  inherited SetDBFrameReadOnly(AFrame);
end;

procedure TfmEmployeeDisciplineEvent.actFormUpdate(Sender: TObject);
var
  ro: Boolean;
begin
  inherited;

  ro:=
    (not FCanModifyData) or
    (EditMode = emInsert) or
    ( dsData.DataSet.FieldByName('OLD_DISCIPLINE_EVENT_CODE').IsNull and
      ((dsData.DataSet as TClientDataSet).UpdateStatus = usInserted) );
  cbDisciplineEventState.ReadOnly:= ro;
  cbDisciplineEventState.Color:= ReadOnlyColors[ro];

  ro:= not FCanModifyData;

  edtDisciplineEventComment.ReadOnly:= ro;

  edtDisciplineEventComment.Color:= ReadOnlyColors[ro];

  pnlStornoButton.Visible:=
    (EditMode = emEdit) and
    (dsData.DataSet.State = dsBrowse)  and
    ((dsData.DataSet as TClientDataSet).UpdateStatus <> usInserted) and
    dsData.DataSet.FieldByName('STORNO_EMPLOYEE_CODE').IsNull;

  pnlStorned.Visible:=
    (FStartStornoEmployeeCode > 0);

  btnDocs.ImageIndex:= dsData.DataSet.FieldByName('HAS_DOC_ITEMS').AsInteger;

  if dsData.DataSet.Active then
    case Sign(dsData.DataSet.FieldByName('RATING').AsInteger) of
      -1: edtRating.Font.Color:= clRed;
       0: edtRating.Font.Color:= clWindowText;
       1: edtRating.Font.Color:= clGreen;
    end;
end;

procedure TfmEmployeeDisciplineEvent.actStornoExecute(Sender: TObject);
var
  OldEmployeeDisciplineEventCode: Integer;
  SaveFiltered: Boolean;
begin
  inherited;

  case MessageDlgEx(SConfirmStorno, mtConfirmation, mbYesNoCancel, 0) of
    mrCancel:
      Abort;

    mrYes:
      begin
        StornoSavePoint:= (dsData.DataSet as TClientDataSet).SavePoint;

        with dsData.DataSet do
          begin
            DisableControls;
            try
              OldEmployeeDisciplineEventCode:= FieldByName('DISCIPLINE_EVENT_CODE').AsInteger;

              SaveFiltered:= Filtered;
              Filtered:= False;

              First;
              Locate('DISCIPLINE_EVENT_CODE', OldEmployeeDisciplineEventCode, []);

              CheckEditMode(dsData.DataSet);
              FieldByName('STORNO_EMPLOYEE_CODE').AsInteger:= LoginContext.UserCode;
              Post;

              AddNewLikeCurrentDisciplineEvent(SaveFiltered);

              FieldByName('OLD_DISCIPLINE_EVENT_CODE').AsInteger:= OldEmployeeDisciplineEventCode;
            finally
              EnableControls;
            end;  { try }
          end;  { with }

        FCanModifyData:= True;
      end;

    mrNo:
      begin
        CheckEditMode(dsData.DataSet);
        dsData.DataSet.FieldByName('STORNO_EMPLOYEE_CODE').AsInteger:= LoginContext.UserCode;
        dsData.DataSet.FieldByName('DIRECT_STORNO').AsBoolean:= True;

        ModalResult:= mrOK;
      end;
  end;
end;

procedure TfmEmployeeDisciplineEvent.AddNewLikeCurrentDisciplineEvent(SetToFiltered: Boolean);
var
  DisciplineEventDate: TDateTime;
  DisciplineEventType: Integer;
  AuthorizeEmploye: Integer;
  DisciplineEventComment: Variant;
  DocBranchCode: Variant;
  DocCode: Variant;
  DisciplineEventCode: Integer;
  HasDocItems: Variant;
begin
  with dsData.DataSet do
    begin
      DisciplineEventDate:= FieldByName('DISCIPLINE_EVENT_DATE').AsDateTime;
      DisciplineEventType:= FieldByName('DISC_EVENT_TYPE_CODE').AsInteger;
      AuthorizeEmploye:= FieldByName('AUTHORIZE_EMPLOYEE_CODE').AsInteger;
      DisciplineEventComment:= FieldByName('DISCIPLINE_EVENT_COMMENT').AsVariant;
      HasDocItems:= FieldByName('HAS_DOC_ITEMS').AsVariant;

      if FieldByName('DOC_CODE').IsNull then
        begin
          DocBranchCode:= Null;
          DocCode:= Null;
        end
      else
        begin
          DocBranchCode:= LoginContext.LocalBranchCode;
          DocCode:=
            dmDocClient.CreateDocLike(
              FieldByName('DOC_BRANCH_CODE').AsInteger, FieldByName('DOC_CODE').AsInteger, True);
        end;

      Append;
      DisciplineEventCode:= FieldByName('DISCIPLINE_EVENT_CODE').AsInteger;
      Cancel;

      Filtered:= SetToFiltered;

      Append;
      try
        FieldByName('DISCIPLINE_EVENT_CODE').AsInteger:= DisciplineEventCode;
        FieldByName('DISCIPLINE_EVENT_DATE').AsDateTime:= DisciplineEventDate;
        FieldByName('DISC_EVENT_TYPE_CODE').AsInteger:= DisciplineEventType;
        FieldByName('AUTHORIZE_EMPLOYEE_CODE').AsInteger:= AuthorizeEmploye;
        FieldByName('DISCIPLINE_EVENT_COMMENT').AsVariant:= DisciplineEventComment;
        FieldByName('DOC_BRANCH_CODE').AsVariant:= DocBranchCode;
        FieldByName('DOC_CODE').AsVariant:= DocCode;
        FieldByName('HAS_DOC_ITEMS').AsVariant:= HasDocItems;
      except
        Cancel;
        raise;
      end;  { try }
    end;  { with }
end;

class function TfmEmployeeDisciplineEvent.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmEmployeeDisciplineEvent.DoCancelUpdates;
begin
  inherited;

  if not VarIsNull(StornoSavePoint) then
    (dsData.DataSet as TClientDataSet).SavePoint:= StornoSavePoint;
end;

procedure TfmEmployeeDisciplineEvent.btnDocsClick(Sender: TObject);
var
  em: TEditMode;
begin
  inherited;

  if (EditMode = emReadOnly) or (not FCanModifyData) then
    em:= emReadOnly
  else
    em:= EditMode;

  dmDocClient.DSOpenDoc(em, (Sender as TControl), dotEmployeeDisciplineEvent, dsData.DataSet);
end;

procedure TfmEmployeeDisciplineEvent.dmDocClientOnDataChanged(
  Sender: TObject);
begin
  dmDocClient.SetHasDocItemsField(dsData.DataSet.FieldByName('HAS_DOC_ITEMS'));
end;

end.

