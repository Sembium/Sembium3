unit uTreeListUtils;

interface

uses
  AbmesDBGrid, DB, MemTableEh, uClientUtils, DBGridEh, Controls, Types, Classes,
  uSection, uNestProc, uEnumeratorUtils, MemTreeEh, MemTableDataEh, SysUtils,
  uAbmesDBGridHelpers;

procedure DrawTreeImageColumnCell(ATreeGrid: TAbmesDBGrid;
  AImageList: TImageList; AImageIndex: Integer;
  ARect: TRect; AColumn: TColumnEh; PreserveBackground: Boolean = False);

type
  TSyncMemTableEh = class(TMemTableEh)
  private
    FSyncDataSet: TDataSet;
    FOldSyncDataSetAfterScroll: TDataSetNotifyEvent;
    FSyncSection: TTrySinglePassSection;
    FSyncDisableCount: Integer;
    procedure SetSyncDataSet(const Value: TDataSet);
    procedure SyncDataSetAfterScroll(DataSet: TDataSet);
    function GetKeyFieldName: string;
    procedure Sync(Source, Dest: TDataSet);
  protected
    procedure DoAfterScroll; override;
    procedure Notification(AComponent: TComponent;
      Operation: TOperation); override;
  public
    destructor Destroy; override;
    function Locate(const KeyFields: string; const KeyValues: Variant; Options: TLocateOptions): Boolean; override;
    procedure DisableSync;
    procedure EnableSync;
    function TempDisableSync: TNestProcRec;
    property SyncDataSet: TDataSet read FSyncDataSet write SetSyncDataSet;
  end;

type
  TAbmesDBGridTreeListHelper = class helper(TAbmesDBGridHelper) for TDBGridEh
  private
    procedure CloneFieldToDataSet(AField: TField; ADataSet: TDataSet);
    function GetTreeDataSet: TSyncMemTableEh;
    procedure RegisterDateFields(ADataSet: TDataSet);
    procedure UnregisterDateFields(ADataSet: TDataSet);
  public
    procedure ConvertToTreeList(const KeyFieldName, ParentFieldName: string);
    procedure RefreshTreeList(FieldDataOnly: Boolean);
    property TreeDataSet: TSyncMemTableEh read GetTreeDataSet;
  end;

type
  TTreeNodesEnumerator = class(TIndexedEnumerator<TBaseTreeNodeEh, TBaseTreeNodeEh>)
  protected
    function GetItem(AIndex: Integer): TBaseTreeNodeEh; override;
    function ItemCount: Integer; override;
  end;

type
  TBaseTreeNodeEhHelper = class helper for TBaseTreeNodeEh
  public
    function Children: TEnumerableRec<TBaseTreeNodeEh>;
  end;

procedure InitializeTreeNodesExpandedState(AGrid: TAbmesDBGrid; AMustCollapseFunc: TFunc<TMemoryRecordEh, Boolean>);

implementation

uses
  AbmesFields, uUtils, Provider, Graphics, uTotalCountField, fDBDataForm, UITypes, System.Contnrs,
  EhLibVCL;

type
  TBaseTreeNodeEhHack = class(TBaseTreeNodeEh);

type
  TDBDataFormHack = class(TDBDataForm);

{ TSyncMemTableEh }

procedure TSyncMemTableEh.SetSyncDataSet(const Value: TDataSet);
begin
  if (Value <> FSyncDataSet) then
    begin
      if Assigned(FSyncDataSet) then
        FSyncDataSet.AfterScroll:= FOldSyncDataSetAfterScroll;

      FSyncDataSet:= Value;

      if Assigned(FSyncDataSet) then
        begin
          FOldSyncDataSetAfterScroll:= FSyncDataSet.AfterScroll;
          FSyncDataSet.AfterScroll:= SyncDataSetAfterScroll;
        end
      else
        FOldSyncDataSetAfterScroll:= nil;
    end;
end;

procedure TSyncMemTableEh.DoAfterScroll;
begin
  inherited;

  if Assigned(SyncDataSet) and (FSyncDisableCount = 0) then
    Sync(Self, SyncDataSet);
end;

procedure TSyncMemTableEh.DisableSync;
begin
  Inc(FSyncDisableCount);
end;

procedure TSyncMemTableEh.EnableSync;
begin
  if (FSyncDisableCount > 0) then
    Dec(FSyncDisableCount);
end;

function TSyncMemTableEh.TempDisableSync: TNestProcRec;
begin
  Result:=
    TNestProcRec.Create(
      procedure (AProc: TProc) begin
        DisableSync;
        try
          AProc;
        finally
          EnableSync;
        end;
      end);
end;

procedure TSyncMemTableEh.SyncDataSetAfterScroll(DataSet: TDataSet);
begin
  if Assigned(FOldSyncDataSetAfterScroll) then
    FOldSyncDataSetAfterScroll(DataSet);

  Sync(DataSet, Self);
end;

function TSyncMemTableEh.GetKeyFieldName: string;
var
  fld: TField;
begin
  for fld in Fields do
    if (pfInKey in fld.ProviderFlags) then
      Exit(fld.FieldName);
  raise Exception.Create('Key field not found');
end;

function TSyncMemTableEh.Locate(const KeyFields: string; const KeyValues: Variant; Options: TLocateOptions): Boolean;
begin
  DoBeforeScroll;
  Result:= inherited Locate(KeyFields, KeyValues, Options);
  if Result then
    DoAfterScroll;
end;

procedure TSyncMemTableEh.Sync(Source, Dest: TDataSet);
var
  KeyFieldName: string;
begin
  Assert(Assigned(Source));
  Assert(Assigned(Dest));

  FSyncSection.TempEnter /
    procedure begin
      KeyFieldName:= GetKeyFieldName;
      Dest.Locate(KeyFieldName, Source.FieldByName(KeyFieldName).AsVariant, []);
    end;
end;

procedure TSyncMemTableEh.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);

  if (Operation = opRemove) and (AComponent = SyncDataSet) then
    begin
      FSyncDataSet:= nil;
      FOldSyncDataSetAfterScroll:= nil;
    end;
end;

destructor TSyncMemTableEh.Destroy;
begin
  SyncDataSet:= nil;
  inherited Destroy;
end;

{ TAbmesDBGridTreeListHelper }

procedure TAbmesDBGridTreeListHelper.CloneFieldToDataSet(AField: TField; ADataSet: TDataSet);
var
  NewField: TField;
  FieldClass: TFieldClass;
begin
  Assert(Assigned(AField));

  FieldClass:= TFieldClass(AField.ClassType);

  NewField:= FieldClass.Create(ADataSet.Owner);
  try
    NewField.Name:= ADataSet.Name + AField.FieldName;
    NewField.FieldName := AField.FieldName;
    NewField.DisplayLabel:= AField.DisplayLabel;
    NewField.DisplayWidth:= AField.DisplayWidth;
    NewField.Index:= ADataSet.FieldCount;
    NewField.Size:= AField.Size;
    NewField.Alignment:= AField.Alignment;
    NewField.Visible:= AField.Visible;
    NewField.OnGetText:= AField.OnGetText;
    NewField.TotalCountField:= AField.TotalCountField;

    if (NewField is TAbmesFloatField) then
      begin
        (NewField as TAbmesFloatField).DisplayFormat:= (AField as TAbmesFloatField).DisplayFormat;
        (NewField as TAbmesFloatField).DisplayBoolValues:= (AField as TAbmesFloatField).DisplayBoolValues;
        (NewField as TAbmesFloatField).FieldValueType:= (AField as TAbmesFloatField).FieldValueType;
      end;

    if (NewField is TAbmesSQLTimeStampField) then
      begin
        (NewField as TAbmesSQLTimeStampField).DisplayFormat:= (AField as TAbmesSQLTimeStampField).DisplayFormat;
      end;

    if (NewField is TAggregateField) then
      begin
        (NewField as TAggregateField).DisplayFormat:= (AField as TAggregateField).DisplayFormat;
        (NewField as TAggregateField).GroupingLevel:= (AField as TAggregateField).GroupingLevel;
        (NewField as TAggregateField).IndexName:= (AField as TAggregateField).IndexName;
        (NewField as TAggregateField).Expression:= (AField as TAggregateField).Expression;
        (NewField as TAggregateField).Active:= (AField as TAggregateField).Active;
      end;

    NewField.DataSet:= ADataSet;
  except
    FreeAndNil(NewField);
    raise;
  end;
end;

procedure TAbmesDBGridTreeListHelper.RegisterDateFields(ADataSet: TDataSet);
var
  f: TAbmesSQLTimeStampField;
begin
  if (Owner is TDBDataForm) then
    for f in ADataSet.Fields.OfType<TAbmesSQLTimeStampField> do
      TDBDataFormHack(Owner).RegisterDateField(f);
end;

procedure TAbmesDBGridTreeListHelper.UnregisterDateFields(ADataSet: TDataSet);
var
  f: TAbmesSQLTimeStampField;
begin
  if (Owner is TDBDataForm) then
    for f in ADataSet.Fields.OfType<TAbmesSQLTimeStampField> do
      TDBDataFormHack(Owner).UnregisterDateField(f);
end;

procedure TAbmesDBGridTreeListHelper.ConvertToTreeList(
  const KeyFieldName, ParentFieldName: string);
var
  SourceDataSet: TDataSet;
  mt: TSyncMemTableEh;
  fld: TField;
  ds: TDataSource;
begin
  Assert(Assigned(DataSource));
  Assert(Assigned(DataSource.DataSet));

  if (DataSource.DataSet is TSyncMemTableEh) then
    SourceDataSet:= (DataSource.DataSet as TSyncMemTableEh).SyncDataSet
  else
    SourceDataSet:= DataSource.DataSet;

  Assert(Assigned(SourceDataSet));

  if (DataSource.DataSet is TSyncMemTableEh) then
    begin
      mt:= (DataSource.DataSet as TSyncMemTableEh);
      DataSource.DataSet:= nil;
      UnregisterDateFields(mt);
      FreeAndNil(mt);

      ds:= DataSource;
      DataSource:= nil;
      FreeAndNil(ds);
    end;

  mt:= TSyncMemTableEh.Create(Owner);
  try
    mt.Name:= Name + 'MemTable';

    for fld in SourceDataSet.Fields do
      if not (fld is TDataSetField) then
        CloneFieldToDataSet(fld, mt);

    RegisterDateFields(mt);

    mt.CreateDataSet;

    mt.FieldByName(KeyFieldName).ProviderFlags:= [pfInKey];

    SourceDataSet.PreserveBookmark /
      SourceDataSet.TempDisableControls /
        SourceDataSet.ForEach /
          mt.SafeAppend /
            procedure begin
              AssignFields(SourceDataSet, mt);
            end;

    mt.TreeList.KeyFieldName:= KeyFieldName;
    mt.TreeList.RefParentFieldName:= ParentFieldName;
    mt.TreeList.DefaultNodeExpanded:= True;
    mt.TreeList.Active:= True;

    mt.First;

    ds:= TDataSource.Create(SourceDataSet.Owner);
    try
      ds.DataSet:= mt;
      DataSource:= ds;
    except
      FreeAndNil(ds);
      raise;
    end;

    mt.SyncDataSet:= SourceDataSet;
  except
    FreeAndNil(mt);
    raise;
  end;
end;

function TAbmesDBGridTreeListHelper.GetTreeDataSet: TSyncMemTableEh;
begin
  Assert(DataSource.DataSet is TSyncMemTableEh);
  Result:= (DataSource.DataSet as TSyncMemTableEh);
end;

procedure TAbmesDBGridTreeListHelper.RefreshTreeList(FieldDataOnly: Boolean);
var
  SourceDataSet: TDataSet;
  DestDataSet: TSyncMemTableEh;
begin
  if Assigned(DataSource) and
     Assigned(DataSource.DataSet) and
     (DataSource.DataSet is TSyncMemTableEh) then
    begin
      if FieldDataOnly then
        begin
          SourceDataSet:= (DataSource.DataSet as TSyncMemTableEh).SyncDataSet;
          DestDataSet:= (DataSource.DataSet as TSyncMemTableEh);

          // poradi neizvestna prichina TMemTableEh ne shte da vurvi s iteratora
          SourceDataSet.TempDisableControls /
            DestDataSet.TempDisableControls /
              DestDataSet.PreserveRecNo /
                procedure
                var
                  i: Integer;
                begin
                  for i:= 1 to DestDataSet.RecordCount do
                    begin
                      DestDataSet.RecNo:= i;

                      DestDataSet.SafeEdit /
                        procedure begin
                          DestDataSet.Sync(DestDataSet, SourceDataSet);
                          AssignFields(SourceDataSet, DestDataSet);
                        end;
                    end;
                end;
        end
      else
        begin
          DataSource.DataSet.PreserveRecNo /
            procedure begin
              ConvertToTreeList(
                (DataSource.DataSet as TSyncMemTableEh).TreeList.KeyFieldName,
                (DataSource.DataSet as TSyncMemTableEh).TreeList.RefParentFieldName
              );
            end;
        end;
    end;
end;

procedure DrawTreeImageColumnCell(ATreeGrid: TAbmesDBGrid; AImageList: TImageList; AImageIndex: Integer;
  ARect: TRect; AColumn: TColumnEh; PreserveBackground: Boolean);
var
  c: TColor;
  r: TRect;
  i: Integer;
begin
  with ATreeGrid do
    begin
      if PreserveBackground then
        Canvas.FillRect(ARect)
      else
        begin
          c:= Canvas.Brush.Color;
          try
            Canvas.Brush.Style:= bsClear;
            Canvas.Brush.Color:= c;
            Canvas.FillRect(ARect);
          finally
            Canvas.Brush.Color:= c;
          end;
        end;

      i:= AImageIndex;
      AImageList.Draw(Canvas, ARect.Left + 1, ARect.Top + ((ARect.Bottom - ARect.Top - AImageList.Height) div 2), i);

      r:= ARect;
      Inc(r.Left, AImageList.Width + 4);
      Canvas.TextRect(r, r.Left, r.Top + 2, AColumn.Field.DisplayText);
    end;
end;

{ TTreeNodesEnumerator }

function TTreeNodesEnumerator.GetItem(AIndex: Integer): TBaseTreeNodeEh;
begin
  Result:= TBaseTreeNodeEhHack(Container).Items[AIndex];
end;

function TTreeNodesEnumerator.ItemCount: Integer;
begin
  Result:= TBaseTreeNodeEhHack(Container).Count;
end;

{ TBaseTreeNodeEhHelper }

function TBaseTreeNodeEhHelper.Children: TEnumerableRec<TBaseTreeNodeEh>;
begin
  Result:= TTreeNodesEnumerator.CreateEnumerableRec(Self);
end;

{ Routines }

function InternalInitializeTreeNodesExpandedState(ANode: TBaseTreeNodeEh; AMustCollapseFunc: TFunc<TMemoryRecordEh, Boolean>): Boolean;
var
  Child: TBaseTreeNodeEh;
  IsChildCollapsed: Boolean;
  AllChildrenCollapsed: Boolean;
begin
  AllChildrenCollapsed:= True;
  for Child in ANode.Children do
    begin
      IsChildCollapsed:= InternalInitializeTreeNodesExpandedState(Child, AMustCollapseFunc);
      AllChildrenCollapsed:= AllChildrenCollapsed and IsChildCollapsed;
    end;

  TBaseTreeNodeEhHack(ANode).Expanded:= not AllChildrenCollapsed;

  Result:=
    AllChildrenCollapsed and
    Assigned(TBaseTreeNodeEhHack(ANode).Data) and
    AMustCollapseFunc(TMemoryRecordEh(TBaseTreeNodeEhHack(ANode).Data));
end;

procedure InitializeTreeNodesExpandedState(AGrid: TAbmesDBGrid; AMustCollapseFunc: TFunc<TMemoryRecordEh, Boolean>);
begin
  AGrid.TreeDataSet.TempDisableControls/
    AGrid.TreeDataSet.TempDisableSync/
      procedure begin
        InternalInitializeTreeNodesExpandedState(AGrid.TreeDataSet.RecordsView.MemoryTreeList.Root, AMustCollapseFunc);
        AGrid.TreeDataSet.RecordsView.MemoryTreeList.BuildVisibleItems;
        AGrid.TreeDataSet.Resync([]);
      end;
end;

end.
