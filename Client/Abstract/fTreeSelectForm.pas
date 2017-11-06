unit fTreeSelectForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fTreeNomForm, Db, DBClient, ActnList, ImgList, ComCtrls, GridsEh,
  StdCtrls, DBCtrls, ColorNavigator, ToolWin, Buttons, ExtCtrls,
  TreeParentsComboBox, Menus, AbmesClientDataSet, DBGridEh,
  AbmesDBGrid, AbmesFields, fBaseFrame, fDBFrame, fTreeNodeParamsFrame,
  JvButtons, dDocClient, JvComponent, JvCaptionButton, JvComponentBase,
  ParamDataSet, AbmesDBCheckBox;

type
  TTreeDetailSelection = (tdsNone, tdsAll, tdsInstance);              

type
  TTreeSelectForm = class(TTreeNomForm)
    cdsNodeChildrenNODE_NO: TAbmesFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdChildrenDblClick(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actCopyToClipboardExecute(Sender: TObject);
  private
    FEndNodeID: Integer;
    FTreeDetailSelection: TTreeDetailSelection;
  protected
    function GetOkButtonEnabled: Boolean; virtual;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ANodeID: Integer = 0; ARootNodeID: Integer = 1;
      ATreeDetailSelection: TTreeDetailSelection = tdsAll); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ANodeID: Integer = 0; ARootNodeID: Integer = 1;
      ATreeDetailSelection: TTreeDetailSelection = tdsAll): Integer;
    property EndNodeID: Integer read FEndNodeID;
    property TreeDetailSelection: TTreeDetailSelection read FTreeDetailSelection;
  end;

implementation

uses
  uTreeNodes;

{$R *.DFM}

procedure TTreeSelectForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (ModalResult = mrOK) then
    case FTreeDetailSelection of
      tdsNone: Abort;
      tdsInstance:
        if (cdsNodeChildrenNODE_TYPE.AsInteger <= 1) then Abort;
    end;

  inherited;

  FEndNodeID:= cdsNodeChildrenNODE_ID.AsInteger;
end;

procedure TTreeSelectForm.SetDataParams(AdmDocClient: TdmDocClient;
  ANodeID, ARootNodeID: Integer;
  ATreeDetailSelection: TTreeDetailSelection);
begin
  inherited SetDataParams(AdmDocClient, ANodeID, ARootNodeID);
  FTreeDetailSelection:= ATreeDetailSelection;
end;

class function TTreeSelectForm.ShowForm(AdmDocClient: TdmDocClient;
  ANodeID, ARootNodeID: Integer;
  ATreeDetailSelection: TTreeDetailSelection): Integer;
var
  f: TTreeSelectForm;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ANodeID, ARootNodeID, ATreeDetailSelection);
    if (f.InternalShowForm = mrOK) then
      Result:= f.EndNodeID
    else
      Result:= 0;
  finally
    f.ReleaseForm;
  end;
end;

procedure TTreeSelectForm.grdChildrenDblClick(Sender: TObject);
begin
  Assert(cdsNodeChildren.Active);

  if (cdsNodeChildrenNODE_TYPE.AsInteger = Ord(ntInstance)) then
    ModalResult:= mrOk
  else
    inherited;
end;

procedure TTreeSelectForm.actFormUpdate(Sender: TObject);
begin
  inherited;

  pnlClose.Visible:= (FTreeDetailSelection = tdsNone);
  pnlOKCancel.Visible:= (FTreeDetailSelection <> tdsNone);
  btnOK.Enabled:= GetOkButtonEnabled;
end;

procedure TTreeSelectForm.actCopyToClipboardExecute(Sender: TObject);
begin
//  inherited;      new behaviour
  actCopyNoToClipboard.Execute;
end;

function TTreeSelectForm.GetOkButtonEnabled: Boolean;
begin
  Result:=
    (FTreeDetailSelection = tdsAll) or
    ((FTreeDetailSelection = tdsInstance) and
     cdsNodeChildren.Active and
     (cdsNodeChildrenNODE_TYPE.AsInteger = Ord(ntInstance)));
end;

end.
