unit fProcessAction;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, DBClient, AbmesClientDataSet, JvComponentBase,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask,
  AbmesDBCheckBox, ComCtrls, ToolWin;

type
  TfmProcessAction = class(TBevelEditForm)
    edtProcessActionNo: TDBEdit;
    lblNo: TLabel;
    edtProcessActionName: TDBEdit;
    lblComputerName: TLabel;
    edtProcessActionAbbrev: TDBEdit;
    lblMaxAllowedConnections: TLabel;
    tbDocButton: TToolBar;
    btnDoc: TToolButton;
    actDoc: TAction;
    gbApplicability: TGroupBox;
    chbIsBaseAction: TAbmesDBCheckBox;
    chbIsConcreteAction: TAbmesDBCheckBox;
    chbIsProjectAction: TAbmesDBCheckBox;
    procedure actFormUpdate(Sender: TObject);
    procedure actDocExecute(Sender: TObject);
    procedure actDocUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uClientTypes, uClientUtils, uDocUtils, uUtils;

{$R *.dfm}

{ TfmProcessAction }

procedure TfmProcessAction.actDocExecute(Sender: TObject);
begin
  inherited;
  if (EditMode = emEdit) then
    CheckEditMode(dsData.DataSet);

  dmDocClient.DSOpenDoc(
    EditMode,
    (Sender as TAction).ActionComponent as TControl,
    dotProcessAction,
    dsData.DataSet);
end;

procedure TfmProcessAction.actDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(dsData.DataSet.FieldByName('HAS_DOC_ITEMS').AsBoolean);
end;

procedure TfmProcessAction.actFormUpdate(Sender: TObject);
var
  ro: Boolean;
begin
  inherited;

  ro:= (EditMode = emReadOnly);
  SetControlsReadOnly(ro, [
    edtProcessActionNo,
    edtProcessActionName,
    edtProcessActionAbbrev]);

  chbIsConcreteAction.Enabled:= not ro;
  chbIsProjectAction.Enabled:= not ro;
end;

end.
