unit fRealFinModelLinesFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFinOrdersFilter, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponentBase, JvCaptionButton, ActnList, fProductFieldEditFrame, StdCtrls,
  JvExStdCtrls, JvDBCombobox, fPartnerFieldEditFrame,
  fPartnerFieldEditFrameLabeled, fTreeNodeFieldEditFrame, fDeptFieldEditFrame,
  fDeptFieldEditFrameBald, fBaseFrame, fDBFrame, fFieldEditFrame,
  fDateIntervalFrame, DBCtrls, Mask, DBCtrlsEh, JvExControls, JvDBLookup,
  Buttons, ExtCtrls, fProductFieldEditFrameBald, fTreeOnlyNodeFieldEditFrame,
  fFinClassFieldEditFrame, JvCombobox, fCompanyFilter, fFilterFrame,
  fTreeNodeFilter;

type
  TfmRealFinModelLinesFilter = class(TfmFinOrdersFilter)
    gbFinStore: TGroupBox;
    frFinStore: TfrDeptFieldEditFrameBald;
    cdsFinModelLineTypes: TAbmesClientDataSet;
    cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField;
    cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_NO: TAbmesFloatField;
    cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_NAME: TAbmesWideStringField;
    cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_ABBREV: TAbmesWideStringField;
    gbFinModelLineTypes: TGroupBox;
    cbFinModelLineTypes: TJvDBLookupCombo;
    dsFinModelLineTypes: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfmRealFinModelLinesFilter.CloseDataSets;
begin
  inherited;
  cdsFinModelLineTypes.Close;
end;

procedure TfmRealFinModelLinesFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frFinStore.FieldNames:= 'FIN_STORE_CODE';
end;

procedure TfmRealFinModelLinesFilter.OpenDataSets;
begin
  cdsFinModelLineTypes.Open;
  inherited;
end;

end.
