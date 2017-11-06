unit fBaseGroup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, DBClient, AbmesClientDataSet, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, JvComponent,
  JvCaptionButton;

type
  TfmBaseGroup = class(TBevelEditForm)
    edtBaseGroupNo: TDBEdit;
    lblBaseGroupNo: TLabel;
    edtBaseGroupName: TDBEdit;
    lblBaseGroupName: TLabel;
    procedure actFormUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Initialize; override;
  end;

implementation

uses
  uClientUtils, uClientTypes, uDocUtils;

{$R *.dfm}

{ TfmBaseGroup }

procedure TfmBaseGroup.actFormUpdate(Sender: TObject);
begin
  inherited;
  edtBaseGroupName.ReadOnly:= (EditMode = emReadOnly);
  edtBaseGroupName.Color:= ReadOnlyColors[(EditMode = emReadOnly)];
end;

procedure TfmBaseGroup.Initialize;
begin
  inherited;
  if (EditMode = emInsert) then
    dmDocClient.DSInitDoc(dotBaseGroup, dsData.DataSet);
end;

end.
