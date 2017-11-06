inherited fmVIMQuantityFilter: TfmVIMQuantityFilter
  Left = 259
  Caption = 
    '%s '#1085#1072' '#1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' %ProductClas' +
    'sAbbrev%'
  ClientHeight = 458
  ClientWidth = 720
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 423
    Width = 720
    TabOrder = 3
    inherited pnlOKCancel: TPanel
      Left = 452
    end
    inherited pnlClose: TPanel
      Left = 363
    end
    inherited pnlApply: TPanel
      Left = 631
    end
  end
  object gbRounders: TGroupBox [1]
    Left = 373
    Top = 160
    Width = 339
    Height = 113
    Caption = ' '#1047#1072#1082#1088#1098#1075#1083#1103#1074#1072#1085#1077' '
    TabOrder = 1
    object lblRounderQuantity: TLabel
      Left = 16
      Top = 56
      Width = 61
      Height = 13
      Caption = #1047#1072' '#1088#1072#1073'. '#1082'-'#1074#1086
    end
    object lblRounderPrice: TLabel
      Left = 224
      Top = 56
      Width = 37
      Height = 13
      Caption = #1047#1072' '#1042#1057'1'
    end
    object lblRounderAccountQuantity: TLabel
      Left = 120
      Top = 56
      Width = 65
      Height = 13
      Caption = #1047#1072' '#1089#1095#1077#1090'. '#1082'-'#1074#1086
    end
    object cbRounderQuantity: TJvDBLookupCombo
      Left = 16
      Top = 72
      Width = 97
      Height = 21
      DataField = '_ROUNDER_QUANTITY_NAME'
      DataSource = dsData
      TabOrder = 0
    end
    object cbRounderPrice: TJvDBLookupCombo
      Left = 224
      Top = 72
      Width = 97
      Height = 21
      DataField = '_ROUNDER_PRICE_NAME'
      DataSource = dsData
      TabOrder = 1
    end
    object rpIsAutoRounder: TJvDBRadioPanel
      Left = 2
      Top = 16
      Width = 161
      Height = 41
      BevelOuter = bvNone
      DataField = 'IS_AUTO_ROUNDER'
      DataSource = dsData
      Items.Strings = (
        #1040#1074#1090#1086#1084#1072#1090#1080#1095#1085#1086
        #1056#1098#1095#1085#1086)
      TabOrder = 2
      Values.Strings = (
        'True'
        'False')
      OnChange = rpIsAutoRounderChange
    end
    object cbRounderAccountQuantity: TJvDBLookupCombo
      Left = 120
      Top = 72
      Width = 97
      Height = 21
      DataField = '_ROUNDER_ACC_QUANTITY_NAME'
      DataSource = dsData
      TabOrder = 3
    end
  end
  object gbPlannedSecondLevel: TGroupBox [2]
    Left = 8
    Top = 240
    Width = 361
    Height = 33
    TabOrder = 0
    object cbQuantitiesOut: TAbmesDBCheckBox
      Left = 10
      Top = 11
      Width = 159
      Height = 17
      Caption = ' + '#1055#1088#1086#1077#1082#1090#1085#1080' '#1076#1074#1080#1078#1077#1085#1080#1103
      DataField = 'INCLUDE_PLANNED_SECOND_LEVEL'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  inline frDateUnitsInterval: TfrDateUnitsIntervalEditFrame [3]
    Left = 8
    Top = 279
    Width = 705
    Height = 136
    TabOrder = 2
    TabStop = True
    inherited gbTimeUnits: TGroupBox
      Width = 705
      inherited lblTimeUnit: TLabel
        Width = 84
      end
      inherited lblTimeUnitCount: TLabel
        Left = 368
        Width = 111
      end
      inherited lblTUStart: TLabel
        Left = 358
      end
      inherited lblTUEnd: TLabel
        Left = 630
      end
      inherited tbTimeUnitCount: TTrackBar
        Left = 360
        Width = 305
      end
      inherited pnlTimeUnitsNum: TPanel
        Left = 662
      end
    end
    inherited gbDates: TGroupBox
      Width = 705
      inherited deEndDate: TAbmesDBDateEdit
        Left = 528
      end
      inherited edtEndDate: TDBEdit
        Left = 616
      end
      inherited btnPrev: TBitBtn
        Left = 176
        Width = 41
      end
      inherited btnFinePrev: TBitBtn
        Left = 224
      end
      inherited btnFineNext: TBitBtn
        Left = 443
      end
      inherited btnNext: TBitBtn
        Left = 483
        Width = 41
      end
    end
    inherited cdsTimeUnits: TAbmesClientDataSet
      Left = 400
    end
  end
  inline frParamProductFilter: TfrParamProductFilter [4]
    Left = 8
    Top = 9
    Width = 361
    Height = 228
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    TabStop = True
    inherited grpTreeNodeFilter: TGroupBox
      Width = 361
      Height = 228
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
        Width = 345
        inherited grdChosenNodes: TAbmesDBGrid
          Width = 320
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
          Columns = <
            item
              EditButtons = <>
              FieldName = 'NODE_NAME'
              Footers = <>
              Width = 206
            end
            item
              EditButtons = <>
              FieldName = 'NODE_NO'
              Footers = <>
              Width = 78
            end>
        end
        inherited pnlNodesButtons: TPanel
          Left = 320
        end
      end
      inherited pnlParams: TPanel
        Width = 345
        inherited grdChosenNodeParams: TAbmesDBGrid
          Width = 320
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
          Columns = <
            item
              EditButtons = <>
              FieldName = 'NODE_PARAM_NAME'
              Footers = <>
              Width = 176
            end
            item
              EditButtons = <>
              FieldName = 'DISPLAY_VALUE'
              Footers = <>
              Width = 109
            end>
        end
        inherited pnlParamsButtons: TPanel
          Left = 320
        end
      end
    end
  end
  inline frDeptFilter: TfrDeptFilter [5]
    Left = 374
    Top = 9
    Width = 338
    Height = 145
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    TabStop = True
    inherited grpTreeNodeFilter: TGroupBox
      Width = 338
      Caption = ' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086' '
      inherited lblsExternal: TLabel
        Width = 52
      end
      inherited lblIsActive: TLabel
        Width = 53
      end
      inherited pnlNodes: TPanel
        Width = 322
        inherited grdChosenNodes: TAbmesDBGrid
          Width = 297
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
          Columns = <
            item
              EditButtons = <>
              FieldName = 'NODE_NAME'
              Footers = <>
              Width = 200
            end
            item
              EditButtons = <>
              FieldName = 'NODE_IDENTIFIER'
              Footers = <>
              Width = 63
            end>
        end
        inherited pnlNodesButtons: TPanel
          Left = 297
        end
      end
    end
  end
  inherited alActions: TActionList [6]
    Left = 224
    Top = 411
    inherited actForm: TAction
      Caption = 
        '%s '#1085#1072' '#1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' %ProductClas' +
        'sAbbrev%'
    end
    object actPrev: TAction
      Hint = '-n'
      ImageIndex = 36
    end
    object actNext: TAction
      Hint = '+n'
      ImageIndex = 37
    end
    object actFinePrev: TAction
      Caption = '<'
      Hint = '-1'
    end
    object actFineNext: TAction
      Caption = '>'
      Hint = '+1'
    end
  end
  inherited dsData: TDataSource [7]
    Left = 312
    Top = 411
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [8]
    Left = 24
    Top = 427
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 280
    Top = 411
  end
  inherited dsFilterVariants: TDataSource
    Left = 48
    Top = 427
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 96
    Top = 435
  end
end
