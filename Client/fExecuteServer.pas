unit fExecuteServer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDualGridForm, JvButtons, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh,
  AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons,
  StdCtrls, ExtCtrls, Mask, JvComponent, JvCaptionButton, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Vcl.Menus, System.Actions,
  EhLibVCL, DBAxisGridsEh;

type
  TfmExecuteServer = class(TDualGridForm)
    pnlTop: TPanel;
    pnlExecuteServerData: TPanel;
    edtExecuteServerCode: TDBEdit;
    edtNetworkPath: TDBEdit;
    lblExecuteServerCode: TLabel;
    lblExecuteServerNetworkPath: TLabel;
    cdsOtherGridDataEXECUTE_SERVER_CODE: TAbmesFloatField;
    cdsOtherGridDataDOC_ITEM_VIEW_GENERATOR_CODE: TAbmesFloatField;
    cdsOtherGridDataDOC_ITEM_VIEW_GENERATOR_NAME: TAbmesWideStringField;
    cdsDataEXECUTE_SERVER_CODE: TAbmesFloatField;
    cdsDataqryExecuteServerViewGenerators: TDataSetField;
    cdsGridDataEXECUTE_SERVER_CODE: TAbmesFloatField;
    cdsGridDataDOC_ITEM_VIEW_GENERATOR_CODE: TAbmesFloatField;
    cdsGridDataDOC_ITEM_VIEW_GENERATOR_NAME: TAbmesWideStringField;
    cdsDataEXECUTE_SERVER_NAME: TAbmesWideStringField;
  private
    { Private declarations }
  public
    class function CanEditOuterDataSet: Boolean; override;
  end;

implementation

{$R *.dfm}

{ TfmExecuteServer }

class function TfmExecuteServer.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

end.
