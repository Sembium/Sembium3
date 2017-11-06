inherited fmSaleQuantitiesFilter: TfmSaleQuantitiesFilter
  Left = 274
  Top = 274
  ActiveControl = rgType
  Caption = '%s '#1085#1072' '#1048#1079#1090#1086#1095#1085#1080#1094#1080' '#1085#1072' '#1087#1088#1086#1076#1072#1078#1073#1080
  ClientHeight = 332
  ClientWidth = 777
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 297
    Width = 777
    TabOrder = 6
    inherited pnlOKCancel: TPanel
      Left = 509
    end
    inherited pnlClose: TPanel
      Left = 420
    end
    inherited pnlApply: TPanel
      Left = 688
    end
  end
  object rgType: TDBRadioGroup [1]
    Left = 392
    Top = 8
    Width = 377
    Height = 41
    Caption = ' '#1043#1088#1091#1087#1080#1088#1072#1085#1077' '#1087#1086' '
    Columns = 2
    DataField = 'GROUP_BY_CLIENT'
    DataSource = dsData
    Items.Strings = (
      #1050#1083#1080#1077#1085#1090' '#1080' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090)
    ParentBackground = True
    TabOrder = 2
    Values.Strings = (
      'True'
      'False')
  end
  object gbDates: TGroupBox [2]
    Left = 8
    Top = 8
    Width = 161
    Height = 41
    Caption = ' '#1042#1088#1084#1048#1085#1090' '
    TabOrder = 0
    inline frDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 14
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
  inline frParamProductFilter: TfrParamProductFilter [3]
    Left = 392
    Top = 56
    Width = 377
    Height = 233
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    TabStop = True
    inherited grpTreeNodeFilter: TGroupBox
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
      inherited pnlNodes: TPanel
        inherited grdChosenNodes: TAbmesDBGrid
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
        end
      end
      inherited pnlParams: TPanel
        inherited grdChosenNodeParams: TAbmesDBGrid
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
        end
      end
    end
  end
  inline frCompanyFilter: TfrCompanyFilter [4]
    Left = 8
    Top = 56
    Width = 377
    Height = 233
    TabOrder = 3
    TabStop = True
    inherited grpTreeNodeFilter: TGroupBox
      Caption = ' '#1050#1083#1080#1077#1085#1090' '
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
      inherited pnlBottom: TPanel
        inherited lblCommonStatus: TLabel
          Width = 45
        end
      end
    end
  end
  object pnlShowInstances: TPanel [5]
    Left = 654
    Top = 50
    Width = 108
    Height = 19
    BevelOuter = bvNone
    TabOrder = 4
    object chbShowInstances: TAbmesDBCheckBox
      Left = 3
      Top = 3
      Width = 103
      Height = 17
      Caption = #1055#1086#1082#1072#1078#1080' '#1083#1080#1089#1090#1072#1090#1072
      DataField = 'SHOW_INSTANCES'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object gbSalesLevel: TGroupBox [6]
    Left = 176
    Top = 8
    Width = 209
    Height = 41
    Caption = ' '#1057#1090#1072#1090#1091#1089' '
    TabOrder = 1
    object cbSalesLevel: TJvDBComboBox
      Left = 7
      Top = 14
      Width = 194
      Height = 21
      DataField = 'SALES_LEVEL'
      DataSource = dsData
      Items.Strings = (
        #1047#1072#1087#1080#1090#1074#1072#1085#1080#1103', '#1085#1077#1087#1088#1080#1082#1083#1102#1095#1077#1085#1080' '#1080' '#1087#1088#1080#1082#1083#1102#1095#1077#1085#1080' '#1087#1088#1086#1076#1072#1078#1073#1080
        #1053#1077#1087#1088#1080#1082#1083#1102#1095#1077#1085#1080' '#1080' '#1087#1088#1080#1082#1083#1102#1095#1077#1085#1080' '#1087#1088#1086#1076#1072#1078#1073#1080
        #1055#1088#1080#1082#1083#1102#1095#1077#1085#1080' '#1087#1088#1086#1076#1072#1078#1073#1080)
      TabOrder = 0
      Values.Strings = (
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
  inherited alActions: TActionList [7]
    Left = 128
    Top = 256
    inherited actForm: TAction
      Caption = '%s '#1085#1072' '#1048#1079#1090#1086#1095#1085#1080#1094#1080' '#1085#1072' '#1087#1088#1086#1076#1072#1078#1073#1080
    end
  end
  inherited dsData: TDataSource [8]
    Left = 160
    Top = 256
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [9]
    Left = 16
    Top = 256
  end
  inherited cdsData: TAbmesClientDataSet [10]
    Left = 96
    Top = 256
  end
  inherited dsFilterVariants: TDataSource
    Left = 40
    Top = 256
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 64
    Top = 272
  end
  object cdsCompanyClients: TAbmesClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <>
    Left = 232
    Top = 240
    object cdsCompanyClientsCOMPANY_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'COMPANY_CODE'
    end
    object cdsCompanyClientsSHORT_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'SHORT_NAME'
    end
  end
  object dsCompanyClients: TDataSource
    DataSet = cdsCompanyClients
    Left = 264
    Top = 240
  end
end
