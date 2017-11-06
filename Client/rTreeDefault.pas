unit rTreeDefault;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rDBDataReport, Db, Qrctrls, QuickRpt, ExtCtrls,  Generics.Collections,
  QRExport, DBClient, AbmesClientDataSet;

type
  TrptTreeDefault = class(TDBDataReport)
    qrbTitle: TQRBand;
    lblReportTitle: TQRLabel;
    qrbDetails: TQRBand;
    txtNodeName: TQRDBText;
    txtNodeNo: TQRDBText;
    shpVertLine: TQRShape;
    shpHorLine: TQRShape;
    shpParentLine1: TQRShape;
    shpParentLine2: TQRShape;
    shpParentLine3: TQRShape;
    shpParentLine4: TQRShape;
    shpParentLine5: TQRShape;
    shpParentLine6: TQRShape;
    shpParentLine7: TQRShape;
    shpParentLine8: TQRShape;
    shpParentLine9: TQRShape;
    shpParentLine10: TQRShape;
    shpParentLine11: TQRShape;
    shpParentLine12: TQRShape;
    shpParentLine13: TQRShape;
    shpParentLine14: TQRShape;
    shpParentLine15: TQRShape;
    shpParentLine16: TQRShape;
    shpParentLine18: TQRShape;
    shpParentLine19: TQRShape;
    shpParentLine20: TQRShape;
    shpParentLine21: TQRShape;
    shpParentLine22: TQRShape;
    shpParentLine23: TQRShape;
    shpParentLine24: TQRShape;
    shpParentLine25: TQRShape;
    shpParentLine38: TQRShape;
    shpParentLine39: TQRShape;
    shpParentLine40: TQRShape;
    shpParentLine41: TQRShape;
    shpParentLine42: TQRShape;
    shpParentLine43: TQRShape;
    shpParentLine44: TQRShape;
    shpParentLine45: TQRShape;
    shpParentLine46: TQRShape;
    shpParentLine47: TQRShape;
    shpParentLine49: TQRShape;
    shpParentLine50: TQRShape;
    shpParentLine37: TQRShape;
    shpParentLine36: TQRShape;
    shpParentLine35: TQRShape;
    shpParentLine34: TQRShape;
    shpParentLine33: TQRShape;
    shpParentLine32: TQRShape;
    shpParentLine31: TQRShape;
    shpParentLine30: TQRShape;
    shpParentLine29: TQRShape;
    shpParentLine28: TQRShape;
    shpParentLine27: TQRShape;
    shpParentLine26: TQRShape;
    shpParentLine17: TQRShape;
    shpParentLine48: TQRShape;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
    procedure qrbDetailsBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrbDetailsAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    FParentLines: TList<TQRShape>;
  protected
    function LeftEdge: Integer; virtual;
    function NodeNameRightEdge: Integer; virtual;
    function GetNodeLevel: Integer; virtual;
    function GetReportTitle: string; virtual;
    function IsLastChild: Boolean; virtual;
    function HasChildren: Boolean; virtual;
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

const
  Indent = 20;
  ParentLinesShapes = 50;

{ TrptTreeDefault }

procedure TrptTreeDefault.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
  i: Integer;
begin
  inherited;
  FParentLines:= TList<TQRShape>.Create;

  for i:= 1 to ParentLinesShapes do
    FParentLines.Add(FindComponent(Format('shpParentLine%d', [i])) as TQRShape);

  for i:= 0 to FParentLines.Count - 1  do
    FParentLines[i].Left:= LeftEdge + i*Indent;

  DataSet.First;
  ReportTitle:= GetReportTitle;
  lblReportTitle.Caption:= ReportTitle;
end;

procedure TrptTreeDefault.QuickRepAfterPrint(Sender: TObject);
begin
  inherited;
  FreeAndNil(FParentLines);
end;

procedure TrptTreeDefault.qrbDetailsBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  NodeLevel: Integer;
begin
  inherited;

  with DataSet do
    begin
      NodeLevel:= GetNodeLevel;

      shpVertLine.Enabled:= (NodeLevel > 0) and IsLastChild;
      shpHorLine.Enabled:= (NodeLevel > 0);

      shpVertLine.Left:= LeftEdge + (NodeLevel-1)*Indent;
      shpHorLine.Left:= shpVertLine.Left + (shpVertLine.Width mod 2) + 2;

      if (NodeLevel = 0) then
        txtNodeName.Left:= LeftEdge
      else
        begin
          txtNodeName.Left:= shpHorLine.Left + shpHorLine.Width + 3;

          if IsLastChild then
            FParentLines[NodeLevel-1].Enabled:= False;
        end;

      with txtNodeName do
        Width:= NodeNameRightEdge - Left;
    end;   { with }
end;

procedure TrptTreeDefault.qrbDetailsAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;

  with DataSet do
    if HasChildren then
      FParentLines[GetNodeLevel].Enabled:= True;
end;

function TrptTreeDefault.LeftEdge: Integer;
begin
  Result:= 0;
end;

function TrptTreeDefault.NodeNameRightEdge: Integer;
begin
  Result:= txtNodeNo.Left - 10;
end;

function TrptTreeDefault.GetNodeLevel: Integer;
begin
  Result:= DataSet.FieldByName('NODE_LEVEL').AsInteger;
end;

function TrptTreeDefault.GetReportTitle: string;
begin
  Result:= DataSet.FieldByName('NODE_NAME').AsString;
end;

function TrptTreeDefault.IsLastChild: Boolean;
begin
  Result:= (DataSet.FieldByName('IS_LAST_CHILD').AsInteger = 1);
end;

function TrptTreeDefault.HasChildren: Boolean;
begin
  Result:= (DataSet.FieldByName('HAS_CHILDREN').AsInteger > 0);
end;

end.
