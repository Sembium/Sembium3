unit uAttributeUtils;

interface

type
  TValueAttribute<T> = class(TCustomAttribute)
  private
    FValue: T;
  public
    constructor Create(const AValue: T);
    property Value: T read FValue;
  end;

type
  TIntegerValueAttribute = class(TCustomAttribute)
  private
    FValue: Integer;
  public
    constructor Create(const AValue: Integer);
    property Value: Integer read FValue;
  end;

type
  TBooleanValueAttribute = class(TValueAttribute<Boolean>)
  public
    constructor Create(const AValue: Boolean);
  end;

type
  TPositiveBooleanValueAttribute = class(TBooleanValueAttribute)
  public
    constructor Create(const AValue: Boolean = True);
  end;

  TNegativeBooleanValueAttribute = class(TBooleanValueAttribute)
  public
    constructor Create(const AValue: Boolean = False);
  end;

implementation

{ TValueAttribute<T> }

constructor TValueAttribute<T>.Create(const AValue: T);
begin
  inherited Create;
  FValue:= AValue;
end;

{ TIntegerValueAttribute }

constructor TIntegerValueAttribute.Create(const AValue: Integer);
begin
  inherited Create;
  FValue:= AValue;
end;

{ TBooleanValueAttribute }

constructor TBooleanValueAttribute.Create(const AValue: Boolean);
begin
  inherited Create(AValue);
end;

{ TPositiveBooleanValueAttribute }

constructor TPositiveBooleanValueAttribute.Create(const AValue: Boolean);
begin
  inherited Create(AValue);
end;

{ TNegativeBooleanValueAttribute }

constructor TNegativeBooleanValueAttribute.Create(const AValue: Boolean);
begin
  inherited Create(AValue);
end;

end.
