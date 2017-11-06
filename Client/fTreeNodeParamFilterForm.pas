unit fTreeNodeParamFilterForm;
                                            
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fBevelFilterForm, Db, DBClient, ImgList, ActnList, StdCtrls, Buttons,
  ExtCtrls, Mask, JvToolEdit, GridsEh, DBCtrls,
  ColorNavigator, uClientTypes, uProducts,
  AbmesClientDataSet, fBaseFrame, fDBFrame, fFieldEditFrame,
  DBGridEh, AbmesDBGrid, AbmesFields, Menus,
  JvButtons, uTreeNodeParams, dDocClient, JvDBLookup, JvComponent,
  JvCaptionButton, JvExControls, JvComponentBase, DBGridEhGrouping, ComCtrls,
  ToolWin, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh,
  System.Actions;

type                                           
  TTreeNodeParamFilterForm = class(TBevelFilterForm)
    cdsTreeNodeParams: TAbmesClientDataSet;
    dsTreeNodeParams: TDataSource;
    cdsTreeNodeParams_SHOW_VALUE: TAbmesWideStringField;
    cdsTreeNodeParamsVALUE_TYPE: TAbmesFloatField;
    cdsTreeNodeParamsNOM_CODE: TAbmesFloatField;
    cdsTreeNodeParamsNOM_NAME: TAbmesWideStringField;
    cdsTreeNodeParamsVALUE_NOM_CODE: TAbmesFloatField;
    cdsTreeNodeParamsVALUE_NOM_ITEM_CODE: TAbmesFloatField;
    cdsTreeNodeParamsVALUE_NOM_ITEM_NAME: TAbmesWideStringField;
    cdsTreeNodeParamsVALUE_FLOAT: TAbmesFloatField;
    cdsTreeNodeParamsVALUE_STRING: TAbmesWideStringField;
    cdsTreeNodeParamsIS_READ_ONLY: TAbmesFloatField;
    actEditProductParam: TAction;
    cdsTreeNodeParamsVALUE_FLOAT_MIN: TAbmesFloatField;
    cdsTreeNodeParamsVALUE_FLOAT_MAX: TAbmesFloatField;
    pnlTreeNodeParamsGrid: TPanel;
    pnlTreeNodeParamsNavigator: TPanel;
    lProductParams: TLabel;
    navTreeNodeParams: TDBColorNavigator;
    grdTreeNodeParams: TAbmesDBGrid;
    cdsTreeNodeParamsNODE_PARAM_CODE: TAbmesFloatField;
    cdsTreeNodeParamsNODE_PARAM_NAME: TAbmesWideStringField;
    cdsTreeNodeParamsNODE_PARAM_ORDER_NO: TAbmesFloatField;
    btnClear: TBitBtn;
    actClear: TAction;
    cdsTreeNodeParamsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsTreeNodeParamsDOC_CODE: TAbmesFloatField;
    cdsTreeNodeParamsHAS_DOC_ITEMS: TAbmesFloatField;
    cdsTreeNodeParamsNOM_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsTreeNodeParamsNOM_DOC_CODE: TAbmesFloatField;
    cdsTreeNodeParamsNOM_HAS_DOC_ITEMS: TAbmesFloatField;
    cdsTreeNodeParamsVALUE_NOM_ITEM_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsTreeNodeParamsVALUE_NOM_ITEM_DOC_CODE: TAbmesFloatField;
    cdsTreeNodeParamsVALUE_NOM_ITEM_HAS_DOC_ITEMS: TAbmesFloatField;
    tlbDocs: TToolBar;
    sepDocs: TToolButton;
    btnDocs: TToolButton;
    actDocs: TAction;
    cdsTreeNodeParamsIS_DEFINED: TAbmesFloatField;
    procedure cdsTreeNodeParamsBeforeOpen(DataSet: TDataSet);
    procedure cdsTreeNodeParamsAfterOpen(DataSet: TDataSet);
    procedure cdsTreeNodeParamsCalcFields(DataSet: TDataSet);
    procedure actEditProductParamUpdate(Sender: TObject);
    procedure actEditProductParamExecute(Sender: TObject);
    procedure navTreeNodeParamsBeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure grdTreeNodeParamsDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsTreeNodeParamsBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure actClearUpdate(Sender: TObject);
    procedure actClearExecute(Sender: TObject);
    procedure actDocsUpdate(Sender: TObject);
    procedure actDocsExecute(Sender: TObject);
    procedure grdTreeNodeParamsGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
  private
    FTreeNodeParams: TTreeNodeParams;
    FRefilter: Boolean;
    FSavePoint: Integer;
    FFilterParamCount: Integer;
    procedure CalcFilterParamCount;
  protected
    function TreeNodeCode: Integer; virtual; abstract;
    procedure RefreshTreeNodeParams(ClearParams: Boolean = False);
    function GetClearEnabled: Boolean; virtual;
    property Refilter: Boolean read FRefilter;
  public
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil; AEditMode: TEditMode = emEdit;
      ATreeNodeParams: TTreeNodeParams = nil): Boolean;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil; AEditMode: TEditMode = emEdit;
      ATreeNodeParams: TTreeNodeParams = nil); reintroduce; virtual;
    procedure Initialize; override;
    procedure Finalize; override;
  end;

implementation

uses
  dMain, fProductFilterFloatParam, fProductFilterStringParam,
  fProductParamNomValue, uUtils, uClientUtils, uDocUtils, fEditForm;

{$R *.DFM}

{ TTreeNodeParamFilterForm }

class function TTreeNodeParamFilterForm.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ATreeNodeParams: TTreeNodeParams): Boolean;
var
  f: TTreeNodeParamFilterForm;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ATreeNodeParams);
    f.InternalShowForm;
    Result:= f.Refilter or f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TTreeNodeParamFilterForm.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ATreeNodeParams: TTreeNodeParams);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode);
  FTreeNodeParams:= ATreeNodeParams;
end;

procedure TTreeNodeParamFilterForm.CalcFilterParamCount;
begin
  FFilterParamCount:= 0;
  cdsTreeNodeParams.TempDisableControls /
    cdsTreeNodeParams.PreserveBookmark /
      cdsTreeNodeParams.ForEach /
        procedure begin
          if (cdsTreeNodeParamsIS_READ_ONLY.AsInteger = 0) and
             (cdsTreeNodeParams_SHOW_VALUE.AsString <> '') then
            Inc(FFilterParamCount);
        end;
end;

procedure TTreeNodeParamFilterForm.cdsTreeNodeParamsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsTreeNodeParams.Params[0].Value:= TreeNodeCode;
end;

procedure TTreeNodeParamFilterForm.cdsTreeNodeParamsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Assert(Assigned(FTreeNodeParams), 'FTreeNodeParams must be assigned');
  FTreeNodeParams.AssignToDataSet(DataSet);
  CalcFilterParamCount;
end;

procedure TTreeNodeParamFilterForm.RefreshTreeNodeParams(ClearParams: Boolean = False);
begin
  if ClearParams then
    FTreeNodeParams.Clear;
    
  with cdsTreeNodeParams do
    begin
      DisableControls;
      try
        Close;
        if (TreeNodeCode > 0) then
          Open;
      finally
        EnableControls;
      end;
    end;
end;

procedure TTreeNodeParamFilterForm.cdsTreeNodeParamsCalcFields(DataSet: TDataSet);
var
  s: string;
begin
  inherited;

  case cdsTreeNodeParamsVALUE_TYPE.AsInteger of
    ptNom:
      s:= cdsTreeNodeParamsVALUE_NOM_ITEM_NAME.AsString;

    ptFloat:
      if (cdsTreeNodeParamsIS_READ_ONLY.AsInteger <> 0) then
        s:= cdsTreeNodeParamsVALUE_FLOAT.DisplayText
      else
        begin
          if cdsTreeNodeParamsVALUE_FLOAT_MIN.IsNull and
             cdsTreeNodeParamsVALUE_FLOAT_MAX.IsNull then
            s:= ''
          else
            begin
              if cdsTreeNodeParamsVALUE_FLOAT_MIN.IsNull then
                s:= '<= ' + cdsTreeNodeParamsVALUE_FLOAT_MAX.DisplayText
              else
                begin
                  if cdsTreeNodeParamsVALUE_FLOAT_MAX.IsNull then
                    s:= '>= ' + cdsTreeNodeParamsVALUE_FLOAT_MIN.DisplayText
                  else
                    s:= cdsTreeNodeParamsVALUE_FLOAT_MIN.DisplayText + ' - ' +
                        cdsTreeNodeParamsVALUE_FLOAT_MAX.DisplayText;
                end;
            end;
        end;

    ptString:
      s:= cdsTreeNodeParamsVALUE_STRING.AsString;
  else
    s:= '<Unsupported value type>';
  end;   { case }

  cdsTreeNodeParams_SHOW_VALUE.AsString:= s;
end;

procedure TTreeNodeParamFilterForm.actEditProductParamUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not (cdsTreeNodeParams.BOF and cdsTreeNodeParams.EOF) and
    (cdsTreeNodeParamsIS_READ_ONLY.Value = 0);
end;

procedure TTreeNodeParamFilterForm.actClearExecute(Sender: TObject);
begin
  inherited;

  if ShiftIsPressed then
    ModalResult:= mrOK;

  cdsTreeNodeParams.TempDisableControls /
    cdsTreeNodeParams.PreserveBookmark /
      cdsTreeNodeParams.ForEach /
        procedure begin
          if (cdsTreeNodeParamsIS_READ_ONLY.AsInteger = 0) and
             (cdsTreeNodeParams_SHOW_VALUE.AsString <> '') then
            cdsTreeNodeParams.SafeEdit /
              procedure begin
                cdsTreeNodeParamsVALUE_NOM_CODE.Clear;
                cdsTreeNodeParamsVALUE_NOM_ITEM_CODE.Clear;
                cdsTreeNodeParamsVALUE_NOM_ITEM_NAME.Clear;
                cdsTreeNodeParamsVALUE_FLOAT.Clear;
                cdsTreeNodeParamsVALUE_FLOAT_MIN.Clear;
                cdsTreeNodeParamsVALUE_FLOAT_MAX.Clear;
                cdsTreeNodeParamsVALUE_STRING.Clear;
              end;
        end;

  FRefilter:= True;
end;

procedure TTreeNodeParamFilterForm.actClearUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetClearEnabled;
end;

procedure TTreeNodeParamFilterForm.actDocsExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, (Sender as TAction).ActionComponent as TControl,
    dotProductParam, cdsTreeNodeParams);
end;

procedure TTreeNodeParamFilterForm.actDocsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (not cdsTreeNodeParams.IsEmpty);
  (Sender as TAction).ImageIndex:= cdsTreeNodeParamsHAS_DOC_ITEMS.AsInteger;
end;

procedure TTreeNodeParamFilterForm.actEditProductParamExecute(Sender: TObject);
var
  ShowResult: Boolean;
begin
  inherited;

  case cdsTreeNodeParamsVALUE_TYPE.AsInteger of
    ptNom:
      ShowResult:= TfmProductParamNomValue.ShowForm(dmDocClient, cdsTreeNodeParams);
    ptFloat:
      ShowResult:= TfmProductFilterFloatParam.ShowForm(dmDocClient, cdsTreeNodeParams);
    ptString:
      ShowResult:= TfmProductFilterStringParam.ShowForm(dmDocClient, cdsTreeNodeParams);
  else
    raise Exception.CreateFmt(SUnsupportedTreeNodeParamType,
            [cdsTreeNodeParamsVALUE_TYPE.Value]);
  end;   { case }

  FRefilter:= FRefilter or ShowResult;
  CalcFilterParamCount;
end;

procedure TTreeNodeParamFilterForm.navTreeNodeParamsBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
  if (Button = nbEdit) then
    begin
      actEditProductParam.Execute;
      Abort;
    end;
end;

procedure TTreeNodeParamFilterForm.grdTreeNodeParamsDblClick(Sender: TObject);
begin
  inherited;
  actEditProductParam.Execute;
end;                                                                            

procedure TTreeNodeParamFilterForm.grdTreeNodeParamsGetCellParams(
  Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if not cdsTreeNodeParamsIS_DEFINED.AsBoolean then
    AFont.Color:= clGray;
end;

procedure TTreeNodeParamFilterForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  OriginalModalResult: Integer;
begin
  OriginalModalResult:= ModalResult;

  inherited;

  FRefilter:=
    (OriginalModalResult = mrOK) and
    ( FRefilter or
      ( Assigned(dsData.DataSet) and
        (dsData.DataSet is TCustomClientDataSet) and
        (TCustomClientDataSet(dsData.DataSet).SavePoint <> FSavePoint) ) );

  if FRefilter then
    FTreeNodeParams.AssignFromDataSet(cdsTreeNodeParams);
end;

procedure TTreeNodeParamFilterForm.FormCreate(Sender: TObject);
begin
  inherited;
  MaximizeStyle:= msVertical;
end;

procedure TTreeNodeParamFilterForm.cdsTreeNodeParamsBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if cdsTreeNodeParamsVALUE_NOM_ITEM_CODE.IsNull then
    cdsTreeNodeParamsVALUE_NOM_CODE.Clear
  else
    cdsTreeNodeParamsVALUE_NOM_CODE.Assign(cdsTreeNodeParamsNOM_CODE);
end;

procedure TTreeNodeParamFilterForm.Initialize;
begin
  inherited;
  if Assigned(dsData.DataSet) and (dsData.DataSet is TCustomClientDataSet) then
    FSavePoint:= TCustomClientDataSet(dsData.DataSet).SavePoint
  else
    FSavePoint:= 0;
end;

procedure TTreeNodeParamFilterForm.Finalize;
begin
  inherited;
  cdsTreeNodeParams.Close;
end;

procedure TTreeNodeParamFilterForm.FormShow(Sender: TObject);
begin
  inherited;
  RefreshTreeNodeParams;
end;

function TTreeNodeParamFilterForm.GetClearEnabled: Boolean;
begin
  Result:= (FFilterParamCount > 0);
end;

end.
