unit fParRelProductStatuses;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fStatusesAbstract, JvComponentBase, JvCaptionButton,
  ParamDataSet, ActnList, DB, AbmesFields, DBClient,
  AbmesClientDataSet, Grids, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin,
  DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls, GridsEh;

type
  TfmParRelProductStatuses = class(TfmStatusesAbstract)
    cdsStatusesPAR_REL_PRODUCT_STATUS_CODE: TAbmesFloatField;
    cdsStatusesPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField;
    cdsGridDataPARTNER_CODE: TAbmesFloatField;
    cdsGridDataBORDER_REL_TYPE_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataPAR_REL_PRODUCT_STATUS_CODE: TAbmesFloatField;
    cdsGridData_PAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField;
    procedure cdsGridDataSTATUS_DATEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    function IsResetStatus: Boolean; override;
    procedure AssignOuterDataSetStatusFields; override;
  public
    { Public declarations }
  end;

implementation

uses
  dMain, uUtils, fParRelProductStatusForm, uClientPeriods;

{$R *.dfm}

procedure TfmParRelProductStatuses.AssignOuterDataSetStatusFields;
begin
  inherited;
  OuterDataSet.FieldByName('PAR_REL_PRODUCT_STATUS_NAME').AsVariant:=
    cdsGridData_PAR_REL_PRODUCT_STATUS_NAME.AsVariant;
end;

procedure TfmParRelProductStatuses.cdsGridDataBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  CheckRequiredFields([cdsGridData_PAR_REL_PRODUCT_STATUS_NAME, cdsGridDataSTATUS_DATE]);
end;

procedure TfmParRelProductStatuses.cdsGridDataSTATUS_DATEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;

  if cdsGridDataSTATUS_DATE.IsNull or
     cdsGridDataNEXT_STATUS_DATE.IsNull or
     (cdsGridDataSTATUS_DATE.AsDateTime > cdsGridDataNEXT_STATUS_DATE.AsDateTime) then
    Text:= ''
  else
    Text:= GetPeriodAsShortString(
      cdsGridDataSTATUS_DATE.AsDateTime, cdsGridDataNEXT_STATUS_DATE.AsDateTime,
        dmMain.GetDateDisplayFormat, False, True);
end;

procedure TfmParRelProductStatuses.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmParRelProductStatus;
end;

function TfmParRelProductStatuses.IsResetStatus: Boolean;
begin
  Result:= (cdsGridDataPAR_REL_PRODUCT_STATUS_CODE.AsInteger = 5);
end;

end.
