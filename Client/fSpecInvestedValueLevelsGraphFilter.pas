unit fSpecInvestedValueLevelsGraphFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponentBase, JvCaptionButton, ActnList, JvExControls, JvComponent,
  JvDBLookup, Buttons, StdCtrls, ExtCtrls, fBaseFrame, fDBFrame,
  fFieldEditFrame, fDateUnitsIntervalEditFrame, Mask,
  DBCtrls, fDeptFieldEditFrame, fTreeNodeFieldEditFrame,
  fProductFieldEditFrame, JvExStdCtrls, JvDBCombobox, JvExExtCtrls,
  JvExtComponent, JvDBRadioPanel;

type
  TfmSpecInvestedValueLevelsGraphFilter = class(TFilterForm)
    frDateUnitsInterval: TfrDateUnitsIntervalEditFrame;
    frSpecProduct: TfrProductFieldEditFrame;
    gbQuantity: TGroupBox;
    txtRealMeasure: TDBText;
    edtRealQuantity: TDBEdit;
    gbCurrency: TGroupBox;
    cbCurrency: TJvDBLookupCombo;
    gbStageIncludeLevel: TGroupBox;
    lblRootLineStageIncludeLevel: TLabel;
    cbRootLineStageIncludeLevel: TJvDBComboBox;
    lblNonRootLineStageIncludeLevel: TLabel;
    cbNonRootLineStageIncludeLevel: TJvDBComboBox;
    gbMeasureType: TGroupBox;
    cbMeasureType: TJvDBLookupCombo;
    gbMainDept: TGroupBox;
    cbMainDept: TJvDBLookupCombo;
    rgInvestedValueSingle: TJvDBRadioPanel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  fTreeSelectForm;

{$R *.dfm}

procedure TfmSpecInvestedValueLevelsGraphFilter.FormCreate(
  Sender: TObject);
begin
  inherited;
  frSpecProduct.FieldNames:= 'SPEC_PRODUCT_CODE';
  frSpecProduct.TreeDetailSelection:= tdsInstance;
  frSpecProduct.ShowAllWhenEmpty:= False;
  frDateUnitsInterval.FieldNames:= 'DATE_UNIT_CODE; BEGIN_DATE; DATE_UNIT_COUNT';
end;

end.
