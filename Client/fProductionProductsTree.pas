unit fProductionProductsTree;

interface                                               
                                                                         
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fProductsTree, DB, ImgList, AbmesFields, DBClient,
  AbmesClientDataSet, Menus, JvButtons, ActnList, fBaseFrame, fDBFrame,
  fTreeNodeParamsFrame, ComCtrls, GridsEh, DBGridEh, AbmesDBGrid, StdCtrls,
  TreeParentsComboBox, Buttons, DBCtrls, ColorNavigator, ToolWin, ExtCtrls,
  fTreeForm, JvComponent, JvCaptionButton, JvComponentBase, ParamDataSet,
  AbmesDBCheckBox;

type
  TfmProductionProductsTree = class(TfmProductsTree)
    cdsNodeChildrenIS_PRODUCTION_PRODUCT: TAbmesFloatField;
    pmChildren: TPopupMenu;
    miOpenChild: TMenuItem;
    N1: TMenuItem;
    miViewProductionProduct: TMenuItem;
    actViewProductionProduct: TAction;
    actShowNotProductionProducts: TAction;
    btnShowNotProductionProducts: TToolButton;
    tlbViewProductionProduct: TToolBar;
    btnViewProductionProduct: TToolButton;
    btnFilterParams2: TToolButton;
    cdsPrintTreeIS_PRODUCTION_PRODUCT: TAbmesFloatField;
    procedure actViewProductionProductUpdate(Sender: TObject);
    procedure actViewProductionProductExecute(Sender: TObject);
    procedure cdsNodeChildrenFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure actShowInactiveExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    function GetNodeImageIndex(ANodeType: Integer;
      ANodeImage: TNodeImage; ADataSet: TDataSet): Integer; override;
  public
    { Public declarations }
  end;

implementation

uses
  dMain, fTreeGridForm, fTreeNomForm, fProductionProduct, uClientTypes,
  uTreeNodes;                                                 

{$R *.dfm}

{ TfmProductionProductsTree }

function TfmProductionProductsTree.GetNodeImageIndex(ANodeType: Integer;
  ANodeImage: TNodeImage; ADataSet: TDataSet): Integer;
begin
  case ANodeType of
    2: Result:= 4;
    3: Result:= 3;
  else
    Result:= inherited GetNodeImageIndex(ANodeType, ANodeImage, ADataSet);
  end;
end;

procedure TfmProductionProductsTree.actViewProductionProductUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsNodeChildren.Active and
    (cdsNodeChildrenNODE_TYPE.AsInteger in [Ord(ntInstance), 3]);
end;

procedure TfmProductionProductsTree.actViewProductionProductExecute(
  Sender: TObject);
begin
  inherited;
  TfmProductionProduct.ShowForm(dmDocClient,
    cdsNodeChildrenNODE_ID.AsInteger, emReadOnly);
end;

procedure TfmProductionProductsTree.cdsNodeChildrenFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;

  Accept:=
    (actShowInactive.Checked or
     (not cdsNodeChildrenIS_INACTIVE.AsBoolean)) and
    (actShowNotProductionProducts.Checked or
     cdsNodeChildrenIS_PRODUCTION_PRODUCT.AsBoolean or
     (cdsNodeChildrenNODE_TYPE.AsInteger = Ord(ntClass)));
end;

procedure TfmProductionProductsTree.actShowInactiveExecute(
  Sender: TObject);
var
  b: TBookmark;
  SaveCursor: TCursor;
begin
  with Sender as TAction do
    begin
      Checked:= not Checked;

      SaveCursor:= Screen.Cursor;
      Screen.Cursor:= crSQLWait;
      try
        with cdsNodeChildren do
          begin
            DisableControls;
            try
              FDontShowParams:= True;
              try
                b:= Bookmark;
                try
                  Filtered:= False;
                  Filtered:= True;
                finally
                  try
                    Bookmark:= b;
                  except
                    // do nothing
                  end;  { try }
                end;  { try }
              finally
                FDontShowParams:= False;
                ShowCurrentNodeParams;
              end;  { try }
            finally
              EnableControls;
            end;  { try }
          end;  { with }
      finally
        Screen.Cursor:= SaveCursor;
      end;  { try SaveCursor }
    end;
end;

procedure TfmProductionProductsTree.FormCreate(Sender: TObject);
begin
  inherited;
  // nechoveshtina zaradi genialnia toolbar
  btnFilterParams2.Left:= btnShowInactive.Left;
  btnShowNotProductionProducts.Left:= sepOne.Left + 20;
  btnFilterParams2.Left:= 40;
  btnShowInactive.Left:= 60;
  btnFilterParams2.Left:= 40;
end;

end.                                                                         
