unit fFilterFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFieldEditFrame, DB, ActnList, AbmesFields, DBClient,
  AbmesClientDataSet, Buttons, ExtCtrls, uSection, System.Actions;

type
  TFilterFrame = class(TFieldEditFrame)
    actBaseFilter: TAction;
    cdsBaseFilter: TAbmesClientDataSet;
    cdsBaseFilterFILTER_DATA: TAbmesWideStringField;
    pnlBaseFilter: TPanel;
    btnBaseFilter: TSpeedButton;
    procedure actBaseFilterExecute(Sender: TObject);
    procedure FrameResize(Sender: TObject);
    procedure actFrameUpdate(Sender: TObject);
  private
    FBaseFilter: string;
    FSettingFieldsReadOnly: TSinglePassSection;
    procedure PositionBaseFilter;
  protected
    procedure DataChange(Sender: TObject); override;
    procedure DoDataChange(Sender: TObject); virtual; abstract;
    function BaseFilterEnabled: Boolean;
    procedure ModifyReadOnlyFields(AProc: TProc);
    property BaseFilter: string read FBaseFilter write FBaseFilter;
    function BaseFilterControlOrParent: TControl; virtual;
  public
    procedure Initialize; override;
  end;

  TFilterFrameClass = class of TFilterFrame;

implementation

uses
  fFilterFrameBaseFilter, fEditForm, uClientTypes, uUtils, uFilterField;

{$R *.dfm}

procedure TFilterFrame.actBaseFilterExecute(Sender: TObject);
var
  SaveBaseFilter: string;
begin
  inherited;

  cdsBaseFilter.CreateDataSet;
  try
    cdsBaseFilter.AppendRecord([BaseFilter]);

    if TfmFilterFrameBaseFilter.ShowForm(nil, cdsBaseFilter, emEdit, doNone, TFilterFrameClass(Self.ClassType)) then
      ModifyReadOnlyFields(
        procedure begin
          Fields[0].DataSet.TempDisableControls/
            procedure begin
              SaveBaseFilter:= BaseFilter;
              Fields[0].Clear;
              Fields[0].AsString:= SaveBaseFilter;
            end;
        end
      );
  finally
    cdsBaseFilter.Close;
  end;
end;

procedure TFilterFrame.actFrameUpdate(Sender: TObject);
var
  c: TControl;
begin
  inherited;
  c:= BaseFilterControlOrParent;
  if Assigned(c) then
    c.Visible:= BaseFilterEnabled;
end;

function TFilterFrame.BaseFilterControlOrParent: TControl;
var
  c: TControl;
begin
  Result:= nil;
  for c in AllComponents.OfType<TControl> do
    if (c.Action = actBaseFilter) then
      begin
        Result:= c;
        if Assigned(Result.Parent) and (Result.Parent.ControlCount = 1) then
          Result:= Result.Parent;
        Exit;
      end;
end;

function TFilterFrame.BaseFilterEnabled: Boolean;
begin
  Result:=
    (FieldCount > 0) and
    Fields[0].LoadedReadOnly;
end;

procedure TFilterFrame.DataChange(Sender: TObject);
begin
  if FSettingFieldsReadOnly.IsEntered then
    Exit;

  inherited;
  DoDataChange(Sender);
end;

procedure TFilterFrame.FrameResize(Sender: TObject);
begin
  inherited;
  PositionBaseFilter;
end;

procedure TFilterFrame.Initialize;
begin
  inherited;
  PositionBaseFilter;
end;

procedure TFilterFrame.ModifyReadOnlyFields(AProc: TProc);
var
  i: Integer;
  SaveReadOnly: array of Boolean;
begin
  for i:= 0 to FieldCount - 1 do
    Assert((not Fields[i].ReadOnly) or Fields[i].LoadedReadOnly);

  SetLength(SaveReadOnly, FieldCount);
  for i:= 0 to FieldCount - 1 do
    SaveReadOnly[i]:= Fields[i].ReadOnly;

  FSettingFieldsReadOnly.TempEnter /
    procedure
    var
      i: Integer;
    begin
      for i:= 0 to FieldCount - 1 do
        Fields[i].ReadOnly:= False;
    end;
  try
    AProc;
  finally
    FSettingFieldsReadOnly.TempEnter /
      procedure
      var
        i: Integer;
      begin
        for i:= 0 to FieldCount - 1 do
          Fields[i].ReadOnly:= SaveReadOnly[i];
      end;
  end;
end;

procedure TFilterFrame.PositionBaseFilter;
var
  c: TControl;
begin
  c:= BaseFilterControlOrParent;
  if Assigned(c) then
    begin
      c.Left:= Width - c.Width - 8;
      c.BringToFront;
    end;
end;

end.
