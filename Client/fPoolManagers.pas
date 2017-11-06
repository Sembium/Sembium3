unit fPoolManagers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponentBase, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, GridsEh,
  DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons,
  StdCtrls, ExtCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, Vcl.Menus, System.Actions, EhLibVCL, DBAxisGridsEh;

type
  [SkipRefreshConfirmation]
  TfmPoolManagers = class(TGridForm)
    cdsGridDataOBJ_NAME: TAbmesWideStringField;
    btnResetPoolManager: TBitBtn;
    actResetPoolManager: TAction;
    cdsGridDataINSTANCES_COUNT: TAbmesFloatField;
    cdsGridDataIN_USE_INSTANCES_COUNT: TAbmesFloatField;
    cdsGridDataMIN_INSTANCES: TAbmesFloatField;
    cdsGridDataMAX_INSTANCES: TAbmesFloatField;
    cdsGridDataTIMEOUT: TAbmesFloatField;
    cdsGridData_TIMEOUT: TAbmesFloatField;
    cdsGridDataOBJ_CLASS_NAME: TAbmesWideStringField;
    cdsGridDataMODULE_IDENTIFIER: TAbmesWideStringField;
    cdsGridData_SUM_INSTANCES_COUNT: TAggregateField;
    procedure actResetPoolManagerExecute(Sender: TObject);
    procedure actResetPoolManagerUpdate(Sender: TObject);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  dMain, Math, uUtils;

const
  dmNonDbUtilsClassName = 'TdmNonDbUtils';

{$R *.dfm}

{ TfmPoolManagers }

procedure TfmPoolManagers.actResetPoolManagerExecute(Sender: TObject);
var
  SavedCursor: TCursor;
begin
  inherited;

  SavedCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    dmMain.SvrNonDbUtils.ResetPoolManager(cdsGridDataOBJ_CLASS_NAME.AsString, cdsGridDataOBJ_NAME.AsString);
    RefreshDataSet(cdsGridData);
  finally
    Screen.Cursor:= SavedCursor;
  end;  { try }
end;

procedure TfmPoolManagers.actResetPoolManagerUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (not cdsGridData.IsEmpty) and
    (cdsGridDataOBJ_CLASS_NAME.AsString <> '') and
    (cdsGridDataOBJ_NAME.AsString <> dmNonDbUtilsClassName);
end;

procedure TfmPoolManagers.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  if cdsGridDataTIMEOUT.IsNull then
    cdsGridData_TIMEOUT.Clear
  else
    cdsGridData_TIMEOUT.AsInteger:=
      RealRound((cdsGridDataTIMEOUT.AsInteger / 1000));
end;

end.
