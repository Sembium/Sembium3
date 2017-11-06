unit fPrcDataConcreteOp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvComponentBase,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, fBaseFrame, fDBFrame,
  fFieldEditFrame, fTreeNodeFieldEditFrame, fTreeOnlyNodeFieldEditFrame,
  fProcessConcreteOperationFieldEditFrame, fTreeOnlyNomForm, AbmesFields,
  uClientTypes, dDocClient, uClientPrcData;

type
  TfmPrcDataConcreteOp = class(TEditForm)
    frProcessConcreteOperation: TfrProcessConcreteOperationFieldEditFrame;
    cdsProcessConcreteOperation: TAbmesClientDataSet;
    cdsProcessConcreteOperationPRC_CONCRETE_OP_NAME: TAbmesWideStringField;
    cdsProcessConcreteOperationPRC_CONCRETE_OP_SHORT_NAME: TAbmesWideStringField;
    cdsProcessConcreteOperationPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsProcessConcreteOperationPRODUCT_DOC_CODE: TAbmesFloatField;
    cdsProcessConcreteOperationPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    cdsProcessConcreteOperationPRC_CONCRETE_OP_FULL_NO: TAbmesWideStringField;
    cdsProcessConcreteOperationPRC_CONCR_OP_FORMATTED_FULL_NO: TAbmesWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure dsDataDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FIsPrcObjectSelected: Boolean;
    FIsConcreteOpExternallySet: Boolean;
  protected
    function GetApplyUpdatesEnabled: Boolean; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    procedure ChangeEditMode(var AEditMode: TEditMode); override;
    procedure Initialize; override;
  end;

implementation

uses
  fTreeSelectForm, fProcessConcreteOperationsTree, uClientUtils;

{$R *.dfm}

{ TfmPrcDataConcreteOp }

procedure TfmPrcDataConcreteOp.ChangeEditMode(var AEditMode: TEditMode);
begin
  inherited ChangeEditMode(AEditMode);
  if (AEditMode <> emInsert) then
    AEditMode:= emReadOnly;
end;

procedure TfmPrcDataConcreteOp.dsDataDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if Assigned(Field) and (Field.FieldName = 'PRC_CONCRETE_OP_CODE') then
    begin
      cdsProcessConcreteOperation.Params.ParamByName('PRC_CONCRETE_OP_CODE').Assign(
        dsData.DataSet.FieldByName('PRC_CONCRETE_OP_CODE'));

      cdsProcessConcreteOperation.Open;
      try
        dsData.DataSet.FieldByName('PRC_OBJECT_NO').Assign(cdsProcessConcreteOperationPRC_CONCRETE_OP_FULL_NO);
        dsData.DataSet.FieldByName('PRC_OBJECT_FORMATTED_NO').Assign(cdsProcessConcreteOperationPRC_CONCR_OP_FORMATTED_FULL_NO);
        dsData.DataSet.FieldByName('PRC_OBJECT_SHORT_NAME').Assign(cdsProcessConcreteOperationPRC_CONCRETE_OP_SHORT_NAME);
        dsData.DataSet.FieldByName('PRC_OBJECT_NAME').Assign(cdsProcessConcreteOperationPRC_CONCRETE_OP_NAME);
        dsData.DataSet.FieldByName('DOC_BRANCH_CODE').Assign(cdsProcessConcreteOperationPRODUCT_DOC_BRANCH_CODE);
        dsData.DataSet.FieldByName('DOC_CODE').Assign(cdsProcessConcreteOperationPRODUCT_DOC_CODE);
        dsData.DataSet.FieldByName('HAS_DOC_ITEMS').Assign(cdsProcessConcreteOperationPRODUCT_HAS_DOCUMENTATION);
        dsData.DataSet.FieldByName('PRC_RING_NO').Clear;
        dsData.DataSet.FieldByName('PRC_RING_LOCAL_NO').Clear;
      finally
        cdsProcessConcreteOperation.Close;
      end;  { try }
    end;  { if }
end;

procedure TfmPrcDataConcreteOp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FIsPrcObjectSelected then
    ModalResult:= mrOk;

  inherited;
end;

procedure TfmPrcDataConcreteOp.FormCreate(Sender: TObject);
begin
  inherited;
  frProcessConcreteOperation.TreeDetailSelection:= tdsInstance;
end;

procedure TfmPrcDataConcreteOp.FormShow(Sender: TObject);
var
  ChosenPrcObjectCode: Integer;
begin
  inherited;
  if (EditMode = emInsert) and
     (ShiftIsPressed or ControlIsPressed) and
     (not FIsConcreteOpExternallySet) then
    begin
      ChosenPrcObjectCode:= TfmProcessConcreteOperationsTree.ShowForm(dmDocClient, nil, emReadOnly, doNone, 0, tdsInstance);

      if (ChosenPrcObjectCode <> 0) then
        begin
          FIsPrcObjectSelected:= True;
          dsData.DataSet.Append;
          try
            dsData.DataSet.FieldByName('PRC_CONCRETE_OP_CODE').AsInteger:= ChosenPrcObjectCode;
            dsData.DataSet.Post;
          except
            dsData.DataSet.Cancel;
            raise;
          end;  { try }
        end;  { if }

      Height:= 0;
      Width:= 0;
      PostMessage(Handle, WM_CLOSE, 0, 0);
    end;  { if }
end;

function TfmPrcDataConcreteOp.GetApplyUpdatesEnabled: Boolean;
begin
  Result:= FIsPrcObjectSelected or inherited GetApplyUpdatesEnabled;
end;

procedure TfmPrcDataConcreteOp.Initialize;
begin
  inherited;
  FIsConcreteOpExternallySet:= not dsData.DataSet.FieldByName('PRC_CONCRETE_OP_CODE').IsNull;
end;

procedure TfmPrcDataConcreteOp.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frProcessConcreteOperation) then
    begin
      AFrame.ReadOnly:= FIsConcreteOpExternallySet;
      Exit;
    end;  { if }

  inherited SetDBFrameReadOnly(AFrame);
end;

end.
