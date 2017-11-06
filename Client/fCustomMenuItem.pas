unit fCustomMenuItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, DBCtrls, AbmesDBCheckBox, AbmesFields,
  Mask, ToolWin, ComCtrls, JvComponent, JvCaptionButton, JvComponentBase,
  DBGridEhGrouping, GridsEh, DBGridEh, AbmesDBGrid;

type
  TfmCustomMenuItem = class(TEditForm)
    cdsMenu: TAbmesClientDataSet;
    cdsMenuMENU_ITEM_NAME: TAbmesWideStringField;
    cdsMenuPARENT_MENU_ITEM_NAME: TAbmesWideStringField;
    cdsMenuMENU_ITEM_CAPTION: TAbmesWideStringField;
    dsMenu: TDataSource;
    pnlTop: TPanel;
    chbHasMenuLineBefore: TAbmesDBCheckBox;
    chbIsInCaptionMenu: TAbmesDBCheckBox;
    cdsMenuIMAGE_INDEX: TAbmesFloatField;
    chbHasMenuLineAfter: TAbmesDBCheckBox;
    pnlMenu: TPanel;
    Bevel1: TBevel;
    pnlIsBeforeMenuItem: TPanel;
    gbIsBeforeMenuItem: TDBRadioGroup;
    chbIsSubmenu: TAbmesDBCheckBox;
    bvlTop: TBevel;
    edtCustomMenuItemCode: TDBEdit;
    edtCustomMenuItemName: TDBEdit;
    lblCustomMenuItemCode: TLabel;
    lblCustomMenuItemName: TLabel;
    pnlDocs: TToolBar;
    btnDocs: TSpeedButton;
    grdMenu: TAbmesDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnDocsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    procedure BuildMenuTree;
    procedure dmDocClientOnDataChanged(Sender: TObject);
  public
    procedure Initialize; override;
    procedure Finalize; override;
  end;

implementation

uses
  fMain, Menus, uUtils, uClientTypes, uDocUtils, uTreeListUtils, uExcelExport,
  ToolCtrlsEh;

resourcestring
  SCantChooseRootOrMenu = 'Не можете да избирате меню';
  SMenu = 'Меню';

{$R *.dfm}

{ TfmMenuDocItem }

procedure TfmCustomMenuItem.BuildMenuTree;
var
  UnnamedMenuItemCounter: Integer;

  procedure AddMenuItem(AMenuItem: TMenuItem; AParentMenuItemName: string);
  var
    MenuItemName: string;
    MenuItemCaption: string;
    i: Integer;
  begin
    if not AMenuItem.Visible then
      Exit;

    MenuItemName:= AMenuItem.Name;
    MenuItemCaption:= StringReplace(AMenuItem.Caption, '&', '', [rfReplaceAll]);

    if (MenuItemName = '') then
      begin
        UnnamedMenuItemCounter:= UnnamedMenuItemCounter + 1;
        MenuItemName:= fmMain.mmMainMenu.Name + IntToStr(UnnamedMenuItemCounter);
      end;
    if (MenuItemCaption = '') then
      MenuItemCaption:= SMenu;
    if (MenuItemCaption = '-') then
      MenuItemCaption:= '——————————————————';

    if not (AMenuItem is TDocMenuItem) then
      cdsMenu.AppendRecord([MenuItemName, AParentMenuItemName, MenuItemCaption, AMenuItem.ImageIndex]);

    if (MenuItemName <> 'miToolbarMenu') then
      for i:= 0 to AMenuItem.Count - 1 do
        AddMenuItem(AMenuItem[i], MenuItemName);
  end;

begin
  cdsMenu.DisableControls;
  try
    cdsMenu.Close;
    cdsMenu.CreateDataSet;

    UnnamedMenuItemCounter:= 0;
    AddMenuItem(fmMain.mmMainMenu.Items, '');
  finally
    cdsMenu.EnableControls;
  end;  { try }
end;

procedure TfmCustomMenuItem.Initialize;
begin
  inherited;

  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  BuildMenuTree;
  grdMenu.ConvertToTreeList('MENU_ITEM_NAME', 'PARENT_MENU_ITEM_NAME');

  if not cdsMenu.Locate('MENU_ITEM_NAME', dsData.DataSet.FieldByName('RELATIVE_MENU_ITEM_NAME').AsString, []) then
    cdsMenu.First;
end;

procedure TfmCustomMenuItem.Finalize;
begin
  inherited;
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
end;

procedure TfmCustomMenuItem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (ModalResult = mrOK) then
    begin
      if ((grdMenu.DataSource.DataSet as IMemTableEh).GetTreeNodeLevel < 3) then
        raise Exception.Create(SCantChooseRootOrMenu);

      CheckEditMode(dsData.DataSet);
      dsData.DataSet.FieldByName('RELATIVE_MENU_ITEM_NAME').AsString:=
        cdsMenuMENU_ITEM_NAME.AsString;
    end;

  inherited;
end;

procedure TfmCustomMenuItem.FormCreate(Sender: TObject);
begin
  inherited;
  MaximizeStyle:= msVertical;
end;

procedure TfmCustomMenuItem.btnDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(EditMode, btnDocs, dotMenuDocItem, dsData.DataSet);
end;

procedure TfmCustomMenuItem.dmDocClientOnDataChanged(Sender: TObject);
begin
  CheckEditMode(dsData.DataSet);
  dsData.DataSet.FieldByName('IS_CHANGED').AsBoolean:= True;
end;

end.


