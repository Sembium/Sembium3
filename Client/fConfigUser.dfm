inherited fmConfigUser: TfmConfigUser
  Left = 374
  Top = 187
  Caption = #1050#1086#1085#1092#1080#1075#1091#1088#1080#1088#1072#1085#1077' '#1085#1072' '#1087#1086#1090#1088#1077#1073#1080#1090#1077#1083
  ClientHeight = 355
  ClientWidth = 377
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 320
    Width = 377
    TabOrder = 1
    inherited pnlOKCancel: TPanel
      Left = 109
    end
    inherited pnlClose: TPanel
      Left = 20
    end
    inherited pnlApply: TPanel
      Left = 288
      Visible = False
    end
  end
  object pcMain: TPageControl [1]
    Left = 8
    Top = 8
    Width = 361
    Height = 304
    ActivePage = tsMiscellaneous
    Anchors = [akLeft, akTop, akRight, akBottom]
    HotTrack = True
    TabOrder = 0
    object tsMiscellaneous: TTabSheet
      Caption = #1056#1072#1079#1085#1080
      ImageIndex = 1
      DesignSize = (
        353
        276)
      object bvlMiscellaneous: TBevel
        Left = 8
        Top = 8
        Width = 336
        Height = 259
        Anchors = [akLeft, akTop, akRight, akBottom]
        Shape = bsFrame
      end
      object chbDefaultShowUncoveredLines: TAbmesDBCheckBox
        Left = 24
        Top = 240
        Width = 305
        Height = 17
        Caption = #1055#1086#1082#1072#1079#1074#1072#1085#1077' '#1085#1072' '#1053#1077#1086#1073#1077#1079#1087#1077#1095#1077#1085#1080' '#1056#1077#1076#1086#1074#1077' '#1087#1086' '#1087#1086#1076#1088#1072#1079#1073#1080#1088#1072#1085#1077
        DataField = 'DEFAULT_SHOW_UNCOVERED_LINES'
        DataSource = dsData
        Enabled = False
        TabOrder = 2
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        Visible = False
      end
      object chkDOSPrint: TAbmesDBCheckBox
        Left = 24
        Top = 24
        Width = 177
        Height = 17
        Caption = 'DOS '#1055#1077#1095#1072#1090' '#1087#1086' '#1087#1086#1076#1088#1072#1079#1073#1080#1088#1072#1085#1077
        DataField = 'DOS_PRINT'
        DataSource = dsData
        TabOrder = 0
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object chkShowProductQuantitiesTreeByDefault: TAbmesDBCheckBox
        Left = 24
        Top = 48
        Width = 313
        Height = 17
        Caption = #1048#1079#1073#1086#1088' '#1085#1072' '#1059#1054#1073' '#1086#1090' '#1058#1077#1082#1091#1097#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1087#1086' '#1087#1086#1076#1088#1072#1079#1073#1080#1088#1072#1085#1077
        DataField = 'DEFAULT_SHOW_PRODUCT_QTY_TREE'
        DataSource = dsData
        TabOrder = 1
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object pnlMiscAdvancedSettings: TPanel
        Left = 0
        Top = 64
        Width = 353
        Height = 113
        BevelOuter = bvNone
        TabOrder = 3
        object lblPSDRequestInAdvanceWorkdays: TLabel
          Left = 24
          Top = 21
          Width = 243
          Height = 26
          Caption = 
            #1056#1072#1073#1086#1090#1085#1080' '#1076#1085#1080' '#1087#1088#1077#1076#1080' '#1085#1072#1089#1090#1098#1087#1074#1072#1085#1077#1090#1086' '#1085#1072' '#1042#1088#1084#1048#1085#1090' '#1085#1072#13#10#1055#1083#1072#1085#1086#1074#1086' '#1055'/'#1058', '#1082#1086#1075#1072#1090#1086 +
            ' '#1077' '#1088#1072#1079#1088#1077#1096#1077#1085#1086' '#1079#1072#1103#1074#1103#1074#1072#1085#1077#1090#1086
          FocusControl = edtPSDRequestInAdvanceWorkdays
        end
        object lblPSDCompleteInAdvanceWorkdays: TLabel
          Left = 24
          Top = 61
          Width = 243
          Height = 26
          Caption = 
            #1056#1072#1073#1086#1090#1085#1080' '#1076#1085#1080' '#1087#1088#1077#1076#1080' '#1085#1072#1089#1090#1098#1087#1074#1072#1085#1077#1090#1086' '#1085#1072' '#1042#1088#1084#1048#1085#1090' '#1085#1072#13#10#1055#1083#1072#1085#1086#1074#1086' '#1055'/'#1058', '#1082#1086#1075#1072#1090#1086 +
            ' '#1077' '#1088#1072#1079#1088#1077#1096#1077#1085#1086' '#1086#1090#1095#1080#1090#1072#1085#1077#1090#1086
          FocusControl = edtPSDCompleteInAdvanceWorkdays
        end
        object edtPSDRequestInAdvanceWorkdays: TDBEdit
          Left = 296
          Top = 24
          Width = 33
          Height = 21
          DataField = 'PSD_REQUEST_IN_ADVANCE_WDAYS'
          DataSource = dsData
          TabOrder = 0
        end
        object edtPSDCompleteInAdvanceWorkdays: TDBEdit
          Left = 296
          Top = 64
          Width = 33
          Height = 21
          DataField = 'PSD_COMPLETE_IN_ADVANCE_WDAYS'
          DataSource = dsData
          TabOrder = 1
        end
      end
    end
    object tsTrees: TTabSheet
      Caption = #1044#1098#1088#1074#1077#1090#1072
      DesignSize = (
        353
        276)
      object bvlTrees: TBevel
        Left = 8
        Top = 8
        Width = 336
        Height = 259
        Anchors = [akLeft, akTop, akRight, akBottom]
        Shape = bsFrame
      end
      object lblNormalProductsTreeExpandLevels: TLabel
        Left = 24
        Top = 27
        Width = 207
        Height = 13
        Caption = #1053#1080#1074#1072' '#1079#1072' '#1086#1090#1074#1072#1088#1103#1085#1077' '#1074' '#1059#1087#1088#1072#1074#1083#1103#1077#1084#1080' '#1054#1073#1077#1082#1090#1080
        FocusControl = edtNormalProductsTreeExpandLevels
      end
      object lblDeptsTreeExpandLevels: TLabel
        Left = 24
        Top = 93
        Width = 184
        Height = 26
        Caption = #1053#1080#1074#1072' '#1079#1072' '#1086#1090#1074#1072#1088#1103#1085#1077' '#1074' '#13#10#1057#1090#1088#1091#1082#1090#1091#1088#1072' '#1085#1072' '#1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1072#1090#1072' '#1057#1088#1077#1076#1072
      end
      object lblNormalProductsTreeShowDetail: TLabel
        Left = 24
        Top = 129
        Width = 193
        Height = 26
        AutoSize = False
        Caption = #1055#1086#1082#1072#1079#1074#1072#1085#1077' '#1087#1088#1080' '#1086#1090#1074#1072#1088#1103#1085#1077' '#1085#1072#13#10#1076#1098#1088#1074#1086' '#1085#1072' '#1059#1087#1088#1072#1074#1083#1103#1077#1084#1080' '#1054#1073#1077#1082#1090#1080
        FocusControl = cbNormalProductsTreeShowDetail
      end
      object lblDeptsTreeShowDetail: TLabel
        Left = 24
        Top = 225
        Width = 193
        Height = 26
        AutoSize = False
        Caption = #1055#1086#1082#1072#1079#1074#1072#1085#1077' '#1087#1088#1080' '#1086#1090#1074#1072#1088#1103#1085#1077' '#1085#1072#13#10#1057#1090#1088#1091#1082#1090#1091#1088#1072' '#1085#1072' '#1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1072#1090#1072' '#1057#1088#1077#1076#1072
        FocusControl = cbDeptsTreeShowDetail
      end
      object lblFinancialProductsTreeExpandLevels: TLabel
        Left = 24
        Top = 51
        Width = 215
        Height = 13
        Caption = #1053#1080#1074#1072' '#1079#1072' '#1086#1090#1074#1072#1088#1103#1085#1077' '#1074#1098#1074' '#1060#1080#1085#1072#1085#1089#1086#1074#1080' '#1054#1073#1077#1082#1090#1080
        FocusControl = edtFinancialProductsTreeExpandLevels
      end
      object lblBudgetProductsTreeExpandLevels: TLabel
        Left = 24
        Top = 75
        Width = 132
        Height = 13
        Caption = #1053#1080#1074#1072' '#1079#1072' '#1086#1090#1074#1072#1088#1103#1085#1077' '#1074' '#1056#1048#1057#1057
        FocusControl = edtBudgetProductsTreeExpandLevels
      end
      object lblFinancialProductsTreeShowDetail: TLabel
        Left = 24
        Top = 161
        Width = 193
        Height = 26
        AutoSize = False
        Caption = #1055#1086#1082#1072#1079#1074#1072#1085#1077' '#1087#1088#1080' '#1086#1090#1074#1072#1088#1103#1085#1077' '#1085#1072#13#10#1076#1098#1088#1074#1086' '#1085#1072' '#1060#1080#1085#1072#1085#1089#1086#1074#1080' '#1054#1073#1077#1082#1090#1080
        FocusControl = cbFinancialProductsTreeShowDetail
      end
      object lblBudgetProductsTreeShowDetail: TLabel
        Left = 24
        Top = 193
        Width = 193
        Height = 26
        AutoSize = False
        Caption = #1055#1086#1082#1072#1079#1074#1072#1085#1077' '#1087#1088#1080' '#1086#1090#1074#1072#1088#1103#1085#1077' '#1085#1072#13#10#1076#1098#1088#1074#1086' '#1085#1072' '#1056#1048' '#1057#1090#1072#1090#1080#1080' '#1079#1072' '#1057#1088#1077#1076#1072
        FocusControl = cbBudgetProductsTreeShowDetail
      end
      object edtNormalProductsTreeExpandLevels: TDBEdit
        Left = 272
        Top = 24
        Width = 41
        Height = 21
        DataField = 'PRODUCTS_TREE_EXPAND_LEVELS'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 0
      end
      object edtDeptsTreeExpandLevels: TDBEdit
        Left = 272
        Top = 96
        Width = 41
        Height = 21
        DataField = 'DEPTS_TREE_EXPAND_LEVELS'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 6
      end
      object udNormalProductsTreeExpandLevels: TUpDown
        Left = 313
        Top = 24
        Width = 15
        Height = 21
        Max = 99
        TabOrder = 1
        OnClick = udNormalProductsTreeExpandLevelsClick
      end
      object udDeptsTreeExpandLevels: TUpDown
        Left = 313
        Top = 96
        Width = 15
        Height = 21
        Max = 99
        TabOrder = 7
        OnClick = udDeptsTreeExpandLevelsClick
      end
      object cbNormalProductsTreeShowDetail: TJvDBComboBox
        Left = 224
        Top = 132
        Width = 105
        Height = 21
        DataField = 'PRODUCTS_TREE_SHOW_DETAIL'
        DataSource = dsData
        ItemHeight = 13
        Items.Strings = (
          #1053#1080#1097#1086
          #1055#1072#1088#1072#1084#1077#1090#1088#1080
          #1052#1048#1048#1054' '#1055#1072#1085#1077#1083)
        TabOrder = 8
        Values.Strings = (
          '0'
          '1'
          '2')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object cbDeptsTreeShowDetail: TJvDBComboBox
        Left = 224
        Top = 228
        Width = 105
        Height = 21
        DataField = 'DEPTS_TREE_SHOW_DETAIL'
        DataSource = dsData
        ItemHeight = 13
        Items.Strings = (
          #1053#1080#1097#1086
          #1044#1083#1098#1078#1085#1086#1089#1090#1080
          #1052#1048#1048#1054' '#1055#1072#1085#1077#1083)
        TabOrder = 11
        Values.Strings = (
          '0'
          '1'
          '2')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object edtFinancialProductsTreeExpandLevels: TDBEdit
        Left = 272
        Top = 48
        Width = 41
        Height = 21
        DataField = 'FIN_PROD_TREE_EXPAND_LEVELS'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 2
      end
      object udFinancialProductsTreeExpandLevels: TUpDown
        Left = 313
        Top = 48
        Width = 15
        Height = 21
        Max = 99
        TabOrder = 3
        OnClick = udFinancialProductsTreeExpandLevelsClick
      end
      object edtBudgetProductsTreeExpandLevels: TDBEdit
        Left = 272
        Top = 72
        Width = 41
        Height = 21
        DataField = 'BUDGET_PROD_TREE_EXPAND_LEVELS'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 4
      end
      object udBudgetProductsTreeExpandLevels: TUpDown
        Left = 313
        Top = 72
        Width = 15
        Height = 21
        Max = 99
        TabOrder = 5
        OnClick = udBudgetProductsTreeExpandLevelsClick
      end
      object cbFinancialProductsTreeShowDetail: TJvDBComboBox
        Left = 224
        Top = 164
        Width = 105
        Height = 21
        DataField = 'FIN_PROD_TREE_SHOW_DETAIL'
        DataSource = dsData
        ItemHeight = 13
        Items.Strings = (
          #1053#1080#1097#1086
          #1055#1072#1088#1072#1084#1077#1090#1088#1080
          #1052#1048#1048#1054' '#1055#1072#1085#1077#1083)
        TabOrder = 9
        Values.Strings = (
          '0'
          '1'
          '2')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object cbBudgetProductsTreeShowDetail: TJvDBComboBox
        Left = 224
        Top = 196
        Width = 105
        Height = 21
        DataField = 'BUDGET_PROD_TREE_SHOW_DETAIL'
        DataSource = dsData
        ItemHeight = 13
        Items.Strings = (
          #1053#1080#1097#1086
          #1055#1072#1088#1072#1084#1077#1090#1088#1080
          #1052#1048#1048#1054' '#1055#1072#1085#1077#1083)
        TabOrder = 10
        Values.Strings = (
          '0'
          '1'
          '2')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
        ListSettings.OutfilteredValueFont.Style = []
      end
    end
    object tsRegisters: TTabSheet
      Caption = #1045#1082#1088#1072#1085#1085#1080' '#1060#1086#1088#1084#1080
      ImageIndex = 2
      DesignSize = (
        353
        276)
      object bvlRegisters: TBevel
        Left = 8
        Top = 8
        Width = 336
        Height = 259
        Anchors = [akLeft, akTop, akRight, akBottom]
        Shape = bsFrame
      end
      object lblDefaultSalesExpPage: TLabel
        Left = 24
        Top = 24
        Width = 240
        Height = 13
        Caption = #1057#1090#1088#1072#1085#1080#1094#1072' '#1087#1086' '#1087#1086#1076#1088#1072#1079#1073#1080#1088#1072#1085#1077' '#1074' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1055#1055
        FocusControl = cbDefaultSalesExpPage
      end
      object lblDefaultDeliveriesPage: TLabel
        Left = 24
        Top = 72
        Width = 241
        Height = 13
        Caption = #1057#1090#1088#1072#1085#1080#1094#1072' '#1087#1086' '#1087#1086#1076#1088#1072#1079#1073#1080#1088#1072#1085#1077' '#1074' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1055#1044
        FocusControl = cbDefaultDeliveriesPage
      end
      object lblDefaultModelStatusExpandState: TLabel
        Left = 24
        Top = 208
        Width = 307
        Height = 13
        Caption = #1056#1072#1079#1075#1098#1074#1072#1085#1077' '#1087#1086' '#1087#1086#1076#1088#1072#1079#1073'. '#1074' '#1057#1083#1077#1076#1077#1085#1077' / '#1050#1072#1087#1072#1094#1080#1090#1077#1090' '#1085#1072' '#1056'-'#1052#1054#1044#1045#1083' '
        FocusControl = cbDefaultModelStatusExpandState
      end
      object cbDefaultModelStatusExpandState: TJvDBComboBox
        Left = 24
        Top = 224
        Width = 305
        Height = 21
        DataField = 'DEFAULT_MODEL_STATUS_EXPAND_ST'
        DataSource = dsData
        Items.Strings = (
          #1055#1098#1083#1085#1086' '#1088#1072#1079#1075#1098#1085#1072#1090
          #1057#1072#1084#1086' '#1088#1077#1076#1086#1074#1077' '#1089#1098#1089' '#1079#1072#1082#1098#1089#1085#1077#1085#1080#1077' / '#1076#1077#1092#1080#1094#1080#1090' '#1085#1072' '#1082#1072#1087#1072#1094#1080#1090#1077#1090
          #1055#1098#1083#1085#1086' '#1089#1075#1098#1085#1072#1090)
        TabOrder = 2
        Values.Strings = (
          '1'
          '2'
          '3')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object cbDefaultSalesExpPage: TJvDBComboBox
        Left = 24
        Top = 40
        Width = 305
        Height = 21
        DataField = 'DEFAULT_SALES_EXP_ACTIVE_PAGE'
        DataSource = dsData
        Items.Strings = (
          #1043#1088#1091#1087#1080' '#1054#1055#1055' '#1087#1086' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1103
          #1045#1076#1080#1085#1080#1095#1085#1080' '#1054#1055#1055' '#1087#1086' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1103)
        TabOrder = 0
        Values.Strings = (
          '1'
          '2')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object cbDefaultDeliveriesPage: TJvDBComboBox
        Left = 24
        Top = 88
        Width = 305
        Height = 21
        DataField = 'DEFAULT_DELIVERIES_ACTIVE_PAGE'
        DataSource = dsData
        Items.Strings = (
          #1043#1088#1091#1087#1080' '#1054#1055#1044
          #1045#1076#1080#1085#1080#1095#1085#1080' '#1054#1055#1044)
        TabOrder = 1
        Values.Strings = (
          '1'
          '2')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
        ListSettings.OutfilteredValueFont.Style = []
      end
    end
    object tsPicture: TTabSheet
      Caption = #1057#1085#1080#1084#1082#1072
      ImageIndex = 3
      DesignSize = (
        353
        276)
      object bvlPicture: TBevel
        Left = 8
        Top = 8
        Width = 336
        Height = 259
        Anchors = [akLeft, akTop, akRight, akBottom]
        Shape = bsFrame
      end
      object pnlPictureMain: TPanel
        Left = 0
        Top = 273
        Width = 353
        Height = 273
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object imgPicture: TJvImage
          Left = 99
          Top = 24
          Width = 153
          Height = 153
          Center = True
          Proportional = True
          Stretch = True
          OnDblClick = imgPictureDblClick
        end
        object btnLoadPicture: TButton
          Left = 18
          Top = 232
          Width = 97
          Height = 25
          Action = actLoadPicture
          TabOrder = 0
        end
        object btnClearPicture: TButton
          Left = 236
          Top = 232
          Width = 97
          Height = 25
          Action = actClearPicture
          TabOrder = 2
        end
        object btnCapturePicture: TButton
          Left = 123
          Top = 232
          Width = 105
          Height = 25
          Action = actCapturePicture
          TabOrder = 1
        end
      end
      object pnlPictureCapture: TPanel
        Left = 0
        Top = 0
        Width = 353
        Height = 273
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        Visible = False
        object pbWebCam: TPaintBox
          Left = 99
          Top = 24
          Width = 153
          Height = 153
        end
        object lblWebCam: TLabel
          Left = 24
          Top = 203
          Width = 39
          Height = 13
          Caption = #1050#1072#1084#1077#1088#1072
        end
        object lblNoWebCamFound: TLabel
          Left = 56
          Top = 96
          Width = 241
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = #1053#1077' '#1077' '#1085#1072#1084#1077#1088#1077#1085#1072' '#1091#1077#1073' '#1082#1072#1084#1077#1088#1072
        end
        object btnWebCamProperties: TSpeedButton
          Left = 309
          Top = 199
          Width = 24
          Height = 23
          Action = actWebCamProperties
        end
        object cbWebCams: TComboBox
          Left = 75
          Top = 200
          Width = 230
          Height = 21
          Style = csDropDownList
          TabOrder = 0
          OnChange = cbWebCamsChange
        end
        object btnTakePicture: TButton
          Left = 175
          Top = 232
          Width = 75
          Height = 25
          Action = actTakePicture
          TabOrder = 1
        end
        object btnBackToPicture: TButton
          Left = 258
          Top = 232
          Width = 75
          Height = 25
          Action = actBackToPicture
          TabOrder = 2
        end
      end
    end
  end
  inherited alActions: TActionList
    Left = 312
    inherited actForm: TAction
      Caption = #1050#1086#1085#1092#1080#1075#1091#1088#1080#1088#1072#1085#1077' '#1085#1072' '#1087#1086#1090#1088#1077#1073#1080#1090#1077#1083
    end
    object actLoadPicture: TAction
      Caption = #1054#1090' '#1092#1072#1081#1083'...'
      OnExecute = actLoadPictureExecute
      OnUpdate = actLoadPictureUpdate
    end
    object actClearPicture: TAction
      Caption = #1048#1079#1095#1080#1089#1090#1074#1072#1085#1077'...'
      OnExecute = actClearPictureExecute
      OnUpdate = actClearPictureUpdate
    end
    object actCapturePicture: TAction
      Caption = #1054#1090' '#1091#1077#1073' '#1082#1072#1084#1077#1088#1072'...'
      OnExecute = actCapturePictureExecute
    end
    object actTakePicture: TAction
      Caption = #1057#1085#1080#1084#1082#1072
      OnExecute = actTakePictureExecute
      OnUpdate = actTakePictureUpdate
    end
    object actBackToPicture: TAction
      Caption = #1054#1090#1082#1072#1079
      OnExecute = actBackToPictureExecute
    end
    object actWebCamProperties: TAction
      Hint = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      ImageIndex = 156
      OnExecute = actWebCamPropertiesExecute
      OnUpdate = actWebCamPropertiesUpdate
    end
  end
  inherited dsData: TDataSource
    Left = 280
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conLogin
    Params = <
      item
        DataType = ftFloat
        Name = 'USER_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvUserOptions'
    AfterOpen = cdsDataAfterOpen
    Left = 248
    object cdsDataEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object cdsDataPRODUCTS_TREE_EXPAND_LEVELS: TAbmesFloatField
      FieldName = 'PRODUCTS_TREE_EXPAND_LEVELS'
    end
    object cdsDataDEPTS_TREE_EXPAND_LEVELS: TAbmesFloatField
      FieldName = 'DEPTS_TREE_EXPAND_LEVELS'
    end
    object cdsDataPRODUCTS_TREE_SHOW_DETAIL: TAbmesFloatField
      FieldName = 'PRODUCTS_TREE_SHOW_DETAIL'
    end
    object cdsDataDEPTS_TREE_SHOW_DETAIL: TAbmesFloatField
      FieldName = 'DEPTS_TREE_SHOW_DETAIL'
    end
    object cdsDataDEFAULT_SHOW_UNCOVERED_LINES: TAbmesFloatField
      FieldName = 'DEFAULT_SHOW_UNCOVERED_LINES'
      FieldValueType = fvtBoolean
    end
    object cdsDataPSD_COMPLETE_IN_ADVANCE_WDAYS: TAbmesFloatField
      DisplayLabel = 
        #1056#1072#1073#1086#1090#1085#1080' '#1076#1085#1080' '#1087#1088#1077#1076#1080' '#1085#1072#1089#1090#1098#1087#1074#1072#1085#1077#1090#1086' '#1085#1072' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1087#1083'. '#1089#1082#1083'. '#1086#1087#1077#1088#1072#1094#1080#1103', '#1082 +
        #1086#1075#1072#1090#1086' '#1077' '#1088#1072#1079#1088#1077#1096#1077#1085#1086' '#1086#1090#1095#1080#1090#1072#1085#1077#1090#1086
      FieldName = 'PSD_COMPLETE_IN_ADVANCE_WDAYS'
      Required = True
      MaxValue = 100000.000000000000000000
      FieldValueType = fvtInteger
    end
    object cdsDataPSD_REQUEST_IN_ADVANCE_WDAYS: TAbmesFloatField
      DisplayLabel = 
        #1056#1072#1073#1086#1090#1085#1080' '#1076#1085#1080' '#1087#1088#1077#1076#1080' '#1085#1072#1089#1090#1098#1087#1074#1072#1085#1077#1090#1086' '#1085#1072' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1087#1083'. '#1089#1082#1083'. '#1086#1087#1077#1088#1072#1094#1080#1103', '#1082 +
        #1086#1075#1072#1090#1086' '#1077' '#1088#1072#1079#1088#1077#1096#1077#1085#1086' '#1079#1072#1103#1074#1103#1074#1072#1085#1077#1090#1086
      FieldName = 'PSD_REQUEST_IN_ADVANCE_WDAYS'
      Required = True
      MaxValue = 100000.000000000000000000
      FieldValueType = fvtInteger
    end
    object cdsDataDEFAULT_DELIVERIES_ACTIVE_PAGE: TAbmesFloatField
      FieldName = 'DEFAULT_DELIVERIES_ACTIVE_PAGE'
    end
    object cdsDataDEFAULT_SALES_EXP_ACTIVE_PAGE: TAbmesFloatField
      FieldName = 'DEFAULT_SALES_EXP_ACTIVE_PAGE'
    end
    object cdsDataFIN_PROD_TREE_EXPAND_LEVELS: TAbmesFloatField
      FieldName = 'FIN_PROD_TREE_EXPAND_LEVELS'
    end
    object cdsDataBUDGET_PROD_TREE_EXPAND_LEVELS: TAbmesFloatField
      FieldName = 'BUDGET_PROD_TREE_EXPAND_LEVELS'
    end
    object cdsDataFIN_PROD_TREE_SHOW_DETAIL: TAbmesFloatField
      FieldName = 'FIN_PROD_TREE_SHOW_DETAIL'
    end
    object cdsDataBUDGET_PROD_TREE_SHOW_DETAIL: TAbmesFloatField
      FieldName = 'BUDGET_PROD_TREE_SHOW_DETAIL'
    end
    object cdsDataDOS_PRINT: TAbmesFloatField
      DisplayLabel = 'DOS '#1055#1077#1095#1072#1090' '#1087#1086' '#1087#1086#1076#1088#1072#1079#1073#1080#1088#1072#1085#1077
      FieldName = 'DOS_PRINT'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsDataDEFAULT_MODEL_STATUS_EXPAND_ST: TAbmesFloatField
      FieldName = 'DEFAULT_MODEL_STATUS_EXPAND_ST'
    end
    object cdsDataDEFAULT_SHOW_PRODUCT_QTY_TREE: TAbmesFloatField
      FieldName = 'DEFAULT_SHOW_PRODUCT_QTY_TREE'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsDataPICTURE: TBlobField
      FieldName = 'PICTURE'
      OnChange = cdsDataPICTUREChange
      BlobType = ftOraBlob
      Size = 1
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 
      'All image types (*.bmp, *.jpg, *.jpeg)|*.bmp; *.jpg; *.jpeg|Bitm' +
      'ap (*.bmp)|*.bmp|JPEG (*.jpg *.jpeg)|*.jpg; *.jpeg'
    Options = [ofFileMustExist, ofEnableSizing]
    Title = #1048#1079#1073#1077#1088#1077#1090#1077' '#1089#1085#1080#1084#1082#1072' '#1085#1072' '#1087#1086#1090#1088#1077#1073#1080#1090#1077#1083
    Left = 320
    Top = 184
  end
end
