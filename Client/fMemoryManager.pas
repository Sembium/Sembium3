unit fMemoryManager;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponentBase, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, GridsEh,
  DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons,
  StdCtrls, ExtCtrls, Menus;

type
  TfmMemoryManager = class(TGridForm)
    cdsGridData_SUM_BLOCK_COUNT: TAggregateField;
    cdsGridData_SUM_TOTAL_ALLOCATED_SIZE: TAggregateField;
    cdsGridData_SUM_RESERVED_ADDRESS_SPACE: TAggregateField;
    cdsGridDataUSABLE_BLOCK_SIZE: TAbmesFloatField;
    cdsGridDataINTERNAL_ALLOCATED_SIZE: TAbmesFloatField;
    cdsGridDataUSABLE_ALLOCATED_SIZE: TAbmesFloatField;
    cdsGridDataRESERVED_ADDRESS_SPACE: TAbmesFloatField;
    cdsGridDataINTERNAL_BLOCK_SIZE: TAbmesFloatField;
    cdsGridDataBLOCK_COUNT: TAbmesFloatField;
    cdsGridData_SUM_BLOCK_COUNT2: TAggregateField;
    lblServerProcessAllocatedMemoryLabel: TLabel;
    lblServerProcessAllocated: TLabel;
    lblStringsSavedMemoryLabel: TLabel;
    lblStringsSavedMemory: TLabel;
    procedure cdsGridDataINTERNAL_BLOCK_SIZEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uUtils;

resourcestring
  SMediumBlocks = 'Среден';
  SLargeBlocks = 'Голям';
  
{$R *.dfm}

{ TfmMemoryManager }

procedure TfmMemoryManager.cdsGridDataAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  lblServerProcessAllocated.Caption:= FormatFloat(',0', OwnerData[0]);
  lblStringsSavedMemory.Caption:= FormatFloat(',0', OwnerData[1]);
end;

procedure TfmMemoryManager.cdsGridDataINTERNAL_BLOCK_SIZEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;

  case Sender.AsInteger of
    MediumMemoryBlocksCode:
      Text:= SMediumBlocks;
    LargeMemoryBlocksCode:
      Text:= SLargeBlocks;
  else
    Text:= FormatFloat((Sender as TAbmesFloatField).DisplayFormat, Sender.AsInteger);
  end;  { case }
end;

end.
