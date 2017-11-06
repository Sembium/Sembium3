inherited fmBOIMarkingOrder: TfmBOIMarkingOrder
  PixelsPerInch = 96
  TextHeight = 13
  inherited gbBudgetOrderStuff: TGroupBox
    inherited lblFormCaption: TLabel
      Width = 338
      Caption = #1054#1088#1076#1077#1088' - '#1052#1072#1088#1082#1080#1088#1072#1097' '#1087#1086' '#1051#1080#1084#1080#1090' '#1086#1090' %BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' - %s'
    end
    inherited gbGenerator: TGroupBox
      inherited frGeneratorDept: TfrDeptFieldEditFrameBald
        inherited dsData: TDataSource
          DataSet = cdsBOIOrderInfo
        end
      end
    end
    inherited gbDeveloperDept: TGroupBox
      inherited frDeveloperDept: TfrDeptFieldEditFrameBald
        inherited dsData: TDataSource
          DataSet = cdsBOIOrderInfo
        end
      end
    end
  end
  inherited gbBOIOrderStuff: TGroupBox
    Caption = 
      ' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1088#1076#1077#1088' - '#1052#1072#1088#1082#1080#1088#1072#1097' '#1087#1086' '#1051#1080#1084#1080#1090' '#1086#1090' %BudgetOrderName% '#1079#1072' ' +
      #1057#1088#1077#1076#1072'  '
    inherited frConsumerDept: TfrDeptFieldEditFrameLabeled
      Width = 337
      inherited gbTreeNode: TGroupBox
        Width = 337
        inherited pnlTreeNode: TPanel
          Width = 321
          inherited pnlTreeNodeName: TPanel
            Width = 174
            inherited edtTreeNodeName: TDBEdit
              Width = 173
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 174
          end
          inherited pnlRightButtons: TPanel
            Left = 285
          end
        end
      end
    end
    inherited gbDecision: TGroupBox
      Left = 504
      Top = 160
      Width = 473
      Height = 113
      TabOrder = 6
      inherited lblDecisionDate: TLabel
        Left = 240
        Top = 64
      end
      inherited frDecisionEmployee: TfrEmployeeFieldEditFrameBald
        Width = 225
        inherited gbEmployee: TGroupBox
          Width = 244
          inherited pnlEmployeeName: TPanel
            Width = 169
            inherited pnlRightButtons: TPanel
              Left = 133
            end
            inherited pnlEmpoyeeNameInner: TPanel
              Width = 133
              inherited edtEmployeeName: TDBEdit
                Width = 139
              end
              inherited cbEmployee: TJvDBLookupCombo
                Width = 132
              end
            end
          end
          inherited pnlPaddingRight: TPanel
            Left = 234
          end
        end
      end
      inherited frDecisionDate: TfrDateFieldEditFrame
        Left = 240
        Top = 80
      end
    end
    object pnlPrices: TPanel
      Left = 8
      Top = 160
      Width = 489
      Height = 113
      BevelOuter = bvNone
      TabOrder = 4
      object gbReal: TGroupBox
        Left = 280
        Top = 0
        Width = 209
        Height = 113
        Caption = ' '#1054#1090#1095#1077#1090' '
        TabOrder = 1
        object lblBOIOrderAccountTotalPrice: TLabel
          Left = 8
          Top = 16
          Width = 47
          Height = 13
          Caption = #1057#1090#1086#1081#1085#1086#1089#1090
        end
        object lblAccountDate: TLabel
          Left = 96
          Top = 16
          Width = 26
          Height = 13
          Caption = #1044#1072#1090#1072
        end
        object lblBaseCurrency4: TLabel
          Left = 68
          Top = 36
          Width = 82
          Height = 13
          Caption = '%BaseCurrency%'
        end
        object edtBOIOrderAccountTotalPrice: TDBEdit
          Left = 8
          Top = 32
          Width = 57
          Height = 21
          DataField = 'ACCOUNT_TOTAL_PRICE'
          DataSource = dsData
          TabOrder = 0
        end
        inline frAccountDate: TfrDateFieldEditFrame
          Left = 96
          Top = 32
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
      object gbPlan: TGroupBox
        Left = 0
        Top = 0
        Width = 273
        Height = 113
        Caption = ' '#1055#1083#1072#1085' '
        TabOrder = 0
        object lblPlanTotalPrice: TLabel
          Left = 8
          Top = 16
          Width = 47
          Height = 13
          Caption = #1057#1090#1086#1081#1085#1086#1089#1090
        end
        object lblPlanDate: TLabel
          Left = 96
          Top = 16
          Width = 26
          Height = 13
          Caption = #1044#1072#1090#1072
        end
        object lblBudgetOrderPlanPercents: TLabel
          Left = 208
          Top = 16
          Width = 155
          Height = 13
          Caption = '% '#1086#1090' %BudgetOrderItemAbbrev%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblBaseCurrency1: TLabel
          Left = 68
          Top = 36
          Width = 82
          Height = 13
          Caption = '%BaseCurrency%'
        end
        object lblPercents4: TLabel
          Left = 259
          Top = 36
          Width = 8
          Height = 13
          Caption = '%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object edtPlanTotalPrice: TDBEdit
          Left = 8
          Top = 32
          Width = 57
          Height = 21
          DataField = 'PLAN_TOTAL_PRICE'
          DataSource = dsData
          TabOrder = 0
        end
        inline frPlanDate: TfrDateFieldEditFrame
          Left = 96
          Top = 32
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 1
          TabStop = True
        end
        object edtBOITotalPricePercent: TDBEdit
          Left = 208
          Top = 32
          Width = 49
          Height = 21
          Color = clBtnFace
          DataField = '_BOI_PRICE_PERCENT'
          DataSource = dsData
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
      end
    end
    object pnlDelivery: TPanel
      Left = 8
      Top = 88
      Width = 969
      Height = 65
      BevelOuter = bvNone
      TabOrder = 3
      DesignSize = (
        969
        65)
      object gbDelivery: TGroupBox
        Left = 0
        Top = 0
        Width = 969
        Height = 65
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = ' ID '#1054#1055#1044' '
        TabOrder = 0
        object lblDeliveryProduct: TLabel
          Left = 248
          Top = 16
          Width = 92
          Height = 13
          Caption = #1059#1087#1088#1103#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
        end
        inline frDelivery: TfrDeliveryProcessObject
          Left = 2
          Top = 7
          Width = 223
          Height = 48
          TabOrder = 0
          TabStop = True
          Visible = False
          OnExit = frDeliveryExit
          inherited lblBranch: TLabel
            Width = 33
          end
          inherited lblRPDNo: TLabel
            Width = 43
          end
          inherited lblDeliveryProjectCode: TLabel
            Width = 42
          end
          inherited lblInvoiceNo: TLabel
            Width = 62
            Visible = False
          end
          inherited lblInvoiceDate: TLabel
            Width = 86
            Visible = False
          end
          inherited lblSaleDealTypeAbbrev: TLabel
            Width = 19
          end
          inherited lblIsProformInvoiceStatusOnDeliveryPanel: TLabel
            Width = 36
            Visible = False
          end
          inherited lblVendorName: TLabel
            Visible = False
          end
          inherited edtInvoiceNo: TDBEdit
            Visible = False
          end
          inherited edtInvoiceAbbrev: TDBEdit
            Visible = False
          end
          inherited frInvoiceDate: TfrDateFieldEditFrame
            Left = 100
            Visible = False
            inherited dsData: TDataSource
              DataSet = frDelivery.pdsProcessObjectParams
            end
          end
          inherited edtVendorName: TDBEdit [15]
            Visible = False
          end
          inherited btnShowProcessObjectForm: TButton
            Left = 440
            Top = 6
            Width = 113
            Visible = False
          end
          inherited edtSaleDealTypeAbbrev: TDBEdit [17]
            ReadOnly = True
          end
        end
        inline frDeliveryProduct: TfrProductFieldEditFrameBald
          Left = 248
          Top = 31
          Width = 713
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 1
          inherited gbTreeNode: TGroupBox
            Width = 729
            inherited pnlTreeNode: TPanel
              Width = 713
              inherited pnlTreeNodeName: TPanel
                Width = 531
                inherited edtTreeNodeName: TDBEdit
                  Width = 530
                end
              end
              inherited pnlTreeNodeNo: TPanel
                Left = 531
              end
              inherited pnlRightButtons: TPanel
                Left = 654
              end
            end
          end
        end
      end
    end
    object pnlDeliveryPrices: TPanel
      Left = 8
      Top = 160
      Width = 489
      Height = 113
      BevelOuter = bvNone
      TabOrder = 5
      object gbDeliveryReal: TGroupBox
        Left = 280
        Top = 0
        Width = 209
        Height = 113
        Caption = ' '#1054#1090#1095#1077#1090' '
        TabOrder = 1
        object lblDeliveryAccountTotalPrice: TLabel
          Left = 8
          Top = 16
          Width = 47
          Height = 13
          Caption = #1057#1090#1086#1081#1085#1086#1089#1090
        end
        object lblDeliveryAccountDate: TLabel
          Left = 96
          Top = 16
          Width = 26
          Height = 13
          Caption = #1044#1072#1090#1072
        end
        object lblBaseCurrency6: TLabel
          Left = 68
          Top = 36
          Width = 82
          Height = 13
          Caption = '%BaseCurrency%'
        end
        object lblDeliveryRealQuantity: TLabel
          Left = 8
          Top = 64
          Width = 59
          Height = 13
          Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
        end
        object dbtDeliveryRealQuantityMeasureAbbrev: TDBText
          Left = 68
          Top = 84
          Width = 33
          Height = 17
          DataField = 'MEASURE_ABBREV'
          DataSource = dsBOIOrderDeliveryData
        end
        object edtDeliveryAccountTotalPrice: TDBEdit
          Left = 8
          Top = 32
          Width = 57
          Height = 21
          Color = clBtnFace
          DataField = 'ACCOUNT_TOTAL_PRICE'
          DataSource = dsBOIOrderDeliveryData
          ReadOnly = True
          TabOrder = 0
        end
        inline frDeliveryAccountDate: TfrDateFieldEditFrame
          Left = 96
          Top = 32
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 1
          TabStop = True
        end
        object edtDeliveryRealQuantity: TDBEdit
          Left = 8
          Top = 80
          Width = 57
          Height = 21
          Color = clBtnFace
          DataField = 'REAL_QUANTITY'
          DataSource = dsBOIOrderDeliveryData
          ReadOnly = True
          TabOrder = 2
        end
      end
      object gbDeliveryPlan: TGroupBox
        Left = 0
        Top = 0
        Width = 273
        Height = 113
        Caption = ' '#1055#1083#1072#1085' '
        TabOrder = 0
        object lblDeliveryPlanTotalPrice: TLabel
          Left = 8
          Top = 16
          Width = 47
          Height = 13
          Caption = #1057#1090#1086#1081#1085#1086#1089#1090
        end
        object lblDeliveryPlanDate: TLabel
          Left = 96
          Top = 16
          Width = 26
          Height = 13
          Caption = #1044#1072#1090#1072
        end
        object lblDeliveryBudgetOrderPlanPercents: TLabel
          Left = 208
          Top = 16
          Width = 155
          Height = 13
          Caption = '% '#1086#1090' %BudgetOrderItemAbbrev%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblBaseCurrency5: TLabel
          Left = 68
          Top = 36
          Width = 82
          Height = 13
          Caption = '%BaseCurrency%'
        end
        object lblPercents5: TLabel
          Left = 259
          Top = 36
          Width = 8
          Height = 13
          Caption = '%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblDeliveryPlanQuantity: TLabel
          Left = 8
          Top = 64
          Width = 59
          Height = 13
          Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
        end
        object dbtDeliveryPlanQuantityMeasureAbbrev: TDBText
          Left = 68
          Top = 84
          Width = 33
          Height = 17
          DataField = 'MEASURE_ABBREV'
          DataSource = dsBOIOrderDeliveryData
        end
        object edtDeliveryPlanTotalPrice: TDBEdit
          Left = 8
          Top = 32
          Width = 57
          Height = 21
          Color = clBtnFace
          DataField = 'PLAN_TOTAL_PRICE'
          DataSource = dsBOIOrderDeliveryData
          ReadOnly = True
          TabOrder = 0
        end
        inline frDeliveryPlanDate: TfrDateFieldEditFrame
          Left = 96
          Top = 32
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 1
          TabStop = True
        end
        object edtDeliveryBOITotalPricePercent: TDBEdit
          Left = 208
          Top = 32
          Width = 49
          Height = 21
          Color = clBtnFace
          DataField = '_BOI_PRICE_PERCENT'
          DataSource = dsBOIOrderDeliveryData
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object edtDeliveryPlanQuantity: TDBEdit
          Left = 8
          Top = 80
          Width = 57
          Height = 21
          Color = clBtnFace
          DataField = 'PLAN_QUANTITY'
          DataSource = dsBOIOrderDeliveryData
          ReadOnly = True
          TabOrder = 3
        end
      end
    end
    object gbDescription: TGroupBox
      Left = 504
      Top = 16
      Width = 473
      Height = 65
      Caption = ' '#1054#1087#1080#1089#1072#1085#1080#1077' '
      TabOrder = 2
      DesignSize = (
        473
        65)
      object edtDescription: TDBEdit
        Left = 8
        Top = 32
        Width = 457
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'DESCRIPTION'
        DataSource = dsData
        TabOrder = 0
      end
    end
  end
  inherited gbBudgetOrderItem: TGroupBox
    inherited gbConsumer: TGroupBox
      inherited frBOIDept: TfrDeptFieldEditFrameBald
        inherited dsData: TDataSource
          DataSet = cdsBOIOrderInfo
        end
      end
    end
    inherited gbItemDates: TGroupBox
      inherited frItemDates: TfrDateIntervalFrame
        inherited dsData: TDataSource
          DataSet = cdsBOIOrderInfo
        end
      end
    end
    inherited frBudgetClass: TfrProductFieldEditFrameLabeled
      inherited dsData: TDataSource
        DataSet = cdsBOIOrderInfo
      end
    end
  end
  inherited alActions: TActionList
    Top = 464
  end
  inherited dsData: TDataSource
    Top = 464
  end
  inherited cdsData: TAbmesClientDataSet
    Top = 464
    inherited cdsDataPLAN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1055#1083#1072#1085#1086#1074#1072' '#1044#1072#1090#1072
      DisplayFormat = 'ww\e\iiii'
    end
    inherited cdsDataACCOUNT_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1054#1090#1095#1077#1090#1085#1072' '#1044#1072#1090#1072
      DisplayFormat = 'ww\e\iiii'
    end
    inherited cdsDataBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      OnChange = cdsDataBND_PROCESS_OBJECT_BRANCH_CODEChange
    end
    inherited cdsDataBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      OnChange = cdsDataBND_PROCESS_OBJECT_CODEChange
    end
  end
  inherited cdsPrintData: TAbmesClientDataSet
    Top = 464
    object cdsPrintDataPLAN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1055#1083#1072#1085#1086#1074#1072' '#1044#1072#1090#1072
      FieldName = 'PLAN_DATE'
      Required = True
      DisplayFormat = 'ww\e\iiii'
    end
    object cdsPrintDataPLAN_TOTAL_PRICE: TAbmesFloatField
      DisplayLabel = #1057#1090#1086#1081#1085#1086#1089#1090
      FieldName = 'PLAN_TOTAL_PRICE'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsPrintDataACCOUNT_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1054#1090#1095#1077#1090#1085#1072' '#1044#1072#1090#1072
      FieldName = 'ACCOUNT_DATE'
      DisplayFormat = 'ww\e\iiii'
    end
    object cdsPrintDataACCOUNT_TOTAL_PRICE: TAbmesFloatField
      DisplayLabel = #1057#1090#1086#1081#1085#1086#1089#1090
      FieldName = 'ACCOUNT_TOTAL_PRICE'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsPrintDataDESCRIPTION: TAbmesWideStringField
      DisplayLabel = #1054#1087#1080#1089#1072#1085#1080#1077
      FieldName = 'DESCRIPTION'
      Required = True
      Size = 100
    end
    object cdsPrintData_BOI_PRICE_PERCENT: TAbmesFloatField
      FieldName = '_BOI_PRICE_PERCENT'
      OnGetText = cdsPrintData_BOI_PRICE_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsPrintDataDCD_CODE: TAbmesFloatField
      FieldName = 'DCD_CODE'
    end
    object cdsPrintDataDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
      FieldValueType = fvtInteger
    end
    object cdsPrintDataDELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      FieldName = 'DELIVERY_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object cdsPrintData_BRANCH_IDENTIFIER: TAbmesWideStringField
      FieldName = '_BRANCH_IDENTIFIER'
      Size = 225
    end
  end
  object cdsBOIOrderDeliveryData: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conBudget
    Params = <
      item
        DataType = ftFloat
        Name = 'DELIVERY_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_OBJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvBOIOrderDeliveryData'
    BeforeOpen = cdsBOIOrderDeliveryDataBeforeOpen
    OnCalcFields = cdsBOIOrderDeliveryDataCalcFields
    Left = 56
    Top = 352
    object cdsBOIOrderDeliveryDataPLAN_TOTAL_PRICE: TAbmesFloatField
      DisplayLabel = #1055#1083#1072#1085#1086#1074#1072' '#1089#1090#1086#1081#1085#1086#1089#1090
      FieldName = 'PLAN_TOTAL_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsBOIOrderDeliveryDataPLAN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1055#1083#1072#1085#1086#1074#1072' '#1076#1072#1090#1072
      FieldName = 'PLAN_DATE'
    end
    object cdsBOIOrderDeliveryDataACCOUNT_TOTAL_PRICE: TAbmesFloatField
      DisplayLabel = #1054#1090#1095#1077#1090#1085#1072' '#1089#1090#1086#1081#1085#1086#1089#1090
      FieldName = 'ACCOUNT_TOTAL_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsBOIOrderDeliveryDataACCOUNT_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1054#1090#1095#1077#1090#1085#1072' '#1076#1072#1090#1072
      FieldName = 'ACCOUNT_DATE'
    end
    object cdsBOIOrderDeliveryData_BOI_PRICE_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_BOI_PRICE_PERCENT'
      OnGetText = cdsBOIOrderDeliveryData_BOI_PRICE_PERCENTGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsBOIOrderDeliveryDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      Required = True
    end
    object cdsBOIOrderDeliveryDataPLAN_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsBOIOrderDeliveryDataMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsBOIOrderDeliveryDataREAL_QUANTITY: TAbmesFloatField
      FieldName = 'REAL_QUANTITY'
      DisplayFormat = ',0'
    end
  end
  object dsBOIOrderDeliveryData: TDataSource
    DataSet = cdsBOIOrderDeliveryData
    Left = 88
    Top = 352
  end
end
