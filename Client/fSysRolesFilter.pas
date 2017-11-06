unit fSysRolesFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponentBase, JvCaptionButton, ActnList, JvExControls, JvDBLookup, Buttons,
  StdCtrls, ExtCtrls, fBaseFrame, fDBFrame, fFieldEditFrame, fActivityFieldEditFrame,
  fEnumFieldEditFrame, AbmesDBCheckBox, uSysRoleClientUtils, DBCtrls;

type
  TfmSysRolesFilter = class(TFilterForm)
    frActivity: TfrActivityFieldEditFrame;
    rgSysRoleType: TDBRadioGroup;
    cdsSysRoleTypes: TAbmesClientDataSet;
    cdsSysRoleTypesSYS_ROLE_TYPE_CODE: TAbmesFloatField;
    cdsSysRoleTypesSYS_ROLE_TYPE_NAME: TAbmesWideStringField;
    cdsSysRoleTypesSYS_ROLE_TYPE_ABBREV: TAbmesWideStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfmSysRolesFilter.FormCreate(Sender: TObject);
begin
  inherited;
  cdsSysRoleTypes.Open;
  try
    rgSysRoleType.Columns:= cdsSysRoleTypes.RecordCount;
    while not cdsSysRoleTypes.Eof do
      begin
        if (IntToSysRoleType(cdsSysRoleTypesSYS_ROLE_TYPE_CODE.AsInteger) <> srtInternal) then
          begin
            rgSysRoleType.Items.Add(Format('%s (%s)', [cdsSysRoleTypesSYS_ROLE_TYPE_NAME.AsString,
              cdsSysRoleTypesSYS_ROLE_TYPE_ABBREV.AsString]));
            rgSysRoleType.Values.Add(cdsSysRoleTypesSYS_ROLE_TYPE_CODE.AsString);
          end;  { if }

        cdsSysRoleTypes.Next;
      end;  { while }
  finally
    cdsSysRoleTypes.Close
  end;  { try }
end;

end.
