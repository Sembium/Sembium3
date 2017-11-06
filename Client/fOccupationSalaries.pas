unit fOccupationSalaries;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fRightFlatButtonGridForm, JvComponentBase, JvCaptionButton, DB,
  AbmesFields, ParamDataSet, ActnList, DBClient,
  AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin,
  DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls;

type
  TfmOccupationSalaries = class(TRightFlatButtonGridForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FSavePoint: Integer;
    FSaveGridData: TAbmesClientDataSet;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure DoApplyUpdates; override;
    procedure DoCancelUpdates; override;
  public
    procedure Initialize; override;
    procedure Finalize; override;
  end;

implementation

uses
  dMain, fOccupationSalary;

{$R *.dfm}

{ TfmOccupationSalaries }

procedure TfmOccupationSalaries.OpenDataSets;
begin
//  inherited; do nothing
end;

procedure TfmOccupationSalaries.CloseDataSets;
begin
//  inherited; do nothing
end;

procedure TfmOccupationSalaries.DoApplyUpdates;
begin
//  inherited; do nothing
end;

procedure TfmOccupationSalaries.DoCancelUpdates;
begin
//  inherited;
  (OuterDataSet as TClientDataSet).SavePoint:= FSavePoint;
end;

procedure TfmOccupationSalaries.Initialize;
begin
  inherited;

  dsGridData.DataSet:= OuterDataSet;
  FSavePoint:= (OuterDataSet as TClientDataSet).SavePoint;

  FSaveGridData:= cdsGridData;
  cdsGridData:= OuterDataSet as TAbmesClientDataSet;

  RegisterDateFields(dsGridData.DataSet);
end;

procedure TfmOccupationSalaries.Finalize;
begin
  inherited;
  cdsGridData:= FSaveGridData;
end;

procedure TfmOccupationSalaries.FormCreate(Sender: TObject);
begin
  inherited;

  EditFormClass:= TfmOccupationSalary;

  SetBaseCurrencyAbbrevColumnCaption(grdData.Columns[1]);
end;

end.
