unit fSysRoleFieldEditFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFieldEditFrame, DB, ActnList, JvExControls, JvDBLookup, StdCtrls,
  Mask, DBCtrls, AbmesFields, DBClient, AbmesClientDataSet, uSysRoleClientUtils;

type
  TfrSysRoleFieldEditFrame = class(TFieldEditFrame)
    cdsSysRoles: TAbmesClientDataSet;
    cdsSysRolesSYS_ROLE_CODE: TAbmesFloatField;
    cdsSysRolesSYS_ROLE_NO: TAbmesFloatField;
    cdsSysRolesSYS_ROLE_NAME: TAbmesWideStringField;
    gbSysRole: TGroupBox;
    edtSysRoleNo: TDBEdit;
    cbSysRoleName: TJvDBLookupCombo;
    edtSysRoleName: TDBEdit;
    cdsSysRole: TAbmesClientDataSet;
    dsSysRole: TDataSource;
    cdsSysRoleSYS_ROLE_CODE: TAbmesFloatField;
    cdsSysRoleSYS_ROLE_NO: TAbmesFloatField;
    cdsSysRole_SYS_ROLE_NAME: TAbmesWideStringField;
    procedure actFrameUpdate(Sender: TObject);
    procedure cdsSysRole_SYS_ROLE_NAMEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsSysRoleSYS_ROLE_CODEChange(Sender: TField);
    procedure cdsSysRoleSYS_ROLE_NOChange(Sender: TField);
    procedure cdsSysRoleBeforeOpen(DataSet: TDataSet);
  private
    FUpdatingSysRoleNoField: Boolean;
    FInDataChange: Boolean;
    FSysRoleTypeSelection: TSysRoleType;
    procedure CheckSysRoleDataSetOpened;
  protected
    procedure DataChange(Sender: TObject); override;
    procedure UpdateData(Sender: TObject); override;
  public
    property SysRoleTypeSelection: TSysRoleType read FSysRoleTypeSelection write FSysRoleTypeSelection;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses
  uClientUtils, uUtils;

{$R *.dfm}

{ TfrSysRoleFieldEditFrame }

procedure TfrSysRoleFieldEditFrame.actFrameUpdate(Sender: TObject);
const
  DisplayEmptyStrings: array[Boolean] of string = (' ', SAllInBrackets);

var
  IsReadOnly: Boolean;
begin
  inherited;

  IsReadOnly:=
    ReadOnly or
    not Assigned(dsData.DataSet) or
    not dsData.DataSet.CanModify;

  edtSysRoleNo.ReadOnly:= IsReadOnly;
  cbSysRoleName.ReadOnly:= IsReadOnly;

  edtSysRoleNo.Color:= ReadOnlyColors[IsReadOnly];
  cbSysRoleName.Color:= ReadOnlyColors[IsReadOnly];

  cbSysRoleName.Visible:= not IsReadOnly;
  edtSysRoleName.Visible:= IsReadOnly;

  cbSysRoleName.DisplayEmpty:= DisplayEmptyStrings[ShowAllWhenEmpty];
end;

procedure TfrSysRoleFieldEditFrame.CheckSysRoleDataSetOpened;
begin
  if not cdsSysRole.Active then
    begin
      cdsSysRole.CreateDataSet;
      cdsSysRole.Append;
    end;  { if }
end;

procedure TfrSysRoleFieldEditFrame.OpenDataSets;
begin
  cdsSysRoles.Open;
  CheckSysRoleDataSetOpened;
  inherited OpenDataSets;
end;

procedure TfrSysRoleFieldEditFrame.CloseDataSets;
begin
  inherited CloseDataSets;
  cdsSysRole.Close;
  cdsSysRoles.Close;
end;

procedure TfrSysRoleFieldEditFrame.cdsSysRole_SYS_ROLE_NAMEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if ShowAllWhenEmpty then
    AllWhenNullGetText(Sender, Text, DisplayText)
  else
    Text:= Sender.AsString;
end;

procedure TfrSysRoleFieldEditFrame.cdsSysRoleBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsSysRoles.Params.ParamByName('SYS_ROLE_TYPE_CODE').AsFloat:= SysRoleTypeToInt(SysRoleTypeSelection);
end;

procedure TfrSysRoleFieldEditFrame.cdsSysRoleSYS_ROLE_CODEChange(Sender: TField);
begin
  inherited;
  FUpdatingSysRoleNoField:= True;
  try
    cdsSysRoleSYS_ROLE_NO.AsVariant:=
      cdsSysRoles.Lookup('SYS_ROLE_CODE', cdsSysRoleSYS_ROLE_CODE.AsVariant, 'SYS_ROLE_NO');

    ForceUpdateRecord;
  finally
    FUpdatingSysRoleNoField:= False;
  end;  { try }
end;

procedure TfrSysRoleFieldEditFrame.cdsSysRoleSYS_ROLE_NOChange(Sender: TField);
begin
  inherited;
  if not FUpdatingSysRoleNoField then
    cdsSysRoleSYS_ROLE_CODE.AsVariant:=
      cdsSysRoles.Lookup('SYS_ROLE_NO', cdsSysRoleSYS_ROLE_NO.AsVariant, 'SYS_ROLE_CODE');
end;

constructor TfrSysRoleFieldEditFrame.Create(AOwner: TComponent);
begin
  inherited;
  FieldNames:= 'SYS_ROLE_CODE';
end;

procedure TfrSysRoleFieldEditFrame.DataChange(Sender: TObject);
begin
  inherited DataChange(Sender);

  if not FInDataChange and (FieldCount > 0) and Assigned(Fields[0]) then
    begin
      FInDataChange:= True;
      try
        CheckSysRoleDataSetOpened;
        cdsSysRoleSYS_ROLE_CODE.AsVariant:= Fields[0].AsVariant;
      finally
        FInDataChange:= False;
      end;  { try }
    end;  { if }
end;

procedure TfrSysRoleFieldEditFrame.UpdateData(Sender: TObject);
var
  DestDataSet: TDataSet;
begin
  inherited UpdateData(Sender);

  if FInDataChange then
    Exit;

  DestDataSet:= Fields[0].DataSet;

  CheckEditMode(DestDataSet);
  try
    Fields[0].AsVariant:= cdsSysRoleSYS_ROLE_CODE.AsVariant;
  except
    Reset;
    raise;
  end;  { try }
end;

end.
