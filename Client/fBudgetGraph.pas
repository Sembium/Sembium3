unit fBudgetGraph;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, Menus, JvComponentBase, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh,
  AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls,
  ExtCtrls, TeeProcs, TeEngine, Chart, DBChart, Series, dDocClient,
  uClientTypes, fDateIntervalFrame, fBaseFrame, fDBFrame, fFieldEditFrame,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, fProductFieldEditFrame,
  uBudgetClientUtils, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, VclTee.TeeGDIPlus, System.Actions, EhLibVCL, DBAxisGridsEh;

type
  TfmBudgetGraph = class(TGridForm)
    pnlParams: TPanel;
    pnlChart: TPanel;
    chrBudget: TDBChart;
    serPlanPrice: TBarSeries;
    serRealPrice: TBarSeries;
    serBOIOPlanPrice: TBarSeries;
    serAvgPlanPrice: TLineSeries;
    serAvgBOIOPlanPrice: TLineSeries;
    serAvgRealPrice: TLineSeries;
    cdsGridDataDATE_UNIT_NO: TAbmesFloatField;
    cdsGridDataPLAN_PRICE: TAbmesFloatField;
    cdsGridDataBOIO_PLAN_PRICE: TAbmesFloatField;
    cdsGridDataREAL_PRICE: TAbmesFloatField;
    cdsGridDataAVG_PLAN_PRICE: TAbmesFloatField;
    cdsGridDataAVG_BOIO_PLAN_PRICE: TAbmesFloatField;
    cdsGridDataAVG_REAL_PRICE: TAbmesFloatField;
    frDept: TfrDeptFieldEditFrame;
    gbDateInterval: TGroupBox;
    frDateInterval: TfrDateIntervalFrame;
    frBudgetProduct: TfrProductFieldEditFrame;
    cdsGridDataPERIOD_LABEL: TAbmesWideStringField;
    btnPrintChart: TSpeedButton;
    actPrintChart: TAction;
    actTogglePeriodLabelsExtraInfo: TAction;
    cdsGridDataPERIOD_LABEL_EX: TAbmesWideStringField;
    btnTogglePeriodLabelsExtraInfo: TSpeedButton;
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure actPrintChartExecute(Sender: TObject);
    procedure actTogglePeriodLabelsExtraInfoExecute(Sender: TObject);
    procedure chrBudgetGetAxisLabel(Sender: TChartAxis; Series: TChartSeries;
      ValueIndex: Integer; var LabelText: string);
    procedure actTogglePeriodLabelsExtraInfoUpdate(Sender: TObject);
  private
    FBudgetDataSet: TDataSet;
    FParamsDataSet: TDataSet;
    FBudgetMode: TBudgetMode;
    FMsgParams: TStrings;
    FOriginalFormCaption: string;
  protected
    function GetOriginalFormCaption: string; override;
  public
    procedure Initialize; override;
    class function ShowForm(ABudgetDataSet: TDataSet; AParamsDataSet: TDataSet; AdmDocClient: TdmDocClient): Boolean;
    procedure SetDataParams(ABudgetDataSet: TDataSet; AParamsDataSet: TDataSet; AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True); reintroduce; virtual;
  end;

implementation

uses
  uUtils, uProducts, uClientUtils, uGraphUtils, uMessageDecodingUtils;

resourcestring
  SBudgetGraphCaption = 'ВИМ на %BudgetModeNounPlural% в Среда';

{$R *.dfm}

{ TfmBudgetGraph }

procedure TfmBudgetGraph.FormCreate(Sender: TObject);
begin
  inherited;
  frDept.ShowAllWhenEmpty:= True;
  frBudgetProduct.VIMButtonVisible:= False;
  frBudgetProduct.ProductClass:= pcBudget;
  frBudgetProduct.FieldNames:= 'BUDGET_PRODUCT_CODE';
end;

function TfmBudgetGraph.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmBudgetGraph.Initialize;
begin
  frDept.SetDataSet(FParamsDataSet);
  frDateInterval.SetDataSet(FParamsDataSet);
  frBudgetProduct.SetDataSet(FParamsDataSet);

  inherited;

  FMsgParams:= CreateCommonMsgParams(LoginContext, FBudgetMode);
  try
    RecursivelyFormatCaptions(Self, FMsgParams);
    FOriginalFormCaption:= FormatMessage(SBudgetGraphCaption, FMsgParams);
    with chrBudget.LeftAxis.Title do
      Caption:= FormatMessage(Caption, FMsgParams);
  finally
    FreeAndNil(FMsgParams);
  end;  { try }
end;

procedure TfmBudgetGraph.SetDataParams(ABudgetDataSet: TDataSet; AParamsDataSet: TDataSet;
  AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
  FBudgetDataSet:= ABudgetDataSet;
  FParamsDataSet:= AParamsDataSet;
  FBudgetMode:= IntToBudgetMode(FParamsDataSet.FieldByName('BUDGET_MODE_CODE').AsInteger);
end;

class function TfmBudgetGraph.ShowForm(ABudgetDataSet, AParamsDataSet: TDataSet; AdmDocClient: TdmDocClient): Boolean;
var
  f: TfmBudgetGraph;
begin
  f:= CreateEx;
  try
    f.SetDataParams(ABudgetDataSet, AParamsDataSet, AdmDocClient, nil, emReadOnly);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmBudgetGraph.actPrintChartExecute(Sender: TObject);
var
  s: TStringList;
begin
  inherited;
  s:= TStringList.Create;
  try
    s.Add(Caption);
    s.Add(frDept.gbTreeNode.Caption + ': ' + frDept.cdsTreeNodeNODE_NAME.DisplayText + '    ' + frDept.cdsTreeNodeNODE_NO.DisplayText);
    s.Add(frBudgetProduct.gbTreeNode.Caption + ': ' + frBudgetProduct.cdsTreeNodeNODE_NAME.DisplayText + '    ' + frBudgetProduct.cdsTreeNodeNODE_NO.DisplayText);
    s.Add(gbDateInterval.Caption + ': ' + frDateInterval.cdsDates_BEGIN_DATE.DisplayText);
    PrintChart(chrBudget, s);
  finally
    FreeAndNil(s);
  end;  { try }
end;

procedure TfmBudgetGraph.actTogglePeriodLabelsExtraInfoExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  chrBudget.RefreshData;
end;

procedure TfmBudgetGraph.actTogglePeriodLabelsExtraInfoUpdate(Sender: TObject);
begin
  inherited;
  btnTogglePeriodLabelsExtraInfo.Down:= (Sender as TAction).Checked;
end;

procedure TfmBudgetGraph.cdsGridDataAfterOpen(DataSet: TDataSet);
begin
  inherited;

  FBudgetDataSet.First;
  while not FBudgetDataSet.Eof do
    begin
      cdsGridData.Append;
      try
        cdsGridData.AssignFields(FBudgetDataSet);
        cdsGridData.Post;
      except
        cdsGridData.Cancel;
        raise;
      end;  { try }

      FBudgetDataSet.Next;
    end;  { while }

  chrBudget.RefreshData;
end;

procedure TfmBudgetGraph.chrBudgetGetAxisLabel(Sender: TChartAxis;
  Series: TChartSeries; ValueIndex: Integer; var LabelText: string);
var
  b: TBookmark;
begin
  inherited;
  if (Sender = chrBudget.BottomAxis) then
    begin
        b:= cdsGridData.Bookmark;
        try
          if (LabelText <> '') and
             cdsGridData.Locate('DATE_UNIT_NO', LabelText, []) then
            begin
              if actTogglePeriodLabelsExtraInfo.Checked then
                LabelText:= cdsGridDataPERIOD_LABEL_EX.AsString
              else
                LabelText:= cdsGridDataPERIOD_LABEL.AsString;
            end
          else
            LabelText:= ' ';
        finally
          cdsGridData.Bookmark:= b;
        end;  { try }
    end;  { if }
end;

end.
