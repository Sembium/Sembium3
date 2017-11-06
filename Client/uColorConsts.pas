unit uColorConsts;

interface

uses
  Graphics, Math, uModelUtils;

const
  ccStoreDealIn = $00B1F1BA;
  ccStoreDealOut = $00C0C8FA;
  ccAnnuledObjectBackground = $00DBDBDB;
  ccArchivedObjectBackground = $00EEEFD3;
  ccNegativeDevNotSelected = $00AEAEFF;
  ccNegativeDevSelected = clRed;
  ccPlan = $0091FFFF;
  ccOtch = $0066CC00;
  ccRemainingPositivePlannedDeficitQuantity = $00B9B9FF;
  ccRemainingPositiveContractedQuantity = ccRemainingPositivePlannedDeficitQuantity;
  ccOverheadedQuantity = clYellow;
  ccDCDNotConfirmedButNotEmptyData = $009FDDDA;
  ccDocBackground = $00ECFFFF;

  // normal sale order, quick sale order, ...
  SaleOrderTypeColors: array [1..7] of TColor =
    ($00A4E3E0, $00A8B4E3, $00EDF0AE, $00CECECE, $00E8D2D5, $00E8D2D5, $00E8D2D5);

  SaleOrderStatusColors: array [1..11] of TColor = (
    clSilver,
    clWindow,
    $00BBBBFF,
    clWindow,
    $00BBBBFF,
    clWindow,
    $00BBBBFF,
    $00C2E7C2,
    $00FFBE7D,
    clWindow,
    $00FFDBB7
  );

  DCDStatusColors: array [1..8] of TColor = (
    $0080FFFF,
    $00C4C4FF,
    $00CAFFCA,
    $00FFBF80,
    $008080FF,
    clWindow,
    clWindow,
    $00FFDBB7
  );

  DeliveryDialogStatusColors: array [1..11] of TColor = (
    clSilver,
    clWindow,
    $00BBBBFF,
    clWindow,
    $00BBBBFF,
    clWindow,
    $00BBBBFF,
    $00C2E7C2,
    $00FFBE7D,
    clWindow,
    $00FFDBB7
  );

  DeliveryStatusColors: array [1..7] of TColor = (
    clSilver,
    $00C4C4FF,
    $00DB9BA7,  
    $00C4C4FF,
    clWindow,
    clWindow,
    $00FFDBB7
  );

  // 1 - prikl. ili ochakv. plashtane, 2 - vsichki eskp. planovi, 3 - i ot 2ta vida
  SaleExpGroupDateStateColors: array [1..3] of TColor =
    ($0000EC00, clYellow, $0005F3BE);

  // proektno, planovo
  PlannedStoreDealTypeColors: array[1..2] of TColor =
    ($00E4E1BA, $00B4D3AF);

  SpecStateColors: array [0..6] of TColor = (
    $00DAFFFF,
    $007575FF,
    $007575FF,
    $00AEAEFF,
    $00AEAEFF,
    $00F5CECB,
    $00C5EFC2
  );

  SpecStateLightColors: array [0..6] of TColor = (
    $00EAFFFF,
    $00B9B9FF,
    $00B9B9FF,
    $00D7D7FF,
    $00D7D7FF,
    $00ECFAEB,
    $00ECFAEB
  );

  ModelStateColors: array [1..13] of TColor = (
    $009FFFFF,
    $009FFFFF,
    $007575FF,
    $00C9C9C9,
    $007575FF,
    clWindow,
    clWindow,
    clWindow,
    clWindow,
    clWindow,
    ccArchivedObjectBackground,
    clWindow,
    clWindow
  );

  EOStateColors: array[TEOStates] of TColor = (
    $009FFFFF,
    $009FFFFF,
    $00C9C9C9,
    $007575FF,
    clWindow,
    clWindow,
    clWindow,
    clWindow
  );

  // timeline
  ccTimelinePassedHour = $00FF5959;
  ccTimelinePassedHourText = clWhite;
  ccTimelineCurrentHour = $00F19D85;
  ccTimelineCurrentHourText = clWhite;
  ccTimelineRemainingHour = $00EAB655;
  ccTimelineRemainingHourText = clBlue;
  ccTimelineInactive = clBtnFace;

  ccGridTreeInheritedItem = $00E1E1E1;

  // vim, deficitka
  ccDeficitBackground = $00B0B0FF;
  ccDeficitTowardsReserveBackground = $00A0A0FF;
  ccDeficitExceedingOrderQuantity = $00E1E1FF;
  ccInDealsBackground = $00F0D5CA;
  ccOutDealsBackground = $00C2C2E2;

  // prava
  ccPersonalActivity = $00BF0000;
  ccPersonalAndGroupActivity = $00510000;

  ccModelLate = $00A3D3F3;
  ccModelActualLate = clYellow;

  // sledene na model
  ccStore = $00E1E1E1;
  ccDept = $00EEEFD3;
  ccTotalLateNotSelected = $00AEAEFF;
  ccTotalLateSelected = clRed;
  ccPartLateNotSelected = $0088FFFF;
  ccPartLateSelected = clYellow;

  // zakusnenie po orderi za proizvodstvo
  ccRiskLateProductionOrder = $00B3FBFF;
  ccTooLateProductionOrder = $00B9D9FD;

  // vimove
  ccChartTodayAreaBackground = $00FBDF95;

  // vim - kapacitet
  ccCapacityGraphRealDeficitBackground = $00F7D7FD;
  ccCapacityGraphPlanDeficitBackground = $00E1E1FF;

  // budget
  BudgetOrderItemDeviationPercentColors: array [TValueSign] of TColor = (
    clRed,
    clWindowText,
    clGreen
  );
  DeviationPercentColor: array [False..True] of TColor = (clBlack, clRed);

  ccBudgetPeriodSummaryBackground = $00EEDFE1;
  ccBudgetHasPlanPrice = $00D7FFD7;
  ccBudgetHasBOIOPlanPrice = $00C8FFC8;
  ccBudgetHasRealPrice = $00B9FFB9;

  BoRegularityTypeColors: array [1..2] of TColor = ($00B03A09, clMaroon);

  ccDate = $00F5E6CB;
  ccReadOnlyDate = $00D9D5CC;
  DateReadOnlyColors: array [False..True] of TColor = (ccDate, ccReadOnlyDate);

  EmployeeStatusesColors: array [0..3] of TColor = (0, clMaroon, $001C5C18, clGrayText);
  OccupationEmployeeRegimeColors: array [0..3] of TColor = (0, clMaroon, clBlack, clRed);
  OccupationEmployeeDaysDiffColors: array [1..3] of TColor = ($00D2D2FF, $00A4FFFF, $00BFFFBF);

  CompanyStatusColors: array [0..6] of TColor = (0, clRed, clRed, clRed, clGreen, clGray, clGray);

  // prisustvia
  ccPastWorkday = $00C5EFC2;
  ccPastDayOff= $00C4DBFF;
  ccTodayNotAvailable = $00E7C17C;
  ccTodayAvailable = $00E48647;
  ccFutureWorkday = $00BDF5FD;
  ccFutureDayOff = $00C4C4FF;

  GridPastPresentFutureColors: array [-1..1] of TColor = ($00C1E7BE, $00EADABB, $00AAFFFF);

implementation

end.
