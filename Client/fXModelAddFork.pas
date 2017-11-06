unit fXModelAddFork;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fButtonForm, JvButtons, ActnList, StdCtrls, Buttons, ExtCtrls,
  dDocClient, JvComponent, JvCaptionButton, JvComponentBase;

type
  TfmXModelAddFork = class(TButtonForm)
    chbCreateLike: TCheckBox;
    chbWasteFork: TCheckBox;
    bvlMain: TBevel;
  private
    { Private declarations }
  public
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ACreateLikePtr: PBoolean = nil; AWasteFork: PBoolean = nil): Boolean;
  end;

implementation

{$R *.dfm}

{ TfmXModelAddFork }

class function TfmXModelAddFork.ShowForm(AdmDocClient: TdmDocClient;
  ACreateLikePtr, AWasteFork: PBoolean): Boolean;
var
  f: TfmXModelAddFork;
begin
  Assert(Assigned(ACreateLikePtr));
  Assert(Assigned(AWasteFork));

  f:= Create(Application);
  try
    f.SetDataParams(AdmDocClient);
    Result:= (f.InternalShowForm = mrOk);

    if Result then
      begin
        ACreateLikePtr^:= f.chbCreateLike.Checked;
        AWasteFork^:= f.chbWasteFork.Checked;
      end;
  finally
    f.ReleaseForm;
  end;
end;

end.
