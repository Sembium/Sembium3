inherited fmStoreDealIn: TfmStoreDealIn
  Left = 337
  Top = 160
  Caption = #1054#1090#1095#1077#1090#1085#1086' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1077' '#1085#1072' %ProductClassAbbrev% - %s'
  ClientHeight = 446
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 411
  end
  inherited pnlClient: TPanel
    Height = 411
    inherited pnlProductAndPrice: TPanel
      Top = 119
      Height = 162
      TabOrder = 2
      inherited gbProduct: TGroupBox
        Top = 32
        Height = 121
        Caption = ' '#1055#1086#1089#1090#1098#1087#1074#1072#1085' %ProductClassName% '
        inherited lblAccQuantity: TLabel
          Left = 168
          Top = 70
        end
        inherited lblQuantity: TLabel
          Top = 70
        end
        inherited dbtMeasure: TDBText
          Left = 120
          Top = 88
          Width = 33
        end
        inherited dbtAccMeasure: TDBText
          Left = 366
          Top = 89
          Width = 33
        end
        object lblCurrency: TLabel [4]
          Left = 696
          Top = 70
          Width = 35
          Height = 13
          Caption = #1042#1072#1083#1091#1090#1072
        end
        object lblTotalPrice: TLabel [5]
          Left = 592
          Top = 70
          Width = 56
          Height = 13
          Caption = #1054#1073#1097#1072' '#1094#1077#1085#1072
          FocusControl = edtTotalPrice
        end
        object lblSinglePrice: TLabel [6]
          Left = 480
          Top = 70
          Width = 43
          Height = 13
          Caption = #1045#1076'. '#1094#1077#1085#1072
          FocusControl = edtSinglePrice
        end
        object lblAccountQuantityReadOnly: TLabel [7]
          Left = 264
          Top = 70
          Width = 92
          Height = 13
          Caption = #1048#1079#1095#1080#1089#1083'. '#1089#1095#1077#1090'. '#1082'-'#1074#1086
        end
        inherited edtQuantity: TDBEdit
          Top = 86
          Width = 97
        end
        inherited edtAccQuantity: TDBEdit
          Left = 168
          Top = 86
          Width = 97
        end
        object cbCurrency: TJvDBLookupCombo [10]
          Left = 696
          Top = 86
          Width = 65
          Height = 21
          DataField = '_CURRENCY_NAME'
          DataSource = dsData
          TabOrder = 6
        end
        object edtTotalPrice: TDBEdit [11]
          Left = 592
          Top = 86
          Width = 89
          Height = 21
          DataField = 'TOTAL_PRICE'
          DataSource = dsData
          TabOrder = 5
        end
        object edtSinglePrice: TDBEdit [12]
          Left = 480
          Top = 86
          Width = 97
          Height = 21
          DataField = 'SINGLE_PRICE'
          DataSource = dsData
          TabOrder = 4
        end
        object edtAccountQuantityReadOnly: TDBEdit [13]
          Left = 264
          Top = 86
          Width = 97
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_ACCOUNT_QUANTITY'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 3
        end
      end
    end
    inherited pnlEmployees: TPanel
      Top = 335
      TabOrder = 4
      inherited gbResponsibleEmployees: TGroupBox
        inherited lblOtherEmployee: TLabel
          Width = 24
          Caption = #1055#1054#1051
        end
      end
    end
    inherited pnlDept: TPanel
      Top = 281
      TabOrder = 3
      inherited frDept: TfrDeptFieldEditFrame
        inherited gbTreeNode: TGroupBox
          Caption = ' '#1058#1055' '#1055#1086#1089#1090#1098#1087#1074#1072#1097#1086' %ProductClassAbbrev% '
        end
        inherited dsData: TDataSource
          DataSet = cdsData
        end
      end
    end
    inherited frStoreDealProcessBinding: TfrStoreDealProcessBinding
      TabOrder = 1
      inherited grpMain: TGroupBox
        inherited pnlCurrentProcess: TPanel
          inherited frDeliveryProcessObject: TfrDeliveryProcessObject
            inherited frInvoiceDate: TfrDateFieldEditFrame
              inherited dsData: TDataSource
                DataSet = frStoreDealProcessBinding.frDeliveryProcessObject.pdsProcessObjectParams
              end
            end
          end
          inherited frStoreDealInProcessObject: TfrStoreDealInProcessObject
            inherited frStoreDealProcessObjectStore: TfrDeptFieldEditFrameBald
              inherited dsData: TDataSource
                DataSet = frStoreDealProcessBinding.frStoreDealInProcessObject.pdsProcessObjectParams
              end
            end
            inherited frStoreDealDate: TfrDateFieldEditFrame
              inherited dsData: TDataSource
                DataSet = frStoreDealProcessBinding.frStoreDealInProcessObject.pdsProcessObjectParams
              end
            end
          end
          inherited frStoreDealOutProcessObject: TfrStoreDealOutProcessObject
            inherited frStoreDealProcessObjectStore: TfrDeptFieldEditFrameBald
              inherited dsData: TDataSource
                DataSet = frStoreDealProcessBinding.frStoreDealOutProcessObject.pdsProcessObjectParams
              end
            end
            inherited frStoreDealDate: TfrDateFieldEditFrame
              inherited dsData: TDataSource
                DataSet = frStoreDealProcessBinding.frStoreDealOutProcessObject.pdsProcessObjectParams
              end
            end
          end
          inherited frBPOIProcessObject: TfrBPOIProcessObject
            inherited frBudgetOrderProduct: TfrProductFieldEditFrameBald
              inherited dsData: TDataSource
                DataSet = frStoreDealProcessBinding.frBPOIProcessObject.pdsProcessObjectParams
              end
            end
          end
          inherited frFinOrderLineProcessObject: TfrFinOrderLineProcessObject
            inherited pnlPartner: TPanel
              inherited frPartner: TfrPartnerFieldEditFrameBald
                inherited dsData: TDataSource
                  DataSet = frStoreDealProcessBinding.frFinOrderLineProcessObject.pdsProcessObjectParams
                end
              end
            end
            inherited pnlBaseDateAndFinStatus: TPanel
              inherited frBorderProcessObjectBaseDate: TfrDateFieldEditFrame
                inherited dsData: TDataSource
                  DataSet = frStoreDealProcessBinding.frFinOrderLineProcessObject.pdsProcessObjectParams
                end
              end
            end
          end
        end
      end
      inherited cdsProcesses: TAbmesClientDataSet
        Params = <
          item
            DataType = ftFloat
            Name = 'IS_INBOUND_PROCESS'
            ParamType = ptInput
            Value = '1'
          end
          item
            DataType = ftFloat
            Name = 'IS_OUTBOUND_PROCESS'
            ParamType = ptInput
            Value = '0'
          end
          item
            DataType = ftFloat
            Name = 'IS_REAL_STORE_DEAL_PROCESS'
            ParamType = ptInput
            Value = '1'
          end
          item
            DataType = ftFloat
            Name = 'IS_PLAN_STORE_DEAL_PROCESS'
            ParamType = ptInput
            Value = '0'
          end
          item
            DataType = ftFloat
            Name = 'IS_PROJ_STORE_DEAL_PROCESS'
            ParamType = ptInput
            Value = '0'
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
      end
    end
  end
  inherited alActions: TActionList
    Left = 512
    inherited actForm: TAction
      Caption = #1054#1090#1095#1077#1090#1085#1086' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1077' '#1085#1072' %ProductClassAbbrev% - %s'
    end
  end
  inherited dsData: TDataSource
    Left = 608
  end
  inherited cdsData: TAbmesClientDataSet
    Params = <
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_OBJECT_CODE'
        ParamType = ptInput
      end>
    Left = 576
    inherited cdsDataACCOUNT_QUANTITY: TAbmesFloatField
      OnChange = cdsDataACCOUNT_QUANTITYChange
    end
    inherited cdsDataTOTAL_PRICE: TAbmesFloatField
      OnChange = cdsDataTOTAL_PRICEChange
      OnGetText = cdsDataTOTAL_PRICEGetText
    end
    inherited cdsDataOTHER_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1055#1054#1051
    end
    inherited cdsDataSINGLE_PRICE: TAbmesFloatField
      OnChange = cdsDataSINGLE_PRICEChange
      OnGetText = cdsDataSINGLE_PRICEGetText
    end
    inherited cdsData_ACCOUNT_QUANTITY: TAbmesFloatField
      DisplayFormat = ',0.######'
      EditFormat = '0.######'
    end
    object cdsData_CURRENCY_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_CURRENCY_NAME'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = 'CURRENCY_CODE'
      Size = 5
      Lookup = True
    end
  end
  inherited cdsMeasures: TAbmesClientDataSet
    Top = 232
  end
  inherited cdsProcesses: TAbmesClientDataSet
    Filtered = False
    Params = <
      item
        DataType = ftFloat
        Name = 'IS_INBOUND_PROCESS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_OUTBOUND_PROCESS'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_REAL_STORE_DEAL_PROCESS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_PLAN_STORE_DEAL_PROCESS'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_PROJ_STORE_DEAL_PROCESS'
        ParamType = ptInput
        Value = '0'
      end>
    Left = 528
    Top = 272
  end
  inherited smrBoundProcess: TAbmesMatrixReport
    Left = 456
    Top = 272
  end
  inherited smrStoreDealData: TAbmesMatrixReport
    Pattern.Strings = (
      
        '%ProductClassName%: [PRODUCT_NAME:40:L] id '#1094#1080#1092#1088#1086#1074': [PRODUCT_NO:1' +
        '0:R]'
      
        '----------------------------------------------------------------' +
        '---------------'
      
        #1056#1072#1073'. '#1082'-'#1074#1086': [QUANTITY:9:R] [_PRODUCT_MEASURE_ABBREV:5:L]  '#1057#1095#1077#1090'. '#1082 +
        '-'#1074#1086': [ACCOUNT_QUANTITY:9:R] [_PRODUCT_ACC_MEASURE_ABBREV:5:L]'
      
        #1045#1076'. '#1094#1077#1085#1072': [SINGLE_PRICE:10:R]       '#1054#1073#1097#1072' '#1094#1077#1085#1072': [TOTAL_PRICE:10:R' +
        ']           '#1042#1072#1083#1091#1090#1072': [_CURRENCY_NAME:5:L]'
      
        '----------------------------------------------------------------' +
        '---------------'
      #1058#1055' '#1055#1086#1089#1090#1098#1087#1074#1072#1097#1086': [DEPT_NO:40:L]'
      ''
      #1055#1086#1080#1089#1082#1072#1083' '#1076#1074#1080#1078#1077#1085#1080#1077#1090#1086': [_REQUEST_EMPLOYEE_CODE:49:L]..........'
      
        '                                                                ' +
        '     '
      #1052#1054#1051':                [_STORE_EMPLOYEE_NAME:49:L]..........'
      ''
      #1055#1054#1051':                [_OTHER_EMPLOYEE_CODE:49:L]..........'
      
        '----------------------------------------------------------------' +
        '---------------'
      
        #1054#1090#1087#1077#1095#1072#1090#1072#1085#1086' '#1086#1090' [AppName:0:L] '#1085#1072' [%DATETIME%:19:L]               [COMP' +
        'ANY_SHORT_NAME:20:R]'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 488
    Top = 272
  end
  inherited mdsBoundProcess: TAbmesClientDataSet
    Left = 240
    Top = 325
  end
  inherited dsBoundProcess: TDataSource
    Left = 272
    Top = 325
  end
  inherited smrStoreDealHeader: TAbmesMatrixReport
    Pattern.Strings = (
      
        '                            '#1044#1054#1050#1059#1052#1045#1053#1058' '#1047#1040' '#1055#1054#1057#1058#1066#1055#1051#1045#1053#1048#1045'        [_STO' +
        'RNO_STATE:20:R]'
      
        '----------------------------------------------------------------' +
        '---------------'
      
        #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086': [STORE_IDENTIFIER:28:L]  '#1044#1072#1090#1072': [STORE_DEAL_DATE:14' +
        ':L]      No: [STORE_DEAL_NO:5:R]'
      
        '----------------------------------------------------------------' +
        '---------------')
    Left = 424
    Top = 272
  end
  inherited smrStoreDealWasteBoundHeader: TAbmesMatrixReport
    Pattern.Strings = (
      
        '                       '#1044#1054#1050#1059#1052#1045#1053#1058' '#1047#1040' '#1055#1054#1057#1058#1066#1055#1051#1045#1053#1048#1045' '#1055#1054' '#1040#1050#1058' '#1047#1040' '#1041#1051#1054#1050'   ' +
        '[_STORNO_STATE:15:R]'
      
        '----------------------------------------------------------------' +
        '---------------'
      
        #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086': [_STORE_IDENTIFIER:30:L]  '#1044#1072#1090#1072': [STORE_DEAL_DATE:1' +
        '4:L]     No: [STORE_DEAL_NO:10:R]'
      
        '----------------------------------------------------------------' +
        '---------------')
    Left = 392
    Top = 272
  end
  object cdsCurrencies: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCurrencies'
    Left = 560
    Top = 273
    object cdsCurrenciesCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
      Required = True
    end
    object cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      Required = True
      Size = 5
    end
    object cdsCurrenciesSCALE: TAbmesFloatField
      FieldName = 'SCALE'
      Required = True
    end
    object cdsCurrenciesROUNDER: TAbmesFloatField
      FieldName = 'ROUNDER'
      Required = True
    end
  end
end
