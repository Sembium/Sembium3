unit fOccupationProfessionsDept;

interface
                                                  
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, fBaseFrame, fDBFrame,
  fFieldEditFrame, uTreeNodes, dDocClient, uClientTypes,
  JvDBLookup, AbmesFields, fTreeNodeFieldEditFrame, fDeptFieldEditFrame,
  JvExControls, JvComponent, JvCaptionButton, JvComponentBase;

type
  TfmOccupationProfessionsDept = class(TEditForm)
    gbPriority: TGroupBox;
    cbPriority: TJvDBLookupCombo;
    frDept: TfrDeptFieldEditFrame;
    cdsDeptOccWorkDeptPriorities: TAbmesClientDataSet;
    cdsDeptOccWorkDeptPrioritiesOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField;
    cdsDeptOccWorkDeptPrioritiesOCC_WORK_DEPT_PRIORITY_NO: TAbmesFloatField;
    cdsDeptOccWorkDeptPrioritiesOCC_WORK_DEPT_PRIORITY_NAME: TAbmesWideStringField;
    cdsDeptOccWorkDeptPrioritiesOWD_PRIORITY_DISPLAY_NAME: TAbmesWideStringField;
    dsDeptOccWorkDeptPriorities: TDataSource;
    cdsDeptOccWorkDeptPrioritiesDEPT_OWDP_COVER_TYPE_CODE: TAbmesFloatField;
    cdsDeptOccWorkDeptPrioritiesIS_CAPACITY_GENERATOR: TAbmesFloatField;
    procedure cdsDeptOccWorkDeptPrioritiesBeforeOpen(DataSet: TDataSet);
    procedure dsDataDataChange(Sender: TObject; Field: TField);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsDeptOccWorkDeptPrioritiesFilterRecord(DataSet: TDataSet; var Accept: Boolean);
  private
    { Private declarations }
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  public
    { Public declarations }
  end;

implementation

uses
  dMain, uUtils, uClientUtils, uOWDPriorityTypes;

{$R *.dfm}

{ TfmOccupationProfessionsDept }

procedure TfmOccupationProfessionsDept.actFormUpdate(Sender: TObject);
begin
  inherited;
  SetControlReadOnly(EditMode = emReadOnly, cbPriority);
end;

procedure TfmOccupationProfessionsDept.cdsDeptOccWorkDeptPrioritiesBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SetParams(cdsDeptOccWorkDeptPriorities.Params, dsData.DataSet);
end;

procedure TfmOccupationProfessionsDept.OpenDataSets;
begin
  cdsDeptOccWorkDeptPriorities.Open;
  inherited;
end;

procedure TfmOccupationProfessionsDept.CloseDataSets;
begin
  inherited;
  cdsDeptOccWorkDeptPriorities.Close;
end;

procedure TfmOccupationProfessionsDept.dsDataDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if Assigned(Field) then
    begin
      if (Field.FieldName = 'DEPT_CODE') then
        RefreshDataSet(cdsDeptOccWorkDeptPriorities);

      if (Field.FieldName = 'OCC_WORK_DEPT_PRIORITY_CODE') then
        begin
          dsData.DataSet.FieldByName('DEPT_OWDP_COVER_TYPE_CODE').Value:=
            cdsDeptOccWorkDeptPriorities.Lookup('OCC_WORK_DEPT_PRIORITY_CODE', Field.AsVariant, 'DEPT_OWDP_COVER_TYPE_CODE');

          dsData.DataSet.FieldByName('IS_CAPACITY_GENERATOR').Value:=
            cdsDeptOccWorkDeptPriorities.Lookup('OCC_WORK_DEPT_PRIORITY_CODE', Field.AsVariant, 'IS_CAPACITY_GENERATOR');
        end;
    end;
end;

procedure TfmOccupationProfessionsDept.cdsDeptOccWorkDeptPrioritiesFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:=
    (EditMode <> emInsert) or
    (cdsDeptOccWorkDeptPrioritiesDEPT_OWDP_COVER_TYPE_CODE.AsDeptOWDPCoverType in [dowdpctLocal, dowdpctLocalAndDescendants]);
end;

end.
