inherited fmOrgPrcDataDistributionFilter: TfmOrgPrcDataDistributionFilter
  Caption = 
    #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080' '#1074' '#1057#1080#1089#1090#1077#1084#1072#1090#1072' '#1079#1072' '#1054#1089#1098#1097#1077#1089#1090#1074#1103#1074#1072#1085#1077' '#1085#1072' '#1057#1091#1073#1077#1082#1090#1085#1086#1089 +
    #1090#1090#1072
  ClientHeight = 252
  ClientWidth = 889
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 217
    Width = 889
    TabOrder = 4
    inherited pnlOKCancel: TPanel
      Left = 621
    end
    inherited pnlClose: TPanel
      Left = 532
    end
    inherited pnlApply: TPanel
      Left = 800
    end
  end
  object gbPrcDataFilter: TGroupBox [1]
    Left = 8
    Top = 72
    Width = 873
    Height = 137
    Caption = ' '#1057#1080#1089#1090#1077#1084#1072' '#1079#1072' '#1054#1089#1098#1097#1077#1089#1090#1074#1103#1074#1072#1085#1077' '#1085#1072' '#1057#1091#1073#1077#1082#1090#1085#1086#1089#1090#1090#1072' ('#1057#1054#1057') '
    TabOrder = 3
    inline frPrcDataFilter: TfrPrcDataFilterFrame
      Left = 6
      Top = 15
      Width = 861
      Height = 114
      Constraints.MaxHeight = 114
      Constraints.MaxWidth = 861
      Constraints.MinHeight = 114
      Constraints.MinWidth = 861
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
    end
  end
  object gbToDate: TGroupBox [2]
    Left = 8
    Top = 8
    Width = 137
    Height = 57
    Caption = ' '#1050#1098#1084' '#1076#1072#1090#1072' '
    TabOrder = 0
    inline frToDate: TfrDateFieldEditFrame
      Left = 16
      Top = 24
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 0
    end
  end
  object gbStatus: TGroupBox [3]
    Left = 160
    Top = 8
    Width = 161
    Height = 57
    Caption = ' '#1057#1090#1072#1090#1091#1089' '
    TabOrder = 1
    object lblBetweenStatus: TLabel
      Left = 77
      Top = 28
      Width = 6
      Height = 13
      Caption = #8212
    end
    object cbMaxDistributionStatus: TDBComboBoxEh
      Left = 88
      Top = 24
      Width = 57
      Height = 24
      DataField = 'MAX_DISTRIBUTION_STATUS_CODE'
      DataSource = dsData
      DropDownBox.Rows = 11
      DropDownBox.Width = 400
      EditButtons = <>
      Images = dmMain.ilPrcDistributionStatuses
      TabOrder = 1
      Visible = True
      OnGetItemImageIndex = cbMaxDistributionStatusGetItemImageIndex
    end
    object cbMinDistributionStatus: TDBComboBoxEh
      Left = 16
      Top = 24
      Width = 57
      Height = 24
      DataField = 'MIN_DISTRIBUTION_STATUS_CODE'
      DataSource = dsData
      DropDownBox.Rows = 11
      DropDownBox.Width = 400
      EditButtons = <>
      Images = dmMain.ilPrcDistributionStatuses
      TabOrder = 0
      Visible = True
      OnGetItemImageIndex = cbMinDistributionStatusGetItemImageIndex
    end
  end
  object gbOTPDistributionState: TGroupBox [4]
    Left = 704
    Top = 8
    Width = 177
    Height = 57
    Caption = ' '#1055#1088#1086#1077#1082#1090#1085#1072' '#1077#1092#1077#1082#1090#1080#1088#1072#1085#1086#1089#1090' '
    TabOrder = 2
    object cbOTPDistributionState: TJvDBComboBox
      Left = 16
      Top = 24
      Width = 145
      Height = 21
      DataField = 'OTP_DISTRIBUTION_STATE_CODE'
      DataSource = dsData
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1053#1077#1077#1092#1077#1082#1090#1080#1088#1072#1085#1080
        #1053#1077#1087#1088#1080#1082#1083#1102#1095#1077#1085#1086' '#1077#1092#1077#1082#1090#1080#1088#1072#1085#1077
        #1055#1088#1080#1082#1083#1102#1095#1077#1085#1086' '#1077#1092#1077#1082#1090#1080#1088#1072#1085#1077)
      TabOrder = 0
      UpdateFieldImmediatelly = True
      Values.Strings = (
        ''
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
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = 
        #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080' '#1074' '#1057#1080#1089#1090#1077#1084#1072#1090#1072' '#1079#1072' '#1054#1089#1098#1097#1077#1089#1090#1074#1103#1074#1072#1085#1077' '#1085#1072' '#1057#1091#1073#1077#1082#1090#1085#1086#1089 +
        #1090#1090#1072
    end
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Top = 136
  end
  inherited dsFilterVariants: TDataSource
    Top = 136
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Top = 152
  end
end
