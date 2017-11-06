unit fOccupationEffectiveActivities;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDualGridForm, JvComponentBase, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh,
  AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls,
  ExtCtrls, Mask, DBGridEhGrouping, Menus;

type
  TfmOccupationEffectiveActivities = class(TDualGridForm)
    cdsGridDataACTIVITY_CODE: TAbmesFloatField;
    cdsGridDataACTIVITY_NO: TAbmesFloatField;
    cdsGridDataACTIVITY_NAME: TAbmesWideStringField;
    cdsGridDataOCC_ACTIVITY_SYS_ROLE_NAMES: TAbmesWideStringField;
    cdsOtherGridDataACTIVITY_CODE: TAbmesFloatField;
    cdsOtherGridDataACTIVITY_NO: TAbmesFloatField;
    cdsOtherGridDataACTIVITY_NAME: TAbmesWideStringField;
    cdsOtherGridDataOCC_ACTIVITY_SYS_ROLE_NAMES: TAbmesWideStringField;
    pdsGridDataParamsOCCUPATION_CODE: TAbmesFloatField;
    pnlInfo: TPanel;
    pnOccupationInfo: TPanel;
    lblOccupationName: TLabel;
    edtOccupationName: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
