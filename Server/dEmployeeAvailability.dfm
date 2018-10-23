inherited dmEmployeeAvailability: TdmEmployeeAvailability
  Height = 679
  Width = 854
  object prvEmpDateAvail: TDataSetProvider
    DataSet = qryEmpDateAvail
    Options = [poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    OnGetData = prvEmpDateAvailGetData
    BeforeUpdateRecord = prvEmpDateAvailBeforeUpdateRecord
    BeforeApplyUpdates = prvEmpDateAvailBeforeApplyUpdates
    AfterApplyUpdates = prvEmpDateAvailAfterApplyUpdates
    AfterGetRecords = prvEmpDateAvailAfterGetRecords
    Left = 56
    Top = 8
  end
  object qryEmpDateAvail: TAbmesSQLQuery
    BeforeOpen = qryEmpDateAvailBeforeOpen
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'WORKDAY_BEGIN_DATE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'WORKDAY_END_DATE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  e.EMPLOYEE_CODE,'
      ''
      '  ( select'
      '      ( select'
      
        '          (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETT' +
        'ER)'
      '        from'
      '          DEPTS d,'
      '          DEPT_TYPES dt'
      '        where'
      '          (d.DEPT_CODE = o.DEPT_CODE) and'
      '          (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '      ) as DEPT_IDENTIFIER'
      '    from'
      '      OCCUPATIONS o,'
      '      OCCUPATION_EMPLOYEES oe'
      '    where'
      '      (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      '      (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      
        '      (:THE_DATE between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIGNM' +
        'ENT_END_DATE) and'
      '      (o.IS_MAIN = 1)'
      '  ) as OCCUPATION_DEPT_IDENTIFIER,'
      ''
      '  ( select'
      '      o.OCCUPATION_NAME'
      '    from'
      '      OCCUPATIONS o,'
      '      OCCUPATION_EMPLOYEES oe'
      '    where'
      '      (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      '      (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      
        '      (:THE_DATE between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIGNM' +
        'ENT_END_DATE) and'
      '      (o.IS_MAIN = 1)'
      '  ) as OCCUPATION_NAME,'
      ''
      '  ( select'
      '      o.OCCUPATION_LEVEL'
      '    from'
      '      OCCUPATIONS o,'
      '      OCCUPATION_EMPLOYEES oe'
      '    where'
      '      (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      '      (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      
        '      (:THE_DATE between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIGNM' +
        'ENT_END_DATE) and'
      '      (o.IS_MAIN = 1)'
      '  ) as OCCUPATION_LEVEL,'
      ''
      '  ( select'
      '      s.SHIFT_ABBREV'
      '    from'
      '      SHIFTS s'
      '    where'
      '      (s.SHIFT_CODE ='
      '        ( select'
      '            os.SHIFT_CODE'
      '          from'
      '            OCCUPATION_SHIFTS os'
      '          where'
      '            (os.OCCUPATION_CODE ='
      '              ( select'
      '                  o.OCCUPATION_CODE'
      '                from'
      '                  OCCUPATIONS o,'
      '                  OCCUPATION_EMPLOYEES oe'
      '                where'
      '                  (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      '                  (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      
        '                  (:THE_DATE between oe.ASSIGNMENT_BEGIN_DATE an' +
        'd oe.ASSIGNMENT_END_DATE) and'
      '                  (o.IS_MAIN = 1)'
      '              )'
      '            ) and'
      '            (:THE_DATE between os.BEGIN_DATE and os.END_DATE)'
      '        )'
      '      )'
      '  ) as SHIFT_IDENTIFIER,'
      ''
      '  ( select'
      '      cs.COMPANY_STATUS_NAME'
      '    from'
      '      COMPANY_STATUSES_CHANGES csc,'
      '      COMPANY_STATUSES cs'
      '    where'
      '      (csc.COMPANY_CODE = e.COMPANY_CODE) and'
      ''
      '      (csc.STATUS_DATE = ('
      '        select'
      '          Max(STATUS_DATE)'
      '        from'
      '          COMPANY_STATUSES_CHANGES csc2'
      '        where'
      '          (csc2.COMPANY_CODE = csc.COMPANY_CODE)'
      '        )'
      '      ) and'
      ''
      '      (cs.COMPANY_STATUS_CODE = csc.COMPANY_STATUS_CODE)'
      '  ) as EMPLOYEE_STATUS_NAME,'
      ''
      '  ( select'
      '      c.COMPANY_NO'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = e.COMPANY_CODE)'
      '  ) as EMPLOYEE_NO,'
      ''
      '  ( e.FIRST_NAME ||'
      '    Nvl2(e.MIDDLE_NAME, '#39' '#39' || e.MIDDLE_NAME || '#39' '#39',  '#39' '#39') ||'
      '    e.LAST_NAME'
      '  ) as EMPLOYEE_NAME,'
      ''
      '  e.ABBREV as EMPLOYEE_ABBREV,'
      '  '
      '  ( select'
      '      p.EGN'
      '    from'
      '      PERSONS p'
      '    where'
      '      (p.COMPANY_CODE = e.COMPANY_CODE)'
      '  ) as EMPLOYEE_EGN,'
      '  '
      '  e.DOC_BRANCH_CODE as EMPLOYEE_DOC_BRANCH_CODE,'
      '  e.DOC_CODE as EMPLOYEE_DOC_CODE,'
      '  %HAS_DOC_ITEMS[e] as EMPLOYEE_HAS_DOC_ITEMS,'
      '  '
      '  Cast(:THE_DATE as Date) as THE_DATE,'
      
        '  Cast(:WORKDAY_BEGIN_DATE_TIME as Date) as WORKDAY_BEGIN_DATE_T' +
        'IME,'
      '  Cast(:WORKDAY_END_DATE_TIME as Date) as WORKDAY_END_DATE_TIME,'
      '  To_Number(null) as DAY_ABSENCE_REASON_CODE,'
      '  Cast(null as Varchar2(100 char)) as DAY_AVAIL_STATUS_ABBREV,'
      '  To_Number(null) as IS_EMPLOYEE_AVAILABLE_NOW,'
      '  To_Number(null) as IS_WORKDATE_NOW'
      ''
      'from'
      '  EMPLOYEES e'
      ''
      'where'
      '  (e.EMPLOYEE_CODE = :EMPLOYEE_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[e]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    AfterProviderStartTransaction = qryEmpDateAvailAfterProviderStartTransaction
    Left = 56
    Top = 56
    object qryEmpDateAvailEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object qryEmpDateAvailOCCUPATION_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'OCCUPATION_DEPT_IDENTIFIER'
      Size = 46
    end
    object qryEmpDateAvailOCCUPATION_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_NAME'
      Size = 50
    end
    object qryEmpDateAvailOCCUPATION_LEVEL: TAbmesFloatField
      FieldName = 'OCCUPATION_LEVEL'
    end
    object qryEmpDateAvailSHIFT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIFT_IDENTIFIER'
      Size = 5
    end
    object qryEmpDateAvailEMPLOYEE_STATUS_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_STATUS_NAME'
      Size = 100
    end
    object qryEmpDateAvailEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
    end
    object qryEmpDateAvailEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      Size = 62
    end
    object qryEmpDateAvailEMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'EMPLOYEE_ABBREV'
      Size = 5
    end
    object qryEmpDateAvailEMPLOYEE_EGN: TAbmesWideStringField
      FieldName = 'EMPLOYEE_EGN'
      Size = 10
    end
    object qryEmpDateAvailEMPLOYEE_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_DOC_BRANCH_CODE'
    end
    object qryEmpDateAvailEMPLOYEE_DOC_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_DOC_CODE'
    end
    object qryEmpDateAvailEMPLOYEE_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'EMPLOYEE_HAS_DOC_ITEMS'
    end
    object qryEmpDateAvailTHE_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_DATE'
    end
    object qryEmpDateAvailWORKDAY_BEGIN_DATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'WORKDAY_BEGIN_DATE_TIME'
    end
    object qryEmpDateAvailWORKDAY_END_DATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'WORKDAY_END_DATE_TIME'
    end
    object qryEmpDateAvailDAY_ABSENCE_REASON_CODE: TAbmesFloatField
      FieldName = 'DAY_ABSENCE_REASON_CODE'
    end
    object qryEmpDateAvailDAY_AVAIL_STATUS_ABBREV: TAbmesWideStringField
      FieldName = 'DAY_AVAIL_STATUS_ABBREV'
      Size = 100
    end
    object qryEmpDateAvailIS_EMPLOYEE_AVAILABLE_NOW: TAbmesFloatField
      FieldName = 'IS_EMPLOYEE_AVAILABLE_NOW'
    end
    object qryEmpDateAvailIS_WORKDATE_NOW: TAbmesFloatField
      FieldName = 'IS_WORKDATE_NOW'
    end
  end
  object qryEmpDateAvailMovements: TAbmesSQLQuery
    DataSource = dsEmpDateAvail
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftTimeStamp
        Name = 'WORKDAY_BEGIN_DATE_TIME'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftTimeStamp
        Name = 'WORKDAY_BEGIN_DATE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'WORKDAY_BEGIN_DATE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'WORKDAY_BEGIN_DATE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'WORKDAY_END_DATE_TIME'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'WORKDAY_END_DATE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'WORKDAY_END_DATE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'WORKDAY_END_DATE_TIME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  em.EMP_MOVEMENT_CODE,'
      '  em.EMPLOYEE_CODE,'
      '  em.IN_OUT,'
      '  em.EMP_MOVEMENT_DATE,'
      '  em.EMP_MOVEMENT_TIME,'
      '  em.EMP_MOVEMENT_DATE_TIME,'
      '  em.CREATE_EMPLOYEE_CODE,'
      '  em.CREATE_DATE,'
      '  em.CREATE_TIME,'
      '  em.STORNO_EMPLOYEE_CODE,'
      '  em.STORNO_DATE,'
      '  em.STORNO_TIME,'
      '  1 as RECORD_TYPE,'
      '  1 as FOR_OTHER_DATE,'
      '  Nvl2(em.STORNO_EMPLOYEE_CODE,'
      '    0,'
      '    Decode(em.IN_OUT,'
      '      1,'
      '      ( select'
      '          1 - Sign(Count(*))'
      '        from'
      '          EMP_MOVEMENTS em2'
      '        where'
      '          (em2.EMPLOYEE_CODE = em.EMPLOYEE_CODE) and'
      
        '          (em2.EMP_MOVEMENT_DATE_TIME > em.EMP_MOVEMENT_DATE_TIM' +
        'E) and'
      '          (em2.EMP_MOVEMENT_DATE_TIME <='
      '            em.EMP_MOVEMENT_DATE_TIME +'
      '            ( select'
      '                co.MAX_EMP_AVAIL_HOURS / 24'
      '              from'
      '                COMMON_OPTIONS co'
      '              where'
      '                (co.CODE = 1)'
      '            )'
      '          ) and'
      '          (em2.IN_OUT = -1) and'
      '          (em2.STORNO_EMPLOYEE_CODE is null) and'
      '          not exists('
      '            select'
      '              1'
      '            from'
      '              EMP_MOVEMENTS em3'
      '            where'
      '              (em3.EMPLOYEE_CODE = em.EMPLOYEE_CODE) and'
      
        '              (em3.EMP_MOVEMENT_DATE_TIME > em.EMP_MOVEMENT_DATE' +
        '_TIME) and'
      
        '              (em3.EMP_MOVEMENT_DATE_TIME < em2.EMP_MOVEMENT_DAT' +
        'E_TIME) and'
      '              (em3.STORNO_EMPLOYEE_CODE is null)'
      '          )'
      '      ),'
      '      ( select'
      '          1 - Sign(Count(*))'
      '        from'
      '          EMP_MOVEMENTS em2'
      '        where'
      '          (em2.EMPLOYEE_CODE = em.EMPLOYEE_CODE) and'
      
        '          (em2.EMP_MOVEMENT_DATE_TIME < em.EMP_MOVEMENT_DATE_TIM' +
        'E) and'
      '          (em2.EMP_MOVEMENT_DATE_TIME >='
      '            em.EMP_MOVEMENT_DATE_TIME -'
      '            ( select'
      '                co.MAX_EMP_AVAIL_HOURS / 24'
      '              from'
      '                COMMON_OPTIONS co'
      '              where'
      '                (co.CODE = 1)'
      '            )'
      '          ) and'
      '          (em2.IN_OUT = 1) and'
      '          (em2.STORNO_EMPLOYEE_CODE is null) and'
      '          not exists('
      '            select'
      '              1'
      '            from'
      '              EMP_MOVEMENTS em3'
      '            where'
      '              (em3.EMPLOYEE_CODE = em.EMPLOYEE_CODE) and'
      
        '              (em3.EMP_MOVEMENT_DATE_TIME < em.EMP_MOVEMENT_DATE' +
        '_TIME) and'
      
        '              (em3.EMP_MOVEMENT_DATE_TIME > em2.EMP_MOVEMENT_DAT' +
        'E_TIME) and'
      '              (em3.STORNO_EMPLOYEE_CODE is null)'
      '          )'
      '      )'
      '    )'
      '  ) as IS_UNMATCHED_MOVEMENT,'
      '  Nvl2(em.STORNO_EMPLOYEE_CODE, 1, 0) as IS_STORNO,'
      ''
      '  ( select'
      '      (e.FIRST_NAME ||'
      '        Nvl2(e.MIDDLE_NAME,'
      '          '#39' '#39' || Substr(e.MIDDLE_NAME, 1, 1) || '#39'. '#39','
      '          '#39' '#39') ||'
      '        e.LAST_NAME'
      '      ) as EMPLOYEE_NAME'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = em.CREATE_EMPLOYEE_CODE)'
      '  ) as CREATE_EMPLOYEE_NAME'
      ''
      'from'
      '  EMP_MOVEMENTS em'
      ''
      'where'
      '  (em.EMPLOYEE_CODE = :EMPLOYEE_CODE) and'
      '  (em.EMP_MOVEMENT_DATE_TIME < :WORKDAY_BEGIN_DATE_TIME) and'
      
        '  (em.EMP_MOVEMENT_DATE_TIME >= Cast(:WORKDAY_BEGIN_DATE_TIME as' +
        ' Date) - 1) and'
      '  (em.IN_OUT = 1) and'
      ''
      '  not exists('
      '    select'
      '      1'
      '    from'
      '      EMP_MOVEMENTS em2'
      '    where'
      '      (em2.EMPLOYEE_CODE = em.EMPLOYEE_CODE) and'
      
        '      (em2.EMP_MOVEMENT_DATE_TIME > em.EMP_MOVEMENT_DATE_TIME) a' +
        'nd'
      
        '      (em2.EMP_MOVEMENT_DATE_TIME < :WORKDAY_BEGIN_DATE_TIME) an' +
        'd'
      '      (em2.STORNO_EMPLOYEE_CODE is null)'
      '  )'
      ''
      ''
      ''
      'union all'
      ''
      ''
      ''
      'select'
      '  em.EMP_MOVEMENT_CODE,'
      '  em.EMPLOYEE_CODE,'
      '  em.IN_OUT,'
      '  em.EMP_MOVEMENT_DATE,'
      '  em.EMP_MOVEMENT_TIME,'
      '  em.EMP_MOVEMENT_DATE_TIME,'
      '  em.CREATE_EMPLOYEE_CODE,'
      '  em.CREATE_DATE,'
      '  em.CREATE_TIME,'
      '  em.STORNO_EMPLOYEE_CODE,'
      '  em.STORNO_DATE,'
      '  em.STORNO_TIME,'
      '  2 as RECORD_TYPE,'
      '  0 as FOR_OTHER_DATE,'
      '  Nvl2(em.STORNO_EMPLOYEE_CODE,'
      '    0,'
      '    Decode(em.IN_OUT,'
      '      1,'
      '      ( select'
      '          1 - Sign(Count(*))'
      '        from'
      '          EMP_MOVEMENTS em2'
      '        where'
      '          (em2.EMPLOYEE_CODE = em.EMPLOYEE_CODE) and'
      
        '          (em2.EMP_MOVEMENT_DATE_TIME > em.EMP_MOVEMENT_DATE_TIM' +
        'E) and'
      '          (em2.EMP_MOVEMENT_DATE_TIME <='
      '            em.EMP_MOVEMENT_DATE_TIME +'
      '            ( select'
      '                co.MAX_EMP_AVAIL_HOURS / 24'
      '              from'
      '                COMMON_OPTIONS co'
      '              where'
      '                (co.CODE = 1)'
      '            )'
      '          ) and'
      '          (em2.IN_OUT = -1) and'
      '          (em2.STORNO_EMPLOYEE_CODE is null) and'
      '          not exists('
      '            select'
      '              1'
      '            from'
      '              EMP_MOVEMENTS em3'
      '            where'
      '              (em3.EMPLOYEE_CODE = em.EMPLOYEE_CODE) and'
      
        '              (em3.EMP_MOVEMENT_DATE_TIME > em.EMP_MOVEMENT_DATE' +
        '_TIME) and'
      
        '              (em3.EMP_MOVEMENT_DATE_TIME < em2.EMP_MOVEMENT_DAT' +
        'E_TIME) and'
      '              (em3.STORNO_EMPLOYEE_CODE is null)'
      '          )'
      '      ),'
      '      ( select'
      '          1 - Sign(Count(*))'
      '        from'
      '          EMP_MOVEMENTS em2'
      '        where'
      '          (em2.EMPLOYEE_CODE = em.EMPLOYEE_CODE) and'
      
        '          (em2.EMP_MOVEMENT_DATE_TIME < em.EMP_MOVEMENT_DATE_TIM' +
        'E) and'
      '          (em2.EMP_MOVEMENT_DATE_TIME >='
      '            em.EMP_MOVEMENT_DATE_TIME -'
      '            ( select'
      '                co.MAX_EMP_AVAIL_HOURS / 24'
      '              from'
      '                COMMON_OPTIONS co'
      '              where'
      '                (co.CODE = 1)'
      '            )'
      '          ) and'
      '          (em2.IN_OUT = 1) and'
      '          (em2.STORNO_EMPLOYEE_CODE is null) and'
      '          not exists('
      '            select'
      '              1'
      '            from'
      '              EMP_MOVEMENTS em3'
      '            where'
      '              (em3.EMPLOYEE_CODE = em.EMPLOYEE_CODE) and'
      
        '              (em3.EMP_MOVEMENT_DATE_TIME < em.EMP_MOVEMENT_DATE' +
        '_TIME) and'
      
        '              (em3.EMP_MOVEMENT_DATE_TIME > em2.EMP_MOVEMENT_DAT' +
        'E_TIME) and'
      '              (em3.STORNO_EMPLOYEE_CODE is null)'
      '          )'
      '      )'
      '    )'
      '  ) as IS_UNMATCHED_MOVEMENT,'
      '  Nvl2(em.STORNO_EMPLOYEE_CODE, 1, 0) as IS_STORNO,'
      ''
      '  ( select'
      '      (e.FIRST_NAME ||'
      '        Nvl2(e.MIDDLE_NAME,'
      '          '#39' '#39' || Substr(e.MIDDLE_NAME, 1, 1) || '#39'. '#39','
      '          '#39' '#39') ||'
      '        e.LAST_NAME'
      '      ) as EMPLOYEE_NAME'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = em.CREATE_EMPLOYEE_CODE)'
      '  ) as CREATE_EMPLOYEE_NAME'
      ''
      'from'
      '  EMP_MOVEMENTS em'
      ''
      'where'
      '  (em.EMPLOYEE_CODE = :EMPLOYEE_CODE) and'
      
        '  (em.EMP_MOVEMENT_DATE_TIME between :WORKDAY_BEGIN_DATE_TIME an' +
        'd :WORKDAY_END_DATE_TIME)'
      ''
      ''
      ''
      'union all'
      ''
      ''
      ''
      'select'
      '  em.EMP_MOVEMENT_CODE,'
      '  em.EMPLOYEE_CODE,'
      '  em.IN_OUT,'
      '  em.EMP_MOVEMENT_DATE,'
      '  em.EMP_MOVEMENT_TIME,'
      '  em.EMP_MOVEMENT_DATE_TIME,'
      '  em.CREATE_EMPLOYEE_CODE,'
      '  em.CREATE_DATE,'
      '  em.CREATE_TIME,'
      '  em.STORNO_EMPLOYEE_CODE,'
      '  em.STORNO_DATE,'
      '  em.STORNO_TIME,'
      '  3 as RECORD_TYPE,'
      '  1 as FOR_OTHER_DATE,'
      '  Nvl2(em.STORNO_EMPLOYEE_CODE,'
      '    0,'
      '    Decode(em.IN_OUT,'
      '      1,'
      '      ( select'
      '          1 - Sign(Count(*))'
      '        from'
      '          EMP_MOVEMENTS em2'
      '        where'
      '          (em2.EMPLOYEE_CODE = em.EMPLOYEE_CODE) and'
      
        '          (em2.EMP_MOVEMENT_DATE_TIME > em.EMP_MOVEMENT_DATE_TIM' +
        'E) and'
      '          (em2.EMP_MOVEMENT_DATE_TIME <='
      '            em.EMP_MOVEMENT_DATE_TIME +'
      '            ( select'
      '                co.MAX_EMP_AVAIL_HOURS / 24'
      '              from'
      '                COMMON_OPTIONS co'
      '              where'
      '                (co.CODE = 1)'
      '            )'
      '          ) and'
      '          (em2.IN_OUT = -1) and'
      '          (em2.STORNO_EMPLOYEE_CODE is null) and'
      '          not exists('
      '            select'
      '              1'
      '            from'
      '              EMP_MOVEMENTS em3'
      '            where'
      '              (em3.EMPLOYEE_CODE = em.EMPLOYEE_CODE) and'
      
        '              (em3.EMP_MOVEMENT_DATE_TIME > em.EMP_MOVEMENT_DATE' +
        '_TIME) and'
      
        '              (em3.EMP_MOVEMENT_DATE_TIME < em2.EMP_MOVEMENT_DAT' +
        'E_TIME) and'
      '              (em3.STORNO_EMPLOYEE_CODE is null)'
      '          )'
      '      ),'
      '      ( select'
      '          1 - Sign(Count(*))'
      '        from'
      '          EMP_MOVEMENTS em2'
      '        where'
      '          (em2.EMPLOYEE_CODE = em.EMPLOYEE_CODE) and'
      
        '          (em2.EMP_MOVEMENT_DATE_TIME < em.EMP_MOVEMENT_DATE_TIM' +
        'E) and'
      '          (em2.EMP_MOVEMENT_DATE_TIME >='
      '            em.EMP_MOVEMENT_DATE_TIME -'
      '            ( select'
      '                co.MAX_EMP_AVAIL_HOURS / 24'
      '              from'
      '                COMMON_OPTIONS co'
      '              where'
      '                (co.CODE = 1)'
      '            )'
      '          ) and'
      '          (em2.IN_OUT = 1) and'
      '          (em2.STORNO_EMPLOYEE_CODE is null) and'
      '          not exists('
      '            select'
      '              1'
      '            from'
      '              EMP_MOVEMENTS em3'
      '            where'
      '              (em3.EMPLOYEE_CODE = em.EMPLOYEE_CODE) and'
      
        '              (em3.EMP_MOVEMENT_DATE_TIME < em.EMP_MOVEMENT_DATE' +
        '_TIME) and'
      
        '              (em3.EMP_MOVEMENT_DATE_TIME > em2.EMP_MOVEMENT_DAT' +
        'E_TIME) and'
      '              (em3.STORNO_EMPLOYEE_CODE is null)'
      '          )'
      '      )'
      '    )'
      '  ) as IS_UNMATCHED_MOVEMENT,'
      '  Nvl2(em.STORNO_EMPLOYEE_CODE, 1, 0) as IS_STORNO,'
      ''
      '  ( select'
      '      (e.FIRST_NAME ||'
      '        Nvl2(e.MIDDLE_NAME,'
      '          '#39' '#39' || Substr(e.MIDDLE_NAME, 1, 1) || '#39'. '#39','
      '          '#39' '#39') ||'
      '        e.LAST_NAME'
      '      ) as EMPLOYEE_NAME'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = em.CREATE_EMPLOYEE_CODE)'
      '  ) as CREATE_EMPLOYEE_NAME'
      ''
      'from'
      '  EMP_MOVEMENTS em'
      ''
      'where'
      '  (em.EMPLOYEE_CODE = :EMPLOYEE_CODE) and'
      '  (em.EMP_MOVEMENT_DATE_TIME > :WORKDAY_END_DATE_TIME) and'
      
        '  (em.EMP_MOVEMENT_DATE_TIME <= Cast(:WORKDAY_END_DATE_TIME as D' +
        'ate) + 1) and'
      '  (em.IN_OUT = -1) and'
      ''
      '  not exists('
      '    select'
      '      1'
      '    from'
      '      EMP_MOVEMENTS em2'
      '    where'
      '      (em2.EMPLOYEE_CODE = em.EMPLOYEE_CODE) and'
      
        '      (em2.EMP_MOVEMENT_DATE_TIME < em.EMP_MOVEMENT_DATE_TIME) a' +
        'nd'
      '      (em2.EMP_MOVEMENT_DATE_TIME > :WORKDAY_END_DATE_TIME) and'
      '      (em2.STORNO_EMPLOYEE_CODE is null)'
      '  )'
      ''
      ''
      'order by'
      '  IS_STORNO,'
      '  RECORD_TYPE,'
      '  EMP_MOVEMENT_DATE_TIME,'
      '  EMP_MOVEMENT_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'EMP_MOVEMENTS_FOR_EDIT'
    Left = 56
    Top = 152
    object qryEmpDateAvailMovementsEMP_MOVEMENT_CODE: TAbmesFloatField
      FieldName = 'EMP_MOVEMENT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEmpDateAvailMovementsEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object qryEmpDateAvailMovementsIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
    end
    object qryEmpDateAvailMovementsEMP_MOVEMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'EMP_MOVEMENT_DATE'
    end
    object qryEmpDateAvailMovementsEMP_MOVEMENT_TIME: TAbmesSQLTimeStampField
      FieldName = 'EMP_MOVEMENT_TIME'
    end
    object qryEmpDateAvailMovementsEMP_MOVEMENT_DATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'EMP_MOVEMENT_DATE_TIME'
      ProviderFlags = []
    end
    object qryEmpDateAvailMovementsCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryEmpDateAvailMovementsCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryEmpDateAvailMovementsCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryEmpDateAvailMovementsSTORNO_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'STORNO_EMPLOYEE_CODE'
    end
    object qryEmpDateAvailMovementsSTORNO_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORNO_DATE'
    end
    object qryEmpDateAvailMovementsSTORNO_TIME: TAbmesSQLTimeStampField
      FieldName = 'STORNO_TIME'
    end
    object qryEmpDateAvailMovementsRECORD_TYPE: TAbmesFloatField
      FieldName = 'RECORD_TYPE'
      ProviderFlags = []
    end
    object qryEmpDateAvailMovementsFOR_OTHER_DATE: TAbmesFloatField
      FieldName = 'FOR_OTHER_DATE'
    end
    object qryEmpDateAvailMovementsIS_UNMATCHED_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_UNMATCHED_MOVEMENT'
      ProviderFlags = []
    end
    object qryEmpDateAvailMovementsIS_STORNO: TAbmesFloatField
      FieldName = 'IS_STORNO'
      ProviderFlags = []
    end
    object qryEmpDateAvailMovementsCREATE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'CREATE_EMPLOYEE_NAME'
      ProviderFlags = []
      Size = 44
    end
  end
  object dsEmpDateAvail: TDataSource
    DataSet = qryEmpDateAvail
    Left = 56
    Top = 104
  end
  object qryEmpDateAvailModifiers: TAbmesSQLQuery
    DataSource = dsEmpDateAvail
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'WORKDAY_BEGIN_DATE_TIME'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftTimeStamp
        Name = 'WORKDAY_BEGIN_DATE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'WORKDAY_END_DATE_TIME'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftTimeStamp
        Name = 'WORKDAY_BEGIN_DATE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'WORKDAY_BEGIN_DATE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'WORKDAY_END_DATE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'WORKDAY_BEGIN_DATE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'WORKDAY_END_DATE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'WORKDAY_END_DATE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'WORKDAY_END_DATE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'WORKDAY_BEGIN_DATE_TIME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  eam.EMP_AVAIL_MODIFIER_CODE,'
      '  eam.EMPLOYEE_CODE,'
      '  eam.AUTHORIZE_EMPLOYEE_CODE,'
      '  eam.BEGIN_DATE,'
      '  eam.END_DATE,'
      '  eam.EMP_AVAIL_MODIFIER_TYPE_CODE,'
      '  eam.EMP_HOUR_AVAIL_MOD_REASON_CODE,'
      '  eam.BEGIN_TIME,'
      '  eam.END_TIME,'
      '  eam.DURATION_HOURS,'
      '  eam.IS_PERSONAL_WORKDAYS_ONLY,'
      '  eam.EMP_DAY_ABSENCE_REASON_CODE,'
      '  eam.EMP_DAY_ABSENCE_DOC_TYPE_CODE,'
      '  eam.EMP_DAY_ABSENCE_DOC_NO,'
      '  eam.EMP_DAY_ABSENCE_DOC_DATE,'
      '  eam.EMP_DAY_ABSENCE_DOC_ISSUER,'
      '  eam.NOTES,'
      '  eam.DOC_BRANCH_CODE,'
      '  eam.DOC_CODE,'
      '  %HAS_DOC_ITEMS[eam] as HAS_DOC_ITEMS,'
      '  eam.CREATE_EMPLOYEE_CODE,'
      '  eam.CREATE_DATE,'
      '  eam.CREATE_TIME,'
      '  eam.STORNO_EMPLOYEE_CODE,'
      '  eam.STORNO_DATE,'
      '  eam.STORNO_TIME,'
      '  Nvl2(eam.STORNO_EMPLOYEE_CODE, 1, 0) as IS_STORNO,'
      '  Nvl2(eam.STORNO_EMPLOYEE_CODE, 0, 1) as IS_NOT_STORNO,'
      '  eam.OLD_SHIFT_CODE,'
      '  eam.NEW_SHIFT_CODE,'
      ''
      '  ( select'
      '      (e.FIRST_NAME ||'
      '        Nvl2(e.MIDDLE_NAME,'
      '          '#39' '#39' || Substr(e.MIDDLE_NAME, 1, 1) || '#39'. '#39','
      '          '#39' '#39') ||'
      '        e.LAST_NAME'
      '      ) as EMPLOYEE_NAME'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = eam.AUTHORIZE_EMPLOYEE_CODE)'
      '  ) as AUTHORIZE_EMPLOYEE_NAME'
      ''
      'from'
      '  EMP_AVAIL_MODIFIERS eam'
      ''
      'where'
      '  (eam.EMPLOYEE_CODE = :EMPLOYEE_CODE) and'
      ''
      '  (eam.BEGIN_DATE <= Cast(:THE_DATE as Date)+1) and'
      '  (eam.END_DATE >= Cast(:THE_DATE as Date)-1) and'
      ''
      '  ( ( (eam.EMP_DAY_ABSENCE_REASON_CODE is null) and'
      
        '      (Trunc(Cast(:WORKDAY_BEGIN_DATE_TIME as Date)) between eam' +
        '.BEGIN_DATE and eam.END_DATE) and'
      '      ( DateTimeUtils.TimePeriodIntersectLength('
      '          :WORKDAY_BEGIN_DATE_TIME,'
      '          :WORKDAY_END_DATE_TIME,'
      
        '          DateTimeUtils.IncTime(Trunc(Cast(:WORKDAY_BEGIN_DATE_T' +
        'IME as Date)), eam.BEGIN_TIME),'
      
        '          DateTimeUtils.IncTime(Trunc(Cast(:WORKDAY_BEGIN_DATE_T' +
        'IME as Date)), eam.END_TIME)'
      '        ) > 0'
      '      )'
      '    ) or'
      '    ( (eam.EMP_DAY_ABSENCE_REASON_CODE is null) and'
      
        '      (Trunc(Cast(:WORKDAY_END_DATE_TIME as Date)) between eam.B' +
        'EGIN_DATE and eam.END_DATE) and'
      '      ( DateTimeUtils.TimePeriodIntersectLength('
      '          :WORKDAY_BEGIN_DATE_TIME,'
      '          :WORKDAY_END_DATE_TIME,'
      
        '          DateTimeUtils.IncTime(Trunc(Cast(:WORKDAY_END_DATE_TIM' +
        'E as Date)), eam.BEGIN_TIME),'
      
        '          DateTimeUtils.IncTime(Trunc(Cast(:WORKDAY_END_DATE_TIM' +
        'E as Date)), eam.END_TIME)'
      '        ) > 0'
      '      )'
      '    ) or'
      '    ( ( (eam.EMP_DAY_ABSENCE_REASON_CODE is not null) or'
      '        (eam.NEW_SHIFT_CODE is not null) ) and'
      
        '      (Trunc(Cast(:WORKDAY_BEGIN_DATE_TIME as Date)) between eam' +
        '.BEGIN_DATE and eam.END_DATE)'
      '    ) '
      '  )'
      ''
      'order by'
      '  IS_STORNO,'
      '  EMP_AVAIL_MODIFIER_CODE'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[eam]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'EMP_AVAIL_MODIFIERS_FOR_EDIT'
    Left = 56
    Top = 200
    object qryEmpDateAvailModifiersEMP_AVAIL_MODIFIER_CODE: TAbmesFloatField
      FieldName = 'EMP_AVAIL_MODIFIER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEmpDateAvailModifiersEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object qryEmpDateAvailModifiersAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'AUTHORIZE_EMPLOYEE_CODE'
    end
    object qryEmpDateAvailModifiersBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object qryEmpDateAvailModifiersEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object qryEmpDateAvailModifiersEMP_AVAIL_MODIFIER_TYPE_CODE: TAbmesFloatField
      FieldName = 'EMP_AVAIL_MODIFIER_TYPE_CODE'
    end
    object qryEmpDateAvailModifiersEMP_HOUR_AVAIL_MOD_REASON_CODE: TAbmesFloatField
      FieldName = 'EMP_HOUR_AVAIL_MOD_REASON_CODE'
    end
    object qryEmpDateAvailModifiersBEGIN_TIME: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_TIME'
    end
    object qryEmpDateAvailModifiersEND_TIME: TAbmesSQLTimeStampField
      FieldName = 'END_TIME'
    end
    object qryEmpDateAvailModifiersDURATION_HOURS: TAbmesFloatField
      FieldName = 'DURATION_HOURS'
    end
    object qryEmpDateAvailModifiersIS_PERSONAL_WORKDAYS_ONLY: TAbmesFloatField
      FieldName = 'IS_PERSONAL_WORKDAYS_ONLY'
    end
    object qryEmpDateAvailModifiersEMP_DAY_ABSENCE_REASON_CODE: TAbmesFloatField
      FieldName = 'EMP_DAY_ABSENCE_REASON_CODE'
    end
    object qryEmpDateAvailModifiersEMP_DAY_ABSENCE_DOC_TYPE_CODE: TAbmesFloatField
      FieldName = 'EMP_DAY_ABSENCE_DOC_TYPE_CODE'
    end
    object qryEmpDateAvailModifiersEMP_DAY_ABSENCE_DOC_NO: TAbmesWideStringField
      FieldName = 'EMP_DAY_ABSENCE_DOC_NO'
      Size = 50
    end
    object qryEmpDateAvailModifiersEMP_DAY_ABSENCE_DOC_DATE: TAbmesSQLTimeStampField
      FieldName = 'EMP_DAY_ABSENCE_DOC_DATE'
    end
    object qryEmpDateAvailModifiersEMP_DAY_ABSENCE_DOC_ISSUER: TAbmesWideStringField
      FieldName = 'EMP_DAY_ABSENCE_DOC_ISSUER'
      Size = 100
    end
    object qryEmpDateAvailModifiersNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryEmpDateAvailModifiersDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryEmpDateAvailModifiersDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryEmpDateAvailModifiersHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryEmpDateAvailModifiersCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryEmpDateAvailModifiersCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryEmpDateAvailModifiersCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryEmpDateAvailModifiersSTORNO_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'STORNO_EMPLOYEE_CODE'
    end
    object qryEmpDateAvailModifiersSTORNO_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORNO_DATE'
    end
    object qryEmpDateAvailModifiersSTORNO_TIME: TAbmesSQLTimeStampField
      FieldName = 'STORNO_TIME'
    end
    object qryEmpDateAvailModifiersIS_STORNO: TAbmesFloatField
      FieldName = 'IS_STORNO'
      ProviderFlags = []
    end
    object qryEmpDateAvailModifiersIS_NOT_STORNO: TAbmesFloatField
      FieldName = 'IS_NOT_STORNO'
      ProviderFlags = []
    end
    object qryEmpDateAvailModifiersOLD_SHIFT_CODE: TAbmesFloatField
      FieldName = 'OLD_SHIFT_CODE'
    end
    object qryEmpDateAvailModifiersNEW_SHIFT_CODE: TAbmesFloatField
      FieldName = 'NEW_SHIFT_CODE'
    end
    object qryEmpDateAvailModifiersAUTHORIZE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'AUTHORIZE_EMPLOYEE_NAME'
      ProviderFlags = []
      Size = 44
    end
  end
  object qryNewEmpMovementCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_EMP_MOVEMENTS.NextVal as NEW_EMP_MOVEMENT_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 56
    Top = 264
    object qryNewEmpMovementCodeNEW_EMP_MOVEMENT_CODE: TAbmesFloatField
      FieldName = 'NEW_EMP_MOVEMENT_CODE'
    end
  end
  object prvEmpDayAbsenceReasons: TDataSetProvider
    DataSet = qryEmpDayAbsenceReasons
    Options = [poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvEmpDayAbsenceReasonsBeforeUpdateRecord
    Left = 224
    Top = 8
  end
  object qryEmpDayAbsenceReasons: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  edar.EMP_DAY_ABSENCE_REASON_CODE,'
      '  edar.EMP_DAY_ABSENCE_REASON_NAME,'
      '  edar.EMP_DAY_ABSENCE_REASON_ABBREV'
      ''
      'from'
      '  EMP_DAY_ABSENCE_REASONS edar'
      ''
      'order by'
      '  edar.EMP_DAY_ABSENCE_REASON_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 224
    Top = 56
    object qryEmpDayAbsenceReasonsEMP_DAY_ABSENCE_REASON_CODE: TAbmesFloatField
      FieldName = 'EMP_DAY_ABSENCE_REASON_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEmpDayAbsenceReasonsEMP_DAY_ABSENCE_REASON_NAME: TAbmesWideStringField
      FieldName = 'EMP_DAY_ABSENCE_REASON_NAME'
      Size = 100
    end
    object qryEmpDayAbsenceReasonsEMP_DAY_ABSENCE_REASON_ABBREV: TAbmesWideStringField
      FieldName = 'EMP_DAY_ABSENCE_REASON_ABBREV'
      Size = 100
    end
  end
  object dsEmpDayAbsenceReasons: TDataSource
    DataSet = qryEmpDayAbsenceReasons
    Left = 224
    Top = 104
  end
  object qryEmpDayAbsenceDocTypes: TAbmesSQLQuery
    DataSource = dsEmpDayAbsenceReasons
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EMP_DAY_ABSENCE_REASON_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  edadt.EMP_DAY_ABSENCE_REASON_CODE,'
      '  edadt.EMP_DAY_ABSENCE_DOC_TYPE_CODE,'
      '  edadt.EMP_DAY_ABSENCE_DOC_TYPE_NAME'
      ''
      'from'
      '  EMP_DAY_ABSENCE_DOC_TYPES edadt'
      ''
      'where'
      
        '  (edadt.EMP_DAY_ABSENCE_REASON_CODE = :EMP_DAY_ABSENCE_REASON_C' +
        'ODE)'
      ''
      'order by'
      '  edadt.EMP_DAY_ABSENCE_DOC_TYPE_NAME')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 224
    Top = 152
    object qryEmpDayAbsenceDocTypesEMP_DAY_ABSENCE_REASON_CODE: TAbmesFloatField
      FieldName = 'EMP_DAY_ABSENCE_REASON_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEmpDayAbsenceDocTypesEMP_DAY_ABSENCE_DOC_TYPE_CODE: TAbmesFloatField
      FieldName = 'EMP_DAY_ABSENCE_DOC_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEmpDayAbsenceDocTypesEMP_DAY_ABSENCE_DOC_TYPE_NAME: TAbmesWideStringField
      FieldName = 'EMP_DAY_ABSENCE_DOC_TYPE_NAME'
      Size = 50
    end
  end
  object qryNewEmpDayAbsenceDocTypeCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      
        '  seq_EMP_DAY_ABSENCE_DOC_TYPES.NextVal as NEW_EMP_DAY_ABSENCE_D' +
        '_T_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 224
    Top = 200
    object qryNewEmpDayAbsenceDocTypeCodeNEW_EMP_DAY_ABSENCE_D_T_CODE: TAbmesFloatField
      FieldName = 'NEW_EMP_DAY_ABSENCE_D_T_CODE'
    end
  end
  object prvEmpHourAvailModReasons: TDataSetProvider
    DataSet = qryEmpHourAvailModReasons
    Options = [poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvEmpHourAvailModReasonsBeforeUpdateRecord
    Left = 408
    Top = 8
  end
  object qryEmpHourAvailModReasons: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select '
      '  ehamd.EMP_HOUR_AVAIL_MOD_REASON_CODE,'
      '  ehamd.EMP_HOUR_AVAIL_MOD_REASON_NAME'
      '  '
      'from '
      '  EMP_HOUR_AVAIL_MOD_REASONS ehamd'
      '  '
      'order by'
      '  ehamd.EMP_HOUR_AVAIL_MOD_REASON_NAME')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 408
    Top = 56
    object qryEmpHourAvailModReasonsEMP_HOUR_AVAIL_MOD_REASON_CODE: TAbmesFloatField
      FieldName = 'EMP_HOUR_AVAIL_MOD_REASON_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEmpHourAvailModReasonsEMP_HOUR_AVAIL_MOD_REASON_NAME: TAbmesWideStringField
      FieldName = 'EMP_HOUR_AVAIL_MOD_REASON_NAME'
      Size = 50
    end
  end
  object qryNewEmpHourAvailModReasonCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      
        '  seq_EMP_HOUR_AVAIL_MOD_REASONS.NextVal as NEW_EMP_HOUR_AVAIL_M' +
        '_R_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 408
    Top = 104
    object qryNewEmpHourAvailModReasonCodeNEW_EMP_HOUR_AVAIL_M_R_CODE: TAbmesFloatField
      FieldName = 'NEW_EMP_HOUR_AVAIL_M_R_CODE'
    end
  end
  object prvEmpAvailModifierTypes: TDataSetProvider
    DataSet = qryEmpAvailModifierTypes
    Left = 496
    Top = 168
  end
  object qryEmpAvailModifierTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  eamt.EMP_AVAIL_MODIFIER_TYPE_CODE,'
      '  eamt.EMP_AVAIL_MODIFIER_TYPE_NAME,'
      '  eamt.EMP_AVAIL_MODIFIER_TYPE_ABBREV'
      ''
      'from'
      '  EMP_AVAIL_MODIFIER_TYPES eamt'
      '  '
      'order by'
      '  eamt.EMP_AVAIL_MODIFIER_TYPE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 496
    Top = 216
    object qryEmpAvailModifierTypesEMP_AVAIL_MODIFIER_TYPE_CODE: TAbmesFloatField
      FieldName = 'EMP_AVAIL_MODIFIER_TYPE_CODE'
    end
    object qryEmpAvailModifierTypesEMP_AVAIL_MODIFIER_TYPE_NAME: TAbmesWideStringField
      FieldName = 'EMP_AVAIL_MODIFIER_TYPE_NAME'
      Size = 100
    end
    object qryEmpAvailModifierTypesEMP_AVAIL_MODIFIER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'EMP_AVAIL_MODIFIER_TYPE_ABBREV'
      Size = 100
    end
  end
  object qryCalcShiftCycleBreaks: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  scb.SHIFT_CYCLE_BREAK_CODE,'
      '  scb.SHIFT_CYCLE_CODE,'
      '  scb.BREAK_BEGIN_TIME,'
      '  scb.BREAK_END_TIME,'
      '  scb.BREAK_DURATION_HOURS'
      ''
      'from'
      '  SHIFT_CYCLES sc,'
      '  SHIFT_CYCLE_BREAKS scb'
      ''
      'where'
      '  (sc.SHIFT_CYCLE_CODE = scb.SHIFT_CYCLE_CODE) and'
      ''
      '  (sc.IS_WORK_CYCLE = 1) and'
      '  (sc.WORKDAY_BEGIN_TIME is not null) and'
      '  (sc.WORKDAY_END_TIME is not null) and'
      ''
      '  (exists'
      '    ( select'
      '        1'
      '      from'
      '        DATE_SHIFT_CYCLES dsc'
      '      where'
      '        (dsc.SHIFT_CYCLE_CODE = sc.SHIFT_CYCLE_CODE) and'
      '        (dsc.THE_DATE between :BEGIN_DATE and :END_DATE)'
      '    )'
      '  )'
      ''
      'order by'
      '  sc.SHIFT_CYCLE_CODE,'
      '  scb.BREAK_BEGIN_TIME'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 728
    Top = 104
    object qryCalcShiftCycleBreaksSHIFT_CYCLE_BREAK_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CYCLE_BREAK_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCalcShiftCycleBreaksSHIFT_CYCLE_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CYCLE_CODE'
    end
    object qryCalcShiftCycleBreaksBREAK_BEGIN_TIME: TAbmesSQLTimeStampField
      FieldName = 'BREAK_BEGIN_TIME'
    end
    object qryCalcShiftCycleBreaksBREAK_END_TIME: TAbmesSQLTimeStampField
      FieldName = 'BREAK_END_TIME'
    end
    object qryCalcShiftCycleBreaksBREAK_DURATION_HOURS: TAbmesFloatField
      FieldName = 'BREAK_DURATION_HOURS'
    end
  end
  object qryCalcShiftCycles: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  sc.SHIFT_CYCLE_CODE,'
      '  sc.WORKDAY_BEGIN_TIME,'
      '  sc.WORKDAY_END_TIME,'
      '  sc.WORKDAY_DURATION_HOURS,'
      '  ( select'
      '      str.IS_OVERTIME'
      '    from'
      '      SHIFT_TIMED_REGIMES str'
      '    where'
      '      (str.SHIFT_TIMED_REGIME_CODE = sc.SHIFT_TIMED_REGIME_CODE)'
      '  ) as IS_OVERTIME'
      ''
      'from'
      '  SHIFT_CYCLES sc'
      ''
      'where'
      '  (sc.IS_WORK_CYCLE = 1) and'
      '  (sc.WORKDAY_BEGIN_TIME is not null) and'
      '  (sc.WORKDAY_END_TIME is not null) and'
      ''
      '  (exists'
      '    ( select'
      '        1'
      '      from'
      '        DATE_SHIFT_CYCLES dsc'
      '      where'
      '        (dsc.SHIFT_CYCLE_CODE = sc.SHIFT_CYCLE_CODE) and'
      '        (dsc.THE_DATE between :BEGIN_DATE and :END_DATE)'
      '    )'
      '  )'
      ''
      'order by'
      '  sc.SHIFT_CYCLE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 728
    Top = 56
    object qryCalcShiftCyclesSHIFT_CYCLE_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CYCLE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCalcShiftCyclesWORKDAY_BEGIN_TIME: TAbmesSQLTimeStampField
      FieldName = 'WORKDAY_BEGIN_TIME'
    end
    object qryCalcShiftCyclesWORKDAY_END_TIME: TAbmesSQLTimeStampField
      FieldName = 'WORKDAY_END_TIME'
    end
    object qryCalcShiftCyclesWORKDAY_DURATION_HOURS: TAbmesFloatField
      FieldName = 'WORKDAY_DURATION_HOURS'
    end
    object qryCalcShiftCyclesIS_OVERTIME: TAbmesFloatField
      FieldName = 'IS_OVERTIME'
      FieldValueType = fvtBoolean
    end
  end
  object qryCalcEmployeeShiftCycles: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  /*+ ORDERED */'
      '  oe.EMPLOYEE_CODE,'
      '  dsc.THE_DATE,'
      '  dsc.SHIFT_CYCLE_CODE,'
      '  Max(os.AFFECTS_EMP_AVAILABILITY) as AFFECTS_EMP_AVAILABILITY'
      ''
      'from'
      '  TEMP_AVAILABILITY_EMPLOYEES tae,'
      '  OCCUPATION_EMPLOYEES oe,'
      '  THE_DATES td,'
      '  OCCUPATION_SHIFTS os,'
      '  DATE_SHIFT_CYCLES dsc,'
      '  SHIFT_CYCLES sc'
      ''
      'where'
      '  (tae.EMPLOYEE_CODE = oe.EMPLOYEE_CODE) and'
      '  '
      '  (oe.ASSIGNMENT_BEGIN_DATE <= :END_DATE) and'
      ''
      '  (oe.ASSIGNMENT_END_DATE >= :BEGIN_DATE) and'
      ''
      '  (td.THE_DATE between :BEGIN_DATE and :END_DATE) and'
      ''
      
        '  (td.THE_DATE between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIGNMEN' +
        'T_END_DATE) and'
      ''
      '  (td.THE_DATE between os.BEGIN_DATE and os.END_DATE) and'
      ''
      '  (oe.OCCUPATION_CODE = os.OCCUPATION_CODE) and'
      ''
      '  (dsc.THE_DATE = td.THE_DATE) and'
      '  '
      '  (dsc.SHIFT_CYCLE_CODE = sc.SHIFT_CYCLE_CODE) and '
      '  '
      '  (sc.IS_WORK_CYCLE = 1) and'
      '  (sc.WORKDAY_BEGIN_TIME is not null) and'
      '  (sc.WORKDAY_END_TIME is not null) and'
      ''
      '  (dsc.SHIFT_CODE = '
      '    Coalesce('
      '      ( select'
      '          eam.NEW_SHIFT_CODE'
      '        from'
      '          EMP_AVAIL_MODIFIERS eam'
      '        where'
      '          (eam.EMPLOYEE_CODE = oe.EMPLOYEE_CODE) and'
      
        '          (td.THE_DATE between eam.BEGIN_DATE and eam.END_DATE) ' +
        'and'
      '          (eam.STORNO_EMPLOYEE_CODE is null) and'
      '          (eam.OLD_SHIFT_CODE = os.SHIFT_CODE)'
      '      ),'
      '      os.SHIFT_CODE'
      '    )'
      '  )'
      ''
      'group by'
      '  oe.EMPLOYEE_CODE,'
      '  dsc.THE_DATE,'
      '  dsc.SHIFT_CYCLE_CODE'
      ''
      'order by'
      '  oe.EMPLOYEE_CODE,'
      '  dsc.THE_DATE,'
      '  dsc.SHIFT_CYCLE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 728
    Top = 296
    object qryCalcEmployeeShiftCyclesEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCalcEmployeeShiftCyclesTHE_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_DATE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCalcEmployeeShiftCyclesSHIFT_CYCLE_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CYCLE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCalcEmployeeShiftCyclesAFFECTS_EMP_AVAILABILITY: TAbmesFloatField
      FieldName = 'AFFECTS_EMP_AVAILABILITY'
      FieldValueType = fvtBoolean
    end
  end
  object qryCalcEmployeeModifiers: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  eam.EMP_AVAIL_MODIFIER_CODE,'
      '  eam.EMPLOYEE_CODE,'
      '  td.THE_DATE,'
      '  eam.EMP_AVAIL_MODIFIER_TYPE_CODE,'
      '  eam.EMP_HOUR_AVAIL_MOD_REASON_CODE,'
      
        '  DateTimeUtils.IncTime(td.THE_DATE, eam.BEGIN_TIME) as BEGIN_DA' +
        'TE_TIME,'
      
        '  DateTimeUtils.IncTime(td.THE_DATE, eam.END_TIME) as END_DATE_T' +
        'IME,'
      '  eam.DURATION_HOURS,'
      '  eam.EMP_DAY_ABSENCE_REASON_CODE,'
      '  eam.EMP_DAY_ABSENCE_DOC_TYPE_CODE,'
      '  eam.OLD_SHIFT_CODE,'
      '  eam.NEW_SHIFT_CODE'
      ''
      'from'
      '  THE_DATES td,'
      '  EMP_AVAIL_MODIFIERS eam'
      ''
      'where'
      '  (td.THE_DATE between eam.BEGIN_DATE and eam.END_DATE) and'
      '  (td.THE_DATE between :BEGIN_DATE and :END_DATE) and'
      ''
      '  ( (eam.END_TIME is null) or'
      
        '    (Trunc(DateTimeUtils.IncTime(td.THE_DATE, eam.END_TIME)) <= ' +
        ':END_DATE)'
      '  ) and'
      ''
      '  (eam.STORNO_EMPLOYEE_CODE is null) and'
      ''
      '  ( (eam.IS_PERSONAL_WORKDAYS_ONLY = 0) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          OCCUPATIONS o,'
      '          OCCUPATION_EMPLOYEES oe,'
      '          OCCUPATION_SHIFTS os,'
      '          DATE_SHIFT_CYCLES dsc'
      '        where'
      '          (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      '          (o.OCCUPATION_CODE = os.OCCUPATION_CODE) and'
      '          (os.SHIFT_CODE = dsc.SHIFT_CODE) and'
      '          (dsc.THE_DATE = td.THE_DATE) and'
      '          (oe.EMPLOYEE_CODE = eam.EMPLOYEE_CODE) and'
      
        '          (td.THE_DATE between oe.ASSIGNMENT_BEGIN_DATE and oe.A' +
        'SSIGNMENT_END_DATE) and'
      '          (td.THE_DATE between os.BEGIN_DATE and os.END_DATE)'
      '      )'
      '    )'
      '  ) and'
      '  (exists'
      '    ( select'
      '        /*+ INDEX(tae) */'
      '        1'
      '      from'
      '        TEMP_AVAILABILITY_EMPLOYEES tae'
      '      where'
      '        (tae.EMPLOYEE_CODE = eam.EMPLOYEE_CODE)'
      '    )'
      '  )'
      ''
      'order by'
      '  eam.EMPLOYEE_CODE,'
      '  td.THE_DATE,'
      '  eam.EMP_AVAIL_MODIFIER_TYPE_CODE,'
      '  eam.BEGIN_TIME'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 728
    Top = 344
    object qryCalcEmployeeModifiersEMP_AVAIL_MODIFIER_CODE: TAbmesFloatField
      FieldName = 'EMP_AVAIL_MODIFIER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCalcEmployeeModifiersEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object qryCalcEmployeeModifiersTHE_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_DATE'
    end
    object qryCalcEmployeeModifiersEMP_AVAIL_MODIFIER_TYPE_CODE: TAbmesFloatField
      FieldName = 'EMP_AVAIL_MODIFIER_TYPE_CODE'
    end
    object qryCalcEmployeeModifiersEMP_HOUR_AVAIL_MOD_REASON_CODE: TAbmesFloatField
      FieldName = 'EMP_HOUR_AVAIL_MOD_REASON_CODE'
    end
    object qryCalcEmployeeModifiersBEGIN_DATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE_TIME'
    end
    object qryCalcEmployeeModifiersEND_DATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'END_DATE_TIME'
    end
    object qryCalcEmployeeModifiersDURATION_HOURS: TAbmesFloatField
      FieldName = 'DURATION_HOURS'
    end
    object qryCalcEmployeeModifiersEMP_DAY_ABSENCE_REASON_CODE: TAbmesFloatField
      FieldName = 'EMP_DAY_ABSENCE_REASON_CODE'
    end
    object qryCalcEmployeeModifiersEMP_DAY_ABSENCE_DOC_TYPE_CODE: TAbmesFloatField
      FieldName = 'EMP_DAY_ABSENCE_DOC_TYPE_CODE'
    end
    object qryCalcEmployeeModifiersOLD_SHIFT_CODE: TAbmesFloatField
      FieldName = 'OLD_SHIFT_CODE'
    end
    object qryCalcEmployeeModifiersNEW_SHIFT_CODE: TAbmesFloatField
      FieldName = 'NEW_SHIFT_CODE'
    end
  end
  object qryCalcEmployeeMovements: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  /*+ INDEX(em) LEADING(em) */'
      '  em.EMP_MOVEMENT_CODE,'
      '  em.EMPLOYEE_CODE,'
      '  em.EMP_MOVEMENT_DATE_TIME,'
      '  em.IN_OUT'
      'from'
      '  EMP_MOVEMENTS em'
      'where'
      
        '  (em.EMP_MOVEMENT_DATE between Trunc(:BEGIN_DATE) and Trunc(:EN' +
        'D_DATE)) and  -- Trunc() to make the optimizer not use parameter' +
        ' peeking'
      '  (em.STORNO_EMPLOYEE_CODE is null) and'
      '  (exists'
      '    ( select'
      '        1'
      '      from'
      '        TEMP_AVAILABILITY_EMPLOYEES tae'
      '      where'
      '        (tae.EMPLOYEE_CODE = em.EMPLOYEE_CODE)'
      '    )'
      '  )'
      'order by'
      '  em.EMPLOYEE_CODE,'
      '  em.EMP_MOVEMENT_DATE_TIME')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 728
    Top = 248
    object qryCalcEmployeeMovementsEMP_MOVEMENT_CODE: TAbmesFloatField
      FieldName = 'EMP_MOVEMENT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCalcEmployeeMovementsEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object qryCalcEmployeeMovementsEMP_MOVEMENT_DATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'EMP_MOVEMENT_DATE_TIME'
    end
    object qryCalcEmployeeMovementsIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
    end
  end
  object qryNewEmpAvailModifierCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_EMP_AVAIL_MODIFIERS.NextVal as NEW_EMP_AVAIL_MODIFIER_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 56
    Top = 312
    object qryNewEmpAvailModifierCodeNEW_EMP_AVAIL_MODIFIER_CODE: TAbmesFloatField
      FieldName = 'NEW_EMP_AVAIL_MODIFIER_CODE'
    end
  end
  object prvEmployeesAvailability: TDataSetProvider
    DataSet = cdsEmployeesAvailability
    OnGetData = prvEmployeesAvailabilityGetData
    BeforeGetRecords = prvEmployeesAvailabilityBeforeGetRecords
    AfterGetRecords = prvEmployeesAvailabilityAfterGetRecords
    Left = 224
    Top = 280
  end
  object qryEmployeesAvailability: TAbmesSQLQuery
    BeforeOpen = qryEmployeesAvailabilityBeforeOpen
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_DEPT_DESCENDANTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_DEPT_DESCENDANTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CRAFT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CRAFT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CRAFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CRAFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_DEPT_DESCENDANTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CRAFT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CRAFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  o.OCCUPATION_CODE,'
      ''
      '  ( select'
      
        '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) ' +
        'as DEPT_IDENTIFIER'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '      (d.DEPT_CODE = o.DEPT_CODE)'
      '  ) as OCCUPATION_DEPT_IDENTIFIER,'
      ''
      '  o.OCCUPATION_NAME,'
      '  o.OCCUPATION_LEVEL,'
      '  o.DOC_BRANCH_CODE as OCCUPATION_DOC_BRANCH_CODE,'
      '  o.DOC_CODE as OCCUPATION_DOC_CODE,'
      '  %HAS_DOC_ITEMS[o] as OCCUPATION_HAS_DOC_ITEMS,'
      ''
      '  ( select'
      '      s.SHIFT_ABBREV'
      '    from'
      '      OCCUPATION_SHIFTS os,'
      '      SHIFTS s'
      '    where'
      '      (os.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '      ( ( select'
      '            Greatest(Min(oe.ASSIGNMENT_BEGIN_DATE), :BEGIN_DATE)'
      '          from'
      '            OCCUPATION_EMPLOYEES oe'
      '          where'
      '            (oe.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '            (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '            (oe.ASSIGNMENT_BEGIN_DATE <= :END_DATE) and'
      '            (oe.ASSIGNMENT_END_DATE >= :BEGIN_DATE)'
      '        ) between os.BEGIN_DATE and os.END_DATE'
      '      ) and'
      '      (os.SHIFT_CODE = s.SHIFT_CODE)'
      '  ) as SHIFT_ABBREV,'
      ''
      '  ( select'
      '      crt.CRAFT_TYPE_NAME'
      '    from'
      '      CRAFT_TYPES crt'
      '    where'
      '      (crt.CRAFT_TYPE_CODE = cr.CRAFT_TYPE_CODE)'
      '  ) as CRAFT_TYPE_NAME,'
      ''
      '  cr.CRAFT_NAME,'
      ''
      '  e.EMPLOYEE_CODE,'
      '  ( select'
      '      c.COMPANY_NO'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = e.COMPANY_CODE)'
      '  ) as EMPLOYEE_NO,'
      '  ( e.FIRST_NAME ||'
      '    Nvl2(e.MIDDLE_NAME, '#39' '#39' || e.MIDDLE_NAME || '#39' '#39',  '#39' '#39') ||'
      '    e.LAST_NAME'
      '  ) as EMPLOYEE_NAME,'
      ''
      '  ( select'
      '      os.BASE_SALARY'
      '    from'
      '      OCCUPATION_SALARIES os'
      '    where'
      '      (os.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '      ( ( select'
      
        '            Greatest(Coalesce(Min(oe.ASSIGNMENT_BEGIN_DATE), Cas' +
        't(:BEGIN_DATE as Date)), Cast(:BEGIN_DATE as Date))'
      '          from'
      '            OCCUPATION_EMPLOYEES oe'
      '          where'
      '            (oe.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '            (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '            (oe.ASSIGNMENT_BEGIN_DATE <= :END_DATE) and'
      '            (oe.ASSIGNMENT_END_DATE >= :BEGIN_DATE)'
      '        ) between os.BEGIN_DATE and os.END_DATE'
      '      )'
      '  ) as BASE_SALARY,'
      ''
      '  ( select'
      '      ( select'
      '          tdu.THE_DATE_UNIT_NAME'
      '        from'
      '          THE_DATE_UNITS tdu'
      '        where'
      '          (tdu.THE_DATE_UNIT_CODE = os.DATE_UNIT_CODE)'
      '      ) as THE_DATE_UNIT_NAME'
      '    from'
      '      OCCUPATION_SALARIES os'
      '    where'
      '      (os.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '      ( ( select'
      '            Greatest(Min(oe.ASSIGNMENT_BEGIN_DATE), :BEGIN_DATE)'
      '          from'
      '            OCCUPATION_EMPLOYEES oe'
      '          where'
      '            (oe.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '            (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '            (oe.ASSIGNMENT_BEGIN_DATE <= :END_DATE) and'
      '            (oe.ASSIGNMENT_END_DATE >= :BEGIN_DATE)'
      '        ) between os.BEGIN_DATE and os.END_DATE'
      '      )'
      '  ) as BASE_SALARY_DATE_UNIT_NAME,'
      ''
      '  ( select'
      '      oe.SALARY'
      '    from'
      '      OCCUPATION_EMPLOYEES oe'
      '    where'
      '      (oe.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '      (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '      ( ( select'
      
        '            Greatest(Coalesce(Min(oe.ASSIGNMENT_BEGIN_DATE), Cas' +
        't(:BEGIN_DATE as Date)), Cast(:BEGIN_DATE as Date))'
      '          from'
      '            OCCUPATION_EMPLOYEES oe'
      '          where'
      '            (oe.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '            (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '            (oe.ASSIGNMENT_BEGIN_DATE <= :END_DATE) and'
      '            (oe.ASSIGNMENT_END_DATE >= :BEGIN_DATE)'
      
        '        ) between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIGNMENT_END' +
        '_DATE'
      '      )'
      '  ) as SALARY,'
      ''
      '  ( select'
      '      ( select'
      '          tdu.THE_DATE_UNIT_NAME'
      '        from'
      '          THE_DATE_UNITS tdu'
      '        where'
      '          (tdu.THE_DATE_UNIT_CODE = oe.SALARY_DATE_UNIT_CODE)'
      '      ) as THE_DATE_UNIT_NAME'
      '    from'
      '      OCCUPATION_EMPLOYEES oe'
      '    where'
      '      (oe.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '      (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '      ( ( select'
      
        '            Greatest(Coalesce(Min(oe.ASSIGNMENT_BEGIN_DATE), Cas' +
        't(:BEGIN_DATE as Date)), Cast(:BEGIN_DATE as Date))'
      '          from'
      '            OCCUPATION_EMPLOYEES oe'
      '          where'
      '            (oe.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '            (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '            (oe.ASSIGNMENT_BEGIN_DATE <= :END_DATE) and'
      '            (oe.ASSIGNMENT_END_DATE >= :BEGIN_DATE)'
      
        '        ) between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIGNMENT_END' +
        '_DATE'
      '      )'
      '  ) as SALARY_DATE_UNIT_NAME,'
      ''
      '  ( select'
      '      os.MIN_SALARY_RATIO_COEF'
      '    from'
      '      OCCUPATION_SALARIES os'
      '    where'
      '      (os.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '      ( ( select'
      
        '            Greatest(Coalesce(Min(oe.ASSIGNMENT_BEGIN_DATE), Cas' +
        't(:BEGIN_DATE as Date)), Cast(:BEGIN_DATE as Date))'
      '          from'
      '            OCCUPATION_EMPLOYEES oe'
      '          where'
      '            (oe.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '            (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '            (oe.ASSIGNMENT_BEGIN_DATE <= :END_DATE) and'
      '            (oe.ASSIGNMENT_END_DATE >= :BEGIN_DATE)'
      '        ) between os.BEGIN_DATE and os.END_DATE'
      '      )'
      '  ) as MIN_SALARY_RATIO_COEF,'
      ''
      '  ( select'
      '      os.MAX_SALARY_RATIO_COEF'
      '    from'
      '      OCCUPATION_SALARIES os'
      '    where'
      '      (os.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '      ( ( select'
      
        '            Greatest(Coalesce(Min(oe.ASSIGNMENT_BEGIN_DATE), Cas' +
        't(:BEGIN_DATE as Date)), Cast(:BEGIN_DATE as Date))'
      '          from'
      '            OCCUPATION_EMPLOYEES oe'
      '          where'
      '            (oe.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '            (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '            (oe.ASSIGNMENT_BEGIN_DATE <= :END_DATE) and'
      '            (oe.ASSIGNMENT_END_DATE >= :BEGIN_DATE)'
      '        ) between os.BEGIN_DATE and os.END_DATE'
      '      )'
      '  ) as MAX_SALARY_RATIO_COEF,'
      ''
      '  NullIf('
      '    ( select'
      '        /*+ INDEX(ede pkEMPLOYEE_DISCIPLINE_EVENTS) */'
      '        Sum(det.DISC_EVENT_TYPE_SIGN * detp.RATING)'
      '      from'
      '        EMPLOYEE_DISCIPLINE_EVENTS ede,'
      '        DISC_EVENT_TYPES det,'
      '        DISC_EVENT_TYPE_PERIODS detp'
      '      where'
      '        (ede.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      
        '        (ede.DISC_EVENT_TYPE_CODE = det.DISC_EVENT_TYPE_CODE) an' +
        'd'
      
        '        (det.DISC_EVENT_TYPE_CODE = detp.DISC_EVENT_TYPE_CODE) a' +
        'nd'
      '        (ede.STORNO_EMPLOYEE_CODE is null) and'
      '        (ede.DISCIPLINE_EVENT_STATE_CODE = 1) and'
      '        (det.DISC_EVENT_TYPE_SIGN < 0) and'
      
        '        (ede.DISCIPLINE_EVENT_DATE between detp.BEGIN_DATE and d' +
        'etp.END_DATE) and'
      
        '        (DateTimeUtils.IncDateByTimeUnits(ede.DISCIPLINE_EVENT_D' +
        'ATE-1, detp.ACTIVE_DATE_UNIT_CODE, detp.ACTIVE_DATE_UNIT_COUNT) ' +
        '>= ContextDate)'
      '    ),'
      '    0'
      '  ) as NEGATIVE_DISCIPLINE_RATING,'
      ''
      '  NullIf('
      '    ( select'
      '        /*+ INDEX(ede pkEMPLOYEE_DISCIPLINE_EVENTS) */'
      '        Sum(det.DISC_EVENT_TYPE_SIGN * detp.RATING)'
      '      from'
      '        EMPLOYEE_DISCIPLINE_EVENTS ede,'
      '        DISC_EVENT_TYPES det,'
      '        DISC_EVENT_TYPE_PERIODS detp'
      '      where'
      '        (ede.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      
        '        (ede.DISC_EVENT_TYPE_CODE = det.DISC_EVENT_TYPE_CODE) an' +
        'd'
      
        '        (det.DISC_EVENT_TYPE_CODE = detp.DISC_EVENT_TYPE_CODE) a' +
        'nd'
      '        (ede.STORNO_EMPLOYEE_CODE is null) and'
      '        (ede.DISCIPLINE_EVENT_STATE_CODE = 1) and'
      '        (det.DISC_EVENT_TYPE_SIGN > 0) and'
      
        '        (ede.DISCIPLINE_EVENT_DATE between detp.BEGIN_DATE and d' +
        'etp.END_DATE) and'
      
        '        (DateTimeUtils.IncDateByTimeUnits(ede.DISCIPLINE_EVENT_D' +
        'ATE-1, detp.ACTIVE_DATE_UNIT_CODE, detp.ACTIVE_DATE_UNIT_COUNT) ' +
        '>= ContextDate)'
      '    ),'
      '    0'
      '  ) as POSITIVE_DISCIPLINE_RATING'
      ''
      'from'
      '  EMPLOYEES e,'
      '  OCCUPATIONS o,'
      '  CRAFTS cr'
      ''
      'where'
      '  exists('
      '    select'
      '      1'
      '    from'
      '      TEMP_AVAILABILITY_EMPLOYEES tae'
      '    where'
      '      (tae.EMPLOYEE_CODE = e.EMPLOYEE_CODE)'
      '  ) and'
      ''
      '  exists('
      '    select'
      '      1'
      '    from'
      '      OCCUPATION_EMPLOYEES oe'
      '    where'
      '      (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '      (oe.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '      (oe.ASSIGNMENT_BEGIN_DATE <= :END_DATE) and'
      '      (oe.ASSIGNMENT_END_DATE >= :BEGIN_DATE)'
      '  ) and'
      '                                              '
      '  (o.CRAFT_CODE = cr.CRAFT_CODE(+)) and'
      ''
      '  (o.IS_MAIN = 1) and'
      ''
      '  ( (:INCLUDE_DEPT_DESCENDANTS <> 2) and'
      '    ( (:OCCUPATION_DEPT_CODE = %TREE_ROOT_CODE) or'
      '      exists('
      '        select'
      '          1'
      '        from'
      '          DEPT_RELATIONS dr'
      '        where'
      '          (dr.ANCESTOR_DEPT_CODE = :OCCUPATION_DEPT_CODE) and'
      '          (dr.DESCENDANT_DEPT_CODE = o.DEPT_CODE) and'
      '          ( (:INCLUDE_DEPT_DESCENDANTS = 1) or'
      '            (dr.ANCESTOR_DEPT_CODE = dr.DESCENDANT_DEPT_CODE) )'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:SHIFT_CODE is null) or'
      '    exists('
      '      select'
      '        1'
      '      from'
      '        OCCUPATION_SHIFTS os'
      '      where'
      '        (os.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '        ( ( select'
      
        '              Greatest(Min(oe.ASSIGNMENT_BEGIN_DATE), :BEGIN_DAT' +
        'E)'
      '            from'
      '              OCCUPATION_EMPLOYEES oe'
      '            where'
      '              (oe.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '              (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '              (oe.ASSIGNMENT_BEGIN_DATE <= :END_DATE) and'
      '              (oe.ASSIGNMENT_END_DATE >= :BEGIN_DATE)'
      '          ) between os.BEGIN_DATE and os.END_DATE'
      '        ) and'
      '        (os.SHIFT_CODE = :SHIFT_CODE)'
      '    )'
      '  ) and'
      ''
      '  ( (:CRAFT_TYPE_CODE is null) or'
      '    (cr.CRAFT_TYPE_CODE = :CRAFT_TYPE_CODE) ) and'
      ''
      '  ( (:CRAFT_CODE is null) or'
      '    (o.CRAFT_CODE = :CRAFT_CODE) ) and'
      ''
      '  ( (:IS_EXTERNAL is null) or'
      '    exists('
      '      select'
      '        1'
      '      from'
      '        COMPANIES c'
      '      where'
      '        (c.COMPANY_CODE = e.COMPANY_CODE) and'
      '        (c.IS_EXTERNAL = :IS_EXTERNAL)'
      '    )'
      '  )'
      ''
      ''
      '--------------'
      'union all'
      '--------------'
      ''
      ''
      'select'
      '  0 as OCCUPATION_CODE,'
      '  Cast(null as Varchar2(46 char)) as OCCUPATION_DEPT_IDENTIFIER,'
      '  Cast(null as Varchar2(50 char)) as OCCUPATION_NAME,'
      '  To_Number(null) as OCCUPATION_LEVEL,'
      '  To_Number(null) as OCCUPATION_DOC_BRANCH_CODE,'
      '  To_Number(null) as OCCUPATION_DOC_CODE,'
      '  To_Number(null) as OCCUPATION_HAS_DOC_ITEMS,'
      '  Cast(null as Varchar2(5 char)) as SHIFT_ABBREV,'
      '  Cast(null as Varchar2(50 char)) as CRAFT_TYPE_NAME,'
      '  Cast(null as Varchar2(50 char)) as CRAFT_NAME,'
      ''
      '  e.EMPLOYEE_CODE,'
      '  ( select'
      '      c.COMPANY_NO'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = e.COMPANY_CODE)'
      '  ) as EMPLOYEE_NO,'
      '  ( e.FIRST_NAME ||'
      '    Nvl2(e.MIDDLE_NAME,'
      '      '#39' '#39' || Substr(e.MIDDLE_NAME, 1, 1) || '#39'. '#39','
      '      '#39' '#39') ||'
      '    e.LAST_NAME'
      '  ) as EMPLOYEE_NAME,'
      ''
      '  To_Number(null) as BASE_SALARY,'
      '  Cast(null as Varchar2(50 char)) as BASE_SALARY_DATE_UNIT_NAME,'
      '  To_Number(null) as SALARY,'
      '  Cast(null as Varchar2(50 char)) as SALARY_DATE_UNIT_NAME,'
      '  To_Number(null) as MIN_SALARY_RATIO_COEF,'
      '  To_Number(null) as MAX_SALARY_RATIO_COEF,'
      '  To_Number(null) as NEGATIVE_DISCIPLINE_RATING,'
      '  To_Number(null) as POSITIVE_DISCIPLINE_RATING'
      ''
      'from'
      '  EMPLOYEES e'
      ''
      'where'
      '  exists('
      '    select'
      '      1'
      '    from'
      '      TEMP_AVAILABILITY_EMPLOYEES tae'
      '    where'
      '      (tae.EMPLOYEE_CODE = e.EMPLOYEE_CODE)'
      '  ) and'
      ''
      '  ( (:INCLUDE_DEPT_DESCENDANTS = 2) or'
      '    (:OCCUPATION_DEPT_CODE = %TREE_ROOT_CODE) ) and'
      ''
      '  (:SHIFT_CODE is null) and'
      '  (:CRAFT_TYPE_CODE is null) and'
      '  (:CRAFT_CODE is null) and'
      '  (:IS_EXTERNAL is null) and'
      ''
      '  ( ( select'
      
        '        Coalesce(Sum(Least(oe.ASSIGNMENT_END_DATE, :END_DATE) - ' +
        'Greatest(oe.ASSIGNMENT_BEGIN_DATE, :BEGIN_DATE) + 1), 0)'
      '      from'
      '        OCCUPATION_EMPLOYEES oe,'
      '        OCCUPATIONS o'
      '      where'
      '        (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '        (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      '        (oe.ASSIGNMENT_BEGIN_DATE <= :END_DATE) and'
      '        (oe.ASSIGNMENT_END_DATE >= :BEGIN_DATE) and'
      '        (o.IS_MAIN = 1)'
      
        '    ) <> (Cast(:END_DATE as Date) - Cast(:BEGIN_DATE as Date) + ' +
        '1)'
      '  ) '
      ''
      ''
      '-- naredbata e vajna, taka vurvi po dataset-a'
      'order by'
      '  EMPLOYEE_CODE,'
      '  OCCUPATION_CODE')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[o]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'TREE_ROOT_CODE'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 224
    Top = 376
    object qryEmployeesAvailabilityOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
    end
    object qryEmployeesAvailabilityOCCUPATION_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'OCCUPATION_DEPT_IDENTIFIER'
      Size = 46
    end
    object qryEmployeesAvailabilityOCCUPATION_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_NAME'
      Size = 50
    end
    object qryEmployeesAvailabilityOCCUPATION_LEVEL: TAbmesFloatField
      FieldName = 'OCCUPATION_LEVEL'
    end
    object qryEmployeesAvailabilityOCCUPATION_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_DOC_BRANCH_CODE'
    end
    object qryEmployeesAvailabilityOCCUPATION_DOC_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_DOC_CODE'
    end
    object qryEmployeesAvailabilityOCCUPATION_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'OCCUPATION_HAS_DOC_ITEMS'
    end
    object qryEmployeesAvailabilitySHIFT_ABBREV: TAbmesWideStringField
      FieldName = 'SHIFT_ABBREV'
      Size = 5
    end
    object qryEmployeesAvailabilityCRAFT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'CRAFT_TYPE_NAME'
      Size = 50
    end
    object qryEmployeesAvailabilityCRAFT_NAME: TAbmesWideStringField
      FieldName = 'CRAFT_NAME'
      Size = 50
    end
    object qryEmployeesAvailabilityEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object qryEmployeesAvailabilityEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
    end
    object qryEmployeesAvailabilityEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      Size = 62
    end
    object qryEmployeesAvailabilityBASE_SALARY: TAbmesFloatField
      FieldName = 'BASE_SALARY'
    end
    object qryEmployeesAvailabilityBASE_SALARY_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'BASE_SALARY_DATE_UNIT_NAME'
      Size = 50
    end
    object qryEmployeesAvailabilitySALARY: TAbmesFloatField
      FieldName = 'SALARY'
    end
    object qryEmployeesAvailabilitySALARY_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'SALARY_DATE_UNIT_NAME'
      Size = 50
    end
    object qryEmployeesAvailabilityMIN_SALARY_RATIO_COEF: TAbmesFloatField
      FieldName = 'MIN_SALARY_RATIO_COEF'
    end
    object qryEmployeesAvailabilityMAX_SALARY_RATIO_COEF: TAbmesFloatField
      FieldName = 'MAX_SALARY_RATIO_COEF'
    end
    object qryEmployeesAvailabilityNEGATIVE_DISCIPLINE_RATING: TAbmesFloatField
      FieldName = 'NEGATIVE_DISCIPLINE_RATING'
    end
    object qryEmployeesAvailabilityPOSITIVE_DISCIPLINE_RATING: TAbmesFloatField
      FieldName = 'POSITIVE_DISCIPLINE_RATING'
    end
  end
  object qryFillEmployeesAvailabilityTempEmployees: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_DEPT_DESCENDANTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_DEPT_DESCENDANTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CRAFT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CRAFT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CRAFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CRAFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_DEPT_DESCENDANTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CRAFT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CRAFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FILTER_EMP_AVAIL_MODIFIERS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FILTER_EMP_AVAIL_MODIFIERS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMP_DAY_ABSENCE_REASON_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EMP_DAY_ABSENCE_CONFIRMED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EMP_DAY_ABSENCE_CONFIRMED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FILTER_EMP_AVAIL_MODIFIERS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMP_DAY_ABSENCE_REASON_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMP_DAY_ABSENCE_REASON_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EMP_DAY_ABSENCE_CONFIRMED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EMP_DAY_ABSENCE_CONFIRMED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FILTER_EMP_AVAIL_MODIFIERS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMP_AVAIL_MODIFIER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMP_AVAIL_MODIFIER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMP_HOUR_AVAIL_MOD_REASON_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMP_HOUR_AVAIL_MOD_REASON_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FILTER_EMP_AVAIL_MODIFIERS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMP_HOUR_AVAIL_MOD_REASON_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMP_HOUR_AVAIL_MOD_REASON_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NEW_SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NEW_SHIFT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert /*+ APPEND */ into TEMP_AVAILABILITY_EMPLOYEES'
      '('
      '  EMPLOYEE_CODE'
      ')'
      ''
      'select'
      '  e.EMPLOYEE_CODE'
      ''
      'from'
      '  EMPLOYEES e'
      ''
      'where'
      '  ( (:EMPLOYEE_CODE is null) or'
      '    (e.EMPLOYEE_CODE = :EMPLOYEE_CODE) ) and'
      ''
      '  ( exists('
      '      select'
      '        1'
      '      from'
      '        OCCUPATION_EMPLOYEES oe,'
      '        OCCUPATIONS o,'
      '        CRAFTS cr'
      ''
      '      where'
      '        (e.EMPLOYEE_CODE = oe.EMPLOYEE_CODE) and'
      ''
      '        (oe.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      ''
      '        (o.CRAFT_CODE = cr.CRAFT_CODE(+)) and'
      ''
      '        (oe.ASSIGNMENT_BEGIN_DATE <= :END_DATE) and'
      '        (oe.ASSIGNMENT_END_DATE >= :BEGIN_DATE) and'
      ''
      '        (o.IS_MAIN = 1) and'
      ''
      '        ( (:INCLUDE_DEPT_DESCENDANTS <> 2) and'
      '          ( (:OCCUPATION_DEPT_CODE = %TREE_ROOT_CODE) or'
      '            exists('
      '              select'
      '                1'
      '              from'
      '                DEPT_RELATIONS dr'
      '              where'
      
        '                (dr.ANCESTOR_DEPT_CODE = :OCCUPATION_DEPT_CODE) ' +
        'and'
      '                (dr.DESCENDANT_DEPT_CODE = o.DEPT_CODE) and'
      '                ( (:INCLUDE_DEPT_DESCENDANTS = 1) or'
      
        '                  (dr.ANCESTOR_DEPT_CODE = dr.DESCENDANT_DEPT_CO' +
        'DE) )'
      '            )'
      '          )'
      '        ) and'
      ''
      '        ( (:SHIFT_CODE is null) or'
      '          exists('
      '            select'
      '              1'
      '            from'
      '              OCCUPATION_SHIFTS os'
      '            where'
      '              (os.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      
        '              (:BEGIN_DATE between os.BEGIN_DATE and os.END_DATE' +
        ') and'
      '              (os.SHIFT_CODE = :SHIFT_CODE)'
      '          )'
      '        ) and'
      ''
      '        ( (:CRAFT_TYPE_CODE is null) or'
      '          (cr.CRAFT_TYPE_CODE = :CRAFT_TYPE_CODE) ) and'
      ''
      '        ( (:CRAFT_CODE is null) or'
      '          (o.CRAFT_CODE = :CRAFT_CODE) ) and'
      ''
      '        ( (:IS_EXTERNAL is null) or'
      '          exists('
      '            select'
      '              1'
      '            from'
      '              COMPANIES c'
      '            where'
      '              (c.COMPANY_CODE = e.COMPANY_CODE) and'
      '              (c.IS_EXTERNAL = :IS_EXTERNAL)'
      '          )'
      '        )'
      '    ) or'
      ''
      '    ( ( (:INCLUDE_DEPT_DESCENDANTS = 2) or'
      '        (:OCCUPATION_DEPT_CODE = %TREE_ROOT_CODE) ) and'
      ''
      '      (:SHIFT_CODE is null) and'
      '      (:CRAFT_TYPE_CODE is null) and'
      '      (:CRAFT_CODE is null) and'
      '      (:IS_EXTERNAL is null) and'
      ''
      '      ( ( select'
      
        '            Coalesce(Sum(Least(oe.ASSIGNMENT_END_DATE, :END_DATE' +
        ') - Greatest(oe.ASSIGNMENT_BEGIN_DATE, :BEGIN_DATE) + 1), 0)'
      '          from'
      '            OCCUPATION_EMPLOYEES oe,'
      '            OCCUPATIONS o'
      '          where'
      '            (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '            (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      '            (oe.ASSIGNMENT_BEGIN_DATE <= :END_DATE) and'
      '            (oe.ASSIGNMENT_END_DATE >= :BEGIN_DATE) and'
      '            (o.IS_MAIN = 1)'
      
        '        ) <> (Cast(:END_DATE as Date) - Cast(:BEGIN_DATE as Date' +
        ') + 1)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  -- filter po modifikatori'
      '  ( (:FILTER_EMP_AVAIL_MODIFIERS is null) or'
      ''
      
        '    ( (:FILTER_EMP_AVAIL_MODIFIERS = 1) and -- nepotvurdeni samo' +
        'otluchki ne mojem da filtrirame tuk, a chrez calculator-a'
      '      (:EMP_DAY_ABSENCE_REASON_CODE = 1) and'
      '      ( (:IS_EMP_DAY_ABSENCE_CONFIRMED is null) or'
      '        (:IS_EMP_DAY_ABSENCE_CONFIRMED = 0) )'
      '    ) or'
      ''
      '    exists('
      '      select'
      '        1'
      '      from'
      '        EMP_AVAIL_MODIFIERS eam'
      '      where'
      '        (eam.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '        (eam.STORNO_EMPLOYEE_CODE is null) and'
      ''
      '        ( ( (:FILTER_EMP_AVAIL_MODIFIERS = 1) and  -- celodnevni'
      '            (eam.EMP_AVAIL_MODIFIER_TYPE_CODE = 1) and'
      '            (eam.END_DATE >= Cast(:BEGIN_DATE as Date)) and'
      '            (eam.BEGIN_DATE <= Cast(:END_DATE as Date)) and'
      '            ( (:EMP_DAY_ABSENCE_REASON_CODE is null) or'
      
        '              (eam.EMP_DAY_ABSENCE_REASON_CODE = :EMP_DAY_ABSENC' +
        'E_REASON_CODE) ) and'
      '            ( (:IS_EMP_DAY_ABSENCE_CONFIRMED is null) or'
      
        '              (Nvl2(eam.EMP_DAY_ABSENCE_DOC_TYPE_CODE, 1, 0) = :' +
        'IS_EMP_DAY_ABSENCE_CONFIRMED) )'
      '          ) or'
      ''
      '          ( (:FILTER_EMP_AVAIL_MODIFIERS = 2) and -- chastichni'
      
        '            (eam.EMP_AVAIL_MODIFIER_TYPE_CODE between 2 and 6) a' +
        'nd'
      '            (eam.END_DATE >= Cast(:BEGIN_DATE as Date)-1) and'
      '            (eam.BEGIN_DATE <= Cast(:END_DATE as Date)+1) and'
      '            ( (:EMP_AVAIL_MODIFIER_TYPE_CODE is null) or'
      
        '              (eam.EMP_AVAIL_MODIFIER_TYPE_CODE = :EMP_AVAIL_MOD' +
        'IFIER_TYPE_CODE) ) and'
      '            ( (:EMP_HOUR_AVAIL_MOD_REASON_CODE is null) or'
      
        '              (eam.EMP_HOUR_AVAIL_MOD_REASON_CODE = :EMP_HOUR_AV' +
        'AIL_MOD_REASON_CODE) )'
      '          ) or'
      ''
      
        '          ( (:FILTER_EMP_AVAIL_MODIFIERS = 3) and -- zamiana na ' +
        'smiana'
      '            (eam.EMP_AVAIL_MODIFIER_TYPE_CODE = 7) and'
      '            (eam.END_DATE >= Cast(:BEGIN_DATE as Date)-1) and'
      '            (eam.BEGIN_DATE <= Cast(:END_DATE as Date)+1) and'
      '            ( (:EMP_HOUR_AVAIL_MOD_REASON_CODE is null) or'
      
        '              (eam.EMP_HOUR_AVAIL_MOD_REASON_CODE = :EMP_HOUR_AV' +
        'AIL_MOD_REASON_CODE) ) and'
      '            ( (:OLD_SHIFT_CODE is null) or'
      '              (eam.OLD_SHIFT_CODE = :OLD_SHIFT_CODE) ) and'
      '            ( (:NEW_SHIFT_CODE is null) or'
      '              (eam.NEW_SHIFT_CODE = :NEW_SHIFT_CODE) )'
      '          )'
      '        ) and'
      ''
      '        exists('
      '          select'
      '            1'
      '          from'
      '            OCCUPATION_EMPLOYEES oe'
      '          where'
      '            (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '            (oe.ASSIGNMENT_BEGIN_DATE <= eam.END_DATE) and'
      '            (oe.ASSIGNMENT_END_DATE >= eam.BEGIN_DATE)'
      '        )'
      '    )'
      '  )'
      ''
      'order by'
      '  EMPLOYEE_CODE')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'TREE_ROOT_CODE'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 224
    Top = 424
  end
  object cdsEmployeesAvailability: TAbmesClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_DEPT_DESCENDANTS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CRAFT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CRAFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FILTER_EMP_AVAIL_MODIFIERS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMP_DAY_ABSENCE_REASON_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EMP_DAY_ABSENCE_CONFIRMED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMP_AVAIL_MODIFIER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMP_HOUR_AVAIL_MOD_REASON_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_UNMATCHED_MOVEMENTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NEW_SHIFT_CODE'
        ParamType = ptInput
      end>
    Left = 224
    Top = 328
  end
  object qryCalcDates: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  d.THE_DATE,'
      '  Sign(d.OFFICIAL_WORKDAYS) as IS_WORKDAY  '
      'from'
      '  THE_DATES d'
      'where'
      '  (d.THE_DATE between :BEGIN_DATE and :END_DATE)'
      'order by'
      '  d.THE_DATE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 728
    Top = 8
    object qryCalcDatesTHE_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_DATE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCalcDatesIS_WORKDAY: TAbmesFloatField
      FieldName = 'IS_WORKDAY'
      FieldValueType = fvtBoolean
    end
  end
  object cdsEmployeePresenceDeviation: TAbmesClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_NEGATIVE_DEV'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_POSITIVE_DEV'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_APPROVED_EXTRA_WORK_DEV'
        ParamType = ptInput
        Value = '1'
      end>
    Left = 576
    Top = 344
    object cdsEmployeePresenceDeviationTHE_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_DATE'
    end
    object cdsEmployeePresenceDeviationTIME_CORRECTION_TYPE_CODE: TAbmesFloatField
      FieldName = 'TIME_CORRECTION_TYPE_CODE'
    end
    object cdsEmployeePresenceDeviationDURATION: TAbmesFloatField
      FieldName = 'DURATION'
    end
  end
  object prvEmployeePresenceDeviation: TDataSetProvider
    DataSet = cdsEmployeePresenceDeviation
    OnGetData = prvEmployeePresenceDeviationGetData
    BeforeGetRecords = prvEmployeePresenceDeviationBeforeGetRecords
    AfterGetRecords = prvEmployeePresenceDeviationAfterGetRecords
    Left = 576
    Top = 296
  end
  object prvEmployeeDateShiftCycles: TDataSetProvider
    DataSet = qryEmployeeDateShiftCycles
    Left = 56
    Top = 408
  end
  object qryEmployeeDateShiftCycles: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  sc.SHIFT_CYCLE_CODE,'
      '  sc.WORKDAY_BEGIN_TIME,'
      '  sc.WORKDAY_END_TIME,'
      '  sc.WORKDAY_DURATION_HOURS,'
      '  Max(os.AFFECTS_EMP_AVAILABILITY) as AFFECTS_EMP_AVAILABILITY,'
      '  '
      '  ( select'
      '      s.SHIFT_ABBREV'
      '    from'
      '      SHIFTS s'
      '    where'
      '      (s.SHIFT_CODE = dsc.SHIFT_CODE)'
      '  ) as SHIFT_ABBREV,'
      '  '
      '  ( select'
      '      str.IS_OVERTIME'
      '    from'
      '      SHIFT_TIMED_REGIMES str'
      '    where'
      '      (str.SHIFT_TIMED_REGIME_CODE = sc.SHIFT_TIMED_REGIME_CODE)'
      '  ) as IS_OVERTIME'
      ''
      'from'
      '  OCCUPATION_EMPLOYEES oe,'
      '  OCCUPATIONS o,'
      '  OCCUPATION_SHIFTS os,'
      '  DATE_SHIFT_CYCLES dsc,'
      '  SHIFT_CYCLES sc'
      '  '
      'where'
      '  (oe.EMPLOYEE_CODE = :EMPLOYEE_CODE) and'
      
        '  (:THE_DATE between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIGNMENT_' +
        'END_DATE) and'
      '  '
      '  (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      '  '
      '  (os.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '  (:THE_DATE between os.BEGIN_DATE and os.END_DATE) and'
      '  '
      '  (dsc.THE_DATE = :THE_DATE) and'
      '  (dsc.SHIFT_CODE = '
      '    Coalesce('
      '      ( select'
      '          eam.NEW_SHIFT_CODE'
      '        from'
      '          EMP_AVAIL_MODIFIERS eam'
      '        where'
      '          (eam.EMPLOYEE_CODE = :EMPLOYEE_CODE) and'
      
        '          (:THE_DATE between eam.BEGIN_DATE and eam.END_DATE) an' +
        'd'
      '          (eam.STORNO_EMPLOYEE_CODE is null) and'
      '          (eam.OLD_SHIFT_CODE = os.SHIFT_CODE)'
      '      ),'
      '      os.SHIFT_CODE'
      '    )'
      '  ) and'
      '  '
      '  (sc.SHIFT_CYCLE_CODE = dsc.SHIFT_CYCLE_CODE)'
      '  '
      'group by'
      '  sc.SHIFT_CYCLE_CODE,'
      '  sc.WORKDAY_BEGIN_TIME,'
      '  sc.WORKDAY_END_TIME,'
      '  sc.WORKDAY_DURATION_HOURS,'
      '  dsc.SHIFT_CODE,'
      '  sc.SHIFT_TIMED_REGIME_CODE'
      ''
      'order by'
      '  sc.SHIFT_CYCLE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 56
    Top = 456
    object qryEmployeeDateShiftCyclesSHIFT_CYCLE_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CYCLE_CODE'
    end
    object qryEmployeeDateShiftCyclesWORKDAY_BEGIN_TIME: TAbmesSQLTimeStampField
      FieldName = 'WORKDAY_BEGIN_TIME'
    end
    object qryEmployeeDateShiftCyclesWORKDAY_END_TIME: TAbmesSQLTimeStampField
      FieldName = 'WORKDAY_END_TIME'
    end
    object qryEmployeeDateShiftCyclesWORKDAY_DURATION_HOURS: TAbmesFloatField
      FieldName = 'WORKDAY_DURATION_HOURS'
    end
    object qryEmployeeDateShiftCyclesAFFECTS_EMP_AVAILABILITY: TAbmesFloatField
      FieldName = 'AFFECTS_EMP_AVAILABILITY'
    end
    object qryEmployeeDateShiftCyclesSHIFT_ABBREV: TAbmesWideStringField
      FieldName = 'SHIFT_ABBREV'
      Size = 5
    end
    object qryEmployeeDateShiftCyclesIS_OVERTIME: TAbmesFloatField
      FieldName = 'IS_OVERTIME'
    end
  end
  object prvEmployeesTotalAvailability: TDataSetProvider
    DataSet = cdsEmployeesTotalAvailability
    BeforeGetRecords = prvEmployeesTotalAvailabilityBeforeGetRecords
    AfterGetRecords = prvEmployeesTotalAvailabilityAfterGetRecords
    Left = 408
    Top = 280
  end
  object cdsEmployeesTotalAvailability: TAbmesClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_DEPT_DESCENDANTS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'GROUPING_TYPE'
        ParamType = ptInput
        Value = '2'
      end>
    Left = 407
    Top = 328
    object cdsEmployeesTotalAvailabilityEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object cdsEmployeesTotalAvailabilityEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      Size = 62
    end
    object cdsEmployeesTotalAvailabilityEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
    end
    object cdsEmployeesTotalAvailabilityOCCUPATION_DEPT_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_DEPT_CODE'
    end
    object cdsEmployeesTotalAvailabilityOCCUPATION_DEPT_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_DEPT_NAME'
      Size = 100
    end
    object cdsEmployeesTotalAvailabilityOCCUPATION_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'OCCUPATION_DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsEmployeesTotalAvailabilityCRAFT_TYPE_CODE: TAbmesFloatField
      FieldName = 'CRAFT_TYPE_CODE'
    end
    object cdsEmployeesTotalAvailabilityCRAFT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'CRAFT_TYPE_NAME'
      Size = 50
    end
    object cdsEmployeesTotalAvailabilityEMPLOYEE_COUNT_AT_BEGIN_DATE: TAbmesFloatField
      FieldName = 'EMPLOYEE_COUNT_AT_BEGIN_DATE'
    end
    object cdsEmployeesTotalAvailabilityEMPLOYEE_COUNT_AT_END_DATE: TAbmesFloatField
      FieldName = 'EMPLOYEE_COUNT_AT_END_DATE'
    end
    object cdsEmployeesTotalAvailabilityOFFICIAL_PRESENCE_DAYS: TAbmesFloatField
      Tag = 1
      FieldName = 'OFFICIAL_PRESENCE_DAYS'
    end
    object cdsEmployeesTotalAvailabilityOFFICIAL_ABSENCE_DAYS_1: TAbmesFloatField
      Tag = 1
      FieldName = 'OFFICIAL_ABSENCE_DAYS_1'
    end
    object cdsEmployeesTotalAvailabilityOFFICIAL_ABSENCE_DAYS_2: TAbmesFloatField
      Tag = 1
      FieldName = 'OFFICIAL_ABSENCE_DAYS_2'
    end
    object cdsEmployeesTotalAvailabilityOFFICIAL_ABSENCE_DAYS_3: TAbmesFloatField
      Tag = 1
      FieldName = 'OFFICIAL_ABSENCE_DAYS_3'
    end
    object cdsEmployeesTotalAvailabilityOFFICIAL_ABSENCE_DAYS_4: TAbmesFloatField
      Tag = 1
      FieldName = 'OFFICIAL_ABSENCE_DAYS_4'
    end
    object cdsEmployeesTotalAvailabilityOFFICIAL_ABSENCE_DAYS_5: TAbmesFloatField
      Tag = 1
      FieldName = 'OFFICIAL_ABSENCE_DAYS_5'
    end
    object cdsEmployeesTotalAvailabilityOFFICIAL_ABSENCE_DAYS_6: TAbmesFloatField
      Tag = 1
      FieldName = 'OFFICIAL_ABSENCE_DAYS_6'
    end
    object cdsEmployeesTotalAvailabilityOFFICIAL_DAYS_OFF: TAbmesFloatField
      Tag = 1
      FieldName = 'OFFICIAL_DAYS_OFF'
    end
    object cdsEmployeesTotalAvailabilityOFFICIAL_TOTAL_DAYS: TAbmesFloatField
      Tag = 1
      FieldName = 'OFFICIAL_TOTAL_DAYS'
    end
    object cdsEmployeesTotalAvailabilityOFFICIAL_PRESENCE_HOURS: TAbmesFloatField
      Tag = 1
      FieldName = 'OFFICIAL_PRESENCE_HOURS'
    end
    object cdsEmployeesTotalAvailabilityOFFICIAL_APP_OVERTIME_HOURS: TAbmesFloatField
      Tag = 1
      FieldName = 'OFFICIAL_APP_OVERTIME_HOURS'
    end
    object cdsEmployeesTotalAvailabilityOFFICIAL_UNAPP_OVERTIME_HOURS: TAbmesFloatField
      Tag = 1
      FieldName = 'OFFICIAL_UNAPP_OVERTIME_HOURS'
    end
    object cdsEmployeesTotalAvailabilityOFFICIAL_OFFTIME_PRESENCE_HRS: TAbmesFloatField
      Tag = 1
      FieldName = 'OFFICIAL_OFFTIME_PRESENCE_HRS'
    end
    object cdsEmployeesTotalAvailabilityOFFICIAL_UNAPP_ABSENCE_HOURS: TAbmesFloatField
      Tag = 1
      FieldName = 'OFFICIAL_UNAPP_ABSENCE_HOURS'
    end
    object cdsEmployeesTotalAvailabilityREAL_T_PRESENCE_DAYS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_T_PRESENCE_DAYS'
    end
    object cdsEmployeesTotalAvailabilityREAL_T_ABSENCE_DAYS_1: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_T_ABSENCE_DAYS_1'
    end
    object cdsEmployeesTotalAvailabilityREAL_T_ABSENCE_DAYS_2: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_T_ABSENCE_DAYS_2'
    end
    object cdsEmployeesTotalAvailabilityREAL_T_ABSENCE_DAYS_3: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_T_ABSENCE_DAYS_3'
    end
    object cdsEmployeesTotalAvailabilityREAL_T_ABSENCE_DAYS_4: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_T_ABSENCE_DAYS_4'
    end
    object cdsEmployeesTotalAvailabilityREAL_T_ABSENCE_DAYS_5: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_T_ABSENCE_DAYS_5'
    end
    object cdsEmployeesTotalAvailabilityREAL_T_ABSENCE_DAYS_6: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_T_ABSENCE_DAYS_6'
    end
    object cdsEmployeesTotalAvailabilityREAL_T_DAYS_OFF: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_T_DAYS_OFF'
    end
    object cdsEmployeesTotalAvailabilityREAL_T_TOTAL_DAYS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_T_TOTAL_DAYS'
    end
    object cdsEmployeesTotalAvailabilityREAL_T_PRESENCE_HOURS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_T_PRESENCE_HOURS'
    end
    object cdsEmployeesTotalAvailabilityREAL_T_APP_OVERTIME_HOURS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_T_APP_OVERTIME_HOURS'
    end
    object cdsEmployeesTotalAvailabilityREAL_T_UNAPP_OVERTIME_HOURS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_T_UNAPP_OVERTIME_HOURS'
    end
    object cdsEmployeesTotalAvailabilityREAL_T_OFFTIME_PRESENCE_HRS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_T_OFFTIME_PRESENCE_HRS'
    end
    object cdsEmployeesTotalAvailabilityREAL_T_UNAPP_ABSENCE_HOURS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_T_UNAPP_ABSENCE_HOURS'
    end
    object cdsEmployeesTotalAvailabilityREAL_W_PRESENCE_DAYS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_W_PRESENCE_DAYS'
    end
    object cdsEmployeesTotalAvailabilityREAL_W_ABSENCE_DAYS_1: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_W_ABSENCE_DAYS_1'
    end
    object cdsEmployeesTotalAvailabilityREAL_W_ABSENCE_DAYS_2: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_W_ABSENCE_DAYS_2'
    end
    object cdsEmployeesTotalAvailabilityREAL_W_ABSENCE_DAYS_3: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_W_ABSENCE_DAYS_3'
    end
    object cdsEmployeesTotalAvailabilityREAL_W_ABSENCE_DAYS_4: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_W_ABSENCE_DAYS_4'
    end
    object cdsEmployeesTotalAvailabilityREAL_W_ABSENCE_DAYS_5: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_W_ABSENCE_DAYS_5'
    end
    object cdsEmployeesTotalAvailabilityREAL_W_ABSENCE_DAYS_6: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_W_ABSENCE_DAYS_6'
    end
    object cdsEmployeesTotalAvailabilityREAL_W_DAYS_OFF: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_W_DAYS_OFF'
    end
    object cdsEmployeesTotalAvailabilityREAL_W_TOTAL_DAYS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_W_TOTAL_DAYS'
    end
    object cdsEmployeesTotalAvailabilityREAL_W_PRESENCE_HOURS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_W_PRESENCE_HOURS'
    end
    object cdsEmployeesTotalAvailabilityREAL_W_APP_OVERTIME_HOURS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_W_APP_OVERTIME_HOURS'
    end
    object cdsEmployeesTotalAvailabilityREAL_W_UNAPP_OVERTIME_HOURS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_W_UNAPP_OVERTIME_HOURS'
    end
    object cdsEmployeesTotalAvailabilityREAL_W_OFFTIME_PRESENCE_HRS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_W_OFFTIME_PRESENCE_HRS'
    end
    object cdsEmployeesTotalAvailabilityREAL_W_UNAPP_ABSENCE_HOURS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_W_UNAPP_ABSENCE_HOURS'
    end
    object cdsEmployeesTotalAvailabilityREAL_O_PRESENCE_DAYS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_O_PRESENCE_DAYS'
    end
    object cdsEmployeesTotalAvailabilityREAL_O_ABSENCE_DAYS_1: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_O_ABSENCE_DAYS_1'
    end
    object cdsEmployeesTotalAvailabilityREAL_O_ABSENCE_DAYS_2: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_O_ABSENCE_DAYS_2'
    end
    object cdsEmployeesTotalAvailabilityREAL_O_ABSENCE_DAYS_3: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_O_ABSENCE_DAYS_3'
    end
    object cdsEmployeesTotalAvailabilityREAL_O_ABSENCE_DAYS_4: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_O_ABSENCE_DAYS_4'
    end
    object cdsEmployeesTotalAvailabilityREAL_O_ABSENCE_DAYS_5: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_O_ABSENCE_DAYS_5'
    end
    object cdsEmployeesTotalAvailabilityREAL_O_ABSENCE_DAYS_6: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_O_ABSENCE_DAYS_6'
    end
    object cdsEmployeesTotalAvailabilityREAL_O_DAYS_OFF: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_O_DAYS_OFF'
    end
    object cdsEmployeesTotalAvailabilityREAL_O_TOTAL_DAYS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_O_TOTAL_DAYS'
    end
    object cdsEmployeesTotalAvailabilityREAL_O_PRESENCE_HOURS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_O_PRESENCE_HOURS'
    end
    object cdsEmployeesTotalAvailabilityREAL_O_APP_OVERTIME_HOURS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_O_APP_OVERTIME_HOURS'
    end
    object cdsEmployeesTotalAvailabilityREAL_O_UNAPP_OVERTIME_HOURS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_O_UNAPP_OVERTIME_HOURS'
    end
    object cdsEmployeesTotalAvailabilityREAL_O_OFFTIME_PRESENCE_HRS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_O_OFFTIME_PRESENCE_HRS'
    end
    object cdsEmployeesTotalAvailabilityREAL_O_UNAPP_ABSENCE_HOURS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_O_UNAPP_ABSENCE_HOURS'
    end
  end
  object prvETAEmployees: TDataSetProvider
    DataSet = qryETAEmployees
    Left = 408
    Top = 424
  end
  object cdsETAEmployees: TAbmesClientDataSet
    Aggregates = <
      item
        GroupingLevel = 1
        Visible = False
      end>
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EMPLOYEE_NAME'
        DataType = ftWideString
        Size = 62
      end
      item
        Name = 'EMPLOYEE_NO'
        DataType = ftFloat
      end
      item
        Name = 'OCCUPATION_CODE'
        DataType = ftFloat
      end
      item
        Name = 'OCCUPATION_DEPT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'OCCUPATION_DEPT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'OCCUPATION_DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'CRAFT_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CRAFT_TYPE_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'IS_ASSIGNED_AT_BEGIN_DATE'
        DataType = ftFloat
      end
      item
        Name = 'IS_ASSIGNED_AT_END_DATE'
        DataType = ftFloat
      end
      item
        Name = 'OFFICIAL_PRESENCE_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'OFFICIAL_ABSENCE_DAYS_1'
        DataType = ftFloat
      end
      item
        Name = 'OFFICIAL_ABSENCE_DAYS_2'
        DataType = ftFloat
      end
      item
        Name = 'OFFICIAL_ABSENCE_DAYS_3'
        DataType = ftFloat
      end
      item
        Name = 'OFFICIAL_ABSENCE_DAYS_4'
        DataType = ftFloat
      end
      item
        Name = 'OFFICIAL_ABSENCE_DAYS_5'
        DataType = ftFloat
      end
      item
        Name = 'OFFICIAL_ABSENCE_DAYS_6'
        DataType = ftFloat
      end
      item
        Name = 'OFFICIAL_DAYS_OFF'
        DataType = ftFloat
      end
      item
        Name = 'OFFICIAL_TOTAL_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'OFFICIAL_PRESENCE_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'OFFICIAL_APP_OVERTIME_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'OFFICIAL_UNAPP_OVERTIME_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'OFFICIAL_OFFTIME_PRESENCE_HRS'
        DataType = ftFloat
      end
      item
        Name = 'OFFICIAL_UNAPP_ABSENCE_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_T_PRESENCE_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_T_ABSENCE_DAYS_1'
        DataType = ftFloat
      end
      item
        Name = 'REAL_T_ABSENCE_DAYS_2'
        DataType = ftFloat
      end
      item
        Name = 'REAL_T_ABSENCE_DAYS_3'
        DataType = ftFloat
      end
      item
        Name = 'REAL_T_ABSENCE_DAYS_4'
        DataType = ftFloat
      end
      item
        Name = 'REAL_T_ABSENCE_DAYS_5'
        DataType = ftFloat
      end
      item
        Name = 'REAL_T_ABSENCE_DAYS_6'
        DataType = ftFloat
      end
      item
        Name = 'REAL_T_DAYS_OFF'
        DataType = ftFloat
      end
      item
        Name = 'REAL_T_TOTAL_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_T_PRESENCE_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_T_APP_OVERTIME_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_T_UNAPP_OVERTIME_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_T_OFFTIME_PRESENCE_HRS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_T_UNAPP_ABSENCE_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_W_PRESENCE_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_W_ABSENCE_DAYS_1'
        DataType = ftFloat
      end
      item
        Name = 'REAL_W_ABSENCE_DAYS_2'
        DataType = ftFloat
      end
      item
        Name = 'REAL_W_ABSENCE_DAYS_3'
        DataType = ftFloat
      end
      item
        Name = 'REAL_W_ABSENCE_DAYS_4'
        DataType = ftFloat
      end
      item
        Name = 'REAL_W_ABSENCE_DAYS_5'
        DataType = ftFloat
      end
      item
        Name = 'REAL_W_ABSENCE_DAYS_6'
        DataType = ftFloat
      end
      item
        Name = 'REAL_W_DAYS_OFF'
        DataType = ftFloat
      end
      item
        Name = 'REAL_W_TOTAL_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_W_PRESENCE_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_W_APP_OVERTIME_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_W_UNAPP_OVERTIME_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_W_OFFTIME_PRESENCE_HRS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_W_UNAPP_ABSENCE_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_O_PRESENCE_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_O_ABSENCE_DAYS_1'
        DataType = ftFloat
      end
      item
        Name = 'REAL_O_ABSENCE_DAYS_2'
        DataType = ftFloat
      end
      item
        Name = 'REAL_O_ABSENCE_DAYS_3'
        DataType = ftFloat
      end
      item
        Name = 'REAL_O_ABSENCE_DAYS_4'
        DataType = ftFloat
      end
      item
        Name = 'REAL_O_ABSENCE_DAYS_5'
        DataType = ftFloat
      end
      item
        Name = 'REAL_O_ABSENCE_DAYS_6'
        DataType = ftFloat
      end
      item
        Name = 'REAL_O_DAYS_OFF'
        DataType = ftFloat
      end
      item
        Name = 'REAL_O_TOTAL_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_O_PRESENCE_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_O_APP_OVERTIME_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_O_UNAPP_OVERTIME_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_O_OFFTIME_PRESENCE_HRS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_O_UNAPP_ABSENCE_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'OFFICIAL_OFFTIMEPRESENCE_HOURS'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idxEmployee'
        Fields = 'EMPLOYEE_CODE'
        GroupingLevel = 1
      end
      item
        Name = 'idxOccupationDept'
        Fields = 'OCCUPATION_DEPT_CODE'
        GroupingLevel = 1
      end
      item
        Name = 'idxCraftType'
        Fields = 'CRAFT_TYPE_CODE'
        GroupingLevel = 1
      end>
    IndexName = 'idxEmployee'
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_DEPT_DESCENDANTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_DEPT_DESCENDANTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_DEPT_DESCENDANTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'prvETAEmployees'
    StoreDefs = True
    Left = 408
    Top = 376
    object cdsETAEmployeesEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object cdsETAEmployeesEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      Size = 62
    end
    object cdsETAEmployeesEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
    end
    object cdsETAEmployeesOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
    end
    object cdsETAEmployeesOCCUPATION_DEPT_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_DEPT_CODE'
    end
    object cdsETAEmployeesOCCUPATION_DEPT_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_DEPT_NAME'
      Size = 100
    end
    object cdsETAEmployeesOCCUPATION_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'OCCUPATION_DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsETAEmployeesCRAFT_TYPE_CODE: TAbmesFloatField
      FieldName = 'CRAFT_TYPE_CODE'
    end
    object cdsETAEmployeesCRAFT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'CRAFT_TYPE_NAME'
      Size = 50
    end
    object cdsETAEmployeesIS_ASSIGNED_AT_BEGIN_DATE: TAbmesFloatField
      FieldName = 'IS_ASSIGNED_AT_BEGIN_DATE'
    end
    object cdsETAEmployeesIS_ASSIGNED_AT_END_DATE: TAbmesFloatField
      FieldName = 'IS_ASSIGNED_AT_END_DATE'
    end
    object cdsETAEmployeesOFFICIAL_PRESENCE_DAYS: TAbmesFloatField
      FieldName = 'OFFICIAL_PRESENCE_DAYS'
    end
    object cdsETAEmployeesOFFICIAL_ABSENCE_DAYS_1: TAbmesFloatField
      FieldName = 'OFFICIAL_ABSENCE_DAYS_1'
    end
    object cdsETAEmployeesOFFICIAL_ABSENCE_DAYS_2: TAbmesFloatField
      FieldName = 'OFFICIAL_ABSENCE_DAYS_2'
    end
    object cdsETAEmployeesOFFICIAL_ABSENCE_DAYS_3: TAbmesFloatField
      FieldName = 'OFFICIAL_ABSENCE_DAYS_3'
    end
    object cdsETAEmployeesOFFICIAL_ABSENCE_DAYS_4: TAbmesFloatField
      FieldName = 'OFFICIAL_ABSENCE_DAYS_4'
    end
    object cdsETAEmployeesOFFICIAL_ABSENCE_DAYS_5: TAbmesFloatField
      FieldName = 'OFFICIAL_ABSENCE_DAYS_5'
    end
    object cdsETAEmployeesOFFICIAL_ABSENCE_DAYS_6: TAbmesFloatField
      FieldName = 'OFFICIAL_ABSENCE_DAYS_6'
    end
    object cdsETAEmployeesOFFICIAL_DAYS_OFF: TAbmesFloatField
      FieldName = 'OFFICIAL_DAYS_OFF'
    end
    object cdsETAEmployeesOFFICIAL_TOTAL_DAYS: TAbmesFloatField
      FieldName = 'OFFICIAL_TOTAL_DAYS'
    end
    object cdsETAEmployeesOFFICIAL_PRESENCE_HOURS: TAbmesFloatField
      FieldName = 'OFFICIAL_PRESENCE_HOURS'
    end
    object cdsETAEmployeesOFFICIAL_APP_OVERTIME_HOURS: TAbmesFloatField
      FieldName = 'OFFICIAL_APP_OVERTIME_HOURS'
    end
    object cdsETAEmployeesOFFICIAL_UNAPP_OVERTIME_HOURS: TAbmesFloatField
      FieldName = 'OFFICIAL_UNAPP_OVERTIME_HOURS'
    end
    object cdsETAEmployeesOFFICIAL_OFFTIME_PRESENCE_HRS: TAbmesFloatField
      FieldName = 'OFFICIAL_OFFTIME_PRESENCE_HRS'
    end
    object cdsETAEmployeesOFFICIAL_UNAPP_ABSENCE_HOURS: TAbmesFloatField
      FieldName = 'OFFICIAL_UNAPP_ABSENCE_HOURS'
    end
    object cdsETAEmployeesREAL_T_PRESENCE_DAYS: TAbmesFloatField
      FieldName = 'REAL_T_PRESENCE_DAYS'
    end
    object cdsETAEmployeesREAL_T_ABSENCE_DAYS_1: TAbmesFloatField
      FieldName = 'REAL_T_ABSENCE_DAYS_1'
    end
    object cdsETAEmployeesREAL_T_ABSENCE_DAYS_2: TAbmesFloatField
      FieldName = 'REAL_T_ABSENCE_DAYS_2'
    end
    object cdsETAEmployeesREAL_T_ABSENCE_DAYS_3: TAbmesFloatField
      FieldName = 'REAL_T_ABSENCE_DAYS_3'
    end
    object cdsETAEmployeesREAL_T_ABSENCE_DAYS_4: TAbmesFloatField
      FieldName = 'REAL_T_ABSENCE_DAYS_4'
    end
    object cdsETAEmployeesREAL_T_ABSENCE_DAYS_5: TAbmesFloatField
      FieldName = 'REAL_T_ABSENCE_DAYS_5'
    end
    object cdsETAEmployeesREAL_T_ABSENCE_DAYS_6: TAbmesFloatField
      FieldName = 'REAL_T_ABSENCE_DAYS_6'
    end
    object cdsETAEmployeesREAL_T_DAYS_OFF: TAbmesFloatField
      FieldName = 'REAL_T_DAYS_OFF'
    end
    object cdsETAEmployeesREAL_T_TOTAL_DAYS: TAbmesFloatField
      FieldName = 'REAL_T_TOTAL_DAYS'
    end
    object cdsETAEmployeesREAL_T_PRESENCE_HOURS: TAbmesFloatField
      FieldName = 'REAL_T_PRESENCE_HOURS'
    end
    object cdsETAEmployeesREAL_T_APP_OVERTIME_HOURS: TAbmesFloatField
      FieldName = 'REAL_T_APP_OVERTIME_HOURS'
    end
    object cdsETAEmployeesREAL_T_UNAPP_OVERTIME_HOURS: TAbmesFloatField
      FieldName = 'REAL_T_UNAPP_OVERTIME_HOURS'
    end
    object cdsETAEmployeesREAL_T_OFFTIME_PRESENCE_HRS: TAbmesFloatField
      FieldName = 'REAL_T_OFFTIME_PRESENCE_HRS'
    end
    object cdsETAEmployeesREAL_T_UNAPP_ABSENCE_HOURS: TAbmesFloatField
      FieldName = 'REAL_T_UNAPP_ABSENCE_HOURS'
    end
    object cdsETAEmployeesREAL_W_PRESENCE_DAYS: TAbmesFloatField
      FieldName = 'REAL_W_PRESENCE_DAYS'
    end
    object cdsETAEmployeesREAL_W_ABSENCE_DAYS_1: TAbmesFloatField
      FieldName = 'REAL_W_ABSENCE_DAYS_1'
    end
    object cdsETAEmployeesREAL_W_ABSENCE_DAYS_2: TAbmesFloatField
      FieldName = 'REAL_W_ABSENCE_DAYS_2'
    end
    object cdsETAEmployeesREAL_W_ABSENCE_DAYS_3: TAbmesFloatField
      FieldName = 'REAL_W_ABSENCE_DAYS_3'
    end
    object cdsETAEmployeesREAL_W_ABSENCE_DAYS_4: TAbmesFloatField
      FieldName = 'REAL_W_ABSENCE_DAYS_4'
    end
    object cdsETAEmployeesREAL_W_ABSENCE_DAYS_5: TAbmesFloatField
      FieldName = 'REAL_W_ABSENCE_DAYS_5'
    end
    object cdsETAEmployeesREAL_W_ABSENCE_DAYS_6: TAbmesFloatField
      FieldName = 'REAL_W_ABSENCE_DAYS_6'
    end
    object cdsETAEmployeesREAL_W_DAYS_OFF: TAbmesFloatField
      FieldName = 'REAL_W_DAYS_OFF'
    end
    object cdsETAEmployeesREAL_W_TOTAL_DAYS: TAbmesFloatField
      FieldName = 'REAL_W_TOTAL_DAYS'
    end
    object cdsETAEmployeesREAL_W_PRESENCE_HOURS: TAbmesFloatField
      FieldName = 'REAL_W_PRESENCE_HOURS'
    end
    object cdsETAEmployeesREAL_W_APP_OVERTIME_HOURS: TAbmesFloatField
      FieldName = 'REAL_W_APP_OVERTIME_HOURS'
    end
    object cdsETAEmployeesREAL_W_UNAPP_OVERTIME_HOURS: TAbmesFloatField
      FieldName = 'REAL_W_UNAPP_OVERTIME_HOURS'
    end
    object cdsETAEmployeesREAL_W_OFFTIME_PRESENCE_HRS: TAbmesFloatField
      FieldName = 'REAL_W_OFFTIME_PRESENCE_HRS'
    end
    object cdsETAEmployeesREAL_W_UNAPP_ABSENCE_HOURS: TAbmesFloatField
      FieldName = 'REAL_W_UNAPP_ABSENCE_HOURS'
    end
    object cdsETAEmployeesREAL_O_PRESENCE_DAYS: TAbmesFloatField
      FieldName = 'REAL_O_PRESENCE_DAYS'
    end
    object cdsETAEmployeesREAL_O_ABSENCE_DAYS_1: TAbmesFloatField
      FieldName = 'REAL_O_ABSENCE_DAYS_1'
    end
    object cdsETAEmployeesREAL_O_ABSENCE_DAYS_2: TAbmesFloatField
      FieldName = 'REAL_O_ABSENCE_DAYS_2'
    end
    object cdsETAEmployeesREAL_O_ABSENCE_DAYS_3: TAbmesFloatField
      FieldName = 'REAL_O_ABSENCE_DAYS_3'
    end
    object cdsETAEmployeesREAL_O_ABSENCE_DAYS_4: TAbmesFloatField
      FieldName = 'REAL_O_ABSENCE_DAYS_4'
    end
    object cdsETAEmployeesREAL_O_ABSENCE_DAYS_5: TAbmesFloatField
      FieldName = 'REAL_O_ABSENCE_DAYS_5'
    end
    object cdsETAEmployeesREAL_O_ABSENCE_DAYS_6: TAbmesFloatField
      FieldName = 'REAL_O_ABSENCE_DAYS_6'
    end
    object cdsETAEmployeesREAL_O_DAYS_OFF: TAbmesFloatField
      FieldName = 'REAL_O_DAYS_OFF'
    end
    object cdsETAEmployeesREAL_O_TOTAL_DAYS: TAbmesFloatField
      FieldName = 'REAL_O_TOTAL_DAYS'
    end
    object cdsETAEmployeesREAL_O_PRESENCE_HOURS: TAbmesFloatField
      FieldName = 'REAL_O_PRESENCE_HOURS'
    end
    object cdsETAEmployeesREAL_O_APP_OVERTIME_HOURS: TAbmesFloatField
      FieldName = 'REAL_O_APP_OVERTIME_HOURS'
    end
    object cdsETAEmployeesREAL_O_UNAPP_OVERTIME_HOURS: TAbmesFloatField
      FieldName = 'REAL_O_UNAPP_OVERTIME_HOURS'
    end
    object cdsETAEmployeesREAL_O_OFFTIME_PRESENCE_HRS: TAbmesFloatField
      FieldName = 'REAL_O_OFFTIME_PRESENCE_HRS'
    end
    object cdsETAEmployeesREAL_O_UNAPP_ABSENCE_HOURS: TAbmesFloatField
      FieldName = 'REAL_O_UNAPP_ABSENCE_HOURS'
    end
    object cdsETAEmployees_SUM_IS_ASSIGNED_AT_BEGIN_DATE: TAggregateField
      FieldName = '_SUM_IS_ASSIGNED_AT_BEGIN_DATE'
      Active = True
      DisplayName = ''
      Expression = 'Sum(IS_ASSIGNED_AT_BEGIN_DATE)'
      GroupingLevel = 1
    end
    object cdsETAEmployees_SUM_IS_ASSIGNED_AT_END_DATE: TAggregateField
      FieldName = '_SUM_IS_ASSIGNED_AT_END_DATE'
      Active = True
      DisplayName = ''
      Expression = 'Sum(IS_ASSIGNED_AT_END_DATE)'
      GroupingLevel = 1
    end
  end
  object qryETAEmployees: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_DEPT_DESCENDANTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_DEPT_DESCENDANTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_DEPT_DESCENDANTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  e.EMPLOYEE_CODE,'
      '  ( e.FIRST_NAME ||'
      '    Nvl2(e.MIDDLE_NAME, '#39' '#39' || e.MIDDLE_NAME || '#39' '#39',  '#39' '#39') ||'
      '    e.LAST_NAME'
      '  ) as EMPLOYEE_NAME,'
      '  ( select'
      '      c.COMPANY_NO'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = e.COMPANY_CODE)'
      '  ) as EMPLOYEE_NO,'
      ''
      '  o.OCCUPATION_CODE,'
      '  o.DEPT_CODE as OCCUPATION_DEPT_CODE,'
      '  ( select'
      '      d.NAME as OCCUPATION_DEPT_NAME'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = o.DEPT_CODE)'
      '  ) as OCCUPATION_DEPT_NAME,'
      '  ( select'
      
        '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) ' +
        'as OCCUPATION_DEPT_IDENTIFIER'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '      (d.DEPT_CODE = o.DEPT_CODE)'
      '  ) as OCCUPATION_DEPT_IDENTIFIER,'
      ''
      '  cr.CRAFT_TYPE_CODE,'
      '  ( select'
      '      crt.CRAFT_TYPE_NAME'
      '    from'
      '      CRAFT_TYPES crt'
      '    where'
      '      (crt.CRAFT_TYPE_CODE = cr.CRAFT_TYPE_CODE)'
      '  ) as CRAFT_TYPE_NAME,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      OCCUPATION_EMPLOYEES oe'
      '    where'
      '      (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '      (oe.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      
        '      (:BEGIN_DATE between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIG' +
        'NMENT_END_DATE)'
      '  ) as IS_ASSIGNED_AT_BEGIN_DATE,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      OCCUPATION_EMPLOYEES oe'
      '    where'
      '      (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '      (oe.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      
        '      (:END_DATE between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIGNM' +
        'ENT_END_DATE)'
      '  ) as IS_ASSIGNED_AT_END_DATE,'
      ''
      '  To_Number(null) as OFFICIAL_PRESENCE_DAYS,'
      '  To_Number(null) as OFFICIAL_ABSENCE_DAYS_1,'
      '  To_Number(null) as OFFICIAL_ABSENCE_DAYS_2,'
      '  To_Number(null) as OFFICIAL_ABSENCE_DAYS_3,'
      '  To_Number(null) as OFFICIAL_ABSENCE_DAYS_4,'
      '  To_Number(null) as OFFICIAL_ABSENCE_DAYS_5,'
      '  To_Number(null) as OFFICIAL_ABSENCE_DAYS_6,'
      '  To_Number(null) as OFFICIAL_DAYS_OFF,'
      '  To_Number(null) as OFFICIAL_TOTAL_DAYS,'
      '  To_Number(null) as OFFICIAL_PRESENCE_HOURS,'
      '  To_Number(null) as OFFICIAL_APP_OVERTIME_HOURS,'
      '  To_Number(null) as OFFICIAL_UNAPP_OVERTIME_HOURS,'
      '  To_Number(null) as OFFICIAL_OFFTIME_PRESENCE_HRS,'
      '  To_Number(null) as OFFICIAL_UNAPP_ABSENCE_HOURS,'
      ''
      '  To_Number(null) as REAL_T_PRESENCE_DAYS,'
      '  To_Number(null) as REAL_T_ABSENCE_DAYS_1,'
      '  To_Number(null) as REAL_T_ABSENCE_DAYS_2,'
      '  To_Number(null) as REAL_T_ABSENCE_DAYS_3,'
      '  To_Number(null) as REAL_T_ABSENCE_DAYS_4,'
      '  To_Number(null) as REAL_T_ABSENCE_DAYS_5,'
      '  To_Number(null) as REAL_T_ABSENCE_DAYS_6,'
      '  To_Number(null) as REAL_T_DAYS_OFF,'
      '  To_Number(null) as REAL_T_TOTAL_DAYS,'
      '  To_Number(null) as REAL_T_PRESENCE_HOURS,'
      '  To_Number(null) as REAL_T_APP_OVERTIME_HOURS,'
      '  To_Number(null) as REAL_T_UNAPP_OVERTIME_HOURS,'
      '  To_Number(null) as REAL_T_OFFTIME_PRESENCE_HRS,'
      '  To_Number(null) as REAL_T_UNAPP_ABSENCE_HOURS,'
      ''
      '  To_Number(null) as REAL_W_PRESENCE_DAYS,'
      '  To_Number(null) as REAL_W_ABSENCE_DAYS_1,'
      '  To_Number(null) as REAL_W_ABSENCE_DAYS_2,'
      '  To_Number(null) as REAL_W_ABSENCE_DAYS_3,'
      '  To_Number(null) as REAL_W_ABSENCE_DAYS_4,'
      '  To_Number(null) as REAL_W_ABSENCE_DAYS_5,'
      '  To_Number(null) as REAL_W_ABSENCE_DAYS_6,'
      '  To_Number(null) as REAL_W_DAYS_OFF,'
      '  To_Number(null) as REAL_W_TOTAL_DAYS,'
      '  To_Number(null) as REAL_W_PRESENCE_HOURS,'
      '  To_Number(null) as REAL_W_APP_OVERTIME_HOURS,'
      '  To_Number(null) as REAL_W_UNAPP_OVERTIME_HOURS,'
      '  To_Number(null) as REAL_W_OFFTIME_PRESENCE_HRS,'
      '  To_Number(null) as REAL_W_UNAPP_ABSENCE_HOURS,'
      ''
      '  To_Number(null) as REAL_O_PRESENCE_DAYS,'
      '  To_Number(null) as REAL_O_ABSENCE_DAYS_1,'
      '  To_Number(null) as REAL_O_ABSENCE_DAYS_2,'
      '  To_Number(null) as REAL_O_ABSENCE_DAYS_3,'
      '  To_Number(null) as REAL_O_ABSENCE_DAYS_4,'
      '  To_Number(null) as REAL_O_ABSENCE_DAYS_5,'
      '  To_Number(null) as REAL_O_ABSENCE_DAYS_6,'
      '  To_Number(null) as REAL_O_DAYS_OFF,'
      '  To_Number(null) as REAL_O_TOTAL_DAYS,'
      '  To_Number(null) as REAL_O_PRESENCE_HOURS,'
      '  To_Number(null) as REAL_O_APP_OVERTIME_HOURS,'
      '  To_Number(null) as REAL_O_UNAPP_OVERTIME_HOURS,'
      '  To_Number(null) as REAL_O_OFFTIME_PRESENCE_HRS,'
      '  To_Number(null) as REAL_O_UNAPP_ABSENCE_HOURS'
      ''
      'from'
      '  EMPLOYEES e,'
      '  OCCUPATIONS o,'
      '  CRAFTS cr'
      ''
      'where'
      '  exists('
      '    select'
      '      1'
      '    from'
      '      TEMP_AVAILABILITY_EMPLOYEES tae'
      '    where'
      '      (tae.EMPLOYEE_CODE = e.EMPLOYEE_CODE)'
      '  ) and'
      ''
      '  exists('
      '    select'
      '      1'
      '    from'
      '      OCCUPATION_EMPLOYEES oe'
      '    where'
      '      (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '      (oe.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '      (oe.ASSIGNMENT_BEGIN_DATE <= :END_DATE) and'
      '      (oe.ASSIGNMENT_END_DATE >= :BEGIN_DATE)'
      '  ) and'
      ''
      '  (o.CRAFT_CODE = cr.CRAFT_CODE(+)) and'
      ''
      '  (o.IS_MAIN = 1) and'
      ''
      '  ( (:INCLUDE_DEPT_DESCENDANTS <> 2) and'
      '    ( (:OCCUPATION_DEPT_CODE = %TREE_ROOT_CODE) or'
      '      exists('
      '        select'
      '          1'
      '        from'
      '          DEPT_RELATIONS dr'
      '        where'
      '          (dr.ANCESTOR_DEPT_CODE = :OCCUPATION_DEPT_CODE) and'
      '          (dr.DESCENDANT_DEPT_CODE = o.DEPT_CODE) and'
      '          ( (:INCLUDE_DEPT_DESCENDANTS = 1) or'
      '            (dr.ANCESTOR_DEPT_CODE = dr.DESCENDANT_DEPT_CODE) )'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:SHIFT_CODE is null) or'
      '    exists('
      '      select'
      '        1'
      '      from'
      '        OCCUPATION_SHIFTS os'
      '      where'
      '        (os.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '        (:BEGIN_DATE between os.BEGIN_DATE and os.END_DATE) and'
      '        (os.SHIFT_CODE = :SHIFT_CODE)'
      '    )'
      '  ) and'
      ''
      '  ( (:IS_EXTERNAL is null) or'
      '    exists('
      '      select'
      '        1'
      '      from'
      '        COMPANIES c'
      '      where'
      '        (c.COMPANY_CODE = e.COMPANY_CODE) and'
      '        (c.IS_EXTERNAL = :IS_EXTERNAL)'
      '    )'
      '  )'
      ''
      ''
      '--------------'
      'union all'
      '--------------'
      ''
      ''
      'select'
      '  e.EMPLOYEE_CODE,'
      '  ( e.FIRST_NAME ||'
      '    Nvl2(e.MIDDLE_NAME, '#39' '#39' || e.MIDDLE_NAME || '#39' '#39',  '#39' '#39') ||'
      '    e.LAST_NAME'
      '  ) as EMPLOYEE_NAME,'
      '  ( select'
      '      c.COMPANY_NO'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = e.COMPANY_CODE)'
      '  ) as EMPLOYEE_NO,                                     '
      ''
      '  0 as OCCUPATION_CODE,'
      '  To_Number(null) as OCCUPATION_DEPT_CODE,'
      '  Cast(null as Varchar2(50 char)) as OCCUPATION_NAME,'
      '  Cast(null as Varchar2(46 char)) as OCCUPATION_DEPT_IDENTIFIER,'
      ''
      '  To_Number(null) as CRAFT_TYPE_CODE,'
      '  Cast(null as Varchar2(50 char)) as CRAFT_TYPE_NAME,'
      ''
      '  ( select'
      '      1 - Sign(Count(*))'
      '    from'
      '      OCCUPATION_EMPLOYEES oe2,'
      '      OCCUPATIONS o2'
      '    where'
      '      (oe2.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '      (o2.OCCUPATION_CODE = oe2.OCCUPATION_CODE) and'
      '      (o2.IS_MAIN = 1) and'
      
        '      (:BEGIN_DATE between oe2.ASSIGNMENT_BEGIN_DATE and oe2.ASS' +
        'IGNMENT_END_DATE)'
      '  ) as IS_ASSIGNED_AT_BEGIN_DATE,'
      ''
      '  ( select'
      '      1 - Sign(Count(*))'
      '    from'
      '      OCCUPATION_EMPLOYEES oe2,'
      '      OCCUPATIONS o2'
      '    where'
      '      (oe2.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '      (o2.OCCUPATION_CODE = oe2.OCCUPATION_CODE) and'
      '      (o2.IS_MAIN = 1) and'
      
        '      (:END_DATE between oe2.ASSIGNMENT_BEGIN_DATE and oe2.ASSIG' +
        'NMENT_END_DATE)'
      '  ) as IS_ASSIGNED_AT_END_DATE,'
      ''
      '  To_Number(null) as OFFICIAL_PRESENCE_DAYS,'
      '  To_Number(null) as OFFICIAL_ABSENCE_DAYS_1,'
      '  To_Number(null) as OFFICIAL_ABSENCE_DAYS_2,'
      '  To_Number(null) as OFFICIAL_ABSENCE_DAYS_3,'
      '  To_Number(null) as OFFICIAL_ABSENCE_DAYS_4,'
      '  To_Number(null) as OFFICIAL_ABSENCE_DAYS_5,'
      '  To_Number(null) as OFFICIAL_ABSENCE_DAYS_6,'
      '  To_Number(null) as OFFICIAL_DAYS_OFF,'
      '  To_Number(null) as OFFICIAL_TOTAL_DAYS,'
      '  To_Number(null) as OFFICIAL_PRESENCE_HOURS,'
      '  To_Number(null) as OFFICIAL_APP_OVERTIME_HOURS,'
      '  To_Number(null) as OFFICIAL_UNAPP_OVERTIME_HOURS,'
      '  To_Number(null) as OFFICIAL_OFFTIME_PRESENCE_HRS, '
      '  To_Number(null) as OFFICIAL_UNAPP_ABSENCE_HOURS,'
      ''
      '  To_Number(null) as REAL_T_PRESENCE_DAYS,'
      '  To_Number(null) as REAL_T_ABSENCE_DAYS_1,'
      '  To_Number(null) as REAL_T_ABSENCE_DAYS_2,'
      '  To_Number(null) as REAL_T_ABSENCE_DAYS_3,'
      '  To_Number(null) as REAL_T_ABSENCE_DAYS_4,'
      '  To_Number(null) as REAL_T_ABSENCE_DAYS_5,'
      '  To_Number(null) as REAL_T_ABSENCE_DAYS_6,'
      '  To_Number(null) as REAL_T_DAYS_OFF,'
      '  To_Number(null) as REAL_T_TOTAL_DAYS,'
      '  To_Number(null) as REAL_T_PRESENCE_HOURS,'
      '  To_Number(null) as REAL_T_APP_OVERTIME_HOURS,'
      '  To_Number(null) as REAL_T_UNAPP_OVERTIME_HOURS,'
      '  To_Number(null) as REAL_T_OFFTIME_PRESENCE_HRS,'
      '  To_Number(null) as REAL_T_UNAPP_ABSENCE_HOURS,'
      ''
      '  To_Number(null) as REAL_W_PRESENCE_DAYS,'
      '  To_Number(null) as REAL_W_ABSENCE_DAYS_1,'
      '  To_Number(null) as REAL_W_ABSENCE_DAYS_2,'
      '  To_Number(null) as REAL_W_ABSENCE_DAYS_3,'
      '  To_Number(null) as REAL_W_ABSENCE_DAYS_4,'
      '  To_Number(null) as REAL_W_ABSENCE_DAYS_5,'
      '  To_Number(null) as REAL_W_ABSENCE_DAYS_6,'
      '  To_Number(null) as REAL_W_DAYS_OFF,'
      '  To_Number(null) as REAL_W_TOTAL_DAYS,'
      '  To_Number(null) as REAL_W_PRESENCE_HOURS,'
      '  To_Number(null) as REAL_W_APP_OVERTIME_HOURS,'
      '  To_Number(null) as REAL_W_UNAPP_OVERTIME_HOURS,'
      '  To_Number(null) as REAL_W_OFFTIME_PRESENCE_HRS,'
      '  To_Number(null) as REAL_W_UNAPP_ABSENCE_HOURS,'
      ''
      '  To_Number(null) as REAL_O_PRESENCE_DAYS,'
      '  To_Number(null) as REAL_O_ABSENCE_DAYS_1,'
      '  To_Number(null) as REAL_O_ABSENCE_DAYS_2,'
      '  To_Number(null) as REAL_O_ABSENCE_DAYS_3,'
      '  To_Number(null) as REAL_O_ABSENCE_DAYS_4,'
      '  To_Number(null) as REAL_O_ABSENCE_DAYS_5,'
      '  To_Number(null) as REAL_O_ABSENCE_DAYS_6,'
      '  To_Number(null) as REAL_O_DAYS_OFF,'
      '  To_Number(null) as REAL_O_TOTAL_DAYS,'
      '  To_Number(null) as REAL_O_PRESENCE_HOURS,'
      '  To_Number(null) as REAL_O_APP_OVERTIME_HOURS,'
      '  To_Number(null) as REAL_O_UNAPP_OVERTIME_HOURS,'
      '  To_Number(null) as REAL_O_OFFTIME_PRESENCE_HRS,'
      '  To_Number(null) as REAL_O_UNAPP_ABSENCE_HOURS'
      ''
      'from'
      '  EMPLOYEES e'
      ''
      'where'
      '  exists('
      '    select'
      '      1'
      '    from'
      '      TEMP_AVAILABILITY_EMPLOYEES tae'
      '    where'
      '      (tae.EMPLOYEE_CODE = e.EMPLOYEE_CODE)'
      '  ) and'
      ''
      '  ( (:INCLUDE_DEPT_DESCENDANTS = 2) or'
      '    (:OCCUPATION_DEPT_CODE = %TREE_ROOT_CODE) ) and'
      ''
      '  (:SHIFT_CODE is null) and'
      '  (:IS_EXTERNAL is null) and'
      ''
      '  ( ( select'
      
        '        Coalesce(Sum(Least(oe.ASSIGNMENT_END_DATE, :END_DATE) - ' +
        'Greatest(oe.ASSIGNMENT_BEGIN_DATE, :BEGIN_DATE) + 1), 0)'
      '      from'
      '        OCCUPATION_EMPLOYEES oe,'
      '        OCCUPATIONS o'
      '      where'
      '        (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '        (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      '        (oe.ASSIGNMENT_BEGIN_DATE <= :END_DATE) and'
      '        (oe.ASSIGNMENT_END_DATE >= :BEGIN_DATE) and'
      '        (o.IS_MAIN = 1)'
      
        '    ) <> (Cast(:END_DATE as Date) - Cast(:BEGIN_DATE as Date) + ' +
        '1)'
      '  )'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'TREE_ROOT_CODE'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 408
    Top = 472
    object qryETAEmployeesEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object qryETAEmployeesEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      Size = 62
    end
    object qryETAEmployeesEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
    end
    object qryETAEmployeesOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
    end
    object qryETAEmployeesOCCUPATION_DEPT_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_DEPT_CODE'
    end
    object qryETAEmployeesOCCUPATION_DEPT_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_DEPT_NAME'
      Size = 100
    end
    object qryETAEmployeesOCCUPATION_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'OCCUPATION_DEPT_IDENTIFIER'
      Size = 46
    end
    object qryETAEmployeesCRAFT_TYPE_CODE: TAbmesFloatField
      FieldName = 'CRAFT_TYPE_CODE'
    end
    object qryETAEmployeesCRAFT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'CRAFT_TYPE_NAME'
      Size = 50
    end
    object qryETAEmployeesIS_ASSIGNED_AT_BEGIN_DATE: TAbmesFloatField
      FieldName = 'IS_ASSIGNED_AT_BEGIN_DATE'
    end
    object qryETAEmployeesIS_ASSIGNED_AT_END_DATE: TAbmesFloatField
      FieldName = 'IS_ASSIGNED_AT_END_DATE'
    end
    object qryETAEmployeesOFFICIAL_PRESENCE_DAYS: TAbmesFloatField
      FieldName = 'OFFICIAL_PRESENCE_DAYS'
    end
    object qryETAEmployeesOFFICIAL_ABSENCE_DAYS_1: TAbmesFloatField
      FieldName = 'OFFICIAL_ABSENCE_DAYS_1'
    end
    object qryETAEmployeesOFFICIAL_ABSENCE_DAYS_2: TAbmesFloatField
      FieldName = 'OFFICIAL_ABSENCE_DAYS_2'
    end
    object qryETAEmployeesOFFICIAL_ABSENCE_DAYS_3: TAbmesFloatField
      FieldName = 'OFFICIAL_ABSENCE_DAYS_3'
    end
    object qryETAEmployeesOFFICIAL_ABSENCE_DAYS_4: TAbmesFloatField
      FieldName = 'OFFICIAL_ABSENCE_DAYS_4'
    end
    object qryETAEmployeesOFFICIAL_ABSENCE_DAYS_5: TAbmesFloatField
      FieldName = 'OFFICIAL_ABSENCE_DAYS_5'
    end
    object qryETAEmployeesOFFICIAL_ABSENCE_DAYS_6: TAbmesFloatField
      FieldName = 'OFFICIAL_ABSENCE_DAYS_6'
    end
    object qryETAEmployeesOFFICIAL_DAYS_OFF: TAbmesFloatField
      FieldName = 'OFFICIAL_DAYS_OFF'
    end
    object qryETAEmployeesOFFICIAL_TOTAL_DAYS: TAbmesFloatField
      FieldName = 'OFFICIAL_TOTAL_DAYS'
    end
    object qryETAEmployeesOFFICIAL_PRESENCE_HOURS: TAbmesFloatField
      FieldName = 'OFFICIAL_PRESENCE_HOURS'
    end
    object qryETAEmployeesOFFICIAL_APP_OVERTIME_HOURS: TAbmesFloatField
      FieldName = 'OFFICIAL_APP_OVERTIME_HOURS'
    end
    object qryETAEmployeesOFFICIAL_UNAPP_OVERTIME_HOURS: TAbmesFloatField
      FieldName = 'OFFICIAL_UNAPP_OVERTIME_HOURS'
    end
    object qryETAEmployeesOFFICIAL_OFFTIME_PRESENCE_HRS: TAbmesFloatField
      FieldName = 'OFFICIAL_OFFTIME_PRESENCE_HRS'
      ProviderFlags = [pfInUpdate]
    end
    object qryETAEmployeesOFFICIAL_UNAPP_ABSENCE_HOURS: TAbmesFloatField
      FieldName = 'OFFICIAL_UNAPP_ABSENCE_HOURS'
    end
    object qryETAEmployeesREAL_T_PRESENCE_DAYS: TAbmesFloatField
      FieldName = 'REAL_T_PRESENCE_DAYS'
    end
    object qryETAEmployeesREAL_T_ABSENCE_DAYS_1: TAbmesFloatField
      FieldName = 'REAL_T_ABSENCE_DAYS_1'
    end
    object qryETAEmployeesREAL_T_ABSENCE_DAYS_2: TAbmesFloatField
      FieldName = 'REAL_T_ABSENCE_DAYS_2'
    end
    object qryETAEmployeesREAL_T_ABSENCE_DAYS_3: TAbmesFloatField
      FieldName = 'REAL_T_ABSENCE_DAYS_3'
    end
    object qryETAEmployeesREAL_T_ABSENCE_DAYS_4: TAbmesFloatField
      FieldName = 'REAL_T_ABSENCE_DAYS_4'
    end
    object qryETAEmployeesREAL_T_ABSENCE_DAYS_5: TAbmesFloatField
      FieldName = 'REAL_T_ABSENCE_DAYS_5'
    end
    object qryETAEmployeesREAL_T_ABSENCE_DAYS_6: TAbmesFloatField
      FieldName = 'REAL_T_ABSENCE_DAYS_6'
    end
    object qryETAEmployeesREAL_T_DAYS_OFF: TAbmesFloatField
      FieldName = 'REAL_T_DAYS_OFF'
    end
    object qryETAEmployeesREAL_T_TOTAL_DAYS: TAbmesFloatField
      FieldName = 'REAL_T_TOTAL_DAYS'
    end
    object qryETAEmployeesREAL_T_PRESENCE_HOURS: TAbmesFloatField
      FieldName = 'REAL_T_PRESENCE_HOURS'
    end
    object qryETAEmployeesREAL_T_APP_OVERTIME_HOURS: TAbmesFloatField
      FieldName = 'REAL_T_APP_OVERTIME_HOURS'
    end
    object qryETAEmployeesREAL_T_UNAPP_OVERTIME_HOURS: TAbmesFloatField
      FieldName = 'REAL_T_UNAPP_OVERTIME_HOURS'
    end
    object qryETAEmployeesREAL_T_OFFTIME_PRESENCE_HRS: TAbmesFloatField
      FieldName = 'REAL_T_OFFTIME_PRESENCE_HRS'
    end
    object qryETAEmployeesREAL_T_UNAPP_ABSENCE_HOURS: TAbmesFloatField
      FieldName = 'REAL_T_UNAPP_ABSENCE_HOURS'
    end
    object qryETAEmployeesREAL_W_PRESENCE_DAYS: TAbmesFloatField
      FieldName = 'REAL_W_PRESENCE_DAYS'
    end
    object qryETAEmployeesREAL_W_ABSENCE_DAYS_1: TAbmesFloatField
      FieldName = 'REAL_W_ABSENCE_DAYS_1'
    end
    object qryETAEmployeesREAL_W_ABSENCE_DAYS_2: TAbmesFloatField
      FieldName = 'REAL_W_ABSENCE_DAYS_2'
    end
    object qryETAEmployeesREAL_W_ABSENCE_DAYS_3: TAbmesFloatField
      FieldName = 'REAL_W_ABSENCE_DAYS_3'
    end
    object qryETAEmployeesREAL_W_ABSENCE_DAYS_4: TAbmesFloatField
      FieldName = 'REAL_W_ABSENCE_DAYS_4'
    end
    object qryETAEmployeesREAL_W_ABSENCE_DAYS_5: TAbmesFloatField
      FieldName = 'REAL_W_ABSENCE_DAYS_5'
    end
    object qryETAEmployeesREAL_W_ABSENCE_DAYS_6: TAbmesFloatField
      FieldName = 'REAL_W_ABSENCE_DAYS_6'
    end
    object qryETAEmployeesREAL_W_DAYS_OFF: TAbmesFloatField
      FieldName = 'REAL_W_DAYS_OFF'
    end
    object qryETAEmployeesREAL_W_TOTAL_DAYS: TAbmesFloatField
      FieldName = 'REAL_W_TOTAL_DAYS'
    end
    object qryETAEmployeesREAL_W_PRESENCE_HOURS: TAbmesFloatField
      FieldName = 'REAL_W_PRESENCE_HOURS'
    end
    object qryETAEmployeesREAL_W_APP_OVERTIME_HOURS: TAbmesFloatField
      FieldName = 'REAL_W_APP_OVERTIME_HOURS'
    end
    object qryETAEmployeesREAL_W_UNAPP_OVERTIME_HOURS: TAbmesFloatField
      FieldName = 'REAL_W_UNAPP_OVERTIME_HOURS'
    end
    object qryETAEmployeesREAL_W_OFFTIME_PRESENCE_HRS: TAbmesFloatField
      FieldName = 'REAL_W_OFFTIME_PRESENCE_HRS'
    end
    object qryETAEmployeesREAL_W_UNAPP_ABSENCE_HOURS: TAbmesFloatField
      FieldName = 'REAL_W_UNAPP_ABSENCE_HOURS'
    end
    object qryETAEmployeesREAL_O_PRESENCE_DAYS: TAbmesFloatField
      FieldName = 'REAL_O_PRESENCE_DAYS'
    end
    object qryETAEmployeesREAL_O_ABSENCE_DAYS_1: TAbmesFloatField
      FieldName = 'REAL_O_ABSENCE_DAYS_1'
    end
    object qryETAEmployeesREAL_O_ABSENCE_DAYS_2: TAbmesFloatField
      FieldName = 'REAL_O_ABSENCE_DAYS_2'
    end
    object qryETAEmployeesREAL_O_ABSENCE_DAYS_3: TAbmesFloatField
      FieldName = 'REAL_O_ABSENCE_DAYS_3'
    end
    object qryETAEmployeesREAL_O_ABSENCE_DAYS_4: TAbmesFloatField
      FieldName = 'REAL_O_ABSENCE_DAYS_4'
    end
    object qryETAEmployeesREAL_O_ABSENCE_DAYS_5: TAbmesFloatField
      FieldName = 'REAL_O_ABSENCE_DAYS_5'
    end
    object qryETAEmployeesREAL_O_ABSENCE_DAYS_6: TAbmesFloatField
      FieldName = 'REAL_O_ABSENCE_DAYS_6'
    end
    object qryETAEmployeesREAL_O_DAYS_OFF: TAbmesFloatField
      FieldName = 'REAL_O_DAYS_OFF'
    end
    object qryETAEmployeesREAL_O_TOTAL_DAYS: TAbmesFloatField
      FieldName = 'REAL_O_TOTAL_DAYS'
    end
    object qryETAEmployeesREAL_O_PRESENCE_HOURS: TAbmesFloatField
      FieldName = 'REAL_O_PRESENCE_HOURS'
    end
    object qryETAEmployeesREAL_O_APP_OVERTIME_HOURS: TAbmesFloatField
      FieldName = 'REAL_O_APP_OVERTIME_HOURS'
    end
    object qryETAEmployeesREAL_O_UNAPP_OVERTIME_HOURS: TAbmesFloatField
      FieldName = 'REAL_O_UNAPP_OVERTIME_HOURS'
    end
    object qryETAEmployeesREAL_O_OFFTIME_PRESENCE_HRS: TAbmesFloatField
      FieldName = 'REAL_O_OFFTIME_PRESENCE_HRS'
    end
    object qryETAEmployeesREAL_O_UNAPP_ABSENCE_HOURS: TAbmesFloatField
      FieldName = 'REAL_O_UNAPP_ABSENCE_HOURS'
    end
  end
  object qryFillETATempEmployees: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_DEPT_DESCENDANTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_DEPT_DESCENDANTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_DEPT_DESCENDANTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert /*+ APPEND */ into TEMP_AVAILABILITY_EMPLOYEES'
      '('
      '  EMPLOYEE_CODE'
      ')'
      ''
      'select'
      '  e.EMPLOYEE_CODE'
      ''
      'from'
      '  EMPLOYEES e'
      ''
      'where'
      '  ( (:EMPLOYEE_CODE is null) or'
      '    (e.EMPLOYEE_CODE = :EMPLOYEE_CODE) ) and'
      ''
      '  ( exists('
      '      select'
      '        1'
      '      from'
      '        OCCUPATION_EMPLOYEES oe,'
      '        OCCUPATIONS o'
      ''
      '      where'
      '        (e.EMPLOYEE_CODE = oe.EMPLOYEE_CODE) and'
      ''
      '        (oe.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      ''
      '        (oe.ASSIGNMENT_BEGIN_DATE <= :END_DATE) and'
      '        (oe.ASSIGNMENT_END_DATE >= :BEGIN_DATE) and'
      ''
      '        (o.IS_MAIN = 1) and'
      ''
      '        ( (:INCLUDE_DEPT_DESCENDANTS <> 2) and'
      '          ( (:OCCUPATION_DEPT_CODE = %TREE_ROOT_CODE) or'
      '            exists('
      '              select'
      '                1'
      '              from'
      '                DEPT_RELATIONS dr'
      '              where'
      
        '                (dr.ANCESTOR_DEPT_CODE = :OCCUPATION_DEPT_CODE) ' +
        'and'
      '                (dr.DESCENDANT_DEPT_CODE = o.DEPT_CODE) and'
      '                ( (:INCLUDE_DEPT_DESCENDANTS = 1) or'
      
        '                  (dr.ANCESTOR_DEPT_CODE = dr.DESCENDANT_DEPT_CO' +
        'DE) )'
      '            )'
      '          )'
      '        ) and'
      ''
      '        ( (:SHIFT_CODE is null) or'
      '          exists('
      '            select'
      '              1'
      '            from'
      '              OCCUPATION_SHIFTS os'
      '            where'
      '              (os.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      
        '              (:BEGIN_DATE between os.BEGIN_DATE and os.END_DATE' +
        ') and'
      '              (os.SHIFT_CODE = :SHIFT_CODE)'
      '          )'
      '        ) and'
      ''
      '        ( (:IS_EXTERNAL is null) or'
      '          exists('
      '            select'
      '              1'
      '            from'
      '              COMPANIES c'
      '            where'
      '              (c.COMPANY_CODE = e.COMPANY_CODE) and'
      '              (c.IS_EXTERNAL = :IS_EXTERNAL)'
      '          )'
      '        )'
      '    ) or'
      ''
      '    ( ( (:INCLUDE_DEPT_DESCENDANTS = 2) or'
      '        (:OCCUPATION_DEPT_CODE = %TREE_ROOT_CODE) ) and'
      ''
      '      (:SHIFT_CODE is null) and'
      '      (:IS_EXTERNAL is null) and'
      ''
      '      ( ( select'
      
        '            Coalesce(Sum(Least(oe.ASSIGNMENT_END_DATE, :END_DATE' +
        ') - Greatest(oe.ASSIGNMENT_BEGIN_DATE, :BEGIN_DATE) + 1), 0)'
      '          from'
      '            OCCUPATION_EMPLOYEES oe,'
      '            OCCUPATIONS o'
      '          where'
      '            (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '            (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      '            (oe.ASSIGNMENT_BEGIN_DATE <= :END_DATE) and'
      '            (oe.ASSIGNMENT_END_DATE >= :BEGIN_DATE) and'
      '            (o.IS_MAIN = 1)'
      
        '        ) <> (Cast(:END_DATE as Date) - Cast(:BEGIN_DATE as Date' +
        ') + 1)'
      '      )'
      '    )'
      '  )'
      ''
      'order by'
      '  EMPLOYEE_CODE'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'TREE_ROOT_CODE'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 408
    Top = 520
  end
  object qryCalcEmployees: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  tae.EMPLOYEE_CODE'
      'from'
      '  TEMP_AVAILABILITY_EMPLOYEES tae'
      'order by'
      '  tae.EMPLOYEE_CODE'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 728
    Top = 152
    object qryCalcEmployeesEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object qryFillAvailabilityEmployeesTempTable: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert /*+ APPEND */ into TEMP_AVAILABILITY_EMPLOYEES'
      '('
      '  EMPLOYEE_CODE'
      ')'
      'values'
      '('
      '  :EMPLOYEE_CODE'
      ')')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 80
    Top = 512
  end
  object prvEmployeesAvailabilityByDateUnits: TDataSetProvider
    DataSet = qryEmployeesAvailabilityByDateUnits
    OnGetData = prvEmployeesAvailabilityByDateUnitsGetData
    Left = 576
    Top = 416
  end
  object qryEmployeesAvailabilityByDateUnits: TAbmesSQLQuery
    BeforeOpen = qryEmployeesAvailabilityByDateUnitsBeforeOpen
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_COUNT'
        ParamType = ptInput
        Value = '10'
      end>
    SQL.Strings = (
      'select'
      '  td.%THE_DATE as THE_DATE,'
      '  td.WORKDAYS,'
      '  td.THE_LAST_DATE,'
      '  To_number(0) as NESSESARY_PRESENCE_DAYS,'
      '  To_number(0) as PLAN_PRESENCE_DAYS,'
      '  To_number(0) as PRESENCE_DAYS,'
      '  To_number(0) as SELF_ABSENCE_DAYS,'
      '  To_number(0) as VACATION_DAYS,'
      '  To_number(0) as MATERNITY_DAYS,'
      '  To_number(0) as SICKNESS_DAYS,'
      '  To_number(0) as STATE_DAYS,'
      '  To_number(0) as ADMINISTRATIVE_DAYS'
      ''
      'from'
      '  %THE_DATES td'
      ''
      'where'
      '  (td.THE_FIRST_DATE between'
      '    :BEGIN_DATE and'
      
        '    DateTimeUtils.IncDateByTimeUnits(:BEGIN_DATE, :TIME_UNIT_COD' +
        'E, :TIME_UNIT_COUNT - 1)'
      '  )'
      ''
      'order by'
      '  THE_DATE  ')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'THE_DATE'
        ParamType = ptInput
        Value = 'THE_WEEK_DATE'
      end
      item
        DataType = ftWideString
        Name = 'THE_DATES'
        ParamType = ptInput
        Value = 'THE_WEEK_DATES'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftFloat
        Name = 'OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_DEPT_DESCENDANTS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL'
        ParamType = ptInput
      end>
    Left = 576
    Top = 464
    object qryEmployeesAvailabilityByDateUnitsTHE_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_DATE'
    end
    object qryEmployeesAvailabilityByDateUnitsWORKDAYS: TAbmesFloatField
      FieldName = 'WORKDAYS'
    end
    object qryEmployeesAvailabilityByDateUnitsTHE_LAST_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_LAST_DATE'
    end
    object qryEmployeesAvailabilityByDateUnitsNESSESARY_PRESENCE_DAYS: TAbmesFloatField
      FieldName = 'NESSESARY_PRESENCE_DAYS'
    end
    object qryEmployeesAvailabilityByDateUnitsPLAN_PRESENCE_DAYS: TAbmesFloatField
      FieldName = 'PLAN_PRESENCE_DAYS'
    end
    object qryEmployeesAvailabilityByDateUnitsPRESENCE_DAYS: TAbmesFloatField
      FieldName = 'PRESENCE_DAYS'
    end
    object qryEmployeesAvailabilityByDateUnitsSELF_ABSENCE_DAYS: TAbmesFloatField
      FieldName = 'SELF_ABSENCE_DAYS'
    end
    object qryEmployeesAvailabilityByDateUnitsVACATION_DAYS: TAbmesFloatField
      FieldName = 'VACATION_DAYS'
    end
    object qryEmployeesAvailabilityByDateUnitsMATERNITY_DAYS: TAbmesFloatField
      FieldName = 'MATERNITY_DAYS'
    end
    object qryEmployeesAvailabilityByDateUnitsSICKNESS_DAYS: TAbmesFloatField
      FieldName = 'SICKNESS_DAYS'
    end
    object qryEmployeesAvailabilityByDateUnitsSTATE_DAYS: TAbmesFloatField
      FieldName = 'STATE_DAYS'
    end
    object qryEmployeesAvailabilityByDateUnitsADMINISTRATIVE_DAYS: TAbmesFloatField
      FieldName = 'ADMINISTRATIVE_DAYS'
    end
  end
  object qryEmployeeDayAbsences: TAbmesSQLQuery
    BeforeOpen = qryEmployeeDayAbsencesBeforeOpen
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMP_DAY_ABSENCE_REASON_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMP_DAY_ABSENCE_REASON_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  eam.EMP_AVAIL_MODIFIER_CODE,'
      '  Greatest(eam.BEGIN_DATE, :BEGIN_DATE) as BEGIN_DATE,'
      '  Least(eam.END_DATE, :END_DATE) as END_DATE,'
      '  eam.EMP_DAY_ABSENCE_REASON_CODE,'
      '  edar.EMP_DAY_ABSENCE_REASON_NAME,'
      ''
      '  ( case'
      '      when (eam.EMP_DAY_ABSENCE_REASON_CODE = 1) or'
      '           (eam.EMP_DAY_ABSENCE_DOC_TYPE_CODE is not null)'
      '        then'
      '          edar.EMP_DAY_ABSENCE_REASON_ABBREV'
      '      else'
      '        ('#39'('#39' || edar.EMP_DAY_ABSENCE_REASON_ABBREV || '#39')'#39')'
      '    end'
      '  ) as EMP_DAY_ABSENCE_REASON_ABBREV,'
      ''
      '  eam.EMP_DAY_ABSENCE_DOC_TYPE_CODE,'
      '  ( select'
      '      edadt.EMP_DAY_ABSENCE_DOC_TYPE_NAME'
      '    from'
      '      EMP_DAY_ABSENCE_DOC_TYPES edadt'
      '    where'
      
        '      (edadt.EMP_DAY_ABSENCE_REASON_CODE = eam.EMP_DAY_ABSENCE_R' +
        'EASON_CODE) and'
      
        '      (edadt.EMP_DAY_ABSENCE_DOC_TYPE_CODE = eam.EMP_DAY_ABSENCE' +
        '_DOC_TYPE_CODE)'
      '  ) as EMP_DAY_ABSENCE_DOC_TYPE_NAME,'
      '  eam.EMP_DAY_ABSENCE_DOC_NO,'
      '  eam.EMP_DAY_ABSENCE_DOC_DATE,'
      '  eam.EMP_DAY_ABSENCE_DOC_ISSUER'
      '  '
      'from'
      '  EMP_AVAIL_MODIFIERS eam,'
      '  EMP_DAY_ABSENCE_REASONS edar'
      '  '
      'where'
      
        '  (eam.EMP_DAY_ABSENCE_REASON_CODE = edar.EMP_DAY_ABSENCE_REASON' +
        '_CODE) and'
      '  (eam.EMPLOYEE_CODE = :EMPLOYEE_CODE) and'
      '  (eam.EMP_AVAIL_MODIFIER_TYPE_CODE = 1) and'
      '  ( (:EMP_DAY_ABSENCE_REASON_CODE is null) or'
      
        '    (eam.EMP_DAY_ABSENCE_REASON_CODE = :EMP_DAY_ABSENCE_REASON_C' +
        'ODE)'
      '  ) and'
      '  (eam.STORNO_EMPLOYEE_CODE is null) and'
      
        '  (DateTimeUtils.DatePeriodIntersectLength(eam.BEGIN_DATE, eam.E' +
        'ND_DATE, :BEGIN_DATE, :END_DATE) > 0)'
      ''
      'order by'
      '  eam.BEGIN_DATE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 568
    Top = 56
    object qryEmployeeDayAbsencesEMP_AVAIL_MODIFIER_CODE: TAbmesFloatField
      FieldName = 'EMP_AVAIL_MODIFIER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEmployeeDayAbsencesBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object qryEmployeeDayAbsencesEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object qryEmployeeDayAbsencesEMP_DAY_ABSENCE_REASON_CODE: TAbmesFloatField
      FieldName = 'EMP_DAY_ABSENCE_REASON_CODE'
    end
    object qryEmployeeDayAbsencesEMP_DAY_ABSENCE_REASON_NAME: TAbmesWideStringField
      FieldName = 'EMP_DAY_ABSENCE_REASON_NAME'
      Size = 100
    end
    object qryEmployeeDayAbsencesEMP_DAY_ABSENCE_REASON_ABBREV: TAbmesWideStringField
      FieldName = 'EMP_DAY_ABSENCE_REASON_ABBREV'
      Size = 102
    end
    object qryEmployeeDayAbsencesEMP_DAY_ABSENCE_DOC_TYPE_CODE: TAbmesFloatField
      FieldName = 'EMP_DAY_ABSENCE_DOC_TYPE_CODE'
    end
    object qryEmployeeDayAbsencesEMP_DAY_ABSENCE_DOC_TYPE_NAME: TAbmesWideStringField
      FieldName = 'EMP_DAY_ABSENCE_DOC_TYPE_NAME'
      Size = 50
    end
    object qryEmployeeDayAbsencesEMP_DAY_ABSENCE_DOC_NO: TAbmesWideStringField
      FieldName = 'EMP_DAY_ABSENCE_DOC_NO'
      Size = 50
    end
    object qryEmployeeDayAbsencesEMP_DAY_ABSENCE_DOC_DATE: TAbmesSQLTimeStampField
      FieldName = 'EMP_DAY_ABSENCE_DOC_DATE'
    end
    object qryEmployeeDayAbsencesEMP_DAY_ABSENCE_DOC_ISSUER: TAbmesWideStringField
      FieldName = 'EMP_DAY_ABSENCE_DOC_ISSUER'
      Size = 100
    end
  end
  object prvEmployeeDayAbsences: TDataSetProvider
    DataSet = qryEmployeeDayAbsences
    UpdateMode = upWhereKeyOnly
    OnGetData = prvEmployeeDayAbsencesGetData
    Left = 568
    Top = 8
  end
  object qryCalcEmployeeOccupationsAndShifts: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select /*+ INDEX(oe) INDEX(os) ORDERED */'
      '  oe.EMPLOYEE_CODE,'
      '  oe.OCCUPATION_EMPLOYEE_CODE,'
      '  os.OCCUPATION_SHIFT_CODE,'
      '  o.OCCUPATION_CODE,'
      '  os.SHIFT_CODE,'
      
        '  Greatest(oe.ASSIGNMENT_BEGIN_DATE, os.BEGIN_DATE, :BEGIN_DATE)' +
        ' as BEGIN_DATE,'
      
        '  Least(oe.ASSIGNMENT_END_DATE, os.END_DATE, :END_DATE) as END_D' +
        'ATE'
      '  '
      'from'
      '  TEMP_AVAILABILITY_EMPLOYEES tae,'
      '  OCCUPATION_EMPLOYEES oe,'
      '  OCCUPATIONS o,'
      '  OCCUPATION_SHIFTS os'
      '  '
      'where'
      '  (tae.EMPLOYEE_CODE = oe.EMPLOYEE_CODE) and'
      ''
      '  (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      '  (o.OCCUPATION_CODE = os.OCCUPATION_CODE) and'
      ''
      '  (o.IS_MAIN = 1) and'
      ''
      '  (oe.ASSIGNMENT_BEGIN_DATE <= os.END_DATE) and'
      '  (oe.ASSIGNMENT_END_DATE >= os.BEGIN_DATE) and'
      ''
      '  (oe.ASSIGNMENT_BEGIN_DATE <= :END_DATE) and'
      '  (oe.ASSIGNMENT_END_DATE >= :BEGIN_DATE) and'
      ''
      '  (os.BEGIN_DATE <= :END_DATE) and'
      '  (os.END_DATE >= :BEGIN_DATE)'
      '  '
      'order by'
      '  oe.EMPLOYEE_CODE,'
      '  ASSIGNMENT_BEGIN_DATE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 728
    Top = 200
    object qryCalcEmployeeOccupationsAndShiftsEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCalcEmployeeOccupationsAndShiftsOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCalcEmployeeOccupationsAndShiftsOCCUPATION_SHIFT_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_SHIFT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCalcEmployeeOccupationsAndShiftsOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
    end
    object qryCalcEmployeeOccupationsAndShiftsSHIFT_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CODE'
    end
    object qryCalcEmployeeOccupationsAndShiftsBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object qryCalcEmployeeOccupationsAndShiftsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
  end
  object qryAddEmpMovement: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_OUT'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'EMP_MOVEMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'EMP_MOVEMENT_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CREATE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_TIME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into EMP_MOVEMENTS_FOR_EDIT'
      '('
      '  EMP_MOVEMENT_CODE,'
      '  EMPLOYEE_CODE,'
      '  IN_OUT,'
      '  EMP_MOVEMENT_DATE,'
      '  EMP_MOVEMENT_TIME,'
      '  CREATE_EMPLOYEE_CODE,'
      '  CREATE_DATE,'
      '  CREATE_TIME'
      ')'
      'values'
      '('
      '  seq_EMP_MOVEMENTS.NextVal,'
      '  ( select'
      '      e.EMPLOYEE_CODE'
      '    from'
      '      COMPANIES c,'
      '      EMPLOYEES e'
      '    where'
      '      (c.COMPANY_NO = :EMPLOYEE_NO) and'
      '      (c.COMPANY_CODE = e.COMPANY_CODE)'
      '  ),'
      '  :IN_OUT,'
      '  :EMP_MOVEMENT_DATE,'
      '  :EMP_MOVEMENT_TIME,'
      '  :CREATE_EMPLOYEE_CODE,'
      '  :CREATE_DATE,'
      '  :CREATE_TIME'
      ')')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 256
    Top = 512
  end
  object qryOccupationEmployee: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  oe.OCCUPATION_EMPLOYEE_CODE'
      ''
      'from'
      '  OCCUPATION_EMPLOYEES oe'
      ''
      'where'
      '  (oe.EMPLOYEE_CODE = :EMPLOYEE_CODE) and'
      '  (oe.OCCUPATION_CODE = :OCCUPATION_CODE) and'
      
        '  (:THE_DATE between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIGNMENT_' +
        'END_DATE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 744
    Top = 464
    object qryOccupationEmployeeOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_EMPLOYEE_CODE'
    end
  end
  object prvOccupationEmployee: TDataSetProvider
    DataSet = qryOccupationEmployee
    Options = [poReadOnly]
    Left = 744
    Top = 416
  end
  object qryGetPeriodFieldNames: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      '  TABLE_NAME,'
      '  KEY_FIELD_NAME'
      'from'
      '  THE_DATE_UNITS'
      'where'
      '  THE_DATE_UNIT_CODE = :TIME_UNIT_CODE'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 736
    Top = 520
    object qryGetPeriodFieldNamesTABLE_NAME: TAbmesWideStringField
      FieldName = 'TABLE_NAME'
      Size = 50
    end
    object qryGetPeriodFieldNamesKEY_FIELD_NAME: TAbmesWideStringField
      FieldName = 'KEY_FIELD_NAME'
      Size = 50
    end
  end
  object qryEmployeesAndOccupations: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_DEPT_DESCENDANTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_DEPT_DESCENDANTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_DEPT_DESCENDANTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  e.EMPLOYEE_CODE,'
      '  o.OCCUPATION_CODE'
      ''
      'from'
      '  EMPLOYEES e,'
      '  OCCUPATIONS o'
      ''
      'where'
      '  exists('
      '    select'
      '      1'
      '    from'
      '      TEMP_AVAILABILITY_EMPLOYEES tae'
      '    where'
      '      (tae.EMPLOYEE_CODE = e.EMPLOYEE_CODE)'
      '  ) and'
      ''
      '  exists('
      '    select'
      '      1'
      '    from'
      '      OCCUPATION_EMPLOYEES oe'
      '    where'
      '      (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '      (oe.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '      (oe.ASSIGNMENT_BEGIN_DATE <= :END_DATE) and'
      '      (oe.ASSIGNMENT_END_DATE >= :BEGIN_DATE)'
      '  ) and'
      '                                              '
      '  (o.IS_MAIN = 1) and'
      ''
      '  ( (:INCLUDE_DEPT_DESCENDANTS <> 2) and'
      '    ( (:OCCUPATION_DEPT_CODE = %TREE_ROOT_CODE) or'
      '      exists('
      '        select'
      '          1'
      '        from'
      '          DEPT_RELATIONS dr'
      '        where'
      '          (dr.ANCESTOR_DEPT_CODE = :OCCUPATION_DEPT_CODE) and'
      '          (dr.DESCENDANT_DEPT_CODE = o.DEPT_CODE) and'
      '          ( (:INCLUDE_DEPT_DESCENDANTS = 1) or'
      '            (dr.ANCESTOR_DEPT_CODE = dr.DESCENDANT_DEPT_CODE) )'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:SHIFT_CODE is null) or'
      '    exists('
      '      select'
      '        1'
      '      from'
      '        OCCUPATION_SHIFTS os'
      '      where'
      '        (os.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '        (:BEGIN_DATE between os.BEGIN_DATE and os.END_DATE) and'
      '        (os.SHIFT_CODE = :SHIFT_CODE)'
      '    )'
      '  ) and'
      ''
      '  ( (:IS_EXTERNAL is null) or'
      '    exists('
      '      select'
      '        1'
      '      from'
      '        COMPANIES c'
      '      where'
      '        (c.COMPANY_CODE = e.COMPANY_CODE) and'
      '        (c.IS_EXTERNAL = :IS_EXTERNAL)'
      '    )'
      '  )'
      ''
      ''
      '--------------'
      'union all'
      '--------------'
      ''
      ''
      'select'
      '  e.EMPLOYEE_CODE,'
      '  0 as OCCUPATION_CODE'
      ''
      'from'
      '  EMPLOYEES e'
      ''
      'where'
      '  exists('
      '    select'
      '      1'
      '    from'
      '      TEMP_AVAILABILITY_EMPLOYEES tae'
      '    where'
      '      (tae.EMPLOYEE_CODE = e.EMPLOYEE_CODE)'
      '  ) and'
      ''
      '  ( (:INCLUDE_DEPT_DESCENDANTS = 2) or'
      '    (:OCCUPATION_DEPT_CODE = %TREE_ROOT_CODE) ) and'
      ''
      '  (:SHIFT_CODE is null) and'
      '  (:IS_EXTERNAL is null) and'
      ''
      '  ( ( select'
      
        '        Coalesce(Sum(Least(oe.ASSIGNMENT_END_DATE, :END_DATE) - ' +
        'Greatest(oe.ASSIGNMENT_BEGIN_DATE, :BEGIN_DATE) + 1), 0)'
      '      from'
      '        OCCUPATION_EMPLOYEES oe,'
      '        OCCUPATIONS o'
      '      where'
      '        (oe.EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '        (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and'
      '        (oe.ASSIGNMENT_BEGIN_DATE <= :END_DATE) and'
      '        (oe.ASSIGNMENT_END_DATE >= :BEGIN_DATE) and'
      '        (o.IS_MAIN = 1)'
      
        '    ) <> (Cast(:END_DATE as Date) - Cast(:BEGIN_DATE as Date) + ' +
        '1)'
      '  )'
      ''
      'order by'
      '  EMPLOYEE_CODE,'
      '  OCCUPATION_CODE')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'TREE_ROOT_CODE'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 576
    Top = 512
    object qryEmployeesAndOccupationsEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object qryEmployeesAndOccupationsOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
    end
  end
  object qryLogFailedEmployeeMovement: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_OUT'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'EMP_MOVEMENT_DATE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CREATE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'EXCEPTION_MESSAGE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into FAILED_EMP_MOVEMENTS'
      '('
      '  FAILED_EMP_MOVEMENT_CODE,'
      '  EMPLOYEE_NO,'
      '  IN_OUT,'
      '  EMP_MOVEMENT_DATE_TIME,'
      '  CREATE_EMPLOYEE_CODE,'
      '  CREATE_DATE,'
      '  CREATE_TIME,'
      '  EXCEPTION_MESSAGE'
      ')'
      'values'
      '('
      '  seq_FAILED_EMP_MOVEMENTS.NextVal,'
      '  :EMPLOYEE_NO,'
      '  :IN_OUT,'
      '  :EMP_MOVEMENT_DATE_TIME,'
      '  :CREATE_EMPLOYEE_CODE,'
      '  :CREATE_DATE,'
      '  :CREATE_TIME,'
      '  :EXCEPTION_MESSAGE'
      ')')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 256
    Top = 560
  end
  object qryFailedEmployeeMovements: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  fem.FAILED_EMP_MOVEMENT_CODE,'
      '  fem.EMPLOYEE_NO,'
      '  fem.IN_OUT,'
      '  fem.EMP_MOVEMENT_DATE_TIME,'
      '  c.COMPANY_NO as CREATE_EMPLOYEE_NO,'
      
        '  (e.FIRST_NAME || '#39' '#39' || Substr(e.MIDDLE_NAME, 1, 1) || '#39'. '#39' ||' +
        ' e.LAST_NAME) as CREATE_EMPLOYEE_NAME,'
      '  fem.CREATE_DATE,'
      '  fem.CREATE_TIME,'
      '  fem.EXCEPTION_MESSAGE'
      ''
      'from'
      '  FAILED_EMP_MOVEMENTS fem,'
      '  EMPLOYEES e,'
      '  COMPANIES c'
      ''
      'where'
      '  (fem.CREATE_EMPLOYEE_CODE = e.EMPLOYEE_CODE) and'
      '  (e.COMPANY_CODE = c.COMPANY_CODE)'
      ''
      'order by'
      '  fem.EMP_MOVEMENT_DATE_TIME,'
      '  fem.EMPLOYEE_NO,'
      '  fem.IN_OUT,'
      '  fem.CREATE_DATE,'
      '  fem.CREATE_TIME')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 88
    Top = 624
    object qryFailedEmployeeMovementsFAILED_EMP_MOVEMENT_CODE: TAbmesFloatField
      FieldName = 'FAILED_EMP_MOVEMENT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryFailedEmployeeMovementsEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
    end
    object qryFailedEmployeeMovementsIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
    end
    object qryFailedEmployeeMovementsEMP_MOVEMENT_DATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'EMP_MOVEMENT_DATE_TIME'
    end
    object qryFailedEmployeeMovementsCREATE_EMPLOYEE_NO: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_NO'
    end
    object qryFailedEmployeeMovementsCREATE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'CREATE_EMPLOYEE_NAME'
      Size = 44
    end
    object qryFailedEmployeeMovementsCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryFailedEmployeeMovementsCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryFailedEmployeeMovementsEXCEPTION_MESSAGE: TAbmesWideStringField
      FieldName = 'EXCEPTION_MESSAGE'
      Size = 250
    end
  end
  object prvFailedEmployeeMovements: TDataSetProvider
    DataSet = qryFailedEmployeeMovements
    UpdateMode = upWhereKeyOnly
    Left = 88
    Top = 576
  end
  object qryGetFailedEmployeeMovement: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'FAILED_EMP_MOVEMENT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  fem.EMPLOYEE_NO,'
      '  fem.IN_OUT,'
      '  fem.EMP_MOVEMENT_DATE_TIME,'
      '  fem.CREATE_EMPLOYEE_CODE,'
      '  fem.CREATE_DATE,'
      '  fem.CREATE_TIME'
      ''
      'from'
      '  FAILED_EMP_MOVEMENTS fem'
      ''
      'where'
      '  (fem.FAILED_EMP_MOVEMENT_CODE = :FAILED_EMP_MOVEMENT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 392
    Top = 600
    object qryGetFailedEmployeeMovementEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
    end
    object qryGetFailedEmployeeMovementIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
    end
    object qryGetFailedEmployeeMovementEMP_MOVEMENT_DATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'EMP_MOVEMENT_DATE_TIME'
    end
    object qryGetFailedEmployeeMovementCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryGetFailedEmployeeMovementCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryGetFailedEmployeeMovementCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
  end
  object qryDelFailedEmployeeMovement: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'FAILED_EMP_MOVEMENT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete'
      '  FAILED_EMP_MOVEMENTS fem'
      'where'
      '  (fem.FAILED_EMP_MOVEMENT_CODE = :FAILED_EMP_MOVEMENT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 256
    Top = 616
  end
  object qryShifts: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  s.SHIFT_CODE,'
      '  s.SHIFT_ABBREV'
      'from'
      '  SHIFTS s'
      'order by'
      '  s.SHIFT_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 568
    Top = 592
    object qryShiftsSHIFT_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryShiftsSHIFT_ABBREV: TAbmesWideStringField
      FieldName = 'SHIFT_ABBREV'
      Size = 5
    end
  end
end
