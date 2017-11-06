unit fSpecDetail;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fBevelEditForm, Db, DBClient, AbmesClientDataSet, ImgList, ActnList,
  StdCtrls, Buttons, ExtCtrls, DBCtrls, fBaseFrame, fDBFrame,
  fFieldEditFrame, Mask, uClientTypes,
  AbmesDBCheckBox, Menus, JvButtons, dDocClient, fTreeNodeFieldEditFrame,
  fProductFieldEditFrame, fDateFieldEditFrame, JvComponent, JvCaptionButton,
  JvComponentBase;

type
  TfmSpecDetail = class(TBevelEditForm)
    lblNoAsText: TLabel;
    edtNoAsText: TDBEdit;
    lblDetailTechQuantity: TLabel;
    edtDetailTechQuantity: TDBEdit;
    lblTotalDetailTechQuantity: TLabel;
    edtTotalDetailTechQuantity: TDBEdit;
    txtDetailTechMeasure: TDBText;
    lblNotes: TLabel;
    edtNotes: TDBEdit;
    pnlStructChange: TPanel;
    bvlStructChange: TBevel;
    pnlStructChangeComboBox: TPanel;
    chbStructChange: TAbmesDBCheckBox;
    edtStructChangeDate: TDBEdit;
    lblStructChangeDate: TLabel;
    lblStructChangeHour: TLabel;
    pnlAnnulButton: TPanel;
    btnAnnul: TBitBtn;
    pnlAnnuled: TPanel;
    chbAnnuled: TCheckBox;
    actAnnul: TAction;
    chbIsForSingleUse: TAbmesDBCheckBox;
    edtConstructionNotes: TDBEdit;
    lblConstructionNotes: TLabel;
    frDetail: TfrProductFieldEditFrame;
    chbIsComplete: TAbmesDBCheckBox;
    frStructChangeDate: TfrDateFieldEditFrame;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actAnnulExecute(Sender: TObject);
  private
    FEditQuantityOnly: Boolean;
  protected
    procedure DoApplyUpdates; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function IsRoot: Boolean; virtual;
    function CheckDetailQuantity: Boolean; virtual;

    property EditQuantityOnly: Boolean read FEditQuantityOnly;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      AEditQuantityOnly: Boolean = False); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      AEditQuantityOnly: Boolean = False): Boolean;
    procedure Initialize; override;
  end;

implementation

uses
  fTreeSelectForm, uUtils, uClientUtils, fDataForm;

{$R *.DFM}

{ TfmSpecDetail }

procedure TfmSpecDetail.DoApplyUpdates;
begin
  CheckRequiredFields(dsData.DataSet, 'DETAIL_NAME');

  if (not IsRoot) and CheckDetailQuantity then
    CheckRequiredFields(dsData.DataSet, 'DETAIL_TECH_QUANTITY');

  inherited;
end;

procedure TfmSpecDetail.FormCreate(Sender: TObject);
begin
  inherited;
  frDetail.FieldNames:= 'DETAIL_CODE';
  frDetail.TreeDetailSelection:= tdsInstance;
  frStructChangeDate.FieldNames:= 'STRUCT_CHANGE_DATE';
end;

procedure TfmSpecDetail.actFormUpdate(Sender: TObject);
var
  ro: Boolean;
  AnnulEmployeeField: TField;
  Annuled: Boolean;
begin
  inherited;

  ro:=
    (EditMode = emReadOnly) or
    FEditQuantityOnly;
  edtNotes.ReadOnly:= ro;
  edtNotes.Color:= ReadOnlyColors[ro];
  chbIsComplete.ReadOnly:= ro;

  with edtDetailTechQuantity do
    begin
      ro:= IsRoot or (EditMode = emReadOnly);
      ReadOnly:= ro;
      TabStop:= not ro;
      Color:= ReadOnlyColors[ro];
    end;   { with }

  with edtConstructionNotes do
    begin
      ro:= IsRoot or (EditMode = emReadOnly);
      ReadOnly:= ro;
      TabStop:= not ro;
      Color:= ReadOnlyColors[ro];
    end;   { with }

  chbStructChange.ReadOnly:= (EditMode = emReadOnly);

// za da se vkluchi anuliraneto triabva da se vkluchi sledvashtia red
//  AnnulEmployeeField:= dsData.DataSet.FindField('ANNUL_EMPLOYEE_CODE');
// a tozi da se iztrie
  AnnulEmployeeField:= nil;
//////////
  Annuled:= Assigned(AnnulEmployeeField) and (not AnnulEmployeeField.IsNull);

  pnlAnnulButton.Visible:=
    (EditMode <> emReadOnly) and
    Assigned(AnnulEmployeeField) and
    (not Annuled);
  pnlAnnuled.Visible:=
    (EditMode <> emReadOnly) and
    Assigned(AnnulEmployeeField) and
    Annuled;

//  chbIsForSingleUse.ReadOnly:= (EditMode = emReadOnly);
end;

procedure TfmSpecDetail.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frDetail) then
    AFrame.ReadOnly:=
      IsRoot or
      (EditMode = emReadOnly) or
      EditQuantityOnly
  else
    begin
      if (AFrame = frStructChangeDate) then
        AFrame.ReadOnly:= True
      else
        inherited;
    end;
end;

function TfmSpecDetail.IsRoot: Boolean;
begin
  Result:= dsData.DataSet.FieldByName('PARENT_SPEC_LINE_CODE').IsNull;
end;

procedure TfmSpecDetail.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; AEditQuantityOnly: Boolean);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode);
  FEditQuantityOnly:= AEditQuantityOnly;
end;

class function TfmSpecDetail.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; AEditQuantityOnly: Boolean): Boolean;
var
  f: TfmSpecDetail;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, AEditQuantityOnly);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmSpecDetail.Initialize;
begin
  inherited;

  if FEditQuantityOnly then
    ActiveControl:= edtDetailTechQuantity;
end;

function TfmSpecDetail.CheckDetailQuantity: Boolean;
begin
  Result:= True;
end;

procedure TfmSpecDetail.FormShow(Sender: TObject);
begin
  inherited;

  actForm.Update;
  if (not edtDetailTechQuantity.ReadOnly) and
     (EditMode <> emInsert) then
    ActiveControl:= edtDetailTechQuantity;
end;

procedure TfmSpecDetail.actAnnulExecute(Sender: TObject);
begin
  inherited;

  CheckEditMode(dsData.DataSet);
  dsData.DataSet.FieldByName('ANNUL_EMPLOYEE_CODE').AsInteger:=
    LoginContext.UserCode;
end;

end.
