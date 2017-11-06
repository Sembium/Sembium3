inherited fmWorkHours: TfmWorkHours
  Left = 242
  Top = 154
  Caption = #1058#1088#1091#1076' '#1085#1072' '#1054#1087#1077#1088#1072#1090#1086#1088#1080
  ClientHeight = 510
  ClientWidth = 1017
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 475
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
    object btnPreviewOperation: TBitBtn
      Left = 10
      Top = 2
      Width = 95
      Height = 25
      Action = actEditDetailRecord
      Caption = #1055#1088#1077#1075#1083#1077#1076'...'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
        0000FF00FF000000000000000000000000000000000000000000FFFFFF00FFFF
        FF0000000000FFFFFF000000000000000000FFFFFF0000000000FFFF00000000
        00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
        000000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF00000000
        0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
        0000FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFF00000000
        000000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
        00000000000000FFFF0000000000FFFFFF00FFFFFF0000000000FFFF00000000
        0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
        000000FFFF00FFFFFF0000000000000000000000000000000000000000000000
        000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
        00000000000000FFFF00FFFFFF0000FFFF00000000000000000000FFFF000000
        0000FFFFFF00FFFFFF000000000000000000FFFFFF0000000000FF00FF00FF00
        FF00FF00FF000000000000000000000000000000000000FFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000000000FFFF0000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF000000000000FFFF0000000000FFFFFF00FFFFFF000000
        000000000000FFFFFF0000000000FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00FF00FF000000000000FFFF000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
        FF00000000000000FF0000000000FF00FF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
      Spacing = -1
      TabOrder = 0
    end
  end
  inherited pnlMain: TPanel
    Width = 1017
    Height = 475
    inherited sptDetail: TSplitter
      Top = 284
      Width = 1001
    end
    inherited pnlDetailGrid: TPanel
      Top = 287
      Width = 1001
      Height = 180
      inherited pnlDetailNavigator: TPanel
        Width = 1001
        inherited navDetail: TDBColorNavigator
          Width = 96
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = ()
        end
        inherited tlbDetailGridButtons: TToolBar
          Left = 96
        end
      end
      inherited grdDetail: TAbmesDBGrid
        Width = 1001
        Height = 156
        HorzScrollBar.Visible = False
        UseMultiTitle = True
        VTitleMargin = 5
        OnGetCellParams = grdDetailGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'WORK_DATE'
            Footers = <>
            Title.Caption = #1044#1072#1090#1072
            Width = 31
          end
          item
            EditButtons = <>
            FieldName = 'LATE_DAYS'
            Footers = <>
            Title.Caption = #1054#1090' '#1082#1083
            Width = 25
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'IS_WASTE'
            Footers = <>
            Title.Caption = #1042' '#1080' '#1076
            Width = 14
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCTION_ORDER_IDENTIFIER'
            Footers = <>
            Title.Caption = 'ID '#1054#1055#1042
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'NO_AS_TEXT'
            Footers = <>
            Title.Caption = #1056#1077#1076' '#1086#1090' '#1056'-'#1052#1054#1044#1045#1083'|'#1057#1090#1088#1091#1082#1090#1091#1088#1077#1085' '#1085#1086#1084#1077#1088
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'FORK_NO'
            Footers = <>
            Title.Caption = #1056#1077#1076' '#1086#1090' '#1056'-'#1052#1054#1044#1045#1083'|'#1056#1082
            Width = 20
          end
          item
            EditButtons = <>
            FieldName = 'DETAIL_NAME'
            Footers = <>
            Title.Caption = #1056#1077#1076' '#1086#1090' '#1056'-'#1052#1054#1044#1045#1083'|'#1050#1057#1063
            Width = 299
          end
          item
            EditButtons = <>
            FieldName = 'DETAIL_NO'
            Footers = <>
            Title.Caption = #1056#1077#1076' '#1086#1090' '#1056'-'#1052#1054#1044#1045#1083'|id '#1094#1080#1092#1088#1086#1074
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'WORK_DETAIL_TECH_QUANTITY'
            Footers = <>
            Title.Caption = #1050'-'#1074#1086
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'TECH_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1058#1077#1093'. '#1084'.'#1077#1076'.'
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = 'OPERATION_IDENTIFICATION'
            Footers = <>
            Title.Caption = #1045#1090'- '#1054#1087' '#1074#1072#1088'.'
            Width = 35
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'IS_SETUP'
            Footers = <>
            Title.Caption = #1057' '#1063
            Width = 14
          end
          item
            EditButtons = <>
            FieldName = 'DEPT_NAME'
            Footers = <>
            Title.Caption = #1054#1087#1058#1055
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'WORK_HOURS'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1077' ('#1095#1086#1074#1077#1082#1086' '#1095#1072#1089#1086#1074#1077')'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'WORK_OPHOURS'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1077' ('#1086#1087#1077#1088#1072#1090#1086#1088' '#1095#1072#1089#1086#1074#1077')'
            Visible = False
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'OPERATOR_EARNING'
            Footers = <>
            Title.Caption = #1054#1094#1077#1085#1082#1072' '#1085#1072' '#1058#1088#1091#1076#1072' '#1087#1086' '#1048#1056' (XXX) '
            Width = 72
          end>
      end
    end
    inherited pnlGrid: TPanel
      Width = 1001
      Height = 276
      inherited pnlNavigator: TPanel
        Width = 1001
        object btnToggleShowHours: TSpeedButton [0]
          Left = 880
          Top = 0
          Width = 121
          Height = 24
          Action = actToggleShowHours
          AllowAllUp = True
          GroupIndex = 123
          Flat = True
        end
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
        end
        object pnlPeriod: TPanel
          Left = 322
          Top = 0
          Width = 423
          Height = 24
          BevelOuter = bvNone
          TabOrder = 3
          object lblPeriod: TLabel
            Left = 64
            Top = 4
            Width = 97
            Height = 13
            Caption = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083
            FocusControl = edtPeriod
          end
          object lblOperatorCount: TLabel
            Left = 322
            Top = 3
            Width = 64
            Height = 13
            Caption = #1041#1088#1086#1081' '#1088#1077#1076#1086#1074#1077
            FocusControl = edtOperatorCount
          end
          object edtPeriod: TDBEdit
            Left = 168
            Top = 0
            Width = 129
            Height = 21
            Color = clBtnFace
            DataField = '_BEGIN_DATE'
            DataSource = dsGridDataParams
            TabOrder = 0
          end
          object edtOperatorCount: TDBEdit
            Left = 391
            Top = 0
            Width = 31
            Height = 21
            Color = clBtnFace
            DataField = '_OPERATOR_COUNT'
            DataSource = dsGridData
            TabOrder = 1
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 1001
        Height = 252
        FooterColor = 15258325
        FooterRowCount = 1
        HorzScrollBar.Visible = False
        UseMultiTitle = True
        VTitleMargin = 5
        Columns = <
          item
            EditButtons = <>
            FieldName = 'OPERATOR_DEPT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1054#1088#1063'  '#1085#1072'  '#1053#1072#1079#1085#1072#1095'.'
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'OPERATOR_NO'
            Footers = <>
            Title.Caption = #1054#1087#1077#1088#1072#1090#1086#1088' ('#1057#1083#1091#1078#1080#1090#1077#1083' '#1080#1083#1080' '#1045#1082#1080#1087')|'#1050#1086#1076
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'OPERATOR_NAME'
            Footers = <>
            Title.Caption = #1054#1087#1077#1088#1072#1090#1086#1088' ('#1057#1083#1091#1078#1080#1090#1077#1083' '#1080#1083#1080' '#1045#1082#1080#1087')|'#1048#1084#1077
            Width = 190
          end
          item
            EditButtons = <>
            FieldName = 'OCCUPATION_DEPT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1054#1087#1077#1088#1072#1090#1086#1088' ('#1057#1083#1091#1078#1080#1090#1077#1083' '#1080#1083#1080' '#1045#1082#1080#1087')|'#1044#1083#1098#1078#1085#1086#1089#1090' - '#1054#1089#1085#1086#1074#1085#1072'|'#1054#1088#1063
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'OCCUPATION_NAME'
            Footers = <>
            Title.Caption = #1054#1087#1077#1088#1072#1090#1086#1088' ('#1057#1083#1091#1078#1080#1090#1077#1083' '#1080#1083#1080' '#1045#1082#1080#1087')|'#1044#1083#1098#1078#1085#1086#1089#1090' - '#1054#1089#1085#1086#1074#1085#1072'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 239
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'SHIFT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1054#1087#1077#1088#1072#1090#1086#1088' ('#1057#1083#1091#1078#1080#1090#1077#1083' '#1080#1083#1080' '#1045#1082#1080#1087')|'#1044#1083#1098#1078#1085#1086#1089#1090' - '#1054#1089#1085#1086#1074#1085#1072'|'#1054#1088#1075'. '#1057#1084'.'
            Title.Hint = #1057#1084#1103#1085#1072
            Width = 24
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_SETUP_HOURS'
            Footer.FieldName = '_SUM_TOTAL_SETUP_HOURS'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086' '#1042#1088#1077#1084#1077' '#1085#1072' '#1054#1087#1077#1088#1072#1090#1086#1088' ('#1095#1086#1074#1077#1082#1086#1095#1072#1089#1086#1074#1077')|'#1053#1072#1089#1090#1088'.'
            Title.Hint = #1053#1089#1090#1088#1086#1081#1082#1072
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_WORK_NON_WASTE_HOURS'
            Footer.FieldName = '_SUM_TOTAL_WORK_NON_WASTE_HOURS'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086' '#1042#1088#1077#1084#1077' '#1085#1072' '#1054#1087#1077#1088#1072#1090#1086#1088' ('#1095#1086#1074#1077#1082#1086#1095#1072#1089#1086#1074#1077')|'#1048#1079#1087#1098#1083#1085'.'
            Title.Hint = #1048#1079#1087#1098#1083#1085#1077#1085#1080#1077
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_WORK_WASTE_HOURS'
            Footer.FieldName = '_SUM_TOTAL_WORK_WASTE_HOURS'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086' '#1042#1088#1077#1084#1077' '#1085#1072' '#1054#1087#1077#1088#1072#1090#1086#1088' ('#1095#1086#1074#1077#1082#1086#1095#1072#1089#1086#1074#1077')|'#1041#1083#1086#1082'.'
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_WORK_HOURS'
            Footer.FieldName = '_SUM_TOTAL_WORK_HOURS'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086' '#1042#1088#1077#1084#1077' '#1085#1072' '#1054#1087#1077#1088#1072#1090#1086#1088' ('#1095#1086#1074#1077#1082#1086#1095#1072#1089#1086#1074#1077')|'#1054#1073#1097#1086
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'AVG_WORK_HOURS'
            Footers = <>
            Title.Caption = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086' '#1042#1088#1077#1084#1077' '#1085#1072' '#1054#1087#1077#1088#1072#1090#1086#1088' ('#1095#1086#1074#1077#1082#1086#1095#1072#1089#1086#1074#1077')|'#1057#1088#1077#1076#1085#1086' '#1085#1072' '#1076#1077#1085
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_SETUP_OPHOURS'
            Footers = <>
            Title.Caption = #1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' ('#1086#1087#1077#1088#1072#1090#1086#1088#1095#1072#1089#1086#1074#1077')|'#1053#1072#1089#1090#1088'.'
            Visible = False
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_WORK_NON_WASTE_OPHOURS'
            Footers = <>
            Title.Caption = #1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' ('#1086#1087#1077#1088#1072#1090#1086#1088#1095#1072#1089#1086#1074#1077')|'#1048#1079#1087#1098#1083#1085'.'
            Visible = False
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_WORK_WASTE_OPHOURS'
            Footers = <>
            Title.Caption = #1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' ('#1086#1087#1077#1088#1072#1090#1086#1088#1095#1072#1089#1086#1074#1077')|'#1041#1083#1086#1082'.'
            Visible = False
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_WORK_OPHOURS'
            Footers = <>
            Title.Caption = #1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' ('#1086#1087#1077#1088#1072#1090#1086#1088#1095#1072#1089#1086#1074#1077')|'#1054#1073#1097#1086
            Visible = False
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'AVG_WORK_OPHOURS'
            Footers = <>
            Title.Caption = #1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' ('#1086#1087#1077#1088#1072#1090#1086#1088#1095#1072#1089#1086#1074#1077')|'#1057#1088#1077#1076#1085#1086' '#1085#1072' '#1076#1077#1085
            Visible = False
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'WORK_HOUR_DENSITY'
            Footer.FieldName = '_AVG_WORK_HOUR_DENSITY'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1055#1083#1098#1090#1085#1086#1089#1090
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_OPERATOR_EARNINGS'
            Footer.FieldName = '_SUM_TOTAL_OPERATOR_EARNINGS'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1054#1094#1077#1085#1082#1072' '#1085#1072' '#1058#1088#1091#1076#1072' '#1087#1086' '#1048#1056' (XXX)'
            Width = 72
          end>
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 72
    Top = 120
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 'OPERATOR_IS_TEAM; OPERATOR_NO'
      end>
    IndexName = 'idxDefault'
    Left = 40
    Top = 120
    object cdsGridDataOPERATOR_IS_TEAM: TAbmesFloatField
      FieldName = 'OPERATOR_IS_TEAM'
    end
    object cdsGridDataOPERATOR_NO: TAbmesFloatField
      FieldName = 'OPERATOR_NO'
    end
    object cdsGridDataOPERATOR_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'OPERATOR_DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsGridDataOPERATOR_NAME: TAbmesWideStringField
      FieldName = 'OPERATOR_NAME'
      Size = 50
    end
    object cdsGridDataOCCUPATION_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_NAME'
      Size = 50
    end
    object cdsGridDataSHIFT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIFT_IDENTIFIER'
      Size = 5
    end
    object cdsGridDataTOTAL_SETUP_HOURS: TAbmesFloatField
      FieldName = 'TOTAL_SETUP_HOURS'
      OnGetText = HoursFieldsGetText
      DisplayFormat = ',0.0'
    end
    object cdsGridDataTOTAL_WORK_NON_WASTE_HOURS: TAbmesFloatField
      FieldName = 'TOTAL_WORK_NON_WASTE_HOURS'
      OnGetText = HoursFieldsGetText
      DisplayFormat = ',0.0'
    end
    object cdsGridDataTOTAL_WORK_WASTE_HOURS: TAbmesFloatField
      FieldName = 'TOTAL_WORK_WASTE_HOURS'
      OnGetText = HoursFieldsGetText
      DisplayFormat = '"( ",0.0" )"'
    end
    object cdsGridDataTOTAL_WORK_HOURS: TAbmesFloatField
      FieldName = 'TOTAL_WORK_HOURS'
      OnGetText = HoursFieldsGetText
      DisplayFormat = ',0.0'
    end
    object cdsGridDataAVG_WORK_HOURS: TAbmesFloatField
      FieldName = 'AVG_WORK_HOURS'
      OnGetText = HoursFieldsGetText
      DisplayFormat = ',0.0'
    end
    object cdsGridDataTOTAL_SETUP_OPHOURS: TAbmesFloatField
      FieldName = 'TOTAL_SETUP_OPHOURS'
      OnGetText = HoursFieldsGetText
      DisplayFormat = ',0.0'
    end
    object cdsGridDataTOTAL_WORK_NON_WASTE_OPHOURS: TAbmesFloatField
      FieldName = 'TOTAL_WORK_NON_WASTE_OPHOURS'
      OnGetText = HoursFieldsGetText
      DisplayFormat = ',0.0'
    end
    object cdsGridDataTOTAL_WORK_WASTE_OPHOURS: TAbmesFloatField
      FieldName = 'TOTAL_WORK_WASTE_OPHOURS'
      OnGetText = HoursFieldsGetText
      DisplayFormat = '"( ",0.0" )"'
    end
    object cdsGridDataTOTAL_WORK_OPHOURS: TAbmesFloatField
      FieldName = 'TOTAL_WORK_OPHOURS'
      OnGetText = HoursFieldsGetText
      DisplayFormat = ',0.0'
    end
    object cdsGridDataAVG_WORK_OPHOURS: TAbmesFloatField
      FieldName = 'AVG_WORK_OPHOURS'
      OnGetText = HoursFieldsGetText
      DisplayFormat = ',0.0'
    end
    object cdsGridDataWORK_HOUR_DENSITY: TAbmesFloatField
      FieldName = 'WORK_HOUR_DENSITY'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataTOTAL_OPERATOR_EARNINGS: TAbmesFloatField
      FieldName = 'TOTAL_OPERATOR_EARNINGS'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataOCCUPATION_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'OCCUPATION_DEPT_IDENTIFIER'
      Size = 50
    end
    object cdsGridData_SUM_TOTAL_SETUP_HOURS: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_TOTAL_SETUP_HOURS'
      OnGetText = HoursFieldsGetText
      Active = True
      DisplayFormat = ',0.0'
      Expression = 'Sum(TOTAL_SETUP_HOURS)'
    end
    object cdsGridData_SUM_TOTAL_WORK_NON_WASTE_HOURS: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_TOTAL_WORK_NON_WASTE_HOURS'
      OnGetText = HoursFieldsGetText
      Active = True
      DisplayFormat = ',0.0'
      Expression = 'Sum(TOTAL_WORK_NON_WASTE_HOURS)'
    end
    object cdsGridData_SUM_TOTAL_WORK_WASTE_HOURS: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_TOTAL_WORK_WASTE_HOURS'
      OnGetText = HoursFieldsGetText
      Active = True
      DisplayFormat = '"( ",0.0" )"'
      Expression = 'Sum(TOTAL_WORK_WASTE_HOURS)'
    end
    object cdsGridData_SUM_TOTAL_WORK_HOURS: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_TOTAL_WORK_HOURS'
      OnGetText = HoursFieldsGetText
      Active = True
      DisplayFormat = ',0.0'
      Expression = 'Sum(TOTAL_WORK_HOURS)'
    end
    object cdsGridData_AVG_AVG_WORK_HOURS: TAggregateField
      Alignment = taRightJustify
      FieldName = '_AVG_AVG_WORK_HOURS'
      OnGetText = HoursFieldsGetText
      Active = True
      DisplayFormat = ',0.0'
      Expression = 'Avg(AVG_WORK_HOURS)'
    end
    object cdsGridData_SUM_TOTAL_SETUP_OPHOURS: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_TOTAL_SETUP_OPHOURS'
      OnGetText = HoursFieldsGetText
      Active = True
      DisplayFormat = ',0.0'
      Expression = 'Sum(TOTAL_SETUP_OPHOURS)'
    end
    object cdsGridData_SUM_TOTAL_WORK_NON_WASTE_OPHOURS: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_TOTAL_WORK_NON_WASTE_OPHOURS'
      OnGetText = HoursFieldsGetText
      Active = True
      DisplayFormat = ',0.0'
      Expression = 'Sum(TOTAL_WORK_NON_WASTE_OPHOURS)'
    end
    object cdsGridData_SUM_TOTAL_WORK_WASTE_OPHOURS: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_TOTAL_WORK_WASTE_OPHOURS'
      OnGetText = HoursFieldsGetText
      Active = True
      DisplayFormat = '"( ",0.0" )"'
      Expression = 'Sum(TOTAL_WORK_WASTE_OPHOURS)'
    end
    object cdsGridData_SUM_TOTAL_WORK_OPHOURS: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_TOTAL_WORK_OPHOURS'
      OnGetText = HoursFieldsGetText
      Active = True
      DisplayFormat = ',0.0'
      Expression = 'Sum(TOTAL_WORK_OPHOURS)'
    end
    object cdsGridData_AVG_AVG_WORK_OPHOURS: TAggregateField
      Alignment = taRightJustify
      FieldName = '_AVG_AVG_WORK_OPHOURS'
      OnGetText = HoursFieldsGetText
      Active = True
      DisplayFormat = ',0.0'
      Expression = 'Avg(AVG_WORK_OPHOURS)'
    end
    object cdsGridData_AVG_WORK_HOUR_DENSITY: TAggregateField
      Alignment = taRightJustify
      FieldName = '_AVG_WORK_HOUR_DENSITY'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'Avg(WORK_HOUR_DENSITY)'
    end
    object cdsGridData_SUM_TOTAL_OPERATOR_EARNINGS: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_TOTAL_OPERATOR_EARNINGS'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'Sum(TOTAL_OPERATOR_EARNINGS)'
    end
    object cdsGridData_OPERATOR_COUNT: TAggregateField
      Alignment = taRightJustify
      FieldName = '_OPERATOR_COUNT'
      Active = True
      Expression = 'Count(OPERATOR_NO)'
    end
  end
  inherited alActions: TActionList
    Left = 280
    Top = 0
    inherited actForm: TAction
      Caption = #1058#1088#1091#1076' '#1085#1072' '#1054#1087#1077#1088#1072#1090#1086#1088#1080
    end
    inherited actFilter: TAction
      Visible = True
    end
    inherited actEditDetailRecord: TAction
      Caption = #1055#1088#1077#1075#1083#1077#1076'...'
    end
    object actToggleShowHours: TAction
      Caption = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086' '#1042#1088#1077#1084#1077
      GroupIndex = 123
      Hint = 
        #1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' ('#1086#1087#1077#1088#1072#1090#1086#1088#1095#1072#1089#1086#1074#1077') / '#1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086' '#1042#1088#1077#1084#1077' '#1085#1072' '#1054#1087#1077#1088#1072#1090#1086#1088' ('#1095 +
        #1086#1074#1077#1082#1086#1095#1072#1089#1086#1074#1077')'
      OnExecute = actToggleShowHoursExecute
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    OnCalcFields = pdsGridDataParamsCalcFields
    DataSet = cdsDetail
    Left = 40
    Top = 152
    object pdsGridDataParamsDEPT_CODE: TAbmesFloatField
      DisplayLabel = #1054#1087#1058#1055
      FieldName = 'DEPT_CODE'
      OnChange = pdsGridDataParamsDEPT_CODEChange
    end
    object pdsGridDataParamsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
    end
    object pdsGridDataParamsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      OnGetText = pdsGridDataParamsGetText
      Size = 50
    end
    object pdsGridDataParamsOCCUPATION_DEPT_CODE: TAbmesFloatField
      DisplayLabel = #1054#1088#1063' '#1085#1072' '#1054#1089#1085#1086#1074#1085#1086' '#1044#1083#1098#1078#1085#1086#1089#1090#1085#1086' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077' / '#1054#1088#1063' '#1085#1072' '#1045#1082#1080#1087
      FieldName = 'OCCUPATION_DEPT_CODE'
    end
    object pdsGridDataParamsTEAM_CODE: TAbmesFloatField
      DisplayLabel = #1045#1082#1080#1087
      FieldName = 'TEAM_CODE'
      OnChange = pdsGridDataParamsTEAM_CODEChange
    end
    object pdsGridDataParamsEMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1057#1083#1091#1078#1080#1090#1077#1083
      FieldName = 'EMPLOYEE_CODE'
    end
    object pdsGridDataParamsSHIFT_CODE: TAbmesFloatField
      DisplayLabel = #1054#1088#1075'. '#1057#1084#1103#1085#1072
      FieldName = 'SHIFT_CODE'
    end
    object pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_DATE'
      OnChange = pdsGridDataParamsBEGIN_DATEChange
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' - '#1050#1088#1072#1081
      FieldName = 'END_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsGridDataParamsIS_SETUP: TAbmesFloatField
      DisplayLabel = #1053#1072#1089#1090#1088#1086#1081#1082#1072
      FieldName = 'IS_SETUP'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_WORK: TAbmesFloatField
      DisplayLabel = #1048#1079#1087#1098#1083#1085#1077#1085#1080#1077
      FieldName = 'IS_WORK'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'PRODUCTION_ORDER_TYPE_CODE'
    end
    object pdsGridDataParamsSALE_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1043#1083#1072#1074#1085#1086
      FieldName = 'SALE_BRANCH_CODE'
    end
    object pdsGridDataParamsSALE_NO: TAbmesFloatField
      DisplayLabel = #1054#1055#1042' No'
      FieldName = 'SALE_NO'
    end
    object pdsGridDataParamsSALE_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1080#1076
      FieldName = 'SALE_TYPE_CODE'
    end
    object pdsGridDataParamsPRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1080#1086#1088#1080#1090#1077#1090
      FieldName = 'PRIORITY_CODE'
    end
    object pdsGridDataParams_TEAM_NO: TAbmesFloatField
      FieldName = '_TEAM_NO'
      OnChange = pdsGridDataParams_TEAM_NOChange
      OnValidate = pdsGridDataParams_TEAM_NOValidate
    end
    object pdsGridDataParams_TEAM_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_TEAM_NAME'
      LookupDataSet = cdsTeams
      LookupKeyFields = 'TEAM_CODE'
      LookupResultField = 'TEAM_NAME'
      KeyFields = 'TEAM_CODE'
      ProviderFlags = []
      OnGetText = pdsGridDataParamsGetText
      Size = 50
      Lookup = True
    end
    object pdsGridDataParams_WORKDAY_COUNT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_WORKDAY_COUNT'
      ProviderFlags = []
      Calculated = True
    end
    object pdsGridDataParams_SALE_BRANCH_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SALE_BRANCH_IDENTIFIER'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_IDENTIFIER'
      KeyFields = 'SALE_BRANCH_CODE'
      OnGetText = pdsGridDataParamsGetText
      Lookup = True
    end
    object pdsGridDataParams_PRIORITY_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_PRIORITY_NO'
      LookupDataSet = cdsPriorities
      LookupKeyFields = 'PRIORITY_CODE'
      LookupResultField = 'PRIORITY_NO'
      KeyFields = 'PRIORITY_CODE'
      OnGetText = pdsGridDataParamsGetShortText
      Lookup = True
    end
    object pdsGridDataParams_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = '_BEGIN_DATE'
      ProviderFlags = []
      OnGetText = pdsGridDataParams_BEGIN_DATEGetText
    end
    object pdsGridDataParams_SHIFT_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SHIFT_IDENTIFIER'
      LookupDataSet = cdsShifts
      LookupKeyFields = 'SHIFT_CODE'
      LookupResultField = 'SHIFT_IDENTIFIER'
      KeyFields = 'SHIFT_CODE'
      OnGetText = pdsGridDataParamsGetShortText
      Size = 5
      Lookup = True
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 72
    Top = 152
  end
  inherited dsData: TDataSource
    Left = 72
    Top = 88
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 40
    Top = 88
  end
  inherited cdsDetail: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conHumanResource
    FieldDefs = <
      item
        Name = 'MLMSO_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MLMSO_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'OM_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'OM_CODE'
        DataType = ftFloat
      end
      item
        Name = 'OPERATOR_IS_TEAM'
        DataType = ftFloat
      end
      item
        Name = 'OPERATOR_NO'
        DataType = ftFloat
      end
      item
        Name = 'OPERATOR_DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'OPERATOR_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'DEFINED_EMPLOYEE_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'IS_SETUP'
        DataType = ftFloat
      end
      item
        Name = 'IS_NOT_SETUP'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'IS_WASTE'
        DataType = ftFloat
      end
      item
        Name = 'IS_NOT_WASTE'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'PRODUCTION_ORDER_IDENTIFIER'
        DataType = ftWideString
        Size = 188
      end
      item
        Name = 'WORK_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'DETAIL_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'WORK_DETAIL_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'TECH_MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'OPERATION_IDENTIFICATION'
        DataType = ftWideString
        Size = 122
      end
      item
        Name = 'WORK_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'HOUR_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'LATE_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'OPERATOR_EARNING'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'NO_AS_TEXT'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'FORK_NO'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'OCCUPATION_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'SHIFT_IDENTIFIER'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'OCCUPATION_DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'DETAIL_NO'
        DataType = ftFloat
      end
      item
        Name = 'WORK_OPHOURS'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'TEAM_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'WORKDAY_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'EFFECTIVE_EMP_WORKHOURS'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 
          'OPERATOR_IS_TEAM; OPERATOR_NO; WORK_DATE;PRODUCTION_ORDER_IDENTI' +
          'FIER;NO_AS_TEXT;FORK_NO;OPERATION_IDENTIFICATION;IS_NOT_SETUP'
        GroupingLevel = 2
      end>
    IndexName = 'idxDefault'
    Params = <
      item
        DataType = ftFloat
        Name = 'IS_SETUP'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRIORITY_CODE'
        ParamType = ptInput
      end
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
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_WORK'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRIORITY_CODE'
        ParamType = ptInput
      end
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
        Name = 'TEAM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvWorkHours'
    StoreDefs = True
    AfterOpen = cdsDetailAfterOpen
    object cdsDetailMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMSO_OBJECT_BRANCH_CODE'
    end
    object cdsDetailMLMSO_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLMSO_OBJECT_CODE'
    end
    object cdsDetailOM_BRANCH_CODE: TAbmesFloatField
      FieldName = 'OM_BRANCH_CODE'
    end
    object cdsDetailOM_CODE: TAbmesFloatField
      FieldName = 'OM_CODE'
    end
    object cdsDetailOPERATOR_IS_TEAM: TAbmesFloatField
      FieldName = 'OPERATOR_IS_TEAM'
    end
    object cdsDetailOPERATOR_NO: TAbmesFloatField
      FieldName = 'OPERATOR_NO'
    end
    object cdsDetailOPERATOR_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'OPERATOR_DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsDetailOPERATOR_NAME: TAbmesWideStringField
      FieldName = 'OPERATOR_NAME'
      Size = 50
    end
    object cdsDetailDEFINED_EMPLOYEE_COUNT: TAbmesFloatField
      FieldName = 'DEFINED_EMPLOYEE_COUNT'
    end
    object cdsDetailIS_SETUP: TAbmesFloatField
      FieldName = 'IS_SETUP'
      DisplayBoolValues = #1053';'#1048
      FieldValueType = fvtBoolean
    end
    object cdsDetailIS_NOT_SETUP: TAbmesFloatField
      FieldName = 'IS_NOT_SETUP'
      ReadOnly = True
    end
    object cdsDetailIS_WASTE: TAbmesFloatField
      FieldName = 'IS_WASTE'
      DisplayBoolValues = #1041';'#1062
      FieldValueType = fvtBoolean
    end
    object cdsDetailIS_NOT_WASTE: TAbmesFloatField
      FieldName = 'IS_NOT_WASTE'
      ReadOnly = True
    end
    object cdsDetailPRODUCTION_ORDER_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PRODUCTION_ORDER_IDENTIFIER'
      Size = 188
    end
    object cdsDetailWORK_DATE: TAbmesSQLTimeStampField
      FieldName = 'WORK_DATE'
      DisplayFormat = 'ww\e'
      AbmesEditFormat = 'ww\e'
    end
    object cdsDetailDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      Size = 100
    end
    object cdsDetailWORK_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'WORK_DETAIL_TECH_QUANTITY'
      DisplayFormat = ',0.###'
    end
    object cdsDetailTECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'TECH_MEASURE_ABBREV'
      OnGetText = cdsDetailTECH_MEASURE_ABBREVGetText
      Size = 5
    end
    object cdsDetailOPERATION_IDENTIFICATION: TAbmesWideStringField
      FieldName = 'OPERATION_IDENTIFICATION'
      Size = 122
    end
    object cdsDetailWORK_HOURS: TAbmesFloatField
      FieldName = 'WORK_HOURS'
      OnGetText = HoursFieldsGetText
      DisplayFormat = ',0.0'
    end
    object cdsDetailHOUR_PRICE: TAbmesFloatField
      FieldName = 'HOUR_PRICE'
    end
    object cdsDetailLATE_DAYS: TAbmesFloatField
      FieldName = 'LATE_DAYS'
      DisplayFormat = '0'
    end
    object cdsDetailOPERATOR_EARNING: TAbmesFloatField
      FieldName = 'OPERATOR_EARNING'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object cdsDetailNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      Size = 100
    end
    object cdsDetailFORK_NO: TAbmesFloatField
      FieldName = 'FORK_NO'
    end
    object cdsDetailDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object cdsDetailOCCUPATION_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_NAME'
      Size = 50
    end
    object cdsDetailSHIFT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIFT_IDENTIFIER'
      Size = 5
    end
    object cdsDetailOCCUPATION_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'OCCUPATION_DEPT_IDENTIFIER'
      Size = 50
    end
    object cdsDetailDETAIL_NO: TAbmesFloatField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'DETAIL_NO'
    end
    object cdsDetailWORK_OPHOURS: TAbmesFloatField
      FieldName = 'WORK_OPHOURS'
      ReadOnly = True
      OnGetText = HoursFieldsGetText
      DisplayFormat = ',0.0'
    end
    object cdsDetailTEAM_CODE: TAbmesFloatField
      FieldName = 'TEAM_CODE'
    end
    object cdsDetailEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object cdsDetailWORKDAY_COUNT: TAbmesFloatField
      FieldName = 'WORKDAY_COUNT'
    end
    object cdsDetailEFFECTIVE_EMP_WORKHOURS: TAbmesFloatField
      FieldName = 'EFFECTIVE_EMP_WORKHOURS'
    end
    object cdsDetail_TOTAL_SETUP_HOURS: TAggregateField
      FieldName = '_TOTAL_SETUP_HOURS'
      Active = True
      Expression = 'Sum(IS_SETUP * WORK_HOURS)'
      GroupingLevel = 2
      IndexName = 'idxDefault'
    end
    object cdsDetail_TOTAL_WORK_NON_WASTE_HOURS: TAggregateField
      FieldName = '_TOTAL_WORK_NON_WASTE_HOURS'
      Active = True
      Expression = 'Sum(IS_NOT_SETUP*IS_NOT_WASTE*WORK_HOURS)'
      GroupingLevel = 2
      IndexName = 'idxDefault'
    end
    object cdsDetail_TOTAL_WORK_WASTE_HOURS: TAggregateField
      FieldName = '_TOTAL_WORK_WASTE_HOURS'
      Active = True
      Expression = 'Sum(IS_NOT_SETUP*IS_WASTE*WORK_HOURS)'
      GroupingLevel = 2
      IndexName = 'idxDefault'
    end
    object cdsDetail_TOTAL_WORK_HOURS: TAggregateField
      FieldName = '_TOTAL_WORK_HOURS'
      Active = True
      Expression = 'Sum(WORK_HOURS)'
      GroupingLevel = 2
      IndexName = 'idxDefault'
    end
    object cdsDetail_TOTAL_SETUP_OPHOURS: TAggregateField
      FieldName = '_TOTAL_SETUP_OPHOURS'
      Active = True
      Expression = 'Sum(IS_SETUP * WORK_OPHOURS)'
      GroupingLevel = 2
      IndexName = 'idxDefault'
    end
    object cdsDetail_TOTAL_WORK_NON_WASTE_OPHOURS: TAggregateField
      FieldName = '_TOTAL_WORK_NON_WASTE_OPHOURS'
      Active = True
      Expression = 'Sum(IS_NOT_SETUP*IS_NOT_WASTE*WORK_OPHOURS)'
      GroupingLevel = 2
      IndexName = 'idxDefault'
    end
    object cdsDetail_TOTAL_WORK_WASTE_OPHOURS: TAggregateField
      FieldName = '_TOTAL_WORK_WASTE_OPHOURS'
      Active = True
      Expression = 'Sum(IS_NOT_SETUP*IS_WASTE*WORK_OPHOURS)'
      GroupingLevel = 2
      IndexName = 'idxDefault'
    end
    object cdsDetail_TOTAL_WORK_OPHOURS: TAggregateField
      FieldName = '_TOTAL_WORK_OPHOURS'
      Active = True
      Expression = 'Sum(WORK_OPHOURS)'
      GroupingLevel = 2
      IndexName = 'idxDefault'
    end
    object cdsDetail_TOTAL_OPERATOR_EARNING: TAggregateField
      FieldName = '_TOTAL_OPERATOR_EARNING'
      Active = True
      Expression = 'Sum(OPERATOR_EARNING)'
      GroupingLevel = 2
      IndexName = 'idxDefault'
    end
  end
  inherited tmrMaster: TTimer
    Left = 344
  end
  object cdsTeams: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <>
    ProviderName = 'prvTeams'
    Left = 256
    Top = 136
    object cdsTeamsTEAM_CODE: TAbmesFloatField
      FieldName = 'TEAM_CODE'
    end
    object cdsTeamsTEAM_NO: TAbmesFloatField
      FieldName = 'TEAM_NO'
    end
    object cdsTeamsTEAM_NAME: TAbmesWideStringField
      FieldName = 'TEAM_NAME'
      Size = 50
    end
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Params = <>
    ProviderName = 'prvBranches'
    Left = 288
    Top = 136
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BRANCH_IDENTIFIER'
      Size = 255
    end
  end
  object cdsPriorities: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvPriorities'
    Left = 320
    Top = 136
    object cdsPrioritiesPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
    end
    object cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_NAME'
      Size = 50
    end
    object cdsPrioritiesPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
    object cdsPrioritiesPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object cdsPrioritiesPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
  end
  object cdsShifts: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conShifts
    Params = <>
    ProviderName = 'prvShifts'
    Left = 352
    Top = 136
    object cdsShiftsSHIFT_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CODE'
    end
    object cdsShiftsSHIFT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIFT_IDENTIFIER'
      Size = 5
    end
  end
end
