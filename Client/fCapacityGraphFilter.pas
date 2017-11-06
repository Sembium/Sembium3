unit fCapacityGraphFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fCapacityAbstractFilter, DB, AbmesFields, DBClient,
  AbmesClientDataSet, JvButtons, ActnList, fProductFilter,
  fParamProductFilter, fBaseFrame, fDBFrame, fFieldEditFrame,
  fTreeNodeFilter, fDeptFilter, DBCtrls, StdCtrls, Mask, JvToolEdit,
  JvDBControls, ComCtrls, JvDBLookup, Buttons, ExtCtrls,
  fDateUnitsIntervalEditFrame, JvComponent, JvCaptionButton, JvExControls,
  JvComponentBase, AbmesDBCheckBox, JvExStdCtrls, JvDBCombobox, JvCombobox;

type
  TfmCapacityGraphFilter = class(TfmCapacityAbstractFilter)
  private
    { Private declarations }
  protected
    function GetFilterFormVariantCode: Integer; override;
  public
    { Public declarations }
  end;

implementation

uses
  uAspectTypes;

{$R *.dfm}

{ TfmCapacityGraphFilter }

function TfmCapacityGraphFilter.GetFilterFormVariantCode: Integer;
begin
  Result:= AspectTypeToInt(AspectType);
end;

end.
