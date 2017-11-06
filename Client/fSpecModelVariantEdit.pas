unit fSpecModelVariantEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fBevelEditForm, Db, DBClient, AbmesClientDataSet, ImgList, ActnList,
  StdCtrls, Buttons, ExtCtrls, fBaseFrame, fDBFrame, fFieldEditFrame,
  Mask, DBCtrls, Menus, JvButtons,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, JvComponent,
  JvCaptionButton, JvComponentBase, System.Actions;

type
  TfmSpecModelVariantEdit = class(TBevelEditForm)
    gbQuantity: TGroupBox;
    edtMinQuantity: TDBEdit;
    edtMaxQuantity: TDBEdit;
    lblMinQuantity: TLabel;
    lblMaxQuantity: TLabel;
    frMainDept: TfrDeptFieldEditFrame;
    gbNotes: TGroupBox;
    edtNotes: TDBEdit;
    chbIsInactive: TDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure frMainDeptactFrameUpdate(Sender: TObject);
  private
    FNewRange: Boolean;
  protected
    procedure DoApplyUpdates; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    procedure Initialize; override;
  end;

implementation

uses
  uUtils, uClientTypes;

{$R *.DFM}

{ TfmSpecModelVariantEdit }

procedure TfmSpecModelVariantEdit.DoApplyUpdates;
begin
  CheckRequiredFields(dsData.DataSet,
    'MAIN_DEPT_NAME; MIN_TECH_QUANTITY; MAX_TECH_QUANTITY');

  inherited;
end;

procedure TfmSpecModelVariantEdit.FormCreate(Sender: TObject);
begin
  inherited;
  frMainDept.FieldNames:= 'MAIN_DEPT_CODE';
end;

procedure TfmSpecModelVariantEdit.Initialize;
begin
  inherited;

  FNewRange:=
    (EditMode = emInsert) and
     not dsData.DataSet.FieldByName('MAIN_DEPT_CODE').IsNull;

  if FNewRange then
    ActiveControl:= edtMaxQuantity;
end;

procedure TfmSpecModelVariantEdit.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frMainDept) then
    AFrame.ReadOnly:= FNewRange or (EditMode = emReadOnly)
  else
    inherited;
end;

procedure TfmSpecModelVariantEdit.frMainDeptactFrameUpdate(
  Sender: TObject);
begin
  inherited;
  edtMinQuantity.ReadOnly:=
    FNewRange or (EditMode = emReadOnly);
end;

end.
