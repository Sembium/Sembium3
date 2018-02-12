unit uExcelExport;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  AbmesDBGrid, DB, DBClient, Controls;

type
  TSetsOfGrids = array of array of TAbmesDBGrid;

type
  TCellData = record
  private
    FValue: string;
    FHyperlink: string;
  public
    constructor Create(const AValue, AHyperlink: string);

    property Value: string read FValue;
    property Hyperlink: string read FHyperlink;
  end;

  TCellsData = array of TCellData;

type
  TCellDataType = (cdtCaption, cdtValue);
  TGetMoreCellsDataFunc = reference to function(const ADataSet: TDataSet; const AXLSFileName: string;
    const ACellDataType: TCellDataType): TCellsData;

function ExcelExportAvailable: Boolean;

procedure MultiGridExcelExport(AGrids: array of TAbmesDBGrid;
  ExportInvisibleColumns: Boolean = True; RepeatFields: Boolean = False;
  const AFileName: string = '';
  AImageList: TImageList = nil; AImageIndexFieldName: string = '';
  AGetMoreCellsDataFunc: TGetMoreCellsDataFunc = nil);

procedure GridExcelExport(AGrid: TAbmesDBGrid;
  ExportInvisibleColumns: Boolean = True;
  const AFileName: string = '';
  AImageList: TImageList = nil; AImageIndexFieldName: string = '';
  AGetMoreCellsDataFunc: TGetMoreCellsDataFunc = nil); overload;

procedure MultiGridMasterDetailExcelExport(
  AMasterGrids: array of TAbmesDBGrid;
  ADetailGrids: array of TAbmesDBGrid;
  ARepeatMasterFields: Boolean = False;
  ARepeatDetailFields: Boolean = False;
  const AFileName: string = '';
  AGetMoreCellsDataFunc: TGetMoreCellsDataFunc = nil);

procedure MasterDetailGridExcelExport(MasterGrid: TAbmesDBGrid; DetailGrid: TAbmesDBGrid;
  const AFileName: string = '';
  AGetMoreCellsDataFunc: TGetMoreCellsDataFunc = nil);

// Low(ASetsOfGrids) .. High(ASetsOfGrids) - broi niva na koito stava exportiraneto, pyrvoto e glavnia master, posle sa detaili, detaili na detaili i t.n.
// Low(ASetsOfGrids) triabva da e 0 !
// ASetsOfGrids[i] - mnojestvo gridove ot nivo i
// ARepeatFields[i] - dali da exportva povtariashtite se koloni ot nivo i
procedure MultiGridMultiLevelExcelExport(
  ASetsOfGrids: TSetsOfGrids;
  ARepeatFields: array of Boolean);

procedure MultiLevelExcelExport(AGrids: array of TAbmesDBGrid);

// LevelField must be 0 based
procedure TreeDataSetExcelExport(ADataSet: TClientDataSet; ATreeFieldName, ALevelFieldName: string;
  AImageList: TImageList = nil; AImageIndexFieldName: string = '';
  AGetMoreCellsDataFunc: TGetMoreCellsDataFunc = nil);

// pokazwa dialog sled zawyrshwane na export kym file s butoni - OK, Open File, Open Folder
procedure ShowExportFinishedDialog(const AFileName: string; const ASeconds: Integer);

function DefaultExportFileName(ADataSet: TDataSet): string; overload;
function DefaultExportFileName(AGrid: TAbmesDBGrid): string; overload;

function XLSFilePrompt(const ADefaultFileName: string = ''): string;

function StandardNodeParamsMoreCellsDataFunc: TGetMoreCellsDataFunc;

resourcestring
  SPleaseWaitExport = 'Моля почакайте. Експорт...';
  SFileOpenByAnotherProgram = 'Файлът е отворен от друга програма';

implementation

uses
  SysUtils, Dialogs, Forms, fAnimatedSplash, DBGridEh,
  ComCtrls, Classes, Graphics, OExport, OExport_Vcl,
  uClientUtils, ShellAPI, AbmesDialogs, Windows, DateUtils, Variants,
  uUtils, MemTableEh, Math, Consts, StrUtils, ExtCtrls, UITypes, System.Types,
  dMain, uClientDateTime, fEditForm, IOUtils, JclRegistry, JclSysInfo;

resourcestring
  SExceedingMaxColumnOrRowCount = 'Не можете да експортвате към Excel повече от %d колони и %d реда';
  SFileAlreadyExists = 'Избраният файл вече съществува. Изберете действие?';
  SOverride = 'Презаписване';
  SAddSheet = 'Добавяне на лист';
  SDBName = 'База:';

const
  MinPossibleDate = 20;
  IconColumnWidth = 20;
  TreeColumnWidth = 200;

{ Routines }

function IsFileOpen(AFileName: string): Boolean;
begin
  Result:= False;
  try
    Utils.Using(TFileStream.Create(AFileName, fmOpenRead or fmShareExclusive))/
      Utils.DoNothing;
  except
    on E: EFOpenError do
      Result:= True;
  end;  { try }
end;

function TrimExportFileName(const AExportFileName: string): string;
begin
  Result:= AExportFileName;
  if (Result <> '') and (Result[1] = '@') then
    Result:= RightStr(Result, Length(Result) - 1);
end;

procedure CheckFileNotOpen(const AFileName: string);
begin
  if FileExists(AFileName) and
     IsFileOpen(AFileName) then
    raise Exception.Create(SFileOpenByAnotherProgram);
end;

procedure InitExport(AExport: TOExport; const AExportFileName: string);
var
  NewSheetName: string;
  NewSheetNo: Integer;
begin
  if (AExportFileName <> '') and (AExportFileName[1] = '@') then
    begin
      AExport.LoadFromFile(TrimExportFileName(AExportFileName));

      NewSheetNo:= AExport.WorkSheets.Count + 1;
      repeat
        NewSheetName:= 'Sheet' + IntToStr(NewSheetNo);
        Inc(NewSheetNo);
      until not Assigned(AExport.WorkSheets.Find(NewSheetName));

      AExport.AddWorkSheet(NewSheetName);
    end
  else
    AExport.AddWorkSheet('Sheet1');
end;

function ExcelExportAvailable: Boolean;
begin
  Result:= True;
end;

procedure SetCellFont(ACell: TExportCell; AFont: TFont);
begin
  ACell.Font.SetName(AFont.Name);
  ACell.Font.SetSize(AFont.Size);

  ACell.Font.SetColor(AFont.Color);

  if fsBold in AFont.Style then
    ACell.Font.Style.SetBold();

  if fsItalic in AFont.Style then
    ACell.Font.Style.SetItalic();

  if fsUnderline in AFont.Style then
    ACell.Font.Style.SetUnderline();

  if fsStrikeOut in AFont.Style then
  ACell.Font.Style.SetStrikeOut();
end;  { SetCellFont }

procedure AddCellImage(AExport: TOExport;
  const AImageList: TImageList; const AImageIndex: Integer);
var
  LastSheet: TExportWorkSheet;
  LastRow: TExportRow;
  bmp: Graphics.TBitmap;
  BitmapStream: TMemoryStream;
  Cell: TExportCellString;
begin
  LastSheet:= AExport.WorkSheets[AExport.WorkSheets.Count-1];
  LastRow:= LastSheet.Rows[LastSheet.Rows.Count-1];

  bmp:= Graphics.TBitmap.Create;
  try
    if AImageList.GetBitmap(AImageIndex, bmp) then
      begin
        bmp.PixelFormat:= pf24bit;

        BitmapStream:= TMemoryStream.Create;
        try
          bmp.SaveToStream(BitmapStream);

          Cell:= LastRow.AddCellString();
          Cell.AddImage(BitmapStream, Format('image%d.bmp', [AImageIndex]), 0, 0, bmp.Width, bmp.Height);
        finally
          FreeAndNil(BitmapStream);
        end;
      end;
  finally
    FreeAndNil(bmp);
  end;
end;

function AddCellText(AExport: TOExport;
  const AText: string; AFont: TFont = nil; const AHyperlink: string = ''; const AColSpan: Integer = 0): TExportCell; overload;
var
  LastSheet: TExportWorkSheet;
  LastRow: TExportRow;
  Cell: TExportCellString;
begin
  LastSheet:= AExport.WorkSheets[AExport.WorkSheets.Count-1];
  LastRow:= LastSheet.Rows[LastSheet.Rows.Count-1];
  Cell:= LastRow.AddCellString(AText);

  if Assigned(AFont) then
    SetCellFont(Cell, AFont);

  if (AHyperlink <> '') then
    begin
      Cell.SetHyperLink(AHyperlink);

      if (AFont = nil) then
        begin
          Cell.Font.Style.SetUnderline();
          Cell.Font.SetColor(clBlue);
        end;
    end;

  if (AColSpan > 0) then
    Cell.SetColSpan(AColSpan);

  Cell.CalculateColWidth:= True;

  Result:= Cell;
end;

function AddCellText(AExport: TOExport;
  AField: TField; AFont: TFont = nil; const AColSpan: Integer = 0): TExportCell; overload;

  function FormatsTime(AFormat: string): Boolean;
  const
    TimeFormatChars: string = 'hnszt';
  var
    c: Char;
  begin
    Result:= False;
    for c in TimeFormatChars do
      Result:= Result or (Pos(c, AFormat) > 0);
  end;  { FormatsTime }

var
  LastSheet: TExportWorkSheet;
  LastRow: TExportRow;
  Cell: TExportCell;
  df: string;
  OnGetTextDisplayText: string;
begin
  LastSheet:= AExport.WorkSheets[AExport.WorkSheets.Count-1];
  LastRow:= LastSheet.Rows[LastSheet.Rows.Count-1];

  if not Assigned(AField) or AField.IsNull then
    Cell:= LastRow.AddCellEmpty
  else
    begin
      if Assigned(AField.OnGetText) then
        AField.OnGetText(AField, OnGetTextDisplayText, True)
      else
        OnGetTextDisplayText:= '';

      if (OnGetTextDisplayText = SNotAvailable) then
        begin
          Cell:= LastRow.AddCellString(SNotAvailable);
        end
      else if (AField is TDateTimeField) or (AField is TSQLTimeStampField) then
        begin
          if (AField is TDateTimeField) then
            df:= (AField as TDateTimeField).DisplayFormat
          else
            df:= (AField as TSQLTimeStampField).DisplayFormat;

          if (AField.AsDateTime < MinPossibleDate) then
            begin
              Cell:= LastRow.AddCellTime(AField.AsDateTime);
            end
          else if (AField.AsDateTime = DateOf(AField.AsDateTime)) and not FormatsTime(df) then
            begin
              Cell:= LastRow.AddCellDate(AField.AsDateTime);
            end
          else
            begin
              Cell:= LastRow.AddCellDateTime(AField.AsDateTime);
            end;
        end
      else if (AField is TNumericField) then
        begin
          Cell:= LastRow.AddCellNumber(AField.AsFloat, -1);
        end
      else  { if }
        begin
          Cell:= LastRow.AddCellString(IfThen(AField is TMemoField, AField.AsString, AField.DisplayText));
        end;  { if }
    end;  { if }

  if Assigned(AFont) then
    SetCellFont(Cell, AFont);

  if (AColSpan > 0) then
    Cell.SetColSpan(AColSpan);

  Cell.CalculateColWidth:= True;

  Result:= Cell;
end;

procedure MergeCells(AExport: TOExport; ARow, ACol, ACount: Integer);
var
  LastSheet: TExportWorkSheet;
begin
  LastSheet:= AExport.WorkSheets[AExport.WorkSheets.Count-1];
  LastSheet.Rows[ARow].Cells[ACol].SetColSpan(ACount);
end;

procedure GroupRows(AExport: TOExport; AFromRow, AToRow: Integer);
var
  LastSheet: TExportWorkSheet;
begin
  LastSheet:= AExport.WorkSheets[AExport.WorkSheets.Count-1];
  LastSheet.Rows.GroupRows(AFromRow + 1, AToRow + 1);
end;

function AddRow(AExport: TOExport; const AEmptyCells: Integer = 0): TExportRow;
var
  LastSheet: TExportWorkSheet;
begin
  LastSheet:= AExport.WorkSheets[AExport.WorkSheets.Count-1];
  Result:= LastSheet.AddRow();

  if (AEmptyCells > 0) then
    AddCellText(AExport, nil, nil, AEmptyCells);
end;

procedure SetDBName(ASheet: TExportWorkSheet);
begin
  ASheet.Rows[0].AddCellEmpty;
  ASheet.Rows[0].AddCellString(SDBName);
  ASheet.Rows[0].AddCellString(dmMain.DBName);
end;

procedure FinalizeXLSFile(AExport: TOExport);
var
  LastSheet: TExportWorkSheet;
begin
  LastSheet:= AExport.WorkSheets[AExport.WorkSheets.Count-1];

  SetDBName(LastSheet);

  LastSheet.WindowSettings.Split.Row:= 1;
end;

procedure SetColumnWidth(AExport: TOExport; const AColumnNo, AColumnWidth: Integer);
var
  LastSheet: TExportWorkSheet;
  col: TExportCol;
begin
  LastSheet:= AExport.WorkSheets[AExport.WorkSheets.Count-1];
  col:= LastSheet.Cols[AColumnNo];
  col.SetWidth(AColumnWidth);
end;

type
  TFileSaveDialogHelper = class helper for TFileSaveDialog
  private
    procedure SaveDialogOverwrite(Sender: TObject;
      var Response: TFileDialogOverwriteResponse);
  end;

procedure TFileSaveDialogHelper.SaveDialogOverwrite(Sender: TObject;
  var Response: TFileDialogOverwriteResponse);
var
  r: Integer;
begin
  inherited;

  r:= MessageDlgBtn(SFileAlreadyExists, mtConfirmation, [SOverride, SAddSheet, SCancelButton], 0);

  case r of
    0:
      begin
        (Sender as TFileSaveDialog).Tag:= 0;
        Response:= forAccept;
      end;
    1:
      begin
        (Sender as TFileSaveDialog).Tag:= 1;
        Response:= forAccept;
      end;
  else
    Response:= forRefuse;
  end;  { case  }
end;

function DefaultExportFileName(ADataSet: TDataSet): string;
const
  Suffixes: array[0..2] of string = (SEditCaption, SInsertCaption, SReadOnlyCaption);
var
  FormCaption: string;
  suffix: string;
begin
  if not Assigned(ADataSet) or
     not Assigned(ADataSet.Owner) or
     not (ADataSet.Owner is TForm) then
    Exit('');

  FormCaption:= (ADataSet.Owner as TForm).Caption;

  for suffix in Suffixes do
    if EndsText(suffix, FormCaption) then
      begin
        FormCaption:= LeftStr(FormCaption, Length(FormCaption) - Length(suffix));
        FormCaption:= FormCaption.TrimRight(['-', ' ']);
        Break;
      end;

  Result:= FormCaption + '--' + FormatDateTime('yyyy-mm-dd--hh-nn-ss', ContextNow);
  Result:= ChangeFileExt(Result, '.xlsx');
end;

function DefaultExportFileName(AGrid: TAbmesDBGrid): string;
begin
  Result:= DefaultExportFileName(AGrid.DataSource.DataSet);
end;

function GetExtensionDefaultApplication(const AExt: string): string;
begin
  Result:= RegReadStringDef(HKEY_CLASSES_ROOT, '.' + AExt.Trim(['.']), '', '');
end;

function GetDefaultExportExtension: string;
const
  MicrosoftExcelExt = 'xlsx';
  OpenDocumentExt = 'ods';
var
  app: string;
begin
  app:= GetExtensionDefaultApplication(MicrosoftExcelExt);

  if (app = '') or app.Contains('Excel.Sheet') then
    Result:= MicrosoftExcelExt
  else
    if app.Contains('LibreOffice') or app.Contains('OpenOffice') then
      Result:= OpenDocumentExt
    else
      Result:= MicrosoftExcelExt;
end;

function XLSFilePrompt(const ADefaultFileName: string = ''): string;
const
  Excel97Files = 'Excel 97-2003 Workbook';
  ExcelFiles = 'Excel Workbook';
  OpenDocumentFiles = 'OpenDocument Spreadsheet';
  CSVCommaFiled = 'CSV (Comma delimited)';
var
  VistaSaveDialog: TFileSaveDialog;
  SaveDialog: TSaveDialog;
  r: Integer;

  procedure AddFileType(const ADisplayName, AFileMask: string);
  var
    ft: TFileTypeItem;
  begin
    ft:= VistaSaveDialog.FileTypes.Add;
    ft.DisplayName:= ADisplayName;
    ft.FileMask:= AFileMask;
  end;

begin
  if (GetWindowsVersion >= wvWinVista) then
    begin
      VistaSaveDialog:= TFileSaveDialog.Create(nil);
      try
        VistaSaveDialog.Options:= VistaSaveDialog.Options + [fdoOverWritePrompt, fdoPathMustExist];
        VistaSaveDialog.OnOverwrite:= VistaSaveDialog.SaveDialogOverwrite;

        VistaSaveDialog.DefaultExtension:= GetDefaultExportExtension;
        AddFileType(ExcelFiles, '*.xlsx');
        AddFileType(Excel97Files, '*.xls');
        AddFileType(OpenDocumentFiles, '*.ods');
        AddFileType(CSVCommaFiled, '*.csv');
        AddFileType('All files', '*.*');

        VistaSaveDialog.FileName:= ADefaultFileName;

        if not VistaSaveDialog.Execute then
          Abort;

        Result:= VistaSaveDialog.FileName;

        if (VistaSaveDialog.Tag = 1) then
          Result:= '@' + Result;
      finally
        FreeAndNil(VistaSaveDialog);
      end;   { try }
    end
  else
    begin
      SaveDialog:= TSaveDialog.Create(nil);
      try
        SaveDialog.DefaultExt:= GetDefaultExportExtension;
        SaveDialog.Filter:= Format('%s (*.xlsx)|*.xlsx|%s (*.xls)|*.xls|All files|*.*', [ExcelFiles, Excel97Files]);
        SaveDialog.Options:= SaveDialog.Options + [ofPathMustExist];

        SaveDialog.FileName:= ADefaultFileName;

        if not SaveDialog.Execute then
          Abort;

        Result:= SaveDialog.FileName;

        if FileExists(Result) then
          begin
            r:= MessageDlgBtn(SFileAlreadyExists, mtConfirmation, [SOverride, SAddSheet, SCancelButton], 0);

            case r of
              0:
                begin
                  // do nothing;
                end;
              1:
                begin
                  Result:= '@' + Result;
                end;
            else
              Abort;
            end;
          end;
      finally
        FreeAndNil(SaveDialog);
      end;   { try }
    end;

  Result:= ChangeFileExt(Result, LowerCase(ExtractFileExt(Result)));
end;

procedure ExportAdditionalCells(AGetMoreCellsDataFunc: TGetMoreCellsDataFunc;
  const ADataSet: TDataSet; const AFileName: string; AExport: TOExport;
  const ACellDataType: TCellDataType);
var
  MoreCellsData: TCellsData;
  CellData: TCellData;
begin
  if Assigned(AGetMoreCellsDataFunc) then
    begin
      MoreCellsData:= AGetMoreCellsDataFunc(ADataSet, AFileName, ACellDataType);

      for CellData in MoreCellsData do
        begin
          Application.ProcessMessages;
          AddCellText(AExport, CellData.Value, nil, CellData.Hyperlink);
        end;
    end;
end;

{ end of routines }

procedure MultiGridExcelExport(AGrids: array of TAbmesDBGrid;
  ExportInvisibleColumns, RepeatFields: Boolean;
  const AFileName: string;
  AImageList: TImageList; AImageIndexFieldName: string;
  AGetMoreCellsDataFunc: TGetMoreCellsDataFunc);

  function GetTreeListDepth: Integer;
  var
    mt: TMemTableEh;
    MaxDepth: Integer;
  begin
    Assert(AGrids[0].DataSource.DataSet is TMemTableEh);
    mt:= (AGrids[0].DataSource.DataSet as TMemTableEh);
    MaxDepth:= 0;
    mt.TempDisableControls /
      mt.PreserveRecNo /
        mt.ForEach /
          procedure begin
            MaxDepth:= Max(MaxDepth, mt.TreeNodeLevel);
          end;
    Result:= MaxDepth;
  end;  { GetTreeListDepth }

  function TreeListLevel: Integer;
  var
    mt: TMemTableEh;
  begin
    Assert(AGrids[0].DataSource.DataSet is TMemTableEh);
    mt:= (AGrids[0].DataSource.DataSet as TMemTableEh);
    Result:= mt.TreeNodeLevel;
  end;  { TreeListLevel }

var
  SaveCursor: TCursor;
  fmSplash: TfmAnimatedSplash;
  ExcelExport: TOExport;
  i: Integer;
  offset: Integer;
  b: TBookmark;
  ExportColumn: array of Boolean;
  ColumnCount: Integer;
  FieldNames: TStringList;
  FieldFound: Boolean;
  FileName: string;
  grd: TAbmesDBGrid;
  IsTreeList: Boolean;
  TreeListDepth: Integer;
  BeginTickCount: Cardinal;
  ImageIndexField: TField;
  ImageOffset: Integer;
  LevelNo: Integer;
  PrevLevelNo: Integer;
  LevelStartRows: TIntegerArray;
  ColSpan: Integer;
  LastSheet: TExportWorkSheet;
  j: Integer;
  IsTreeFirstColumn: Boolean;
begin
  Assert(Length(AGrids) > 0, 'MultiGridExcelExport: No Grids found!');

  if (AFileName <> '') then
    FileName:= AFileName
  else
    FileName:= XLSFilePrompt(DefaultExportFileName(AGrids[0]));

  CheckFileNotOpen(TrimExportFileName(FileName));

  BeginTickCount:= GetTickCount;

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    Application.CreateForm(TfmAnimatedSplash, fmSplash);
    try
      fmSplash.ProgressBarVisible:= True;
      fmSplash.ShowForm(aviCopyFiles, SPleaseWaitExport);

      ExcelExport:= TOExport.Create;
      try
        InitExport(ExcelExport, FileName);

        AddRow(ExcelExport);

        IsTreeList:= (AGrids[0].DataSource.DataSet is TMemTableEh);
        if IsTreeList then
          begin
            TreeListDepth:= GetTreeListDepth;
            ImageIndexField:= AGrids[0].DataSource.DataSet.FindField(AImageIndexFieldName);
          end
        else
          begin
            TreeListDepth:= 1;
            ImageIndexField:= nil;
          end;

        ColumnCount:= 0;
        for grd in AGrids do
          Inc(ColumnCount, grd.Columns.Count);
        SetLength(ExportColumn, ColumnCount);

        FieldNames:= TStringList.Create;
        FieldNames.Sorted:= True;
        try
          offset:= 0;
          for grd in AGrids do
            begin
              ImageOffset:=
                Ord(
                  IsTreeList and
                  (grd = AGrids[0]) and
                  Assigned(AImageList) and
                  Assigned(ImageIndexField)
                );

              for i:= 0 to grd.Columns.Count - 1 do
                begin
                  Application.ProcessMessages;

                  FieldFound:=
                    (FieldNames.IndexOf(grd.Columns[i].FieldName) >= 0);

                  if not FieldFound then
                    FieldNames.Add(grd.Columns[i].FieldName);

                  ExportColumn[i + offset]:=
                    (RepeatFields or (not FieldFound)) and
                    (grd.Columns[i].Visible or ExportInvisibleColumns);

                  if ExportColumn[i + offset] then
                    begin
                      Application.ProcessMessages;

                      IsTreeFirstColumn:= IsTreeList and (grd = AGrids[0]) and (i = 0);

                      if IsTreeFirstColumn then
                        ColSpan:= TreeListDepth - TreeListLevel + 1 + ImageOffset
                      else
                        ColSpan:= 1;

                      AddCellText(ExcelExport,
                        grd.Columns[i].Title.Caption,
                        grd.Columns[i].Title.Font,
                        '',
                        ColSpan
                      ).CalculateColWidth:= not IsTreeFirstColumn;
                    end;
                end;

              Inc(offset, grd.Columns.Count + ImageOffset);
            end;
        finally
          FreeAndNil(FieldNames);
        end;   { try }

        with AGrids[0].DataSource.DataSet do
          begin
            DisableControls;
            try
              b:= Bookmark;
              try
                if IsTreeList then
                  SetLength(LevelStartRows, TreeListDepth + 1);

                First;
                PrevLevelNo:= -1;
                while not Eof do
                  begin
                    Application.ProcessMessages;

                    AddRow(ExcelExport);

                    if IsTreeList and (TreeListLevel > 1) then
                      AddCellText(ExcelExport, nil, nil, TreeListLevel - 1).CalculateColWidth:= False;

                    if Assigned(ImageIndexField) then
                      AddCellImage(ExcelExport, AImageList, ImageIndexField.AsInteger);

                    offset:= 0;

                    // export grid columns
                    for grd in AGrids do
                      begin
                        ImageOffset:=
                          Ord(
                            IsTreeList and
                            (grd = AGrids[0]) and
                            Assigned(AImageList) and
                            Assigned(ImageIndexField)
                          );

                        for i:= 0 to grd.Columns.Count - 1 do
                          if ExportColumn[i + offset] then
                            begin
                              Application.ProcessMessages;

                              IsTreeFirstColumn:= IsTreeList and (grd = AGrids[0]) and (i = 0);

                              if IsTreeFirstColumn then
                                ColSpan:= TreeListDepth - TreeListLevel + 1
                              else
                                ColSpan:= 1;

                              AddCellText(ExcelExport,
                                grd.Columns[i].Field,
                                grd.Columns[i].Font,
                                ColSpan
                              ).CalculateColWidth:= not IsTreeFirstColumn;
                            end;

                        Inc(offset, grd.Columns.Count + ImageOffset);
                      end;

                    ExportAdditionalCells(AGetMoreCellsDataFunc, AGrids[0].DataSource.DataSet,
                      FileName, ExcelExport, cdtValue);

                    // grouping
                    if IsTreeList then
                      begin
                        LevelNo:= TreeListLevel;

                        if (LevelNo > PrevLevelNo) then
                          LevelStartRows[LevelNo]:= RecNo;

                        if (PrevLevelNo >= Low(LevelStartRows)) then
                          for i:= PrevLevelNo downto LevelNo + 1 do
                            GroupRows(ExcelExport, LevelStartRows[i] - 1, RecNo - 2);

                        PrevLevelNo:= LevelNo;
                      end;

                    fmSplash.SetProgress(RecNo, RecordCount);
                    Next;
                  end;   { while }

                  if IsTreeList then
                    for i:= PrevLevelNo downto 2 do
                      GroupRows(ExcelExport, LevelStartRows[i] - 1, RecordCount - 1);
              finally
                Bookmark:= b;
              end;   { try }
            finally
              EnableControls;
            end;   { try }
          end;   { with }

        for i:= 0 to TreeListDepth - 1 do
          SetColumnWidth(ExcelExport, i, IconColumnWidth);

        SetColumnWidth(ExcelExport, TreeListDepth, TreeColumnWidth);

        FinalizeXLSFile(ExcelExport);

        ExcelExport.SaveToFile(TrimExportFileName(FileName));
      finally
        FreeAndNil(ExcelExport);
      end;   { try }
    finally
      fmSplash.ReleaseForm;
    end;   { try }
  finally
    Screen.Cursor:= SaveCursor;
  end;   { try SaveCursor }

  ShowExportFinishedDialog(TrimExportFileName(FileName), TickCountDiff(BeginTickCount, GetTickCount) div 1000);
end;   { MultiGridExcelExport }

procedure GridExcelExport(AGrid: TAbmesDBGrid; ExportInvisibleColumns: Boolean;
  const AFileName: string; AImageList: TImageList; AImageIndexFieldName: string;
  AGetMoreCellsDataFunc: TGetMoreCellsDataFunc);
begin
  Assert(Assigned(AGrid), 'GridExcelExport: AGrid must be assigned');
  MultiGridExcelExport([AGrid], ExportInvisibleColumns, False,
    AFileName, AImageList, AImageIndexFieldName, AGetMoreCellsDataFunc);
end;   { GridExcelExport }

type
  TExportColumn = record
    Parent: TAbmesDBGrid;
    Column: Integer;
  end;
  TColumnsForExport = array of TExportColumn;

function GetColumnsForExport(AGrids: array of TAbmesDBGrid; RepeatFields: Boolean): TColumnsForExport;
var
  ColumnCount: Integer;
  ColumnNo: Integer;
  ExportColumn: array of Boolean;
  FieldNames: TStringList;
  FieldFound: Boolean;
  offset: Integer;
  i: Integer;
  grd: TAbmesDBGrid;
begin
  SetLength(Result, 1000);
  try
    ColumnCount:= 0;
    for grd in AGrids do
      Inc(ColumnCount, grd.Columns.Count);
    SetLength(ExportColumn, ColumnCount);

    FieldNames:= TStringList.Create;
    FieldNames.Sorted:= True;
    try
      offset:= 0;
      ColumnNo:= 0;
      for grd in AGrids do
        begin
          for i:= 0 to grd.Columns.Count - 1 do
            begin
              Application.ProcessMessages;

              FieldFound:=
                (FieldNames.IndexOf(grd.Columns[i].FieldName) >= 0);

              if not FieldFound then
                FieldNames.Add(grd.Columns[i].FieldName);

              ExportColumn[i + offset]:= RepeatFields or (not FieldFound);

              if ExportColumn[i + offset] then
                begin
                  Result[ColumnNo].Parent:= grd;
                  Result[ColumnNo].Column:= i;
                  Inc(ColumnNo);
                end;
            end;

          Inc(offset, grd.Columns.Count);
        end;
    finally
      FreeAndNil(FieldNames);
    end;   { try }

  except
    SetLength(Result, 0);
    raise;
  end;  { try }

  SetLength(Result, ColumnNo);
end;

procedure MultiGridMasterDetailExcelExport(
  AMasterGrids: array of TAbmesDBGrid;
  ADetailGrids: array of TAbmesDBGrid;
  ARepeatMasterFields: Boolean;
  ARepeatDetailFields: Boolean;
  const AFileName: string;
  AGetMoreCellsDataFunc: TGetMoreCellsDataFunc);

var
  FileName: string;

  procedure AddColumnTitles(AExport: TOExport; AColumnsForExport: TColumnsForExport);
  var
    ColumnForExport: TExportColumn;
  begin
    for ColumnForExport in AColumnsForExport do
      begin
        Application.ProcessMessages;

        with ColumnForExport do
          AddCellText(AExport,
            Parent.Columns[Column].Title.Caption,
            Parent.Columns[Column].Title.Font
          );
      end;
  end;

  procedure AddColumnValues(AExport: TOExport; ADataSet: TDataSet;
    AColumnsForExport: TColumnsForExport);
  var
    ColumnForExport: TExportColumn;
  begin
    for ColumnForExport in AColumnsForExport do
      begin
        Application.ProcessMessages;

        with ColumnForExport do
          AddCellText(AExport,
            Parent.Columns[Column].Field,
            Parent.Columns[Column].Font
          );
      end;

    ExportAdditionalCells(AGetMoreCellsDataFunc, ADataSet, FileName, AExport, cdtValue);
  end;

var
  SaveCursor: TCursor;
  fmSplash: TfmAnimatedSplash;
  ExcelExport: TOExport;
  MasterColumns: TColumnsForExport;
  DetailColumns: TColumnsForExport;
  MasterDataSet: TDataSet;
  DetailDataSet: TDataSet;
  MasterBookmark: TBookmark;
  DetailBookmark: TBookmark;
  BeginTickCount: Cardinal;
begin
  Assert((Length(AMasterGrids) > 0) and (Length(ADetailGrids) > 0), 'MultiGridMasterDetailExcelExport: No Grids found!');

  MasterColumns:= GetColumnsForExport(AMasterGrids, ARepeatMasterFields);
  DetailColumns:= GetColumnsForExport(ADetailGrids, ARepeatDetailFields);
  MasterDataSet:= AMasterGrids[0].DataSource.DataSet;
  DetailDataSet:= ADetailGrids[0].DataSource.DataSet;

  if (AFileName <> '') then
    FileName:= AFileName
  else
    FileName:= XLSFilePrompt(DefaultExportFileName(AMasterGrids[0]));

  CheckFileNotOpen(TrimExportFileName(FileName));

  BeginTickCount:= GetTickCount;

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    Application.CreateForm(TfmAnimatedSplash, fmSplash);
    try
      fmSplash.ProgressBarVisible:= True;
      fmSplash.ShowForm(aviCopyFiles, SPleaseWaitExport);

      ExcelExport:= TOExport.Create;
      try
        InitExport(ExcelExport, FileName);
        AddRow(ExcelExport);

        DetailBookmark:= DetailDataSet.Bookmark;
        try
          MasterBookmark:= MasterDataSet.Bookmark;
          try
            DetailDataSet.DisableControls;
            try
              MasterDataSet.First;

              AddColumnTitles(ExcelExport, MasterColumns);

              while not MasterDataSet.Eof do
                begin
                  AddRow(ExcelExport);
                  AddRow(ExcelExport);

                  AddColumnValues(ExcelExport, MasterDataSet, MasterColumns);
                  AddRow(ExcelExport);

                  DetailDataSet.First;

                  AddRow(ExcelExport);
                  AddCellText(ExcelExport, nil);
                  AddColumnTitles(ExcelExport, DetailColumns);
                  while not DetailDataSet.Eof do
                    begin
                      AddRow(ExcelExport);
                      AddCellText(ExcelExport, nil);
                      AddColumnValues(ExcelExport, DetailDataSet, DetailColumns);
                      DetailDataSet.Next;
                    end;

                  fmSplash.SetProgress(MasterDataSet.RecNo, MasterDataSet.RecordCount);
                  MasterDataSet.Next;
                end;
            finally
              DetailDataSet.EnableControls;
            end;
          finally
            MasterDataSet.Bookmark:= MasterBookmark;
          end;  { try }
        finally
          DetailDataSet.Bookmark:= DetailBookmark;
        end;  { try }

        FinalizeXLSFile(ExcelExport);
        ExcelExport.SaveToFile(TrimExportFileName(FileName));
      finally
        FreeAndNil(ExcelExport);
      end;   { try }
    finally
      fmSplash.ReleaseForm;
    end;   { try }
  finally
    Screen.Cursor:= SaveCursor;
  end;   { try SaveCursor }

  ShowExportFinishedDialog(TrimExportFileName(FileName), TickCountDiff(BeginTickCount, GetTickCount) div 1000);
end;

procedure MasterDetailGridExcelExport(MasterGrid: TAbmesDBGrid; DetailGrid: TAbmesDBGrid;
  const AFileName: string; AGetMoreCellsDataFunc: TGetMoreCellsDataFunc);
begin
  MultiGridMasterDetailExcelExport([MasterGrid], [DetailGrid], False, False, AFileName, AGetMoreCellsDataFunc);
end;

procedure MultiGridMultiLevelExcelExport(
  ASetsOfGrids: TSetsOfGrids;
  ARepeatFields: array of Boolean);

  procedure ExportColumnTitles(AExport: TOExport; AColumnsForExport: TColumnsForExport);
  var
    ColumnForExport: TExportColumn;
  begin
    for ColumnForExport in AColumnsForExport do
      begin
        Application.ProcessMessages;

        with ColumnForExport do
          AddCellText(AExport,
            Parent.Columns[Column].Title.Caption,
            Parent.Columns[Column].Title.Font
          );
      end;
  end;

  procedure ExportColumnValues(AExport: TOExport; AColumnsForExport: TColumnsForExport);
  var
    ColumnForExport: TExportColumn;
  begin
    for ColumnForExport in AColumnsForExport do
      begin
        Application.ProcessMessages;

        with ColumnForExport do
          AddCellText(AExport,
            Parent.Columns[Column].Field,
            Parent.Columns[Column].Font
          );
      end;
  end;

var
  i, LevelCount: Integer;
  Row: Integer;
  SaveCursor: TCursor;
  fmSplash: TfmAnimatedSplash;
  ExcelExport: TOExport;
  TotalColumnsForExport: array of TColumnsForExport;
  FileName: string;
  BeginTickCount: Cardinal;

  procedure RecursiveExport(ALevel: Integer);
  var
    ds: TDataSet;
    b: TBookmark;
    SaveBlockReadSize: Integer;
  begin
    ds:= TotalColumnsForExport[ALevel][0].Parent.DataSource.DataSet;

    if (ALevel = LevelCount) then
      ds.DisableControls;

    try
      SaveBlockReadSize:= ds.BlockReadSize;
      ds.BlockReadSize:= 1;
      try
        b:= ds.Bookmark;
        ds.First;
        try
          if not ds.Eof then
            begin
              AddRow(ExcelExport, ALevel);
              ExportColumnTitles(ExcelExport, TotalColumnsForExport[ALevel]);

              AddRow(ExcelExport, ALevel);
              ExportColumnValues(ExcelExport, TotalColumnsForExport[ALevel]);

              AddRow(ExcelExport);

              if (ALevel < LevelCount) then
                RecursiveExport(ALevel + 1);

              ds.Next;
            end;

          while not ds.Eof do
            begin
              if (ALevel < LevelCount) then
                begin
                  AddRow(ExcelExport, ALevel);
                  ExportColumnTitles(ExcelExport, TotalColumnsForExport[ALevel]);
                  Inc(Row);
                end;

              AddRow(ExcelExport, ALevel);
              ExportColumnValues(ExcelExport, TotalColumnsForExport[ALevel]);
              Inc(Row);

              if (ALevel < LevelCount) then
                RecursiveExport(ALevel + 1);

              ds.Next;
            end;

        finally
          ds.Bookmark:= b;
        end;  { try }

      finally
        ds.BlockReadSize:= SaveBlockReadSize;
      end;  { try }

    finally
      if (ALevel = LevelCount) then
        ds.EnableControls;
    end;  { try }
  end;

begin
  Assert(Low(ASetsOfGrids) = 0);

  LevelCount:= High(ASetsOfGrids);
  Assert(LevelCount > 0);

  FileName:= XLSFilePrompt(DefaultExportFileName(ASetsOfGrids[0][0]));

  CheckFileNotOpen(TrimExportFileName(FileName));

  BeginTickCount:= GetTickCount;

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    Application.CreateForm(TfmAnimatedSplash, fmSplash);
    try
      fmSplash.ShowForm(aviCopyFiles, SPleaseWaitExport);

      SetLength(TotalColumnsForExport, Length(ASetsOfGrids));
      try
        for i:= 0 to LevelCount do
          TotalColumnsForExport[i]:= GetColumnsForExport(ASetsOfGrids[i], ARepeatFields[i]);

        ExcelExport:= TOExport.Create;
        try
          InitExport(ExcelExport, FileName);
          AddRow(ExcelExport);

          Row:= 0;
          RecursiveExport(0);

          FinalizeXLSFile(ExcelExport);
          ExcelExport.SaveToFile(TrimExportFileName(FileName));
        finally
          FreeAndNil(ExcelExport);
        end;   { try }

      finally
        SetLength(TotalColumnsForExport, 0);
      end;  { try }

    finally
      fmSplash.ReleaseForm;
    end;   { try fmSplash }

  finally
    Screen.Cursor:= SaveCursor;
  end;   { try SaveCursor }

  ShowExportFinishedDialog(TrimExportFileName(FileName), TickCountDiff(BeginTickCount, GetTickCount) div 1000);
end;

procedure MultiLevelExcelExport(AGrids: array of TAbmesDBGrid);
var
  SetsOfGrids: TSetsOfGrids;
  RepeatFiels: array of Boolean;
  i: Integer;
begin
  SetLength(SetsOfGrids, Length(AGrids));
  try
    SetLength(RepeatFiels, Length(AGrids));
    try
      for i:= Low(AGrids) to High(AGrids) do
        begin
          SetLength(SetsOfGrids[i], 1);
          SetsOfGrids[i][0]:= AGrids[i];
          RepeatFiels[i]:= False;
        end;

      MultiGridMultiLevelExcelExport(SetsOfGrids, RepeatFiels);

    finally
      SetLength(RepeatFiels, 0);
    end;  { try }

  finally
    SetLength(SetsOfGrids, 0);
  end;  { try }
end;

procedure ShowExportFinishedDialog(const AFileName: string; const ASeconds: Integer);
begin
  Application.ProcessMessages;
  case MessageDlgFmtBtn(SExportCompleted, [ASeconds], mtInformation, [bcOK, SOpenFile, SOpenFolder], 0) of
    1: ShellExecute(0, nil, PChar(AFileName), nil, nil, SW_SHOWNORMAL);
    2: ShellExecute(0, nil, PChar(ExtractFilePath(AFileName)), nil, nil, SW_SHOWNORMAL);
  else
    begin
      // do nothing
    end;
  end;  { case }
end;

{ TCellData }

constructor TCellData.Create(const AValue, AHyperlink: string);
begin
  FValue:= AValue;
  FHyperlink:= AHyperlink;
end;

procedure TreeDataSetExcelExport(ADataSet: TClientDataSet; ATreeFieldName, ALevelFieldName: string;
  AImageList: TImageList; AImageIndexFieldName: string;
  AGetMoreCellsDataFunc: TGetMoreCellsDataFunc);
var
  FileName: string;
  BeginTickCount: Cardinal;
  SaveCursor: TCursor;
  fmSplash: TfmAnimatedSplash;
  LevelNoField: TField;
  ExportFields: TArray<TField>;
  fld: TField;
  ExcelExport: TOExport;
  aggr: TAggregate;
  MaxLevelNo: Integer;
  i: Integer;
  OpenedHere: Boolean;
  ImageOffset: Integer;
  ImageIndexField: TField;
  LevelStartRows: TIntegerArray;
begin
  FileName:= XLSFilePrompt(DefaultExportFileName(ADataSet));

  CheckFileNotOpen(TrimExportFileName(FileName));

  BeginTickCount:= GetTickCount;

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    Application.CreateForm(TfmAnimatedSplash, fmSplash);
    try
      fmSplash.ShowForm(aviCopyFiles, SPleaseWaitExport);

      LevelNoField:= ADataSet.FieldByName(ALevelFieldName);

      SetLength(ExportFields, 1);
      ExportFields[0]:= ADataSet.FieldByName(ATreeFieldName);

      for fld in ADataSet.Fields do
        if fld.Visible and not SameText(fld.FieldName, ATreeFieldName) then
          begin
            SetLength(ExportFields, Length(ExportFields) + 1);
            ExportFields[Length(ExportFields) - 1]:= fld;
          end;

      ExcelExport:= TOExport.Create;
      try
        InitExport(ExcelExport, FileName);

        OpenedHere:= not ADataSet.Active;
        ADataSet.Active:= True;
        try
          ImageIndexField:= ADataSet.FindField(AImageIndexFieldName);
          ImageOffset:= Ord(Assigned(AImageList) and Assigned(ImageIndexField));

          ADataSet.TempDisableControls/
            ADataSet.PreserveRecNo/
              procedure
              var
                i: Integer;
                PrevLevelNo: Integer;
              begin
                aggr:= ADataSet.Aggregates.Add;
                try
                  aggr.Expression:= Format('Max(%s)', [ALevelFieldName]);
                  aggr.Active:= True;

                  MaxLevelNo:= VarToInt(aggr.Value);
                finally
                  FreeAndNil(aggr);
                end;  { try }

                SetLength(LevelStartRows, MaxLevelNo + 1);

                AddRow(ExcelExport);
                AddCellText(ExcelExport, ExportFields[0].DisplayLabel, nil, '', MaxLevelNo + 1 + ImageOffset).CalculateColWidth:= False;
                for i:= 1 to Length(ExportFields) - 1 do
                  AddCellText(ExcelExport, ExportFields[i].DisplayLabel);

                ExportAdditionalCells(AGetMoreCellsDataFunc, ADataSet, FileName, ExcelExport, cdtCaption);

                PrevLevelNo:= -1;
                ADataSet.ForEach/
                  procedure
                  var
                    i: Integer;
                    LevelNo: Integer;
                  begin
                    LevelNo:= LevelNoField.AsInteger;

                    AddRow(ExcelExport);

                    if (LevelNo > 0) then
                      AddCellText(ExcelExport, nil, nil, LevelNo).CalculateColWidth:= False;

                    if Assigned(ImageIndexField) then
                      AddCellImage(ExcelExport, AImageList, ImageIndexField.AsInteger);

                    AddCellText(ExcelExport, ExportFields[0], nil, MaxLevelNo - LevelNo + 1).CalculateColWidth:= False;

                    for i:= 1 to Length(ExportFields) - 1 do
                      AddCellText(ExcelExport, ExportFields[i]);

                    ExportAdditionalCells(AGetMoreCellsDataFunc, ADataSet, FileName, ExcelExport, cdtValue);

                    // grouping
                    if (LevelNo > PrevLevelNo) then
                      LevelStartRows[LevelNo]:= ADataSet.RecNo;

                    if (PrevLevelNo >= Low(LevelStartRows)) then
                      for i:= PrevLevelNo downto LevelNo + 1 do
                        GroupRows(ExcelExport, LevelStartRows[i] - 1, ADataSet.RecNo - 2);

                    PrevLevelNo:= LevelNo;
                  end;

                  for i:= PrevLevelNo downto 1 do
                    GroupRows(ExcelExport, LevelStartRows[i] - 1, ADataSet.RecordCount - 1);
              end;
        finally
          ADataSet.Active:= not OpenedHere;
        end;

        FinalizeXLSFile(ExcelExport);

        for i:= 0 to MaxLevelNo - 1 + ImageOffset do
          SetColumnWidth(ExcelExport, i, IconColumnWidth);

        SetColumnWidth(ExcelExport, MaxLevelNo + ImageOffset, TreeColumnWidth);

        ExcelExport.SaveToFile(TrimExportFileName(FileName));
      finally
        FreeAndNil(ExcelExport);
      end;   { try }

    finally
      fmSplash.ReleaseForm;
    end;   { try fmSplash }

  finally
    Screen.Cursor:= SaveCursor;
  end;   { try SaveCursor }

  ShowExportFinishedDialog(TrimExportFileName(FileName), TickCountDiff(BeginTickCount, GetTickCount) div 1000);
end;

function StandardNodeParamsMoreCellsDataFunc: TGetMoreCellsDataFunc;
begin
  Result:=
    function(const ADataSet: TDataSet; const AXLSFileName: string; const ACellDataType: TCellDataType): TCellsData
    var
      i: Integer;
      FieldName: string;
      NodeParamValues: TStringDynArray;
    begin
      if (ACellDataType = cdtCaption) then
        begin
          ADataSet.First;
          FieldName:= 'NODE_PARAM_NAMES';
        end
      else
        FieldName:= 'NODE_PARAM_VALUES';

      NodeParamValues:= System.StrUtils.SplitString(ADataSet.FieldByName(FieldName).AsString, #8);

      SetLength(Result, Length(NodeParamValues) + 1);  // edna prazna kolona za razdelitel
      for i:= 0 to Length(NodeParamValues) - 1 do
        Result[i+1]:= TCellData.Create(StringReplace(NodeParamValues[i], #7, '', []), '');
    end;
end;

initialization
  OExportDateFormat:= OEXPORT_SYS_DATE;
  OExportTimeFormat:= OEXPORT_SYS_TIME;

  OExportRegisterExporter(TOExporterXLSX.Create);
  OExportRegisterExporter(TOExporterXLS.Create);
  OExportRegisterExporter(TOExporterODS.Create);
  OExportRegisterExporter(TOExporterCSVComma.Create);
end.
