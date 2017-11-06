inherited fmUncoveredPSDSingleFilter: TfmUncoveredPSDSingleFilter
  Left = 238
  Top = 110
  Caption = '%s '#1085#1072' '#1053#1077#1086#1073#1077#1079#1087#1077#1095#1077#1085#1080' '#1055#1083#1072#1085#1086#1074#1080' '#1058#1077#1075#1083#1077#1085#1080#1103' '#1085#1072' %ProductClassAbbrev%'
  ClientHeight = 516
  ClientWidth = 793
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 481
    Width = 793
    TabOrder = 6
    inherited pnlOKCancel: TPanel
      Left = 525
    end
    inherited pnlClose: TPanel
      Left = 436
    end
    inherited pnlApply: TPanel
      Left = 704
    end
  end
  object gbPlannedSecondLevel: TGroupBox [1]
    Left = 200
    Top = 8
    Width = 193
    Height = 81
    Caption = ' '#1054#1087#1088#1077#1076#1077#1083#1103#1085#1077' '#1085#1072' '#1054#1073#1077#1079#1087#1077#1095#1077#1085#1086#1089#1090' '
    TabOrder = 1
    object cbIsTowardsReserve: TJvDBComboBox
      Left = 16
      Top = 31
      Width = 161
      Height = 21
      DataField = 'IS_TOWARDS_RESERVE'
      DataSource = dsData
      ItemHeight = 0
      Items.Strings = (
        #1089#1087#1088#1103#1084#1086' 0'
        #1089#1087#1088#1103#1084#1086' '#1079#1072#1076#1077#1083)
      TabOrder = 0
      Values.Strings = (
        'False'
        'True')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
    end
  end
  object rgIncludePlanSecondLevel: TDBRadioGroup [2]
    Left = 8
    Top = 8
    Width = 177
    Height = 81
    Caption = ' '#1053#1080#1074#1086' '#1085#1072' '#1054#1073#1077#1079#1087#1077#1095#1077#1085#1086#1089#1090' '
    Columns = 2
    DataField = 'INCLUDE_PL_SECOND_LEVEL'
    DataSource = dsData
    Items.Strings = (
      #1055#1083#1072#1085#1086#1074#1086
      #1055#1088#1086#1077#1082#1090#1085#1086)
    ParentBackground = True
    TabOrder = 0
    Values.Strings = (
      '0'
      '1')
  end
  inline frDeptFilter: TfrDeptFilter [3]
    Left = 8
    Top = 96
    Width = 385
    Height = 145
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    inherited grpTreeNodeFilter: TGroupBox
      Width = 385
      Caption = ' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086' '
      inherited lblsExternal: TLabel
        Width = 52
      end
      inherited lblIsActive: TLabel
        Width = 53
      end
      inherited pnlNodes: TPanel
        Width = 369
        inherited grdChosenNodes: TAbmesDBGrid
          Width = 344
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
          Columns = <
            item
              EditButtons = <>
              FieldName = 'NODE_NAME'
              Footers = <>
              Width = 247
            end
            item
              EditButtons = <>
              FieldName = 'NODE_IDENTIFIER'
              Footers = <>
              Width = 63
            end>
        end
        inherited pnlNodesButtons: TPanel
          Left = 344
        end
      end
    end
  end
  inline frParamProductFilter: TfrParamProductFilter [4]
    Left = 408
    Top = 8
    Width = 377
    Height = 233
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
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
  inline frDateUnits: TfrDateUnitsIntervalEditFrame [5]
    Left = 8
    Top = 248
    Width = 777
    Height = 137
    TabOrder = 4
    TabStop = True
    inherited gbTimeUnits: TGroupBox
      Width = 777
      Height = 82
      inherited lblTimeUnit: TLabel
        Width = 84
      end
      inherited lblTimeUnitCount: TLabel
        Left = 224
        Width = 111
      end
      inherited lblTUStart: TLabel
        Left = 214
      end
      inherited lblTUEnd: TLabel
        Left = 630
      end
      inherited tbTimeUnitCount: TTrackBar
        Left = 216
        Width = 449
      end
      inherited pnlTimeUnitsNum: TPanel
        Left = 670
      end
    end
    inherited gbDates: TGroupBox
      Top = 88
      Width = 777
    end
  end
  inline frBndProcess: TfrStoreDealBindingFilter [6]
    Left = 8
    Top = 392
    Width = 777
    Height = 81
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    TabStop = True
  end
  inherited alActions: TActionList [7]
    Left = 456
    Top = 232
    inherited actForm: TAction
      Caption = '%s '#1085#1072' '#1053#1077#1086#1073#1077#1079#1087#1077#1095#1077#1085#1080' '#1055#1083#1072#1085#1086#1074#1080' '#1058#1077#1075#1083#1077#1085#1080#1103' '#1085#1072' %ProductClassAbbrev%'
    end
  end
  inherited dsData: TDataSource [8]
    Left = 520
    Top = 232
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 488
    Top = 232
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Top = 472
  end
  inherited dsFilterVariants: TDataSource
    Top = 472
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Top = 488
  end
end
