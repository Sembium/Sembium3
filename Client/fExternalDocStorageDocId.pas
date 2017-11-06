unit fExternalDocStorageDocId;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fEditForm, Data.DB, Datasnap.DBClient, AbmesClientDataSet, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, fBevelEditForm, Vcl.Mask, Vcl.DBCtrls;

type
  TfmExternalDocStorageDocId = class(TBevelEditForm)
    edtExternalDocStorageDocId: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
