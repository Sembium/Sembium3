unit fOrganisationPrcData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBaseForm, fEditForm, DB, DBClient, AbmesClientDataSet, ActnList,
  StdCtrls, Buttons, ExtCtrls, fDBFrame, fPrcDataFieldEditFrame;

type
  [CanUseDocs]
  TfmOrganisationPrcData = class(TEditForm)
    cdsPrcData: TAbmesClientDataSet;
    cdsPrcDataPRC_DATA: TBlobField;
    procedure FormCreate(Sender: TObject);
    procedure cdsPrcDataAfterOpen(DataSet: TDataSet);
  private
    FfrPrcData: TfrPrcDataFieldEditFrame;
  protected
    function VerticalResizeStep: Integer; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetApplyUpdatesEnabled: Boolean; override;
  public
    procedure DoApplyUpdates; override;
  end;

implementation

uses
  uPrcDeclarations, uUtils, dMain, uTreeNodes, rOrganisationPrcDataReport;

{$R *.dfm}

{ TfmOrganisationPrcData }

procedure TfmOrganisationPrcData.FormCreate(Sender: TObject);
begin
  inherited;
  FfrPrcData:= TfrPrcDataFieldEditFrame.Create(Self);
  FfrPrcData.ProcessOwner:= ProcessOwners.RootDept;
  FfrPrcData.SetDataSet(cdsPrcData);
  FfrPrcData.PrcDataReportClass:= TrptOrganisationPrcDataReport;
  FfrPrcData.AlignWithMargins:= True;
  FfrPrcData.Margins.SetBounds(0, 0, 0, 5);
  InsertControl(FfrPrcData);

  MaximizeStyle:= msFull;
end;

function TfmOrganisationPrcData.GetApplyUpdatesEnabled: Boolean;
begin
  Result:= True;
end;

procedure TfmOrganisationPrcData.OpenDataSets;
begin
  cdsPrcData.CreateDataSet;
  inherited;
end;

procedure TfmOrganisationPrcData.CloseDataSets;
begin
  inherited;
  cdsPrcData.Close;
end;

procedure TfmOrganisationPrcData.DoApplyUpdates;
begin
  dsData.DataSet.FieldByName('PRC_FUNC_CODE').AsVariant:= FfrPrcData.GetSelectedPrcObjectCode(ProcessLevels.Func);
  dsData.DataSet.FieldByName('PRC_KNOWL_CODE').AsVariant:= FfrPrcData.GetSelectedPrcObjectCode(ProcessLevels.Knowl);
  dsData.DataSet.FieldByName('PRC_BASE_OP_CODE').AsVariant:= FfrPrcData.GetSelectedPrcObjectCode(ProcessLevels.BaseOp);
  dsData.DataSet.FieldByName('PRC_BASE_ACTION_CODE').AsVariant:= FfrPrcData.GetSelectedPrcObjectCode(ProcessLevels.BaseAction);
  inherited;
end;

procedure TfmOrganisationPrcData.cdsPrcDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cdsPrcData.SafeAppend/
    procedure begin
      WriteVariantToBlobField(
        dmMain.SvrProcesses.LoadPrcData(ProcessOwners.RootDept.Name, tnRootDeptCode),
        cdsPrcDataPRC_DATA);
    end;
end;

procedure TfmOrganisationPrcData.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = FfrPrcData) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;

  inherited SetDBFrameReadOnly(AFrame);
end;

function TfmOrganisationPrcData.VerticalResizeStep: Integer;
begin
  Result:= inherited VerticalResizeStep + 1;
end;

end.
