inherited fmEmployeesTotalAvailability: TfmEmployeesTotalAvailability
  Left = 238
  Top = 219
  Caption = #1054#1073#1086#1073#1097#1077#1085#1080#1077' '#1085#1072' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103' '#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083#1080
  ClientHeight = 559
  ClientWidth = 1017
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 524
    Width = 1017
    inherited pnlOKCancel: TPanel
      Left = 749
      TabOrder = 2
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 660
      TabOrder = 1
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 928
      TabOrder = 3
      Visible = False
    end
    object btnEmployeesAvailability: TBitBtn
      Left = 8
      Top = 2
      Width = 177
      Height = 25
      Action = actEmployeesAvailability
      Caption = #1055#1088#1080#1089#1098#1089#1090#1074#1080#1103' '#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103'...'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00F8C4
        B000F8C4B000F8C5B100F8C5B100F8C5B100F8C5B100F8C5B100F8C5B100F8C5
        B100F8C4B000FF00FF0080FFF20080FFF200FF00FF00F495FF00F6AB9000F6B1
        9700F6B49B00F6B69D00F6B59C00F6B59C00F6B69D00F6B59C00F6B59C00F6B6
        9D00F6B39A00F6AB9000FF00FF00FF00FF00FF00FF00FF00FF00F3957100F49E
        7E00F5A48700F5A78900F5A68900F5A68900F5A78900F5A68900F5A68900F5A7
        8900F4A28400F394710080FFF20080FFF200FF00FF00F495FF0093FF8A00DA8F
        7300F3957200F4957200F3957200F3957200F4957200F3957200F3957200F495
        7200DA8F7300FF00FF0080FFF20080FFF200FF00FF00F495FF00FF00FF00FF00
        FF00FF00FF00FF00FF00BB9D9300BAABAA00BAABAA00BB9D9300FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0093FF8A0093FF
        8A00FF00FF0099B8C60083BED5008AD5EE0098D9F0008FC1D60099B8C60080FF
        F20080FFF200FF00FF0080FFF20080FFF200FF00FF00F495FF0093FF8A0093FF
        8A00FF00FF0077C9EC0089D8EE0092DAEF009CDDF100A5E0F20081D0ED0080FF
        F20080FFF200FF00FF0080FFF20080FFF200FF00FF00F495FF00FF00FF00FF00
        FF0090B4C60077C8EB0089D7EE0092DAEF009CDDF100A5E0F20083D4EE0090B4
        C600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0093FF8A0093FF
        8A007B8890007A94A0007F98A0008198A1008499A100869AA1007C95A0007B88
        900080FFF200FF00FF0080FFF20080FFF200FF00FF00F495FF0093FF8A0093FF
        8A00969899006F75790073797D00747A7E00747B7F0073797D006F7579009698
        990080FFF200FF00FF0080FFF20080FFF200FF00FF00F495FF00FF00FF00FF00
        FF00FF00FF00777C80006A6F73006D7276006D7276006A6F7300777C8000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0093FF8A0093FF
        8A00FF00FF0093FF8A0093979A006F7478006F74780093979A00FF00FF0080FF
        F20080FFF200FF00FF0080FFF20080FFF200FF00FF00F495FF0093FF8A0093FF
        8A00FF00FF0093FF8A0093FF8A00FF00FF00FFBE9F00FFBE9F00FF00FF0080FF
        F20080FFF200FF00FF0080FFF20080FFF200FF00FF00F495FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0093FF8A0093FF
        8A00FF00FF0093FF8A0093FF8A00FF00FF00FFBE9F00FFBE9F00FF00FF0080FF
        F20080FFF200FF00FF0080FFF20080FFF200FF00FF00F495FF0093FF8A0093FF
        8A00FF00FF0093FF8A0093FF8A00FF00FF00FFBE9F00FFBE9F00FF00FF0080FF
        F20080FFF200FF00FF0080FFF20080FFF200FF00FF00F495FF00}
      TabOrder = 0
    end
  end
  inherited pnlMain: TPanel
    Width = 1017
    Height = 524
    inherited pnlGrid: TPanel
      Top = 65
      Width = 1001
      Height = 451
      TabOrder = 1
      inherited pnlNavigator: TPanel
        Width = 1001
        inherited pnlFilterButton: TPanel
          Left = 96
        end
        inherited navData: TDBColorNavigator
          Width = 96
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 120
          Width = 216
          object sepBeforeShowOfficialTotals: TToolButton
            Left = 56
            Top = 0
            Width = 8
            Caption = 'sepBeforeShowOfficialTotals'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object btnShowOfficialTotals: TToolButton
            Left = 64
            Top = 0
            Action = actShowOfficialTotals
            Grouped = True
            Style = tbsCheck
          end
          object btnShowRealTotals: TToolButton
            Left = 88
            Top = 0
            Action = actShowRealTotals
            Grouped = True
            Style = tbsCheck
          end
          object btnShowRealTotalsByDayKind: TToolButton
            Left = 112
            Top = 0
            Action = actShowRealTotalsByDayKind
            Grouped = True
            Style = tbsCheck
          end
          object sepToggleUnapprovedOvertimeHours: TToolButton
            Left = 136
            Top = 0
            Width = 8
            Caption = 'sepToggleUnapprovedOvertimeHours'
            ImageIndex = 94
            Style = tbsSeparator
          end
          object btnToggleUnapprovedOvertimeHours: TToolButton
            Left = 144
            Top = 0
            Action = actToggleUnapprovedOvertimeHours
            Style = tbsCheck
          end
          object btnToggleOfftimePresenceHours: TToolButton
            Left = 168
            Top = 0
            Action = actToggleOfftimePresenceHours
            Style = tbsCheck
          end
          object btnToggleUnapprovedAbsenceHours: TToolButton
            Left = 192
            Top = 0
            Action = actToggleUnapprovedAbsenceHours
            Style = tbsCheck
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 1001
        Height = 427
        FooterRowCount = 1
        FooterParams.Color = 15258325
        HorzScrollBar.VisibleMode = sbNeverShowEh
        TitleParams.MultiTitle = True
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EMPLOYEE_NO'
            Footers = <>
            Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083'|'#1050#1086#1076
            Width = 50
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EMPLOYEE_NAME'
            Footer.Alignment = taRightJustify
            Footer.Value = #1054#1041#1065#1054
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083'|'#1048#1084#1077
            Width = 187
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'OCCUPATION_DEPT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1054#1088#1063' '#1085#1072' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077'|'#1050#1086#1076
            Visible = False
            Width = 50
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'OCCUPATION_DEPT_NAME'
            Footer.Alignment = taRightJustify
            Footer.Value = #1054#1041#1065#1054
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = #1054#1088#1063' '#1085#1072' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Visible = False
            Width = 187
            WordWrap = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CRAFT_TYPE_NAME'
            Footer.Alignment = taRightJustify
            Footer.Value = #1054#1041#1065#1054
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = #1050#1083#1072#1089#1080#1092#1080#1082#1072#1094#1080#1086#1085#1085#1072' '#1043#1088#1091#1087#1072' '#1055#1088#1086#1092#1077#1089#1080#1080
            Visible = False
            Width = 238
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EMPLOYEE_COUNT_AT_BEGIN_DATE'
            Footer.FieldName = '_S_EMPLOYEE_COUNT_AT_BEGIN_DATE'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1041#1088#1086#1081' '#1057#1083#1091#1078#1080#1090#1077#1083#1080'|'#1053#1072#1095#1072#1083#1086' '#1042#1088#1084#1048#1085#1090
            Width = 45
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EMPLOYEE_COUNT_AT_END_DATE'
            Footer.FieldName = '_S_EMPLOYEE_COUNT_AT_END_DATE'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1041#1088#1086#1081' '#1057#1083#1091#1078#1080#1090#1077#1083#1080'|'#1050#1088#1072#1081' '#1042#1088#1084#1048#1085#1090
            Width = 45
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'OFFICIAL_PRESENCE_DAYS'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1071#1074#1103#1074#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1072' ('#1095#1086#1074#1077#1082#1086'- '#1076#1085#1080')'
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'OFFICIAL_ABSENCE_DAYS_2'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1053#1077#1103#1074#1103#1074#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1072' ('#1095#1086#1074#1077#1082#1086'-'#1076#1085#1080')|'#1054
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'OFFICIAL_ABSENCE_DAYS_3'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1053#1077#1103#1074#1103#1074#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1072' ('#1095#1086#1074#1077#1082#1086'-'#1076#1085#1080')|'#1052
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'OFFICIAL_ABSENCE_DAYS_4'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1053#1077#1103#1074#1103#1074#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1072' ('#1095#1086#1074#1077#1082#1086'-'#1076#1085#1080')|'#1041
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'OFFICIAL_ABSENCE_DAYS_5'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1053#1077#1103#1074#1103#1074#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1072' ('#1095#1086#1074#1077#1082#1086'-'#1076#1085#1080')|'#1044
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'OFFICIAL_ABSENCE_DAYS_6'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1053#1077#1103#1074#1103#1074#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1072' ('#1095#1086#1074#1077#1082#1086'-'#1076#1085#1080')|'#1040
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'OFFICIAL_ABSENCE_DAYS_1'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1053#1077#1103#1074#1103#1074#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1072' ('#1095#1086#1074#1077#1082#1086'-'#1076#1085#1080')|'#1057
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'OFFICIAL_DAYS_OFF'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1053#1077#1103#1074#1103#1074#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1072' ('#1095#1086#1074#1077#1082#1086'-'#1076#1085#1080')|'#1053
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'OFFICIAL_TOTAL_DAYS'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1054#1073#1097#1086' '#1095#1086#1074#1077#1082#1086'- '#1076#1085#1080
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'OFFICIAL_PRESENCE_HOURS'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1055#1088#1080#1089#1098#1089#1090#1074#1077#1085#1080' '#1095#1086#1074#1077#1082#1086'-'#1095#1072#1089#1086#1074#1077'|'#1042#1089#1080#1095#1082#1086
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'OFFICIAL_APP_OVERTIME_HOURS'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1055#1088#1080#1089#1098#1089#1090#1074#1077#1085#1080' '#1095#1086#1074#1077#1082#1086'-'#1095#1072#1089#1086#1074#1077'|'#1048#1079#1074#1098#1085'- '#1088#1077#1076#1085#1080
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'OFFICIAL_UNAPP_OVERTIME_HOURS'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1055#1088#1080#1089#1098#1089#1090#1074#1077#1085#1080' '#1095#1086#1074#1077#1082#1086'-'#1095#1072#1089#1086#1074#1077'|'#1055#1083#1078'.'#1086#1090#1082#1083'. ('#1086#1076#1086#1073#1088'.)'
            Visible = False
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'OFFICIAL_OFFTIME_PRESENCE_HRS'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1055#1088#1080#1089#1098#1089#1090#1074#1077#1085#1080' '#1095#1086#1074#1077#1082#1086'-'#1095#1072#1089#1086#1074#1077'|'#1055#1083#1078'.'#1086#1090#1082#1083'. ('#1085#1077#1086#1076#1086#1073#1088'.)'
            Visible = False
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'OFFICIAL_UNAPP_ABSENCE_HOURS'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1055#1088#1080#1089#1098#1089#1090#1074#1077#1085#1080' '#1095#1086#1074#1077#1082#1086'-'#1095#1072#1089#1086#1074#1077'|'#1054#1090#1088#1080#1094'. '#1086#1090#1082#1083'.'
            Visible = False
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_T_PRESENCE_DAYS'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1071#1074#1103#1074#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1072' ('#1095#1086#1074#1077#1082#1086'- '#1076#1085#1080')'
            Visible = False
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_T_ABSENCE_DAYS_2'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1053#1077#1103#1074#1103#1074#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1072' ('#1095#1086#1074#1077#1082#1086'-'#1076#1085#1080')|'#1054
            Visible = False
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_T_ABSENCE_DAYS_3'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1053#1077#1103#1074#1103#1074#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1072' ('#1095#1086#1074#1077#1082#1086'-'#1076#1085#1080')|'#1052
            Visible = False
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_T_ABSENCE_DAYS_4'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1053#1077#1103#1074#1103#1074#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1072' ('#1095#1086#1074#1077#1082#1086'-'#1076#1085#1080')|'#1041
            Visible = False
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_T_ABSENCE_DAYS_5'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1053#1077#1103#1074#1103#1074#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1072' ('#1095#1086#1074#1077#1082#1086'-'#1076#1085#1080')|'#1044
            Visible = False
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_T_ABSENCE_DAYS_6'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1053#1077#1103#1074#1103#1074#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1072' ('#1095#1086#1074#1077#1082#1086'-'#1076#1085#1080')|'#1040
            Visible = False
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_T_ABSENCE_DAYS_1'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1053#1077#1103#1074#1103#1074#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1072' ('#1095#1086#1074#1077#1082#1086'-'#1076#1085#1080')|'#1057
            Visible = False
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_T_DAYS_OFF'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1053#1077#1103#1074#1103#1074#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1072' ('#1095#1086#1074#1077#1082#1086'-'#1076#1085#1080')|'#1053
            Visible = False
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_T_TOTAL_DAYS'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1054#1073#1097#1086' '#1095#1086#1074#1077#1082#1086'- '#1076#1085#1080
            Visible = False
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_T_PRESENCE_HOURS'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1055#1088#1080#1089#1098#1089#1090#1074#1077#1085#1080' '#1095#1086#1074#1077#1082#1086'-'#1095#1072#1089#1086#1074#1077'|'#1042#1089#1080#1095#1082#1086
            Visible = False
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_T_APP_OVERTIME_HOURS'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1055#1088#1080#1089#1098#1089#1090#1074#1077#1085#1080' '#1095#1086#1074#1077#1082#1086'-'#1095#1072#1089#1086#1074#1077'|'#1048#1079#1074#1098#1085'- '#1088#1077#1076#1085#1080
            Visible = False
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_T_UNAPP_OVERTIME_HOURS'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1055#1088#1080#1089#1098#1089#1090#1074#1077#1085#1080' '#1095#1086#1074#1077#1082#1086'-'#1095#1072#1089#1086#1074#1077'|'#1055#1083#1078'.'#1086#1090#1082#1083'. ('#1086#1076#1086#1073#1088'.)'
            Visible = False
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_T_OFFTIME_PRESENCE_HRS'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1055#1088#1080#1089#1098#1089#1090#1074#1077#1085#1080' '#1095#1086#1074#1077#1082#1086'-'#1095#1072#1089#1086#1074#1077'|'#1055#1083#1078'.'#1086#1090#1082#1083'. ('#1085#1077#1086#1076#1086#1073#1088'.)'
            Visible = False
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_T_UNAPP_ABSENCE_HOURS'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1055#1088#1080#1089#1098#1089#1090#1074#1077#1085#1080' '#1095#1086#1074#1077#1082#1086'-'#1095#1072#1089#1086#1074#1077'|'#1054#1090#1088#1080#1094'. '#1086#1090#1082#1083'.'
            Visible = False
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_W_PRESENCE_DAYS'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1071#1074#1103#1074#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1072' ('#1095#1086#1074#1077#1082#1086'- '#1076#1085#1080')|'#1056
            Visible = False
            Width = 28
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_O_PRESENCE_DAYS'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1071#1074#1103#1074#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1072' ('#1095#1086#1074#1077#1082#1086'- '#1076#1085#1080')|'#1055
            Visible = False
            Width = 28
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_W_ABSENCE_DAYS_2'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1053#1077#1103#1074#1103#1074#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1072' ('#1095#1086#1074#1077#1082#1086'-'#1076#1085#1080')|'#1054'|'#1056
            Visible = False
            Width = 28
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_O_ABSENCE_DAYS_2'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1053#1077#1103#1074#1103#1074#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1072' ('#1095#1086#1074#1077#1082#1086'-'#1076#1085#1080')|'#1054'|'#1055
            Visible = False
            Width = 28
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_W_ABSENCE_DAYS_3'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1053#1077#1103#1074#1103#1074#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1072' ('#1095#1086#1074#1077#1082#1086'-'#1076#1085#1080')|'#1052'|'#1056
            Visible = False
            Width = 28
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_O_ABSENCE_DAYS_3'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1053#1077#1103#1074#1103#1074#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1072' ('#1095#1086#1074#1077#1082#1086'-'#1076#1085#1080')|'#1052'|'#1055
            Visible = False
            Width = 28
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_W_ABSENCE_DAYS_4'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1053#1077#1103#1074#1103#1074#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1072' ('#1095#1086#1074#1077#1082#1086'-'#1076#1085#1080')|'#1041'|'#1056
            Visible = False
            Width = 28
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_O_ABSENCE_DAYS_4'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1053#1077#1103#1074#1103#1074#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1072' ('#1095#1086#1074#1077#1082#1086'-'#1076#1085#1080')|'#1041'|'#1055
            Visible = False
            Width = 28
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_W_ABSENCE_DAYS_5'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1053#1077#1103#1074#1103#1074#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1072' ('#1095#1086#1074#1077#1082#1086'-'#1076#1085#1080')|'#1044'|'#1056
            Visible = False
            Width = 28
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_O_ABSENCE_DAYS_5'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1053#1077#1103#1074#1103#1074#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1072' ('#1095#1086#1074#1077#1082#1086'-'#1076#1085#1080')|'#1044'|'#1055
            Visible = False
            Width = 28
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_W_ABSENCE_DAYS_6'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1053#1077#1103#1074#1103#1074#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1072' ('#1095#1086#1074#1077#1082#1086'-'#1076#1085#1080')|'#1040'|'#1056
            Visible = False
            Width = 28
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_O_ABSENCE_DAYS_6'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1053#1077#1103#1074#1103#1074#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1072' ('#1095#1086#1074#1077#1082#1086'-'#1076#1085#1080')|'#1040'|'#1055
            Visible = False
            Width = 28
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_W_ABSENCE_DAYS_1'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1053#1077#1103#1074#1103#1074#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1072' ('#1095#1086#1074#1077#1082#1086'-'#1076#1085#1080')|'#1057'|'#1056
            Visible = False
            Width = 28
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_O_ABSENCE_DAYS_1'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1053#1077#1103#1074#1103#1074#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1072' ('#1095#1086#1074#1077#1082#1086'-'#1076#1085#1080')|'#1057'|'#1055
            Visible = False
            Width = 28
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_W_DAYS_OFF'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1053#1077#1103#1074#1103#1074#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1072' ('#1095#1086#1074#1077#1082#1086'-'#1076#1085#1080')|'#1053'|'#1056
            Visible = False
            Width = 28
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_O_DAYS_OFF'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1053#1077#1103#1074#1103#1074#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1072' ('#1095#1086#1074#1077#1082#1086'-'#1076#1085#1080')|'#1053'|'#1055
            Visible = False
            Width = 28
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_W_TOTAL_DAYS'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1054#1073#1097#1086' '#1095#1086#1074#1077#1082#1086'- '#1076#1085#1080'|'#1056
            Visible = False
            Width = 28
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_O_TOTAL_DAYS'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1054#1073#1097#1086' '#1095#1086#1074#1077#1082#1086'- '#1076#1085#1080'|'#1055
            Visible = False
            Width = 28
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_W_PRESENCE_HOURS'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1055#1088#1080#1089#1098#1089#1090#1074#1077#1085#1080' '#1095#1086#1074#1077#1082#1086'-'#1095#1072#1089#1086#1074#1077'|'#1042#1089#1080#1095#1082#1086'|'#1056
            Visible = False
            Width = 28
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_O_PRESENCE_HOURS'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1055#1088#1080#1089#1098#1089#1090#1074#1077#1085#1080' '#1095#1086#1074#1077#1082#1086'-'#1095#1072#1089#1086#1074#1077'|'#1042#1089#1080#1095#1082#1086'|'#1055
            Visible = False
            Width = 28
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_W_APP_OVERTIME_HOURS'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1055#1088#1080#1089#1098#1089#1090#1074#1077#1085#1080' '#1095#1086#1074#1077#1082#1086'-'#1095#1072#1089#1086#1074#1077'|'#1048#1079#1074#1098#1085'- '#1088#1077#1076#1085#1080'|'#1056
            Visible = False
            Width = 28
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_O_APP_OVERTIME_HOURS'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1055#1088#1080#1089#1098#1089#1090#1074#1077#1085#1080' '#1095#1086#1074#1077#1082#1086'-'#1095#1072#1089#1086#1074#1077'|'#1048#1079#1074#1098#1085'- '#1088#1077#1076#1085#1080'|'#1055
            Visible = False
            Width = 28
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_W_UNAPP_OVERTIME_HOURS'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1055#1088#1080#1089#1098#1089#1090#1074#1077#1085#1080' '#1095#1086#1074#1077#1082#1086'-'#1095#1072#1089#1086#1074#1077'|'#1055#1083#1078'.'#1086#1090#1082#1083'. ('#1086#1076#1086#1073#1088'.)|'#1056
            Visible = False
            Width = 28
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_O_UNAPP_OVERTIME_HOURS'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1055#1088#1080#1089#1098#1089#1090#1074#1077#1085#1080' '#1095#1086#1074#1077#1082#1086'-'#1095#1072#1089#1086#1074#1077'|'#1055#1083#1078'.'#1086#1090#1082#1083'. ('#1086#1076#1086#1073#1088'.)|'#1055
            Visible = False
            Width = 28
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_W_OFFTIME_PRESENCE_HRS'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1055#1088#1080#1089#1098#1089#1090#1074#1077#1085#1080' '#1095#1086#1074#1077#1082#1086'-'#1095#1072#1089#1086#1074#1077'|'#1055#1083#1078'.'#1086#1090#1082#1083'. ('#1085#1077#1086#1076#1086#1073#1088'.)|'#1056
            Visible = False
            Width = 28
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_O_OFFTIME_PRESENCE_HRS'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1055#1088#1080#1089#1098#1089#1090#1074#1077#1085#1080' '#1095#1086#1074#1077#1082#1086'-'#1095#1072#1089#1086#1074#1077'|'#1055#1083#1078'.'#1086#1090#1082#1083'. ('#1085#1077#1086#1076#1086#1073#1088'.)|'#1055
            Visible = False
            Width = 28
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_W_UNAPP_ABSENCE_HOURS'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1055#1088#1080#1089#1098#1089#1090#1074#1077#1085#1080' '#1095#1086#1074#1077#1082#1086'-'#1095#1072#1089#1086#1074#1077'|'#1054#1090#1088#1080#1094'. '#1086#1090#1082#1083'.|'#1056
            Visible = False
            Width = 28
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REAL_O_UNAPP_ABSENCE_HOURS'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Tag = 1
            Title.Caption = #1055#1088#1080#1089#1098#1089#1090#1074#1077#1085#1080' '#1095#1086#1074#1077#1082#1086'-'#1095#1072#1089#1086#1074#1077'|'#1054#1090#1088#1080#1094'. '#1086#1090#1082#1083'.|'#1055
            Visible = False
            Width = 28
          end>
      end
    end
    object pnlTop: TPanel
      Left = 8
      Top = 8
      Width = 1001
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        1001
        57)
      inline frOccupationDept: TfrDeptFieldEditFrame
        Left = 376
        Top = 0
        Width = 353
        Height = 49
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Anchors = [akLeft, akTop, akRight]
        Constraints.MaxHeight = 49
        TabOrder = 1
        TabStop = True
        inherited gbTreeNode: TGroupBox
          Width = 353
          Caption = ' '#1054#1088#1063' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1085#1086' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077' - '#1054#1089#1085#1086#1074#1085#1086' '
          inherited pnlTreeNode: TPanel
            Width = 337
            inherited pnlTreeNodeName: TPanel
              Width = 190
              inherited edtTreeNodeName: TDBEdit
                Width = 189
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = 190
            end
            inherited pnlRightButtons: TPanel
              Left = 301
            end
          end
        end
        inherited dsData: TDataSource
          DataSet = pdsGridDataParams
        end
      end
      object gbDatePeriod: TGroupBox
        Left = 840
        Top = 0
        Width = 161
        Height = 49
        Anchors = [akTop, akRight]
        Caption = ' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '
        TabOrder = 3
        inline frDateInterval: TfrDateIntervalFrame
          Left = 8
          Top = 16
          Width = 145
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 145
          Constraints.MinHeight = 21
          Constraints.MinWidth = 145
          TabOrder = 0
          TabStop = True
          inherited dsData: TDataSource
            DataSet = pdsGridDataParams
          end
        end
      end
      object gbIncludeDeptDescendants: TGroupBox
        Left = 0
        Top = 0
        Width = 369
        Height = 49
        Caption = ' '#1053#1072#1095#1080#1085' '#1085#1072' '#1080#1079#1074#1077#1078#1076#1072#1085#1077' '
        TabOrder = 0
        DesignSize = (
          369
          49)
        object edtIncludeDeptDescendants: TDBEdit
          Left = 8
          Top = 16
          Width = 353
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = '_INCLUDE_DEPT_DESCENDANTS'
          DataSource = dsGridDataParams
          ReadOnly = True
          TabOrder = 0
        end
      end
      object gbShift: TGroupBox
        Left = 736
        Top = 0
        Width = 97
        Height = 49
        Anchors = [akTop, akRight]
        Caption = ' '#1054#1088#1075'. '#1057#1084#1103#1085#1072' '
        TabOrder = 2
        DesignSize = (
          97
          49)
        object edtShift: TDBEdit
          Left = 8
          Top = 16
          Width = 81
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = '_SHIFT_IDENTIFIER'
          DataSource = dsGridDataParams
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 184
    Top = 288
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conEmployeeAvailability
    FieldDefs = <
      item
        Name = 'EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EMPLOYEE_NAME'
        DataType = ftWideString
        Size = 44
      end
      item
        Name = 'EMPLOYEE_NO'
        DataType = ftFloat
      end
      item
        Name = 'OCCUPATION_DEPT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'OCCUPATION_DEPT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'OCCUPATION_DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'CRAFT_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CRAFT_TYPE_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'EMPLOYEE_COUNT_AT_BEGIN_DATE'
        DataType = ftFloat
      end
      item
        Name = 'EMPLOYEE_COUNT_AT_END_DATE'
        DataType = ftFloat
      end
      item
        Name = 'OFFICIAL_PRESENCE_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'OFFICIAL_ABSENCE_DAYS_1'
        DataType = ftFloat
      end
      item
        Name = 'OFFICIAL_ABSENCE_DAYS_2'
        DataType = ftFloat
      end
      item
        Name = 'OFFICIAL_ABSENCE_DAYS_3'
        DataType = ftFloat
      end
      item
        Name = 'OFFICIAL_ABSENCE_DAYS_4'
        DataType = ftFloat
      end
      item
        Name = 'OFFICIAL_ABSENCE_DAYS_5'
        DataType = ftFloat
      end
      item
        Name = 'OFFICIAL_ABSENCE_DAYS_6'
        DataType = ftFloat
      end
      item
        Name = 'OFFICIAL_DAYS_OFF'
        DataType = ftFloat
      end
      item
        Name = 'OFFICIAL_TOTAL_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'OFFICIAL_PRESENCE_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'OFFICIAL_APP_OVERTIME_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'OFFICIAL_UNAPP_OVERTIME_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'OFFICIAL_OFFTIME_PRESENCE_HRS'
        DataType = ftFloat
      end
      item
        Name = 'OFFICIAL_UNAPP_ABSENCE_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_T_PRESENCE_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_T_ABSENCE_DAYS_1'
        DataType = ftFloat
      end
      item
        Name = 'REAL_T_ABSENCE_DAYS_2'
        DataType = ftFloat
      end
      item
        Name = 'REAL_T_ABSENCE_DAYS_3'
        DataType = ftFloat
      end
      item
        Name = 'REAL_T_ABSENCE_DAYS_4'
        DataType = ftFloat
      end
      item
        Name = 'REAL_T_ABSENCE_DAYS_5'
        DataType = ftFloat
      end
      item
        Name = 'REAL_T_ABSENCE_DAYS_6'
        DataType = ftFloat
      end
      item
        Name = 'REAL_T_DAYS_OFF'
        DataType = ftFloat
      end
      item
        Name = 'REAL_T_TOTAL_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_T_PRESENCE_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_T_APP_OVERTIME_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_T_UNAPP_OVERTIME_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_T_OFFTIME_PRESENCE_HRS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_T_UNAPP_ABSENCE_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_W_PRESENCE_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_W_ABSENCE_DAYS_1'
        DataType = ftFloat
      end
      item
        Name = 'REAL_W_ABSENCE_DAYS_2'
        DataType = ftFloat
      end
      item
        Name = 'REAL_W_ABSENCE_DAYS_3'
        DataType = ftFloat
      end
      item
        Name = 'REAL_W_ABSENCE_DAYS_4'
        DataType = ftFloat
      end
      item
        Name = 'REAL_W_ABSENCE_DAYS_5'
        DataType = ftFloat
      end
      item
        Name = 'REAL_W_ABSENCE_DAYS_6'
        DataType = ftFloat
      end
      item
        Name = 'REAL_W_DAYS_OFF'
        DataType = ftFloat
      end
      item
        Name = 'REAL_W_TOTAL_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_W_PRESENCE_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_W_APP_OVERTIME_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_W_UNAPP_OVERTIME_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_W_OFFTIME_PRESENCE_HRS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_W_UNAPP_ABSENCE_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_O_PRESENCE_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_O_ABSENCE_DAYS_1'
        DataType = ftFloat
      end
      item
        Name = 'REAL_O_ABSENCE_DAYS_2'
        DataType = ftFloat
      end
      item
        Name = 'REAL_O_ABSENCE_DAYS_3'
        DataType = ftFloat
      end
      item
        Name = 'REAL_O_ABSENCE_DAYS_4'
        DataType = ftFloat
      end
      item
        Name = 'REAL_O_ABSENCE_DAYS_5'
        DataType = ftFloat
      end
      item
        Name = 'REAL_O_ABSENCE_DAYS_6'
        DataType = ftFloat
      end
      item
        Name = 'REAL_O_DAYS_OFF'
        DataType = ftFloat
      end
      item
        Name = 'REAL_O_TOTAL_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_O_PRESENCE_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_O_APP_OVERTIME_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_O_UNAPP_OVERTIME_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_O_OFFTIME_PRESENCE_HRS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_O_UNAPP_ABSENCE_HOURS'
        DataType = ftFloat
      end>
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_DEPT_DESCENDANTS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'GROUPING_TYPE'
        ParamType = ptInput
        Value = '2'
      end>
    ProviderName = 'prvEmployeesTotalAvailability'
    Left = 152
    Top = 288
    object cdsGridDataEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object cdsGridDataEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      Size = 62
    end
    object cdsGridDataEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
    end
    object cdsGridDataOCCUPATION_DEPT_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_DEPT_CODE'
    end
    object cdsGridDataOCCUPATION_DEPT_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_DEPT_NAME'
      Size = 100
    end
    object cdsGridDataOCCUPATION_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'OCCUPATION_DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsGridDataCRAFT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'CRAFT_TYPE_NAME'
      Size = 50
    end
    object cdsGridDataCRAFT_TYPE_CODE: TAbmesFloatField
      FieldName = 'CRAFT_TYPE_CODE'
    end
    object cdsGridDataEMPLOYEE_COUNT_AT_BEGIN_DATE: TAbmesFloatField
      Tag = 1
      FieldName = 'EMPLOYEE_COUNT_AT_BEGIN_DATE'
      DisplayFormat = ',0'
    end
    object cdsGridDataEMPLOYEE_COUNT_AT_END_DATE: TAbmesFloatField
      Tag = 1
      FieldName = 'EMPLOYEE_COUNT_AT_END_DATE'
      DisplayFormat = ',0'
    end
    object cdsGridDataOFFICIAL_PRESENCE_DAYS: TAbmesFloatField
      Tag = 1
      FieldName = 'OFFICIAL_PRESENCE_DAYS'
      DisplayFormat = ',0'
    end
    object cdsGridDataOFFICIAL_ABSENCE_DAYS_1: TAbmesFloatField
      Tag = 1
      FieldName = 'OFFICIAL_ABSENCE_DAYS_1'
      DisplayFormat = ',0'
    end
    object cdsGridDataOFFICIAL_ABSENCE_DAYS_2: TAbmesFloatField
      Tag = 1
      FieldName = 'OFFICIAL_ABSENCE_DAYS_2'
      DisplayFormat = ',0'
    end
    object cdsGridDataOFFICIAL_ABSENCE_DAYS_3: TAbmesFloatField
      Tag = 1
      FieldName = 'OFFICIAL_ABSENCE_DAYS_3'
      DisplayFormat = ',0'
    end
    object cdsGridDataOFFICIAL_ABSENCE_DAYS_4: TAbmesFloatField
      Tag = 1
      FieldName = 'OFFICIAL_ABSENCE_DAYS_4'
      DisplayFormat = ',0'
    end
    object cdsGridDataOFFICIAL_ABSENCE_DAYS_5: TAbmesFloatField
      Tag = 1
      FieldName = 'OFFICIAL_ABSENCE_DAYS_5'
      DisplayFormat = ',0'
    end
    object cdsGridDataOFFICIAL_ABSENCE_DAYS_6: TAbmesFloatField
      Tag = 1
      FieldName = 'OFFICIAL_ABSENCE_DAYS_6'
      DisplayFormat = ',0'
    end
    object cdsGridDataOFFICIAL_DAYS_OFF: TAbmesFloatField
      Tag = 1
      FieldName = 'OFFICIAL_DAYS_OFF'
      DisplayFormat = ',0'
    end
    object cdsGridDataOFFICIAL_TOTAL_DAYS: TAbmesFloatField
      Tag = 1
      FieldName = 'OFFICIAL_TOTAL_DAYS'
      DisplayFormat = ',0'
    end
    object cdsGridDataOFFICIAL_PRESENCE_HOURS: TAbmesFloatField
      Tag = 1
      FieldName = 'OFFICIAL_PRESENCE_HOURS'
      OnGetText = HoursFieldGetText
    end
    object cdsGridDataOFFICIAL_APP_OVERTIME_HOURS: TAbmesFloatField
      Tag = 1
      FieldName = 'OFFICIAL_APP_OVERTIME_HOURS'
      OnGetText = HoursFieldGetText
    end
    object cdsGridDataOFFICIAL_UNAPP_OVERTIME_HOURS: TAbmesFloatField
      Tag = 1
      FieldName = 'OFFICIAL_UNAPP_OVERTIME_HOURS'
      OnGetText = HoursFieldGetText
    end
    object cdsGridDataOFFICIAL_OFFTIME_PRESENCE_HRS: TAbmesFloatField
      Tag = 1
      FieldName = 'OFFICIAL_OFFTIME_PRESENCE_HRS'
      OnGetText = HoursFieldGetText
    end
    object cdsGridDataOFFICIAL_UNAPP_ABSENCE_HOURS: TAbmesFloatField
      Tag = 1
      FieldName = 'OFFICIAL_UNAPP_ABSENCE_HOURS'
      OnGetText = HoursFieldGetText
    end
    object cdsGridDataREAL_T_PRESENCE_DAYS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_T_PRESENCE_DAYS'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_T_ABSENCE_DAYS_1: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_T_ABSENCE_DAYS_1'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_T_ABSENCE_DAYS_2: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_T_ABSENCE_DAYS_2'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_T_ABSENCE_DAYS_3: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_T_ABSENCE_DAYS_3'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_T_ABSENCE_DAYS_4: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_T_ABSENCE_DAYS_4'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_T_ABSENCE_DAYS_5: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_T_ABSENCE_DAYS_5'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_T_ABSENCE_DAYS_6: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_T_ABSENCE_DAYS_6'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_T_DAYS_OFF: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_T_DAYS_OFF'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_T_TOTAL_DAYS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_T_TOTAL_DAYS'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_T_PRESENCE_HOURS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_T_PRESENCE_HOURS'
      OnGetText = HoursFieldGetText
    end
    object cdsGridDataREAL_T_APP_OVERTIME_HOURS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_T_APP_OVERTIME_HOURS'
      OnGetText = HoursFieldGetText
    end
    object cdsGridDataREAL_T_UNAPP_OVERTIME_HOURS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_T_UNAPP_OVERTIME_HOURS'
      OnGetText = HoursFieldGetText
    end
    object cdsGridDataREAL_T_OFFTIME_PRESENCE_HRS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_T_OFFTIME_PRESENCE_HRS'
      OnGetText = HoursFieldGetText
    end
    object cdsGridDataREAL_T_UNAPP_ABSENCE_HOURS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_T_UNAPP_ABSENCE_HOURS'
      OnGetText = HoursFieldGetText
    end
    object cdsGridDataREAL_W_PRESENCE_DAYS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_W_PRESENCE_DAYS'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_W_ABSENCE_DAYS_1: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_W_ABSENCE_DAYS_1'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_W_ABSENCE_DAYS_2: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_W_ABSENCE_DAYS_2'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_W_ABSENCE_DAYS_3: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_W_ABSENCE_DAYS_3'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_W_ABSENCE_DAYS_4: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_W_ABSENCE_DAYS_4'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_W_ABSENCE_DAYS_5: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_W_ABSENCE_DAYS_5'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_W_ABSENCE_DAYS_6: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_W_ABSENCE_DAYS_6'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_W_DAYS_OFF: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_W_DAYS_OFF'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_W_TOTAL_DAYS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_W_TOTAL_DAYS'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_W_PRESENCE_HOURS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_W_PRESENCE_HOURS'
      OnGetText = HoursFieldGetText
    end
    object cdsGridDataREAL_W_APP_OVERTIME_HOURS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_W_APP_OVERTIME_HOURS'
      OnGetText = HoursFieldGetText
    end
    object cdsGridDataREAL_W_UNAPP_OVERTIME_HOURS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_W_UNAPP_OVERTIME_HOURS'
      OnGetText = HoursFieldGetText
    end
    object cdsGridDataREAL_W_OFFTIME_PRESENCE_HRS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_W_OFFTIME_PRESENCE_HRS'
      OnGetText = HoursFieldGetText
    end
    object cdsGridDataREAL_W_UNAPP_ABSENCE_HOURS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_W_UNAPP_ABSENCE_HOURS'
      OnGetText = HoursFieldGetText
    end
    object cdsGridDataREAL_O_PRESENCE_DAYS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_O_PRESENCE_DAYS'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_O_ABSENCE_DAYS_1: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_O_ABSENCE_DAYS_1'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_O_ABSENCE_DAYS_2: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_O_ABSENCE_DAYS_2'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_O_ABSENCE_DAYS_3: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_O_ABSENCE_DAYS_3'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_O_ABSENCE_DAYS_4: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_O_ABSENCE_DAYS_4'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_O_ABSENCE_DAYS_5: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_O_ABSENCE_DAYS_5'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_O_ABSENCE_DAYS_6: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_O_ABSENCE_DAYS_6'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_O_DAYS_OFF: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_O_DAYS_OFF'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_O_TOTAL_DAYS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_O_TOTAL_DAYS'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_O_PRESENCE_HOURS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_O_PRESENCE_HOURS'
      OnGetText = HoursFieldGetText
    end
    object cdsGridDataREAL_O_APP_OVERTIME_HOURS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_O_APP_OVERTIME_HOURS'
      OnGetText = HoursFieldGetText
    end
    object cdsGridDataREAL_O_UNAPP_OVERTIME_HOURS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_O_UNAPP_OVERTIME_HOURS'
      OnGetText = HoursFieldGetText
    end
    object cdsGridDataREAL_O_OFFTIME_PRESENCE_HRS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_O_OFFTIME_PRESENCE_HRS'
      OnGetText = HoursFieldGetText
    end
    object cdsGridDataREAL_O_UNAPP_ABSENCE_HOURS: TAbmesFloatField
      Tag = 1
      FieldName = 'REAL_O_UNAPP_ABSENCE_HOURS'
      OnGetText = HoursFieldGetText
    end
  end
  inherited alActions: TActionList
    Left = 344
    inherited actForm: TAction
      Caption = #1054#1073#1086#1073#1097#1077#1085#1080#1077' '#1085#1072' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103' '#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083#1080
    end
    inherited actFilter: TAction
      Visible = True
    end
    object actShowOfficialTotals: TAction
      AutoCheck = True
      GroupIndex = 1
      ImageIndex = 96
      OnExecute = actShowTotalsExecute
    end
    object actShowRealTotals: TAction
      AutoCheck = True
      Checked = True
      GroupIndex = 1
      ImageIndex = 92
      OnExecute = actShowTotalsExecute
    end
    object actShowRealTotalsByDayKind: TAction
      AutoCheck = True
      GroupIndex = 1
      ImageIndex = 93
      OnExecute = actShowTotalsExecute
    end
    object actEmployeesAvailability: TAction
      Caption = #1055#1088#1080#1089#1098#1089#1090#1074#1080#1103' '#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103'...'
      ImageIndex = 134
      OnExecute = actEmployeesAvailabilityExecute
      OnUpdate = actEmployeesAvailabilityUpdate
    end
    object actToggleUnapprovedOvertimeHours: TAction
      AutoCheck = True
      Checked = True
      GroupIndex = 2
      Hint = #1055#1083#1086#1078#1080#1090#1077#1083#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103' ('#1086#1076#1086#1073#1088#1077#1085#1080')'
      ImageIndex = 109
      OnExecute = actToggleHoursExecute
      OnUpdate = actToggleHoursUpdate
    end
    object actToggleOfftimePresenceHours: TAction
      AutoCheck = True
      GroupIndex = 2
      Hint = #1055#1083#1086#1078#1080#1090#1077#1083#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103' ('#1085#1077#1086#1076#1086#1073#1088#1077#1085#1080')'
      ImageIndex = 55
      OnExecute = actToggleHoursExecute
      OnUpdate = actToggleHoursUpdate
    end
    object actToggleUnapprovedAbsenceHours: TAction
      AutoCheck = True
      GroupIndex = 2
      Hint = #1054#1090#1088#1080#1094#1072#1090#1077#1083#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103
      ImageIndex = 110
      OnExecute = actToggleHoursExecute
      OnUpdate = actToggleHoursUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    OnCalcFields = pdsGridDataParamsCalcFields
    Left = 152
    Top = 320
    object pdsGridDataParamsGROUPING_TYPE: TAbmesFloatField
      DisplayLabel = #1043#1088#1091#1087#1080#1088#1072#1085#1077' '#1087#1086
      FieldName = 'GROUPING_TYPE'
    end
    object pdsGridDataParamsINCLUDE_DEPT_DESCENDANTS: TAbmesFloatField
      DisplayLabel = #1053#1072#1095#1080#1085' '#1085#1072' '#1080#1079#1074#1077#1078#1076#1072#1085#1077
      FieldName = 'INCLUDE_DEPT_DESCENDANTS'
    end
    object pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_DATE'
      Required = True
    end
    object pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' - '#1050#1088#1072#1081
      FieldName = 'END_DATE'
      Required = True
    end
    object pdsGridDataParamsOCCUPATION_DEPT_CODE: TAbmesFloatField
      DisplayLabel = #1054#1088#1063' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1085#1086' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077' - '#1054#1089#1085#1086#1074#1085#1086
      FieldName = 'OCCUPATION_DEPT_CODE'
    end
    object pdsGridDataParamsSHIFT_CODE: TAbmesFloatField
      DisplayLabel = #1054#1088#1075'. '#1057#1084#1103#1085#1072
      FieldName = 'SHIFT_CODE'
    end
    object pdsGridDataParamsIS_EXTERNAL: TAbmesFloatField
      DisplayLabel = #1055#1086#1079#1080#1094#1080#1103' '#1074' '#1048#1055
      FieldName = 'IS_EXTERNAL'
    end
    object pdsGridDataParams_SHIFT_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SHIFT_IDENTIFIER'
      LookupDataSet = cdsShifts
      LookupKeyFields = 'SHIFT_CODE'
      LookupResultField = 'SHIFT_IDENTIFIER'
      KeyFields = 'SHIFT_CODE'
      OnGetText = pdsGridDataParamsGetText
      Lookup = True
    end
    object pdsGridDataParams_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_BEGIN_DATE'
      Calculated = True
    end
    object pdsGridDataParams_END_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_END_DATE'
      Calculated = True
    end
    object pdsGridDataParams_INCLUDE_DEPT_DESCENDANTS: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_INCLUDE_DEPT_DESCENDANTS'
      Size = 100
      Calculated = True
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 184
    Top = 320
  end
  inherited dsData: TDataSource
    Left = 184
    Top = 256
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 152
    Top = 256
  end
  object cdsShifts: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conShifts
    Params = <>
    ProviderName = 'prvShifts'
    Left = 248
    Top = 288
    object cdsShiftsSHIFT_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CODE'
    end
    object cdsShiftsSHIFT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIFT_IDENTIFIER'
      Size = 5
    end
  end
  object cdsEmployeesAvailabilityParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 248
    Top = 320
    object cdsEmployeesAvailabilityParamsBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object cdsEmployeesAvailabilityParamsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object cdsEmployeesAvailabilityParamsOCCUPATION_DEPT_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_DEPT_CODE'
    end
    object cdsEmployeesAvailabilityParamsINCLUDE_DEPT_DESCENDANTS: TAbmesFloatField
      FieldName = 'INCLUDE_DEPT_DESCENDANTS'
    end
    object cdsEmployeesAvailabilityParamsSHIFT_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CODE'
    end
    object cdsEmployeesAvailabilityParamsEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object cdsEmployeesAvailabilityParamsCRAFT_TYPE_CODE: TAbmesFloatField
      FieldName = 'CRAFT_TYPE_CODE'
    end
    object cdsEmployeesAvailabilityParamsCRAFT_CODE: TAbmesFloatField
      FieldName = 'CRAFT_CODE'
    end
    object cdsEmployeesAvailabilityParamsIS_EXTERNAL: TAbmesFloatField
      FieldName = 'IS_EXTERNAL'
    end
  end
  object pgdTotals: TPrintDBGridEh
    DBGridEh = grdData
    Options = [pghFitGridToPageWidth, pghColored]
    Page.BottomMargin = 1.000000000000000000
    Page.LeftMargin = 1.500000000000000000
    Page.RightMargin = 1.500000000000000000
    Page.TopMargin = 1.000000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'Microsoft Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'Microsoft Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 376
    Top = 216
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
      666C616E67313032367B5C666F6E7474626C7B5C66305C666E696C5C66636861
      727365743020417269616C3B7D7B5C66315C666E696C5C666368617273657432
      30347B5C2A5C666E616D6520417269616C3B7D417269616C204359523B7D7B5C
      66325C666E696C205461686F6D613B7D7B5C66335C666E696C5C666368617273
      657430205461686F6D613B7D7B5C66345C666E696C5C66636861727365743230
      34205461686F6D613B7D7D0D0A5C766965776B696E64345C7563315C70617264
      5C71635C6C616E67313033335C625C695C6673333620706C626C5469746C655C
      6C616E67313032365C66315C7061720D0A5C706172645C62305C69305C66325C
      667331385C7061720D0A5C6C616E67313033335C663320494E434C5544455F44
      4550545F44455343454E44414E54535C7061720D0A5C7061720D0A706C626C44
      6570745C6C616E67313032365C6634203A2020205C6C616E67313033335C6633
      20444550545F4E414D45202020444550545F4944454E5449464945525C706172
      0D0A5C7061720D0A706C626C53686966744162627265765C6C616E6731303236
      5C6634203A2020205C6C616E67313033335C66332053484946545F4142425245
      565C7061720D0A5C7061720D0A706C626C44617465496E74657276616C5C6C61
      6E67313032365C6634203A2020205C6C616E67313033335C663320444154455F
      494E54455256414C5C7061720D0A5C6C616E67313032365C66325C667331365C
      7061720D0A7D0D0A00}
  end
end
