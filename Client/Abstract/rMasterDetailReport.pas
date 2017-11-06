unit rMasterDetailReport;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rDBDataReport, Db, DBClient, ExtCtrls, QuickRpt, QRExport,
  QRCtrls, AbmesClientDataSet;

type
  TMasterDetailReport = class(TDBDataReport)
    SubDetail: TQRSubDetail;
    mdsSubDetail: TAbmesClientDataSet;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    FSubDetailDataSet: TDataSet;
  protected
    function GetCorespondingDataSet(ADataSet: TDataSet): TDataSet; override;
    procedure InternalPrintReport; override;
    property SubDetailDataSet: TDataSet read FSubDetailDataSet;
  public
    procedure SetDataParams(AReportDataSet: TCustomClientDataSet; AParamsDataSet: TDataSet; ASubDetailDataSet: TCustomClientDataSet; APrintCurrentRecOnly: Boolean = False); reintroduce; virtual;
    class procedure PrintReport(AReportDataSet: TCustomClientDataSet = nil; AParamsDataSet: TDataSet = nil; ASubDetailDataSet: TCustomClientDataSet = nil; APrintCurrentRecOnly: Boolean = False);
  end;

  TMasterDetailReportClass = class of TMasterDetailReport;

implementation

uses
  fReportParent;

{$R *.DFM}

{ TMasterDetailReport }

function TMasterDetailReport.GetCorespondingDataSet(
  ADataSet: TDataSet): TDataSet;
begin
  if (ADataSet = mdsSubDetail) then
    Result:= SubDetailDataSet
  else
    Result:= inherited GetCorespondingDataSet(ADataSet);
end;

procedure TMasterDetailReport.InternalPrintReport;
var
  bs: TBookmark;
begin
  if Assigned(SubDetailDataSet) then
    bs:= SubDetailDataSet.Bookmark;
  try
    if DisableControlsOnPrint and Assigned(SubDetailDataSet) then
      SubDetailDataSet.DisableControls;
    try
      inherited InternalPrintReport;
    finally
      if DisableControlsOnPrint and Assigned(SubDetailDataSet) then
        SubDetailDataSet.EnableControls;
    end;
  finally
    if Assigned(SubDetailDataSet) then
      SubDetailDataSet.Bookmark:= bs;
  end;
end;

class procedure TMasterDetailReport.PrintReport(AReportDataSet: TCustomClientDataSet;
  AParamsDataSet: TDataSet; ASubDetailDataSet: TCustomClientDataSet; APrintCurrentRecOnly: Boolean);
var
  r: TMasterDetailReport;
begin
  r:= Create(Application);
  try
    r.Parent:= fmReportParent;
    r.SetDataParams(AReportDataSet, AParamsDataSet, ASubDetailDataSet, APrintCurrentRecOnly);
    r.InternalPrintReport;
  finally
    FreeAndNil(r);
  end;
end;

procedure TMasterDetailReport.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;

  SubDetail.Enabled:= Assigned(SubDetailDataSet);

  if Assigned(SubDetail.HeaderBand) then
    SubDetail.HeaderBand.Enabled:= SubDetail.Enabled;

  if Assigned(SubDetail.FooterBand) then
    SubDetail.FooterBand.Enabled:= SubDetail.Enabled;
end;

procedure TMasterDetailReport.SetDataParams(
  AReportDataSet: TCustomClientDataSet; AParamsDataSet: TDataSet;
  ASubDetailDataSet: TCustomClientDataSet; APrintCurrentRecOnly: Boolean);
begin
  inherited SetDataParams(AReportDataSet, AParamsDataSet, APrintCurrentRecOnly);
  FSubDetailDataSet:= ASubDetailDataSet;
end;

end.
