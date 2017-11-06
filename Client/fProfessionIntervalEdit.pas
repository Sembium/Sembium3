unit fProfessionIntervalEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, DBClient, AbmesClientDataSet,
  JvComponentBase, JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls,
  Mask, DBCtrls, fBaseFrame, fDBFrame, fFieldEditFrame, fDateIntervalFrame,
  AbmesDBCheckBox;

type
  TfmProfessionIntervalEdit = class(TBevelEditForm)
    frDateInterval: TfrDateIntervalFrame;
    lblDateInterval: TLabel;
    edtHourPrice: TDBEdit;
    lblHourPrice: TLabel;
    chkUsedByEmployees: TAbmesDBCheckBox;
    chkUsedByTeams: TAbmesDBCheckBox;
    procedure FormShow(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses uClientTypes, uClientUtils;

{$R *.dfm}

procedure TfmProfessionIntervalEdit.FormShow(Sender: TObject);
begin
  inherited;
  lblHourPrice.Caption:=
    edtHourPrice.Field.DisplayLabel;
end;

procedure TfmProfessionIntervalEdit.actFormUpdate(Sender: TObject);
begin
  inherited;
  edtHourPrice.ReadOnly:= (EditMode = emReadOnly);
  edtHourPrice.Color:= ReadOnlyColors[edtHourPrice.ReadOnly];
end;

end.
