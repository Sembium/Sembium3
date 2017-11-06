unit uCompanyUtils;

interface

const
  ChosenCompaniesParamName = 'ChosenCompanies';
  CommonStatusParamName = 'CommonStatus';
  AllIfEmptyParamName = 'AllIfEmpty';

function StringToAllIfEmptyParamValue(const AAllIfEmptyParam: string): Boolean;

implementation

uses
  SysUtils;

function StringToAllIfEmptyParamValue(const AAllIfEmptyParam: string): Boolean;
begin
  Result:= (AAllIfEmptyParam = '') or (AAllIfEmptyParam = BoolToStr(True));
end;

end.
