unit fSaleQuantitiesFilter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fBevelFilterForm, fBaseFrame, fDBFrame, fFieldEditFrame,
  Db, ExtCtrls, DBCtrls, StdCtrls, GridsEh,
  DBGridEh, AbmesDBGrid, Buttons, Mask, JvToolEdit, JvDBControls, DBClient,
  AbmesClientDataSet, ImgList, ActnList, uClientTypes, AbmesFields,
  AbmesDBCheckBox, JvDBCombobox, Menus, JvButtons, dDocClient, fCompanyFilter,
  fParamProductFilter, fTreeNodeFilter, fProductFilter, JvDBLookup,
  fDateIntervalFrame, JvExStdCtrls, JvComponent, JvCaptionButton,
  JvExControls, JvComponentBase, fFilterForm;

type
  TfmSaleQuantitiesFilter = class(TFilterForm)
    cdsCompanyClients: TAbmesClientDataSet;
    cdsCompanyClientsCOMPANY_CODE: TAbmesFloatField;
    cdsCompanyClientsSHORT_NAME: TAbmesWideStringField;
    dsCompanyClients: TDataSource;
    rgType: TDBRadioGroup;
    gbDates: TGroupBox;
    frParamProductFilter: TfrParamProductFilter;
    frCompanyFilter: TfrCompanyFilter;
    pnlShowInstances: TPanel;
    chbShowInstances: TAbmesDBCheckBox;
    frDateInterval: TfrDateIntervalFrame;
    gbSalesLevel: TGroupBox;
    cbSalesLevel: TJvDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure frParamProductFiltercdsChosenProductsAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uClientUtils, dMain, uUtils;

{$R *.DFM}

{ TfmSaleQuantitiesFilter }

procedure TfmSaleQuantitiesFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frParamProductFilter.FieldNames:= 'CHOSEN_PRODUCTS';
  frParamProductFilter.CheckForWorkMeasure:= True;
  frCompanyFilter.FieldNames:= 'CHOSEN_COMPANIES';
end;

procedure TfmSaleQuantitiesFilter.frParamProductFiltercdsChosenProductsAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  if (frParamProductFilter.cdsChosenNodes.RecordCount = 1) then
    begin
      CheckEditMode(dsData.DataSet);
      dsData.DataSet.FieldByName('SHOW_INSTANCES').AsBoolean:= False;
    end;  { if }
end;

end.
