unit rOccupationsAndEmployees;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rDBDataReport, DB, QRExport, QuickRpt, QRCtrls,
  ExtCtrls, QrAngLbl, DBClient, AbmesClientDataSet;

type
  TrptOccupationsAndEmployees = class(TDBDataReport)
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    bndColumnHeader: TQRBand;
    bndDetail: TQRBand;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRShape4: TQRShape;
    QRLabel5: TQRLabel;
    QRShape5: TQRShape;
    QRLabel6: TQRLabel;
    QRShape6: TQRShape;
    QRLabel7: TQRLabel;
    QRShape8: TQRShape;
    QRLabel9: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape14: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape15: TQRShape;
    QRLabel16: TQRLabel;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    txtDayDiff: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRShape7: TQRShape;
    QRLabel8: TQRLabel;
    QRShape22: TQRShape;
    QRDBText6: TQRDBText;
    QRShape32: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape33: TQRShape;
    QRDBText14: TQRDBText;
    QRShape9: TQRShape;
    QRLabel10: TQRLabel;
    QRShape23: TQRShape;
    txtAssignmentDayDiff: TQRDBText;
    QRShape34: TQRShape;
    QRLabel23: TQRLabel;
    QRShape35: TQRShape;
    QRDBText15: TQRDBText;
    QRShape36: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape37: TQRShape;
    txtEmployeeDocEmptinessRequirement: TQRDBText;
    QRShape38: TQRShape;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape39: TQRShape;
    QRLabel32: TQRLabel;
    QRShape40: TQRShape;
    txtOccupationDocEmptinessRequirement: TQRDBText;
    QRShape41: TQRShape;
    QRDBText18: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText19: TQRDBText;
    QRShape13: TQRShape;
    QRAngledLabel1: TQRAngledLabel;
    QRShape26: TQRShape;
    QRDBText5: TQRDBText;
    QRShape30: TQRShape;
    QRLabel12: TQRLabel;
    QRShape31: TQRShape;
    QRLabel19: TQRLabel;
    QRShape29: TQRShape;
    QRDBText13: TQRDBText;
    QRShape55: TQRShape;
    QRLabel46: TQRLabel;
    QRShape56: TQRShape;
    QRLabel47: TQRLabel;
    QRShape57: TQRShape;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRShape58: TQRShape;
    QRLabel59: TQRLabel;
    QRShape63: TQRShape;
    QRLabel60: TQRLabel;
    QRShape64: TQRShape;
    QRLabel61: TQRLabel;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    lblBaseSalary: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRShape16: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape49: TQRShape;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRShape50: TQRShape;
    QRLabel17: TQRLabel;
    QRShape51: TQRShape;
    QRDBText22: TQRDBText;
  private
    { Private declarations }
  protected
    function GetColumnHeaderBandHeight: Integer; override;
  public
    { Public declarations }
  end;

implementation

uses
  dMain;

{$R *.dfm}

{ TrptOccupationsAndEmployees }

function TrptOccupationsAndEmployees.GetColumnHeaderBandHeight: Integer;
begin
  Result:= 70;
end;

end.
