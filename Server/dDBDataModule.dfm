inherited DBDataModule: TDBDataModule
  OldCreateOrder = True
  OnDestroy = DataModuleDestroy
  Height = 204
  Width = 627
  object SQLConn: TAbmesSQLConnection
    DriverName = 'DevartOracleDirect'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=DevartOracleDirect'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Oracle TransIsolation=ReadCommited'
      'DataBase=orainstance.domain.io:1521:std'
      'User_Name='
      'Password='
      'Reconnect=False'
      'EnableBCD=False'
      'LongStrings=True'
      'UseUnicode=True'
      'UseUnicodeMemo=True')
    AfterConnect = SQLConnAfterConnect
    Left = 32
    Top = 8
  end
  object qrySetContext: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CONTEXT_DATE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_READ_ONLY'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DB_ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      
        '  LoginContext.SetContext(:USER_CODE, :DEPT_CODE, :CONTEXT_DATE_' +
        'TIME, :IS_READ_ONLY, :DB_ID);'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    AutoTransaction = False
    Left = 152
    Top = 8
  end
  object qrySetNumericCharacters: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'alter session set nls_numeric_characters = %NUMERIC_CHARACTERS'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'NUMERIC_CHARACTERS'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    AutoTransaction = False
    Left = 152
    Top = 64
  end
end
