unit fFinancialRelationsGraphFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFinancialRelationsAbstractFilter, DB, AbmesFields, DBClient,
  AbmesClientDataSet, JvComponentBase, JvCaptionButton, ActnList, StdCtrls,
  JvExStdCtrls, JvDBCombobox, Mask, DBCtrlsEh, fCompanyFilter, DBCtrls,
  JvExExtCtrls, JvExtComponent, JvDBRadioPanel, fBaseFrame, fDBFrame,
  fFieldEditFrame, fDateUnitsIntervalEditFrame, JvExControls, JvDBLookup,
  Buttons, ExtCtrls;

type
  TfmFinancialRelationsGraphFilter = class(TfmFinancialRelationsAbstractFilter)
    gbRounder: TGroupBox;
    rgUseDefaultRounder: TJvDBRadioPanel;
    cbRounder: TJvDBLookupCombo;
    procedure rgUseDefaultRounderChange(Sender: TObject);
  private
    { Private declarations }
  public
    procedure DoApplyUpdates; override;
  end;

implementation

uses
  uClientUtils, uGraphUtils;

{$R *.dfm}

{ TfmFinancialRelationsGraphFilter }

procedure TfmFinancialRelationsGraphFilter.DoApplyUpdates;
begin
  with dsData.DataSet do
    if not FieldByName('USE_DEFAULT_ROUNDER').AsBoolean then
      if FieldByName('ROUNDER').IsNull then
        begin
          ActiveControl:= cbRounder;
          raise Exception.Create(SRounderStepRequired);
        end;

  inherited;
end;

procedure TfmFinancialRelationsGraphFilter.rgUseDefaultRounderChange(
  Sender: TObject);
var
  en: Boolean;
begin
  inherited;

  en:= not (rgUseDefaultRounder.Value = 'True');
  cbRounder.Enabled:= en;
  cbRounder.Color:= ReadOnlyColors[not en];
  if (not en) and (dsData.State in dsEditModes) then
    dsData.DataSet.FieldByName('ROUNDER').Clear;
end;

end.
