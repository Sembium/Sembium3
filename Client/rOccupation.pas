unit rOccupation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rDBDataReport, DB, QRExport, QRCtrls, QuickRpt,
  ExtCtrls, DBClient, AbmesClientDataSet;

type
  TrptOccupation = class(TDBDataReport)
    QRBand1: TQRBand;
    QRLabel17: TQRLabel;
    QRChildBand0: TQRChildBand;
    bndDetail: TQRBand;
    QRLabel2: TQRLabel;
    QRShape3: TQRShape;
    QRLabel3: TQRLabel;
    QRShape4: TQRShape;
    QRLabel4: TQRLabel;
    QRShape58: TQRShape;
    QRLabel44: TQRLabel;
    QRShape39: TQRShape;
    QRLabel26: TQRLabel;
    QRShape40: TQRShape;
    QRLabel27: TQRLabel;
    QRChildBand1: TQRChildBand;
    shpDeptName: TQRShape;
    shpDeptIdentifier: TQRShape;
    dbtDeptName: TQRDBText;
    dbtDeptIdentifier: TQRDBText;
    shpOWDPriority: TQRShape;
    dbtOWDPriority: TQRDBText;
    shpDeptIsExternal: TQRShape;
    shpDeptIsRecurrent: TQRShape;
    dbtDeptIsExternal: TQRDBText;
    dbtDeptIsRecurrent: TQRDBText;
    QRChildBand2: TQRChildBand;
    QRLabel5: TQRLabel;
    QRShape41: TQRShape;
    QRDBText15: TQRDBText;
    QRShape7: TQRShape;
    QRLabel7: TQRLabel;
    QRShape8: TQRShape;
    QRLabel8: TQRLabel;
    QRShape9: TQRShape;
    QRLabel9: TQRLabel;
    QRShape10: TQRShape;
    QRLabel10: TQRLabel;
    QRShape15: TQRShape;
    QRLabel15: TQRLabel;
    QRChildBand3: TQRChildBand;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape26: TQRShape;
    QRLabel41: TQRLabel;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRLabel43: TQRLabel;
    QRShape59: TQRShape;
    QRDBText13: TQRDBText;
    QRLabel45: TQRLabel;
    QRShape61: TQRShape;
    QRDBText25: TQRDBText;
    QRLabel46: TQRLabel;
    QRShape62: TQRShape;
    QRDBText41: TQRDBText;
    QRLabel47: TQRLabel;
    QRShape63: TQRShape;
    QRDBText42: TQRDBText;
    QRLabel48: TQRLabel;
    QRShape64: TQRShape;
    QRDBText43: TQRDBText;
    QRShape33: TQRShape;
    QRDBText2: TQRDBText;
    QRShape34: TQRShape;
    QRDBText7: TQRDBText;
    QRLabel25: TQRLabel;
    QRShape65: TQRShape;
    QRDBText8: TQRDBText;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRShape37: TQRShape;
    QRDBText3: TQRDBText;
    QRShape27: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRLabel19: TQRLabel;
    QRShape54: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel38: TQRLabel;
    QRShape73: TQRShape;
    QRDBText20: TQRDBText;
    QRLabel39: TQRLabel;
    QRShape28: TQRShape;
    QRDBText22: TQRDBText;
    QRShape47: TQRShape;
    QRLabel29: TQRLabel;
    QRShape71: TQRShape;
    QRDBText10: TQRDBText;
    QRShape72: TQRShape;
    QRDBText44: TQRDBText;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape2: TQRShape;
    QRDBText19: TQRDBText;
    QRShape23: TQRShape;
    QRDBText21: TQRDBText;
    QRShape24: TQRShape;
    QRDBText23: TQRDBText;
    QRShape25: TQRShape;
    QRLabel20: TQRLabel;
    QRShape30: TQRShape;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRShape31: TQRShape;
    QRDBText6: TQRDBText;
    QRShape32: TQRShape;
    QRDBText9: TQRDBText;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    shpIsCapacityGenerator: TQRShape;
    dbtIsCapacityGenerator: TQRDBText;
    dbtDeptOWDPCoverType: TQRDBText;
    shpDeptOWDPCoverType: TQRShape;
    QRChildBand4: TQRChildBand;
    QRShape11: TQRShape;
    QRLabel13: TQRLabel;
    QRShape12: TQRShape;
    QRLabel14: TQRLabel;
    QRShape13: TQRShape;
    QRLabel23: TQRLabel;
    QRChildBand5: TQRChildBand;
    QRShape14: TQRShape;
    QRShape20: TQRShape;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRChildBand6: TQRChildBand;
    QRShape21: TQRShape;
    QRLabel28: TQRLabel;
    QRShape22: TQRShape;
    QRLabel32: TQRLabel;
    QRShape29: TQRShape;
    QRLabel33: TQRLabel;
    QRChildBand7: TQRChildBand;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRDBText14: TQRDBText;
    QRDBText16: TQRDBText;
    QRChildBand8: TQRChildBand;
    QRShape38: TQRShape;
    QRLabel34: TQRLabel;
    QRShape42: TQRShape;
    QRLabel35: TQRLabel;
    QRShape43: TQRShape;
    QRLabel40: TQRLabel;
    QRChildBand9: TQRChildBand;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRShape46: TQRShape;
    QRShape50: TQRShape;
    QRShape57: TQRShape;
    QRShape60: TQRShape;
    procedure QRChildBand0BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRChildBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRChildBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRChildBand4BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRChildBand5BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRChildBand6BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRChildBand7BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRChildBand9BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRChildBand8BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    procedure DoBeforeChildBandPrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure SetColumnColor(AShape: TQRShape; ADBText: TQRDBText);
  public
    { Public declarations }
  end;

implementation

uses
  uOWDPriorityTypes, uOWDPriorityClientConsts;

{$R *.dfm}

{ TrptOccupation }

procedure TrptOccupation.DoBeforeChildBandPrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PrintBand:= ((Sender as TQRChildBand).Tag = ReportDataSet.FieldByName('ORIGIN_INDEX').AsInteger);
end;

procedure TrptOccupation.QRChildBand0BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  DoBeforeChildBandPrint(Sender, PrintBand);
end;

procedure TrptOccupation.SetColumnColor(AShape: TQRShape; ADBText: TQRDBText);
begin
  AShape.Brush.Color:= DeptOWDPCoverTypeBackgroundColors[(ReportDataSet.FieldByName('DEPT_OWDP_COVER_TYPE_CODE').AsDeptOWDPCoverType)];
  ADBText.Color:= DeptOWDPCoverTypeBackgroundColors[(ReportDataSet.FieldByName('DEPT_OWDP_COVER_TYPE_CODE').AsDeptOWDPCoverType)];
  ADBText.Font.Color:= DeptOWDPCoverTypeFontColors[(ReportDataSet.FieldByName('DEPT_OWDP_COVER_TYPE_CODE').AsDeptOWDPCoverType)];
end;

procedure TrptOccupation.QRChildBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  DoBeforeChildBandPrint(Sender, PrintBand);
  if PrintBand then
    begin
      SetColumnColor(shpDeptIdentifier, dbtDeptIdentifier);
      SetColumnColor(shpDeptName, dbtDeptName);
      SetColumnColor(shpDeptIsExternal, dbtDeptIsExternal);
      SetColumnColor(shpDeptIsRecurrent, dbtDeptIsRecurrent);
      SetColumnColor(shpOWDPriority, dbtOWDPriority);
      SetColumnColor(shpDeptOWDPCoverType, dbtDeptOWDPCoverType);
      SetColumnColor(shpIsCapacityGenerator, dbtIsCapacityGenerator);
    end;
end;

procedure TrptOccupation.QRChildBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  DoBeforeChildBandPrint(Sender, PrintBand);
end;

procedure TrptOccupation.QRChildBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  i: Integer;
begin
  inherited;

  DoBeforeChildBandPrint(Sender, PrintBand);

  if PrintBand then
    for i:= 0 to ComponentCount - 1 do
      begin
        if (Components[i] is TQRDBText) then
          with Components[i] as TQRDBText do
            Enabled:=
              (Tag = 0) or
              ((Tag = 1) and (ReportDataSet.FieldByName('IS_INCLUDED_PROFESSIONS_RECORD').AsFloat = 1)) or
              ((Tag = 2) and (ReportDataSet.FieldByName('IS_EXCLUDED_PROFESSIONS_RECORD').AsFloat = 1));

        if (Components[i] is TQRShape) then
          with Components[i] as TQRShape do
            Enabled:=
              (Tag = 0) or
              ((Tag = 1) and (ReportDataSet.FieldByName('IS_INCLUDED_PROFESSIONS_RECORD').AsFloat = 1)) or
              ((Tag = 2) and (ReportDataSet.FieldByName('IS_EXCLUDED_PROFESSIONS_RECORD').AsFloat = 1));
      end;
end;

procedure TrptOccupation.QRChildBand4BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  DoBeforeChildBandPrint(Sender, PrintBand);
end;

procedure TrptOccupation.QRChildBand5BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  DoBeforeChildBandPrint(Sender, PrintBand);
end;

procedure TrptOccupation.QRChildBand6BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  DoBeforeChildBandPrint(Sender, PrintBand);
end;

procedure TrptOccupation.QRChildBand7BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  DoBeforeChildBandPrint(Sender, PrintBand);
end;

procedure TrptOccupation.QRChildBand8BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  DoBeforeChildBandPrint(Sender, PrintBand);
end;

procedure TrptOccupation.QRChildBand9BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  DoBeforeChildBandPrint(Sender, PrintBand);
end;

end.
