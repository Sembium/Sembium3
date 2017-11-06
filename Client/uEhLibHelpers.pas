unit uEhLibHelpers;

interface

uses
  System.Generics.Collections,
  System.SysUtils,
  DBGridEh,
  uUtils,
  uEnumeratorUtils,
  uNestProc;

type
  TDBGridColumnsEhHelper = class helper (TCollectionHelper) for TDBGridColumnsEh
  public
    function GetEnumerator: TEnumerator<TColumnEh>;
    function All: TEnumerableRec<TColumnEh>;
  end;

type
  TColumnEhHelper = class helper (TObjectHelper) for TColumnEh
  private
    class function GetIsVisiblePredicate: TPredicate<TColumnEh>; static;
  public
    class property IsVisiblePredicate: TPredicate<TColumnEh> read GetIsVisiblePredicate;
  end;

type
  TDBGridEhHelper = class helper(TWinControlHelper) for TDBGridEh
  private
    function PreserveOptions: TNestProcRec;
    function AddOptionsProc(const AOptions: TDBGridOptions): TProc; overload;
    function SubtractOptionsProc(const AOptions: TDBGridOptions): TProc; overload;

    function PreserveOptionsEh: TNestProcRec;
    function AddOptionsProc(const AOptions: TDBGridEhOptions): TProc; overload;
    function SubtractOptionsProc(const AOptions: TDBGridEhOptions): TProc; overload;
  public
    function AllColumns: TEnumerableRec<TColumnEh>;
    function PreserveTopRow: TNestProcRec;

    function TempDisableOptions(const AOptions: TDBGridOptions): TNestProcRec; overload;
    function TempEnableOptions(const AOptions: TDBGridOptions): TNestProcRec; overload;
    function TempDisableOption(const AOption: TDBGridOption): TNestProcRec; overload;
    function TempEnableOption(const AOption: TDBGridOption): TNestProcRec; overload;
    function TempDisableOptions(const AOptions: TDBGridEhOptions): TNestProcRec; overload;
    function TempEnableOptions(const AOptions: TDBGridEhOptions): TNestProcRec; overload;
    function TempDisableOption(const AOption: TDBGridEhOption): TNestProcRec; overload;
    function TempEnableOption(const AOption: TDBGridEhOption): TNestProcRec; overload;
  end;

implementation

{ TDBGridColumnsEhHelper }

function TDBGridColumnsEhHelper.All: TEnumerableRec<TColumnEh>;
begin
  Result:= TProxyEnumerator<TColumnEh>.CreateEnumerableRec(GetEnumeratorObject);
end;

function TDBGridColumnsEhHelper.GetEnumerator: TEnumerator<TColumnEh>;
begin
  Result:= TProxyEnumerator<TColumnEh>.Create(GetEnumeratorObject);
end;

{ TColumnEhHelper }

class function TColumnEhHelper.GetIsVisiblePredicate: TPredicate<TColumnEh>;
begin
  Result:=
    function (AColumn: TColumnEh): Boolean begin
      Result:= AColumn.Visible;
    end;
end;

{ TDBGridEhHelper }

function TDBGridEhHelper.AllColumns: TEnumerableRec<TColumnEh>;
begin
  Result:= Columns.All;
end;

function TDBGridEhHelper.PreserveTopRow: TNestProcRec;
begin
  Result:=
    TNestProcRec.Create(
      procedure (AProc: TProc)
      var
        SavedTopRow: Integer;
      begin
        SavedTopRow:= TopRow;
        try
          AProc;
        finally
          if (SavedTopRow <= RowCount) then
            TopRow:= SavedTopRow;
        end;
      end);
end;

function TDBGridEhHelper.SubtractOptionsProc(const AOptions: TDBGridOptions): TProc;
begin
  Result:=
    procedure begin
      Options:= Options - AOptions;
    end;
end;

function TDBGridEhHelper.AddOptionsProc(const AOptions: TDBGridOptions): TProc;
begin
  Result:=
    procedure begin
      Options:= Options + AOptions;
    end;
end;

function TDBGridEhHelper.PreserveOptions: TNestProcRec;
begin
  Result:=
    TNestProcRec.Create(
      procedure (AProc: TProc)
      var
        SavedOptions: TDBGridOptions;
      begin
        SavedOptions:= Options;
        try
          AProc;
        finally
          Options:= SavedOptions;
        end;
      end);
end;

function TDBGridEhHelper.TempDisableOptions(const AOptions: TDBGridOptions): TNestProcRec;
begin
  Result:=
    PreserveOptions/
      PrecedeWith(SubtractOptionsProc(AOptions));
end;

function TDBGridEhHelper.TempEnableOptions(const AOptions: TDBGridOptions): TNestProcRec;
begin
  Result:=
    PreserveOptions/
      PrecedeWith(AddOptionsProc(AOptions));
end;

function TDBGridEhHelper.TempDisableOption(const AOption: TDBGridOption): TNestProcRec;
begin
  Result:= TempDisableOptions([AOption]);
end;

function TDBGridEhHelper.TempEnableOption(const AOption: TDBGridOption): TNestProcRec;
begin
  Result:= TempEnableOptions([AOption]);
end;

function TDBGridEhHelper.SubtractOptionsProc(const AOptions: TDBGridEhOptions): TProc;
begin
  Result:=
    procedure begin
      OptionsEh:= OptionsEh - AOptions;
    end;
end;

function TDBGridEhHelper.AddOptionsProc(const AOptions: TDBGridEhOptions): TProc;
begin
  Result:=
    procedure begin
      OptionsEh:= OptionsEh + AOptions;
    end;
end;

function TDBGridEhHelper.PreserveOptionsEh: TNestProcRec;
begin
  Result:=
    TNestProcRec.Create(
      procedure (AProc: TProc)
      var
        SavedOptionsEh: TDBGridEhOptions;
      begin
        SavedOptionsEh:= OptionsEh;
        try
          AProc;
        finally
          OptionsEh:= SavedOptionsEh;
        end;
      end);
end;

function TDBGridEhHelper.TempDisableOptions(const AOptions: TDBGridEhOptions): TNestProcRec;
begin
  Result:=
    PreserveOptionsEh/
      PrecedeWith(SubtractOptionsProc(AOptions));
end;

function TDBGridEhHelper.TempEnableOptions(const AOptions: TDBGridEhOptions): TNestProcRec;
begin
  Result:=
    PreserveOptionsEh/
      PrecedeWith(AddOptionsProc(AOptions));
end;

function TDBGridEhHelper.TempDisableOption(const AOption: TDBGridEhOption): TNestProcRec;
begin
  Result:= TempDisableOptions([AOption]);
end;

function TDBGridEhHelper.TempEnableOption(const AOption: TDBGridEhOption): TNestProcRec;
begin
  Result:= TempEnableOptions([AOption]);
end;

end.
