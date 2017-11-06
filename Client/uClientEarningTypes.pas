unit uClientEarningTypes;

interface

uses
  uEarningTypes;

resourcestring
  SEmployeeMixedEarning = 'См.';
  SEmployeeTeamEarning = 'Ек.';
  SEmployeePersonalEarning = 'Инд.';

const
  EarningTypes: array[TEarningType] of string = (
    SEmployeeMixedEarning, SEmployeeTeamEarning, SEmployeePersonalEarning);

implementation

end.
