unit fDocItems;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDataForm, JvButtons, ActnList, StdCtrls, Buttons, ExtCtrls,
  fBaseFrame, fDBFrame, fFieldEditFrame, fDoc, DB, DBClient,
  AbmesClientDataSet, AbmesFields, dDocClient, uClientTypes, uDocUtils,
  JvComponent, JvCaptionButton, fEditForm;

type
  TfmDocItems = class(TEditForm)
    pnlMain: TPanel;
    frDoc: TfrDoc;
    cdsFakeDoc: TAbmesClientDataSet;
    dsFakeDoc: TDataSource;
    cdsFakeDocDOC_BRANCH_CODE: TAbmesFloatField;
    cdsFakeDocDOC_CODE: TAbmesFloatField;
    pnlDataButtons: TPanel;
    btnInsertDocItem: TBitBtn;
    btnDelDocItem: TBitBtn;
    btnEditDocItem: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
  private
    FReadOnly: Boolean;
    FDocBranchCode: Integer;
    FDocCode: Integer;
  public
    class function ShowForm(AdmDocClient: TdmDocClient; AReadOnly: Boolean; ADocBranchCode, ADocCode: Integer; ADocOwnerType: TDocOwnerType): Boolean;
    procedure SetDataParams(AdmDocClient: TdmDocClient; AReadOnly: Boolean; ADocBranchCode, ADocCode: Integer; ADocOwnerType: TDocOwnerType); reintroduce; virtual;
    procedure Initialize; override;
    procedure Finalize; override;
    property ReadOnly: Boolean read FReadOnly;
  end;

implementation

uses
  Menus;

{$R *.dfm}

{ TfmDocItems }

procedure TfmDocItems.SetDataParams(AdmDocClient: TdmDocClient;
  AReadOnly: Boolean; ADocBranchCode, ADocCode: Integer; ADocOwnerType: TDocOwnerType);
begin
  inherited SetDataParams(AdmDocClient);
  FReadOnly:= AReadOnly;
  FDocBranchCode:= ADocBranchCode;
  FDocCode:= ADocCode;
  frDoc.DocOwnerType:= ADocOwnerType;
end;

class function TfmDocItems.ShowForm(AdmDocClient: TdmDocClient;
  AReadOnly: Boolean; ADocBranchCode, ADocCode: Integer; ADocOwnerType: TDocOwnerType): Boolean;
var
  f: TfmDocItems;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, AReadOnly, ADocBranchCode, ADocCode, ADocOwnerType);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmDocItems.FormCreate(Sender: TObject);
begin
  inherited;
  frDoc.ImmediatelyApplyUpdates:= False;
  frDoc.MustFireDataChanged:= False;
  MaximizeStyle:= msVertical;
end;

procedure TfmDocItems.Initialize;
begin
  inherited Initialize;
  cdsFakeDoc.CreateDataSet;
  cdsFakeDoc.AppendRecord([FDocBranchCode, FDocCode]);
end;

procedure TfmDocItems.Finalize;
begin
  cdsFakeDoc.Close;
  inherited Finalize;
end;

procedure TfmDocItems.actFormUpdate(Sender: TObject);
begin
  inherited;
  frDoc.ReadOnly:= ReadOnly;
  pnlOkCancel.Visible:= not ReadOnly;
  pnlClose.Visible:= ReadOnly;
  btnEditDocItem.Caption:= frDoc.actEditDocItem.Hint + cDialogSuffix;
end;

end.
