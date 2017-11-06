unit fEducation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, fBevelEditForm, Mask, DBCtrls,
  JvComponent, JvCaptionButton, JvComponentBase;

type
  TfmEducation = class(TBevelEditForm)
    lblEducationCode: TLabel;
    lblEducationShortName: TLabel;
    lblEducationName: TLabel;
    edtEducationCode: TDBEdit;
    edtEducationShortName: TDBEdit;
    edtEducationName: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
