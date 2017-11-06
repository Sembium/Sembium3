unit fOrgPrcDataDistributionFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet, ActnList, JvExControls, JvDBLookup, Buttons,
  StdCtrls, ExtCtrls, fBaseFrame, fDBFrame, fPrcDataFilterFrame, fFieldEditFrame, fDateFieldEditFrame, Mask, DBCtrlsEh,
  JvExStdCtrls, JvCombobox, JvDBCombobox;

type
  TfmOrgPrcDataDistributionFilter = class(TFilterForm)
    gbPrcDataFilter: TGroupBox;
    gbToDate: TGroupBox;
    frToDate: TfrDateFieldEditFrame;
    gbStatus: TGroupBox;
    cbMaxDistributionStatus: TDBComboBoxEh;
    lblBetweenStatus: TLabel;
    cbMinDistributionStatus: TDBComboBoxEh;
    frPrcDataFilter: TfrPrcDataFilterFrame;
    gbOTPDistributionState: TGroupBox;
    cbOTPDistributionState: TJvDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure cbMaxDistributionStatusGetItemImageIndex(Sender: TObject; ItemIndex: Integer; var ImageIndex: Integer);
    procedure cbMinDistributionStatusGetItemImageIndex(Sender: TObject; ItemIndex: Integer; var ImageIndex: Integer);
  private
    procedure InitializeStatusComboBox(AComboBox: TDBComboBoxEh);
    procedure GetStatusComboImageIndex(AItemIndex: Integer; var AImageIndex: Integer);
  public
    { Public declarations }
  end;

implementation

uses
  uPrcUtils, uClientPrcUtils;

{$R *.dfm}

{ TfmOrgPrcDataDistributionFilter }

procedure TfmOrgPrcDataDistributionFilter.InitializeStatusComboBox(AComboBox: TDBComboBoxEh);
var
  ds: TPrcOrgDistributionStatus;
begin
  AComboBox.Items.Clear;
  AComboBox.KeyItems.Clear;

  for ds:= Low(TPrcOrgDistributionStatus) to High(TPrcOrgDistributionStatus) do
    begin
      AComboBox.Items.Add(Format('%d    %s', [PrcOrgDistributionStatusToInt(ds), PrcOrgDistributionStatusNames[ds]]));
      AComboBox.KeyItems.Add(IntToStr(PrcOrgDistributionStatusToInt(ds)));
    end;  { for }
end;

procedure TfmOrgPrcDataDistributionFilter.GetStatusComboImageIndex(AItemIndex: Integer; var AImageIndex: Integer);
begin
  AImageIndex:= AItemIndex + 1;
end;

procedure TfmOrgPrcDataDistributionFilter.cbMaxDistributionStatusGetItemImageIndex(Sender: TObject; ItemIndex: Integer;
  var ImageIndex: Integer);
begin
  inherited;
  GetStatusComboImageIndex(ItemIndex, ImageIndex);
end;

procedure TfmOrgPrcDataDistributionFilter.cbMinDistributionStatusGetItemImageIndex(Sender: TObject; ItemIndex: Integer;
  var ImageIndex: Integer);
begin
  inherited;
  GetStatusComboImageIndex(ItemIndex, ImageIndex);
end;

procedure TfmOrgPrcDataDistributionFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frToDate.FieldNames:= 'TO_DATE';
  InitializeStatusComboBox(cbMinDistributionStatus);
  InitializeStatusComboBox(cbMaxDistributionStatus);
end;

end.
