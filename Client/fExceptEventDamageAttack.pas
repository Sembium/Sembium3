unit fExceptEventDamageAttack;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvComponentBase,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask;

type
  TfmExceptEventDamageAttack = class(TEditForm)
    bvlMain: TBevel;
    lblState: TLabel;
    edtState: TDBEdit;
    edtNo: TDBEdit;
    lblNo: TLabel;
    edtProductQuantity: TDBEdit;
    lblProductQuantity: TLabel;
    lblProposedPlanShiftWorkdays: TLabel;
    edtProposedPlanShiftWorkdays: TDBEdit;
    gbNotes: TGroupBox;
    moNotes: TDBMemo;
    btnNormalizeAttack: TBitBtn;
    actNormalize: TAction;
    procedure actFormUpdate(Sender: TObject);
    procedure actNormalizeUpdate(Sender: TObject);
    procedure actNormalizeExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uClientTypes, uClientUtils, AbmesDialogs, uUtils, DateUtils, uClientDateTime;

resourcestring
  SConfirmNormalize = 'Потвърдете Нормализирането';
  
{$R *.dfm}

procedure TfmExceptEventDamageAttack.actFormUpdate(Sender: TObject);
var
  ro: Boolean;
  ReadOnlyColor: TColor;
begin
  inherited;
  ro:= (EditMode = emReadOnly);
  ReadOnlyColor:= ReadOnlyColors[ro];

  edtProductQuantity.ReadOnly:= ro;
  edtProductQuantity.Color:= ReadOnlyColor;

  edtProposedPlanShiftWorkdays.ReadOnly:= ro;
  edtProposedPlanShiftWorkdays.Color:= ReadOnlyColor;

  moNotes.ReadOnly:= ro;
  moNotes.Color:= ReadOnlyColor;
end;

procedure TfmExceptEventDamageAttack.actNormalizeExecute(Sender: TObject);
var
  CurrentDateTime: TDateTime;
begin
  inherited;
  if (MessageDlgEx(SConfirmNormalize, mtConfirmation, mbOkCancel, 0) <> mrOK) then
    Abort;

  CheckEditMode(dsData.DataSet);

  CurrentDateTime:= ContextNow;
  dsData.DataSet.FieldByName('NORMALIZE_EMPLOYEE_CODE').AsInteger:= LoginContext.UserCode;
  dsData.DataSet.FieldByName('NORMALIZE_DATE').AsDateTime:= DateOf(CurrentDateTime);
  dsData.DataSet.FieldByName('NORMALIZE_TIME').AsDateTime:= TimeOf(CurrentDateTime);
end;

procedure TfmExceptEventDamageAttack.actNormalizeUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    dsData.DataSet.FieldByName('NORMALIZE_EMPLOYEE_CODE').IsNull;
end;

end.
