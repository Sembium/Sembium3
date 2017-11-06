unit fOccupationShifts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fRightFlatButtonGridForm, JvComponent, JvCaptionButton, DB,
  AbmesFields, ParamDataSet, ActnList, DBClient,
  AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin,
  DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls, JvComponentBase;

type
  TfmOccupationShifts = class(TRightFlatButtonGridForm)
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
  fOccupationShift;

{$R *.dfm}

{ TfmOccupationShifts }

procedure TfmOccupationShifts.OpenDataSets;
begin
//  inherited; do nothing
end;

procedure TfmOccupationShifts.CloseDataSets;
begin
//  inherited; do nothing
end;

procedure TfmOccupationShifts.Initialize;
begin
  inherited;

  dsGridData.DataSet:= OuterDataSet;
  FSavePoint:= (OuterDataSet as TClientDataSet).SavePoint;

  FSaveGridData:= cdsGridData;
  cdsGridData:= OuterDataSet as TAbmesClientDataSet;

  RegisterDateFields(dsGridData.DataSet);
end;

procedure TfmOccupationShifts.Finalize;
begin
  inherited;
  cdsGridData:= FSaveGridData;
end;

procedure TfmOccupationShifts.DoApplyUpdates;
begin
//  inherited; do nothing
end;

procedure TfmOccupationShifts.DoCancelUpdates;
begin
//  inherited;
  (OuterDataSet as TClientDataSet).SavePoint:= FSavePoint;
end;

procedure TfmOccupationShifts.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmOccupationShift;
end;

end.
