unit fSpecInvestedValuesGraphFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponentBase, JvCaptionButton, ActnList, JvExControls, JvComponent,
  JvDBLookup, Buttons, StdCtrls, ExtCtrls, fBaseFrame, fDBFrame,
  fFieldEditFrame, fDateFieldEditFrame, JvExStdCtrls, JvDBCombobox, Mask,
  DBCtrls;

type
  TfmSpecInvestedValuesGraphFilter = class(TBevelFilterForm)
    cbMainDept: TJvDBLookupCombo;
    lblMainDept: TLabel;
    lblCurrency: TLabel;
    cbCurrency: TJvDBLookupCombo;
    frDate: TfrDateFieldEditFrame;
    lblDate: TLabel;
    lblMeasureType: TLabel;
    edtMaxQuantity: TDBEdit;
    lblMaxQuantity: TLabel;
    cbMeasureType: TJvDBLookupCombo;
    txtMeasureAbbrev: TDBText;
    lblQuantityStep: TLabel;
    edtQuantityStep: TDBEdit;
    lblRootLineStageIncludeLevel: TLabel;
    cbRootLineStageIncludeLevel: TJvDBComboBox;
    lblNonRootLineStageIncludeLevel: TLabel;
    cbNonRootLineStageIncludeLevel: TJvDBComboBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfmSpecInvestedValuesGraphFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frDate.FieldNames:= 'THE_DATE';
end;

end.
