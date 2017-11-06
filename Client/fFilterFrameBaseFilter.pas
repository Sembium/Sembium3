unit fFilterFrameBaseFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, ActnList, StdCtrls,
  Buttons, ExtCtrls, uClientTypes, dDocClient, fDBFrame, fFilterFrame,
  System.Actions;

type
  [CanEditOuterDataSet]
  TfmFilterFrameBaseFilter = class(TEditForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    class var FFilterFrameClass: TFilterFrameClass;
    FFilterFrame: TFilterFrame;
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AFilterFrameClass: TFilterFrameClass = nil); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AFilterFrameClass: TFilterFrameClass = nil): Boolean;
    procedure Initialize; override;
  end;

implementation

uses
  uClientUtils,
  uScalingUtils;

{$R *.dfm}

{ TfmTreeNodeBaseFilter }

procedure TfmFilterFrameBaseFilter.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  SaveModalResult: Integer;
begin
  SaveModalResult:= ModalResult;
  try
    inherited;
  finally
    ModalResult:= SaveModalResult;
  end;
end;

procedure TfmFilterFrameBaseFilter.Initialize;
begin
  inherited;
  ClientWidth:= FFilterFrame.Width + 2*ScalePixels(8);
  ClientHeight:= FFilterFrame.Height + 2*ScalePixels(8) + pnlBottomButtons.Height;
  FFilterFrame.SetFocus;
  FillFramesList;
end;

procedure TfmFilterFrameBaseFilter.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin;
  AFilterFrameClass: TFilterFrameClass);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);

  FFilterFrameClass:= AFilterFrameClass;

  FFilterFrame:= FFilterFrameClass.Create(Self);
  FFilterFrame.Top:= ScalePixels(8);
  FFilterFrame.Left:= ScalePixels(8);
  FFilterFrame.Parent:= Self;
  FFilterFrame.FieldNames:= ADataSet.Fields[0].FieldName;

  FFilterFrame.OpenDataSets;
  FFilterFrame.Initialize;
  FFilterFrame.SetDataSet(ADataSet);
end;

procedure TfmFilterFrameBaseFilter.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  AFrame.ReadOnly:= True;
end;

class function TfmFilterFrameBaseFilter.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin;
  AFilterFrameClass: TFilterFrameClass): Boolean;
var
  f: TfmFilterFrameBaseFilter;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin,
      AFilterFrameClass);
    Result:= (f.InternalShowForm = mrOK);
  finally
    f.ReleaseForm;
  end;
end;

end.
