unit fCompanyContact;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fBevelEditForm, Db, DBClient, ImgList, ActnList, StdCtrls, Buttons,
  ExtCtrls, Mask, DBCtrls, JvDBLookup, Menus, AbmesClientDataSet, JvButtons,
  JvExControls, JvComponent, JvCaptionButton, JvComponentBase, fEditForm,
  System.Actions;

type
  TfmCompanyContact = class(TEditForm)
    pnlMain: TPanel;
    pnlData: TPanel;
    pnlHideForPersonCompany: TPanel;
    lblOfficeName: TLabel;
    lblRepresentativeName: TLabel;
    cbOfficeName: TJvDBLookupCombo;
    cbRepresentativeName: TJvDBLookupCombo;
    lblContactType: TLabel;
    cbContactType: TJvDBLookupCombo;
    lblContact: TLabel;
    edtContact: TDBEdit;
    lblNotes: TLabel;
    edtNotes: TDBEdit;
    procedure actFormUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uCompanyClasses,
  uScalingUtils;

{$R *.DFM}

procedure TfmCompanyContact.actFormUpdate(Sender: TObject);
begin
  inherited;
  pnlHideForPersonCompany.Visible:= (OuterDataSet.FieldByName('_COMPANY_CLASS_CODE').AsInteger = CompanyClassToInt(ccFirm));
  if pnlHideForPersonCompany.Visible then
    Height:= ScalePixels(229)
  else
    Height:= ScalePixels(182);
end;

end.
