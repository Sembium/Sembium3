unit fProductFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fTreeNodeGridFilter, DB, ActnList, AbmesFields, uClientTypes, DBClient,
  AbmesClientDataSet, Buttons, GridsEh, DBGridEh, AbmesDBGrid, ExtCtrls,
  StdCtrls, uProducts, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, System.Actions, EhLibVCL, DBAxisGridsEh;

const
  ProductNoColumnWidth = 75;

type
  [NodeNoColumnWidth(ProductNoColumnWidth)]
  TfrProductFilter = class(TfrTreeNodeGridFilter)
    procedure cdsChosenNodesBeforePost(DataSet: TDataSet);
    procedure actFrameUpdate(Sender: TObject);
  private
    FCheckForWorkMeasure: Boolean;
    FProductClass: TProductClass;
  protected
    procedure DoNodeFieldChanged; override;
    function EditNodeField: Integer; override;
    function ShowNodeEditForm(em: TEditMode): Boolean; override;
    function CheckNodeRelations(ChosenNode: Integer): Integer; override;
  public
    constructor Create(AOwner: TComponent); override;

    procedure Initialize; override;
    property CheckForWorkMeasure: Boolean read FCheckForWorkMeasure write FCheckForWorkMeasure;
    property ProductClass: TProductClass read FProductClass write FProductClass default pcNormal;
  end;

implementation

uses
  dMain, VDBConsts, AbmesDialogs, uUtils, uClientUtils, fProductEdit,
  uTreeNodes, fTreeSelectForm, uTreeClientUtils, uProductClientUtils;

{$R *.dfm}

resourcestring
  SCantAddNodeBecause = 'Не можете да добавите елемента, защото %s';
  SNoMeasure = 'не му е въведена работна мерна единица';

{ TfrProductFilter }

procedure TfrProductFilter.Initialize;
begin
  inherited;
  FCheckForWorkMeasure:= False;
end;

function TfrProductFilter.CheckNodeRelations(ChosenNode: Integer): Integer;
begin
  Result:= dmMain.SvrProductsTree.CheckProductRelation(cdsChosenNodes.FieldByName('NODE_CODE').AsInteger,ChosenNode);
end;

constructor TfrProductFilter.Create(AOwner: TComponent);
begin
  inherited;
  FProductClass:= pcNormal;
end;

procedure TfrProductFilter.DoNodeFieldChanged;
begin
  DoProductFieldChanged(
    cdsChosenNodes.FieldByName('NODE_CODE'),
    cdsChosenNodes.FieldByName('NODE_NAME'),
    cdsChosenNodes.FieldByName('NODE_NO'));
end;

function TfrProductFilter.EditNodeField: Integer;
begin
  Result:= EditProductField(cdsChosenNodes.FieldByName('NODE_CODE'), tnRootProductCode, tdsAll, ProductClass);
end;

function TfrProductFilter.ShowNodeEditForm(em: TEditMode): Boolean;
begin
  Result:= TfmProductEdit.ShowForm(nil, cdsChosenNodes, em, doNone, ProductClass);
end;

procedure TfrProductFilter.actFrameUpdate(Sender: TObject);
begin
  inherited;
  if (ProductClass <> pcNormal) and
     (grpTreeNodeFilter.Caption = ' ' + ProductClassCommonNames[pcNormal] + ' ') then
    grpTreeNodeFilter.Caption:= ' ' + ProductClassCommonNames[ProductClass] + ' ';
end;

procedure TfrProductFilter.cdsChosenNodesBeforePost(DataSet: TDataSet);
begin
  if DataSet.Modified and
     CheckForWorkMeasure and
     not GetProductHasWorkMeasure(cdsChosenNodes.FieldByName('NODE_CODE').AsInteger) then
    raise Exception.CreateFmt(SCantAddNodeBecause, [SNoMeasure]);

  inherited;
end;

end.
