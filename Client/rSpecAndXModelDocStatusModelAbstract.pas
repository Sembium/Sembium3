unit rSpecAndXModelDocStatusModelAbstract;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rSpecAndXModelDocStatusAbstract, DB, QRExport, QRCtrls,
  QuickRpt, ExtCtrls, DBClient, AbmesClientDataSet;

type
  TrptSpecAndXModelDocStatusModelAbstract = class(TrptSpecAndXModelDocStatusAbstract)
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel118: TQRLabel;
    QRLabel119: TQRLabel;
    QRLabel1110: TQRLabel;
    txtProgramToolRequirement: TQRDBText;
    txtSpecificToolRequirement: TQRDBText;
    txtTypicalToolRequirement: TQRDBText;
    procedure qrbDetailsBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uToolRequirements;

{$R *.dfm}

procedure TrptSpecAndXModelDocStatusModelAbstract.qrbDetailsBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);

  procedure SetToolRequirement(AQRDBText: TQRDBText; AToolIsComplete: Boolean);
  begin
    if AToolIsComplete then
      AQRDBText.Font.Color:= clGreen
    else
      AQRDBText.Font.Color:= clRed;
  end;

begin
  inherited;

  SetToolRequirement(txtProgramToolRequirement, DataSet.FieldByName('PROGRAM_TOOL_IS_COMPLETE').AsBoolean);
  SetToolRequirement(txtSpecificToolRequirement, DataSet.FieldByName('SPECIFIC_TOOL_IS_COMPLETE').AsBoolean);
  SetToolRequirement(txtTypicalToolRequirement, DataSet.FieldByName('TYPICAL_TOOL_IS_COMPLETE').AsBoolean);
end;

end.
