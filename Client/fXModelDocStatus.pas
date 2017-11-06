unit fXModelDocStatus;
                                                                          
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fSpecAndXModelDocStatusAbstract, ExtCtrls, DB, AbmesFields, DBClient,
  AbmesClientDataSet, JvButtons, ActnList, StdCtrls, ComCtrls, Buttons, fBaseFrame,
  fDBFrame, fFieldEditFrame, fTreeNodeFieldEditFrame,
  fProductFieldEditFrame, fProductFieldEditFrameBald, uClientTypes,
  fDoc, dDocClient, DBCtrls, ImgList, JvComponent,
  JvCaptionButton, JvComponentBase, ToolWin, DBGridEhGrouping, GridsEh,
  DBGridEh, AbmesDBGrid;

type
  TfmXModelDocStatus = class(TfmSpecAndXModelDocStatusAbstract)
    cdsDataML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataML_OBJECT_CODE: TAbmesFloatField;
    cdsDataqryDSXModelLines: TDataSetField;
    cdsDSLinesMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDSLinesMLL_OBJECT_CODE: TAbmesFloatField;
    cdsDSLinesML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDSLinesML_OBJECT_CODE: TAbmesFloatField;
    cdsDSLinesPARENT_MLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDSLinesPARENT_MLL_OBJECT_CODE: TAbmesFloatField;
    cdsDSLinesAPPROVE_CYCLE_NO: TAbmesFloatField;
    cdsDSLinesqryDSXModelModel: TDataSetField;
    cdsDSLinesLINE_IDENTIFIER: TAbmesWideStringField;
    cdsDSLinesPARENT_LINE_IDENTIFIER: TAbmesWideStringField;
    cdsDSLinesFORK_NO: TAbmesFloatField;
    cdsDSModelHAS_MOVEMENTS: TAbmesFloatField;
    cdsDataMODEL_IDENTIFIER: TAbmesWideStringField;
    cdsDSLines_MODEL_IDENTIFIER: TAbmesWideStringField;
    cdsDataANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCLOSE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataLIMITING_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataOWNER_EMPLOYEE_CODE: TAbmesFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actModelExecute(Sender: TObject);
    procedure cdsDSLinesCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsDSModelCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetModelNameFormat: string; override;
    function ApproveCycleNoField: TField; override;
    function GetAllowSpecUpdate: Boolean; override;
    function LineHasApprovedDocItem: Boolean; override;
    function LineIdentifier: string; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function CountApproveCycles: Boolean; override;
    function ModelIdentifier: string; override;
    function ForkNo: Integer; override;
    function GetRecordReadOnly: Boolean; override;
    procedure RefreshLinesTree; override;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient; AMlObjectBranchCode, AMlObjectCode: Integer; AEditMode: TEditMode = emEdit); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient; AMlObjectBranchCode, AMlObjectCode: Integer; AEditMode: TEditMode = emEdit): Boolean;
  end;

implementation

uses
  dMain, fXModel, uUtils, fXModelUnapprove, uDocUtils,
  rXModelDocStatusLines, rXModelDocStatusModel, uUserActivityConsts,
  uTreeListUtils;

{$R *.dfm}

resourcestring
  SModelNameFormat = 'МОДЕл %s %s';

{ TfmXModelDocStatus }

procedure TfmXModelDocStatus.SetDataParams(AdmDocClient: TdmDocClient;
  AMlObjectBranchCode, AMlObjectCode: Integer; AEditMode: TEditMode);
begin
  inherited SetDataParams(AdmDocClient, nil, AEditMode);
  cdsData.Params.ParamByName('ML_OBJECT_BRANCH_CODE').AsInteger:= AMlObjectBranchCode;
  cdsData.Params.ParamByName('ML_OBJECT_CODE').AsInteger:= AMlObjectCode;
end;

class function TfmXModelDocStatus.ShowForm(AdmDocClient: TdmDocClient;
  AMlObjectBranchCode, AMlObjectCode: Integer; AEditMode: TEditMode): Boolean;
var
  f: TfmXModelDocStatus;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, AMlObjectBranchCode, AMlObjectCode, AEditMode);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmXModelDocStatus.OpenDataSets;
begin
  inherited;
  cdsDSLines.Open;
  cdsDSModel.Open;
end;

procedure TfmXModelDocStatus.RefreshLinesTree;
begin
  grdLines.ConvertToTreeList('LINE_IDENTIFIER', 'PARENT_LINE_IDENTIFIER');
end;

procedure TfmXModelDocStatus.CloseDataSets;
begin
  cdsDSModel.Close;
  cdsDSLines.Close;
  inherited;
end;

function TfmXModelDocStatus.GetModelNameFormat: string;
begin
  Result:= SModelNameFormat;
end;

procedure TfmXModelDocStatus.actModelExecute(Sender: TObject);
begin
  inherited;
  TfmXModel.ShowForm(nil, cdsData, emReadOnly, True, False, False, 0, 0, nil, nil,
    cdsDSLinesMLL_OBJECT_BRANCH_CODE.AsInteger,
    cdsDSLinesMLL_OBJECT_CODE.AsInteger);
end;

procedure TfmXModelDocStatus.cdsDSLinesCalcFields(DataSet: TDataSet);
begin
  inherited;

  cdsDSLines_SHOW_NAME.AsString:=
    Format('%s/%d - %s', [cdsDSLinesNO_AS_TEXT.AsString,
      cdsDSLinesFORK_NO.AsInteger, cdsDSLinesDETAIL_NAME.AsString]);

  cdsDSLines_MODEL_IDENTIFIER.Assign(cdsDataMODEL_IDENTIFIER);
end;

function TfmXModelDocStatus.ApproveCycleNoField: TField;
begin
  Result:= cdsDSLinesAPPROVE_CYCLE_NO;
end;

function TfmXModelDocStatus.GetAllowSpecUpdate: Boolean;
begin
  Result:= False;
end;

function TfmXModelDocStatus.LineHasApprovedDocItem: Boolean;
begin
  Result:= (VarToInt(cdsDSModel_TOTAL_APPROVED_DI_COUNT.AsVariant) > 0);
end;

procedure TfmXModelDocStatus.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    inherited;
  except
    frLineDoc.FormCloseFailed;
    frModelDoc.FormCloseFailed;
    raise;
  end;
end;

procedure TfmXModelDocStatus.FormCreate(Sender: TObject);
begin
  inherited;
  UnapproveFormClass:= TfmXModelUnapprove;
  LinesReportClass:= TrptXModelDocStatusLines;
  ModelReportClass:= TrptXModelDocStatusModel;
end;

function TfmXModelDocStatus.LineIdentifier: string;
begin
  Result:= cdsDSLinesNO_AS_FORMATED_TEXT.AsString + '/' + cdsDSLinesFORK_NO.AsString;
end;

procedure TfmXModelDocStatus.actFormUpdate(Sender: TObject);
begin
  inherited;

  case cdsDSModelITEM_TYPE_CODE.AsInteger of
    itStage: frModelDoc.DocOwnerType:= dotRealStage;
    itOperation: frModelDoc.DocOwnerType:= dotRealOperation;
  else
    frModelDoc.DocOwnerType:= dotNone;
  end;
end;

procedure TfmXModelDocStatus.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frModelDoc) and
     (cdsDSModelITEM_TYPE_CODE.AsInteger <> itModel) and
     cdsDSModelHAS_MOVEMENTS.AsBoolean then
    AFrame.ReadOnly:= True
  else
    inherited;
end;

procedure TfmXModelDocStatus.cdsDSModelCalcFields(DataSet: TDataSet);
begin
  inherited;

  if (cdsDSModelITEM_TYPE_CODE.AsInteger <> itModel) and
     cdsDSModelHAS_MOVEMENTS.AsBoolean then
    cdsDSModel_IMAGE_INDEX.AsInteger:= cdsDSModel_IMAGE_INDEX.AsInteger + 4;
end;

function TfmXModelDocStatus.CountApproveCycles: Boolean;
begin
  Result:= False;
end;

function TfmXModelDocStatus.ModelIdentifier: string;
begin
  Result:= '';
end;

function TfmXModelDocStatus.ForkNo: Integer;
begin
  Result:= cdsDSLinesFORK_NO.AsInteger;
end;

function TfmXModelDocStatus.GetRecordReadOnly: Boolean;
begin
  Result:=
    (inherited GetRecordReadOnly) or
    not (cdsDataANNUL_EMPLOYEE_CODE.IsNull and
         cdsDataCLOSE_EMPLOYEE_CODE.IsNull and
         (cdsDataLIMITING_EMPLOYEE_CODE.IsNull or
          LoginContext.HasUserActivity(uaEditLimitingXModel)) and
         ((cdsDataOWNER_EMPLOYEE_CODE.AsInteger = LoginContext.UserCode) or
          LoginContext.HasUserActivity(uaEditForeignXModel)));
end;

end.
