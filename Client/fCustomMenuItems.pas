unit fCustomMenuItems;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBottomButtonGridForm, DB, JvComponent, JvCaptionButton,
  AbmesFields, ParamDataSet, ActnList, DBClient,
  AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin,
  DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls, JvComponentBase,
  DBGridEhGrouping, Menus, fGridForm, fCustomMenuItem, fBaseForm;

type
  [CanUseDocs]
  [EditFormClass(TfmCustomMenuItem)]
  TfmCustomMenuItems = class(TBottomButtonGridForm)
    cdsGridDataCUSTOM_MENU_ITEM_CODE: TAbmesFloatField;
    cdsGridDataCUSTOM_MENU_ITEM_NAME: TAbmesWideStringField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataRELATIVE_MENU_ITEM_NAME: TAbmesWideStringField;
    cdsGridDataIS_BEFORE_MENU_ITEM: TAbmesFloatField;
    cdsGridDataHAS_MENU_LINE_BEFORE: TAbmesFloatField;
    cdsGridDataHAS_MENU_LINE_AFTER: TAbmesFloatField;
    cdsGridDataIS_IN_CAPTION_MENU: TAbmesFloatField;
    cdsGridDataIS_SUBMENU: TAbmesFloatField;
    cdsGridData_MAX_CUSTOM_MENU_ITEM_CODE: TAggregateField;
    cdsGridDataIS_CHANGED: TAbmesFloatField;
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
    procedure cdsGridDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
  private
    { Private declarations }
  protected
    procedure DoGridApplyUpdates; override;
  public
    { Public declarations }
  end;

implementation

uses
  dMain, uUtils;

{$R *.dfm}

resourcestring
  SMenuPositionNotSet = 'Не сте задали позиция в менюто!';

{ TfmMenuDocItems }

procedure TfmCustomMenuItems.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataCUSTOM_MENU_ITEM_CODE.AsInteger:= cdsGridData_MAX_CUSTOM_MENU_ITEM_CODE.AsVarInteger + 1;
  cdsGridDataIS_BEFORE_MENU_ITEM.AsBoolean:= False;
  cdsGridDataHAS_MENU_LINE_BEFORE.AsBoolean:= False;
  cdsGridDataHAS_MENU_LINE_AFTER.AsBoolean:= False;
  cdsGridDataIS_IN_CAPTION_MENU.AsBoolean:= False;
  cdsGridDataIS_SUBMENU.AsBoolean:= False;
end;

procedure TfmCustomMenuItems.DoGridApplyUpdates;
begin
  inherited;
  dmDocClient.CommitUpdates;
end;

procedure TfmCustomMenuItems.cdsGridDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsGridDataDOC_CODE.IsNull then
    dmDocClient.DSNewDoc(cdsGridData);
end;

procedure TfmCustomMenuItems.cdsGridDataBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;

end.
