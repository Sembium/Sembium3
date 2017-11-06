unit fInnerButtonGridForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fGridForm, ActnList, Db, DBClient, GridsEh, DBCtrls, StdCtrls,
  Buttons, ExtCtrls, ImgList, ColorNavigator,
  ParamDataSet, AbmesClientDataSet, DBGridEh, AbmesDBGrid, Menus, JvButtons,
  ComCtrls, ToolWin, AbmesFields, JvComponent, JvCaptionButton,
  JvComponentBase, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  System.Actions, EhLibVCL, DBAxisGridsEh;

type
  TInnerButtonGridForm = class(TGridForm)
    pnlDataButtons: TPanel;
    btnAddData: TBitBtn;
    btnDeleteData: TBitBtn;
    btnEditData: TBitBtn;
    procedure actFormUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

{ TInnerButtonGridForm }

procedure TInnerButtonGridForm.actFormUpdate(Sender: TObject);
begin
  inherited;

  btnEditData.Default:=
    not pnlOKCancel.Visible;
end;

end.
  
