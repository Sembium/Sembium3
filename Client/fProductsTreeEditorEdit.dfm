inherited fmProductsTreeEditorEdit: TfmProductsTreeEditorEdit
  Left = 433
  Top = 212
  Caption = '%ProductClassCommonName% - %s'
  ClientHeight = 581
  ClientWidth = 537
  DesignSize = (
    537
    581)
  PixelsPerInch = 96
  TextHeight = 13
  object gbSelfExistentStatus: TGroupBox [0]
    Left = 296
    Top = 225
    Width = 89
    Height = 70
    Caption = '                        '
    TabOrder = 7
    Visible = False
    object lblSelfExistentStatus: TLabel
      Left = 10
      Top = -1
      Width = 67
      Height = 44
      AutoSize = False
      Caption = #1042#1082#1083#1102#1095#1074#1072#1085#1077' '#1074' '#1072#1085#1072#1083#1080#1079' '#1085#1072' '#1087#1086#1090#1088#1077#1073#1085#1086#1089#1090#1080
      Transparent = True
      WordWrap = True
    end
    object cbSelfExistentStatus: TJvDBComboBox
      Left = 8
      Top = 40
      Width = 73
      Height = 21
      DataField = 'SELF_EXISTENT_STATUS_CODE'
      DataSource = dsData
      ItemHeight = 13
      Items.Strings = (
        ''
        #1044#1072
        #1053#1077)
      TabOrder = 0
      Values.Strings = (
        ''
        '1'
        '2')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
    end
  end
  object pnlBudget: TPanel [1]
    Left = 8
    Top = 104
    Width = 449
    Height = 113
    BevelOuter = bvNone
    TabOrder = 8
    object GroupBox1: TGroupBox
      Left = 0
      Top = 3
      Width = 185
      Height = 46
      Caption = ' '#1057#1098#1076#1098#1088#1078#1072#1090#1077#1083#1077#1085' '#1090#1080#1087' '
      TabOrder = 0
      object cbBOIOrderType: TJvDBLookupCombo
        Left = 8
        Top = 17
        Width = 169
        Height = 21
        DeleteKeyClear = False
        DataField = 'BOI_ORDER_TYPE_CODE'
        DataSource = dsData
        DisplayEmpty = ' '
        LookupField = 'BOI_ORDER_TYPE_CODE'
        LookupDisplay = 'BOI_ORDER_TYPE_NAME'
        LookupSource = dsBOIOrderTypes
        TabOrder = 0
      end
    end
    inline frBndNormalGroupProduct: TfrProductFieldEditFrame
      Left = 0
      Top = 55
      Width = 441
      Height = 49
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 49
      TabOrder = 1
      TabStop = True
      inherited gbTreeNode: TGroupBox
        Width = 441
        inherited pnlTreeNode: TPanel
          Width = 425
          inherited pnlTreeNodeName: TPanel
            Width = 243
            inherited edtTreeNodeName: TDBEdit
              Width = 242
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 243
          end
          inherited pnlRightButtons: TPanel
            Left = 366
          end
        end
      end
    end
  end
  inherited pnlBottomButtons: TPanel
    Top = 546
    Width = 537
    TabOrder = 12
    inherited pnlOKCancel: TPanel
      Left = 269
      TabOrder = 2
    end
    inherited pnlClose: TPanel
      Left = 180
      TabOrder = 1
    end
    inherited pnlApply: TPanel
      Left = 448
      TabOrder = 3
    end
    object btnProductPeriods: TBitBtn
      Left = 8
      Top = 2
      Width = 81
      Height = 25
      Action = actProductPeriods
      Caption = '%ProductPeriodAbbrev%...'
      NumGlyphs = 2
      Spacing = -1
      TabOrder = 0
    end
  end
  inherited pnlData: TPanel [3]
    Width = 521
    Height = 93
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    inherited lblNodeNo: TLabel
      Left = 8
      Width = 49
      Caption = 'id '#1094#1080#1092#1088#1086#1074
    end
    inherited lblNodeName: TLabel
      Width = 63
      Caption = 'id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
    end
    inherited edtNodeNo: TDBEdit
      Left = 8
      Width = 97
    end
    inherited edtNodeName: TDBEdit
      Width = 361
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
    end
    object chbInactive: TAbmesDBCheckBox
      Left = 432
      Top = 66
      Width = 75
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1053#1077#1072#1082#1090#1080#1074#1077#1085
      DataField = 'IS_INACTIVE'
      DataSource = dsData
      TabOrder = 4
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object tlbDocs: TToolBar
      Left = 474
      Top = 23
      Width = 39
      Height = 22
      Align = alNone
      Anchors = [akTop, akRight]
      AutoSize = True
      ButtonWidth = 39
      Images = dmMain.ilDocs
      TabOrder = 2
      object btnDocs: TToolButton
        Left = 0
        Top = 0
        Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090#1072
        ImageIndex = 1
        OnClick = btnDocsClick
      end
    end
    object pnlNotesAndIsVatFree: TPanel
      Left = 8
      Top = 48
      Width = 424
      Height = 41
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 3
      object pnlNotes: TPanel
        Left = 0
        Top = 0
        Width = 295
        Height = 41
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          295
          41)
        object lblNotes: TLabel
          Left = 0
          Top = 0
          Width = 45
          Height = 13
          Caption = #1041#1077#1083#1077#1078#1082#1080
          FocusControl = edtNotes
        end
        object edtNotes: TDBEdit
          Left = 0
          Top = 16
          Width = 285
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'NOTES'
          DataSource = dsData
          TabOrder = 0
        end
      end
      object pnlIsVatFree: TPanel
        Left = 295
        Top = 0
        Width = 129
        Height = 41
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          129
          41)
        object chbIsVatFree: TAbmesDBCheckBox
          Left = 0
          Top = 18
          Width = 117
          Height = 17
          Anchors = [akLeft, akTop, akRight]
          Caption = #1054#1089#1074#1086#1073#1086#1076#1077#1085' '#1086#1090' '#1044#1044#1057
          DataField = 'IS_VAT_FREE'
          DataSource = dsData
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
    end
  end
  object tcMain: TTabControl [4]
    Left = 8
    Top = 351
    Width = 521
    Height = 190
    Anchors = [akLeft, akTop, akRight, akBottom]
    HotTrack = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    Tabs.Strings = (
      #1051#1086#1075#1080#1095#1077#1089#1082#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080
      #1055#1088#1086#1094#1077#1089#1085#1080' '#1055#1086#1079#1080#1094#1080#1080
      #1056#1077#1076' '#1085#1072' '#1055#1086#1083#1079#1074#1072#1085#1077)
    TabIndex = 0
    OnChange = tcMainChange
  end
  inherited pnlParamsCaption: TPanel
    Left = 536
    Top = 58
    Width = 49
    TabOrder = 11
    Visible = False
  end
  inherited pnlMain: TPanel [6]
    Left = 19
    Top = 377
    Width = 499
    Height = 154
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelInner = bvNone
    BevelOuter = bvNone
    TabOrder = 10
    object pnlProductDeptOptions: TPanel [0]
      Left = 0
      Top = 616
      Width = 499
      Height = 154
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      Visible = False
    end
    object pnlProductLocations: TPanel [1]
      Left = 0
      Top = 308
      Width = 499
      Height = 154
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
    end
    object pnlProductMinQuantities: TPanel [2]
      Left = 0
      Top = 154
      Width = 499
      Height = 154
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      Visible = False
    end
    object pnlProcessPositions: TPanel [3]
      Left = 0
      Top = 462
      Width = 499
      Height = 154
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      Visible = False
      object bvlHorizontalLine1: TBevel
        Left = -2
        Top = 27
        Width = 235
        Height = 9
        Shape = bsBottomLine
      end
      object bvlHorizontalLine2: TBevel
        Left = 264
        Top = 27
        Width = 235
        Height = 9
        Shape = bsBottomLine
      end
      object bvlVerticalLine: TBevel
        Left = 248
        Top = 0
        Width = 3
        Height = 153
        Shape = bsLeftLine
      end
      object lblUsed: TLabel
        Left = 0
        Top = 1
        Width = 97
        Height = 27
        Alignment = taCenter
        AutoSize = False
        Caption = #1055#1088#1086#1094#1077#1089#1080' '#1055#1054#1051#1047#1042#1040#1058#1045#1051#1048
        Transparent = True
        WordWrap = True
      end
      object lblUsedPriority: TLabel
        Left = 168
        Top = 1
        Width = 65
        Height = 27
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090
        Transparent = True
        WordWrap = True
      end
      object lblProvidedPriority: TLabel
        Left = 432
        Top = 1
        Width = 65
        Height = 27
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090
        Transparent = True
        WordWrap = True
      end
      object lblProvided: TLabel
        Left = 264
        Top = 1
        Width = 113
        Height = 27
        Alignment = taCenter
        AutoSize = False
        Caption = #1055#1088#1086#1094#1077#1089#1080' '#1054#1041#1045#1047#1055#1045#1063#1048#1058#1045#1051#1048
        Transparent = True
        WordWrap = True
      end
      object chbIsUsedBySaleProduction: TAbmesDBCheckBox
        Left = 0
        Top = 84
        Width = 148
        Height = 27
        Caption = #1042#1098#1090#1088#1077#1096#1085#1086' '#1054#1073#1077#1079#1087#1077#1095#1072#1074#1072#1085#1077' '#1085#1072' '#1055#1088#1086#1076#1072#1078#1073#1080' ('#1042#1054#1055#1088#1076')'
        DataField = 'IS_USED_BY_SALE_PRODUCTION'
        DataSource = dsData
        TabOrder = 2
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        WordWrap = True
        ImmediateUpdateField = True
      end
      object chbIsUsedBySales: TAbmesDBCheckBox
        Left = 0
        Top = 50
        Width = 105
        Height = 17
        Caption = #1055#1088#1086#1076#1072#1078#1073#1080' ('#1055#1088#1076')'
        DataField = 'IS_USED_BY_SALES'
        DataSource = dsData
        TabOrder = 0
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        ImmediateUpdateField = True
      end
      object chbIsUsedByEnvProduction: TAbmesDBCheckBox
        Left = 0
        Top = 123
        Width = 165
        Height = 27
        Caption = #1042#1098#1090#1088#1077#1096#1085#1086' '#1054#1073#1077#1079#1087#1077#1095#1072#1074#1072#1085#1077' '#1085#1072' '#1045#1083#1077#1084#1077#1085#1090#1080' '#1085#1072' '#1057#1088#1077#1076#1072' ('#1042#1054#1045#1083#1057')'
        DataField = 'IS_USED_BY_ENV_PRODUCTION'
        DataSource = dsData
        TabOrder = 4
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        WordWrap = True
        ImmediateUpdateField = True
      end
      object chbIsProvidedByDeliveries: TAbmesDBCheckBox
        Left = 264
        Top = 50
        Width = 100
        Height = 17
        Caption = #1044#1086#1089#1090#1072#1074#1082#1080' ('#1044#1089#1090')'
        DataField = 'IS_PROVIDED_BY_DELIVERIES'
        DataSource = dsData
        TabOrder = 6
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        ImmediateUpdateField = True
      end
      object chbIsProvidedBySaleProduction: TAbmesDBCheckBox
        Left = 264
        Top = 84
        Width = 148
        Height = 27
        Caption = #1042#1098#1090#1088#1077#1096#1085#1086' '#1054#1073#1077#1079#1087#1077#1095#1072#1074#1072#1085#1077' '#1085#1072' '#1055#1088#1086#1076#1072#1078#1073#1080' ('#1042#1054#1055#1088#1076')'
        DataField = 'IS_PROVIDED_BY_SALE_PRODUCTION'
        DataSource = dsData
        TabOrder = 8
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        WordWrap = True
        ImmediateUpdateField = True
      end
      object chbIsProvidedByEnvProduction: TAbmesDBCheckBox
        Left = 264
        Top = 123
        Width = 165
        Height = 27
        Caption = #1042#1098#1090#1088#1077#1096#1085#1086' '#1054#1073#1077#1079#1087#1077#1095#1072#1074#1072#1085#1077' '#1085#1072' '#1045#1083#1077#1084#1077#1085#1090#1080' '#1085#1072' '#1057#1088#1077#1076#1072' ('#1042#1054#1045#1083#1057')'
        DataField = 'IS_PROVIDED_BY_ENV_PRODUCTION'
        DataSource = dsData
        TabOrder = 10
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        WordWrap = True
        ImmediateUpdateField = True
      end
      object cbUsedBySalesPriority: TJvDBLookupCombo
        Left = 196
        Top = 48
        Width = 38
        Height = 21
        DropDownWidth = 41
        DeleteKeyClear = False
        DisplayAllFields = True
        DataField = 'USED_BY_SALES_PR_CODE'
        DataSource = dsData
        LookupField = 'PRIORITY_CODE'
        LookupDisplay = 'PRIORITY_NO'
        LookupSource = dsPriorities
        TabOrder = 1
      end
      object cbUsedBySaleProductionPriority: TJvDBLookupCombo
        Left = 196
        Top = 87
        Width = 38
        Height = 21
        DropDownWidth = 41
        DeleteKeyClear = False
        DisplayAllFields = True
        DataField = 'USED_BY_SALE_PROD_PR_CODE'
        DataSource = dsData
        LookupField = 'PRIORITY_CODE'
        LookupDisplay = 'PRIORITY_NO'
        LookupSource = dsPriorities
        TabOrder = 3
      end
      object cbUsedByEnvProductionPriority: TJvDBLookupCombo
        Left = 196
        Top = 126
        Width = 38
        Height = 21
        DropDownWidth = 41
        DeleteKeyClear = False
        DisplayAllFields = True
        DataField = 'USED_BY_ENV_PROD_PR_CODE'
        DataSource = dsData
        LookupField = 'PRIORITY_CODE'
        LookupDisplay = 'PRIORITY_NO'
        LookupSource = dsPriorities
        TabOrder = 5
      end
      object cbProvidedByDeliveriesPriority: TJvDBLookupCombo
        Left = 460
        Top = 48
        Width = 38
        Height = 21
        DropDownWidth = 41
        DeleteKeyClear = False
        DisplayAllFields = True
        DataField = 'PROV_BY_DELIVERIES_PR_CODE'
        DataSource = dsData
        LookupField = 'PRIORITY_CODE'
        LookupDisplay = 'PRIORITY_NO'
        LookupSource = dsPriorities
        TabOrder = 7
      end
      object cbProvidedBySaleProductionPriority: TJvDBLookupCombo
        Left = 460
        Top = 87
        Width = 38
        Height = 21
        DropDownWidth = 41
        DeleteKeyClear = False
        DisplayAllFields = True
        DataField = 'PROV_BY_SALE_PROD_PR_CODE'
        DataSource = dsData
        LookupField = 'PRIORITY_CODE'
        LookupDisplay = 'PRIORITY_NO'
        LookupSource = dsPriorities
        TabOrder = 9
      end
      object cbProvidedByEnvProductionPriority: TJvDBLookupCombo
        Left = 460
        Top = 126
        Width = 38
        Height = 21
        DropDownWidth = 41
        DeleteKeyClear = False
        DisplayAllFields = True
        DataField = 'PROV_BY_ENV_PROD_PR_CODE'
        DataSource = dsData
        LookupField = 'PRIORITY_CODE'
        LookupDisplay = 'PRIORITY_NO'
        LookupSource = dsPriorities
        TabOrder = 11
      end
    end
    inherited pnlGrid: TPanel
      Left = 0
      Top = 0
      Width = 499
      Height = 154
      Align = alTop
      ParentColor = True
      inherited pnlNavigator: TPanel
        Top = 36
        Width = 499
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Width = 64
          object sepShowNotDefined: TToolButton
            Left = 56
            Top = 0
            Width = 8
            Caption = 'sepShowNotDefined'
            ImageIndex = 3
            Style = tbsSeparator
          end
        end
        object tlbShowNotDefined: TToolBar
          Left = 256
          Top = 0
          Width = 40
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonWidth = 22
          Color = clBtnFace
          ParentColor = False
          ParentShowHint = False
          ShowCaptions = True
          ShowHint = True
          TabOrder = 3
          Transparent = False
          object btnShowNotDefined: TSpeedButton
            Left = 0
            Top = 0
            Width = 40
            Height = 22
            Action = actShowNotDefined
            AllowAllUp = True
            GroupIndex = 5
            Flat = True
            Layout = blGlyphRight
            ParentShowHint = False
            ShowHint = True
            Transparent = False
          end
        end
      end
      inherited pnlDataButtons: TPanel
        Top = 118
        Align = alNone
        Visible = False
      end
      inherited grdData: TAbmesDBGrid
        Top = 60
        Width = 499
        Height = 94
        OnGetBtnParams = grdDataGetBtnParams
        OnSortMarkingChanged = grdDataSortMarkingChanged
        OnTitleBtnClick = grdDataTitleBtnClick
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'NODE_PARAM_ORDER_NO'
            Footers = <>
            Title.Alignment = taRightJustify
            Title.Caption = #1053#1072#1088#1077#1076#1073#1072
            Width = 50
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'NODE_PARAM_NAME'
            Footers = <>
            Width = 179
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'ABBREV'
            Footers = <>
            Title.Caption = #1040#1073#1088#1077#1074'.'
            Width = 65
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'IS_REQUIRED'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1047#1072#1076'.'
            Width = 25
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = '_SHOW_VALUE'
            Footers = <>
            Width = 143
          end>
      end
      inherited pnlPreffixAndSuffix: TPanel
        Width = 499
        Height = 36
        inherited lblSuffix: TLabel
          Left = 256
        end
        inherited edtPrefix: TDBEdit
          Top = 14
          Width = 243
        end
        inherited edtSuffix: TDBEdit
          Left = 256
          Top = 14
          Width = 243
        end
      end
    end
  end
  object gbProductOrigin: TGroupBox [7]
    Left = 216
    Top = 297
    Width = 313
    Height = 48
    Caption = ' '#1059#1085#1080#1082#1072#1083#1085#1086#1089#1090' '#1085#1072' '#1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1085#1072' '#1057#1098#1097#1077#1089#1090#1074#1091#1074#1072#1085#1077#1090#1086' '
    TabOrder = 6
    DesignSize = (
      313
      48)
    object cbProductOrigin: TJvDBLookupCombo
      Left = 8
      Top = 17
      Width = 297
      Height = 21
      DeleteKeyClear = False
      DataField = 'PRODUCT_ORIGIN_CODE'
      DataSource = dsData
      DisplayEmpty = ' '
      Anchors = [akLeft, akTop, akRight]
      LookupField = 'PRODUCT_ORIGIN_CODE'
      LookupDisplay = '_SHOW_NAME'
      LookupSource = dsProductOrigins
      TabOrder = 0
    end
  end
  object gbCommonStatus: TGroupBox [8]
    Left = 8
    Top = 225
    Width = 521
    Height = 70
    Caption = ' '#1055#1086#1079#1080#1094#1080#1103' '#1074' '#1058#1049#1057' '
    TabOrder = 4
    object bvlCommonStatus: TBevel
      Left = 351
      Top = 12
      Width = 9
      Height = 53
      Shape = bsLeftLine
    end
    object pnlCommonStatus: TPanel
      Left = 6
      Top = 11
      Width = 98
      Height = 57
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        98
        57)
      object rgCommonStatus: TDBRadioGroup
        Left = -2
        Top = -16
        Width = 107
        Height = 77
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataField = 'COMMON_STATUS_CODE'
        DataSource = dsData
        Items.Strings = (
          #1045#1076#1080#1085#1072#1082
          #1054#1073#1086#1073#1097#1072#1074#1072#1097
          #1055#1088#1080#1086#1073#1097#1077#1085)
        TabOrder = 0
        Values.Strings = (
          '1'
          '2'
          '3')
      end
    end
    object edtCommonProductLevels: TDBEdit
      Left = 238
      Top = 28
      Width = 41
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = '_COMMON_PRODUCTS_LEVELS_SHOW'
      DataSource = dsCommonProductInfo
      ReadOnly = True
      TabOrder = 2
    end
    object chbIsThorughlyEngineered: TAbmesDBCheckBox
      Left = 118
      Top = 50
      Width = 57
      Height = 17
      Caption = #1045#1090#1072#1083#1086#1085
      DataField = 'IS_THOROUGHLY_ENGINEERED'
      DataSource = dsData
      TabOrder = 3
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object cbIsStrategic: TJvDBComboBox
      Left = 118
      Top = 28
      Width = 121
      Height = 21
      DataField = 'IS_STRATEGIC'
      DataSource = dsData
      ItemHeight = 13
      Items.Strings = (
        ''
        #1055#1086#1090#1077#1085#1094#1080#1072#1083#1077#1085
        #1057#1090#1088#1072#1090#1077#1075#1080#1095#1077#1089#1082#1080)
      TabOrder = 1
      Values.Strings = (
        ''
        '0'
        '1')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object btnCommonGroups: TButton
      Left = 410
      Top = 27
      Width = 60
      Height = 23
      Action = actCommonGroups
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
  end
  object gbExisting: TGroupBox [9]
    Left = 8
    Top = 104
    Width = 217
    Height = 69
    Caption = ' '#1053#1072#1095#1080#1085' '#1085#1072' '#1057#1098#1097#1077#1089#1090#1074#1091#1074#1072#1085#1077' '#1074#1098#1074' '#1074#1088#1077#1084#1077#1090#1086' '
    TabOrder = 1
    DesignSize = (
      217
      69)
    object lblWorkdays: TLabel
      Left = 144
      Top = 22
      Width = 43
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1056#1072#1073'. '#1076#1085#1080
    end
    object cbTransientStatus: TJvDBLookupCombo
      Left = 8
      Top = 38
      Width = 137
      Height = 21
      DeleteKeyClear = False
      DataField = '_TRANSIENT_STATUS_NAME'
      DataSource = dsData
      DisplayEmpty = ' '
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
    end
    object edtWorkdaysToExist: TDBEdit
      Left = 144
      Top = 38
      Width = 65
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'WORKDAYS_TO_EXIST'
      DataSource = dsData
      TabOrder = 1
    end
  end
  object gbMeasures: TGroupBox [10]
    Left = 232
    Top = 104
    Width = 297
    Height = 118
    Caption = ' '#1052#1077#1088#1085#1080' '#1077#1076#1080#1085#1080#1094#1080' '
    TabOrder = 3
    object lblMeasure: TLabel
      Left = 16
      Top = 42
      Width = 42
      Height = 13
      Caption = #1056#1072#1073#1086#1090#1085#1072
      FocusControl = cbMeasure
    end
    object lblAccountMeasure: TLabel
      Left = 208
      Top = 7
      Width = 59
      Height = 13
      Caption = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1072
      FocusControl = cbAccountMeasure
    end
    object lblTechMeasure: TLabel
      Left = 208
      Top = 42
      Width = 70
      Height = 13
      Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1072
      FocusControl = cbTechMeasure
    end
    object lblOne: TLabel
      Left = 8
      Top = 60
      Width = 6
      Height = 13
      Caption = '1'
    end
    object lblEqualTo: TLabel
      Left = 108
      Top = 58
      Width = 6
      Height = 13
      Caption = '='
    end
    object bvlMeasures: TBevel
      Left = 127
      Top = 11
      Width = 9
      Height = 102
      Shape = bsLeftLine
    end
    object lblTransportMeasure: TLabel
      Left = 208
      Top = 77
      Width = 66
      Height = 13
      Caption = #1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1072
      FocusControl = cbTransportMeasure
    end
    object cbMeasure: TJvDBLookupCombo
      Left = 16
      Top = 56
      Width = 81
      Height = 21
      DeleteKeyClear = False
      DataField = 'MEASURE_CODE'
      DataSource = dsData
      DisplayEmpty = ' '
      LookupField = 'MEASURE_CODE'
      LookupDisplay = 'MEASURE_ABBREV'
      LookupSource = dsMeasures
      TabOrder = 0
    end
    object edtAccountMeasureCoef: TDBEdit
      Left = 136
      Top = 21
      Width = 65
      Height = 21
      DataField = 'ACCOUNT_MEASURE_COEF'
      DataSource = dsData
      TabOrder = 1
    end
    object cbAccountMeasure: TJvDBLookupCombo
      Left = 208
      Top = 21
      Width = 81
      Height = 21
      DeleteKeyClear = False
      DataField = 'ACCOUNT_MEASURE_CODE'
      DataSource = dsData
      DisplayEmpty = ' '
      LookupField = 'MEASURE_CODE'
      LookupDisplay = 'MEASURE_ABBREV'
      LookupSource = dsMeasures
      TabOrder = 2
    end
    object cbTechMeasure: TJvDBLookupCombo
      Left = 208
      Top = 56
      Width = 81
      Height = 21
      DeleteKeyClear = False
      DataField = 'TECH_MEASURE_CODE'
      DataSource = dsData
      DisplayEmpty = ' '
      LookupField = 'MEASURE_CODE'
      LookupDisplay = 'MEASURE_ABBREV'
      LookupSource = dsMeasures
      TabOrder = 4
    end
    object edtTechMeasureCoef: TDBEdit
      Left = 136
      Top = 56
      Width = 65
      Height = 21
      DataField = 'TECH_MEASURE_COEF'
      DataSource = dsData
      TabOrder = 3
    end
    object edtTransportMeasureCoef: TDBEdit
      Left = 136
      Top = 91
      Width = 65
      Height = 21
      DataField = 'TRANSPORT_MEASURE_COEF'
      DataSource = dsData
      TabOrder = 5
    end
    object cbTransportMeasure: TJvDBLookupCombo
      Left = 208
      Top = 91
      Width = 81
      Height = 21
      DeleteKeyClear = False
      DataField = 'TRANSPORT_MEASURE_CODE'
      DataSource = dsData
      DisplayEmpty = ' '
      LookupField = 'MEASURE_CODE'
      LookupDisplay = 'MEASURE_ABBREV'
      LookupSource = dsMeasures
      TabOrder = 6
    end
  end
  object gbProductSpecRequirement: TGroupBox [11]
    Left = 8
    Top = 176
    Width = 217
    Height = 46
    Caption = ' '#1048#1079#1080#1089#1082#1074#1072' '#1055'-'#1052#1054#1044#1045#1083' '
    TabOrder = 2
    DesignSize = (
      217
      46)
    object cbProductSpecRequirement: TJvDBLookupCombo
      Left = 8
      Top = 17
      Width = 201
      Height = 21
      DropDownCount = 3
      DeleteKeyClear = False
      DataField = 'PRODUCT_SPEC_REQUIREMENT_CODE'
      DataSource = dsData
      DisplayEmpty = ' '
      Anchors = [akLeft, akTop, akRight]
      LookupField = 'PRODUCT_SPEC_REQUIREMENT_CODE'
      LookupDisplay = 'PRODUCT_SPEC_REQUIREMENT_NAME'
      LookupSource = dsProductSpecRequirements
      TabOrder = 0
    end
  end
  object gbIsProductionProduct: TGroupBox [12]
    Left = 8
    Top = 297
    Width = 201
    Height = 48
    Caption = ' '#1053#1072#1095#1080#1085' '#1085#1072' '#1054#1073#1077#1079#1087#1077#1095#1072#1074#1072#1085#1077' '
    TabOrder = 5
    DesignSize = (
      201
      48)
    object cbIsProductionProduct: TJvDBComboBox
      Left = 8
      Top = 17
      Width = 185
      Height = 21
      DataField = 'IS_PRODUCTION_PRODUCT'
      DataSource = dsData
      Anchors = [akLeft, akTop, akRight]
      ItemHeight = 13
      Items.Strings = (
        #1060#1088#1086#1085#1090#1072#1083#1085#1086
        #1058#1080#1083#1086#1074#1086)
      TabOrder = 0
      Values.Strings = (
        'False'
        'True')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
    end
  end
  inherited dsGridData: TDataSource
    Top = 192
  end
  inherited cdsGridData: TAbmesClientDataSet
    Filter = '(IS_INHERITED = 0) or (IS_DEFINED = 1)'
    Filtered = True
    IndexFieldNames = 'NODE_PARAM_ORDER_NO'
    Top = 192
    inherited cdsGridDataNOM_CODE: TAbmesFloatField
      OnChange = cdsGridDataNOM_CODEChange
    end
    object cdsGridDataNOM_NO: TAbmesFloatField [6]
      FieldName = 'NOM_NO'
      OnChange = cdsGridDataNOM_NOChange
    end
    object cdsGridDataPRODUCT_CLASS_CODE: TAbmesFloatField [24]
      FieldName = 'PRODUCT_CLASS_CODE'
    end
    object cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField [25]
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsGridDataDOC_CODE: TAbmesFloatField [26]
      FieldName = 'DOC_CODE'
    end
    object cdsGridDataHAS_DOC_ITEMS: TAbmesFloatField [27]
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsGridData_NOT_DEFINED_COUNT: TAggregateField
      FieldName = '_NOT_DEFINED_COUNT'
      Active = True
      DisplayName = ''
      Expression = 'Sum(1 - IS_DEFINED)'
    end
  end
  inherited alActions: TActionList
    Left = 72
    inherited actForm: TAction
      Caption = '%ProductClassCommonName% - %s'
    end
    object actCommonGroups: TAction
      Caption = #1058#1049#1057'...'
      OnExecute = actCommonGroupsExecute
    end
    object actProductPeriods: TAction
      Caption = '%ProductPeriodAbbrev%...'
      OnExecute = actProductPeriodsExecute
      OnUpdate = actProductPeriodsUpdate
    end
    object actShowNotDefined: TAction
      Caption = '2'
      GroupIndex = 5
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1085#1077#1087#1088#1080#1089#1098#1097#1080#1090#1077' '#1051#1086#1075#1080#1095#1077#1089#1082#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080
      ImageIndex = 16
      OnExecute = actShowNotDefinedExecute
      OnUpdate = actShowNotDefinedUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Top = 224
  end
  inherited dsGridDataParams: TDataSource
    Top = 224
  end
  inherited dsData: TDataSource
    Top = 160
  end
  inherited cdsData: TAbmesClientDataSet
    Top = 160
  end
  inherited cdsNoms: TAbmesClientDataSet
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end>
    BeforeOpen = cdsNomsBeforeOpen
    Left = 392
    Top = 256
    object cdsNomsNOM_NO: TAbmesFloatField
      FieldName = 'NOM_NO'
    end
    object cdsNomsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsNomsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsNomsHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
    end
  end
  object cdsMeasures: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvMeasures'
    BeforeOpen = cdsMeasuresBeforeOpen
    Left = 392
    Top = 288
    object cdsMeasuresMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
  end
  object dsMeasures: TDataSource
    DataSet = cdsMeasures
    Left = 424
    Top = 288
  end
  object cdsPriorities: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvPriorities'
    Left = 392
    Top = 320
    object cdsPrioritiesPRIORITY_CODE: TAbmesFloatField
      Alignment = taLeftJustify
      DisplayWidth = 1
      FieldName = 'PRIORITY_CODE'
    end
    object cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_NAME'
      Size = 50
    end
    object cdsPrioritiesPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
    object cdsPrioritiesPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object cdsPrioritiesPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
  end
  object dsPriorities: TDataSource
    DataSet = cdsPriorities
    Left = 424
    Top = 320
  end
  object cdsProductOrigins: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conProductsTreeEditor
    Params = <>
    ProviderName = 'prvProductOrigins'
    OnCalcFields = cdsProductOriginsCalcFields
    Left = 392
    Top = 352
    object cdsProductOriginsPRODUCT_ORIGIN_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_ORIGIN_CODE'
    end
    object cdsProductOriginsPRODUCT_ORIGIN_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_ORIGIN_NAME'
      Size = 100
    end
    object cdsProductOriginsPRODUCT_ORIGIN_ABBREV: TAbmesWideStringField
      FieldName = 'PRODUCT_ORIGIN_ABBREV'
      Size = 100
    end
    object cdsProductOrigins_SHOW_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_NAME'
      Size = 100
      Calculated = True
    end
  end
  object dsProductOrigins: TDataSource
    DataSet = cdsProductOrigins
    Left = 424
    Top = 352
  end
  object cdsCommonProductInfo: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conProductsTreeEditor
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCommonProductInfo'
    OnCalcFields = cdsCommonProductInfoCalcFields
    Left = 216
    Top = 304
    object cdsCommonProductInfoCOMMON_PRODUCTS_LEVEL_NO: TAbmesFloatField
      FieldName = 'COMMON_PRODUCTS_LEVEL_NO'
    end
    object cdsCommonProductInfoCOMMON_PRODUCTS_SUB_LEVELS: TAbmesFloatField
      FieldName = 'COMMON_PRODUCTS_SUB_LEVELS'
    end
    object cdsCommonProductInfo_COMMON_PRODUCTS_LEVELS_SHOW: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_COMMON_PRODUCTS_LEVELS_SHOW'
      Calculated = True
    end
  end
  object dsCommonProductInfo: TDataSource
    DataSet = cdsCommonProductInfo
    Left = 216
    Top = 336
  end
  object cdsBOIOrderTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conBudget
    Params = <>
    ProviderName = 'prvBOIOrderTypes'
    Left = 392
    Top = 384
    object cdsBOIOrderTypesBOI_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_TYPE_CODE'
    end
    object cdsBOIOrderTypesBOI_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BOI_ORDER_TYPE_ABBREV'
      Size = 100
    end
    object cdsBOIOrderTypesBOI_ORDER_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BOI_ORDER_TYPE_NAME'
      Size = 100
    end
  end
  object dsBOIOrderTypes: TDataSource
    DataSet = cdsBOIOrderTypes
    Left = 424
    Top = 384
  end
  object cdsProductSpecRequirements: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conProductsTree
    Params = <>
    ProviderName = 'prvProductSpecRequirements'
    Left = 392
    Top = 416
    object cdsProductSpecRequirementsPRODUCT_SPEC_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_SPEC_REQUIREMENT_CODE'
      Required = True
    end
    object cdsProductSpecRequirementsPRODUCT_SPEC_REQUIREMENT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_SPEC_REQUIREMENT_NAME'
      Required = True
      Size = 100
    end
  end
  object dsProductSpecRequirements: TDataSource
    DataSet = cdsProductSpecRequirements
    Left = 424
    Top = 416
  end
end
