inherited DBPooledDataModule: TDBPooledDataModule
  OldCreateOrder = True
  OnDestroy = DataModuleDestroy
  Height = 238
  Width = 518
  object SQLConn: TAbmesSQLConnection
    DriverName = 'DevartOracleDirect'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=DevartOracleDirect'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Oracle TransIsolation=ReadCommited'
      'DataBase=orainstance.domain.io:1521:orcl'
      'User_Name='
      'Password='
      'Reconnect=False'
      'EnableBCD=False'
      'LongStrings=True'
      'UseUnicode=True'
      'UseUnicodeMemo=True')
    BeforeConnect = SQLConnBeforeConnect
    Left = 8
  end
end
