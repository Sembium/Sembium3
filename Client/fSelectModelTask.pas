unit fSelectModelTask;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvButtons, DB, AbmesFields, ParamDataSet,
  ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid,
  ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls;

type
  TfmSelectModelTask = class(TGridForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grdDataDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class function ShowForm(ADataSet: TDataSet): Boolean;
  end;
                                                                                     
implementation

uses uClientTypes;

{$R *.dfm}

{ TfmSelectModelTask }

class function TfmSelectModelTask.ShowForm(ADataSet: TDataSet): Boolean;
var
  f: TfmSelectModelTask;
begin
  f:= CreateEx;
  try
    f.SetDataParams(nil, ADataSet, emEdit, doNone, False);
    Result:= (f.InternalShowForm = mrOk);
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmSelectModelTask.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  inherited;
end;

procedure TfmSelectModelTask.FormShow(Sender: TObject);
begin
//  inherited;
  dsGridData.DataSet:= OuterDataSet;
end;

procedure TfmSelectModelTask.grdDataDblClick(Sender: TObject);
begin
//  inherited;
  ModalResult:= mrOk;
end;

end.
