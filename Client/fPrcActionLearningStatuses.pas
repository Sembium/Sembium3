unit fPrcActionLearningStatuses;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, JvComponentBase, JvCaptionButton, ParamDataSet, ActnList, DB,
  AbmesFields, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid,
  ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  fGridForm, uClientTypes, uClientPrcData, dDocClient, fDateIntervalFrame,
  fBaseFrame, fDBFrame, fFieldEditFrame, fEnumFieldEditFrame,
  fProcessActionFieldEditFrame;

type
  TfmPrcActionLearningStatuses = class(TGridForm)
    cdsGridDataSTATUS_DATE: TAbmesSQLTimeStampField;
    cdsGridDataPRC_LEARNING_STATUS_CODE: TAbmesFloatField;
    cdsPrcLearningStatuses: TAbmesClientDataSet;
    cdsPrcLearningStatusesPRC_LEARNING_STATUS_CODE: TAbmesFloatField;
    cdsPrcLearningStatusesPRC_LEARNING_STATUS_NO: TAbmesFloatField;
    cdsPrcLearningStatusesPRC_LEARNING_STATUS_NAME: TAbmesWideStringField;
    cdsGridData_PRC_LEARNING_STATUS_NAME: TAbmesWideStringField;
    cdsGridDataIS_FIRST_STATUS: TAbmesFloatField;
    cdsGridDataSTATUS_EXISTANCE_MONTHS: TAbmesFloatField;
    pnlTop: TPanel;
    frProcessAction: TfrProcessActionFieldEditFrame;
    gbDateInterval: TGroupBox;
    frDateInterval: TfrDateIntervalFrame;
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
    procedure cdsGridDataAfterPost(DataSet: TDataSet);
    procedure cdsGridDataSTATUS_EXISTANCE_MONTHSGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataAfterDelete(DataSet: TDataSet);
  private
    FPrcData: TClientProcessOwnerData;
    FGridData: TAbmesClientDataSet;
    FLearningBeginDate: TDateTime;
    FLearningEndDate: TDateTime;
    FCalculatingExistanceMonths: Boolean;
    procedure RefreshMonthsExistance;
  protected
    procedure DoGridApplyUpdates; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetEditRecordEnabled: Boolean; override;
    function GetDelRecordEnabled: Boolean; override;
  public
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      APrcData: TClientProcessOwnerData = nil; ALearningBeginDate: TDateTime = 0;
      ALearningEndDate: TDateTime = 0); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      APrcData: TClientProcessOwnerData = nil; ALearningBeginDate: TDateTime = 0;
      ALearningEndDate: TDateTime = 0): Boolean;
  end;

implementation

uses
  uPrcUtils, uUtils, fPrcActionLearningStatus, Math, uClientDateTime,
  DateUtils, StrUtils;

resourcestring
  SStatusDatesAreNotUnique = 'Не може да задавате два статуса за една и съща дата';
  SUnmasteredStatusCannotBeChosen = 'Този статус не може да бъде избран';
  SFutureStatusDateNotAllowed = 'Не може да избирате бъдеща дата за статус на усвояване';
  SMonths = 'месеца';
  SMonth = 'месец';

{$R *.dfm}

{ TfmPrcActionLearningStatuses }

procedure TfmPrcActionLearningStatuses.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmPrcActionLearningStatus;
  RegisterDateFields(cdsGridData);
end;

procedure TfmPrcActionLearningStatuses.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  APrcData: TClientProcessOwnerData; ALearningBeginDate: TDateTime;
  ALearningEndDate: TDateTime);
var
  ChildLevels: TClientProcessLevelDataArray;
  ChildLevel: TClientProcessLevelData;
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FPrcData:= APrcData;
  FLearningBeginDate:= ALearningBeginDate;
  FLearningEndDate:= ALearningEndDate;

  ChildLevels:= FPrcData.LevelChildren(FPrcData.LevelByDataSet(dsData.DataSet));
  Assert(Length(ChildLevels) = 1);

  ChildLevel:= ChildLevels[0];
  Assert(ChildLevel.HasLearningStatus);

  FGridData:= ChildLevel.cdsLevelData;
end;

class function TfmPrcActionLearningStatuses.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  APrcData: TClientProcessOwnerData; ALearningBeginDate: TDateTime;
  ALearningEndDate: TDateTime): Boolean;
var
  f: TfmPrcActionLearningStatuses;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, APrcData, ALearningBeginDate, ALearningEndDate);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmPrcActionLearningStatuses.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frProcessAction) or
     (AFrame = frDateInterval) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;  { if }

  inherited SetDBFrameReadOnly(AFrame);
end;

procedure TfmPrcActionLearningStatuses.OpenDataSets;
begin
  cdsPrcLearningStatuses.Open;
  inherited OpenDataSets;
end;

procedure TfmPrcActionLearningStatuses.CloseDataSets;
begin
  inherited CloseDataSets;
  cdsPrcLearningStatuses.Close;
end;

procedure TfmPrcActionLearningStatuses.cdsGridDataAfterOpen(DataSet: TDataSet);
var
  ParentLevel: TClientProcessLevelData;
  ChildLevel: TClientProcessLevelData;
begin
  inherited;
  cdsGridData.Append;
  try
    cdsGridDataSTATUS_DATE.AsDateTime:= FLearningBeginDate;
    cdsGridDataPRC_LEARNING_STATUS_CODE.AsInteger:= plsUnmastered;
    cdsGridDataIS_FIRST_STATUS.AsBoolean:= True;
    cdsGridData.Post;
  except
    cdsGridData.Cancel;
    raise;
  end;  { try }

  ParentLevel:= FPrcData.LevelByDataSet(dsData.DataSet);
  ChildLevel:= FPrcData.LevelByDataSet(FGridData);

  FGridData.First;
  while not FGridData.Eof do
    begin
      if (ChildLevel.LogicalParentFullStrKeyValue = ParentLevel.FullStrKeyValue) then
        begin
          cdsGridData.Append;
          try
            cdsGridData.AssignFields(FGridData);
            cdsGridDataIS_FIRST_STATUS.AsBoolean:= False;
            cdsGridData.Post;
          except
            cdsGridData.Cancel;
            raise;
          end;  { try }
        end;  { if }

      FGridData.Next;
    end;  { while }
end;

procedure TfmPrcActionLearningStatuses.DoGridApplyUpdates;
var
  ParentLevel: TClientProcessLevelData;
  ChildLevel: TClientProcessLevelData;
  RecordFound: Boolean;
  PrevStatusDate: TDateTime;
  cdsGridDataSavePoint: Integer;
  FGridDataSavePoint: Integer;
begin
  // do not call inherited

  cdsGridData.First;
  PrevStatusDate:= cdsGridDataSTATUS_DATE.AsDateTime;

  cdsGridData.Next;
  while not cdsGridData.Eof do
    begin
      if (cdsGridDataSTATUS_DATE.AsDateTime = PrevStatusDate) then
        raise Exception.Create(SStatusDatesAreNotUnique);

      PrevStatusDate:= cdsGridDataSTATUS_DATE.AsDateTime;
      cdsGridData.Next;
    end;  { while }

  ParentLevel:= FPrcData.LevelByDataSet(dsData.DataSet);
  ChildLevel:= FPrcData.LevelByDataSet(FGridData);

  cdsGridDataSavePoint:= cdsGridData.SavePoint;
  try
    FGridDataSavePoint:= FGridData.SavePoint;
    try
      cdsGridData.Locate('IS_FIRST_STATUS', True, []);
      cdsGridData.Delete;

      // deletes
      FGridData.First;
      while not FGridData.Eof do
        begin
          if (ChildLevel.LogicalParentFullStrKeyValue = ParentLevel.FullStrKeyValue) and
             not cdsGridData.Locate('STATUS_DATE', FGridData.FieldByName('STATUS_DATE').AsVariant, []) then
            FGridData.Delete
          else
            FGridData.Next;
        end;  { while }

      // updates
      FGridData.First;
      while not FGridData.Eof do
        begin
          if (ChildLevel.LogicalParentFullStrKeyValue = ParentLevel.FullStrKeyValue) then
            begin
              cdsGridData.Locate('STATUS_DATE', FGridData.FieldByName('STATUS_DATE').AsVariant, []);
              if (cdsGridDataPRC_LEARNING_STATUS_CODE.AsInteger <> FGridData.FieldByName('PRC_LEARNING_STATUS_CODE').AsInteger) then
                begin
                  FGridData.Edit;
                  try
                    FGridData.FieldByName('PRC_LEARNING_STATUS_CODE').Assign(cdsGridDataPRC_LEARNING_STATUS_CODE);
                    FGridData.Post;
                  except
                    FGridData.Cancel;
                    raise;
                  end;  { try }
                end;  { if }
            end;  { if }

            FGridData.Next;
        end;  { while }

      // inserts
      cdsGridData.First;
      while not cdsGridData.Eof do
        begin
          RecordFound:= False;
          FGridData.First;
          while not FGridData.Eof do
            begin
              if (ChildLevel.LogicalParentFullStrKeyValue = ParentLevel.FullStrKeyValue) and
                 (FGridData.FieldByName('STATUS_DATE').AsDateTime = cdsGridDataSTATUS_DATE.AsDateTime) then
                begin
                  RecordFound:= True;
                  Break;
                end;  { if }

                FGridData.Next;
            end;  { while }

          if not RecordFound then
            begin
              FGridData.Append;
              try
                FGridData.AssignFields(ParentLevel.cdsLevelData);
                FGridData.FieldByName('STATUS_DATE').Assign(cdsGridDataSTATUS_DATE);
                FGridData.FieldByName('PRC_LEARNING_STATUS_CODE').Assign(cdsGridDataPRC_LEARNING_STATUS_CODE);
                FGridData.Post;
              except
                FGridData.Cancel;
                raise;
              end;  { try }
            end;  { if }

          cdsGridData.Next;
        end;  { while }
    except
      FGridData.SavePoint:= FGridDataSavePoint;
      raise;
    end;  { try }
  except
    cdsGridData.SavePoint:= cdsGridDataSavePoint;
    raise;
  end;  { try }

  if Assigned(dsData.DataSet.FindField('PRC_ORG_DISTRIB_STATUS_CODE')) then
    dsData.DataSet.SafeEdit/
      procedure begin
        dsData.DataSet.FieldByName('PRC_ORG_DISTRIB_STATUS_CODE').Clear;
      end;
end;

function TfmPrcActionLearningStatuses.GetDelRecordEnabled: Boolean;
begin
  Result:=
    inherited GetDelRecordEnabled and
    not cdsGridDataIS_FIRST_STATUS.AsBoolean;
end;

function TfmPrcActionLearningStatuses.GetEditRecordEnabled: Boolean;
begin
  Result:=
    inherited GetEditRecordEnabled and
    not cdsGridDataIS_FIRST_STATUS.AsBoolean;
end;

procedure TfmPrcActionLearningStatuses.cdsGridDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (cdsGridDataPRC_LEARNING_STATUS_CODE.AsInteger = plsUnmastered) and
     not cdsGridDataIS_FIRST_STATUS.AsBoolean then
    raise Exception.Create(SUnmasteredStatusCannotBeChosen);

  if (cdsGridDataSTATUS_DATE.AsDateTime > ContextDate) then
    begin
      cdsGridDataSTATUS_DATE.FocusControl;
      raise Exception.Create(SFutureStatusDateNotAllowed);
    end;  { if }
end;

procedure TfmPrcActionLearningStatuses.RefreshMonthsExistance;
var
  b: TBookmark;
  NextStatusDate: TDateTime;
begin
  if FCalculatingExistanceMonths then
    Exit;

  FCalculatingExistanceMonths:= True;
  try
    NextStatusDate:= Min(ContextDate, FLearningEndDate);
    cdsGridData.DisableControls;
    try
      b:= cdsGridData.Bookmark;
      try
        cdsGridData.Last;
        while not cdsGridData.Bof do
          begin
            cdsGridData.Edit;
            try
              cdsGridDataSTATUS_EXISTANCE_MONTHS.AsInteger:=
                RealRound(MonthSpan(cdsGridDataSTATUS_DATE.AsDateTime, NextStatusDate));

              cdsGridData.Post;
            except
              cdsGridData.Cancel;
              raise;
            end;  { try }

            NextStatusDate:= cdsGridDataSTATUS_DATE.AsDateTime;
            cdsGridData.Prior;
          end;  { while }
      finally
        cdsGridData.Bookmark:= b;
      end;  { try }
    finally
      cdsGridData.EnableControls;
    end;  { try }
  finally
    FCalculatingExistanceMonths:= False;
  end;  { try }
end;

procedure TfmPrcActionLearningStatuses.cdsGridDataAfterPost(DataSet: TDataSet);
begin
  inherited;
  RefreshMonthsExistance;
end;

procedure TfmPrcActionLearningStatuses.cdsGridDataAfterDelete(DataSet: TDataSet);
begin
  inherited;
  RefreshMonthsExistance;
end;

procedure TfmPrcActionLearningStatuses.cdsGridDataSTATUS_EXISTANCE_MONTHSGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText and not Sender.IsNull then
    Text:= Sender.AsString + ' ' + IfThen(Sender.AsInteger = 1, SMonth, SMonths)
  else
    Text:= Sender.AsString;
end;

end.
