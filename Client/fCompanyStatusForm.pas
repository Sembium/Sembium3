unit fCompanyStatusForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvComponent, JvCaptionButton, ActnList, JvExControls,
  StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, fBaseFrame, fDBFrame,
  fFieldEditFrame, fDateFieldEditFrame, JvDBLookup, fBevelEditForm,
  DB, DBClient, AbmesClientDataSet, AbmesFields, JvComponentBase;

type
  TfmCompanyStatus = class(TBevelEditForm)
    gbRoleAndPriority: TGroupBox;
    edtRole: TDBEdit;
    edtPriority: TDBEdit;
    gbStatus: TGroupBox;
    gbFromDate: TGroupBox;
    frFromDate: TfrDateFieldEditFrame;
    cbStatus: TJvDBLookupCombo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  end;

implementation

uses
  dMain;

{$R *.dfm}

{ TfmCompanyStatus }

procedure TfmCompanyStatus.FormCreate(Sender: TObject);
begin
  inherited;
  frFromDate.FieldNames:= 'STATUS_DATE';
end;

end.


