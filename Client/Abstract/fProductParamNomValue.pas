unit fProductParamNomValue;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fBevelEditForm, Db, DBClient, ImgList, ActnList, StdCtrls, Buttons,
  ExtCtrls, JvDBLookup, Mask, DBCtrls, AbmesClientDataSet, AbmesFields,
  Menus, JvButtons, JvExControls, JvComponent, JvCaptionButton, JvComponentBase,
  ComCtrls, ToolWin;

type
  TfmProductParamNomValue = class(TBevelEditForm)
    cbNomItem: TJvDBLookupCombo;
    lblNom: TLabel;
    lblNomItem: TLabel;
    cdsNomItems: TAbmesClientDataSet;
    dsNomItems: TDataSource;
    cdsNomItemsNOM_CODE: TAbmesFloatField;
    cdsNomItemsNOM_ITEM_CODE: TAbmesFloatField;
    cdsNomItemsNOM_ITEM_NAME: TAbmesWideStringField;
    edtNom: TDBEdit;
    cdsNomItemsNOM_ITEM_DESCRIPTION: TAbmesWideStringField;
    cdsNomItems_SHOW_NAME: TAbmesWideStringField;
    tlbNomDocs: TToolBar;
    btnNomDocs: TToolButton;
    tlbNomItemDocs: TToolBar;
    btnNomItemDocs: TToolButton;
    actNomDocs: TAction;
    actNomItemDocs: TAction;
    cdsNomItemsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsNomItemsDOC_CODE: TAbmesFloatField;
    cdsNomItemsHAS_DOC_ITEMS: TAbmesFloatField;
    procedure cbNomItemClick(Sender: TObject);
    procedure cdsNomItemsBeforeOpen(DataSet: TDataSet);
    procedure cdsNomItemsCalcFields(DataSet: TDataSet);
    procedure actNomDocsUpdate(Sender: TObject);
    procedure actNomDocsExecute(Sender: TObject);
    procedure actNomItemDocsUpdate(Sender: TObject);
    procedure actNomItemDocsExecute(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  public
    { Public declarations }
  end;

implementation

uses
  dMain, uUtils, uClientTypes, uDocUtils, Variants;

{$R *.DFM}

{ TfmProductParamNomValue }

procedure TfmProductParamNomValue.actNomDocsExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, (Sender as TAction).ActionComponent as TControl,
    dotNom, dsData.DataSet, 'NOM_DOC_BRANCH_CODE', 'NOM_DOC_CODE');
end;

procedure TfmProductParamNomValue.actNomDocsUpdate(Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:=
    not dsData.DataSet.FieldByName('NOM_CODE').IsNull;

  (Sender as TAction).ImageIndex:=
    dsData.DataSet.FieldByName('NOM_HAS_DOC_ITEMS').AsInteger;
end;

procedure TfmProductParamNomValue.actNomItemDocsExecute(Sender: TObject);
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

procedure TfmProductParamNomValue.actNomItemDocsUpdate(Sender: TObject);
var
  ValueNomItemCode: Variant;
begin
  inherited;

  ValueNomItemCode:= dsData.DataSet.FieldByName('VALUE_NOM_ITEM_CODE').AsVariant;

  (Sender as TAction).Enabled:=
    not VarIsNull(ValueNomItemCode);

  (Sender as TAction).ImageIndex:=
    IfThen(VarIsNull(ValueNomItemCode), 0,
      VarToInt(cdsNomItems.Lookup('NOM_ITEM_CODE', ValueNomItemCode, 'HAS_DOC_ITEMS')));
end;

procedure TfmProductParamNomValue.cbNomItemClick(Sender: TObject);
begin
  inherited;
  with dsData do
    begin
      CheckEditMode(DataSet);
      DataSet.FieldByName('VALUE_NOM_ITEM_NAME').AsString:= cbNomItem.Text;
    end;   { with }
end;

procedure TfmProductParamNomValue.OpenDataSets;
begin
  inherited;
  cdsNomItems.Open;
end;

procedure TfmProductParamNomValue.CloseDataSets;
begin
  cdsNomItems.Close;
  inherited;
end;

procedure TfmProductParamNomValue.cdsNomItemsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SetParams((DataSet as TAbmesClientDataSet).Params, dsData.DataSet);
end;

procedure TfmProductParamNomValue.cdsNomItemsCalcFields(DataSet: TDataSet);
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
