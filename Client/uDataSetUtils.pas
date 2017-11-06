unit uDataSetUtils;

interface

uses
  DB, Generics.Collections;

function GetDataSetData(ADataSet: TDataSet; AIncludeDetails: Boolean): Variant;
procedure SetDataSetData(ADataSet: TDataSet; ADataSetData: Variant; AOverrideKeys: Boolean);

function GetRecordData(ADataSet: TDataSet; AIncludeDetails: Boolean): Variant;
procedure SetRecordData(ADataSet: TDataSet; ARecordData: Variant; AOverrideKeys: Boolean);

type
  TDataSetListNode = class
    FDataSet: TDataSet;
    FBookmark: TBookmark;
  end;

type
  TDataSetList = class(TObjectList<TDataSetListNode>)
  public
    procedure DisableControls;
    procedure EnableControls;
    procedure OpenDataSets;
    procedure CloseDataSets;
    procedure GetBookmarks;
    procedure GotoBookmarks;
    procedure AddDataSet(ADataSet: TDataSet; AIncludeDetails: Boolean);
  end;

implementation

uses
  Variants, SysUtils, Forms, DBClient, Controls;

function InternalGetRecordData(ADataSet: TDataSet; AIncludeDetails: Boolean): Variant; forward;

function InternalGetDataSetData(ADataSet: TDataSet; AIncludeDetails: Boolean): Variant;

  function DataSetRecordCount(ADataSet: TDataSet): Integer;
  begin
    if ADataSet is TClientDataSet then
      Result:= (ADataSet as TClientDataSet).RecordCount
    else
      begin
        Result:= 0;
        ADataSet.First;
        while not ADataSet.Eof do
          begin
            Inc(Result);
            ADataSet.Next;
          end;  { while }
      end;
  end;  { DataSetRecordCount }

var
  RecNo: Integer;
begin
  if ADataSet.Bof and ADataSet.Eof then
    Result:= Null
  else
    begin
      Result:= VarArrayCreate([0, DataSetRecordCount(ADataSet)-1], varVariant);

      RecNo:= 0;
      ADataSet.First;
      while not ADataSet.Eof do
        begin
          Result[RecNo]:= InternalGetRecordData(ADataSet, AIncludeDetails);

          Inc(RecNo);
          ADataSet.Next;
        end;  { while }
    end;
end;  { InternalGetDataSetData }

function InternalGetRecordData(ADataSet: TDataSet; AIncludeDetails: Boolean): Variant;
var
  i: Integer;
begin
  Assert(ADataSet.FieldCount > 0);

  Result:= VarArrayCreate([0, ADataSet.FieldCount-1], varVariant);

  for i:= 0 to ADataSet.FieldCount - 1 do
    if ADataSet.Fields[i] is TDataSetField then
      begin
        if AIncludeDetails then
          Result[i]:= InternalGetDataSetData((ADataSet.Fields[i] as TDataSetField).NestedDataSet, AIncludeDetails)
        else
          Result[i]:= Unassigned;
      end
    else
      begin
        if (ADataSet.Fields[i].FieldKind = fkData) then
          Result[i]:= ADataSet.Fields[i].AsVariant
        else
          Result[i]:= Unassigned;
      end;
end;  { InternalGetRecordData }

function GetDataSetData(ADataSet: TDataSet; AIncludeDetails: Boolean): Variant;
var
  SaveCursor: TCursor;
  List: TDataSetList;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crSQLWait;
  try
    List:= TDataSetList.Create;
    try
      List.AddDataSet(ADataSet, True);

      List.DisableControls;
      try
        List.GetBookmarks;
        try
          Result:= InternalGetDataSetData(ADataSet, AIncludeDetails);
        finally
          List.GotoBookmarks;
        end;
      finally
        List.EnableControls;
      end;
    finally
      FreeAndNil(List);
    end;
  finally
    Screen.Cursor:= SaveCursor;
  end;   { try SaveCursor }
end;  { GetDataSetData }

function GetRecordData(ADataSet: TDataSet; AIncludeDetails: Boolean): Variant;

  function ExistsDataSetField(ADataSet: TDataSet): Boolean;
  var
    i: Integer;
  begin
    Result:= True;

    for i:= 0 to ADataSet.FieldCount - 1 do
      if ADataSet.Fields[i] is TDataSetField then
        Exit;

    Result:= False;
  end;  { ExistsDataSetField }

var
  SaveCursor: TCursor;
  List: TDataSetList;
begin
  if AIncludeDetails and ExistsDataSetField(ADataSet) then
    begin
      SaveCursor:= Screen.Cursor;
      Screen.Cursor:= crSQLWait;
      try
        List:= TDataSetList.Create;
        try
          List.AddDataSet(ADataSet, True);

          List.DisableControls;
          try
            List.GetBookmarks;
            try
              Result:= InternalGetRecordData(ADataSet, AIncludeDetails);
            finally
              List.GotoBookmarks;
            end;
          finally
            List.EnableControls;
          end;
        finally
          FreeAndNil(List);
        end;
      finally
        Screen.Cursor:= SaveCursor;
      end;   { try SaveCursor }
    end
  else
    Result:= InternalGetRecordData(ADataSet, AIncludeDetails);
end;  { GetRecordData }

procedure SetDataSetData(ADataSet: TDataSet; ADataSetData: Variant;
  AOverrideKeys: Boolean);

  function IsEmptyDataSet(ADataSet: TDataSet): Boolean;
  begin
    if ADataSet is TClientDataSet then
      Result:= (ADataSet.RecordCount = 0)
    else
      Result:= ADataSet.Bof and ADataSet.Eof;
  end;  { IsEmptyDataSet }

var
  i: Integer;
begin
  if VarIsEmpty(ADataSetData) then
    Exit;

  while not IsEmptyDataSet(ADataSet) do
    ADataSet.Delete;

  if not VarIsNull(ADataSetData) then
    begin
      Assert(VarIsArray(ADataSetData));
      for i:= VarArrayLowBound(ADataSetData, 1) to VarArrayHighBound(ADataSetData, 1) do
        begin
          ADataSet.Append;
          try
            SetRecordData(ADataSet, ADataSetData[i], AOverrideKeys);
            ADataSet.CheckBrowseMode;
          except
            ADataSet.Cancel;
            raise;
          end;
        end;
    end;
end;  { SetDataSetData }

procedure SetRecordData(ADataSet: TDataSet; ARecordData: Variant;
  AOverrideKeys: Boolean);
var
  i: Integer;
begin
  Assert(VarIsArray(ARecordData));

  // pyrwo prosti poleta posle TDataSetField shtoto moje da ima required prosti

  for i:= 0 to ADataSet.FieldCount - 1 do
    if not (ADataSet.Fields[i] is TDataSetField) and
       (ADataSet.Fields[i].FieldKind = fkData) and
       (AOverrideKeys or (not (pfInKey in ADataSet.Fields[i].ProviderFlags))) then
      begin
        ADataSet.Fields[i].Value:= ARecordData[i];
      end;  { if }

  for i:= 0 to ADataSet.FieldCount - 1 do
    if ADataSet.Fields[i] is TDataSetField then
      SetDataSetData((ADataSet.Fields[i] as TDataSetField).NestedDataSet, ARecordData[i], AOverrideKeys);
end;  { SetRecordData }

{ TDataSetList }

procedure TDataSetList.DisableControls;
var
  i: Integer;
begin
  i:= 0;
  try
    while (i < Count) do
      begin
        Assert(Assigned(Items[i]));
        Assert(Assigned(Items[i].FDataSet));
        Items[i].FDataSet.DisableControls;

        Inc(i);
      end;
  except
    while (i > 0) do
      begin
        Dec(i);

        Assert(Assigned(Items[i]));
        Assert(Assigned(Items[i].FDataSet));
        Items[i].FDataSet.EnableControls;
      end;

    raise;
  end;
end;

procedure TDataSetList.EnableControls;
var
  i: Integer;
begin
  for i:= 0 to Count - 1 do
    begin
      Assert(Assigned(Items[i]));
      Assert(Assigned(Items[i].FDataSet));
      Items[i].FDataSet.EnableControls;
    end;
end;

procedure TDataSetList.OpenDataSets;
var
  i: Integer;
begin
  for i:= 0 to Count - 1 do
    begin
      Assert(Assigned(Items[i]));
      Assert(Assigned(Items[i].FDataSet));
      with Items[i] do
        begin
          FDataSet.Open;
          try
            FDataSet.Bookmark:= FBookmark;
          except
            on EDatabaseError do
              begin
                // Do nothing. Just catch the exception
              end;
          end;
        end;
    end;
end;

procedure TDataSetList.AddDataSet(ADataSet: TDataSet; AIncludeDetails: Boolean);
var
  Node: TDataSetListNode;
  i: Integer;
begin
  Node:= TDataSetListNode.Create;
  try
    Node.FDataSet:= ADataSet;
    Add(Node);
  except
    FreeAndNil(Node);
    raise;
  end;

  if AIncludeDetails then
    for i:= 0 to ADataSet.FieldCount - 1 do
      if (ADataSet.Fields[i] is TDataSetField) then
        AddDataSet(TDataSetField(ADataSet.Fields[i]).NestedDataSet, AIncludeDetails);
end;

procedure TDataSetList.CloseDataSets;
var
  i: Integer;
begin
  for i:= 0 to Count - 1 do
    begin
      Assert(Assigned(Items[i]));
      Assert(Assigned(Items[i].FDataSet));
      Items[i].FDataSet.Close;
    end;
end;

procedure TDataSetList.GetBookmarks;
var
  i: Integer;
begin
  for i:= 0 to Count - 1 do
    begin
      Assert(Assigned(Items[i]));
      Assert(Assigned(Items[i].FDataSet));
      with Items[i] do
        FBookmark:= FDataSet.Bookmark;
    end;
end;

procedure TDataSetList.GotoBookmarks;
var
  i: Integer;
begin
  for i:= 0 to Count - 1 do
    begin
      Assert(Assigned(Items[i]));
      Assert(Assigned(Items[i].FDataSet));
      with Items[i] do
        FDataSet.Bookmark:= FBookmark;
    end;
end;

end.
