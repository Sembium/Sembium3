unit fStatusesAbstract;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fRightFlatButtonGridForm, JvComponentBase, JvCaptionButton, DB,
  AbmesFields, ParamDataSet, ActnList, DBClient,
  AbmesClientDataSet, Grids, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin,
  DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls, GridsEh, Menus;

type
  TfmStatusesAbstract = class(TRightFlatButtonGridForm)
    cdsStatuses: TAbmesClientDataSet;
    cdsGridDataSTATUS_DATE: TAbmesSQLTimeStampField;
    cdsGridDataNEXT_STATUS_DATE: TAbmesSQLTimeStampField;
    cdsGridData_EXISTANCE_MONTHS: TAbmesFloatField;
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure cdsGridDataBeforeDelete(DataSet: TDataSet);
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
    procedure cdsGridDataAfterPost(DataSet: TDataSet);
    procedure cdsGridDataAfterDelete(DataSet: TDataSet);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    FOuterDataSetSavePoint: Integer;
    FGridDataSavePoint: Integer;
    procedure UpdateRelatedData;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetEditRecordEnabled: Boolean; override;
    procedure AssignOuterDataSetStatusFields; virtual;
    function CurrentStatusBeginDate: TDateTime; virtual;
    function IsResetStatus: Boolean; virtual;
    procedure DoCancelUpdates; override;
    function GetFinalStatusDate: TDateTime; virtual;
  public
    procedure Initialize; override;
  end;

implementation

uses
  uUtils, DateUtils, uClientDateTime;

{$R *.dfm}

resourcestring
  SCannotDeleteLastStatus = 'Трябва да съществува поне един статус';
  SStatusDateCannotBeFuture = 'Не можете да задавате статус за бъдеща дата';

procedure TfmStatusesAbstract.AssignOuterDataSetStatusFields;
begin
  OuterDataSet.FieldByName('EXISTANCE_MONTHS').AsVariant:=
    cdsGridData_EXISTANCE_MONTHS.AsVariant;
  OuterDataSet.FieldByName('CURRENT_STATUS_REACH_MONTHS').AsInteger:=
    RealRound(MonthSpan(CurrentStatusBeginDate, cdsGridDataSTATUS_DATE.AsDateTime));
end;

procedure TfmStatusesAbstract.cdsGridDataAfterDelete(DataSet: TDataSet);
begin
  inherited;
  UpdateRelatedData;
end;

procedure TfmStatusesAbstract.cdsGridDataAfterPost(DataSet: TDataSet);
begin
  inherited;
  UpdateRelatedData;
end;

procedure TfmStatusesAbstract.cdsGridDataBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if (cdsGridData.RecordCount = 1) then
    raise Exception.Create(SCannotDeleteLastStatus);
end;

procedure TfmStatusesAbstract.cdsGridDataBeforeOpen(DataSet: TDataSet);
var
  dsf: TDataSetField;
  DataSetField: TDataSetField;
begin
  DataSetField:= nil;
  for dsf in OuterDataSet.Fields.OfType<TDataSetField> do
    DataSetField:= dsf;

  Assert(Assigned(DataSetField), 'OuterDataSet must have a field of type TDataSetField');

  cdsGridData.DataSetField:= DataSetField;

  inherited;
end;

procedure TfmStatusesAbstract.cdsGridDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (cdsGridData.FieldByName('STATUS_DATE').AsDateTime > ContextDate) then
    raise Exception.Create(SStatusDateCannotBeFuture);
end;

procedure TfmStatusesAbstract.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsGridData_EXISTANCE_MONTHS.AsInteger:=
    RealRound(MonthSpan(cdsGridDataSTATUS_DATE.AsDateTime, cdsGridDataNEXT_STATUS_DATE.AsDateTime));
end;

procedure TfmStatusesAbstract.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataSTATUS_DATE.AsDateTime:= ContextDate;
  cdsGridDataNEXT_STATUS_DATE.AsDateTime:= ContextDate;
end;

procedure TfmStatusesAbstract.OpenDataSets;
begin
  inherited;
  cdsStatuses.Open;
end;

procedure TfmStatusesAbstract.CloseDataSets;
begin
  cdsStatuses.Close;
  inherited;
end;

function TfmStatusesAbstract.GetEditRecordEnabled: Boolean;
begin
  Result:= False;
end;

procedure TfmStatusesAbstract.Initialize;
begin
  inherited;
  FOuterDataSetSavePoint:= (OuterDataSet as TClientDataSet).SavePoint;
  FGridDataSavePoint:= cdsGridData.SavePoint;
end;

function TfmStatusesAbstract.IsResetStatus: Boolean;
begin
  Result:= False;
end;

function TfmStatusesAbstract.GetFinalStatusDate: TDateTime;
begin
  Result:= ContextDate;
end;

procedure TfmStatusesAbstract.UpdateRelatedData;
var
  b: TBookmark;
  NextStatusDate: TDateTime;
begin
  inherited;

  cdsGridData.DisableControls;
  try
    b:= cdsGridData.Bookmark;
    try
      NextStatusDate:= GetFinalStatusDate;
      cdsGridData.Last;
      while not cdsGridData.Bof do
        begin
          if (cdsGridDataNEXT_STATUS_DATE.AsDateTime <> NextStatusDate) then
            begin
              cdsGridData.Edit;
              try
                cdsGridDataNEXT_STATUS_DATE.AsDateTime:= NextStatusDate;
                cdsGridData.Post;
              except
                cdsGridData.Cancel;
                raise;
              end;
            end;

          NextStatusDate:= cdsGridDataSTATUS_DATE.AsDateTime;
          cdsGridData.Prior;
        end;  { while }

      cdsGridData.Last;

      CheckEditMode(OuterDataSet);
      AssignOuterDataSetStatusFields;
      OuterDataSet.Post;
    finally
      cdsGridData.Bookmark:= b;
    end;
  finally
    cdsGridData.EnableControls;
  end;
end;

function TfmStatusesAbstract.CurrentStatusBeginDate: TDateTime;
var
  b: TBookmark;
begin
  inherited;

  with cdsGridData do
    begin
      DisableControls;
      try
        b:= Bookmark;
        try
          Last;
          while (not Bof) and (not IsResetStatus) do
            Prior;

          Result:= cdsGridDataSTATUS_DATE.AsDateTime;
        finally
          Bookmark:= b;
        end;
      finally
        EnableControls;
      end;
    end;  { with }
end;

procedure TfmStatusesAbstract.DoCancelUpdates;
begin
//  inherited;
  cdsGridData.SavePoint:= FGridDataSavePoint;
  (OuterDataSet as TClientDataSet).SavePoint:= FOuterDataSetSavePoint;
end;

procedure TfmStatusesAbstract.FormCreate(Sender: TObject);
begin
  inherited;
  RegisterDateFields(cdsGridData);
end;

end.
