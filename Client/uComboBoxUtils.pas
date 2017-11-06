unit uComboBoxUtils;

interface

uses
  Classes, DBCtrls, Controls, StdCtrls, JvDBLookup, Graphics, DB, uUtils;

procedure ReplaceAllDBComboBoxesWithJvDBLookupComboOf(AComponent: TComponent);
procedure ReplaceDBComboBoxWithJvDBLookupCombo(ADBComboBox: TCustomCombo);
function ReplacedDBComboBox(ADBComboBox: TCustomCombo): TWinControl;

procedure SetLookupComboBoxDisplayFields(ACombo: TJvDBLookupCombo;
  const ADisplayFieldNames: string; const ADropDownWidth: Integer = 0);

type
  TWinControlCommonPropertyHelper = class helper (TWinControlHelper) for TWinControl
  private
    function GetXItemIndex: Integer;
    function GetXValues(Index: Integer): string;
    function GetXReadOnly: Boolean;
    procedure SetXReadOnly(const Value: Boolean);
    function GetXColor: TColor;
    procedure SetXColor(const Value: TColor);
    function GetXField: TField;
    function GetXDataField: string;
    procedure SetXDataField(const Value: string);
    function GetXDataSource: TDataSource;
    procedure SetXDataSource(const Value: TDataSource);
  public
    property XItemIndex: Integer read GetXItemIndex;
    property XValues[Index: Integer]: string read GetXValues;
    property XReadOnly: Boolean read GetXReadOnly write SetXReadOnly;
    property XColor: TColor read GetXColor write SetXColor;
    property XDataField: string read GetXDataField write SetXDataField;
    property XDataSource: TDataSource read GetXDataSource write SetXDataSource;
    property XField: TField read GetXField;
    procedure SetDropDownWidth(ADropDownWidth: Integer);
    procedure SetDropDownCount(ADropDownCount: Integer);
  end;

implementation

uses
  SysUtils, DBClient, JvDBCombobox, Variants, AbmesFields, StrUtils,
  Windows, Messages;

const
  ReplacedDBComboBoxNameSuffix = 'Replaced';

{ TWinControlHelper }

function TWinControlCommonPropertyHelper.GetXItemIndex: Integer;
begin
  Assert(
    (Self is TDBComboBox) or
    (Self is TJvDBComboBox) or
    (Self is TJvDBLookupCombo)
  );

  Result:= -1;

  if (Self is TDBComboBox) or (Self is TJvDBComboBox) then
    Result:= (Self as TCustomCombo).ItemIndex;

  if Self is TJvDBLookupCombo then
    with Self as TJvDBLookupCombo do
      begin
        if LookupSource.DataSet.Locate(LookupField, KeyValue, []) then
          Result:= LookupSource.DataSet.RecNo - 1;

        if (DisplayEmpty <> '') then
          Inc(Result);
      end;
end;

function TWinControlCommonPropertyHelper.GetXValues(Index: Integer): string;
begin
  Assert(
    (Self is TJvDBComboBox) or
    (Self is TJvDBLookupCombo)
  );

  Result:= '';

  if (Self is TJvDBComboBox) then
    Result:= (Self as TJvDBComboBox).Values[Index];

  if (Self is TJvDBLookupCombo) then
    Result:= (Self as TJvDBLookupCombo).KeyValue;
end;

function TWinControlCommonPropertyHelper.GetXReadOnly: Boolean;
begin
  Assert(
    (Self is TDBComboBox) or
    (Self is TJvDBComboBox) or
    (Self is TJvDBLookupCombo)
  );

  Result:= False;

  if (Self is TDBComboBox) then
    Result:= (Self as TDBComboBox).ReadOnly;

  if (Self is TJvDBComboBox) then
    Result:= (Self as TJvDBComboBox).ReadOnly;

  if (Self is TJvDBLookupCombo) then
    Result:= (Self as TJvDBLookupCombo).ReadOnly;
end;

procedure TWinControlCommonPropertyHelper.SetXReadOnly(const Value: Boolean);
begin
  Assert(
    (Self is TDBComboBox) or
    (Self is TJvDBComboBox) or
    (Self is TJvDBLookupCombo)
  );

  if (Self is TDBComboBox) then
    (Self as TDBComboBox).ReadOnly:= Value;

  if (Self is TJvDBComboBox) then
    (Self as TJvDBComboBox).ReadOnly:= Value;

  if (Self is TJvDBLookupCombo) then
    (Self as TJvDBLookupCombo).ReadOnly:= Value;
end;

type
  TControlHack = class(TControl)
  public
    property Color;
  end;

function TWinControlCommonPropertyHelper.GetXColor: TColor;
begin
  Assert(
    (Self is TDBComboBox) or
    (Self is TJvDBComboBox) or
    (Self is TJvDBLookupCombo)
  );

  Result:= TControlHack(Self).Color;
end;

procedure TWinControlCommonPropertyHelper.SetXColor(const Value: TColor);
begin
  Assert(
    (Self is TDBComboBox) or
    (Self is TJvDBComboBox) or
    (Self is TJvDBLookupCombo)
  );

  TControlHack(Self).Color:= Value;
end;

procedure TWinControlCommonPropertyHelper.SetDropDownWidth(ADropDownWidth: Integer);
begin
  Assert(
    (Self is TDBComboBox) or
    (Self is TJvDBComboBox) or
    (Self is TJvDBLookupCombo)
  );

  if (Self is TJvDBLookupCombo) then
    (Self as TJvDBLookupCombo).DropDownWidth:= ADropDownWidth
  else
    SendMessage(Self.Handle, CB_SETDROPPEDWIDTH, ADropDownWidth, 0);
end;

procedure TWinControlCommonPropertyHelper.SetDropDownCount(ADropDownCount: Integer);
begin
  Assert(
    (Self is TDBComboBox) or
    (Self is TJvDBComboBox) or
    (Self is TJvDBLookupCombo)
  );

  if (Self is TDBComboBox) then
    (Self as TDBComboBox).DropDownCount:= ADropDownCount;

  if (Self is TJvDBComboBox) then
    (Self as TJvDBComboBox).DropDownCount:= ADropDownCount;

  if (Self is TJvDBLookupCombo) then
    (Self as TJvDBLookupCombo).DropDownCount:= ADropDownCount;
end;

function TWinControlCommonPropertyHelper.GetXField: TField;
begin
  Assert(
    (Self is TDBComboBox) or
    (Self is TJvDBComboBox) or
    (Self is TJvDBLookupCombo)
  );

  Result:= nil;

  if (Self is TDBComboBox) then
    Result:= (Self as TDBComboBox).Field;

  if (Self is TJvDBComboBox) then
    Result:= (Self as TJvDBComboBox).Field;

  if (Self is TJvDBLookupCombo) then
    Result:= (Self as TJvDBLookupCombo).Field;
end;

function TWinControlCommonPropertyHelper.GetXDataField: string;
begin
  Assert(
    (Self is TDBComboBox) or
    (Self is TJvDBComboBox) or
    (Self is TJvDBLookupCombo)
  );

  Result:= '';

  if (Self is TDBComboBox) then
    Result:= (Self as TDBComboBox).DataField;

  if (Self is TJvDBComboBox) then
    Result:= (Self as TJvDBComboBox).DataField;

  if (Self is TJvDBLookupCombo) then
    Result:= (Self as TJvDBLookupCombo).DataField;
end;

procedure TWinControlCommonPropertyHelper.SetXDataField(const Value: string);
begin
  Assert(
    (Self is TDBComboBox) or
    (Self is TJvDBComboBox) or
    (Self is TJvDBLookupCombo)
  );

  if (Self is TDBComboBox) then
    (Self as TDBComboBox).DataField:= Value;

  if (Self is TJvDBComboBox) then
    (Self as TJvDBComboBox).DataField:= Value;

  if (Self is TJvDBLookupCombo) then
    (Self as TJvDBLookupCombo).DataField:= Value;
end;

function TWinControlCommonPropertyHelper.GetXDataSource: TDataSource;
begin
  Assert(
    (Self is TDBComboBox) or
    (Self is TJvDBComboBox) or
    (Self is TJvDBLookupCombo)
  );

  Result:= nil;

  if (Self is TDBComboBox) then
    Result:= (Self as TDBComboBox).DataSource;

  if (Self is TJvDBComboBox) then
    Result:= (Self as TJvDBComboBox).DataSource;

  if (Self is TJvDBLookupCombo) then
    Result:= (Self as TJvDBLookupCombo).DataSource;
end;

procedure TWinControlCommonPropertyHelper.SetXDataSource(const Value: TDataSource);
begin
  Assert(
    (Self is TDBComboBox) or
    (Self is TJvDBComboBox) or
    (Self is TJvDBLookupCombo)
  );

  if (Self is TDBComboBox) then
    (Self as TDBComboBox).DataSource:= Value;

  if (Self is TJvDBComboBox) then
    (Self as TJvDBComboBox).DataSource:= Value;

  if (Self is TJvDBLookupCombo) then
    (Self as TJvDBLookupCombo).DataSource:= Value;
end;

{ uComboBoxUtils routines }

procedure ReplaceAllDBComboBoxesWithJvDBLookupComboOf(AComponent: TComponent);
var
  i: Integer;
begin
  with AComponent do
    for i:= 0 to ComponentCount - 1 do
      if ( (Components[i] is TDBComboBox) and
           ((Components[i] as TDBComboBox).Style = csDropDownList) ) or
         ( (Components[i] is TJvDBComboBox) and
           ((Components[i] as TJvDBComboBox).Style = csDropDownList) ) then
        ReplaceDBComboBoxWithJvDBLookupCombo(Components[i] as TCustomCombo)
      else
        ReplaceAllDBComboBoxesWithJvDBLookupComboOf(Components[i]);
end;  { ReplaceAllDBComboBoxesWithJvDBLookupComboOf }

type
  TCustomComboHack = class(TCustomCombo)
  public
    property OnChange;
  end;

procedure ReplaceDBComboBoxWithJvDBLookupCombo(ADBComboBox: TCustomCombo);
const
  CodeFieldName = 'CODE';
  NameFieldName = 'NAME';

  function GetDBComboBoxFieldDataType: TFieldType;
  var
    Fld: TField;
  begin
    Fld:= ADBComboBox.XField;

    if (Fld is TAbmesFloatField) and
       ((Fld as TAbmesFloatField).FieldValueType = fvtBoolean) then
      Result:= ftWideString
    else
      Result:= Fld.DataType;
  end;  { GetDBComboBoxFieldDataType }

  function GetDBComboBoxKeyValue(AIndex: Integer): Variant;
  begin
    Result:= '';

    if (ADBComboBox is TDBComboBox) then
      Result:= (ADBComboBox as TDBComboBox).Items[AIndex];

    if (ADBComboBox is TJvDBComboBox) then
      Result:= (ADBComboBox as TJvDBComboBox).Values[AIndex];

    if (Result = '') then
      Result:= Null;
  end;  { GetDBComboBoxKeyValue }

  function DBComboBoxFieldSetsAsString: Boolean;
  var
    Fld: TField;
  begin
    Fld:= ADBComboBox.XField;
    Result:=
      Assigned(Fld.OnSetText) or
      ( ( (Fld is TAbmesFloatField) and
          ((Fld as TAbmesFloatField).FieldValueType = fvtBoolean) ) );
  end;  { DBComboBoxFieldSetsAsString }

var
  NewComboBox: TJvDBLookupCombo;
  LookupDataSet: TClientDataSet;
  LookupDataSource: TDataSource;
  i: Integer;
begin
  Assert(Assigned(ADBComboBox));
  Assert(Assigned(ADBComboBox.Owner));
  Assert((ADBComboBox is TDBComboBox) or (ADBComboBox is TJvDBComboBox));

  if Assigned(ADBComboBox.XField) then
    begin
      LookupDataSet:= TClientDataSet.Create(ADBComboBox.Owner);
      try
        if DBComboBoxFieldSetsAsString or
           (GetDBComboBoxFieldDataType = ftWideString) then
          LookupDataSet.FieldDefs.Add(CodeFieldName, ftWideString, 250)
        else
          LookupDataSet.FieldDefs.Add(CodeFieldName, GetDBComboBoxFieldDataType);

        LookupDataSet.FieldDefs.Add(NameFieldName, ftWideString, 250);
        LookupDataSet.CreateDataSet;

        for i := 0 to ADBComboBox.Items.Count - 1 do
          LookupDataSet.AppendRecord([GetDBComboBoxKeyValue(i), ADBComboBox.Items[i]]);

        LookupDataSource:= TDataSource.Create(ADBComboBox.Owner);
        try
          LookupDataSource.DataSet:= LookupDataSet;

          NewComboBox:= TJvDBLookupCombo.Create(ADBComboBox.Owner);
          try
            NewComboBox.Name:= ADBComboBox.Name + ReplacedDBComboBoxNameSuffix;

            NewComboBox.EscapeKeyReset:= False;
            NewComboBox.Width:= ADBComboBox.Width;
            NewComboBox.Height:= ADBComboBox.Height;
            NewComboBox.Top:= ADBComboBox.Top;
            NewComboBox.Left:= ADBComboBox.Left;
            NewComboBox.TabStop:= ADBComboBox.TabStop;
            NewComboBox.OnChange:= TCustomComboHack(ADBComboBox).OnChange;

            if LookupDataSet.Locate(CodeFieldName, Null, []) then
              begin
                NewComboBox.DisplayEmpty:= LookupDataSet.FieldByName(NameFieldName).DisplayText;
                LookupDataSet.Delete;
              end;

            NewComboBox.LookupSource:= LookupDataSource;
            NewComboBox.LookupField:= CodeFieldName;
            NewComboBox.LookupDisplay:= NameFieldName;
            NewComboBox.DataSource:= ADBComboBox.XDataSource;
            NewComboBox.DataField:= ADBComboBox.XDataField;

            NewComboBox.Parent:= ADBComboBox.Parent;
            NewComboBox.TabOrder:= ADBComboBox.TabOrder;

            ADBComboBox.XDataSource:= nil;
            ADBComboBox.Parent:= nil;
          except
            FreeAndNil(NewComboBox);
            raise;
          end;
        except
          FreeAndNil(LookupDataSource);
          raise;
        end;
      except
        FreeAndNil(LookupDataSet);
        raise;
      end;
    end;
end;  { ReplaceDBComboBoxWithJvDBLookupCombo }

function ReplacedDBComboBox(ADBComboBox: TCustomCombo): TWinControl;
begin
  if Assigned(ADBComboBox) then
    begin
      Assert(Assigned(ADBComboBox.Owner));
      Result:= ADBComboBox.Owner.FindComponent(ADBComboBox.Name + ReplacedDBComboBoxNameSuffix) as TWinControl;

      if not Assigned(Result) then
        Result:= ADBComboBox;
    end
  else
    Result:= nil;
end;

procedure SetLookupComboBoxDisplayFields(ACombo: TJvDBLookupCombo;
  const ADisplayFieldNames: string; const ADropDownWidth: Integer);
var
  Fld: TField;
  ds: TDataSource;
begin
  if (ACombo.Field.FieldKind = fkLookup) then
    begin
      Fld:= ACombo.Field;

      ACombo.DataField:= Fld.KeyFields;

      ACombo.LookupSource:= TDataSource.Create(ACombo.Owner);
      ACombo.LookupSource.DataSet:= Fld.LookupDataSet;

      ACombo.LookupField:= Fld.LookupKeyFields;
      ACombo.LookupDisplay:= Fld.LookupResultField;
    end;

  ACombo.LookupDisplay:= ADisplayFieldNames;

  ds:= ACombo.DataSource;
  ACombo.DataSource:= nil;
  ACombo.DataSource:= ds;

  if (ADropDownWidth <> 0) then
    ACombo.DropDownWidth:= ADropDownWidth;
end;

end.
