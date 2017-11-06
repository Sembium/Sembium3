unit fDocItemSysRole;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, StdCtrls, DB, DBClient, AbmesClientDataSet,
  JvComponentBase, JvCaptionButton, ActnList, Buttons, ExtCtrls, DBCtrls,
  JvExControls, JvComponent, JvDBLookup, AbmesFields, Mask, fBaseFrame,
  fDBFrame, fFieldEditFrame, fSysRoleFieldEditFrame, fSysRoleFieldEditFrameBald,
  uSysRoleClientUtils;

type
  TfmDocItemSysRole = class(TBevelEditForm)
    lblSysRole: TLabel;
    lblDocItemAccessLevel: TLabel;
    cbDocItemAccessLevel: TJvDBLookupCombo;
    frSysRole: TfrSysRoleFieldEditFrameBald;
    procedure actFormUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure SaveDocsSavePoint; override;
    procedure RevertDocsToSavePoint; override;
  public
    { Public declarations }
  end;

implementation

uses
  uClientUtils, uClientTypes;

{$R *.dfm}

{ TfmDocItemSysRole }

procedure TfmDocItemSysRole.actFormUpdate(Sender: TObject);
var
  Color: TColor;
begin
  inherited;
  Color:= ReadOnlyColors[EditMode = emReadOnly];
  cbDocItemAccessLevel.Color:= Color;
end;

procedure TfmDocItemSysRole.FormCreate(Sender: TObject);
begin
  inherited;
  frSysRole.SysRoleTypeSelection:= srtDocItems;
end;

procedure TfmDocItemSysRole.RevertDocsToSavePoint;
begin
  // do not call inherited
end;

procedure TfmDocItemSysRole.SaveDocsSavePoint;
begin
  // do not call inherited
end;

end.
