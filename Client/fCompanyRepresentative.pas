unit fCompanyRepresentative;
 
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fEditForm, Db, DBClient, ImgList, ActnList, StdCtrls, Buttons, ExtCtrls,
  fBevelEditForm, Mask, DBCtrls, JvDBLookup, AbmesDBCheckBox,
  AbmesClientDataSet, Menus, JvButtons, JvExControls, JvComponent,
  JvCaptionButton, JvComponentBase, JvExStdCtrls, JvDBCombobox;

type
  TfmCompanyRepresentative = class(TBevelEditForm)
    edtFirstName: TDBEdit;
    lblFirstName: TLabel;
    edtMiddleName: TDBEdit;
    edtLastName: TDBEdit;
    lblMiddleName: TLabel;
    lblLastName: TLabel;
    lblOffice: TLabel;
    cbOffice: TJvDBLookupCombo;
    lblOccupaion: TLabel;
    edtOccupaion: TDBEdit;
    lblEGN: TLabel;
    edtEGN: TDBEdit;
    lblLanguage: TLabel;
    cbLanguage: TJvDBLookupCombo;
    cbGender: TJvDBComboBox;
    lblGender: TLabel;
    edtILastName: TDBEdit;
    lblILastName: TLabel;
    edtIMiddleName: TDBEdit;
    lblIMiddleName: TLabel;
    edtIFirstName: TDBEdit;
    lblIFirstName: TLabel;
    actCopyName: TAction;
    btnCopyName: TSpeedButton;
    procedure actFormUpdate(Sender: TObject);
    procedure actCopyNameUpdate(Sender: TObject);
    procedure actCopyNameExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses uUserActivityConsts, uClientUtils, uClientTypes, uUtils;

{$R *.DFM}

procedure TfmCompanyRepresentative.actCopyNameExecute(Sender: TObject);
begin
  inherited;

  CheckEditMode(dsData.DataSet);
  dsData.DataSet.UpdateRecord;
  dsData.DataSet.FieldByName('I_FIRST_NAME').Assign(dsData.DataSet.FieldByName('FIRST_NAME'));
  dsData.DataSet.FieldByName('I_MIDDLE_NAME').Assign(dsData.DataSet.FieldByName('MIDDLE_NAME'));
  dsData.DataSet.FieldByName('I_LAST_NAME').Assign(dsData.DataSet.FieldByName('LAST_NAME'));
end;

procedure TfmCompanyRepresentative.actCopyNameUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly);
end;

procedure TfmCompanyRepresentative.actFormUpdate(Sender: TObject);
begin
  inherited;

  edtEGN.ReadOnly:= not IsEGNVisible;
  edtEGN.Color:= ReadOnlyColors[edtEGN.ReadOnly];
end;

end.
