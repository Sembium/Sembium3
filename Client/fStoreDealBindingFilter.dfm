inherited frStoreDealBindingFilter: TfrStoreDealBindingFilter
  Width = 777
  Height = 81
  Font.Name = 'Microsoft Sans Serif'
  ParentFont = False
  object pnlTopSpace: TPanel [0]
    Left = 0
    Top = 0
    Width = 777
    Height = 8
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
  end
  object gbBndProcess: TGroupBox [1]
    Left = 0
    Top = 8
    Width = 777
    Height = 73
    Align = alClient
    Caption = ' '#1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090'    '
    TabOrder = 2
    object pnlBndProcess: TPanel
      Left = 2
      Top = 15
      Width = 773
      Height = 56
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object pnlMaterialListLine: TPanel
        Left = 0
        Top = 96
        Width = 773
        Height = 48
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        Visible = False
        object lblSaleBranchOnMaterialListLinePanel: TLabel
          Left = 72
          Top = 8
          Width = 51
          Height = 13
          Caption = #1058#1055' '#1043#1083'.'
          FocusControl = cbSaleBranchOnMaterialListLinePanel
        end
        object lblSaleNoOnMaterialListLinePanel: TLabel
          Left = 136
          Top = 8
          Width = 40
          Height = 13
          Caption = #1054#1055#1042' No'
          FocusControl = edtSaleNoOnMaterialListLinePanel
        end
        object lblNoAsTextOnMaterialListLinePanel: TLabel
          Left = 368
          Top = 8
          Width = 85
          Height = 13
          Caption = #1056#1077#1076' '#1086#1090' '#1056'-'#1052#1054#1044#1045#1083
          FocusControl = edtNoAsTextOnMaterialListLinePanel
        end
        object lblForkNoOnMaterialListLinePanel: TLabel
          Left = 464
          Top = 8
          Width = 13
          Height = 13
          Caption = #1056#1082
          FocusControl = edtForkNoOnMaterialListLinePanel
        end
        object lblSaleTypeOnMaterialListLinePanel: TLabel
          Left = 200
          Top = 8
          Width = 19
          Height = 13
          Caption = #1042#1080#1076
          FocusControl = cbSaleTypeOnMaterialListLinePanel
        end
        object lblProductionOrderTypeOnMaterialListLinePanel: TLabel
          Left = 8
          Top = 8
          Width = 38
          Height = 13
          Caption = #1055#1088#1086#1094#1077#1089
          FocusControl = cbProductionOrderTypeOnMaterialListLinePanel
        end
        object lblIsWasteCompensatorStatusOnMaterialListLinePanel: TLabel
          Left = 264
          Top = 8
          Width = 85
          Height = 13
          Caption = #1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1054#1055#1042
          FocusControl = cbIsWasteCompensatorStatusOnMaterialListLinePanel
        end
        object lblIsWasteForkStatusOnMaterialListLinePanel: TLabel
          Left = 488
          Top = 8
          Width = 35
          Height = 13
          Caption = #1042#1080#1076' '#1056#1082
          FocusControl = cbIsWasteForkStatusOnMaterialListLinePanel
        end
        object lblProjectProductOnMaterialListLinePanel: TLabel
          Left = 560
          Top = 8
          Width = 62
          Height = 13
          Caption = #1059#1054#1073' '#1055#1088#1086#1077#1082#1090
        end
        object cbSaleBranchOnMaterialListLinePanel: TJvDBLookupCombo
          Left = 72
          Top = 24
          Width = 57
          Height = 21
          DropDownWidth = 250
          DataField = 'SALE_BRANCH_CODE'
          DataSource = dsBinding
          DisplayEmpty = '< '#1074#1089'. >'
          LookupField = 'BRANCH_CODE'
          LookupDisplay = 'BRANCH_IDENTIFIER'
          LookupSource = dsBranches
          TabOrder = 1
        end
        object edtSaleNoOnMaterialListLinePanel: TDBEdit
          Left = 136
          Top = 24
          Width = 57
          Height = 21
          DataField = 'SALE_NO'
          DataSource = dsBinding
          TabOrder = 2
        end
        object edtNoAsTextOnMaterialListLinePanel: TDBEdit
          Left = 368
          Top = 24
          Width = 97
          Height = 21
          DataField = 'NO_AS_TEXT'
          DataSource = dsBinding
          TabOrder = 5
        end
        object edtForkNoOnMaterialListLinePanel: TDBEdit
          Left = 464
          Top = 24
          Width = 25
          Height = 21
          DataField = 'FORK_NO'
          DataSource = dsBinding
          TabOrder = 6
        end
        object cbSaleTypeOnMaterialListLinePanel: TJvDBLookupCombo
          Left = 200
          Top = 24
          Width = 57
          Height = 21
          DataField = 'SALE_TYPE_CODE'
          DataSource = dsBinding
          DisplayEmpty = '< '#1074#1089'. >'
          LookupField = 'SALE_TYPE_CODE'
          LookupDisplay = 'SALE_TYPE_ABBREV'
          LookupSource = dsSaleTypes
          TabOrder = 3
        end
        object cbProductionOrderTypeOnMaterialListLinePanel: TJvDBLookupCombo
          Left = 8
          Top = 24
          Width = 57
          Height = 21
          DropDownCount = 19
          DropDownWidth = 220
          DeleteKeyClear = False
          DisplayAllFields = True
          DataField = 'PRODUCTION_ORDER_TYPE_CODE'
          DataSource = dsBinding
          DisplayEmpty = '< '#1074#1089'. >'
          LookupField = 'PRODUCTION_ORDER_TYPE_CODE'
          LookupDisplay = 'PRODUCTION_ORDER_TYPE_ABBREV;PRODUCTION_ORDER_TYPE_NAME'
          LookupSource = dsProductionOrderTypes
          TabOrder = 0
        end
        object cbIsWasteCompensatorStatusOnMaterialListLinePanel: TJvDBComboBox
          Left = 264
          Top = 24
          Width = 89
          Height = 21
          DataField = 'IS_WASTE_COMPENSATOR_STATUS'
          DataSource = dsBinding
          ItemHeight = 13
          Items.Strings = (
            '< '#1074#1089#1080#1095#1082#1080' >'
            #1054#1089#1085#1086#1074#1077#1085' ('#1054')'
            #1057#1098#1087#1098#1090#1089#1090#1074#1072#1097' ('#1057')')
          TabOrder = 4
          Values.Strings = (
            ''
            '2'
            '3')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object cbIsWasteForkStatusOnMaterialListLinePanel: TJvDBComboBox
          Left = 488
          Top = 24
          Width = 57
          Height = 21
          DataField = 'IS_WASTE_FORK_STATUS'
          DataSource = dsBinding
          ItemHeight = 13
          Items.Strings = (
            '< '#1074#1089'. >'
            #1053#1086#1088#1084#1072#1083#1085#1086
            #1041#1083#1086#1082)
          TabOrder = 7
          Values.Strings = (
            ''
            '2'
            '3')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
          ListSettings.OutfilteredValueFont.Style = []
        end
        inline frProjectProductOnMaterialListLinePanel: TfrProductFieldEditFrameBald
          Left = 560
          Top = 24
          Width = 209
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 8
          inherited gbTreeNode: TGroupBox
            Width = 225
            inherited pnlTreeNode: TPanel
              Width = 209
              inherited pnlTreeNodeName: TPanel
                Width = 39
                inherited edtTreeNodeName: TDBEdit
                  Width = 38
                end
              end
              inherited pnlTreeNodeNo: TPanel
                Left = 39
              end
              inherited pnlRightButtons: TPanel
                Left = 150
              end
            end
          end
        end
      end
      object pnlSaleShipment: TPanel
        Left = 0
        Top = 0
        Width = 773
        Height = 48
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        Visible = False
        object lblSaleBranchOnSaleShipmentPanel: TLabel
          Left = 72
          Top = 8
          Width = 51
          Height = 13
          Caption = #1058#1055' '#1043#1083'.'
          FocusControl = cbSaleBranchOnSaleShipmentPanel
        end
        object lblSaleNoOnSaleShipmentPanel: TLabel
          Left = 136
          Top = 8
          Width = 41
          Height = 13
          Caption = #1054#1055#1055' No'
          FocusControl = edtSaleNoOnSaleShipmentPanel
        end
        object lblSaleShipmentNoOnSaleShipmentPanel: TLabel
          Left = 264
          Top = 8
          Width = 13
          Height = 13
          Caption = #1056#1082
          FocusControl = edtSaleShipmentNoOnSaleShipmentPanel
        end
        object lblSaleTypeOnSaleShipmentPanel: TLabel
          Left = 200
          Top = 8
          Width = 19
          Height = 13
          Caption = #1042#1080#1076
          FocusControl = cbSaleTypeOnSaleShipmentPanel
        end
        object lblSaleDealTypeOnSaleShipmentPanel: TLabel
          Left = 8
          Top = 8
          Width = 19
          Height = 13
          Caption = #1058#1080#1087
          FocusControl = cbSaleDealTypeOnSaleShipmentPanel
        end
        object lblClientOnSaleShipmentPanel: TLabel
          Left = 304
          Top = 8
          Width = 36
          Height = 13
          Caption = #1050#1083#1080#1077#1085#1090
          FocusControl = frClientOnSaleShipmentPanel
        end
        object edtSaleNoOnSaleShipmentPanel: TDBEdit
          Left = 136
          Top = 24
          Width = 57
          Height = 21
          DataField = 'SALE_NO'
          DataSource = dsBinding
          TabOrder = 2
        end
        object cbSaleBranchOnSaleShipmentPanel: TJvDBLookupCombo
          Left = 72
          Top = 24
          Width = 57
          Height = 21
          DropDownWidth = 250
          DataField = 'SALE_BRANCH_CODE'
          DataSource = dsBinding
          DisplayEmpty = '< '#1074#1089'. >'
          LookupField = 'BRANCH_CODE'
          LookupDisplay = 'BRANCH_IDENTIFIER'
          LookupSource = dsBranches
          TabOrder = 1
        end
        object edtSaleShipmentNoOnSaleShipmentPanel: TDBEdit
          Left = 264
          Top = 24
          Width = 25
          Height = 21
          DataField = 'SALE_SHIPMENT_NO'
          DataSource = dsBinding
          TabOrder = 4
        end
        object cbSaleTypeOnSaleShipmentPanel: TJvDBLookupCombo
          Left = 200
          Top = 24
          Width = 57
          Height = 21
          DataField = 'SALE_TYPE_CODE'
          DataSource = dsBinding
          DisplayEmpty = '< '#1074#1089'. >'
          LookupField = 'SALE_TYPE_CODE'
          LookupDisplay = 'SALE_TYPE_ABBREV'
          LookupSource = dsSaleTypes
          TabOrder = 3
        end
        object cbSaleDealTypeOnSaleShipmentPanel: TJvDBLookupCombo
          Left = 8
          Top = 24
          Width = 57
          Height = 21
          DropDownWidth = 220
          DeleteKeyClear = False
          DisplayAllFields = True
          DataField = 'SALE_DEAL_TYPE_CODE'
          DataSource = dsBinding
          DisplayEmpty = '< '#1074#1089'. >'
          LookupField = 'SALE_DEAL_TYPE_CODE'
          LookupDisplay = 'SALE_DEAL_TYPE_ABBREV'
          LookupSource = dsSaleDealTypes
          TabOrder = 0
        end
        inline frClientOnSaleShipmentPanel: TfrPartnerFieldEditFrameBald
          Left = 304
          Top = 24
          Width = 217
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 5
          TabStop = True
          inherited gbPartner: TGroupBox
            Width = 232
            inherited pnlNameAndButtons: TPanel
              Width = 143
              inherited pnlRightButtons: TPanel
                Left = 107
              end
              inherited pnlPartnerName: TPanel
                Width = 107
                inherited edtPartnerName: TDBEdit
                  Width = 93
                end
                inherited cbPartner: TJvDBLookupCombo
                  Width = 108
                end
              end
            end
            inherited pnlPaddingRight: TPanel
              Left = 224
            end
          end
        end
      end
      object pnlProductionOrder: TPanel
        Left = 0
        Top = 48
        Width = 773
        Height = 48
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        Visible = False
        object lblSaleBranchOnProductionOrderPanel: TLabel
          Left = 72
          Top = 8
          Width = 51
          Height = 13
          Caption = #1058#1055' '#1043#1083'.'
          FocusControl = cbSaleBranchOnProductionOrderPanel
        end
        object lblSaleNoOnProductionOrderPanel: TLabel
          Left = 136
          Top = 8
          Width = 40
          Height = 13
          Caption = #1054#1055#1042' No'
          FocusControl = edtSaleNoOnProductionOrderPanel
        end
        object lblSaleTypeOnProductionOrderPanel: TLabel
          Left = 200
          Top = 8
          Width = 19
          Height = 13
          Caption = #1042#1080#1076
          FocusControl = cbSaleTypeOnProductionOrderPanel
        end
        object lblProductionOrderTypeOnProductionOrderPanel: TLabel
          Left = 8
          Top = 8
          Width = 38
          Height = 13
          Caption = #1055#1088#1086#1094#1077#1089
          FocusControl = cbProductionOrderTypeOnProductionOrderPanel
        end
        object lblIsWasteCompensatorStatusOnProductionOrderPanel: TLabel
          Left = 264
          Top = 8
          Width = 85
          Height = 13
          Caption = #1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1054#1055#1042
          FocusControl = cbIsWasteCompensatorStatusOnProductionOrderPanel
        end
        object lblProjectProductOnProductionOrderPanel: TLabel
          Left = 368
          Top = 8
          Width = 62
          Height = 13
          Caption = #1059#1054#1073' '#1055#1088#1086#1077#1082#1090
        end
        object edtSaleNoOnProductionOrderPanel: TDBEdit
          Left = 136
          Top = 24
          Width = 57
          Height = 21
          DataField = 'SALE_NO'
          DataSource = dsBinding
          TabOrder = 2
        end
        object cbSaleBranchOnProductionOrderPanel: TJvDBLookupCombo
          Left = 72
          Top = 24
          Width = 57
          Height = 21
          DropDownWidth = 250
          DataField = 'SALE_BRANCH_CODE'
          DataSource = dsBinding
          DisplayEmpty = '< '#1074#1089'. >'
          LookupField = 'BRANCH_CODE'
          LookupDisplay = 'BRANCH_IDENTIFIER'
          LookupSource = dsBranches
          TabOrder = 1
        end
        object cbSaleTypeOnProductionOrderPanel: TJvDBLookupCombo
          Left = 200
          Top = 24
          Width = 57
          Height = 21
          DataField = 'SALE_TYPE_CODE'
          DataSource = dsBinding
          DisplayEmpty = '< '#1074#1089'. >'
          LookupField = 'SALE_TYPE_CODE'
          LookupDisplay = 'SALE_TYPE_ABBREV'
          LookupSource = dsSaleTypes
          TabOrder = 3
        end
        object cbProductionOrderTypeOnProductionOrderPanel: TJvDBLookupCombo
          Left = 8
          Top = 24
          Width = 57
          Height = 21
          DropDownCount = 19
          DropDownWidth = 220
          DeleteKeyClear = False
          DisplayAllFields = True
          DataField = 'PRODUCTION_ORDER_TYPE_CODE'
          DataSource = dsBinding
          DisplayEmpty = '< '#1074#1089'. >'
          LookupField = 'PRODUCTION_ORDER_TYPE_CODE'
          LookupDisplay = 'PRODUCTION_ORDER_TYPE_ABBREV;PRODUCTION_ORDER_TYPE_NAME'
          LookupSource = dsProductionOrderTypes
          TabOrder = 0
        end
        object cbIsWasteCompensatorStatusOnProductionOrderPanel: TJvDBComboBox
          Left = 264
          Top = 24
          Width = 89
          Height = 21
          DataField = 'IS_WASTE_COMPENSATOR_STATUS'
          DataSource = dsBinding
          ItemHeight = 13
          Items.Strings = (
            '< '#1074#1089#1080#1095#1082#1080' >'
            #1054#1089#1085#1086#1074#1077#1085' ('#1054')'
            #1057#1098#1087#1098#1090#1089#1090#1074#1072#1097' ('#1057')')
          TabOrder = 4
          Values.Strings = (
            ''
            '2'
            '3')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
          ListSettings.OutfilteredValueFont.Style = []
        end
        inline frProjectProductOnProductionOrderPanel: TfrProductFieldEditFrameBald
          Left = 368
          Top = 24
          Width = 401
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 5
          inherited gbTreeNode: TGroupBox
            Width = 417
            inherited pnlTreeNode: TPanel
              Width = 401
              inherited pnlTreeNodeName: TPanel
                Width = 231
                inherited edtTreeNodeName: TDBEdit
                  Width = 230
                end
              end
              inherited pnlTreeNodeNo: TPanel
                Left = 231
              end
              inherited pnlRightButtons: TPanel
                Left = 342
              end
            end
          end
        end
      end
      object pnlOutStoreDeal: TPanel
        Left = 0
        Top = 432
        Width = 773
        Height = 48
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 8
        Visible = False
        object lblOtherStoreOnOutStoreDealPanel: TLabel
          Left = 8
          Top = 8
          Width = 91
          Height = 13
          Caption = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
          FocusControl = frOtherStoreOnOutStoreDealPanel
        end
        object lblOtherStoreDealNoOnOutStoreDealPanel: TLabel
          Left = 504
          Top = 8
          Width = 59
          Height = 13
          Caption = #1058#1077#1075#1083#1077#1085#1077' No'
          FocusControl = edtOtherStoreDealNoOnOutStoreDealPanel
        end
        object lblOtherStoreDealDateOnOutStoreDealPanel: TLabel
          Left = 376
          Top = 8
          Width = 86
          Height = 13
          Caption = #1044#1072#1090#1072' '#1085#1072' '#1058#1077#1075#1083#1077#1085#1077
          FocusControl = frOtherStoreDealDateOnOutStoreDealPanel
        end
        object edtOtherStoreDealNoOnOutStoreDealPanel: TDBEdit
          Left = 504
          Top = 24
          Width = 89
          Height = 21
          DataField = 'OTHER_STORE_DEAL_NO'
          DataSource = dsBinding
          TabOrder = 2
        end
        inline frOtherStoreOnOutStoreDealPanel: TfrDeptFieldEditFrameBald
          Left = 0
          Top = 24
          Width = 350
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 0
          TabStop = True
          inherited gbTreeNode: TGroupBox
            inherited pnlTreeNode: TPanel
              inherited pnlTreeNodeName: TPanel
                inherited edtTreeNodeName: TDBEdit
                  Left = 8
                end
              end
            end
          end
        end
        inline frOtherStoreDealDateOnOutStoreDealPanel: TfrDateFieldEditFrame
          Left = 376
          Top = 24
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 1
          TabStop = True
        end
      end
      object pnlDelivery: TPanel
        Left = 0
        Top = 240
        Width = 773
        Height = 48
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 5
        Visible = False
        object lblDCDBranchOnDeliveryPanel: TLabel
          Left = 72
          Top = 8
          Width = 51
          Height = 13
          Caption = #1058#1055' '#1043#1083'.'
          FocusControl = cbDCDBranchOnDeliveryPanel
        end
        object lblDCDNoOnDeliveryPanel: TLabel
          Left = 136
          Top = 8
          Width = 43
          Height = 13
          Caption = #1055#1044#1044' No'
          FocusControl = edtDCDNoOnDeliveryPanel
        end
        object lblDeliveryNoOnDeliveryPanel: TLabel
          Left = 192
          Top = 8
          Width = 42
          Height = 13
          Caption = #1054#1055#1044' No'
          FocusControl = edtDeliveryNoOnDeliveryPanel
        end
        object lblInvoiceDateOnDeliveryPanel: TLabel
          Left = 664
          Top = 8
          Width = 86
          Height = 13
          Caption = #1044#1072#1090#1072' '#1085#1072' '#1092#1072#1082#1090#1091#1088#1072
          FocusControl = frInvoiceDateOnDeliveryPanel
        end
        object lblInvoiceNoOnDeliveryPanel: TLabel
          Left = 536
          Top = 8
          Width = 62
          Height = 13
          Caption = #1060#1072#1082#1090#1091#1088#1072' No'
          FocusControl = edtInvoiceNoOnDeliveryPanel
        end
        object lblVendorOnDeliveryPanel: TLabel
          Left = 312
          Top = 8
          Width = 55
          Height = 13
          Caption = #1044#1086#1089#1090#1072#1074#1095#1080#1082
          FocusControl = frVendorOnDeliveryPanel
        end
        object lblDeliveryDealTypeOnDeliveryPanel: TLabel
          Left = 8
          Top = 8
          Width = 19
          Height = 13
          Caption = #1058#1080#1087
          FocusControl = cbDeliveryDealTypeOnDeliveryPanel
        end
        object lblDeliveryTypeOnDeliveryPanel: TLabel
          Left = 248
          Top = 8
          Width = 19
          Height = 13
          Caption = #1042#1080#1076
          FocusControl = cbDeliveryTypeOnDeliveryPanel
        end
        object lblIsProformInvoiceStatusOnDeliveryPanel: TLabel
          Left = 616
          Top = 8
          Width = 36
          Height = 13
          Caption = #1042#1080#1076' '#1060'.'
          FocusControl = cbIsProformInvoiceStatusOnDeliveryPanel
        end
        object cbDCDBranchOnDeliveryPanel: TJvDBLookupCombo
          Left = 72
          Top = 24
          Width = 57
          Height = 21
          DataField = 'DCD_BRANCH_CODE'
          DataSource = dsBinding
          DisplayEmpty = '< '#1074#1089'. >'
          LookupField = 'BRANCH_CODE'
          LookupDisplay = 'BRANCH_CODE_AND_NAME'
          LookupSource = dsBranches
          TabOrder = 1
        end
        object edtDCDNoOnDeliveryPanel: TDBEdit
          Left = 136
          Top = 24
          Width = 49
          Height = 21
          DataField = 'DCD_CODE'
          DataSource = dsBinding
          TabOrder = 2
        end
        object edtDeliveryNoOnDeliveryPanel: TDBEdit
          Left = 192
          Top = 24
          Width = 49
          Height = 21
          DataField = 'DELIVERY_PROJECT_CODE'
          DataSource = dsBinding
          TabOrder = 3
        end
        object edtInvoiceNoOnDeliveryPanel: TDBEdit
          Left = 536
          Top = 24
          Width = 65
          Height = 21
          DataField = 'INVOICE_NO'
          DataSource = dsBinding
          TabOrder = 6
        end
        object edtInvoiceAbbrevOnDeliveryPanel: TDBEdit
          Left = 600
          Top = 24
          Width = 17
          Height = 21
          DataField = 'INVOICE_ABBREV'
          DataSource = dsBinding
          TabOrder = 7
        end
        inline frInvoiceDateOnDeliveryPanel: TfrDateFieldEditFrame
          Left = 664
          Top = 24
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 9
          TabStop = True
        end
        inline frVendorOnDeliveryPanel: TfrPartnerFieldEditFrameBald
          Left = 312
          Top = 24
          Width = 217
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 5
          TabStop = True
          inherited gbPartner: TGroupBox
            Width = 232
            inherited pnlNameAndButtons: TPanel
              Width = 143
              inherited pnlRightButtons: TPanel
                Left = 107
              end
              inherited pnlPartnerName: TPanel
                Width = 107
                inherited edtPartnerName: TDBEdit
                  Width = 93
                end
                inherited cbPartner: TJvDBLookupCombo
                  Width = 108
                end
              end
            end
            inherited pnlPaddingRight: TPanel
              Left = 224
            end
          end
        end
        object cbDeliveryDealTypeOnDeliveryPanel: TJvDBLookupCombo
          Left = 8
          Top = 24
          Width = 57
          Height = 21
          DropDownWidth = 220
          DeleteKeyClear = False
          DisplayAllFields = True
          DataField = 'DELIVERY_DEAL_TYPE_CODE'
          DataSource = dsBinding
          DisplayEmpty = '< '#1074#1089'. >'
          LookupField = 'BORDER_DEAL_TYPE_CODE'
          LookupDisplay = 'BORDER_DEAL_TYPE_ABBREV'
          LookupSource = dsDeliveryDealTypes
          TabOrder = 0
        end
        object cbDeliveryTypeOnDeliveryPanel: TJvDBLookupCombo
          Left = 248
          Top = 24
          Width = 57
          Height = 21
          DataField = 'DELIVERY_TYPE_CODE'
          DataSource = dsBinding
          DisplayEmpty = '< '#1074#1089'. >'
          LookupField = 'DELIVERY_TYPE_CODE'
          LookupDisplay = 'DELIVERY_TYPE_ABBREV'
          LookupSource = dsDeliveryTypes
          TabOrder = 4
        end
        object cbIsProformInvoiceStatusOnDeliveryPanel: TJvDBComboBox
          Left = 616
          Top = 24
          Width = 41
          Height = 21
          DataField = 'IS_PROFORM_INVOICE_STATUS'
          DataSource = dsBinding
          ItemHeight = 13
          Items.Strings = (
            ''
            #1060#1072#1082#1090#1091#1088#1072
            #1055#1088#1086#1092#1086#1088#1084#1072' '#1092#1072#1082#1090#1091#1088#1072)
          TabOrder = 8
          Values.Strings = (
            ''
            '2'
            '3')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
          ListSettings.OutfilteredValueFont.Style = []
        end
      end
      object pnlBOIO: TPanel
        Left = 0
        Top = 336
        Width = 773
        Height = 48
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 7
        Visible = False
        object lblBudgetOrderBranchOnBOIOPanel: TLabel
          Left = 72
          Top = 8
          Width = 51
          Height = 13
          Caption = #1058#1055' '#1043#1083'.'
          FocusControl = cbBudgetOrderBranchOnBOIOPanel
        end
        object lblBudgetOrderNoOnBOIOPanel: TLabel
          Left = 136
          Top = 8
          Width = 14
          Height = 13
          Caption = #1041#1057
          FocusControl = edtBudgetOrderNoOnBOIOPanel
        end
        object lblBudgetOrderItemNoOnBOIOPanel: TLabel
          Left = 192
          Top = 8
          Width = 22
          Height = 13
          Caption = #1051#1041#1057
          FocusControl = edtBudgetOrderItemNoOnBOIOPanel
        end
        object lblBOIOrderNoOnBOIOPanel: TLabel
          Left = 272
          Top = 8
          Width = 30
          Height = 13
          Caption = #1054#1051#1041#1057
          FocusControl = edtBOIOrderNoOnBOIOPanel
        end
        object lblBudgetOrderClassOnBOIOPanel: TLabel
          Left = 8
          Top = 8
          Width = 19
          Height = 13
          Caption = #1058#1080#1087
          FocusControl = cbBudgetOrderClassOnBOIOPanel
        end
        object lblBudgetOrderItemTypeOnBOIOPanel: TLabel
          Left = 240
          Top = 8
          Width = 19
          Height = 13
          Caption = #1042#1080#1076
          FocusControl = edtBudgetOrderItemTypeOnBOIOPanel
        end
        object lblBudgetOrderProductOnBOIOPanel: TLabel
          Left = 328
          Top = 8
          Width = 172
          Height = 13
          Caption = #1059#1054#1073' '#1089#1074#1098#1088#1079#1072#1085' '#1089' '#1041#1086#1088#1076#1077#1088#1086' '#1079#1072' '#1057#1088#1077#1076#1072
        end
        object lblOrgTaskProposalStateOnBOIOPanel: TLabel
          Left = 672
          Top = 8
          Width = 91
          Height = 13
          Caption = #1057#1090#1072#1076#1080#1081' '#1085#1072' '#1055#1088#1086#1077#1082#1090
          FocusControl = cbOrgTaskProposalStateOnBOIOPanel
        end
        object cbBudgetOrderBranchOnBOIOPanel: TJvDBLookupCombo
          Left = 72
          Top = 24
          Width = 57
          Height = 21
          DeleteKeyClear = False
          DataField = 'BUDGET_ORDER_BRANCH_CODE'
          DataSource = dsBinding
          DisplayEmpty = '< '#1074#1089'. >'
          LookupField = 'BRANCH_CODE'
          LookupDisplay = 'BRANCH_IDENTIFIER'
          LookupSource = dsBranches
          TabOrder = 1
        end
        object edtBudgetOrderNoOnBOIOPanel: TDBEdit
          Left = 136
          Top = 24
          Width = 49
          Height = 21
          DataField = 'BUDGET_ORDER_CODE'
          DataSource = dsBinding
          TabOrder = 2
        end
        object edtBudgetOrderItemNoOnBOIOPanel: TDBEdit
          Left = 192
          Top = 24
          Width = 49
          Height = 21
          DataField = 'BUDGET_ORDER_ITEM_CODE'
          DataSource = dsBinding
          TabOrder = 3
        end
        object edtBOIOrderNoOnBOIOPanel: TDBEdit
          Left = 272
          Top = 24
          Width = 41
          Height = 21
          DataField = 'BOI_ORDER_CODE'
          DataSource = dsBinding
          TabOrder = 5
        end
        object cbBudgetOrderClassOnBOIOPanel: TJvDBLookupCombo
          Left = 8
          Top = 24
          Width = 57
          Height = 21
          DropDownWidth = 220
          DeleteKeyClear = False
          DisplayAllFields = True
          DataField = 'BUDGET_ORDER_CLASS_CODE'
          DataSource = dsBinding
          DisplayEmpty = '< '#1074#1089'. >'
          LookupField = 'BUDGET_ORDER_CLASS_CODE'
          LookupDisplay = 'BUDGET_ORDER_CLASS_NAME'
          LookupSource = dsBudgetOrderClasses
          TabOrder = 0
        end
        inline frBudgetOrderProductOnBOIOPanel: TfrProductFieldEditFrameBald
          Left = 328
          Top = 24
          Width = 337
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 6
          inherited gbTreeNode: TGroupBox
            Width = 353
            inherited pnlTreeNode: TPanel
              Width = 337
              inherited pnlTreeNodeName: TPanel
                Width = 167
                inherited edtTreeNodeName: TDBEdit
                  Width = 166
                end
              end
              inherited pnlTreeNodeNo: TPanel
                Left = 167
              end
              inherited pnlRightButtons: TPanel
                Left = 278
              end
            end
          end
        end
        object cbOrgTaskProposalStateOnBOIOPanel: TJvDBLookupCombo
          Left = 672
          Top = 24
          Width = 97
          Height = 21
          DeleteKeyClear = False
          DataField = 'ORG_TASK_PROPOSAL_STATE_CODE'
          DataSource = dsBinding
          DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
          LookupField = 'ORG_TASK_PROPOSAL_STATE_CODE'
          LookupDisplay = 'ORG_TASK_PROPOSAL_STATE_NAME'
          LookupSource = dsOrgTaskProposalStates
          TabOrder = 7
        end
        object edtBudgetOrderItemTypeOnBOIOPanel: TEdit
          Left = 240
          Top = 24
          Width = 25
          Height = 21
          TabStop = False
          ParentColor = True
          ReadOnly = True
          TabOrder = 4
        end
      end
      object pnlMLMSOperation: TPanel
        Left = 0
        Top = 144
        Width = 773
        Height = 48
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 3
        Visible = False
        object lblSaleBranchOnMLMSOperationPanel: TLabel
          Left = 72
          Top = 8
          Width = 51
          Height = 13
          Caption = #1058#1055' '#1043#1083'.'
          FocusControl = cbSaleBranchOnMLMSOperationPanel
        end
        object lblSaleNoOnMLMSOperationPanel: TLabel
          Left = 136
          Top = 8
          Width = 40
          Height = 13
          Caption = #1054#1055#1042' No'
          FocusControl = edtSaleNoOnMLMSOperationPanel
        end
        object lblNoAsTextOnMLMSOperationPanel: TLabel
          Left = 368
          Top = 8
          Width = 85
          Height = 13
          Caption = #1056#1077#1076' '#1086#1090' '#1056'-'#1052#1054#1044#1045#1083
          FocusControl = edtNoAsTextOnMLMSOperationPanel
        end
        object lblForkNoOnMLMSOperationPanel: TLabel
          Left = 464
          Top = 8
          Width = 13
          Height = 13
          Caption = #1056#1082
          FocusControl = edtForkNoOnMLMSOperationPanel
        end
        object lblSaleTypeOnMLMSOperationPanel: TLabel
          Left = 200
          Top = 8
          Width = 19
          Height = 13
          Caption = #1042#1080#1076
          FocusControl = cbSaleTypeOnMLMSOperationPanel
        end
        object lblProductionOrderTypeOnMLMSOperationPanel: TLabel
          Left = 8
          Top = 8
          Width = 38
          Height = 13
          Caption = #1055#1088#1086#1094#1077#1089
          FocusControl = cbProductionOrderTypeOnMLMSOperationPanel
        end
        object lblModelStageNoOnMLMSOperationPanel: TLabel
          Left = 560
          Top = 8
          Width = 41
          Height = 13
          Caption = #1045#1090#1072#1087' No'
          FocusControl = edtModelStageNoOnMLMSOperationPanel
        end
        object lblMLMSOperationNoOnMLMSOperationPanel: TLabel
          Left = 608
          Top = 8
          Width = 34
          Height = 13
          Caption = #1054#1087'. No'
          FocusControl = edtMLMSOperationNoOnMLMSOperationPanel
        end
        object lblMLMSOperationVariantNoOnMOMSOperationPanel: TLabel
          Left = 656
          Top = 8
          Width = 39
          Height = 13
          Caption = #1042#1072#1088'. No'
          FocusControl = edtMLMSOperationVariantNoOnMOMSOperationPanel
        end
        object lblIsWasteCompensatorStatusOnMLMSOperationPanel: TLabel
          Left = 264
          Top = 8
          Width = 85
          Height = 13
          Caption = #1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1054#1055#1042
          FocusControl = cbIsWasteCompensatorStatusOnMLMSOperationPanel
        end
        object lblIsWasteForkStatusOnMLMSOperationPanel: TLabel
          Left = 488
          Top = 8
          Width = 35
          Height = 13
          Caption = #1042#1080#1076' '#1056#1082
          FocusControl = cbIsWasteForkStatusOnMLMSOperationPanel
        end
        object cbSaleBranchOnMLMSOperationPanel: TJvDBLookupCombo
          Left = 72
          Top = 24
          Width = 57
          Height = 21
          DropDownWidth = 250
          DataField = 'SALE_BRANCH_CODE'
          DataSource = dsBinding
          DisplayEmpty = '< '#1074#1089'. >'
          LookupField = 'BRANCH_CODE'
          LookupDisplay = 'BRANCH_IDENTIFIER'
          LookupSource = dsBranches
          TabOrder = 1
        end
        object edtSaleNoOnMLMSOperationPanel: TDBEdit
          Left = 136
          Top = 24
          Width = 57
          Height = 21
          DataField = 'SALE_NO'
          DataSource = dsBinding
          TabOrder = 2
        end
        object edtNoAsTextOnMLMSOperationPanel: TDBEdit
          Left = 368
          Top = 24
          Width = 97
          Height = 21
          DataField = 'NO_AS_TEXT'
          DataSource = dsBinding
          TabOrder = 5
        end
        object edtForkNoOnMLMSOperationPanel: TDBEdit
          Left = 464
          Top = 24
          Width = 25
          Height = 21
          DataField = 'FORK_NO'
          DataSource = dsBinding
          TabOrder = 6
        end
        object cbSaleTypeOnMLMSOperationPanel: TJvDBLookupCombo
          Left = 200
          Top = 24
          Width = 57
          Height = 21
          DataField = 'SALE_TYPE_CODE'
          DataSource = dsBinding
          DisplayEmpty = '< '#1074#1089'. >'
          LookupField = 'SALE_TYPE_CODE'
          LookupDisplay = 'SALE_TYPE_ABBREV'
          LookupSource = dsSaleTypes
          TabOrder = 3
        end
        object cbProductionOrderTypeOnMLMSOperationPanel: TJvDBLookupCombo
          Left = 8
          Top = 24
          Width = 57
          Height = 21
          DropDownCount = 19
          DropDownWidth = 220
          DeleteKeyClear = False
          DisplayAllFields = True
          DataField = 'PRODUCTION_ORDER_TYPE_CODE'
          DataSource = dsBinding
          DisplayEmpty = '< '#1074#1089'. >'
          LookupField = 'PRODUCTION_ORDER_TYPE_CODE'
          LookupDisplay = 'PRODUCTION_ORDER_TYPE_ABBREV;PRODUCTION_ORDER_TYPE_NAME'
          LookupSource = dsProductionOrderTypes
          TabOrder = 0
        end
        object edtModelStageNoOnMLMSOperationPanel: TDBEdit
          Left = 560
          Top = 24
          Width = 49
          Height = 21
          DataField = 'ML_MODEL_STAGE_NO'
          DataSource = dsBinding
          TabOrder = 8
        end
        object edtMLMSOperationNoOnMLMSOperationPanel: TDBEdit
          Left = 608
          Top = 24
          Width = 49
          Height = 21
          DataField = 'MLMS_OPERATION_NO'
          DataSource = dsBinding
          TabOrder = 9
        end
        object edtMLMSOperationVariantNoOnMOMSOperationPanel: TDBEdit
          Left = 656
          Top = 24
          Width = 49
          Height = 21
          DataField = 'MLMS_OPERATION_VARIANT_NO'
          DataSource = dsBinding
          TabOrder = 10
        end
        object cbIsWasteCompensatorStatusOnMLMSOperationPanel: TJvDBComboBox
          Left = 264
          Top = 24
          Width = 89
          Height = 21
          DataField = 'IS_WASTE_COMPENSATOR_STATUS'
          DataSource = dsBinding
          ItemHeight = 13
          Items.Strings = (
            '< '#1074#1089#1080#1095#1082#1080' >'
            #1054#1089#1085#1086#1074#1077#1085' ('#1054')'
            #1057#1098#1087#1098#1090#1089#1090#1074#1072#1097' ('#1057')')
          TabOrder = 4
          Values.Strings = (
            ''
            '2'
            '3')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object cbIsWasteForkStatusOnMLMSOperationPanel: TJvDBComboBox
          Left = 488
          Top = 24
          Width = 57
          Height = 21
          DataField = 'IS_WASTE_FORK_STATUS'
          DataSource = dsBinding
          ItemHeight = 13
          Items.Strings = (
            '< '#1074#1089'. >'
            #1053#1086#1088#1084#1072#1083#1085#1086
            #1041#1083#1086#1082)
          TabOrder = 7
          Values.Strings = (
            ''
            '2'
            '3')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
          ListSettings.OutfilteredValueFont.Style = []
        end
      end
      object pnlLiteDelivery: TPanel
        Left = 0
        Top = 288
        Width = 773
        Height = 48
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 6
        Visible = False
        object lblInvoiceDateOnLiteDeliveryPanel: TLabel
          Left = 360
          Top = 8
          Width = 86
          Height = 13
          Caption = #1044#1072#1090#1072' '#1085#1072' '#1092#1072#1082#1090#1091#1088#1072
          FocusControl = frInvoiceDateOnLiteDeliveryPanel
        end
        object lblInvoiceNoOnLiteDeliveryPanel: TLabel
          Left = 232
          Top = 8
          Width = 62
          Height = 13
          Caption = #1060#1072#1082#1090#1091#1088#1072' No'
          FocusControl = edtInvoiceNoOnLiteDeliveryPanel
        end
        object lblVendorOnLiteDeliveryPanel: TLabel
          Left = 8
          Top = 8
          Width = 55
          Height = 13
          Caption = #1044#1086#1089#1090#1072#1074#1095#1080#1082
          FocusControl = frVendorOnLiteDeliveryPanel
        end
        object lblIsProformInvoiceStatusOnLiteDeliveryPanel: TLabel
          Left = 312
          Top = 8
          Width = 36
          Height = 13
          Caption = #1042#1080#1076' '#1060'.'
          FocusControl = cbIsProformInvoiceStatusOnLiteDeliveryPanel
        end
        object edtInvoiceNoOnLiteDeliveryPanel: TDBEdit
          Left = 232
          Top = 24
          Width = 65
          Height = 21
          DataField = 'INVOICE_NO'
          DataSource = dsBinding
          TabOrder = 1
        end
        object edtInvoiceAbbrevOnLiteDeliveryPanel: TDBEdit
          Left = 296
          Top = 24
          Width = 17
          Height = 21
          DataField = 'INVOICE_ABBREV'
          DataSource = dsBinding
          TabOrder = 2
        end
        inline frInvoiceDateOnLiteDeliveryPanel: TfrDateFieldEditFrame
          Left = 360
          Top = 24
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 4
          TabStop = True
        end
        inline frVendorOnLiteDeliveryPanel: TfrPartnerFieldEditFrameBald
          Left = 8
          Top = 24
          Width = 217
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 0
          TabStop = True
          inherited gbPartner: TGroupBox
            Width = 232
            inherited pnlNameAndButtons: TPanel
              Width = 143
              inherited pnlRightButtons: TPanel
                Left = 107
              end
              inherited pnlPartnerName: TPanel
                Width = 107
                inherited edtPartnerName: TDBEdit
                  Width = 93
                end
                inherited cbPartner: TJvDBLookupCombo
                  Width = 108
                end
              end
            end
            inherited pnlPaddingRight: TPanel
              Left = 224
            end
          end
        end
        object cbIsProformInvoiceStatusOnLiteDeliveryPanel: TJvDBComboBox
          Left = 312
          Top = 24
          Width = 41
          Height = 21
          DataField = 'IS_PROFORM_INVOICE_STATUS'
          DataSource = dsBinding
          ItemHeight = 13
          Items.Strings = (
            ''
            #1060#1072#1082#1090#1091#1088#1072
            #1055#1088#1086#1092#1086#1088#1084#1072' '#1092#1072#1082#1090#1091#1088#1072)
          TabOrder = 3
          Values.Strings = (
            ''
            '2'
            '3')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
          ListSettings.OutfilteredValueFont.Style = []
        end
      end
      object pnlDeficitCoverDecision: TPanel
        Left = 0
        Top = 192
        Width = 773
        Height = 48
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 4
        Visible = False
        object lblDCDBranchOnDeficitCoverDecisionPanel: TLabel
          Left = 72
          Top = 8
          Width = 51
          Height = 13
          Caption = #1058#1055' '#1043#1083'.'
          FocusControl = cbDCDBranchOnDeficitCoverDecisionPanel
        end
        object lblDCDNoOnDeficitCoverDecisionPanel: TLabel
          Left = 136
          Top = 8
          Width = 43
          Height = 13
          Caption = #1055#1044#1044' No'
          FocusControl = edtDCDNoOnDeficitCoverDecisionPanel
        end
        object lblDeliveryDealTypeOnDeficitCoverDecisionPanel: TLabel
          Left = 8
          Top = 8
          Width = 19
          Height = 13
          Caption = #1058#1080#1087
          FocusControl = cbDeliveryDealTypeOnDeficitCoverDecisionPanel
        end
        object cbDCDBranchOnDeficitCoverDecisionPanel: TJvDBLookupCombo
          Left = 72
          Top = 24
          Width = 57
          Height = 21
          DataField = 'DCD_BRANCH_CODE'
          DataSource = dsBinding
          DisplayEmpty = '< '#1074#1089'. >'
          LookupField = 'BRANCH_CODE'
          LookupDisplay = 'BRANCH_CODE_AND_NAME'
          LookupSource = dsBranches
          TabOrder = 1
        end
        object edtDCDNoOnDeficitCoverDecisionPanel: TDBEdit
          Left = 136
          Top = 24
          Width = 49
          Height = 21
          DataField = 'DCD_CODE'
          DataSource = dsBinding
          TabOrder = 2
        end
        object cbDeliveryDealTypeOnDeficitCoverDecisionPanel: TJvDBLookupCombo
          Left = 8
          Top = 24
          Width = 57
          Height = 21
          DropDownWidth = 220
          DeleteKeyClear = False
          DisplayAllFields = True
          DataField = 'DELIVERY_DEAL_TYPE_CODE'
          DataSource = dsBinding
          DisplayEmpty = '< '#1074#1089'. >'
          LookupField = 'BORDER_DEAL_TYPE_CODE'
          LookupDisplay = 'BORDER_DEAL_TYPE_ABBREV'
          LookupSource = dsDeliveryDealTypes
          TabOrder = 0
        end
      end
      object pnlInStoreDeal: TPanel
        Left = 0
        Top = 384
        Width = 773
        Height = 48
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 9
        Visible = False
        object lblOtherStoreOnInStoreDealPanel: TLabel
          Left = 8
          Top = 8
          Width = 91
          Height = 13
          Caption = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
          FocusControl = frOtherStoreOnInStoreDealPanel
        end
        object lblOtherStoreDealNoOnInStoreDealPanel: TLabel
          Left = 504
          Top = 8
          Width = 85
          Height = 13
          Caption = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1077' No'
          FocusControl = edtOtherStoreDealNoOnInStoreDealPanel
        end
        object lblOtherStoreDealDateOnInStoreDealPanel: TLabel
          Left = 376
          Top = 8
          Width = 112
          Height = 13
          Caption = #1044#1072#1090#1072' '#1085#1072' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1077
          FocusControl = frOtherStoreDealDateOnInStoreDealPanel
        end
        object edtOtherStoreDealNoOnInStoreDealPanel: TDBEdit
          Left = 504
          Top = 24
          Width = 89
          Height = 21
          DataField = 'OTHER_STORE_DEAL_NO'
          DataSource = dsBinding
          TabOrder = 2
        end
        inline frOtherStoreOnInStoreDealPanel: TfrDeptFieldEditFrameBald
          Left = 0
          Top = 24
          Width = 350
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 0
          TabStop = True
          inherited gbTreeNode: TGroupBox
            inherited pnlTreeNode: TPanel
              inherited pnlTreeNodeName: TPanel
                inherited edtTreeNodeName: TDBEdit
                  Left = 8
                end
              end
            end
          end
        end
        inline frOtherStoreDealDateOnInStoreDealPanel: TfrDateFieldEditFrame
          Left = 376
          Top = 24
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 1
          TabStop = True
        end
      end
      object pnlFinOrderInternal: TPanel
        Left = 0
        Top = 480
        Width = 773
        Height = 104
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 10
        Visible = False
        object lblFinOrderBranchOnFinOrderInternalPanel: TLabel
          Left = 8
          Top = 8
          Width = 51
          Height = 13
          Caption = #1058#1055' '#1043#1083'.'
          FocusControl = cbFinOrderBranchOnFinOrderInternalPanel
        end
        object lblFinOrderNoOnFinOrderInternalPanel: TLabel
          Left = 72
          Top = 8
          Width = 44
          Height = 13
          Caption = #1054#1055#1060' No'
          FocusControl = edtFinOrderNoOnFinOrderInternalPanel
        end
        object lblFinModelLineTypeOnFinOrderInternalPanel: TLabel
          Left = 128
          Top = 8
          Width = 99
          Height = 13
          Caption = #1056#1077#1076' '#1086#1090' '#1056'-'#1052#1054#1044#1045#1083'-'#1060
          FocusControl = cbFinModelLineTypeOnFinOrderInternalPanel
        end
        object lblBaseDateOnFinOrderInternalPanel: TLabel
          Left = 240
          Top = 8
          Width = 63
          Height = 13
          Caption = #1041#1072#1079#1086#1074#1072' '#1076#1072#1090#1072
          FocusControl = frBaseDateOnFinOrderInternalPanel
        end
        object lblDocumentIdentifierStatusOnFinOrderInternalPanel: TLabel
          Left = 352
          Top = 8
          Width = 89
          Height = 13
          Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1089#1090#1072#1090#1091#1089
          FocusControl = cbDocumentIdentifierStatusOnFinOrderInternalPanel
        end
        object lblDocumentIdentifierOnFinOrderInternalPanel: TLabel
          Left = 456
          Top = 8
          Width = 48
          Height = 13
          Caption = #1044#1086#1082'. '#1086#1089#1085'.'
          FocusControl = edtDocumentIdentifierOnFinOrderInternalPanel
        end
        object lblFinClassOnFinOrderInternalPanel: TLabel
          Left = 8
          Top = 56
          Width = 96
          Height = 13
          Caption = #1060#1080#1085#1072#1085#1089#1086#1074#1072' '#1089#1090#1072#1090#1080#1103
          FocusControl = frFinClassOnFinOrderInternalPanel
        end
        object cbFinOrderBranchOnFinOrderInternalPanel: TJvDBLookupCombo
          Left = 8
          Top = 24
          Width = 57
          Height = 21
          DataField = 'FIN_ORDER_BRANCH_CODE'
          DataSource = dsBinding
          DisplayEmpty = '< '#1074#1089'. >'
          LookupField = 'BRANCH_CODE'
          LookupDisplay = 'BRANCH_CODE_AND_NAME'
          LookupSource = dsBranches
          TabOrder = 0
        end
        object edtFinOrderNoOnFinOrderInternalPanel: TDBEdit
          Left = 72
          Top = 24
          Width = 49
          Height = 21
          DataField = 'FIN_ORDER_NO'
          DataSource = dsBinding
          TabOrder = 1
        end
        object cbFinModelLineTypeOnFinOrderInternalPanel: TJvDBLookupCombo
          Left = 128
          Top = 24
          Width = 57
          Height = 21
          DataField = 'FIN_MODEL_LINE_TYPE_CODE'
          DataSource = dsBinding
          DisplayEmpty = '< '#1074#1089'. >'
          LookupField = 'FIN_MODEL_LINE_TYPE_CODE'
          LookupDisplay = 'FIN_MODEL_LINE_TYPE_ABBREV'
          LookupSource = dsFinModelLineTypes
          TabOrder = 2
        end
        object edtFinModelLineNoOnFinOrderInternalPanel: TDBEdit
          Left = 184
          Top = 24
          Width = 49
          Height = 21
          DataField = 'FIN_MODEL_LINE_NO'
          DataSource = dsBinding
          TabOrder = 3
        end
        inline frBaseDateOnFinOrderInternalPanel: TfrDateFieldEditFrame
          Left = 240
          Top = 24
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 4
          TabStop = True
        end
        object cbDocumentIdentifierStatusOnFinOrderInternalPanel: TJvDBComboBox
          Left = 352
          Top = 24
          Width = 97
          Height = 21
          DataField = 'DOCUMENT_IDENTIFIER_STATUS'
          DataSource = dsBinding
          ItemHeight = 13
          Items.Strings = (
            '< '#1074#1089#1080#1095#1082#1080' >'
            #1054#1095#1072#1082#1074#1072#1085
            #1056#1077#1072#1083#1077#1085)
          TabOrder = 5
          Values.Strings = (
            ''
            '2'
            '3')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object edtDocumentIdentifierOnFinOrderInternalPanel: TDBEdit
          Left = 456
          Top = 24
          Width = 65
          Height = 21
          DataField = 'FIN_ORDER_NO'
          DataSource = dsBinding
          TabOrder = 6
        end
        inline frFinClassOnFinOrderInternalPanel: TfrFinClassFieldEditFrameBald
          Left = 8
          Top = 72
          Width = 422
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 7
        end
      end
      object pnlFinOrderAdmin: TPanel
        Left = 0
        Top = 584
        Width = 773
        Height = 104
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 11
        Visible = False
        object lblFinOrderBranchOnFinOrderAdminPanel: TLabel
          Left = 8
          Top = 8
          Width = 51
          Height = 13
          Caption = #1058#1055' '#1043#1083'.'
          FocusControl = cbFinOrderBranchOnFinOrderAdminPanel
        end
        object lblFinOrderNoOnFinOrderAdminPanel: TLabel
          Left = 72
          Top = 8
          Width = 44
          Height = 13
          Caption = #1054#1055#1060' No'
          FocusControl = edtFinOrderNoOnFinOrderAdminPanel
        end
        object lblFinModelLineTypeOnFinOrderAdminPanel: TLabel
          Left = 128
          Top = 8
          Width = 99
          Height = 13
          Caption = #1056#1077#1076' '#1086#1090' '#1056'-'#1052#1054#1044#1045#1083'-'#1060
          FocusControl = cbFinModelLineTypeOnFinOrderAdminPanel
        end
        object lblBaseDateOnFinOrderAdminPanel: TLabel
          Left = 464
          Top = 8
          Width = 63
          Height = 13
          Caption = #1041#1072#1079#1086#1074#1072' '#1076#1072#1090#1072
          FocusControl = frBaseDateOnFinOrderAdminPanel
        end
        object lblDocumentIdentifierStatusOnFinOrderAdminPanel: TLabel
          Left = 576
          Top = 8
          Width = 89
          Height = 13
          Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1089#1090#1072#1090#1091#1089
          FocusControl = cbDocumentIdentifierStatusOnFinOrderAdminPanel
        end
        object lblDocumentIdentifierOnFinOrderAdminPanel: TLabel
          Left = 680
          Top = 8
          Width = 48
          Height = 13
          Caption = #1044#1086#1082'. '#1086#1089#1085'.'
          FocusControl = edtDocumentIdentifierOnFinOrderAdminPanel
        end
        object lblPartnerOnFinOrderAdminPanel: TLabel
          Left = 240
          Top = 8
          Width = 49
          Height = 13
          Caption = #1055#1072#1088#1090#1085#1100#1086#1088
          FocusControl = frPartnerOnFinOrderAdminPanel
        end
        object lblFinClassOnFinOrderAdminPanel: TLabel
          Left = 8
          Top = 56
          Width = 96
          Height = 13
          Caption = #1060#1080#1085#1072#1085#1089#1086#1074#1072' '#1089#1090#1072#1090#1080#1103
          FocusControl = frFinClassOnFinOrderAdminPanel
        end
        object cbFinOrderBranchOnFinOrderAdminPanel: TJvDBLookupCombo
          Left = 8
          Top = 24
          Width = 57
          Height = 21
          DataField = 'FIN_ORDER_BRANCH_CODE'
          DataSource = dsBinding
          DisplayEmpty = '< '#1074#1089'. >'
          LookupField = 'BRANCH_CODE'
          LookupDisplay = 'BRANCH_CODE_AND_NAME'
          LookupSource = dsBranches
          TabOrder = 0
        end
        object edtFinOrderNoOnFinOrderAdminPanel: TDBEdit
          Left = 72
          Top = 24
          Width = 49
          Height = 21
          DataField = 'FIN_ORDER_NO'
          DataSource = dsBinding
          TabOrder = 1
        end
        object cbFinModelLineTypeOnFinOrderAdminPanel: TJvDBLookupCombo
          Left = 128
          Top = 24
          Width = 57
          Height = 21
          DataField = 'FIN_MODEL_LINE_TYPE_CODE'
          DataSource = dsBinding
          DisplayEmpty = '< '#1074#1089'. >'
          LookupField = 'FIN_MODEL_LINE_TYPE_CODE'
          LookupDisplay = 'FIN_MODEL_LINE_TYPE_ABBREV'
          LookupSource = dsFinModelLineTypes
          TabOrder = 2
        end
        object edtFinModelLineNoOnFinOrderAdminPanel: TDBEdit
          Left = 184
          Top = 24
          Width = 49
          Height = 21
          DataField = 'FIN_MODEL_LINE_NO'
          DataSource = dsBinding
          TabOrder = 3
        end
        inline frBaseDateOnFinOrderAdminPanel: TfrDateFieldEditFrame
          Left = 464
          Top = 24
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 5
          TabStop = True
        end
        object cbDocumentIdentifierStatusOnFinOrderAdminPanel: TJvDBComboBox
          Left = 576
          Top = 24
          Width = 97
          Height = 21
          DataField = 'DOCUMENT_IDENTIFIER_STATUS'
          DataSource = dsBinding
          ItemHeight = 13
          Items.Strings = (
            '< '#1074#1089#1080#1095#1082#1080' >'
            #1054#1095#1072#1082#1074#1072#1085
            #1056#1077#1072#1083#1077#1085)
          TabOrder = 6
          Values.Strings = (
            ''
            '2'
            '3')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object edtDocumentIdentifierOnFinOrderAdminPanel: TDBEdit
          Left = 680
          Top = 24
          Width = 65
          Height = 21
          DataField = 'DOCUMENT_IDENTIFIER'
          DataSource = dsBinding
          TabOrder = 7
        end
        inline frPartnerOnFinOrderAdminPanel: TfrPartnerFieldEditFrameBald
          Left = 240
          Top = 24
          Width = 217
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 4
          TabStop = True
          inherited gbPartner: TGroupBox
            Width = 232
            inherited pnlNameAndButtons: TPanel
              Width = 143
              inherited pnlRightButtons: TPanel
                Left = 107
              end
              inherited pnlPartnerName: TPanel
                Width = 107
                inherited edtPartnerName: TDBEdit
                  Width = 93
                end
                inherited cbPartner: TJvDBLookupCombo
                  Width = 108
                end
              end
            end
            inherited pnlPaddingRight: TPanel
              Left = 224
            end
          end
        end
        inline frFinClassOnFinOrderAdminPanel: TfrFinClassFieldEditFrameBald
          Left = 8
          Top = 72
          Width = 422
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 8
        end
      end
      object pnlFinOrderSaleShipment: TPanel
        Left = 0
        Top = 688
        Width = 773
        Height = 128
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 12
        Visible = False
        object lblFinOrderBranchOnFinOrderSaleShipmentPanel: TLabel
          Left = 8
          Top = 8
          Width = 51
          Height = 13
          Caption = #1058#1055' '#1043#1083'.'
          FocusControl = cbFinOrderBranchOnFinOrderSaleShipmentPanel
        end
        object lblFinOrderNoOnFinOrderSaleShipmentPanel: TLabel
          Left = 72
          Top = 8
          Width = 44
          Height = 13
          Caption = #1054#1055#1060' No'
          FocusControl = edtFinOrderNoOnFinOrderSaleShipmentPanel
        end
        object lblFinModelLineTypeOnFinOrderSaleShipmentPanel: TLabel
          Left = 128
          Top = 8
          Width = 99
          Height = 13
          Caption = #1056#1077#1076' '#1086#1090' '#1056'-'#1052#1054#1044#1045#1083'-'#1060
          FocusControl = cbFinModelLineTypeOnFinOrderSaleShipmentPanel
        end
        object lblBaseDateOnFinOrderSaleShipmentPanel: TLabel
          Left = 464
          Top = 8
          Width = 63
          Height = 13
          Caption = #1041#1072#1079#1086#1074#1072' '#1076#1072#1090#1072
          FocusControl = frBaseDateOnFinOrderSaleShipmentPanel
        end
        object lblDocumentIdentifierStatusOnFinOrderSaleShipmentPanel: TLabel
          Left = 576
          Top = 8
          Width = 89
          Height = 13
          Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1089#1090#1072#1090#1091#1089
          FocusControl = cbDocumentIdentifierStatusOnFinOrderSaleShipmentPanel
        end
        object lblDocumentIdentifierOnFinOrderSaleShipmentPanel: TLabel
          Left = 680
          Top = 8
          Width = 48
          Height = 13
          Caption = #1044#1086#1082'. '#1086#1089#1085'.'
          FocusControl = edtDocumentIdentifierOnFinOrderSaleShipmentPanel
        end
        object lblPartnerOnFinOrderSaleShipmentPanel: TLabel
          Left = 240
          Top = 8
          Width = 49
          Height = 13
          Caption = #1055#1072#1088#1090#1085#1100#1086#1088
          FocusControl = frPartnerOnFinOrderSaleShipmentPanel
        end
        object cbFinOrderBranchOnFinOrderSaleShipmentPanel: TJvDBLookupCombo
          Left = 8
          Top = 24
          Width = 57
          Height = 21
          DataField = 'FIN_ORDER_BRANCH_CODE'
          DataSource = dsBinding
          DisplayEmpty = '< '#1074#1089'. >'
          LookupField = 'BRANCH_CODE'
          LookupDisplay = 'BRANCH_CODE_AND_NAME'
          LookupSource = dsBranches
          TabOrder = 0
        end
        object edtFinOrderNoOnFinOrderSaleShipmentPanel: TDBEdit
          Left = 72
          Top = 24
          Width = 49
          Height = 21
          DataField = 'FIN_ORDER_NO'
          DataSource = dsBinding
          TabOrder = 1
        end
        object cbFinModelLineTypeOnFinOrderSaleShipmentPanel: TJvDBLookupCombo
          Left = 128
          Top = 24
          Width = 57
          Height = 21
          DataField = 'FIN_MODEL_LINE_TYPE_CODE'
          DataSource = dsBinding
          DisplayEmpty = '< '#1074#1089'. >'
          LookupField = 'FIN_MODEL_LINE_TYPE_CODE'
          LookupDisplay = 'FIN_MODEL_LINE_TYPE_ABBREV'
          LookupSource = dsFinModelLineTypes
          TabOrder = 2
        end
        object edtFinModelLineNoOnFinOrderSaleShipmentPanel: TDBEdit
          Left = 184
          Top = 24
          Width = 49
          Height = 21
          DataField = 'FIN_MODEL_LINE_NO'
          DataSource = dsBinding
          TabOrder = 3
        end
        inline frBaseDateOnFinOrderSaleShipmentPanel: TfrDateFieldEditFrame
          Left = 464
          Top = 24
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 5
          TabStop = True
        end
        object cbDocumentIdentifierStatusOnFinOrderSaleShipmentPanel: TJvDBComboBox
          Left = 576
          Top = 24
          Width = 97
          Height = 21
          DataField = 'DOCUMENT_IDENTIFIER_STATUS'
          DataSource = dsBinding
          ItemHeight = 13
          Items.Strings = (
            '< '#1074#1089#1080#1095#1082#1080' >'
            #1054#1095#1072#1082#1074#1072#1085
            #1056#1077#1072#1083#1077#1085)
          TabOrder = 6
          Values.Strings = (
            ''
            '2'
            '3')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object edtDocumentIdentifierOnFinOrderSaleShipmentPanel: TDBEdit
          Left = 680
          Top = 24
          Width = 65
          Height = 21
          DataField = 'DOCUMENT_IDENTIFIER'
          DataSource = dsBinding
          TabOrder = 7
        end
        inline frPartnerOnFinOrderSaleShipmentPanel: TfrPartnerFieldEditFrameBald
          Left = 240
          Top = 24
          Width = 217
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 4
          TabStop = True
          inherited gbPartner: TGroupBox
            Width = 232
            inherited pnlNameAndButtons: TPanel
              Width = 143
              inherited pnlRightButtons: TPanel
                Left = 107
              end
              inherited pnlPartnerName: TPanel
                Width = 107
                inherited edtPartnerName: TDBEdit
                  Width = 93
                end
                inherited cbPartner: TJvDBLookupCombo
                  Width = 108
                end
              end
            end
            inherited pnlPaddingRight: TPanel
              Left = 224
            end
          end
        end
        object gbFinOrderBindingOnFinOrderSaleShipmentPanel: TGroupBox
          Left = 448
          Top = 56
          Width = 313
          Height = 65
          Caption = ' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1085#1072' '#1054#1055#1060' '
          TabOrder = 8
          object lblSaleDealTypeOnFinOrderSaleShipmentPanel: TLabel
            Left = 16
            Top = 16
            Width = 19
            Height = 13
            Caption = #1058#1080#1087
            FocusControl = cbSaleDealTypeOnFinOrderSaleShipmentPanel
          end
          object lblSaleTypeOnFinOrderSaleShipmentPanel: TLabel
            Left = 208
            Top = 16
            Width = 19
            Height = 13
            Caption = #1042#1080#1076
            FocusControl = cbSaleTypeOnFinOrderSaleShipmentPanel
          end
          object lblSaleShipmentNoOnFinOrderSaleShipmentPanel: TLabel
            Left = 272
            Top = 16
            Width = 13
            Height = 13
            Caption = #1056#1082
            FocusControl = edtSaleShipmentNoOnFinOrderSaleShipmentPanel
          end
          object lblSaleNoOnFinOrderSaleShipmentPanel: TLabel
            Left = 144
            Top = 16
            Width = 41
            Height = 13
            Caption = #1054#1055#1055' No'
            FocusControl = edtSaleNoOnFinOrderSaleShipmentPanel
          end
          object lblSaleBranchOnFinOrderSaleShipmentPanel: TLabel
            Left = 80
            Top = 16
            Width = 51
            Height = 13
            Caption = #1058#1055' '#1043#1083'.'
            FocusControl = cbSaleBranchOnFinOrderSaleShipmentPanel
          end
          object cbSaleDealTypeOnFinOrderSaleShipmentPanel: TJvDBLookupCombo
            Left = 16
            Top = 32
            Width = 57
            Height = 21
            DropDownWidth = 220
            DeleteKeyClear = False
            DisplayAllFields = True
            DataField = 'SALE_DEAL_TYPE_CODE'
            DataSource = dsBinding
            DisplayEmpty = '< '#1074#1089'. >'
            LookupField = 'SALE_DEAL_TYPE_CODE'
            LookupDisplay = 'SALE_DEAL_TYPE_ABBREV'
            LookupSource = dsSaleDealTypes
            TabOrder = 0
          end
          object cbSaleTypeOnFinOrderSaleShipmentPanel: TJvDBLookupCombo
            Left = 208
            Top = 32
            Width = 57
            Height = 21
            DataField = 'SALE_TYPE_CODE'
            DataSource = dsBinding
            DisplayEmpty = '< '#1074#1089'. >'
            LookupField = 'SALE_TYPE_CODE'
            LookupDisplay = 'SALE_TYPE_ABBREV'
            LookupSource = dsSaleTypes
            TabOrder = 1
          end
          object edtSaleShipmentNoOnFinOrderSaleShipmentPanel: TDBEdit
            Left = 272
            Top = 32
            Width = 25
            Height = 21
            DataField = 'SALE_SHIPMENT_NO'
            DataSource = dsBinding
            TabOrder = 2
          end
          object edtSaleNoOnFinOrderSaleShipmentPanel: TDBEdit
            Left = 144
            Top = 32
            Width = 57
            Height = 21
            DataField = 'SALE_NO'
            DataSource = dsBinding
            TabOrder = 3
          end
          object cbSaleBranchOnFinOrderSaleShipmentPanel: TJvDBLookupCombo
            Left = 80
            Top = 32
            Width = 57
            Height = 21
            DropDownWidth = 250
            DataField = 'SALE_BRANCH_CODE'
            DataSource = dsBinding
            DisplayEmpty = '< '#1074#1089'. >'
            LookupField = 'BRANCH_CODE'
            LookupDisplay = 'BRANCH_IDENTIFIER'
            LookupSource = dsBranches
            TabOrder = 4
          end
        end
      end
      object pnlFinOrderDelivery: TPanel
        Left = 0
        Top = 816
        Width = 773
        Height = 128
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 13
        Visible = False
        object lblFinOrderBranchOnFinOrderDeliveryPanel: TLabel
          Left = 8
          Top = 8
          Width = 51
          Height = 13
          Caption = #1058#1055' '#1043#1083'.'
          FocusControl = cbFinOrderBranchOnFinOrderDeliveryPanel
        end
        object lblFinOrderNoOnFinOrderDeliveryPanel: TLabel
          Left = 72
          Top = 8
          Width = 44
          Height = 13
          Caption = #1054#1055#1060' No'
          FocusControl = edtFinOrderNoOnFinOrderDeliveryPanel
        end
        object lblFinModelLineTypeOnFinOrderDeliveryPanel: TLabel
          Left = 128
          Top = 8
          Width = 99
          Height = 13
          Caption = #1056#1077#1076' '#1086#1090' '#1056'-'#1052#1054#1044#1045#1083'-'#1060
          FocusControl = cbFinModelLineTypeOnFinOrderDeliveryPanel
        end
        object lblBaseDateOnFinOrderDeliveryPanel: TLabel
          Left = 464
          Top = 8
          Width = 63
          Height = 13
          Caption = #1041#1072#1079#1086#1074#1072' '#1076#1072#1090#1072
          FocusControl = frBaseDateOnFinOrderDeliveryPanel
        end
        object lblDocumentIdentifierStatusOnFinOrderDeliveryPanel: TLabel
          Left = 576
          Top = 8
          Width = 89
          Height = 13
          Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1089#1090#1072#1090#1091#1089
          FocusControl = cbDocumentIdentifierStatusOnFinOrderDeliveryPanel
        end
        object lblDocumentIdentifierOnFinOrderDeliveryPanel: TLabel
          Left = 680
          Top = 8
          Width = 48
          Height = 13
          Caption = #1044#1086#1082'. '#1086#1089#1085'.'
          FocusControl = edtDocumentIdentifierOnFinOrderDeliveryPanel
        end
        object lblPartnerOnFinOrderDeliveryPanel: TLabel
          Left = 240
          Top = 8
          Width = 49
          Height = 13
          Caption = #1055#1072#1088#1090#1085#1100#1086#1088
          FocusControl = frPartnerOnFinOrderDeliveryPanel
        end
        object cbFinOrderBranchOnFinOrderDeliveryPanel: TJvDBLookupCombo
          Left = 8
          Top = 24
          Width = 57
          Height = 21
          DataField = 'FIN_ORDER_BRANCH_CODE'
          DataSource = dsBinding
          DisplayEmpty = '< '#1074#1089'. >'
          LookupField = 'BRANCH_CODE'
          LookupDisplay = 'BRANCH_CODE_AND_NAME'
          LookupSource = dsBranches
          TabOrder = 0
        end
        object edtFinOrderNoOnFinOrderDeliveryPanel: TDBEdit
          Left = 72
          Top = 24
          Width = 49
          Height = 21
          DataField = 'FIN_ORDER_NO'
          DataSource = dsBinding
          TabOrder = 1
        end
        object cbFinModelLineTypeOnFinOrderDeliveryPanel: TJvDBLookupCombo
          Left = 128
          Top = 24
          Width = 57
          Height = 21
          DataField = 'FIN_MODEL_LINE_TYPE_CODE'
          DataSource = dsBinding
          DisplayEmpty = '< '#1074#1089'. >'
          LookupField = 'FIN_MODEL_LINE_TYPE_CODE'
          LookupDisplay = 'FIN_MODEL_LINE_TYPE_ABBREV'
          LookupSource = dsFinModelLineTypes
          TabOrder = 2
        end
        object edtFinModelLineNoOnFinOrderDeliveryPanel: TDBEdit
          Left = 184
          Top = 24
          Width = 49
          Height = 21
          DataField = 'FIN_MODEL_LINE_NO'
          DataSource = dsBinding
          TabOrder = 3
        end
        inline frBaseDateOnFinOrderDeliveryPanel: TfrDateFieldEditFrame
          Left = 464
          Top = 24
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 5
          TabStop = True
        end
        object cbDocumentIdentifierStatusOnFinOrderDeliveryPanel: TJvDBComboBox
          Left = 576
          Top = 24
          Width = 97
          Height = 21
          DataField = 'DOCUMENT_IDENTIFIER_STATUS'
          DataSource = dsBinding
          ItemHeight = 13
          Items.Strings = (
            '< '#1074#1089#1080#1095#1082#1080' >'
            #1054#1095#1072#1082#1074#1072#1085
            #1056#1077#1072#1083#1077#1085)
          TabOrder = 6
          Values.Strings = (
            ''
            '2'
            '3')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object edtDocumentIdentifierOnFinOrderDeliveryPanel: TDBEdit
          Left = 680
          Top = 24
          Width = 65
          Height = 21
          DataField = 'DOCUMENT_IDENTIFIER'
          DataSource = dsBinding
          TabOrder = 7
        end
        inline frPartnerOnFinOrderDeliveryPanel: TfrPartnerFieldEditFrameBald
          Left = 240
          Top = 24
          Width = 217
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 4
          TabStop = True
          inherited gbPartner: TGroupBox
            Width = 232
            inherited pnlNameAndButtons: TPanel
              Width = 143
              inherited pnlRightButtons: TPanel
                Left = 107
              end
              inherited pnlPartnerName: TPanel
                Width = 107
                inherited edtPartnerName: TDBEdit
                  Width = 93
                end
                inherited cbPartner: TJvDBLookupCombo
                  Width = 108
                end
              end
            end
            inherited pnlPaddingRight: TPanel
              Left = 224
            end
          end
        end
        object gbFinOrderBindingOnFinOrderDeliveryPanel: TGroupBox
          Left = 432
          Top = 56
          Width = 329
          Height = 65
          Caption = ' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1085#1072' '#1054#1055#1060' '
          TabOrder = 8
          object lblDeliveryDealTypeOnFinOrderDeliveryPanel: TLabel
            Left = 16
            Top = 16
            Width = 19
            Height = 13
            Caption = #1058#1080#1087
            FocusControl = cbDeliveryDealTypeOnFinOrderDeliveryPanel
          end
          object lblDeliveryTypeOnFinOrderDeliveryPanel: TLabel
            Left = 256
            Top = 16
            Width = 19
            Height = 13
            Caption = #1042#1080#1076
            FocusControl = cbDeliveryTypeOnFinOrderDeliveryPanel
          end
          object lblDeliveryNoOnFinOrderDeliveryPanel: TLabel
            Left = 200
            Top = 16
            Width = 42
            Height = 13
            Caption = #1054#1055#1044' No'
            FocusControl = edtDeliveryNoOnFinOrderDeliveryPanel
          end
          object lblDCDNoOnFinOrderDeliveryPanel: TLabel
            Left = 144
            Top = 16
            Width = 43
            Height = 13
            Caption = #1055#1044#1044' No'
            FocusControl = edtDCDNoOnFinOrderDeliveryPanel
          end
          object lblDCDBranchOnFinOrderDeliveryPanel: TLabel
            Left = 80
            Top = 16
            Width = 51
            Height = 13
            Caption = #1058#1055' '#1043#1083'.'
            FocusControl = cbDCDBranchOnFinOrderDeliveryPanel
          end
          object cbDeliveryDealTypeOnFinOrderDeliveryPanel: TJvDBLookupCombo
            Left = 16
            Top = 32
            Width = 57
            Height = 21
            DropDownWidth = 220
            DeleteKeyClear = False
            DisplayAllFields = True
            DataField = 'DELIVERY_DEAL_TYPE_CODE'
            DataSource = dsBinding
            DisplayEmpty = '< '#1074#1089'. >'
            LookupField = 'BORDER_DEAL_TYPE_CODE'
            LookupDisplay = 'BORDER_DEAL_TYPE_ABBREV'
            LookupSource = dsDeliveryDealTypes
            TabOrder = 0
          end
          object cbDeliveryTypeOnFinOrderDeliveryPanel: TJvDBLookupCombo
            Left = 256
            Top = 32
            Width = 57
            Height = 21
            DataField = 'DELIVERY_TYPE_CODE'
            DataSource = dsBinding
            DisplayEmpty = '< '#1074#1089'. >'
            LookupField = 'DELIVERY_TYPE_CODE'
            LookupDisplay = 'DELIVERY_TYPE_ABBREV'
            LookupSource = dsDeliveryTypes
            TabOrder = 1
          end
          object edtDeliveryNoOnFinOrderDeliveryPanel: TDBEdit
            Left = 200
            Top = 32
            Width = 49
            Height = 21
            DataField = 'DELIVERY_PROJECT_CODE'
            DataSource = dsBinding
            TabOrder = 2
          end
          object edtDCDNoOnFinOrderDeliveryPanel: TDBEdit
            Left = 144
            Top = 32
            Width = 49
            Height = 21
            DataField = 'DCD_CODE'
            DataSource = dsBinding
            TabOrder = 3
          end
          object cbDCDBranchOnFinOrderDeliveryPanel: TJvDBLookupCombo
            Left = 80
            Top = 32
            Width = 57
            Height = 21
            DataField = 'DCD_BRANCH_CODE'
            DataSource = dsBinding
            DisplayEmpty = '< '#1074#1089'. >'
            LookupField = 'BRANCH_CODE'
            LookupDisplay = 'BRANCH_CODE_AND_NAME'
            LookupSource = dsBranches
            TabOrder = 4
          end
        end
      end
      object pnlFinOrderBOIO: TPanel
        Left = 0
        Top = 944
        Width = 773
        Height = 128
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 14
        Visible = False
        object lblFinOrderBranchOnFinOrderBOIOPanel: TLabel
          Left = 8
          Top = 8
          Width = 51
          Height = 13
          Caption = #1058#1055' '#1043#1083'.'
          FocusControl = cbFinOrderBranchOnFinOrderBOIOPanel
        end
        object lblFinOrderNoOnFinOrderBOIOPanel: TLabel
          Left = 72
          Top = 8
          Width = 44
          Height = 13
          Caption = #1054#1055#1060' No'
          FocusControl = edtFinOrderNoOnFinOrderBOIOPanel
        end
        object lblFinModelLineTypeOnFinOrderBOIOPanel: TLabel
          Left = 128
          Top = 8
          Width = 99
          Height = 13
          Caption = #1056#1077#1076' '#1086#1090' '#1056'-'#1052#1054#1044#1045#1083'-'#1060
          FocusControl = cbFinModelLineTypeOnFinOrderBOIOPanel
        end
        object lblBaseDateOnFinOrderBOIOPanel: TLabel
          Left = 464
          Top = 8
          Width = 63
          Height = 13
          Caption = #1041#1072#1079#1086#1074#1072' '#1076#1072#1090#1072
          FocusControl = frBaseDateOnFinOrderBOIOPanel
        end
        object lblDocumentIdentifierStatusOnFinOrderBOIOPanel: TLabel
          Left = 576
          Top = 8
          Width = 89
          Height = 13
          Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1089#1090#1072#1090#1091#1089
          FocusControl = cbDocumentIdentifierStatusOnFinOrderBOIOPanel
        end
        object lblDocumentIdentifierOnFinOrderBOIOPanel: TLabel
          Left = 680
          Top = 8
          Width = 48
          Height = 13
          Caption = #1044#1086#1082'. '#1086#1089#1085'.'
          FocusControl = edtDocumentIdentifierOnFinOrderBOIOPanel
        end
        object lblPartnerOnFinOrderBOIOPanel: TLabel
          Left = 240
          Top = 8
          Width = 49
          Height = 13
          Caption = #1055#1072#1088#1090#1085#1100#1086#1088
          FocusControl = frPartnerOnFinOrderBOIOPanel
        end
        object cbFinOrderBranchOnFinOrderBOIOPanel: TJvDBLookupCombo
          Left = 8
          Top = 24
          Width = 57
          Height = 21
          DataField = 'FIN_ORDER_BRANCH_CODE'
          DataSource = dsBinding
          DisplayEmpty = '< '#1074#1089'. >'
          LookupField = 'BRANCH_CODE'
          LookupDisplay = 'BRANCH_CODE_AND_NAME'
          LookupSource = dsBranches
          TabOrder = 0
        end
        object edtFinOrderNoOnFinOrderBOIOPanel: TDBEdit
          Left = 72
          Top = 24
          Width = 49
          Height = 21
          DataField = 'FIN_ORDER_NO'
          DataSource = dsBinding
          TabOrder = 1
        end
        object cbFinModelLineTypeOnFinOrderBOIOPanel: TJvDBLookupCombo
          Left = 128
          Top = 24
          Width = 57
          Height = 21
          DataField = 'FIN_MODEL_LINE_TYPE_CODE'
          DataSource = dsBinding
          DisplayEmpty = '< '#1074#1089'. >'
          LookupField = 'FIN_MODEL_LINE_TYPE_CODE'
          LookupDisplay = 'FIN_MODEL_LINE_TYPE_ABBREV'
          LookupSource = dsFinModelLineTypes
          TabOrder = 2
        end
        object edtFinModelLineNoOnFinOrderBOIOPanel: TDBEdit
          Left = 184
          Top = 24
          Width = 49
          Height = 21
          DataField = 'FIN_MODEL_LINE_NO'
          DataSource = dsBinding
          TabOrder = 3
        end
        inline frBaseDateOnFinOrderBOIOPanel: TfrDateFieldEditFrame
          Left = 464
          Top = 24
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 5
          TabStop = True
        end
        object cbDocumentIdentifierStatusOnFinOrderBOIOPanel: TJvDBComboBox
          Left = 576
          Top = 24
          Width = 97
          Height = 21
          DataField = 'DOCUMENT_IDENTIFIER_STATUS'
          DataSource = dsBinding
          ItemHeight = 13
          Items.Strings = (
            '< '#1074#1089#1080#1095#1082#1080' >'
            #1054#1095#1072#1082#1074#1072#1085
            #1056#1077#1072#1083#1077#1085)
          TabOrder = 6
          Values.Strings = (
            ''
            '2'
            '3')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object edtDocumentIdentifierOnFinOrderBOIOPanel: TDBEdit
          Left = 680
          Top = 24
          Width = 65
          Height = 21
          DataField = 'DOCUMENT_IDENTIFIER'
          DataSource = dsBinding
          TabOrder = 7
        end
        inline frPartnerOnFinOrderBOIOPanel: TfrPartnerFieldEditFrameBald
          Left = 240
          Top = 24
          Width = 217
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 4
          TabStop = True
          inherited gbPartner: TGroupBox
            Width = 232
            inherited pnlNameAndButtons: TPanel
              Width = 143
              inherited pnlRightButtons: TPanel
                Left = 107
              end
              inherited pnlPartnerName: TPanel
                Width = 107
                inherited edtPartnerName: TDBEdit
                  Width = 93
                end
                inherited cbPartner: TJvDBLookupCombo
                  Width = 108
                end
              end
            end
            inherited pnlPaddingRight: TPanel
              Left = 224
            end
          end
        end
        object gbFinOrderBindingOnFinOrderBOIOPanel: TGroupBox
          Left = 440
          Top = 56
          Width = 321
          Height = 65
          Caption = ' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1085#1072' '#1054#1055#1060' '
          TabOrder = 8
          object lblBudgetOrderClassOnFinOrderBOIOPanel: TLabel
            Left = 16
            Top = 16
            Width = 19
            Height = 13
            Caption = #1058#1080#1087
            FocusControl = cbBudgetOrderClassOnFinOrderBOIOPanel
          end
          object lblBOIOrderNoOnFinOrderBOIOPanel: TLabel
            Left = 256
            Top = 16
            Width = 30
            Height = 13
            Caption = #1054#1051#1041#1057
            FocusControl = edtBOIOrderNoOnFinOrderBOIOPanel
          end
          object lblBudgetOrderItemNoOnFinOrderBOIOPanel: TLabel
            Left = 200
            Top = 16
            Width = 22
            Height = 13
            Caption = #1051#1041#1057
            FocusControl = edtBudgetOrderItemNoOnFinOrderBOIOPanel
          end
          object lblBudgetOrderNoOnFinOrderBOIOPanel: TLabel
            Left = 144
            Top = 16
            Width = 14
            Height = 13
            Caption = #1041#1057
            FocusControl = edtBudgetOrderNoOnFinOrderBOIOPanel
          end
          object lblBudgetOrderBranchOnFinOrderBOIOPanel: TLabel
            Left = 80
            Top = 16
            Width = 51
            Height = 13
            Caption = #1058#1055' '#1043#1083'.'
            FocusControl = cbBudgetOrderBranchOnFinOrderBOIOPanel
          end
          object cbBudgetOrderClassOnFinOrderBOIOPanel: TJvDBLookupCombo
            Left = 16
            Top = 32
            Width = 57
            Height = 21
            DropDownWidth = 220
            DeleteKeyClear = False
            DisplayAllFields = True
            DataField = 'BUDGET_ORDER_CLASS_CODE'
            DataSource = dsBinding
            DisplayEmpty = '< '#1074#1089'. >'
            LookupField = 'BUDGET_ORDER_CLASS_CODE'
            LookupDisplay = 'BUDGET_ORDER_CLASS_NAME'
            LookupSource = dsBudgetOrderClasses
            TabOrder = 0
          end
          object edtBOIOrderNoOnFinOrderBOIOPanel: TDBEdit
            Left = 256
            Top = 32
            Width = 49
            Height = 21
            DataField = 'BOI_ORDER_CODE'
            DataSource = dsBinding
            TabOrder = 1
          end
          object edtBudgetOrderItemNoOnFinOrderBOIOPanel: TDBEdit
            Left = 200
            Top = 32
            Width = 49
            Height = 21
            DataField = 'BUDGET_ORDER_ITEM_CODE'
            DataSource = dsBinding
            TabOrder = 2
          end
          object edtBudgetOrderNoOnFinOrderBOIOPanel: TDBEdit
            Left = 144
            Top = 32
            Width = 49
            Height = 21
            DataField = 'BUDGET_ORDER_CODE'
            DataSource = dsBinding
            TabOrder = 3
          end
          object cbBudgetOrderBranchOnFinOrderBOIOPanel: TJvDBLookupCombo
            Left = 80
            Top = 32
            Width = 57
            Height = 21
            DeleteKeyClear = False
            DataField = 'BUDGET_ORDER_BRANCH_CODE'
            DataSource = dsBinding
            DisplayEmpty = '< '#1074#1089'. >'
            LookupField = 'BRANCH_CODE'
            LookupDisplay = 'BRANCH_IDENTIFIER'
            LookupSource = dsBranches
            TabOrder = 4
          end
        end
      end
      object pnlFinOrderGroupSale: TPanel
        Left = 0
        Top = 1072
        Width = 773
        Height = 128
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 15
        Visible = False
        object lblFinOrderBranchOnFinOrderGroupSalePanel: TLabel
          Left = 8
          Top = 8
          Width = 51
          Height = 13
          Caption = #1058#1055' '#1043#1083'.'
          FocusControl = cbFinOrderBranchOnFinOrderGroupSalePanel
        end
        object lblFinOrderNoOnFinOrderGroupSalePanel: TLabel
          Left = 72
          Top = 8
          Width = 44
          Height = 13
          Caption = #1054#1055#1060' No'
          FocusControl = edtFinOrderNoOnFinOrderGroupSalePanel
        end
        object lblFinModelLineTypeOnFinOrderGroupSalePanel: TLabel
          Left = 128
          Top = 8
          Width = 99
          Height = 13
          Caption = #1056#1077#1076' '#1086#1090' '#1056'-'#1052#1054#1044#1045#1083'-'#1060
          FocusControl = cbFinModelLineTypeOnFinOrderGroupSalePanel
        end
        object lblBaseDateOnFinOrderGroupSalePanel: TLabel
          Left = 464
          Top = 8
          Width = 63
          Height = 13
          Caption = #1041#1072#1079#1086#1074#1072' '#1076#1072#1090#1072
          FocusControl = frBaseDateOnFinOrderGroupSalePanel
        end
        object lblDocumentIdentifierStatusOnFinOrderGroupSalePanel: TLabel
          Left = 576
          Top = 8
          Width = 89
          Height = 13
          Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1089#1090#1072#1090#1091#1089
          FocusControl = cbDocumentIdentifierStatusOnFinOrderGroupSalePanel
        end
        object lblDocumentIdentifierOnFinOrderGropupSalePanel: TLabel
          Left = 680
          Top = 8
          Width = 48
          Height = 13
          Caption = #1044#1086#1082'. '#1086#1089#1085'.'
          FocusControl = edtDocumentIdentifierOnFinOrderGropupSalePanel
        end
        object lblPartnerOnFinOrderGroupSalePanel: TLabel
          Left = 240
          Top = 8
          Width = 49
          Height = 13
          Caption = #1055#1072#1088#1090#1085#1100#1086#1088
          FocusControl = frPartnerOnFinOrderGroupSalePanel
        end
        object cbFinOrderBranchOnFinOrderGroupSalePanel: TJvDBLookupCombo
          Left = 8
          Top = 24
          Width = 57
          Height = 21
          DataField = 'FIN_ORDER_BRANCH_CODE'
          DataSource = dsBinding
          DisplayEmpty = '< '#1074#1089'. >'
          LookupField = 'BRANCH_CODE'
          LookupDisplay = 'BRANCH_CODE_AND_NAME'
          LookupSource = dsBranches
          TabOrder = 0
        end
        object edtFinOrderNoOnFinOrderGroupSalePanel: TDBEdit
          Left = 72
          Top = 24
          Width = 49
          Height = 21
          DataField = 'FIN_ORDER_NO'
          DataSource = dsBinding
          TabOrder = 1
        end
        object cbFinModelLineTypeOnFinOrderGroupSalePanel: TJvDBLookupCombo
          Left = 128
          Top = 24
          Width = 57
          Height = 21
          DataField = 'FIN_MODEL_LINE_TYPE_CODE'
          DataSource = dsBinding
          DisplayEmpty = '< '#1074#1089'. >'
          LookupField = 'FIN_MODEL_LINE_TYPE_CODE'
          LookupDisplay = 'FIN_MODEL_LINE_TYPE_ABBREV'
          LookupSource = dsFinModelLineTypes
          TabOrder = 2
        end
        object edtFinModelLineNoOnFinOrderGroupSalePanel: TDBEdit
          Left = 184
          Top = 24
          Width = 49
          Height = 21
          DataField = 'FIN_MODEL_LINE_NO'
          DataSource = dsBinding
          TabOrder = 3
        end
        inline frBaseDateOnFinOrderGroupSalePanel: TfrDateFieldEditFrame
          Left = 464
          Top = 24
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 5
          TabStop = True
        end
        object cbDocumentIdentifierStatusOnFinOrderGroupSalePanel: TJvDBComboBox
          Left = 576
          Top = 24
          Width = 97
          Height = 21
          DataField = 'DOCUMENT_IDENTIFIER_STATUS'
          DataSource = dsBinding
          ItemHeight = 13
          Items.Strings = (
            '< '#1074#1089#1080#1095#1082#1080' >'
            #1054#1095#1072#1082#1074#1072#1085
            #1056#1077#1072#1083#1077#1085)
          TabOrder = 6
          Values.Strings = (
            ''
            '2'
            '3')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object edtDocumentIdentifierOnFinOrderGropupSalePanel: TDBEdit
          Left = 680
          Top = 24
          Width = 65
          Height = 21
          DataField = 'DOCUMENT_IDENTIFIER'
          DataSource = dsBinding
          TabOrder = 7
        end
        inline frPartnerOnFinOrderGroupSalePanel: TfrPartnerFieldEditFrameBald
          Left = 240
          Top = 24
          Width = 217
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 4
          TabStop = True
          inherited gbPartner: TGroupBox
            Width = 232
            inherited pnlNameAndButtons: TPanel
              Width = 143
              inherited pnlRightButtons: TPanel
                Left = 107
              end
              inherited pnlPartnerName: TPanel
                Width = 107
                inherited edtPartnerName: TDBEdit
                  Width = 93
                end
                inherited cbPartner: TJvDBLookupCombo
                  Width = 108
                end
              end
            end
            inherited pnlPaddingRight: TPanel
              Left = 224
            end
          end
        end
        object gbFinOrderBindingOnFinOrderGroupSalePanel: TGroupBox
          Left = 608
          Top = 56
          Width = 153
          Height = 65
          Caption = ' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1085#1072' '#1054#1055#1060' '
          TabOrder = 8
          object lblSaleGroupCodeOnFinOrderGroupSalePanel: TLabel
            Left = 80
            Top = 16
            Width = 36
            Height = 13
            Caption = #1043#1088#1054#1055#1055
            FocusControl = edtSaleGroupCodeOnFinOrderGroupSalePanel
          end
          object lblSaleGroupBranchOnFinOrderGroupSalePanel: TLabel
            Left = 16
            Top = 16
            Width = 51
            Height = 13
            Caption = #1058#1055' '#1043#1083'.'
            FocusControl = cbSaleGroupBranchOnFinOrderGroupSalePanel
          end
          object edtSaleGroupCodeOnFinOrderGroupSalePanel: TDBEdit
            Left = 80
            Top = 32
            Width = 57
            Height = 21
            DataField = 'SALE_GROUP_CODE'
            DataSource = dsBinding
            TabOrder = 0
          end
          object cbSaleGroupBranchOnFinOrderGroupSalePanel: TJvDBLookupCombo
            Left = 16
            Top = 32
            Width = 57
            Height = 21
            DropDownWidth = 250
            DataField = 'SALE_GROUP_BRANCH_CODE'
            DataSource = dsBinding
            DisplayEmpty = '< '#1074#1089'. >'
            LookupField = 'BRANCH_CODE'
            LookupDisplay = 'BRANCH_IDENTIFIER'
            LookupSource = dsBranches
            TabOrder = 1
          end
        end
      end
      object pnlSaleRequestLine: TPanel
        Left = 0
        Top = 1200
        Width = 773
        Height = 48
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 16
        Visible = False
        object lblRequestBranchOnSaleRequestLinePanel: TLabel
          Left = 72
          Top = 8
          Width = 51
          Height = 13
          Caption = #1058#1055' '#1043#1083'.'
          FocusControl = cbRequestBranchOnSaleRequestLinePanel
        end
        object lblRequestNoOnSaleRequestLinePanel: TLabel
          Left = 136
          Top = 8
          Width = 41
          Height = 13
          Caption = #1055#1044#1050' No'
          FocusControl = edtRequestNoOnSaleRequestLinePanel
        end
        object lblSaleDealTypeOnSaleRequestLinePanel: TLabel
          Left = 8
          Top = 8
          Width = 19
          Height = 13
          Caption = #1058#1080#1087
          FocusControl = cbSaleDealTypeOnSaleRequestLinePanel
        end
        object lblRequestLineNoOnSaleRequestLinePanel: TLabel
          Left = 192
          Top = 8
          Width = 41
          Height = 13
          Caption = #1054#1044#1050' No'
          FocusControl = edtRequestLineNoOnSaleRequestLinePanel
        end
        object cbRequestBranchOnSaleRequestLinePanel: TJvDBLookupCombo
          Left = 72
          Top = 24
          Width = 57
          Height = 21
          DataField = 'REQUEST_BRANCH_CODE'
          DataSource = dsBinding
          DisplayEmpty = '< '#1074#1089'. >'
          LookupField = 'BRANCH_CODE'
          LookupDisplay = 'BRANCH_CODE_AND_NAME'
          LookupSource = dsBranches
          TabOrder = 1
        end
        object edtRequestNoOnSaleRequestLinePanel: TDBEdit
          Left = 136
          Top = 24
          Width = 49
          Height = 21
          DataField = 'REQUEST_NO'
          DataSource = dsBinding
          TabOrder = 2
        end
        object cbSaleDealTypeOnSaleRequestLinePanel: TJvDBLookupCombo
          Left = 8
          Top = 24
          Width = 57
          Height = 21
          DropDownWidth = 220
          DeleteKeyClear = False
          DisplayAllFields = True
          DataField = 'SALE_DEAL_TYPE_CODE'
          DataSource = dsBinding
          DisplayEmpty = '< '#1074#1089'. >'
          LookupField = 'SALE_DEAL_TYPE_CODE'
          LookupDisplay = 'SALE_DEAL_TYPE_ABBREV'
          LookupSource = dsSaleDealTypes
          TabOrder = 0
        end
        object edtRequestLineNoOnSaleRequestLinePanel: TDBEdit
          Left = 192
          Top = 24
          Width = 49
          Height = 21
          DataField = 'REQUEST_LINE_NO'
          DataSource = dsBinding
          TabOrder = 3
        end
      end
    end
  end
  object pnlBndProcessCombo: TPanel [2]
    Left = 136
    Top = 4
    Width = 481
    Height = 25
    BevelOuter = bvNone
    TabOrder = 1
    object cbBndProcess: TJvDBLookupCombo
      Left = 8
      Top = 0
      Width = 465
      Height = 21
      DropDownCount = 12
      DropDownWidth = 506
      EscapeKeyReset = False
      DeleteKeyClear = False
      DisplayAllFields = True
      DataField = 'BND_PROCESS_CODE'
      DataSource = dsBinding
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      LookupField = 'PROCESS_CODE'
      LookupDisplay = 
        'PROCESS_ABBREV;PROCESS_NAME;IS_INBOUND_PROCESS;IS_OUTBOUND_PROCE' +
        'SS'
      LookupSource = dsProcesses
      TabOrder = 0
    end
  end
  inherited dsData: TDataSource
    Left = 32
  end
  object cdsProcesses: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conStore
    Params = <
      item
        DataType = ftFloat
        Name = 'IS_INBOUND_PROCESS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_OUTBOUND_PROCESS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_REAL_STORE_DEAL_PROCESS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PLAN_STORE_DEAL_PROCESS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROJ_STORE_DEAL_PROCESS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_FINANCIAL_PROCESS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_FINANCIAL_PROCESS'
        ParamType = ptInput
      end>
    ProviderName = 'prvFilteredProcesses'
    BeforeOpen = cdsProcessesBeforeOpen
    Left = 320
    object cdsProcessesPROCESS_CODE: TAbmesFloatField
      FieldName = 'PROCESS_CODE'
    end
    object cdsProcessesPROCESS_NO: TAbmesFloatField
      FieldName = 'PROCESS_NO'
    end
    object cdsProcessesPROCESS_ABBREV: TAbmesWideStringField
      DisplayWidth = 10
      FieldName = 'PROCESS_ABBREV'
      Size = 100
    end
    object cdsProcessesPROCESS_NAME: TAbmesWideStringField
      DisplayWidth = 41
      FieldName = 'PROCESS_NAME'
      Size = 100
    end
    object cdsProcessesIS_INBOUND_PROCESS: TAbmesFloatField
      Alignment = taCenter
      DisplayWidth = 1
      FieldName = 'IS_INBOUND_PROCESS'
      DisplayBoolValues = #1055';'
      FieldValueType = fvtBoolean
    end
    object cdsProcessesIS_OUTBOUND_PROCESS: TAbmesFloatField
      Alignment = taCenter
      DisplayWidth = 1
      FieldName = 'IS_OUTBOUND_PROCESS'
      DisplayBoolValues = #1058';'
      FieldValueType = fvtBoolean
    end
  end
  object dsProcesses: TDataSource
    DataSet = cdsProcesses
    Left = 320
    Top = 32
  end
  object cdsBinding: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    AfterInsert = cdsBindingAfterInsert
    AfterEdit = cdsBindingAfterEdit
    BeforePost = cdsBindingBeforePost
    Left = 360
    object cdsBindingBND_PROCESS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_CODE'
    end
    object cdsBindingSALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object cdsBindingSALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_BRANCH_CODE'
    end
    object cdsBindingSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
    end
    object cdsBindingSALE_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_TYPE_CODE'
    end
    object cdsBindingSALE_SHIPMENT_NO: TAbmesFloatField
      FieldName = 'SALE_SHIPMENT_NO'
    end
    object cdsBindingCLIENT_COMPANY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_CODE'
    end
    object cdsBindingPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'PRODUCTION_ORDER_TYPE_CODE'
    end
    object cdsBindingIS_WASTE_COMPENSATOR_STATUS: TAbmesFloatField
      FieldName = 'IS_WASTE_COMPENSATOR_STATUS'
    end
    object cdsBindingNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      OnValidate = cdsBindingNO_AS_TEXTValidate
      Size = 255
    end
    object cdsBindingFORK_NO: TAbmesFloatField
      FieldName = 'FORK_NO'
    end
    object cdsBindingIS_WASTE_FORK_STATUS: TAbmesFloatField
      FieldName = 'IS_WASTE_FORK_STATUS'
    end
    object cdsBindingML_MODEL_STAGE_NO: TAbmesFloatField
      FieldName = 'ML_MODEL_STAGE_NO'
    end
    object cdsBindingMLMS_OPERATION_NO: TAbmesFloatField
      FieldName = 'MLMS_OPERATION_NO'
    end
    object cdsBindingMLMS_OPERATION_VARIANT_NO: TAbmesFloatField
      FieldName = 'MLMS_OPERATION_VARIANT_NO'
    end
    object cdsBindingDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DEAL_TYPE_CODE'
    end
    object cdsBindingDCD_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_BRANCH_CODE'
    end
    object cdsBindingDCD_CODE: TAbmesFloatField
      FieldName = 'DCD_CODE'
    end
    object cdsBindingDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
    end
    object cdsBindingDELIVERY_TYPE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_TYPE_CODE'
    end
    object cdsBindingVENDOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'VENDOR_COMPANY_CODE'
    end
    object cdsBindingINVOICE_NO: TAbmesFloatField
      FieldName = 'INVOICE_NO'
    end
    object cdsBindingINVOICE_ABBREV: TAbmesWideStringField
      FieldName = 'INVOICE_ABBREV'
      Size = 255
    end
    object cdsBindingINVOICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'INVOICE_DATE'
    end
    object cdsBindingIS_PROFORM_INVOICE_STATUS: TAbmesFloatField
      FieldName = 'IS_PROFORM_INVOICE_STATUS'
    end
    object cdsBindingOTHER_STORE_DEAL_STORE_CODE: TAbmesFloatField
      FieldName = 'OTHER_STORE_DEAL_STORE_CODE'
    end
    object cdsBindingOTHER_STORE_DEAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'OTHER_STORE_DEAL_DATE'
    end
    object cdsBindingOTHER_STORE_DEAL_NO: TAbmesFloatField
      FieldName = 'OTHER_STORE_DEAL_NO'
    end
    object cdsBindingBUDGET_ORDER_CLASS_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CLASS_CODE'
    end
    object cdsBindingBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
    end
    object cdsBindingBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
    end
    object cdsBindingBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_CODE'
    end
    object cdsBindingBOI_ORDER_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_CODE'
    end
    object cdsBindingFIN_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_BRANCH_CODE'
    end
    object cdsBindingFIN_ORDER_NO: TAbmesFloatField
      FieldName = 'FIN_ORDER_NO'
    end
    object cdsBindingFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_TYPE_CODE'
    end
    object cdsBindingFIN_MODEL_LINE_NO: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_NO'
    end
    object cdsBindingPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
    end
    object cdsBindingBASE_DATE: TAbmesSQLTimeStampField
      FieldName = 'BASE_DATE'
    end
    object cdsBindingDOCUMENT_IDENTIFIER_STATUS: TAbmesFloatField
      FieldName = 'DOCUMENT_IDENTIFIER_STATUS'
    end
    object cdsBindingDOCUMENT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DOCUMENT_IDENTIFIER'
    end
    object cdsBindingSALE_GROUP_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_BRANCH_CODE'
    end
    object cdsBindingSALE_GROUP_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_CODE'
    end
    object cdsBindingBUDGET_ORDER_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE_CODE'
    end
    object cdsBindingBUDGET_ORDER_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_PRODUCT_CODE'
    end
    object cdsBindingPROJECT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'PROJECT_PRODUCT_CODE'
    end
    object cdsBindingORG_TASK_PROPOSAL_STATE_CODE: TAbmesFloatField
      FieldName = 'ORG_TASK_PROPOSAL_STATE_CODE'
    end
    object cdsBindingREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object cdsBindingREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
    object cdsBindingREQUEST_LINE_NO: TAbmesFloatField
      FieldName = 'REQUEST_LINE_NO'
    end
    object cdsBindingFIN_CLASS_CODE: TAbmesFloatField
      FieldName = 'FIN_CLASS_CODE'
    end
  end
  object dsBinding: TDataSource
    DataSet = cdsBinding
    Left = 360
    Top = 32
  end
  object cdsProductionOrderTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Params = <>
    ProviderName = 'prvProductionOrderTypes'
    Left = 504
    object cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'PRODUCTION_ORDER_TYPE_CODE'
    end
    object cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField
      DisplayWidth = 3
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
      FieldValueType = fvtBoolean
    end
  end
  object dsProductionOrderTypes: TDataSource
    DataSet = cdsProductionOrderTypes
    Left = 504
    Top = 32
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Params = <>
    ProviderName = 'prvBranches'
    Left = 544
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
    end
    object cdsBranchesBRANCH_NO: TAbmesFloatField
      FieldName = 'BRANCH_NO'
    end
    object cdsBranchesNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 50
    end
    object cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BRANCH_IDENTIFIER'
      Size = 46
    end
    object cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField
      FieldName = 'BRANCH_CODE_AND_NAME'
      Size = 143
    end
  end
  object dsBranches: TDataSource
    DataSet = cdsBranches
    Left = 544
    Top = 32
  end
  object cdsSaleTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Params = <>
    ProviderName = 'prvSaleTypes'
    Left = 584
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
    Left = 584
    Top = 32
  end
  object cdsSaleDealTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Params = <>
    ProviderName = 'prvSaleDealTypes'
    Left = 624
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
    Left = 624
    Top = 32
  end
  object cdsDeliveryTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDeliveries
    Params = <>
    ProviderName = 'prvDeliveryTypes'
    Left = 664
    object cdsDeliveryTypesDELIVERY_TYPE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_TYPE_CODE'
    end
    object cdsDeliveryTypesDELIVERY_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'DELIVERY_TYPE_ABBREV'
      Size = 5
    end
  end
  object dsDeliveryTypes: TDataSource
    DataSet = cdsDeliveryTypes
    Left = 664
    Top = 32
  end
  object cdsDeliveryDealTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDeliveries
    Params = <>
    ProviderName = 'prvDeliveryDealTypes'
    Left = 704
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
    Left = 704
    Top = 32
  end
  object cdsBudgetOrderClasses: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conBudget
    Params = <>
    ProviderName = 'prvBudgetOrderClasses'
    Left = 744
    object cdsBudgetOrderClassesBUDGET_ORDER_CLASS_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CLASS_CODE'
    end
    object cdsBudgetOrderClassesBUDGET_ORDER_CLASS_NAME: TAbmesWideStringField
      FieldName = 'BUDGET_ORDER_CLASS_NAME'
      Size = 100
    end
  end
  object dsBudgetOrderClasses: TDataSource
    DataSet = cdsBudgetOrderClasses
    Left = 744
    Top = 32
  end
  object cdsFinModelLineTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conFinance
    Params = <>
    ProviderName = 'prvFinModelLineTypes'
    Left = 464
    object cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_TYPE_CODE'
    end
    object cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_NO: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_TYPE_NO'
    end
    object cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'FIN_MODEL_LINE_TYPE_NAME'
      Size = 100
    end
    object cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'FIN_MODEL_LINE_TYPE_ABBREV'
      Size = 100
    end
  end
  object dsFinModelLineTypes: TDataSource
    DataSet = cdsFinModelLineTypes
    Left = 464
    Top = 32
  end
  object cdsOrgTaskProposalStates: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conBudget
    Params = <>
    ProviderName = 'prvOrgTaskProposalStates'
    Left = 424
    object cdsOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_CODE: TAbmesFloatField
      FieldName = 'ORG_TASK_PROPOSAL_STATE_CODE'
      Required = True
    end
    object cdsOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_NO: TAbmesFloatField
      FieldName = 'ORG_TASK_PROPOSAL_STATE_NO'
      Required = True
    end
    object cdsOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_NAME: TAbmesWideStringField
      FieldName = 'ORG_TASK_PROPOSAL_STATE_NAME'
      Required = True
    end
    object cdsOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_ABBREV: TAbmesWideStringField
      FieldName = 'ORG_TASK_PROPOSAL_STATE_ABBREV'
      Required = True
      Size = 100
    end
  end
  object dsOrgTaskProposalStates: TDataSource
    DataSet = cdsOrgTaskProposalStates
    Left = 424
    Top = 32
  end
end
