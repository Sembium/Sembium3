unit fDBFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fBaseFrame, ImgList, ActnList, Db, System.Actions;

type
  TDBFrame = class(TBaseFrame)
    dsData: TDataSource;
  private
    FReadOnly: Boolean;
  protected
    procedure SetReadOnly(const Value: Boolean); virtual;
    procedure NewReadOnlySet; virtual;
  public
    constructor Create(AOwner: TComponent); override;
    procedure OpenDataSets; virtual;
    procedure CloseDataSets; virtual;
    procedure DoApplyUpdates; virtual;
    procedure DoCancelUpdates; virtual;
    procedure SetDataSet(ADataSet: TDataSet); virtual;
    procedure Initialize; override;

    property ReadOnly: Boolean read FReadOnly write SetReadOnly;
  end;

implementation

uses
  uClientUtils;

{$R *.DFM}

{ TDBFrame }

procedure TDBFrame.OpenDataSets;
var
  f: TDBFrame;
begin
  for f in Frames.OfType<TDBFrame> do
    f.OpenDataSets;
end;

procedure TDBFrame.CloseDataSets;
var
  f: TDBFrame;
begin
  for f in Frames.OfType<TDBFrame> do
    f.CloseDataSets;
end;

constructor TDBFrame.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  SetDataSetsGetFieldValueAsStringEvent(Self);
end;

procedure TDBFrame.DoApplyUpdates;
var
  f: TDBFrame;
begin
  for f in Frames.OfType<TDBFrame> do
    f.DoApplyUpdates;
end;

procedure TDBFrame.DoCancelUpdates;
var
  f: TDBFrame;
begin
  for f in Frames.OfType<TDBFrame> do
    f.DoCancelUpdates;
end;

procedure TDBFrame.SetDataSet(ADataSet: TDataSet);
var
  f: TDBFrame;
begin
  if not Assigned(dsData.DataSet) then
    dsData.DataSet:= ADataSet;

  for f in Frames.OfType<TDBFrame> do
    f.SetDataSet(ADataSet);
end;

procedure TDBFrame.SetReadOnly(const Value: Boolean);
begin
  if (Value <> FReadOnly) then
    begin
      FReadOnly:= Value;
      NewReadOnlySet;
    end;
end;

procedure TDBFrame.Initialize;
begin
  inherited Initialize;
  InitializeAllAbmesDBGridsOf(Self);
end;

procedure TDBFrame.NewReadOnlySet;
var
  f: TDBFrame;
begin
  for f in Frames.OfType<TDBFrame> do
    f.ReadOnly:= ReadOnly;
end;

end.
