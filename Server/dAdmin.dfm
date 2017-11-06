inherited dmAdmin: TdmAdmin
  Height = 157
  Width = 201
  object prvSQLEditor: TDataSetProvider
    DataSet = qrySQLEditor
    Options = [poReadOnly, poAllowCommandText]
    BeforeGetRecords = prvSQLEditorBeforeGetRecords
    BeforeExecute = prvSQLEditorBeforeExecute
    AfterExecute = prvSQLEditorAfterExecute
    Left = 24
    Top = 16
  end
  object qrySQLEditor: TAbmesSQLQuery
    MaxBlobSize = -1
    ParamCheck = False
    Params = <>
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 24
    Top = 64
  end
end
