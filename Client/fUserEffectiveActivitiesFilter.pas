unit fUserEffectiveActivitiesFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponentBase, JvCaptionButton, ActnList, JvExControls, JvDBLookup, Buttons,
  StdCtrls, ExtCtrls, fBaseFrame, fDBFrame, fFieldEditFrame, fDateFieldEditFrame;

type
  TfmUserEffectiveActivitiesFilter = class(TFilterForm)
    gbToDate: TGroupBox;
    frToDate: TfrDateFieldEditFrame;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

{ TfmUserEffectiveActivitiesFilter }

procedure TfmUserEffectiveActivitiesFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frToDate.FieldNames:= 'TO_DATE';
end;

end.
