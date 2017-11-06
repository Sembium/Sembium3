unit fDataForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fButtonForm, ImgList, ActnList, StdCtrls, Buttons, ExtCtrls, JvButtons,
  Menus, rBaseReport, dDocClient, JvComponent, JvCaptionButton,
  JvComponentBase, uAttributeUtils, System.Actions;

type
  ReportClassAttribute = class(TValueAttribute<TBaseReportClass>);

type
  TDataForm = class(TButtonForm)
    pnlApply: TPanel;
    btnApply: TBitBtn;
    actApplyUpdates: TAction;
    actCancelUpdates: TAction;
    actPrint: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actPrintExecute(Sender: TObject);
    procedure actPrintUpdate(Sender: TObject);
    procedure actApplyUpdatesUpdate(Sender: TObject);
    procedure actCancelUpdatesUpdate(Sender: TObject);
    procedure actApplyUpdatesExecute(Sender: TObject);
    procedure actCancelUpdatesExecute(Sender: TObject);
  private
    FIsDataModified: Boolean;
    FReportClass: TBaseReportClass;
    FDocsSavePoint: Integer;
    FDocsLastModifiedSavePoint: Integer;
  protected
    procedure InternalDoApplyUpdates; virtual;
    procedure InternalDoCancelUpdates; virtual;
    procedure DoApplyUpdates; virtual;
    procedure DoCancelUpdates; virtual;
    function GetApplyUpdatesEnabled: Boolean; virtual;
    function GetCancelUpdatesEnabled: Boolean; virtual;
    function GetPrintEnabled: Boolean; virtual;
    procedure SaveDocsSavePoint; virtual;
    procedure RevertDocsToSavePoint; virtual;
    function IsDocModifiedHere: Boolean; virtual;
    function GetIsDataModified: Boolean; virtual;

    property IsDataModified: Boolean read GetIsDataModified;
    property ReportClass: TBaseReportClass read FReportClass write FReportClass;
  public
    constructor Create(AOwner: TComponent); override;
    class function ShowForm(AdmDocClient: TdmDocClient = nil): Boolean;
    procedure Initialize; override;
  end;

implementation

uses
  fDBFrame, dMain, uUtils;

{$R *.DFM}

{ TDataForm }

procedure TDataForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (ModalResult <> mrOK) then
    actCancelUpdates.Execute
  else
    begin
      if not actApplyUpdates.Execute then
        ModalResult:= mrCancel;
    end;
end;

procedure TDataForm.actPrintExecute(Sender: TObject);
begin
  inherited;
  Assert(Assigned(ReportClass));

  ReportClass.PrintReport;
end;

procedure TDataForm.actPrintUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetPrintEnabled;
end;

constructor TDataForm.Create(AOwner: TComponent);
var
  ReportClassAttr: ReportClassAttribute;
begin
  inherited;
  ReportClassAttr:= FindAttribute<ReportClassAttribute>;
  if Assigned(ReportClassAttr) then
    ReportClass:= ReportClassAttr.Value;
end;

procedure TDataForm.actApplyUpdatesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetApplyUpdatesEnabled;
end;

procedure TDataForm.actCancelUpdatesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetCancelUpdatesEnabled;
end;

procedure TDataForm.DoApplyUpdates;
begin
  // do nothing
end;

procedure TDataForm.DoCancelUpdates;
begin
  // do nothing
end;

function TDataForm.GetApplyUpdatesEnabled: Boolean;
begin
  if Assigned(dmDocClient) then
    Result:= IsDocModifiedHere
  else
    Result:= True;
end;

function TDataForm.GetCancelUpdatesEnabled: Boolean;
begin
  Result:= True;
end;

function TDataForm.GetIsDataModified: Boolean;
begin
  Result:= FIsDataModified;
end;

function TDataForm.GetPrintEnabled: Boolean;
begin
  Result:= Assigned(ReportClass);
end;

procedure TDataForm.actApplyUpdatesExecute(Sender: TObject);
begin
  inherited;
  InternalDoApplyUpdates;
  FIsDataModified:= True;
end;

procedure TDataForm.actCancelUpdatesExecute(Sender: TObject);
begin
  inherited;
  InternalDoCancelUpdates;
end;

class function TDataForm.ShowForm(AdmDocClient: TdmDocClient = nil): Boolean;
var
  f: TDataForm;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TDataForm.InternalDoApplyUpdates;
var
  f: TDBFrame;
begin
  for f in Frames.OfType<TDBFrame> do
    f.DoApplyUpdates;

  DoApplyUpdates;
  SaveDocsSavePoint;
end;

procedure TDataForm.InternalDoCancelUpdates;
var
  f: TDBFrame;
begin
  for f in Frames.OfType<TDBFrame> do
    f.DoCancelUpdates;

  RevertDocsToSavePoint;
  DoCancelUpdates;
end;

procedure TDataForm.Initialize;
begin
  inherited Initialize;
  SaveDocsSavePoint;
end;

procedure TDataForm.SaveDocsSavePoint;
begin
  if Assigned(dmDocClient) then
    begin
      FDocsSavePoint:= dmDocClient.SavePoint;
      FDocsLastModifiedSavePoint:= dmDocClient.LastModifiedSavePoint;
    end
  else
    begin
      FDocsSavePoint:= 0;
      FDocsLastModifiedSavePoint:= 0;
    end;
end;

procedure TDataForm.RevertDocsToSavePoint;
begin
  if IsDocModifiedHere then
    dmDocClient.SavePoint:= FDocsSavePoint;
end;

function TDataForm.IsDocModifiedHere: Boolean;
begin
  Result:=
    Assigned(dmDocClient) and
    (FDocsLastModifiedSavePoint < dmDocClient.LastModifiedSavePoint);
end;

end.
