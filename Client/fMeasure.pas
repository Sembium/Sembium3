unit fMeasure;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fEditForm, Db, DBClient, ImgList, ActnList, StdCtrls, Buttons, ExtCtrls,
  Mask, DBCtrls, AbmesClientDataSet, Menus, JvButtons, fBevelEditForm,
  JvDBCombobox, JvExStdCtrls, JvComponent, JvCaptionButton, JvComponentBase,
  uProducts, JvExControls, JvDBLookup;

type
  TfmMeasure = class(TBevelEditForm)
    edtName: TDBEdit;
    lblName: TLabel;
    edtAbbrev: TDBEdit;
    lblAbbrev: TLabel;
    lblExportNo: TLabel;
    edtExportNo: TDBEdit;
    lblRounder: TLabel;
    cbRounder: TJvDBLookupCombo;
    edtIName: TDBEdit;
    lblIName: TLabel;
    edtIMeasureAbbrev: TDBEdit;
    lblIMeasureAbbrev: TLabel;
  private
    MsgParams: TStrings;
    FOriginalFormCaption: string;
  protected
    function GetOriginalFormCaption: string; override;
  public
    procedure Initialize; override;
  end;

implementation

uses
  Math, uProductClientUtils, uClientUtils;

{$R *.DFM}

{ TfmMeasure }

function TfmMeasure.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmMeasure.Initialize;
var
  ProductClass: TProductClass;
begin
  inherited;

  ProductClass:= IntToProductClass(dsData.DataSet.FieldByName('PRODUCT_CLASS_CODE').AsInteger);

  MsgParams:=
    CreateCommonMsgParams(
      LoginContext,
      ProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;
end;

end.
