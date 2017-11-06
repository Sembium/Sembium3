unit fBottomButtonGridForm;
                                              
interface
              
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fGridForm, ActnList, Db, DBClient, GridsEh, DBCtrls, StdCtrls,
  Buttons, ExtCtrls, ImgList, ColorNavigator,
  ParamDataSet, AbmesClientDataSet, DBGridEh, AbmesDBGrid, Menus, JvButtons,
  ComCtrls, ToolWin, AbmesFields, JvComponent, JvCaptionButton,
  JvComponentBase, DBGridEhGrouping, System.Actions, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh;

type
  TAddButtonAction = (abaInsertRecord, abaInsertMenu);

type
  TBottomButtonGridForm = class(TGridForm)
    pnlDataButtons: TPanel;
    btnAddData: TBitBtn;
    btnDeleteData: TBitBtn;
    btnEditData: TBitBtn;
    actSmartInsert: TAction;
    procedure actFormUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actSmartInsertExecute(Sender: TObject);
    procedure actSmartInsertUpdate(Sender: TObject);
  private
    FDefaultEditButton: Boolean;
  protected
    function GetAddButtonAction: TAddButtonAction; virtual;
    property DefaultEditButton: Boolean read FDefaultEditButton write FDefaultEditButton
      default True;
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

{ TBottomButtonGridForm }

procedure TBottomButtonGridForm.actFormUpdate(Sender: TObject);
begin
  inherited;

  btnEditData.Default:=
    FDefaultEditButton and
    (not pnlOKCancel.Visible);
end;

procedure TBottomButtonGridForm.FormCreate(Sender: TObject);
begin
  inherited;
  FDefaultEditButton:= True;
end;

procedure TBottomButtonGridForm.actSmartInsertExecute(Sender: TObject);
var
  SavedActionComponent: TComponent;
begin
  inherited;
  case GetAddButtonAction of
    abaInsertRecord:
      actInsertRecord.Execute;

    abaInsertMenu:
      begin
        SavedActionComponent:= actInsertMenu.ActionComponent;
        actInsertMenu.ActionComponent:= (Sender as TAction).ActionComponent;
        try
          actInsertMenu.Execute;
        finally
          actInsertMenu.ActionComponent:= SavedActionComponent;
        end;  { try }
      end
  else
    raise Exception.Create('Unknown AddButtonAction');
  end;  { case }
end;

procedure TBottomButtonGridForm.actSmartInsertUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    ( (GetAddButtonAction = abaInsertRecord) and
      GetInsertRecordEnabled
    ) or
    ( (GetAddButtonAction = abaInsertMenu) and
      (GetInsertRecordEnabled or GetInsertLikeEnabled)
    );
end;

function TBottomButtonGridForm.GetAddButtonAction: TAddButtonAction;
begin
  Result:= abaInsertRecord;
end;

end.
