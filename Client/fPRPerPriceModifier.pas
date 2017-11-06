unit fPRPerPriceModifier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, ActnList, StdCtrls, Buttons, ExtCtrls, Mask,
  DBCtrls, fDateIntervalFrame, fBaseFrame, fDBFrame, fFieldEditFrame, fPartnerFieldEditFrame,
  dDocClient, uClientTypes, fEnumFieldEditFrame, fPRPerPriceModifierProductSetFieldEditFrame,
  fProductSetFieldEditFrame;

type
  TfmPRPerPriceModifier = class(TEditForm)
    frParRelPeriodPartner: TfrPartnerFieldEditFrame;
    gbParRelPeriodDateInterval: TGroupBox;
    frParRelPeriodDateInterval: TfrDateIntervalFrame;
    gbPRPerPriceModifier: TGroupBox;
    edtPRPerPriceModifierName: TDBEdit;
    edtPRPerPriceModifierNo: TDBEdit;
    lblPRPerPriceModifierNo: TLabel;
    lblPRPerPriceModifierName: TLabel;
    gbPRPerPriceModifierValues: TGroupBox;
    edtAcquirePriceModifier: TDBEdit;
    lblAcquirePriceModifier: TLabel;
    lblLeasePriceModifier: TLabel;
    edtLeasePriceModifier: TDBEdit;
    frProductSet: TfrPRPerPriceModifierProductSetFieldEditFrame;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone); override;
  end;

implementation

uses
  uClientUtils;

{$R *.dfm}

{ TfmPRPerPriceModifier }

procedure TfmPRPerPriceModifier.SetDataParams(AdmDocClient: TdmDocClient; ADataSet: TDataSet;
  AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  frParRelPeriodPartner.SetDataSet(ADataSet.DataSetField.DataSet);
  frParRelPeriodDateInterval.SetDataSet(ADataSet.DataSetField.DataSet);
  frProductSet.ParRelPeriodBeginDateField:= ADataSet.DataSetField.DataSet.FieldByName('BEGIN_DATE');
  frProductSet.ParRelPeriodEndDateField:= ADataSet.DataSetField.DataSet.FieldByName('END_DATE');
end;

procedure TfmPRPerPriceModifier.actFormUpdate(Sender: TObject);
begin
  inherited;
  SetControlsReadOnly((EditMode = emReadOnly), [
    edtPRPerPriceModifierNo,
    edtPRPerPriceModifierName,
    edtAcquirePriceModifier,
    edtLeasePriceModifier]);
end;

procedure TfmPRPerPriceModifier.FormCreate(Sender: TObject);
begin
  inherited;
  frParRelPeriodPartner.FieldNames:= 'PARTNER_CODE';
end;

procedure TfmPRPerPriceModifier.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frParRelPeriodPartner) or
     (AFrame = frParRelPeriodDateInterval) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;  { if }

  inherited SetDBFrameReadOnly(AFrame);
end;

end.
