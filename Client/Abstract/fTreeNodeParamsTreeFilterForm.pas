unit fTreeNodeParamsTreeFilterForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fTreeNodeParamFilterForm, DB, AbmesFields, Menus, DBClient,
  AbmesClientDataSet, JvButtons, ImgList, ActnList, GridsEh, DBGridEh,
  AbmesDBGrid, DBCtrls, ColorNavigator, StdCtrls, Buttons, ExtCtrls,
  uClientTypes, uTreeNodeParams, dDocClient, JvDBLookup, JvComponent,
  JvCaptionButton, JvExControls, JvComponentBase, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, System.Actions, EhLibVCL, DBAxisGridsEh,
  Vcl.ComCtrls, Vcl.ToolWin;

type
  TTreeNodeParamsTreeFilterForm = class(TTreeNodeParamFilterForm)
  private
    FTreeNodeCode: Integer;
  protected
    function TreeNodeCode: Integer; override;
  public
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ATreeNodeParams: TTreeNodeParams = nil;
      ATreeNodeCode: Integer = 0): Boolean; reintroduce; virtual;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ATreeNodeParams: TTreeNodeParams = nil;
      ATreeNodeCode: Integer = 0); reintroduce; virtual;
  end;

type
  TTreeNodeParamsTreeFilterFormClass = class of TTreeNodeParamsTreeFilterForm;

implementation

{$R *.dfm}

{ TfmTreeNodeParamsFilter }

procedure TTreeNodeParamsTreeFilterForm.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ATreeNodeParams: TTreeNodeParams;
  ATreeNodeCode: Integer);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ATreeNodeParams);
  FTreeNodeCode:= ATreeNodeCode;
end;

class function TTreeNodeParamsTreeFilterForm.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ATreeNodeParams: TTreeNodeParams;
  ATreeNodeCode: Integer): Boolean;
var
  f: TTreeNodeParamsTreeFilterForm;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ATreeNodeParams, ATreeNodeCode);
    f.InternalShowForm;
    Result:= f.Refilter;
  finally
    f.ReleaseForm;
  end;
end;

function TTreeNodeParamsTreeFilterForm.TreeNodeCode: Integer;
begin
  Result:= FTreeNodeCode;
end;

end.
