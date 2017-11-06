unit fTreeNodeFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFieldEditFrame, DB, ActnList, AbmesFields, DBClient,
  AbmesClientDataSet, Buttons, GridsEh, DBGridEh, AbmesDBGrid, ExtCtrls,
  StdCtrls, uClientTypes, xChosenNodes, DBGridEhGrouping, ParamDataSet,
  fFilterFrame, System.Actions;

type
  TNomItem = record
    Code: Integer;
    Abbrev: string;
    Name: string;
  end;

type
  TfrTreeNodeFilter = class(TFilterFrame)
    grpTreeNodeFilter: TGroupBox;
    pnlNodes: TPanel;
    cdsChosenNodes: TAbmesClientDataSet;
    dsChosenNodes: TDataSource;
    cdsChosenNodesParams: TAbmesClientDataSet;
    dsChosenNodesParams: TDataSource;
    procedure cdsChosenNodesNODE_CODEChange(Sender: TField);
    procedure cdsChosenNodesBeforePost(DataSet: TDataSet);
    procedure cdsChosenNodesBeforeClose(DataSet: TDataSet);
    procedure dsChosenNodesParamsDataChange(Sender: TObject;
      Field: TField);
    procedure cdsChosenNodesAfterOpen(DataSet: TDataSet);
  private
    FRememberChosenNodes: array of Integer;
    FUpdatingInternalDataSets: Boolean;
    procedure LoadNodesData;
    procedure SaveNodesData;
    function GetAsString: string;
    procedure SetAsString(const Value: string);
  protected
    procedure UpdateData(Sender: TObject); override;
    procedure DoDataChange(Sender: TObject); override;

    function GetAddNodeEnabled: Boolean; virtual;
    function GetDelNodeEnabled: Boolean; virtual;
    function GetEditNodeEnabled: Boolean; virtual;
    procedure DoNodeFieldChanged; virtual; abstract;
    function CheckNodeRelations(ChosenNode: Integer): Integer; virtual; abstract;

    procedure ReadFromDataSets(XMLChosenNode: IXMLChosenNode); virtual;
    procedure WriteToDataSets(XMLChosenNode: IXMLChosenNode); virtual;

    procedure SetDefaultParamValues; virtual;

    procedure EnableDataSetControls; virtual;
    procedure DisableDataSetControls; virtual;

    procedure FillRememberChosenNodes(SkipCurrentNode: Boolean); virtual;
    procedure ClearRememberChosenNodes;

    procedure FillDataSetValues(ADataSet: TDataSet; AValues: array of TNomItem);

    procedure AfterSetAsString(const Value: string); virtual;
  public
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;

    property AsString: string read GetAsString write SetAsString;
  end;

implementation

uses
  dMain, VDBConsts, AbmesDialogs, uUtils, uClientUtils, uTreeNodes,
  uTreeNodeParams, fTreeSelectForm, uTreeClientUtils, XMLIntf, XMLDoc,
  uXMLUtils, uChosenNodes, uFilterField, fEditForm, Menus;

{$R *.dfm}

resourcestring
  SCantAddNodeBecause = 'Не можете да добавите елемента, защото %s';
  SNewIsParent = 'е родител на един от вече посочените елементи';
  SNewIsChild = 'един от вече посочените елементи му е родител';
  STooManyElementsOrParams = '%s: Прекалено много избрани елементи или параметри';

{ TfrTreeNodeFilter }

procedure TfrTreeNodeFilter.OpenDataSets;
begin
  inherited OpenDataSets;
  cdsChosenNodes.CreateDataSet;
  if (cdsChosenNodesParams.Fields.Count > 0) or
     (cdsChosenNodesParams.FieldDefs.Count > 0) then
    begin
      cdsChosenNodesParams.CreateDataSet;
      
      cdsChosenNodesParams.Append;
      try
        FUpdatingInternalDataSets:= True;
        try
          SetDefaultParamValues;
        finally
          FUpdatingInternalDataSets:= False;
        end;  { try }

        cdsChosenNodesParams.Post;
      except
        cdsChosenNodesParams.Cancel;
        raise;
      end;  { try }
    end;
end;

procedure TfrTreeNodeFilter.ClearRememberChosenNodes;
begin
  SetLength(FRememberChosenNodes, 0);
  FRememberChosenNodes:= nil;
end;

procedure TfrTreeNodeFilter.CloseDataSets;
begin
  if cdsChosenNodesParams.Active then
    cdsChosenNodesParams.Close;

  cdsChosenNodes.Close;
  inherited CloseDataSets;
end;

procedure TfrTreeNodeFilter.cdsChosenNodesNODE_CODEChange(Sender: TField);
begin
  inherited;
  DoNodeFieldChanged;
end;

function TfrTreeNodeFilter.GetAddNodeEnabled: Boolean;
begin
  Result:=
    ((not ReadOnly) or BaseFilterEnabled) and
    (not cdsChosenNodes.ReadOnly);
end;

function TfrTreeNodeFilter.GetDelNodeEnabled: Boolean;
begin
  Result:=
    not (cdsChosenNodes.BOF and cdsChosenNodes.EOF) and
    ((not ReadOnly) or BaseFilterEnabled) and
    (not cdsChosenNodes.ReadOnly);
end;

function TfrTreeNodeFilter.GetEditNodeEnabled: Boolean;
begin
  Result:=
    not (cdsChosenNodes.BOF and cdsChosenNodes.Eof);
end;

procedure TfrTreeNodeFilter.ReadFromDataSets(XMLChosenNode: IXMLChosenNode);
begin
  XMLChosenNode.NodeCode:= cdsChosenNodes.FieldByName('NODE_CODE').AsVariant;
end;

procedure TfrTreeNodeFilter.WriteToDataSets(XMLChosenNode: IXMLChosenNode);
begin
  cdsChosenNodes.FieldByName('NODE_CODE').AsVariant:= XMLChosenNode.NodeCode;
end;

function TfrTreeNodeFilter.GetAsString: string;
var
  XMLDocument: IXMLDocument;
  XMLChosenNodesAndParams: IXMLChosenNodesAndParams;
  XMLChosenNodes: IXMLChosenNodes;
  XMLChosenNode: IXMLChosenNode;
  XMLChosenNodesParams: IXMLChosenNodesParams;
  i: Integer;
  SaveCursor: TCursor;
  ChosenNodesParamsAreNulls: Boolean;
begin
  Assert(cdsChosenNodes.Active);

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    ChosenNodesParamsAreNulls:= True;
    if cdsChosenNodesParams.Active then
      for i:= 0 to cdsChosenNodesParams.FieldCount - 1 do
        begin
          ChosenNodesParamsAreNulls:=
            ChosenNodesParamsAreNulls and cdsChosenNodesParams.Fields[i].IsNull;

          if not ChosenNodesParamsAreNulls then
            Break;
        end;

    if cdsChosenNodes.IsEmpty and ChosenNodesParamsAreNulls then
      Result:= ''
    else
      begin
        XMLDocument:= NewXMLDocument;
        XMLChosenNodesAndParams:= GetChosenNodesAndParams(XMLDocument);
        XMLChosenNodes:= XMLChosenNodesAndParams.ChosenNodes;
        XMLChosenNodesParams:= XMLChosenNodesAndParams.ChosenNodesParams;

        XMLChosenNodesAndParams.AllIfEmpty:= ShowAllWhenEmpty;

        cdsChosenNodes.TempDisableControls/
          cdsChosenNodes.PreserveBookmark/
            cdsChosenNodes.ForEach/
              procedure begin
                XMLChosenNode:= XMLChosenNodes.Add;
                ReadFromDataSets(XMLChosenNode);
              end;

        if cdsChosenNodesParams.Active then
          for i:= 0 to cdsChosenNodesParams.FieldCount - 1 do
            with XMLChosenNodesParams.Add do
              begin
                ParamName:= cdsChosenNodesParams.Fields[i].FieldName;
                ParamValue:= cdsChosenNodesParams.Fields[i].AsVariant;
              end;

        SetDefaultAttributes(XMLDocument);
        Result:= XMLDocument.XML.Text;
      end;

    if BaseFilterEnabled and (Result <> BaseFilter) then
      Result:= ConcatXMLs(Result, BaseFilter);
  finally
    Screen.Cursor:= SaveCursor;
  end;  { try }
end;

procedure TfrTreeNodeFilter.SetAsString(const Value: string);
var
  XMLDocument: IXMLDocument;
  XMLChosenNodesAndParams: IXMLChosenNodesAndParams;
  XMLChosenNodes: IXMLChosenNodes;
  XMLCurrentNode: IXMLChosenNode;
  XMLChosenNodesParams: IXMLChosenNodesParams;
  f: TField;
  SaveCursor: TCursor;
begin
  if not cdsChosenNodes.Active then
    Exit;

  if (Value = AsString) then
    Exit;

  DisableDataSetControls;
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    cdsChosenNodes.EmptyDataSet;

    if cdsChosenNodesParams.Active then
      cdsChosenNodesParams.SafeEdit/
        procedure begin
          SetDefaultParamValues;
        end;

    XMLDocument:= NewXMLDocument;

    with SplitXMLs(Value) do
      begin
        if (XML2 <> '') then
          BaseFilter:= XML2
        else
          BaseFilter:= XML1;

        XMLDocument.XML.Text:= XML1;
      end;

    XMLChosenNodesAndParams:= GetChosenNodesAndParams(XMLDocument);
    XMLChosenNodes:= XMLChosenNodesAndParams.ChosenNodes;
    XMLChosenNodesParams:= XMLChosenNodesAndParams.ChosenNodesParams;

    if not VarIsNullOrEmpty(XMLChosenNodesAndParams.AllIfEmpty) then
      ShowAllWhenEmpty:= XMLChosenNodesAndParams.AllIfEmpty;

    for XMLCurrentNode in All(XMLChosenNodes) do
      cdsChosenNodes.SafeAppend/
        procedure begin
          WriteToDataSets(XMLCurrentNode);
        end;

    if cdsChosenNodesParams.Active then
      cdsChosenNodesParams.SafeEdit/
        procedure
        var
          XMLChosenNodesParam: IXMLChosenNodesParam;
        begin
          for XMLChosenNodesParam in All(XMLChosenNodesParams) do
            begin
              f:= cdsChosenNodesParams.FindField(XMLChosenNodesParam.ParamName);
              if Assigned(f) then
                begin
                  if VarIsNull(XMLChosenNodesParam.ParamValue) then
                    f.Clear
                  else
                    f.AsString:= XMLChosenNodesParam.ParamValue;
                end;  { if }
            end;  { for }
        end;

    cdsChosenNodes.First;

    AfterSetAsString(Value);
  finally
    Screen.Cursor:= SaveCursor;
    EnableDataSetControls;
  end;  { try }
end;

procedure TfrTreeNodeFilter.cdsChosenNodesBeforePost(DataSet: TDataSet);
var
  i: Integer;
  s: string;
begin
  inherited;

  if DataSet.Modified then
    begin
      for i:= 0 to Length(FRememberChosenNodes) - 1 do
        begin
          case CheckNodeRelations(FRememberChosenNodes[i]) of
            0:
              Continue;
            1:
              s:= SNewIsChild;
            2:
              s:= SNewIsParent;
           end;

           raise Exception.CreateFmt(SCantAddNodeBecause, [s]);
        end;
    end;
end;

procedure TfrTreeNodeFilter.FillRememberChosenNodes(SkipCurrentNode: Boolean);
var
  i: Integer;
  CurrentNode: Integer;
  b: TBookmark;
begin
  DisableDataSetControls;
  try
    with cdsChosenNodes do
      begin
        SetLength(FRememberChosenNodes, RecordCount - Ord(SkipCurrentNode));
        i:= 0;
        if SkipCurrentNode then
          CurrentNode:= cdsChosenNodes.FieldByName('NODE_CODE').AsInteger
        else
          CurrentNode:= 0;

        b:= Bookmark;
        try
          First;
          while not Eof do
            begin
              if (cdsChosenNodes.FieldByName('NODE_CODE').AsInteger <> CurrentNode) then
                begin
                  FRememberChosenNodes[i]:= cdsChosenNodes.FieldByName('NODE_CODE').AsInteger;
                  Inc(i);
                end;

              Next;
            end;
        finally
          Bookmark:= b;
        end;  { try }
      end;
  finally
    EnableDataSetControls;
  end;
end;

procedure TfrTreeNodeFilter.DoDataChange(Sender: TObject);
begin
  LoadNodesData;
end;

procedure TfrTreeNodeFilter.UpdateData(Sender: TObject);
begin
  inherited;
  ModifyReadOnlyFields(
    procedure begin
      SaveNodesData;
    end
  );
end;

procedure TfrTreeNodeFilter.LoadNodesData;
var
  f: TField;
  s: string;
begin
  if (FieldCount = 0) then
    f:= nil
  else
    f:= Fields[0];

  if not Assigned(f) or f.IsNull then
    s:= ''
  else
    begin
      Assert((f is TAbmesWideStringField) or (f is TBlobField));

      if f is TAbmesWideStringField then
        s:= f.AsString
      else
        s:= ReadStringFromBlobField(f);
    end;

  FUpdatingInternalDataSets:= True;
  try
    AsString:= s;
  finally
    FUpdatingInternalDataSets:= False;
  end;
end;

procedure TfrTreeNodeFilter.SaveNodesData;
var
  f: TField;
  s: string;
begin
  if (FieldCount > 0) then
    begin
      f:= Fields[0];

      Assert(Assigned(f));

      if cdsChosenNodes.Bof and
         cdsChosenNodes.Eof and
         not cdsChosenNodesParams.Active then
        f.Clear
      else
        begin
          Assert((f is TAbmesWideStringField) or (f is TBlobField));

          s:= AsString;
          if f is TAbmesWideStringField then
            begin
              if (Length(s) >= f.Size) then
                raise Exception.CreateFmt(STooManyElementsOrParams, [grpTreeNodeFilter.Name]);

              CheckEditMode(f.DataSet);
              f.AsString:= s;
            end
          else
            begin
              CheckEditMode(f.DataSet);
              WriteStringToBlobField(s, f);
            end;
        end;
    end;  { if }
end;

procedure TfrTreeNodeFilter.DisableDataSetControls;
begin
  cdsChosenNodes.DisableControls;
end;

procedure TfrTreeNodeFilter.EnableDataSetControls;
begin
  cdsChosenNodes.EnableControls;
end;

procedure TfrTreeNodeFilter.AfterSetAsString(const Value: string);
begin
  // do nothing
end;

procedure TfrTreeNodeFilter.cdsChosenNodesAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cdsChosenNodes.FieldByName('NODE_CODE').OnChange:= cdsChosenNodesNODE_CODEChange;
end;

procedure TfrTreeNodeFilter.cdsChosenNodesBeforeClose(DataSet: TDataSet);
begin
  inherited;
  SetLength(FRememberChosenNodes, 0);
end;

procedure TfrTreeNodeFilter.SetDefaultParamValues;
var
  i: Integer;
begin
  Assert(cdsChosenNodesParams.State in dsEditModes);

  for i:= 0 to cdsChosenNodesParams.Fields.Count - 1 do
    cdsChosenNodesParams.Fields[i].Clear;
end;

procedure TfrTreeNodeFilter.dsChosenNodesParamsDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if Assigned(Field) and not FUpdatingInternalDataSets then
    ForceUpdateRecord;
end;

procedure TfrTreeNodeFilter.FillDataSetValues(ADataSet: TDataSet; AValues: array of TNomItem);
var
  NomItem: TNomItem;
begin
  for NomItem in AValues do
    with NomItem do
      ADataSet.AppendRecord([IntToVar(Code), Abbrev, Name]);
end;

end.
