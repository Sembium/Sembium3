unit fProductSet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, ActnList, StdCtrls,
  Buttons, ExtCtrls, Mask, DBCtrls, fBaseFrame, fDBFrame, fFieldEditFrame,
  fDateIntervalFrame, fTreeNodeFilter, fProductFilter, fParamProductFilter,
  AbmesFields;

type
  TfmProductSet = class(TEditForm)
    pnlMain: TPanel;
    pnlTop: TPanel;
    edtProductSetNo: TDBEdit;
    edtProductSetName: TDBEdit;
    lblProductSetName: TLabel;
    lblProductSetNo: TLabel;
    lblDateInterval: TLabel;
    bvlTop: TBevel;
    frDateInterval: TfrDateIntervalFrame;
    pnlProductParams: TPanel;
    cdsDataPRODUCT_SET_CODE: TAbmesFloatField;
    cdsDataPRODUCT_SET_NO: TAbmesFloatField;
    cdsDataPRODUCT_SET_NAME: TAbmesWideStringField;
    cdsDataBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDataEND_DATE: TAbmesSQLTimeStampField;
    cdsDataCHOSEN_PRODUCTS: TBlobField;
    frParamProductFilter: TfrParamProductFilter;
    procedure FormCreate(Sender: TObject);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure actFormUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    class function CanEditOuterDataSet: Boolean; override;
  end;

implementation

uses
  dMain, uClientUtils, uClientTypes;

{$R *.dfm}

procedure TfmProductSet.actFormUpdate(Sender: TObject);
begin
  inherited;
  SetControlsReadOnly(EditMode = emReadOnly, [edtProductSetNo, edtProductSetName]);
end;

class function TfmProductSet.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmProductSet.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDataPRODUCT_SET_CODE.AsInteger:= dmMain.SvrProductsTreeEditor.GetNewProductSetCode;
end;

procedure TfmProductSet.FormCreate(Sender: TObject);
begin
  inherited;
  frParamProductFilter.FieldNames:= 'CHOSEN_PRODUCTS';
  frParamProductFilter.ChosenNodeParamsVisible:= False;
end;

end.
