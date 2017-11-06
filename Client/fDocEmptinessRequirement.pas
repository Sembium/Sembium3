unit fDocEmptinessRequirement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fRequirementAbstract, DB, DBClient, AbmesClientDataSet,
  JvComponentBase, JvCaptionButton, ActnList, StdCtrls, ExtCtrls, DBCtrls,
  Buttons, AbmesFields;

type
  TfmDocEmptinessRequirement = class(TfmRequirementAbstract)
    cdsRequirementsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    cdsRequirementsDOC_EMPTINESS_REQUIREMENT_NAME: TAbmesWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses dMain;

{$R *.dfm}

end.
