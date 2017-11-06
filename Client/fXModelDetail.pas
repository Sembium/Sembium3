unit fXModelDetail;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fSpecDetail, Db, DBClient, AbmesClientDataSet, ImgList, ActnList,
  StdCtrls, AbmesDBCheckBox, fBaseFrame, fDBFrame, fFieldEditFrame,
  Mask, DBCtrls, Buttons, ExtCtrls, Menus,
  JvButtons, fTreeNodeFieldEditFrame, fProductFieldEditFrame,
  fDateFieldEditFrame, JvComponent, JvCaptionButton, JvComponentBase;

type
  TfmXModelDetail = class(TfmSpecDetail)
    lblForkNo: TLabel;
    edtForkNo: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private                                                                   
    { Private declarations }
  public
    { Public declarations }
  protected
    function IsRoot: Boolean; override;               
  end;

implementation

uses
  uClientUtils;

{$R *.DFM}

{ TfmXModelDetail }

function TfmXModelDetail.IsRoot: Boolean;
begin
  with dsData.DataSet do
    Result:=
      FieldByName('PARENT_MLL_OBJECT_CODE').IsNull and
      FieldByName('FORK_0_MLL_OBJECT_CODE').IsNull;
end;

procedure TfmXModelDetail.FormClose(Sender: TObject;
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

procedure TfmXModelDetail.FormCreate(Sender: TObject);
begin
  inherited;
  frStructChangeDate.FieldNames:= '';
end;

end.
