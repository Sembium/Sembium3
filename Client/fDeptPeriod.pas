unit fDeptPeriod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, StdCtrls, Mask, DBCtrls, fBaseFrame, fDBFrame,
  fFieldEditFrame, fDateIntervalFrame, DB, DBClient, AbmesClientDataSet,
  JvComponent, JvCaptionButton, ActnList, Buttons, ExtCtrls,
  JvComponentBase, ComCtrls, ToolWin;

type
  TfmDeptPeriod = class(TEditForm)
    gbPeriod: TGroupBox;
    gbPrices: TGroupBox;
    lblHourPrice: TLabel;
    lblMaintainanceHourPrice: TLabel;
    edtHourPrice: TDBEdit;
    edtMaintainanceHourPrice: TDBEdit;
    edtHourPriceCurrency: TLabel;
    frDateInterval: TfrDateIntervalFrame;
    lblEstimatedCapacityDayLimitHours: TLabel;
    edtEstimatedCapacityDayLimitHours: TDBEdit;
    edtEstimatedCapacityDayLimitHoursMeasure: TLabel;
    lblParallelProcessCount: TLabel;
    edtParallelProcessCount: TDBEdit;
    lblParallelOperatorCount: TLabel;
    edtParallelOperatorCount: TDBEdit;
    lblMaintainanceHourPriceCurrency: TLabel;
    tlbDocs: TToolBar;
    btnDocs: TToolButton;
    actDocs: TAction;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actDocsUpdate(Sender: TObject);
    procedure actDocsExecute(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Initialize; override;
  end;

implementation

uses
  dMain, uClientTypes, uClientUtils, uDocUtils, uUtils, uTreeNodes;

{$R *.dfm}

{ TfmDeptPrice }

procedure TfmDeptPeriod.actDocsExecute(Sender: TObject);
begin
  inherited;
  CheckEditMode(dsData.DataSet);
  dmDocClient.DSOpenDoc(EditMode, (Sender as TAction).ActionComponent as TControl,
    dotDeptPeriod, dsData.DataSet);
end;

procedure TfmDeptPeriod.actDocsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:=
    dsData.DataSet.FieldByName('HAS_DOC_ITEMS').AsInteger;
end;

procedure TfmDeptPeriod.actFormUpdate(Sender: TObject);
var
  ro: Boolean;
begin
  inherited;

  ro:= (EditMode = emReadOnly);

  edtHourPrice.ReadOnly:= ro;
  edtMaintainanceHourPrice.ReadOnly:= ro;
  edtEstimatedCapacityDayLimitHours.ReadOnly:= ro;
  edtParallelProcessCount.ReadOnly:= ro;
  edtParallelOperatorCount.ReadOnly:= ro;

  edtHourPrice.Color:= ReadOnlyColors[ro];
  edtMaintainanceHourPrice.Color:= ReadOnlyColors[ro];
  edtEstimatedCapacityDayLimitHours.Color:= ReadOnlyColors[ro];
  edtParallelProcessCount.Color:= ReadOnlyColors[ro];
  edtParallelOperatorCount.Color:= ReadOnlyColors[ro];
end;

procedure TfmDeptPeriod.FormCreate(Sender: TObject);
begin
  inherited;
  with edtHourPriceCurrency do
    Caption:= FormatBaseCurrencyAbbrevString(Caption);

  with lblMaintainanceHourPriceCurrency do
    Caption:= FormatBaseCurrencyAbbrevString(Caption);
end;

procedure TfmDeptPeriod.Initialize;
begin
  inherited;

  if (dsData.DataSet.FieldByName('_NODE_TYPE').AsInteger <> Ord(ntInstance)) then
    begin
      gbPrices.Visible:= False;
      ClientHeight:= gbPrices.Top + pnlBottomButtons.Height;
    end;
end;

end.
