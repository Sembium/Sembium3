unit fUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvComponentBase,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, AbmesFields,
  fBaseFrame, fDBFrame, fFieldEditFrame, fEmployeeFieldEditFrame,
  fEmployeeFieldEditFrameBald, Mask, DBCtrls, AbmesDBCheckBox, System.Actions,
  DBCtrlsEh, uIdentity.Connector;

type
  TfmUser = class(TEditForm)
    cdsDataEMPLOYEE_CODE: TAbmesFloatField;
    cdsDataIS_DISABLED: TAbmesFloatField;
    pnlUserData: TPanel;
    lblUser: TLabel;
    chkIsDisabled: TAbmesDBCheckBox;
    frEmployee: TfrEmployeeFieldEditFrameBald;
    cbExternalIdentifier: TDBComboBoxEh;
    tmrFindExternalIdentifier: TTimer;
    actClearExternalIdentifier: TAction;
    cdsDataEXTERNAL_IDENTIFIER: TAbmesWideStringField;
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbExternalIdentifierChange(Sender: TObject);
    procedure tmrFindExternalIdentifierTimer(Sender: TObject);
    procedure actClearExternalIdentifierExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cbExternalIdentifierCloseUp(Sender: TObject; Accept: Boolean);
  private
    FExternalIdentifier: string;
    FExternalIdentifierSearchText: string;
    FFoundExternalUserData: IdentityConnector.TExternaluserData;
    FFoundExternalIdentifierDisplayText: string;
    function FindExternalIdentifier(const ASearchText: string): string;
    function GetExternalUserData(const AExternalIdentifier: string): IdentityConnector.TExternalUserData;
    procedure CheckSameNames(AEmployeeCode: Integer; const AExternalIdentifier: string);
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    class function CanEditOuterDataSet: Boolean; override;
  end;

implementation

uses
  uClientTypes, uUtils, uClientUtils, dMain, uConnectionUtils;

{$R *.dfm}

resourcestring
  SNamesDoNotMatch = 'Имената на Служителя и Потребителя не съвпадат';
  SMultipleExternalIdentifiersFoundDisplayText = 'Повече от един Потребител съответства на търсенето. Допълнете търсения текст.';
  SNoExternalIdentifierFoundDisplayText = 'Не съществува Потребител съответстващ на търсенето. Променете търсения текст.';

const
  SMultipleExternalIdentifiersFound = 'MultipleExternalIdentifiersFound';

{ TfmUser }

procedure TfmUser.FormShow(Sender: TObject);
begin
  inherited;
  FExternalIdentifier:= cdsDataEXTERNAL_IDENTIFIER.AsString;

  FFoundExternalUserData:= GetExternalUserData(FExternalIdentifier);
  FFoundExternalIdentifierDisplayText:= FFoundExternalUserData.DisplayText;
  cbExternalIdentifier.Text:= FFoundExternalIdentifierDisplayText;
end;

function TfmUser.GetExternalUserData(const AExternalIdentifier: string): IdentityConnector.TExternaluserData;
var
  LResult: IdentityConnector.TExternaluserData;
begin
  if (AExternalIdentifier = '') then
    begin
      Exit(Default(IdentityConnector.TExternaluserData));
    end;

  Screen.TempCursor(crHourGlass)/
    procedure begin
      LResult:= IdentityConnector.GetExternalUserData(AExternalIdentifier);
    end;

  Result:= LResult;
end;

function TfmUser.FindExternalIdentifier(const ASearchText: string): string;
var
  LSearchResult: IdentityConnector.TSingleSearchResult<string>;
begin
  if (ASearchText = '') then
    begin
      Exit('');
    end;

  Screen.TempCursor(crHourGlass)/
    procedure begin
      LSearchResult:= IdentityConnector.FindExternalUserIdentifier(ASearchText);
    end;

  case LSearchResult.SearchStatus of
    ssNotFound:
      Result:= '';
    ssAmbiguous:
      Result:= SMultipleExternalIdentifiersFound;
  else
    Result:= LSearchResult.Value;
  end;
end;

procedure TfmUser.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (ModalResult = mrOK) then
    begin
      ActiveControl:= btnOK;

      if (FExternalIdentifier <> cdsDataEXTERNAL_IDENTIFIER.AsString) then
        begin
          CheckSameNames(cdsDataEMPLOYEE_CODE.AsInteger, FExternalIdentifier);

          CheckEditMode(cdsData);
          cdsDataEXTERNAL_IDENTIFIER.AsVariant:= StringToVar(FExternalIdentifier);
        end;

      CheckRequiredField(cdsDataEXTERNAL_IDENTIFIER);
    end;   { if }

  inherited;
end;

procedure TfmUser.FormCreate(Sender: TObject);
begin
  inherited;
  frEmployee.FieldNames:= 'EMPLOYEE_CODE';
end;

procedure TfmUser.actClearExternalIdentifierExecute(Sender: TObject);
begin
  inherited;
  FExternalIdentifier:= '';
  FExternalIdentifierSearchText:= '';
  FFoundExternalUserData:= Default(IdentityConnector.TExternaluserData);
  FFoundExternalIdentifierDisplayText:= '';
  cbExternalIdentifier.Items.Clear;
  cbExternalIdentifier.Clear;
end;

procedure TfmUser.actFormUpdate(Sender: TObject);
begin
  inherited;
  cbExternalIdentifier.ReadOnly:= (FExternalIdentifier <> '');
  actClearExternalIdentifier.Visible:= (FExternalIdentifier <> '');
end;

class function TfmUser.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmUser.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frEmployee) then
    begin
      AFrame.ReadOnly:= (EditMode <> emInsert);
      Exit;
    end;  { if }

  inherited;
end;

procedure TfmUser.tmrFindExternalIdentifierTimer(Sender: TObject);
var
  LSearchResult: string;
begin
  inherited;
  tmrFindExternalIdentifier.Enabled:= False;

  if (FExternalIdentifierSearchText.Length < 6) then
    Exit;

  LSearchResult:= FindExternalIdentifier(FExternalIdentifierSearchText);

  if (LSearchResult = SMultipleExternalIdentifiersFound) then
    begin
      FFoundExternalUserData:= Default(IdentityConnector.TExternaluserData);
      FFoundExternalIdentifierDisplayText:= SMultipleExternalIdentifiersFoundDisplayText;
    end
  else if (LSearchResult = '') then
    begin
      FFoundExternalUserData:= Default(IdentityConnector.TExternaluserData);
      FFoundExternalIdentifierDisplayText:= SNoExternalIdentifierFoundDisplayText;
    end
  else
    begin
      FFoundExternalUserData:= GetExternalUserData(LSearchResult);
      FFoundExternalIdentifierDisplayText:= FFoundExternalUserData.DisplayText;
    end;

  cbExternalIdentifier.Items.Clear;
  cbExternalIdentifier.Items.Add(FFoundExternalIdentifierDisplayText);

  if (FExternalIdentifierSearchText <> '') then
    begin
      cbExternalIdentifier.DropDown();
    end;
end;

procedure TfmUser.cbExternalIdentifierChange(Sender: TObject);
var
  LValue: string;
begin
  inherited;
  tmrFindExternalIdentifier.Enabled:= False;
  cbExternalIdentifier.CloseUp(False);

  LValue:= cbExternalIdentifier.Text;

  if (LValue = '') then
    begin
      FExternalIdentifierSearchText:= '';
      FFoundExternalUserData:= Default(IdentityConnector.TExternaluserData);
      FFoundExternalIdentifierDisplayText:= '';
      cbExternalIdentifier.Items.Clear;
    end
  else
    if (LValue <> FFoundExternalIdentifierDisplayText) and
       (LValue <> FExternalIdentifierSearchText) then
      begin
        FExternalIdentifierSearchText:= LValue;
        FFoundExternalUserData:= Default(IdentityConnector.TExternaluserData);
        FFoundExternalIdentifierDisplayText:= '';
        cbExternalIdentifier.Items.Clear;

        tmrFindExternalIdentifier.Enabled:= True;
      end;
end;

procedure TfmUser.cbExternalIdentifierCloseUp(Sender: TObject; Accept: Boolean);
begin
  inherited;
  if Accept then
    begin
      if FFoundExternalUserData.IsEmpty then
        begin
          FFoundExternalIdentifierDisplayText:= '';
        end;

      FExternalIdentifierSearchText:= '';
      FExternalIdentifier:= FFoundExternalUserData.Identifier;
      cbExternalIdentifier.Text:= FFoundExternalIdentifierDisplayText;
    end;
end;

procedure TfmUser.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDataIS_DISABLED.AsBoolean:= False;
end;

procedure TfmUser.CheckSameNames(AEmployeeCode: Integer;
  const AExternalIdentifier: string);
var
  EmployeeFirstName: string;
  EmployeeMiddleName: string;
  EmployeeLastName: string;
  ExternalUserData: IdentityConnector.TExternalUserData;
begin
  if (AEmployeeCode = 0) or
     (AExternalIdentifier = '') then
    Exit;

  dmMain.SvrHumanResource.GetEmployeeName(
    AEmployeeCode,
    EmployeeFirstName,
    EmployeeMiddleName,
    EmployeeLastName);

  ExternalUserData:= GetExternalUserData(AExternalIdentifier);

  if (EmployeeFirstName <> ExternalUserData.FirstName) or
     (EmployeeMiddleName <> ExternalUserData.MiddleName) or
     (EmployeelastName <> ExternalUserData.LastName) then
    raise Exception.Create(SNamesDoNotMatch);
end;

end.
