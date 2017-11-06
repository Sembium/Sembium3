unit fNotes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelEditForm, DB, DBClient, AbmesClientDataSet, JvComponent,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, DBCtrls,
  JvComponentBase, uClientTypes;

type
  TfmNotes = class(TBevelEditForm)
    moNotes: TDBMemo;
    procedure actFormUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    class function EditNotesField(ANotesField: TField; AEditMode: TEditMode): Boolean;
  end;

implementation

uses
  uClientUtils, uUtils, AbmesFields;

{$R *.dfm}

{ TfmNotes }

procedure TfmNotes.actFormUpdate(Sender: TObject);
begin
  inherited;
  moNotes.Color:= ReadOnlyColors[(EditMode = emReadOnly)];
end;

class function TfmNotes.EditNotesField(ANotesField: TField;
  AEditMode: TEditMode): Boolean;
var
  cdsNotes: TAbmesClientDataSet;
  fld: TField;
  em: TEditMode;
begin
  Assert(Assigned(ANotesField));

  cdsNotes:= TAbmesClientDataSet.Create(Application);
  try
    fld:= TAbmesWideStringField.Create(cdsNotes);
    try
      fld.FieldName:= 'NOTES';
      fld.Size:= 250;
      fld.DataSet:= cdsNotes;

      cdsNotes.CreateDataSet;
      try
        cdsNotes.AppendRecord([ANotesField.AsVariant]);

        if (AEditMode = emReadOnly) then
          em:= emReadOnly
        else
          em:= emEdit;

        Result:= TfmNotes.ShowForm(nil, cdsNotes, em);

        if Result then
          begin
            CheckEditMode(ANotesField.DataSet);
            ANotesField.Assign(cdsNotes.FieldByName('NOTES'));
          end;
      finally
        cdsNotes.Close;
      end;
    finally
      FreeAndNil(fld);
    end;
  finally
    FreeAndNil(cdsNotes);
  end;
end;

end.
 
