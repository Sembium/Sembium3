unit fFinancialRelationsAbstractFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponentBase, JvCaptionButton, ActnList, JvExControls, JvDBLookup, Buttons,
  StdCtrls, ExtCtrls, JvExExtCtrls, JvExtComponent, JvDBRadioPanel, DBCtrls,
  fBaseFrame, fDBFrame, fFieldEditFrame, fDateUnitsIntervalEditFrame,
  fCompanyFilter, JvExStdCtrls, JvDBCombobox, Mask, DBCtrlsEh, JvCombobox,
  fFilterFrame, fTreeNodeFilter;

type
  TfmFinancialRelationsAbstractFilter = class(TFilterForm)
    frDateUnitsInterval: TfrDateUnitsIntervalEditFrame;
    frCompanyFilter: TfrCompanyFilter;
    gbState: TGroupBox;
    lblDash: TLabel;
    cbMinFinOrderState: TDBComboBoxEh;
    cbMaxFinOrderState: TDBComboBoxEh;
    gbFinProcess: TGroupBox;
    cbFinProcess: TJvDBLookupCombo;
    gbFinStatus: TGroupBox;
    cbFinStatus: TJvDBComboBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Initialize; override;
  end;

implementation

uses
  uFinanceClientUtils, uClientUtils, uComboBoxUtils;

{$R *.dfm}

{ TfmFinancialRelationsAbstractFilter }

procedure TfmFinancialRelationsAbstractFilter.FormCreate(Sender: TObject);
begin
  inherited;

  frCompanyFilter.FieldNames:= 'CHOSEN_COMPANIES';
  frDateUnitsInterval.FieldNames:= 'DATE_UNIT_CODE; BEGIN_DATE; DATE_UNIT_COUNT';

  InitializeComboBoxWithFinOrderStates(cbMinFinOrderState, True);
  InitializeComboBoxWithFinOrderStates(cbMaxFinOrderState, True);
end;

procedure TfmFinancialRelationsAbstractFilter.Initialize;
begin
  inherited;
  SetLookupComboBoxDisplayFields(cbFinProcess, 'PROCESS_ABBREV;PROCESS_NAME', 400)
end;

end.
