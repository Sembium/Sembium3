unit fMonth;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fDBFrame, DB, ActnList, AbmesFields, DBClient, AbmesClientDataSet,
  JvDBLookup, StdCtrls, JvExControls, JvComponent;

type
  TfrMonth = class(TDBFrame)
    cdsMonths: TAbmesClientDataSet;
    cdsMonthsMONTH_NO: TAbmesFloatField;
    cdsMonthsMONTH_NAME: TAbmesWideStringField;
    lblMonth: TLabel;
    cbMonth: TJvDBLookupCombo;
    dsMonths: TDataSource;
    procedure cdsMonthsAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    procedure NewReadOnlySet; override;
  public
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  end;

implementation

uses
  uUtils;

{$R *.dfm}

procedure TfrMonth.cdsMonthsAfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;

  for i:= 1 to 12 do
    cdsMonths.AppendRecord([i, FormatSettings.LongMonthNames[i]]);
end;

procedure TfrMonth.OpenDataSets;
begin
  cdsMonths.CreateDataSet;
  inherited;
end;

procedure TfrMonth.CloseDataSets;
begin
  inherited;
  cdsMonths.Close;
end;

procedure TfrMonth.NewReadOnlySet;
begin
  inherited;
  cbMonth.ReadOnly:= ReadOnly;
end;

end.
