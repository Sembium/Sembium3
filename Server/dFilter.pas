unit dFilter;

interface

uses
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields, dPooledDataModule,
  dDBPooledDataModule, AbmesClientDataSet, WideStrings, FMTBcd, SqlExpr,
  AbmesSQLConnection, DBXDevartOracle, uSmartLock, JvStringHolder;

type
  TdmFilter = class(TDBPooledDataModule)
    qryFilterVariantsByFormName: TAbmesSQLQuery;
    prvFilterVariantsByFormName: TDataSetProvider;
    qryFilterVariantsByFormNameFILTER_CODE: TAbmesFloatField;
    qryFilterVariantsByFormNameFILTER_VARIANT_CODE: TAbmesFloatField;
    qryFilterVariantsByFormNameFILTER_VARIANT_NAME: TAbmesWideStringField;
    qryFilterVariantFields: TAbmesSQLQuery;
    dsFilterVariantsByFormName: TDataSource;
    qryFilterVariantFieldsFILTER_CODE: TAbmesFloatField;
    qryFilterVariantFieldsFILTER_VARIANT_CODE: TAbmesFloatField;
    qryFilterVariantFieldsFIELD_NAME: TAbmesWideStringField;
    qryFilterVariantFieldsVALUE_AS_NUMBER: TAbmesFloatField;
    qryFilterVariantFieldsTIME_UNIT_COUNT: TAbmesFloatField;
    qryFilterVariantFieldsTIME_UNIT_CODE: TAbmesFloatField;
    qryFilterVariantFieldsTIME_UNIT_POSITION: TAbmesFloatField;
    qryFilterVariantFieldsVALUE_AS_STRING: TAbmesWideStringField;
    qryGetFilterCodeByFormClassName: TAbmesSQLQuery;
    qryGetFilterCodeByFormClassNameFILTER_CODE: TAbmesFloatField;
    qryFilterVariantFieldsFIELD_DISPLAY_LABEL: TAbmesWideStringField;
    qryFilterVariantByName: TAbmesSQLQuery;
    qryFilterVariantFieldsFIELD_TYPE: TAbmesFloatField;
    qryFilterVariantFieldsIS_FIELD_EMPTY: TAbmesFloatField;
    qryFilterVariantFieldsFILTER_VARIANT_FIELD_CODE: TAbmesFloatField;
    qryFilterVariantByNameFILTER_CODE: TAbmesFloatField;
    qryFilterVariantByNameFILTER_VARIANT_CODE: TAbmesFloatField;
    qryGetModifyFilterVariantActivityCode: TAbmesSQLQuery;
    qryGetModifyFilterVariantActivityCodeMODIFY_VARIANT_ACTIVITY_CODE: TAbmesFloatField;
    qryDeleteFilterVariant: TAbmesSQLQuery;
    qryFilterVariantFieldsTIME_UNIT_READ_ONLY: TAbmesFloatField;
    qryFilterVariantSysRoles: TAbmesSQLQuery;
    qryFilterVariantNotSysRoles: TAbmesSQLQuery;
    prvFilterVariantSysRoles: TDataSetProvider;
    prvFilterVariantNotSysRoles: TDataSetProvider;
    qryFilterVariantSysRolesFILTER_CODE: TAbmesFloatField;
    qryFilterVariantSysRolesFILTER_VARIANT_CODE: TAbmesFloatField;
    qryFilterVariantSysRolesSYS_ROLE_CODE: TAbmesFloatField;
    qryFilterVariantSysRolesSYS_ROLE_NO: TAbmesFloatField;
    qryFilterVariantSysRolesSYS_ROLE_NAME: TAbmesWideStringField;
    qryFilterVariantNotSysRolesFILTER_CODE: TAbmesFloatField;
    qryFilterVariantNotSysRolesFILTER_VARIANT_CODE: TAbmesFloatField;
    qryFilterVariantNotSysRolesSYS_ROLE_CODE: TAbmesFloatField;
    qryFilterVariantNotSysRolesSYS_ROLE_NO: TAbmesFloatField;
    qryFilterVariantNotSysRolesSYS_ROLE_NAME: TAbmesWideStringField;
    qryFilterVariantFieldsSAVE_FIELD: TAbmesFloatField;
    qryFilterVariantFieldsHAS_DEFAULT_VALUE: TAbmesFloatField;
    qryFilterVariantFieldsDEPENDS_ON_FIELD_NAME: TAbmesWideStringField;
    qryFilterVariantsByFormNameIS_NOT_DEFAULT_VARIANT: TAbmesFloatField;
    procedure prvFilterVariantsByFormNameBeforeUpdateRecord(
      Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
  protected
    function GetFilterCodeByFormClassName(const FilterFormClassName: string; FilterFormVariantCode: Integer): Integer;
    function GetModifyFilterVariantActivityCode(const FilterFormClassName: string; FilterFormVariantCode: Integer): Integer;
  end;

type
  IdmFilterProxy = interface(IDBPooledDataModuleProxy)
  end;

type
  TdmFilterProxy = class(TDBPooledDataModuleProxy, IdmFilterProxy)
  private
    class var FSingleton: TdmFilterProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmFilter>;
  strict protected
    property LockedInstance: ISmartLock<TdmFilter> read GetLockedInstance;
  public
    class property Singleton: TdmFilterProxy read FSingleton;

    function GetFilterCodeByFormClassName(const FilterFormClassName: string; FilterFormVariantCode: Integer): Integer;
    function GetModifyFilterVariantActivityCode(const FilterFormClassName: string; FilterFormVariantCode: Integer): Integer;
  end;

implementation

uses
  uDBPooledDataModuleHelper, uSvrUtils, uUtils, uCompanyUtils;

{$R *.dfm}

{ TdmFilterProxy }

function TdmFilterProxy.GetLockedInstance: ISmartLock<TdmFilter>;
begin
  Result:= ISmartLock<TdmFilter>(inherited LockedInstance);
end;

function TdmFilterProxy.GetFilterCodeByFormClassName(const FilterFormClassName: string; FilterFormVariantCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetFilterCodeByFormClassName(FilterFormClassName, FilterFormVariantCode);
end;

function TdmFilterProxy.GetModifyFilterVariantActivityCode(
  const FilterFormClassName: string; FilterFormVariantCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetModifyFilterVariantActivityCode(FilterFormClassName, FilterFormVariantCode);
end;

{ TdmFilter }

function TdmFilter.GetFilterCodeByFormClassName(const FilterFormClassName: string; FilterFormVariantCode: Integer): Integer;
begin
  with qryGetFilterCodeByFormClassName do
    try
      ParamByName('FILTER_FORM_CLASS_NAME').AsString:= FilterFormClassName;
      ParamByName('FILTER_FORM_VARIANT_CODE').AsInteger:= FilterFormVariantCode;
      Open;
      if Bof and Eof then
        Result:= 0
      else
        Result:= qryGetFilterCodeByFormClassNameFILTER_CODE.AsInteger;
    finally
      Close;
    end;  { try }
end;

procedure TdmFilter.prvFilterVariantsByFormNameBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;

  with DeltaDS do
    begin
      // delete current variant request
      if (SourceDS = qryFilterVariantsByFormName) and
         (UpdateKind = ukModify) and
         (VarIsNullOrEmpty(FieldByName('FILTER_CODE').NewValue)) and
         (not VarIsNullOrEmpty(FieldByName('FILTER_CODE').OldValue)) then
        begin
          Assert(GetFieldValue(FieldByName('FILTER_CODE')) <> 1, 'cannot delete default variant');
          SetParams(qryDeleteFilterVariant.Params, DeltaDS);
          qryDeleteFilterVariant.ExecSQL;
          Applied:= True;
        end;

      // new filter variant request
      if (SourceDS = qryFilterVariantsByFormName) and
         (UpdateKind = ukInsert) then
        begin
          SetParams(qryFilterVariantByName.Params, DeltaDS);
          try
            qryFilterVariantByName.Open;
            // dublirano ime na variant: iztrivane na staria
            if not qryFilterVariantByName.Eof then
              begin
                SetParams(qryDeleteFilterVariant.Params, qryFilterVariantByName);
                qryDeleteFilterVariant.ExecSQL;
              end;
          finally
            qryFilterVariantByName.Close;
          end;  { try }
        end;

      if (SourceDS = qryFilterVariantFields) then
        Applied:= (VarToInt(GetFieldValue(DeltaDS.FieldByName('SAVE_FIELD'))) = 0);
    end;
end;

function TdmFilter.GetModifyFilterVariantActivityCode(
  const FilterFormClassName: string; FilterFormVariantCode: Integer): Integer;
begin
  with qryGetModifyFilterVariantActivityCode do
    try
      ParamByName('FILTER_FORM_CLASS_NAME').AsString:= FilterFormClassName;
      ParamByName('FILTER_FORM_VARIANT_CODE').AsInteger:= FilterFormVariantCode;
      Open;
      if Bof and Eof then
        Result:= 0
      else
        Result:= qryGetModifyFilterVariantActivityCodeMODIFY_VARIANT_ACTIVITY_CODE.AsInteger;

    finally
      Close;
    end;  { try }
end;

initialization
  TdmFilterProxy.FSingleton:= TdmFilterProxy.Create(TdmFilter);

finalization
  FreeAndNil(TdmFilterProxy.FSingleton);
end.
