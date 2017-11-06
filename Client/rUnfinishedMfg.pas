unit rUnfinishedMfg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rMasterDetailReport, QuickRpt, Qrctrls, Db, ExtCtrls,
  AbmesFields, QRExport, DBClient, AbmesClientDataSet;

type
  TrptUnfinishedMfg = class(TMasterDetailReport)
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    mdsSubDetailDEPT_CODE: TAbmesFloatField;
    mdsSubDetailSALE_TYPE_ABBREV: TAbmesWideStringField;
    mdsSubDetailSALE_IDENTIFIER: TAbmesWideStringField;
    mdsSubDetailNO_AS_TEXT: TAbmesFloatField;
    mdsSubDetailFORK_NO: TAbmesFloatField;
    mdsSubDetailDETAIL_NAME: TAbmesWideStringField;
    mdsSubDetailQUANTITY: TAbmesFloatField;
    mdsSubDetailMEASURE_ABBREV: TAbmesWideStringField;
    mdsSubDetailTOTAL_SECONDARY_PRICE: TAbmesFloatField;
    mdsParamsPRODUCT_NAME: TAbmesWideStringField;
    mdsParamsPRODUCT_NO: TAbmesFloatField;
    mdsParamsDEPT_NAME: TAbmesWideStringField;
    mdsParamsDEPT_IDENTIFIER: TAbmesWideStringField;
    mdsParamsUNFINISHED_TO_DATE: TAbmesSQLTimeStampField;
    mdsParamsUNFINISHED_MFG_TYPE: TAbmesFloatField;
    QRBand5: TQRBand;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    txtToDateNormal: TQRDBText;
    txtToDateGSD: TQRDBText;
    QRShape2: TQRShape;
    mdsSubDetailDETAIL_NO: TAbmesFloatField;
    QRShape3: TQRShape;
    QRShape9: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRShape19: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape4: TQRShape;
    QRLabel13: TQRLabel;
    QRShape5: TQRShape;
    QRDBText11: TQRDBText;
    procedure txtToDateNormalPrint(sender: TObject; var Value: String);
    procedure txtTypePrint(sender: TObject; var Value: String);
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRLabel27Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  protected
    class function DisableControlsOnPrint: Boolean; override;
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

resourcestring
  SPlanned = 'планова';
  SReported = 'отчетна';

{ TrptUnfinishedMfg }

procedure TrptUnfinishedMfg.txtToDateNormalPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:= DateToStr((Sender as TQRDBText).DataSet.FieldByName('UNFINISHED_TO_DATE').AsDateTime);
end;

procedure TrptUnfinishedMfg.txtTypePrint(sender: TObject;
  var Value: String);
begin
  inherited;
  if (Value = '1') then
    Value:= SReported
  else
    Value:= SPlanned;
end;

procedure TrptUnfinishedMfg.QRDBText2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:= Value + ' ' + LoginContext.BaseCurrencyAbbrev;
end;

procedure TrptUnfinishedMfg.QRDBText3Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:= Value + ' ' + LoginContext.BaseCurrencyAbbrev;
end;

class function TrptUnfinishedMfg.DisableControlsOnPrint: Boolean;
begin
  Result:= False;
end;

procedure TrptUnfinishedMfg.QRLabel27Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:= Value + SLineBreak + '/' + LoginContext.BaseCurrencyAbbrev + '/';
end;

end.

