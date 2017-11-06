inherited fmStoreDealOut: TfmStoreDealOut
  Left = 264
  Top = 156
  Caption = #1054#1090#1095#1077#1090#1085#1086' '#1058#1077#1075#1083#1077#1085#1077' '#1085#1072' %ProductClassAbbrev% - %s'
  ClientHeight = 439
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 404
  end
  inherited pnlClient: TPanel
    Height = 404
    inherited pnlProductAndPrice: TPanel
      Top = 148
      Height = 126
      TabOrder = 2
      inherited gbProduct: TGroupBox
        Caption = ' '#1058#1077#1075#1083#1077#1085' %ProductClassName% '
        inherited lblAccQuantity: TLabel
          Left = 184
        end
        inherited dbtMeasure: TDBText
          Left = 136
          Width = 33
        end
        inherited dbtAccMeasure: TDBText
          Left = 304
          Width = 33
        end
        object lblWantedQuantity: TLabel [4]
          Left = 352
          Top = 72
          Width = 111
          Height = 13
          Caption = #1055#1086#1080#1089#1082#1072#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
          FocusControl = edtWantedQuantity
        end
        object dbtMeasure2: TDBText [5]
          Left = 472
          Top = 90
          Width = 33
          Height = 17
          DataField = '_PRODUCT_MEASURE_ABBREV'
          DataSource = dsData
        end
        object lblBaseCurrency: TLabel [6]
          Left = 728
          Top = 92
          Width = 82
          Height = 13
          Caption = '%BaseCurrency%'
        end
        object lblTotalPrice: TLabel [7]
          Left = 632
          Top = 72
          Width = 56
          Height = 13
          Caption = #1054#1073#1097#1072' '#1094#1077#1085#1072
          FocusControl = edtTotalPrice
        end
        object lblSinglePrice: TLabel [8]
          Left = 528
          Top = 72
          Width = 43
          Height = 13
          Caption = #1045#1076'. '#1094#1077#1085#1072
          FocusControl = edtSinglePrice
        end
        inherited edtQuantity: TDBEdit
          Width = 113
        end
        inherited edtAccQuantity: TDBEdit
          Left = 184
          Width = 113
          ReadOnly = True
        end
        object edtWantedQuantity: TDBEdit [11]
          Left = 352
          Top = 88
          Width = 113
          Height = 21
          DataField = 'WANTED_QUANTITY'
          DataSource = dsData
          TabOrder = 3
        end
        object edtTotalPrice: TDBEdit
          Left = 632
          Top = 88
          Width = 89
          Height = 21
          Color = clBtnFace
          DataField = 'TOTAL_PRICE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 4
        end
        object edtSinglePrice: TDBEdit
          Left = 528
          Top = 88
          Width = 97
          Height = 21
          Color = clBtnFace
          DataField = 'SINGLE_PRICE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 5
        end
      end
    end
    inherited pnlEmployees: TPanel
      Top = 328
      TabOrder = 4
      inherited gbResponsibleEmployees: TGroupBox
        inherited lblOtherEmployee: TLabel
          Width = 23
          Caption = #1058#1054#1051
        end
      end
    end
    inherited pnlDept: TPanel
      Top = 274
      TabOrder = 3
      inherited frDept: TfrDeptFieldEditFrame
        inherited gbTreeNode: TGroupBox
          Caption = ' '#1058#1055' '#1058#1077#1075#1083#1077#1097#1086' %ProductClassAbbrev% '
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
            Value = '0'
          end
          item
            DataType = ftFloat
            Name = 'IS_OUTBOUND_PROCESS'
            ParamType = ptInput
            Value = '1'
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
    inherited actForm: TAction
      Caption = #1054#1090#1095#1077#1090#1085#1086' '#1058#1077#1075#1083#1077#1085#1077' '#1085#1072' %ProductClassAbbrev% - %s'
    end
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
    inherited cdsDataSTORE_DEAL_NO: TAbmesFloatField
      DisplayLabel = #1053#1086#1084#1077#1088' '#1085#1072' '#1076#1074#1080#1078#1077#1085#1080#1077
      OnChange = cdsDataSTORE_DEAL_NOChange
    end
    inherited cdsDataQUANTITY: TAbmesFloatField
      OnChange = cdsDataQUANTITYChange
    end
    inherited cdsDataACCOUNT_QUANTITY: TAbmesFloatField
      OnChange = cdsDataACCOUNT_QUANTITYChange
    end
    inherited cdsDataCURRENCY_CODE: TAbmesFloatField
      Required = False
    end
    inherited cdsDataTOTAL_PRICE: TAbmesFloatField
      Required = False
    end
    inherited cdsDataOTHER_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1054#1051
    end
  end
  inherited cdsMeasures: TAbmesClientDataSet
    Left = 248
    Top = 262
  end
  inherited cdsProcesses: TAbmesClientDataSet
    Filtered = False
    Params = <
      item
        DataType = ftFloat
        Name = 'IS_INBOUND_PROCESS'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_OUTBOUND_PROCESS'
        ParamType = ptInput
        Value = '1'
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
    Left = 464
    Top = 264
  end
  inherited smrBoundProcess: TAbmesMatrixReport
    Left = 376
    Top = 264
  end
  inherited smrStoreDealData: TAbmesMatrixReport
    Pattern.Strings = (
      
        '%ProductClassName%: [PRODUCT_NAME:41:L] id '#1094#1080#1092#1088#1086#1074': [PRODUCT_NO:9' +
        ':R]'
      
        '----------------------------------------------------------------' +
        '---------------'
      
        #1056#1072#1073'. '#1082'-'#1074#1086': [QUANTITY:8:R] [_PRODUCT_MEASURE_ABBREV:5:L]'#1057#1095#1077#1090'. '#1082'-'#1074 +
        #1086': [ACCOUNT_QUANTITY:8:R] [_PRODUCT_ACC_MEASURE_ABBREV:5:L] '#1055#1086#1080#1089 +
        #1082#1072#1085#1086' '#1082'-'#1074#1086':[WANTED_QUANTITY:9:R][_PRODUCT_MEASURE_ABBREV:5:L]'
      
        '----------------------------------------------------------------' +
        '---------------'
      #1058#1055' '#1058#1077#1075#1083#1077#1097#1086': [DEPT_NO:40:L]'
      ''
      #1055#1086#1080#1089#1082#1072#1083' '#1076#1074#1080#1078#1077#1085#1080#1077#1090#1086': [_REQUEST_EMPLOYEE_CODE:49:L]..........'
      
        '                                                                ' +
        '     '
      #1052#1054#1051':                [_STORE_EMPLOYEE_NAME:49:L]..........'
      ''
      #1058#1054#1051':                [_OTHER_EMPLOYEE_CODE:49:L]..........'
      
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
    Left = 408
    Top = 264
  end
  inherited mdsBoundProcess: TAbmesClientDataSet
    Left = 376
    Top = 149
  end
  inherited dsBoundProcess: TDataSource
    Left = 408
    Top = 149
  end
  inherited smrStoreDealHeader: TAbmesMatrixReport
    Pattern.Strings = (
      
        '                             '#1044#1054#1050#1059#1052#1045#1053#1058' '#1047#1040' '#1058#1045#1043#1051#1045#1053#1045'          [_STOR' +
        'NO_STATE:20:R]'
      
        '----------------------------------------------------------------' +
        '---------------'
      
        #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086': [STORE_IDENTIFIER:29:L]  '#1044#1072#1090#1072': [STORE_DEAL_DATE:14' +
        ':L]     No: [STORE_DEAL_NO:5:R]'
      
        '----------------------------------------------------------------' +
        '---------------')
    Left = 344
    Top = 264
  end
  inherited smrStoreDealWasteBoundHeader: TAbmesMatrixReport
    Pattern.Strings = (
      
        '                       '#1044#1054#1050#1059#1052#1045#1053#1058' '#1047#1040' '#1058#1045#1043#1051#1045#1053#1045' '#1055#1054' '#1040#1050#1058' '#1047#1040' '#1041#1051#1054#1050'  [_STO' +
        'RNO_STATE:20:R]'
      
        '----------------------------------------------------------------' +
        '---------------'
      
        #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086': [_STORE_IDENTIFIER:30:L]  '#1044#1072#1090#1072': [STORE_DEAL_DATE:1' +
        '4:L]     No: [STORE_DEAL_NO:10:R]'
      
        '----------------------------------------------------------------' +
        '---------------')
  end
  object cdsProductQuantityAndPrice: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conStore
    Params = <
      item
        DataType = ftFloat
        Name = 'STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_NO'
        ParamType = ptInput
      end>
    ProviderName = 'prvSDOutQuantities'
    Left = 496
    Top = 265
    object cdsProductQuantityAndPriceQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object cdsProductQuantityAndPriceACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
    end
    object cdsProductQuantityAndPriceTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
  end
end
