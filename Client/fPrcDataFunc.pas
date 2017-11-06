unit fPrcDataFunc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, ActnList, StdCtrls, Buttons, ExtCtrls, fBaseFrame, fDBFrame,
  fFieldEditFrame, fTreeNodeFieldEditFrame, fTreeOnlyNodeFieldEditFrame, fProcessFunctionFieldEditFrame,
  uClientTypes;

type
  TfmPrcDataFunc = class(TEditForm)
    frProcessFunction: TfrProcessFunctionFieldEditFrame;
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

{ TfmPrcDataFunc }

procedure TfmPrcDataFunc.ChangeEditMode(var AEditMode: TEditMode);
begin
  inherited ChangeEditMode(AEditMode);
  if (AEditMode = emEdit) then
    AEditMode:= emReadOnly;
end;

procedure TfmPrcDataFunc.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frProcessFunction) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;  { if }

  inherited SetDBFrameReadOnly(AFrame);
end;

end.
