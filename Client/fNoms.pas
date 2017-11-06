unit fNoms;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fBottomButtonGridForm, ImgList, ParamDataSet, ActnList, Db,
  DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, DBCtrls,
  ColorNavigator, Buttons, StdCtrls, ExtCtrls, AbmesFields, Menus,
  JvButtons, ComCtrls, ToolWin, JvComponent, JvCaptionButton, JvComponentBase,
  dDocClient, uClientTypes, uProducts, DBGridEhGrouping, fBaseForm;

type
  [CanUseDocs]
  TfmNoms = class(TBottomButtonGridForm)
    cdsGridDataNOM_CODE: TAbmesFloatField;
    cdsGridDataNOM_NAME: TAbmesWideStringField;
    cdsGridDataNOM_NO: TAbmesFloatField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    tlbDocs: TToolBar;
    sepDocs: TToolButton;
    cdsGridDataHAS_DOC_ITEMS: TAbmesFloatField;
    actDocs: TAction;
    btnDocs: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure actDocsUpdate(Sender: TObject);
    procedure actDocsExecute(Sender: TObject);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
  protected
    function GetOriginalFormCaption: string; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
  public
    class function ShowForm(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True;
      AProductClass: TProductClass = pcNormal): Boolean;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True;
      AProductClass: TProductClass = pcNormal); reintroduce; virtual;
    procedure Initialize; override;
  end;

implementation                                                        

uses
  dMain, fNom, uProductClientUtils, uClientUtils, uDocUtils;

{$R *.DFM}

{ TfmNoms }

procedure TfmNoms.actDocsExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, (Sender as TAction).ActionComponent as TControl,
    dotNom, cdsGridData);
end;

procedure TfmNoms.actDocsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
  (Sender as TAction).ImageIndex:= cdsGridDataHAS_DOC_ITEMS.AsInteger;
end;

procedure TfmNoms.cdsGridDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsGridData.Params.ParamByName('PRODUCT_CLASS_CODE').AsInteger:=
    ProductClassToInt(FProductClass);
end;

procedure TfmNoms.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmNom;
end;

function TfmNoms.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmNoms.Initialize;
var
  MsgParams: TStrings;
begin
  inherited;

  MsgParams:=
    CreateCommonMsgParams(
      LoginContext,
      FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;
end;

procedure TfmNoms.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AProductClass: TProductClass);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode,
    ADefaultsOrigin, AFilterFormEnabled);

  FProductClass:= AProductClass;
end;

function TfmNoms.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  Result:= TfmNom.ShowForm(dmDocClient, dsGridData.DataSet, AEditMode, doNone, FProductClass);
end;

class function TfmNoms.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AProductClass: TProductClass): Boolean;
var
  f: TfmNoms;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled, AProductClass);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

end.
