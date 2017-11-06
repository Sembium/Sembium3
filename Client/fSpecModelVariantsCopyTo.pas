unit fSpecModelVariantsCopyTo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uClientTypes, Db, DBClient, AbmesClientDataSet, ImgList, ActnList, StdCtrls,
  Buttons, ExtCtrls, GridsEh, DBGridEh, AbmesDBGrid, DBCtrls, ColorNavigator,
  AbmesFields, Menus, JvButtons, fEditForm, dDocClient, JvComponent,
  JvCaptionButton, JvComponentBase, fBaseFrame, fDBFrame, fFieldEditFrame,
  fTreeNodeFieldEditFrame, fProductFieldEditFrame, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh,
  System.Actions;

type
  TfmSpecModelVariantsCopyTo = class(TEditForm)
    pnlMain: TPanel;
    pnlGrid: TPanel;
    pnlNavigator: TPanel;
    navData: TDBColorNavigator;
    grdData: TAbmesDBGrid;
    pnlTop: TPanel;
    frParentProduct: TfrProductFieldEditFrame;
    frImportProduct: TfrProductFieldEditFrame;
    lblArrow: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdDataDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    class function ShowForm(AdmDocClient: TdmDocClient; ADataSet: TDataSet): Boolean;
    procedure Initialize; override;
  end;

implementation

uses
  uUtils, uClientUtils, Math, uModelUtils, uColorConsts;

{$R *.DFM}

{ TfmSpecModelVariantsCopyTo }

procedure TfmSpecModelVariantsCopyTo.grdDataDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  GridDrawColumnCell(Sender, Rect, DataCol, Column, State);
end;

procedure TfmSpecModelVariantsCopyTo.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if (Column.FieldName = '_INSERT_SPEC_MODEL_VARIANT_STATE') and
     (not Column.Field.IsNull) and
     InRange(Column.Field.AsInteger, Low(SpecNoQuantityStates), High(SpecNoQuantityStates)) then
    Background:= SpecStateColors[Column.Field.AsInteger];

  if dsData.DataSet.FieldByName('IS_INACTIVE').AsBoolean then
    AFont.Color:= clSilver;
end;

procedure TfmSpecModelVariantsCopyTo.Initialize;
begin
  frParentProduct.FieldNames:= 'PARENT_DETAIL_CODE';
  frParentProduct.SetDataSet(OuterDataSet);
  frImportProduct.FieldNames:= 'SPEC_PRODUCT_CODE';
  frImportProduct.SetDataSet(OuterDataSet.FieldByName('_INSERT_MODEL_VARIANT_IDENTIFIER').LookupDataSet);

  inherited;

  RegisterDateFields(dsData.DataSet);
end;

procedure TfmSpecModelVariantsCopyTo.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  AFrame.ReadOnly:= True;
end;

class function TfmSpecModelVariantsCopyTo.ShowForm(
  AdmDocClient: TdmDocClient; ADataSet: TDataSet): Boolean;
var
  f: TfmSpecModelVariantsCopyTo;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, emEdit);
    Result:= (f.InternalShowForm = mrOK);
  finally
    f.ReleaseForm;
  end;
  Application.ProcessMessages;
end;

procedure TfmSpecModelVariantsCopyTo.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  OrigiinalModalResult: Integer;
begin
  OrigiinalModalResult:= ModalResult;
  inherited;
  ModalResult:= OrigiinalModalResult;
end;

procedure TfmSpecModelVariantsCopyTo.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;   

  if (Key = VK_RETURN) then
    begin
      Key:= 0;
      ModalResult:= mrOk;
    end;   { if }
end;

procedure TfmSpecModelVariantsCopyTo.FormShow(Sender: TObject);
begin
  inherited;
  grdData.Col:= grdData.Columns.Count;
end;

end.
