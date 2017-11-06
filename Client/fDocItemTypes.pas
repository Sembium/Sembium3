unit fDocItemTypes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBottomButtonGridForm, Menus, JvButtons, ImgList,
  ParamDataSet, ActnList, DB, DBClient, AbmesClientDataSet, GridsEh,
  DBGridEh, AbmesDBGrid, DBCtrls, ColorNavigator, Buttons, StdCtrls,
  ExtCtrls, AbmesFields, ComCtrls, ToolWin, uClientTypes, JvComponent,
  JvCaptionButton, JvComponentBase;

type
  TfmDocItemTypes = class(TBottomButtonGridForm)
    cdsGridDataDOC_ITEM_TYPE_CODE: TAbmesFloatField;
    cdsGridDataDOC_ITEM_TYPE_NAME: TAbmesWideStringField;                                           
    cdsGridDataIS_DNC_DOC: TAbmesFloatField;
    cdsGridDataDOC_ITEM_BASE_TYPE_CODE: TAbmesFloatField;
    cdsGridDataDOC_ITEM_TYPE_FILE_EXTENSIONS: TAbmesWideStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
  end;

implementation

uses
  dMain, fDocItemType, uUtils;

{$R *.dfm}

{ TfmDocItemTypes }

procedure TfmDocItemTypes.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmDocItemType;
end;

function TfmDocItemTypes.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  Result:= TfmDocItemType.ShowForm(dmDocClient, cdsGridData, AEditMode);
end;

end.
