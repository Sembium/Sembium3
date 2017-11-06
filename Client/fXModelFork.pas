unit fXModelFork;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fXModelMaterial, Menus, Db, DBClient, AbmesClientDataSet, JvButtons,
  ImgList, ActnList, Buttons, StdCtrls, AbmesDBCheckBox, fBaseFrame,
  fDBFrame, fFieldEditFrame, ExtCtrls, Mask,
  DBCtrls, fTreeNodeFieldEditFrame, fProductFieldEditFrame,
  fDateFieldEditFrame, JvComponent, JvCaptionButton, JvComponentBase;

type
  TfmXModelFork = class(TfmXModelMaterial)
    cbhIsWasteFork: TAbmesDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function CheckDetailQuantity: Boolean; override;
    procedure DoApplyUpdates; override;
  public
    { Public declarations }
  end;

implementation

uses
  uUtils, uClientUtils;

{$R *.DFM}

{ TfmXModelFork }

function TfmXModelFork.CheckDetailQuantity: Boolean;
begin
  Result:= False;
end;

procedure TfmXModelFork.DoApplyUpdates;
begin
  CheckRequiredFields(dsData.DataSet,
    'LINE_DETAIL_TECH_QUANTITY; PRODUCT_NAME; PRODUCT_TECH_QUANTITY');

  inherited;
end;

procedure TfmXModelFork.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frDetail) then
    AFrame.ReadOnly:= True
  else
    inherited;
end;

procedure TfmXModelFork.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    inherited;
  except
    on E: Exception do
      if (dsData.DataSet.State in dsEditModes) then
        raise
      else
        ShowExceptionMessage(E.Message, E.ClassName);
  end;  { try }
end;

end.
