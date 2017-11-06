unit uAbmesDBGridHelpers;

interface

uses
  DBGridEh,
  uEhLibHelpers;

type
  TAbmesDBGridColumnsHelper = class helper (TDBGridColumnsEhHelper) for TDBGridColumnsEh
  end;

type
  TAbmesColumnHelper = class helper (TColumnEhHelper) for TColumnEh
  end;

type
  TAbmesDBGridHelper = class helper(TDBGridEhHelper) for TDBGridEh
  end;

implementation

end.
