unit uFinOrderRequirementClientUtils;

interface

uses
  DB;

function FinOrderNeeded: Boolean;
procedure CheckFinOrderField(AFinOrderCodeField: TField);

const
  forcNone = 0;
  forcForbidden = 1;
  forcNotRequired = 2;
  forcPrompt = 3;
  forcRequired = 4;

implementation

uses
  dMain, AbmesDialogs, Dialogs, Controls, SysUtils;

resourcestring
  SCreateFinOrderPrompt = 'Желаете ли да бъде създаден Ордер за Процес Финансов?';
  SFinOrderForbidden = 'Не можете да създавате Ордер за Процес Финансов';
  SFinOrderRequired = 'Трябва да създадете Ордер за Процес Финансов';

function FinOrderNeeded: Boolean;
begin
  Result:=
    (dmMain.LoginContext.FinOrderRequirementCode = forcRequired) or
    ( (dmMain.LoginContext.FinOrderRequirementCode = forcPrompt) and
      (MessageDlgEx(SCreateFinOrderPrompt, mtConfirmation, [mbYes, mbNo], 0) = mrYes) );
end;

procedure CheckFinOrderField(AFinOrderCodeField: TField);
begin
  if (not AFinOrderCodeField.IsNull) and
     (dmMain.LoginContext.FinOrderRequirementCode = forcForbidden) then
    raise Exception.Create(SFinOrderForbidden);

  if AFinOrderCodeField.IsNull and
     (dmMain.LoginContext.FinOrderRequirementCode = forcRequired) then
    raise Exception.Create(SFinOrderRequired);
end;

end.
