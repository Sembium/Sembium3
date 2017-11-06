unit fParRelPeriod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvComponentBase,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, fBaseFrame,
  fDBFrame, fFieldEditFrame, fPartnerFieldEditFrame,
  fPartnerExFieldEditFrame, fTreeNodeFieldEditFrame, fDeptFieldEditFrame,
  fDeptFieldEditFrameBald, fDateIntervalFrame, JvExControls, JvComponent,
  JvDBLookup, Mask, DBCtrls, fPartnerFieldEditFrameBald, JvExStdCtrls,
  JvDBCombobox, uBorderRelTypeClientUtils, uBorderRelTypes, ComCtrls, ToolWin,
  fGridForm, AbmesFields, ParamDataSet, GridsEh, DBGridEh,
  AbmesDBGrid, ColorNavigator, dDocClient, uClientTypes, Menus, JvCombobox,
  fPRPerPriceModifiers, DBGridEhGrouping, ToolCtrlsEh;

type
  TfmParRelPeriod = class(TGridForm)
    frPartner: TfrPartnerExFieldEditFrame;
    gbDateInterval: TGroupBox;
    frDateInterval: TfrDateIntervalFrame;
    gbModel: TGroupBox;
    gbMediatorCompany: TGroupBox;
    gbOther: TGroupBox;
    lblCurrency: TLabel;
    lblShipmentType: TLabel;
    lblIsPartnerTransport: TLabel;
    lblCustomhouse: TLabel;
    lblFormCaption: TLabel;
    pnlStore: TPanel;
    lblStore: TLabel;
    pnlPartnerOffice: TPanel;
    cbPartnerOffice: TJvDBLookupCombo;
    lblPartnerOffice: TLabel;
    pnlMovement: TPanel;
    lblArrow: TLabel;
    lblTransportDurationDays: TLabel;
    lblTransportDurationDaysMeasure: TLabel;
    tlbDocs: TToolBar;
    btnDocs: TToolButton;
    actSetEstModel: TAction;
    sepSetEstModel: TToolButton;
    btnSetEstModel: TSpeedButton;
    pnlToggleStore: TPanel;
    pnlInheritedStore: TPanel;
    frInheritedStore: TfrDeptFieldEditFrameBald;
    pnlOverriddenStore: TPanel;
    frStore: TfrDeptFieldEditFrameBald;
    pnlToggleTransportDurationDays: TPanel;
    pnlOverriddenTransportDurationDays: TPanel;
    edtTransportDurationDays: TDBEdit;
    pnlInheritedTransportDurationDays: TPanel;
    edtInheritedTransportDurationDays: TDBEdit;
    pnlToggleMediatorCompany: TPanel;
    pnlOverriddenMediatorCompany: TPanel;
    pnlInheritedMediatorCompany: TPanel;
    frInheritedMediatorCompany: TfrPartnerFieldEditFrameBald;
    frMediatorCompany: TfrPartnerFieldEditFrameBald;
    pnlToggleCurrency: TPanel;
    pnlOverriddenCurrency: TPanel;
    cbCurrency: TJvDBLookupCombo;
    pnlInheritedCurrency: TPanel;
    edtInheritedCurrency: TDBEdit;
    pnlToggleShipmentType: TPanel;
    pnlOverriddenShipmentType: TPanel;
    cbShipmentType: TJvDBLookupCombo;
    pnlInheritedShipmentType: TPanel;
    edtInheritedShipmentType: TDBEdit;
    pnlToggleIsPartnerTransport: TPanel;
    pnlOverriddenIsPartnerTransport: TPanel;
    cbIsPartnerTransport: TJvDBComboBox;
    pnlInheritedIsPartnerTransport: TPanel;
    edtInheritedIsPartnerTransport: TDBEdit;
    pnlToggleCustomhouse: TPanel;
    pnlOverriddenCustomhouse: TPanel;
    cbCustomhouse: TJvDBLookupCombo;
    pnlInheritedCustomhouse: TPanel;
    edtCustomhouse: TDBEdit;
    actToggleStore: TAction;
    actToggleTransportDurationDays: TAction;
    actToggleMediatorCompany: TAction;
    actToggleCurrency: TAction;
    actToggleShipmentType: TAction;
    actToggleIsPartnerTransport: TAction;
    actToggleCustomhouse: TAction;
    pnlToggleStoreButton: TPanel;
    pnlToggleTransportDurationDaysButton: TPanel;
    pnlToggleMediatorCompanyButton: TPanel;
    pnlToggleCurrencyButton: TPanel;
    pnlToggleShipmentTypeButton: TPanel;
    pnlToggleIsPartnerTransportButton: TPanel;
    pnlToggleCustomhouseButton: TPanel;
    btnToggleStore: TSpeedButton;
    btnToggleTransportDurationDays: TSpeedButton;
    btnToggleMediatorCompany: TSpeedButton;
    btnToggleCurrency: TSpeedButton;
    btnToggleShipmentType: TSpeedButton;
    btnToggleIsPartnerTransport: TSpeedButton;
    btnToggleCustomhouse: TSpeedButton;
    pcMain: TPageControl;
    tsSpecFinModels: TTabSheet;
    tsPRPerPriceModifiers: TTabSheet;
    gbFinPartner: TGroupBox;
    pnlToggleFinPartner: TPanel;
    pnlOverridenFinPartner: TPanel;
    frFinPartner: TfrPartnerFieldEditFrameBald;
    pnlInheritedFinPartner: TPanel;
    frInheritedFinPartner: TfrPartnerFieldEditFrameBald;
    pnlToggleFinPartnerButton: TPanel;
    btnToggleFinPartner: TSpeedButton;
    actToggleFinPartner: TAction;
    tlbCreateLike: TToolBar;
    btnInsertLike: TToolButton;
    procedure btnDocsClick(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure actSetEstModelUpdate(Sender: TObject);
    procedure actSetEstModelExecute(Sender: TObject);
    procedure actToggleStoreExecute(Sender: TObject);
    procedure actToggleStoreUpdate(Sender: TObject);
    procedure actToggleTransportDurationDaysExecute(Sender: TObject);
    procedure actToggleMediatorCompanyExecute(Sender: TObject);
    procedure actToggleCurrencyExecute(Sender: TObject);
    procedure actToggleShipmentTypeExecute(Sender: TObject);
    procedure actToggleIsPartnerTransportExecute(Sender: TObject);
    procedure actToggleCustomhouseExecute(Sender: TObject);
    procedure actToggleTransportDurationDaysUpdate(Sender: TObject);
    procedure actToggleMediatorCompanyUpdate(Sender: TObject);
    procedure actToggleCurrencyUpdate(Sender: TObject);
    procedure actToggleShipmentTypeUpdate(Sender: TObject);
    procedure actToggleIsPartnerTransportUpdate(Sender: TObject);
    procedure actToggleCustomhouseUpdate(Sender: TObject);
    procedure actInsertRecordExecute(Sender: TObject);
    procedure actToggleFinPartnerExecute(Sender: TObject);
    procedure actToggleFinPartnerUpdate(Sender: TObject);
    procedure pcMainChange(Sender: TObject);
  private
    FBorderRelType: TBorderRelType;
    FMsgParams: TStringList;
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    FSpecFinModelLinesDataSet: TDataSet;
    FSavecdsGridData: TAbmesClientDataSet;
    FfmPRPerPriceModifiers: TfmPRPerPriceModifiers;
    FInitialSavePoint: Int64;
    FNeedsPriceModifiersToolbarRefresh: Boolean;
    procedure dmDocClientOnDataChanged(Sender: TObject);
    procedure ToggleActionExecute(ASender: TObject; AFieldName: string);
    procedure ToggleActionUpdate(ASender: TObject; AFieldName: string;
      AButtonPanel, AOverriddenPanel, AInheritedPanel: TPanel);
    procedure RefreshPriceModifiersToolbar;
  protected
    class function CanUseDocs: Boolean; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function GetOriginalFormCaption: string; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure DoApplyUpdates; override;
    function GetInsertRecordEnabled: Boolean; override;
    procedure DoCancelUpdates; override;
  public
    class function ShowForm(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True;
      ASpecFinModelsDataSet: TDataSet = nil; ASpecFinModelLinesDataSet: TDataSet = nil;
      APRPerPriceModifiersDataSetField: TDataSetField = nil): Boolean;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True;
      ASpecFinModelsDataSet: TDataSet = nil; ASpecFinModelLinesDataSet: TDataSet = nil;
      APRPerPriceModifiersDataSetField: TDataSetField = nil); reintroduce; virtual;
    procedure Initialize; override;
    procedure Finalize; override;
  end;

implementation

uses
  uCompanyKinds, uClientUtils, uDocUtils, uUtils, fSpecFinModel,
  uCompanyClasses, Math, dMain;

{$R *.dfm}

resourcestring
  SEstModelRequired = 'Не сте посочили Перспективен Принципен МОДЕл - Финансов';

function CreateCommonMsgParams(ABorderRelType: TBorderRelType): TStringList;
var
  SL: TStringList;
begin
  SL:= TStringList.Create;
  try
    try
      SL.Values['BorderRelTypeName']:= BorderRelTypeNames[ABorderRelType];
      SL.Values['BorderRelTypeAction']:= BorderRelTypeActions[ABorderRelType];
      SL.Values['BorderRelTypeStoreAction']:= BorderRelTypeStoreActions[ABorderRelType];
      SL.Values['BorderRelTypePartnerStoreAction']:= BorderRelTypePartnerStoreActions[ABorderRelType];
      SL.Values['ParRelPeriodAbbrev']:= ParRelPeriodAbbrevs[ABorderRelType];
    except
      FreeAndNil(SL);
      raise;
    end;
  finally
    Result:= SL;
  end;
end;

{ TfmParRelPeriod }

procedure TfmParRelPeriod.actInsertRecordExecute(Sender: TObject);
begin
  PostDataSet(dsData.DataSet);
  inherited;
end;

procedure TfmParRelPeriod.actSetEstModelExecute(Sender: TObject);
begin
  inherited;
  with dsGridData.DataSet do
    begin
      TempDisableControls/
        PreserveBookmark/
          ForEach/
            SafeEdit/
              procedure begin
                FieldByName('IS_EST_MODEL').AsBoolean:= False;
              end;

      SafeEdit/
        procedure begin
          FieldByName('IS_EST_MODEL').AsBoolean:= True;
        end;
    end;  { with }
end;

procedure TfmParRelPeriod.actSetEstModelUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (not dsGridData.DataSet.IsEmpty) and
    (not dsGridData.DataSet.FieldByName('IS_EST_MODEL').AsBoolean);
end;

procedure TfmParRelPeriod.actToggleCurrencyExecute(Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_CURRENCY');
end;

procedure TfmParRelPeriod.actToggleCurrencyUpdate(Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_CURRENCY',
    pnlToggleCurrencyButton, pnlOverriddenCurrency, pnlInheritedCurrency);
end;

procedure TfmParRelPeriod.actToggleCustomhouseExecute(Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_CUSTOMHOUSE');
end;

procedure TfmParRelPeriod.actToggleCustomhouseUpdate(Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_CUSTOMHOUSE',
    pnlToggleCustomhouseButton, pnlOverriddenCustomhouse, pnlInheritedCustomhouse);
end;

procedure TfmParRelPeriod.actToggleIsPartnerTransportExecute(Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_IS_PARTNER_TRANSPORT');
end;

procedure TfmParRelPeriod.actToggleIsPartnerTransportUpdate(Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_IS_PARTNER_TRANSPORT',
    pnlToggleIsPartnerTransportButton, pnlOverriddenIsPartnerTransport, pnlInheritedIsPartnerTransport);
end;

procedure TfmParRelPeriod.actToggleMediatorCompanyExecute(Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_MEDIATOR_COMPANY');
end;

procedure TfmParRelPeriod.actToggleMediatorCompanyUpdate(Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_MEDIATOR_COMPANY',
    pnlToggleMediatorCompanyButton, pnlOverriddenMediatorCompany, pnlInheritedMediatorCompany);
end;

procedure TfmParRelPeriod.actToggleFinPartnerExecute(Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_FIN_PARTNER');
end;

procedure TfmParRelPeriod.actToggleFinPartnerUpdate(Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_FIN_PARTNER',
    pnlToggleFinPartnerButton, pnlOverridenFinPartner, pnlInheritedFinPartner);
end;

procedure TfmParRelPeriod.actToggleShipmentTypeExecute(Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_SHIPMENT_TYPE');
end;

procedure TfmParRelPeriod.actToggleShipmentTypeUpdate(Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_SHIPMENT_TYPE',
    pnlToggleShipmentTypeButton, pnlOverriddenShipmentType, pnlInheritedShipmentType);
end;

procedure TfmParRelPeriod.actToggleStoreExecute(Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_STORE');
end;

procedure TfmParRelPeriod.actToggleStoreUpdate(Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_STORE',
    pnlToggleStoreButton, pnlOverriddenStore, pnlInheritedStore);
end;

procedure TfmParRelPeriod.actToggleTransportDurationDaysExecute(
  Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_TRANSPORT_DUR_DAYS');
end;

procedure TfmParRelPeriod.actToggleTransportDurationDaysUpdate(Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_TRANSPORT_DUR_DAYS',
    pnlToggleTransportDurationDaysButton, pnlOverriddenTransportDurationDays, pnlInheritedTransportDurationDays);
end;

procedure TfmParRelPeriod.actFormUpdate(Sender: TObject);
var
  IsCommonPartner: Boolean;
  IsClientPartner: Boolean;
begin
  inherited;
  SetControlsReadOnly((EditMode = emReadOnly), [
    edtTransportDurationDays,
    cbCurrency,
    cbShipmentType,
    cbIsPartnerTransport,
    cbCustomhouse
  ]);

  IsCommonPartner:= (dsData.DataSet.FieldByName('COMPANY_CLASS_CODE').AsInteger = CompanyClassToInt(ccCommon));
  IsClientPartner:= (IntToBorderRelType(dsData.DataSet.FieldByName('BORDER_REL_TYPE_CODE').AsInteger) = brtClient);

  SetControlsReadOnly((EditMode = emReadOnly) or IsCommonPartner, [cbPartnerOffice]);

  tsSpecFinModels.TabVisible:= not IsCommonPartner;
  tsPRPerPriceModifiers.TabVisible:= IsClientPartner;

  if FNeedsPriceModifiersToolbarRefresh then
    begin
      FNeedsPriceModifiersToolbarRefresh:= False;
      RefreshPriceModifiersToolbar;
    end;

  btnDocs.ImageIndex:= dsData.DataSet.FieldByName('HAS_DOC_ITEMS').AsInteger;

  AutoSizeColumn(grdData, 1);
end;

procedure TfmParRelPeriod.FormCreate(Sender: TObject);
begin
  inherited;

  EditFormClass:= TfmSpecFinModel;

  frPartner.FieldNames:= 'PARTNER_CODE';
  frPartner.PartnerStatusVisible:= True;
  frStore.FieldNames:= 'STORE_CODE';
  frStore.SelectStore:= True;
  frInheritedStore.FieldNames:= 'STORE_CODE';
  frInheritedStore.SelectStore:= True;
  frMediatorCompany.FieldNames:= 'MEDIATOR_COMPANY_CODE';
  frMediatorCompany.FilterCompanyKind:= ckMediator;
  frInheritedMediatorCompany.FieldNames:= 'INHRT_MEDIATOR_COMPANY_CODE';
  frInheritedMediatorCompany.FilterCompanyKind:= ckMediator;
  frFinPartner.FieldNames:= 'FIN_PARTNER_CODE';
  frInheritedFinPartner.FieldNames:= 'INHRT_FIN_PARTNER_CODE';

  pnlGrid.Parent:= tsSpecFinModels;
  pnlGrid.Align:= alClient;

  FfmPRPerPriceModifiers:= TfmPRPerPriceModifiers.CreateDockedTo(tsPRPerPriceModifiers);
  FfmPRPerPriceModifiers.Align:= alClient;
  FfmPRPerPriceModifiers.dsData.DataSet:= cdsData;
  if IsAppThemed then
    FfmPRPerPriceModifiers.Color:= clWhite;

  FNeedsPriceModifiersToolbarRefresh:= True;
end;

function TfmParRelPeriod.GetInsertRecordEnabled: Boolean;
begin
  Result:=
    inherited GetInsertRecordEnabled and
    (IntToCompanyClass(dsData.DataSet.FieldByName('COMPANY_CLASS_CODE').AsInteger) <> ccCommon);
end;

function TfmParRelPeriod.GetOriginalFormCaption: string;
begin
  Result:= lblFormCaption.Caption;
end;

procedure TfmParRelPeriod.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if (Column.FieldName = '_IS_AUTHORIZED') then
    begin
      if Column.Field.AsBoolean then
        AFont.Color:= clGreen
      else
        AFont.Color:= clRed;
    end;
end;

procedure TfmParRelPeriod.Initialize;
var
  IsCommonPartner: Boolean;
  IsVendorPartner: Boolean;
begin
  FInitialSavePoint:= (dsData.DataSet as TClientDataSet).SavePoint;

  FBorderRelType:=
    IntToBorderRelType(
      (dsData.DataSet as TClientDataSet).DataSetField.DataSet.FieldByName('BORDER_REL_TYPE_CODE').AsInteger);

  case FBorderRelType of
    brtClient: frPartner.PriorityCompanyKind:= ckClient;
    brtVendor: frPartner.PriorityCompanyKind:= ckVendor;
  else
    UnknownBorderRelTypeError;
  end;

  FSavecdsGridData:= cdsGridData;
  cdsGridData:= dsGridData.DataSet as TAbmesClientDataSet;

  inherited;

  FMsgParams:= CreateCommonMsgParams(FBorderRelType);
  RecursivelyFormatCaptions(Self, FMsgParams);

  InitializeBooleanComboBox(cbIsPartnerTransport);

  case FBorderRelType of
    brtClient: frPartner.PriorityCompanyKind:= ckClient;
    brtVendor: frPartner.PriorityCompanyKind:= ckVendor;
  end;

  case FBorderRelType of
    brtClient:
      begin
        pnlStore.Align:= alLeft;
        pnlPartnerOffice.Align:= alRight;
        pnlStore.TabOrder:= 0;
      end;
    brtVendor:
      begin
        pnlStore.Align:= alRight;
        pnlPartnerOffice.Align:= alLeft;
        pnlPartnerOffice.TabOrder:= 0;
      end;
  else
    UnknownBorderRelTypeError;
  end;

  pnlMovement.TabOrder:= 1;

  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  IsCommonPartner:= (IntToCompanyClass(dsData.DataSet.FieldByName('COMPANY_CLASS_CODE').AsInteger) = ccCommon);
  IsVendorPartner:= (IntToBorderRelType(dsData.DataSet.FieldByName('BORDER_REL_TYPE_CODE').AsInteger) = brtVendor);

  if IsCommonPartner and IsVendorPartner then
    begin
      pnlMain.Visible:= False;
      Height:= Height - IfThen(not pnlMain.Visible, pnlMain.Height);
      MaximizeStyle:= msStandard;
      BorderIcons:= BorderIcons - [biMaximize];
    end;  { if }

  if (EditMode = emInsert) then
    dmDocClient.DSInitDoc(dotParRelPeriod, dsData.DataSet);

  RefreshPriceModifiersToolbar;
end;

procedure TfmParRelPeriod.btnDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(EditMode, btnDocs, dotParRelPeriod, dsData.DataSet);
end;

class function TfmParRelPeriod.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmParRelPeriod.CloseDataSets;
begin
//  inherited;  do nothing
end;

procedure TfmParRelPeriod.dmDocClientOnDataChanged(Sender: TObject);
begin
  dmDocClient.SetHasDocItemsField(dsData.DataSet.FieldByName('HAS_DOC_ITEMS'));
end;

procedure TfmParRelPeriod.DoApplyUpdates;
begin
  if (dsGridData.DataSet.RecordCount > 0) and
     (VarToInt(dsGridData.DataSet.FieldByName('_MAX_IS_EST_MODEL').AsVariant) = 0) then
    begin
      ActiveControl:= grdData;
      raise Exception.Create(SEstModelRequired);
    end;

  FfmPRPerPriceModifiers.CheckUniqueConstraints;

  inherited;
end;

procedure TfmParRelPeriod.DoCancelUpdates;
begin
  inherited;
  (dsData.DataSet as TClientDataSet).SavePoint:= FInitialSavePoint;
end;

procedure TfmParRelPeriod.Finalize;
begin
  inherited;
  FreeAndNil(FMsgParams);
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
  cdsGridData:= FSavecdsGridData;
end;

procedure TfmParRelPeriod.RefreshPriceModifiersToolbar;
begin
  if (pcMain.ActivePage = tsPRPerPriceModifiers) then
  begin
    // bugfix na nepokazvane na navigatora
    FfmPRPerPriceModifiers.pnlNavigator.Hide;
    FfmPRPerPriceModifiers.pnlNavigator.Show;
  end;
end;

procedure TfmParRelPeriod.OpenDataSets;
begin
//  inherited;  do nothing
end;

procedure TfmParRelPeriod.pcMainChange(Sender: TObject);
begin
  inherited;
  RefreshPriceModifiersToolbar;
end;

procedure TfmParRelPeriod.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; ASpecFinModelsDataSet,
  ASpecFinModelLinesDataSet: TDataSet; APRPerPriceModifiersDataSetField: TDataSetField);
begin
  Assert(Assigned(ASpecFinModelsDataSet));
  Assert(Assigned(ASpecFinModelLinesDataSet));
  Assert(Assigned(APRPerPriceModifiersDataSetField));

  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode,
    ADefaultsOrigin, AFilterFormEnabled);

  dsGridData.DataSet:= ASpecFinModelsDataSet;
  FSpecFinModelLinesDataSet:= ASpecFinModelLinesDataSet;
  FfmPRPerPriceModifiers.cdsGridData.DataSetField:= APRPerPriceModifiersDataSetField;
  FfmPRPerPriceModifiers.SetDataParams(dmDocClient, cdsData, EditMode, doNone, False);
end;

procedure TfmParRelPeriod.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frPartner) or
     (AFrame = frInheritedStore) or
     (AFrame = frInheritedMediatorCompany) or
     (AFRame = frInheritedFinPartner) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;  { if }

  inherited;
end;

function TfmParRelPeriod.ShowEditForm(AEditMode: TEditMode): Boolean;
var
  DefaultsOrigin: TDefaultsOrigin;
begin
  if (AEditMode = emInsert) and InInsertLikeAction then
    DefaultsOrigin:= doServer
  else
    DefaultsOrigin:= doNone;

  Result:=
    TfmSpecFinModel.ShowForm(dmDocClient, dsGridData.DataSet, AEditMode, DefaultsOrigin, True,
      FSpecFinModelLinesDataSet);
end;

class function TfmParRelPeriod.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; ASpecFinModelsDataSet,
  ASpecFinModelLinesDataSet: TDataSet; APRPerPriceModifiersDataSetField: TDataSetField): Boolean;
var
  f: TfmParRelPeriod;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled,
      ASpecFinModelsDataSet, ASpecFinModelLinesDataSet, APRPerPriceModifiersDataSetField);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmParRelPeriod.ToggleActionExecute(ASender: TObject;
  AFieldName: string);
begin
  CheckEditMode(dsData.DataSet);
  with dsData.DataSet.FieldByName(AFieldName) do
    AsBoolean:= not AsBoolean;

  (ASender as TAction).Update;
  SelectNext(((ASender as TAction).ActionComponent as TSpeedButton).Parent.Parent, True, True);
end;

procedure TfmParRelPeriod.ToggleActionUpdate(ASender: TObject; AFieldName: string;
  AButtonPanel, AOverriddenPanel, AInheritedPanel: TPanel);
begin
  AButtonPanel.Enabled:= (EditMode <> emReadOnly);
  with ASender as TAction do
    begin
      Checked:= dsData.DataSet.FieldByName(AFieldName).AsBoolean;
      AOverriddenPanel.Visible:= Checked;
      AInheritedPanel.Visible:= not Checked;
    end;  { with }
end;

end.
