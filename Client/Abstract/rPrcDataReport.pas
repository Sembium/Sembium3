unit rPrcDataReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rDBDataReport, DB, DBClient, AbmesClientDataSet, QRExport, QRCtrls,
  QuickRpt, ExtCtrls, rDBTreeDataReport;

const
  PrcDataRowColors: array[Boolean] of TColor = (clGrayText, clWindowText);

type
  TPrcDataReport = class(TDBTreeDataReport)
    dbtPrcObjectName: TQRDBText;
    QRShape2: TQRShape;
    PageHeaderBand1: TQRBand;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    procedure bndDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  protected
    function ImageIndexFieldName: string; override;
    function LevelFieldName: string; override;
    function HasChildrenFieldName: string; override;
  public
    { Public declarations }
  end;

type
  TPrcDataReportClass = class of TPrcDataReport;

implementation

{$R *.dfm}

{ TPrcDataReport }

procedure TPrcDataReport.bndDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  IsInPrcData: Boolean;
begin
  inherited;
  IsInPrcData:= (ReportDataSet.FieldByName('IS_IN_PRC_DATA').AsInteger > 0);

  dbtNodeIdentifier.Font.Color:= PrcDataRowColors[IsInPrcData];
  dbtPrcObjectName.Font.Color:= PrcDataRowColors[IsInPrcData];
end;

function TPrcDataReport.ImageIndexFieldName: string;
begin
  Result:= 'PRC_OBJECT_IMAGE_INDEX';
end;

function TPrcDataReport.LevelFieldName: string;
begin
  Result:= 'VISUAL_LEVEL_NO';
end;

function TPrcDataReport.HasChildrenFieldName: string;
begin
  Result:= 'HAS_CHILDREN';
end;

end.
