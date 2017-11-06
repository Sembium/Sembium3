unit fDeptDetailFlowToolNeeds;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponentBase, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh,
  AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls,
  ExtCtrls, uClientTypes, dDocClient, uDeptDetailFlow, Menus, System.Actions;

type
  TToolNeedsMenuItem = class(TDynamicMenuItem);

type
  TToolNeedsAction = class(TDynamicAction)
  private
    FDataSet: TDataSet;
    FToolType: TToolType;
    FToolStructPartType: TStructPartType;
  protected
    procedure AssignTo(Dest: TPersistent); override;
  public
    property DataSet: TDataSet read FDataSet write FDataSet;
    property ToolType: TToolType read FToolType write FToolType;
    property ToolStructPartType: TStructPartType read FToolStructPartType write FToolStructPartType;
  end;

type
  TfmDeptDetailFlowToolNeeds = class(TGridForm)
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_NO: TAbmesFloatField;
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataCAPACITY_BUSY_HOURS: TAbmesFloatField;
    cdsGridDataOPERATION_COUNT: TAbmesFloatField;
    cdsGridDataMODEL_COUNT: TAbmesFloatField;
    cdsGridDataDETAIL_COUNT: TAbmesFloatField;
    actResultToolNeeds: TAction;
    btnResultToolNeeds: TBitBtn;
    cdsGridDataTOOL_DETAIL_CODE: TAbmesFloatField;
    cdsGridDataTOOL_MATERIAL_CODE: TAbmesFloatField;
    actSpecDocStatus: TAction;
    sepBeforeDoc: TToolButton;
    lblDoc: TLabel;
    btnDoc: TSpeedButton;
    btnSpecDocStatus: TToolButton;
    alDoc: TActionList;
    actDoc: TAction;
    cdsGridDataPRODUCT_HAS_DOC: TAbmesFloatField;
    procedure cdsGridDataBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure actResultToolNeedsExecute(Sender: TObject);
    procedure actResultToolNeedsUpdate(Sender: TObject);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure actSpecDocStatusExecute(Sender: TObject);
    procedure actSpecDocStatusUpdate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actDocExecute(Sender: TObject);
    procedure actDocUpdate(Sender: TObject);
  private
    FToolType: TToolType;
    FToolStructPartType: TStructPartType;
    FOriginalFormCaption: string;
  protected
    function GetOriginalFormCaption: string; override;
  public
    class function ShowForm(AdmDocClient: TdmDocClient; ADataSet: TDataSet;
      AEditMode: TEditMode; AParams: TParams; AToolType: TToolType; AToolStructPartType: TStructPartType): Boolean;
    procedure SetDataParams(AdmDocClient: TdmDocClient; ADataSet: TDataSet;
      AEditMode: TEditMode; AParams: TParams; AToolType: TToolType; AToolStructPartType: TStructPartType); reintroduce; virtual;
    procedure Initialize; override;
  end;

function ToolStructPartsNeedName(AToolType: TToolType; AToolStructPartType: TStructPartType): string;
procedure CreateToolNeedsPopupMenuItems(AOwner: TComponent; AActionList: TCustomActionList;
  APopupMenu: TPopupMenu; ADataSet: TDataSet; AToolNeedsActionExecute: TNotifyEvent);

implementation

uses
  dMain, fSpecDocStatus, uUtils, uLoginContext, uClientUtils;

{$R *.dfm}

resourcestring
  SProgramTool = 'ПОЕ';
  SSpecificTool = 'КОпР';
  STypicalTool = 'КОпН';

  SResultIn = '';
  SDetailIn = 'КСЧ от ';
  SMaterialIn = 'НСЧ от ';

  SResultsIn = '';
  SDetailsIn = 'КСЧ Структурно създавани и Преобразувани от ';
  SMaterialsIn = 'НСЧ от ';

const
  ToolTypeNames: array[TToolType] of string = (SProgramTool, SSpecificTool, STypicalTool);
  StructPartInTexts: array[TStructPartType] of string = (SResultIn, SDetailIn, SMaterialIn);
  StructPartsInTexts: array[TStructPartType] of string = (SResultsIn, SDetailsIn, SMaterialsIn);

{ Routines }

function ToolStructPartNeedName(AToolType: TToolType; AToolStructPartType: TStructPartType): string;
begin
  Result:= StructPartInTexts[AToolStructPartType] + ToolTypeNames[AToolType];
end;

function ToolStructPartsNeedName(AToolType: TToolType; AToolStructPartType: TStructPartType): string;
begin
  Result:= StructPartsInTexts[AToolStructPartType] + ToolTypeNames[AToolType];
end;

function CreateCommonMsgParams(
  ALoginContext: TLoginContext;
  AToolType: TToolType;
  AToolStructPartType: TStructPartType): TStrings;
begin
  Result:= TStringList.Create;
  try
    Result.Clear;
    Result.ValuesEx['ToolType']:= ToolTypeNames[AToolType];
    Result.ValuesEx['StructPartInTool']:= ToolStructPartNeedName(AToolType, AToolStructPartType);
    Result.ValuesEx['StructPartsInTool']:= ToolStructPartsNeedName(AToolType, AToolStructPartType);
  except
    FreeAndNil(Result);
    raise;
  end;  { try }
end;

procedure CreateDelimiterMenuItem(AOwner: TComponent; APopupMenu: TPopupMenu);
var
  mi: TMenuItem;
begin
  mi:= TMenuItem.Create(AOwner);
  try
    mi.Caption:= '-';
    APopupMenu.Items.Add(mi);
  except
    FreeAndNil(mi);
    raise;
  end;   { try }
end;

procedure CreateToolNeedsMenuItem(AOwner: TComponent; AActionList: TCustomActionList;
  APopupMenu: TPopupMenu; ADataSet: TDataSet; AToolType: TToolType;
  AToolStructPartType: TStructPartType; AToolNeedsActionExecute: TNotifyEvent);
var
  act: TToolNeedsAction;
  mi: TToolNeedsMenuItem;
begin
  act:= TToolNeedsAction.Create(AOwner);
  try
    act.Name:= 'actToolNeeds_' + APopupMenu.Name + '_' + IntToStr(ToolTypeToInt(AToolType)) + '_' + IntToStr(StructPartTypeToInt(AToolStructPartType));
    act.Caption:= ToolStructPartsNeedName(AToolType, AToolStructPartType) + '...';
    act.Hint:= ToolStructPartsNeedName(AToolType, AToolStructPartType);
    act.DataSet:= ADataSet;
    act.ToolType:= AToolType;
    act.ToolStructPartType:= AToolStructPartType;
    act.OnExecute:= AToolNeedsActionExecute;
    act.ActionList:= AActionList;

    mi:= TToolNeedsMenuItem.Create(AOwner);
    try
      mi.Action:= act;
      APopupMenu.Items.Add(mi);
    except
      FreeAndNil(mi);
      raise;
    end;   { try }
  except
    FreeAndNil(act);
    raise;
  end;  { try }
end;

procedure CreateToolNeedsPopupMenuItems(AOwner: TComponent; AActionList: TCustomActionList;
  APopupMenu: TPopupMenu; ADataSet: TDataSet; AToolNeedsActionExecute: TNotifyEvent);
var
  ToolType: TToolType;
  StructPartType: TStructPartType;
begin
  for ToolType:= Low(TToolType) to High(TToolType) do
    begin
      for StructPartType:= Low(TStructPartType) to High(TStructPartType) do
        CreateToolNeedsMenuItem(AOwner, AActionList, APopupMenu, ADataSet, ToolType, StructPartType, AToolNeedsActionExecute);

      CreateDelimiterMenuItem(AOwner, APopupMenu);
    end;  { for }
end;

{ TToolNeedsAction }

procedure TToolNeedsAction.AssignTo(Dest: TPersistent);
begin
  inherited AssignTo(Dest);
  if (Dest is TToolNeedsAction) then
    with TToolNeedsAction(Dest) do
      begin
        FDataSet:= Self.FDataSet;
        FToolType:= Self.FToolType;
        FToolStructPartType:= Self.FToolStructPartType;
      end;  { with, if }
end;

{ TfmDeptDetailFlowToolNeeds }

procedure TfmDeptDetailFlowToolNeeds.actDocExecute(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dmDocClient));
  dmDocClient.OpenProductDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    cdsGridDataPRODUCT_CODE.AsInteger);
end;

procedure TfmDeptDetailFlowToolNeeds.actDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
  (Sender as TAction).ImageIndex:= cdsGridDataPRODUCT_HAS_DOC.AsInteger;
end;

procedure TfmDeptDetailFlowToolNeeds.actFormUpdate(Sender: TObject);
begin
  inherited;
  btnDoc.Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmDeptDetailFlowToolNeeds.actResultToolNeedsExecute(Sender: TObject);
begin
  inherited;
  TfmDeptDetailFlowToolNeeds.ShowForm(
    dmDocClient, cdsGridData, EditMode, cdsGridData.Params, FToolType, sptResult);
end;

procedure TfmDeptDetailFlowToolNeeds.actResultToolNeedsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Visible:= (FToolStructPartType <> sptResult);
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmDeptDetailFlowToolNeeds.actSpecDocStatusExecute(Sender: TObject);
begin
  inherited;
  TfmSpecDocStatus.ShowForm(dmDocClient,
    cdsGridDataPRODUCT_CODE.AsInteger, emReadOnly);
end;

procedure TfmDeptDetailFlowToolNeeds.actSpecDocStatusUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Visible:= (FToolStructPartType = sptResult);
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmDeptDetailFlowToolNeeds.cdsGridDataBeforeGetRecords(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= PackageParams((Sender as TClientDataSet).Params);
end;

procedure TfmDeptDetailFlowToolNeeds.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  if (FToolStructPartType = sptDetail) then
    cdsGridDataTOOL_DETAIL_CODE.AsVariant:= cdsGridDataPRODUCT_CODE.AsVariant
  else
    cdsGridDataTOOL_DETAIL_CODE.Clear;

  if (FToolStructPartType = sptMaterial) then
    cdsGridDataTOOL_MATERIAL_CODE.AsVariant:= cdsGridDataPRODUCT_CODE.AsVariant
  else
    cdsGridDataTOOL_MATERIAL_CODE.Clear;
end;

function TfmDeptDetailFlowToolNeeds.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;;
end;

procedure TfmDeptDetailFlowToolNeeds.Initialize;
var
  MsgParams: TStrings;
begin
  inherited Initialize;

  MsgParams:= CreateCommonMsgParams(LoginContext, FToolType, FToolStructPartType);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;
end;

procedure TfmDeptDetailFlowToolNeeds.SetDataParams(AdmDocClient: TdmDocClient; ADataSet: TDataSet;
  AEditMode: TEditMode; AParams: TParams; AToolType: TToolType; AToolStructPartType: TStructPartType);
begin
  if Assigned(AParams) then
    cdsGridData.Params.AssignValues(AParams);

  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode);

  FToolType:= AToolType;
  FToolStructPartType:= AToolStructPartType;

  cdsGridData.Params.ParamByName('TOOL_TYPE').AsInteger:= ToolTypeToInt(FToolType);
  cdsGridData.Params.ParamByName('TOOL_STRUCT_PART_TYPE').AsInteger:= StructPartTypeToInt(FToolStructPartType);
end;

class function TfmDeptDetailFlowToolNeeds.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; AParams: TParams;
  AToolType: TToolType; AToolStructPartType: TStructPartType): Boolean;
var
  f: TfmDeptDetailFlowToolNeeds;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, AParams, AToolType, AToolStructPartType);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

end.
