inherited fmSaleExpGroupsFilter: TfmSaleExpGroupsFilter
  Left = 239
  Top = 153
  Caption = 
    '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1055#1088#1086#1076#1072#1078#1073#1080' '#1079#1072' %ProductClassAbbr' +
    'ev% - '#1043#1088#1091#1087#1080' '#1054#1055#1055' '#1087#1086' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1080
  ClientHeight = 547
  ClientWidth = 922
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 512
    Width = 922
    TabOrder = 11
    inherited pnlOKCancel: TPanel
      Left = 654
    end
    inherited pnlClose: TPanel
      Left = 565
    end
    inherited pnlApply: TPanel
      Left = 833
    end
  end
  inline frParamProductFilter: TfrParamProductFilter [1]
    Left = 536
    Top = 8
    Width = 377
    Height = 233
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
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
    inherited cdsProductOrigins: TAbmesClientDataSet
      Top = 192
    end
    inherited dsProductOrigins: TDataSource
      Top = 192
    end
    inherited cdsUsedBy: TAbmesClientDataSet
      Top = 192
    end
    inherited cdsProvidedBy: TAbmesClientDataSet
      Top = 192
    end
    inherited dsUsedBy: TDataSource
      Top = 192
    end
    inherited dsProvidedBy: TDataSource
      Top = 192
    end
  end
  object gbShipmentDateInterval: TGroupBox [2]
    Left = 8
    Top = 135
    Width = 169
    Height = 106
    Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1103' '
    TabOrder = 5
    inline frShipmentDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 24
      Width = 153
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 153
      Constraints.MinHeight = 21
      Constraints.MinWidth = 153
      TabOrder = 0
      TabStop = True
      inherited edtInterval: TJvDBComboEdit
        Width = 153
      end
    end
  end
  object gbClient: TGroupBox [3]
    Left = 8
    Top = 245
    Width = 601
    Height = 260
    Caption = ' '#1050#1083#1080#1077#1085#1090' '
    TabOrder = 9
    object lblCountry: TLabel
      Left = 400
      Top = 88
      Width = 48
      Height = 13
      Caption = #1044#1098#1088#1078#1072#1074#1072
      FocusControl = cbCountry
    end
    object lblReceivePlaceOffice: TLabel
      Left = 400
      Top = 16
      Width = 33
      Height = 13
      Caption = #1058#1055
    end
    object cbCountry: TJvDBLookupCombo
      Left = 400
      Top = 104
      Width = 193
      Height = 21
      DeleteKeyClear = False
      DataField = '_COUNTRY_NAME'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      TabOrder = 2
    end
    object cbReceivePlaceOffice: TJvDBLookupCombo
      Left = 400
      Top = 32
      Width = 193
      Height = 21
      DeleteKeyClear = False
      DataField = '_RECEIVE_PLACE_OFFICE_NAME'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      TabOrder = 1
    end
    inline frClient: TfrCompanyFilter
      Left = 8
      Top = 16
      Width = 377
      Height = 233
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
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
        inherited pnlBottom: TPanel
          inherited lblCommonStatus: TLabel
            Width = 45
          end
        end
      end
    end
  end
  object gbSaleDealType: TGroupBox [4]
    Left = 320
    Top = 8
    Width = 73
    Height = 57
    Caption = ' '#1058#1080#1087' '#1054#1055#1055' '
    TabOrder = 2
    DesignSize = (
      73
      57)
    object cbSaleDealType: TJvDBLookupCombo
      Left = 8
      Top = 24
      Width = 57
      Height = 21
      DropDownWidth = 240
      DeleteKeyClear = False
      DataField = '_SALE_DEAL_TYPE_SHOW_NAME'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089' >'
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
    end
  end
  object gbLeaseDateUnit: TGroupBox [5]
    Left = 400
    Top = 8
    Width = 129
    Height = 57
    Caption = ' '#1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072' '
    TabOrder = 3
    object cbLeaseDateUnit: TJvDBLookupCombo
      Left = 8
      Top = 24
      Width = 113
      Height = 21
      DeleteKeyClear = False
      DataField = '_LEASE_DATE_UNIT_NAME'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      TabOrder = 0
    end
  end
  object gbLeaseGroupType: TGroupBox [6]
    Left = 8
    Top = 72
    Width = 521
    Height = 57
    Caption = ' '#1043#1088#1091#1087#1080#1088#1072#1085#1077' '#1087#1086' '
    TabOrder = 4
    DesignSize = (
      521
      57)
    object cbLeaseGroupType: TJvDBComboBox
      Left = 8
      Top = 24
      Width = 505
      Height = 21
      DataField = 'LEASE_GROUP_TYPE'
      DataSource = dsData
      Anchors = [akLeft, akTop, akRight]
      ItemHeight = 13
      Items.Strings = (
        #1045#1082#1089#1087#1077#1076#1080#1094#1080#1103' '#1085#1072' '#1059#1054#1073' '#1055#1088#1086#1076#1072#1074#1072#1085#1080
        #1042#1088#1098#1097#1072#1085#1077' '#1085#1072' '#1053#1072#1077#1090#1080' '#1086#1090' '#1050#1083#1080#1077#1085#1090' '#1059#1054#1073)
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
  object gbSaleShipmentState: TGroupBox [7]
    Left = 8
    Top = 8
    Width = 217
    Height = 57
    Caption = ' '#1057#1090#1072#1090#1091#1089' '#1085#1072' '#1043#1088#1091#1087#1072' '#1054#1055#1055' '#1087#1086' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1103' '
    TabOrder = 0
    object lblDash2: TLabel
      Left = 105
      Top = 29
      Width = 6
      Height = 13
      Caption = #8212
    end
    object cbMinSaleShipmentState: TDBComboBoxEh
      Left = 8
      Top = 25
      Width = 93
      Height = 21
      DataField = 'MIN_SALE_SHIPMENT_STATE_CODE'
      DataSource = dsData
      DropDownBox.Rows = 13
      DropDownBox.Width = 450
      EditButtons = <>
      TabOrder = 0
      Visible = True
    end
    object cbMaxSaleShipmentState: TDBComboBoxEh
      Left = 116
      Top = 25
      Width = 93
      Height = 21
      DataField = 'MAX_SALE_SHIPMENT_STATE_CODE'
      DataSource = dsData
      DropDownBox.Rows = 13
      DropDownBox.Width = 450
      EditButtons = <>
      TabOrder = 1
      Visible = True
    end
  end
  object gbReceiveDateInterval: TGroupBox [8]
    Left = 184
    Top = 135
    Width = 169
    Height = 106
    Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1086#1083#1091#1095#1072#1074#1072#1085#1077' '
    TabOrder = 6
    object lblReceiveDateRsv: TLabel
      Left = 8
      Top = 56
      Width = 24
      Height = 13
      Caption = #1088#1079#1088#1074
    end
    object lblDash3: TLabel
      Left = 52
      Top = 76
      Width = 9
      Height = 13
      Caption = '---'
    end
    inline frReceiveDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 24
      Width = 153
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 153
      Constraints.MinHeight = 21
      Constraints.MinWidth = 153
      TabOrder = 0
      TabStop = True
      inherited edtInterval: TJvDBComboEdit
        Width = 153
      end
    end
    object edtReceiveDateBeginRsv: TDBEdit
      Left = 8
      Top = 72
      Width = 41
      Height = 21
      DataField = 'RECEIVE_DATE_BEGIN_RSV'
      DataSource = dsData
      TabOrder = 1
    end
    object edtReceiveDateEndRsv: TDBEdit
      Left = 64
      Top = 72
      Width = 41
      Height = 21
      DataField = 'RECEIVE_DATE_END_RSV'
      DataSource = dsData
      TabOrder = 2
    end
  end
  object gbImportDateInterval: TGroupBox [9]
    Left = 360
    Top = 135
    Width = 169
    Height = 106
    Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1042#1088#1098#1097#1072#1085#1077' '
    TabOrder = 7
    object lblImportDateRsv: TLabel
      Left = 8
      Top = 56
      Width = 24
      Height = 13
      Caption = #1088#1079#1088#1074
    end
    object lblDash1: TLabel
      Left = 52
      Top = 76
      Width = 9
      Height = 13
      Caption = '---'
    end
    inline frImportDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 24
      Width = 153
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 153
      Constraints.MinHeight = 21
      Constraints.MinWidth = 153
      TabOrder = 0
      TabStop = True
      inherited edtInterval: TJvDBComboEdit
        Width = 153
      end
    end
    object edtImportDateBeginRsv: TDBEdit
      Left = 8
      Top = 72
      Width = 41
      Height = 21
      DataField = 'IMPORT_DATE_BEGIN_RSV'
      DataSource = dsData
      TabOrder = 1
    end
    object edtImportDateEndRsv: TDBEdit
      Left = 64
      Top = 72
      Width = 41
      Height = 21
      DataField = 'IMPORT_DATE_END_RSV'
      DataSource = dsData
      TabOrder = 2
    end
  end
  object gbExceptEventDamages: TGroupBox [10]
    Left = 616
    Top = 245
    Width = 297
    Height = 65
    Caption = ' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083'. '
    TabOrder = 10
    object lblExceptEventDamages: TLabel
      Left = 8
      Top = 16
      Width = 106
      Height = 13
      Caption = #1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103
    end
    object cbDamagesState: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 281
      Height = 21
      DropDownWidth = 300
      DataField = 'DAMAGES_STATE_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      LookupField = 'STATE_CODE'
      LookupDisplay = 'STATE_ABBREV;STATE_NAME'
      LookupSource = dsDamageStates
      TabOrder = 0
    end
  end
  object gbSaleID: TGroupBox [11]
    Left = 232
    Top = 8
    Width = 81
    Height = 57
    Caption = ' '#1058#1055' '#1043#1083'. '
    TabOrder = 1
    object cbBranch: TJvDBLookupCombo
      Left = 8
      Top = 24
      Width = 65
      Height = 21
      DataField = '_SALE_BRANCH_CODE_AND_NAME'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'. >'
      TabOrder = 0
    end
  end
  inherited alActions: TActionList [12]
    Left = 520
    Top = 65528
    inherited actForm: TAction
      Caption = 
        '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1055#1088#1086#1076#1072#1078#1073#1080' '#1079#1072' %ProductClassAbbr' +
        'ev% - '#1043#1088#1091#1087#1080' '#1054#1055#1055' '#1087#1086' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1080
    end
  end
  inherited dsData: TDataSource [13]
    Left = 472
    Top = 65528
  end
  inherited cdsData: TAbmesClientDataSet [14]
    Left = 440
    Top = 65528
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [15]
    Left = 216
    Top = 496
  end
  inherited dsFilterVariants: TDataSource [16]
    Left = 248
    Top = 496
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 288
    Top = 496
  end
  object cdsDamageStates: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 792
    Top = 272
    object cdsDamageStatesSTATE_CODE: TAbmesFloatField
      FieldName = 'STATE_CODE'
    end
    object cdsDamageStatesSTATE_ABBREV: TAbmesWideStringField
      FieldName = 'STATE_ABBREV'
      Size = 15
    end
    object cdsDamageStatesSTATE_NAME: TAbmesWideStringField
      FieldName = 'STATE_NAME'
      Size = 30
    end
  end
  object dsDamageStates: TDataSource
    DataSet = cdsDamageStates
    Left = 824
    Top = 272
  end
end
