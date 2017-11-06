unit fExecuteServers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBottomButtonGridForm, JvButtons, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh,
  AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons,
  StdCtrls, ExtCtrls, uClientTypes, JvComponent, JvCaptionButton, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  Vcl.Menus, System.Actions;

type
  TfmExecuteServers = class(TBottomButtonGridForm)
    cdsGridDataEXECUTE_SERVER_CODE: TAbmesFloatField;
    cdsGridData_MAX_EXECUTE_SERVER_CODE: TAggregateField;
    cdsGridDataEXECUTE_SERVER_NAME: TAbmesWideStringField;
    cdsGridDataIS_UNAVAILABLE: TAbmesFloatField;
    cdsGridDataUNAVAILABLE_MESSAGE: TAbmesWideStringField;
    cdsGridData_IS_UNAVAILABLE: TAbmesWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
  end;

implementation

uses
  fExecuteServer, uUtils;

{$R *.dfm}

{ TfmExecuteServers }

procedure TfmExecuteServers.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmExecuteServer;
end;

procedure TfmExecuteServers.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  if cdsGridDataIS_UNAVAILABLE.AsBoolean then
    cdsGridData_IS_UNAVAILABLE.AsString:=
      '  ' + cdsGridDataIS_UNAVAILABLE.DisplayText + '     ' + sLineBreak + cdsGridDataUNAVAILABLE_MESSAGE.AsString;
end;

procedure TfmExecuteServers.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataEXECUTE_SERVER_CODE.AsInteger:=
    VarToInt(cdsGridData_MAX_EXECUTE_SERVER_CODE.AsVariant) + 1;
  cdsGridDataIS_UNAVAILABLE.AsBoolean:= False;
end;

function TfmExecuteServers.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  Result:= TfmExecuteServer.ShowForm(dmDocClient, cdsGridData, AEditMode);
end;

end.
