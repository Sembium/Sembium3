unit uOWDPriorityStates;

interface

uses
  DBCtrlsEh, Graphics;

const
  OWDPriorityStateColors: array[1..6] of TColor = (
    $BEBFE8,
    $DBDBF2,
    $DBDBF2,
    $DBDBF2,
    $BCE3D6,
    $9BD6C2
  );

function OWDPriorityStateText(AStateCode: Integer): string;
procedure InitializeComboBoxWithOWDPriorityStates(AComboBox: TDBComboBoxEh);

implementation

uses
  SysUtils, uClientUtils;

resourcestring
  SOWDPriorityState1 = 'Няма дефинирани Режими за ТП';
  SOWDPriorityState2 = 'Множеството Режими за ТП не е крайно определено';
  SOWDPriorityState3 = 'Режим за който не е поета отговорност от ТП на по-високо ниво';
  SOWDPriorityState4 = 'Режим без обхванатост от Длъжност';
  SOWDPriorityState5 = 'Режим с обхванатост от Длъжност без Назначение';
  SOWDPriorityState6 = 'Режим с обхванатост от Длъжност с Назначение';

const
  OWDPriorityStateTexts: array[1..6] of string = (
    SOWDPriorityState1,
    SOWDPriorityState2,
    SOWDPriorityState3,
    SOWDPriorityState4,
    SOWDPriorityState5,
    SOWDPriorityState6
  );

function OWDPriorityStateText(AStateCode: Integer): string;
begin
  Result:= Format('%d - %s', [AStateCode, OWDPriorityStateTexts[AStateCode]]);
end;

procedure InitializeComboBoxWithOWDPriorityStates(AComboBox: TDBComboBoxEh);
var
  i: Integer;
begin
  AComboBox.Items.Clear;
  AComboBox.KeyItems.Clear;

  AComboBox.Items.Add(SAllInBracketsShort);
  AComboBox.KeyItems.Add('');

  for i:= Low(OWDPriorityStateTexts) to High(OWDPriorityStateTexts) do
    begin
      AComboBox.Items.Add(Format('%d          %s', [i, OWDPriorityStateTexts[i]]));
      AComboBox.KeyItems.Add(IntToStr(i));
    end;  { for }
end;

end.
