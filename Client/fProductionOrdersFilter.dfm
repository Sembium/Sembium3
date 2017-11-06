inherited fmProductionOrdersFilter: TfmProductionOrdersFilter
  Left = 255
  Top = 179
  ActiveControl = cbMinMlState
  Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1042#1098#1090#1088#1077#1096#1077#1085
  ClientHeight = 654
  ClientWidth = 961
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 619
    Width = 961
    TabOrder = 10
    inherited pnlOKCancel: TPanel
      Left = 693
    end
    inherited pnlClose: TPanel
      Left = 604
    end
    inherited pnlApply: TPanel
      Left = 872
    end
  end
  object gbMLState: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 161
    Height = 65
    Caption = ' '#1057#1090#1072#1090#1091#1089' '
    TabOrder = 0
    object lblMinMlState: TLabel
      Left = 77
      Top = 35
      Width = 6
      Height = 13
      Caption = #8212
    end
    object cbMinMlState: TDBComboBoxEh
      Left = 8
      Top = 32
      Width = 65
      Height = 21
      DataField = 'MIN_ML_STATE_CODE'
      DataSource = dsData
      DropDownBox.Rows = 13
      DropDownBox.Width = 450
      EditButtons = <>
      TabOrder = 0
      Visible = True
    end
    object cbMaxMlState: TDBComboBoxEh
      Left = 88
      Top = 32
      Width = 65
      Height = 21
      DataField = 'MAX_ML_STATE_CODE'
      DataSource = dsData
      DropDownBox.Rows = 13
      DropDownBox.Width = 450
      EditButtons = <>
      TabOrder = 1
      Visible = True
    end
  end
  object gbFinal: TGroupBox [2]
    Left = 8
    Top = 360
    Width = 945
    Height = 249
    Caption = ' '#1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042' '
    TabOrder = 9
    object lblEnterShipmentStoreDateInterval: TLabel
      Left = 384
      Top = 163
      Width = 148
      Height = 13
      Caption = #1042#1088#1084#1048#1085#1090' '#1079#1072' '#1085#1072#1095'. '#1085#1072' '#1055#1088#1080#1077#1084#1072#1085#1077
      FocusControl = frEnterShipmentStoreDateInterval
    end
    object lblEnterShipmentStoreDateDiff: TLabel
      Left = 544
      Top = 163
      Width = 37
      Height = 13
      Caption = #1056#1077#1079#1077#1088#1074
      FocusControl = edtBeginEnterShipmentStoreDateDiff
    end
    object lblEnterShipmentStoreDateDiffDash: TLabel
      Left = 590
      Top = 182
      Width = 6
      Height = 13
      Caption = #8212
    end
    object lblConsumeDateInterval: TLabel
      Left = 384
      Top = 203
      Width = 146
      Height = 13
      Caption = #1042#1088#1084#1048#1085#1090' '#1079#1072' '#1085#1072#1095'. '#1085#1072' '#1055#1086#1083#1079#1074#1072#1085#1077
      FocusControl = frConsumeDateInterval
    end
    object edtConsumeDateDiff: TLabel
      Left = 544
      Top = 203
      Width = 75
      Height = 13
      Caption = #1056#1077#1079#1077#1088#1074' '#1076#1086' '#1085#1072#1095'.'
      FocusControl = edtMinConsumeDateDiff
    end
    object edtConsumeDateDiffDash: TLabel
      Left = 590
      Top = 222
      Width = 6
      Height = 13
      Caption = #8212
    end
    inline frParamProductFilter: TfrParamProductFilter
      Left = 8
      Top = 11
      Width = 369
      Height = 230
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = True
      inherited grpTreeNodeFilter: TGroupBox
        Width = 369
        Height = 230
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
          Width = 353
          inherited pnlNodesButtons: TPanel
            Left = 328
          end
          inherited grdChosenNodes: TAbmesDBGrid
            Width = 328
            FooterFont.Name = 'Microsoft Sans Serif'
            TitleFont.Name = 'Microsoft Sans Serif'
            Columns = <
              item
                EditButtons = <>
                FieldName = 'NODE_NAME'
                Footers = <>
                Width = 207
              end
              item
                EditButtons = <>
                FieldName = 'NODE_NO'
                Footers = <>
                Width = 88
              end>
          end
        end
        inherited pnlParams: TPanel
          Width = 353
          inherited grdChosenNodeParams: TAbmesDBGrid
            Width = 328
            FooterFont.Name = 'Microsoft Sans Serif'
            TitleFont.Name = 'Microsoft Sans Serif'
            Columns = <
              item
                EditButtons = <>
                FieldName = 'NODE_PARAM_NAME'
                Footers = <>
                Title.Caption = #1055#1088#1080#1089#1098#1097' '#1087#1072#1088#1072#1084#1077#1090#1098#1088
                Width = 157
              end
              item
                EditButtons = <>
                FieldName = 'DISPLAY_VALUE'
                Footers = <>
                Title.Caption = #1057#1090#1086#1081#1085#1086#1089#1090
                Width = 137
              end>
          end
          inherited pnlParamsButtons: TPanel
            Left = 328
            inherited btnDelParam: TSpeedButton
              Top = 25
            end
          end
        end
      end
      inherited dsChosenNodes: TDataSource
        Left = 152
        Top = 40
      end
    end
    inline frShipmentStoreFilter: TfrDeptFilter
      Left = 384
      Top = 11
      Width = 274
      Height = 145
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = True
      inherited grpTreeNodeFilter: TGroupBox
        Width = 274
        Caption = ' '#1058#1055' '#1055#1088#1080#1077#1084#1085#1080#1082' '
        inherited lblsExternal: TLabel
          Width = 52
        end
        inherited lblIsActive: TLabel
          Width = 53
        end
        inherited pnlNodes: TPanel
          Width = 257
          Anchors = [akLeft, akTop, akRight]
          inherited pnlNodesButtons: TPanel
            Left = 232
          end
          inherited grdChosenNodes: TAbmesDBGrid
            Width = 232
            FooterFont.Name = 'Microsoft Sans Serif'
            TitleFont.Name = 'Microsoft Sans Serif'
            Columns = <
              item
                EditButtons = <>
                FieldName = 'NODE_NAME'
                Footers = <>
                Width = 135
              end
              item
                EditButtons = <>
                FieldName = 'NODE_IDENTIFIER'
                Footers = <>
                Width = 63
              end>
          end
        end
      end
      inherited cdsChosenNodes: TAbmesClientDataSet
        Left = 216
      end
      inherited cdsChosenNodesParams: TAbmesClientDataSet
        Left = 216
      end
    end
    inline frConsumerDeptFilter: TfrDeptFilter
      Left = 664
      Top = 11
      Width = 274
      Height = 145
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TabStop = True
      inherited grpTreeNodeFilter: TGroupBox
        Width = 274
        Caption = ' '#1058#1055' '#1055#1086#1083#1079#1074#1072#1090#1077#1083' '
        inherited lblsExternal: TLabel
          Width = 52
        end
        inherited lblIsActive: TLabel
          Width = 53
        end
        inherited pnlNodes: TPanel
          Width = 257
          Anchors = [akLeft, akTop, akRight]
          inherited pnlNodesButtons: TPanel
            Left = 232
          end
          inherited grdChosenNodes: TAbmesDBGrid
            Width = 232
            FooterFont.Name = 'Microsoft Sans Serif'
            TitleFont.Name = 'Microsoft Sans Serif'
            Columns = <
              item
                EditButtons = <>
                FieldName = 'NODE_NAME'
                Footers = <>
                Width = 135
              end
              item
                EditButtons = <>
                FieldName = 'NODE_IDENTIFIER'
                Footers = <>
                Width = 63
              end>
          end
        end
      end
      inherited cdsChosenNodes: TAbmesClientDataSet
        Left = 216
      end
      inherited dsChosenNodes: TDataSource
        Left = 248
      end
      inherited cdsChosenNodesParams: TAbmesClientDataSet
        Left = 216
      end
      inherited dsChosenNodesParams: TDataSource
        Left = 248
      end
    end
    inline frEnterShipmentStoreDateInterval: TfrDateIntervalFrame
      Left = 384
      Top = 179
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 3
      TabStop = True
    end
    object edtBeginEnterShipmentStoreDateDiff: TDBEdit
      Left = 544
      Top = 179
      Width = 41
      Height = 21
      DataField = 'BEGIN_ENTER_SH_STORE_DATE_DIFF'
      DataSource = dsData
      TabOrder = 4
    end
    object edtEndEnterShipmentStoreDateDiff: TDBEdit
      Left = 600
      Top = 179
      Width = 41
      Height = 21
      DataField = 'END_ENTER_SH_STORE_DATE_DIFF'
      DataSource = dsData
      TabOrder = 5
    end
    inline frConsumeDateInterval: TfrDateIntervalFrame
      Left = 384
      Top = 219
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 6
      TabStop = True
    end
    object edtMinConsumeDateDiff: TDBEdit
      Left = 544
      Top = 219
      Width = 41
      Height = 21
      DataField = 'MIN_CONSUME_DATE_DIFF'
      DataSource = dsData
      TabOrder = 7
    end
    object edtMaxConsumeDateDiff: TDBEdit
      Left = 600
      Top = 219
      Width = 41
      Height = 21
      DataField = 'MAX_CONSUME_DATE_DIFF'
      DataSource = dsData
      TabOrder = 8
    end
    object gbExceptEventDamages: TGroupBox
      Left = 664
      Top = 160
      Width = 273
      Height = 81
      Caption = ' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' '
      TabOrder = 9
      object lblDamagesState: TLabel
        Left = 16
        Top = 24
        Width = 106
        Height = 13
        Caption = #1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103
      end
      object cbDamagesState: TJvDBLookupCombo
        Left = 16
        Top = 43
        Width = 241
        Height = 21
        DropDownWidth = 300
        DataField = 'DAMAGES_STATE_CODE'
        DataSource = dsData
        DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
        LookupField = 'STATE_CODE'
        LookupDisplay = 'STATE_ABBREV;STATE_NAME'
        LookupSource = dsDamageStates
        TabOrder = 0
      end
    end
  end
  object gbStart: TGroupBox [3]
    Left = 8
    Top = 224
    Width = 369
    Height = 130
    Caption = ' '#1057#1090#1072#1088#1090' '#1085#1072' ID '#1054#1055#1042' '
    TabOrder = 7
    object lblUncoveredLines: TLabel
      Left = 8
      Top = 24
      Width = 72
      Height = 13
      Caption = #1054#1073#1077#1079#1087#1077#1095#1077#1085#1086#1089#1090
      FocusControl = cbUncoveredLines
    end
    object lblProdStartDateInterval: TLabel
      Left = 8
      Top = 80
      Width = 142
      Height = 13
      Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1057#1090#1072#1088#1090' '#1085#1072' ID '#1054#1055#1042
      FocusControl = frProdStartDateInterval
    end
    object lblProductionStartDateDiff: TLabel
      Left = 176
      Top = 80
      Width = 37
      Height = 13
      Caption = #1056#1077#1079#1077#1088#1074
      FocusControl = edtEndProductionStartDateDiff
    end
    object lblProductionStartDateDiffDash: TLabel
      Left = 222
      Top = 99
      Width = 6
      Height = 13
      Caption = #8212
    end
    object cbUncoveredLines: TJvDBComboBox
      Left = 8
      Top = 40
      Width = 153
      Height = 21
      DataField = 'FILTER_UNCOVERED_LINES_STATE'
      DataSource = dsData
      ItemHeight = 13
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1053#1077#1086#1073#1077#1079#1087#1077#1095#1077#1085#1080
        #1054#1073#1077#1079#1087#1077#1095#1077#1085#1080)
      TabOrder = 0
      Values.Strings = (
        '1'
        '2'
        '3')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
      OnChange = cbSaleStateChange
    end
    inline frProdStartDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 95
      Width = 153
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 153
      Constraints.MinHeight = 21
      Constraints.MinWidth = 153
      TabOrder = 1
      TabStop = True
      inherited edtInterval: TJvDBComboEdit
        Width = 153
      end
    end
    object edtEndProductionStartDateDiff: TDBEdit
      Left = 232
      Top = 96
      Width = 41
      Height = 21
      DataField = 'END_PRODUCTION_START_DATE_DIFF'
      DataSource = dsData
      TabOrder = 3
    end
    object edtBeginProductionStartDateDiff: TDBEdit
      Left = 176
      Top = 96
      Width = 41
      Height = 21
      DataField = 'BEGIN_PRODUCTION_START_DATE_DIFF'
      DataSource = dsData
      TabOrder = 2
    end
  end
  object gbSaleIdentification: TGroupBox [4]
    Left = 560
    Top = 8
    Width = 393
    Height = 145
    Caption = ' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1055#1088#1086#1076#1072#1078#1073#1080'                               '
    TabOrder = 3
    object pnlOwnerEmployeeOrCompany: TPanel
      Left = 7
      Top = 16
      Width = 362
      Height = 89
      BevelOuter = bvNone
      TabOrder = 0
      object pnlOwnerEmployee: TPanel
        Left = 0
        Top = 89
        Width = 362
        Height = 49
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
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
          Width = 337
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 0
          TabStop = True
          inherited gbEmployee: TGroupBox
            Width = 356
            inherited pnlEmployeeName: TPanel
              Width = 281
              inherited pnlRightButtons: TPanel
                Left = 245
              end
              inherited pnlEmpoyeeNameInner: TPanel
                Width = 245
                inherited cbEmployee: TJvDBLookupCombo
                  Width = 244
                end
              end
            end
            inherited pnlPaddingRight: TPanel
              Left = 346
            end
          end
        end
      end
      object pnlOwnerCompany: TPanel
        Left = 0
        Top = 0
        Width = 362
        Height = 89
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
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
          Width = 361
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 0
          TabStop = True
          inherited gbPartner: TGroupBox
            Width = 376
            inherited pnlNameAndButtons: TPanel
              Width = 287
              inherited pnlRightButtons: TPanel
                Left = 251
              end
              inherited pnlPartnerName: TPanel
                Width = 251
                inherited cbPartner: TJvDBLookupCombo
                  Width = 252
                end
              end
            end
            inherited pnlPaddingRight: TPanel
              Left = 368
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
  object gbWastingSale: TGroupBox [5]
    Left = 8
    Top = 80
    Width = 257
    Height = 73
    Caption = ' '#1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1054#1055#1042' '
    TabOrder = 4
    object lblWastingSaleBranch: TLabel
      Left = 138
      Top = 30
      Width = 51
      Height = 13
      Caption = #1058#1055' '#1043#1083'.'
    end
    object lblWastingSaleNo: TLabel
      Left = 202
      Top = 30
      Width = 14
      Height = 13
      Caption = 'No'
    end
    object cbWastingSaleBranch: TJvDBLookupCombo
      Left = 138
      Top = 46
      Width = 57
      Height = 21
      DeleteKeyClear = False
      DisplayAllFields = True
      DataField = 'WASTING_SALE_BRANCH_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089' >'
      LookupField = 'BRANCH_CODE'
      LookupDisplay = 'BRANCH_IDENTIFIER'
      LookupSource = dsBranches
      TabOrder = 1
    end
    object edtWastingSaleNo: TDBEdit
      Left = 202
      Top = 46
      Width = 49
      Height = 21
      DataField = 'WASTING_SALE_NO'
      DataSource = dsData
      TabOrder = 2
    end
    object rgIsWasteCompensatorStatus: TJvDBRadioPanel
      Left = 8
      Top = 15
      Width = 127
      Height = 51
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
  end
  object gbProductionOrderIdentification: TGroupBox [6]
    Left = 176
    Top = 8
    Width = 377
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
      Width = 14
      Height = 13
      Caption = 'No'
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
      Left = 272
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
      DropDownWidth = 240
      DisplayAllFields = True
      DataField = 'PRODUCTION_ORDER_TYPE_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'. >'
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
      Left = 272
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
  object cbSaleState: TJvDBComboBox [7]
    Left = 709
    Top = 4
    Width = 81
    Height = 21
    DataField = 'IS_SALE_STATE'
    DataSource = dsData
    ItemHeight = 13
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
  object gbEngineering: TGroupBox [8]
    Left = 8
    Top = 159
    Width = 369
    Height = 64
    Caption = ' '#1048#1085#1078#1077#1085#1077#1088#1080#1085#1075' '#1086#1087' ID '#1054#1055#1042' '
    TabOrder = 6
    object lblOkidu: TLabel
      Left = 96
      Top = 16
      Width = 109
      Height = 13
      Caption = #1048#1085#1078#1077#1085#1077#1088' '#1052#1054#1044#1045#1083'-'#1080#1077#1088
      FocusControl = frOkidu
    end
    object lblModelDevelopmentType: TLabel
      Left = 8
      Top = 16
      Width = 59
      Height = 13
      Caption = #1054#1073#1077#1084' '#1056#1072#1079#1088'.'
    end
    inline frOkidu: TfrEmployeeFieldEditFrameBald
      Left = 96
      Top = 32
      Width = 265
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 1
      TabStop = True
      inherited gbEmployee: TGroupBox
        Width = 284
        inherited pnlEmployeeName: TPanel
          Width = 209
          inherited pnlRightButtons: TPanel
            Left = 173
          end
          inherited pnlEmpoyeeNameInner: TPanel
            Width = 173
            inherited edtEmployeeName: TDBEdit
              Width = 195
            end
            inherited cbEmployee: TJvDBLookupCombo
              Width = 172
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 274
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
  object rgHasWasteStatus: TDBRadioGroup [9]
    Left = 272
    Top = 80
    Width = 281
    Height = 73
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
  object gbRealization: TGroupBox [10]
    Left = 384
    Top = 159
    Width = 569
    Height = 193
    Caption = ' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' ID '#1054#1055#1042' '
    TabOrder = 8
    object lblProductionWorkdaysDash: TLabel
      Left = 110
      Top = 171
      Width = 6
      Height = 13
      Caption = #8212
    end
    object lblProductionWorkdays: TLabel
      Left = 8
      Top = 171
      Width = 54
      Height = 13
      Caption = #1055#1077#1088#1080#1086#1076' '#1056#1083
      FocusControl = edtBeginProductionWorkdays
    end
    object lblProductionWorkdaysDays: TLabel
      Left = 165
      Top = 171
      Width = 42
      Height = 13
      Caption = #1088#1072#1073'. '#1076#1085#1080
    end
    object lblProductionWorkdaysPercentDash: TLabel
      Left = 307
      Top = 171
      Width = 6
      Height = 13
      Caption = #8212
    end
    object lblProductionWorkdaysPercent: TLabel
      Left = 233
      Top = 171
      Width = 25
      Height = 13
      Caption = #1054#1090#1082#1083
      FocusControl = edtBeginProductionWorkdaysPercent
    end
    object edtProductionWorkdaysPercentPercent: TLabel
      Left = 362
      Top = 171
      Width = 8
      Height = 13
      Caption = '%'
    end
    object lblOperationDiffDash: TLabel
      Left = 490
      Top = 171
      Width = 6
      Height = 13
      Caption = #8212
    end
    object lblOperationDiff: TLabel
      Left = 396
      Top = 171
      Width = 46
      Height = 13
      Caption = #1054#1090#1082#1083#1042#1088#1084
      FocusControl = edtBeginOperationDiff
    end
    object lblBeginOperationDiffDays: TLabel
      Left = 544
      Top = 171
      Width = 18
      Height = 13
      Caption = #1076#1085#1080
    end
    inline frProductionDeptFilter: TfrDeptFilter
      Left = 8
      Top = 16
      Width = 274
      Height = 145
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = True
      inherited grpTreeNodeFilter: TGroupBox
        Width = 274
        Caption = ' '#1058#1055' '#1056#1077#1072#1083#1080#1079#1072#1090#1086#1088' '
        inherited lblsExternal: TLabel
          Width = 52
        end
        inherited lblIsActive: TLabel
          Width = 53
        end
        inherited pnlNodes: TPanel
          Width = 258
          Anchors = [akLeft, akTop, akRight]
          inherited pnlNodesButtons: TPanel
            Left = 233
          end
          inherited grdChosenNodes: TAbmesDBGrid
            Width = 233
            FooterFont.Name = 'Microsoft Sans Serif'
            TitleFont.Name = 'Microsoft Sans Serif'
            Columns = <
              item
                EditButtons = <>
                FieldName = 'NODE_NAME'
                Footers = <>
                Width = 136
              end
              item
                EditButtons = <>
                FieldName = 'NODE_IDENTIFIER'
                Footers = <>
                Width = 63
              end>
          end
        end
      end
      inherited cdsChosenNodes: TAbmesClientDataSet
        Left = 216
      end
      inherited cdsChosenNodesParams: TAbmesClientDataSet
        Left = 216
      end
    end
    inline frOperationDeptFilter: TfrDeptFilter
      Left = 288
      Top = 16
      Width = 273
      Height = 145
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = True
      inherited grpTreeNodeFilter: TGroupBox
        Width = 273
        Caption = ' '#1058#1055' '#1059#1095#1072#1089#1090#1074#1072#1097#1086' '#1074' '#1056'-'#1052#1054#1044#1045#1083' '
        inherited lblsExternal: TLabel
          Width = 52
        end
        inherited lblIsActive: TLabel
          Width = 53
        end
        inherited pnlNodes: TPanel
          Width = 257
          Anchors = [akLeft, akTop, akRight]
          inherited pnlNodesButtons: TPanel
            Left = 232
          end
          inherited grdChosenNodes: TAbmesDBGrid
            Width = 232
            FooterFont.Name = 'Microsoft Sans Serif'
            TitleFont.Name = 'Microsoft Sans Serif'
            Columns = <
              item
                EditButtons = <>
                FieldName = 'NODE_NAME'
                Footers = <>
                Width = 135
              end
              item
                EditButtons = <>
                FieldName = 'NODE_IDENTIFIER'
                Footers = <>
                Width = 63
              end>
          end
        end
      end
    end
    object edtBeginProductionWorkdays: TDBEdit
      Left = 64
      Top = 168
      Width = 41
      Height = 21
      DataField = 'BEGIN_PRODUCTION_WORKDAYS'
      DataSource = dsData
      TabOrder = 2
    end
    object edtEndProductionWorkdays: TDBEdit
      Left = 120
      Top = 168
      Width = 41
      Height = 21
      DataField = 'END_PRODUCTION_WORKDAYS'
      DataSource = dsData
      TabOrder = 3
    end
    object edtBeginProductionWorkdaysPercent: TDBEdit
      Left = 261
      Top = 168
      Width = 41
      Height = 21
      DataField = 'BEGIN_PRODUCTION_WORKDAYS_PERCENT'
      DataSource = dsData
      TabOrder = 4
    end
    object edtEndProductionWorkdaysPercent: TDBEdit
      Left = 317
      Top = 168
      Width = 41
      Height = 21
      DataField = 'END_PRODUCTION_WORKDAYS_PERCENT'
      DataSource = dsData
      TabOrder = 5
    end
    object edtBeginOperationDiff: TDBEdit
      Left = 444
      Top = 168
      Width = 41
      Height = 21
      DataField = 'BEGIN_OP_DATE_DIFF'
      DataSource = dsData
      TabOrder = 6
    end
    object edtEndOperationDiff: TDBEdit
      Left = 500
      Top = 168
      Width = 41
      Height = 21
      DataField = 'END_OP_DATE_DIFF'
      DataSource = dsData
      TabOrder = 7
    end
  end
  inherited alActions: TActionList
    Left = 216
    Top = 576
    inherited actForm: TAction
      Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1042#1098#1090#1088#1077#1096#1077#1085
    end
  end
  inherited dsData: TDataSource
    Left = 184
    Top = 576
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 152
    Top = 576
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Left = 32
    Top = 576
  end
  inherited dsFilterVariants: TDataSource
    Left = 56
    Top = 576
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 80
    Top = 592
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Params = <>
    ProviderName = 'prvBranches'
    Left = 488
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
    Left = 520
  end
  object cdsSaleTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Params = <>
    ProviderName = 'prvSaleTypes'
    Left = 424
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
    Left = 456
  end
  object cdsProductionOrderTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Filtered = True
    Params = <>
    ProviderName = 'prvProductionOrderTypes'
    OnFilterRecord = cdsProductionOrderTypesFilterRecord
    Left = 360
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
    Left = 392
  end
  object cdsDamageStates: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 744
    Top = 560
    object cdsDamageStatesSTATE_CODE: TAbmesFloatField
      FieldName = 'STATE_CODE'
    end
    object cdsDamageStatesSTATE_ABBREV: TAbmesWideStringField
      FieldName = 'STATE_ABBREV'
      Size = 15
    end
    object cdsDamageStatesSTATE_NAME: TAbmesWideStringField
      FieldName = 'STATE_NAME'
      Size = 30
    end
  end
  object dsDamageStates: TDataSource
    DataSet = cdsDamageStates
    Left = 776
    Top = 560
  end
end
