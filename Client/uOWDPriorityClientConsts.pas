unit uOWDPriorityClientConsts;

interface

uses
  uOWDPriorityTypes, Graphics;

resourcestring
  // ot Symbol (E, G+StrelkaNaDolu, G+StrelkaNagore)
  SDeptOWDPCoverTypeLocal = 'E';
  SDeptOWDPCoverTypeLocalAndDescendants = 'G Я';  // 159 - strelka nadolu
  SDeptOWDPCoverTypeAncestor = 'G Э';  // 157 - strelka nagore

  SConfirmOWDPrioritiesSetComplete = 'Потвърдете крайна определеност на множеството Режими на Организиране';

const
  CoveredDeptsColor = $00EAEAEA;
  DelegatedDeptsColor = $00F6F6F6;
  DelegatedDeptsFontColor = clHotLight;
  HasNotOWDPrioritiesOfTypeColor = $00E8E8FF;
  DeptOWDPCoverTypeBackgroundColors: array[TDeptOWDPCoverType] of TColor = (clWhite, clWhite, CoveredDeptsColor);
  DeptOWDPCoverTypeFontColors: array[TDeptOWDPCoverType] of TColor = (clWindowText, clWindowText, clGray);

const
  DeptOWDPCoverTypeAbbrevs: array[TDeptOWDPCoverType] of string = (
    SDeptOWDPCoverTypeLocal, SDeptOWDPCoverTypeLocalAndDescendants, SDeptOWDPCoverTypeAncestor);

  IsOWDPrioritiesSetCompleteColors: array[Boolean] of TColor = (clRed, clGreen);

implementation

end.
