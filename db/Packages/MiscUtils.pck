create or replace package MiscUtils is

  type TRefCursor is ref cursor;
  
  type TStringArray is Varray(1000) of Varchar2(250 char);
  type TNumberArray is Varray(1000) of Number;
  type TBooleanArray is Varray(1000) of Boolean;
  type TNumberMatrix is Varray(1000) of TNumberArray;
  type TBooleanMatrix is Varray(1000) of TBooleanArray;

  function NvlMinDate(ADate in Date) return Date deterministic;
  function NvlMaxDate(ADate in Date) return Date deterministic;

  function NvlTreeRootCode(ANodeCode in Number) return Number deterministic;

  function ConcatStrings(AStrings TStringArray, ASeparator Varchar2) return Varchar2 deterministic;
  
  function NamedValuesToCompositeString(
    AFieldName1 in VarChar2:= null, AFieldValue1 in Number:= null,
    AFieldName2 in VarChar2:= null, AFieldValue2 in Number:= null,
    AFieldName3 in VarChar2:= null, AFieldValue3 in Number:= null,
    AFieldName4 in VarChar2:= null, AFieldValue4 in Number:= null,
    AFieldName5 in VarChar2:= null, AFieldValue5 in Number:= null,
    AFieldName6 in VarChar2:= null, AFieldValue6 in Number:= null,    
    AFieldName7 in VarChar2:= null, AFieldValue7 in Number:= null,
    AFieldName8 in VarChar2:= null, AFieldValue8 in Number:= null,    
    AFieldName9 in VarChar2:= null, AFieldValue9 in Number:= null,    
    AFieldName10 in VarChar2:= null, AFieldValue10 in Number:= null,
    AFieldName11 in VarChar2:= null, AFieldValue11 in Number:= null,    
    AFieldName12 in VarChar2:= null, AFieldValue12 in Number:= null,    
    AFieldName13 in VarChar2:= null, AFieldValue13 in Number:= null,
    AFieldName14 in VarChar2:= null, AFieldValue14 in Number:= null,    
    AFieldName15 in VarChar2:= null, AFieldValue15 in Number:= null,    
    AFieldName16 in VarChar2:= null, AFieldValue16 in Number:= null,
    AFieldName17 in VarChar2:= null, AFieldValue17 in Number:= null,
    AFieldName18 in VarChar2:= null, AFieldValue18 in Number:= null)  
  return VarChar2 deterministic;
  
  function GetNamedValue(ACompositeString in VarChar2, AFieldName in VarChar2) return Number deterministic;
  
  function NumberToString(AInt in Number) return VarChar2 deterministic;
  
  function StringToNumber(AString in VarChar2) return Number deterministic;
  
  function ActivityGroupNames(ActivityCode in Integer) return VarChar2;

  function EmpActivityGroupNames(EmployeeCode in Integer, ActivityCode in Integer) return VarChar2;
  
  function ActivitySysRoleNames(AActivityCode in Integer) return VarChar2;

  function EmpActivitySysRoleNames(AEmployeeCode in Integer, AActivityCode in Integer, AToDate in Date) return VarChar2;
  
  function EmpSysRoleOccupationNames(AEmployeeCode in Integer, ASysRoleCode in Integer, AToDate in Date) return VarChar2;
  
  function OccActivitySysRoleNames(AOccupationCode in Integer, AActivityCode in Integer) return VarChar2;
  
  function InvoiceItemsNames(InvoiceBranchCode in Integer, InvoiceCode in Integer) return VarChar2;

  function EmployeeProfessions(EmployeeCode in Integer) return VarChar2;
  
  function OccupationEmployeeProfessions(OccupationEmployeeCode in Integer) return VarChar2;

  function OccupationProfessions(OccupationCode in Integer) return VarChar2;

  function OccupationWorkDepts(OccupationCode in Integer) return VarChar2;

  function TeamProfessions(TeamCode in Integer) return VarChar2;

  procedure InsertProcessObject(
    ProcessObjectBranchCode in out Integer,
    ProcessObjectCode in out Integer,
    ProcessObjectClassCode in Integer,
    ProcessObjectIdentifier in VarChar2 default null);
  
  procedure UpdateProcessObjectIdentifier(
    ProcessObjectBranchCode in Integer,
    ProcessObjectCode in Integer,
    ProcessObjectIdentifier in VarChar2);
  
  procedure DeleteProcessObject(
    ProcessObjectBranchCode in Integer,
    ProcessObjectCode in Integer);
  
  function NewProcessObject(
    ProcessObjectBranchCode in Integer,
    ProcessObjectClassCode in Integer,
    ProcessObjectIdentifier in VarChar2
    ) return Number;
  
  function NewDocCode(DocBranchCode in Number) return Number;
  
  function NewDocCodeLike(
    DocBranchCode in Number,
    LikeDocBranchCode in Number,
    LikeDocCode in Number
  ) return Number;
  
  function HasDocItems(DocBranchCode in Number, DocCode in Number) return Number;
  
  function LargeZero(ANumber in Number, AEpsilon in Number := 0) return Number;
  function LargeX(ANumber in Number, ABaseNumber in Number, AEpsilon in Number := 0) return Number;
 
  function DocItemTypeFileExtensions(DocItemTypeCode in Integer) return VarChar2;
  
  procedure CheckEmployeeOccupations(EmployeeCode in Integer);
  
  function GetPartnerName(CompanyCode in Integer) return VarChar2;
  
  function CompanyBaseRoleCode(CompanyCode in Integer) return Number;
  function CompanyBaseRolePriorityCode(CompanyCode in Integer) return Number;
  
  procedure InitializeStringArray(AStringArray out TStringArray, AHighBound in Number);
  procedure InitializeNumberArray(ANumberArray out TNumberArray, AHighBound in Number);
  procedure InitializeBooleanArray(ABooleanArray out TBooleanArray, AHighBound in Number);
  procedure InitializeNumberMatrix(ANumberMatrix out TNumberMatrix, AHighBound in Number);
  procedure InitializeBooleanMatrix(ABooleanMatrix out TBooleanMatrix, AHighBound in Number);

  function GetDiscEventTypeFullNo(
    ADiscEventTypeCode in Number,
    APadded in Number := 0
  ) return VarChar2;

  function GetExceptEventDamageFullNo(
    AExceptEventDamageCode in Number,
    APadded in Number := 0
  ) return VarChar2;
  
  function FormatIBAN(AIBAN in VarChar2) return VarChar2;

  function GetNewOccupationEmployeeCode return Number;
  
  function EmpMainShiftWorkdayCount(AEmployeeCode in Number, ABeginDate in Date, AEndDate in Date) return Number;
  function EmpMainShiftEffectiveWorkHours(AEmployeeCode in Number, ABeginDate in Date, AEndDate in Date) return Number;

  function FloatCompare(AFirstNumber in Number, ASecondNumber in Number) return Number;
  
  function ProductParentCodes(ProductCode in Integer) return VarChar2;
  function DeptParentCodes(DeptCode in Integer) return VarChar2;

  function NumberToBoolean(AValue in Number) return Boolean deterministic;
  function BooleanToNumber(AValue in Boolean) return Number deterministic;

  function IsGroupDept(ADeptCode in Number) return Boolean;
  
  function FormatPersonName(AFirstName in VarChar2, AMiddleName in VarChar2, ALastName in VarChar2, AMaxLength in Number := null) return VarChar2;

  function IsEqual(AFirstValue in Number, ASecondValue in Number) return Boolean;
  function IsEqual(AFirstValue in Date, ASecondValue in Date) return Boolean;
  function IsEqual(AFirstValue in VarChar2, ASecondValue in VarChar2) return Boolean;

  PRAGMA RESTRICT_REFERENCES (NvlMinDate, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (NvlMaxDate, WNDS, WNPS, RNDS, RNPS);

  PRAGMA RESTRICT_REFERENCES (NvlTreeRootCode, WNDS, WNPS, RNDS, RNPS);

  PRAGMA RESTRICT_REFERENCES (ConcatStrings, RNDS, WNDS, RNPS, WNPS);

  PRAGMA RESTRICT_REFERENCES (ActivityGroupNames, WNDS, RNPS, WNPS);
  PRAGMA RESTRICT_REFERENCES (EmpActivityGroupNames, WNDS, RNPS, WNPS);
  PRAGMA RESTRICT_REFERENCES (ActivitySysRoleNames, WNDS, RNPS, WNPS);
  PRAGMA RESTRICT_REFERENCES (EmpActivitySysRoleNames, WNDS, RNPS, WNPS);
  PRAGMA RESTRICT_REFERENCES (OccActivitySysRoleNames, WNDS, RNPS, WNPS);
  PRAGMA RESTRICT_REFERENCES (EmpSysRoleOccupationNames, WNDS, RNPS, WNPS);
  PRAGMA RESTRICT_REFERENCES (InvoiceItemsNames, WNDS, RNPS, WNPS);

  PRAGMA RESTRICT_REFERENCES (InsertProcessObject, RNPS, WNPS);
  PRAGMA RESTRICT_REFERENCES (UpdateProcessObjectIdentifier, RNPS, WNPS);
  PRAGMA RESTRICT_REFERENCES (DeleteProcessObject, RNPS, WNPS);
  PRAGMA RESTRICT_REFERENCES (NewProcessObject, RNPS, WNPS);
  
  PRAGMA RESTRICT_REFERENCES (EmployeeProfessions, WNDS, WNPS, RNPS);
  PRAGMA RESTRICT_REFERENCES (TeamProfessions, WNDS, WNPS, RNPS);
  
  PRAGMA RESTRICT_REFERENCES (NewDocCode, WNPS, RNPS);
  PRAGMA RESTRICT_REFERENCES (HasDocItems, WNDS, WNPS, RNPS);
  
  PRAGMA RESTRICT_REFERENCES (LargeZero, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (LargeX, WNDS, WNPS, RNDS, RNPS);

  PRAGMA RESTRICT_REFERENCES (DocItemTypeFileExtensions, WNDS, RNPS, WNPS);
  
  PRAGMA RESTRICT_REFERENCES (GetPartnerName, WNDS, RNPS, WNPS);

  PRAGMA RESTRICT_REFERENCES (CompanyBaseRoleCode, WNDS, RNPS, WNPS);
  PRAGMA RESTRICT_REFERENCES (CompanyBaseRolePriorityCode, WNDS, RNPS, WNPS);

  PRAGMA RESTRICT_REFERENCES (InitializeStringArray, WNDS, RNPS, WNPS);
  PRAGMA RESTRICT_REFERENCES (InitializeNumberArray, WNDS, RNPS, WNPS);
  PRAGMA RESTRICT_REFERENCES (InitializeBooleanArray, WNDS, RNPS, WNPS);
  PRAGMA RESTRICT_REFERENCES (InitializeNumberMatrix, WNDS, RNPS, WNPS);
  PRAGMA RESTRICT_REFERENCES (InitializeBooleanMatrix, WNDS, RNPS, WNPS);

  PRAGMA RESTRICT_REFERENCES (GetDiscEventTypeFullNo, WNDS, WNPS, RNPS);

  PRAGMA RESTRICT_REFERENCES (GetExceptEventDamageFullNo, WNDS, WNPS, RNPS);

  PRAGMA RESTRICT_REFERENCES (FormatIBAN, WNDS, WNPS, RNDS, RNPS);

  PRAGMA RESTRICT_REFERENCES (GetNewOccupationEmployeeCode, RNPS, WNPS);
  
  PRAGMA RESTRICT_REFERENCES (EmpMainShiftWorkdayCount, WNDS, RNPS, WNPS);
  PRAGMA RESTRICT_REFERENCES (EmpMainShiftEffectiveWorkHours, WNDS, RNPS, WNPS);
  
  PRAGMA RESTRICT_REFERENCES (FloatCompare, WNDS, WNPS, RNDS, RNPS);
  
  PRAGMA RESTRICT_REFERENCES (ProductParentCodes, WNDS, RNPS, WNPS);
  PRAGMA RESTRICT_REFERENCES (DeptParentCodes, WNDS, RNPS, WNPS);
  
  PRAGMA RESTRICT_REFERENCES (NumberToBoolean, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (BooleanToNumber, WNDS, WNPS, RNDS, RNPS);

  PRAGMA RESTRICT_REFERENCES (IsGroupDept, RNPS, WNPS, WNDS);
  
  PRAGMA RESTRICT_REFERENCES (IsEqual, WNDS, WNPS, RNDS, RNPS);

end MiscUtils;
/
create or replace package body MiscUtils is

  function NvlMinDate(ADate in Date) return Date deterministic is
    Result Date;
  begin
    if (ADate is null) then
      Result:= CommonConsts.MinDate;
    else
      Result:= ADate;
    end if;
    
    return Result;
  end NvlMinDate;

  function NvlMaxDate(ADate in Date) return Date deterministic is
    Result Date;
  begin
    if (ADate is null) then
      Result:= CommonConsts.MaxDate;
    else
      Result:= ADate;
    end if;
    
    return Result;
  end NvlMaxDate;

  function NvlTreeRootCode(ANodeCode in Number) return Number deterministic is
    Result Number;
  begin
    if (ANodeCode is null) then
      Result:= CommonConsts.TreeRootCode;
    else
      Result:= ANodeCode;
    end if; 
    
    return Result;
  end NvlTreeRootCode;

  function ConcatStrings(AStrings TStringArray, ASeparator Varchar2) return Varchar2 is
    Result Varchar2(2000 char);
  begin
    for i in 1..AStrings.Count loop
      if (Result is null) then
        Result:= AStrings(i);
      else
        Result:= Result || SubStr(ASeparator || AStrings(i), 1, 2000 - Length(Result));
      end if;
    end loop;
    
    return Result;
  end;
 
  function EncodeFieldNameToString(AFieldName in VarChar2) return VarChar2 is
  Result Varchar2(250 char);
  begin
    if (AFieldName is null) then
      Result:= MiscConsts.SNull;
    else
      Result:= AFieldName;
    end if;
      
    return Result;
  end;
  
  function DecodeStringToFieldName(AString in VarChar2) return VarChar2 is
  Result Varchar2(250 char);
  begin
    if (AString = MiscConsts.SNull) then
      Result:= null;
    else
      Result:= AString;
    end if;
      
    return Result;
  end;  
  
  function NamedValueToCompositeString(AFieldName in VarChar2, AFieldValue in Number) return VarChar2 is
    Result Varchar2(250 char);
  begin
    if (AFieldName is null) then
      Result:= '';
    else
      Result:= 
        MiscConsts.CompositeStringDelimiter || 
        EncodeFieldNameToString(AFieldName) || 
        '=' || 
        NumberToString(AFieldValue) || 
        MiscConsts.CompositeStringDelimiter;
    end if;
    
    return Result;
  end;
  
  function NamedValuesToCompositeString(
    AFieldName1 in VarChar2:= null, AFieldValue1 in Number:= null,
    AFieldName2 in VarChar2:= null, AFieldValue2 in Number:= null,
    AFieldName3 in VarChar2:= null, AFieldValue3 in Number:= null,
    AFieldName4 in VarChar2:= null, AFieldValue4 in Number:= null,
    AFieldName5 in VarChar2:= null, AFieldValue5 in Number:= null,
    AFieldName6 in VarChar2:= null, AFieldValue6 in Number:= null,
    AFieldName7 in VarChar2:= null, AFieldValue7 in Number:= null,
    AFieldName8 in VarChar2:= null, AFieldValue8 in Number:= null,
    AFieldName9 in VarChar2:= null, AFieldValue9 in Number:= null,
    AFieldName10 in VarChar2:= null, AFieldValue10 in Number:= null,
    AFieldName11 in VarChar2:= null, AFieldValue11 in Number:= null,
    AFieldName12 in VarChar2:= null, AFieldValue12 in Number:= null,
    AFieldName13 in VarChar2:= null, AFieldValue13 in Number:= null,
    AFieldName14 in VarChar2:= null, AFieldValue14 in Number:= null,
    AFieldName15 in VarChar2:= null, AFieldValue15 in Number:= null,
    AFieldName16 in VarChar2:= null, AFieldValue16 in Number:= null,
    AFieldName17 in VarChar2:= null, AFieldValue17 in Number:= null,
    AFieldName18 in VarChar2:= null, AFieldValue18 in Number:= null)
    
  return VarChar2 is
  begin
    return
      NamedValueToCompositeString(AFieldName1, AFieldValue1) ||
      NamedValueToCompositeString(AFieldName2, AFieldValue2) ||
      NamedValueToCompositeString(AFieldName3, AFieldValue3) ||
      NamedValueToCompositeString(AFieldName4, AFieldValue4) ||
      NamedValueToCompositeString(AFieldName5, AFieldValue5) ||
      NamedValueToCompositeString(AFieldName6, AFieldValue6) ||
      NamedValueToCompositeString(AFieldName7, AFieldValue7) ||
      NamedValueToCompositeString(AFieldName8, AFieldValue8) ||
      NamedValueToCompositeString(AFieldName9, AFieldValue9) ||
      NamedValueToCompositeString(AFieldName10, AFieldValue10) ||
      NamedValueToCompositeString(AFieldName11, AFieldValue11) ||
      NamedValueToCompositeString(AFieldName12, AFieldValue12) ||
      NamedValueToCompositeString(AFieldName13, AFieldValue13) ||
      NamedValueToCompositeString(AFieldName14, AFieldValue14) ||
      NamedValueToCompositeString(AFieldName15, AFieldValue15) ||
      NamedValueToCompositeString(AFieldName16, AFieldValue16) ||
      NamedValueToCompositeString(AFieldName17, AFieldValue17) ||
      NamedValueToCompositeString(AFieldName18, AFieldValue18);
  end;
  
  function GetNamedValue(ACompositeString in VarChar2, AFieldName in VarChar2) return Number is
    DecodedFieldName Varchar2(250 char);
    NamedValueStartIndex Number;
    ValueStartIndex Number;
    ValueEndIndex Number;
    ValueString Varchar2(250 char);
  begin
    DecodedFieldName:= DecodeStringToFieldName(AFieldName);
  
    NamedValueStartIndex:= InStr(ACompositeString, MiscConsts.CompositeStringDelimiter || DecodedFieldName || '=');
    
    if (NamedValueStartIndex = 0) then
      raise_application_error(-20000, 'Internal assertion: MiscUtils.DecodeStringToNumberField: FieldName: ' || DecodedFieldName || ' not found');
    end if;
    
    ValueStartIndex:= NamedValueStartIndex + Length(MiscConsts.CompositeStringDelimiter) + Length(DecodedFieldName) + 1;
    ValueEndIndex:= InStr(ACompositeString, MiscConsts.CompositeStringDelimiter, ValueStartIndex);
    
    ValueString:= SubStr(ACompositeString, ValueStartIndex, ValueEndIndex - ValueStartIndex);
    
    return StringToNumber(ValueString);
  end;  
  
  function NumberToString(AInt in Number) return VarChar2 is
    Result Varchar2(250 char);
  begin
    if (AInt is null) then
      Result:= MiscConsts.SNull;
    else
      Result:= To_Char(AInt);
    end if;
      
     return Result;
  end;
  
  function StringToNumber(AString in VarChar2) return Number is
    Result Number;
  begin   
    if (AString = MiscConsts.SNull) then
      Result:= null;
    else
      Result:= To_Number(AString);
    end if;
    
    return Result;      
  end;

  function GetPartnerProductNames(ProductCode in Integer) return VarChar2 is
    Result Varchar2(250 char);
    Strings TStringArray;
  begin

    select
      distinct cp.NAME
    bulk collect into
      Strings
    from
      COMPANY_PRODUCTS cp
    where
      (cp.PRODUCT_CODE = ProductCode)
    order by
      cp.NAME;

    Result:= ConcatStrings(Strings, '; ');

    return Result;
  end GetPartnerProductNames;

  function ActivityGroupNames(ActivityCode in Integer) return VarChar2 is
    Strings TStringArray;
  begin
    select
      ug.USER_GROUP_NAME
    bulk collect into
      Strings      
    from
      USER_GROUPS ug,
      USER_GROUP_ACTIVITIES uga
    where
      (ug.USER_GROUP_CODE = uga.USER_GROUP_CODE) and
      (uga.ACTIVITY_CODE = ActivityCode)
    order by
      ug.USER_GROUP_NAME;

    return ConcatStrings(Strings, '; ');
  end;

  function EmpActivityGroupNames(EmployeeCode in Integer, ActivityCode in Integer) return VarChar2 is
    Strings TStringArray;
  begin
    select
      ug.USER_GROUP_NAME
    bulk collect into
      Strings      
    from
      USER_GROUPS ug,
      USER_GROUP_ACTIVITIES uga,
      USER_GROUP_USERS ugu
    where
      (ug.USER_GROUP_CODE = uga.USER_GROUP_CODE) and
      (ug.USER_GROUP_CODE = ugu.USER_GROUP_CODE) and
      (uga.ACTIVITY_CODE = ActivityCode) and
      (ugu.EMPLOYEE_CODE = EmployeeCode)
    order by
      ug.USER_GROUP_NAME;

    return ConcatStrings(Strings, '; ');
  end;
  
  function EmpSysRoleOccupationNames(AEmployeeCode in Integer, ASysRoleCode in Integer, AToDate in Date) return VarChar2 is
    Strings TStringArray;
  begin
    
    select
      o.OCCUPATION_NAME
    bulk collect into
      Strings
    from
      OCCUPATIONS o
    where
      (exists
        ( select
            1
          from
            OCCUPATION_SYS_ROLES osr
          where
            (osr.OCCUPATION_CODE = o.OCCUPATION_CODE) and
            (osr.SYS_ROLE_CODE = ASysRoleCode)
        )
      ) and

      (exists
        ( select
            1
          from
            OCCUPATION_EMPLOYEES oe
          where
            (oe.OCCUPATION_CODE = o.OCCUPATION_CODE) and
            (oe.EMPLOYEE_CODE = AEmployeeCode) and
            (Trunc(AToDate) between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIGNMENT_END_DATE)
        )
      )      
    order by
      o.OCCUPATION_NAME;
  
    return ConcatStrings(Strings, '; ');
  end;

  function ActivitySysRoleNames(AActivityCode in Integer) return VarChar2 is
    Strings TStringArray;
  begin
    select
      sr.SYS_ROLE_NAME
    bulk collect into
      Strings
    from
      SYS_ROLES sr
    where
      (exists
        ( select
            1
          from
            SYS_ROLE_ACTIVITIES sra
          where
            (sra.SYS_ROLE_CODE = sr.SYS_ROLE_CODE) and
            (sra.ACTIVITY_CODE = AActivityCode)
        )
      )
    order by
      sr.SYS_ROLE_NAME;

    return ConcatStrings(Strings, '; ');
  end;

  function EmpActivitySysRoleNames(AEmployeeCode in Integer, AActivityCode in Integer, AToDate in Date) return VarChar2 is
    Strings TStringArray;
  begin
    select
      sr.SYS_ROLE_NAME || ' (' || EmpSysRoleOccupationNames(AEmployeeCode, sr.SYS_ROLE_CODE, AToDate) || ')'
    bulk collect into
      Strings
    from
      SYS_ROLES sr
    where
      (exists
        ( select
            1
          from
            SYS_ROLE_ACTIVITIES sra
          where
            (sra.SYS_ROLE_CODE = sr.SYS_ROLE_CODE) and
            (sra.ACTIVITY_CODE = AActivityCode)
        )
      ) and

      (exists
        ( select
            1
          from
            OCCUPATION_SYS_ROLES osr,
            OCCUPATION_EMPLOYEES oe
          where
            (osr.SYS_ROLE_CODE = sr.SYS_ROLE_CODE) and
            (osr.OCCUPATION_CODE = oe.OCCUPATION_CODE) and
            (oe.EMPLOYEE_CODE = AEmployeeCode) and
            (Trunc(AToDate) between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIGNMENT_END_DATE)
        )
      )
    order by
      sr.SYS_ROLE_NAME;

    return ConcatStrings(Strings, '; ');
  end;
  
  function OccActivitySysRoleNames(AOccupationCode in Integer, AActivityCode in Integer) return VarChar2 is
    Strings TStringArray;
  begin
    select
      sr.SYS_ROLE_NAME
    bulk collect into
      Strings
    from
      SYS_ROLES sr
    where
      (exists
        ( select
            1
          from
            SYS_ROLE_ACTIVITIES sra
          where
            (sra.SYS_ROLE_CODE = sr.SYS_ROLE_CODE) and
            (sra.ACTIVITY_CODE = AActivityCode)
        )
      ) and
        
      (exists
        ( select
            1
          from
            OCCUPATION_SYS_ROLES osr
          where
            (osr.SYS_ROLE_CODE = sr.SYS_ROLE_CODE) and
            (osr.OCCUPATION_CODE = AOccupationCode)
        )
      )
    order by
      sr.SYS_ROLE_NAME;

    return ConcatStrings(Strings, '; ');
  end;
  
  function InvoiceItemsNames(InvoiceBranchCode in Integer, InvoiceCode in Integer) return VarChar2 is
    Strings TStringArray;
  begin
    select
      ii.ITEM_NAME
    bulk collect into
      Strings      
    from
      INVOICE_ITEMS ii
    where
      (ii.BRANCH_CODE = InvoiceBranchCode) and
      (ii.INVOICE_CODE = InvoiceCode)
    order by
      ii.BRANCH_CODE,
      ii.INVOICE_CODE,
      ii.INVOICE_ITEM_CODE;
      
    return ConcatStrings(Strings, '; ');
  end;
  

  function EmployeeProfessions(EmployeeCode in Integer) return VarChar2 is
    Strings TStringArray;
  begin
    select
      p.PROFESSION_NAME
    bulk collect into
      Strings      
    from
      EMPLOYEE_PROFESSIONS ep,
      PROFESSIONS p
    where
      (ep.PROFESSION_CODE = p.PROFESSION_CODE) and
      (ep.EMPLOYEE_CODE = EmployeeCode)
    order by
      p.PROFESSION_NAME;

    return ConcatStrings(Strings, '; ');
  end EmployeeProfessions;

  
  function OccupationEmployeeProfessions(OccupationEmployeeCode in Integer) return VarChar2 is
    Strings TStringArray;
  begin
    select
      p.PROFESSION_NAME || ' (' || pk.PROFESSION_KIND_NO || ')' as PROFESSION_NAME
    bulk collect into
      Strings
    from
      OCCUPATION_EMP_PROFESSIONS oep,
      PROFESSIONS p,
      OCCUPATION_PROFESSIONS op,
      PROFESSION_KINDS pk
    where
      (oep.PROFESSION_CODE = p.PROFESSION_CODE) and
      (oep.OCCUPATION_CODE = op.OCCUPATION_CODE) and
      (oep.PROFESSION_CODE = op.PROFESSION_CODE) and
      (p.PROFESSION_KIND_CODE = pk.PROFESSION_KIND_CODE) and
      (oep.OCCUPATION_EMPLOYEE_CODE = OccupationEmployeeCode)
    order by
      pk.PROFESSION_KIND_NO,
      p.PROFESSION_NAME;
  
    return ConcatStrings(Strings, '; ');
  end OccupationEmployeeProfessions;
  
  
  function OccupationProfessions(OccupationCode in Integer) return VarChar2 is
    Strings TStringArray;
  begin
    select
      p.PROFESSION_NAME || ' (' || pk.PROFESSION_KIND_NO || ')' as PROFESSION_NAME
    bulk collect into
      Strings
    from
      OCCUPATION_PROFESSIONS op,
      PROFESSIONS p,
      PROFESSION_KINDS pk
    where
      (op.OCCUPATION_CODE = OccupationCode) and
      (op.PROFESSION_CODE = p.PROFESSION_CODE) and
      (p.PROFESSION_KIND_CODE = pk.PROFESSION_KIND_CODE)
    order by
      pk.PROFESSION_KIND_NO,
      p.PROFESSION_NAME;
    
    return ConcatStrings(Strings, '; ');
  end OccupationProfessions;
  
  
  function OccupationWorkDepts(OccupationCode in Integer) return VarChar2 is
    Strings TStringArray;
  begin
    select
      ( d.NAME ||
        ' (' ||
        owdp.OCC_WORK_DEPT_PRIORITY_NO ||
        ')'
      ) as OCCUPATION_WORK_DEPT_NAME
    bulk collect into
      Strings
    from
      OCCUPATION_WORK_DEPTS owd,
      OCC_WORK_DEPT_PRIORITIES owdp,
      DEPTS d
    where
      (owd.OCCUPATION_CODE = OccupationCode) and
      (owd.DEPT_CODE = d.DEPT_CODE) and
      (owd.OCC_WORK_DEPT_PRIORITY_CODE = owdp.OCC_WORK_DEPT_PRIORITY_CODE)
    order by
      owdp.OCC_WORK_DEPT_PRIORITY_NO,
      d.NAME;
  
    return ConcatStrings(Strings, '; ');
  end OccupationWorkDepts;
  
  
  function TeamProfessions(TeamCode in Integer) return VarChar2 is
    Strings TStringArray;
  begin
    select
      p.PROFESSION_NAME
    bulk collect into
      Strings      
    from
      TEAM_PROFESSIONS tp,
      PROFESSIONS p
    where
      (tp.PROFESSION_CODE = p.PROFESSION_CODE) and
      (tp.TEAM_CODE = TeamCode)
    order by
      p.PROFESSION_NAME;

    return ConcatStrings(Strings, '; ');
  end TeamProfessions;

  
  procedure InsertProcessObject(
    ProcessObjectBranchCode in out Integer,
    ProcessObjectCode in out Integer,
    ProcessObjectClassCode in Integer,
    ProcessObjectIdentifier in VarChar2 default null) is
  begin
    if (ProcessObjectBranchCode is null) or (ProcessObjectBranchCode = 0) then
      select
        iv.LOCAL_BRANCH_CODE
      into
        ProcessObjectBranchCode
      from
        INTERNAL_VALUES iv
      where
        (iv.CODE = 1)
      ;
    end if;
      
    if (ProcessObjectCode is null) or (ProcessObjectCode = 0) then
      select
        seq_PROCESS_OBJECTS.NextVal as NEW_PROCESS_OBJECT_CODE
      into
        ProcessObjectCode
      from
        DUAL;
    end if;     

    insert into PROCESS_OBJECTS (
      PROCESS_OBJECT_BRANCH_CODE,
      PROCESS_OBJECT_CODE,
      PROCESS_OBJECT_CLASS_CODE,
      PROCESS_OBJECT_IDENTIFIER
    )
    values (
      ProcessObjectBranchCode,
      ProcessObjectCode,
      ProcessObjectClassCode,
      ProcessObjectIdentifier
    );
  end;
  
  
  procedure UpdateProcessObjectIdentifier(
    ProcessObjectBranchCode in Integer,
    ProcessObjectCode in Integer,
    ProcessObjectIdentifier in VarChar2) is
  begin
    update
      PROCESS_OBJECTS po
    set
      po.PROCESS_OBJECT_IDENTIFIER = ProcessObjectIdentifier
    where
      (po.PROCESS_OBJECT_BRANCH_CODE = ProcessObjectBranchCode) and
      (po.PROCESS_OBJECT_CODE = ProcessObjectCode);
      
    if (SQL%ROWCOUNT <> 1) then
      raise_application_error(-20000, 'Internal error: UpdateProcessObjectIdentifier() could not find a single ProcessObject. RowsAffected = ' || SQL%ROWCOUNT);
    end if;
  end;

  
  procedure DeleteProcessObject(
    ProcessObjectBranchCode in Integer,
    ProcessObjectCode in Integer) is
  begin
    delete 
      PROCESS_OBJECTS po
    where
      (po.PROCESS_OBJECT_BRANCH_CODE = ProcessObjectBranchCode) and
      (po.PROCESS_OBJECT_CODE = ProcessObjectCode);

    if (SQL%ROWCOUNT <> 1) then
      raise_application_error(-20000, 'Internal error: DeleteProcessObject() could not find a single ProcessObject. RowsAffected = ' || SQL%ROWCOUNT);
    end if;
  end;

  
  function NewProcessObject(
    ProcessObjectBranchCode in Integer,
    ProcessObjectClassCode in Integer,
    ProcessObjectIdentifier in VarChar2
    ) return Number is
    pobc Number;
    Result Number;
  begin
    pobc:= ProcessObjectBranchCode;
    Result:= null;
    InsertProcessObject(pobc, Result, ProcessObjectClassCode, ProcessObjectIdentifier);
    return Result;
  end;
  

  function NewDocCode(DocBranchCode in Number) return Number is
    Result Number;
  begin
    select
      seq_DOCS.NextVal
    into
      Result
    from
      DUAL
    ;
    
    insert into DOCS_FOR_EDIT
    (
      DOC_BRANCH_CODE,
      DOC_CODE,
      DOC_EMPTINESS_REQUIREMENT_CODE
    )
    values
    (
      DocBranchCode,
      Result,
      1
    );
    
    return Result;
  end;

  
  function NewDocCodeLike(
    DocBranchCode in Number,
    LikeDocBranchCode in Number,
    LikeDocCode in Number
  ) return Number is
    Result Number;
  begin
    select
      seq_DOCS.NextVal
    into
      Result
    from
      DUAL
    ;

    insert into DOCS_FOR_EDIT
    (
      DOC_BRANCH_CODE,
      DOC_CODE,
      DOC_EMPTINESS_REQUIREMENT_CODE,
      IS_COMPLETE
    )
    select
      DocBranchCode,
      Result,
      d.DOC_EMPTINESS_REQUIREMENT_CODE,
      d.IS_COMPLETE
    from
      DOCS d
    where
      (d.DOC_BRANCH_CODE = LikeDocBranchCode) and
      (d.DOC_CODE = LikeDocCode);
      
    return Result;
  end;


  function HasDocItems(DocBranchCode in Number, DocCode in Number) return Number is
    Result Number;
  begin
    
    if (DocCode is null) then
    
      Result:= 0;
      
    else
    
      select
        Sign(Count(*))
      into  
        Result
      from
        DOC_ITEMS di
      where
        (di.DOC_BRANCH_CODE = DocBranchCode) and
        (di.DOC_CODE = DocCode) and
        (di.IS_INACTIVE = 0);
        
    end if;
      
    return Result;
  end;

  
  function LargeX(ANumber in Number, ABaseNumber in Number, AEpsilon in Number := 0) return Number is
    Epsilon Number;
  begin
    if (AEpsilon = 0) then
      Epsilon:= CommonConsts.Eps;
    else
      Epsilon:= AEpsilon;
    end if;
  
    if (Abs(ANumber-ABaseNumber) < Epsilon) then
      return ABaseNumber;
    else
      return ANumber;
    end if;
  end;

  function LargeZero(ANumber in Number, AEpsilon in Number := 0) return Number is
  begin
    return LargeX(ANumber, 0, AEpsilon);
  end;


  function DocItemTypeFileExtensions(DocItemTypeCode in Integer) return VarChar2 is
    Strings TStringArray;
  begin
    select
      fe.FILE_EXTENSION_ABBREV
    bulk collect into
      Strings
    from
      DOC_ITEM_TYPE_FILE_EXTENSIONS ditfe,
      FILE_EXTENSIONS fe
    where
      (ditfe.FILE_EXTENSION_CODE = fe.FILE_EXTENSION_CODE) and
      (ditfe.DOC_ITEM_TYPE_CODE = DocItemTypeCode)
    order by
      fe.FILE_EXTENSION_ABBREV;

    return ConcatStrings(Strings, '; ');
  end;

  
  procedure CheckEmployeeOccupations(EmployeeCode in Integer) is
    IncorrectOECount Number;
    EmployeeNo Number;
  begin
  
    select
      Count(*)
    into
      IncorrectOECount
    from
      OCCUPATION_EMPLOYEES oe
    where
      (oe.EMPLOYEE_CODE = EmployeeCode) and
      
      exists(
        select
          1
        from
          OCCUPATIONS o
        where
          (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and
          (o.IS_MAIN = 1)
      ) and
      
      exists(
        select
          1
        from
          OCCUPATION_EMPLOYEES oe2
        where
          (oe2.EMPLOYEE_CODE = EmployeeCode) and
          (oe2.OCCUPATION_EMPLOYEE_CODE < oe.OCCUPATION_EMPLOYEE_CODE) and
          
          exists(
            select
              1
            from
              OCCUPATIONS o
            where
              (o.OCCUPATION_CODE = oe2.OCCUPATION_CODE) and
              (o.IS_MAIN = 1)
          ) and
          
          ( (oe2.ASSIGNMENT_BEGIN_DATE between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIGNMENT_END_DATE) or
            (oe2.ASSIGNMENT_END_DATE between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIGNMENT_END_DATE) or
            (oe.ASSIGNMENT_BEGIN_DATE between oe2.ASSIGNMENT_BEGIN_DATE and oe2.ASSIGNMENT_END_DATE) or
            (oe.ASSIGNMENT_END_DATE between oe2.ASSIGNMENT_BEGIN_DATE and oe2.ASSIGNMENT_END_DATE) )
      );
      
    
    if (IncorrectOECount = 0) then

      select
        Count(*)
      into
        IncorrectOECount
      from
        OCCUPATION_EMPLOYEES oe
      where
        (oe.EMPLOYEE_CODE = EmployeeCode) and
        
        (exists
          ( select
              1
            from
              COMMON_OPTIONS co
            where
              (co.CODE = 1) and
              (co.ALLOW_NON_MAIN_ONLY_OE = 0)
          )
        ) and
        
        exists(
          select
            1
          from
            OCCUPATIONS o
          where
            (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and
            (o.IS_MAIN = 0)
        ) and
                
        (not exists
          ( select
              1
            from
              DUAL
            where
              ( select
                  Sum(
                    DateTimeUtils.DatePeriodIntersectLength(
                      oe.ASSIGNMENT_BEGIN_DATE, oe.ASSIGNMENT_END_DATE,
                      oe2.ASSIGNMENT_BEGIN_DATE, oe2.ASSIGNMENT_END_DATE
                    )
                  )
                from
                  OCCUPATION_EMPLOYEES oe2
                where
                  (oe2.EMPLOYEE_CODE = EmployeeCode) and
                  
                  exists(
                    select
                      1
                    from
                      OCCUPATIONS o
                    where
                      (o.OCCUPATION_CODE = oe2.OCCUPATION_CODE) and
                      (o.IS_MAIN = 1)
                  )
              ) = (oe.ASSIGNMENT_END_DATE - oe.ASSIGNMENT_BEGIN_DATE + 1)
          )
        );
        
    end if;
      

    if (IncorrectOECount > 0) then
    
      select
        Min(c.COMPANY_NO)
      into
        EmployeeNo
      from
        EMPLOYEES e,
        COMPANIES c
      where
        (e.COMPANY_CODE = c.COMPANY_CODE) and
        (e.EMPLOYEE_CODE = EmployeeCode);
    
      raise_application_error(-20002,
        ServerMessages.SIncorrectOccupationEmployeeId || '(' ||
        'EmployeeCode:i=' || MessageUtils.InternalIntToStr(EmployeeNo) || ')');
    end if;    
    
  end;

  
  function GetPartnerName(CompanyCode in Integer) return VarChar2 is 
    Result Varchar2(250 char);
  begin
    select
      Decode(c.COMPANY_CLASS_CODE, 1,
        Nvl2(
          ct.COMPANY_TYPE_CODE,
          Decode(ct.ABBREV_BEFORE, 1,
            (ct.COMPANY_TYPE_ABBREV || ' "' || c.COMPANY_NAME ||'"'),
            ('"' || c.COMPANY_NAME ||'" ' || ct.COMPANY_TYPE_ABBREV)
          ),
          c.COMPANY_NAME
        ),
        2,
        ( p.FIRST_NAME ||
          Nvl2(p.MIDDLE_NAME, (' ' || SubStr(p.MIDDLE_NAME, 1, 1) || '. '), ' ') ||
          p.LAST_NAME
        ),
        c.COMPANY_NAME
      ) as PARTNER_NAME
    into 
      Result
    from
      COMPANIES c,
      COMPANY_TYPES ct,
      PERSONS p
    where
      (c.COMPANY_TYPE_CODE = ct.COMPANY_TYPE_CODE(+)) and
      (c.COMPANY_CODE = p.COMPANY_CODE(+)) and
      (c.COMPANY_CODE = CompanyCode);

    return Result;
  end;
  
  function CompanyBaseRoleCode(CompanyCode in Integer) return Number is   
    Result Number;
  begin
    select
      Decode(
        Least(
          Coalesce((select p.PRIORITY_NO from PRIORITIES p where (p.PRIORITY_CODE = cc.PRIORITY_CODE)), 1000000), 
          Coalesce((select p.PRIORITY_NO from PRIORITIES p where (p.PRIORITY_CODE = mc.PRIORITY_CODE)), 1000000),
          Coalesce((select p.PRIORITY_NO from PRIORITIES p where (p.PRIORITY_CODE = vc.PRIORITY_CODE)), 1000000),
          Coalesce((select p.PRIORITY_NO from PRIORITIES p where (p.PRIORITY_CODE = go.PRIORITY_CODE)), 1000000),
          Coalesce((select p.PRIORITY_NO from PRIORITIES p where (p.PRIORITY_CODE = bc.PRIORITY_CODE)), 1000000),
          Coalesce((select p.PRIORITY_NO from PRIORITIES p where (p.PRIORITY_CODE = w.PRIORITY_CODE)), 1000000)
        ),
        (select p.PRIORITY_NO from PRIORITIES p where (p.PRIORITY_CODE = cc.PRIORITY_CODE)), 1,
        (select p.PRIORITY_NO from PRIORITIES p where (p.PRIORITY_CODE = mc.PRIORITY_CODE)), 2,
        (select p.PRIORITY_NO from PRIORITIES p where (p.PRIORITY_CODE = vc.PRIORITY_CODE)), 3,
        (select p.PRIORITY_NO from PRIORITIES p where (p.PRIORITY_CODE = go.PRIORITY_CODE)), 4,
        (select p.PRIORITY_NO from PRIORITIES p where (p.PRIORITY_CODE = bc.PRIORITY_CODE)), 5,
        (select p.PRIORITY_NO from PRIORITIES p where (p.PRIORITY_CODE = w.PRIORITY_CODE)), 6,
        null
      )
    into 
      Result
    from
      COMPANIES c,
      CLIENT_COMPANIES cc,
      MEDIATOR_COMPANIES mc,
      VENDOR_COMPANIES vc,
      GOVERNMENT_ORGANIZATIONS go,
      BANK_COMPANIES bc,
      WORKERS w
    where
      (c.COMPANY_CODE = CompanyCode) and
      (c.COMPANY_CODE = cc.CLIENT_COMPANY_CODE(+)) and
      (c.COMPANY_CODE = mc.MEDIATOR_COMPANY_CODE(+)) and
      (c.COMPANY_CODE = vc.VENDOR_COMPANY_CODE(+)) and
      (c.COMPANY_CODE = go.GOVERNMENT_ORGANIZATION_CODE(+)) and
      (c.COMPANY_CODE = bc.BANK_COMPANY_CODE(+)) and
      (c.COMPANY_CODE = w.COMPANY_CODE(+));

    return Result;
  end;
  
  function CompanyBaseRolePriorityCode(CompanyCode in Integer) return Number is
    Result Number;
  begin
    select
      Decode(
        Least(
          Coalesce((select p.PRIORITY_NO from PRIORITIES p where (p.PRIORITY_CODE = cc.PRIORITY_CODE)), 1000000), 
          Coalesce((select p.PRIORITY_NO from PRIORITIES p where (p.PRIORITY_CODE = mc.PRIORITY_CODE)), 1000000),
          Coalesce((select p.PRIORITY_NO from PRIORITIES p where (p.PRIORITY_CODE = vc.PRIORITY_CODE)), 1000000),
          Coalesce((select p.PRIORITY_NO from PRIORITIES p where (p.PRIORITY_CODE = go.PRIORITY_CODE)), 1000000),
          Coalesce((select p.PRIORITY_NO from PRIORITIES p where (p.PRIORITY_CODE = bc.PRIORITY_CODE)), 1000000),
          Coalesce((select p.PRIORITY_NO from PRIORITIES p where (p.PRIORITY_CODE = w.PRIORITY_CODE)), 1000000)
        ),
        (select p.PRIORITY_NO from PRIORITIES p where (p.PRIORITY_CODE = cc.PRIORITY_CODE)), cc.PRIORITY_CODE,
        (select p.PRIORITY_NO from PRIORITIES p where (p.PRIORITY_CODE = mc.PRIORITY_CODE)), mc.PRIORITY_CODE,
        (select p.PRIORITY_NO from PRIORITIES p where (p.PRIORITY_CODE = vc.PRIORITY_CODE)), vc.PRIORITY_CODE,
        (select p.PRIORITY_NO from PRIORITIES p where (p.PRIORITY_CODE = go.PRIORITY_CODE)), go.PRIORITY_CODE,
        (select p.PRIORITY_NO from PRIORITIES p where (p.PRIORITY_CODE = bc.PRIORITY_CODE)), bc.PRIORITY_CODE,
        (select p.PRIORITY_NO from PRIORITIES p where (p.PRIORITY_CODE = w.PRIORITY_CODE)), w.PRIORITY_CODE,
        null
      )
    into 
      Result
    from
      COMPANIES c,
      CLIENT_COMPANIES cc,
      MEDIATOR_COMPANIES mc,
      VENDOR_COMPANIES vc,
      GOVERNMENT_ORGANIZATIONS go,
      BANK_COMPANIES bc,
      WORKERS w
    where
      (c.COMPANY_CODE = CompanyCode) and
      (c.COMPANY_CODE = cc.CLIENT_COMPANY_CODE(+)) and
      (c.COMPANY_CODE = mc.MEDIATOR_COMPANY_CODE(+)) and
      (c.COMPANY_CODE = vc.VENDOR_COMPANY_CODE(+)) and
      (c.COMPANY_CODE = go.GOVERNMENT_ORGANIZATION_CODE(+)) and
      (c.COMPANY_CODE = bc.BANK_COMPANY_CODE(+)) and
      (c.COMPANY_CODE = w.COMPANY_CODE(+));

    return NullIf(Result, 1000000);
  end;
  
  procedure InitializeStringArray(AStringArray out TStringArray, AHighBound in Number) is
  begin
    AStringArray:= TStringArray();
    AStringArray.Extend(AHighBound);
  end;

  procedure InitializeNumberArray(ANumberArray out TNumberArray, AHighBound in Number) is
  begin
    ANumberArray:= TNumberArray();
    ANumberArray.Extend(AHighBound);
  end;

  procedure InitializeBooleanArray(ABooleanArray out TBooleanArray, AHighBound in Number) is
  begin
    ABooleanArray:= TBooleanArray();
    ABooleanArray.Extend(AHighBound);
  end;

  procedure InitializeNumberMatrix(ANumberMatrix out TNumberMatrix, AHighBound in Number) is
    i Number;
  begin
    ANumberMatrix:= TNumberMatrix();
    ANumberMatrix.Extend(AHighBound);
    
    for i in 1..AHighBound loop
      ANumberMatrix(i):= TNumberArray();
      ANumberMatrix(i).Extend(AHighBound);
    end loop;
  end;

  procedure InitializeBooleanMatrix(ABooleanMatrix out TBooleanMatrix, AHighBound in Number) is
    i Number;
  begin
    ABooleanMatrix:= TBooleanMatrix();
    ABooleanMatrix.Extend(AHighBound);

    for i in 1..AHighBound loop
      ABooleanMatrix(i):= TBooleanArray();
      ABooleanMatrix(i).Extend(AHighBound);
    end loop;
  end;


  function GetDiscEventTypeFullNo(
    ADiscEventTypeCode in Number,
    APadded in Number := 0
  ) return VarChar2 is

  Result Varchar2(250 char);
  Strings TStringArray;

  begin
    if (ADiscEventTypeCode is null) then
      Result:= null;
    else

      if (APadded = 0) then
      
        select
          To_Char(det.DISC_EVENT_TYPE_LOCAL_NO)
  
        bulk collect into
          Strings
 
        from
          DISC_EVENT_TYPE_RELATIONS detr,
          DISC_EVENT_TYPES det

        where
          (detr.ANCESTOR_DET_CODE = det.DISC_EVENT_TYPE_CODE) and
          (detr.DESCENDANT_DET_CODE = ADiscEventTypeCode)
          
        order by
          ( select
              Count(*)
            from
              DISC_EVENT_TYPE_RELATIONS detr2
            where
              (detr2.DESCENDANT_DET_CODE = det.DISC_EVENT_TYPE_CODE)
          )
        ;

      else

        select
          LPad(To_Char(z.DISC_EVENT_TYPE_LOCAL_NO), y.DIGIT_COUNT, '0') as LOCAL_NO
  
        bulk collect into
          Strings
  
        from
          ( select
              x.LEVEL_NO,
              (Trunc(Log(10, Greatest(Max(x.DISC_EVENT_TYPE_LOCAL_NO), 1))) + 1) as DIGIT_COUNT
            from
              ( select
                  ( select
                      Count(*)
                    from
                      DISC_EVENT_TYPE_RELATIONS detr
                    where
                      (detr.DESCENDANT_DET_CODE = det.DISC_EVENT_TYPE_CODE)
                  ) as LEVEL_NO,
                  det.DISC_EVENT_TYPE_LOCAL_NO
                from
                  DISC_EVENT_TYPES det
              ) x
            group by
              x.LEVEL_NO
          ) y,
          ( select
              ( select
                  Count(*)
                from
                  DISC_EVENT_TYPE_RELATIONS detr2
                where
                  (detr2.DESCENDANT_DET_CODE = det.DISC_EVENT_TYPE_CODE)
              ) as LEVEL_NO,
              det.DISC_EVENT_TYPE_LOCAL_NO
            from
              DISC_EVENT_TYPE_RELATIONS detr,
              DISC_EVENT_TYPES det
            where
              (detr.ANCESTOR_DET_CODE = det.DISC_EVENT_TYPE_CODE) and
              (detr.DESCENDANT_DET_CODE = ADiscEventTypeCode)
          ) z
          
        where
          (y.LEVEL_NO = z.LEVEL_NO)
          
        order by
          y.LEVEL_NO
        ;

      end if;

      Result:= ConcatStrings(Strings, '.') || '.';

      if (Result is not null) and (Result <> '0.') then
        Result:= SubStr(Result, 3);  -- da premahne '0.'
      end if;

    end if;

    return(Result);
  end GetDiscEventTypeFullNo;

  
  function GetExceptEventDamageFullNo(
    AExceptEventDamageCode in Number,
    APadded in Number := 0
  ) return VarChar2 is

  Result Varchar2(250 char);
  Strings TStringArray;

  begin
    if (AExceptEventDamageCode is null) then
      Result:= null;
    else

      if (APadded = 0) then
      
        select
          To_Char(eed.LOCAL_NO)
  
        bulk collect into
          Strings
 
        from
          EXCEPT_EVENT_DAMAGE_RELATIONS eedr,
          EXCEPT_EVENT_DAMAGES eed

        where
          (eedr.ANCESTOR_EE_DAMAGE_CODE = eed.EXCEPT_EVENT_DAMAGE_CODE) and
          (eedr.DESCENDANT_EE_DAMAGE_CODE = AExceptEventDamageCode)
          
        order by
          ( select
              Count(*)
            from
              EXCEPT_EVENT_DAMAGE_RELATIONS eedr2
            where
              (eedr2.DESCENDANT_EE_DAMAGE_CODE = eed.EXCEPT_EVENT_DAMAGE_CODE)
          )
        ;

      else

        select
          LPad(To_Char(z.LOCAL_NO), y.DIGIT_COUNT, '0') as LOCAL_NO
  
        bulk collect into
          Strings
  
        from
          ( select
              x.LEVEL_NO,
              (Trunc(Log(10, Greatest(Max(x.LOCAL_NO), 1))) + 1) as DIGIT_COUNT
            from
              ( select
                  ( select
                      Count(*)
                    from
                      EXCEPT_EVENT_DAMAGE_RELATIONS eedr
                    where
                      (eedr.DESCENDANT_EE_DAMAGE_CODE = eed.EXCEPT_EVENT_DAMAGE_CODE)
                  ) as LEVEL_NO,
                  eed.LOCAL_NO
                from
                  EXCEPT_EVENT_DAMAGES eed
              ) x
            group by
              x.LEVEL_NO
          ) y,
          ( select
              ( select
                  Count(*)
                from
                  EXCEPT_EVENT_DAMAGE_RELATIONS eedr2
                where
                  (eedr2.DESCENDANT_EE_DAMAGE_CODE = eed.EXCEPT_EVENT_DAMAGE_CODE)
              ) as LEVEL_NO,
              eed.LOCAL_NO
            from
              EXCEPT_EVENT_DAMAGE_RELATIONS eedr,
              EXCEPT_EVENT_DAMAGES eed
            where
              (eedr.ANCESTOR_EE_DAMAGE_CODE = eed.EXCEPT_EVENT_DAMAGE_CODE) and
              (eedr.DESCENDANT_EE_DAMAGE_CODE = AExceptEventDamageCode)
          ) z
          
        where
          (y.LEVEL_NO = z.LEVEL_NO)
          
        order by
          y.LEVEL_NO
        ;

      end if;

      Result:= ConcatStrings(Strings, '.') || '.';

    end if;

    return(Result);
  end GetExceptEventDamageFullNo;

  function FormatIBAN(AIBAN in VarChar2) return VarChar2 is
    Result Varchar2(250 char);
    Len Number;
    i Number;
  begin
    if (AIBAN is null) then
      Result:= null;
    else
      Result:= '';

      Len:= Length(AIBAN);
      for i in 0..(Trunc(Len / 4) + Sign(Mod(Len, 4)) - 1) loop
        Result:= Result || SubStr(AIBAN, (4*i + 1), 4) || ' ';
      end loop;
        
      Result:= Trim(Result);
    end if;
      
    return Result;
  end;

  function GetNewOccupationEmployeeCode return Number is
    Result Number;
  begin
    select
      seq_OCCUPATION_EMPLOYEES.NextVal
    into
      Result
    from
      DUAL;
  
    return Result;
  end;

  function EmpMainShiftWorkdayCount(AEmployeeCode in Number, ABeginDate in Date, AEndDate in Date) return Number is
    Result Number;
  begin

    select
      Count(*) as EMP_MAIN_SHIFT_WORKDAY_COUNT
      -- Sum(sc.WORKDAY_DURATION_HOURS * sc.WORKDAY_DENSITY_PERCENT) as EMP_MAIN_SHIFT_EFF_WORKHOURS

    into
      Result

    from
      THE_DATES td,
      OCCUPATIONS o,
      OCCUPATION_EMPLOYEES oe,
      OCCUPATION_SHIFTS os,
          
      DATE_SHIFT_CYCLES dsc,
      SHIFT_CYCLES sc

    where
      (oe.EMPLOYEE_CODE = AEmployeeCode) and
      (oe.OCCUPATION_CODE = o.OCCUPATION_CODE) and
      (o.OCCUPATION_CODE = os.OCCUPATION_CODE) and

      (td.THE_DATE = dsc.THE_DATE) and
      ( Coalesce(
          ( select
              eam.NEW_SHIFT_CODE
            from
              EMP_AVAIL_MODIFIERS eam
            where
              (eam.EMPLOYEE_CODE = oe.EMPLOYEE_CODE) and
              (td.THE_DATE between eam.BEGIN_DATE and eam.END_DATE) and
              (eam.STORNO_EMPLOYEE_CODE is null) and
              (eam.OLD_SHIFT_CODE = os.SHIFT_CODE)
          ),
          os.SHIFT_CODE
        ) = dsc.SHIFT_CODE
      ) and
          
      (dsc.SHIFT_CYCLE_CODE = sc.SHIFT_CYCLE_CODE) and
      
      (sc.IS_WORK_CYCLE = 1) and
        
      (td.THE_DATE between o.OCCUPATION_BEGIN_DATE and o.OCCUPATION_END_DATE) and

      (td.THE_DATE between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIGNMENT_END_DATE) and

      (td.THE_DATE between os.BEGIN_DATE and os.END_DATE) and

      (td.THE_DATE between ABeginDate and AEndDate) and

      (o.IS_MAIN = 1) and

      (not exists
        ( select
            1
          from
            EMP_AVAIL_MODIFIERS eam
          where
            (eam.EMPLOYEE_CODE = oe.EMPLOYEE_CODE) and
            (td.THE_DATE between eam.BEGIN_DATE and eam.END_DATE) and
            (eam.EMP_AVAIL_MODIFIER_TYPE_CODE = 1) and  -- celodnevno otsustvie
            (eam.STORNO_EMPLOYEE_CODE is null)
        )
      )
    ;
    
    return(Result);
  end;

  function EmpMainShiftEffectiveWorkHours(AEmployeeCode in Number, ABeginDate in Date, AEndDate in Date) return Number is
    Result Number;
  begin

    select
      -- Count(*) as EMP_MAIN_SHIFT_WORKDAY_COUNT
      Sum(sc.WORKDAY_DURATION_HOURS * sc.WORKDAY_DENSITY_PERCENT) as EMP_MAIN_SHIFT_EFF_WORKHOURS

    into
      Result

    from
      THE_DATES td,
      OCCUPATIONS o,
      OCCUPATION_EMPLOYEES oe,
      OCCUPATION_SHIFTS os,
          
      DATE_SHIFT_CYCLES dsc,
      SHIFT_CYCLES sc

    where
      (oe.EMPLOYEE_CODE = AEmployeeCode) and
      (oe.OCCUPATION_CODE = o.OCCUPATION_CODE) and
      (o.OCCUPATION_CODE = os.OCCUPATION_CODE) and

      (td.THE_DATE = dsc.THE_DATE) and
      ( Coalesce(
          ( select
              eam.NEW_SHIFT_CODE
            from
              EMP_AVAIL_MODIFIERS eam
            where
              (eam.EMPLOYEE_CODE = oe.EMPLOYEE_CODE) and
              (td.THE_DATE between eam.BEGIN_DATE and eam.END_DATE) and
              (eam.STORNO_EMPLOYEE_CODE is null) and
              (eam.OLD_SHIFT_CODE = os.SHIFT_CODE)
          ),
          os.SHIFT_CODE
        ) = dsc.SHIFT_CODE
      ) and
          
      (dsc.SHIFT_CYCLE_CODE = sc.SHIFT_CYCLE_CODE) and
      
      (sc.IS_WORK_CYCLE = 1) and
        
      (td.THE_DATE between o.OCCUPATION_BEGIN_DATE and o.OCCUPATION_END_DATE) and

      (td.THE_DATE between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIGNMENT_END_DATE) and

      (td.THE_DATE between os.BEGIN_DATE and os.END_DATE) and

      (td.THE_DATE between ABeginDate and AEndDate) and

      (o.IS_MAIN = 1) and

      (not exists
        ( select
            1
          from
            EMP_AVAIL_MODIFIERS eam
          where
            (eam.EMPLOYEE_CODE = oe.EMPLOYEE_CODE) and
            (td.THE_DATE between eam.BEGIN_DATE and eam.END_DATE) and
            (eam.EMP_AVAIL_MODIFIER_TYPE_CODE = 1) and  -- celodnevno otsustvie
            (eam.STORNO_EMPLOYEE_CODE is null)
        )
      )
    ;
    
    return(Result);
  end;

  function FloatCompare(AFirstNumber in Number, ASecondNumber in Number) return Number is
  begin
    return LargeZero(AFirstNumber - ASecondNumber);
  end;

  function ProductParentCodes(ProductCode in Integer) return VarChar2 is
    Strings TStringArray;
  begin
    select
      To_Char(pr.ANCESTOR_PRODUCT_CODE)
    bulk collect into
      Strings      
    from
      PRODUCT_RELATIONS pr
    where
      (pr.DESCENDANT_PRODUCT_CODE = ProductCode) and
      (pr.ANCESTOR_PRODUCT_CODE <> ProductCode)
    order by
      ( select
          Count(*)
        from
          PRODUCT_RELATIONS pr2
        where
          (pr2.DESCENDANT_PRODUCT_CODE = pr.ANCESTOR_PRODUCT_CODE)
      );

    return ConcatStrings(Strings, ';');
  end;

  function DeptParentCodes(DeptCode in Integer) return VarChar2 is
    Strings TStringArray;
  begin
    select
      To_Char(dr.ANCESTOR_DEPT_CODE)
    bulk collect into
      Strings      
    from
      DEPT_RELATIONS dr
    where
      (dr.DESCENDANT_DEPT_CODE = DeptCode) and
      (dr.ANCESTOR_DEPT_CODE <> DeptCode)
    order by
      ( select
          Count(*)
        from
          DEPT_RELATIONS dr2
        where
          (dr2.DESCENDANT_DEPT_CODE = dr.ANCESTOR_DEPT_CODE)
      );

    return ConcatStrings(Strings, ';');
  end;

  function NumberToBoolean(AValue in Number) return Boolean is
  begin
    if (AValue = 0) then
      return False;
    else
      return True;
    end if;
  end;

  function BooleanToNumber(AValue in Boolean) return Number is
  begin
    if AValue then
      return 1;
    else
      return 0;
    end if;
  end;
  
  function IsGroupDept(ADeptCode in Number) return Boolean is
    IsGroup Number;
  begin
    select
      Sign(Count(*))
    into
      IsGroup
    from
      GROUP_DEPTS gd
    where
      (gd.DEPT_CODE = ADeptCode);

    return (IsGroup = 1);
  end;
  
  function TestIfNull(AString in VarChar2, ANotNullValue in VarChar2, ANullValue in VarChar2) return VarChar2 is
  begin
    if AString is null then
      return ANullValue;
    else
      return ANotNullValue;
    end if;
  end;

  function FormatPersonName(AFirstName in VarChar2, AMiddleName in VarChar2, ALastName in VarChar2, AMaxLength in Number := null) return VarChar2 is
  begin
    if AMaxLength is null then
      return (AFirstName || TestIfNull(AMiddleName, ' ' || AMiddleName || ' ', ' ') || ALastName);
    else
      case
        when (Length((AFirstName || TestIfNull(AMiddleName, ' ' || AMiddleName || ' ', ' ') || ALastName)) <= AMaxLength) then
          return (AFirstName || TestIfNull(AMiddleName, ' ' || AMiddleName || ' ', ' ') || ALastName);
        when (Length((AFirstName || TestIfNull(AMiddleName, ' ' || Substr(AMiddleName, 1, 1) || '. ', ' ') || ALastName)) <= AMaxLength) then
          return (AFirstName || TestIfNull(AMiddleName, ' ' || Substr(AMiddleName, 1, 1) || '. ', ' ') || ALastName);          
        when (Length((AFirstName || ' ' || ALastName)) <= AMaxLength) then
          return (AFirstName || ' ' || ALastName);
        when (Length((Substr(AFirstName, 1, 1) || '. ' || ALastName)) <= AMaxLength) then
          return (Substr(AFirstName, 1, 1) || '. ' || ALastName);
        when (Length((ALastName)) <= AMaxLength) then
          return (ALastName);
          
        else
          return (Substr(ALastName, 1, AMaxLength));    
      end case;
    end if;
  end;

  function IsEqual(AFirstValue in Number, ASecondValue in Number) return Boolean is
  begin
    return
      ( (AFirstValue is null) and
        (ASecondValue is null)
      ) or
      ( (AFirstValue is not null) and
        (ASecondValue is not null) and
        (AFirstValue = ASecondValue)
      );
  end;
  
  function IsEqual(AFirstValue in Date, ASecondValue in Date) return Boolean is
  begin
    return
      ( (AFirstValue is null) and
        (ASecondValue is null)
      ) or
      ( (AFirstValue is not null) and
        (ASecondValue is not null) and
        (AFirstValue = ASecondValue)
      );
  end;

  function IsEqual(AFirstValue in VarChar2, ASecondValue in VarChar2) return Boolean is
  begin
    return
      ( (AFirstValue is null) and
        (ASecondValue is null)
      ) or
      ( (AFirstValue is not null) and
        (ASecondValue is not null) and
        (AFirstValue = ASecondValue)
      );
  end;

end MiscUtils;
/
