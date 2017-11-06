unit fRequirementAbstract;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, DBCtrls, AbmesFields,
  JvComponentBase, JvCaptionButton, dDocClient, uClientTypes;

type
  TfmRequirementAbstract = class(TEditForm)
    rgRequirement: TDBRadioGroup;
    cdsRequirements: TAbmesClientDataSet;
    procedure RadioButtonDblClick(Sender: TObject);
  private
    FStartEditMode: Boolean;
    FSaveRequirementCode: Variant;
    FRequirementField: TField;
    procedure FillRequirements(ADataSet: TDataSet);
  protected
    procedure DoApplyUpdates; override;
    procedure DoCancelUpdates; override;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      ARequirementField: TField = nil); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      ARequirementField: TField = nil): Boolean;
    procedure Initialize; override;
  end;

implementation

uses
  dMain;

{$R *.dfm}

{ TfmRequirementAbstract }

procedure TfmRequirementAbstract.DoApplyUpdates;
begin
  if not FStartEditMode then
    inherited;
end;

procedure TfmRequirementAbstract.DoCancelUpdates;
begin
  if FStartEditMode then
    rgRequirement.Field.AsVariant:= FSaveRequirementCode
  else
    inherited;
end;

procedure TfmRequirementAbstract.Initialize;
begin
  inherited Initialize;

  FStartEditMode:= (dsData.State in dsEditModes);

  if Assigned(FRequirementField) and (FRequirementField.FieldKind = fkLookup) then
    begin
      FillRequirements(FRequirementField.LookupDataSet);
      rgRequirement.DataField:= FRequirementField.KeyFields;
    end
  else
    begin
      cdsRequirements.Open;
      try
        FillRequirements(cdsRequirements);
      finally
        cdsRequirements.Close;
      end;  { try }

      if Assigned(FRequirementField) then
        rgRequirement.DataField:= FRequirementField.FieldName;
    end;  { if }

  rgRequirement.DataSource:= nil;
  rgRequirement.DataSource:= dsData;

  FSaveRequirementCode:= rgRequirement.Field.AsVariant;
end;

procedure TfmRequirementAbstract.FillRequirements(ADataSet: TDataSet);
var
  b: TBookmark;
  i: Integer;
begin
  rgRequirement.Values.Clear;
  rgRequirement.Items.Clear;

  with ADataSet do
    begin
      Assert(FieldCount >= 2);
      Assert(Fields[0] is TAbmesFloatField);
      Assert(Fields[1] is TAbmesWideStringField);

      DisableControls;
      try
        b:= Bookmark;
        try
          First;
          while not Eof do
            begin
              rgRequirement.Values.Add(Fields[0].AsString);
              rgRequirement.Items.Add(Fields[1].AsString);

              Next;
            end;  { while }
        finally
          Bookmark:= b;
        end;
      finally
        EnableControls;
      end;  { try }
    end;  { with }

  for i:= 0 to rgRequirement.Items.Count - 1 do
    rgRequirement.Buttons[i].OnDblClick:= RadioButtonDblClick;
end;

procedure TfmRequirementAbstract.RadioButtonDblClick(Sender: TObject);
begin
  dsData.DataSet.UpdateRecord;
  ModalResult:= mrOK;
end;

procedure TfmRequirementAbstract.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  ARequirementField: TField);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FRequirementField:= ARequirementField;
end;

class function TfmRequirementAbstract.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  ARequirementField: TField): Boolean;
var
  f: TfmRequirementAbstract;
begin
  f:= CreateEx;
  try
    if Assigned(ARequirementField) then
      ADataSet:= ARequirementField.DataSet;
      
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, ARequirementField);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

end.
