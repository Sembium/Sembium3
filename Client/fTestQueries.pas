unit fTestQueries;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponentBase, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh,
  AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls,
  ExtCtrls, Menus, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  System.Actions, EhLibVCL, DBAxisGridsEh;

type
  TfmTestQueries = class(TGridForm)
    cdsGridDataDATA_MODULE_NAME: TAbmesWideStringField;
    cdsGridDataQUERY_NAME: TAbmesWideStringField;
    cdsGridDataEXCEPTION_MESSAGE: TAbmesWideStringField;
    cdsWrongQueries: TAbmesClientDataSet;
    cdsWrongQueriesDATA_MODULE_NAME: TAbmesWideStringField;
    cdsWrongQueriesQUERY_NAME: TAbmesWideStringField;
    cdsWrongQueriesEXCEPTION_MESSAGE: TAbmesWideStringField;
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  dMain, uUtils;

{$R *.dfm}

procedure TfmTestQueries.cdsGridDataAfterOpen(DataSet: TDataSet);
var
  c: TConnectionBroker;
begin
  inherited;
  for c in dmMain.AllComponents.OfType<TConnectionBroker> do
    if (c <> dmMain.conNonDbUtils) then
      begin
        cdsWrongQueries.ConnectionBroker:= c;
        cdsWrongQueries.Open;
        try
          cdsWrongQueries.First;
          while not cdsWrongQueries.Eof do
            begin
              cdsGridData.AppendRecord([
                cdsWrongQueriesDATA_MODULE_NAME.AsString,
                cdsWrongQueriesQUERY_NAME.AsString,
                cdsWrongQueriesEXCEPTION_MESSAGE.AsString]);

              cdsWrongQueries.Next;
            end;  { while }
        finally
          cdsWrongQueries.Close;
        end;  { try }
      end;  { if }

  cdsGridData.First;
end;

end.
