unit fSelectDocItemTemplate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fButtonForm, JvButtons, ActnList, StdCtrls, Buttons, ExtCtrls,
  DB, DBClient, AbmesClientDataSet, JvDBLookup, AbmesFields, dDocClient,
  uDocUtils, JvExControls, JvComponent, JvComponentBase, JvCaptionButton;

type
  TfmSelectDocItemTemplate = class(TButtonForm)
    cdsDocItemTemplates: TAbmesClientDataSet;
    dsDocItemTemplates: TDataSource;
    pnlDocItemTemplate: TPanel;
    cbDocItemTemplate: TJvDBLookupCombo;
    lblDocItemTemplate: TLabel;
    cdsDocItemTemplatesDOC_ITEM_TEMPLATE_CODE: TAbmesFloatField;
    cdsDocItemTemplatesDOC_ITEM_TEMPLATE_NAME: TAbmesWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
  private
    { Private declarations }
  public
    class function ShowForm(ADocItemTemplateType: TDocItemTemplateType; ADocItemTypeCode: Integer): Integer;
    procedure SetDataParams(ADocItemTemplateType: TDocItemTemplateType; ADocItemTypeCode: Integer); reintroduce; virtual;
  end;

implementation

uses
  dMain, DbConsts, uUtils, uUserActivityConsts;

{$R *.dfm}

{ TfmSelectDocItemTemplate }

class function TfmSelectDocItemTemplate.ShowForm(
  ADocItemTemplateType: TDocItemTemplateType; ADocItemTypeCode: Integer): Integer;
var
  f: TfmSelectDocItemTemplate;
begin
  f:= CreateEx;
  try
    f.SetDataParams(ADocItemTemplateType, ADocItemTypeCode);
    if (f.InternalShowForm = mrOk) then
      Result:= VarToInt(f.cbDocItemTemplate.KeyValue)
    else
      Result:= 0;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmSelectDocItemTemplate.SetDataParams(
  ADocItemTemplateType: TDocItemTemplateType; ADocItemTypeCode: Integer);
begin
  inherited SetDataParams;
  cdsDocItemTemplates.Params.ParamByName('DOC_ITEM_TEMPLATE_TYPE_CODE').AsInteger:=
    DocItemTemplateTypeToInt(ADocItemTemplateType);
  cdsDocItemTemplates.Params.ParamByName('DOC_ITEM_TYPE_CODE').AsInteger:=
    ADocItemTypeCode;
end;

procedure TfmSelectDocItemTemplate.FormShow(Sender: TObject);
begin
  inherited;
  cdsDocItemTemplates.Open;
end;

procedure TfmSelectDocItemTemplate.FormHide(Sender: TObject);
begin
  cdsDocItemTemplates.Close;
  inherited;
end;

procedure TfmSelectDocItemTemplate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (ModalResult = mrOk) and
     (VarToInt(cbDocItemTemplate.KeyValue) = 0) then
    raise Exception.CreateFmt(SFieldRequired, [lblDocItemTemplate.Caption]);

  inherited;
end;

end.
