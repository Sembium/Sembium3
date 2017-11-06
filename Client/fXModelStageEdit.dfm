inherited fmXModelStageEdit: TfmXModelStageEdit
  Left = 351
  Top = 248
  ActiveControl = frDept.edtTreeNodeNo
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMain: TPanel
    inherited pnlGrid: TPanel
      inherited grdHeader: TAbmesDBGrid
        Columns = <
          item
            EditButtons = <>
            FieldName = '_SHOW_NO'
            Footers = <>
            Title.Caption = #8470
            Width = 29
          end
          item
            EditButtons = <>
            FieldName = 'HAS_DOCUMENTATION'
            Footers = <>
            Title.Caption = #1048' '#1048' '#1054
            Width = 13
          end
          item
            EditButtons = <>
            FieldName = 'HAS_SPECIAL_CONTROL'
            Footers = <>
            Title.Caption = #1057' '#1050
            Width = 13
          end
          item
            EditButtons = <>
            FieldName = '_SETUP_ABBREV'
            Footers = <>
            Title.Caption = #1057' '#1063
            Width = 13
          end
          item
            EditButtons = <>
            FieldName = '_SETUP_DEPT_NAME'
            Footers = <>
            Title.Caption = 'ID '#1054#1087#1058#1055
            Title.ToolTips = True
            Width = 171
          end
          item
            EditButtons = <>
            FieldName = '_SETUP_PROFESSION_NAME'
            Footers = <>
            Title.Caption = 'ID '#1055#1088#1086#1094#1077#1089#1085#1072' '#1056#1086#1083#1103
            Width = 168
          end
          item
            EditButtons = <>
            FieldName = 'SETUP_EFFORT_COEF'
            Footers = <>
            Title.Caption = #1050'-'#1074#1086' '#1044#1056#1054#1088
            Width = 49
          end
          item
            EditButtons = <>
            FieldName = 'REAL_SETUP_HOUR_PRICE'
            Footers = <>
            Title.Caption = #1042#1045#1062' / '#1095#1072#1089
            Width = 49
          end
          item
            EditButtons = <>
            FieldName = '_SHOW_SETUP_HOUR_TECH_QUANTITY'
            Footers = <>
            Title.Caption = #1048#1079#1093#1086#1076#1103#1097#1072' '#1055#1088#1086#1080#1079#1074#1086#1076#1080#1090'. ('#1082#1086#1083'./'#1095#1072#1089')'
            Width = 69
          end
          item
            EditButtons = <>
            FieldName = 'IS_AUTO_SETUP'
            Footers = <>
            Title.Caption = 'A'
            Title.Hint = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1085#1086' '#1086#1090#1095#1080#1090#1072#1085#1077
            Width = 18
          end
          item
            EditButtons = <>
            FieldName = 'PROGRAM_TOOL_REQUIREMENT_CODE'
            Footers = <>
            Title.Caption = #1054#1087#1050#1056'|'#1045
            Width = 18
          end
          item
            EditButtons = <>
            FieldName = 'SPECIFIC_TOOL_REQUIREMENT_CODE'
            Footers = <>
            Title.Caption = #1054#1087#1050#1056'|'#1056
            Width = 18
          end
          item
            EditButtons = <>
            FieldName = 'TYPICAL_TOOL_REQUIREMENT_CODE'
            Footers = <>
            Title.Caption = #1054#1087#1050#1056'|'#1053
            Width = 18
          end
          item
            EditButtons = <>
            FieldName = '_SHOW_APPROVE_CYCLE_NO'
            Footers = <>
            Title.Caption = #1062#1059
            Width = 24
          end
          item
            EditButtons = <>
            FieldName = 'NOTES'
            Footers = <>
            Title.Caption = #1050#1086#1084#1077#1085#1090#1072#1088
            Width = 187
          end
          item
            EditButtons = <>
            Footers = <>
            Width = 16
          end>
      end
      inherited pnlNavigator: TPanel
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Columns = <
          item
            AutoFitColWidth = False
            Color = 14803425
            EditButtons = <>
            FieldName = '_SHOW_NO'
            Footers = <>
            Title.Caption = #8470
            Width = 29
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            Footers = <>
            Title.Caption = #8470
            Width = 29
            InRowLinePos = 1
          end
          item
            AutoFitColWidth = False
            Color = 15532031
            EditButtons = <>
            FieldName = 'HAS_DOCUMENTATION'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Footers = <>
            Layout = tlCenter
            Title.Caption = #1048' '#1048' '#1054
            Width = 13
            InRowLineHeight = 2
          end
          item
            AutoFitColWidth = False
            Color = 15790335
            EditButtons = <>
            FieldName = 'HAS_SPECIAL_CONTROL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Fixedsys'
            Font.Style = [fsBold]
            Footers = <>
            Layout = tlCenter
            Title.Caption = #1057' '#1050
            Width = 13
            InRowLineHeight = 2
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = '_SETUP_ABBREV'
            Footers = <>
            Title.Caption = #1057' '#1063
            Width = 13
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = '_ABBREV'
            Footers = <>
            Title.Caption = #1057' '#1063
            Width = 13
            InRowLinePos = 1
          end
          item
            AutoFitColWidth = False
            Color = 14803425
            EditButtons = <>
            FieldName = 'DEPT_NAME'
            Footers = <>
            Title.Caption = 'ID '#1054#1087#1058#1055
            Title.ToolTips = True
            Width = 171
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'DEPT_IDENTIFIER'
            Footers = <>
            Title.Caption = 'ID '#1054#1087#1058#1055
            Title.ToolTips = True
            Width = 171
            InRowLinePos = 1
          end
          item
            AutoFitColWidth = False
            Color = 14803425
            EditButtons = <>
            FieldName = '_SETUP_PROFESSION_NAME'
            Footers = <>
            Title.Caption = 'ID '#1055#1088#1086#1094#1077#1089#1085#1072' '#1056#1086#1083#1103
            Width = 168
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = '_PROFESSION_NAME'
            Footers = <>
            Title.Caption = 'ID '#1055#1088#1086#1094#1077#1089#1085#1072' '#1056#1086#1083#1103
            Width = 168
            InRowLinePos = 1
          end
          item
            AutoFitColWidth = False
            Color = 14803425
            EditButtons = <>
            FieldName = 'SETUP_EFFORT_COEF'
            Footers = <>
            Title.Caption = #1050'-'#1074#1086' '#1044#1056#1054#1088
            Width = 49
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EFFORT_COEF'
            Footers = <>
            Title.Caption = #1050'-'#1074#1086' '#1044#1056#1054#1088
            Width = 49
            InRowLinePos = 1
          end
          item
            AutoFitColWidth = False
            Color = 14803425
            EditButtons = <>
            FieldName = 'REAL_SETUP_HOUR_PRICE'
            Footers = <>
            Title.Caption = #1042#1045#1062' / '#1095#1072#1089
            Width = 49
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_HOUR_PRICE'
            Footers = <>
            Title.Caption = #1042#1045#1062' / '#1095#1072#1089
            Width = 49
            InRowLinePos = 1
          end
          item
            AutoFitColWidth = False
            Color = 14803425
            EditButtons = <>
            FieldName = '_SHOW_SETUP_HOUR_TECH_QUANTITY'
            Footers = <>
            Title.Caption = #1048#1079#1093#1086#1076#1103#1097#1072' '#1055#1088#1086#1080#1079#1074#1086#1076#1080#1090'. ('#1082#1086#1083'./'#1095#1072#1089')'
            Width = 69
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = '_SHOW_HOUR_TECH_QUANTITY'
            Footers = <>
            Title.Caption = #1048#1079#1093#1086#1076#1103#1097#1072' '#1055#1088#1086#1080#1079#1074#1086#1076#1080#1090'. ('#1082#1086#1083'./'#1095#1072#1089')'
            Width = 69
            InRowLinePos = 1
          end
          item
            Alignment = taCenter
            AutoFitColWidth = False
            Color = 14803425
            EditButtons = <>
            FieldName = 'IS_AUTO_SETUP'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = 'A'
            Width = 18
          end
          item
            Alignment = taCenter
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'IS_AUTO_MOVEMENT'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = 'A'
            Width = 18
            InRowLinePos = 1
          end
          item
            AutoFitColWidth = False
            Color = 16249309
            EditButtons = <>
            FieldName = 'PROGRAM_TOOL_REQUIREMENT_CODE'
            Footers = <>
            Layout = tlCenter
            Title.Caption = #1054#1087#1050#1056'|'#1045
            Width = 18
            InRowLineHeight = 2
          end
          item
            AutoFitColWidth = False
            Color = 16249309
            EditButtons = <>
            FieldName = 'SPECIFIC_TOOL_REQUIREMENT_CODE'
            Footers = <>
            Layout = tlCenter
            Title.Caption = #1054#1087#1050#1056'|'#1056
            Width = 18
            InRowLineHeight = 2
          end
          item
            AutoFitColWidth = False
            Color = 16249309
            EditButtons = <>
            FieldName = 'TYPICAL_TOOL_REQUIREMENT_CODE'
            Footers = <>
            Layout = tlCenter
            Title.Caption = #1054#1087#1050#1056'|'#1053
            Width = 18
            InRowLineHeight = 2
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = '_SHOW_APPROVE_CYCLE_NO'
            Footers = <>
            Layout = tlCenter
            Title.Caption = #1062#1059
            Width = 24
            InRowLineHeight = 2
          end
          item
            EditButtons = <>
            FieldName = 'NOTES'
            Footers = <>
            Title.Caption = #1050#1086#1084#1077#1085#1090#1072#1088
            Width = 187
            InRowLineHeight = 2
          end>
      end
    end
  end
  inherited gbStage: TGroupBox
    inherited lblSMVSType: TLabel
      Visible = False
    end
    inherited gbDept: TGroupBox
      Height = 57
      inherited edtStageNo: TDBEdit
        DataField = 'ML_MODEL_STAGE_NO'
      end
    end
    inherited gbWorkdaysFor: TGroupBox
      Height = 57
    end
    inherited chbIsAutoMovment: TAbmesDBCheckBox
      Top = 74
    end
    inherited cbSMVSType: TJvDBLookupCombo
      DropDownCount = 3
      DataField = ''
      DataSource = nil
      Visible = False
    end
  end
  inherited alActions: TActionList
    Left = 0
    Top = 72
  end
  inherited dsGridDataParams: TDataSource
    Top = 280
  end
  inherited pmAdd: TPopupMenu
    Top = 376
  end
end
