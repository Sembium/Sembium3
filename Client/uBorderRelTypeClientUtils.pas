unit uBorderRelTypeClientUtils;

interface

uses
  uBorderRelTypes, Classes;

function CreateCommonMsgParams(ABorderRelType: TBorderRelType): TStringList;

resourcestring
  SBorderRelTypeNameClient = 'Клиент';
  SBorderRelTypeNameVendor = 'Доставчик';

  SBorderRelTypeActionClient = 'Продажба';
  SBorderRelTypeActionVendor = 'Доставка';

  SBorderRelTypeMultiActionClient = 'Продажби';
  SBorderRelTypeMultiActionVendor = 'Доставки';

  SBorderRelTypeStoreActionClient = 'Експедиция';
  SBorderRelTypeStoreActionVendor = 'Получаване';

  SBorderRelTypeStoreActionAbbrevClient = 'Експ.';
  SBorderRelTypeStoreActionAbbrevVendor = 'Плч.';

  SParRelPeriodAbbrevClient = 'УМ ПарК';
  SParRelPeriodAbbrevVendor = 'УМ ПарД';

const
  BorderRelTypeNames: array[TBorderRelType] of string = ('', SBorderRelTypeNameClient, SBorderRelTypeNameVendor);
  BorderRelTypeActions: array[TBorderRelType] of string = ('', SBorderRelTypeActionClient, SBorderRelTypeActionVendor);
  BorderRelTypeMultiActions: array[TBorderRelType] of string = ('', SBorderRelTypeMultiActionClient, SBorderRelTypeMultiActionVendor);
  BorderRelTypeStoreActions: array[TBorderRelType] of string = ('', SBorderRelTypeStoreActionClient, SBorderRelTypeStoreActionVendor);
  BorderRelTypeStoreActionAbbrevs: array[TBorderRelType] of string = ('', SBorderRelTypeStoreActionAbbrevClient, SBorderRelTypeStoreActionAbbrevVendor);
  BorderRelTypePartnerStoreActions: array[TBorderRelType] of string = ('', SBorderRelTypeStoreActionVendor, SBorderRelTypeStoreActionClient);
  BorderRelTypePartnerStoreActionAbbrevs: array[TBorderRelType] of string = ('', SBorderRelTypeStoreActionAbbrevVendor, SBorderRelTypeStoreActionAbbrevClient);
  ParRelPeriodAbbrevs: array[TBorderRelType] of string = ('', SParRelPeriodAbbrevClient, SParRelPeriodAbbrevVendor);

implementation

uses
  SysUtils;

function CreateCommonMsgParams(ABorderRelType: TBorderRelType): TStringList;
var
  SL: TStringList;
begin
  SL:= TStringList.Create;
  try
    try
      SL.Values['BorderRelTypeName']:= BorderRelTypeNames[ABorderRelType];
      SL.Values['BorderRelTypeAction']:= BorderRelTypeActions[ABorderRelType];
      SL.Values['BorderRelTypeStoreAction']:= BorderRelTypeStoreActions[ABorderRelType];
      SL.Values['BorderRelTypePartnerStoreAction']:= BorderRelTypePartnerStoreActions[ABorderRelType];
      SL.Values['ParRelPeriodAbbrev']:= ParRelPeriodAbbrevs[ABorderRelType];
    except
      FreeAndNil(SL);
      raise;
    end;
  finally
    Result:= SL;
  end;
end;

end.
