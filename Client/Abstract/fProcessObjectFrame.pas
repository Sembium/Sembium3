unit fProcessObjectFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fFieldEditFrame, Db, ImgList, ActnList, ParamDataSet, DBClient,
  AbmesClientDataSet, System.Actions;

type
  TProcessObjectFrame = class(TFieldEditFrame)
    cdsProcessObjectID: TAbmesClientDataSet;
    pdsProcessObjectParams: TParamDataSet;
    dsProcessObjectParams: TDataSource;
    cdsProcessObjectCustomID: TAbmesClientDataSet;
    actShowProcessObjectForm: TAction;
    procedure actClearFieldValuesExecute(Sender: TObject);
    procedure actShowProcessObjectFormExecute(Sender: TObject);
    procedure actShowProcessObjectFormUpdate(Sender: TObject);
  private
    procedure AssignPDSFieldsValues;
    procedure SetProcessObjectFieldsValue;
  protected
    FIsProcessObjectCustomIDChanged: Boolean;
    procedure SetFocusOnError; virtual; abstract;
    procedure ShowProcessObjectForm; virtual; abstract;
    function ProcessObjectName: string; virtual; abstract; //Stoinostta na taia funkcia se opredelia ot saotvetnia ProcessObject
    function GetClearFieldEnabled: Boolean; override;
    procedure ProcessObjectError(AMessage: string);
    procedure ValidateProcessObject; virtual;
  public
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure Initialize; override;
    procedure DoApplyUpdates; override;
    procedure HideFrame; override;
  end;

implementation

uses
  uUtils;

{$R *.DFM}

resourcestring
  SNoSuchProcessObject = '  Не съществува %s с такава ' + SLineBreak + 'идентификация!';

{ TfrProcessObject }

procedure TProcessObjectFrame.Initialize;
begin
  inherited;

  FieldNames:= 'BND_PROCESS_OBJECT_BRANCH_CODE; BND_PROCESS_OBJECT_CODE';
  FIsProcessObjectCustomIDChanged:= True;
end;


procedure TProcessObjectFrame.OpenDataSets;
begin
  inherited;

  pdsProcessObjectParams.Open;

  if not IsEmpty then
    AssignPDSFieldsValues;
end;

procedure TProcessObjectFrame.CloseDataSets;
begin
  pdsProcessObjectParams.Close;

  inherited;
end;

procedure TProcessObjectFrame.SetProcessObjectFieldsValue;
var
  indNull: Boolean;
  i: Integer;
begin
  with pdsProcessObjectParams do
    if (State in dsEditModes) then
      Post;

  if FIsProcessObjectCustomIDChanged then
    begin
      indNull:= True;
      i:= 0;
      while (i < pdsProcessObjectParams.Fields.Count) and indNull do
        begin
          if (not pdsProcessObjectParams.Fields[i].IsNull) then
            indNull:= False;
          Inc(i);
        end;

      if indNull then
        begin
          CheckEditMode(dsData.DataSet);
          Fields[0].Clear;
          Fields[1].Clear;
        end
      else
        begin
          cdsProcessObjectID.Open;
          try
            ValidateProcessObject;

            CheckEditMode(dsData.DataSet);
            Fields[0].AsInteger:=
              cdsProcessObjectID.FieldByName('PROCESS_OBJECT_BRANCH_CODE').AsInteger;
            Fields[1].AsInteger:=
              cdsProcessObjectID.FieldByName('PROCESS_OBJECT_CODE').AsInteger;
          finally
            cdsProcessObjectID.Close;
          end;

          AssignPDSFieldsValues;
        end;
    end;
end;

procedure TProcessObjectFrame.ValidateProcessObject;
begin
  if cdsProcessObjectID.IsEmpty then
    ProcessObjectError(Format(SNoSuchProcessObject, [ProcessObjectName]));
end;

procedure TProcessObjectFrame.ProcessObjectError(AMessage: string);
begin
  SetFocusOnError;
  raise Exception.Create(AMessage);
end;

procedure TProcessObjectFrame.actShowProcessObjectFormExecute(Sender: TObject);
begin
  inherited;
  pdsProcessObjectParams.First;  // force calc fields
  ShowProcessObjectForm;
end;

procedure TProcessObjectFrame.actShowProcessObjectFormUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not Fields[0].IsNull;
end;

procedure TProcessObjectFrame.AssignPDSFieldsValues;
begin
  with cdsProcessObjectCustomID do
    try
      SetParams(Params, dsData.DataSet);

      Open;
      Assert(not (EOF and BOF));
      pdsProcessObjectParams.Edit;
      pdsProcessObjectParams.AssignFields(cdsProcessObjectCustomID);
    finally
      Close;
    end;
end;

procedure TProcessObjectFrame.DoApplyUpdates;
begin
  inherited;
  if Visible then
    SetProcessObjectFieldsValue;
end;

procedure TProcessObjectFrame.HideFrame;
var
  i: Integer;
begin
  with cdsProcessObjectID.Params do
    for i:=  0 to (Count - 1) do
      Items[i].Clear;

  inherited;
end;

procedure TProcessObjectFrame.actClearFieldValuesExecute(Sender: TObject);
var
  i: Integer;
begin
  CheckEditMode(pdsProcessObjectParams);
  for i:= 0 to pdsProcessObjectParams.FieldCount - 1 do
    pdsProcessObjectParams.Fields[i].Clear;

  inherited;

  SetProcessObjectFieldsValue;
end;

function TProcessObjectFrame.GetClearFieldEnabled: Boolean;
var
  i: Integer;
  b: Boolean;
begin
  b:= False;
  for i:= 0 to pdsProcessObjectParams.FieldCount - 1 do
    b:= b or not pdsProcessObjectParams.Fields[i].IsNull;

  Result:= inherited GetClearFieldEnabled or b;
end;

end.
