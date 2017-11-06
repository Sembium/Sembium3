unit fChooseDelivery;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fEditForm, Data.DB, Datasnap.DBClient, AbmesClientDataSet, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, JvExControls, JvDBLookup, Vcl.Mask, Vcl.DBCtrls, AbmesFields;

type
  TfmChooseDelivery = class(TEditForm)
    gbDelivery: TGroupBox;
    lblDCDBranch: TLabel;
    lblDCDCode: TLabel;
    edtDCDCode: TDBEdit;
    lblDeliveryProjectCode: TLabel;
    edtDeliveryProjectCode: TDBEdit;
    cbDCDBranch: TJvDBLookupCombo;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    cdsBranchesBRANCH_NO: TAbmesFloatField;
    dsBranches: TDataSource;
  private
    { Private declarations }
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

{ TfmChooseDelivery }

procedure TfmChooseDelivery.OpenDataSets;
begin
  inherited;
  cdsBranches.Open;
end;

procedure TfmChooseDelivery.CloseDataSets;
begin
  cdsBranches.Close;
  inherited;
end;

end.
