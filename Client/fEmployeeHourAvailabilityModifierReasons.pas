unit fEmployeeHourAvailabilityModifierReasons;
                                  
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBottomButtonGridForm, JvComponent, JvCaptionButton, DB,
  AbmesFields, ParamDataSet, ActnList, DBClient,
  AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin,
  DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls;

type
  TfmEmployeeHourAvailabilityModifierReasons = class(TBottomButtonGridForm)
    cdsGridDataEMP_HOUR_AVAIL_MOD_REASON_CODE: TAbmesFloatField;
    cdsGridDataEMP_HOUR_AVAIL_MOD_REASON_NAME: TAbmesWideStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  dMain, fEmployeeHourAvailabilityModifierReason;

{$R *.dfm}

procedure TfmEmployeeHourAvailabilityModifierReasons.FormCreate(
  Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmEmployeeHourAvailabilityModifierReason;
end;

end.
