inherited fmExceptEventsFilter: TfmExceptEventsFilter
  Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103
  ClientHeight = 707
  ClientWidth = 1017
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 672
    Width = 1017
    TabOrder = 9
    inherited pnlOKCancel: TPanel
      Left = 749
    end
    inherited pnlClose: TPanel
      Left = 660
    end
    inherited pnlApply: TPanel
      Left = 928
    end
  end
  object gbExceptEventIdentification: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 593
    Height = 105
    Caption = ' ID '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' '
    TabOrder = 0
    object lblCrateDateInterval: TLabel
      Left = 224
      Top = 16
      Width = 123
      Height = 13
      Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103
    end
    object lblNo: TLabel
      Left = 168
      Top = 16
      Width = 14
      Height = 13
      Caption = 'No'
      FocusControl = edtNo
    end
    object lblBetweenExceptEventState: TLabel
      Left = 77
      Top = 36
      Width = 6
      Height = 13
      Caption = #8212
    end
    object lblExceptEventState: TLabel
      Left = 8
      Top = 16
      Width = 34
      Height = 13
      Caption = #1057#1090#1072#1090#1091#1089
    end
    object lblExceptEventType: TLabel
      Left = 8
      Top = 56
      Width = 19
      Height = 13
      Caption = #1042#1080#1076
    end
    object lblLevel: TLabel
      Left = 469
      Top = 56
      Width = 36
      Height = 13
      Caption = #1054#1073#1093#1074#1072#1090
    end
    object lblCreateEmployee: TLabel
      Left = 376
      Top = 16
      Width = 65
      Height = 13
      Caption = #1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1083
    end
    inline frCreateDateInterval: TfrDateIntervalFrame
      Left = 224
      Top = 32
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 3
      TabStop = True
    end
    object edtNo: TDBEdit
      Left = 168
      Top = 32
      Width = 49
      Height = 21
      DataField = 'EXCEPT_EVENT_NO'
      DataSource = dsData
      TabOrder = 2
    end
    object cbMaxExceptEventState: TDBComboBoxEh
      Left = 87
      Top = 32
      Width = 65
      Height = 21
      DataField = 'MAX_STATE_CODE'
      DataSource = dsData
      DropDownBox.Rows = 11
      DropDownBox.Width = 300
      EditButtons = <>
      TabOrder = 1
      Visible = True
    end
    object cbMinExceptEventState: TDBComboBoxEh
      Left = 8
      Top = 32
      Width = 65
      Height = 21
      DataField = 'MIN_STATE_CODE'
      DataSource = dsData
      DropDownBox.Rows = 11
      DropDownBox.Width = 300
      EditButtons = <>
      TabOrder = 0
      Visible = True
    end
    object cbExceptEventLevel: TJvDBLookupCombo
      Left = 469
      Top = 72
      Width = 113
      Height = 21
      DataField = '_EXCEPT_EVENT_LEVEL_NAME'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      TabOrder = 6
    end
    inline frExceptEventType: TfrExceptEventTypeFieldEditFrameBald
      Left = 8
      Top = 72
      Width = 454
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 5
      DesignSize = (
        454
        22)
      inherited gbTreeNode: TGroupBox
        Width = 470
        DesignSize = (
          470
          49)
        inherited pnlTreeNode: TPanel
          Width = 454
          inherited pnlTreeNodeName: TPanel
            Width = 307
            DesignSize = (
              307
              22)
            inherited edtTreeNodeName: TDBEdit
              Width = 306
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 307
          end
          inherited pnlRightButtons: TPanel
            Left = 418
          end
        end
      end
    end
    inline frCreateEmployee: TfrEmployeeFieldEditFrameBald
      Left = 376
      Top = 32
      Width = 209
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 4
      inherited gbEmployee: TGroupBox
        Width = 228
        inherited pnlEmployeeName: TPanel
          Width = 153
          inherited pnlRightButtons: TPanel
            Left = 117
          end
          inherited pnlEmpoyeeNameInner: TPanel
            Width = 117
            inherited edtEmployeeName: TDBEdit
              Width = 71
            end
            inherited cbEmployee: TJvDBLookupCombo
              Width = 116
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 218
        end
      end
    end
  end
  inline frExceptEventProduct: TfrParamProductFilter [2]
    Left = 8
    Top = 120
    Width = 377
    Height = 233
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    inherited grpTreeNodeFilter: TGroupBox
      Caption = ' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '#1087#1086' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' '
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
  object gbExceptEventDamages: TGroupBox [3]
    Left = 8
    Top = 360
    Width = 377
    Height = 305
    Caption = ' '#1054#1074#1083#1072#1076#1103#1074#1072#1085#1077' '#1085#1072' '#1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103' '
    TabOrder = 5
    object lblDamagesNormalizedState: TLabel
      Left = 8
      Top = 16
      Width = 62
      Height = 13
      Caption = #1054#1074#1083#1072#1076#1103#1074#1072#1085#1077
    end
    object lblDamageResolvePlanInterval: TLabel
      Left = 8
      Top = 64
      Width = 120
      Height = 13
      Caption = #1042#1088#1084#1048#1085#1090' '#1079#1072' '#1054#1074#1083#1072#1076#1103#1074#1072#1085#1077
    end
    object lblDamageResolveWorkdaysLeft: TLabel
      Left = 160
      Top = 64
      Width = 37
      Height = 13
      Caption = #1056#1077#1079#1077#1088#1074
    end
    object lblBetweenMinMaxDamageResolveWorkdaysLeft: TLabel
      Left = 186
      Top = 84
      Width = 3
      Height = 13
      Caption = '-'
    end
    object lblDamageResolveDate: TLabel
      Left = 224
      Top = 64
      Width = 105
      Height = 13
      Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1054#1090#1095#1080#1090#1072#1085#1077
    end
    object cbDamagesNormalizedState: TJvDBComboBox
      Left = 8
      Top = 32
      Width = 113
      Height = 21
      DataField = 'DAMAGES_NORMALIZED_STATE'
      DataSource = dsData
      DropDownCount = 4
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1054#1074#1083#1072#1076#1077#1085#1080
        #1053#1077#1086#1074#1083#1072#1076#1077#1085#1080)
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
    end
    object pnlDamagesNormalizationConfirmation: TPanel
      Left = 128
      Top = 16
      Width = 129
      Height = 37
      BevelOuter = bvNone
      TabOrder = 1
      object lblDamagesNormalizationConfirmation: TLabel
        Left = 0
        Top = 0
        Width = 76
        Height = 13
        Caption = #1055#1086#1090#1074#1098#1088#1078#1076#1077#1085#1080#1077
      end
      object cbDamagesNormalizationConfirmation: TJvDBComboBox
        Left = 0
        Top = 16
        Width = 129
        Height = 21
        DataField = 'DAMAGES_CONFIRM_STATE'
        DataSource = dsData
        DropDownCount = 4
        Items.Strings = (
          '< '#1074#1089#1080#1095#1082#1080' >'
          #1057' '#1055#1086#1090#1074#1098#1088#1078#1077#1085#1080#1077
          #1041#1045#1047' '#1055#1086#1090#1074#1098#1088#1078#1076#1077#1085#1080#1077)
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
      end
    end
    inline frDamageResolvePlanInterval: TfrDateIntervalFrame
      Left = 8
      Top = 80
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 2
      TabStop = True
    end
    object edtMinDamageResolveWorkdaysLeft: TDBEdit
      Left = 160
      Top = 80
      Width = 25
      Height = 21
      DataField = 'MIN_DMG_RESOLVE_WORKDAYS_LEFT'
      DataSource = dsData
      TabOrder = 3
    end
    object edtMaxDamageResolveWorkdaysLeft: TDBEdit
      Left = 192
      Top = 80
      Width = 25
      Height = 21
      DataField = 'MAX_DMG_RESOLVE_WORKDAYS_LEFT'
      DataSource = dsData
      TabOrder = 4
    end
    inline frDamageResolveDateInterval: TfrDateIntervalFrame
      Left = 224
      Top = 80
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 5
      TabStop = True
    end
    object gbExceptEventDamageExistance: TGroupBox
      Left = 8
      Top = 112
      Width = 361
      Height = 185
      TabOrder = 7
      object gbExceptEventDamageProcess: TGroupBox
        Left = 8
        Top = 24
        Width = 345
        Height = 153
        TabOrder = 1
        DesignSize = (
          345
          153)
        object lblDamageDeliveryPartner: TLabel
          Left = 8
          Top = 64
          Width = 49
          Height = 13
          Caption = #1055#1072#1088#1090#1085#1100#1086#1088
        end
        inline frDamageDeliveryPartner: TfrPartnerFieldEditFrameBald
          Left = 8
          Top = 80
          Width = 329
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 3
          DesignSize = (
            329
            22)
          inherited gbPartner: TGroupBox
            Width = 344
            inherited pnlNameAndButtons: TPanel
              Width = 255
              inherited pnlRightButtons: TPanel
                Left = 219
              end
              inherited pnlPartnerName: TPanel
                Width = 219
                DesignSize = (
                  219
                  23)
                inherited edtPartnerName: TDBEdit
                  Width = 205
                end
                inherited cbPartner: TJvDBLookupCombo
                  Width = 220
                end
              end
            end
            inherited pnlPaddingRight: TPanel
              Left = 336
            end
          end
        end
        object pnlDelivery: TPanel
          Left = 8
          Top = 24
          Width = 329
          Height = 41
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 1
          object lblDeliveryDealType: TLabel
            Left = 0
            Top = 0
            Width = 19
            Height = 13
            Caption = #1058#1080#1087
            FocusControl = cbDeliveryDealType
          end
          object lblDeliveryDCDBranch: TLabel
            Left = 64
            Top = 0
            Width = 51
            Height = 13
            Caption = #1058#1055' '#1043#1083'.'
            FocusControl = edtDeliveryDCDBranch
          end
          object lblDeliveryDCDCode: TLabel
            Left = 128
            Top = 0
            Width = 43
            Height = 13
            Caption = #1055#1044#1044' No'
            FocusControl = edtDeliveryDCDCode
          end
          object lblDeliveryProjectCode: TLabel
            Left = 192
            Top = 0
            Width = 42
            Height = 13
            Caption = #1054#1055#1044' No'
            FocusControl = edtDeliveryProjectCode
          end
          object cbDeliveryDealType: TJvDBLookupCombo
            Left = 0
            Top = 16
            Width = 57
            Height = 21
            DropDownCount = 10
            DropDownWidth = 330
            DisplayAllFields = True
            DataField = 'DEL_DELIVERY_DEAL_TYPE_CODE'
            DataSource = dsData
            DisplayEmpty = '< '#1074#1089'. >'
            LookupField = 'BORDER_DEAL_TYPE_CODE'
            LookupDisplay = 'BORDER_DEAL_TYPE_ABBREV;BORDER_DEAL_TYPE_NAME'
            LookupSource = dsDeliveryDealTypes
            TabOrder = 0
          end
          object edtDeliveryDCDBranch: TJvDBLookupCombo
            Left = 64
            Top = 16
            Width = 57
            Height = 21
            DeleteKeyClear = False
            DataField = '_DEL_BRANCH_IDENTIFIER'
            DataSource = dsData
            DisplayEmpty = '< '#1074#1089'. >'
            TabOrder = 1
          end
          object edtDeliveryDCDCode: TDBEdit
            Left = 128
            Top = 16
            Width = 57
            Height = 21
            DataField = 'DEL_DCD_CODE'
            DataSource = dsData
            TabOrder = 2
          end
          object edtDeliveryProjectCode: TDBEdit
            Left = 192
            Top = 16
            Width = 57
            Height = 21
            DataField = 'DEL_DELIVERY_PROJECT_CODE'
            DataSource = dsData
            TabOrder = 3
          end
        end
        object pnlSaleShipment: TPanel
          Left = 8
          Top = 24
          Width = 329
          Height = 41
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 0
          object lblShipmentSaleDealType: TLabel
            Left = 0
            Top = 0
            Width = 19
            Height = 13
            Caption = #1058#1080#1087
            FocusControl = cbShipmentSaleDealType
          end
          object lblShipmentSaleBranchCode: TLabel
            Left = 64
            Top = 0
            Width = 51
            Height = 13
            Caption = #1058#1055' '#1043#1083'.'
            FocusControl = cbShipmentSaleBranchCode
          end
          object lblShipmentSaleNo: TLabel
            Left = 128
            Top = 0
            Width = 41
            Height = 13
            Caption = #1054#1055#1055' No'
            FocusControl = edtShipmentSaleNo
          end
          object lblShipmentSaleType: TLabel
            Left = 192
            Top = 0
            Width = 19
            Height = 13
            Caption = #1042#1080#1076
            FocusControl = cbShipmentSaleType
          end
          object lblShipmentSaleShipmentNo: TLabel
            Left = 256
            Top = 0
            Width = 48
            Height = 13
            Caption = #1056#1072#1079#1082#1083'. '#8470
            FocusControl = edtShipmentSaleShipmentNo
          end
          object cbShipmentSaleDealType: TJvDBLookupCombo
            Left = 0
            Top = 16
            Width = 57
            Height = 21
            DropDownCount = 20
            DropDownWidth = 240
            DisplayAllFields = True
            DataField = 'SHP_SALE_DEAL_TYPE_CODE'
            DataSource = dsData
            DisplayEmpty = '< '#1074#1089'. >'
            LookupField = 'SALE_DEAL_TYPE_CODE'
            LookupDisplay = 'SALE_DEAL_TYPE_ABBREV;SALE_DEAL_TYPE_NAME'
            LookupSource = dsSaleDealTypes
            TabOrder = 0
          end
          object cbShipmentSaleBranchCode: TJvDBLookupCombo
            Left = 64
            Top = 16
            Width = 57
            Height = 21
            DeleteKeyClear = False
            DataField = '_SHP_SALE_BRANCH_IDENTIFIER'
            DataSource = dsData
            DisplayEmpty = '< '#1074#1089'. >'
            TabOrder = 1
          end
          object edtShipmentSaleNo: TDBEdit
            Left = 128
            Top = 16
            Width = 57
            Height = 21
            DataField = 'SHP_SALE_NO'
            DataSource = dsData
            TabOrder = 2
          end
          object cbShipmentSaleType: TJvDBLookupCombo
            Left = 192
            Top = 16
            Width = 57
            Height = 21
            DataField = '_SHP_SALE_TYPE_ABBREV'
            DataSource = dsData
            DisplayEmpty = '< '#1074#1089'. >'
            TabOrder = 3
          end
          object edtShipmentSaleShipmentNo: TDBEdit
            Left = 256
            Top = 16
            Width = 57
            Height = 21
            DataField = 'SHP_SALE_SHIPMENT_NO'
            DataSource = dsData
            TabOrder = 4
          end
        end
        object pnlEEDamageProcessTypeProduct: TPanel
          Left = 8
          Top = 104
          Width = 330
          Height = 41
          BevelOuter = bvNone
          TabOrder = 4
          object lblEEDamageProcessTypeProduct: TLabel
            Left = 0
            Top = 0
            Width = 92
            Height = 13
            Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
          end
          inline frEEDamageProcessTypeProduct: TfrProductFieldEditFrameBald
            Left = 0
            Top = 15
            Width = 330
            Height = 22
            HorzScrollBar.Visible = False
            VertScrollBar.Visible = False
            Constraints.MaxHeight = 22
            Constraints.MinHeight = 22
            TabOrder = 0
            TabStop = True
            DesignSize = (
              330
              22)
            inherited gbTreeNode: TGroupBox
              Width = 346
              DesignSize = (
                346
                49)
              inherited pnlTreeNode: TPanel
                Width = 330
                inherited pnlTreeNodeName: TPanel
                  Width = 160
                  DesignSize = (
                    160
                    22)
                  inherited edtTreeNodeName: TDBEdit
                    Width = 159
                  end
                end
                inherited pnlTreeNodeNo: TPanel
                  Left = 160
                end
                inherited pnlRightButtons: TPanel
                  Left = 271
                end
              end
            end
          end
        end
        object pnlMaterialListLine: TPanel
          Left = 8
          Top = 24
          Width = 329
          Height = 81
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 2
          object lblMLLProductionOrderType: TLabel
            Left = 0
            Top = 0
            Width = 38
            Height = 13
            Caption = #1055#1088#1086#1094#1077#1089
            FocusControl = cbMLLOwnerProductionOrderType
          end
          object lblMLLProductionOrderBranch: TLabel
            Left = 64
            Top = 0
            Width = 51
            Height = 13
            Caption = #1058#1055' '#1043#1083'.'
            FocusControl = cbMLLProductionOrderBranch
          end
          object lblMLLProductionOrderNo: TLabel
            Left = 128
            Top = 0
            Width = 40
            Height = 13
            Caption = #1054#1055#1042' No'
            FocusControl = edtMLLProductionOrderNo
          end
          object lblMLLSaleTypeAbbrev: TLabel
            Left = 192
            Top = 0
            Width = 19
            Height = 13
            Caption = #1042#1080#1076
            FocusControl = cbMLLSaleTypeAbbrev
          end
          object cbMLLOwnerProductionOrderType: TJvDBLookupCombo
            Left = 0
            Top = 16
            Width = 57
            Height = 21
            DropDownCount = 20
            DropDownWidth = 240
            DisplayAllFields = True
            DataField = 'MLL_PRODUCTION_ORDER_TYPE_CODE'
            DataSource = dsData
            DisplayEmpty = '< '#1074#1089'. >'
            LookupField = 'PRODUCTION_ORDER_TYPE_CODE'
            LookupDisplay = 'PRODUCTION_ORDER_TYPE_ABBREV;PRODUCTION_ORDER_TYPE_NAME'
            LookupSource = dsProductionOrderTypes
            TabOrder = 0
          end
          object cbMLLProductionOrderBranch: TJvDBLookupCombo
            Left = 64
            Top = 16
            Width = 57
            Height = 21
            DeleteKeyClear = False
            DataField = '_MLL_SALE_BRANCH_IDENTIFIER'
            DataSource = dsData
            DisplayEmpty = '< '#1074#1089'. >'
            TabOrder = 1
          end
          object edtMLLProductionOrderNo: TDBEdit
            Left = 128
            Top = 16
            Width = 57
            Height = 21
            DataField = 'MLL_SALE_NO'
            DataSource = dsData
            TabOrder = 2
          end
          object cbMLLSaleTypeAbbrev: TJvDBLookupCombo
            Left = 192
            Top = 16
            Width = 57
            Height = 21
            DataField = '_MLL_SALE_TYPE_ABBREV'
            DataSource = dsData
            DisplayEmpty = '< '#1074#1089'. >'
            TabOrder = 3
          end
        end
      end
      object pnlExceptEventDamageProcessType: TPanel
        Left = 16
        Top = 22
        Width = 45
        Height = 17
        BevelOuter = bvNone
        Caption = #1055#1088#1086#1094#1077#1089
        TabOrder = 2
      end
      object cbExceptEventDamageProcessType: TJvDBLookupCombo
        Left = 60
        Top = 21
        Width = 89
        Height = 21
        DropDownCount = 5
        DataField = '_EE_DAMAGE_PROCESS_TYPE_NAME'
        DataSource = dsData
        DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
        TabOrder = 0
      end
    end
    object pnlFilterByDamageExistance: TPanel
      Left = 16
      Top = 110
      Width = 297
      Height = 17
      BevelOuter = bvNone
      TabOrder = 6
      object chbFilterByDamageExistance: TAbmesDBCheckBox
        Left = 4
        Top = 0
        Width = 293
        Height = 17
        Caption = ' '#1060#1080#1083#1090#1088#1080#1088#1072#1085#1077' '#1087#1086' '#1057#1098#1076#1098#1088#1078#1072#1085#1077' '#1085#1072' '#1042#1077#1088#1080#1078#1085#1086' '#1055#1086#1088#1072#1078#1077#1085#1080#1077
        DataField = 'IS_FILTERED_BY_DAMAGES'
        DataSource = dsData
        TabOrder = 0
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        ImmediateUpdateField = True
      end
    end
  end
  object gbExceptEventTasks: TGroupBox [4]
    Left = 392
    Top = 360
    Width = 377
    Height = 305
    Caption = ' '#1055#1088#1077#1091#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1044#1077#1081#1089#1090#1074#1080#1077#1090#1086' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' '
    TabOrder = 6
    object lblTasksResolvedState: TLabel
      Left = 8
      Top = 16
      Width = 90
      Height = 13
      Caption = #1055#1088#1077#1091#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077
    end
    object lblResolvePlanInterval: TLabel
      Left = 8
      Top = 64
      Width = 97
      Height = 13
      Caption = #1042#1088#1084#1048#1085#1090' '#1079#1072' '#1055#1088#1077#1091#1089#1090'.'
    end
    object lblResolveWorkdaysLeft: TLabel
      Left = 160
      Top = 64
      Width = 37
      Height = 13
      Caption = #1056#1077#1079#1077#1088#1074
    end
    object lblBetweenMinMaxResolveWorkdaysLeft: TLabel
      Left = 186
      Top = 84
      Width = 3
      Height = 13
      Caption = '-'
    end
    object lblResolveDate: TLabel
      Left = 224
      Top = 64
      Width = 105
      Height = 13
      Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1054#1090#1095#1080#1090#1072#1085#1077
    end
    object gbExceptEventTaskExistance: TGroupBox
      Left = 8
      Top = 112
      Width = 361
      Height = 185
      TabOrder = 7
      object lblBetweenExceptEventTaskState: TLabel
        Left = 70
        Top = 36
        Width = 3
        Height = 13
        Caption = '-'
      end
      object lblExceptEventTaskState: TLabel
        Left = 8
        Top = 16
        Width = 34
        Height = 13
        Caption = #1057#1090#1072#1090#1091#1089
      end
      object lblExceptEventTaskPlanDateInterval: TLabel
        Left = 144
        Top = 16
        Width = 122
        Height = 13
        Caption = #1042#1088#1084#1048#1085#1090' '#1079#1072' '#1044#1072#1090#1072' '#1060#1080#1085#1072#1083
      end
      object lblTaskWorkdaysLeft: TLabel
        Left = 296
        Top = 16
        Width = 37
        Height = 13
        Caption = #1056#1077#1079#1077#1088#1074
      end
      object lblBetweenMinMaxTaskWorkdaysLeft: TLabel
        Left = 322
        Top = 36
        Width = 3
        Height = 13
        Caption = '-'
      end
      object lblExceptEventTaskDept: TLabel
        Left = 8
        Top = 56
        Width = 153
        Height = 13
        Caption = #1058#1055' - '#1056#1077#1072#1083#1080#1079#1072#1090#1086#1088' '#1085#1072' '#1052#1077#1088#1082#1080
      end
      object lblExceptEventTaskEmployee: TLabel
        Left = 8
        Top = 96
        Width = 49
        Height = 13
        Caption = #1057#1083#1091#1078#1080#1090#1077#1083
      end
      object lblExceptEventTaskProblems: TLabel
        Left = 8
        Top = 136
        Width = 52
        Height = 13
        Caption = #1055#1088#1086#1073#1083#1077#1084#1080
      end
      object cbMinExceptEventTaskState: TDBComboBoxEh
        Left = 8
        Top = 32
        Width = 61
        Height = 21
        DataField = 'MIN_TASK_STATE_CODE'
        DataSource = dsData
        DropDownBox.Rows = 11
        DropDownBox.Width = 300
        EditButtons = <>
        TabOrder = 0
        Visible = True
      end
      object cbMaxExceptEventTaskState: TDBComboBoxEh
        Left = 75
        Top = 32
        Width = 62
        Height = 21
        DataField = 'MAX_TASK_STATE_CODE'
        DataSource = dsData
        DropDownBox.Rows = 11
        DropDownBox.Width = 300
        EditButtons = <>
        TabOrder = 1
        Visible = True
      end
      inline frExceptEventTaskPlanDateInterval: TfrDateIntervalFrame
        Left = 144
        Top = 32
        Width = 145
        Height = 21
        Constraints.MaxHeight = 21
        Constraints.MaxWidth = 145
        Constraints.MinHeight = 21
        Constraints.MinWidth = 145
        TabOrder = 2
        TabStop = True
      end
      object edtMaxTaskWorkdaysLeft: TDBEdit
        Left = 328
        Top = 32
        Width = 25
        Height = 21
        DataField = 'MAX_TASK_WORKDAYS_LEFT'
        DataSource = dsData
        TabOrder = 4
      end
      object edtMinTaskWorkdaysLeft: TDBEdit
        Left = 296
        Top = 32
        Width = 25
        Height = 21
        DataField = 'MIN_TASK_WORKDAYS_LEFT'
        DataSource = dsData
        TabOrder = 3
      end
      inline frExceptEventTaskDept: TfrDeptFieldEditFrameBald
        Left = 8
        Top = 72
        Width = 345
        Height = 22
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 22
        Constraints.MinHeight = 22
        TabOrder = 5
        TabStop = True
        DesignSize = (
          345
          22)
        inherited gbTreeNode: TGroupBox
          Width = 361
          DesignSize = (
            361
            49)
          inherited pnlTreeNode: TPanel
            Width = 345
            inherited pnlTreeNodeName: TPanel
              Width = 198
              DesignSize = (
                198
                22)
              inherited edtTreeNodeName: TDBEdit
                Width = 197
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = 198
            end
            inherited pnlRightButtons: TPanel
              Left = 309
            end
          end
        end
      end
      inline frExceptEventTaskEmployee: TfrEmployeeFieldEditFrameBald
        Left = 8
        Top = 112
        Width = 345
        Height = 22
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 22
        Constraints.MinHeight = 22
        TabOrder = 6
        TabStop = True
        DesignSize = (
          345
          22)
        inherited gbEmployee: TGroupBox
          Width = 364
          inherited pnlEmployeeName: TPanel
            Width = 289
            inherited pnlRightButtons: TPanel
              Left = 253
            end
            inherited pnlEmpoyeeNameInner: TPanel
              Width = 253
              DesignSize = (
                253
                32)
              inherited edtEmployeeName: TDBEdit
                Width = 207
              end
              inherited cbEmployee: TJvDBLookupCombo
                Width = 252
              end
            end
          end
          inherited pnlPaddingRight: TPanel
            Left = 354
          end
        end
      end
      object cbExceptEventTaskProblems: TJvDBComboBox
        Left = 8
        Top = 152
        Width = 345
        Height = 21
        DataField = 'EXCEPT_EVENT_TASK_HAS_PROBLEMS'
        DataSource = dsData
        DropDownCount = 4
        Items.Strings = (
          '< '#1074#1089#1080#1095#1082#1080' >'
          #1048#1084#1072' '#1055#1088#1086#1073#1083#1077#1084#1080
          #1053#1103#1084#1072' '#1055#1088#1086#1073#1083#1077#1084#1080)
        TabOrder = 7
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
    end
    object cbTasksResolvedState: TJvDBComboBox
      Left = 8
      Top = 32
      Width = 113
      Height = 21
      DataField = 'TASKS_RESOLVED_STATE'
      DataSource = dsData
      DropDownCount = 4
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1055#1088#1077#1091#1089#1090#1072#1085#1086#1074#1077#1085#1080
        #1053#1077#1087#1088#1077#1091#1089#1090#1072#1085#1086#1074#1077#1085#1080)
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
    end
    object pnlTasksResolveConfirmation: TPanel
      Left = 128
      Top = 16
      Width = 129
      Height = 37
      BevelOuter = bvNone
      TabOrder = 1
      object lblTasksResolveConfirmation: TLabel
        Left = 0
        Top = 0
        Width = 76
        Height = 13
        Caption = #1055#1086#1090#1074#1098#1088#1078#1076#1077#1085#1080#1077
      end
      object cbTasksResolveConfirmation: TJvDBComboBox
        Left = 0
        Top = 16
        Width = 129
        Height = 21
        DataField = 'TASKS_CONFIRM_STATE'
        DataSource = dsData
        DropDownCount = 4
        Items.Strings = (
          '< '#1074#1089#1080#1095#1082#1080' >'
          #1057' '#1055#1086#1090#1074#1098#1088#1078#1077#1085#1080#1077
          #1041#1045#1047' '#1055#1086#1090#1074#1098#1088#1078#1076#1077#1085#1080#1077)
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
      end
    end
    inline frResolvePlanInterval: TfrDateIntervalFrame
      Left = 8
      Top = 80
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 2
      TabStop = True
    end
    object edtMinResolveWorkdaysLeft: TDBEdit
      Left = 160
      Top = 80
      Width = 25
      Height = 21
      DataField = 'MIN_RESOLVE_WORKDAYS_LEFT'
      DataSource = dsData
      TabOrder = 3
    end
    object edtMaxResolveWorkdaysLeft: TDBEdit
      Left = 192
      Top = 80
      Width = 25
      Height = 21
      DataField = 'MAX_RESOLVE_WORKDAYS_LEFT'
      DataSource = dsData
      TabOrder = 4
    end
    inline frResolveDateInterval: TfrDateIntervalFrame
      Left = 224
      Top = 80
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 5
      TabStop = True
    end
    object pnlFilterByTaskExistance: TPanel
      Left = 16
      Top = 110
      Width = 273
      Height = 17
      BevelOuter = bvNone
      TabOrder = 6
      object chbFilterByTaskExistance: TAbmesDBCheckBox
        Left = 4
        Top = 0
        Width = 269
        Height = 17
        Caption = ' '#1060#1080#1083#1090#1088#1080#1088#1072#1085#1077' '#1087#1086' '#1057#1098#1076#1098#1088#1078#1072#1085#1077' '#1085#1072' '#1055#1072#1082#1077#1090' '#1086#1090' '#1052#1077#1088#1082#1080
        DataField = 'IS_FILTERED_BY_TASKS'
        DataSource = dsData
        TabOrder = 0
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        ImmediateUpdateField = True
      end
    end
  end
  object gbExceptEventGeneration: TGroupBox [5]
    Left = 608
    Top = 8
    Width = 401
    Height = 105
    Caption = ' '#1042#1098#1079#1085#1080#1082#1074#1072#1085#1077' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' '
    TabOrder = 2
    object lblExceptEventDept: TLabel
      Left = 8
      Top = 16
      Width = 113
      Height = 13
      Caption = #1058#1055' '#1085#1072' '#1042#1098#1079#1085#1080#1082#1074#1072#1085#1077
    end
    object lblProcessConcreteOperation: TLabel
      Left = 8
      Top = 56
      Width = 119
      Height = 13
      Caption = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1077#1085' '#1054#1087#1077#1088#1072#1085#1090
    end
    inline frExceptEventDept: TfrDeptFieldEditFrameBald
      Left = 8
      Top = 32
      Width = 385
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 0
      DesignSize = (
        385
        22)
      inherited gbTreeNode: TGroupBox
        Width = 401
        DesignSize = (
          401
          49)
        inherited pnlTreeNode: TPanel
          Width = 385
          inherited pnlTreeNodeName: TPanel
            Width = 238
            DesignSize = (
              238
              22)
            inherited edtTreeNodeName: TDBEdit
              Width = 237
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 238
          end
          inherited pnlRightButtons: TPanel
            Left = 349
          end
        end
      end
    end
    inline frProcessConcreteOperation: TfrProcessConcreteOperationFieldEditFrameBald
      Left = 8
      Top = 72
      Width = 385
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 49
      TabOrder = 1
      DesignSize = (
        385
        22)
      inherited gbTreeNode: TGroupBox
        Width = 401
        DesignSize = (
          401
          49)
        inherited pnlTreeNode: TPanel
          Width = 385
          inherited pnlTreeNodeName: TPanel
            Width = 238
            DesignSize = (
              238
              22)
            inherited edtTreeNodeName: TDBEdit
              Width = 237
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 238
          end
          inherited pnlRightButtons: TPanel
            Left = 349
          end
        end
      end
    end
  end
  object gbDetection: TGroupBox [6]
    Left = 392
    Top = 120
    Width = 617
    Height = 161
    Caption = ' '#1059#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' '
    TabOrder = 3
    object lblDetectDept: TLabel
      Left = 8
      Top = 16
      Width = 274
      Height = 13
      Caption = #1058#1055' '#1085#1072' '#1059#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
    end
    object lblDetectEmployee: TLabel
      Left = 356
      Top = 16
      Width = 55
      Height = 13
      Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1083
    end
    object gbSaleGenerator: TGroupBox
      Left = 8
      Top = 64
      Width = 601
      Height = 89
      TabOrder = 3
      object pnlSaleGenFilter: TPanel
        Left = 8
        Top = 24
        Width = 361
        Height = 41
        BevelOuter = bvNone
        TabOrder = 0
        object lblSaleGenRequestLineNo: TLabel
          Left = 152
          Top = 0
          Width = 24
          Height = 13
          Caption = #1054#1044#1050
        end
        object lblSaleGenRequestNo: TLabel
          Left = 64
          Top = 0
          Width = 41
          Height = 13
          Caption = #1055#1044#1050' No'
        end
        object lblSaleGenRequestBranch: TLabel
          Left = 0
          Top = 0
          Width = 51
          Height = 13
          Caption = #1058#1055' '#1043#1083'.'
        end
        object edtSaleGenRequestLineNo: TDBEdit
          Left = 152
          Top = 16
          Width = 33
          Height = 21
          DataField = 'S_REQUEST_LINE_NO'
          DataSource = dsData
          TabOrder = 2
        end
        object edtSaleGenRequestNo: TDBEdit
          Left = 64
          Top = 16
          Width = 81
          Height = 21
          DataField = 'S_REQUEST_NO'
          DataSource = dsData
          TabOrder = 1
        end
        object cbSaleGenRequestBranch: TJvDBLookupCombo
          Left = 0
          Top = 16
          Width = 57
          Height = 21
          DeleteKeyClear = False
          DataField = '_S_REQUEST_BRANCH_IDENTIFIER'
          DataSource = dsData
          DisplayEmpty = '< '#1074#1089'. >'
          TabOrder = 0
        end
      end
    end
    object gbDeliveryGenerator: TGroupBox
      Left = 8
      Top = 64
      Width = 601
      Height = 89
      TabOrder = 4
      object pnlDeliveryGenFilter: TPanel
        Left = 8
        Top = 24
        Width = 209
        Height = 41
        BevelOuter = bvNone
        TabOrder = 0
        object lblDeliveryGenDeliveryProjectCode: TLabel
          Left = 168
          Top = 0
          Width = 26
          Height = 13
          Caption = #1054#1044#1044
        end
        object lblDeliveryGenDCDCode: TLabel
          Left = 72
          Top = 0
          Width = 43
          Height = 13
          Caption = #1055#1044#1044' No'
        end
        object lblDeliveryGenDCDBranch: TLabel
          Left = 0
          Top = 0
          Width = 51
          Height = 13
          Caption = #1058#1055' '#1043#1083'.'
        end
        object edtDeliveryGenDeliveryProjectCode: TDBEdit
          Left = 168
          Top = 16
          Width = 33
          Height = 21
          DataField = 'D_DELIVERY_PROJECT_CODE'
          DataSource = dsData
          TabOrder = 2
        end
        object edtDeliveryGenDCDCode: TDBEdit
          Left = 72
          Top = 16
          Width = 81
          Height = 21
          DataField = 'D_DCD_CODE'
          DataSource = dsData
          TabOrder = 1
        end
        object cbDeliveryGenDCDBranch: TJvDBLookupCombo
          Left = 0
          Top = 16
          Width = 57
          Height = 21
          DeleteKeyClear = False
          DataField = '_D_DCD_BRANCH_IDENTIFIER'
          DataSource = dsData
          DisplayEmpty = '< '#1074#1089'. >'
          TabOrder = 0
        end
      end
    end
    object gbOMGenerator: TGroupBox
      Left = 8
      Top = 64
      Width = 601
      Height = 89
      TabOrder = 5
      object pnlOMGenFilter: TPanel
        Left = 8
        Top = 16
        Width = 585
        Height = 65
        BevelOuter = bvNone
        TabOrder = 0
        object gbOMGenProductionOrder: TGroupBox
          Left = 0
          Top = 0
          Width = 393
          Height = 65
          Caption = ' '#1054#1055#1042' '
          TabOrder = 0
          object lblOMGenProductionOrderPriority: TLabel
            Left = 288
            Top = 16
            Width = 80
            Height = 13
            Caption = #1054#1089#1085'. '#1055#1088#1080#1086#1088#1080#1090#1077#1090
            FocusControl = edtOMGenProductionOrderNo
          end
          object lblOMGenSaleTypeAbbrev: TLabel
            Left = 216
            Top = 16
            Width = 19
            Height = 13
            Caption = #1042#1080#1076
            FocusControl = cbOMGenSaleTypeAbbrev
          end
          object lblOMGenProductionOrderNo: TLabel
            Left = 152
            Top = 16
            Width = 14
            Height = 13
            Caption = 'No'
            FocusControl = edtOMGenProductionOrderNo
          end
          object lblOMGenProductionOrderBranch: TLabel
            Left = 80
            Top = 16
            Width = 51
            Height = 13
            Caption = #1058#1055' '#1043#1083'.'
            FocusControl = cbOMGenProductionOrderBranch
          end
          object lblOMGenProductionOrderType: TLabel
            Left = 8
            Top = 16
            Width = 38
            Height = 13
            Caption = #1055#1088#1086#1094#1077#1089
            FocusControl = cbOMGenProductionOrderType
          end
          inline frOMGenPriorityInterval: TfrPriorityIntervalEditFrame
            Left = 288
            Top = 32
            Width = 97
            Height = 21
            Constraints.MaxHeight = 21
            Constraints.MaxWidth = 97
            Constraints.MinHeight = 21
            Constraints.MinWidth = 97
            TabOrder = 4
            TabStop = True
            inherited lblDash: TLabel
              Width = 6
            end
          end
          object cbOMGenSaleTypeAbbrev: TJvDBLookupCombo
            Left = 216
            Top = 32
            Width = 57
            Height = 21
            DataField = '_OMG_SALE_TYPE_ABBREV'
            DataSource = dsData
            DisplayEmpty = '< '#1074#1089'. >'
            TabOrder = 3
          end
          object edtOMGenProductionOrderNo: TDBEdit
            Left = 152
            Top = 32
            Width = 49
            Height = 21
            DataField = 'OMG_SALE_NO'
            DataSource = dsData
            TabOrder = 2
          end
          object cbOMGenProductionOrderBranch: TJvDBLookupCombo
            Left = 80
            Top = 32
            Width = 57
            Height = 21
            DeleteKeyClear = False
            DataField = '_OMG_SALE_BRANCH_IDENTIFIER'
            DataSource = dsData
            DisplayEmpty = '< '#1074#1089'. >'
            TabOrder = 1
          end
          object cbOMGenProductionOrderType: TJvDBLookupCombo
            Left = 8
            Top = 32
            Width = 57
            Height = 21
            DropDownCount = 20
            DropDownWidth = 240
            DisplayAllFields = True
            DataField = 'OMG_PRODUCTION_ORDER_TYPE_CODE'
            DataSource = dsData
            DisplayEmpty = '< '#1074#1089'. >'
            LookupField = 'PRODUCTION_ORDER_TYPE_CODE'
            LookupDisplay = 'PRODUCTION_ORDER_TYPE_ABBREV;PRODUCTION_ORDER_TYPE_NAME'
            LookupSource = dsProductionOrderTypes
            TabOrder = 0
          end
        end
        object gbOMGenMovementIdentification: TGroupBox
          Left = 400
          Top = 0
          Width = 169
          Height = 65
          Caption = ' ID '#1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086' '#1044#1074#1080#1078#1077#1085#1080#1077' '
          TabOrder = 1
          object lblOMGenOperationMovementBranch: TLabel
            Left = 8
            Top = 16
            Width = 51
            Height = 13
            Caption = #1058#1055' '#1043#1083'.'
            FocusControl = cbOMGenOperationMovementBranch
          end
          object lblOMGenOperationMovementNo: TLabel
            Left = 80
            Top = 16
            Width = 14
            Height = 13
            Caption = 'No'
            FocusControl = edtOMGenOperationMovementNo
          end
          object cbOMGenOperationMovementBranch: TJvDBLookupCombo
            Left = 8
            Top = 32
            Width = 57
            Height = 21
            DeleteKeyClear = False
            DataField = '_OMG_OM_BRANCH_IDENTIFIER'
            DataSource = dsData
            DisplayEmpty = '< '#1074#1089'. >'
            TabOrder = 0
          end
          object edtOMGenOperationMovementNo: TDBEdit
            Left = 80
            Top = 32
            Width = 81
            Height = 21
            DataField = 'OMG_OM_NO'
            DataSource = dsData
            TabOrder = 1
          end
        end
      end
    end
    inline frDetectDept: TfrDeptFieldEditFrameBald
      Left = 8
      Top = 32
      Width = 337
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 0
      TabStop = True
      DesignSize = (
        337
        22)
      inherited gbTreeNode: TGroupBox
        Width = 353
        DesignSize = (
          353
          49)
        inherited pnlTreeNode: TPanel
          Width = 337
          inherited pnlTreeNodeName: TPanel
            Width = 190
            DesignSize = (
              190
              22)
            inherited edtTreeNodeName: TDBEdit
              Width = 189
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 190
          end
          inherited pnlRightButtons: TPanel
            Left = 301
          end
        end
      end
    end
    object pnlDeliveryGeneratorGroupBoxLabel: TPanel
      Left = 16
      Top = 64
      Width = 89
      Height = 13
      BevelOuter = bvNone
      TabOrder = 6
      object lblDeliveryGeneratorGroupBoxLabel: TLabel
        Left = 0
        Top = 0
        Width = 29
        Height = 13
        Caption = ' '#1054#1044#1044
      end
    end
    object pnlSaleGeneratorGroupBoxLabel: TPanel
      Left = 16
      Top = 64
      Width = 89
      Height = 13
      BevelOuter = bvNone
      TabOrder = 7
      object lblSaleGeneratorGroupBoxLabel: TLabel
        Left = 0
        Top = 0
        Width = 27
        Height = 13
        Caption = ' '#1054#1044#1050
      end
    end
    object pnlOMGeneratorGroupBoxLabel: TPanel
      Left = 16
      Top = 64
      Width = 89
      Height = 13
      BevelOuter = bvNone
      TabOrder = 8
      object lblOMGeneratorGroupBoxLabel: TLabel
        Left = 0
        Top = 0
        Width = 56
        Height = 13
        Caption = ' '#1044#1074#1080#1078#1077#1085#1080#1077
      end
    end
    object cbGenerator: TJvDBComboBox
      Left = 80
      Top = 60
      Width = 95
      Height = 21
      DataField = 'HAS_GENERATOR'
      DataSource = dsData
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1053#1103#1084#1072
        #1048#1084#1072)
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
    inline frDetectEmployee: TfrEmployeeFieldEditFrameBald
      Left = 356
      Top = 32
      Width = 253
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 1
      inherited gbEmployee: TGroupBox
        Width = 272
        inherited pnlEmployeeName: TPanel
          Width = 197
          inherited pnlRightButtons: TPanel
            Left = 161
          end
          inherited pnlEmpoyeeNameInner: TPanel
            Width = 161
            inherited edtEmployeeName: TDBEdit
              Width = 115
            end
            inherited cbEmployee: TJvDBLookupCombo
              Width = 160
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 262
        end
      end
    end
  end
  object gbExceptEventControl: TGroupBox [7]
    Left = 392
    Top = 288
    Width = 617
    Height = 65
    Caption = ' '#1055#1088#1077#1086#1076#1086#1083#1103#1074#1072#1085#1077' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' '
    TabOrder = 4
    object lblCtrlDept: TLabel
      Left = 8
      Top = 16
      Width = 125
      Height = 13
      Caption = #1058#1055' '#1079#1072' '#1055#1088#1077#1086#1076#1086#1083#1103#1074#1072#1085#1077
    end
    object lblCtrlMainEmployee: TLabel
      Left = 288
      Top = 16
      Width = 99
      Height = 13
      Caption = #1043#1083#1072#1074#1077#1085' '#1054#1090#1075#1086#1074#1086#1088#1085#1080#1082
    end
    object lblIsSingleResolvable: TLabel
      Left = 528
      Top = 16
      Width = 33
      Height = 13
      Caption = #1055#1041#1055'-'#1045
    end
    inline frCtrlDept: TfrDeptFieldEditFrameBald
      Left = 8
      Top = 32
      Width = 273
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 0
      TabStop = True
      DesignSize = (
        273
        22)
      inherited gbTreeNode: TGroupBox
        Width = 289
        DesignSize = (
          289
          49)
        inherited pnlTreeNode: TPanel
          Width = 273
          inherited pnlTreeNodeName: TPanel
            Width = 126
            DesignSize = (
              126
              22)
            inherited edtTreeNodeName: TDBEdit
              Width = 125
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 126
          end
          inherited pnlRightButtons: TPanel
            Left = 237
          end
        end
      end
    end
    inline frCtrlMainEmployee: TfrEmployeeFieldEditFrameBald
      Left = 288
      Top = 32
      Width = 233
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 1
      TabStop = True
      DesignSize = (
        233
        22)
      inherited gbEmployee: TGroupBox
        Width = 252
        inherited pnlEmployeeName: TPanel
          Width = 177
          inherited pnlRightButtons: TPanel
            Left = 141
          end
          inherited pnlEmpoyeeNameInner: TPanel
            Width = 141
            DesignSize = (
              141
              32)
            inherited edtEmployeeName: TDBEdit
              Width = 95
            end
            inherited cbEmployee: TJvDBLookupCombo
              Width = 140
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 242
        end
      end
    end
    object cbIsSingleResolvable: TDBComboBoxEh
      Left = 528
      Top = 32
      Width = 81
      Height = 21
      DataField = 'SINGLE_RESOLVABLE'
      DataSource = dsData
      DynProps = <>
      DropDownBox.Rows = 4
      DropDownBox.Width = 370
      EditButtons = <>
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1057' '#1055#1041#1055'-'#1045'     - '#1057' '#1045#1076#1080#1085#1080#1095#1085#1086' '#1055#1088#1077#1076#1086#1090#1074#1088#1072#1090#1103#1074#1072#1085#1077' '#1085#1072' '#1041#1098#1076#1077#1097#1072' '#1055#1086#1103#1074#1072
        #1041#1077#1079' '#1055#1041#1055'-'#1045' - '#1041#1077#1079' '#1045#1076#1080#1085#1080#1095#1085#1086' '#1055#1088#1077#1076#1086#1090#1074#1088#1072#1090#1103#1074#1072#1085#1077' '#1085#1072' '#1041#1098#1076#1077#1097#1072' '#1055#1086#1103#1074#1072)
      KeyItems.Strings = (
        '1'
        '2'
        '3')
      TabOrder = 2
      Visible = True
    end
  end
  object gbExceptEventPosition: TGroupBox [8]
    Left = 776
    Top = 480
    Width = 233
    Height = 185
    Caption = ' '#1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' '
    TabOrder = 8
    object lblCausedExceptEventNo: TLabel
      Left = 155
      Top = 48
      Width = 14
      Height = 13
      Caption = 'No'
      FocusControl = edtCausedExceptEventNo
    end
    object lblCausedExceptEvent: TLabel
      Left = 104
      Top = 68
      Width = 45
      Height = 13
      Caption = #1079#1072' ID '#1053#1054
    end
    object lblCauseExceptEventNo: TLabel
      Left = 155
      Top = 112
      Width = 14
      Height = 13
      Caption = 'No'
      FocusControl = edtCauseExceptEventNo
    end
    object lblCauseExceptEvent: TLabel
      Left = 104
      Top = 132
      Width = 44
      Height = 13
      Caption = #1086#1090' ID '#1053#1054
    end
    object lblExceptEventIsCause: TLabel
      Left = 16
      Top = 48
      Width = 53
      Height = 13
      Caption = #1045' '#1055#1088#1080#1095#1080#1085#1072
    end
    object lblExceptEventIsCaused: TLabel
      Left = 16
      Top = 112
      Width = 64
      Height = 13
      Caption = #1045' '#1057#1083#1077#1076#1089#1090#1074#1080#1077
    end
    object edtCausedExceptEventNo: TDBEdit
      Left = 154
      Top = 64
      Width = 63
      Height = 21
      DataField = 'CAUSED_EXCEPT_EVENT_NO'
      DataSource = dsData
      TabOrder = 1
    end
    object edtCauseExceptEventNo: TDBEdit
      Left = 154
      Top = 128
      Width = 63
      Height = 21
      DataField = 'CAUSE_EXCEPT_EVENT_NO'
      DataSource = dsData
      TabOrder = 3
    end
    object cbExceptEventIsCause: TJvDBComboBox
      Left = 16
      Top = 64
      Width = 81
      Height = 21
      DataField = 'EXCEPT_EVENT_IS_CAUSE'
      DataSource = dsData
      DropDownCount = 4
      ItemHeight = 13
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1044#1072
        #1053#1077)
      TabOrder = 0
      Values.Strings = (
        '1'
        '2'
        '3')
    end
    object cbExceptEventIsCaused: TJvDBComboBox
      Left = 16
      Top = 128
      Width = 81
      Height = 21
      DataField = 'EXCEPT_EVENT_IS_CAUSED'
      DataSource = dsData
      DropDownCount = 4
      ItemHeight = 13
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1044#1072
        #1053#1077)
      TabOrder = 2
      Values.Strings = (
        '1'
        '2'
        '3')
    end
  end
  object gbOrgTaskProposal: TGroupBox [9]
    Left = 776
    Top = 360
    Width = 233
    Height = 113
    Caption = ' '#1055#1088#1077#1076#1086#1090#1074#1088#1072#1090#1103#1074#1072#1085#1077' '#1085#1072' '#1041#1098#1076#1077#1097#1072' '#1055#1086#1103#1074#1072' '
    TabOrder = 7
    object lblOrgTaskProposalNo: TLabel
      Left = 8
      Top = 16
      Width = 51
      Height = 13
      Caption = 'ID '#1055#1088#1086#1077#1082#1090
    end
    object lblOTPCreateDate: TLabel
      Left = 6
      Top = 64
      Width = 123
      Height = 13
      Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103
    end
    object edtOrgTaskProposalNo: TDBEdit
      Left = 8
      Top = 32
      Width = 145
      Height = 21
      DataField = 'ORG_TASK_PROPOSAL_NO'
      DataSource = dsData
      TabOrder = 0
    end
    inline frOTPCreateDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 80
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
  inherited alActions: TActionList [10]
    inherited actForm: TAction
      Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103
    end
  end
  inherited dsData: TDataSource [11]
  end
  inherited cdsData: TAbmesClientDataSet [12]
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [13]
    Left = 16
    Top = 672
  end
  inherited dsFilterVariants: TDataSource [14]
    Left = 40
    Top = 672
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 64
    Top = 688
  end
  object cdsProductionOrderTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Filtered = True
    Params = <>
    ProviderName = 'prvProductionOrderTypes'
    Left = 128
    Top = 512
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
    Left = 160
    Top = 512
  end
  object cdsSaleDealTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Params = <>
    ProviderName = 'prvSaleDealTypes'
    Left = 200
    Top = 512
    object cdsSaleDealTypesSALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object cdsSaleDealTypesSALE_DEAL_TYPE_NAME: TAbmesWideStringField
      FieldName = 'SALE_DEAL_TYPE_NAME'
      Size = 100
    end
    object cdsSaleDealTypesSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_DEAL_TYPE_ABBREV'
      Size = 100
    end
  end
  object dsSaleDealTypes: TDataSource
    DataSet = cdsSaleDealTypes
    Left = 232
    Top = 512
  end
  object cdsDeliveryDealTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDeliveries
    Params = <>
    ProviderName = 'prvDeliveryDealTypes'
    Left = 272
    Top = 512
    object cdsDeliveryDealTypesBORDER_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_DEAL_TYPE_CODE'
    end
    object cdsDeliveryDealTypesBORDER_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BORDER_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object cdsDeliveryDealTypesBORDER_DEAL_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BORDER_DEAL_TYPE_NAME'
      Size = 100
    end
    object cdsDeliveryDealTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_CODE'
    end
    object cdsDeliveryDealTypesOBTAINMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OBTAINMENT_TYPE_CODE'
    end
  end
  object dsDeliveryDealTypes: TDataSource
    DataSet = cdsDeliveryDealTypes
    Left = 304
    Top = 512
  end
end
