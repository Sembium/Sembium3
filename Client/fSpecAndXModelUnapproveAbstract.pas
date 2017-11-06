unit fSpecAndXModelUnapproveAbstract;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, AbmesFields, JvDBLookup, Mask,
  DBCtrls, dDocClient, JvComponent, JvCaptionButton, JvComponentBase;

type
  TUnapproveMethod = (umNone, umDocItemOnly, umDoc, umRangeOperationsDocs,
                      umStageAndOperationsDocs, umLineStagesAndOperationsDocs,
                      umMainDeptModelLineStagesAndOperationsDocs,
                      umAllModelVariantsLineStagesAndOperationsDocs);

  TUnapproveMethods = set of TUnapproveMethod;

  TUnapproveInfo = record
    UnapproveMethod: TUnapproveMethod;
    FromOperationNo: Integer;
    ToOperationNo: Integer;
  end;

const
  EmptyUnapproveInfo: TUnapproveInfo = (UnapproveMethod: umNone; FromOperationNo: 0; ToOperationNo: 0);

type
  TfmSpecAndXModelUnapproveAbstract = class(TEditForm)
    pnlCaption: TPanel;
    lblCaption1: TLabel;
    lblCaption2: TLabel;
    lblCaption3: TLabel;
    cdsDataUNAPPROVE_METHOD_CODE: TAbmesFloatField;
    pnlObjectIdentifier: TPanel;
    lblLineNo: TLabel;
    edtLineNo: TEdit;
    lblStageNo: TLabel;
    edtStageNo: TEdit;
    edtOperationNo: TEdit;
    lblOperationNo: TLabel;
    pnlSelectedDocItem: TPanel;
    lblSelectedDocItem: TLabel;
    edtSelectedDocItemIdentifier: TEdit;
    gbUnapproveMethod: TGroupBox;
    cdsUnapproveMethods: TAbmesClientDataSet;
    cdsUnapproveMethodsUNAPPROVE_METHOD_CODE: TAbmesFloatField;
    cdsUnapproveMethodsUNAPPROVE_METHOD_NAME: TAbmesWideStringField;
    cdsDataFROM_OPERATION_NO: TAbmesFloatField;
    cdsDataTO_OPERATION_NO: TAbmesFloatField;
    pnlOperationRange: TPanel;
    edtFromOperationNo: TDBEdit;
    edtToOperationNo: TDBEdit;
    lblFromOperationNo: TLabel;
    lblToOperationNo: TLabel;
    pnlUnapproveMethod: TPanel;
    gbUnapproveMethods: TRadioGroup;
    lblModelIdentifier: TLabel;
    edtModelIdentifier: TEdit;
    procedure cdsUnapproveMethodsAfterOpen(DataSet: TDataSet);
    procedure cdsDataAfterOpen(DataSet: TDataSet);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioButtonDblClick(Sender: TObject);
    procedure gbUnapproveMethodsClick(Sender: TObject);
  private
    FUnapproveMethods: TUnapproveMethods;
    FUnapproveInfo: TUnapproveInfo;
    FGroupBoxValues: array of Integer;
    procedure SetRadioButtons;
  protected
    procedure OpenDataSets; override;
    procedure AddUnapproveMethod(AUnapproveMethod: TUnapproveMethod;
      AUnapproveMethodName: string);

    property UnapproveMethods: TUnapproveMethods read FUnapproveMethods;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient;
      ALineNo: string; AStageNo: Integer; AOperationNo, AModelIdentifier: string;
      AShowCurrentDocItem: Boolean;
      AUnapproveMethods: TUnapproveMethods); reintroduce; virtual;
    class function SelectUnapproveMethod(AdmDocClient: TdmDocClient;
      ALineNo: string; AStageNo: Integer; AOperationNo, AModelIdentifier: string;
      AShowCurrentDocItem: Boolean;
      AUnapproveMethods: TUnapproveMethods): TUnapproveInfo;
  end;

type
  TfmSpecAndXModelUnapproveAbstractClass = class of TfmSpecAndXModelUnapproveAbstract;

implementation

uses
  uUtils;

{$R *.dfm}

resourcestring
  SDocItemOnly = 'Избраното ИИО от МИИО';
  SDoc = 'МИИО';
  SRangeOperationsDocs = 'МИИО на диапазон от операции';
  SStageAndOperationsDocs = 'МИИО на Етапа и всички Операции в него';
  SIncorrectOperationRange = 'Некоректен диапазон от операции';

procedure TfmSpecAndXModelUnapproveAbstract.AddUnapproveMethod(
  AUnapproveMethod: TUnapproveMethod; AUnapproveMethodName: string);
begin
  if (AUnapproveMethod in UnapproveMethods) then
    cdsUnapproveMethods.AppendRecord([Ord(AUnapproveMethod), AUnapproveMethodName]);
end;

procedure TfmSpecAndXModelUnapproveAbstract.cdsUnapproveMethodsAfterOpen(
  DataSet: TDataSet);
begin
  inherited;

  AddUnapproveMethod(umDocItemOnly, SDocItemOnly);
  AddUnapproveMethod(umDoc, SDoc);
  AddUnapproveMethod(umRangeOperationsDocs, SRangeOperationsDocs);
  AddUnapproveMethod(umStageAndOperationsDocs, SStageAndOperationsDocs);
end;

procedure TfmSpecAndXModelUnapproveAbstract.cdsDataAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.AppendRecord([]);
end;

procedure TfmSpecAndXModelUnapproveAbstract.actFormUpdate(Sender: TObject);
begin
  inherited;
  pnlOperationRange.Visible:=
    cdsData.Active and
    (cdsDataUNAPPROVE_METHOD_CODE.AsInteger = Ord(umRangeOperationsDocs));
end;

procedure TfmSpecAndXModelUnapproveAbstract.cdsDataBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  if (cdsDataUNAPPROVE_METHOD_CODE.AsInteger = Ord(umRangeOperationsDocs)) then
    begin
      CheckRequiredFields([cdsDataFROM_OPERATION_NO, cdsDataTO_OPERATION_NO]);

      if (cdsDataFROM_OPERATION_NO.AsInteger > cdsDataTO_OPERATION_NO.AsInteger) then
        begin
          cdsDataFROM_OPERATION_NO.FocusControl;
          raise Exception.Create(SIncorrectOperationRange);
        end;
    end
  else
    begin
      cdsDataFROM_OPERATION_NO.Clear;
      cdsDataTO_OPERATION_NO.Clear;
    end;
end;

procedure TfmSpecAndXModelUnapproveAbstract.SetDataParams(
  AdmDocClient: TdmDocClient; ALineNo: string; AStageNo: Integer;
  AOperationNo, AModelIdentifier: string; AShowCurrentDocItem: Boolean;
  AUnapproveMethods: TUnapproveMethods);
begin
  inherited SetDataParams(AdmDocClient);

  edtLineNo.Text:= ALineNo;
  edtStageNo.Text:= IntToStr(AStageNo);
  edtOperationNo.Text:= AOperationNo;

  FUnapproveMethods:= AUnapproveMethods;

  lblStageNo.Visible:= (AStageNo >= 0);
  edtStageNo.Visible:= (AStageNo >= 0);
  lblOperationNo.Visible:= (AOperationNo <> '');
  edtOperationNo.Visible:= (AOperationNo <> '');

  edtModelIdentifier.Text:= AModelIdentifier;
  edtModelIdentifier.Visible:= (AModelIdentifier <> '');
  lblModelIdentifier.Visible:= (AModelIdentifier <> '');

  pnlSelectedDocItem.Visible:= AShowCurrentDocItem;
  if AShowCurrentDocItem then
    edtSelectedDocItemIdentifier.Text:= dmDocClient.DocItemIdentifier;
end;

class function TfmSpecAndXModelUnapproveAbstract.SelectUnapproveMethod(
  AdmDocClient: TdmDocClient; ALineNo: string; AStageNo: Integer;
  AOperationNo, AModelIdentifier: string; AShowCurrentDocItem: Boolean;
  AUnapproveMethods: TUnapproveMethods): TUnapproveInfo;
var
  f: TfmSpecAndXModelUnapproveAbstract;
begin
  if (AUnapproveMethods = []) then
    Result:= EmptyUnapproveInfo
  else
    begin
      f:= CreateEx;
      try
        f.SetDataParams(AdmDocClient, ALineNo, AStageNo, AOperationNo, AModelIdentifier,
          AShowCurrentDocItem, AUnapproveMethods);
        f.InternalShowForm;
        Result:= f.FUnapproveInfo;
      finally
        f.ReleaseForm;
      end;
    end;
end;

procedure TfmSpecAndXModelUnapproveAbstract.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  OriginalModalResult: Integer;
begin
  Application.ProcessMessages;

  if (ModalResult = mrOK) then
    CheckRequiredField(cdsDataUNAPPROVE_METHOD_CODE);

  OriginalModalResult:= ModalResult;

  inherited;

  if (OriginalModalResult = mrOK) then
    with FUnapproveInfo do
      begin
        UnapproveMethod:= TUnapproveMethod(cdsDataUNAPPROVE_METHOD_CODE.AsInteger);
        FromOperationNo:= cdsDataFROM_OPERATION_NO.AsInteger;
        ToOperationNo:= cdsDataTO_OPERATION_NO.AsInteger;
      end;
end;

procedure TfmSpecAndXModelUnapproveAbstract.SetRadioButtons;
var
  i: Integer;
  b: TBookmark;
begin
  gbUnapproveMethods.Items.Clear;

  with cdsUnapproveMethods do
    begin
      DisableControls;
      try
        b:= Bookmark;
        try
          SetLength(FGroupBoxValues, RecordCount);

          First;
          while not Eof do
            begin
              FGroupBoxValues[RecNo-1]:= cdsUnapproveMethodsUNAPPROVE_METHOD_CODE.AsInteger;
              gbUnapproveMethods.Items.Add(cdsUnapproveMethodsUNAPPROVE_METHOD_NAME.AsString);

              Next;
            end;  { while }
        finally
          Bookmark:= b;
        end;  { try }
      finally
        EnableControls;
      end;  { try }
    end;  { with }

  for i:= 0 to gbUnapproveMethods.Items.Count - 1 do
    gbUnapproveMethods.Buttons[i].OnDblClick:= RadioButtonDblClick;

  pnlUnapproveMethod.Height:= 19 * gbUnapproveMethods.Items.Count;
end;

procedure TfmSpecAndXModelUnapproveAbstract.RadioButtonDblClick(
  Sender: TObject);
begin
  ModalResult:= mrOK;
end;

procedure TfmSpecAndXModelUnapproveAbstract.OpenDataSets;
begin
  cdsUnapproveMethods.CreateDataSet;
  try
    SetRadioButtons;
  finally
    cdsUnapproveMethods.Close;
  end;  { try }

  inherited;
end;

procedure TfmSpecAndXModelUnapproveAbstract.gbUnapproveMethodsClick(
  Sender: TObject);
begin
  inherited;
  CheckEditMode(cdsData);
  cdsDataUNAPPROVE_METHOD_CODE.AsInteger:= FGroupBoxValues[gbUnapproveMethods.ItemIndex];
end;

end.

