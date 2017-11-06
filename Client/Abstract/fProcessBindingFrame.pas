unit fProcessBindingFrame;

interface              

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fDBFrame, Db, ImgList, ActnList, ExtCtrls, StdCtrls, DBCtrls,
  fFieldEditFrame, AbmesFields, DBClient, AbmesClientDataSet, JvExControls,
  JvComponent, JvDBLookup, System.Actions;

// hubavo e da se prenapishe metoda SetReadOnly i sushto i ot naslednicite 

type
  TProcessBindingFrame = class(TDBFrame)
    grpMain: TGroupBox;
    pnlProcessCombo: TPanel;
    lblProcess: TLabel;
    cdsProcesses: TAbmesClientDataSet;
    cdsProcessesPROCESS_CODE: TAbmesFloatField;
    cdsProcessesPROCESS_NO: TAbmesFloatField;
    cdsProcessesPROCESS_ABBREV: TAbmesWideStringField;
    cdsProcessesPROCESS_NAME: TAbmesWideStringField;
    cdsProcessesIS_INBOUND_PROCESS: TAbmesFloatField;
    cdsProcessesIS_OUTBOUND_PROCESS: TAbmesFloatField;
    dsProcesses: TDataSource;
    cbProcess: TJvDBLookupCombo;
    procedure cbProcessCloseUp(Sender: TObject);
    procedure cbProcessKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FCurrentProcessCode: Integer;
    procedure CheckProcessChanged;
  protected
    procedure NewReadOnlySet; override;
    function GetBindingFrame(ProcessCode: Integer): TFieldEditFrame; virtual;
  public
    procedure Initialize; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure DoApplyUpdates; override;
  end;

implementation

uses
  uUtils, fBaseFrame;

{$R *.DFM}

resourcestring
  SProcessNotSupported = ' Process not supported!';

procedure TProcessBindingFrame.Initialize;
begin
  inherited;

  FCurrentProcessCode:= VarToInt(cbProcess.Field.Value);
  
  with GetBindingFrame(FCurrentProcessCode) do
    begin
      if DataSetsOpened then
        CloseDataSets;
      ShowFrame;
    end;

  cbProcess.Hint:=
    dsData.DataSet.FieldByName('_BND_PROCESS_NAME').AsString;
end;

function TProcessBindingFrame.GetBindingFrame(
  ProcessCode: Integer): TFieldEditFrame;
begin
  raise Exception.Create(SProcessNotSupported);
end;

procedure TProcessBindingFrame.cbProcessCloseUp(Sender: TObject);
begin
  inherited;

  CheckProcessChanged;
end;

procedure TProcessBindingFrame.cbProcessKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;

  if (Key = VK_UP) or (Key = VK_DOWN) then
    CheckProcessChanged;
end;

procedure TProcessBindingFrame.CheckProcessChanged;
begin
  if (VarToInt(cbProcess.KeyValue) <> FCurrentProcessCode) then
    begin
      GetBindingFrame(FCurrentProcessCode).HideFrame;

      FCurrentProcessCode:= VarToInt(cbProcess.KeyValue);

      if dsData.DataSet.CanModify then
        begin
          CheckEditMode(dsData.DataSet);
          dsData.DataSet.FieldByName('BND_PROCESS_OBJECT_BRANCH_CODE').Clear;
          dsData.DataSet.FieldByName('BND_PROCESS_OBJECT_CODE').Clear;
        end;

      GetBindingFrame(FCurrentProcessCode).ShowFrame;

      cbProcess.Hint:=
        dsData.DataSet.FieldByName('_BND_PROCESS_NAME').AsString;
    end;
end;

procedure TProcessBindingFrame.CloseDataSets;
begin
  inherited;
  cdsProcesses.Close;
end;

procedure TProcessBindingFrame.DoApplyUpdates;
begin
  inherited;
  CheckProcessChanged;
end;

procedure TProcessBindingFrame.OpenDataSets;
begin
  cdsProcesses.Open;
  inherited;
end;

procedure TProcessBindingFrame.NewReadOnlySet;
begin
  inherited;
  cbProcess.ReadOnly:= ReadOnly;
end;

end.
