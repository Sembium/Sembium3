unit fMLMSOperationEdit;

interface
                                   
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fSMVSOperationEdit, DB, Menus, DBClient, AbmesClientDataSet,
  JvButtons, ImgList, ActnList, JvDBLookup, StdCtrls, Mask, DBCtrls, Buttons,
  ExtCtrls, fBaseFrame, fDBFrame, fFieldEditFrame,
  ToolWin, ComCtrls, AbmesDBCheckBox,
  AbmesFields, fTreeNodeFieldEditFrame, fDeptFieldEditFrame,
  fDeptFieldEditFrameBald, fProductFieldEditFrame,
  fProductFieldEditFrameBald, JvComponent, JvCaptionButton, JvExControls,
  JvExMask, JvToolEdit, JvDBControls, JvComponentBase, fEnumFieldEditFrame,
  fProfessionFieldEditFrame, fProfessionFieldEditFrameBald,
  fTreeOnlyNodeFieldEditFrame, System.Actions;

type
  TfmMLMSOperationEdit = class(TfmSMVSOperationEdit)
    procedure btnDocsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uDocUtils, fXModelUnapprove;

{$R *.dfm}

{ TfmMLMSOperationEdit }

procedure TfmMLMSOperationEdit.btnDocsClick(Sender: TObject);
begin
  dmDocClient.DSOpenDoc(EditMode, btnDocs, dotRealOperation,
    dsData.DataSet.FieldByName('DOC_BRANCH_CODE'),
    dsData.DataSet.FieldByName('DOC_CODE'),
    dsData.DataSet.FieldByName('MLMS_OPERATION_VARIANT_NO').AsInteger);
end;

procedure TfmMLMSOperationEdit.FormCreate(Sender: TObject);
begin
  inherited;
  Prefix:= 'MLMS';
  UnapproveFormClass:= TfmXModelUnapprove;
end;

end.
