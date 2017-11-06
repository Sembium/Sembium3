unit fCommonGroupsFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponent, JvCaptionButton, ActnList, JvExControls, JvDBLookup,
  Buttons, StdCtrls, ExtCtrls, fBaseFrame, fDBFrame, fFieldEditFrame,
  fTreeNodeFilter, fProductFilter, fParamProductFilter,
  fTreeNodeFieldEditFrame, fProductFieldEditFrame, Mask, DBCtrls,
  AbmesDBCheckBox, JvExStdCtrls, JvDBCombobox, JvComponentBase, uProducts,
  JvCombobox;

type
  TfmCommonGroupsFilter = class(TFilterForm)
    frProductParent: TfrProductFieldEditFrame;
    gbProcessPosition: TGroupBox;
    cbIsUsedBy: TJvDBComboBox;
    lblIsUsedBy: TLabel;
    lblIsProvidedBy: TLabel;
    cbIsProvidedBy: TJvDBComboBox;
    procedure FormCreate(Sender: TObject);
  private
    FOriginalFormCaption: string;
    FProductClass: TProductClass;
  protected
    function GetOriginalFormCaption: string; override;
    function GetFilterFormVariantCode: Integer; override;
  public
    procedure Initialize; override;
  end;

implementation

uses
  uProductClientUtils, uClientUtils;

{$R *.dfm}

{ TfmCommonGroupsFilter }

procedure TfmCommonGroupsFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frProductParent.FieldNames:= 'PRODUCT_PARENT_CODE';
  frProductParent.ShowAllWhenEmpty:= False;
end;

function TfmCommonGroupsFilter.GetFilterFormVariantCode: Integer;
begin
  Result:= ProductClassToInt(FProductClass);
end;

function TfmCommonGroupsFilter.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmCommonGroupsFilter.Initialize;
var
  MsgParams: TStrings;
begin
  FProductClass:= IntToProductClass(dsData.DataSet.FieldByName('_PRODUCT_CLASS_CODE').AsInteger);

  inherited;

  frProductParent.ProductClass:= FProductClass;

  MsgParams:=
    CreateCommonMsgParams(
      LoginContext,
      FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;

  frProductParent.Fields[0].DisplayLabel:= Trim(frProductParent.gbTreeNode.Caption);
end;

end.
