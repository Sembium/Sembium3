unit fSpecAndXModelRecursivePrintOptions;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fSpecificationPrintOptions, Menus, JvButtons, ActnList,
  StdCtrls, ExtCtrls, Buttons, ComCtrls, JvComponentBase, JvCaptionButton;

type
  TfmSpecAndXModelRecursivePrintOptions = class(TfmSpecificationPrintOptions)
    trbMinWidth: TTrackBar;
    lblMinDepth: TLabel;
    lblMinWidth: TLabel;
    lblMinWidthMin: TLabel;
    lblMinWidthMax: TLabel;
    procedure trbMinWidthChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateMinWidthDisplay;
  public
    class function ShowForm(AHasShowInvestedValueActivity: Boolean; out APrintOnA3: Boolean; out APrintProductNos: Boolean;
      out APrintNotes: Boolean; out APrintInvestedValues: Boolean; out AMinWidth: Integer): Boolean;
  end;

implementation

{$R *.dfm}

{ TfmSpecAndXModelRecursivePrintOptions }

class function TfmSpecAndXModelRecursivePrintOptions.ShowForm(
  AHasShowInvestedValueActivity: Boolean; out APrintOnA3, APrintProductNos, APrintNotes,
  APrintInvestedValues: Boolean; out AMinWidth: Integer): Boolean;
var
  f: TfmSpecAndXModelRecursivePrintOptions;
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
        AMinWidth:= f.trbMinWidth.Position;
      end;   { if }
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmSpecAndXModelRecursivePrintOptions.trbMinWidthChange(
  Sender: TObject);
begin
  inherited;
  UpdateMinWidthDisplay;
end;

procedure TfmSpecAndXModelRecursivePrintOptions.FormCreate(
  Sender: TObject);
begin
  inherited;
  UpdateMinWidthDisplay;
  lblMinWidthMin.Caption:= IntToStr(trbMinWidth.Min);
  lblMinWidthMax.Caption:= IntToStr(trbMinWidth.Max);
end;

procedure TfmSpecAndXModelRecursivePrintOptions.UpdateMinWidthDisplay;
begin
  lblMinWidth.Caption:= IntToStr(trbMinWidth.Position);
end;

end.
