unit fChooseExceptEvent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvComponentBase,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls,
  AbmesFields, dDocClient, uClientTypes;

type
  TfmChooseExceptEvent = class(TEditForm)
    gbExceptEvent: TGroupBox;
    edtNo: TDBEdit;
    lblExceptEvent: TLabel;
    cdsDataEXCEPT_EVENT_NO: TAbmesFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FResultExceptEventCode: Integer;
    FIsChoosingCause: Boolean;
  protected
    property ResultExceptEventCode: Integer read FResultExceptEventCode;
  public
    class function CanEditOuterDataSet: Boolean; override;
    procedure Initialize; override;

    procedure SetDataParams(AdmDocClient: TdmDocClient;
      ADataSet: TDataSet;
      AEditMode: TEditMode;
      ADefaultsOrigin: TDefaultsOrigin;
      AIsChoosingCause: Boolean); reintroduce; virtual;

    class function ShowForm(
      AdmDocClient: TdmDocClient;
      ADataSet: TDataSet;
      AEditMode: TEditMode;
      ADefaultsOrigin: TDefaultsOrigin;
      AIsChoosingCause: Boolean): Integer;
  end;

resourcestring
  SExceptEventDoesNotExist = 'Не съществува Недопустимо Отклонение с такъв номер';
  SExceptEventLabel = 'Номер на Недопустимо Отклонение - %s, към което да бъдат закачени избраните НО като %s';
  SCause = 'Причина';
  SCauses = 'Причини';
  SConsequence = 'Следствие';
  SConsequences = 'Следствия';

const
  SingularExceptEventLabels: array[Boolean] of string = (SConsequence, SCause);
  PluralExceptEventLabels: array[Boolean] of string = (SCauses, SConsequences);

implementation

uses
  dMain, uUtils;

{$R *.dfm}

{ TfmChooseExceptEvent }

class function TfmChooseExceptEvent.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmChooseExceptEvent.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AIsChoosingCause: Boolean);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FIsChoosingCause:= AIsChoosingCause;
end;

class function TfmChooseExceptEvent.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AIsChoosingCause: Boolean): Integer;
var
  f: TfmChooseExceptEvent;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AIsChoosingCause);
    f.InternalShowForm;
    Result:= f.ResultExceptEventCode;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmChooseExceptEvent.Initialize;
begin
  inherited Initialize;
  lblExceptEvent.Caption:= Format(SExceptEventLabel, [SingularExceptEventLabels[FIsChoosingCause], PluralExceptEventLabels[FIsChoosingCause]]);
end;

procedure TfmChooseExceptEvent.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if cdsData.State in dsEditModes then
    cdsData.UpdateRecord;

  if (ModalResult = mrOk) then
    begin
      CheckRequiredFields(cdsData);
      FResultExceptEventCode:= dmMain.SvrExceptEvents.GetExceptEventCodeByNo(cdsDataEXCEPT_EVENT_NO.AsInteger);
      if (FResultExceptEventCode = 0) then
        raise Exception.Create(SExceptEventDoesNotExist);
    end
  else
    FResultExceptEventCode:= 0;

  inherited;
end;

end.
