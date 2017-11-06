unit fProfessionKinds;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvButtons, DB, AbmesFields, ParamDataSet,
  ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid,
  ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  fBottomButtonGridForm, JvComponent, JvCaptionButton, DBGridEhGrouping, Menus;

type
  TfmProfessionKinds = class(TBottomButtonGridForm)
    cdsGridDataPROFESSION_KIND_CODE: TAbmesFloatField;
    cdsGridDataPROFESSION_KIND_NO: TAbmesFloatField;
    cdsGridDataPROFESSION_KIND_NAME: TAbmesWideStringField;
    cdsGridDataPROFESSION_TYPE_CODE: TAbmesFloatField;
    cdsGridData_MAX_PROFESSION_KIND_CODE: TAggregateField;
    cdsProfessionTypes: TAbmesClientDataSet;
    cdsProfessionTypesPROFESSION_TYPE_CODE: TAbmesFloatField;
    cdsProfessionTypesPROFESSION_TYPE_NO: TAbmesFloatField;
    cdsProfessionTypesPROFESSION_TYPE_NAME: TAbmesWideStringField;
    cdsProfessionTypesPROFESSION_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridData_PROFESSION_TYPE_NAME: TAbmesWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  end;

implementation

uses
  dMain, fProfessionKind, uUtils;

{$R *.dfm}

{ TfmProfessionKinds }

procedure TfmProfessionKinds.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmProfessionKind;
end;

procedure TfmProfessionKinds.OpenDataSets;
begin
  cdsProfessionTypes.Open;
  inherited;
end;

procedure TfmProfessionKinds.CloseDataSets;
begin
  inherited;
  cdsProfessionTypes.Close;
end;

procedure TfmProfessionKinds.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataPROFESSION_KIND_CODE.AsInteger:=
    VarToInt(cdsGridData_MAX_PROFESSION_KIND_CODE.Value) + 1;
end;

end.
 
