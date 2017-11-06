unit fXModelMaterial;

interface         

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fSpecMaterial, Db, DBClient, AbmesClientDataSet, ImgList, ActnList,
  StdCtrls, AbmesDBCheckBox, fBaseFrame, fDBFrame, fFieldEditFrame,
  Buttons, ExtCtrls, Mask, DBCtrls, Menus,
  JvButtons, fTreeNodeFieldEditFrame, fProductFieldEditFrame,
  fDateFieldEditFrame, JvComponent, JvCaptionButton, JvComponentBase;

type
  TfmXModelMaterial = class(TfmSpecMaterial)
    lblForkNo: TLabel;
    edtForkNo: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    function IsRoot: Boolean; override;
  public
    { Public declarations }
  end;

implementation
                     
{$R *.DFM}

{ TfmXModelMaterial }

function TfmXModelMaterial.IsRoot: Boolean;
begin
  with dsData.DataSet do
    Result:=
      FieldByName('PARENT_MLL_OBJECT_CODE').IsNull and
      FieldByName('FORK_0_MLL_OBJECT_CODE').IsNull;
end;

procedure TfmXModelMaterial.FormCreate(Sender: TObject);
begin
  inherited;
  frStructChangeDate.FieldNames:= '';
end;

end.
