inherited fmDeptDetailFlowFilter: TfmDeptDetailFlowFilter
  Left = 279
  Top = 190
  Caption = '%s '#1085#1072' '#1055#1086#1090#1086#1094#1080' '#1086#1090' '#1059#1054#1073' '#1087#1088#1077#1079' '#1058#1055
  ClientHeight = 564
  ClientWidth = 785
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 529
    Width = 785
    TabOrder = 10
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
  inline frDeptProductFilter: TfrParamProductFilter [1]
    Left = 8
    Top = 224
    Width = 377
    Height = 233
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    TabStop = True
    inherited grpTreeNodeFilter: TGroupBox
      Caption = ' '#1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086' '#1052#1103#1089#1090#1086' ('#1054#1087#1052') '#1085#1072' '#1058#1055' '
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
  inline frDetailProductFilter: TfrParamProductFilter [2]
    Left = 400
    Top = 72
    Width = 377
    Height = 233
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    TabStop = True
    inherited grpTreeNodeFilter: TGroupBox
      Caption = ' '#1050#1057#1063' '
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
  object rgFlowType: TDBRadioGroup [3]
    Left = 400
    Top = 8
    Width = 377
    Height = 49
    Caption = ' '#1042#1080#1076' '#1055#1088#1077#1084#1080#1085#1072#1074#1072#1097' '#1055#1086#1090#1086#1082' '
    Columns = 3
    DataField = 'FLOW_TYPE'
    DataSource = dsData
    Items.Strings = (
      #1055#1086' '#1055'-'#1052#1054#1044#1045#1083'-'#1080
      #1055#1086' '#1056'-'#1052#1054#1044#1045#1083'-'#1080
      #1055#1086' '#1055#1077#1088#1089#1087#1077#1082#1090'. '#1048#1048#1056)
    TabOrder = 1
    Values.Strings = (
      '0'
      '1'
      '2')
  end
  object gbPeriod: TGroupBox [4]
    Left = 400
    Top = 320
    Width = 161
    Height = 65
    Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1086' '
    TabOrder = 5
    object lblPeriod: TLabel
      Left = 8
      Top = 16
      Width = 115
      Height = 13
      Caption = #1055#1088#1077#1084#1080#1085#1072#1074#1072#1085#1077' '#1087#1088#1077#1079' '#1058#1055
    end
    inline frDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 32
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
  inline frDeptFilter: TfrDeptFilter [5]
    Left = 8
    Top = 72
    Width = 377
    Height = 145
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    inherited grpTreeNodeFilter: TGroupBox
      inherited lblsExternal: TLabel
        Width = 52
      end
      inherited lblIsActive: TLabel
        Width = 53
      end
      inherited lblStoreType: TLabel
        Width = 43
      end
    end
  end
  object rgFlowLevel: TDBRadioGroup [6]
    Left = 8
    Top = 8
    Width = 377
    Height = 49
    Caption = ' '#1053#1080#1074#1086' '#1085#1072' '#1055#1088#1077#1084#1080#1085#1072#1074#1072#1097#1080#1103' '#1055#1086#1090#1086#1082' '
    Columns = 2
    DataField = 'FLOW_LEVEL'
    DataSource = dsData
    Items.Strings = (
      #1045#1090#1072#1087#1085#1086
      #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086)
    TabOrder = 0
    Values.Strings = (
      '0'
      '1')
  end
  object gbParRelProductStatus: TGroupBox [7]
    Left = 400
    Top = 400
    Width = 377
    Height = 57
    Caption = ' '#1057#1090#1072#1090#1091#1089' '#1085#1072' '#1048#1048#1056' '
    TabOrder = 6
    object lblBetweenParRelProductStatuses: TLabel
      Left = 112
      Top = 27
      Width = 9
      Height = 13
      Caption = '---'
    end
    object cbMinParRelProductStatus: TJvDBLookupCombo
      Left = 8
      Top = 24
      Width = 97
      Height = 21
      DropDownWidth = 250
      DeleteKeyClear = False
      DataField = 'MIN_PRP_STATUS_CODE'
      DataSource = dsData
      LookupField = 'PAR_REL_PRODUCT_STATUS_CODE'
      LookupDisplay = 'PAR_REL_PRODUCT_STATUS_NAME'
      LookupSource = dsParRelProductStatuses
      TabOrder = 0
    end
    object cbMaxParRelProductStatus: TJvDBLookupCombo
      Left = 128
      Top = 24
      Width = 97
      Height = 21
      DropDownWidth = 250
      DeleteKeyClear = False
      DataField = 'MAX_PRP_STATUS_CODE'
      DataSource = dsData
      LookupField = 'PAR_REL_PRODUCT_STATUS_CODE'
      LookupDisplay = 'PAR_REL_PRODUCT_STATUS_NAME'
      LookupSource = dsParRelProductStatuses
      TabOrder = 1
    end
  end
  object gbProductCommonLevel: TGroupBox [8]
    Left = 400
    Top = 472
    Width = 201
    Height = 49
    Caption = ' '#1053#1080#1074#1086' '#1048#1048#1056' '#1089#1087#1088#1103#1084#1086' '#1059#1054#1073' '
    TabOrder = 8
    object cbProductCommonLevel: TJvDBComboBox
      Left = 8
      Top = 16
      Width = 185
      Height = 21
      DataField = 'PRODUCT_COMMON_LEVEL'
      DataSource = dsData
      Items.Strings = (
        #1057#1090#1088#1072#1090#1077#1075#1080#1095#1077#1089#1082#1086' ('#1054#1057#1090#1088')'
        #1055#1086#1090#1077#1085#1094#1080#1072#1083#1085#1086' '#1054#1073#1086#1073#1097#1077#1085#1086' ('#1054#1055#1090#1094'+'#1045')'
        #1055#1086#1090#1077#1085#1094#1080#1072#1083#1085#1086' '#1050#1086#1085#1082#1088#1077#1090#1080#1079#1080#1088#1072#1085#1086' ('#1055'+'#1045')')
      TabOrder = 0
      Values.Strings = (
        '0'
        '1'
        '2')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
    end
  end
  object gbPartnerCommonLevel: TGroupBox [9]
    Left = 608
    Top = 472
    Width = 169
    Height = 49
    Caption = ' '#1053#1080#1074#1086' '#1048#1048#1056' '#1089#1087#1088#1103#1084#1086' '#1055#1072#1088#1090#1085#1100#1086#1088' '
    TabOrder = 9
    object cbPartnerCommonLevel: TJvDBComboBox
      Left = 8
      Top = 16
      Width = 153
      Height = 21
      DataField = 'PARTNER_COMMON_LEVEL'
      DataSource = dsData
      Items.Strings = (
        #1054#1073#1086#1073#1097#1077#1085#1086' ('#1054'+'#1045')'
        #1050#1086#1085#1082#1088#1077#1090#1080#1079#1080#1088#1072#1085#1086' ('#1055'+'#1045')')
      TabOrder = 0
      Values.Strings = (
        '1'
        '2')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
    end
  end
  inline frToolDetail: TfrProductFieldEditFrame [10]
    Left = 8
    Top = 472
    Width = 377
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 7
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
  inherited alActions: TActionList [11]
    Left = 0
    Top = 88
    inherited actForm: TAction
      Caption = '%s '#1085#1072' '#1055#1086#1090#1086#1094#1080' '#1086#1090' '#1059#1054#1073' '#1087#1088#1077#1079' '#1058#1055
    end
  end
  inherited dsData: TDataSource [12]
    Left = 0
    Top = 56
  end
  inherited cdsData: TAbmesClientDataSet
    Top = 24
  end
  object cdsParRelProductStatuses: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conParRelProducts
    Params = <>
    ProviderName = 'prvParRelProductStatuses'
    Left = 664
    Top = 392
    object cdsParRelProductStatusesPAR_REL_PRODUCT_STATUS_CODE: TAbmesFloatField
      FieldName = 'PAR_REL_PRODUCT_STATUS_CODE'
    end
    object cdsParRelProductStatusesPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField
      FieldName = 'PAR_REL_PRODUCT_STATUS_NAME'
      Size = 100
    end
  end
  object dsParRelProductStatuses: TDataSource
    DataSet = cdsParRelProductStatuses
    Left = 704
    Top = 392
  end
end
