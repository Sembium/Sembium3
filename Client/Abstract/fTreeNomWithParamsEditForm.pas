unit fTreeNomWithParamsEditForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fInnerButtonGridForm, ImgList, ParamDataSet, ActnList, Db,
  DBClient, GridsEh, DBCtrls, ColorNavigator, Buttons,
  StdCtrls, ExtCtrls, Mask, uClientTypes, AbmesClientDataSet, DBGridEh,
  AbmesDBGrid, AbmesFields, Menus, JvButtons, ComCtrls, ToolWin, dDocClient,
  JvComponent, JvCaptionButton, JvComponentBase, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, System.Actions,
  DynVarsEh, EhLibVCL, DBAxisGridsEh;

type
  TTreeNomWithParamsEditForm = class(TInnerButtonGridForm)
    pnlParamsCaption: TPanel;
    pnlData: TPanel;
    lblNodeNo: TLabel;
    lblNodeName: TLabel;
    edtNodeNo: TDBEdit;
    edtNodeName: TDBEdit;
    cdsGridDataNODE_ID: TAbmesFloatField;
    cdsGridDataNODE_PARAM_ID: TAbmesFloatField;
    cdsGridDataNODE_PARAM_NAME: TAbmesWideStringField;
    cdsGridDataVALUE_TYPE: TAbmesFloatField;
    cdsGridDataNOM_CODE: TAbmesFloatField;
    cdsGridDataVALUE_NOM_CODE: TAbmesFloatField;
    cdsGridDataVALUE_NOM_ITEM_CODE: TAbmesFloatField;
    cdsGridDataVALUE_FLOAT: TAbmesFloatField;
    cdsGridDataVALUE_FLOAT_FORMAT: TAbmesWideStringField;
    cdsGridDataVALUE_FLOAT_RANGE_START: TAbmesFloatField;
    cdsGridDataVALUE_FLOAT_RANGE_END: TAbmesFloatField;
    cdsGridDataVALUE_STRING: TAbmesWideStringField;
    cdsGridDataABBREV: TAbmesWideStringField;
    cdsGridDataPREFIX: TAbmesWideStringField;
    cdsGridDataSUFFIX: TAbmesWideStringField;
    cdsGridDataIS_REQUIRED: TAbmesFloatField;
    cdsGridDataIS_PART_OF_NAME: TAbmesFloatField;
    cdsGridDataIS_INHERITED: TAbmesFloatField;
    cdsGridDataIS_VALUE_INHERITED: TAbmesFloatField;
    cdsGridDataNOM_ITEM_NAME: TAbmesWideStringField;
    cdsGridData_SHOW_VALUE: TAbmesWideStringField;
    cdsNoms: TAbmesClientDataSet;
    cdsNomsNOM_CODE: TAbmesFloatField;
    cdsNomsNOM_NAME: TAbmesWideStringField;
    cdsGridData_NOM_NAME: TAbmesWideStringField;
    cdsGridData_MAX_NODE_PARAM_ID: TAggregateField;
    cdsGridDataNODE_PARAM_ORDER_NO: TAbmesFloatField;
    cdsGridData_MAX_NODE_PARAM_ORDER_NO: TAggregateField;
    cdsGridDataIS_DEFINED: TAbmesFloatField;
    cdsGridDataPARENT_IS_DEFINED: TAbmesFloatField;
    cdsGridData_NOM_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridData_NOM_DOC_CODE: TAbmesFloatField;
    cdsGridData_NOM_HAS_DOC_ITEMS: TAbmesFloatField;
    cdsGridData_SHOW_VALUE_WITH_PREFIX_AND_SUFFIX: TAbmesWideStringField;
    cdsGridDataNOM_ITEM_IS_NOT_PART_OF_NAME: TAbmesFloatField;
    cdsGridDataIS_FOR_EXPORT: TAbmesFloatField;
    cdsGridDataEXPORT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataPARENT_IS_FOR_EXPORT: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsGridDataAfterDelete(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure cdsGridDataAfterPost(DataSet: TDataSet);
    procedure cdsGridDataABBREVSetText(Sender: TField; const Text: String);
    procedure cdsGridDataIS_DEFINEDChange(Sender: TField);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure actInsertRecordExecute(Sender: TObject);
  private
    FNameFromParams: string;
    FCreateLikeNodeID: Integer;
    FMaxNodeParamOrderNo: Variant;
    procedure CheckRequiredParams;
    function IsValidExportIdentifier(const AIdentifier: string): Boolean;
  protected
    FChanged: Boolean;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function DoShowEditForm(AEditMode: TEditMode): Boolean; override;
    function GetDelRecordEnabled: Boolean; override;
    procedure CalcName(CheckParams: Boolean);
    function GetNodeNameFromParams(ANodeNameFromParams: string): string; virtual;
    procedure DoGridApplyUpdates; override;
    procedure DoApplyUpdates; override;
    procedure DetailsChanged;
    property CreateLikeNodeID: Integer read FCreateLikeNodeID;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      ACreateLikeNodeID: Integer = 0); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      ACreateLikeNodeID: Integer = 0;
      AParamsClientDataSetPointer: PPointer = nil): Boolean;
    procedure Initialize; override;
  end;

type
  TTreeNomWithParamsEditFormClass = class of TTreeNomWithParamsEditForm;

implementation

uses
  Variants, uUtils, fParamEdit, uClientUtils, uTreeNodes, uClientDateTime;

{$R *.DFM}

resourcestring
  SIncorrectRange = 'Некоректен диапазон на числовата стойност!';
  SValueOutOfRange = 'Стойността не е в посочения диапазон!';
  SNoValueForRequiredParam = 'Не сте въвели стойност на "присъщ" и "задължителен" параметър!';
  SInvalidExportIdentifier = 
    'Невалиден експорт идентификатор.' + SLineBreak + 
    'Позволени са само големи и малки латински букви, цифри и ''_''.' + SLineBreak + 
    'Трябва да започва с буква.';

{ TTreeNomWithParamsEditForm }

procedure TTreeNomWithParamsEditForm.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmParamEdit;
end;

procedure TTreeNomWithParamsEditForm.cdsGridDataCalcFields(
  DataSet: TDataSet);
begin
  inherited;

  if cdsGridDataVALUE_NOM_ITEM_CODE.IsNull then
    begin
      if cdsGridDataVALUE_FLOAT.IsNull then
        cdsGridData_SHOW_VALUE.AsString:= cdsGridDataVALUE_STRING.AsString
      else
        begin
          if cdsGridDataVALUE_FLOAT_FORMAT.IsNull then
            cdsGridData_SHOW_VALUE.AsString:= cdsGridDataVALUE_FLOAT.AsString
          else
            cdsGridData_SHOW_VALUE.AsString:=
              FormatFloat(cdsGridDataVALUE_FLOAT_FORMAT.AsString,
                          cdsGridDataVALUE_FLOAT.AsFloat);
        end
    end
  else
    cdsGridData_SHOW_VALUE.Value:= cdsGridDataNOM_ITEM_NAME.Value;

  cdsGridData_SHOW_VALUE_WITH_PREFIX_AND_SUFFIX.AsString:=
    cdsGridDataPREFIX.AsString +
    cdsGridData_SHOW_VALUE.AsString +
    cdsGridDataSUFFIX.AsString;
end;

procedure TTreeNomWithParamsEditForm.OpenDataSets;
var
  NodeID: Integer;
begin
  cdsNoms.Open;

  cdsGridData.RemoteServer:=
    (dsData.DataSet as TAbmesClientDataSet).RemoteServer;

  cdsGridData.ConnectionBroker:=
    (dsData.DataSet as TAbmesClientDataSet).ConnectionBroker;

  with cdsGridData.Params do
    if (EditMode = emInsert) then
      begin
        if (FCreateLikeNodeID > 0) then
          NodeID:= FCreateLikeNodeID
        else
          NodeID:= dsData.DataSet.FieldByName('PARENT_NODE_ID').AsInteger;

        ParamByName('NODE_ID').AsInteger:= NodeID;
        SetBoolValue(ParamByName('NEW_NODE'), True);
      end
    else
      begin
        ParamByName('NODE_ID').AsInteger:=
          dsData.DataSet.FieldByName('NODE_ID').AsInteger;
        SetBoolValue(ParamByName('NEW_NODE'), False);
      end;   { with }

  inherited;
end;

procedure TTreeNomWithParamsEditForm.CloseDataSets;
begin
  inherited;
  cdsNoms.Close;
end;

function TTreeNomWithParamsEditForm.DoShowEditForm(
  AEditMode: TEditMode): Boolean;
begin
  if (AEditMode = emEdit) and
     (cdsGridDataIS_VALUE_INHERITED.AsBoolean or
      (EditMode = emReadOnly)) then
    AEditMode:= emReadOnly;

  Result:=
    inherited DoShowEditForm(AEditMode);
end;

function TTreeNomWithParamsEditForm.GetDelRecordEnabled: Boolean;
begin
  Result:=
    inherited GetDelRecordEnabled and
    not cdsGridDataIS_INHERITED.AsBoolean;
end;

procedure TTreeNomWithParamsEditForm.cdsGridDataBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  if (cdsGridDataVALUE_TYPE.AsInteger = vtNom) then
    CheckRequiredField(cdsGridData_NOM_NAME);

  if cdsGridDataVALUE_NOM_ITEM_CODE.IsNull then
    cdsGridDataVALUE_NOM_CODE.Clear
  else
    cdsGridDataVALUE_NOM_CODE.Assign(cdsGridDataNOM_CODE);

  if (cdsGridDataVALUE_FLOAT_RANGE_START.IsNull <> cdsGridDataVALUE_FLOAT_RANGE_END.IsNull) or
     (cdsGridDataVALUE_FLOAT_RANGE_START.AsInteger > cdsGridDataVALUE_FLOAT_RANGE_END.AsInteger) then
     begin
       cdsGridDataVALUE_FLOAT_RANGE_START.FocusControl;
       raise Exception.Create(SIncorrectRange);
     end;

  if not cdsGridDataVALUE_FLOAT_RANGE_START.IsNull and not cdsGridDataVALUE_FLOAT.IsNull then
    begin
      if (cdsGridDataVALUE_FLOAT_RANGE_START.AsFloat > cdsGridDataVALUE_FLOAT.AsFloat) or
         (cdsGridDataVALUE_FLOAT_RANGE_END.AsFloat < cdsGridDataVALUE_FLOAT.AsFloat) then
        begin
          cdsGridDataVALUE_FLOAT.FocusControl;
          raise Exception.Create(SValueOutOfRange);
        end;
    end;

  if cdsGridDataIS_FOR_EXPORT.AsBoolean then
    begin
      CheckRequiredField(cdsGridDataEXPORT_IDENTIFIER);

      if not IsValidExportIdentifier(cdsGridDataEXPORT_IDENTIFIER.AsString) then
        begin
          cdsGridDataEXPORT_IDENTIFIER.FocusControl;
          raise Exception.Create(SInvalidExportIdentifier);
        end;
    end;
end;

procedure TTreeNomWithParamsEditForm.cdsGridDataNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  cdsGridDataNODE_ID.Value:= dsData.DataSet.FieldByName('NODE_ID').AsInteger;

  cdsGridDataNODE_PARAM_ID.Value:= VarToInt(cdsGridData_MAX_NODE_PARAM_ID.Value) + 1;

  if VarIsNullOrEmpty(FMaxNodeParamOrderNo) then
    cdsGridDataNODE_PARAM_ORDER_NO.Value:= VarToInt(cdsGridData_MAX_NODE_PARAM_ORDER_NO.Value) + 1
  else
    cdsGridDataNODE_PARAM_ORDER_NO.Value:= FMaxNodeParamOrderNo + 1;

  cdsGridDataVALUE_TYPE.Value:= vtFloat;   // float value
  cdsGridDataIS_REQUIRED.AsBoolean:= False;
  cdsGridDataIS_PART_OF_NAME.AsBoolean:= False;
  cdsGridDataIS_INHERITED.AsBoolean:= False;
  cdsGridDataIS_VALUE_INHERITED.AsBoolean:= False;

  cdsGridDataIS_DEFINED.AsBoolean:= False;
  cdsGridDataPARENT_IS_DEFINED.AsBoolean:= False;

  cdsGridDataIS_FOR_EXPORT.AsBoolean:= False;
  cdsGridDataPARENT_IS_FOR_EXPORT.AsBoolean:= False;
end;

procedure TTreeNomWithParamsEditForm.actInsertRecordExecute(Sender: TObject);
begin
  cdsGridData.TempUnfilter/
    procedure begin
      FMaxNodeParamOrderNo:= VarToInt(cdsGridData_MAX_NODE_PARAM_ORDER_NO.Value);
    end;
  try
    inherited;
  finally
    FMaxNodeParamOrderNo:= Null;
  end;
end;

procedure TTreeNomWithParamsEditForm.CalcName(CheckParams: Boolean);
var
  b: TBookmark;
  s: string;
begin
  if CheckParams then
    begin
      FNameFromParams:= '';
      with cdsGridData do
        begin
          DisableControls;
          try
            b:= Bookmark;
            try
              First;
              while not EOF do
                begin
                  if cdsGridDataIS_PART_OF_NAME.AsBoolean and
                     cdsGridDataIS_DEFINED.AsBoolean and
                     (not cdsGridDataNOM_ITEM_IS_NOT_PART_OF_NAME.AsBoolean) and
                     (cdsGridData_SHOW_VALUE.AsString <> '') then
                    FNameFromParams:= FNameFromParams +
                                      cdsGridDataPREFIX.AsString +
                                      cdsGridData_SHOW_VALUE.AsString +
                                      cdsGridDataSUFFIX.AsString;

                  Next;
                end;   { while }
            finally
              Bookmark:= b;
            end;   { try }
          finally
            EnableControls;
          end;   { try }
        end;   { with }
    end;   { if }

  FNameFromParams:= StringReplace(FNameFromParams, #160, #32, [rfReplaceAll]);


  s:= GetNodeNameFromParams(FNameFromParams);

  CheckEditMode(dsData.DataSet);
  with dsData.DataSet.FieldByName('NODE_NAME') do
    if (AsString <> s) then
      AsString:= s;
end;

procedure TTreeNomWithParamsEditForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (ModalResult = mrOK) then
    begin
      CheckEditMode(dsData.DataSet);

      if (dsData.DataSet.FieldByName('NODE_TYPE').AsInteger = Ord(ntInstance)) then
        CheckRequiredParams;
    end
  else
    begin
      if FChanged then
        RefreshDataSet(dsData.DataSet);
    end;

  inherited;
end;

procedure TTreeNomWithParamsEditForm.CheckRequiredParams;
var
  b: TBookmark;
begin
  with cdsGridData do
    begin
      DisableControls;
      try
        b:= Bookmark;
        try
          First;
          while not EOF do
            begin
              if cdsGridDataIS_DEFINED.AsBoolean and
                 cdsGridDataIS_REQUIRED.AsBoolean and
                 (cdsGridData_SHOW_VALUE.AsString = '') then
                begin
                  b:= Bookmark;
                  raise Exception.Create(SNoValueForRequiredParam);
                end;

              Next;
            end;   { while }
        finally
          Bookmark:= b;
        end;   { try }
      finally
        EnableControls;
      end;   { try }
    end;   { with }
end;

procedure TTreeNomWithParamsEditForm.cdsGridDataAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  CalcName(True);
  DetailsChanged;
end;

procedure TTreeNomWithParamsEditForm.FormShow(Sender: TObject);
begin
  inherited;

  InitializeAbmesDBGrid(grdData, False);

  if (EditMode <> emReadOnly) then
    CalcName(True);
end;

procedure TTreeNomWithParamsEditForm.cdsGridDataAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  CalcName(True);
  DetailsChanged;
end;

procedure TTreeNomWithParamsEditForm.Initialize;
begin
  inherited;
  if (EditMode = emInsert) and (FCreateLikeNodeID = 0) then
    cdsGridData.PreserveRecNo/
      cdsGridData.TempUnfilter/
        cdsGridData.ForEach/
          cdsGridData.SafeEdit/
            procedure begin
              cdsGridDataIS_INHERITED.AsBoolean:= True;
              cdsGridDataIS_VALUE_INHERITED.AsBoolean:=
                not (cdsGridDataVALUE_FLOAT.IsNull and
                     cdsGridDataVALUE_NOM_ITEM_CODE.IsNull and
                     cdsGridDataVALUE_STRING.IsNull);
            end;
end;

procedure TTreeNomWithParamsEditForm.DoGridApplyUpdates;
begin
//  inherited;    do nothing
end;

procedure TTreeNomWithParamsEditForm.DoApplyUpdates;
begin
  cdsGridData.SetOptionalParam('NEW_NODE', (EditMode = emInsert), True);

  cdsGridDataNOM_CODE.Required:= False;

  if (EditMode = emInsert) then
    begin
      cdsGridData.TempDisableControls/
        cdsGridData.PreserveRecNo/
          cdsGridData.TempUnfilter/
            cdsGridData.ForEach/
              cdsGridData.SafeEdit/
                procedure begin
                  cdsGridDataNODE_ID.AsInteger:= -1;
                end;
    end;   { if }

  try
    inherited;
  finally
    FChanged:= True;
  end;   { try }
end;

procedure TTreeNomWithParamsEditForm.cdsGridDataABBREVSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsString:= ReplaceLastChars(Text, #32, #160);
end;

procedure TTreeNomWithParamsEditForm.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  ACreateLikeNodeID: Integer);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FCreateLikeNodeID:= ACreateLikeNodeID;
end;

class function TTreeNomWithParamsEditForm.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  ACreateLikeNodeID: Integer; AParamsClientDataSetPointer: PPointer): Boolean;
var
  f: TTreeNomWithParamsEditForm;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin,
      ACreateLikeNodeID);
    AParamsClientDataSetPointer^:= f.cdsGridData;
    try
      f.InternalShowForm;
    finally
      AParamsClientDataSetPointer^:= nil;
    end;   { try }
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

function TTreeNomWithParamsEditForm.IsValidExportIdentifier(
  const AIdentifier: string): Boolean;
var
  ch: Char;
begin
  Result:= AIdentifier <> '';

  for ch in AIdentifier do
    Result:= Result and CharInSet(ch, ['a'..'z','A'..'Z','0'..'9','_']);

  Result:= Result and CharInSet(AIdentifier[1], ['a'..'z','A'..'Z']);
end;

procedure TTreeNomWithParamsEditForm.DetailsChanged;
begin
  CheckEditMode(dsData.DataSet);
  dsData.DataSet.FieldByName('CHANGE_DATE_TIME').AsDateTime:= ContextNow;
end;

procedure TTreeNomWithParamsEditForm.cdsGridDataIS_DEFINEDChange(
  Sender: TField);
begin
  inherited;

  if not Sender.AsBoolean then
    begin
      cdsGridDataVALUE_NOM_CODE.Clear;
      cdsGridDataVALUE_NOM_ITEM_CODE.Clear;
      cdsGridDataVALUE_FLOAT.Clear;
      cdsGridDataVALUE_STRING.Clear;
    end;
end;

function TTreeNomWithParamsEditForm.GetNodeNameFromParams(
  ANodeNameFromParams: string): string;
begin
  Result:= ANodeNameFromParams;
end;

procedure TTreeNomWithParamsEditForm.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if not cdsGridDataIS_DEFINED.AsBoolean then
    AFont.Color:= clSilver;
end;

end.
