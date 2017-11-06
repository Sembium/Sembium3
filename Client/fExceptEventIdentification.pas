unit fExceptEventIdentification;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFieldEditFrame, DB, ActnList, StdCtrls, fBaseFrame, fDBFrame,
  fDateFieldEditFrame, Mask, DBCtrls, AbmesFields, DBClient, AbmesClientDataSet,
  AbmesDBCheckBox, fTimeFieldEditFrame, JvExControls, JvComponent, JvDBLookup,
  ExtCtrls, fTreeNodeFieldEditFrame, fTreeOnlyNodeFieldEditFrame, fExceptEventTypeFieldEditFrame, fExceptEventTypeFieldEditFrameBald;

type
  TfrExceptEventIdentification = class(TFieldEditFrame)
    gbExceptEventIdentification: TGroupBox;
    lblState: TLabel;
    edtState: TDBEdit;
    edtExceptEventNo: TDBEdit;
    lblExceptEventNo: TLabel;
    lblExceptEventCreateDate: TLabel;
    frExceptEventCreateDate: TfrDateFieldEditFrame;
    frExceptEventCreateTime: TfrTimeFieldEditFrame;
    lblExceptEventCreateTime: TLabel;
    lblExceptEventType: TLabel;
    cdsExceptEvent: TAbmesClientDataSet;
    cdsExceptEventEXCEPT_EVENT_NO: TAbmesFloatField;
    cdsExceptEventEXCEPT_EVENT_TYPE_CODE: TAbmesFloatField;
    cdsExceptEventCREATE_DATE: TAbmesSQLTimeStampField;
    cdsExceptEventCREATE_TIME: TAbmesSQLTimeStampField;
    dsExceptEvent: TDataSource;
    cdsExceptEventSTATE_CODE: TAbmesFloatField;
    lblLevel: TLabel;
    edtLevel: TDBEdit;
    cdsExceptEventEXCEPT_EVENT_LEVEL_CODE: TAbmesFloatField;
    cdsExceptEventLevels: TAbmesClientDataSet;
    cdsExceptEventLevelsEXCEPT_EVENT_LEVEL_CODE: TAbmesFloatField;
    cdsExceptEventLevelsEXCEPT_EVENT_LEVEL_NO: TAbmesFloatField;
    cdsExceptEventLevelsEXCEPT_EVENT_LEVEL_NAME: TAbmesWideStringField;
    cdsExceptEventLevelsEXCEPT_EVENT_LEVEL_ABBREV: TAbmesWideStringField;
    cdsExceptEvent_EXCEPT_EVENT_LEVEL_NAME: TAbmesWideStringField;
    edtCauses: TDBEdit;
    lblCauese: TLabel;
    edtConsequences: TDBEdit;
    lblConsequences: TLabel;
    cdsExceptEventHAS_CAUSES: TAbmesFloatField;
    cdsExceptEventHAS_CONSEQUENCES: TAbmesFloatField;
    frExceptEventType: TfrExceptEventTypeFieldEditFrameBald;
    procedure cdsExceptEventBeforeOpen(DataSet: TDataSet);
    procedure cdsExceptEventSTATE_CODEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actFrameUpdate(Sender: TObject);
  private
    FSavedLevelEditBoxColor: TColor;
  public
    procedure Initialize; override;
    procedure Finalize; override;
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses
  Math, uExceptEventClientUtils, DateUtils, uClientDateTime;

{$R *.dfm}

{ TfrExceptEventIdentification }

procedure TfrExceptEventIdentification.actFrameUpdate(Sender: TObject);
var
  CreateDateTime: TDateTime;
begin
  inherited;

  CreateDateTime:= cdsExceptEventCREATE_DATE.AsDateTime + cdsExceptEventCREATE_TIME.AsDateTime;

  if (IntToExceptEventLevel(cdsExceptEventEXCEPT_EVENT_LEVEL_CODE.AsInteger) = eelMinimal) and
     (HoursBetween(ContextNow, CreateDateTime) >= LoginContext.MinimalExceptEventHours) then
    edtLevel.Color:= ExceptEventsWarningColor
  else
    edtLevel.Color:= FSavedLevelEditBoxColor;
end;

procedure TfrExceptEventIdentification.cdsExceptEventBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  Assert((FieldCount = 1) and Assigned(Fields[0]));
  cdsExceptEvent.Params.ParamByName('EXCEPT_EVENT_CODE').AsInteger:= Fields[0].AsInteger;
end;

constructor TfrExceptEventIdentification.Create(AOwner: TComponent);
begin
  inherited;
  FieldNames:= 'EXCEPT_EVENT_CODE';
  FSavedLevelEditBoxColor:= edtLevel.Color;
end;

procedure TfrExceptEventIdentification.Initialize;
begin
  inherited;
  frExceptEventCreateDate.FieldNames:= 'CREATE_DATE';
  frExceptEventCreateTime.FieldNames:= 'CREATE_TIME';

  cdsExceptEvent.Open;
end;

procedure TfrExceptEventIdentification.Finalize;
begin
  cdsExceptEvent.Close;
  inherited;
end;

procedure TfrExceptEventIdentification.cdsExceptEventSTATE_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText and
     InRange(Sender.AsInteger, Low(ExceptEventStateAbbrevs), High(ExceptEventStateAbbrevs)) then
    Text:= ExceptEventStateAbbrevs[Sender.AsInteger]
  else
    Text:= Sender.AsString;
end;

end.
