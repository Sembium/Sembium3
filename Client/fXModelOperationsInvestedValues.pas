unit fXModelOperationsInvestedValues;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fSpecOperationsInvestedValues, JvComponentBase, JvCaptionButton, DB,
  AbmesFields, ParamDataSet, ActnList, DBClient, AbmesClientDataSet,
  JvExControls, JvDBLookup, StdCtrls, AbmesDBCheckBox, fDeptFieldEditFrame,
  fDeptFieldEditFrameBald, fBaseFrame, fDBFrame, fFieldEditFrame,
  fTreeNodeFieldEditFrame, fProductFieldEditFrame, fProductFieldEditFrameBald,
  Mask, DBCtrls, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin,
  ColorNavigator, Buttons, ExtCtrls, JvExStdCtrls, JvEdit;

type
  TfmXModelOperationsInvestedValues = class(TfmSpecOperationsInvestedValues)
    procedure actPrintExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  rXModelOperationsInvestedValues;

{$R *.dfm}

procedure TfmXModelOperationsInvestedValues.actPrintExecute(Sender: TObject);
begin
  TrptXModelOperationsInvestedValues.PrintReport(cdsGridData, (dsData.DataSet as TClientDataSet),
    (dsLines.DataSet as TClientDataSet), InvestedValueTitle, InvestedValueFilter,
    txtSpecProductTechMeasureAbbrev.Field.DisplayText);
end;

end.
