unit fTreeNomWithParamsAndPrefixAndSuffixEditForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fTreeNomWithParamsEditForm, ImgList, ParamDataSet, ActnList, Db,
  DBClient, AbmesClientDataSet, StdCtrls, Mask, DBCtrls, GridsEh, DBGridEh,
  AbmesDBGrid, ColorNavigator, Buttons, ExtCtrls, AbmesFields, Menus,
  JvButtons, ComCtrls, ToolWin, JvComponent, JvCaptionButton,
  JvComponentBase, DBGridEhGrouping;
                                                  
type
  TTreeNomWithParamsAndPrefixAndSuffixEditForm = class(TTreeNomWithParamsEditForm)
    pnlPreffixAndSuffix: TPanel;
    lblPrefix: TLabel;
    edtPrefix: TDBEdit;
    lblSuffix: TLabel;
    edtSuffix: TDBEdit;
    procedure edtPrefixChange(Sender: TObject);
  private
    { Private declarations }
  protected
    function GetNodeNameFromParams(ANodeNameFromParams: string): string; override;
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

{ TTreeNomWithParamsAndPrefixAndSuffixEditForm }

procedure TTreeNomWithParamsAndPrefixAndSuffixEditForm.edtPrefixChange(
  Sender: TObject);
begin
  inherited;
  if (dsData.DataSet.State in dsEditModes) then
    CalcName(False);
end;

function TTreeNomWithParamsAndPrefixAndSuffixEditForm.GetNodeNameFromParams(
  ANodeNameFromParams: string): string;
begin
  Result:= edtPrefix.Text + ANodeNameFromParams + edtSuffix.Text;
end;

end.
