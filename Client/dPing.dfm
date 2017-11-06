object dmPing: TdmPing
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 104
  Width = 410
  object conDatasnap: TSQLConnection
    DriverName = 'Datasnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'HostName=localhost'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=17.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'BufferKBSize=40'
      'Port=215'
      'Filters={}'
      'ConnectTimeout=2000'
      'CommunicationTimeout=2000')
    BeforeConnect = conDatasnapBeforeConnect
    Left = 80
    Top = 16
  end
  object dspcNonDbUtils: TAbmesDSProviderConnection
    ServerClassName = 'TdmNonDbUtilsProxy'
    SQLConnection = conDatasnap
    Left = 169
    Top = 16
  end
end
