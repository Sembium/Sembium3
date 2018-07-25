inherited fmXModelsFilter: TfmXModelsFilter
  Left = 305
  Top = 170
  ClientHeight = 600
  ClientWidth = 785
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 565
    Width = 785
    TabOrder = 19
    inherited pnlOKCancel: TPanel
      Left = 517
    end
    inherited pnlClose: TPanel
      Left = 428
    end
    inherited pnlApply: TPanel
      Left = 696
    end
  end
  object gbSpecState: TGroupBox [1]
    Left = 8
    Top = 7
    Width = 185
    Height = 66
    Caption = ' '#1057#1090#1072#1090#1091#1089' '#1085#1072' '#1055#1088#1080#1085#1094#1080#1087#1085#1072#1090#1072' '#1048#1056' '
    TabOrder = 0
    object lblDash1: TLabel
      Left = 89
      Top = 36
      Width = 6
      Height = 13
      Caption = #8212
    end
    object cbMinSpecState: TDBComboBoxEh
      Left = 8
      Top = 33
      Width = 77
      Height = 21
      DataField = 'MIN_SPEC_STATE_CODE'
      DataSource = dsData
      DynProps = <>
      DropDownBox.Width = 350
      EditButtons = <>
      TabOrder = 0
      Visible = True
    end
    object cbMaxSpecState: TDBComboBoxEh
      Left = 100
      Top = 33
      Width = 77
      Height = 21
      DataField = 'MAX_SPEC_STATE_CODE'
      DataSource = dsData
      DynProps = <>
      DropDownBox.Width = 350
      EditButtons = <>
      TabOrder = 1
      Visible = True
    end
  end
  object gbMinProductNeed: TGroupBox [2]
    Left = 400
    Top = 456
    Width = 185
    Height = 49
    Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1057#1090#1072#1088#1090' '#1085#1072' '#1056'-'#1052#1054#1044#1045#1083' '
    TabOrder = 15
    inline frProductNeedDateInterval: TfrDateIntervalFrame
      Left = 16
      Top = 18
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 0
      TabStop = True
    end
  end
  object gbEnterResultStore: TGroupBox [3]
    Left = 592
    Top = 456
    Width = 185
    Height = 49
    Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1053#1072#1095#1072#1083#1086' '#1085#1072' '#1055#1088#1080#1077#1084#1072#1085#1077' '
    TabOrder = 16
    inline frEnterResultStoreDateInterval: TfrDateIntervalFrame
      Left = 16
      Top = 18
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 0
      TabStop = True
    end
  end
  inline frMainDept: TfrDeptFieldEditFrame [4]
    Left = 400
    Top = 288
    Width = 377
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 12
    TabStop = True
    inherited gbTreeNode: TGroupBox
      Width = 377
      Caption = ' '#1058#1055' '#1056#1077#1072#1083#1080#1079#1072#1090#1086#1088' '
      inherited pnlTreeNode: TPanel
        Width = 361
        inherited pnlTreeNodeName: TPanel
          Width = 214
          inherited edtTreeNodeName: TDBEdit
            Width = 213
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 214
        end
        inherited pnlRightButtons: TPanel
          Left = 325
        end
      end
    end
  end
  inline frIncludeDept: TfrDeptFieldEditFrame [5]
    Left = 400
    Top = 344
    Width = 377
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 13
    TabStop = True
    inherited gbTreeNode: TGroupBox
      Width = 377
      Caption = ' '#1058#1055' '#1055#1088#1080#1077#1084#1085#1080#1082' '
      inherited pnlTreeNode: TPanel
        Width = 361
        inherited pnlTreeNodeName: TPanel
          Width = 214
          inherited edtTreeNodeName: TDBEdit
            Width = 213
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 214
        end
        inherited pnlRightButtons: TPanel
          Left = 325
        end
      end
    end
  end
  inline frIncludeDetail: TfrProductFieldEditFrame [6]
    Left = 8
    Top = 400
    Width = 377
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 7
    TabStop = True
    inherited gbTreeNode: TGroupBox
      Width = 377
      Caption = ' '#1057#1098#1076#1098#1088#1078#1072#1097' '#1050#1057#1063' '
      inherited pnlTreeNode: TPanel
        Width = 361
        inherited pnlTreeNodeName: TPanel
          Width = 179
          inherited edtTreeNodeName: TDBEdit
            Width = 178
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 179
        end
        inherited pnlRightButtons: TPanel
          Left = 302
        end
      end
    end
  end
  inline frIncludeProduct: TfrProductFieldEditFrame [7]
    Left = 8
    Top = 456
    Width = 377
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 8
    TabStop = True
    inherited gbTreeNode: TGroupBox
      Width = 377
      Caption = ' '#1057#1098#1076#1098#1088#1078#1072#1097' '#1053#1057#1063' '
      inherited pnlTreeNode: TPanel
        Width = 361
        inherited pnlTreeNodeName: TPanel
          Width = 179
          inherited edtTreeNodeName: TDBEdit
            Width = 178
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 179
        end
        inherited pnlRightButtons: TPanel
          Left = 302
        end
      end
    end
  end
  inline frParamProductFilter: TfrParamProductFilter [8]
    Left = 8
    Top = 160
    Width = 377
    Height = 234
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    TabStop = True
    inherited grpTreeNodeFilter: TGroupBox
      Height = 234
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
    end
  end
  object gbRequestedChanges: TGroupBox [9]
    Left = 400
    Top = 511
    Width = 185
    Height = 50
    Caption = ' '#1055#1088#1077#1076#1083#1086#1078#1077#1085#1080' '#1047#1072#1084#1077#1085#1080' '
    TabOrder = 17
    DesignSize = (
      185
      50)
    object Bevel1: TBevel
      Left = 93
      Top = 16
      Width = 9
      Height = 26
      Anchors = [akLeft, akTop, akBottom]
      Shape = bsLeftLine
    end
    object chkHasRequestedChanges: TDBCheckBox
      Left = 6
      Top = 14
      Width = 81
      Height = 17
      Caption = #1048#1084#1072' '#1054#1073#1097#1086
      DataField = 'HAS_REQUESTED_CHANGES'
      DataSource = dsData
      TabOrder = 0
    end
    object chkHasNotRequestedChanges: TDBCheckBox
      Left = 6
      Top = 29
      Width = 81
      Height = 17
      Caption = #1053#1103#1084#1072' '#1054#1073#1097#1086
      DataField = 'HAS_NOT_REQUESTED_CHANGES'
      DataSource = dsData
      TabOrder = 1
    end
    object chkHasRequestedMyChanges: TDBCheckBox
      Left = 104
      Top = 14
      Width = 73
      Height = 17
      Caption = #1048#1084#1072' '#1052#1086#1080
      DataField = 'HAS_REQUESTED_MY_CHANGES'
      DataSource = dsData
      TabOrder = 2
    end
    object chkHasNotRequestedMyChanges: TDBCheckBox
      Left = 104
      Top = 29
      Width = 73
      Height = 17
      Caption = #1053#1103#1084#1072' '#1052#1086#1080
      DataField = 'HAS_NOT_REQUESTED_MY_CHANGES'
      DataSource = dsData
      TabOrder = 3
    end
  end
  object gbRejectedChanges: TGroupBox [10]
    Left = 592
    Top = 511
    Width = 185
    Height = 50
    Caption = ' '#1054#1090#1082#1072#1079#1072#1085#1080' '#1047#1072#1084#1077#1085#1080' '
    TabOrder = 18
    DesignSize = (
      185
      50)
    object Bevel3: TBevel
      Left = 93
      Top = 16
      Width = 9
      Height = 26
      Anchors = [akLeft, akTop, akBottom]
      Shape = bsLeftLine
    end
    object chkHasRejectedChanges: TDBCheckBox
      Left = 8
      Top = 14
      Width = 73
      Height = 17
      Caption = #1048#1084#1072' '#1054#1073#1097#1086
      DataField = 'HAS_REJECTED_CHANGES'
      DataSource = dsData
      TabOrder = 0
    end
    object chkHasNotRejectedChanges: TDBCheckBox
      Left = 8
      Top = 29
      Width = 81
      Height = 17
      Caption = #1053#1103#1084#1072' '#1054#1073#1097#1086
      DataField = 'HAS_NOT_REJECTED_CHANGES'
      DataSource = dsData
      TabOrder = 1
    end
    object chkHasRejectedMyChanges: TDBCheckBox
      Left = 104
      Top = 14
      Width = 65
      Height = 17
      Caption = #1048#1084#1072' '#1052#1086#1080
      DataField = 'HAS_REJECTED_MY_CHANGES'
      DataSource = dsData
      TabOrder = 2
    end
    object chkHasNotRejectedMyChanges: TDBCheckBox
      Left = 104
      Top = 29
      Width = 73
      Height = 17
      Caption = #1053#1103#1084#1072' '#1052#1086#1080
      DataField = 'HAS_NOT_REJECTED_MY_CHANGES'
      DataSource = dsData
      TabOrder = 3
    end
  end
  object gbProductionOrderIdentification: TGroupBox [11]
    Left = 400
    Top = 8
    Width = 377
    Height = 65
    Caption = ' ID '#1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1042#1098#1090#1088#1077#1096#1077#1085' ('#1054#1055#1042') '
    TabOrder = 2
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
      Width = 33
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
      DeleteKeyClear = False
      DisplayAllFields = True
      DataField = '_SALE_BRANCH_IDENTIFIER'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089' >'
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
  object gbSaleIdentification: TGroupBox [12]
    Left = 400
    Top = 80
    Width = 377
    Height = 113
    Caption = ' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1055#1088#1086#1076#1072#1078#1073#1080'                               '
    TabOrder = 5
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
  object cbSaleState: TJvDBComboBox [13]
    Left = 549
    Top = 76
    Width = 81
    Height = 21
    DataField = 'IS_SALE_STATE'
    DataSource = dsData
    Items.Strings = (
      '< '#1074#1089#1080#1095#1082#1080' >'
      #1051#1080#1085#1077#1081#1085#1072
      #1057#1074#1086#1073#1086#1076#1085#1072)
    TabOrder = 4
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
  object rgHasWasteStatus: TDBRadioGroup [14]
    Left = 400
    Top = 244
    Width = 377
    Height = 37
    Caption = ' '#1053#1072#1083#1080#1095#1080#1077' '#1085#1072' '#1073#1083#1086#1082'. '
    Columns = 3
    DataField = 'HAS_WASTE_STATUS'
    DataSource = dsData
    Items.Strings = (
      #1042#1089#1080#1095#1082#1080
      #1057' '#1059#1054#1073' '#1073#1083#1086#1082#1080#1088#1072#1097' (!)'
      #1041#1077#1079' '#1059#1054#1073' '#1073#1083#1086#1082#1080#1088#1072#1097)
    TabOrder = 11
    Values.Strings = (
      '1'
      '2'
      '3')
  end
  object gbEngineering: TGroupBox [15]
    Left = 8
    Top = 80
    Width = 377
    Height = 65
    Caption = ' '#1048#1085#1078#1077#1085#1077#1088#1080#1085#1075' '#1087#1086' ID '#1054#1055#1042' '
    TabOrder = 3
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
      Width = 273
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 1
      TabStop = True
      inherited gbEmployee: TGroupBox
        Width = 292
        inherited pnlEmployeeName: TPanel
          Width = 217
          inherited pnlRightButtons: TPanel
            Left = 181
          end
          inherited pnlEmpoyeeNameInner: TPanel
            Width = 181
            inherited cbEmployee: TJvDBLookupCombo
              Width = 180
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 282
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
  object gbMlState: TGroupBox [16]
    Left = 200
    Top = 8
    Width = 185
    Height = 65
    Caption = ' '#1057#1090#1072#1090#1091#1089' '#1085#1072' ID '#1054#1055#1042' '
    TabOrder = 1
    object lblDash2: TLabel
      Left = 89
      Top = 36
      Width = 6
      Height = 13
      Caption = #8212
    end
    object cbMinMlState: TDBComboBoxEh
      Left = 8
      Top = 33
      Width = 77
      Height = 21
      DataField = 'MIN_ML_STATE_CODE'
      DataSource = dsData
      DynProps = <>
      DropDownBox.Rows = 13
      DropDownBox.Width = 450
      EditButtons = <>
      TabOrder = 0
      Visible = True
    end
    object cbMaxMlState: TDBComboBoxEh
      Left = 100
      Top = 33
      Width = 77
      Height = 21
      DataField = 'MAX_ML_STATE_CODE'
      DataSource = dsData
      DynProps = <>
      DropDownBox.Rows = 13
      DropDownBox.Width = 450
      EditButtons = <>
      TabOrder = 1
      Visible = True
    end
  end
  object rgIsWasteCompensatorStatus: TDBRadioGroup [17]
    Left = 400
    Top = 200
    Width = 377
    Height = 37
    Caption = ' '#1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1054#1055#1042' '
    Columns = 3
    DataField = 'IS_WASTE_COMPENSATOR_STATUS'
    DataSource = dsData
    Items.Strings = (
      #1042#1089#1080#1095#1082#1080
      #1054#1089#1085#1086#1074#1077#1085' ('#1054')'
      #1057#1098#1087#1098#1090#1089#1090#1074#1072#1097' ('#1057')')
    TabOrder = 10
    Values.Strings = (
      '1'
      '2'
      '3')
  end
  object gbActivationDays: TGroupBox [18]
    Left = 400
    Top = 400
    Width = 129
    Height = 49
    Caption = ' '#1044#1085#1080' '#1076#1086' '#1072#1082#1090#1080#1074#1080#1088#1072#1085#1077' '
    TabOrder = 14
    object lblDash3: TLabel
      Left = 61
      Top = 22
      Width = 6
      Height = 13
      Caption = #8212
    end
    object edtMinLimitingDateDiff: TDBEdit
      Left = 8
      Top = 18
      Width = 49
      Height = 21
      DataField = 'MIN_LIMITING_DATE_DIFF'
      DataSource = dsData
      TabOrder = 0
    end
    object edtMaxLimitingDateDiff: TDBEdit
      Left = 72
      Top = 18
      Width = 49
      Height = 21
      DataField = 'MAX_LIMITING_DATE_DIFF'
      DataSource = dsData
      TabOrder = 1
    end
  end
  inline frToolDetail: TfrProductFieldEditFrame [19]
    Left = 8
    Top = 512
    Width = 377
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 9
    TabStop = True
    inherited gbTreeNode: TGroupBox
      Width = 377
      Caption = ' '#1050#1086#1084#1087#1083#1077#1082#1090#1086#1074#1072#1097' '#1056#1077#1089#1091#1088#1089' '
      inherited pnlTreeNode: TPanel
        Width = 361
        inherited pnlTreeNodeName: TPanel
          Width = 179
          inherited edtTreeNodeName: TDBEdit
            Width = 178
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 179
        end
        inherited pnlRightButtons: TPanel
          Left = 302
        end
      end
    end
  end
  inherited alActions: TActionList
    Left = 688
    Top = 152
  end
  inherited dsData: TDataSource
    Left = 648
    Top = 152
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 616
    Top = 152
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Left = 152
    Top = 536
  end
  inherited dsFilterVariants: TDataSource
    Left = 176
    Top = 536
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 200
    Top = 552
  end
  object cdsProductionOrderTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Filtered = True
    Params = <>
    ProviderName = 'prvProductionOrderTypes'
    OnFilterRecord = cdsProductionOrderTypesFilterRecord
    Left = 632
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
    Left = 664
  end
  object cdsSaleTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Params = <>
    ProviderName = 'prvSaleTypes'
    Left = 696
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
    Left = 728
  end
end
