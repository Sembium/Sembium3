unit fCraftEditFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFieldEditFrame, StdCtrls, JvExControls, JvComponent,
  JvDBLookup, DB, AbmesFields, DBClient, AbmesClientDataSet, ActnList,
  Mask, DBCtrls, System.Actions;

type
  TfrCraftEditFrame = class(TFieldEditFrame)
    cdsCraftTypes: TAbmesClientDataSet;
    cdsCraftTypesCRAFT_TYPE_CODE: TAbmesFloatField;
    cdsCraftTypesCRAFT_TYPE_NAME: TAbmesWideStringField;
    cdsCrafts: TAbmesClientDataSet;
    cdsCraftsCRAFT_CODE: TAbmesFloatField;
    cdsCraftsCRAFT_NAME: TAbmesWideStringField;
    cdsCraftsCRAFT_TYPE_CODE: TAbmesFloatField;
    cbCraftType: TJvDBLookupCombo;
    lblCraftType: TLabel;
    lblCraftCode: TLabel;
    cbCraft: TJvDBLookupCombo;
    dsCraftTypes: TDataSource;
    dsCrafts: TDataSource;
    cdsCraft: TAbmesClientDataSet;
    cdsCraftCRAFT_TYPE_CODE: TAbmesFloatField;
    cdsCraftCRAFT_CODE: TAbmesFloatField;
    dsCraft: TDataSource;
    edtCraftCode: TDBEdit;
    cdsCraft_CRAFT_TYPE_NAME: TAbmesWideStringField;
    cdsCraft_CRAFT_NAME: TAbmesWideStringField;
    procedure cdsCraftCRAFT_TYPE_CODEChange(Sender: TField);
    procedure cdsCraftCRAFT_CODEChange(Sender: TField);
    procedure actFrameUpdate(Sender: TObject);
  private
    FUpdatingInnerDataSet: Boolean;
    FInDataChange: Boolean;
  protected
    procedure DataChange(Sender: TObject); override;
    procedure UpdateData(Sender: TObject); override;
  public
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  end;

implementation

uses uClientUtils, uUtils, uColorConsts;

{$R *.dfm}

{ TfrCraftEditFrame }

procedure TfrCraftEditFrame.CloseDataSets;
begin
  cdsCrafts.Close;
  cdsCraftTypes.Close;
  cdsCraft.Close;
  inherited;
end;

procedure TfrCraftEditFrame.OpenDataSets;
begin
  inherited;
  cdsCraft.CreateDataSet;
  cdsCraftTypes.Open;
  cdsCrafts.Open;
  with cdsCrafts do
    begin
      Filter:= '(CRAFT_TYPE_CODE = 0)';
      Filtered:= True;
    end;
end;

procedure TfrCraftEditFrame.cdsCraftCRAFT_TYPE_CODEChange(Sender: TField);
begin
  inherited;

  if FUpdatingInnerDataSet then
    Exit;

  FUpdatingInnerDataSet:= True;
  try
    cdsCraftCRAFT_CODE.Clear;
    with cdsCrafts do
      begin
        Filter:= '(CRAFT_TYPE_CODE = ' + IntToStr(cdsCraftCRAFT_TYPE_CODE.AsInteger) + ')';
        Filtered:= True;
      end;

    if (FieldCount = 2) and
       not FInDataChange then
      ForceUpdateRecord;

  finally
    FUpdatingInnerDataSet:= False;
  end;
end;

procedure TfrCraftEditFrame.DataChange(Sender: TObject);
begin
  inherited DataChange(Sender);

  if not SettingModified and
     not SettingEdit and
     not FInDataChange and
     (FieldCount > 0) and
     Assigned(Fields[0]) then
    begin
      FInDataChange:= True;
      try
        CheckEditMode(cdsCraft);
        case FieldCount of
          1:
            begin
              cdsCrafts.Filtered:= False;
              cdsCraftCRAFT_TYPE_CODE.AsVariant:= cdsCrafts.Lookup('CRAFT_CODE', Fields[0].AsVariant, 'CRAFT_TYPE_CODE');
              cdsCraftCRAFT_CODE.AsVariant:= Fields[0].AsVariant;
            end;
          2:
            begin
              cdsCraftCRAFT_TYPE_CODE.AsVariant:= Fields[0].AsVariant;
              cdsCraftCRAFT_CODE.AsVariant:= Fields[1].AsVariant;
            end;
          else
            raise Exception.Create('frCraftFrame: invalid fields');
        end;

      finally
        FInDataChange:= False;
      end;

    end;
end;

procedure TfrCraftEditFrame.UpdateData(Sender: TObject);
begin
  inherited UpdateData(Sender);

  Assert(cdsCraft.Active);
  Assert(FieldCount > 0);
  Assert(Assigned(Fields[0]));
  Assert(Assigned(Fields[0].DataSet));

  cdsCraft.UpdateRecord;

  try
    CheckEditMode(Fields[0].DataSet);

    case FieldCount of
      1:
        Fields[0].AsVariant:= cdsCraftCRAFT_CODE.AsVariant;
      2:
        begin
          Fields[0].AsVariant:= cdsCraftCRAFT_TYPE_CODE.AsVariant;
          Fields[1].AsVariant:= cdsCraftCRAFT_CODE.AsVariant;
        end;
      else
        raise Exception.Create('frCraftFrame: invalid fields');
    end;
    
  except
    Reset;
    raise;
  end;  { try }
end;

procedure TfrCraftEditFrame.cdsCraftCRAFT_CODEChange(Sender: TField);
begin
  inherited;

  if FUpdatingInnerDataSet or FInDataChange then
    Exit;

  FUpdatingInnerDataSet:= True;
  try
    if not cdsCrafts.Locate('CRAFT_CODE', cdsCraftCRAFT_CODE.AsInteger, []) then
      cdsCraftCRAFT_CODE.Clear;
  finally
    FUpdatingInnerDataSet:= False;
  end;


  if not FInDataChange then
    begin
      FInDataChange:= True;
      try
        ForceUpdateRecord;
      finally
        FInDataChange:= False;
      end;
    end;
end;

procedure TfrCraftEditFrame.actFrameUpdate(Sender: TObject);
var
  IsReadOnly: Boolean;
begin
  inherited;

  IsReadOnly:= ReadOnly or not Assigned(dsData.DataSet) or not (dsData.DataSet.CanModify);

  cbCraftType.ReadOnly:= IsReadOnly;
  cbCraftType.Color:= ReadOnlyColors[IsReadOnly];
  edtCraftCode.ReadOnly:= IsReadOnly;
  edtCraftCode.Color:= ReadOnlyColors[IsReadOnly];
  cbCraft.ReadOnly:= IsReadOnly;
  cbCraft.Color:= ReadOnlyColors[IsReadOnly];
end;

end.
