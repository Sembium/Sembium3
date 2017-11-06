inherited fmBOIMarkingOrdersFilter: TfmBOIMarkingOrdersFilter
  ClientHeight = 516
  ExplicitHeight = 542
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 481
    ExplicitTop = 481
  end
  inherited gbBudgetOrder: TGroupBox
    inherited lblFormCaption: TLabel
      Width = 457
      Caption = 
        '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' - '#1052#1072#1088#1082#1080#1088#1072#1097#1080' '#1087#1086' '#1051#1080#1084#1080#1090#1080' '#1086#1090' %BudgetOrderNa' +
        'mePlural% '#1079#1072' '#1057#1088#1077#1076#1072
      ExplicitWidth = 457
    end
  end
  inherited gbBOIOrders: TGroupBox
    Height = 145
    ExplicitHeight = 145
    inherited frConsumerDept: TfrDeptFieldEditFrame
      Left = 224
      Width = 385
      ExplicitLeft = 224
      ExplicitWidth = 385
      inherited gbTreeNode: TGroupBox
        Width = 385
        inherited pnlTreeNode: TPanel
          Width = 369
          inherited pnlTreeNodeName: TPanel
            Width = 222
            inherited edtTreeNodeName: TDBEdit
              Width = 221
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 222
          end
          inherited pnlRightButtons: TPanel
            Left = 333
          end
        end
      end
    end
    inherited gbBOIOPlanDate: TGroupBox
      Height = 65
      ExplicitHeight = 65
      inherited frBOIOPlanDate: TfrDateIntervalFrame
        Top = 32
        ExplicitTop = 32
      end
    end
    inherited gbBOIOrderCode: TGroupBox
      Width = 73
      ExplicitWidth = 73
      inherited edtBOIOrderCode: TDBEdit
        Width = 57
        ExplicitWidth = 57
      end
    end
    object gbDelivery: TGroupBox
      Left = 224
      Top = 72
      Width = 385
      Height = 65
      Caption = ' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1054#1055#1044' '
      TabOrder = 4
      DesignSize = (
        385
        65)
      object pnlDelivery: TPanel
        Left = 8
        Top = 16
        Width = 369
        Height = 41
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        TabOrder = 0
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
          DataField = 'DELIVERY_DEAL_TYPE_CODE'
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
          EscapeClear = False
          DataField = '_DELIVERY_BRANCH_IDENTIFIER'
          DataSource = dsData
          DisplayEmpty = '< '#1074#1089'. >'
          TabOrder = 1
        end
        object edtDeliveryDCDCode: TDBEdit
          Left = 128
          Top = 16
          Width = 57
          Height = 21
          DataField = 'DCD_CODE'
          DataSource = dsData
          TabOrder = 2
        end
        object edtDeliveryProjectCode: TDBEdit
          Left = 192
          Top = 16
          Width = 57
          Height = 21
          DataField = 'DELIVERY_PROJECT_CODE'
          DataSource = dsData
          TabOrder = 3
        end
      end
    end
  end
  inherited pnlFilterByBOIOrdersExistance: TPanel
    Width = 345
    ExplicitWidth = 345
    inherited chbFilterByBOIOrdersExistance: TAbmesDBCheckBox
      Width = 341
      Caption = ' '#1060#1080#1083#1090#1088#1080#1088#1072#1085#1077' '#1087#1086' '#1057#1098#1076#1098#1088#1078#1072#1085#1077' '#1085#1072' '#1054#1088#1076#1077#1088#1080' - '#1052#1072#1088#1082#1080#1088#1072#1097#1080' '#1087#1086' '#1051#1080#1084#1080#1090
      ExplicitWidth = 341
    end
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Top = 464
  end
  inherited dsFilterVariants: TDataSource
    Top = 464
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Top = 480
  end
  inherited cdsFilterBudgetOrderItemTypes: TAbmesClientDataSet
    Filter = 'BUDGET_ORDER_ITEM_TYPE in (2, 3, 4, 6)'
    Filtered = True
  end
  object cdsDeliveryDealTypes: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDeliveryDealTypes'
    ConnectionBroker = dmMain.conDeliveries
    Left = 240
    Top = 464
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
    Left = 272
    Top = 464
  end
end
