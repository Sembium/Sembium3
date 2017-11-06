unit fDocItemStorageType;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fEditForm, Data.DB, Datasnap.DBClient, AbmesClientDataSet, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, fBevelEditForm, Vcl.Mask, Vcl.DBCtrls;

type
  TfmDocItemStorageType = class(TBevelEditForm)
    lblNo: TLabel;
    edtNo: TDBEdit;
    lblDocItemStorageTypeName: TLabel;
    edtName: TDBEdit;
    edtSelectCommand: TDBEdit;
    lblSelectCommand: TLabel;
    edtViewCommand: TDBEdit;
    lblViewCommand: TLabel;
    edtEditCommand: TDBEdit;
    lblEditCommand: TLabel;
    lblMacros: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
