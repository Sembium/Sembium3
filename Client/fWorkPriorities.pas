unit fWorkPriorities;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponent, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet,
  GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator,
  Buttons, StdCtrls, ExtCtrls, fBottomButtonGridForm;

type
  TfmWorkPriorities = class(TBottomButtonGridForm)
    cdsGridDataWORK_PRIORITY_CODE: TAbmesFloatField;
    cdsGridDataWORK_PRIORITY_NO: TAbmesFloatField;
    cdsGridDataWORK_PRIORITY_NAME: TAbmesWideStringField;
    cdsGridData_MAX_WORK_PRIORITY_CODE: TAggregateField;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  dMain, fWorkPriority, uUtils;

{$R *.dfm}

procedure TfmWorkPriorities.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmWorkPriority;
end;

procedure TfmWorkPriorities.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataWORK_PRIORITY_CODE.AsInteger:=
    VarToInt(cdsGridData_MAX_WORK_PRIORITY_CODE.AsVariant) + 1;
end;

end.
