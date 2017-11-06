unit fEarningModifier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, DBClient, AbmesClientDataSet, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, fEditForm, Mask, DBCtrls,
  JvToolEdit, JvDBControls, fBaseFrame, fDBFrame, fFieldEditFrame,
  fDateIntervalFrame, JvComponent, JvCaptionButton, JvComponentBase;

type
  TfmEarningModifier = class(TEditForm)
    gbPeriod: TGroupBox;
    gbLabourCostCoef: TGroupBox;
    lblLabourCostCoef: TLabel;
    edtLabourCostCoef: TDBEdit;
    frDateInterval: TfrDateIntervalFrame;
    lblOrganizationCostCoef: TLabel;
    edtOrganizationCostCoef: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
