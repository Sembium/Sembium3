unit fCurrentDept;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, fBaseFrame, fDBFrame,
  fFieldEditFrame, AbmesFields, JvDBLookup,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, JvComponent,
  JvCaptionButton, JvComponentBase;

type
  TfmCurrentDept = class(TEditForm)
    cdsDataEMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCURRENT_DEPT_CODE: TAbmesFloatField;
    cdsDataCURRENT_DEPT_NAME: TAbmesWideStringField;
    cdsDataCURRENT_DEPT_IDENTIFIER: TAbmesWideStringField;
    frCurrentDept: TfrDeptFieldEditFrame;
    procedure FormCreate(Sender: TObject);
    procedure actApplyUpdatesExecute(Sender: TObject);
  private
    { Private declarations }
  protected
    class function CanUseDocs: Boolean; override;
  public
    { Public declarations }
  end;

implementation

uses
  dMain, uUserActivityConsts;

{$R *.dfm}

{ TfmCurrentDept }

procedure TfmCurrentDept.FormCreate(Sender: TObject);
begin
  inherited;
  frCurrentDept.FieldNames:= 'CURRENT_DEPT_CODE';
end;

procedure TfmCurrentDept.actApplyUpdatesExecute(Sender: TObject);
begin
  if not LoginContext.HasUserActivity(uaChangeCurrentDept) then
    begin
      Assert(LoginContext.HasUserActivity(uaChangeCurrentOccupationWorkDept));
      LoginContext.CheckUserWorkDept(cdsDataCURRENT_DEPT_CODE.AsInteger);
    end;

  inherited;
  dmMain.RefreshLoginContext;
end;

class function TfmCurrentDept.CanUseDocs: Boolean;
begin
  Result:= True;
end;

end.
