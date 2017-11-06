inherited fmRealFinModelLineGroup: TfmRealFinModelLineGroup
  ActiveControl = frMovementPlanBeginDate
  Caption = #1043#1088#1091#1087#1072' '#1056#1077#1076#1086#1074#1077' '#1086#1090' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1060#1080#1085#1072#1085#1089#1086#1074' - %s'
  ClientHeight = 292
  ClientWidth = 370
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 257
    Width = 370
    inherited pnlOKCancel: TPanel
      Left = 102
    end
    inherited pnlClose: TPanel
      Left = 13
    end
    inherited pnlApply: TPanel
      Left = 281
      Visible = False
    end
  end
  object gbLine: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 353
    Height = 241
    Caption = ' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1044#1074#1080#1078#1077#1085#1080#1077' '#1085#1072' '#1060#1080#1085#1072#1085#1089#1086#1074' '#1054#1073#1077#1082#1090' '
    TabOrder = 1
    object lblFinancialStore: TLabel
      Left = 16
      Top = 136
      Width = 127
      Height = 13
      Caption = #1058#1055' - '#1060#1080#1085#1072#1085#1089#1086#1074#1086' '#1048#1055
    end
    object lblPartnerOffice: TLabel
      Left = 16
      Top = 185
      Width = 162
      Height = 13
      Caption = #1058#1055' - '#1060#1080#1085#1072#1085#1089#1086#1074#1086' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088
      FocusControl = cbPartnerOffice
    end
    object lblMovementBeginDate: TLabel
      Left = 16
      Top = 80
      Width = 105
      Height = 13
      Caption = #1053#1072#1095#1072#1083#1086' '#1085#1072' '#1076#1074#1080#1078#1077#1085#1080#1077
      FocusControl = frMovementPlanBeginDate
    end
    object lblMovementEndDate: TLabel
      Left = 232
      Top = 80
      Width = 93
      Height = 13
      Caption = #1050#1088#1072#1081' '#1085#1072' '#1076#1074#1080#1078#1077#1085#1080#1077
      FocusControl = frMovementPlanBeginDate
    end
    object lblTransportDurationDays: TLabel
      Left = 152
      Top = 80
      Width = 38
      Height = 13
      Caption = #1055#1077#1088#1080#1086#1076
      FocusControl = edtTransportDurationDays
    end
    object lblTransportDurationDaysMeasure: TLabel
      Left = 188
      Top = 100
      Width = 18
      Height = 13
      Caption = #1082'.'#1076'.'
    end
    object lblWorkFinancialProductName: TLabel
      Left = 16
      Top = 24
      Width = 25
      Height = 13
      Caption = #1060#1054#1073
      FocusControl = edtWorkFinancialProductName
    end
    object lblPartnerShortName: TLabel
      Left = 112
      Top = 24
      Width = 49
      Height = 13
      Caption = #1055#1072#1088#1090#1085#1100#1086#1088
      FocusControl = edtPartnerShortName
    end
    object txtArrow: TDBText
      Left = 80
      Top = 38
      Width = 25
      Height = 25
      Alignment = taCenter
      DataField = 'IN_OUT'
      DataSource = dsData
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Symbol'
      Font.Style = []
      ParentFont = False
    end
    inline frFinancialStore: TfrDeptFieldEditFrameBald
      Left = 16
      Top = 152
      Width = 321
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 5
      TabStop = True
      DesignSize = (
        321
        22)
      inherited gbTreeNode: TGroupBox
        Width = 337
        DesignSize = (
          337
          49)
        inherited pnlTreeNode: TPanel
          Width = 321
          inherited pnlTreeNodeName: TPanel
            Width = 174
            DesignSize = (
              174
              22)
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
    object cbPartnerOffice: TJvDBLookupCombo
      Left = 16
      Top = 200
      Width = 321
      Height = 21
      DeleteKeyClear = False
      DataField = 'EDIT_PARTNER_ACCOUNT_CODE'
      DataSource = dsData
      DisplayEmpty = ' '
      LookupField = 'ACCOUNT_CODE'
      LookupDisplay = 'ACCOUNT_FULL_NAME'
      LookupSource = dsPartnerAccounts
      TabOrder = 6
    end
    inline frMovementPlanBeginDate: TfrDateFieldEditFrame
      Left = 16
      Top = 96
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 2
    end
    inline frMovementPlanEndDate: TfrDateFieldEditFrame
      Left = 232
      Top = 96
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 4
    end
    object edtTransportDurationDays: TDBEdit
      Left = 152
      Top = 97
      Width = 33
      Height = 21
      Color = 16115403
      DataField = 'EDIT_MOVEMENT_DURATION_DAYS'
      DataSource = dsData
      TabOrder = 3
    end
    object edtWorkFinancialProductName: TDBEdit
      Left = 16
      Top = 40
      Width = 57
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'WORK_FINANCIAL_PRODUCT_NAME'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 0
    end
    object edtPartnerShortName: TDBEdit
      Left = 112
      Top = 40
      Width = 225
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'PARTNER_SHORT_NAME'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 1
    end
  end
  inherited alActions: TActionList
    Left = 344
    inherited actForm: TAction
      Caption = #1043#1088#1091#1087#1072' '#1056#1077#1076#1086#1074#1077' '#1086#1090' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1060#1080#1085#1072#1085#1089#1086#1074' - %s'
    end
  end
  inherited dsData: TDataSource
    OnDataChange = dsDataDataChange
    Left = 304
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 272
  end
  object cdsPartnerAccounts: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompanies
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCompanyBankAccounts'
    BeforeOpen = cdsPartnerAccountsBeforeOpen
    Left = 240
    Top = 216
    object cdsPartnerAccountsACCOUNT_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_CODE'
    end
    object cdsPartnerAccountsACCOUNT_FULL_NAME: TAbmesWideStringField
      FieldName = 'ACCOUNT_FULL_NAME'
      Size = 104
    end
    object cdsPartnerAccountsCURRENCY_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_PRODUCT_CODE'
    end
  end
  object dsPartnerAccounts: TDataSource
    DataSet = cdsPartnerAccounts
    Left = 272
    Top = 216
  end
end
