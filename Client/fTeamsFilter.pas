unit fTeamsFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvButtons, ActnList, JvDBLookup, Buttons, StdCtrls, ExtCtrls, DBCtrls,
  Mask, fBaseFrame, fDBFrame, fFieldEditFrame, fTreeNodeFilter, fDeptFilter,
  JvComponent, JvCaptionButton, JvExControls, JvComponentBase;

type
  TfmTeamsFilter = class(TFilterForm)
    frDeptFilter: TfrDeptFilter;
    grpTeamCode: TGroupBox;
    edtTeamNo: TDBEdit;
    lblTeamNo: TLabel;
    lblTeamName: TLabel;
    edtTeamName: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  dMain;

{$R *.dfm}

{ TfmTeamsFilter }

procedure TfmTeamsFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frDeptFilter.FieldNames:= 'CHOSEN_DEPTS';
end;

end.
