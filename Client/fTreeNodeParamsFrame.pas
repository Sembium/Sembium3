unit fTreeNodeParamsFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fDBFrame, Db, DBClient, AbmesClientDataSet, ImgList, ActnList,
  AbmesFields, GridsEh, DBGridEh, AbmesDBGrid, ExtCtrls, Buttons, ToolWin,
  ComCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, System.Actions,
  DynVarsEh, EhLibVCL, DBAxisGridsEh;

type
  TfrTreeNodeParams = class(TDBFrame)
    cdsParams: TAbmesClientDataSet;
    cdsParamsNODE_PARAM_CODE: TAbmesFloatField;
    cdsParamsNODE_PARAM_NAME: TAbmesWideStringField;
    cdsParamsNODE_PARAM_ORDER_NO: TAbmesFloatField;
    pnlCaption: TPanel;
    grdParams: TAbmesDBGrid;
    actCopyParamValue: TAction;
    cdsParamsPARAM_VALUE: TAbmesWideStringField;
    cdsParamsIS_DEFINED: TAbmesFloatField;
    actMaximize: TAction;
    tlbButtons: TToolBar;
    btnMaximize: TSpeedButton;
    btnCopyValue: TSpeedButton;
    cdsParamsNOM_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsParamsNOM_DOC_CODE: TAbmesFloatField;
    cdsParamsNOM_HAS_DOC_ITEMS: TAbmesFloatField;
    cdsParamsVALUE_NOM_ITEM_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsParamsVALUE_NOM_ITEM_DOC_CODE: TAbmesFloatField;
    cdsParamsVALUE_NOM_ITEM_HAS_DOC_ITEMS: TAbmesFloatField;
    tlbDocs: TToolBar;
    pnlNomDocsCaption: TPanel;
    btnNomDocs: TToolButton;
    pnlCaptionLeft: TPanel;
    sepNomDocs: TToolButton;
    sepValueNomItemDocs: TToolButton;
    pnlValueNomItemCaption: TPanel;
    btnValueNomItemDocs: TToolButton;
    actNomDocs: TAction;
    actValueNomItemDocs: TAction;
    pnlDocsLeftMargin: TPanel;
    cdsParamsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsParamsDOC_CODE: TAbmesFloatField;
    cdsParamsHAS_DOC_ITEMS: TAbmesFloatField;
    btnDocs: TToolButton;
    sepDocs: TToolButton;
    actDocs: TAction;
    cdsParamsVALUE_TYPE: TAbmesFloatField;
    cdsParamsIS_INHERITED: TAbmesFloatField;
    cdsParams_IS_NOT_DEFINED_COUNT: TAggregateField;
    actShowNotDefined: TAction;
    tlbShowNotDefined: TToolBar;
    btnShowNotDefined: TSpeedButton;
    pnlDocsCaption: TPanel;
    procedure FrameResize(Sender: TObject);
    procedure grdParamsDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure actCopyParamValueUpdate(Sender: TObject);
    procedure actCopyParamValueExecute(Sender: TObject);
    procedure grdParamsGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure actMaximizeExecute(Sender: TObject);
    procedure actNomDocsUpdate(Sender: TObject);
    procedure actNomDocsExecute(Sender: TObject);
    procedure actValueNomItemDocsUpdate(Sender: TObject);
    procedure actValueNomItemDocsExecute(Sender: TObject);
    procedure actDocsUpdate(Sender: TObject);
    procedure actDocsExecute(Sender: TObject);
    procedure actShowNotDefinedUpdate(Sender: TObject);
    procedure actShowNotDefinedExecute(Sender: TObject);
    procedure actMaximizeUpdate(Sender: TObject);
  private
    FCurrentNodeID: Integer;
    FResizebleColumnFieldNames: string;
    FNotDefinedParamCount: Integer;
    FMaximized: Boolean;
    FBeforeMaximizeHeight: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    procedure CloseDataSets; override;
    procedure ShowParamsFor(ANodeID: Integer; const ANodeName: string; Enforced: Boolean = False);
    procedure Initialize; override;

    property CurrentNodeID: Integer read FCurrentNodeID;
    property ResizebleColumnFieldNames: string read FResizebleColumnFieldNames write FResizebleColumnFieldNames;
  end;

implementation

uses
  uClientUtils, Clipbrd, dMain, uDocUtils, fEditForm, uClientTypes, fParamEdit,
  uUtils, uClientConsts, uScalingUtils;

{$R *.DFM}

resourcestring
  SCaptionFormat = ' Логически параметри на "%s"';

{ TfrTreeNodeParams }

procedure TfrTreeNodeParams.CloseDataSets;
begin
  inherited;
  cdsParams.Close;
end;

procedure TfrTreeNodeParams.ShowParamsFor(ANodeID: Integer;
  const ANodeName: string; Enforced: Boolean);
begin
  if (ANodeID = FCurrentNodeID) and not Enforced then Exit;

  cdsParams.TempDisableControls/
    procedure begin
      cdsParams.Close;
      cdsParams.Params.ParamByName('NODE_ID').AsInteger:= ANodeID;

      cdsParams.TempUnfilter/
        procedure begin
          cdsParams.Open;
          FNotDefinedParamCount:= cdsParams_IS_NOT_DEFINED_COUNT.AsVarInteger;
        end;
    end;

  FCurrentNodeID:= ANodeID;

  if (ANodeName = '') then
    pnlCaptionLeft.Caption:= ''
  else
    pnlCaptionLeft.Caption:= Format(SCaptionFormat, [StringReplace(ANodeName, '&', '&&', [rfReplaceAll])]);

  pnlCaptionLeft.Hint:= pnlCaption.Caption;
end;

procedure TfrTreeNodeParams.FrameResize(Sender: TObject);
begin
  inherited;
  ResizeGridColumns(grdParams, ResizebleColumnFieldNames);
end;

procedure TfrTreeNodeParams.Initialize;
begin
  inherited;
  ResizeGridColumns(grdParams, ResizebleColumnFieldNames);
end;

procedure TfrTreeNodeParams.grdParamsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  GridDrawColumnCell(Sender, Rect, DataCol, Column, State);
end;

procedure TfrTreeNodeParams.actCopyParamValueUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsParams.Active and
    not cdsParamsPARAM_VALUE.IsNull;
end;

procedure TfrTreeNodeParams.actDocsExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, (Sender as TAction).ActionComponent as TControl,
    dotProductParam, cdsParams);
end;

procedure TfrTreeNodeParams.actDocsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsParams.IsEmpty;
  (Sender as TAction).ImageIndex:= cdsParamsHAS_DOC_ITEMS.AsInteger;
end;

procedure TfrTreeNodeParams.actMaximizeExecute(Sender: TObject);
const
  RowHeight = 18;
begin
  inherited;

  if FMaximized then
    Height:= FBeforeMaximizeHeight
  else
    begin
      FBeforeMaximizeHeight:= Height;
      Height:= Height + ((ScalePixels(Constraints.MaxHeight) - Height) div ScalePixels(RowHeight)) * ScalePixels(RowHeight);
    end;

  FMaximized:= not FMaximized;
end;

procedure TfrTreeNodeParams.actMaximizeUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Caption:= IntToStr(Ord(FMaximized) + 1);
  (Sender as TAction).Hint:= IfThen(FMaximized, SRestore, SMaximize);
end;

procedure TfrTreeNodeParams.actNomDocsExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, (Sender as TAction).ActionComponent as TControl,
    dotNom, cdsParams, 'NOM_DOC_BRANCH_CODE', 'NOM_DOC_CODE');
end;

procedure TfrTreeNodeParams.actNomDocsUpdate(Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:=
    (not cdsParams.IsEmpty) and
    (cdsParamsVALUE_TYPE.AsInteger = vtNom);

  (Sender as TAction).ImageIndex:=
    cdsParamsNOM_HAS_DOC_ITEMS.AsInteger;
end;

procedure TfrTreeNodeParams.actShowNotDefinedExecute(Sender: TObject);
begin
  inherited;

  with Sender as TAction do
    begin
      Checked:= not Checked;
      btnShowNotDefined.Down:= Checked;
      cdsParams.Filtered:= not Checked;
    end;
end;

procedure TfrTreeNodeParams.actShowNotDefinedUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Caption:= IntToStr(FNotDefinedParamCount);
end;

procedure TfrTreeNodeParams.actValueNomItemDocsExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, (Sender as TAction).ActionComponent as TControl,
    dotNomItem, cdsParams, 'VALUE_NOM_ITEM_DOC_BRANCH_CODE', 'VALUE_NOM_ITEM_DOC_CODE');
end;

procedure TfrTreeNodeParams.actValueNomItemDocsUpdate(Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:=
    (not cdsParams.IsEmpty) and
    (cdsParamsVALUE_TYPE.AsInteger = vtNom);

  (Sender as TAction).ImageIndex:=
    cdsParamsVALUE_NOM_ITEM_HAS_DOC_ITEMS.AsInteger;
end;

procedure TfrTreeNodeParams.actCopyParamValueExecute(Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsParamsPARAM_VALUE.AsString;
end;

procedure TfrTreeNodeParams.grdParamsGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;
  if not cdsParamsIS_DEFINED.AsBoolean then
    AFont.Color:= clSilver;
end;

constructor TfrTreeNodeParams.Create(AOwner: TComponent);
begin
  inherited;
  ResizebleColumnFieldNames:= 'NODE_PARAM_NAME; PARAM_VALUE';
end;

end.
