unit fEnumFieldEditFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFieldEditFrame, DB, ActnList, AbmesFields, DBClient,
  AbmesClientDataSet, JvExControls, JvDBLookup, StdCtrls, Mask, DBCtrls;

type
  TEnumFieldEditFrame = class(TFieldEditFrame)
    gbEnumItem: TGroupBox;
    edtEnumItemNo: TDBEdit;
    cbEnumItemName: TJvDBLookupCombo;
    cdsEnumItem: TAbmesClientDataSet;
    dsEnumItem: TDataSource;
    cdsEnumItems: TAbmesClientDataSet;
    edtEnumItemName: TDBEdit;
    dsEnumItems: TDataSource;
    cdsEnumItemENUM_ITEM_CODE: TAbmesFloatField;
    cdsEnumItemENUM_ITEM_NO: TAbmesFloatField;
    cdsEnumItem_ENUM_ITEM_NAME: TAbmesWideStringField;
    procedure actFrameUpdate(Sender: TObject);
    procedure cdsEnumItemENUM_ITEM_CODEChange(Sender: TField);
    procedure cdsEnumItemENUM_ITEM_NOChange(Sender: TField);
    procedure cdsEnumItem_ENUM_ITEM_NAMEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure edtEnumItemNoChange(Sender: TObject);
  private
    FDefaultColor: TColor;
    FReadOnlyColor: TColor;
    FUpdatingEnumItemNoField: Boolean;
    FInDataChange: Boolean;
    procedure CheckEnumItemDataSetIsOpen;
  protected
    class function EnumItemCodeFieldName: string; virtual; abstract;
    class function EnumItemNameFieldName: string; virtual; abstract;
    class function EnumItemNoFieldName: string; virtual; abstract;
    class function GetDefaultFieldNames: string; virtual;
    function GetEnumItemCaption: string; virtual; abstract;
    function GetReadOnlyColor(AReadOnly: Boolean): TColor; virtual;
    procedure DataChange(Sender: TObject); override;
    procedure UpdateData(Sender: TObject); override;
  public
    property DefaultColor: TColor read FDefaultColor write FDefaultColor;
    property ReadOnlyColor: TColor read FReadOnlyColor write FReadOnlyColor;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses
  uClientUtils, uUtils;

{$R *.dfm}

{ TfrEnumFieldEditFrame }

procedure TEnumFieldEditFrame.actFrameUpdate(Sender: TObject);
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

  edtEnumItemNo.ReadOnly:= IsReadOnly;
  cbEnumItemName.ReadOnly:= IsReadOnly;

  edtEnumItemNo.Color:= GetReadOnlyColor(IsReadOnly);
  cbEnumItemName.Color:= GetReadOnlyColor(IsReadOnly);

  cbEnumItemName.Visible:= not IsReadOnly;
  edtEnumItemName.Visible:= IsReadOnly;

  cbEnumItemName.DisplayEmpty:= DisplayEmptyStrings[ShowAllWhenEmpty];

  gbEnumItem.Caption:= Format(' %s ', [GetEnumItemCaption]);
end;

procedure TEnumFieldEditFrame.CheckEnumItemDataSetIsOpen;
begin
  if not cdsEnumItem.Active then
    begin
      cdsEnumItem.CreateDataSet;
      cdsEnumItem.Append;
    end;  { if }
end;

procedure TEnumFieldEditFrame.OpenDataSets;
begin
  cdsEnumItems.Open;
  CheckEnumItemDataSetIsOpen;
  inherited OpenDataSets;
end;

procedure TEnumFieldEditFrame.CloseDataSets;
begin
  inherited CloseDataSets;
  cdsEnumItem.Close;
  cdsEnumItems.Close;
end;

procedure TEnumFieldEditFrame.cdsEnumItemENUM_ITEM_CODEChange(Sender: TField);
begin
  inherited;
  FUpdatingEnumItemNoField:= True;
  try
    cdsEnumItemENUM_ITEM_NO.AsVariant:=
      cdsEnumItems.Lookup(EnumItemCodeFieldName, cdsEnumItemENUM_ITEM_CODE.AsVariant, EnumItemNoFieldName);

    ForceUpdateRecord;
  finally
    FUpdatingEnumItemNoField:= False;
  end;  { try }
end;

procedure TEnumFieldEditFrame.cdsEnumItemENUM_ITEM_NOChange(Sender: TField);
begin
  inherited;
  if not FUpdatingEnumItemNoField then
    cdsEnumItemENUM_ITEM_CODE.AsVariant:=
      cdsEnumItems.Lookup(EnumItemNoFieldName, cdsEnumItemENUM_ITEM_NO.AsVariant, EnumItemCodeFieldName);
end;

procedure TEnumFieldEditFrame.cdsEnumItem_ENUM_ITEM_NAMEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if ShowAllWhenEmpty then
    AllWhenNullGetText(Sender, Text, DisplayText)
  else
    Text:= Sender.AsString;
end;

constructor TEnumFieldEditFrame.Create(AOwner: TComponent);
begin
  inherited;
  FieldNames:= GetDefaultFieldNames;

  cbEnumItemName.LookupField:= EnumItemCodeFieldName;
  cbEnumItemName.LookupDisplay:= Format('%s;%s', [EnumItemNoFieldName, EnumItemNameFieldName]);

  cdsEnumItem_ENUM_ITEM_NAME.LookupKeyFields:= EnumItemCodeFieldName;
  cdsEnumItem_ENUM_ITEM_NAME.LookupResultField:= EnumItemNameFieldName;

  DefaultColor:= ReadOnlyColors[False];
  ReadOnlyColor:= ReadOnlyColors[True];
end;

class function TEnumFieldEditFrame.GetDefaultFieldNames: string;
begin
  Result:= EnumItemCodeFieldName;
end;

function TEnumFieldEditFrame.GetReadOnlyColor(AReadOnly: Boolean): TColor;
begin
  if AReadOnly then
    Result:= ReadOnlyColor
  else
    Result:= DefaultColor;
end;

procedure TEnumFieldEditFrame.edtEnumItemNoChange(Sender: TObject);
begin
  inherited;
  if not FUpdatingEnumItemNoField then
    Modified;
end;

procedure TEnumFieldEditFrame.DataChange(Sender: TObject);
begin
  inherited DataChange(Sender);

  if not FInDataChange and (FieldCount > 0) and Assigned(Fields[0]) then
    begin
      FInDataChange:= True;
      try
        CheckEnumItemDataSetIsOpen;
        cdsEnumItemENUM_ITEM_CODE.AsVariant:= Fields[0].AsVariant;
      finally
        FInDataChange:= False;
      end;  { try }
    end;  { if }
end;

procedure TEnumFieldEditFrame.UpdateData(Sender: TObject);
var
  DestDataSet: TDataSet;
begin
  inherited UpdateData(Sender);

  if FInDataChange then
    Exit;

  cdsEnumItem.UpdateRecord;

  DestDataSet:= Fields[0].DataSet;

  CheckEditMode(DestDataSet);
  try
    Fields[0].AsVariant:= cdsEnumItemENUM_ITEM_CODE.AsVariant;
  except
    Reset;
    raise;
  end;  { try }
end;

end.

