unit fProductLocations;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBottomButtonGridForm, Menus, JvButtons, ParamDataSet,
  ActnList, DB, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid,
  ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  AbmesFields, JvComponent, JvCaptionButton;

type
  TfmProductLocations = class(TBottomButtonGridForm)
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataDEPT_CODE: TAbmesFloatField;
    cdsGridDataSTORE_CODE: TAbmesFloatField;
    cdsGridDataDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataDEPT_NAME: TAbmesWideStringField;
    cdsGridData_DEPT_FULL_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataIS_INHERITED: TAbmesFloatField;                                           
    cdsGridDataPRODUCT_LEVEL: TAbmesFloatField;
    cdsGridDataSTORE_FULL_NAME: TAbmesWideStringField;
    procedure cdsGridDataDEPT_CODEChange(Sender: TField);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
    procedure cdsGridDataAfterPost(DataSet: TDataSet);
    procedure cdsGridDataAfterDelete(DataSet: TDataSet);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure cdsGridDataSTORE_CODEChange(Sender: TField);
  private
    FProductLevel: Integer;
  protected
    function GetGridRecordReadOnly: Boolean; override;
    function GetDelRecordEnabled: Boolean; override;
  public
    ChangeProc: procedure of object;
  end;

implementation

uses
  dMain, fProductLocationEdit, uUtils, uColorConsts, uTreeClientUtils;

{$R *.dfm}

{ TfmProductLocations }

procedure TfmProductLocations.cdsGridDataDEPT_CODEChange(Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(cdsGridDataDEPT_CODE,
    cdsGridDataDEPT_NAME, cdsGridDataDEPT_IDENTIFIER);
end;

procedure TfmProductLocations.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  if cdsGridDataDEPT_CODE.IsNull then
    cdsGridData_DEPT_FULL_IDENTIFIER.Clear
  else
    cdsGridData_DEPT_FULL_IDENTIFIER.AsString:=
      Format('%s - %s', [cdsGridDataDEPT_IDENTIFIER.AsString, cdsGridDataDEPT_NAME.AsString]);
end;

procedure TfmProductLocations.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmProductLocationEdit;
end;

procedure TfmProductLocations.cdsGridDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  CheckRequiredField(cdsGridDataDEPT_IDENTIFIER);
end;

procedure TfmProductLocations.cdsGridDataAfterPost(DataSet: TDataSet);
begin
  inherited;
  ChangeProc;
end;

procedure TfmProductLocations.cdsGridDataAfterDelete(DataSet: TDataSet);
begin
  inherited;
  ChangeProc;
end;

procedure TfmProductLocations.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataIS_INHERITED.AsBoolean:= False;
  cdsGridDataPRODUCT_LEVEL.AsInteger:= FProductLevel;
end;

function TfmProductLocations.GetGridRecordReadOnly: Boolean;
begin
  Result:=
    (inherited GetGridRecordReadOnly) or
    cdsGridDataIS_INHERITED.AsBoolean;
end;

function TfmProductLocations.GetDelRecordEnabled: Boolean;
begin
  Result:=
    (inherited GetDelRecordEnabled) and
    (not cdsGridDataIS_INHERITED.AsBoolean);
end;

procedure TfmProductLocations.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if cdsGridDataIS_INHERITED.AsBoolean and
     not (gdSelected in State) then
    Background:= ccGridTreeInheritedItem;
end;

procedure TfmProductLocations.cdsGridDataAfterOpen(DataSet: TDataSet);
begin
  inherited;

  FProductLevel:= MaxInt;

  with cdsGridData do
    if not (Bof and Eof) then
    begin
      DisableControls;
      try
        Last;

        if not cdsGridDataIS_INHERITED.AsBoolean then
          FProductLevel:= cdsGridDataPRODUCT_LEVEL.AsInteger;

        First;
      finally
        EnableControls;
      end;   { try }
    end;   { with }
end;

procedure TfmProductLocations.cdsGridDataSTORE_CODEChange(Sender: TField);
begin
  inherited;
  cdsGridDataSTORE_FULL_NAME.AsString:= GetDeptFullName(cdsGridDataSTORE_CODE.AsInteger);
end;

end.
