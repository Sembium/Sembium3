inherited fmQuantityDeficitFilter: TfmQuantityDeficitFilter
  Left = 324
  Top = 303
  Caption = 
    '%s '#1085#1072' '#1042#1048#1052' - '#1058#1072#1073#1083#1080#1095#1077#1085' '#1085#1072' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' %ProductClas' +
    'sAbbrev%'
  ClientHeight = 516
  ClientWidth = 777
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 481
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
  object gbPlannedSecondLevel: TGroupBox [1]
    Left = 392
    Top = 200
    Width = 377
    Height = 41
    TabOrder = 3
    object cbQuantitiesOut: TAbmesDBCheckBox
      Left = 10
      Top = 14
      Width = 159
      Height = 17
      Caption = '+ '#1055#1088#1086#1077#1082#1090#1085#1080' '#1076#1074#1080#1078#1077#1085#1080#1103
      DataField = 'MAX_PSD_TYPE_CODE'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = '2'
      ValueUnchecked = '1'
    end
  end
  object gbFlags: TGroupBox [2]
    Left = 8
    Top = 392
    Width = 761
    Height = 81
    Caption = ' '#1048#1079#1074#1077#1076#1080' '#1089#1072#1084#1086' %ProductsClassName%, '#1079#1072' '#1082#1086#1080#1090#1086' '
    TabOrder = 1
    object pnlDeficit: TPanel
      Left = 2
      Top = 15
      Width = 159
      Height = 58
      BevelOuter = bvNone
      TabOrder = 0
      object rbDeficitOn: TRadioButton
        Left = 8
        Top = 6
        Width = 137
        Height = 17
        Hint = #1047#1072#1087#1080#1089
        Caption = #1048#1084#1072' '#1076#1077#1092#1080#1094#1080#1090' '#1089#1087#1088#1103#1084#1086' 0'
        TabOrder = 0
        OnClick = RadioButtonsClick
      end
      object rbDeficitOff: TRadioButton
        Left = 8
        Top = 22
        Width = 145
        Height = 17
        Hint = #1047#1072#1087#1080#1089
        Caption = #1053#1103#1084#1072' '#1076#1077#1092#1080#1094#1080#1090' '#1089#1087#1088#1103#1084#1086' 0'
        TabOrder = 1
        OnClick = RadioButtonsClick
      end
      object rbDeficitAll: TRadioButton
        Left = 8
        Top = 38
        Width = 57
        Height = 17
        Hint = #1047#1072#1087#1080#1089
        Caption = #1042#1089#1080#1095#1082#1080
        TabOrder = 2
        OnClick = RadioButtonsClick
      end
    end
    object pnlPSDIn: TPanel
      Left = 330
      Top = 15
      Width = 175
      Height = 58
      BevelOuter = bvNone
      TabOrder = 1
      object rbPSDInOn: TRadioButton
        Left = 8
        Top = 6
        Width = 161
        Height = 17
        Hint = #1047#1072#1087#1080#1089
        Caption = #1048#1084#1072' '#1087#1083#1072#1085#1086#1074#1080' '#1087#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103
        TabOrder = 0
        OnClick = RadioButtonsClick
      end
      object rbPSDInOff: TRadioButton
        Left = 8
        Top = 22
        Width = 161
        Height = 17
        Hint = #1047#1072#1087#1080#1089
        Caption = #1053#1103#1084#1072' '#1087#1083#1072#1085#1086#1074#1080' '#1087#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103
        TabOrder = 1
        OnClick = RadioButtonsClick
      end
      object rbPSDInAll: TRadioButton
        Left = 8
        Top = 38
        Width = 57
        Height = 17
        Hint = #1047#1072#1087#1080#1089
        Caption = #1042#1089#1080#1095#1082#1080
        TabOrder = 2
        OnClick = RadioButtonsClick
      end
    end
    object pnlDeficitTowardsReserve: TPanel
      Left = 162
      Top = 15
      Width = 169
      Height = 58
      BevelOuter = bvNone
      TabOrder = 2
      object rbDeficitTowardsReserveOn: TRadioButton
        Left = 0
        Top = 6
        Width = 161
        Height = 17
        Hint = #1047#1072#1087#1080#1089
        Caption = #1048#1084#1072' '#1076#1077#1092#1080#1094#1080#1090' '#1089#1087#1088#1103#1084#1086' '#1079#1072#1076#1077#1083
        TabOrder = 0
        OnClick = RadioButtonsClick
      end
      object rbDeficitTowardsReserveOff: TRadioButton
        Left = 0
        Top = 22
        Width = 169
        Height = 17
        Hint = #1047#1072#1087#1080#1089
        Caption = #1053#1103#1084#1072' '#1076#1077#1092#1080#1094#1080#1090' '#1089#1087#1088#1103#1084#1086' '#1079#1072#1076#1077#1083
        TabOrder = 1
        OnClick = RadioButtonsClick
      end
      object rbDeficitTowardsReserveAll: TRadioButton
        Left = 0
        Top = 38
        Width = 57
        Height = 17
        Hint = #1047#1072#1087#1080#1089
        Caption = #1042#1089#1080#1095#1082#1080
        TabOrder = 2
        OnClick = RadioButtonsClick
      end
    end
    object pnlPSDOut: TPanel
      Left = 506
      Top = 15
      Width = 143
      Height = 58
      BevelOuter = bvNone
      TabOrder = 3
      object rbPSDOutOn: TRadioButton
        Left = 0
        Top = 6
        Width = 137
        Height = 17
        Hint = #1047#1072#1087#1080#1089
        Caption = #1048#1084#1072' '#1087#1083#1072#1085#1086#1074#1080' '#1090#1077#1075#1083#1077#1085#1080#1103
        TabOrder = 0
        OnClick = RadioButtonsClick
      end
      object rbPSDOutOff: TRadioButton
        Left = 0
        Top = 22
        Width = 145
        Height = 17
        Hint = #1047#1072#1087#1080#1089
        Caption = #1053#1103#1084#1072' '#1087#1083#1072#1085#1086#1074#1080' '#1090#1077#1075#1083#1077#1085#1080#1103
        TabOrder = 1
        OnClick = RadioButtonsClick
      end
      object rbPSDOutAll: TRadioButton
        Left = 0
        Top = 38
        Width = 57
        Height = 17
        Hint = #1047#1072#1087#1080#1089
        Caption = #1042#1089#1080#1095#1082#1080
        TabOrder = 2
        OnClick = RadioButtonsClick
      end
    end
  end
  inline frDateUnitsInterval: TfrDateUnitsIntervalEditFrame [3]
    Left = 8
    Top = 248
    Width = 761
    Height = 136
    TabOrder = 4
    TabStop = True
    inherited gbTimeUnits: TGroupBox
      Width = 761
      inherited lblTimeUnit: TLabel
        Width = 84
      end
      inherited lblTimeUnitCount: TLabel
        Left = 272
        Width = 111
      end
      inherited lblTUStart: TLabel
        Left = 262
      end
      inherited lblTUEnd: TLabel
        Left = 670
      end
      inherited tbTimeUnitCount: TTrackBar
        Left = 264
        Width = 441
      end
      inherited pnlTimeUnitsNum: TPanel
        Left = 702
      end
    end
    inherited gbDates: TGroupBox
      Width = 761
      inherited deEndDate: TAbmesDBDateEdit
        Left = 592
      end
      inherited edtEndDate: TDBEdit
        Left = 680
      end
      inherited btnPrev: TBitBtn
        Left = 272
      end
      inherited btnFinePrev: TBitBtn
        Left = 344
      end
      inherited btnFineNext: TBitBtn
        Left = 395
      end
      inherited btnNext: TBitBtn
        Left = 443
      end
    end
  end
  inline frParamProductFilter: TfrParamProductFilter [4]
    Left = 8
    Top = 8
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
  inline frDeptFilter: TfrDeptFilter [5]
    Left = 392
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
  inherited alActions: TActionList [6]
    Left = 226
    Top = 495
    inherited actForm: TAction
      Caption = 
        '%s '#1085#1072' '#1042#1048#1052' - '#1058#1072#1073#1083#1080#1095#1077#1085' '#1085#1072' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' %ProductClas' +
        'sAbbrev%'
    end
  end
  inherited dsData: TDataSource [7]
    DataSet = nil
    Left = 298
    Top = 495
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [8]
    Top = 481
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 266
    Top = 495
  end
  inherited dsFilterVariants: TDataSource
    Top = 481
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Top = 497
  end
end
