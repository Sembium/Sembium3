unit fCompleteFinOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, fBevelEditForm, DB, DBClient,
  AbmesClientDataSet, ActnList, StdCtrls, Buttons, ExtCtrls, fEditForm,
  fBaseFrame, fDBFrame, fFieldEditFrame, fDateFieldEditFrame;

type
  TfmCompleteFinOrder = class(TBevelEditForm)
    frDate: TfrDateFieldEditFrame;
    lblDate: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    FInitStatusCode: Integer;
    { Private declarations }
  protected
    procedure DoApplyUpdates; override;
    procedure DoCancelUpdates; override;
  public
    class function ShowForm(ADataSet: TDataSet = nil): Boolean;
    procedure Initialize; override;
    procedure Finalize; override;
  end;

implementation

uses
  uClientTypes, uUtils, uClientDateTime, uUserActivityConsts;

resourcestring
  SFutureDateNotAllowed = 'Не можете да отчитате за бъдеща дата!';

{$R *.dfm}

{ TfmCompleteFinOrder }

procedure TfmCompleteFinOrder.DoApplyUpdates;
begin
//  inherited;  do nothing
  CheckRequiredField(dsData.DataSet.FieldByName('COMPLETE_MODEL_DATE'));

  if (dsData.DataSet.FieldByName('COMPLETE_MODEL_DATE').AsDateTime > ContextDate) then
    raise Exception.Create(SFutureDateNotAllowed);

  if (dsData.DataSet.FieldByName('COMPLETE_MODEL_DATE').AsDateTime < ContextDate) then
    LoginContext.CheckUserActivity(uaNewPastFinStoreDeal);
end;

procedure TfmCompleteFinOrder.DoCancelUpdates;
begin
//  inherited;  do nothing
  if (dsData.DataSet.State in dsEditModes) then
    begin
      dsData.DataSet.FieldByName('COMPLETE_MODEL_DATE').Clear;
      dsData.DataSet.FieldByName('STATUS_CODE').AsInteger:= FInitStatusCode;
    end;
end;

procedure TfmCompleteFinOrder.Finalize;
begin
//  inherited;  do nothing
end;

procedure TfmCompleteFinOrder.FormCreate(Sender: TObject);
begin
  inherited;
  frDate.FieldNames:= 'COMPLETE_MODEL_DATE';
end;

procedure TfmCompleteFinOrder.Initialize;
begin
  inherited;

  FInitStatusCode:= dsData.DataSet.FieldByName('STATUS_CODE').AsInteger;

  CheckEditMode(dsData.DataSet);
  dsData.DataSet.FieldByName('COMPLETE_MODEL_DATE').AsDateTime:= ContextDate;
end;

class function TfmCompleteFinOrder.ShowForm(ADataSet: TDataSet): Boolean;
var
  f: TfmCompleteFinOrder;
begin
  f:= CreateEx;
  try
    f.SetDataParams(nil, ADataSet, emEdit, doNone);
    f.InternalShowForm;
    Result:= not ADataSet.FieldByName('COMPLETE_MODEL_DATE').IsNull;
  finally
    f.ReleaseForm;
  end;
end;

end.
