unit fCurrencyRates;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uClientTypes, ParamDataSet, Db, GridsEh, DBGridEh, AbmesDBGrid,
  StdCtrls, Mask, JvToolEdit, JvDBControls, DBClient, AbmesClientDataSet,
  ImgList, ActnList, Buttons, ExtCtrls, AbmesFields, Menus, JvButtons,
  fEditForm, fBaseFrame, fDBFrame, fFieldEditFrame, fDateFieldEditFrame,
  JvComponent, JvCaptionButton, JvComponentBase;
 
type
  TfmCurrencyRates = class(TEditForm)
    pnlTop: TPanel;
    lblRateDate: TLabel;
    cdsDataCURRENCY_ABBREV: TAbmesWideStringField;
    cdsDataCURRENCY_NAME: TAbmesWideStringField;
    cdsDataSCALE: TAbmesFloatField;
    cdsDataCURRENCY_CODE: TAbmesFloatField;
    cdsDataRATE_DATE: TAbmesSQLTimeStampField;
    cdsDataFIXING: TAbmesFloatField;
    pnlGrid: TPanel;
    grdMain: TAbmesDBGrid;
    pdsParams: TParamDataSet;
    dsParams: TDataSource;
    pdsParamsRATE_DATE: TAbmesSQLTimeStampField;
    frRateDate: TfrDateFieldEditFrame;
    cdsLastMissingCurrencyRateDate: TAbmesClientDataSet;
    cdsLastMissingCurrencyRateDateLAST_MISSING_CR_DATE: TAbmesSQLTimeStampField;
    actLastMissingCurrencyRateDate: TAction;
    btnLastMissingCurrencyRateDate: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdMainExit(Sender: TObject);
    procedure FixingAndUserRateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FixingAndUserRateSetText(Sender: TField; const Text: String);
    procedure FormShow(Sender: TObject);
    procedure pdsParamsRATE_DATEChange(Sender: TField);
    procedure cdsDataBeforeInsert(DataSet: TDataSet);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure grdMainGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsDataAfterOpen(DataSet: TDataSet);
    procedure actLastMissingCurrencyRateDateUpdate(Sender: TObject);
    procedure actLastMissingCurrencyRateDateExecute(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    class function HasCaptionMenu: Boolean; override;
  end;

implementation

uses
  dMain, uClientUtils, uUtils, uUserActivityConsts, uClientDateTime;

{$R *.DFM}

resourcestring
  SPrimaryCurrencyFixingMustBe1 = 'Фиксингът на първичната валута трябва да бъде 1';
  SMissingCurrencyRates = 'Липсващи курсове на %s';

{ TfmCurrencyRates }

procedure TfmCurrencyRates.FormCreate(Sender: TObject);
begin
  inherited;

  cdsData.Params.ParamByName('RATE_DATE').AsDateTime:= ContextDate;
  frRateDate.FieldNames:= 'RATE_DATE';
end;

procedure TfmCurrencyRates.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;

  pdsParams.Close;
  
  if (cdsData.ChangeCount > 0) then
    Screen.TempCursor(crSQLWait) /
      procedure begin
        cdsData.ApplyUpdates(-1);
      end;
end;

procedure TfmCurrencyRates.grdMainExit(Sender: TObject);
begin
  inherited;
  if (EditMode = emEdit) then
    begin
      CheckEditMode(cdsData);
      cdsData.Post;
    end;
end;

procedure TfmCurrencyRates.FixingAndUserRateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;

  if not Sender.IsNull then
    Text:= FormatFloat((Sender as TAbmesFloatField).DisplayFormat,
      Sender.AsFloat * cdsDataSCALE.AsFloat)
  else
    Text:= '';
end;

procedure TfmCurrencyRates.FixingAndUserRateSetText(Sender: TField;
  const Text: String);
begin
  inherited;

  if (Text <> '') then
    Sender.AsFloat:= StrToFloat(Text) / cdsDataSCALE.AsFloat
  else
    Sender.Clear;
end;

procedure TfmCurrencyRates.FormShow(Sender: TObject);
begin
  inherited;
  pdsParams.Open;

  if not LoginContext.HasUserActivity(uaCurrencyRatesEdit) then
    grdMain.Options:= grdMain.Options - [dgEditing]; 
end;

procedure TfmCurrencyRates.pdsParamsRATE_DATEChange(Sender: TField);
var
  SaveCursor: TCursor;
begin
  inherited;

  if (cdsData.ChangeCount > 0) then
    cdsData.ApplyUpdates(0);

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crSQLWait;
  try
    // zashto pdsParams.Post ne vyrvi, a vmesto nego: ...     a?
    cdsData.Params.ParamByName('RATE_DATE').Value:= pdsParamsRATE_DATE.AsVariant;
    if cdsData.Active then
      RefreshDataSet(cdsData);
  finally
    Screen.Cursor:= SaveCursor;
  end;
end;

procedure TfmCurrencyRates.actLastMissingCurrencyRateDateExecute(
  Sender: TObject);
begin
  inherited;
  CheckEditMode(pdsParams);
  pdsParamsRATE_DATE.AsDateTime:=
    cdsLastMissingCurrencyRateDateLAST_MISSING_CR_DATE.AsDateTime;
end;

procedure TfmCurrencyRates.actLastMissingCurrencyRateDateUpdate(
  Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    begin
      Enabled:= not cdsLastMissingCurrencyRateDateLAST_MISSING_CR_DATE.IsNull;

      if Enabled then
        Caption:= Format(SMissingCurrencyRates, [cdsLastMissingCurrencyRateDateLAST_MISSING_CR_DATE.DisplayText])
      else
        Caption:= '';
    end;
end;

procedure TfmCurrencyRates.cdsDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cdsLastMissingCurrencyRateDate.Close;
  cdsLastMissingCurrencyRateDate.Params.ParamByName('TO_DATE').AsDateTime:=
    cdsData.Params.ParamByName('RATE_DATE').AsDateTime;
  cdsLastMissingCurrencyRateDate.Open;
end;

procedure TfmCurrencyRates.cdsDataBeforeInsert(DataSet: TDataSet);
begin
  raise Exception.Create('Internal error');
end;

procedure TfmCurrencyRates.cdsDataBeforePost(DataSet: TDataSet);
const
  Eps = 0.00001;
begin
  inherited;

  if (cdsDataCURRENCY_CODE.AsInteger = LoginContext.BaseCurrencyCode) and
     (Abs(cdsDataFIXING.AsFloat - 1) > Eps) then
    raise Exception.Create(SPrimaryCurrencyFixingMustBe1);

  if (pdsParamsRATE_DATE.AsDateTime <= ContextDate) then
    CheckRequiredField(cdsDataFIXING);
end;

procedure TfmCurrencyRates.grdMainGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if (cdsDataCURRENCY_CODE.AsInteger = LoginContext.BaseCurrencyCode) then
    AFont.Color:= clBlue;
end;

class function TfmCurrencyRates.HasCaptionMenu: Boolean;
begin
  Result:= False;
end;

procedure TfmCurrencyRates.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frRateDate) then
    AFrame.ReadOnly:= False
  else
    inherited;
end;

procedure TfmCurrencyRates.actFormUpdate(Sender: TObject);
begin
  inherited;
  grdMain.Enabled:=
    not (cdsData.Bof and cdsData.Eof) and
    not cdsData.Params.ParamByName('RATE_DATE').IsNull;
end;

end.
