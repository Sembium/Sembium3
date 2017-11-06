inherited fmBOIWasteOrder: TfmBOIWasteOrder
  Left = 253
  Top = 202
  ClientHeight = 524
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 489
  end
  inherited gbBudgetOrderStuff: TGroupBox
    inherited lblFormCaption: TLabel
      Width = 355
      Caption = #1054#1088#1076#1077#1088' - '#1055#1088#1077#1086#1094#1077#1085#1103#1074#1072#1097' '#1087#1086' '#1051#1080#1084#1080#1090' '#1086#1090' %BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' - %s'
      ExplicitWidth = 355
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
    Height = 209
    Caption = 
      ' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1088#1076#1077#1088' - '#1055#1088#1077#1086#1094#1077#1085#1103#1074#1072#1097' '#1087#1086' '#1051#1080#1084#1080#1090' '#1086#1090' %BudgetOrderName% ' +
      #1079#1072' '#1057#1088#1077#1076#1072' '
    inherited gbBOIOrder: TGroupBox
      inherited tbDocButton: TToolBar
        Anchors = [akLeft, akTop, akRight]
      end
    end
    inherited gbDecision: TGroupBox
      Left = 504
      Top = 88
      Width = 473
      Height = 113
      TabOrder = 5
      inherited lblDecisionEmployee: TLabel
        Left = 224
        Margins.Bottom = 0
      end
      inherited lblDecisionDate: TLabel
        Left = 224
        Top = 64
        Margins.Bottom = 0
      end
      inherited btnUnconfirm: TBitBtn
        Width = 89
      end
      inherited frDecisionEmployee: TfrEmployeeFieldEditFrameBald
        Left = 224
        inherited gbEmployee: TGroupBox
          inherited pnlEmployeeName: TPanel
            inherited pnlEmpoyeeNameInner: TPanel
              inherited edtEmployeeName: TDBEdit
                Width = 147
              end
            end
          end
        end
      end
      inherited frDecisionDate: TfrDateFieldEditFrame
        Left = 224
        Top = 80
      end
    end
    object gbPlan: TGroupBox
      Left = 8
      Top = 88
      Width = 273
      Height = 113
      Caption = ' '#1055#1083#1072#1085' '
      TabOrder = 3
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
    object gbReal: TGroupBox
      Left = 288
      Top = 88
      Width = 209
      Height = 113
      Caption = ' '#1054#1090#1095#1077#1090' '
      TabOrder = 4
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
    object gbDescription: TGroupBox
      Left = 456
      Top = 16
      Width = 521
      Height = 65
      Caption = ' '#1054#1087#1080#1089#1072#1085#1080#1077' '
      TabOrder = 2
      object edtDescription: TDBEdit
        Left = 8
        Top = 32
        Width = 505
        Height = 21
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
    Left = 752
    Top = 264
  end
  inherited dsData: TDataSource
    Left = 664
    Top = 264
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 632
    Top = 264
    inherited cdsDataDESCRIPTION: TAbmesWideStringField
      Required = True
    end
    inherited cdsDataPLAN_TOTAL_PRICE: TAbmesFloatField
      DisplayLabel = #1057#1090#1086#1081#1085#1086#1089#1090
      Required = True
    end
    inherited cdsDataPLAN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1055#1083#1072#1085#1086#1074#1072' '#1044#1072#1090#1072
      Required = True
    end
    inherited cdsDataACCOUNT_TOTAL_PRICE: TAbmesFloatField
      DisplayLabel = #1057#1090#1086#1081#1085#1086#1089#1090
    end
    inherited cdsDataACCOUNT_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1054#1090#1095#1077#1090#1085#1072' '#1044#1072#1090#1072
    end
  end
  inherited cdsPrintData: TAbmesClientDataSet
    Top = 480
    object cdsPrintDataPLAN_DATE: TAbmesSQLTimeStampField [26]
      DisplayLabel = #1055#1083#1072#1085#1086#1074#1072' '#1044#1072#1090#1072
      FieldName = 'PLAN_DATE'
      Required = True
      DisplayFormat = 'ww\e\iiii'
    end
    object cdsPrintDataPLAN_TOTAL_PRICE: TAbmesFloatField [27]
      DisplayLabel = #1057#1090#1086#1081#1085#1086#1089#1090
      FieldName = 'PLAN_TOTAL_PRICE'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsPrintDataACCOUNT_DATE: TAbmesSQLTimeStampField [28]
      DisplayLabel = #1054#1090#1095#1077#1090#1085#1072' '#1044#1072#1090#1072
      FieldName = 'ACCOUNT_DATE'
      DisplayFormat = 'ww\e\iiii'
    end
    object cdsPrintDataACCOUNT_TOTAL_PRICE: TAbmesFloatField [29]
      DisplayLabel = #1057#1090#1086#1081#1085#1086#1089#1090
      FieldName = 'ACCOUNT_TOTAL_PRICE'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsPrintDataDESCRIPTION: TAbmesWideStringField [30]
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
  end
end
