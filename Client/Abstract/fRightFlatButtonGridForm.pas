unit fRightFlatButtonGridForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponent, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet,
  GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator,
  Buttons, StdCtrls, ExtCtrls;

type
  TRightFlatButtonGridForm = class(TGridForm)
    pnlRightButtons: TPanel;
    btnInsertRecord: TSpeedButton;
    btnDelRecord: TSpeedButton;
    btnEditRecord: TSpeedButton;
    procedure actEditRecordUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  fEditForm;

{$R *.dfm}

procedure TRightFlatButtonGridForm.actEditRecordUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled:= GetEditRecordEnabled;

  if GetGridRecordReadOnly then
    (Sender as TAction).Hint:= SReadOnlyCaption
  else
    (Sender as TAction).Hint:= SEditCaption;
end;

end.
