unit uSection;

interface

uses
  uNestProc, SysUtils, Generics.Collections;

type
  ISection = interface
    function GetBeforeFirstEnter: TProc;
    procedure SetBeforeFirstEnter(AValue: TProc);

    function GetBeforeEnter: TProc;
    procedure SetBeforeEnter(AValue: TProc);

    function GetAfterLeave: TProc;
    procedure SetAfterLeave(AValue: TProc);

    function GetAfterLastLeave: TProc;
    procedure SetAfterLastLeave(AValue: TProc);

    procedure Enter;
    procedure Leave;
    function TempEnter: TNestProcRec;
    function IsEntered: Boolean;

    procedure AddCascadedSection(ASection: ISection);
    procedure RemoveCascadedSection(ASection: ISection);

    property BeforeFirstEnter: TProc read GetBeforeFirstEnter write SetBeforeFirstEnter;
    property BeforeEnter: TProc read GetBeforeEnter write SetBeforeEnter;
    property AfterLeave: TProc read GetAfterLeave write SetAfterLeave;
    property AfterLastLeave: TProc read GetAfterLastLeave write SetAfterLastLeave;
  end;

type
  TBaseSectionType = class abstract (TObject)
    class function CanEnter(AIsEntered: Boolean): Boolean; virtual; abstract;
    class function CanTempEnter(AIsEntered: Boolean): Boolean; virtual; abstract;
  end;

  TMultiPassSectionType = class(TBaseSectionType)
    class function CanEnter(AIsEntered: Boolean): Boolean; override;
    class function CanTempEnter(AIsEntered: Boolean): Boolean; override;
  end;

  TBaseSinglePassSectionType = class abstract (TBaseSectionType)
    class function CanEnter(AIsEntered: Boolean): Boolean; override;
  end;

  TSinglePassSectionType = class(TBaseSinglePassSectionType)
    class function CanTempEnter(AIsEntered: Boolean): Boolean; override;
  end;

  TTrySinglePassSectionType = class(TBaseSinglePassSectionType)
    class function CanTempEnter(AIsEntered: Boolean): Boolean; override;
  end;

type
  TSection<T: TBaseSectionType> = record
  strict private
    FSection: ISection;
    function Section: ISection;

    function GetBeforeFirstEnter: TProc;
    procedure SetBeforeFirstEnter(AValue: TProc);

    function GetBeforeEnter: TProc;
    procedure SetBeforeEnter(AValue: TProc);

    function GetAfterLeave: TProc;
    procedure SetAfterLeave(AValue: TProc);

    function GetAfterLastLeave: TProc;
    procedure SetAfterLastLeave(AValue: TProc);
  public
    procedure Enter;
    procedure Leave;
    function TempEnter: TNestProcRec;
    function IsEntered: Boolean;

    procedure AddCascadedSection(const ASection: ISection); overload;
    procedure AddCascadedSection(var ASection: TSection<TMultiPassSectionType>); overload; // var za da ne se kopira record-a
    procedure AddCascadedSection(var ASection: TSection<TSinglePassSectionType>); overload; // var za da ne se kopira record-a
    procedure AddCascadedSection(var ASection: TSection<TTrySinglePassSectionType>); overload; // var za da ne se kopira record-a

    procedure RemoveCascadedSection(const ASection: ISection); overload;
    procedure RemoveCascadedSection(var ASection: TSection<TMultiPassSectionType>); overload;  // var za da ne se kopira record-a
    procedure RemoveCascadedSection(var ASection: TSection<TSinglePassSectionType>); overload;  // var za da ne se kopira record-a
    procedure RemoveCascadedSection(var ASection: TSection<TTrySinglePassSectionType>); overload; // var za da ne se kopira record-a

    property BeforeFirstEnter: TProc read GetBeforeFirstEnter write SetBeforeFirstEnter;
    property BeforeEnter: TProc read GetBeforeEnter write SetBeforeEnter;
    property AfterLeave: TProc read GetAfterLeave write SetAfterLeave;
    property AfterLastLeave: TProc read GetAfterLastLeave write SetAfterLastLeave;
  end;

type
  TInterfacedSection<T: TBaseSectionType> = class(TInterfacedObject, ISection)
  strict private
    FCount: Integer;
    FCascadedSections: TList<ISection>;

    FBeforeFirstEnter: TProc;
    FBeforeEnter: TProc;
    FAfterLeave: TProc;
    FAfterLastLeave: TProc;

    procedure DoBeforeFirstEnter;
    function GetBeforeFirstEnter: TProc;
    procedure SetBeforeFirstEnter(AValue: TProc);

    procedure DoBeforeEnter;
    function GetBeforeEnter: TProc;
    procedure SetBeforeEnter(AValue: TProc);

    procedure DoAfterLeave;
    function GetAfterLeave: TProc;
    procedure SetAfterLeave(AValue: TProc);

    procedure DoAfterLastLeave;
    function GetAfterLastLeave: TProc;
    procedure SetAfterLastLeave(AValue: TProc);

    procedure DoEnter;
    procedure DoLeave;

    procedure CascadeEnter;
    procedure RecursiveCascadeEnter(AEnum: TEnumerator<ISection>);
    procedure CascadeLeave;
    procedure RecursiveCascadeLeave(AEnum: TEnumerator<ISection>);
  protected
    procedure Enter;
    procedure Leave;
    function TempEnter: TNestProcRec;
    function IsEntered: Boolean;

    procedure AddCascadedSection(ASection: ISection);
    procedure RemoveCascadedSection(ASection: ISection);
  public
    constructor Create;
    destructor Destroy; override;
  end;

type
  TMultiPassSection = TSection<TMultiPassSectionType>;
  TSinglePassSection = TSection<TSinglePassSectionType>;
  TTrySinglePassSection = TSection<TTrySinglePassSectionType>;

implementation

{ TSection }

function TSection<T>.Section: ISection;
begin
  if not Assigned(FSection) then
    FSection:= TInterfacedSection<T>.Create;

  Result:= FSection;
end;

procedure TSection<T>.AddCascadedSection(const ASection: ISection);
begin
  Section.AddCascadedSection(ASection);
end;

procedure TSection<T>.AddCascadedSection(var ASection: TSection<TTrySinglePassSectionType>);
begin
  AddCascadedSection(ASection.Section);
end;

procedure TSection<T>.AddCascadedSection(var ASection: TSection<TSinglePassSectionType>);
begin
  AddCascadedSection(ASection.Section);
end;

procedure TSection<T>.AddCascadedSection(var ASection: TSection<TMultiPassSectionType>);
begin
  AddCascadedSection(ASection.Section);
end;

procedure TSection<T>.RemoveCascadedSection(const ASection: ISection);
begin
  Section.RemoveCascadedSection(ASection);
end;

procedure TSection<T>.RemoveCascadedSection(var ASection: TSection<TTrySinglePassSectionType>);
begin
  RemoveCascadedSection(ASection.Section);
end;

procedure TSection<T>.RemoveCascadedSection(var ASection: TSection<TSinglePassSectionType>);
begin
  RemoveCascadedSection(ASection.Section);
end;

procedure TSection<T>.RemoveCascadedSection(var ASection: TSection<TMultiPassSectionType>);
begin
  RemoveCascadedSection(ASection.Section);
end;

procedure TSection<T>.Enter;
begin
  Section.Enter;
end;

procedure TSection<T>.Leave;
begin
  Section.Leave;
end;

function TSection<T>.TempEnter: TNestProcRec;
begin
  Result:= Section.TempEnter;
end;

function TSection<T>.IsEntered: Boolean;
begin
  Result:= Section.IsEntered;
end;

function TSection<T>.GetBeforeEnter: TProc;
begin
  Result:= Section.BeforeEnter;
end;

procedure TSection<T>.SetBeforeEnter(AValue: TProc);
begin
  Section.BeforeEnter:= AValue;
end;

function TSection<T>.GetAfterLeave: TProc;
begin
  Result:= Section.AfterLeave;
end;

procedure TSection<T>.SetAfterLeave(AValue: TProc);
begin
  Section.AfterLeave:= AValue;
end;

function TSection<T>.GetBeforeFirstEnter: TProc;
begin
  Result:= Section.BeforeFirstEnter;
end;

procedure TSection<T>.SetBeforeFirstEnter(AValue: TProc);
begin
  Section.BeforeFirstEnter:= AValue;
end;

function TSection<T>.GetAfterLastLeave: TProc;
begin
  Result:= Section.AfterLastLeave;
end;

procedure TSection<T>.SetAfterLastLeave(AValue: TProc);
begin
  Section.AfterLastLeave:= AValue;
end;

{ TInterfacedSection }

constructor TInterfacedSection<T>.Create;
begin
  inherited;
  FCascadedSections:= TList<ISection>.Create;
end;

destructor TInterfacedSection<T>.Destroy;
begin
  FreeAndNil(FCascadedSections);
  inherited;
end;

procedure TInterfacedSection<T>.Enter;
begin
  Assert(T.CanEnter(IsEntered));

  if not IsEntered then
    DoBeforeFirstEnter;
  try
    DoBeforeEnter;
    try
      CascadeEnter;
      try
        DoEnter;
      except
        CascadeLeave;
        raise;
      end;
    except
      DoAfterLeave;
      raise;
    end;
  except
    if not IsEntered then
      DoAfterLastLeave;
    raise;
  end;
end;

procedure TInterfacedSection<T>.Leave;
begin
  Assert(IsEntered);

  DoLeave;
  try
    try
      CascadeLeave;
    finally
      DoAfterLeave;
    end;
  finally
    if not IsEntered then
      DoAfterLastLeave;
  end;
end;

function TInterfacedSection<T>.TempEnter: TNestProcRec;
begin
  Result:= TNestProcRec.Create(
    procedure (AProc: TProc)
    begin
      if not T.CanTempEnter(IsEntered) then
        Exit;

      Enter;
      try
        AProc;
      finally
        Leave;
      end;
    end);
end;

procedure TInterfacedSection<T>.AddCascadedSection(ASection: ISection);
begin
  FCascadedSections.Add(ASection);
end;

procedure TInterfacedSection<T>.RemoveCascadedSection(ASection: ISection);
begin
  FCascadedSections.Remove(ASection);
end;

procedure TInterfacedSection<T>.RecursiveCascadeEnter(AEnum: TEnumerator<ISection>);
var
  Current: ISection;
begin
  if not AEnum.MoveNext then
    Exit;

  Current:= AEnum.Current;

  Current.Enter;
  try
    RecursiveCascadeEnter(AEnum);
  except
    Current.Leave;
    raise;
  end;
end;

procedure TInterfacedSection<T>.CascadeEnter;
var
  Enum: TEnumerator<ISection>;
begin
  Enum:= FCascadedSections.GetEnumerator;
  try
    RecursiveCascadeEnter(Enum);
  finally
    FreeAndNil(Enum);
  end;
end;

procedure TInterfacedSection<T>.RecursiveCascadeLeave(AEnum: TEnumerator<ISection>);
var
  Current: ISection;
begin
  if not AEnum.MoveNext then
    Exit;

  Current:= AEnum.Current;

  try
    RecursiveCascadeLeave(AEnum);
  finally
    Current.Leave;
  end;
end;

procedure TInterfacedSection<T>.CascadeLeave;
var
  Enum: TEnumerator<ISection>;
begin
  Enum:= FCascadedSections.GetEnumerator;
  try
    RecursiveCascadeLeave(Enum);
  finally
    FreeAndNil(Enum);
  end;
end;

procedure TInterfacedSection<T>.DoEnter;
begin
  Inc(FCount);
end;

procedure TInterfacedSection<T>.DoLeave;
begin
  Dec(FCount);
end;

function TInterfacedSection<T>.IsEntered: Boolean;
begin
  Result:= (FCount > 0);
end;

function TInterfacedSection<T>.GetBeforeEnter: TProc;
begin
  Result:= FBeforeEnter;
end;

procedure TInterfacedSection<T>.SetBeforeEnter(AValue: TProc);
begin
  FBeforeEnter:= AValue;
end;

procedure TInterfacedSection<T>.DoBeforeEnter;
begin
  if Assigned(FBeforeEnter) then
    FBeforeEnter;
end;

function TInterfacedSection<T>.GetAfterLeave: TProc;
begin
  Result:= FAfterLeave;
end;

procedure TInterfacedSection<T>.SetAfterLeave(AValue: TProc);
begin
  FAfterLeave:= AValue;
end;

procedure TInterfacedSection<T>.DoAfterLeave;
begin
  if Assigned(FAfterLeave) then
    FAfterLeave;
end;

function TInterfacedSection<T>.GetBeforeFirstEnter: TProc;
begin
  Result:= FBeforeFirstEnter;
end;

procedure TInterfacedSection<T>.SetBeforeFirstEnter(AValue: TProc);
begin
  FBeforeFirstEnter:= AValue;
end;

procedure TInterfacedSection<T>.DoBeforeFirstEnter;
begin
  if Assigned(FBeforeFirstEnter) then
    FBeforeFirstEnter;
end;

function TInterfacedSection<T>.GetAfterLastLeave: TProc;
begin
  Result:= FAfterLastLeave;
end;

procedure TInterfacedSection<T>.SetAfterLastLeave(AValue: TProc);
begin
  FAfterLastLeave:= AValue;
end;

procedure TInterfacedSection<T>.DoAfterLastLeave;
begin
  if Assigned(FAfterLastLeave) then
    FAfterLastLeave;
end;

{ TMultiPassSectionType }

class function TMultiPassSectionType.CanEnter(AIsEntered: Boolean): Boolean;
begin
  Result:= True;
end;

class function TMultiPassSectionType.CanTempEnter(AIsEntered: Boolean): Boolean;
begin
  Result:= True;
end;

{ TBaseSinglePassSectionType }

class function TBaseSinglePassSectionType.CanEnter(AIsEntered: Boolean): Boolean;
begin
  Result:= not AIsEntered;
end;

{ TSinglePassSectionType }

class function TSinglePassSectionType.CanTempEnter(AIsEntered: Boolean): Boolean;
begin
  Result:= True;
end;

{ TTrySinglePassSectionType }

class function TTrySinglePassSectionType.CanTempEnter(AIsEntered: Boolean): Boolean;
begin
  Result:= not AIsEntered;
end;

end.
