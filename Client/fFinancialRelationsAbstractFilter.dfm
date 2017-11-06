inherited fmFinancialRelationsAbstractFilter: TfmFinancialRelationsAbstractFilter
  Caption = 'fmFinancialRelationsAbstractFilter'
  ClientHeight = 426
  ClientWidth = 617
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 391
    Width = 617
    TabOrder = 5
    inherited pnlOKCancel: TPanel
      Left = 349
    end
    inherited pnlClose: TPanel
      Left = 260
    end
    inherited pnlApply: TPanel
      Left = 528
    end
  end
  inline frDateUnitsInterval: TfrDateUnitsIntervalEditFrame [1]
    Left = 8
    Top = 248
    Width = 601
    Height = 136
    TabOrder = 4
    TabStop = True
    inherited gbTimeUnits: TGroupBox
      inherited lblTimeUnit: TLabel
        Width = 84
      end
      inherited lblTimeUnitCount: TLabel
        Width = 111
      end
    end
  end
  inline frCompanyFilter: TfrCompanyFilter [2]
    Left = 232
    Top = 8
    Width = 377
    Height = 233
    TabOrder = 3
    TabStop = True
    inherited grpTreeNodeFilter: TGroupBox
      inherited pnlChosenCompanies: TPanel
        inherited grdChosenCompanies: TAbmesDBGrid
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
        end
      end
      inherited pnlNotChosenCompanies: TPanel
        inherited grdNotChosenCompanies: TAbmesDBGrid
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
        end
      end
    end
  end
  object gbState: TGroupBox [3]
    Left = 8
    Top = 8
    Width = 217
    Height = 65
    Caption = ' '#1057#1090#1072#1090#1091#1089' '
    TabOrder = 0
    object lblDash: TLabel
      Left = 107
      Top = 37
      Width = 6
      Height = 13
      Caption = #8212
    end
    object cbMinFinOrderState: TDBComboBoxEh
      Left = 8
      Top = 33
      Width = 93
      Height = 21
      DataField = 'MIN_STATUS_CODE'
      DataSource = dsData
      DropDownBox.Rows = 13
      DropDownBox.Width = 450
      EditButtons = <>
      TabOrder = 0
      Visible = True
    end
    object cbMaxFinOrderState: TDBComboBoxEh
      Left = 120
      Top = 33
      Width = 89
      Height = 21
      DataField = 'MAX_STATUS_CODE'
      DataSource = dsData
      DropDownBox.Rows = 13
      DropDownBox.Width = 450
      EditButtons = <>
      TabOrder = 1
      Visible = True
    end
  end
  object gbFinProcess: TGroupBox [4]
    Left = 8
    Top = 88
    Width = 97
    Height = 57
    Caption = ' '#1055#1088#1086#1094#1077#1089' '
    TabOrder = 1
    DesignSize = (
      97
      57)
    object cbFinProcess: TJvDBLookupCombo
      Left = 8
      Top = 24
      Width = 81
      Height = 21
      DropDownCount = 10
      DropDownWidth = 200
      DeleteKeyClear = False
      DataField = '_FIN_PROCESS_ABBREV'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
    end
  end
  object gbFinStatus: TGroupBox [5]
    Left = 112
    Top = 88
    Width = 113
    Height = 57
    Caption = ' '#1060#1080#1085#1072#1085#1089#1086#1074' '#1057#1090#1072#1090#1091#1089' '
    TabOrder = 2
    object cbFinStatus: TJvDBComboBox
      Left = 8
      Top = 24
      Width = 89
      Height = 21
      DataField = 'HAS_DOCUMENT_IDENTIFIER'
      DataSource = dsData
      ItemHeight = 13
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1054#1095#1072#1082#1074#1072#1085
        #1056#1077#1072#1083#1077#1085)
      TabOrder = 0
      Values.Strings = (
        ''
        '0'
        '1')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
    end
  end
  inherited alActions: TActionList [6]
    inherited actForm: TAction
      Caption = 'fmFinancialRelationsAbstractFilter'
    end
  end
  inherited dsData: TDataSource [7]
  end
  inherited cdsData: TAbmesClientDataSet [8]
  end
  inherited dsFilterVariants: TDataSource [9]
    Left = 216
    Top = 392
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Left = 192
    Top = 392
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 240
    Top = 408
  end
end
