unit fModelStatus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fModelStatusAbstract, PrnDbgeh, DB, AbmesFields, DBClient,
  AbmesClientDataSet, JvButtons, ActnList, fBaseFrame, fDBFrame,
  fFieldEditFrame, DBCtrls,
  ExtCtrls, StdCtrls, ComCtrls, ToolWin, GridsEh, DBGridEh, AbmesDBGrid,
  Mask, Buttons, Menus, fTreeNodeFieldEditFrame, fProductFieldEditFrame,
  fProductFieldEditFrameBald, fDateIntervalFrame, fDateFieldEditFrame,
  JvComponent, JvCaptionButton, fDeptFieldEditFrame,
  fDeptFieldEditFrameBald, JvComponentBase, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, System.Actions, EhLibVCL, DBAxisGridsEh;

type
  TfmModelStatus = class(TfmModelStatusAbstract)
    procedure FormCreate(Sender: TObject);
    procedure grdModelStatusDetailGetCellParams(Sender: TObject;
      Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
  private
    { Private declarations }
  protected
    class function CapacityStatus: Boolean; override;
    function GetGridColumnsDefault(Index: Integer): TColumnDesc; override;
    function GetDetailColumns(Index: Integer): Integer; override;
    function GetProductColumns(Index: Integer): Integer; override;
    function GetMLMSIdentifierColumnNo: Integer; override;
  public
    { Public declarations }
  end;

implementation

uses
  uColorConsts, uClientDateTime;

{$R *.dfm}

resourcestring
  SHasChildrenWarningsColumnTitle = 'Зк сн|С';
  SHasWarningsColumnTitle = 'Зк сн|Р';

const
  ModelStatusColumnDescCount = 46;

const
  ModelStatusGridColumnsDefault: array[1..ModelStatusColumnDescCount]  of TColumnDesc =
  (
   (ColumnType: 0; FieldName: 'MLL_OBJECT_BRANCH_CODE'; Visible: False; Width: 20; Title: ' '; ColumnFont: ''; IsFixed: False),
   (ColumnType: 0; FieldName: 'MLL_OBJECT_CODE'; Visible: False; Width: 20; Title: ' '; ColumnFont: ''; IsFixed: False),
   (ColumnType: 0; FieldName: 'PRODUCT_CODE'; Visible: False; Width: 20; Title: ' '; ColumnFont: ''; IsFixed: False),
   (ColumnType: 0; FieldName: 'PRODUCT_NEED_BEGIN_DATE'; Visible: False; Width: 20; Title: ' '; ColumnFont: ''; IsFixed: False),
   (ColumnType: 0; FieldName: 'IS_SHRUNK'; Visible: True; Width: 12; Title: '±'; ColumnFont: 'Microsoft Sans Serif'; IsFixed: True),
   (ColumnType: 0; FieldName: 'NO_AS_TEXT'; Visible: False; Width: 100; Title: ' '; ColumnFont: ''; IsFixed: False),
   (ColumnType: 0; FieldName: 'NO_AS_FORMATED_TEXT'; Visible: True; Width: 140; Title: SNoAsFormatedTextColumnTitle; ColumnFont: ''; IsFixed: True),
   (ColumnType: 0; FieldName: 'NO_AS_FORMATED_TEXT_EX'; Visible: False; Width: 140; Title: SNoAsFormatedTextColumnTitle; ColumnFont: ''; IsFixed: False),
   (ColumnType: 0; FieldName: 'FORK_NO'; Visible: True; Width: 23; Title: SForkNoColumnTitle; ColumnFont: ''; IsFixed: True),
   (ColumnType: 0; FieldName: 'HAS_CHILDREN_WARNINGS'; Visible: True; Width: 12; Title: SHasChildrenWarningsColumnTitle; ColumnFont: ''; IsFixed: True),
   (ColumnType: 0; FieldName: 'HAS_WARNINGS'; Visible: True; Width: 12; Title: SHasWarningsColumnTitle; ColumnFont: ''; IsFixed: True),
   (ColumnType: 0; FieldName: 'MLL_HAS_STAGE_DOCUMENTATION'; Visible: True; Width: 12; Title: SMllHasStageDocumentationColumnTitle; ColumnFont: 'Courier New'; IsFixed: False),
   (ColumnType: 0; FieldName: 'DETAIL_NAME'; Visible: True; Width: 155; Title: SDetailNameColumnTitle; ColumnFont: ''; IsFixed: True),
   (ColumnType: 0; FieldName: 'DETAIL_CUSTOM_CODE'; Visible: True; Width: 76; Title: SDetailCustomCodeColumnTitle; ColumnFont: ''; IsFixed: False),
   (ColumnType: 0; FieldName: 'DETAIL_HAS_DOCUMENTATION'; Visible: True; Width: 12; Title: SDetailHasDocumentationColumnTitle; ColumnFont: 'Courier New'; IsFixed: False),
   (ColumnType: 0; FieldName: 'DETAIL_MEASURE_ABBREV'; Visible: True; Width: 45; Title: SDetailMeasureAbbrevColumnTitle; ColumnFont: ''; IsFixed: False),
   (ColumnType: 0; FieldName: 'PRODUCT_NAME'; Visible: True; Width: 155; Title: SProductNameColumnTitle; ColumnFont: ''; IsFixed: True),
   (ColumnType: 0; FieldName: 'PRODUCT_CUSTOM_CODE'; Visible: True; Width: 76; Title: SProductCustomCodeColumnTitle; ColumnFont: ''; IsFixed: False),
   (ColumnType: 0; FieldName: 'PRODUCT_HAS_DOCUMENTATION'; Visible: True; Width: 12; Title: SProductHasDocumentationColumnTitle; ColumnFont: 'Courier New'; IsFixed: False),
   (ColumnType: 0; FieldName: 'PRODUCT_WORK_MEASURE_ABBREV'; Visible: True; Width: 40; Title: SProductWorkMeasureAbbrevColumnTitle; ColumnFont: ''; IsFixed: False),
   (ColumnType: 0; FieldName: 'PRODUCT_TECH_MEASURE_ABBREV'; Visible: True; Width: 40; Title: SProductTechMeasureAbbrevColumnTitle; ColumnFont: ''; IsFixed: False),
   (ColumnType: 0; FieldName: 'DETAIL_TECH_QUANTITY'; Visible: True; Width: 50; Title: SDetailTechQuantityColumnTitle; ColumnFont: ''; IsFixed: False),
   (ColumnType: 0; FieldName: 'LINE_DETAIL_TECH_QUANTITY'; Visible: True; Width: 50; Title: SLineDetailTechQuantityColumnTitle; ColumnFont: ''; IsFixed: False),
   (ColumnType: 0; FieldName: 'PRODUCT_TECH_QUANTITY'; Visible: True; Width: 50; Title: SProductTechQuantityColumnTitle; ColumnFont: ''; IsFixed: False),
   (ColumnType: 0; FieldName: 'LINE_PRODUCT_WORK_QUANTITY'; Visible: True; Width: 50; Title: SLineProductWorkQuantityColumnTitle; ColumnFont: ''; IsFixed: False),
   (ColumnType: 0; FieldName: 'PLAN_TOTAL_PRICE'; Visible: True; Width: 50; Title: SPlanTotalPriceColumnTitle; ColumnFont: ''; IsFixed: False),
   (ColumnType: 0; FieldName: 'PULLED_QUANTITY'; Visible: True; Width: 50; Title: SPulledQuantityColumnTitle; ColumnFont: ''; IsFixed: False),
   (ColumnType: 0; FieldName: 'PULLED_TOTAL_PRICE'; Visible: True; Width: 50; Title: SPulledTotalPriceColumnTitle; ColumnFont: ''; IsFixed: False),
   (ColumnType: 0; FieldName: 'UNCOVERED_LINES'; Visible: True; Width: 18; Title: SUncoveredLinesColumnTitle; ColumnFont: ''; IsFixed: False),
   (ColumnType: 1; FieldName: 'MLMS_IDENTIFIER'; Visible: True; Width: 55; Title: SMlmsIdentifierColumnTitle; ColumnFont: ''; IsFixed: False),
   (ColumnType: 1; FieldName: 'MOVEMENT_INTERVAL'; Visible: True; Width: 50; Title: SMovementIntervalColumnTitle; ColumnFont: ''; IsFixed: False),
   (ColumnType: 1; FieldName: 'QUANTITY'; Visible: True; Width: 43; Title: SQuantityColumnTitle; ColumnFont: ''; IsFixed: False),
   (ColumnType: 1; FieldName: 'MLMS_POINTER'; Visible: True; Width: 13; Title: ' '; ColumnFont: 'Symbol'; IsFixed: False),
   (ColumnType: 1; FieldName: 'PMM_BEGIN_DATE'; Visible: False; Width: 20; Title: ' '; ColumnFont: ''; IsFixed: False),
   (ColumnType: 1; FieldName: 'PMM_END_DATE'; Visible: False; Width: 20; Title: ' '; ColumnFont: ''; IsFixed: False),
   (ColumnType: 1; FieldName: 'MOVED_QUANTITY'; Visible: False; Width: 20; Title: ' '; ColumnFont: ''; IsFixed: False),
   (ColumnType: 1; FieldName: 'TOTAL_WASTE_DETAIL_TECH_QTY'; Visible: False; Width: 20; Title: ' '; ColumnFont: ''; IsFixed: False),
   (ColumnType: 0; FieldName: 'DETAIL_CODE'; Visible: False; Width: 20; Title: ' '; ColumnFont: ''; IsFixed: False),
   (ColumnType: 0; FieldName: 'NOTES'; Visible: False; Width: 20; Title: ' '; ColumnFont: ''; IsFixed: False),
   (ColumnType: 1; FieldName: 'MLMS_OBJECT'; Visible: False; Width: 1; Title: ' '; ColumnFont: ''; IsFixed: False),
   (ColumnType: 1; FieldName: 'MLMS_DEPT_CODE'; Visible: False; Width: 0; Title: ''; ColumnFont: ''; IsFixed: False),
   (ColumnType: 0; FieldName: 'UNCOVERED_CAPACITY_STAGE_COUNT'; Visible: False; Width: 0; Title: ' '; ColumnFont: ''; IsFixed: False),
   (ColumnType: 0; FieldName: 'UNCOVERED_CAPACITY_MLMSO_COUNT'; Visible: False; Width: 0; Title: ' '; ColumnFont: ''; IsFixed: False),
   (ColumnType: 1; FieldName: 'MLMS_DOC_BRANCH_CODE'; Visible: False; Width: 0; Title: ''; ColumnFont: ''; IsFixed: False),
   (ColumnType: 1; FieldName: 'MLMS_DOC_CODE'; Visible: False; Width: 0; Title: ''; ColumnFont: ''; IsFixed: False),
   (ColumnType: 1; FieldName: 'MLMS_HAS_DOC_ITEMS'; Visible: False; Width: 0; Title: ''; ColumnFont: ''; IsFixed: False)
  );

  MLMSIdentifierColumnNo = 30;
  MovementIntervalColumnNo = 31;
  QuantityColumnNo = 31;

  ModelStatusDetailColumnsCount = 6;
  ModelStatusDetailColumns: array [1..ModelStatusDetailColumnsCount] of Integer =
    (13, 14, 15, 16, 22, 23);

  ModelStatusProductColumnsCount = 11;
  ModelStatusProductColumns: array [1..ModelStatusProductColumnsCount] of Integer =
    (17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 29);

{ TfmModelStatus }

procedure TfmModelStatus.FormCreate(Sender: TObject);
begin
  ColumnDescCount:= ModelStatusColumnDescCount;
  DetailColumnsCount:= ModelStatusDetailColumnsCount;
  ProductColumnsCount:= ModelStatusProductColumnsCount;

  inherited;
end;

function TfmModelStatus.GetGridColumnsDefault(Index: Integer): TColumnDesc;
begin
  Result:= ModelStatusGridColumnsDefault[Index];
end;

function TfmModelStatus.GetMLMSIdentifierColumnNo: Integer;
begin
  Result:= MLMSIdentifierColumnNo;
end;

function TfmModelStatus.GetDetailColumns(Index: Integer): Integer;
begin
  Result:= ModelStatusDetailColumns[Index];
end;

function TfmModelStatus.GetProductColumns(Index: Integer): Integer;
begin
  Result:= ModelStatusProductColumns[Index];
end;

procedure TfmModelStatus.grdModelStatusDetailGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var
  Highlight: Boolean;
  Field: TField;
  FieldNameLen1: Integer;
  FieldNameLen2: Integer;
  StageNo: Integer;
  LineStageNo: Integer;
  MLMSIdentifier: string;
  i: Integer;
  MovementDays, PassedDays: Integer;
begin
  inherited;

  Highlight:= (gdSelected in State);
  Field:= Column.Field;

  if not Assigned(Field) or (Field.DataSet.Bof and Field.DataSet.Eof) then
    Exit;

  if not Highlight then
    begin
      if (Column.Index = grdModelStatusDetail.Columns[grdModelStatusDetail.Columns.Count - 1].Index) and
         (Field.DataSet.FieldByName('NO_AS_TEXT').AsString = '0') then
        Background:= ccStore
      else
        begin
          FieldNameLen1:= Length(GridColumns[MLMSIdentifierColumnNo].FieldName);
          if Copy(Field.FieldName, 1, FieldNameLen1) = GridColumns[MLMSIdentifierColumnNo].FieldName then
            begin
              StageNo:= StrToInt(Copy(Field.FieldName, FieldNameLen1 + 2, Length(Field.FieldName) - FieldNameLen1 + 1));
              MLMSIdentifier:= Field.DataSet.FieldByName('MLMS_IDENTIFIER_' + IntToStr(StageNo)).AsString;
              i:= Pos(':',MLMSIdentifier);
              if i <> 0 then
                begin
                  LineStageNo:= StrToInt(Copy(MLMSIdentifier, 1, i-1));
                  if LineStageNo = 0 then
                    Background:= ccStore
                  else
                    Background:= ccDept;
                end;
            end;
        end;
    end;

  FieldNameLen1:= Length(GridColumns[MovementIntervalColumnNo].FieldName);
  FieldNameLen2:= Length(GridColumns[QuantityColumnNo].FieldName);

  if (Copy(Field.FieldName, 1, FieldNameLen1) = GridColumns[MovementIntervalColumnNo].FieldName) or
     (Copy(Field.FieldName, 1, FieldNameLen2) = GridColumns[QuantityColumnNo].FieldName) then
    begin
      if (Copy(Field.FieldName, 1, FieldNameLen1) = GridColumns[MovementIntervalColumnNo].FieldName) then
        StageNo:= StrToInt(Copy(Field.FieldName, FieldNameLen1 + 2, Length(Field.FieldName) - FieldNameLen1 + 1))
      else
        StageNo:= StrToInt(Copy(Field.FieldName, FieldNameLen2 + 2, Length(Field.FieldName) - FieldNameLen2 + 1));

      if not Field.DataSet.FieldByName('PMM_BEGIN_DATE_' + IntToStr(StageNo)).IsNull then
        begin
          if (Field.DataSet.FieldByName('MOVED_QUANTITY_' + IntToStr(StageNo)).AsFloat + 0.1 <
              Field.DataSet.FieldByName('LINE_DETAIL_TECH_QUANTITY').AsFloat -
              Field.DataSet.FieldByName('TOTAL_WASTE_DETAIL_TECH_QTY_' + IntToStr(StageNo)).AsFloat) then
            begin
              if (Field.DataSet.FieldByName('PMM_END_DATE_' + IntToStr(StageNo)).AsDateTime < ContextDate()) then
                begin
                  if Highlight then
                    Background:= ccTotalLateSelected
                  else
                    Background:= ccTotalLateNotSelected;
                end
              else
                begin
                  if (Field.DataSet.FieldByName('PMM_BEGIN_DATE_' + IntToStr(StageNo)).AsDateTime < ContextDate()) then
                    begin
                      MovementDays:=
                        Trunc(
                          Field.DataSet.FieldByName('PMM_END_DATE_' + IntToStr(StageNo)).AsDateTime -
                          Field.DataSet.FieldByName('PMM_BEGIN_DATE_' + IntToStr(StageNo)).AsDateTime + 1
                        );

                      PassedDays:=
                        Trunc(
                          ContextDate() -
                          Field.DataSet.FieldByName('PMM_BEGIN_DATE_' + IntToStr(StageNo)).AsDateTime
                        );

                      if (Field.DataSet.FieldByName('MOVED_QUANTITY_' + IntToStr(StageNo)).AsFloat + 0.1 <
                          (PassedDays / MovementDays) *
                          (Field.DataSet.FieldByName('LINE_DETAIL_TECH_QUANTITY').AsFloat -
                           Field.DataSet.FieldByName('TOTAL_WASTE_DETAIL_TECH_QTY_' + IntToStr(StageNo)).AsFloat)) then
                        begin
                          if Highlight then
                            begin
                              Background:= ccPartLateSelected;
                              AFont.Color:= clBlack;
                            end
                          else
                            Background:= ccPartLateNotSelected;
                        end;
                    end;
                end;
            end;
        end;
    end;

  if ( (Field.FieldName = 'UNCOVERED_LINES') and Field.AsBoolean) or
     ( ( (Field.FieldName = 'HAS_WARNINGS') or (Field.FieldName = 'HAS_CHILDREN_WARNINGS') ) and
       Field.AsBoolean ) then
    begin
      if Highlight then
        Background:= ccTotalLateSelected
      else
        Background:= ccTotalLateNotSelected;
    end;

  if (AFont.Name = 'Courier New') then
    begin
      Background:= $00ECFFFF;
      AFont.Style:= [fsBold];
      AFont.Size:= 10;
    end;
end;

class function TfmModelStatus.CapacityStatus: Boolean;
begin
  Result:= False;
end;

end.
