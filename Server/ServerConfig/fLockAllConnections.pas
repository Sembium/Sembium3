unit fLockAllConnections;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvCombobox, Buttons, ExtCtrls, JvDBCombobox,
  uObjParams;

type
  TfmLockAllConnections = class(TForm)
    pnlMain: TPanel;
    pnlBottomButtons: TPanel;
    pnlOKCancel: TPanel;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    edtLockMessage: TEdit;
    lblLockMessage: TLabel;
    lblAccessBanType: TLabel;
    cbAccessBanType: TJvDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    function GetAccessBanType: TAccessBanType;
    function GetLockMessage: string;
  public
    property AccessBanType: TAccessBanType read GetAccessBanType;
    property LockMessage: string read GetLockMessage;
    procedure ReleaseForm;
    class function ShowForm(out AccessBanType: TAccessBanType; out LockMessage: string): Boolean;
  end;

implementation

uses
  DBConsts;

{$R *.dfm}

procedure TfmLockAllConnections.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (ModalResult = mrOk) and (cbAccessBanType.ItemIndex = -1) then
    begin
      ActiveControl:= cbAccessBanType;
      raise Exception.Create(Format(SFieldRequired, [lblAccessBanType.Caption]));
    end;  { if }
end;

procedure TfmLockAllConnections.FormCreate(Sender: TObject);
begin
  FillComboBoxWithAccessBanTypes(cbAccessBanType, False);
end;

function TfmLockAllConnections.GetAccessBanType: TAccessBanType;
begin
  if  (cbAccessBanType.ItemIndex = -1)  then
    Result:= abtNone
  else
    Result:= IntToAccessBanType(StrToInt(cbAccessBanType.Values[cbAccessBanType.ItemIndex]));
end;

function TfmLockAllConnections.GetLockMessage: string;
begin
  Result:= edtLockMessage.Text;
end;

procedure TfmLockAllConnections.ReleaseForm;
begin
  if Assigned(Self) then
    inherited Release;
end;

class function TfmLockAllConnections.ShowForm(out AccessBanType: TAccessBanType;
  out LockMessage: string): Boolean;
var
  f: TfmLockAllConnections;
begin
  f:= Create(Application);
  try
    Result:= (f.ShowModal = mrOk);

    if Result then
      begin
        AccessBanType:= f.AccessBanType;
        LockMessage:= f.LockMessage;
      end;  { if }
  finally
    f.ReleaseForm;
  end;  { try }
end;

end.
