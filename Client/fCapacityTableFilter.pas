unit fCapacityTableFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fCapacityAbstractFilter, DB, AbmesFields, DBClient,
  AbmesClientDataSet, JvButtons, ActnList, fProductFilter,
  fParamProductFilter, fBaseFrame, fDBFrame, fFieldEditFrame,
  fTreeNodeFilter, fDeptFilter, DBCtrls, StdCtrls, Mask, JvToolEdit,
  JvDBControls, ComCtrls, JvDBLookup, Buttons, ExtCtrls,
  fDateUnitsIntervalEditFrame, JvComponent, JvCaptionButton, JvExControls,
  JvComponentBase, AbmesDBCheckBox, JvExStdCtrls, JvDBCombobox;

type
  TfmCapacityTableFilter = class(TfmCapacityAbstractFilter)
    rgExcessHoursState: TDBRadioGroup;
    rgFreeHoursState: TDBRadioGroup;
    rgSupportingHoursState: TDBRadioGroup;
    rgDevelopingHoursState: TDBRadioGroup;
    pnlExcessHoursStateColor: TPanel;
    pnlSupportingHoursStateColor: TPanel;
    pnlDevelopingHoursStateColor: TPanel;
    pnlFreeHoursStateColor: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
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

{ TfmCapacityTableFilter }

procedure TfmCapacityTableFilter.actFormUpdate(Sender: TObject);
begin
  inherited;
  rgSupportingHoursState.Visible:= (AspectType = atRealization);
  pnlSupportingHoursStateColor.Visible:= (AspectType = atRealization);
end;

procedure TfmCapacityTableFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frDateUnitsInterval.IsBeginDateOriginOnIntervalChange:= True;
end;

function TfmCapacityTableFilter.GetFilterFormVariantCode: Integer;
begin
  Result:= AspectTypeToInt(AspectType);
end;

end.
