unit fPriorityIntervalEditFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFieldEditFrame, DB, ActnList, StdCtrls, JvDBLookup, AbmesFields,
  DBClient, AbmesClientDataSet, JvExControls, JvComponent, System.Actions;

type
  TfrPriorityIntervalEditFrame = class(TFieldEditFrame)
    cdsPriorities: TAbmesClientDataSet;
    cdsPrioritiesPRIORITY_CODE: TAbmesFloatField;
    cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField;
    cdsPrioritiesPRIORITY_COLOR: TAbmesFloatField;
    cdsPrioritiesPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    dsPriorities: TDataSource;
    cbBeginPriorityCode: TJvDBLookupCombo;
    lblDash: TLabel;
    cbEndPriorityCode: TJvDBLookupCombo;
    cdsPrioritiesPRIORITY_NO: TAbmesFloatField;
    procedure actFrameUpdate(Sender: TObject);
    procedure dsDataDataChange(Sender: TObject; Field: TField);
  private
    FRequiresInitialUpdate: Boolean;
  public
    constructor Create(AOwner: TComponent); override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  end;

implementation

uses uUtils;

resourcestring
  SInvalidInterval = 'Некоректен интервал на приоритетите: началният приоритет трябва да е по-малък или равен на крайния';

{$R *.dfm}

{ TfrPriorityIntervalEditFrame }

procedure TfrPriorityIntervalEditFrame.CloseDataSets;
begin
  cdsPriorities.Close;
  inherited;
end;

constructor TfrPriorityIntervalEditFrame.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  
  FRequiresInitialUpdate:= True;
  FieldNames:= 'BEGIN_PRIORITY_CODE;END_PRIORITY_CODE';
end;

procedure TfrPriorityIntervalEditFrame.OpenDataSets;
begin
  inherited;
  cdsPriorities.Open;
end;

procedure TfrPriorityIntervalEditFrame.actFrameUpdate(Sender: TObject);
begin
  inherited;

  if FRequiresInitialUpdate then
    begin
      Assert(FieldCount = 2);
      FRequiresInitialUpdate:= False;
      cbBeginPriorityCode.DataField:= Fields[0].FieldName;
      cbEndPriorityCode.DataField:= Fields[1].FieldName;
    end;  { if }
end;

procedure TfrPriorityIntervalEditFrame.dsDataDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if Assigned(Field) and
     ( (Field = Fields[0]) or (Field = Fields[1]) ) and
     not Fields[0].IsNull and
     not Fields[1].IsNull and
     (cdsPriorities.Lookup('PRIORITY_CODE', Fields[0].AsInteger, 'PRIORITY_NO') > cdsPriorities.Lookup('PRIORITY_CODE', Fields[1].AsInteger, 'PRIORITY_NO')) then
    raise Exception.Create(SInvalidInterval);
end;

end.

