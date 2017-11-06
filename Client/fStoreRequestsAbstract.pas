unit fStoreRequestsAbstract;

interface
 
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fGridForm, ImgList, ParamDataSet, ActnList, Db, DBClient,
  Buttons, StdCtrls, ExtCtrls, fEditForm, DBGridEh, AbmesDBGrid,
  AbmesClientDataSet, GridsEh, DBCtrls, ColorNavigator, AbmesFields, Menus,
  JvButtons, ComCtrls, ToolWin, JvComponent, JvCaptionButton, JvComponentBase;

type
  TfmStoreRequestsAbstract = class(TGridForm)
    cdsGridDataSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataSTORE_REQUEST_CODE: TAbmesFloatField;
    cdsGridDataIN_OUT: TAbmesFloatField;
    cdsGridDataREQUEST_DEPT: TAbmesWideStringField;
    cdsGridDataREQUEST_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridDataREQUEST_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataREQUEST_END_DATE: TAbmesSQLTimeStampField;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_NO: TAbmesFloatField;
    cdsGridData_SHOW_IN_OUT: TAbmesWideStringField;                                                         
    cdsEmployees: TAbmesClientDataSet;
    cdsEmployeesEMPLOYEE_CODE: TAbmesFloatField;
    cdsEmployeesEMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridDataBND_PROCESS_OBJECT_CLASS_ABB: TAbmesWideStringField;
    cdsGridDataBND_PROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataIS_FINISHED: TAbmesFloatField;
    cdsGridDataIS_ANNULED: TAbmesFloatField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    cdsGridDataTOTAL_STORE_REQUEST_ITEMS: TAbmesFloatField;
    cdsGridDataUNFINISHED_STORE_REQUEST_ITEMS: TAbmesFloatField;
    cdsGridDataSTORE_REQUEST_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataPRODUCT_CLASS_CODE: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cdsGridDataTOTAL_STORE_REQUEST_ITEMSGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataUNFINISHED_STORE_REQUEST_ITEMSGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure cdsGridDataREQUEST_BEGIN_DATEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
  private
    { Private declarations }
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetInsertRecordEnabled: Boolean; override;
  public
    { Public declarations }
  end;

implementation

uses
  fStoreRequest, dMain,  rStoreRequests, uColorConsts, uClientUtils, uProducts;

{$R *.DFM}

resourcestring
  SInStoreRequestAbbrev = 'П';
  SOutStoreRequestAbbrev = 'Т';
  SFinStoreRequestAbbrev = 'Ф';

{ TfmStoreRequestsAbstract }

procedure TfmStoreRequestsAbstract.FormCreate(Sender: TObject);
begin
  inherited;

  EditFormClass:= TfmStoreRequest;
  ReportClass:= TrptStoreRequests;

  RegisterDateFields(cdsGridData);
end;

procedure TfmStoreRequestsAbstract.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  if (IntToProductClass(cdsGridDataPRODUCT_CLASS_CODE.AsInteger) = pcFinancial) then
    cdsGridData_SHOW_IN_OUT.AsString:= SFinStoreRequestAbbrev
  else
    begin
      if (cdsGridDataIN_OUT.Value > 0) then
        cdsGridData_SHOW_IN_OUT.AsString:= SInStoreRequestAbbrev
      else
        cdsGridData_SHOW_IN_OUT.AsString:= SOutStoreRequestAbbrev;
    end;
end;

procedure TfmStoreRequestsAbstract.OpenDataSets;
begin
  cdsBranches.Open;
  cdsEmployees.Open;

  inherited;
end;

procedure TfmStoreRequestsAbstract.CloseDataSets;
begin
  inherited;

  cdsEmployees.Close;
  cdsBranches.Close;
end;

function TfmStoreRequestsAbstract.GetInsertRecordEnabled: Boolean;
begin
  Result:= False;
end;

procedure TfmStoreRequestsAbstract.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var
  Highlight: Boolean;
  Field: TField;
begin
  inherited;

  Highlight:= (gdSelected in State);
  Field:= Column.Field;

  if (Highlight and (ActiveControl = Sender)) or
     (Field.DataSet.Bof and Field.DataSet.Eof) then
    Exit;

  if (Field.FieldName = '_SHOW_IN_OUT') then
    case cdsGridDataIN_OUT.AsInteger of
      1: Background:= ccStoreDealIn;
      -1: Background:= ccStoreDealOut;
    end;

  if (Field.FieldName = '_STORE_REQUEST_ITEMS') then
    begin
      if (cdsGridDataTOTAL_STORE_REQUEST_ITEMS.AsInteger > cdsGridDataUNFINISHED_STORE_REQUEST_ITEMS.AsInteger) then
        AFont.Color:= clRed;       
    end;
end;

procedure TfmStoreRequestsAbstract.cdsGridDataTOTAL_STORE_REQUEST_ITEMSGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmStoreRequestsAbstract.cdsGridDataUNFINISHED_STORE_REQUEST_ITEMSGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmStoreRequestsAbstract.cdsGridDataREQUEST_BEGIN_DATEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if cdsGridDataREQUEST_BEGIN_DATE.IsNull then
    Text:= ''
  else
    Text:= dmMain.GetDateIntervalAsShortString(cdsGridDataREQUEST_BEGIN_DATE.AsDateTime, cdsGridDataREQUEST_END_DATE.AsDateTime);
end;

end.
