unit fToolRequirement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fRequirementAbstract, DB, DBClient, AbmesClientDataSet,
  JvComponentBase, JvCaptionButton, ActnList, StdCtrls, ExtCtrls, DBCtrls,
  Buttons, AbmesFields;

type
  TfmToolRequirement = class(TfmRequirementAbstract)
    cdsRequirementsTOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsRequirementsTOOL_REQUIREMENT_NAME: TAbmesWideStringField;
  private
    { Private declarations }
  protected
    procedure DoApplyUpdates; override;
  public
    { Public declarations }
    procedure Finalize; override;
  end;

implementation

uses dMain;

{$R *.dfm}

{ TfmToolRequirement }

procedure TfmToolRequirement.DoApplyUpdates;
begin
//  inherited; do nothing
end;

procedure TfmToolRequirement.Finalize;
begin
//  inherited; do nothing
end;

end.
