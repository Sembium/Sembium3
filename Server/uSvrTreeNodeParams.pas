unit uSvrTreeNodeParams;

interface

uses
  AbmesSQLQuery;

procedure ReceiveProductParams(AInput: OleVariant; AQuery: TAbmesSQLQuery;
  WhereCondMacroName, HavingCondMacroName, ATableAlias: string);

procedure ReceiveTreeNodeParams(AInput: OleVariant; AQuery: TAbmesSQLQuery;
  WhereCondMacroName, ATableAlias: string);

implementation

uses
  SysUtils, Variants, uTreeNodeParams;

procedure ReceiveProductParams(AInput: OleVariant; AQuery: TAbmesSQLQuery;
  WhereCondMacroName, HavingCondMacroName, ATableAlias: string);
var
  AProductParams: TProductParams;
begin
  if VarIsArray(AInput) and (AInput[0] = TreeNodeParamsTransferCode) then
    begin
      AProductParams:= TProductParams.Create;
      try
        AProductParams.AsVariant:= AInput[2];
        with AQuery do
          begin
            MacroByName(WhereCondMacroName).AsString:=
              AProductParams.GetSqlWhereCondition(ATableAlias);
            MacroByName(HavingCondMacroName).AsString:=
              AProductParams.GetSqlHavingCondition(ATableAlias);
          end;  { with }
      finally
        FreeAndNil(AProductParams);
      end;  { try }
    end;  { if }
end;

procedure ReceiveTreeNodeParams(AInput: OleVariant; AQuery: TAbmesSQLQuery;
  WhereCondMacroName, ATableAlias: string);
var
  TreeNodeParams: TTreeNodeParams;
  SentClassName: string;
  MacroValue: string;
begin
  if VarIsArray(AInput) and (AInput[0] = TreeNodeParamsTransferCode) then
    begin
      SentClassName:= AInput[1];

      if (SentClassName = TProductParams.ClassName) then
        TreeNodeParams:= TProductParams.Create;
      try
        TreeNodeParams.AsVariant:= AInput[2];

        MacroValue:= TreeNodeParams.GetSqlSimpleWhereCondition(ATableAlias);
      finally
        FreeAndNil(TreeNodeParams);
      end;  { try }
    end  { if }
  else
    MacroValue:= TrueText;

  AQuery.MacroByName(WhereCondMacroName).AsString:= MacroValue;
end;

end.
