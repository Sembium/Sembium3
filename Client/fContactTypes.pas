unit fContactTypes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBottomButtonGridForm, DBGridEhGrouping, Menus, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh,
  AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls,
  ExtCtrls, fContactType, fGridForm;

type
  [EditFormClass(TfmContactType)]
  TfmContactTypes = class(TBottomButtonGridForm)
    cdsGridDataCONTACT_TYPE_CODE: TAbmesFloatField;
    cdsGridDataCONTACT_TYPE_NAME: TAbmesWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
