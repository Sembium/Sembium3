inherited fmModelsInvestedValuesFilter: TfmModelsInvestedValuesFilter
  Left = 215
  Top = 165
  Caption = 
    #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1048#1085#1078#1077#1085#1077#1088#1085#1080' '#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1086'-'#1057#1090#1086#1081#1085#1086#1089#1090#1085#1080' '#1040#1085#1072#1083#1080#1079 +
    #1080' '#1087#1086' '#1054#1055#1042
  ClientHeight = 474
  ClientWidth = 857
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 439
    Width = 857
    TabOrder = 10
    inherited pnlOKCancel: TPanel
      Left = 589
    end
    inherited pnlClose: TPanel
      Left = 500
    end
    inherited pnlApply: TPanel
      Left = 768
    end
  end
  object gbFinal: TGroupBox [1]
    Left = 439
    Top = 134
    Width = 409
    Height = 296
    Caption = ' '#1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042' '
    TabOrder = 9
    object lblEnterShipmentStoreDateInterval: TLabel
      Left = 8
      Top = 251
      Width = 148
      Height = 13
      Caption = #1042#1088#1084#1048#1085#1090' '#1079#1072' '#1085#1072#1095'. '#1085#1072' '#1055#1088#1080#1077#1084#1072#1085#1077
    end
    inline frParamProductFilter: TfrParamProductFilter
      Left = 8
      Top = 16
      Width = 377
      Height = 232
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = True
      inherited grpTreeNodeFilter: TGroupBox
        Height = 232
        inherited lblUsedBy: TLabel
          Width = 61
        end
        inherited lblProductOrigin: TLabel
          Width = 23
        end
        inherited lblCommonStatus: TLabel
          Width = 45
        end
        inherited lblIsActive: TLabel
          Width = 53
        end
        inherited pnlNodes: TPanel
          inherited grdChosenNodes: TAbmesDBGrid
            FooterFont.Name = 'Microsoft Sans Serif'
            TitleFont.Name = 'Microsoft Sans Serif'
          end
        end
        inherited pnlParams: TPanel
          inherited grdChosenNodeParams: TAbmesDBGrid
            FooterFont.Name = 'Microsoft Sans Serif'
            TitleFont.Name = 'Microsoft Sans Serif'
          end
        end
      end
      inherited dsChosenNodeParams: TDataSource
        Top = 104
      end
      inherited cdsProductOrigins: TAbmesClientDataSet
        Top = 160
      end
      inherited dsProductOrigins: TDataSource
        Top = 160
      end
      inherited cdsUsedBy: TAbmesClientDataSet
        Top = 160
      end
      inherited cdsProvidedBy: TAbmesClientDataSet
        Top = 160
      end
      inherited dsUsedBy: TDataSource
        Top = 160
      end
      inherited dsProvidedBy: TDataSource
        Top = 160
      end
    end
    inline frEnterShipmentStoreDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 267
      Width = 153
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 153
      Constraints.MinHeight = 21
      Constraints.MinWidth = 153
      TabOrder = 1
      TabStop = True
    end
  end
  object gbInvestedValue: TGroupBox [2]
    Left = 8
    Top = 367
    Width = 426
    Height = 63
    Caption = ' '#1042#1083#1086#1078#1077#1085#1072' '#1057#1090#1086#1081#1085#1086#1089#1090' '
    TabOrder = 8
    object lblShowInvestedValue: TLabel
      Left = 8
      Top = 16
      Width = 19
      Height = 13
      Caption = #1058#1080#1087
      FocusControl = edtShowInvestedValue
    end
    object lblInvestedValueCurrency: TLabel
      Left = 120
      Top = 16
      Width = 35
      Height = 13
      Caption = #1042#1072#1083#1091#1090#1072
      FocusControl = edtInvestedValueCurrency
    end
    object edtShowInvestedValue: TDBEdit
      Left = 8
      Top = 32
      Width = 105
      Height = 21
      Color = clBtnFace
      DataField = '_SHOW_INVESTED_VALUE'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 0
    end
    object edtInvestedValueCurrency: TDBEdit
      Left = 120
      Top = 32
      Width = 41
      Height = 21
      Color = clBtnFace
      DataField = '_CURRENCY_ABBREV'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 1
    end
    object btnInvestedValueFilter: TBitBtn
      Left = 224
      Top = 29
      Width = 97
      Height = 25
      Action = actInvestedValueFilter
      Caption = #1047#1072#1076#1072#1074#1072#1085#1077'...'
      DoubleBuffered = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00000000000000000000000000FF00FF00000000000000
        00000000000000000000000000000000000000000000FF00FF00000000000000
        00000000000000000000000000000000000000000000FF00FF00000000000000
        0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
        FF000000000000000000000000000000000000000000FF00FF00000000000000
        0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
        FF000000000000000000000000000000000000000000FF00FF00000000000000
        0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
        FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000000000000000000000000000FF00FF00000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
        0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ParentDoubleBuffered = False
      Spacing = -1
      TabOrder = 2
    end
  end
  object gbMLState: TGroupBox [3]
    Left = 8
    Top = 8
    Width = 161
    Height = 49
    Caption = ' '#1057#1090#1072#1090#1091#1089' '
    TabOrder = 0
    object lblMinMlState: TLabel
      Left = 77
      Top = 19
      Width = 6
      Height = 13
      Caption = #8212
    end
    object cbMinMlState: TDBComboBoxEh
      Left = 8
      Top = 16
      Width = 65
      Height = 21
      DataField = 'MIN_ML_STATE_CODE'
      DataSource = dsData
      DropDownBox.Rows = 12
      DropDownBox.Width = 450
      EditButtons = <>
      TabOrder = 0
      Visible = True
    end
    object cbMaxMlState: TDBComboBoxEh
      Left = 88
      Top = 16
      Width = 65
      Height = 21
      DataField = 'MAX_ML_STATE_CODE'
      DataSource = dsData
      DropDownBox.Rows = 12
      DropDownBox.Width = 450
      EditButtons = <>
      TabOrder = 1
      Visible = True
    end
  end
  object gbProductionOrderIdentification: TGroupBox [4]
    Left = 8
    Top = 63
    Width = 425
    Height = 65
    Caption = ' ID '#1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1042#1098#1090#1088#1077#1096#1077#1085' ('#1054#1055#1042') '
    TabOrder = 1
    object lblProductionOrderType: TLabel
      Left = 8
      Top = 16
      Width = 38
      Height = 13
      Caption = #1055#1088#1086#1094#1077#1089
      FocusControl = cbProductionOrderType
    end
    object lblBranch: TLabel
      Left = 72
      Top = 16
      Width = 51
      Height = 13
      Caption = #1058#1055' '#1043#1083'.'
      FocusControl = cbBranch
    end
    object lblNo: TLabel
      Left = 136
      Top = 16
      Width = 11
      Height = 13
      Caption = #8470
      FocusControl = edtNo
    end
    object lblType: TLabel
      Left = 208
      Top = 16
      Width = 19
      Height = 13
      Caption = #1042#1080#1076
      FocusControl = cbType
    end
    object lblPriorityInterval: TLabel
      Left = 288
      Top = 16
      Width = 80
      Height = 13
      Caption = #1054#1089#1085'. '#1055#1088#1080#1086#1088#1080#1090#1077#1090
      FocusControl = frPriorityInterval
    end
    object cbProductionOrderType: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 57
      Height = 21
      DropDownCount = 20
      DropDownWidth = 240
      DeleteKeyClear = False
      DisplayAllFields = True
      DataField = 'PRODUCTION_ORDER_TYPE_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089' >'
      LookupField = 'PRODUCTION_ORDER_TYPE_CODE'
      LookupDisplay = 'PRODUCTION_ORDER_TYPE_ABBREV;PRODUCTION_ORDER_TYPE_NAME'
      LookupSource = dsProductionOrderTypes
      TabOrder = 0
    end
    object cbBranch: TJvDBLookupCombo
      Left = 72
      Top = 32
      Width = 57
      Height = 21
      DisplayAllFields = True
      DataField = 'SALE_BRANCH_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'. >'
      LookupField = 'BRANCH_CODE'
      LookupDisplay = 'BRANCH_IDENTIFIER'
      LookupSource = dsBranches
      TabOrder = 1
    end
    object edtNo: TDBEdit
      Left = 136
      Top = 32
      Width = 66
      Height = 21
      DataField = 'SALE_NO'
      DataSource = dsData
      TabOrder = 2
    end
    object cbType: TJvDBLookupCombo
      Left = 208
      Top = 32
      Width = 41
      Height = 21
      DropDownWidth = 150
      DisplayAllFields = True
      DataField = 'SALE_TYPE_CODE'
      DataSource = dsData
      DisplayEmpty = ' '
      LookupField = 'SALE_TYPE_CODE'
      LookupDisplay = 'SALE_TYPE_ABBREV;SALE_TYPE_NAME'
      LookupSource = dsSaleTypes
      TabOrder = 3
    end
    inline frPriorityInterval: TfrPriorityIntervalEditFrame
      Left = 288
      Top = 32
      Width = 100
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 10
      TabOrder = 4
      TabStop = True
      inherited lblDash: TLabel
        Width = 6
      end
    end
  end
  object gbSaleIdentification: TGroupBox [5]
    Left = 440
    Top = 8
    Width = 408
    Height = 120
    Caption = ' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1055#1088#1086#1076#1072#1078#1073#1080'          '
    TabOrder = 3
    DesignSize = (
      408
      120)
    object pnlOwnerEmployeeOrCompany: TPanel
      Left = 7
      Top = 16
      Width = 391
      Height = 89
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 0
      object pnlOwnerEmployee: TPanel
        Left = 0
        Top = 89
        Width = 391
        Height = 49
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          391
          49)
        object lblOwnerEmployee: TLabel
          Left = 0
          Top = 3
          Width = 55
          Height = 13
          Caption = #1055#1086#1088#1098#1095#1080#1090#1077#1083
        end
        inline frOwnerEmployee: TfrEmployeeFieldEditFrameBald
          Left = 0
          Top = 18
          Width = 392
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Anchors = [akLeft, akTop, akRight]
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 0
          TabStop = True
          inherited gbEmployee: TGroupBox
            Width = 411
            inherited pnlEmployeeName: TPanel
              Width = 336
              inherited pnlRightButtons: TPanel
                Left = 300
              end
              inherited pnlEmpoyeeNameInner: TPanel
                Width = 300
                inherited edtEmployeeName: TDBEdit
                  Width = 274
                end
                inherited cbEmployee: TJvDBLookupCombo
                  Width = 299
                end
              end
            end
            inherited pnlPaddingRight: TPanel
              Left = 401
            end
          end
        end
      end
      object pnlOwnerCompany: TPanel
        Left = 0
        Top = 0
        Width = 391
        Height = 89
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          391
          89)
        object lblPartner: TLabel
          Left = 0
          Top = 3
          Width = 36
          Height = 13
          Caption = #1050#1083#1080#1077#1085#1090
        end
        object lblSaleExpDateInterval: TLabel
          Left = 0
          Top = 48
          Width = 119
          Height = 13
          Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1080
        end
        inline frOwnerCompany: TfrPartnerFieldEditFrameBald
          Left = 0
          Top = 18
          Width = 392
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Anchors = [akLeft, akTop, akRight]
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 0
          TabStop = True
          inherited gbPartner: TGroupBox
            Width = 407
            inherited pnlNameAndButtons: TPanel
              Width = 318
              inherited pnlRightButtons: TPanel
                Left = 282
              end
              inherited pnlPartnerName: TPanel
                Width = 282
                inherited cbPartner: TJvDBLookupCombo
                  Width = 283
                end
              end
            end
            inherited pnlPaddingRight: TPanel
              Left = 399
            end
          end
        end
        inline frSaleExpDateInterval: TfrDateIntervalFrame
          Left = 0
          Top = 64
          Width = 145
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 145
          Constraints.MinHeight = 21
          Constraints.MinWidth = 145
          TabOrder = 1
          TabStop = True
        end
      end
    end
  end
  object cbSaleState: TJvDBComboBox [6]
    Left = 589
    Top = 4
    Width = 81
    Height = 21
    DataField = 'IS_SALE_STATE'
    DataSource = dsData
    Items.Strings = (
      '< '#1074#1089#1080#1095#1082#1080' >'
      #1051#1080#1085#1077#1081#1085#1072
      #1057#1074#1086#1073#1086#1076#1085#1072)
    TabOrder = 2
    Values.Strings = (
      '0'
      '1'
      '2')
    ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
    ListSettings.OutfilteredValueFont.Color = clRed
    ListSettings.OutfilteredValueFont.Height = -11
    ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
    ListSettings.OutfilteredValueFont.Style = []
    OnChange = cbSaleStateChange
  end
  object gbWastingSale: TGroupBox [7]
    Left = 8
    Top = 136
    Width = 257
    Height = 81
    Caption = ' '#1055#1086#1079#1080#1094#1080#1103' '#1085#1072' ID '#1054#1055#1042' '
    TabOrder = 4
    object lblWastingSaleBranch: TLabel
      Left = 138
      Top = 38
      Width = 51
      Height = 13
      Caption = #1058#1055' '#1043#1083'.'
    end
    object lblWastingSaleNo: TLabel
      Left = 202
      Top = 38
      Width = 14
      Height = 13
      Caption = 'No'
    end
    object rgIsWasteCompensatorStatus: TJvDBRadioPanel
      Left = 8
      Top = 17
      Width = 121
      Height = 58
      BevelOuter = bvNone
      DataField = 'IS_WASTE_COMPENSATOR_STATUS'
      DataSource = dsData
      Items.Strings = (
        #1042#1089#1080#1095#1082#1080
        #1054#1089#1085#1086#1074#1077#1085' ('#1054')'
        #1057#1098#1087#1098#1090#1089#1090#1074#1072#1097' ('#1057')')
      TabOrder = 0
      Values.Strings = (
        '1'
        '2'
        '3')
    end
    object cbWastingSaleBranch: TJvDBLookupCombo
      Left = 138
      Top = 54
      Width = 57
      Height = 21
      DisplayAllFields = True
      DataField = 'WASTING_SALE_BRANCH_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'. >'
      LookupField = 'BRANCH_CODE'
      LookupDisplay = 'BRANCH_IDENTIFIER'
      LookupSource = dsBranches
      TabOrder = 1
    end
    object edtWastingSaleNo: TDBEdit
      Left = 202
      Top = 54
      Width = 49
      Height = 21
      DataField = 'WASTING_SALE_NO'
      DataSource = dsData
      TabOrder = 2
    end
  end
  object rgHasWasteStatus: TDBRadioGroup [8]
    Left = 272
    Top = 136
    Width = 161
    Height = 81
    Caption = ' '#1053#1072#1083#1080#1095#1080#1077' '#1085#1072' '#1073#1083#1086#1082'. '#1087#1086' ID '#1054#1055#1042' '
    DataField = 'HAS_WASTE_STATUS'
    DataSource = dsData
    Items.Strings = (
      #1042#1089#1080#1095#1082#1080
      #1057' '#1059#1054#1073' '#1073#1083#1086#1082#1080#1088#1072#1097' (!)'
      #1041#1077#1079' '#1059#1054#1073' '#1073#1083#1086#1082#1080#1088#1072#1097)
    ParentBackground = True
    TabOrder = 5
    Values.Strings = (
      '1'
      '2'
      '3')
  end
  object gbEngineering: TGroupBox [9]
    Left = 8
    Top = 224
    Width = 426
    Height = 66
    Caption = ' '#1048#1085#1078#1077#1085#1077#1088#1080#1085#1075' '#1086#1087' ID '#1054#1055#1042' '
    TabOrder = 6
    object lblModelDevelopmentType: TLabel
      Left = 8
      Top = 16
      Width = 59
      Height = 13
      Caption = #1054#1073#1077#1084' '#1056#1072#1079#1088'.'
    end
    object lblOkidu: TLabel
      Left = 96
      Top = 16
      Width = 109
      Height = 13
      Caption = #1048#1085#1078#1077#1085#1077#1088' '#1052#1054#1044#1045#1083'-'#1080#1077#1088
      FocusControl = frOkidu
    end
    inline frOkidu: TfrEmployeeFieldEditFrameBald
      Left = 96
      Top = 32
      Width = 321
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 1
      TabStop = True
      inherited gbEmployee: TGroupBox
        Width = 340
        inherited pnlEmployeeName: TPanel
          Width = 265
          inherited pnlRightButtons: TPanel
            Left = 229
          end
          inherited pnlEmpoyeeNameInner: TPanel
            Width = 229
            inherited edtEmployeeName: TDBEdit
              Width = 251
            end
            inherited cbEmployee: TJvDBLookupCombo
              Width = 228
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 330
        end
      end
    end
    object cbModelDevelopmentType: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 81
      Height = 21
      DropDownCount = 20
      DropDownWidth = 240
      DeleteKeyClear = False
      DisplayAllFields = True
      DataField = '_MODEL_DEVELOPMENT_TYPE_ABBREV'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      TabOrder = 0
    end
  end
  object gbStart: TGroupBox [10]
    Left = 8
    Top = 296
    Width = 426
    Height = 65
    Caption = ' '#1057#1090#1072#1088#1090' '#1085#1072' ID '#1054#1055#1042' '
    TabOrder = 7
    object lblProdStartDateInterval: TLabel
      Left = 8
      Top = 16
      Width = 142
      Height = 13
      Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1057#1090#1072#1088#1090' '#1085#1072' ID '#1054#1055#1042
      FocusControl = frProdStartDateInterval
    end
    inline frProdStartDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 31
      Width = 153
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 153
      Constraints.MinHeight = 21
      Constraints.MinWidth = 153
      TabOrder = 0
      TabStop = True
      inherited edtInterval: TJvDBComboEdit
        Width = 153
      end
    end
  end
  inherited alActions: TActionList
    Left = 664
    Top = 112
    inherited actForm: TAction
      Caption = 
        #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1048#1085#1078#1077#1085#1077#1088#1085#1080' '#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1086'-'#1057#1090#1086#1081#1085#1086#1089#1090#1085#1080' '#1040#1085#1072#1083#1080#1079 +
        #1080' '#1087#1086' '#1054#1055#1042
    end
    object actInvestedValueFilter: TAction
      Caption = #1047#1072#1076#1072#1074#1072#1085#1077'...'
      ImageIndex = 3
      OnExecute = actInvestedValueFilterExecute
    end
  end
  inherited dsData: TDataSource
    Left = 632
    Top = 112
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 600
    Top = 112
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Left = 216
    Top = 368
  end
  inherited dsFilterVariants: TDataSource
    Left = 248
    Top = 368
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 280
    Top = 368
  end
  object cdsSaleTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Params = <>
    ProviderName = 'prvSaleTypes'
    Left = 728
    Top = 216
    object cdsSaleTypesSALE_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_TYPE_CODE'
    end
    object cdsSaleTypesSALE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_TYPE_ABBREV'
      Size = 3
    end
    object cdsSaleTypesSALE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'SALE_TYPE_NAME'
      Size = 50
    end
  end
  object dsSaleTypes: TDataSource
    DataSet = cdsSaleTypes
    Left = 760
    Top = 216
  end
  object cdsProductionOrderTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Filtered = True
    Params = <>
    ProviderName = 'prvProductionOrderTypes'
    OnFilterRecord = cdsProductionOrderTypesFilterRecord
    Left = 728
    Top = 152
    object cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'PRODUCTION_ORDER_TYPE_CODE'
    end
    object cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField
      DisplayWidth = 5
      FieldName = 'PRODUCTION_ORDER_TYPE_ABBREV'
      Size = 100
    end
    object cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_NAME: TAbmesWideStringField
      FieldName = 'PRODUCTION_ORDER_TYPE_NAME'
      Size = 100
    end
    object cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_TEXT: TAbmesWideStringField
      FieldName = 'PRODUCTION_ORDER_TYPE_TEXT'
      Size = 108
    end
    object cdsProductionOrderTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_CODE'
    end
    object cdsProductionOrderTypesPROD_ORDER_BASE_TYPE_NO: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_NO'
    end
    object cdsProductionOrderTypesPROD_ORDER_BASE_ROLE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_ROLE_CODE'
    end
    object cdsProductionOrderTypesPROD_ORDER_BASE_ROLE_NO: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_ROLE_NO'
    end
    object cdsProductionOrderTypesIS_REVERSIBLE: TAbmesFloatField
      FieldName = 'IS_REVERSIBLE'
    end
  end
  object dsProductionOrderTypes: TDataSource
    DataSet = cdsProductionOrderTypes
    Left = 760
    Top = 152
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Params = <>
    ProviderName = 'prvBranches'
    Left = 728
    Top = 184
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      DisplayWidth = 3
      FieldName = 'BRANCH_CODE'
    end
    object cdsBranchesBRANCH_NO: TAbmesFloatField
      DisplayWidth = 3
      FieldName = 'BRANCH_NO'
    end
    object cdsBranchesNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 50
    end
    object cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BRANCH_IDENTIFIER'
      Size = 255
    end
    object cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField
      FieldName = 'BRANCH_CODE_AND_NAME'
      Size = 255
    end
  end
  object dsBranches: TDataSource
    DataSet = cdsBranches
    Left = 760
    Top = 184
  end
end
