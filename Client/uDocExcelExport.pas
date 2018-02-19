unit uDocExcelExport;

interface

uses
  AbmesDBGrid, uAttributeUtils, Controls, DB, dDocClient;

type
  TDocDef = record
  strict private
    FDocBranchCodeFieldName: string;
    FDocCodeFieldName: string;
    FHasDocItemsFieldName: string;
    FDocName: string;
  public
    constructor Create(const ADocBranchCodeFieldName, ADocCodeFieldName, AHasDocItemsFieldName, ADocName: string); overload;
    constructor Create(const ADocBranchCodeFieldName, ADocCodeFieldName, ADocName: string); overload;

    property DocBranchCodeFieldName: string read FDocBranchCodeFieldName;
    property DocCodeFieldName: string read FDocCodeFieldName;
    property HasDocItemsFieldName: string read FHasDocItemsFieldName;
    property DocName: string read FDocName;
  end;

type
  TDocDefs = array of TDocDef;

procedure MultiGridDocExcelExport(
  AGrids: array of TAbmesDBGrid;
  ExportInvisibleColumns: Boolean = True;
  RepeatFields: Boolean = False;
  AImageList: TImageList = nil;
  AImageIndexFieldName: string = '';
  ADocDefs: TDocDefs = nil;
  ADNCOnlyDefault: Boolean = False);

procedure GridDocExcelExport(
  AGrid: TAbmesDBGrid;
  ExportInvisibleColumns: Boolean = True;
  AImageList: TImageList = nil;
  AImageIndexFieldName: string = '';
  ADocDefs: TDocDefs = nil;
  ADNCOnlyDefault: Boolean = False);

procedure MultiGridMasterDetailDocExcelExport(
  AMasterGrids: array of TAbmesDBGrid;
  ADetailGrids: array of TAbmesDBGrid;
  ARepeatMasterFields: Boolean = False;
  ARepeatDetailFields: Boolean = False;
  AMasterDocDefs: TDocDefs = nil;
  ADetailDocDefs: TDocDefs = nil;
  ADNCOnlyDefault: Boolean = False);

procedure MasterDetailGridDocExcelExport(MasterGrid: TAbmesDBGrid; DetailGrid: TAbmesDBGrid;
  AMasterDocDefs: TDocDefs = nil;
  ADetailDocDefs: TDocDefs = nil;
  ADNCOnlyDefault: Boolean = False);

type
  TDocItemFilter = (difAll, difDNCOnly);
  DocExcelExportAttribute = class(TValueAttribute<TDocItemFilter>)
  public
    constructor Create(AValue: TDocItemFilter = difAll);
  end;

function DocDefsOf(const DocDefs: array of TDocDef): TDocDefs; overload;

function DocsOf(const ADataSet: TDataSet; const ADocDefs: TDocDefs; const ACurrentRecordOnly: Boolean = False): TDocs;

implementation

uses
  Classes, SysUtils, uUtils, uExcelExport, Forms,
  Generics.Collections, fDocExcelExport, uDocUtils, uEnumeratorUtils,
  System.IOUtils, System.StrUtils;

type
  TDocFieldDef = record
  strict private
    FDocBranchCodeField: TField;
    FDocCodeField: TField;
    FHasDocItemsField: TField;
    FDocName: string;
  public
    constructor Create(ADocBranchCodeField, ADocCodeField, AHasDocItemsField: TField; const ADocName: string);

    property DocBranchCodeField: TField read FDocBranchCodeField;
    property DocCodeField: TField read FDocCodeField;
    property HasDocItemsField: TField read FHasDocItemsField;
    property DocName: string read FDocName;
  end;

  TDocFieldDefList = TList<TDocFieldDef>;
  TDocFieldDefsArray = array of TDocFieldDefList;

resourcestring
  SDocItemDataNotExported = 'Съдържанието на това ИИО не е експортирано.' + SLineBreak +
                            'За да го видите, моля включете опцията "Експорт на съдържание" при Експорт към Excel.';

const
  NotExportedFileName = 'NotExported.txt';

function GetNotExportedFileName(const ADocDir: string): string;
begin
  Result:= TPath.Combine(ADocDir, NotExportedFileName);
end;

procedure PersistNotExportedFile(const ADocDir: string);
begin
  System.IOUtils.TDirectory.CreateDirectory(ADocDir);
  WriteUTF8StringToFile(
    UTF8Encode(SDocItemDataNotExported),
    GetNotExportedFileName(ADocDir));
end;

function DocDefsOf(const ADocFieldDefs: TDocFieldDefList): TDocDefs; overload;
var
  i: Integer;
  HasDocItemsFieldName: string;
begin
  SetLength(Result, ADocFieldDefs.Count);
  for i:= 0 to ADocFieldDefs.Count - 1 do
    begin
      if Assigned(ADocFieldDefs[i].HasDocItemsField) then
        HasDocItemsFieldName:= ADocFieldDefs[i].HasDocItemsField.FieldName
      else
        HasDocItemsFieldName:= '';

      Result[i]:=
        TDocDef.Create(
          ADocFieldDefs[i].DocBranchCodeField.FieldName,
          ADocFieldDefs[i].DocCodeField.FieldName,
          HasDocItemsFieldName,
          ADocFieldDefs[i].DocName
        );
    end;
end;

function BuildGetMoreCellsDataFunc(
  const ADocsDir: string;
  ADocItemsExportConfig: TDocItemsExportConfig;
  ADocFieldDefsArray: TDocFieldDefsArray;
  AdmDocClient: TdmDocClient
): TGetMoreCellsDataFunc;
begin
  Result:=
    function (const ADataSet: TDataSet; const AXLSFileName: string; const ACellDataType: TCellDataType): TCellsData
    var
      CellsData: TCellsData;
      DocFieldDefs: TDocFieldDefList;
      DocFieldDef: TDocFieldDef;
    begin
      SetLength(CellsData, 0);

      if (AdmDocClient.Tag = 0) then
        begin
          AdmDocClient.Tag:= 1;
          AdmDocClient.LoadDocs(DocsOf(ADataSet, DocDefsOf(ADocFieldDefsArray[0])));  // preload only master dataset
        end;

      for DocFieldDefs in ADocFieldDefsArray do
        if (DocFieldDefs.Count > 0) and (DocFieldDefs[0].DocCodeField.DataSet = ADataSet) then
          begin
//            AdmDocClient.LoadDocs(DocsOf(ADataSet, DocDefsOf(DocFieldDefs), True));

            for DocFieldDef in DocFieldDefs do
              if ((not Assigned(DocFieldDef.HasDocItemsField)) or (DocFieldDef.HasDocItemsField.AsInteger <> 0)) and
                 AdmDocClient.LoadDoc(DocFieldDef.DocBranchCodeField.AsInteger, DocFieldDef.DocCodeField.AsInteger) then
                begin
                  AdmDocClient.cdsDocItems.PreserveBookmark/
                    AdmDocClient.cdsDocItems.ForEach/
                      procedure
                      var
                        DocItemURI: string;
                        DocItemName: string;
                      begin
                        if (ADocItemsExportConfig.IncludeInactive or (not AdmDocClient.cdsDocItemsIS_INACTIVE.AsBoolean)) and
                           ((not ADocItemsExportConfig.DNCOnly) or AdmDocClient.cdsDocItems_IS_DNC_DOC_ITEM.AsBoolean) and
                           (DocItemState(AdmDocClient.cdsDocItems) in ADocItemsExportConfig.DocItemStates) and
                           not ArrayUtils.All<Integer>(ADocItemsExportConfig.ExcludedDocItemTypeCodes).Filter(AdmDocClient.cdsDocItemsDOC_ITEM_TYPE_CODE.AsInteger).Exists then
                          begin
                            if ADocItemsExportConfig.IncludeFileContents then
                              DocItemURI:= AdmDocClient.PersistDocItem(ADocsDir, not ADocItemsExportConfig.ExportForEdit)
                            else
                              DocItemURI:= GetNotExportedFileName(ADocsDir);

                            if (DocItemURI <> '') then
                              begin
                                if ADocItemsExportConfig.RelativeFilePath then
                                  DocItemURI:= SysUtils.ExtractRelativePath(AXLSFileName, DocItemURI);

                                DocItemName:=
                                  IfThen(DocFieldDef.DocName <> '',
                                    Format('[%s] %s', [DocFieldDef.DocName, AdmDocClient.cdsDocItemsDOC_ITEM_NAME.DisplayText]),
                                    AdmDocClient.cdsDocItemsDOC_ITEM_NAME.DisplayText
                                  );

                                SetLength(CellsData, Length(CellsData) + 1);
                                CellsData[Length(CellsData) - 1]:= TCellData.Create(DocItemName, DocItemURI);

                                if ADocItemsExportConfig.IncludeFileName then
                                  begin
                                    SetLength(CellsData, Length(CellsData) + 1);
                                    CellsData[Length(CellsData) - 1]:= TCellData.Create(DocItemURI, '');
                                  end;
                              end;
                          end;
                      end;
                end;
          end;

      Result:= CellsData;
    end
end;

procedure FillDocFieldDefs(DocFieldDefs: TDocFieldDefList;
  ADocDefs: TDocDefs; ADataSet: TDataSet);
var
  DocDef: TDocDef;
begin
  for DocDef in ADocDefs do
    DocFieldDefs.Add(
      TDocFieldDef.Create(
        ADataSet.FieldByName(DocDef.DocBranchCodeFieldName),
        ADataSet.FieldByName(DocDef.DocCodeFieldName),
        ADataSet.FindField(DocDef.HasDocItemsFieldName),
        DocDef.DocName
      )
    );
end;

procedure InternalMultiGridDocExcelExport(const AGrids: array of TAbmesDBGrid;
  ExportInvisibleColumns, RepeatFields: Boolean;
  AImageList: TImageList; AImageIndexFieldName: string;
  ADocDefs: TDocDefs; const AFileName, ADocsDir: string;
  ADocItemsExportConfig: TDocItemsExportConfig);
var
  ADocFieldDefsArray: TDocFieldDefsArray;
  Grids: TArray<TAbmesDBGrid>;
begin
  if not ADocItemsExportConfig.IncludeFileContents then
    PersistNotExportedFile(ADocsDir);

  Grids:= ArrayUtils.ArrayOf<TAbmesDBGrid>(AGrids);

  Utils.Using(TDocFieldDefList.Create)/
    procedure (DocFieldDefs: TDocFieldDefList)
    begin
      FillDocFieldDefs(DocFieldDefs, ADocDefs, Grids[0].DataSource.DataSet);

      Utils.Using(TdmDocClient.Create(Application))/
        procedure (dmDocClient: TdmDocClient)
        begin
          SetLength(ADocFieldDefsArray, 1);
          ADocFieldDefsArray[0]:= DocFieldDefs;

          MultiGridExcelExport(Grids, ExportInvisibleColumns, RepeatFields, AFileName, AImageList, AImageIndexFieldName,
            BuildGetMoreCellsDataFunc(ADocsDir, ADocItemsExportConfig, ADocFieldDefsArray, dmDocClient)
          );
        end;
    end;
end;

procedure MultiGridDocExcelExport(AGrids: array of TAbmesDBGrid;
  ExportInvisibleColumns, RepeatFields: Boolean;
  AImageList: TImageList; AImageIndexFieldName: string;
  ADocDefs: TDocDefs; ADNCOnlyDefault: Boolean);
var
  FileName: string;
  DocsDir: string;
  DocItemsExportConfig: TDocItemsExportConfig;
begin
  Assert(Length(AGrids) > 0, 'MultiGridExcelExport: No Grids found!');

  if (Length(ADocDefs) = 0) then
    MultiGridExcelExport(AGrids, ExportInvisibleColumns, RepeatFields)
  else
    begin
      FileName:= DefaultExportFileName(AGrids[0]);
      case TfmDocExcelExport.ShowForm(FileName, DocsDir, DocItemsExportConfig, ADNCOnlyDefault) of
        deetNone:
          Abort;

        deetNormal:
          MultiGridExcelExport(AGrids, ExportInvisibleColumns, RepeatFields, FileName, AImageList, AImageIndexFieldName);

        deetWithDocs:
          InternalMultiGridDocExcelExport(AGrids, ExportInvisibleColumns, RepeatFields, AImageList, AImageIndexFieldName,
            ADocDefs, FileName, DocsDir, DocItemsExportConfig);
      end;  { case }
    end;
end;

procedure GridDocExcelExport(AGrid: TAbmesDBGrid; ExportInvisibleColumns: Boolean;
  AImageList: TImageList; AImageIndexFieldName: string;
  ADocDefs: TDocDefs; ADNCOnlyDefault: Boolean);
begin
  Assert(Assigned(AGrid), 'GridExcelExport: AGrid must be assigned');
  MultiGridDocExcelExport([AGrid], ExportInvisibleColumns, False, AImageList, AImageIndexFieldName, ADocDefs, ADNCOnlyDefault);
end;   { GridExcelExport }

procedure InternalMultiGridMasterDetailDocExcelExport(
  const AMasterGrids: array of TAbmesDBGrid;
  const ADetailGrids: array of TAbmesDBGrid;
  ARepeatMasterFields: Boolean;
  ARepeatDetailFields: Boolean;
  AMasterDocDefs: TDocDefs;
  ADetailDocDefs: TDocDefs;
  const AFileName, ADocsDir: string;
  ADocItemsExportConfig: TDocItemsExportConfig);
var
  ADocFieldDefsArray: TDocFieldDefsArray;
  MasterGrids: TArray<TAbmesDBGrid>;
  DetailGrids: TArray<TAbmesDBGrid>;
begin
  if not ADocItemsExportConfig.IncludeFileContents then
    PersistNotExportedFile(ADocsDir);

  MasterGrids:= ArrayUtils.ArrayOf<TAbmesDBGrid>(AMasterGrids);
  DetailGrids:= ArrayUtils.ArrayOf<TAbmesDBGrid>(ADetailGrids);

  Utils.Using(TDocFieldDefList.Create)/
    procedure (MasterDocFieldDefs: TDocFieldDefList)
    begin
      FillDocFieldDefs(MasterDocFieldDefs, AMasterDocDefs, MasterGrids[0].DataSource.DataSet);

      Utils.Using(TDocFieldDefList.Create)/
        procedure (DetailDocFieldDefs: TDocFieldDefList)
        begin
          FillDocFieldDefs(DetailDocFieldDefs, ADetailDocDefs, DetailGrids[0].DataSource.DataSet);

          Utils.Using(TdmDocClient.Create(Application))/
            procedure (dmDocClient: TdmDocClient)
            begin
              SetLength(ADocFieldDefsArray, 2);
              ADocFieldDefsArray[0]:= MasterDocFieldDefs;
              ADocFieldDefsArray[1]:= DetailDocFieldDefs;

              MultiGridMasterDetailExcelExport(MasterGrids, DetailGrids, ARepeatMasterFields, ARepeatDetailFields, AFileName,
                BuildGetMoreCellsDataFunc(ADocsDir, ADocItemsExportConfig, ADocFieldDefsArray, dmDocClient)
              );
            end;
        end;
    end;
end;

procedure MultiGridMasterDetailDocExcelExport(
  AMasterGrids: array of TAbmesDBGrid;
  ADetailGrids: array of TAbmesDBGrid;
  ARepeatMasterFields: Boolean;
  ARepeatDetailFields: Boolean;
  AMasterDocDefs: TDocDefs;
  ADetailDocDefs: TDocDefs;
  ADNCOnlyDefault: Boolean);
var
  FileName: string;
  DocsDir: string;
  DocItemsExportConfig: TDocItemsExportConfig;
begin
  Assert((Length(AMasterGrids) > 0) and (Length(ADetailGrids) > 0), 'MultiGridMasterDetailExcelExport: No Grids found!');

  if (Length(AMasterDocDefs) = 0) and (Length(ADetailDocDefs) = 0) then
    MultiGridMasterDetailExcelExport(AMasterGrids, ADetailGrids, ARepeatMasterFields, ARepeatDetailFields)
  else
    begin
      FileName:= DefaultExportFileName(AMasterGrids[0]);
      case TfmDocExcelExport.ShowForm(FileName, DocsDir, DocItemsExportConfig, ADNCOnlyDefault) of
        deetNone:
          Abort;

        deetNormal:
          MultiGridMasterDetailExcelExport(AMasterGrids, ADetailGrids, ARepeatMasterFields, ARepeatDetailFields, FileName);

        deetWithDocs:
          InternalMultiGridMasterDetailDocExcelExport(AMasterGrids, ADetailGrids, ARepeatMasterFields, ARepeatDetailFields, AMasterDocDefs, ADetailDocDefs,
            FileName, DocsDir, DocItemsExportConfig);
      end;  { case }
    end;
end;

procedure MasterDetailGridDocExcelExport(MasterGrid: TAbmesDBGrid; DetailGrid: TAbmesDBGrid;
  AMasterDocDefs: TDocDefs; ADetailDocDefs: TDocDefs; ADNCOnlyDefault: Boolean);
begin
  MultiGridMasterDetailDocExcelExport([MasterGrid], [DetailGrid], False, False, AMasterDocDefs, ADetailDocDefs);
end;

{ TDocDef }

constructor TDocDef.Create(const ADocBranchCodeFieldName, ADocCodeFieldName,
  AHasDocItemsFieldName, ADocName: string);
begin
  FDocBranchCodeFieldName:= ADocBranchCodeFieldName;
  FDocCodeFieldName:= ADocCodeFieldName;
  FHasDocItemsFieldName:= AHasDocItemsFieldName;
  FDocName:= ADocName;
end;

constructor TDocDef.Create(const ADocBranchCodeFieldName, ADocCodeFieldName, ADocName: string);
begin
  Create(ADocBranchCodeFieldName, ADocCodeFieldName, '', ADocName);
end;

{ TDocFieldDef }

constructor TDocFieldDef.Create(ADocBranchCodeField, ADocCodeField, AHasDocItemsField: TField;
  const ADocName: string);
begin
  FDocBranchCodeField:= ADocBranchCodeField;
  FDocCodeField:= ADocCodeField;
  FHasDocItemsField:= AHasDocItemsField;
  FDocName:= ADocName;
end;

{ DocExcelExportAttribute }

constructor DocExcelExportAttribute.Create(AValue: TDocItemFilter);
begin
  inherited Create(AValue);
end;

function DocDefsOf(const DocDefs: array of TDocDef): TDocDefs;
var
  i: Integer;
begin
  SetLength(Result, Length(DocDefs));

  for i:= 0 to Length(DocDefs) - 1 do
    Result[i]:= DocDefs[i];
end;

function DocExists(const ADoc: TDoc; const ADocs: TDocs): Boolean;
var
  doc: TDoc;
begin
  for doc in ADocs do
    if (doc.DocBranchCode = ADoc.DocBranchCode) and (doc.DocCode = ADoc.DocCode) then
      Exit(True);

  Result:= False;
end;

function DocsOf(const ADataSet: TDataSet; const ADocDefs: TDocDefs;
  const ACurrentRecordOnly: Boolean): TDocs;
var
  Docs: TDocs;
begin
  SetLength(Docs, 0);

  Utils.Using(TDocFieldDefList.Create)/
    procedure (DocFieldDefs: TDocFieldDefList)
    begin
      FillDocFieldDefs(DocFieldDefs, ADocDefs, ADataSet);

      ADataSet.TempDisableControls/
        ADataSet.PreserveRecNo/
          procedure
          var
            DocFieldDef: TDocFieldDef;
            doc: TDoc;
          begin
            if not ACurrentRecordOnly then
              ADataSet.First;

            while not ADataSet.Eof do
              begin
                for DocFieldDef in DocFieldDefs do
                  if (DocFieldDef.DocBranchCodeField.AsInteger <> 0) and
                     (DocFieldDef.DocCodeField.AsInteger <> 0) and
                     ((not Assigned(DocFieldDef.HasDocItemsField)) or (DocFieldDef.HasDocItemsField.AsInteger <> 0)) then
                    begin
                      doc:= TDoc.Create(DocFieldDef.DocBranchCodeField.AsInteger, DocFieldDef.DocCodeField.AsInteger);
                      if not DocExists(doc, Docs) then
                        begin
                          SetLength(Docs, Length(Docs)+1);
                          Docs[Length(Docs)-1]:= doc;
                        end;
                    end;

                if ACurrentRecordOnly then
                  Break
                else
                  ADataSet.Next;
              end;
          end;
    end;

  Result:= Docs;
end;

end.
