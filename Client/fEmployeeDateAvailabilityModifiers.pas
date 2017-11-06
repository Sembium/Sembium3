unit fEmployeeDateAvailabilityModifiers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fRightFlatButtonGridForm, JvComponent, JvCaptionButton, DB,
  AbmesFields, ParamDataSet, ActnList, DBClient,
  AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin,
  DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls, uClientTypes,
  JvComponentBase;

type
  TfmEmployeeDateAvailabilityModifiers = class(TRightFlatButtonGridForm)
    actShowStorno: TAction;
    sepShowStorno: TToolButton;
    btnShowStorno: TSpeedButton;
    tlbEmpAvailModifierDocs: TToolBar;
    btnEmpAvailModifierDocs: TToolButton;
    sepEmpAvailModifierDocs: TToolButton;
    procedure actInsertRecordExecute(Sender: TObject);
    procedure actShowStornoUpdate(Sender: TObject);
    procedure actShowStornoExecute(Sender: TObject);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure btnEmpAvailModifierDocsClick(Sender: TObject);
  private
    FEmployeeFrameAllEmployees: TDataSet;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetGridRecordReadOnly: Boolean; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
  public
    property EmployeeFrameAllEmployees: TDataSet write FEmployeeFrameAllEmployees;
  end;

implementation

uses
  uColorConsts, fEmployeeDateAvailabilityModifier, uDocUtils,
  uUserActivityConsts, uUtils;

{$R *.dfm}

resourcestring
  SStornoCaption = 'Ан';

{ TfmEmployeeDateAvailabilityModifiers }

procedure TfmEmployeeDateAvailabilityModifiers.OpenDataSets;
begin
//  inherited;  do nothing
end;

function TfmEmployeeDateAvailabilityModifiers.ShowEditForm(
  AEditMode: TEditMode): Boolean;
begin
  Result:=
    TfmEmployeeDateAvailabilityModifier.ShowForm(dmDocClient, dsGridData.DataSet, AEditMode, doNone,
      FEmployeeFrameAllEmployees);
end;

procedure TfmEmployeeDateAvailabilityModifiers.CloseDataSets;
begin
//  inherited;  do nothing
end;

procedure TfmEmployeeDateAvailabilityModifiers.actShowStornoUpdate(
  Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:=
    dsGridData.DataSet.Active;

  if Assigned((dsGridData.DataSet as TClientDataSet).DataSetField) and
     (dsGridData.DataSet as TClientDataSet).DataSetField.DataSet.Active and
     ((dsGridData.DataSet as TClientDataSet).DataSetField.DataSet.FieldByName('_STORNO_EMP_AVAIL_MOD_COUNT').AsInteger > 0) then
    (Sender as TAction).Caption:=
      IntToStr((dsGridData.DataSet as TClientDataSet).DataSetField.DataSet.FieldByName('_STORNO_EMP_AVAIL_MOD_COUNT').AsInteger) + SStornoCaption
  else
    (Sender as TAction).Caption:= SStornoCaption;
end;

procedure TfmEmployeeDateAvailabilityModifiers.actInsertRecordExecute(
  Sender: TObject);
begin
  LoginContext.CheckUserActivity(uaEmployeeAvailabilityModifiersEdit);
  inherited;
end;

procedure TfmEmployeeDateAvailabilityModifiers.actShowStornoExecute(
  Sender: TObject);
var
  b: TBookmark;
begin
  inherited;

  with Sender as TAction do
    begin
      Checked:= not Checked;

      with dsGridData.DataSet do
        begin
          if FieldByName('STORNO_EMPLOYEE_CODE').IsNull then
            b:= Bookmark
          else
            b:= EmptyBookmark;
          try
            Filtered:= not Checked;
          finally
            if not IsBookmarkEmpty(b) then
              Bookmark:= b;
          end;  { try }
        end;  { with }
    end;  { with }
end;

procedure TfmEmployeeDateAvailabilityModifiers.grdDataGetCellParams(
  Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if not dsGridData.DataSet.FieldByName('STORNO_EMPLOYEE_CODE').IsNull then
    Background:= ccAnnuledObjectBackground;
end;

procedure TfmEmployeeDateAvailabilityModifiers.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmEmployeeDateAvailabilityModifier;
end;

function TfmEmployeeDateAvailabilityModifiers.GetGridRecordReadOnly: Boolean;
begin
  Result:=
    inherited GetGridRecordReadOnly or
    not LoginContext.HasUserActivity(uaEmployeeAvailabilityModifiersEdit);
end;

procedure TfmEmployeeDateAvailabilityModifiers.actFormUpdate(
  Sender: TObject);
begin
  inherited;
  btnEmpAvailModifierDocs.ImageIndex:= dsGridData.DataSet.FieldByName('HAS_DOC_ITEMS').AsInteger;
end;

procedure TfmEmployeeDateAvailabilityModifiers.btnEmpAvailModifierDocsClick(
  Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, (Sender as TControl), dotEmpAvailModifier, dsGridData.DataSet);
end;

end.
