unit fPrecisionLevel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, DBClient, AbmesClientDataSet, JvComponentBase,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls,
  fBaseFrame, fDBFrame, fFieldEditFrame, fColor;

type
  TfmPrecisionLevel = class(TBevelEditForm)
    lblNo: TLabel;
    edtNo: TDBEdit;
    edtName: TDBEdit;
    lblName: TLabel;
    frPrecisionLevelColor: TfrColor;
    frPrecisionLevelBackgroundColor: TfrColor;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfmPrecisionLevel.FormCreate(Sender: TObject);
begin
  inherited;
  frPrecisionLevelColor.FieldNames:= 'COLOR';
  frPrecisionLevelBackgroundColor.FieldNames:= 'BACKGROUND_COLOR';
end;

end.
