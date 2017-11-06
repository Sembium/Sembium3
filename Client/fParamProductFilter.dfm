inherited frParamProductFilter: TfrParamProductFilter
  Height = 233
  inherited grpTreeNodeFilter: TGroupBox
    Height = 233
    object lblUsedBy: TLabel [0]
      Left = 80
      Top = 184
      Width = 60
      Height = 13
      Caption = #1055#1088#1094'. '#1055#1086#1083#1079#1074'.'
    end
    object lblProvidedBy: TLabel [1]
      Left = 152
      Top = 184
      Width = 61
      Height = 13
      Caption = #1055#1088#1094'. '#1054#1073#1077#1079#1087'.'
    end
    object lblProductOrigin: TLabel [2]
      Left = 224
      Top = 184
      Width = 21
      Height = 13
      Caption = #1059#1059#1057
    end
    object lblCommonStatus: TLabel [3]
      Left = 296
      Top = 184
      Width = 41
      Height = 13
      Caption = #1055#1079#1094' '#1058#1049#1057
    end
    object lblIsActive: TLabel [4]
      Left = 8
      Top = 184
      Width = 54
      Height = 13
      Caption = #1040#1082#1090#1080#1074#1085#1086#1089#1090
    end
    object pnlParams: TPanel
      Left = 8
      Top = 99
      Width = 361
      Height = 76
      BevelOuter = bvNone
      TabOrder = 1
      object grdChosenNodeParams: TAbmesDBGrid
        Left = 0
        Top = 0
        Width = 336
        Height = 76
        Align = alClient
        Anchors = [akLeft, akTop, akRight]
        DataGrouping.GroupLevels = <>
        DataSource = dsChosenNodeParams
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'Tahoma'
        FooterFont.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        RowDetailPanel.Color = clBtnFace
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = grdChosenNodeParamsDblClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'NODE_PARAM_NAME'
            Footers = <>
            Width = 206
          end
          item
            EditButtons = <>
            FieldName = 'DISPLAY_VALUE'
            Footers = <>
            Width = 95
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object pnlParamsButtons: TPanel
        Left = 336
        Top = 0
        Width = 25
        Height = 76
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        object btnAddParam: TSpeedButton
          Left = 0
          Top = 0
          Width = 25
          Height = 25
          Action = actAddParam
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
            FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF000000
            FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
            FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
            FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
            0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
            0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
            0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
        object btnDelParam: TSpeedButton
          Left = 0
          Top = 24
          Width = 25
          Height = 25
          Action = actDelParam
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF000000
            FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
            FF00FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
            0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
            0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
            0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
        object btnEditParam: TSpeedButton
          Left = 0
          Top = 48
          Width = 25
          Height = 25
          Action = actEditParam
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
            0000FF00FF000000000000000000000000000000000000000000FFFFFF00FFFF
            FF0000000000FFFFFF000000000000000000FFFFFF0000000000FFFF00000000
            00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
            000000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF00000000
            0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
            0000FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFF00000000
            000000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
            00000000000000FFFF0000000000FFFFFF00FFFFFF0000000000FFFF00000000
            0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
            FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
            000000FFFF00FFFFFF0000000000000000000000000000000000000000000000
            000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
            00000000000000FFFF00FFFFFF0000FFFF00000000000000000000FFFF000000
            0000FFFFFF00FFFFFF000000000000000000FFFFFF0000000000FF00FF00FF00
            FF00FF00FF000000000000000000000000000000000000FFFF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000000000FFFF0000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF000000000000FFFF0000000000FFFFFF00FFFFFF000000
            000000000000FFFFFF0000000000FFFFFF00FFFFFF0000000000FF00FF00FF00
            FF00FF00FF000000000000FFFF000000000000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
            FF00000000000000FF0000000000FF00FF0000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FF00FF00FF00FF000000000000000000000000000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
        end
      end
    end
    object cbProductOrigin: TJvDBLookupCombo
      Left = 224
      Top = 200
      Width = 65
      Height = 21
      DropDownCount = 5
      DropDownWidth = 250
      DataField = 'PRODUCT_ORIGIN_CODE'
      DataSource = dsChosenNodesParams
      DisplayEmpty = '< '#1074#1089'. >'
      LookupField = 'PRODUCT_ORIGIN_CODE'
      LookupDisplay = 'PRODUCT_ORIGIN_ABBREV;PRODUCT_ORIGIN_NAME'
      LookupSource = dsProductOrigins
      TabOrder = 5
    end
    object cbProvidedBy: TJvDBLookupCombo
      Left = 152
      Top = 200
      Width = 65
      Height = 21
      DropDownCount = 5
      DropDownWidth = 320
      DataField = 'PROVIDED_BY_CODE'
      DataSource = dsChosenNodesParams
      DisplayEmpty = '< '#1074#1089'. >'
      LookupField = 'CODE'
      LookupDisplay = 'ABBREV;NAME'
      LookupSource = dsProvidedBy
      TabOrder = 4
    end
    object cbUsedBy: TJvDBLookupCombo
      Left = 80
      Top = 200
      Width = 65
      Height = 21
      DropDownCount = 5
      DropDownWidth = 345
      DataField = 'USED_BY_CODE'
      DataSource = dsChosenNodesParams
      DisplayEmpty = '< '#1074#1089'. >'
      LookupField = 'CODE'
      LookupDisplay = 'ABBREV;NAME'
      LookupSource = dsUsedBy
      TabOrder = 3
    end
    object cbCommonStatuses: TJvDBLookupCombo
      Left = 296
      Top = 200
      Width = 65
      Height = 21
      DropDownCount = 5
      DropDownWidth = 270
      DataField = 'COMMON_STATUS_CODE'
      DataSource = dsChosenNodesParams
      DisplayEmpty = '< '#1074#1089'. >'
      LookupField = 'COMMON_STATUS_CODE'
      LookupDisplay = 'COMMON_STATUS_ABBREV;COMMON_STATUS_NAME'
      LookupSource = dsCommonStatuses
      TabOrder = 6
    end
    object cbIsActive: TJvDBLookupCombo
      Left = 8
      Top = 200
      Width = 65
      Height = 21
      DropDownCount = 5
      DropDownWidth = 250
      DataField = 'ACTIVE_CODE'
      DataSource = dsChosenNodesParams
      DisplayEmpty = '< '#1074#1089'. >'
      LookupField = 'CODE'
      LookupDisplay = 'ABBREV;NAME'
      LookupSource = dsIsActive
      TabOrder = 2
    end
  end
  inherited alActions: TActionList
    object actAddParam: TAction
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077
      ImageIndex = 4
      OnExecute = actAddParamExecute
      OnUpdate = actAddParamUpdate
    end
    object actDelParam: TAction
      Hint = #1048#1079#1090#1088#1080#1074#1072#1085#1077
      ImageIndex = 5
      OnExecute = actDelParamExecute
      OnUpdate = actDelParamUpdate
    end
    object actEditParam: TAction
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077
      ImageIndex = 6
      OnExecute = actEditParamExecute
      OnUpdate = actEditParamUpdate
    end
  end
  inherited cdsChosenNodes: TAbmesClientDataSet
    FieldDefs = <
      item
        Name = 'NODE_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'NODE_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'NODE_NO'
        DataType = ftFloat
      end
      item
        Name = 'NODE_PARAMS'
        ChildDefs = <
          item
            Name = 'NODE_CODE'
            DataType = ftFloat
          end
          item
            Name = 'NODE_PARAM_CODE'
            DataType = ftFloat
          end
          item
            Name = 'NODE_PARAM_NAME'
            DataType = ftWideString
            Size = 50
          end
          item
            Name = 'NODE_PARAM_ORDER_NO'
            DataType = ftFloat
          end
          item
            Name = 'ABBREV'
            DataType = ftWideString
            Size = 20
          end
          item
            Name = 'VALUE_TYPE'
            DataType = ftFloat
          end
          item
            Name = 'NOM_CODE'
            DataType = ftFloat
          end
          item
            Name = 'DOC_BRANCH_CODE'
            DataType = ftFloat
          end
          item
            Name = 'DOC_CODE'
            DataType = ftFloat
          end
          item
            Name = 'HAS_DOC_ITEMS'
            DataType = ftFloat
          end
          item
            Name = 'NOM_DOC_BRANCH_CODE'
            DataType = ftFloat
          end
          item
            Name = 'NOM_DOC_CODE'
            DataType = ftFloat
          end
          item
            Name = 'NOM_HAS_DOC_ITEMS'
            DataType = ftFloat
          end
          item
            Name = 'DISPLAY_VALUE'
            DataType = ftWideString
            Size = 150
          end
          item
            Name = 'NODE_PARAM_VALUES'
            ChildDefs = <
              item
                Name = 'NODE_CODE'
                DataType = ftFloat
              end
              item
                Name = 'NODE_PARAM_CODE'
                DataType = ftFloat
              end
              item
                Name = 'NODE_PARAM_VALUE_CODE'
                DataType = ftFloat
              end
              item
                Name = 'VALUE_NOM_CODE'
                DataType = ftFloat
              end
              item
                Name = 'VALUE_NOM_ITEM_CODE'
                DataType = ftFloat
              end
              item
                Name = 'VALUE_NOM_ITEM_NAME'
                DataType = ftWideString
                Size = 50
              end
              item
                Name = 'VALUE_NOM_ITEM_DESCRIPTION'
                DataType = ftWideString
                Size = 100
              end
              item
                Name = 'VALUE_NOM_ITEM_DOC_BRANCH_CODE'
                DataType = ftFloat
              end
              item
                Name = 'VALUE_NOM_ITEM_DOC_CODE'
                DataType = ftFloat
              end
              item
                Name = 'VALUE_NOM_ITEM_HAS_DOC_ITEMS'
                DataType = ftFloat
              end
              item
                Name = 'VALUE_FLOAT_MIN'
                DataType = ftFloat
              end
              item
                Name = 'VALUE_FLOAT_MAX'
                DataType = ftFloat
              end
              item
                Name = 'VALUE_STRING'
                DataType = ftWideString
                Size = 300
              end
              item
                Name = 'VALUE_NOM_ITEM_DISPLAY_NAME'
                DataType = ftWideString
                Size = 150
              end>
            DataType = ftDataSet
            Size = 14
          end>
        DataType = ftDataSet
        Size = 15
      end>
    BeforeDelete = cdsChosenNodesBeforeDelete
  end
  inherited cdsChosenNodesParams: TAbmesClientDataSet
    object cdsChosenNodesParamsUSED_BY_CODE: TAbmesFloatField
      FieldName = 'USED_BY_CODE'
    end
    object cdsChosenNodesParamsPROVIDED_BY_CODE: TAbmesFloatField
      FieldName = 'PROVIDED_BY_CODE'
    end
    object cdsChosenNodesParamsPRODUCT_ORIGIN_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_ORIGIN_CODE'
    end
    object cdsChosenNodesParamsCOMMON_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMMON_STATUS_CODE'
    end
    object cdsChosenNodesParamsACTIVE_CODE: TAbmesFloatField
      FieldName = 'ACTIVE_CODE'
    end
  end
  object dsChosenNodeParams: TDataSource
    Left = 272
    Top = 128
  end
  object cdsProductOrigins: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conProductsTreeEditor
    Params = <>
    ProviderName = 'prvProductOrigins'
    Left = 224
    Top = 184
    object cdsProductOriginsPRODUCT_ORIGIN_CODE: TAbmesFloatField
      DisplayWidth = 12
      FieldName = 'PRODUCT_ORIGIN_CODE'
    end
    object cdsProductOriginsPRODUCT_ORIGIN_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_ORIGIN_NAME'
      Size = 100
    end
    object cdsProductOriginsPRODUCT_ORIGIN_ABBREV: TAbmesWideStringField
      DisplayWidth = 10
      FieldName = 'PRODUCT_ORIGIN_ABBREV'
      Size = 100
    end
  end
  object dsProductOrigins: TDataSource
    DataSet = cdsProductOrigins
    Left = 256
    Top = 184
  end
  object cdsUsedBy: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 80
    Top = 184
    object cdsUsedByCODE: TAbmesFloatField
      DisplayWidth = 10
      FieldName = 'CODE'
    end
    object cdsUsedByABBREV: TAbmesWideStringField
      FieldName = 'ABBREV'
      Size = 10
    end
    object cdsUsedByNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 50
    end
  end
  object cdsProvidedBy: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 152
    Top = 184
    object cdsProvidedByCODE: TAbmesFloatField
      DisplayWidth = 10
      FieldName = 'CODE'
    end
    object cdsProvidedByABBREV: TAbmesWideStringField
      FieldName = 'ABBREV'
      Size = 7
    end
    object cdsProvidedByNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 50
    end
  end
  object dsUsedBy: TDataSource
    DataSet = cdsUsedBy
    Left = 112
    Top = 184
  end
  object dsProvidedBy: TDataSource
    DataSet = cdsProvidedBy
    Left = 184
    Top = 184
  end
  object cdsCommonStatuses: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 296
    Top = 184
    object cdsCommonStatusesCOMMON_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMMON_STATUS_CODE'
    end
    object cdsCommonStatusesCOMMON_STATUS_ABBREV: TAbmesWideStringField
      FieldName = 'COMMON_STATUS_ABBREV'
      Size = 10
    end
    object cdsCommonStatusesCOMMON_STATUS_NAME: TAbmesWideStringField
      FieldName = 'COMMON_STATUS_NAME'
      Size = 50
    end
  end
  object dsCommonStatuses: TDataSource
    DataSet = cdsCommonStatuses
    Left = 328
    Top = 184
  end
  object cdsIsActive: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 8
    Top = 184
    object cdsIsActiveCODE: TAbmesFloatField
      FieldName = 'CODE'
    end
    object cdsIsActiveABBREV: TAbmesWideStringField
      FieldName = 'ABBREV'
      Size = 10
    end
    object cdsIsActiveNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 50
    end
  end
  object dsIsActive: TDataSource
    DataSet = cdsIsActive
    Left = 40
    Top = 184
  end
end
