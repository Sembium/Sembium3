unit fTreeNomWithParamsAndPrefixAndSuffixForm;     

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fTreeNomWithParamsForm, Menus, Db, DBClient, ImgList, ActnList, ComCtrls,
  ColorNavigator, ToolWin, Buttons, ExtCtrls, uClientTypes, AbmesClientDataSet,
  DBGridEh, AbmesDBGrid, GridsEh, StdCtrls, TreeParentsComboBox, DBCtrls,
  AbmesFields, fBaseFrame, fDBFrame, fTreeNodeParamsFrame, JvButtons,
  JvComponent, JvCaptionButton, JvComponentBase, ParamDataSet, AbmesDBCheckBox;

type
  TTreeNomWithParamsAndPrefixAndSuffixForm = class(TTreeNomWithParamsForm)
    cdsNodeChildrenNAME_SUFFIX: TAbmesWideStringField;
    cdsNodeChildrenNAME_PREFIX: TAbmesWideStringField;
    procedure cdsNodeChildrenNAME_PREFIXSetText(Sender: TField;
      const Text: String);
  private
    { Private declarations }
  protected
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
  public
    { Public declarations }
  end;

implementation

uses
  fTreeNomWithParamsAndPrefixAndSuffixEditForm, uUtils, dMain;

{$R *.DFM}

{ TTreeNomWithParamsAndPrefixAndSuffixForm }

function TTreeNomWithParamsAndPrefixAndSuffixForm.ShowEditForm(
  AEditMode: TEditMode): Boolean;
begin
  Assert(Assigned(ChildEditFormClass));
  Assert(ChildEditFormClass.InheritsFrom(TTreeNomWithParamsAndPrefixAndSuffixEditForm));

  Result:= inherited ShowEditForm(AEditMode);
end;

procedure TTreeNomWithParamsAndPrefixAndSuffixForm.cdsNodeChildrenNAME_PREFIXSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsString:= ReplaceLastChars(Text, #32, #160);
end;

end.
