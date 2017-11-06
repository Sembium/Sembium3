unit fDocItemSysRoles;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBottomButtonGridForm, JvComponentBase, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, GridsEh,
  DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons,
  StdCtrls, ExtCtrls, Provider, dDocClient, fGridForm, Menus, DBGridEhGrouping;

type
  TfmDocItemSysRoles = class(TBottomButtonGridForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure navDataBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure FormCreate(Sender: TObject);
  private
    FSaveGridData: TAbmesClientDataSet;
    FSavePoint: Integer;
    procedure CheckUserHasEditAccess;
  protected
    procedure DoApplyUpdates; override;
    procedure DoCancelUpdates; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure SaveDocsSavePoint; override;
    procedure RevertDocsToSavePoint; override;
  public
    procedure Initialize; override;
    procedure Finalize; override;
  end;

implementation

uses
  fDocItemSysRole, fBaseForm, fDBDataForm, uUtils, uClientUtils, uDocUtils;

resourcestring
  SUserMustHaveEditAccess = 'Няма зададен Набор Информационни Отговорности с ниво на достъп "Редактиране", който да притежавате';

{$R *.dfm}

{ TfmDocItemSysRoles }

procedure TfmDocItemSysRoles.CheckUserHasEditAccess;
begin
  if (dmDocClient.GetDocItemAccessLevel < dialEdit) then
    raise Exception.Create(SUserMustHaveEditAccess);
end;

procedure TfmDocItemSysRoles.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (ModalResult = mrOK) then
    CheckUserHasEditAccess;

  inherited;
end;

procedure TfmDocItemSysRoles.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmDocItemSysRole;
end;

procedure TfmDocItemSysRoles.Initialize;
begin
  inherited;
  dsGridData.DataSet:= dmDocClient.cdsDocItemSysRoles;
  FSavePoint:= dmDocClient.cdsDocItems.SavePoint;

  FSaveGridData:= cdsGridData;
  cdsGridData:= dmDocClient.cdsDocItemSysRoles;
end;

procedure TfmDocItemSysRoles.navDataBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
  if (Button = nbDelete) then
    begin
      if not ConfirmRecordDelete then
        Abort;
        
      dmDocClient.DeleteDocItemSysRole;
      Abort;
    end;  { if }

  inherited;
end;

procedure TfmDocItemSysRoles.Finalize;
begin
  inherited;
  cdsGridData:= FSaveGridData;
end;

procedure TfmDocItemSysRoles.OpenDataSets;
begin
  // do nothing
end;

procedure TfmDocItemSysRoles.CloseDataSets;
begin
  // do nothing
end;

procedure TfmDocItemSysRoles.DoApplyUpdates;
begin
  // do not call inherited
  dmDocClient.CheckDocItemSysRolesUniqueIndexes;
end;

procedure TfmDocItemSysRoles.DoCancelUpdates;
begin
  // do not call inherited
  dmDocClient.cdsDocItems.SavePoint:= FSavePoint;
end;

procedure TfmDocItemSysRoles.RevertDocsToSavePoint;
begin
  // do not call inherited
end;

procedure TfmDocItemSysRoles.SaveDocsSavePoint;
begin
  // do not call inherited
end;

end.
