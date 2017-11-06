unit fSDBindingPlannedSD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fFieldEditFrame, Db, ImgList, ActnList, StdCtrls, Mask, DBCtrls, DBClient,
  AbmesClientDataSet, AbmesFields, JvDBLookup, JvExControls, System.Actions;

type
  TfrSDBindingPlannedSD = class(TFieldEditFrame)
    cbBranch: TJvDBLookupCombo;
    lblBranch: TLabel;
    edtNo: TDBEdit;
    lblNo: TLabel;
    cdsBoundPlannedSD: TAbmesClientDataSet;
    cdsBoundPlannedSDBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsBoundPlannedSDBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    cdsBoundPlannedSDBND_PROCESS_CODE: TAbmesFloatField;
    cdsBoundPlannedSDPRODUCT_CODE: TAbmesFloatField;
    cdsBoundPlannedSDSTORE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsBoundPlannedSDDEPT_CODE: TAbmesFloatField;
    cdsBoundPlannedSDWORK_ORDER_NO: TAbmesWideStringField;
  private
    { Private declarations }
  protected
    procedure NewReadOnlySet; override;
  public
    procedure Initialize; override;
    procedure HideFrame; override;
    procedure DoApplyUpdates; override;
  end;

implementation

uses
  dMain;

{$R *.DFM}

resourcestring
  SNoSuchPSD = ' Не съществува Планирано Постъпление/Теглене с такава идентификация!';
  SWrongDealType = 'Планираното Постъпление/Теглене с тази идентификация е от неправилен тип!';

{ TfrSDBindingPlannedStoreDeal }

procedure TfrSDBindingPlannedSD.Initialize;
begin
  inherited;
  FieldNames:= 'PLANNED_STORE_DEAL_BRANCH_CODE; PLANNED_STORE_DEAL_CODE; BND_PROCESS_OBJECT_BRANCH_CODE; BND_PROCESS_OBJECT_CODE';
end;

procedure TfrSDBindingPlannedSD.HideFrame;
begin
  actClearFieldValues.Execute;
  inherited;
end;

procedure TfrSDBindingPlannedSD.DoApplyUpdates;
begin
  inherited;

  if Visible and
     not dsData.DataSet.FieldByName('PLANNED_STORE_DEAL_BRANCH_CODE').IsNull and
     not dsData.DataSet.FieldByName('PLANNED_STORE_DEAL_CODE').IsNull then
    begin
      with cdsBoundPlannedSD do
        begin
          Params.ParamByName('PLANNED_STORE_DEAL_BRANCH_CODE').AsInteger:=
            dsData.DataSet.FieldByName('PLANNED_STORE_DEAL_BRANCH_CODE').AsInteger;
          Params.ParamByName('PLANNED_STORE_DEAL_CODE').AsInteger:=
            dsData.DataSet.FieldByName('PLANNED_STORE_DEAL_CODE').AsInteger;

          Open;
          try
            if BOF and EOF then
              raise Exception.Create(SNoSuchPSD);

            if (cdsBoundPlannedSDSTORE_DEAL_TYPE_CODE.AsInteger <>
                dsData.DataSet.FieldByName('STORE_DEAL_TYPE_CODE').AsInteger) then
              raise Exception.Create(SWrongDealType);

            dsData.DataSet.FieldByName('BND_PROCESS_CODE').AsInteger:=
              cdsBoundPlannedSDBND_PROCESS_CODE.AsInteger;
            dsData.DataSet.FieldByName('BND_PROCESS_OBJECT_BRANCH_CODE').AsInteger:=
              cdsBoundPlannedSDBND_PROCESS_OBJECT_BRANCH_CODE.AsInteger;
            dsData.DataSet.FieldByName('BND_PROCESS_OBJECT_CODE').AsInteger:=
              cdsBoundPlannedSDBND_PROCESS_OBJECT_CODE.AsInteger;

            dsData.DataSet.FieldByName('DEPT_CODE').AsInteger:=
              cdsBoundPlannedSDDEPT_CODE.AsInteger;
            dsData.DataSet.FieldByName('WORK_ORDER_NO').AsString:=
              cdsBoundPlannedSDWORK_ORDER_NO.AsString;
          finally
            Close;
          end;
        end;
    end;
end;

procedure TfrSDBindingPlannedSD.NewReadOnlySet;
begin
  inherited;
  cbBranch.ReadOnly:= ReadOnly;
  edtNo.ReadOnly:= ReadOnly;
end;

end.
