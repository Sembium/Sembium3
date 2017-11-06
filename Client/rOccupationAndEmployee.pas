unit rOccupationAndEmployee;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rDBDataReport, DB, QRExport, ExtCtrls, QuickRpt,
  QRCtrls, DBClient, AbmesClientDataSet;

type
  TrptOccupationAndEmployee = class(TDBDataReport)
    QRBand1: TQRBand;
    bndDetail: TQRBand;
    QRChildBand1: TQRChildBand;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRChildBand2: TQRChildBand;
    shpDeptName: TQRShape;
    shpDeptIdentifier: TQRShape;
    QRChildBand0: TQRChildBand;
    QRShape25: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape26: TQRShape;
    QRLabel41: TQRLabel;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRLabel17: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    dbtDeptName: TQRDBText;
    dbtDeptIdentifier: TQRDBText;
    QRShape58: TQRShape;
    QRLabel44: TQRLabel;
    shpOWDPriority: TQRShape;
    dbtOWDPriority: TQRDBText;
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
    QRShape39: TQRShape;
    QRLabel26: TQRLabel;
    QRShape40: TQRShape;
    QRLabel27: TQRLabel;
    shpDeptIsExternal: TQRShape;
    shpDeptIsRecurrent: TQRShape;
    dbtDeptIsExternal: TQRDBText;
    dbtDeptIsRecurrent: TQRDBText;
    QRChildBand3: TQRChildBand;
    QRLabel4: TQRLabel;
    QRShape5: TQRShape;
    QRLabel5: TQRLabel;
    QRShape6: TQRShape;
    QRLabel6: TQRLabel;
    QRShape7: TQRShape;
    QRLabel7: TQRLabel;
    QRShape8: TQRShape;
    QRLabel8: TQRLabel;
    QRShape9: TQRShape;
    QRLabel9: TQRLabel;
    QRShape10: TQRShape;
    QRLabel10: TQRLabel;
    QRShape11: TQRShape;
    QRLabel11: TQRLabel;
    QRShape12: TQRShape;
    QRLabel12: TQRLabel;
    QRShape13: TQRShape;
    QRLabel13: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel14: TQRLabel;
    QRChildBand4: TQRChildBand;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRLabel30: TQRLabel;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRLabel31: TQRLabel;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape50: TQRShape;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText21: TQRDBText;
    QRShape70: TQRShape;
    QRLabel29: TQRLabel;
    QRShape71: TQRShape;
    QRDBText12: TQRDBText;
    QRShape72: TQRShape;
    QRDBText44: TQRDBText;
    QRShape35: TQRShape;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRShape37: TQRShape;
    QRDBText17: TQRDBText;
    QRShape45: TQRShape;
    QRDBText18: TQRDBText;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRShape46: TQRShape;
    QRDBText19: TQRDBText;
    QRShape47: TQRShape;
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
    QRLabel34: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel42: TQRLabel;
    QRShape38: TQRShape;
    QRLabel20: TQRLabel;
    QRShape29: TQRShape;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRShape30: TQRShape;
    QRDBText5: TQRDBText;
    QRShape31: TQRShape;
    QRDBText6: TQRDBText;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape32: TQRShape;
    QRDBText23: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText24: TQRDBText;
    QRShape36: TQRShape;
    shpDeptOWDPCoverType: TQRShape;
    dbtDeptOWDPCoverType: TQRDBText;
    shpOWDPIsCapacityGenerator: TQRShape;
    dbtOWDPIsCapacityGenerator: TQRDBText;
    QRShape69: TQRShape;
    QRLabel28: TQRLabel;
    QRShape74: TQRShape;
    QRLabel35: TQRLabel;
    procedure QRChildBand0BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRChildBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRChildBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRChildBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
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

procedure TrptOccupationAndEmployee.DoBeforeChildBandPrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  PrintBand:= ((Sender as TQRChildBand).Tag = ReportDataSet.FieldByName('ORIGIN_INDEX').AsInteger);
end;

procedure TrptOccupationAndEmployee.QRChildBand0BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;

  DoBeforeChildBandPrint(Sender, PrintBand);
end;

procedure TrptOccupationAndEmployee.QRChildBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  DoBeforeChildBandPrint(Sender, PrintBand);
end;

procedure TrptOccupationAndEmployee.SetColumnColor(AShape: TQRShape; ADBText: TQRDBText);
begin
  AShape.Brush.Color:= DeptOWDPCoverTypeBackgroundColors[(ReportDataSet.FieldByName('DEPT_OWDP_COVER_TYPE_CODE').AsDeptOWDPCoverType)];
  ADBText.Color:= DeptOWDPCoverTypeBackgroundColors[(ReportDataSet.FieldByName('DEPT_OWDP_COVER_TYPE_CODE').AsDeptOWDPCoverType)];
  ADBText.Font.Color:= DeptOWDPCoverTypeFontColors[(ReportDataSet.FieldByName('DEPT_OWDP_COVER_TYPE_CODE').AsDeptOWDPCoverType)];
end;

procedure TrptOccupationAndEmployee.QRChildBand2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
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
      SetColumnColor(shpOWDPIsCapacityGenerator, dbtOWDPIsCapacityGenerator);
    end;
end;

procedure TrptOccupationAndEmployee.QRChildBand3BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  DoBeforeChildBandPrint(Sender, PrintBand);
end;

procedure TrptOccupationAndEmployee.QRChildBand4BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var
  i: Integer;
begin
  inherited;
  
  DoBeforeChildBandPrint(Sender, PrintBand);

  // tia gyrbavi pederasi ot qreport shte mi obiasniat li s dokumentacia ili source kak
  // moga da naucha koi sa QRShapes v edin band? shtoto parenta im e reporta, pyk property band neshto niama
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

end.
