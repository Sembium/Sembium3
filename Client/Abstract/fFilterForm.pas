unit fFilterForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ImgList, ActnList, StdCtrls, Buttons, ExtCtrls, DBClient, fDBFrame,
  AbmesClientDataSet, Menus, JvButtons, fEditForm, JvDBLookup, AbmesFields,
  JvExControls, JvComponent, JvCaptionButton, JvComponentBase, System.Actions;

type
  TFilterForm = class(TEditForm)
    pnlFilterVariants: TPanel;
    pnlSaveFilterVariant: TPanel;
    btnSaveFilterVariant: TSpeedButton;
    btnDeleteCurrentFilterVariant: TSpeedButton;
    btnFilterVariantSysRoles: TSpeedButton;
    pnlFilterVariantsCombo: TPanel;
    cbFilterVariants: TJvDBLookupCombo;
    cdsFilterVariants: TAbmesClientDataSet;
    cdsFilterVariantsFILTER_CODE: TAbmesFloatField;
    cdsFilterVariantsFILTER_VARIANT_CODE: TAbmesFloatField;
    cdsFilterVariantsFILTER_VARIANT_NAME: TAbmesWideStringField;
    cdsFilterVariantsqryFilterVariantFields: TDataSetField;
    cdsFilterVariants_MAX_FILTER_VARIANT_CODE: TAggregateField;
    dsFilterVariants: TDataSource;
    cdsFilterVariantFields: TAbmesClientDataSet;
    cdsFilterVariantFieldsFILTER_CODE: TAbmesFloatField;
    cdsFilterVariantFieldsFILTER_VARIANT_CODE: TAbmesFloatField;
    cdsFilterVariantFieldsFILTER_VARIANT_FIELD_CODE: TAbmesFloatField;
    cdsFilterVariantFieldsFIELD_NAME: TAbmesWideStringField;
    cdsFilterVariantFieldsFIELD_DISPLAY_LABEL: TAbmesWideStringField;
    cdsFilterVariantFieldsFIELD_TYPE: TAbmesFloatField;
    cdsFilterVariantFieldsIS_FIELD_EMPTY: TAbmesFloatField;
    cdsFilterVariantFieldsVALUE_AS_NUMBER: TAbmesFloatField;
    cdsFilterVariantFieldsVALUE_AS_STRING: TAbmesWideStringField;
    cdsFilterVariantFieldsTIME_UNIT_COUNT: TAbmesFloatField;
    cdsFilterVariantFieldsTIME_UNIT_CODE: TAbmesFloatField;
    cdsFilterVariantFieldsTIME_UNIT_POSITION: TAbmesFloatField;
    actSaveFilterVariant: TAction;
    actDeleteCurrentFilterVariant: TAction;
    actFilterVariantSysRoles: TAction;
    cdsFilterVariantFieldsTIME_UNIT_READ_ONLY: TAbmesFloatField;
    cdsFilterVariantFieldsSAVE_FIELD: TAbmesFloatField;
    cdsFilterVariantFieldsHAS_DEFAULT_VALUE: TAbmesFloatField;
    cdsFilterVariantFieldsDEPENDS_ON_FIELD_NAME: TAbmesWideStringField;
    cdsFilterVariantFieldsTIME_UNIT_IS_WORKDAY: TAbmesFloatField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actSaveFilterVariantExecute(Sender: TObject);
    procedure actDeleteCurrentFilterVariantUpdate(Sender: TObject);
    procedure actDeleteCurrentFilterVariantExecute(Sender: TObject);
    procedure actFilterVariantSysRolesExecute(Sender: TObject);
    procedure cdsFilterVariantsNewRecord(DataSet: TDataSet);
    procedure cdsFilterVariantsReconcileError(
      DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure actFormUpdate(Sender: TObject);
    procedure dsDataUpdateData(Sender: TObject);
    procedure dsDataDataChange(Sender: TObject; Field: TField);
    procedure dsDataStateChange(Sender: TObject);
  private
    FDataChanging: Boolean;
    FCanModifyOuterDataSet: Boolean;
    FFilterCode: Integer;
    FDataJustPosted: Boolean;
    procedure FillFilterVariantFields;
    procedure LoadFilterVariantFields;
    procedure DisableControls;
  protected
    function GetFormCaption: string; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetFilterVariantsEnabled: Boolean; virtual;
    function FilterVariantReadOnly: Boolean; virtual;
    function GetFieldReadOnly(const AFieldName: string): Boolean;
    function GetFilterFormVariantCode: Integer; virtual;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function GetControlReadOnly(AWinControl: TWinControl): Boolean; virtual;
    function GetDBFrameReadOnly(AFrame: TDBFrame): Boolean; virtual;
  public
    procedure Initialize; override;
  end;

  TFilterFormClass = class of TFilterForm;

resourcestring
  SFilter = 'Филтър';
  SConfirmFilterVariantDelete = 'Желаете ли да изтриете варианта "%s"?';
  SNoSavedVariantsYouCanUse = 'Не съществуват варианти на филтъра, за изпълнението на които да имате Информационна Отговорност';

implementation

uses
  dMain, fFilterVariant, uClientUtils, AbmesDialogs, uPeriods, TypInfo,
  uUtils, uClientTypes, uUserActivityConsts, fFilterVariantSysRoles,
  fFieldEditFrame, fDeptFieldEditFrame, fEmployeeFieldEditFrame,
  fPriorityIntervalEditFrame, Variants, fGridForm, fSaleExpGroups, fDBDataForm,
  uClientDateTime, DBCtrls, JvDBCombobox, AbmesDBCheckBox, uDependantField,
  uFilterField, DBCtrlsEh, System.Math;

{$R *.DFM}

{ TFilterForm }

procedure TFilterForm.FormShow(Sender: TObject);
begin
  inherited;

  if (dsData.DataSet <> cdsData) then
    begin
      Assert(dsData.DataSet.State <> dsInactive);
      Assert(not (dsData.DataSet.State in dsEditModes));

      dsData.Edit;
    end;   { if }

  if GetFilterVariantsEnabled then
    begin
      if not dsData.DataSet.FieldByName(CurrentFilterVariantCodeFieldName).IsNull then
        begin
          cdsFilterVariants.Locate('FILTER_VARIANT_CODE', dsData.DataSet.FieldByName(CurrentFilterVariantCodeFieldName).AsInteger, []);
          LoadFilterVariantFields;
        end
      else
        with dsData.DataSet.FieldByName(CurrentFilterVariantCodeFieldName) do
          if (Tag = 0) then
            begin
              Tag:= 1;
              cdsFilterVariants.First;
              AsInteger:= cdsFilterVariantsFILTER_VARIANT_CODE.AsInteger;
            end;

      if not FCanModifyOuterDataSet and
         not LoginContext.HasUserActivity(uaSaveFilterVariants) then
        DisableControls;
    end;
end;

function TFilterForm.GetFormCaption: string;
begin
  Result:= Format(OriginalFormCaption, [SFilter]);
end;

procedure TFilterForm.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  inherited;

  for i:= 0 to ComponentCount - 1 do
    begin
      if Components[i].InheritsFrom(TFieldEditFrame) then
        (Components[i] as TFieldEditFrame).ShowAllWhenEmpty:= True;

      if Components[i].InheritsFrom(TfrDeptFieldEditFrame) then
        (Components[i] as TfrDeptFieldEditFrame).AcceptDefaultDept:= True;

      if Components[i].InheritsFrom(TfrEmployeeFieldEditFrame) then
        (Components[i] as TfrEmployeeFieldEditFrame).ShowCurrentEmployee:= True;
    end;
end;

function TFilterForm.GetFilterVariantsEnabled: Boolean;
begin
  Result:= (FFilterCode <> 0);
end;

procedure TFilterForm.actSaveFilterVariantExecute(Sender: TObject);
var
  NewFilterVariantCode: Integer;
  FilterVariantResult: Boolean;
begin
  inherited;

  dsData.DataSet.UpdateRecord;

  ActiveControl:= cbFilterVariants;

  try
    cdsFilterVariants.Append;
    NewFilterVariantCode:= cdsFilterVariantsFILTER_VARIANT_CODE.AsInteger;
    FillFilterVariantFields;

    try
      cdsFilterVariantFields.DataSetField:= nil;
      FilterVariantResult:= TfmFilterVariant.ShowForm(nil, cdsFilterVariants, emEdit);
    finally
      cdsFilterVariantFields.DataSetField:= cdsFilterVariantsqryFilterVariantFields;
    end;  { try }

    if FilterVariantResult then
      begin
        cdsFilterVariants.ApplyUpdates(0);
        dsData.DataSet.FieldByName(CurrentFilterVariantCodeFieldName).AsInteger:= NewFilterVariantCode;
        actFilterVariantSysRoles.Execute;
      end
    else
      cdsFilterVariants.Cancel;

    RefreshDataSet(cdsFilterVariants);
  except
    cdsFilterVariants.Cancel;
    raise;
  end;  { try }
end;

procedure TFilterForm.actDeleteCurrentFilterVariantUpdate(Sender: TObject);
begin
  inherited;
  actDeleteCurrentFilterVariant.Enabled:=
    Assigned(dsData.DataSet.FindField(CurrentFilterVariantCodeFieldName)) and
    (dsData.DataSet.FieldByName(CurrentFilterVariantCodeFieldName).AsInteger <> 1) and
    (not dsData.DataSet.FieldByName(CurrentFilterVariantCodeFieldName).IsNull);
end;

procedure TFilterForm.actDeleteCurrentFilterVariantExecute(
  Sender: TObject);
begin
  inherited;

  cdsFilterVariants.Locate('FILTER_VARIANT_CODE', dsData.DataSet.FieldByName(CurrentFilterVariantCodeFieldName).AsInteger, []);

  if (MessageDlgFmtEx(
       SConfirmFilterVariantDelete,
       [cdsFilterVariantsFILTER_VARIANT_NAME.AsString],
       mtWarning,
       [mbYes,mbNo],
       0) <> mrYes) then
    Abort;

  CheckEditMode(cdsFilterVariants);
  cdsFilterVariantsFILTER_VARIANT_NAME.Clear; // mark for delete
  cdsFilterVariants.Post;
  cdsFilterVariants.ApplyUpdates(0);
  RefreshDataSet(cdsFilterVariants);
  dsData.DataSet.FieldByName(CurrentFilterVariantCodeFieldName).AsInteger:= 1;
end;

procedure TFilterForm.actFilterVariantSysRolesExecute(Sender: TObject);
begin
  inherited;
  cdsFilterVariants.Locate('FILTER_VARIANT_CODE', dsData.DataSet.FieldByName(CurrentFilterVariantCodeFieldName).AsInteger, []);
  TfmFilterVariantSysRoles.ShowForm(nil, cdsFilterVariants);
end;

procedure TFilterForm.cdsFilterVariantsNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsFilterVariantsFILTER_CODE.AsInteger:= FFilterCode;
  cdsFilterVariantsFILTER_VARIANT_CODE.AsInteger:= VarToInt(cdsFilterVariants_MAX_FILTER_VARIANT_CODE.Value) + 1;
end;

procedure TFilterForm.cdsFilterVariantsReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
  ReconcileError(E);
end;

procedure TFilterForm.actFormUpdate(Sender: TObject);

  procedure SetCommonControlsReadOnly;
  var
    WinControl: TWinControl;
  begin
    for WinControl in AllComponents.OfType<TWinControl> do
      if (WinControl is TDBEdit) or
         (WinControl is TDBComboBox) or
         (WinControl is TDBLookupComboBox) or
         (WinControl is TJvDBComboBox) or
         (WinControl is TJvDBLookupCombo) or
         (WinControl is TDBComboBoxEh) or
         (WinControl is TDBCheckBox) or
         (WinControl is TAbmesDBCheckBox) then
        SetControlReadOnly(GetControlReadOnly(WinControl), WinControl);
  end;  { SetCommonControlsReadOnly }

begin
  inherited;

  pnlFilterVariants.Visible:= GetFilterVariantsEnabled;
  pnlSaveFilterVariant.Visible:= LoginContext.HasUserActivity(uaSaveFilterVariants);

  with cbFilterVariants do
    Hint:= Text;

  SetCommonControlsReadOnly;
end;

function TFilterForm.GetControlReadOnly(AWinControl: TWinControl): Boolean;
begin
  Result:= (EditMode = emReadOnly);

  if (AWinControl is TDBEdit) then
    with AWinControl as TDBEdit do
      Exit(Result or (not Assigned(Field)) or Field.ReadOnly);

  if (AWinControl is TDBComboBox) then
    with AWinControl as TDBComboBox do
      Exit(Result or (not Assigned(Field)) or Field.ReadOnly);

  if (AWinControl is TDBLookupComboBox) then
    with AWinControl as TDBLookupComboBox do
      Exit(Result or (not Assigned(Field)) or Field.ReadOnly);

  if (AWinControl is TJvDBComboBox) then
    with AWinControl as TJvDBComboBox do
      Exit(Result or (not Assigned(Field)) or Field.ReadOnly);

  if (AWinControl is TJvDBLookupCombo) then
    with AWinControl as TJvDBLookupCombo do
      Exit(Result or (not Assigned(Field)) or Field.ReadOnly);

  if (AWinControl is TDBComboBoxEh) then
    with AWinControl as TDBComboBoxEh do
      Exit(Result or (not Assigned(Field)) or Field.ReadOnly);

  if (AWinControl is TDBCheckBox) then
    with AWinControl as TDBCheckBox do
      Exit(Result or (not Assigned(Field)) or Field.ReadOnly);

  if (AWinControl is TAbmesDBCheckBox) then
    with AWinControl as TAbmesDBCheckBox do
      Exit(Result or (not Assigned(Field)) or Field.ReadOnly);
end;

function TFilterForm.GetFieldReadOnly(const AFieldName: string): Boolean;
begin
  Result:= FilterVariantReadOnly;

  if Result and (dsData.DataSet.FieldByName(CurrentFilterVariantCodeFieldName).AsInteger > 1) then
    Result:=
      (EditMode = emReadOnly) or
      ( (dsData.DataSet.Owner is TEditForm) and
        (dsData.DataSet.Owner as TEditForm).FilterInitFieldState(AFieldName, dsData.DataSet).ReadOnly ) or
      cdsFilterVariantFields.Locate('FIELD_NAME', AFieldName, []);
end;

procedure TFilterForm.FillFilterVariantFields;
var
  i: Integer;
  c: Integer;
  SaveCursor: TCursor;
begin
  c:= 1;

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    cdsFilterVariantFields.EmptyDataSet;

    with dsData.DataSet do
      begin
        for i:= 0 to FieldCount - 1 do
          if (Fields[i].FieldKind = fkData) and
             (pfInUpdate in Fields[i].ProviderFlags) and
             (Fields[i].FieldName <> CurrentFilterVariantCodeFieldName) then
            begin
              cdsFilterVariantFields.SafeAppend /
                procedure begin
                  cdsFilterVariantFields.AssignFields(cdsFilterVariants);
                  cdsFilterVariantFieldsFILTER_VARIANT_FIELD_CODE.AsInteger:= c;
                  cdsFilterVariantFieldsFIELD_NAME.AsString:= Fields[i].FieldName;
                  cdsFilterVariantFieldsFIELD_DISPLAY_LABEL.AsString:= Fields[i].DisplayLabel;
                  cdsFilterVariantFieldsIS_FIELD_EMPTY.AsBoolean:= False;

                  cdsFilterVariantFieldsHAS_DEFAULT_VALUE.AsBoolean:=
                    (dsData.DataSet.Owner is TEditForm) and
                    SameVariants(Fields[i].AsVariant, (dsData.DataSet.Owner as TEditForm).FilterInitFieldState(i, dsData.DataSet).Value);

                  cdsFilterVariantFieldsSAVE_FIELD.AsBoolean:=
                    not cdsFilterVariantFieldsHAS_DEFAULT_VALUE.AsBoolean;

                  cdsFilterVariantFieldsDEPENDS_ON_FIELD_NAME.AsString:= Fields[i].DependsOn;

                  if (Fields[i] is TAbmesFloatField) then
                    begin
                      cdsFilterVariantFieldsFIELD_TYPE.AsInteger:= Integer(ftFloat);
                      cdsFilterVariantFieldsVALUE_AS_NUMBER.AsVariant:= Fields[i].Value;
                    end
                  else
                    begin
                      if (Fields[i] is TAbmesWideStringField) then
                        begin
                          cdsFilterVariantFieldsFIELD_TYPE.AsInteger:= Integer(ftWideString);
                          cdsFilterVariantFieldsVALUE_AS_STRING.AsVariant:= Fields[i].Value
                        end
                      else
                        begin
                          cdsFilterVariantFieldsFIELD_TYPE.AsInteger:= Integer(ftTimeStamp);
                          if Fields[i].IsNull then
                            cdsFilterVariantFieldsIS_FIELD_EMPTY.AsBoolean:= True;
                          Assert(Fields[i] is TAbmesSQLTimeStampField);
                        end;
                    end;

                  if (Fields[i] is TAbmesSQLTimeStampField) and
                     Assigned(FindField(Fields[i].ConstraintErrorMessage)) and
                     (not FieldByName(Fields[i].ConstraintErrorMessage).IsNull) and
                     (GetPeriodValue(FieldByName(Fields[i].ConstraintErrorMessage).AsInteger) <> perDay) then
                    begin
                      cdsFilterVariantFieldsTIME_UNIT_CODE.AsVariant:=
                        FieldByName(Fields[i].ConstraintErrorMessage).AsVariant;

                      cdsFilterVariantFieldsTIME_UNIT_COUNT.AsInteger:=
                        GetTimeUnitCount(
                          GetPeriodFirstDate(ContextDate, GetPeriodValue(cdsFilterVariantFieldsTIME_UNIT_CODE.AsInteger)),
                          Fields[i].AsDateTime,
                          GetPeriodValue(cdsFilterVariantFieldsTIME_UNIT_CODE.AsInteger)
                        );

                      cdsFilterVariantFieldsTIME_UNIT_POSITION.AsInteger:= tupBegin;
                      cdsFilterVariantFieldsTIME_UNIT_READ_ONLY.AsBoolean:= True;
                    end
                  else
                    cdsFilterVariantFieldsTIME_UNIT_READ_ONLY.AsBoolean:= False;
                end;

              Inc(c);
            end;

        cdsFilterVariantFields.ForEach/
          procedure begin
            if not cdsFilterVariantFieldsHAS_DEFAULT_VALUE.AsBoolean and
               (cdsFilterVariantFieldsDEPENDS_ON_FIELD_NAME.AsString <> '') then
              cdsFilterVariantFields.PreserveRecNo/
                procedure begin
                  if cdsFilterVariantFields.Locate('FIELD_NAME', cdsFilterVariantFieldsDEPENDS_ON_FIELD_NAME.AsString, []) and
                     not cdsFilterVariantFieldsSAVE_FIELD.AsBoolean then
                    cdsFilterVariantFields.SafeEdit/
                      procedure begin
                        cdsFilterVariantFieldsHAS_DEFAULT_VALUE.AsBoolean:= False;
                        cdsFilterVariantFieldsSAVE_FIELD.AsBoolean:= True;
                      end;
                end;
          end;
      end;
  finally
    Screen.Cursor:= SaveCursor;
  end;  { try }
end;

procedure TFilterForm.LoadFilterVariantFields;
var
  TheField: TField;
  TheDate: TDateTime;
  ThePeriod: TPeriod;
  SaveCursor: TCursor;
  fld: TField;
  OldReadOnly: Boolean;
begin
  if (dsData.DataSet.State in dsEditModes) then
    begin
      SaveCursor:= Screen.Cursor;
      Screen.Cursor:= crHourGlass;
      try
        FDataChanging:= True;
        try
          if (dsData.DataSet.Owner is TEditForm) then
            (dsData.DataSet.Owner as TEditForm).RestoreFilterInitFieldStates(dsData.DataSet);

          dsData.DataSet.FieldByName(CurrentFilterVariantCodeFieldName).ReadOnly:= True;
          try
            with cdsFilterVariantFields do
              begin
                First;

                while not Eof do
                  begin
                    TheField:= dsData.DataSet.FindField(cdsFilterVariantFieldsFIELD_NAME.AsString);

                    if (TheField <> nil) and
                       (cdsFilterVariantFieldsFIELD_NAME.AsString <> CurrentFilterVariantCodeFieldName) then
                      begin
                        CheckEditMode(dsData.DataSet);

                        // numeric field
                        if not cdsFilterVariantFieldsVALUE_AS_NUMBER.IsNull then
                          (TheField as TAbmesFloatField).AsFloat:= cdsFilterVariantFieldsVALUE_AS_NUMBER.AsFloat
                        else
                          begin
                            // string field
                            if not cdsFilterVariantFieldsVALUE_AS_STRING.IsNull then
                              (TheField as TAbmesWideStringField).AsString:= cdsFilterVariantFieldsVALUE_AS_STRING.AsString
                            else
                              begin
                                // date field
                                if cdsFilterVariantFieldsTIME_UNIT_IS_WORKDAY.AsBoolean then
                                  begin
                                    (TheField as TAbmesSQLTimeStampField).AsDateTime:=
                                      dmMain.IncDateByWorkdays(ContextDate, cdsFilterVariantFieldsTIME_UNIT_COUNT.AsInteger)
                                  end
                                else
                                  begin
                                    if (not cdsFilterVariantFieldsTIME_UNIT_COUNT.IsNull) and
                                       (not cdsFilterVariantFieldsTIME_UNIT_CODE.IsNull) and
                                       (not cdsFilterVariantFieldsTIME_UNIT_POSITION.IsNull) then
                                      begin
                                        ThePeriod:= GetPeriodValue(cdsFilterVariantFieldsTIME_UNIT_CODE.AsInteger);

                                        TheDate:= IncDate(
                                          ContextDate,
                                          ThePeriod,
                                          cdsFilterVariantFieldsTIME_UNIT_COUNT.AsInteger);

                                        case cdsFilterVariantFieldsTIME_UNIT_POSITION.AsInteger of
                                          tupBegin:
                                            TheDate:= GetPeriodFirstDate(TheDate, ThePeriod);
                                          tupExact:;
                                            // do nothing
                                          tupEnd:
                                            TheDate:= GetPeriodLastDate(TheDate, ThePeriod);
                                        end;

                                        (TheField as TAbmesSQLTimeStampField).AsDateTime:= TheDate;
                                      end
                                    // empty field
                                    else
                                      begin
                                        Assert(
                                          cdsFilterVariantFieldsTIME_UNIT_COUNT.IsNull and
                                          cdsFilterVariantFieldsTIME_UNIT_CODE.IsNull and
                                          cdsFilterVariantFieldsTIME_UNIT_POSITION.IsNull
                                        );

                                        TheField.Clear;
                                      end;
                                  end;
                              end;
                          end;
                      end;

                    Next;
                  end;
              end;
          finally
            dsData.DataSet.FieldByName(CurrentFilterVariantCodeFieldName).ReadOnly:= False;
          end;
        finally
          FDataChanging:= False;
        end;  { try }

        for fld in dsData.DataSet.Fields do
          if (fld.Name <> CurrentFilterVariantCodeFieldName) then
            begin
              OldReadOnly:= fld.ReadOnly;
              fld.ReadOnly:=
                GetFieldReadOnly(fld.FieldName) or
                ((fld.KeyFields <> '') and GetFieldReadOnly(fld.KeyFields));
              fld.LoadedReadOnly:= (not OldReadOnly) and fld.ReadOnly;
            end;

        InitializeAllDBComboBoxes;
      finally
        Screen.Cursor:= SaveCursor;
      end;  { try }
    end;
end;

procedure TFilterForm.CloseDataSets;
begin
  inherited;

  if GetFilterVariantsEnabled then
    cdsFilterVariants.Close;
end;

procedure TFilterForm.OpenDataSets;
begin
  if GetFilterVariantsEnabled then
    begin
      cdsFilterVariants.Params.ParamByName('FILTER_FORM_CLASS_NAME').AsString:= ClassName;
      cdsFilterVariants.Params.ParamByName('FILTER_FORM_VARIANT_CODE').AsInteger:= GetFilterFormVariantCode;
      cdsFilterVariants.Open;

      cbFilterVariants.DropDownCount:= Min(10, Max(5, cdsFilterVariants.RecordCount+1));
    end;

  inherited;
end;

procedure TFilterForm.DisableControls;
var
  i: Integer;
begin
  for i:= 0 to ComponentCount - 1 do
    if (Components[i] is TControl) and
       (Components[i] <> cbFilterVariants) and
       (GetPropInfo(Components[i], 'ReadOnly') <> nil) then
      SetPropValue(Components[i], 'ReadOnly', True);
end;

procedure TFilterForm.dsDataUpdateData(Sender: TObject);
begin
  inherited;
  FDataJustPosted:= True;
end;

procedure TFilterForm.dsDataDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if FDataChanging or
     not GetFilterVariantsEnabled then
    Exit;

  if (Field = dsData.DataSet.FieldByName(CurrentFilterVariantCodeFieldName)) and
     (Field.AsInteger > 1) then
    begin
      cdsFilterVariants.Locate('FILTER_VARIANT_CODE', dsData.DataSet.FieldByName(CurrentFilterVariantCodeFieldName).AsInteger, []);
      LoadFilterVariantFields;
    end;
end;

procedure TFilterForm.dsDataStateChange(Sender: TObject);
begin
  inherited;
  FDataJustPosted:= False;
end;

procedure TFilterForm.Initialize;
begin
  FCanModifyOuterDataSet:=
    LoginContext.HasUserActivity(dmMain.SvrFilter.GetModifyFilterVariantActivityCode(ClassName, GetFilterFormVariantCode));

  FFilterCode:=
    dmMain.SvrFilter.GetFilterCodeByFormClassName(ClassName, GetFilterFormVariantCode);

  FDataJustPosted:= False;

  inherited;

  if GetFilterVariantsEnabled then
    cbFilterVariants.DataField:= CurrentFilterVariantCodeFieldName;

  if GetFilterVariantsEnabled then
    with cdsFilterVariants do
      if Bof and Eof then
        raise Exception.Create(SNoSavedVariantsYouCanUse);

  // workaround zaradi kofti formata fmSaleExpGroups, naslediavashta TEditForm, a ne TGridForm!!! original code:
  //cdsFilterVariants.Filtered:=
  //  (not Assigned(dsData.DataSet)) or
  //  (not (dsData.DataSet.Owner is TGridForm));
  cdsFilterVariants.Filtered:=
    (not Assigned(dsData.DataSet)) or
    (not
      ( (dsData.DataSet.Owner is TDBDataForm) and
        (dsData.DataSet.Owner as TDBDataForm).SupportsFilterForm
      )
    );
end;

function TFilterForm.GetFilterFormVariantCode: Integer;
begin
  Result:= 1;
end;

function TFilterForm.GetDBFrameReadOnly(AFrame: TDBFrame): Boolean;
var
  fld: TField;
begin
  if (AFrame is TFieldEditFrame) and
     ((AFrame as TFieldEditFrame).FieldCount > 0) then
    begin
      Result:= False;
      for fld in (AFrame as TFieldEditFrame).AllFields do
        Result:= Result or fld.ReadOnly;
    end
  else
    Result:=
      (EditMode = emReadOnly) or
      FilterVariantReadOnly;
end;

procedure TFilterForm.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  AFrame.ReadOnly:= GetDBFrameReadOnly(AFrame);
end;

function TFilterForm.FilterVariantReadOnly: Boolean;
begin
  Result:=
    GetFilterVariantsEnabled and
    not FCanModifyOuterDataSet and
    not LoginContext.HasUserActivity(uaSaveFilterVariants);
end;

end.
