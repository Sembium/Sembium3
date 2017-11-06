unit fFieldEditFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fDBFrame, Db, DbCtrls, ImgList, ActnList, Generics.Collections,
  uEnumeratorUtils, System.Actions;

type
  TFieldEditFrame = class;

  TFieldEditFrameFieldsEnumerator = class(TIndexedEnumerator<TField, TFieldEditFrame>)
  protected
    function GetItem(AIndex: Integer): TField; override;
    function ItemCount: Integer; override;
  end;

  TFieldEditFrame = class(TDBFrame)
    actClearFieldValues: TAction;
    procedure actClearFieldValuesUpdate(Sender: TObject);
    procedure actClearFieldValuesExecute(Sender: TObject);
  private
    FFieldNames: string;
    FDataLinks: TObjectList<TFieldDataLink>;
    FShowAllWhenEmpty: Boolean;
    FSettingModified: Boolean;
    FSettingEdit: Boolean;
    FDataSetsOpened: Boolean;
    FSkipDataChange: Boolean;
    procedure SetFieldNames(const Value: string);
    function GetFields(Index: Integer): TField;
    function GetFieldCount: Integer;
    procedure FillDataLinksList;
    procedure InternalDataChange(Sender: TObject);
  protected
    procedure DoExit; override;
    function GetClearFieldEnabled: Boolean; virtual;
    procedure DataChange(Sender: TObject); virtual;
    procedure UpdateData(Sender: TObject); virtual;
    procedure DoClearFieldValues; virtual;
    procedure FieldsChanged; virtual;
    procedure Modified;
    procedure Edit;
    procedure UpdateRecord;
    procedure ForceUpdateRecord;
    procedure Reset;

    property SettingModified: Boolean read FSettingModified;
    property SettingEdit: Boolean read FSettingEdit;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure ShowFrame; virtual;
    procedure HideFrame; virtual;
    function IsEmpty: Boolean;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;

    function AllFields: TEnumerableRec<TField>;

    property DataSetsOpened: Boolean read FDataSetsOpened;
    property FieldCount: Integer read GetFieldCount;
    property Fields[Index: Integer]: TField read GetFields;
    property FieldNames: string read FFieldNames write SetFieldNames;
    property ShowAllWhenEmpty: Boolean read FShowAllWhenEmpty write FShowAllWhenEmpty default False;
    property SkipDataChange: Boolean read FSkipDataChange write FSkipDataChange;
  end;

  TFieldEditFrameClass = class of TFieldEditFrame;

implementation

uses
  uUtils;

{$R *.DFM}

{ TFieldEditFrameFieldsEnumerator }

function TFieldEditFrameFieldsEnumerator.GetItem(AIndex: Integer): TField;
begin
  Result:= Container.Fields[AIndex];
end;

function TFieldEditFrameFieldsEnumerator.ItemCount: Integer;
begin
  Result:= Container.FieldCount;
end;

{ TFieldEditFrame }

function TFieldEditFrame.AllFields: TEnumerableRec<TField>;
begin
  Result:= TFieldEditFrameFieldsEnumerator.CreateEnumerableRec(Self);
end;

constructor TFieldEditFrame.Create(AOwner: TComponent);
begin
  FDataLinks:= TObjectList<TFieldDataLink>.Create;

  inherited Create(AOwner);

  FShowAllWhenEmpty:= False;
end;

destructor TFieldEditFrame.Destroy;
begin
  FreeAndNil(FDataLinks);
  inherited Destroy;
end;

function TFieldEditFrame.GetClearFieldEnabled: Boolean;
var
  i: Integer;
begin
  if Assigned(dsData.DataSet) and not ReadOnly and dsData.DataSet.CanModify then
    begin
      i:= 0;
      while (i < FieldCount) and Fields[i].IsNull do Inc(i);

      Result:= (i < FieldCount);      // znachi ima pole deto ne e Null
    end
  else
    Result:= False;
end;

procedure TFieldEditFrame.actClearFieldValuesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetClearFieldEnabled;
end;

procedure TFieldEditFrame.actClearFieldValuesExecute(Sender: TObject);
begin
  inherited;
  SetFocus;
  DoClearFieldValues;
end;

procedure TFieldEditFrame.SetFieldNames(const Value: string);
begin
  if (Value <> FFieldNames) then
    begin
      FFieldNames:= Value;
      FillDataLinksList;
    end;   { if }
  FieldsChanged;
end;

function TFieldEditFrame.GetFields(Index: Integer): TField;
begin
  Result:= TFieldDataLink(FDataLinks[Index]).Field;
end;

function TFieldEditFrame.GetFieldCount: Integer;
begin
  if Assigned(FDataLinks) then
    Result:= FDataLinks.Count
  else
    Result:= 0;
end;

procedure TFieldEditFrame.FillDataLinksList;
var
  FldNames: TStringList;
  FldName: string;
  DataLink: TFieldDataLink;
begin
  if not Assigned(dsData) then
    Exit;

  FldNames:= TStringList.Create;
  try
    FldNames.Delimiter:= ';';
    FldNames.DelimitedText:= FFieldNames;

    FDataLinks.Clear;
    for FldName in FldNames do
      begin
        DataLink:= TFieldDataLink.Create;
        try
          DataLink.Control:= Self;
          DataLink.OnDataChange:= InternalDataChange;
          DataLink.OnUpdateData:= UpdateData;
          DataLink.FieldName:= FldName;
          DataLink.DataSource:= dsData;
          FDataLinks.Add(DataLink);
        except
          FreeAndNil(DataLink);
          raise;
        end;  { try }
      end;  { for }
  finally
    FreeAndNil(FldNames);
  end;
end;

procedure TFieldEditFrame.ShowFrame;
begin
  if not FDataSetsOpened then
    OpenDataSets;

  Visible:= True;
end;

procedure TFieldEditFrame.HideFrame;
begin
  Visible:= False;
  CloseDataSets;
end;

procedure TFieldEditFrame.InternalDataChange(Sender: TObject);
begin
  if not SkipDataChange then
    DataChange(Sender);
end;

function TFieldEditFrame.IsEmpty: Boolean;
var
  f: TField;
begin
  Result:= False;

  for f in AllFields do
    if not f.IsNull then
      Exit;

  Result:= True;
end;

procedure TFieldEditFrame.DataChange(Sender: TObject);
begin
  // do nothing
end;

procedure TFieldEditFrame.UpdateData(Sender: TObject);
begin
  // do nothing
end;

procedure TFieldEditFrame.Modified;
var
  fdl: TFieldDataLink;
begin
  if FSettingModified then
    Exit;

  FSettingModified:= True;
  try
    try
      for fdl in FDataLinks do
        fdl.Modified;
    except
      SetFocus;
      raise;
    end;  { try }
  finally
    FSettingModified:= False;
  end;  { try }
end;

procedure TFieldEditFrame.OpenDataSets;
begin
  inherited;
  FDataSetsOpened:= True;
end;

procedure TFieldEditFrame.CloseDataSets;
begin
  inherited;
  FDataSetsOpened:= False;
end;

procedure TFieldEditFrame.UpdateRecord;
var
  fdl: TFieldDataLink;
begin
  try
    for fdl in FDataLinks do
      fdl.UpdateRecord;
  except
    SetFocus;
    raise;
  end;  { try }
end;

procedure TFieldEditFrame.ForceUpdateRecord;
begin
  Modified;
  UpdateRecord;
end;

procedure TFieldEditFrame.DoExit;
begin
  inherited DoExit;
  UpdateRecord;
end;

procedure TFieldEditFrame.DoClearFieldValues;
var
  fld: TField;
  fr: TFieldEditFrame;
begin
  for fld in AllFields do
    begin
      CheckEditMode(fld.DataSet);
      fld.Clear;
    end;

  for fr in Frames.OfType<TFieldEditFrame> do
    fr.DoClearFieldValues;
end;

procedure TFieldEditFrame.Edit;
var
  fdl: TFieldDataLink;
begin
  if FSettingEdit then
    Exit;

  FSettingEdit:= True;
  try
    try
      for fdl in FDataLinks do
        fdl.Edit;
    except
      SetFocus;
      raise;
    end;  { try }
  finally
    FSettingEdit:= False;
  end;  { try }
end;

procedure TFieldEditFrame.Reset;
var
  fdl: TFieldDataLink;
begin
  for fdl in FDataLinks do
    fdl.Reset;
end;

procedure TFieldEditFrame.FieldsChanged;
begin
  // do nothing
end;

end.
