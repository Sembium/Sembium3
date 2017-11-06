unit fOccupationShift;
                                    
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, DBClient, AbmesClientDataSet, JvComponent,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, DBCtrls,
  fBaseFrame, fDBFrame, fFieldEditFrame, fDateIntervalFrame,
  AbmesDBCheckBox, JvDBLookup, JvExControls;

type
  TfmOccupationShift = class(TBevelEditForm)
    frDateIntervalFrame: TfrDateIntervalFrame;
    lblDateInterval: TLabel;
    cbShift: TJvDBLookupCombo;
    lblShift: TLabel;
    chbAffectsEmployeeAvailability: TAbmesDBCheckBox;
    procedure actFormUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uClientTypes, uClientUtils;

{$R *.dfm}

procedure TfmOccupationShift.actFormUpdate(Sender: TObject);
begin
  inherited;
  cbShift.ReadOnly:= (EditMode = emReadOnly);
  cbShift.Color:= ReadOnlyColors[(EditMode = emReadOnly)];
end;

end.
