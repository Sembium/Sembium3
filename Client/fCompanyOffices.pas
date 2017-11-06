unit fCompanyOffices;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fRightButtonGridForm, ImgList, ParamDataSet, ActnList, Db,
  DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, DBCtrls,
  ColorNavigator, Buttons, StdCtrls, ExtCtrls, AbmesFields, Menus,
  JvButtons, ComCtrls, ToolWin, JvComponent, JvCaptionButton, JvComponentBase,
  DBGridEhGrouping;

type
  TfmCompanyOffices = class(TRightButtonGridForm)
    cdsGridDataCOMPANY_CODE: TAbmesFloatField;
    cdsGridDataOFFICE_CODE: TAbmesFloatField;
    cdsGridDataOFFICE_NAME: TAbmesWideStringField;
    cdsGridDataCOUNTRY_CODE: TAbmesFloatField;
    cdsGridDataSTATE: TAbmesWideStringField;
    cdsGridDataREGION: TAbmesWideStringField;
    cdsGridDataZIP: TAbmesWideStringField;
    cdsGridDataCITY: TAbmesWideStringField;                                               
    cdsGridDataADDRESS: TAbmesWideStringField;
    cdsGridDataI_OFFICE_NAME: TAbmesWideStringField;
    cdsGridDataI_STATE: TAbmesWideStringField;
    cdsGridDataI_REGION: TAbmesWideStringField;
    cdsGridDataI_CITY: TAbmesWideStringField;
    cdsGridDataI_ADDRESS: TAbmesWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure cdsGridDataAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  dMain, fCompanyOffice, uClientUtils;

{$R *.DFM}

procedure TfmCompanyOffices.FormCreate(Sender: TObject);
begin
  inherited;

  EditFormClass:= TfmCompanyOffice;
end;

procedure TfmCompanyOffices.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;

  cdsGridDataCOMPANY_CODE.AsInteger:= cdsGridData.Params.ParamByName('COMPANY_CODE').AsInteger;
end;

procedure TfmCompanyOffices.cdsGridDataAfterPost(DataSet: TDataSet);
begin
  inherited;
  RefreshDataSet(DataSet);
end;

end.
