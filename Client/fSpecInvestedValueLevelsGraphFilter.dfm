inherited fmSpecInvestedValueLevelsGraphFilter: TfmSpecInvestedValueLevelsGraphFilter
  ActiveControl = frSpecProduct.edtTreeNodeNo
  Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080
  ClientHeight = 416
  ClientWidth = 617
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 381
    Width = 617
    TabOrder = 7
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
    Top = 238
    Width = 601
    Height = 136
    TabOrder = 6
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
  inline frSpecProduct: TfrProductFieldEditFrame [2]
    Left = 8
    Top = 8
    Width = 601
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 0
    TabStop = True
    inherited gbTreeNode: TGroupBox
      Width = 601
      inherited pnlTreeNode: TPanel
        Width = 585
        inherited pnlTreeNodeName: TPanel
          Width = 403
          inherited edtTreeNodeName: TDBEdit
            Width = 402
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 403
        end
        inherited pnlRightButtons: TPanel
          Left = 526
        end
      end
    end
  end
  object gbQuantity: TGroupBox [3]
    Left = 152
    Top = 120
    Width = 273
    Height = 49
    Caption = ' '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '
    TabOrder = 3
    object txtRealMeasure: TDBText
      Left = 85
      Top = 19
      Width = 33
      Height = 17
      DataField = '_REAL_MEASURE_ABBREV'
      DataSource = dsData
    end
    object edtRealQuantity: TDBEdit
      Left = 8
      Top = 16
      Width = 73
      Height = 21
      DataField = 'REAL_QUANTITY'
      DataSource = dsData
      TabOrder = 0
    end
    object rgInvestedValueSingle: TJvDBRadioPanel
      Left = 136
      Top = 11
      Width = 129
      Height = 35
      BevelOuter = bvNone
      DataField = 'INVESTMENT_VALUE_SINGLE'
      DataSource = dsData
      Items.Strings = (
        #1047#1072' '#1087#1072#1088#1090#1080#1076#1072
        #1047#1072' '#1077#1076#1080#1085#1080#1094#1072' '#1059#1054#1073)
      TabOrder = 1
      Values.Strings = (
        'False'
        'True')
    end
  end
  object gbCurrency: TGroupBox [4]
    Left = 432
    Top = 120
    Width = 81
    Height = 49
    Caption = ' '#1042#1072#1083#1091#1090#1072' '
    TabOrder = 4
    DesignSize = (
      81
      49)
    object cbCurrency: TJvDBLookupCombo
      Left = 8
      Top = 16
      Width = 65
      Height = 21
      DeleteKeyClear = False
      DataField = '_CURRENCY_ABBREV'
      DataSource = dsData
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
    end
  end
  object gbStageIncludeLevel: TGroupBox [5]
    Left = 8
    Top = 176
    Width = 601
    Height = 57
    TabOrder = 5
    object lblRootLineStageIncludeLevel: TLabel
      Left = 8
      Top = 12
      Width = 98
      Height = 13
      Caption = #1045#1090#1072#1087#1080' '#1085#1072' '#1085#1091#1083#1077#1074' '#1088#1077#1076
      FocusControl = cbRootLineStageIncludeLevel
    end
    object lblNonRootLineStageIncludeLevel: TLabel
      Left = 304
      Top = 12
      Width = 110
      Height = 13
      Caption = #1045#1090#1072#1087#1080' '#1085#1072' '#1085#1077#1085#1091#1083#1077#1074' '#1088#1077#1076
      FocusControl = cbNonRootLineStageIncludeLevel
    end
    object cbRootLineStageIncludeLevel: TJvDBComboBox
      Left = 8
      Top = 28
      Width = 289
      Height = 21
      DataField = 'ROOT_LINE_STAGE_INCLUDE_LEVEL'
      DataSource = dsData
      Items.Strings = (
        #1041#1077#1079' '#1050#1088#1072#1081#1085#1086'-'#1076#1086#1073#1072#1074#1103#1085#1080', '#1041#1077#1079' '#1053#1072#1095#1072#1083#1085#1086'-'#1076#1086#1073#1072#1074#1103#1085#1080
        #1057' '#1050#1088#1072#1081#1085#1086'-'#1076#1086#1073#1072#1074#1103#1085#1080', '#1041#1077#1079' '#1053#1072#1095#1072#1083#1085#1086'-'#1076#1086#1073#1072#1074#1103#1085#1080
        #1057' '#1050#1088#1072#1081#1085#1086'-'#1076#1086#1073#1072#1074#1103#1085#1080', '#1057' '#1053#1072#1095#1072#1083#1085#1086'-'#1076#1086#1073#1072#1074#1103#1085#1080)
      TabOrder = 0
      Values.Strings = (
        '0'
        '1'
        '2')
    end
    object cbNonRootLineStageIncludeLevel: TJvDBComboBox
      Left = 304
      Top = 28
      Width = 289
      Height = 21
      DataField = 'NON_ROOT_LINE_STAGE_INCLUDE_LEVEL'
      DataSource = dsData
      Items.Strings = (
        #1041#1077#1079' '#1050#1088#1072#1081#1085#1086'-'#1076#1086#1073#1072#1074#1103#1085#1080', '#1041#1077#1079' '#1053#1072#1095#1072#1083#1085#1086'-'#1076#1086#1073#1072#1074#1103#1085#1080
        #1057' '#1050#1088#1072#1081#1085#1086'-'#1076#1086#1073#1072#1074#1103#1085#1080', '#1057' '#1053#1072#1095#1072#1083#1085#1086'-'#1076#1086#1073#1072#1074#1103#1085#1080)
      TabOrder = 1
      Values.Strings = (
        '0'
        '1')
    end
  end
  object gbMeasureType: TGroupBox [6]
    Left = 8
    Top = 120
    Width = 137
    Height = 49
    Caption = ' '#1042#1080#1076' '#1052'.'#1077#1076'. '
    TabOrder = 2
    DesignSize = (
      137
      49)
    object cbMeasureType: TJvDBLookupCombo
      Left = 8
      Top = 16
      Width = 121
      Height = 21
      DeleteKeyClear = False
      DataField = '_MEASURE_TYPE_NAME'
      DataSource = dsData
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
    end
  end
  object gbMainDept: TGroupBox [7]
    Left = 8
    Top = 64
    Width = 601
    Height = 49
    Caption = ' '#1058#1055' '#1056#1077#1072#1083#1080#1079#1072#1090#1086#1088' '
    TabOrder = 1
    DesignSize = (
      601
      49)
    object cbMainDept: TJvDBLookupCombo
      Left = 8
      Top = 16
      Width = 585
      Height = 21
      DeleteKeyClear = False
      DataField = '_MAIN_DEPT_IDENTIFIER'
      DataSource = dsData
      DisplayEmpty = ' '
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
    end
  end
  inherited alActions: TActionList [8]
    Left = 400
    inherited actForm: TAction
      Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080
    end
  end
  inherited dsData: TDataSource [9]
    Left = 368
  end
  inherited cdsData: TAbmesClientDataSet [10]
    Left = 336
  end
  inherited dsFilterVariants: TDataSource [11]
  end
end
