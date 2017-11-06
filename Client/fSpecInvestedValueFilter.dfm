inherited fmSpecInvestedValueFilter: TfmSpecInvestedValueFilter
  Left = 292
  Top = 232
  ClientHeight = 407
  ExplicitHeight = 432
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlLevels: TPanel
    Top = 138
    inherited pnlLevel3Outer: TPanel
      TabOrder = 6
    end
    inherited pnlLevelFull: TPanel
      TabOrder = 2
    end
  end
  inherited pnlData: TPanel
    Height = 134
    ExplicitHeight = 134
    object gbDate: TGroupBox
      Left = 520
      Top = 8
      Width = 195
      Height = 62
      TabOrder = 3
      object lblDate: TLabel
        Left = 8
        Top = 27
        Width = 51
        Height = 13
        Caption = #1050#1098#1084' '#1044#1072#1090#1072
      end
      inline frDate: TfrDateFieldEditFrame
        Left = 73
        Top = 24
        Width = 105
        Height = 21
        Constraints.MaxHeight = 21
        Constraints.MaxWidth = 105
        Constraints.MinHeight = 21
        Constraints.MinWidth = 105
        TabOrder = 0
        TabStop = True
        ExplicitLeft = 73
        ExplicitTop = 24
      end
    end
    object gbStages: TGroupBox
      Left = 6
      Top = 73
      Width = 709
      Height = 57
      TabOrder = 4
      object lblRootLineStageIncludeLevel: TLabel
        Left = 8
        Top = 11
        Width = 98
        Height = 13
        Caption = #1045#1090#1072#1087#1080' '#1085#1072' '#1085#1091#1083#1077#1074' '#1088#1077#1076
        FocusControl = cbRootLineStageIncludeLevel
      end
      object lblNonRootLineStageIncludeLevel: TLabel
        Left = 358
        Top = 11
        Width = 110
        Height = 13
        Caption = #1045#1090#1072#1087#1080' '#1085#1072' '#1085#1077#1085#1091#1083#1077#1074' '#1088#1077#1076
        FocusControl = cbNonRootLineStageIncludeLevel
      end
      object cbRootLineStageIncludeLevel: TJvDBComboBox
        Left = 8
        Top = 27
        Width = 343
        Height = 21
        DataField = 'ROOT_LINE_STAGE_INCLUDE_LEVEL'
        DataSource = dsData
        ItemHeight = 13
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
        Left = 358
        Top = 27
        Width = 343
        Height = 21
        DataField = 'NON_ROOT_LINE_STAGE_INCLUDE_LEVEL'
        DataSource = dsData
        ItemHeight = 13
        Items.Strings = (
          #1041#1077#1079' '#1050#1088#1072#1081#1085#1086'-'#1076#1086#1073#1072#1074#1103#1085#1080', '#1041#1077#1079' '#1053#1072#1095#1072#1083#1085#1086'-'#1076#1086#1073#1072#1074#1103#1085#1080
          #1057' '#1050#1088#1072#1081#1085#1086'-'#1076#1086#1073#1072#1074#1103#1085#1080', '#1057' '#1053#1072#1095#1072#1083#1085#1086'-'#1076#1086#1073#1072#1074#1103#1085#1080)
        TabOrder = 1
        Values.Strings = (
          '0'
          '1')
      end
    end
  end
  inherited pnlBottomButtons: TPanel
    Top = 372
  end
end
