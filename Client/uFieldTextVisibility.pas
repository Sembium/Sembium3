unit uFieldTextVisibility;

interface

uses
  SysUtils, Classes, DB, uUtils;

type
  TFieldTextVisibility = class(TComponent)
  strict private
    FField: TField;
    FOldOnGetText: TFieldGetTextEvent;
    FIsTextVisible: TBoolMethod;
    procedure OnFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);
  public
    constructor Create(AOwnerField: TField; AIsTextVisible: TBoolMethod); reintroduce; virtual;
    destructor Destroy; override;
  end;

implementation

uses
  uClientUtils;

type
  TFieldHack = class(TField);

{ TFieldTextVisibility }

constructor TFieldTextVisibility.Create(AOwnerField: TField;
  AIsTextVisible: TBoolMethod);
begin
  Assert(Assigned(AOwnerField));
  Assert(Assigned(AIsTextVisible));

  inherited Create(AOwnerField);
  FField:= AOwnerField;
  FIsTextVisible:= AIsTextVisible;
  FOldOnGetText:= FField.OnGetText;
  FField.OnGetText:= OnFieldGetText;
end;

destructor TFieldTextVisibility.Destroy;

  function AreMethodsEqual(A, B: TFieldGetTextEvent): Boolean;
  begin
    Result:= (TMethod(A).Code = TMethod(B).Code) and (TMethod(A).Data = TMethod(B).Data);
  end;

begin
  if AreMethodsEqual(FField.OnGetText, OnFieldGetText) then
    FField.OnGetText:= FOldOnGetText;
  inherited;
end;

procedure TFieldTextVisibility.OnFieldGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if not FIsTextVisible then
      Text:= SNotAvailable
    else
      begin
        if Assigned(FOldOnGetText) then
          FOldOnGetText(Sender, Text, DisplayText)
        else
          TFieldHack(Sender).GetText(Text, DisplayText);
      end;
end;

end.
