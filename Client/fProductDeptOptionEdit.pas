unit fProductDeptOptionEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, DBClient, AbmesClientDataSet, Menus,
  JvButtons, ActnList, StdCtrls, Buttons, ExtCtrls, fBaseFrame, fDBFrame,
  fFieldEditFrame, JvDBLookup,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, JvComponent,
  JvCaptionButton, System.Actions, Vcl.Mask, Vcl.DBCtrls, JvExControls, JvExStdCtrls, JvCombobox, JvDBCombobox;

type
  TfmProductDeptOptionEdit = class(TBevelEditForm)
    frDept: TfrDeptFieldEditFrame;
    actToggleIsPSDPriceFromDelivery: TAction;
    pnlToggleIsPsdPriceFromDelivery: TPanel;
    pnlOverriddenIsPsdPriceFromDelivery: TPanel;
    cbIsPsdPriceFromDelivery: TJvDBComboBox;
    pnlInheritedIsPsdPriceFromDelivery: TPanel;
    pnlToggleIsPsdPriceFromDeliveryButton: TPanel;
    btnToggleIsPsdPriceFromDelivery: TSpeedButton;
    cbInheritedIsPSDPriceFromDelivery: TJvDBComboBox;
    lblIsPsdPriceFromDelivery: TLabel;
    procedure actToggleIsPSDPriceFromDeliveryUpdate(Sender: TObject);
    procedure actToggleIsPSDPriceFromDeliveryExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
  private
    procedure ToggleActionUpdate(ASender: TObject; AFieldName: string; AButtonPanel, AOverriddenPanel,
      AInheritedPanel: TPanel);
    procedure ToggleActionExecute(ASender: TObject; AFieldName: string);
  public
    { Public declarations }
  end;

implementation

uses
  uClientTypes, uUtils, uClientUtils;

{$R *.dfm}

{ TfmProductDeptOptionEdit }

procedure TfmProductDeptOptionEdit.actFormUpdate(Sender: TObject);
begin
  inherited;
  SetControlReadOnly((EditMode = emReadOnly), cbIsPsdPriceFromDelivery);
end;

procedure TfmProductDeptOptionEdit.actToggleIsPSDPriceFromDeliveryExecute(Sender: TObject);
begin
  inherited;
  ToggleActionExecute(Sender, 'OVERRIDE_IS_PSD_PRICE_FROM_DLV');
end;

procedure TfmProductDeptOptionEdit.actToggleIsPSDPriceFromDeliveryUpdate(Sender: TObject);
begin
  inherited;
  ToggleActionUpdate(Sender, 'OVERRIDE_IS_PSD_PRICE_FROM_DLV',
    pnlToggleIsPsdPriceFromDeliveryButton, pnlOverriddenIsPsdPriceFromDelivery, pnlInheritedIsPsdPriceFromDelivery);
end;

procedure TfmProductDeptOptionEdit.ToggleActionUpdate(ASender: TObject;
  AFieldName: string; AButtonPanel, AOverriddenPanel, AInheritedPanel: TPanel);
begin
  AButtonPanel.Enabled:= (EditMode <> emReadOnly);
  with ASender as TAction do
    begin
      Checked:= dsData.DataSet.FieldByName(AFieldName).AsBoolean;
      AOverriddenPanel.Visible:= Checked;
      AInheritedPanel.Visible:= not Checked;
    end;  { with }
end;

procedure TfmProductDeptOptionEdit.ToggleActionExecute(ASender: TObject;
  AFieldName: string);
begin
  CheckEditMode(dsData.DataSet);
  with dsData.DataSet.FieldByName(AFieldName) do
    AsBoolean:= not AsBoolean;

  (ASender as TAction).Update;
  SelectNext(((ASender as TAction).ActionComponent as TSpeedButton).Parent.Parent, True, True);
end;

end.
