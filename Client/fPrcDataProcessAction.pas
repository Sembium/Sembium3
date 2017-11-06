unit fPrcDataProcessAction;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, ActnList, StdCtrls, Buttons, ExtCtrls, fBaseFrame, fDBFrame,
  fFieldEditFrame, fEnumFieldEditFrame, fProcessActionFieldEditFrame,
  uClientTypes;

type
  TfmPrcDataProcessAction = class(TEditForm)
    frProcessAction: TfrProcessActionFieldEditFrame;
  private
    { Private declarations }
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure ChangeEditMode(var AEditMode: TEditMode); override;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

{ TfmPrcDataProcessAction }

procedure TfmPrcDataProcessAction.ChangeEditMode(var AEditMode: TEditMode);
begin
  inherited ChangeEditMode(AEditMode);
  if (AEditMode = emEdit) then
    AEditMode:= emReadOnly;
end;

procedure TfmPrcDataProcessAction.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frProcessAction) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;  { if }

  inherited SetDBFrameReadOnly(AFrame);
end;

end.
