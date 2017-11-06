inherited fmSelectDocItemTemplate: TfmSelectDocItemTemplate
  Left = 248
  Top = 159
  Caption = #1048#1079#1073#1086#1088' '#1085#1072' '#1048#1048#1054' '#1048#1079#1090#1086#1095#1085#1080#1082
  ClientHeight = 108
  ClientWidth = 337
  ExplicitWidth = 343
  ExplicitHeight = 133
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 73
    Width = 337
    TabOrder = 1
    ExplicitTop = 73
    ExplicitWidth = 337
    inherited pnlOKCancel: TPanel
      Left = 158
      ExplicitLeft = 158
    end
    inherited pnlClose: TPanel
      Left = 69
      ExplicitLeft = 69
    end
  end
  object pnlDocItemTemplate: TPanel [1]
    Left = 8
    Top = 8
    Width = 321
    Height = 57
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object lblDocItemTemplate: TLabel
      Left = 8
      Top = 8
      Width = 75
      Height = 13
      Caption = #1048#1048#1054' '#1048#1079#1090#1086#1095#1085#1080#1082
    end
    object cbDocItemTemplate: TJvDBLookupCombo
      Left = 8
      Top = 24
      Width = 305
      Height = 21
      LookupField = 'DOC_ITEM_TEMPLATE_CODE'
      LookupDisplay = 'DOC_ITEM_TEMPLATE_NAME'
      LookupSource = dsDocItemTemplates
      TabOrder = 0
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1048#1079#1073#1086#1088' '#1085#1072' '#1048#1048#1054' '#1048#1079#1090#1086#1095#1085#1080#1082
    end
  end
  object cdsDocItemTemplates: TAbmesClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_TEMPLATE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_TYPE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDocItemTemplates'
    ConnectionBroker = dmMain.conDoc
    Left = 208
    object cdsDocItemTemplatesDOC_ITEM_TEMPLATE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TEMPLATE_CODE'
    end
    object cdsDocItemTemplatesDOC_ITEM_TEMPLATE_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_TEMPLATE_NAME'
      Size = 50
    end
  end
  object dsDocItemTemplates: TDataSource
    DataSet = cdsDocItemTemplates
    Left = 240
  end
end
