unit uModelMovementTypes;

interface

uses
  uOperationTypes;

const
  mmtNormal = 1;
  mmtWaste = 2;

  mmtDefault = mmtNormal;

type
  TMovementsDirection = (mdAll, mdIn, mdOut, mdWaste, mdOutAndWaste);

// operation movement type consts
const
  omtWorkWork                 = 1;
  omtWorkOrganization         = 2;
  omtOrganizationOrganization = 3;
  omtOrganizationWork         = 4;
  omtWorkWaste                = 5;
  omtOrganizationWaste        = 6;
  omtRedirection              = 7;
  omtShift                    = 8;
  omtSpecialControl           = 9;
  omtWorkNextOperation        = 10;
  omtLoading                  = 11;

const
  WasteOperationMovementTypes: set of Byte = [omtWorkWaste, omtOrganizationWaste];

const
  NormalOperationMovementTypes: array[otBegin..otEnd, otBegin..otEnd] of Integer =
    ( (3, 4, 3),
      (2, 1, 2),
      (3, 4, 3) );

implementation

end.
