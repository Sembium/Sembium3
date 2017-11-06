inherited fmSelectSpecFinModel: TfmSelectSpecFinModel
  Caption = #1048#1079#1073#1077#1088#1077#1090#1077' '#1042#1072#1088#1080#1072#1085#1090' '#1085#1072' '#1055'-'#1052#1054#1044#1045#1083' '#1079#1072' '#1079#1072#1088#1077#1078#1076#1072#1085#1077
  ClientHeight = 92
  ClientWidth = 529
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 513
    Height = 41
  end
  inherited pnlBottomButtons: TPanel
    Top = 57
    Width = 529
    TabOrder = 1
    inherited pnlOKCancel: TPanel
      Left = 261
    end
    inherited pnlClose: TPanel
      Left = 172
    end
    inherited pnlApply: TPanel
      Left = 440
      Visible = False
    end
  end
  object cbSpecFinModel: TJvDBLookupCombo [2]
    Left = 16
    Top = 16
    Width = 497
    Height = 21
    EscapeClear = False
    Anchors = [akLeft, akTop, akRight]
    LookupField = 'SPEC_FIN_MODEL_CODE'
    LookupDisplay = 'SPEC_FIN_MODEL_NAME'
    LookupSource = dsSpecFinModels
    TabOrder = 0
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1048#1079#1073#1077#1088#1077#1090#1077' '#1042#1072#1088#1080#1072#1085#1090' '#1085#1072' '#1055'-'#1052#1054#1044#1045#1083' '#1079#1072' '#1079#1072#1088#1077#1078#1076#1072#1085#1077
    end
  end
  object cdsSpecFinModels: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conFinance
    Params = <
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXEC_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXEC_DEPT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvSpecFinModels'
    Left = 288
    object cdsSpecFinModelsSPEC_FIN_MODEL_CODE: TAbmesFloatField
      FieldName = 'SPEC_FIN_MODEL_CODE'
    end
    object cdsSpecFinModelsFINANCIAL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'FINANCIAL_PRODUCT_CODE'
    end
    object cdsSpecFinModelsSPEC_FIN_MODEL_NAME: TAbmesWideStringField
      FieldName = 'SPEC_FIN_MODEL_NAME'
      Size = 100
    end
  end
  object dsSpecFinModels: TDataSource
    DataSet = cdsSpecFinModels
    Left = 320
  end
end
