unit uTreeNodeParams;

interface

uses
  Classes, DB, AbmesFields;

// TreeNodeParam Types
const
  ptNom = 0;
  ptFloat = 1;
  ptString = 2;

{ TTreeNodeParams }

type
  TTreeNodeParam = class;

  TTreeNodeParams = class(TCollection)
  private
    FPrefix: string;
  protected
    function GetItem(Index: Integer): TTreeNodeParam;
    procedure SetItem(Index: Integer; const Value: TTreeNodeParam);

    function GetAsVariant: OleVariant; virtual;
    procedure SetAsVariant(const Value: OleVariant); virtual;

    class function GetPrefix: string; virtual; abstract;

    property Prefix: string read FPrefix;
  public
    constructor Create;
    property Items[Index: Integer]: TTreeNodeParam read GetItem write SetItem;

    procedure AssignFromDataSet(ADataSet: TDataSet);
    procedure AssignToDataSet(ADataSet: TDataSet);
    function FindTreeNodeParam(ATreeNodeParamId: Integer): TTreeNodeParam;

    function GetSqlWhereCondition(ATableAlias: string): string;
    function GetSqlHavingCondition(ATableAlias: string): string;
    function GetSqlSimpleWhereCondition(ATableAlias: string): string;

    function IsEmpty: Boolean; virtual;

    property AsVariant: OleVariant read GetAsVariant write SetAsVariant;
  end;

  TTreeNodeParam = class(TCollectionItem)
  private
    FTreeNodeParamId: Integer;
    FPrefix: string;
  protected
    function GetAsVariant: OleVariant; virtual;
    procedure SetAsVariant(const Value: OleVariant); virtual;
    function InternalGetSqlCondition(ATableAlias: string): string; virtual;

    property Prefix: string read FPrefix;
  public
    class function ParamType: Integer; virtual; abstract;
    class function ParamIsEmpty(ADataSet: TDataSet): Boolean; virtual; abstract;

    constructor Create(ATreeNodeParams: TTreeNodeParams;
      APrefix: string;
      ATreeNodeParamId: Integer = 0); reintroduce; virtual;
    property TreeNodeParamId: Integer read FTreeNodeParamId;

    procedure AssignFromDataSet(ADataSet: TDataSet); virtual; abstract;
    procedure AssignToDataSet(ADataSet: TDataSet); virtual; abstract;
    function GetSqlCondition(ATableAlias: string): string;

    property AsVariant: OleVariant read GetAsVariant write SetAsVariant;
  end;

  TTreeNodeParamClass = class of TTreeNodeParam;

type
  TNomTreeNodeParam = class(TTreeNodeParam)
  private
    FValueNomId: Integer;
    FValueNomItemId: Integer;
    FValueNomItemName: string;
  protected
    function GetAsVariant: OleVariant; override;
    procedure SetAsVariant(const Value: OleVariant); override;
    function InternalGetSqlCondition(ATableAlias: string): string; override;
  public
    class function ParamType: Integer; override;
    class function ParamIsEmpty(ADataSet: TDataSet): Boolean; override;

    procedure AssignFromDataSet(ADataSet: TDataSet); override;
    procedure AssignToDataSet(ADataSet: TDataSet); override;
  end;

type
  TFloatTreeNodeParam = class(TTreeNodeParam)
  private
    FValueFloatMin: Variant;
    FValueFloatMax: Variant;
  protected
    function GetAsVariant: OleVariant; override;
    procedure SetAsVariant(const Value: OleVariant); override;
    function InternalGetSqlCondition(ATableAlias: string): string; override;
  public
    class function ParamType: Integer; override;
    class function ParamIsEmpty(ADataSet: TDataSet): Boolean; override;

    procedure AssignFromDataSet(ADataSet: TDataSet); override;
    procedure AssignToDataSet(ADataSet: TDataSet); override;
  end;

type
  TStringTreeNodeParam = class(TTreeNodeParam)
  private
    FValueString: string;
  protected
    function GetAsVariant: OleVariant; override;
    procedure SetAsVariant(const Value: OleVariant); override;
    function InternalGetSqlCondition(ATableAlias: string): string; override;
  public
    class function ParamType: Integer; override;
    class function ParamIsEmpty(ADataSet: TDataSet): Boolean; override;

    procedure AssignFromDataSet(ADataSet: TDataSet); override;
    procedure AssignToDataSet(ADataSet: TDataSet); override;
  end;

  TProductParams = class(TTreeNodeParams)
  protected
    class function GetPrefix: string; override;
  end;

function GetTreeNodeParamTypeClass(ATreeNodeParamType: Integer): TTreeNodeParamClass;

function PackedTreeNodeParams(ATreeNodeParams: TTreeNodeParams): Variant;

function GetParamDisplayValue(AParamValuesDataSet: TDataSet; ValueType: Integer): string;
function GetParamValueDisplayName(AValueNomItemNameField, AValueNomItemDescriptionField: TAbmesWideStringField): string;

const
  TreeNodeParamsTransferCode = 1000;
  TrueText = '(1 = 1)';

const
  SUnsupportedTreeNodeParamType = 'Unsupported TreeNodeParamType: %d';

implementation

uses
  SysUtils, Variants, uUtils, StrUtils;

const
  OrText = ' or ';
  AndText = ' and ';
  FalseText = '(1 <> 1)';

{ TTreeNodeParams }

procedure TTreeNodeParams.AssignFromDataSet(ADataSet: TDataSet);
var
  p: TTreeNodeParam;
  TreeNodeParamClass: TTreeNodeParamClass;
begin
  Assert(Assigned(ADataSet));

  BeginUpdate;
  try
    Clear;

    if ADataSet.Active then
      ADataSet.TempDisableControls/
        ADataSet.PreserveBookmark/
          ADataSet.ForEach/
            procedure begin
              if (ADataSet.FieldByName('IS_READ_ONLY').AsInteger = 0) then
                begin
                  TreeNodeParamClass:=
                    GetTreeNodeParamTypeClass(ADataSet.FieldByName('VALUE_TYPE').AsInteger);

                  if not TreeNodeParamClass.ParamIsEmpty(ADataSet) then
                    begin
                      p:= TreeNodeParamClass.Create(Self, Prefix, ADataSet.FieldByName('NODE_PARAM_CODE').AsInteger);
                      try
                        p.AssignFromDataSet(ADataSet);
                      except
                        FreeAndNil(p);
                        raise;
                      end;
                    end;
                end;
            end;
  finally
    EndUpdate;
  end;
end;

procedure TTreeNodeParams.AssignToDataSet(ADataSet: TDataSet);
var
  p: TTreeNodeParam;
begin
  Assert(Assigned(ADataSet));

  ADataSet.TempDisableControls/
    ADataSet.PreserveBookmark/
      ADataSet.ForEach/
        procedure begin
          if (ADataSet.FieldByName('IS_READ_ONLY').AsInteger = 0) then
            begin
              p:= FindTreeNodeParam(ADataSet.FieldByName('NODE_PARAM_CODE').AsInteger);
              if (p <> nil) then
                ADataSet.SafeEdit/
                  procedure begin
                    p.AssignToDataSet(ADataSet);
                  end;
            end;
        end;
end;

constructor TTreeNodeParams.Create;
begin
  inherited Create(TTreeNodeParam);

  FPrefix:= GetPrefix;
end;

function TTreeNodeParams.FindTreeNodeParam(
  ATreeNodeParamId: Integer): TTreeNodeParam;
var
  i: Integer;
begin
  Result:= nil;
  for i:= 0 to Count - 1 do
    if (Items[i].TreeNodeParamId = ATreeNodeParamId) then
      begin
        Result:= Items[i];
        Break;
      end;
end;

function TTreeNodeParams.GetAsVariant: OleVariant;
var
  v: OleVariant;
  i: Integer;
begin
  v:= VarArrayCreate([0, Count - 1], varVariant);

  for i:= 0 to Count - 1 do
    v[i]:= VarArrayOf([Items[i].ParamType, Items[i].GetAsVariant]);

  Result:= v;
end;

function TTreeNodeParams.GetItem(Index: Integer): TTreeNodeParam;
begin
  Result:= inherited GetItem(Index) as TTreeNodeParam;
end;

function TTreeNodeParams.GetSqlWhereCondition(ATableAlias: string): string;
var
  i: Integer;
begin
  Result:= '';

  for i:= 0 to Count - 1 do
    Result:= Result + Items[i].GetSqlCondition(ATableAlias) + OrText;

  if (Result = '') then
    Result:= TrueText
  else
    Result:= '(' + Copy(Result, 1, Length(Result) - Length(OrText)) + ')';
end;

function TTreeNodeParams.IsEmpty: Boolean;
begin
  Result:= (Count = 0);
end;

function TTreeNodeParams.GetSqlHavingCondition(ATableAlias: string): string;
begin
  if (Count = 0) then
    Result:= TrueText
  else
    Result:= Format('(Count(%s.%s_PARAM_CODE) = %d)', [ATableAlias, Prefix, Count]);
end;

procedure TTreeNodeParams.SetAsVariant(const Value: OleVariant);

  procedure AddParam(const v: Variant);
  var
    p: TTreeNodeParam;
  begin
    Assert(VarIsArray(v));
    Assert(VarArrayLowBound(v, 1) = 0);
    Assert(VarArrayHighBound(v, 1) = 1);
    Assert(VarIsType(v[0], varInteger));

    p:= GetTreeNodeParamTypeClass(v[0]).Create(Self, Prefix);
    try
      p.AsVariant:= v[1];
    except
      FreeAndNil(p);
      raise;
    end; { try }
  end;

var
  i: Integer;
begin
  Assert(VarIsArray(Value));

  BeginUpdate;
  try
    Clear;
    for i:= VarArrayLowBound(Value, 1) to VarArrayHighBound(Value, 1) do
      AddParam(Value[i]);
  finally
    EndUpdate;
  end;
end;

procedure TTreeNodeParams.SetItem(Index: Integer;
  const Value: TTreeNodeParam);
begin
  inherited SetItem(Index, Value);
end;

function TTreeNodeParams.GetSqlSimpleWhereCondition(
  ATableAlias: string): string;
begin
  if (Count = 0) then
    Result:= '(0=0)'
  else
    Result:=
      'exists(' + SLineBreak +
      '  select' + SLineBreak +
      '    1' + SLineBreak +
      '  from' + SLineBreak +
      Format('    %s_RELATIONS nr', [Prefix]) + SLineBreak +
      '  where' + SLineBreak +
      Format('    (nr.ANCESTOR_%s_CODE = %s.%s_CODE) and', [Prefix, ATableAlias, Prefix]) + SLineBreak +
      '    ' + SLineBreak +
      '    ( ( select' + SLineBreak +
      Format('          Count(np.%s_PARAM_CODE) as PARAM_COUNT' + SLineBreak, [Prefix]) +
      '        from' + SLineBreak +
      Format('          %s_PARAMS np' + SLineBreak, [Prefix]) +
      '        where' + SLineBreak +
      Format('          (np.%s_CODE = nr.DESCENDANT_%s_CODE) and' + SLineBreak, [Prefix, Prefix]) +

      GetSqlWhereCondition('np') + SLineBreak +

      Format('      ) = %d' + SLineBreak, [Count]) +
      '    )' + SLineBreak +
      ')';
end;

{ TTreeNodeParam }

constructor TTreeNodeParam.Create(ATreeNodeParams: TTreeNodeParams;
  APrefix: string; ATreeNodeParamId: Integer);
begin
  inherited Create(ATreeNodeParams);
  FPrefix:= APrefix;
  FTreeNodeParamId:= ATreeNodeParamId;
end;

function TTreeNodeParam.GetAsVariant: OleVariant;
begin
  Result:= FTreeNodeParamId;
end;

function TTreeNodeParam.GetSqlCondition(ATableAlias: string): string;
begin
  Result:= InternalGetSqlCondition(ATableAlias);

  if (Result = '') then
    Result:= FalseText
  else
    Result:= '(' + Result + ')';
end;

function TTreeNodeParam.InternalGetSqlCondition(
  ATableAlias: string): string;
begin
  Result:=
    Format('(%s.%s_PARAM_CODE = %d)', [ATableAlias, Prefix, TreeNodeParamId]);
end;

procedure TTreeNodeParam.SetAsVariant(const Value: OleVariant);
begin
  Assert(VarIsType(Value, varInteger));
  FTreeNodeParamId:= Value;
end;

{ TNomTreeNodeParam }

procedure TNomTreeNodeParam.AssignFromDataSet(ADataSet: TDataSet);
begin
  Assert(Assigned(ADataSet));

  with ADataSet do
    begin
      FValueNomId:= FieldByName('VALUE_NOM_CODE').AsInteger;
      FValueNomItemId:= FieldByName('VALUE_NOM_ITEM_CODE').AsInteger;
      FValueNomItemName:= FieldByName('VALUE_NOM_ITEM_NAME').AsString;
    end;
end;

procedure TNomTreeNodeParam.AssignToDataSet(ADataSet: TDataSet);
begin
  Assert(Assigned(ADataSet));

  with ADataSet do
    begin
      FieldByName('VALUE_NOM_CODE').AsInteger:= FValueNomId;
      FieldByName('VALUE_NOM_ITEM_CODE').AsInteger:= FValueNomItemId;
      FieldByName('VALUE_NOM_ITEM_NAME').AsString:= FValueNomItemName;
    end;
end;

function TNomTreeNodeParam.GetAsVariant: OleVariant;
begin
  Result:= VarArrayOf([
    inherited GetAsVariant,
    FValueNomId,
    FValueNomItemId,
    FValueNomItemName]);
end;

function TNomTreeNodeParam.InternalGetSqlCondition(
  ATableAlias: string): string;
begin
  Result:= inherited InternalGetSqlCondition(ATableAlias);

  if (Result <> '') then
    Result:= Result + AndText;

  Result:=
    Result +
    '(' + ATableAlias + '.VALUE_NOM_CODE = ' + IntToStr(FValueNomId) + ')' +
    AndText +
    '(' + ATableAlias + '.VALUE_NOM_ITEM_CODE = ' + IntToStr(FValueNomItemId) + ')';
end;

class function TNomTreeNodeParam.ParamType: Integer;
begin
  Result:= ptNom;
end;

class function TNomTreeNodeParam.ParamIsEmpty(ADataSet: TDataSet): Boolean;
begin
  with ADataSet do
    Result:=
      FieldByName('VALUE_NOM_CODE').IsNull or
      FieldByName('VALUE_NOM_ITEM_CODE').IsNull;
end;

procedure TNomTreeNodeParam.SetAsVariant(const Value: OleVariant);
begin
  Assert(VarIsArray(Value));
  Assert(VarArrayLowBound(Value, 1) = 0);
  Assert(VarArrayHighBound(Value, 1) = 3);
  Assert(VarIsType(Value[1], varInteger));
  Assert(VarIsType(Value[2], varInteger));
  Assert(VarIsType(Value[3], varOleStr));

  inherited SetAsVariant(Value[0]);
  FValueNomId:= Value[1];
  FValueNomItemId:= Value[2];
  FValueNomItemName:= Value[3];
end;

{ TFloatTreeNodeParam }

procedure TFloatTreeNodeParam.AssignFromDataSet(ADataSet: TDataSet);
begin
  Assert(Assigned(ADataSet));

  with ADataSet do
    begin
      FValueFloatMin:= FieldByName('VALUE_FLOAT_MIN').AsVariant;
      FValueFloatMax:= FieldByName('VALUE_FLOAT_MAX').AsVariant;
    end;
end;

procedure TFloatTreeNodeParam.AssignToDataSet(ADataSet: TDataSet);
begin
  Assert(Assigned(ADataSet));

  with ADataSet do
    begin
      FieldByName('VALUE_FLOAT_MIN').AsVariant:= FValueFloatMin;
      FieldByName('VALUE_FLOAT_MAX').AsVariant:= FValueFloatMax;
    end;
end;

function TFloatTreeNodeParam.GetAsVariant: OleVariant;
begin
  Result:= VarArrayOf([
    inherited GetAsVariant,
    FValueFloatMin,
    FValueFloatMax]);
end;

function TFloatTreeNodeParam.InternalGetSqlCondition(
  ATableAlias: string): string;
var
  s1, s2: string;
begin
  Result:= inherited InternalGetSqlCondition(ATableAlias);

  if (Result <> '') then
    Result:= Result + AndText;

  if VarIsNull(FValueFloatMin) then
    s1:= TrueText
  else
    s1:= '(' + ATableAlias + '.VALUE_FLOAT >= ' + FloatToStr(FValueFloatMin) + ')';

  if VarIsNull(FValueFloatMax) then
    s2:= TrueText
  else
    s2:= '(' + ATableAlias + '.VALUE_FLOAT <= ' + FloatToStr(FValueFloatMax) + ')';

  Result:= Result + s1 + AndText + s2;
end;

class function TFloatTreeNodeParam.ParamType: Integer;
begin
  Result:= ptFloat;
end;

class function TFloatTreeNodeParam.ParamIsEmpty(ADataSet: TDataSet): Boolean;
begin
  with ADataSet do
    Result:=
      FieldByName('VALUE_FLOAT_MIN').IsNull and
      FieldByName('VALUE_FLOAT_MAX').IsNull;
end;

procedure TFloatTreeNodeParam.SetAsVariant(const Value: OleVariant);
begin
  Assert(VarIsArray(Value));
  Assert(VarArrayLowBound(Value, 1) = 0);
  Assert(VarArrayHighBound(Value, 1) = 2);
  Assert(VarIsNull(Value[1]) or VarIsType(Value[1], varDouble));
  Assert(VarIsNull(Value[2]) or VarIsType(Value[2], varDouble));

  inherited SetAsVariant(Value[0]);
  FValueFloatMin:= Value[1];
  FValueFloatMax:= Value[2];
end;

{ TStringTreeNodeParam }

procedure TStringTreeNodeParam.AssignFromDataSet(ADataSet: TDataSet);
begin
  Assert(Assigned(ADataSet));
  FValueString:= ADataSet.FieldByName('VALUE_STRING').AsString;
end;

procedure TStringTreeNodeParam.AssignToDataSet(ADataSet: TDataSet);
begin
  Assert(Assigned(ADataSet));
  ADataSet.FieldByName('VALUE_STRING').AsString:= FValueString;
end;

function TStringTreeNodeParam.GetAsVariant: OleVariant;
begin
  Result:= VarArrayOf([
    inherited GetAsVariant,
    FValueString]);
end;

function TStringTreeNodeParam.InternalGetSqlCondition(
  ATableAlias: string): string;

  function ReplaceWildcards(s: string): string;
  const
    OldWC: string = '*?';
    NewWC: string = '%_';
  var
    i: Integer;
  begin
    for i:= 1 to Length(OldWC) do
      s:= StringReplace(s, OldWC[i], NewWC[i], [rfReplaceAll]);
    Result:= s;
  end;

begin
  Result:= inherited InternalGetSqlCondition(ATableAlias);

  if (Result <> '') then
    Result:= Result + AndText;

  Result:=
    Result +
    '(' + ATableAlias + '.VALUE_STRING like ''' +
    ReplaceWildcards(FValueString) + ''')';
end;

class function TStringTreeNodeParam.ParamType: Integer;
begin
  Result:= ptString;
end;

class function TStringTreeNodeParam.ParamIsEmpty(ADataSet: TDataSet): Boolean;
begin
  Result:= (ADataSet.FieldByName('VALUE_STRING').AsString = '');
end;

procedure TStringTreeNodeParam.SetAsVariant(const Value: OleVariant);
begin
  Assert(VarIsArray(Value));
  Assert(VarArrayLowBound(Value, 1) = 0);
  Assert(VarArrayHighBound(Value, 1) = 1);
  Assert(VarIsType(Value[1], varOleStr));

  inherited SetAsVariant(Value[0]);
  FValueString:= Value[1];
end;

{ TreeNodeParam routines }

function GetTreeNodeParamTypeClass(ATreeNodeParamType: Integer): TTreeNodeParamClass;
begin
  case ATreeNodeParamType of
    ptNom: Result:= TNomTreeNodeParam;
    ptFloat: Result:= TFloatTreeNodeParam;
    ptString: Result:= TStringTreeNodeParam;
  else
    raise Exception.CreateFmt(SUnsupportedTreeNodeParamType, [ATreeNodeParamType]);
  end;
end;

function PackedTreeNodeParams(ATreeNodeParams: TTreeNodeParams): Variant;
begin
  if (ATreeNodeParams.Count > 0) then
    Result:= VarArrayOf([
      TreeNodeParamsTransferCode,
      ATreeNodeParams.ClassName,
      ATreeNodeParams.AsVariant])
  else
    Result:= Null;
end;

function GetParamDisplayValue(AParamValuesDataSet: TDataSet; ValueType: Integer): string;
var
  DisplayValue: string;
begin
  AParamValuesDataSet.PreserveBookmark/
    AParamvaluesDataSet.ForEach/
      procedure begin
        case ValueType of
          ptNom, ptString:
            begin
              DisplayValue:=
                DisplayValue +
                AParamValuesDataSet.FieldByName(IfThen(ValueType = ptNom, 'VALUE_NOM_ITEM_NAME', 'VALUE_STRING')).DisplayText;
            end;

          ptFloat:
            begin
              if AParamValuesDataSet.FieldByName('VALUE_FLOAT_MIN').IsNull then
                begin
                  if AParamValuesDataSet.FieldByName('VALUE_FLOAT_MAX').IsNull then
                    DoContinue
                  else
                    DisplayValue:= DisplayValue + '<= ' + AParamValuesDataSet.FieldByName('VALUE_FLOAT_MAX').DisplayText;
                end
              else
                begin
                  if AParamValuesDataSet.FieldByName('VALUE_FLOAT_MAX').IsNull then
                    DisplayValue:= DisplayValue + '>= ' + AParamValuesDataSet.FieldByName('VALUE_FLOAT_MIN').DisplayText
                  else
                    DisplayValue:=
                      DisplayValue +
                      AParamValuesDataSet.FieldByName('VALUE_FLOAT_MIN').DisplayText +
                      ' - ' +
                      AParamValuesDataSet.FieldByName('VALUE_FLOAT_MAX').DisplayText;
                end;
            end;
        end;

        DisplayValue:= DisplayValue + IfThen(AParamValuesDataSet.RecNo < AParamValuesDataSet.RecordCount, '; ');
      end;

  Result:= DisplayValue;
end;

function GetParamValueDisplayName(AValueNomItemNameField, AValueNomItemDescriptionField: TAbmesWideStringField): string;
begin
  if AValueNomItemDescriptionField.IsNull then
    Result:= AValueNomItemNameField.AsString
  else
    Result:=
      Format('%s (%s)', [
        AValueNomItemNameField.AsString,
        AValueNomItemDescriptionField.AsString
      ]);
end;

{ TProductParams }

class function TProductParams.GetPrefix: string;
begin
  Result:= 'PRODUCT';
end;

end.
