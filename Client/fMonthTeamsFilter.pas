unit fMonthTeamsFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvButtons, ActnList, JvDBLookup, Buttons, StdCtrls, ExtCtrls, fBaseFrame,
  fDBFrame, fFieldEditFrame, fTreeNodeFilter, fDeptFilter,
  Mask, DBCtrls, JvComponent, JvCaptionButton, JvExControls,
  JvComponentBase, fDateIntervalFrame;

type
  TfmMonthTeamsFilter = class(TFilterForm)
    frDeptFilter: TfrDeptFilter;
    grpTeamCode: TGroupBox;
    cbTeam: TJvDBLookupCombo;
    edtTeamNo: TDBEdit;
    lblTeamNo: TLabel;
    lblTeamName: TLabel;
    gbDateInterval: TGroupBox;
    frMonthInterval: TfrDateIntervalFrame;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

{ TfmMonthTeamsFilter }

procedure TfmMonthTeamsFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frDeptFilter.FieldNames:= 'CHOSEN_DEPTS';
  frMonthInterval.FieldNames:= 'BEGIN_MONTH_DATE;END_MONTH_DATE';
  frMonthInterval.ValidateMonthInterval:= True;
end;

end.
