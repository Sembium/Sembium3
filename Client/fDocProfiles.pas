unit fDocProfiles;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, fMasterDetailForm, DBGridEhGrouping, ExtCtrls, Menus, DB, AbmesFields, ParamDataSet,
  ActnList, DBClient, AbmesClientDataSet, Buttons, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls,
  ColorNavigator, StdCtrls, fDocProfile, uClientTypes, fGridForm, fBaseForm;

type
  [DetailEditFormClass(TfmDocProfile)]
  [CanUseDocs]
  TfmDocProfiles = class(TMasterDetailForm)
    cdsGridDataDOC_ITEM_TEMPLATE_TYPE_CODE: TAbmesFloatField;
    cdsGridDataDOC_ITEM_TEMPLATE_TYPE_NO: TAbmesFloatField;
    cdsGridDataDOC_ITEM_TEMPLATE_TYPE_NAME: TAbmesWideStringField;
    lblDocItemTemplateTypes: TLabel;
    lblDocProfiles: TLabel;
    cdsDetailDOC_PROFILE_CODE: TAbmesFloatField;
    cdsDetailDOC_ITEM_TEMPLATE_TYPE_CODE: TAbmesFloatField;
    cdsDetailDOC_PROFILE_NO: TAbmesFloatField;
    cdsDetailDOC_PROFILE_NAME: TAbmesWideStringField;
    cdsDetailDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDetailDOC_CODE: TAbmesFloatField;
    cdsDetail_MAX_DOC_PROFILE_NO: TAggregateField;
    cdsGridDataqryDocProfiles: TDataSetField;
    cdsNewDocProfileDefaults: TAbmesClientDataSet;
    cdsNewDocProfileDefaultsDOC_PROFILE_NO: TAbmesFloatField;
    cdsNewDocProfileDefaultsDOC_ITEM_TEMPLATE_TYPE_CODE: TAbmesFloatField;
    cdsDetailHAS_DOC_ITEMS: TAbmesFloatField;
    cdsDetailDOC_EMPTINESS_REQ_CODE: TAbmesFloatField;
    cdsDetailDOC_IS_COMPLETE: TAbmesFloatField;
    cdsDetailACTIVE_DI_COUNT: TAbmesFloatField;
    cdsDetailUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsDetailUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsDetailAUTHORIZE_EMPLOYEE_ABBREV: TAbmesWideStringField;
    cdsDetailAUTHORIZE_EMPLOYEE_NAME: TAbmesWideStringField;
    procedure cdsDetailAfterDelete(DataSet: TDataSet);
    procedure cdsGridDataFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cdsDetailUNAUTHORIZED_ACTIVE_DI_COUNTGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsDetailDOC_EMPTINESS_REQ_CODEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure grdDetailGetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cdsDetailAUTHORIZE_EMPLOYEE_ABBREVGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
  protected
    function GetDelRecordEnabled: Boolean; override;
    function GetInsertRecordEnabled: Boolean; override;
    function GetEditRecordEnabled: Boolean; override;
    function ShowDetailEditForm(AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin): Boolean; override;
  public
    { Public declarations }
  end;

implementation

uses
  uUtils, uDocUtils, uDocClientUtils;

{$R *.dfm}

{ TfmDocProfiles }

function TfmDocProfiles.GetDelRecordEnabled: Boolean;
begin
  Result:= False;
end;

function TfmDocProfiles.GetEditRecordEnabled: Boolean;
begin
  Result:= False;
end;

function TfmDocProfiles.GetInsertRecordEnabled: Boolean;
begin
  Result:= False;
end;

procedure TfmDocProfiles.cdsDetailAfterDelete(DataSet: TDataSet);
begin
  inherited;
  DoApplyUpdates;
end;

function TfmDocProfiles.ShowDetailEditForm(AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin): Boolean;
begin
  if (AEditMode = emInsert) then
    begin
      Result:=
        cdsNewDocProfileDefaults.TempCreateDataSet/
          function: Boolean begin
            cdsNewDocProfileDefaults.SafeAppend/
              procedure begin
                cdsNewDocProfileDefaultsDOC_ITEM_TEMPLATE_TYPE_CODE.AsInteger:= cdsGridDataDOC_ITEM_TEMPLATE_TYPE_CODE.AsInteger;
                cdsNewDocProfileDefaultsDOC_PROFILE_NO.AsInteger:= cdsDetail_MAX_DOC_PROFILE_NO.AsVarInteger + 1;
              end;

            Result:= TfmDocProfile.ShowForm(dmDocClient, cdsNewDocProfileDefaults, emInsert, doDataSet)
          end;
    end
  else
    Result:= inherited ShowDetailEditForm(AEditMode, ADefaultsOrigin);
end;

procedure TfmDocProfiles.cdsGridDataFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:= (IntToDocItemTemplateType(cdsGridDataDOC_ITEM_TEMPLATE_TYPE_CODE.AsInteger) <> dittDocProfile);
end;

procedure TfmDocProfiles.cdsDetailUNAUTHORIZED_ACTIVE_DI_COUNTGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  UnauthorizedActiveDocItemCountFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmDocProfiles.cdsDetailAUTHORIZE_EMPLOYEE_ABBREVGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;

  if Sender.IsNull then
    Text:= ''
  else
    Text:= Format('        %s           %s', [
      Sender.AsString,
      cdsDetailAUTHORIZE_EMPLOYEE_NAME.AsString]);
end;

procedure TfmDocProfiles.cdsDetailDOC_EMPTINESS_REQ_CODEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  DocEmptinessRequirementFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmDocProfiles.grdDetailGetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;
  DocFieldsGetCellParams(Sender, Column, AFont, Background, State);
end;

end.
