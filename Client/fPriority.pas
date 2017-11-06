unit fPriority;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fEditForm, Db, DBClient, ImgList, ActnList, StdCtrls, Buttons, ExtCtrls,
  Mask, DBCtrls, AbmesClientDataSet, Menus, JvButtons, fBevelEditForm,
  fBaseFrame, fDBFrame, fFieldEditFrame, fColor, JvComponent,
  JvCaptionButton;

type
  TfmPriority = class(TBevelEditForm)
    edtNo: TDBEdit;
    edtName: TDBEdit;
    lblCode: TLabel;
    lblName: TLabel;
    frPriorityColor: TfrColor;
    frPriorityBackgroundColor: TfrColor;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uUtils, uColorConsts;

{$R *.DFM}

{ TfmPriority }

procedure TfmPriority.FormCreate(Sender: TObject);
begin
  inherited;
  frPriorityColor.FieldNames:= 'PRIORITY_COLOR';
  frPriorityBackgroundColor.FieldNames:= 'PRIORITY_BACKGROUND_COLOR';
end;

end.
