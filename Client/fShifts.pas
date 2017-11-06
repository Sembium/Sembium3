unit fShifts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvButtons, DB, AbmesFields, ParamDataSet,
  ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid,
  ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  JvComponent, JvCaptionButton, JvComponentBase;

type
  TfmShifts = class(TGridForm)
    cdsGridDataSHIFT_CODE: TAbmesFloatField;
    cdsGridDataSHIFT_NAME: TAbmesWideStringField;
    cdsGridDataSHIFT_ABBREV: TAbmesWideStringField;
    cdsGridData_MAX_SHIFT_CODE: TAggregateField;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  fShift, dMain, uUtils;

{$R *.dfm}

{ TfmShifts }

procedure TfmShifts.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmShift;
end;

procedure TfmShifts.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataSHIFT_CODE.AsInteger:=
    VarToInt(cdsGridData_MAX_SHIFT_CODE.AsVariant) + 1;
end;

end.
