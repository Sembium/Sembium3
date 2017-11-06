inherited fmCapacityAbstractFilter: TfmCapacityAbstractFilter
  Left = 265
  Top = 372
  Caption = '%s'
  ClientHeight = 555
  ClientWidth = 777
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 520
    Width = 777
    TabOrder = 2
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
  object pnlParRelProduct: TPanel [1]
    Left = 0
    Top = 0
    Width = 777
    Height = 129
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object gbParRelProductStatus: TGroupBox
      Left = 8
      Top = 8
      Width = 233
      Height = 57
      Caption = ' '#1057#1090#1072#1090#1091#1089' '#1085#1072' '#1048#1048#1056' '
      TabOrder = 0
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
    object gbProductCommonLevel: TGroupBox
      Left = 8
      Top = 72
      Width = 377
      Height = 57
      Caption = ' '#1053#1080#1074#1086' '#1048#1048#1056' '#1089#1087#1088#1103#1084#1086' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '
      TabOrder = 1
      object cbProductCommonLevel: TJvDBComboBox
        Left = 8
        Top = 24
        Width = 361
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
    object gbPartnerCommonLevel: TGroupBox
      Left = 392
      Top = 72
      Width = 377
      Height = 57
      Caption = ' '#1053#1080#1074#1086' '#1048#1048#1056' '#1089#1087#1088#1103#1084#1086' '#1055#1072#1088#1090#1085#1100#1086#1088' '
      TabOrder = 2
      object cbPartnerCommonLevel: TJvDBComboBox
        Left = 8
        Top = 24
        Width = 361
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
  end
  object pnlMain: TPanel [2]
    Left = 0
    Top = 129
    Width = 777
    Height = 391
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    inline frDeptFilter: TfrDeptFilter
      Left = 8
      Top = 8
      Width = 377
      Height = 145
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = True
      inherited grpTreeNodeFilter: TGroupBox
        inherited lblsExternal: TLabel
          Width = 52
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
      end
    end
    inline frDeptProductFilter: TfrParamProductFilter
      Left = 392
      Top = 8
      Width = 377
      Height = 232
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = True
      inherited grpTreeNodeFilter: TGroupBox
        Height = 232
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
    object rgCapacityLimitLevel: TDBRadioGroup
      Left = 8
      Top = 160
      Width = 377
      Height = 81
      Caption = ' '#1053#1080#1074#1086' '#1056#1072#1079#1087#1086#1083#1072#1075#1072#1077#1084' '#1050#1072#1087#1072#1094#1080#1090#1077#1090' '
      DataField = 'CAPACITY_LIMIT_LEVEL'
      DataSource = dsData
      Items.Strings = (
        #1056#1072#1079#1095#1077#1090#1077#1085
        #1053#1086#1088#1084#1072#1090#1080#1074#1077#1085
        #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1077#1085
        #1055#1088#1080#1089#1098#1089#1090#1074#1077#1085)
      ParentBackground = True
      TabOrder = 2
      Values.Strings = (
        '1'
        '2'
        '3'
        '4')
    end
    object gbCalcAllLimitLevels: TGroupBox
      Left = 192
      Top = 200
      Width = 185
      Height = 33
      TabOrder = 3
      object chkCalcAllLimitLevels: TAbmesDBCheckBox
        Left = 8
        Top = 11
        Width = 169
        Height = 17
        Caption = #1056#1072#1079#1087#1086#1083#1072#1075#1072#1077#1084' '#1086#1090' '#1074#1089#1080#1095#1082#1080' '#1085#1080#1074#1072' '
        DataField = 'CALC_ALL_LIMIT_LEVELS'
        DataSource = dsData
        TabOrder = 0
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
    end
    inline frDateUnitsInterval: TfrDateUnitsIntervalEditFrame
      Left = 8
      Top = 248
      Width = 761
      Height = 136
      TabOrder = 4
      TabStop = True
      inherited gbTimeUnits: TGroupBox
        Top = 3
        Width = 761
        inherited lblTimeUnit: TLabel
          Width = 84
        end
        inherited lblTimeUnitCount: TLabel
          Left = 272
          Top = 13
          Width = 111
        end
        inherited lblTUStart: TLabel
          Left = 261
          Top = 62
        end
        inherited lblTUEnd: TLabel
          Left = 678
        end
        inherited tbTimeUnitCount: TTrackBar
          Left = 264
          Width = 449
        end
        inherited pnlTimeUnitsNum: TPanel
          Left = 718
        end
      end
      inherited gbDates: TGroupBox
        Width = 761
        inherited deBeginDate: TAbmesDBDateEdit
          Left = 16
        end
        inherited edtBeginDate: TDBEdit
          Left = 104
        end
        inherited deEndDate: TAbmesDBDateEdit
          Left = 584
        end
        inherited edtEndDate: TDBEdit
          Left = 672
        end
        inherited btnPrev: TBitBtn
          Left = 264
        end
        inherited btnFinePrev: TBitBtn
          Left = 336
        end
        inherited btnFineNext: TBitBtn
          Left = 379
        end
        inherited btnNext: TBitBtn
          Left = 427
        end
      end
      inherited cdsLocal: TAbmesClientDataSet
        Left = 416
      end
      inherited dsLocal: TDataSource
        Left = 448
      end
      inherited cdsTimeUnits: TAbmesClientDataSet
        Left = 512
      end
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = '%s'
    end
    object actPrev: TAction
      Hint = '-n'
      ImageIndex = 36
    end
    object actNext: TAction
      Hint = '+n'
      ImageIndex = 37
    end
    object actPrevFine: TAction
      Caption = '<'
      Hint = '-1'
    end
    object actNextFine: TAction
      Caption = '>'
      Hint = '+1'
    end
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Top = 384
  end
  inherited dsFilterVariants: TDataSource
    Top = 384
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Top = 400
  end
  object cdsParRelProductStatuses: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conParRelProducts
    Params = <>
    ProviderName = 'prvParRelProductStatuses'
    Left = 24
    Top = 40
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
    Left = 56
    Top = 40
  end
end
