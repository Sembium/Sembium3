unit fParamEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fBevelEditForm, Db, DBClient, ImgList, ActnList, StdCtrls, Buttons,
  ExtCtrls, DBCtrls, Mask, JvDBLookup, AbmesClientDataSet, AbmesFields,
  AbmesDBCheckBox, Menus, JvButtons, JvExControls, JvComponent,
  JvCaptionButton, JvComponentBase, dDocClient, uClientTypes, uProducts,
  ComCtrls, ToolWin, System.Actions;

const
  vtNom = 0;
  vtFloat = 1;
  vtString = 2;

type
  TfmParamEdit = class(TBevelEditForm)
    bvlPartOfName: TBevel;
    lblOrderNo: TLabel;
    lblName: TLabel;
    lblAbbrev: TLabel;
    lblPrefix: TLabel;
    lblSufix: TLabel;
    bvlValueString: TBevel;
    lblStringValue: TLabel;
    edtOrderNo: TDBEdit;
    edtName: TDBEdit;
    pnlNomValue: TPanel;
    lblNom: TLabel;
    lblNomItem: TLabel;
    pnlFloatValue: TPanel;
    lblFloatValue: TLabel;
    lblFormatDigits: TLabel;
    lblDot: TLabel;
    lblQuotient: TLabel;
    lblRange: TLabel;
    edtFloatValue: TDBEdit;
    edtIntegers: TEdit;
    edtDecimals: TEdit;
    edtRangeStart: TDBEdit;
    edtRangeEnd: TDBEdit;
    edtAbbrev: TDBEdit;
    edtPrefix: TDBEdit;
    edtSuffix: TDBEdit;
    pnlPartOfNameTitle: TPanel;
    chbPartOfName: TAbmesDBCheckBox;
    chbIsRequired: TAbmesDBCheckBox;
    edtStringValue: TDBEdit;
    pnlFloatValueTitle: TPanel;
    rbFloatValue: TRadioButton;
    pnlNomTitle: TPanel;
    rbNomValue: TRadioButton;
    pnlStringValueTitle: TPanel;
    rbStringValue: TRadioButton;
    cdsNomItems: TAbmesClientDataSet;
    dsNomItems: TDataSource;
    cdsNomItemsNOM_CODE: TAbmesFloatField;
    cdsNomItemsNOM_ITEM_CODE: TAbmesFloatField;
    cdsNomItemsNOM_ITEM_NAME: TAbmesWideStringField;
    cbNom: TJvDBLookupCombo;
    cbNomItem: TJvDBLookupCombo;
    chbIsDefined: TAbmesDBCheckBox;
    cdsNomItemsNOM_ITEM_DESCRIPTION: TAbmesWideStringField;
    cdsNomItems_SHOW_NAME: TAbmesWideStringField;
    edtNomNo: TDBEdit;
    lblShowValueWithPrefixAndSuffix: TLabel;
    edtShowValueWithPrefixAndSuffix: TDBEdit;
    cdsNomItemsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsNomItemsDOC_CODE: TAbmesFloatField;
    cdsNomItemsHAS_DOC_ITEMS: TAbmesFloatField;
    tlbNomDocs: TToolBar;
    btnNomDocs: TToolButton;
    tlbNomItemDocs: TToolBar;
    btnNomItemDocs: TToolButton;
    actNomDocs: TAction;
    actNomItemDocs: TAction;
    tlbDocs: TToolBar;
    btnDocs: TToolButton;
    actDocs: TAction;
    tlbNomEdit: TToolBar;
    actNomEdit: TAction;
    btnNomEdit: TToolButton;
    cdsNomItemsIS_NOT_PART_OF_NAME: TAbmesFloatField;
    bvlExport: TBevel;
    pnlExportTitle: TPanel;
    chbIsForExport: TAbmesDBCheckBox;
    edtExportIdentifier: TDBEdit;
    lblExportIdentifier: TLabel;
    procedure FormShow(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure rbFloatValueClick(Sender: TObject);
    procedure rbNomValueClick(Sender: TObject);
    procedure rbStringValueClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbNomItemClick(Sender: TObject);
    procedure cbNomClick(Sender: TObject);
    procedure cdsNomItemsCalcFields(DataSet: TDataSet);
    procedure cdsNomItemsBeforeOpen(DataSet: TDataSet);
    procedure actNomDocsUpdate(Sender: TObject);
    procedure actNomDocsExecute(Sender: TObject);
    procedure actNomItemDocsExecute(Sender: TObject);
    procedure actNomItemDocsUpdate(Sender: TObject);
    procedure actDocsUpdate(Sender: TObject);
    procedure actDocsExecute(Sender: TObject);
    procedure actNomEditUpdate(Sender: TObject);
    procedure actNomEditExecute(Sender: TObject);
  private
    FIsInherited: Boolean;
    FParentIsDefined: Boolean;
    FProductClass: TProductClass;
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    function GetValueFloatFormat: string;
    procedure RefreshNomItems;
    procedure dmDocClientOnDataChanged(Sender: TObject);
    procedure UpdateNomItemName;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProductClass: TProductClass = pcNone); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AProductClass: TProductClass = pcNone): Boolean;
    procedure Initialize; override;
    procedure Finalize; override;
  end;

implementation

uses
  dMain, uUtils, uClientUtils, uDocUtils, Variants, fNom, fEditForm,
  uUserActivityConsts;

{$R *.DFM}

resourcestring
  SInvalidValueType = 'Invalid value type';

const
  NomsUserActivityCode: array[TProductClass] of Integer =
    (0, uaNoms, uaFinNoms, uaBudgetNoms);
  NomsEditUserActivityCode: array[TProductClass] of Integer =
    (0, uaNomsEdit, uaFinNomsEdit, uaBudgetNomsEdit);

{ TfmParamEdit }

procedure TfmParamEdit.FormShow(Sender: TObject);
var
  s: string;
  i: Integer;
begin
  inherited;

  with dsData.DataSet do
    begin
      FIsInherited:= FieldByName('IS_INHERITED').AsBoolean;
      FParentIsDefined:= FieldByName('PARENT_IS_DEFINED').AsBoolean;

      case FieldByName('VALUE_TYPE').AsInteger of
        vtNom: rbNomValue.Checked:= True;
        vtFloat: rbFloatValue.Checked:= True;
        vtString: rbStringValue.Checked:= True;
      else
        raise Exception.Create(SInvalidValueType);
      end;   { case }

// the VALUE_FLOAT_FORMAT is in '000.00' format
      s:= FieldByName('VALUE_FLOAT_FORMAT').AsString;

      edtIntegers.Text:= '';
      edtDecimals.Text:= '';

      if (s <> '') then
        begin
          i:= Pos('.', s);

          if (i = 0) then
            edtIntegers.Text:= IntToStr(Length(s))
          else
            begin
              if (i > 1) then
                edtIntegers.Text:= IntToStr(i-1);

              edtDecimals.Text:= IntToStr(Length(s) - i);
            end;
        end;

      if (EditMode = emEdit) and FIsInherited and
         not FieldByName('IS_VALUE_INHERITED').AsBoolean then
        case FieldByName('VALUE_TYPE').AsInteger of
          vtNom: ActiveControl:= cbNomItem;
          vtFloat: ActiveControl:= edtFloatValue;
          vtString: ActiveControl:= edtStringValue;
        else
          raise Exception.Create(SInvalidValueType);
        end;   { case }   
    end;   { with }
end;

procedure TfmParamEdit.actDocsExecute(Sender: TObject);
var
  em: TEditMode;
begin
  inherited;

  if FIsInherited then
    em:= emReadOnly
  else
    em:= EditMode;

  dmDocClient.DSOpenDoc(em, (Sender as TAction).ActionComponent as TControl,
    dotProductParam, dsData.DataSet);
end;

procedure TfmParamEdit.actDocsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:=
    dsData.DataSet.FieldByName('HAS_DOC_ITEMS').AsInteger;
end;

procedure TfmParamEdit.actFormUpdate(Sender: TObject);

  procedure SetRadioButtonEnabled(ARadioButton: TRadioButton);
  begin
    with ARadioButton do
      Enabled:=
        ((not FIsInherited) or Checked) and
//        chbIsDefined.Checked and
        (EditMode <> emReadOnly);
  end;

var
  ro: Boolean;
  CanModifyExportSettings: Boolean;
begin
  inherited;

  ro:=
    (EditMode = emReadOnly) or
    FIsInherited;

  edtOrderNo.ReadOnly:= ro;
  edtName.ReadOnly:= ro;
  edtAbbrev.ReadOnly:= ro;

  edtOrderNo.Color:= ReadOnlyColors[ro];
  edtName.Color:= ReadOnlyColors[ro];
  edtAbbrev.Color:= ReadOnlyColors[ro];


  SetRadioButtonEnabled(rbFloatValue);
  SetRadioButtonEnabled(rbNomValue);
  SetRadioButtonEnabled(rbStringValue);


  ro:=
    (EditMode = emReadOnly) or
    (not rbFloatValue.Checked) or
    (not chbIsDefined.Checked);

  edtFloatValue.ReadOnly:= ro;
  edtFloatValue.Color:= ReadOnlyColors[ro];


  ro:=
    (EditMode = emReadOnly) or
    (not rbFloatValue.Checked) or
    FIsInherited;

  edtIntegers.ReadOnly:= ro;
  edtDecimals.ReadOnly:= ro;
  edtRangeStart.ReadOnly:= ro;
  edtRangeEnd.ReadOnly:= ro;

  edtIntegers.Color:= ReadOnlyColors[ro];
  edtDecimals.Color:= ReadOnlyColors[ro];
  edtRangeStart.Color:= ReadOnlyColors[ro];
  edtRangeEnd.Color:= ReadOnlyColors[ro];


  ro:=
    (EditMode = emReadOnly) or
    (not rbNomValue.Checked) or
    FIsInherited;

  edtNomNo.ReadOnly:= ro;
  cbNom.ReadOnly:= ro;

  edtNomNo.Color:= ReadOnlyColors[ro];
  cbNom.Color:= ReadOnlyColors[ro];


  ro:=
    (EditMode = emReadOnly) or
    not rbNomValue.Checked or
    cbNom.Field.IsNull or
    (not chbIsDefined.Checked);

  cbNomItem.ReadOnly:= ro;
  cbNomItem.Color:= ReadOnlyColors[ro];


  ro:=
    (EditMode = emReadOnly) or
    (not rbStringValue.Checked) or
    (not chbIsDefined.Checked);

  edtStringValue.ReadOnly:= ro;
  edtStringValue.Color:= ReadOnlyColors[ro];


  chbIsDefined.Enabled:= not FParentIsDefined;
  chbIsRequired.Enabled:= not FIsInherited;


  chbPartOfName.Enabled:=
    (EditMode <> emReadOnly) and
    (not FIsInherited);


  ro:=
    (EditMode = emReadOnly) or
    FIsInherited or
    (not chbPartOfName.Checked);

  edtSuffix.ReadOnly:= ro;
  edtPrefix.ReadOnly:= ro;

  edtSuffix.Color:= ReadOnlyColors[ro];
  edtPrefix.Color:= ReadOnlyColors[ro];


  dsData.DataSet.FieldByName('NOM_CODE').Required:=
    rbNomValue.Checked and
    chbIsDefined.Checked;

  CanModifyExportSettings:=
    (EditMode <> emReadOnly) and
    (not dsData.DataSet.FieldByName('PARENT_IS_FOR_EXPORT').AsBoolean);

  chbIsForExport.Enabled:= CanModifyExportSettings;

  ro:= (not CanModifyExportSettings) or (not chbIsForExport.Checked);
  SetControlReadOnly(ro, edtExportIdentifier);
end;

procedure TfmParamEdit.rbFloatValueClick(Sender: TObject);
begin
  inherited;
  rbNomValue.Checked:= False;
  rbStringValue.Checked:= False;
end;

procedure TfmParamEdit.rbNomValueClick(Sender: TObject);
begin
  inherited;
  rbFloatValue.Checked:= False;
  rbStringValue.Checked:= False;
end;

procedure TfmParamEdit.rbStringValueClick(Sender: TObject);
begin
  inherited;
  rbFloatValue.Checked:= False;
  rbNomValue.Checked:= False;

  actForm.Update;
  ActiveControl:= edtStringValue;
end;

function TfmParamEdit.GetValueFloatFormat: string;
var
  i, d, k: Integer;
begin
  i:= StrToIntDef(edtIntegers.Text, 0);
  d:= StrToIntDef(edtDecimals.Text, 0);

  Result:= '';
  for k:= 1 to i do Result:= Result + '0';
  Result:= Result + '.';
  for k:= 1 to d do Result:= Result + '0';

  if (Result[Length(Result)] = '.') then
    Delete(Result, Length(Result), 1);
end;

procedure TfmParamEdit.Initialize;
begin
  inherited;

  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  if (EditMode = emInsert) then
    dmDocClient.DSInitDoc(dotProductParam, dsData.DataSet);
end;

procedure TfmParamEdit.Finalize;
begin
  inherited;
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
  FOlddmDocClientOnDataChanged:= nil;
end;

procedure TfmParamEdit.UpdateNomItemName;
begin
  dsData.DataSet.FieldByName('NOM_ITEM_NAME').Assign(cdsNomItemsNOM_ITEM_NAME);
  dsData.DataSet.FieldByName('NOM_ITEM_IS_NOT_PART_OF_NAME').Assign(cdsNomItemsIS_NOT_PART_OF_NAME);
end;

procedure TfmParamEdit.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  ValueType: Integer;
  ValueFloatFormat: string;
begin
  if (ModalResult = mrOK) then
    begin
      if rbStringValue.Checked then
        ValueType:= vtString
      else   { if }
        ValueType:= Ord(rbFloatValue.Checked);

      ValueFloatFormat:= GetValueFloatFormat;

      with dsData, DataSet do
        if (State in dsEditModes) or
           (FieldByName('VALUE_TYPE').AsInteger <> ValueType) or
           (FieldByName('VALUE_FLOAT_FORMAT').AsString <> ValueFloatFormat) then
          begin
            CheckEditMode(DataSet);

            FieldByName('VALUE_TYPE').AsInteger:= ValueType;
            FieldByName('VALUE_FLOAT_FORMAT').AsString:= ValueFloatFormat;

            if (ValueType = vtFloat) then   // float value
              begin
                FieldByName('NOM_CODE').Clear;
                FieldByName('VALUE_NOM_ITEM_CODE').Clear;
                FieldByName('VALUE_STRING').Clear;
              end
            else   // nom or string value
              begin
                FieldByName('VALUE_FLOAT').Clear;
                if not FieldByName('IS_INHERITED').AsBoolean then
                  begin
                    FieldByName('VALUE_FLOAT_FORMAT').Clear;
                    FieldByName('VALUE_FLOAT_RANGE_START').Clear;
                    FieldByName('VALUE_FLOAT_RANGE_END').Clear;
                  end;

                if (ValueType = vtNom) then
                  FieldByName('VALUE_STRING').Clear
                else   { if }
                  begin
                    FieldByName('NOM_CODE').Clear;
                    FieldByName('VALUE_NOM_ITEM_CODE').Clear;
                  end;
              end;
          end;   { with, if }
    end;   { if }

  inherited;
end;

procedure TfmParamEdit.RefreshNomItems;
begin
  with cdsNomItems do
    begin
      Close;
      SetParams(Params, dsData.DataSet);
      Open;
      
    end;   { with }
end;

procedure TfmParamEdit.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FProductClass:= AProductClass;
end;

class function TfmParamEdit.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AProductClass: TProductClass): Boolean;
var
  f: TfmParamEdit;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AProductClass);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmParamEdit.OpenDataSets;
begin
  inherited;
  RefreshNomItems;
end;

procedure TfmParamEdit.CloseDataSets;
begin
  inherited;
  cdsNomItems.Close;
end;

procedure TfmParamEdit.dmDocClientOnDataChanged(Sender: TObject);
begin
   dmDocClient.SetHasDocItemsField(dsData.DataSet.FieldByName('HAS_DOC_ITEMS'));
end;

procedure TfmParamEdit.cbNomItemClick(Sender: TObject);
begin
  inherited;
  UpdateNomItemName;
end;

procedure TfmParamEdit.actNomDocsExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, (Sender as TAction).ActionComponent as TControl,
    dotNom, dsData.DataSet, '_NOM_DOC_BRANCH_CODE', '_NOM_DOC_CODE');
end;

procedure TfmParamEdit.actNomDocsUpdate(Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:=
    rbNomValue.Checked and
    not dsData.DataSet.FieldByName('NOM_CODE').IsNull;

  (Sender as TAction).ImageIndex:=
    dsData.DataSet.FieldByName('_NOM_HAS_DOC_ITEMS').AsInteger;
end;

procedure TfmParamEdit.actNomEditExecute(Sender: TObject);
var
  em: TEditMode;
  NomCode: Integer;
  ValueNomItemCode: Variant;
begin
  inherited;

  LoginContext.CheckUserActivity(NomsUserActivityCode[FProductClass]);

  if (edtNomNo.ReadOnly and cbNomItem.ReadOnly) or
     not LoginContext.HasUserActivity(NomsEditUserActivityCode[FProductClass]) then
    em:= emReadOnly
  else
    em:= emEdit;

  if TfmNom.ShowForm(nil, dsData.DataSet, em, doNone, FProductClass) then
    begin
      CheckEditMode(dsData.DataSet);

      NomCode:= dsData.DataSet.FieldByName('NOM_CODE').AsInteger;
      ValueNomItemCode:= dsData.DataSet.FieldByName('VALUE_NOM_ITEM_CODE').AsVariant;
      try
        dsData.DataSet.FieldByName('NOM_CODE').Clear;
        dsData.DataSet.FieldByName('VALUE_NOM_ITEM_CODE').Clear;

        RefreshDataSet(cbNom.Field.LookupDataSet);
        RefreshDataSet(cdsNomItems);

        if not VarIsNullOrEmpty(ValueNomItemCode) and
           not cdsNomItems.Locate('NOM_ITEM_CODE', ValueNomItemCode, []) then
          ValueNomItemCode:= Null;
      finally
        dsData.DataSet.FieldByName('NOM_CODE').AsInteger:= NomCode;
        dsData.DataSet.FieldByName('VALUE_NOM_ITEM_CODE').AsVariant:= ValueNomItemCode;
      end;

      UpdateNomItemName;
    end;
end;

procedure TfmParamEdit.actNomEditUpdate(Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:=
    not edtNomNo.Field.IsNull;

  if (edtNomNo.ReadOnly and cbNomItem.ReadOnly) or
     not LoginContext.HasUserActivity(NomsEditUserActivityCode[FProductClass]) then
    (Sender as TAction).Hint:= SReadOnlyCaption
  else
    (Sender as TAction).Hint:= SEditCaption;
end;

procedure TfmParamEdit.actNomItemDocsExecute(Sender: TObject);
var
  NomItemCode: Variant;
begin
  inherited;

  NomItemCode:= dsData.DataSet.FieldByName('VALUE_NOM_ITEM_CODE').AsVariant;

  dmDocClient.OpenDoc(emReadOnly, (Sender as TAction).ActionComponent as TControl,
    dotNomItem,
    VarToInt(cdsNomItems.Lookup('NOM_ITEM_CODE', NomItemCode, 'DOC_BRANCH_CODE')),
    VarToInt(cdsNomItems.Lookup('NOM_ITEM_CODE', NomItemCode, 'DOC_CODE'))
  );
end;

procedure TfmParamEdit.actNomItemDocsUpdate(Sender: TObject);
var
  ValueNomItemCode: Variant;
begin
  inherited;

  ValueNomItemCode:= dsData.DataSet.FieldByName('VALUE_NOM_ITEM_CODE').AsVariant;

  (Sender as TAction).Enabled:=
    rbNomValue.Checked and
    not VarIsNull(ValueNomItemCode);

  (Sender as TAction).ImageIndex:=
    IfThen(VarIsNull(ValueNomItemCode), 0,
      VarToInt(cdsNomItems.Lookup('NOM_ITEM_CODE', ValueNomItemCode, 'HAS_DOC_ITEMS')));
end;

procedure TfmParamEdit.cbNomClick(Sender: TObject);
begin
  inherited;
  RefreshNomItems;
end;

procedure TfmParamEdit.cdsNomItemsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsNomItems.Params.ParamByName('PRODUCT_CLASS_CODE').AsInteger:=
    ProductClassToInt(FProductClass);
end;

procedure TfmParamEdit.cdsNomItemsCalcFields(DataSet: TDataSet);
begin
  inherited;

  if (cdsNomItemsNOM_ITEM_DESCRIPTION.AsString = '') then
    cdsNomItems_SHOW_NAME.Assign(cdsNomItemsNOM_ITEM_NAME)
  else
    cdsNomItems_SHOW_NAME.AsString:=
      Format('%s (%s)', [
        cdsNomItemsNOM_ITEM_NAME.AsString,
        cdsNomItemsNOM_ITEM_DESCRIPTION.AsString
      ]);
end;

end.
