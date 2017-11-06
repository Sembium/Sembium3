unit fOccupationWorkDeptPriority;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, fBevelEditForm, Mask, DBCtrls,
  JvComponent, JvCaptionButton, AbmesDBCheckBox, JvComponentBase, fBaseForm, ComCtrls, ToolWin, JvExControls, JvDBLookup;

type
  TfmOccupationWorkDeptPriority = class(TBevelEditForm)
    lblPriorityNo: TLabel;
    lblPriorityName: TLabel;
    edtPriorityNo: TDBEdit;
    edtPriorityName: TDBEdit;
    chkIsCapacityGenerator: TAbmesDBCheckBox;
    chkIsProcessGenerator: TAbmesDBCheckBox;
    tbDocButton: TToolBar;
    btnDoc: TToolButton;
    actDoc: TAction;
    cbOrgWorkLevel: TJvDBLookupCombo;
    lblOrgWorkLevel: TLabel;
    lblOrgWorkActivity: TLabel;
    cbOrgWorkActivity: TJvDBLookupCombo;
    procedure actDocUpdate(Sender: TObject);
    procedure actDocExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
  private
    function IsExecutingExploitation: Boolean;
  public
    { Public declarations }
  end;

implementation

uses
  uUtils, uDocUtils, uClientTypes, uClientUtils, uOWDPriorityTypes;

{$R *.dfm}

procedure TfmOccupationWorkDeptPriority.actDocExecute(Sender: TObject);
begin
  inherited;
  if (EditMode = emEdit) then
    CheckEditMode(dsData.DataSet);

  dmDocClient.DSOpenDoc(
    EditMode,
    (Sender as TAction).ActionComponent as TControl,
    dotOccWorkDeptPriority,
    dsData.DataSet);
end;

procedure TfmOccupationWorkDeptPriority.actDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(dsData.DataSet.FieldByName('HAS_DOC_ITEMS').AsBoolean);
end;

function TfmOccupationWorkDeptPriority.IsExecutingExploitation: Boolean;
begin
  Result:=
    not dsData.DataSet.FieldByName('ORG_WORK_LEVEL_CODE').IsNull and
    (dsData.DataSet.FieldByName('ORG_WORK_LEVEL_CODE').AsOrgWorkLevel = owlExecuting) and
    not dsData.DataSet.FieldByName('_ORG_WORK_MODE_CODE').IsNull and
    (dsData.DataSet.FieldByName('_ORG_WORK_MODE_CODE').AsOrgWorkMode = owmExploitation);
end;

procedure TfmOccupationWorkDeptPriority.actFormUpdate(Sender: TObject);
begin
  inherited;
  SetControlReadOnly((EditMode = emReadOnly) or not IsExecutingExploitation, chkIsCapacityGenerator);
  chkIsCapacityGenerator.Enabled:= (EditMode <> emReadOnly) and IsExecutingExploitation;
end;

end.
 
