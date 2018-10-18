unit uClientConsts;

interface

uses
  Graphics, uOWDPriorityTypes;

resourcestring
  SFilter = 'Филтър';
  SRows = ': %.0n реда за %d секунди';
  SRowsSizeSuffix = ' (%s)';

  SSetupNotDone = 'Настройката не е отчетена!';
  SPlan = 'Пл';
  SPlanOtch  = 'ПО';
  SOtch = 'От';
  SOf = 'на';
  SOperationalTasksModeCaption = 'Операционни Задания по ОПВ';
  SSpecialControlTasksModeCaption = 'Задания за Специализиран Контрол по ОПВ';
  SConfirmDeleteRecord = 'Изтриване на запис?';

  SOccupationActiveStatusAbbrev = 'A';
  SOccupationPassiveStatusAbbrev = 'П';
  SOccupationIsOccupied = 'З';
  SOccupationIsAvailable = 'Н';
  SOccupationIsMainAbbrev = 'Осн.';
  SOccupationIsNotMainAbbrev = 'Прв.';

  SConfirmAnnul = 'Потвърдете анулирането!';
  SConfirmClosing = 'Приключването е необратима операция. Преди приключване е необходимо да се убедите в пълнотата и коректността на %s.'  + SLineBreak +
                    'Потвърдете приключването!';

  SWorkMeasureTypeName = 'работна';
  SAccountMeasureTypeName = 'счетоводна';
  STechMeasureTypeName = 'технологична';
  STransportMeasureTypeName = 'транспортна';

  SMainTabSheetCaptionNormalView = 'Регистър';
  SMainTabSheetCaptionTreeView = 'Структурирани';
  SMainTabSheetCaptionSystemInfo = 'Системна Информация';

  SDept = 'ТП';

  SDiferentMeasurements = 'разл.м.ед.';

  SMaximize = 'Максимизиране';
  SRestore = 'Възстановяване';

  SAnd = 'и';
  SOr = 'или';
  SYes = 'Да';
  SNo = 'Не';
  SNotExists = '< няма >';
  SDefault = '< по подразбиране >';

  SConfirmContinuation = 'Желаете ли да продължите?';

const
  SRegisterOf = 'Регистър на ';

const
  OperationalTasksCaptions: array[Boolean] of string = (
    SOperationalTasksModeCaption, SSpecialControlTasksModeCaption);

  OccupationActivityStatuses: array [0..1] of string = (
    SOccupationPassiveStatusAbbrev, SOccupationActiveStatusAbbrev);
  OccupationAvailabilityStatuses: array [0..1] of string = (
    SOccupationIsAvailable, SOccupationIsOccupied);
  OccupationIsMainAbbrevs: array [0..1] of string = (
    SOccupationIsNotMainAbbrev, SOccupationIsMainAbbrev);

const
  TreeViewEnabledMainTabSheetCaptions: array[Boolean] of string =
    (SMainTabSheetCaptionNormalView, SMainTabSheetCaptionTreeView);

const
  GridRowHeight = 18;
  DualGridRowHeight = 38;
  TreeViewRowHeight = 16;
  TreeListRowHeight = 19;

implementation

end.
