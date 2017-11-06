unit fSpecificationPrintOptions;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, JvButtons, ActnList, StdCtrls, Buttons,
  ExtCtrls, JvComponent, JvCaptionButton, fButtonForm, JvComponentBase;

type
  TfmSpecificationPrintOptions = class(TButtonForm)
    chbPrintNotes: TCheckBox;
    rgPaperSize: TRadioGroup;
    chbPrintInvestedValues: TCheckBox;
    bvlMain: TBevel;
    chbProductNos: TCheckBox;
  private
    FHasShowInvestedValueActivity: Boolean;
  public
      procedure SetDataParams(AHasShowInvestedValueActivity: Boolean); reintroduce; virtual;
    class function ShowForm(AHasShowInvestedValueActivity: Boolean; out APrintOnA3: Boolean; out APrintProductNos: Boolean;
      out APrintNotes: Boolean; out APrintInvestedValues: Boolean): Boolean;
    procedure Initialize; override;
  end;

implementation

uses dMain, uUserActivityConsts;

{$R *.dfm}

{ TfmSpecificationPrintOptions }

procedure TfmSpecificationPrintOptions.SetDataParams(
  AHasShowInvestedValueActivity: Boolean);
begin
  inherited SetDataParams;
  FHasShowInvestedValueActivity:= AHasShowInvestedValueActivity;
end;

class function TfmSpecificationPrintOptions.ShowForm(
  AHasShowInvestedValueActivity: Boolean; out APrintOnA3, APrintProductNos, APrintNotes,
  APrintInvestedValues: Boolean): Boolean;
var
  f: TfmSpecificationPrintOptions;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AHasShowInvestedValueActivity);
    Result:= (f.InternalShowForm = mrOK);

    if Result then
      begin
        APrintOnA3:= (f.rgPaperSize.ItemIndex = 0);
        APrintProductNos:= f.chbProductNos.Checked;
        APrintNotes:= f.chbPrintNotes.Checked;
        APrintInvestedValues:= f.chbPrintInvestedValues.Checked;
      end;   { if }
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmSpecificationPrintOptions.Initialize;
begin
  inherited;

  chbPrintInvestedValues.Enabled:= FHasShowInvestedValueActivity;
end;

end.
