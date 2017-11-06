inherited fmOccupation: TfmOccupation
  Left = 230
  Top = 131
  ActiveControl = nil
  Caption = #1044#1083#1098#1078#1085#1086#1089#1090' - %s'
  ClientHeight = 566
  ClientWidth = 809
  DesignSize = (
    809
    566)
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 531
    Width = 809
    inherited pnlOKCancel: TPanel
      Left = 540
      Width = 180
      TabOrder = 4
    end
    inherited pnlClose: TPanel
      Left = 451
      TabOrder = 3
    end
    inherited pnlApply: TPanel
      Left = 720
      TabOrder = 5
      Visible = False
    end
    inherited pnlExcelExportButton: TPanel
      Left = 105
      Width = 99
      TabOrder = 1
      inherited btnExcelExportDown: TBitBtn
        Spacing = -1
      end
    end
    object pnlNotes: TPanel
      Left = 0
      Top = 0
      Width = 105
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object btnNotes: TBitBtn
        Left = 8
        Top = 2
        Width = 97
        Height = 25
        Action = actNotes
        Caption = #1041#1077#1083#1077#1078#1082#1080'...'
        Spacing = -1
        TabOrder = 0
      end
    end
    object pnlBottomButtonsClient: TPanel
      Left = 204
      Top = 0
      Width = 247
      Height = 35
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      object pnlPrint: TPanel
        Left = 99
        Top = 0
        Width = 148
        Height = 35
        Align = alRight
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 0
        object pnlPrintButton: TPanel
          Left = 0
          Top = 0
          Width = 90
          Height = 35
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          object btnPrint: TBitBtn
            Left = 0
            Top = 2
            Width = 81
            Height = 25
            Action = actPrint
            Caption = #1055#1077#1095#1072#1090
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000FF00FF0000000000C6C6
              C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
              C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000C6C6
              C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
              C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000FFFF
              FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
              FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C6000000000000000000C6C6
              C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
              C600FFFFFF00C6C6C600FFFFFF000000FF00FFFFFF000000000000000000FFFF
              FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
              FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C60000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000FFFFFF0000000000000000000000000000000000FFFF
              FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000FFFFFF000000000000000000FFFFFF00000000000000
              0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
              FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000FFFFFF0000000000C6C6C600FFFFFF0000000000FFFF
              FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00000000000000000000000000000000000000000000000000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            Spacing = -1
            TabOrder = 0
          end
        end
        object pnlPrintCheckbox: TPanel
          Left = 90
          Top = 0
          Width = 58
          Height = 35
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 1
          object chkPrint: TCheckBox
            Left = 0
            Top = 7
            Width = 48
            Height = 17
            Caption = #1055#1077#1095#1072#1090
            TabOrder = 0
          end
        end
      end
    end
  end
  inherited pnlUser: TPanel
    Width = 793
  end
  inherited pnlMain: TPanel
    Width = 809
    Height = 531
    inherited pnlGrid: TPanel
      Top = 361
      Width = 793
      Height = 162
      TabOrder = 2
      inherited pnlNavigator: TPanel
        Align = alNone
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Top = 25
        Width = 353
        Height = 137
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        UseMultiTitle = True
        VTitleMargin = 5
        Columns = <
          item
            EditButtons = <>
            FieldName = 'PROFESSION_FULL_NO'
            Footers = <>
            Title.Caption = #1053#1077#1086#1073#1093#1086#1076#1080#1084#1080' '#1079#1072' '#1044#1056#1054#1088' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080'|'#1050#1086#1076
            Width = 47
          end
          item
            Alignment = taCenter
            Color = 15532031
            EditButtons = <>
            FieldName = 'HAS_DOCUMENTATION'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = #1053#1077#1086#1073#1093#1086#1076#1080#1084#1080' '#1079#1072' '#1044#1056#1054#1088' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080'|'#1048#1048#1054
            Title.Orientation = tohVertical
            Width = 14
          end
          item
            EditButtons = <>
            FieldName = 'PROFESSION_NAME'
            Footers = <>
            Title.Caption = #1053#1077#1086#1073#1093#1086#1076#1080#1084#1080' '#1079#1072' '#1044#1056#1054#1088' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 243
          end
          item
            EditButtons = <>
            FieldName = 'PROFESSION_KIND_IDENTIFIER'
            Footers = <>
            Title.Caption = #1061#1088#1082#1090#1088
            Title.Orientation = tohVertical
            Width = 13
          end>
      end
      inherited grdOtherData: TAbmesDBGrid
        Left = 379
        Top = 25
        Width = 414
        Height = 137
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        UseMultiTitle = True
        VTitleMargin = 5
        Columns = <
          item
            EditButtons = <>
            FieldName = 'PROFESSION_FULL_NO'
            Footers = <>
            Title.Caption = #1053#1077#1086#1073#1093#1086#1076#1080#1084#1080' '#1079#1072' '#1048#1055' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080'|'#1050#1086#1076
            Width = 47
          end
          item
            Alignment = taCenter
            Color = 15532031
            EditButtons = <>
            FieldName = 'HAS_DOCUMENTATION'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = #1053#1077#1086#1073#1093#1086#1076#1080#1084#1080' '#1079#1072' '#1048#1055' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080'|'#1048#1048#1054
            Title.Orientation = tohVertical
            Width = 14
          end
          item
            EditButtons = <>
            FieldName = 'PROFESSION_NAME'
            Footers = <>
            Title.Caption = #1053#1077#1086#1073#1093#1086#1076#1080#1084#1080' '#1079#1072' '#1048#1055' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 254
          end>
      end
      inherited pnlMoveButtons: TPanel
        Left = 353
        Top = 25
        Height = 137
        inherited btnAdd: TSpeedButton
          Top = 8
        end
        inherited btnRemove: TSpeedButton
          Top = 32
        end
        inherited btnAddAll: TSpeedButton
          Top = 72
        end
        inherited btnRemoveAll: TSpeedButton
          Top = 96
        end
      end
      object pnlGridNavigators: TPanel
        Left = 0
        Top = 0
        Width = 793
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 4
        object navGridData: TDBColorNavigator
          Left = 0
          Top = 0
          Width = 96
          Height = 25
          DataSource = dsGridData
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alLeft
          Flat = True
          TabOrder = 0
        end
        object navOtherGridData: TDBColorNavigator
          Left = 697
          Top = 0
          Width = 96
          Height = 25
          DataSource = dsOtherGridData
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alRight
          Flat = True
          TabOrder = 1
        end
      end
    end
    object pnlData: TPanel
      Left = 8
      Top = 8
      Width = 793
      Height = 353
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      inline frProduct: TfrProductExFieldEditFrame
        Left = 0
        Top = 200
        Width = 793
        Height = 65
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 549
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        inherited gbTreeNode: TGroupBox
          Width = 793
          Caption = ' '#1044#1083#1098#1078#1085#1086#1089#1090#1077#1085' '#1056#1072#1073#1086#1090#1085#1080#1082' '#1085#1072' '#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103#1090#1072' ('#1044#1056#1054#1088') '
          inherited pnlTreeNode: TPanel
            Width = 1
            inherited pnlTreeNodeNo: TPanel
              Left = -181
            end
            inherited pnlRightButtons: TPanel
              Left = -58
            end
            inherited pnlProductLabels: TPanel
              Width = 1
            end
          end
          inherited pnlRight: TPanel
            Left = 21
          end
        end
      end
    end
    object gbOccupation: TGroupBox
      Left = 8
      Top = 0
      Width = 793
      Height = 201
      Caption = ' '#1044#1083#1098#1078#1085#1086#1089#1090' '
      TabOrder = 0
      object gbOccupationDates: TGroupBox
        Left = 528
        Top = 78
        Width = 257
        Height = 49
        Caption = ' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072' '
        TabOrder = 4
        object lblDaysLeft: TLabel
          Left = 162
          Top = 21
          Width = 27
          Height = 13
          Caption = #1088#1079#1088#1074'.'
        end
        object lblCalendarDays: TLabel
          Left = 236
          Top = 21
          Width = 18
          Height = 13
          Caption = #1082'.'#1076'.'
        end
        inline frDateInterval: TfrDateIntervalFrame
          Left = 8
          Top = 18
          Width = 145
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 145
          Constraints.MinHeight = 21
          Constraints.MinWidth = 145
          TabOrder = 0
          TabStop = True
        end
        object edtDaysLeft: TDBEdit
          Left = 191
          Top = 18
          Width = 42
          Height = 21
          TabStop = False
          Color = 13494472
          DataField = '_DAYS_LEFT'
          DataSource = dsData
          TabOrder = 1
        end
      end
      object gbCoefs: TGroupBox
        Left = 432
        Top = 128
        Width = 353
        Height = 65
        Caption = ' '#1057#1090#1086#1081#1085#1086#1089#1090#1085#1080' '#1093#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072' '
        TabOrder = 6
        object lblCurrentSalaryRatioCoefIntervalDash: TLabel
          Left = 262
          Top = 38
          Width = 6
          Height = 13
          Caption = #8212
        end
        object lblCurrentBaseSalary: TLabel
          Left = 8
          Top = 19
          Width = 118
          Height = 13
          Caption = #1041#1072#1079#1086#1074#1072' '#1073#1088#1091#1090#1085#1072' '#1079#1072#1087#1083#1072#1090#1072
        end
        object btnOccupationSalaries: TSpeedButton
          Left = 321
          Top = 35
          Width = 23
          Height = 22
          Action = actOccupationSalaries
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000000000FF00
            FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
            FF0000000000FFFFFF008400000084000000FFFFFF00FF00FF00FFFFFF000000
            0000000000000000000000000000FFFFFF00FFFFFF000000000000000000FF00
            FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
            FF0000000000FFFFFF008400000084000000FFFFFF00FF00FF00FFFFFF000000
            000000000000840000000000000000000000FFFFFF000000000000000000FF00
            FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FF00
            FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
            FF0000000000FFFFFF008400000084000000FFFFFF00FF00FF00FFFFFF000000
            0000000000000000000000000000FFFFFF00FFFFFF000000000000000000FF00
            FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
            FF0000000000FFFFFF008400000084000000FFFFFF00FF00FF00FFFFFF000000
            000000000000840000000000000000000000FFFFFF000000000000000000FF00
            FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000000000FF00
            FF0000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          ParentShowHint = False
          ShowHint = True
        end
        object txtCurrentBaseSalaryCurrency: TDBText
          Left = 109
          Top = 39
          Width = 100
          Height = 13
          DataField = '_MAX_CURRENT_DATE_UNIT_NAME'
          DataSource = dsOccupationSalaries
          Transparent = False
        end
        object lblCurrentSalaryRatioCoefInterval: TLabel
          Left = 224
          Top = 19
          Width = 36
          Height = 13
          Caption = #1050#1054#1088#1045#1092
        end
        object edtCurrentMinSalaryRatioCoef: TDBEdit
          Left = 224
          Top = 35
          Width = 34
          Height = 21
          Color = clBtnFace
          DataField = '_MAX_CUR_MIN_SALARY_RATIO_COEF'
          DataSource = dsOccupationSalaries
          ReadOnly = True
          TabOrder = 1
        end
        object edtCurrentMaxSalaryRatioCoef: TDBEdit
          Left = 272
          Top = 35
          Width = 34
          Height = 21
          Color = clBtnFace
          DataField = '_MAX_CUR_MAX_SALARY_RATIO_COEF'
          DataSource = dsOccupationSalaries
          ReadOnly = True
          TabOrder = 2
        end
        object edtCurrentBaseSalary: TDBEdit
          Left = 8
          Top = 35
          Width = 97
          Height = 21
          Color = clBtnFace
          DataField = '_MAX_CURRENT_BASE_SALARY'
          DataSource = dsOccupationSalaries
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnlOccupationId: TPanel
        Left = 8
        Top = 16
        Width = 513
        Height = 57
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        DesignSize = (
          513
          57)
        object lblOccupationStatus: TLabel
          Left = 8
          Top = 8
          Width = 116
          Height = 13
          Caption = #1057#1090#1072#1090#1091#1089' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072
          FocusControl = edtOccupationStatus
        end
        object lblOccupationIsMain: TLabel
          Left = 136
          Top = 8
          Width = 75
          Height = 13
          Caption = #1042#1080#1076' '#1044#1083#1098#1078#1085#1086#1089#1090
        end
        object lblOccupation: TLabel
          Left = 232
          Top = 8
          Width = 138
          Height = 13
          Caption = #1044#1083#1098#1078#1085#1086#1089#1090' - '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        end
        object btnDocs: TSpeedButton
          Left = 466
          Top = 23
          Width = 37
          Height = 22
          Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1076#1083#1098#1078#1085#1086#1089#1090#1090#1072
          Anchors = [akTop, akRight]
          Flat = True
          Glyph.Data = {
            76010000424D760100000000000076000000280000001D000000100000000100
            0400000000000001000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDD33333DD
            DDDDDDDDDDDDDDDDD000DDDB0000000DDDDDDDDDDDDDDDDDD000DDBB33000333
            DDDDDDDDDDDDDDDDD000DBB33B000BB33DDDDDDDDDDDDDDDD000BB33BB0003BB
            33DDDDDDDDDDDDDDD000BB33B300033BB33DDDDDDDDDDDDDD000BB3BB3000B33
            BB3DDDDDDDDDDD0DD000BB3BB3000BB3BB33DDDDDDDDD000D000BB33000003B3
            BB33DDDDDDDD00000000BBB3BB333BB3BB33DDDDDDDDDDDDD000DBB33BBBBB33
            BB3DDDDDDDDDDDDDD000DBBB3300033BB33DDDDDDDDDDDDDD000DDBBB300033B
            B3DDDDDDDDDDDDDDD000DDDBBB303BBB33DDDDDDDDDDDDDDD000DDDDDBBBBBB3
            3DDDDDDDDDDDDDDDD000DDDDDDD3333DDDDDDDDDDDDDDDDDD000}
          ParentShowHint = False
          ShowHint = True
          Transparent = False
          OnClick = btnDocsClick
        end
        object edtOccupationStatus: TDBEdit
          Left = 8
          Top = 24
          Width = 121
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_OCCUPATION_STATUS_ABBREV'
          DataSource = dsData
          TabOrder = 0
        end
        object edtOccupation: TDBEdit
          Left = 232
          Top = 24
          Width = 233
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'OCCUPATION_NAME'
          DataSource = dsData
          TabOrder = 2
        end
        object cbOccupationIsMain: TJvDBComboBox
          Left = 136
          Top = 24
          Width = 89
          Height = 21
          DataField = 'IS_MAIN'
          DataSource = dsData
          Items.Strings = (
            #1054#1089#1085#1086#1074#1085#1072
            #1055#1088#1086#1080#1079#1074#1086#1076#1085#1072)
          TabOrder = 1
          Values.Strings = (
            'True'
            'False')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
          ListSettings.OutfilteredValueFont.Style = []
        end
      end
      object pnlPhase: TPanel
        Left = 528
        Top = 16
        Width = 129
        Height = 57
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 1
        object lblPhase: TLabel
          Left = 8
          Top = 8
          Width = 29
          Height = 13
          Caption = #1060#1072#1079#1072
          FocusControl = cbPhase
        end
        object cbPhase: TJvDBLookupCombo
          Left = 8
          Top = 24
          Width = 113
          Height = 21
          DropDownWidth = 150
          DeleteKeyClear = False
          DataField = '_OCCUPATION_PHASE_SHOW_NAME'
          DataSource = dsData
          TabOrder = 0
        end
      end
      object gbCraft: TGroupBox
        Left = 8
        Top = 128
        Width = 417
        Height = 65
        Caption = ' '#1053#1086#1088#1084#1072#1090#1080#1074#1085#1086' '#1050#1083#1072#1089#1080#1092#1080#1094#1080#1088#1072#1085#1077' '
        TabOrder = 5
        inline frCraft: TfrCraftEditFrame
          Left = 8
          Top = 20
          Width = 401
          Height = 37
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          TabOrder = 0
          inherited lblCraftType: TLabel
            Width = 129
          end
          inherited lblCraftCode: TLabel
            Width = 52
          end
          inherited cbCraft: TJvDBLookupCombo
            Width = 161
          end
        end
      end
      object pnlShift: TPanel
        Left = 664
        Top = 16
        Width = 121
        Height = 57
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 2
        object lblOccupationLevel: TLabel
          Left = 8
          Top = 8
          Width = 40
          Height = 13
          Caption = #1054#1088#1053#1080#1074#1086
          FocusControl = edtOccupationLevel
        end
        object btnOccupationShifts: TSpeedButton
          Left = 89
          Top = 24
          Width = 23
          Height = 22
          Action = actOccupationShifts
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000000000FF00
            FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
            FF0000000000FFFFFF008400000084000000FFFFFF00FF00FF00FFFFFF000000
            0000000000000000000000000000FFFFFF00FFFFFF000000000000000000FF00
            FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
            FF0000000000FFFFFF008400000084000000FFFFFF00FF00FF00FFFFFF000000
            000000000000840000000000000000000000FFFFFF000000000000000000FF00
            FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FF00
            FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
            FF0000000000FFFFFF008400000084000000FFFFFF00FF00FF00FFFFFF000000
            0000000000000000000000000000FFFFFF00FFFFFF000000000000000000FF00
            FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
            FF0000000000FFFFFF008400000084000000FFFFFF00FF00FF00FFFFFF000000
            000000000000840000000000000000000000FFFFFF000000000000000000FF00
            FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000000000FF00
            FF0000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          ParentShowHint = False
          ShowHint = True
        end
        object lblCurrentShift: TLabel
          Left = 64
          Top = 8
          Width = 33
          Height = 13
          Caption = #1057#1084#1103#1085#1072
          FocusControl = edtCurrentShift
        end
        object edtOccupationLevel: TDBEdit
          Left = 8
          Top = 24
          Width = 49
          Height = 21
          Color = 16776176
          DataField = 'OCCUPATION_LEVEL'
          DataSource = dsData
          TabOrder = 0
        end
        object edtCurrentShift: TDBEdit
          Left = 64
          Top = 24
          Width = 25
          Height = 21
          Color = clBtnFace
          DataField = '_MAX_CURRENT_SHIFT_IDENTIFIER'
          DataSource = dsOccupationShifts
          ReadOnly = True
          TabOrder = 1
        end
      end
      object gbDept: TGroupBox
        Left = 8
        Top = 78
        Width = 513
        Height = 49
        Caption = ' '#1054#1088#1063' '#1087#1088#1080#1085#1072#1076#1083#1077#1078#1085#1086#1089#1090' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072' '
        TabOrder = 3
        object edtDeptIsExternal: TDBEdit
          Left = 432
          Top = 16
          Width = 33
          Height = 21
          TabStop = False
          Color = 12373173
          DataField = 'DEPT_IS_EXTERNAL'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 1
        end
        object edtDeptIsRecurrent: TDBEdit
          Left = 472
          Top = 16
          Width = 33
          Height = 21
          TabStop = False
          Color = 12373173
          DataField = 'DEPT_IS_RECURRENT'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 2
        end
        inline frDept: TfrDeptFieldEditFrameBald
          Left = 8
          Top = 16
          Width = 417
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 0
          TabStop = True
          inherited gbTreeNode: TGroupBox
            Width = 433
            inherited pnlTreeNode: TPanel
              Width = 417
              inherited pnlTreeNodeName: TPanel
                Width = 270
                inherited edtTreeNodeName: TDBEdit
                  Width = 269
                end
              end
              inherited pnlTreeNodeNo: TPanel
                Left = 270
              end
              inherited pnlRightButtons: TPanel
                Left = 381
              end
            end
          end
        end
      end
    end
    object pcOccupationDetails: TPageControl
      Left = 8
      Top = 285
      Width = 793
      Height = 240
      ActivePage = tsOccupationProfessionsDepts
      Anchors = [akLeft, akTop, akBottom]
      HotTrack = True
      TabOrder = 3
      object tsOccupationProfessionsDepts: TTabSheet
        Caption = #1055#1086#1083#1077#1074#1080' '#1054#1073#1093#1074#1072#1090
      end
      object tsPrcData: TTabSheet
        Caption = #1055#1088#1086#1094#1077#1089#1077#1085' '#1054#1073#1093#1074#1072#1090
        ImageIndex = 4
      end
      object tsOccupationProfessions: TTabSheet
        Caption = #1056#1086#1083#1077#1074#1080' '#1054#1073#1093#1074#1072#1090
        ImageIndex = 2
        DesignSize = (
          785
          212)
        inline frProfessions: TDualGridFrame
          Left = 8
          Top = 3
          Width = 769
          Height = 203
          Anchors = [akLeft, akTop, akBottom]
          TabOrder = 0
          inherited pnlIncluded: TPanel
            Width = 362
            Height = 203
            inherited pnlIncludedNavigator: TPanel
              Width = 362
              inherited navIncluded: TDBColorNavigator
                Hints.Strings = ()
              end
            end
            inherited grdIncluded: TAbmesDBGrid
              Width = 362
              Height = 179
              FooterFont.Name = 'Microsoft Sans Serif'
              TitleFont.Name = 'Microsoft Sans Serif'
              UseMultiTitle = True
              VTitleMargin = 5
              OnDrawColumnCell = frProfessionsgrdIncludedDrawColumnCell
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'PROFESSION_FULL_NO'
                  Footers = <>
                  Title.Caption = #1053#1077#1086#1073#1093#1086#1076#1080#1084#1080' '#1079#1072' '#1044#1056#1054#1088' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080'|'#1050#1086#1076
                  Width = 47
                end
                item
                  Alignment = taCenter
                  Color = 15532031
                  EditButtons = <>
                  FieldName = 'HAS_DOCUMENTATION'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Courier New'
                  Font.Style = [fsBold]
                  Footers = <>
                  Title.Caption = #1053#1077#1086#1073#1093#1086#1076#1080#1084#1080' '#1079#1072' '#1044#1056#1054#1088' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080'|'#1048#1048#1054
                  Title.Orientation = tohVertical
                  Width = 14
                end
                item
                  EditButtons = <>
                  FieldName = 'PROFESSION_NAME'
                  Footers = <>
                  Title.Caption = #1053#1077#1086#1073#1093#1086#1076#1080#1084#1080' '#1079#1072' '#1044#1056#1054#1088' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                  Width = 252
                end
                item
                  EditButtons = <>
                  FieldName = 'PROFESSION_KIND_IDENTIFIER'
                  Footers = <>
                  Title.Caption = #1042#1080#1076
                  Title.Orientation = tohVertical
                  Width = 13
                end>
            end
          end
          inherited pnlButtons: TPanel
            Left = 362
            Height = 203
            inherited pnlProductButtons: TPanel
              Top = 25
            end
          end
          inherited pnlExcluded: TPanel
            Left = 406
            Width = 363
            Height = 203
            inherited pnlExcludedNavigator: TPanel
              Width = 363
              inherited navExcluded: TDBColorNavigator
                Left = 267
                Hints.Strings = ()
              end
            end
            inherited grdExcluded: TAbmesDBGrid
              Width = 363
              Height = 179
              FooterFont.Name = 'Microsoft Sans Serif'
              TitleFont.Name = 'Microsoft Sans Serif'
              UseMultiTitle = True
              VTitleMargin = 5
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'PROFESSION_FULL_NO'
                  Footers = <>
                  Title.Caption = #1053#1077#1086#1073#1093#1086#1076#1080#1084#1080' '#1079#1072' '#1048#1055' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080'|'#1050#1086#1076
                  Width = 47
                end
                item
                  Alignment = taCenter
                  Color = 15532031
                  EditButtons = <>
                  FieldName = 'HAS_DOCUMENTATION'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Courier New'
                  Font.Style = [fsBold]
                  Footers = <>
                  Title.Caption = #1053#1077#1086#1073#1093#1086#1076#1080#1084#1080' '#1079#1072' '#1048#1055' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080'|'#1048#1048#1054
                  Title.Orientation = tohVertical
                  Width = 14
                end
                item
                  EditButtons = <>
                  FieldName = 'PROFESSION_NAME'
                  Footers = <>
                  Title.Caption = #1053#1077#1086#1073#1093#1086#1076#1080#1084#1080' '#1079#1072' '#1048#1055' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                  Width = 253
                end
                item
                  EditButtons = <>
                  FieldName = 'PROFESSION_KIND_IDENTIFIER'
                  Footers = <>
                  Title.Caption = #1042#1080#1076
                  Title.Orientation = tohVertical
                  Width = 13
                end>
            end
          end
          inherited dsData: TDataSource
            DataSet = cdsGridData
          end
          inherited dsExcluded: TDataSource
            DataSet = cdsOtherGridData
            Top = 56
          end
        end
        object tlbOccupationProfessionDocs: TToolBar
          Left = 104
          Top = 3
          Width = 37
          Height = 24
          Align = alNone
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Caption = 'tlbTopGridButtons'
          Images = dmMain.ilActions
          TabOrder = 1
          object btnOccupationProfessionDocs: TSpeedButton
            Left = 0
            Top = 0
            Width = 37
            Height = 24
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1072#1090#1072' '#1055#1088#1086#1094#1077#1089#1085#1072' '#1056#1086#1083#1103
            Flat = True
            Glyph.Data = {
              36060000424D360600000000000036040000280000001D000000100000000100
              0800000000000002000000000000000000000001000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
              A6000020400000206000002080000020A0000020C0000020E000004000000040
              20000040400000406000004080000040A0000040C0000040E000006000000060
              20000060400000606000006080000060A0000060C0000060E000008000000080
              20000080400000806000008080000080A0000080C0000080E00000A0000000A0
              200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
              200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
              200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
              20004000400040006000400080004000A0004000C0004000E000402000004020
              20004020400040206000402080004020A0004020C0004020E000404000004040
              20004040400040406000404080004040A0004040C0004040E000406000004060
              20004060400040606000406080004060A0004060C0004060E000408000004080
              20004080400040806000408080004080A0004080C0004080E00040A0000040A0
              200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
              200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
              200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
              20008000400080006000800080008000A0008000C0008000E000802000008020
              20008020400080206000802080008020A0008020C0008020E000804000008040
              20008040400080406000804080008040A0008040C0008040E000806000008060
              20008060400080606000806080008060A0008060C0008060E000808000008080
              20008080400080806000808080008080A0008080C0008080E00080A0000080A0
              200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
              200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
              200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
              2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
              2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
              2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
              2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
              2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
              2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
              2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFD1D
              1D1D1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFB0000
              0000000000FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFBFB1D1D
              0000001D1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFBFB1D1DFB
              000000FBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FBFB1D1DFBFB
              0000001DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FBFB1D1DFB1D
              0000001D1DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FBFB1DFBFB1D
              000000FB1D1DFBFB1DFDFDFDFDFDFDFDFDFDFDFD00FDFD000000FBFB1DFBFB1D
              000000FBFB1DFBFB1D1DFDFDFDFDFDFDFDFDFD000000FD000000FBFB1D1D0000
              0000001DFB1DFBFB1D1DFDFDFDFDFDFDFDFD0000000000000000FBFBFB1DFBFB
              1D1D1DFBFB1DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFBFB1D1DFB
              FBFBFBFB1D1DFBFB1DFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFBFBFB1D1D
              0000001D1DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFBFBFB1D
              0000001D1DFBFB1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFBFBFB
              1D001DFBFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFDFDFB
              FBFBFBFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFDFDFD
              FD1D1D1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000}
            ParentShowHint = False
            ShowHint = True
            Transparent = False
            OnClick = btnOccupationProfessionDocsClick
          end
        end
        object tlbOccupationNotProfessionDocs: TToolBar
          Left = 644
          Top = 3
          Width = 37
          Height = 24
          Align = alNone
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Caption = 'tlbTopGridButtons'
          Images = dmMain.ilActions
          TabOrder = 2
          object btnOccupationNotProfessionDocs: TSpeedButton
            Left = 0
            Top = 0
            Width = 37
            Height = 24
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1072#1090#1072' '#1055#1088#1086#1094#1077#1089#1085#1072' '#1056#1086#1083#1103
            Flat = True
            Glyph.Data = {
              36060000424D360600000000000036040000280000001D000000100000000100
              0800000000000002000000000000000000000001000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
              A6000020400000206000002080000020A0000020C0000020E000004000000040
              20000040400000406000004080000040A0000040C0000040E000006000000060
              20000060400000606000006080000060A0000060C0000060E000008000000080
              20000080400000806000008080000080A0000080C0000080E00000A0000000A0
              200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
              200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
              200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
              20004000400040006000400080004000A0004000C0004000E000402000004020
              20004020400040206000402080004020A0004020C0004020E000404000004040
              20004040400040406000404080004040A0004040C0004040E000406000004060
              20004060400040606000406080004060A0004060C0004060E000408000004080
              20004080400040806000408080004080A0004080C0004080E00040A0000040A0
              200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
              200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
              200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
              20008000400080006000800080008000A0008000C0008000E000802000008020
              20008020400080206000802080008020A0008020C0008020E000804000008040
              20008040400080406000804080008040A0008040C0008040E000806000008060
              20008060400080606000806080008060A0008060C0008060E000808000008080
              20008080400080806000808080008080A0008080C0008080E00080A0000080A0
              200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
              200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
              200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
              2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
              2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
              2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
              2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
              2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
              2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
              2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFD1D
              1D1D1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFB0000
              0000000000FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFBFB1D1D
              0000001D1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFBFB1D1DFB
              000000FBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FBFB1D1DFBFB
              0000001DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FBFB1D1DFB1D
              0000001D1DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FBFB1DFBFB1D
              000000FB1D1DFBFB1DFDFDFDFDFDFDFDFDFDFDFD00FDFD000000FBFB1DFBFB1D
              000000FBFB1DFBFB1D1DFDFDFDFDFDFDFDFDFD000000FD000000FBFB1D1D0000
              0000001DFB1DFBFB1D1DFDFDFDFDFDFDFDFD0000000000000000FBFBFB1DFBFB
              1D1D1DFBFB1DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFBFB1D1DFB
              FBFBFBFB1D1DFBFB1DFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFBFBFB1D1D
              0000001D1DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFBFBFB1D
              0000001D1DFBFB1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFBFBFB
              1D001DFBFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFDFDFB
              FBFBFBFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFDFDFD
              FD1D1D1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000}
            ParentShowHint = False
            ShowHint = True
            Transparent = False
            OnClick = btnOccupationNotProfessionDocsClick
          end
        end
      end
      object tsSysRoles: TTabSheet
        Caption = #1053#1072#1073#1086#1088#1080' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080
        ImageIndex = 3
        DesignSize = (
          785
          212)
        object bvlOccupationSysRolesTopButtons: TBevel
          Left = 8
          Top = 0
          Width = 769
          Height = 24
          Shape = bsFrame
        end
        inline frSysRoles: TDualGridFrame
          Left = 8
          Top = 24
          Width = 769
          Height = 184
          Anchors = [akLeft, akTop, akBottom]
          TabOrder = 0
          inherited pnlIncluded: TPanel
            Width = 362
            Height = 184
            inherited pnlIncludedNavigator: TPanel
              Width = 362
              inherited navIncluded: TDBColorNavigator
                Width = 120
                VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit]
                Hints.Strings = ()
              end
            end
            inherited grdIncluded: TAbmesDBGrid
              Width = 362
              Height = 160
              FooterFont.Name = 'Microsoft Sans Serif'
              TitleFont.Name = 'Microsoft Sans Serif'
              UseMultiTitle = True
              VTitleMargin = 11
              OnGetCellParams = frSysRolesgrdIncludedGetCellParams
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'SYS_ROLE_NO'
                  Footers = <>
                  Title.Caption = #1055#1088#1080#1089#1098#1097#1080' '#1079#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072' '#1053#1072#1073#1086#1088#1080' '#1048#1085#1092#1054#1090#1075'|'#1050#1086#1076
                end
                item
                  EditButtons = <>
                  FieldName = 'SYS_ROLE_NAME'
                  Footers = <>
                  Title.Caption = #1055#1088#1080#1089#1098#1097#1080' '#1079#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072' '#1053#1072#1073#1086#1088#1080' '#1048#1085#1092#1054#1090#1075'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                  Width = 264
                end>
            end
          end
          inherited pnlButtons: TPanel
            Left = 362
            Height = 184
            inherited pnlProductButtons: TPanel
              Top = 16
            end
          end
          inherited pnlExcluded: TPanel
            Left = 406
            Width = 363
            Height = 184
            inherited pnlExcludedNavigator: TPanel
              Width = 363
              inherited navExcluded: TDBColorNavigator
                Left = 243
                Width = 120
                VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit]
                Hints.Strings = ()
              end
            end
            inherited grdExcluded: TAbmesDBGrid
              Width = 363
              Height = 160
              FooterFont.Name = 'Microsoft Sans Serif'
              TitleFont.Name = 'Microsoft Sans Serif'
              UseMultiTitle = True
              VTitleMargin = 11
              OnGetCellParams = frSysRolesgrdExcludedGetCellParams
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'SYS_ROLE_NO'
                  Footers = <>
                  Title.Caption = #1053#1077#1087#1088#1080#1089#1098#1097#1080' '#1079#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072' '#1053#1072#1073#1086#1088#1080' '#1048#1085#1092#1054#1090#1075'|'#1050#1086#1076
                end
                item
                  EditButtons = <>
                  FieldName = 'SYS_ROLE_NAME'
                  Footers = <>
                  Title.Caption = #1053#1077#1087#1088#1080#1089#1098#1097#1080' '#1079#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072' '#1053#1072#1073#1086#1088#1080' '#1048#1085#1092#1054#1090#1075'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                  Width = 265
                end>
            end
          end
          inherited dsData: TDataSource
            DataSet = cdsOccupationSysRoles
          end
          inherited dsExcluded: TDataSource
            DataSet = cdsOccupationNotSysRoles
          end
        end
        object btnOccupationEffectiveActivities: TBitBtn
          Left = 136
          Top = 26
          Width = 233
          Height = 22
          Action = actOccupationEffectiveActivities
          Caption = #1044#1077#1081#1089#1090#1074#1077#1085#1080' '#1048#1085#1092#1054#1090#1075' '#1079#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072'...'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0000000000FF00FF00FF00FF00000000000000000000000000FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000000000000000FFFFFF00FFFFFF000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FFFFFF00000000000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            00000000000000000000000000000000000000000000FF00FF0000000000FFFF
            FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
            0000FFFFFF00FFFFFF00FFFFFF000000000000000000FF00FF0000000000FFFF
            FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
            FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
            00000000000000000000000000000000000000000000FF00FF0084848400FFFF
            FF000000000000000000000000000000000000000000FFFFFF00000000000000
            00000000000000000000000000000000000000000000FF00FF0084848400FFFF
            FF00000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF00FF0084848400FFFF
            FF00848484000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF00FF0000000000FFFF
            FF0084848400FFFFFF0000000000000000000000000000000000000000000000
            0000000000000000000000000000FF00FF0000000000FF00FF0084848400FFFF
            FF0084848400FFFFFF00FFFFFF00FFFFFF008484840000000000FFFFFF008484
            840084848400FFFFFF00000000000000000000000000FF00FF0084848400FFFF
            FF0084848400FFFFFF008484840084848400FFFFFF0000000000FFFFFF00FFFF
            FF0000000000FFFFFF0000000000FF00FF0000000000FF00FF00848484008484
            840084848400FFFFFF00FFFFFF00FFFFFF0000000000FF00FF0000000000FFFF
            FF00FFFFFF00FFFFFF00000000000000000000000000FF00FF00FF00FF00FF00
            FF0084848400848484008484840084848400FF00FF00FF00FF00FF00FF008484
            8400848484008484840084848400FF00FF00FF00FF00FF00FF00}
          TabOrder = 1
        end
        object tlbSwitchVisibleSysRoleType: TToolBar
          Left = 10
          Top = 2
          Width = 219
          Height = 20
          Align = alNone
          AutoSize = True
          ButtonHeight = 20
          ButtonWidth = 73
          TabOrder = 2
          object btnShowSRTActivities: TSpeedButton
            Left = 0
            Top = 0
            Width = 73
            Height = 20
            Action = actShowSRTActivities
            GroupIndex = 1
            Down = True
            Flat = True
          end
          object btnShowSRTFilterVariants: TSpeedButton
            Left = 73
            Top = 0
            Width = 73
            Height = 20
            Action = actShowSRTFilterVariants
            GroupIndex = 1
            Flat = True
          end
          object btnShowSRTDocItems: TSpeedButton
            Left = 146
            Top = 0
            Width = 73
            Height = 20
            Action = actShowSRTDocItems
            GroupIndex = 1
            Flat = True
          end
        end
        object pnlSysRolesFilter: TPanel
          Left = 414
          Top = 24
          Width = 115
          Height = 24
          BevelOuter = bvNone
          TabOrder = 3
          object tlbFilterOccupationNotSysRoles: TToolBar
            Left = 1
            Top = 1
            Width = 24
            Height = 24
            Align = alNone
            AutoSize = True
            ButtonHeight = 24
            ButtonWidth = 24
            Caption = 'tlbFilterOccupationNotSysRoles'
            Images = dmMain.ilActions
            TabOrder = 0
            object btnFilterOccupationNotSysRoles: TToolButton
              Left = 0
              Top = 0
              Action = actFilterOccupationNotSysRoles
            end
          end
          object edtActivityNo: TDBEdit
            Left = 32
            Top = 2
            Width = 65
            Height = 21
            Color = clBtnFace
            DataField = '_ACTIVITY_NO'
            DataSource = dsSysRolesIsFilterAcceptedParams
            ReadOnly = True
            TabOrder = 1
          end
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 184
    Top = 448
  end
  inherited cdsGridData: TAbmesClientDataSet
    DataSetField = cdsDataqryOccupationProfessions
    FieldDefs = <
      item
        Name = 'OCCUPATION_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PROFESSION_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PROFESSION_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'HAS_DOCUMENTATION'
        DataType = ftFloat
      end
      item
        Name = 'DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PROFESSION_KIND_IDENTIFIER'
        DataType = ftWideString
      end
      item
        Name = 'PROFESSION_KIND_NO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'PROFESSION_FULL_NO'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'PROFESSION_FORMATTED_FULL_NO'
        DataType = ftWideString
        Size = 100
      end>
    IndexFieldNames = 'PROFESSION_FORMATTED_FULL_NO'
    Params = <
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
      end>
    OnNewRecord = cdsGridDataNewRecord
    Left = 152
    Top = 448
    object cdsGridDataPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataPROFESSION_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsGridDataOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object cdsGridDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = []
    end
    object cdsGridDataPROFESSION_KIND_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PROFESSION_KIND_IDENTIFIER'
      ProviderFlags = []
      Size = 409
    end
    object cdsGridDataPROFESSION_KIND_NO: TAbmesFloatField
      FieldName = 'PROFESSION_KIND_NO'
      Required = True
    end
    object cdsGridDataPROFESSION_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FULL_NO'
      Size = 100
    end
    object cdsGridDataPROFESSION_FORMATTED_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FORMATTED_FULL_NO'
      Size = 100
    end
  end
  inherited alActions: TActionList
    Left = 304
    Top = 40
    inherited actForm: TAction
      Caption = #1044#1083#1098#1078#1085#1086#1089#1090' - %s'
    end
    inherited actExcelExport: TAction
      Visible = False
    end
    object actNotes: TAction [15]
      Caption = #1041#1077#1083#1077#1078#1082#1080'...'
      ImageIndex = 57
      OnExecute = actNotesExecute
      OnUpdate = actNotesUpdate
    end
    object actAssignment: TAction [16]
      Caption = #1044#1083#1098#1078#1085#1086#1089#1090#1085#1086' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077'...'
      ImageIndex = 65
    end
    object actOccupationShifts: TAction [17]
      Hint = #1057#1084#1077#1085#1080
      ImageIndex = 108
      OnExecute = actOccupationShiftsExecute
    end
    object actOccupationSalaries: TAction [18]
      Hint = #1057#1090#1086#1081#1085#1086#1089#1090#1085#1080' '#1093#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072' '#1087#1086' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083#1080
      ImageIndex = 108
      OnExecute = actOccupationSalariesExecute
    end
    object actOccupationEffectiveActivities: TAction [19]
      Caption = #1044#1077#1081#1089#1090#1074#1077#1085#1080' '#1048#1085#1092#1054#1090#1075' '#1079#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072'...'
      Hint = #1044#1077#1081#1089#1090#1074#1077#1085#1080' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080' '#1079#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072
      ImageIndex = 65
      OnExecute = actOccupationEffectiveActivitiesExecute
      OnUpdate = actOccupationEffectiveActivitiesUpdate
    end
    object actFilterOccupationNotSysRoles: TAction [20]
      Hint = #1060#1080#1083#1090#1088#1080#1088#1072#1085#1077' '#1087#1086' '#1089#1098#1076#1098#1088#1078#1072#1085#1077' '#1085#1072' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1072' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090
      ImageIndex = 3
      OnExecute = actFilterOccupationNotSysRolesExecute
    end
    object actShowSRTActivities: TAction
      Caption = #1057#1080#1089#1090#1077#1084#1085#1080
      GroupIndex = 1
      OnExecute = actShowSRTActivitiesExecute
    end
    object actShowSRTFilterVariants: TAction
      Caption = #1060#1080#1083#1090#1098#1088#1085#1080
      GroupIndex = 1
      OnExecute = actShowSRTFilterVariantsExecute
    end
    object actShowSRTDocItems: TAction
      Caption = #1052#1048#1048#1054
      GroupIndex = 1
      OnExecute = actShowSRTDocItemsExecute
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 152
    Top = 416
  end
  inherited dsGridDataParams: TDataSource
    Left = 184
    Top = 416
  end
  inherited dsData: TDataSource
    Left = 312
    Top = 192
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conHumanResource
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvOccupation'
    BeforeOpen = cdsDataBeforeOpen
    BeforePost = cdsDataBeforePost
    OnCalcFields = cdsDataCalcFields
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    Left = 280
    Top = 192
    object cdsDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object cdsDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = []
    end
    object cdsDataOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDataIS_MAIN: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'IS_MAIN'
      OnGetText = cdsDataIS_MAINGetText
      FieldValueType = fvtBoolean
    end
    object cdsDataOCCUPATION_NAME: TAbmesWideStringField
      DisplayLabel = #1044#1083#1098#1078#1085#1086#1089#1090
      FieldName = 'OCCUPATION_NAME'
      Required = True
      Size = 50
    end
    object cdsDataOCCUPATION_LEVEL: TAbmesFloatField
      Alignment = taCenter
      DisplayLabel = #1054#1088#1075#1053#1080#1074#1086
      FieldName = 'OCCUPATION_LEVEL'
      Required = True
    end
    object cdsDataDEPT_CODE: TAbmesFloatField
      DisplayLabel = #1054#1088#1063' '#1085#1072' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077
      FieldName = 'DEPT_CODE'
      Required = True
      OnChange = cdsDataDEPT_CODEChange
    end
    object cdsDataDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsDataDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 45
    end
    object cdsDataDEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_BEGIN_DATE'
      ProviderFlags = []
    end
    object cdsDataDEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_END_DATE'
      ProviderFlags = []
    end
    object cdsDataDEPT_IS_EXTERNAL: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'DEPT_IS_EXTERNAL'
      ProviderFlags = []
      DisplayBoolValues = #1042#1085'.;'#1042#1090#1088'.'
      FieldValueType = fvtBoolean
    end
    object cdsDataDEPT_IS_RECURRENT: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'DEPT_IS_RECURRENT'
      ProviderFlags = []
      DisplayBoolValues = #1055#1091#1083#1089'.;'#1059#1089#1090'.'
      FieldValueType = fvtBoolean
    end
    object cdsDataOCCUPATION_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '#1079#1072' '#1072#1082#1090#1080#1074#1085#1086#1089#1090' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072': '#1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072
      FieldName = 'OCCUPATION_BEGIN_DATE'
      Required = True
      OnChange = cdsDataOCCUPATION_BEGIN_DATEChange
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object cdsDataOCCUPATION_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'OCCUPATION_END_DATE'
      OnChange = cdsDataOCCUPATION_BEGIN_DATEChange
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object cdsDataIS_ACTIVE: TAbmesFloatField
      FieldName = 'IS_ACTIVE'
      ProviderFlags = []
      DisplayBoolValues = #1040';'#1055
      FieldValueType = fvtBoolean
    end
    object cdsDataIS_OCCUPIED: TAbmesFloatField
      FieldName = 'IS_OCCUPIED'
      ProviderFlags = []
      DisplayBoolValues = #1047';'#1053
      FieldValueType = fvtBoolean
    end
    object cdsDataNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsDataOCCUPATION_PHASE_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_PHASE_CODE'
      OnValidate = cdsDataOCCUPATION_PHASE_CODEValidate
    end
    object cdsDataPRODUCT_CODE: TAbmesFloatField
      DisplayLabel = #1044#1083#1098#1078#1085#1086#1089#1090#1077#1085' '#1056#1072#1073#1086#1090#1085#1080#1082' '#1085#1072' '#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103#1090#1072' ('#1044#1056#1054#1088')'
      FieldName = 'PRODUCT_CODE'
    end
    object cdsDataqryOccupationProfessions: TDataSetField
      FieldName = 'qryOccupationProfessions'
    end
    object cdsDataqryOccupationDepts: TDataSetField
      FieldName = 'qryOccupationDepts'
    end
    object cdsDataqryOccupationShifts: TDataSetField
      FieldName = 'qryOccupationShifts'
    end
    object cdsData_OCCUPATION_STATUS_ABBREV: TAbmesWideStringField
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = '_OCCUPATION_STATUS_ABBREV'
      Size = 50
      Calculated = True
    end
    object cdsData_OCCUPATION_PHASE_SHOW_NAME: TAbmesWideStringField
      DisplayLabel = #1060#1072#1079#1072
      FieldKind = fkLookup
      FieldName = '_OCCUPATION_PHASE_SHOW_NAME'
      LookupDataSet = cdsOccupationPhases
      LookupKeyFields = 'OCCUPATION_PHASE_CODE'
      LookupResultField = '_SHOW_NAME'
      KeyFields = 'OCCUPATION_PHASE_CODE'
      Size = 50
      Lookup = True
    end
    object cdsDataPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsDataPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object cdsData_OCCUPATION_PERIOD: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_OCCUPATION_PERIOD'
      Size = 30
      Calculated = True
    end
    object cdsDataCRAFT_CODE: TAbmesFloatField
      FieldName = 'CRAFT_CODE'
    end
    object cdsDataCRAFT_TYPE_CODE: TAbmesFloatField
      FieldName = 'CRAFT_TYPE_CODE'
      ProviderFlags = []
    end
    object cdsData_DAYS_LEFT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DAYS_LEFT'
      Calculated = True
    end
    object cdsData_CRAFT_TYPE_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_CRAFT_TYPE_NAME'
      Size = 50
      Calculated = True
    end
    object cdsData_CRAFT_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_CRAFT_NAME'
      Size = 100
      Calculated = True
    end
    object cdsDataqryOccupationSalaries: TDataSetField
      FieldName = 'qryOccupationSalaries'
    end
    object cdsData_SHIFT_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHIFT_IDENTIFIER'
      Size = 10
      Calculated = True
    end
    object cdsDataTHE_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_DATE'
      ProviderFlags = []
    end
    object cdsDataqryOccupationSysRoles: TDataSetField
      FieldName = 'qryOccupationSysRoles'
    end
    object cdsDataPRC_DATA: TBlobField
      FieldName = 'PRC_DATA'
      ProviderFlags = []
      BlobType = ftOraBlob
      Size = 1
    end
  end
  inherited cdsOtherGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conHumanResource
    IndexFieldNames = 'PROFESSION_FORMATTED_FULL_NO'
    Params = <
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvOccupationNotProfessions'
    BeforeOpen = cdsOtherGridDataBeforeOpen
    Left = 480
    Top = 448
    object cdsOtherGridDataOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
    end
    object cdsOtherGridDataPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
    end
    object cdsOtherGridDataPROFESSION_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsOtherGridDataHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsOtherGridDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object cdsOtherGridDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = []
    end
    object cdsOtherGridDataPROFESSION_KIND_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PROFESSION_KIND_IDENTIFIER'
      Size = 409
    end
    object cdsOtherGridDataPROFESSION_KIND_NO: TAbmesFloatField
      FieldName = 'PROFESSION_KIND_NO'
      Required = True
    end
    object cdsOtherGridDataPROFESSION_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FULL_NO'
      Size = 100
    end
    object cdsOtherGridDataPROFESSION_FORMATTED_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FORMATTED_FULL_NO'
      Size = 100
    end
  end
  inherited dsOtherGridData: TDataSource
    Left = 512
    Top = 448
  end
  object cdsShifts: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conShifts
    FieldDefs = <
      item
        Name = 'SHIFT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SHIFT_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'SHIFT_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'SHIFT_IDENTIFIER'
        DataType = ftWideString
        Size = 5
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'prvShifts'
    StoreDefs = True
    BeforeOpen = cdsGridDataBeforeOpen
    AfterOpen = cdsGridDataAfterOpen
    AfterPost = cdsGridDataAfterPost
    AfterCancel = cdsGridDataAfterCancel
    AfterDelete = cdsGridDataAfterDelete
    OnReconcileError = cdsGridDataReconcileError
    Left = 368
    Top = 232
    object cdsShiftsSHIFT_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsShiftsSHIFT_NAME: TAbmesWideStringField
      FieldName = 'SHIFT_NAME'
      Size = 50
    end
    object cdsShiftsSHIFT_ABBREV: TAbmesWideStringField
      FieldName = 'SHIFT_ABBREV'
      Size = 5
    end
    object cdsShiftsSHIFT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIFT_IDENTIFIER'
      ProviderFlags = []
      Size = 5
    end
  end
  object cdsOccupationPhases: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <>
    ProviderName = 'prvOccupationPhases'
    OnCalcFields = cdsOccupationPhasesCalcFields
    Left = 280
    Top = 224
    object cdsOccupationPhasesOCCUPATION_PHASE_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_PHASE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsOccupationPhasesOCCUPATION_PHASE_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_PHASE_NAME'
      Size = 50
    end
    object cdsOccupationPhases_SHOW_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_NAME'
      Size = 50
      Calculated = True
    end
  end
  object cdsPrint: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 432
    Top = 232
    object cdsPrintORIGIN_INDEX: TAbmesFloatField
      FieldName = 'ORIGIN_INDEX'
    end
    object cdsPrint_OCCUPATION_STATUS_ABBREV: TAbmesWideStringField
      DisplayWidth = 50
      FieldName = '_OCCUPATION_STATUS_ABBREV'
      Size = 50
    end
    object cdsPrintIS_MAIN: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'IS_MAIN'
      DisplayBoolValues = #1054#1089#1085#1086#1074#1085#1086';'#1055#1088#1086#1080#1079#1074#1086#1076#1085#1086
      FieldValueType = fvtBoolean
    end
    object cdsPrintOCCUPATION_NAME: TAbmesWideStringField
      DisplayLabel = #1044#1083#1098#1078#1085#1086#1089#1090
      FieldName = 'OCCUPATION_NAME'
      Size = 50
    end
    object cdsPrint_OCCUPATION_PHASE_SHOW_NAME: TAbmesWideStringField
      FieldName = '_OCCUPATION_PHASE_SHOW_NAME'
      LookupDataSet = cdsOccupationPhases
      LookupKeyFields = 'OCCUPATION_PHASE_CODE'
      LookupResultField = '_SHOW_NAME'
      KeyFields = 'OCCUPATION_PHASE_CODE'
      Size = 50
    end
    object cdsPrintOCCUPATION_LEVEL: TAbmesFloatField
      Alignment = taCenter
      DisplayLabel = #1054#1088#1075#1053#1080#1074#1086
      FieldName = 'OCCUPATION_LEVEL'
    end
    object cdsPrintDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsPrintDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 45
    end
    object cdsPrintDEPT_IS_EXTERNAL: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'DEPT_IS_EXTERNAL'
      DisplayBoolValues = #1042#1085'.;'#1042#1090#1088'.'
      FieldValueType = fvtBoolean
    end
    object cdsPrintDEPT_IS_RECURRENT: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'DEPT_IS_RECURRENT'
      DisplayBoolValues = #1055#1091#1083#1089'.;'#1059#1089#1090'.'
      FieldValueType = fvtBoolean
    end
    object cdsPrint_SHIFT_IDENTIFIER: TAbmesWideStringField
      FieldName = '_SHIFT_IDENTIFIER'
      Size = 10
    end
    object cdsPrint_OCCUPATION_PERIOD: TAbmesWideStringField
      FieldName = '_OCCUPATION_PERIOD'
      Size = 30
    end
    object cdsPrintNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsPrintPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsPrintPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object cdsPrintHAS_DOCUMENTATION2: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsPrintPROFESSION_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsPrintPROFESSION_NAME_2: TAbmesWideStringField
      FieldName = 'PROFESSION_NAME_2'
      ProviderFlags = []
      Size = 100
    end
    object cdsPrintIS_INCLUDED_PROFESSIONS_RECORD: TAbmesFloatField
      FieldName = 'IS_INCLUDED_PROFESSIONS_RECORD'
      FieldValueType = fvtBoolean
    end
    object cdsPrintIS_EXCLUDED_PROFESSIONS_RECORD: TAbmesFloatField
      FieldName = 'IS_EXCLUDED_PROFESSIONS_RECORD'
      FieldValueType = fvtBoolean
    end
    object cdsPrintHAS_DOCUMENTATION_2: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION_2'
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsPrint_DAYS_LEFT: TAbmesFloatField
      FieldName = '_DAYS_LEFT'
    end
    object cdsPrint_CRAFT_TYPE_NAME: TAbmesWideStringField
      FieldName = '_CRAFT_TYPE_NAME'
      Size = 50
    end
    object cdsPrint_CRAFT_NAME: TAbmesWideStringField
      FieldName = '_CRAFT_NAME'
      Size = 100
    end
    object cdsPrintSPEC_STATE_CODE: TAbmesFloatField
      FieldName = 'SPEC_STATE_CODE'
      OnGetText = cdsDataSPEC_STATE_CODEGetText
    end
    object cdsPrintCOMMON_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMMON_STATUS_CODE'
    end
    object cdsPrint_COMMON_PRODUCTS_LEVELS: TAbmesWideStringField
      FieldName = '_COMMON_PRODUCTS_LEVELS'
      Size = 10
    end
    object cdsPrintCURRENT_BASE_SALARY: TAbmesFloatField
      FieldName = 'CURRENT_BASE_SALARY'
      OnGetText = cdsPrintCURRENT_BASE_SALARYGetText
      DisplayFormat = ',0.00'
    end
    object cdsPrintCURRENT_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'CURRENT_DATE_UNIT_NAME'
      Size = 50
    end
    object cdsPrintCURRENT_MIN_SALARY_RATIO_COEF: TAbmesFloatField
      FieldName = 'CURRENT_MIN_SALARY_RATIO_COEF'
    end
    object cdsPrintCURRENT_MAX_SALARY_RATIO_COEF: TAbmesFloatField
      FieldName = 'CURRENT_MAX_SALARY_RATIO_COEF'
    end
    object cdsPrintPROFESSION_KIND_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PROFESSION_KIND_IDENTIFIER'
      Size = 409
    end
    object cdsPrint_OWD_PRIORITY_DISPLAY_NAME: TAbmesWideStringField
      FieldName = '_OWD_PRIORITY_DISPLAY_NAME'
      Size = 93
    end
    object cdsPrintDEPT_OWDP_COVER_TYPE_CODE: TAbmesFloatField
      FieldName = 'DEPT_OWDP_COVER_TYPE_CODE'
      OnGetText = cdsPrintDEPT_OWDP_COVER_TYPE_CODEGetText
    end
    object cdsPrintIS_CAPACITY_GENERATOR: TAbmesFloatField
      FieldName = 'IS_CAPACITY_GENERATOR'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsPrintPROFESSION_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FULL_NO'
      Size = 100
    end
    object cdsPrintPROFESSION_FULL_NO_2: TAbmesWideStringField
      FieldName = 'PROFESSION_FULL_NO_2'
      Size = 100
    end
    object cdsPrintSYS_ROLE_NO: TAbmesFloatField
      FieldName = 'SYS_ROLE_NO'
    end
    object cdsPrintSYS_ROLE_NAME: TAbmesWideStringField
      FieldName = 'SYS_ROLE_NAME'
      Size = 150
    end
  end
  object cdsOccupationShifts: TAbmesClientDataSet
    Aggregates = <>
    AggregatesActive = True
    DataSetField = cdsDataqryOccupationShifts
    Params = <>
    BeforePost = cdsOccupationShiftsBeforePost
    OnNewRecord = cdsOccupationShiftsNewRecord
    Left = 280
    Top = 256
    object cdsOccupationShiftsOCCUPATION_SHIFT_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_SHIFT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsOccupationShiftsOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
    end
    object cdsOccupationShiftsSHIFT_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CODE'
    end
    object cdsOccupationShiftsBEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072
      FieldName = 'BEGIN_DATE'
      Required = True
      OnGetText = cdsOccupationShiftsBEGIN_DATEGetText
    end
    object cdsOccupationShiftsEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1088#1072#1081#1085#1072' '#1076#1072#1090#1072
      FieldName = 'END_DATE'
      Required = True
    end
    object cdsOccupationShiftsAFFECTS_EMP_AVAILABILITY: TAbmesFloatField
      FieldName = 'AFFECTS_EMP_AVAILABILITY'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsOccupationShiftsCURRENT_SHIFT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'CURRENT_SHIFT_IDENTIFIER'
      ProviderFlags = []
      Size = 5
    end
    object cdsOccupationShifts_SHIFT_IDENTIFIER: TAbmesWideStringField
      DisplayLabel = #1057#1084#1103#1085#1072
      FieldKind = fkLookup
      FieldName = '_SHIFT_IDENTIFIER'
      LookupDataSet = cdsShifts
      LookupKeyFields = 'SHIFT_CODE'
      LookupResultField = 'SHIFT_IDENTIFIER'
      KeyFields = 'SHIFT_CODE'
      Size = 5
      Lookup = True
    end
    object cdsOccupationShifts_MAX_OCCUPATION_SHIFT_CODE: TAggregateField
      FieldName = '_MAX_OCCUPATION_SHIFT_CODE'
      Active = True
      Expression = 'Max(OCCUPATION_SHIFT_CODE)'
    end
    object cdsOccupationShifts_MAX_CURRENT_SHIFT_IDENTIFIER: TAggregateField
      Alignment = taCenter
      FieldName = '_MAX_CURRENT_SHIFT_IDENTIFIER'
      Active = True
      Expression = 'Max(CURRENT_SHIFT_IDENTIFIER)'
    end
    object cdsOccupationShifts_MIN_BEGIN_DATE: TAggregateField
      FieldName = '_MIN_BEGIN_DATE'
      Active = True
      Expression = 'Min(BEGIN_DATE)'
    end
    object cdsOccupationShifts_MAX_END_DATE: TAggregateField
      FieldName = '_MAX_END_DATE'
      Active = True
      Expression = 'Max(END_DATE)'
    end
    object cdsOccupationShifts_SUM_PERIOD_DAYS: TAggregateField
      FieldName = '_SUM_PERIOD_DAYS'
      Active = True
      Expression = 'Sum(END_DATE - BEGIN_DATE + 1)'
    end
  end
  object dsOccupationShifts: TDataSource
    DataSet = cdsOccupationShifts
    Left = 312
    Top = 256
  end
  object cdsOccupationSalaries: TAbmesClientDataSet
    Aggregates = <>
    AggregatesActive = True
    DataSetField = cdsDataqryOccupationSalaries
    Params = <>
    BeforePost = cdsOccupationSalariesBeforePost
    OnNewRecord = cdsOccupationSalariesNewRecord
    Left = 280
    Top = 288
    object cdsOccupationSalariesOCCUPATION_SALARY_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_SALARY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsOccupationSalariesOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
    end
    object cdsOccupationSalariesBEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1042#1088#1084#1048#1085#1090
      FieldName = 'BEGIN_DATE'
      OnGetText = cdsOccupationSalariesBEGIN_DATEGetText
    end
    object cdsOccupationSalariesEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1088#1072#1081#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1042#1088#1084#1048#1085#1090
      FieldName = 'END_DATE'
    end
    object cdsOccupationSalariesBASE_SALARY: TAbmesFloatField
      DisplayLabel = #1041#1072#1079#1086#1074#1072' '#1073#1088#1091#1090#1085#1072' '#1079#1072#1087#1083#1072#1090#1072
      FieldName = 'BASE_SALARY'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsOccupationSalariesDATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'DATE_UNIT_CODE'
    end
    object cdsOccupationSalariesMIN_SALARY_RATIO_COEF: TAbmesFloatField
      DisplayLabel = #1052#1080#1085'. '#1050#1054#1088#1045#1092
      FieldName = 'MIN_SALARY_RATIO_COEF'
    end
    object cdsOccupationSalariesMAX_SALARY_RATIO_COEF: TAbmesFloatField
      DisplayLabel = #1052#1072#1082#1089'. '#1050#1054#1088#1045#1092
      FieldName = 'MAX_SALARY_RATIO_COEF'
    end
    object cdsOccupationSalariesCURRENT_BASE_SALARY: TAbmesFloatField
      FieldName = 'CURRENT_BASE_SALARY'
      ProviderFlags = []
    end
    object cdsOccupationSalariesCURRENT_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'CURRENT_DATE_UNIT_NAME'
      ProviderFlags = []
      Size = 50
    end
    object cdsOccupationSalariesCURRENT_MIN_SALARY_RATIO_COEF: TAbmesFloatField
      FieldName = 'CURRENT_MIN_SALARY_RATIO_COEF'
      ProviderFlags = []
    end
    object cdsOccupationSalariesCURRENT_MAX_SALARY_RATIO_COEF: TAbmesFloatField
      FieldName = 'CURRENT_MAX_SALARY_RATIO_COEF'
      ProviderFlags = []
    end
    object cdsOccupationSalaries_DATE_UNIT_NAME: TAbmesWideStringField
      DisplayLabel = #1042#1088#1077#1084#1077#1074#1072' '#1089#1090#1098#1087#1082#1072
      FieldKind = fkLookup
      FieldName = '_DATE_UNIT_NAME'
      LookupDataSet = cdsDateUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'THE_DATE_UNIT_NAME'
      KeyFields = 'DATE_UNIT_CODE'
      Size = 50
      Lookup = True
    end
    object cdsOccupationSalaries_MAX_OCCUPATION_SALARY_CODE: TAggregateField
      FieldName = '_MAX_OCCUPATION_SALARY_CODE'
      Active = True
      Expression = 'Max(OCCUPATION_SALARY_CODE)'
    end
    object cdsOccupationSalaries_MAX_CURRENT_BASE_SALARY: TAggregateField
      Alignment = taRightJustify
      FieldName = '_MAX_CURRENT_BASE_SALARY'
      OnGetText = cdsOccupationSalaries_MAX_CURRENT_BASE_SALARYGetText
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'Max(CURRENT_BASE_SALARY)'
    end
    object cdsOccupationSalaries_MAX_CURRENT_DATE_UNIT_NAME: TAggregateField
      FieldName = '_MAX_CURRENT_DATE_UNIT_NAME'
      OnGetText = cdsOccupationSalaries_MAX_CURRENT_DATE_UNIT_NAMEGetText
      Active = True
      Expression = 'Max(CURRENT_DATE_UNIT_NAME)'
    end
    object cdsOccupationSalaries_MAX_CUR_MIN_SALARY_RATIO_COEF: TAggregateField
      Alignment = taRightJustify
      FieldName = '_MAX_CUR_MIN_SALARY_RATIO_COEF'
      Active = True
      DisplayFormat = ',0.##'
      Expression = 'Max(CURRENT_MIN_SALARY_RATIO_COEF)'
    end
    object cdsOccupationSalaries_MAX_CUR_MAX_SALARY_RATIO_COEF: TAggregateField
      Alignment = taRightJustify
      FieldName = '_MAX_CUR_MAX_SALARY_RATIO_COEF'
      Active = True
      DisplayFormat = ',0.##'
      Expression = 'Max(CURRENT_MAX_SALARY_RATIO_COEF)'
    end
    object cdsOccupationSalaries_MIN_BEGIN_DATE: TAggregateField
      FieldName = '_MIN_BEGIN_DATE'
      Active = True
      Expression = 'Min(BEGIN_DATE)'
    end
    object cdsOccupationSalaries_MAX_END_DATE: TAggregateField
      FieldName = '_MAX_END_DATE'
      Active = True
      Expression = 'Max(END_DATE)'
    end
    object cdsOccupationSalaries_SUM_PERIOD_DAYS: TAggregateField
      FieldName = '_SUM_PERIOD_DAYS'
      Active = True
      Expression = 'Sum(END_DATE - BEGIN_DATE + 1)'
    end
  end
  object dsOccupationSalaries: TDataSource
    DataSet = cdsOccupationSalaries
    Left = 312
    Top = 288
  end
  object cdsDateUnits: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvDateUnits'
    Left = 400
    Top = 232
    object cdsDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'THE_DATE_UNIT_CODE'
    end
    object cdsDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'THE_DATE_UNIT_NAME'
      Size = 50
    end
  end
  object cdsOccupationSysRoles: TAbmesClientDataSet
    Aggregates = <>
    DataSetField = cdsDataqryOccupationSysRoles
    Filtered = True
    FieldDefs = <
      item
        Name = 'OCCUPATION_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SYS_ROLE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SYS_ROLE_NO'
        DataType = ftFloat
      end
      item
        Name = 'SYS_ROLE_NAME'
        DataType = ftWideString
        Size = 150
      end
      item
        Name = 'IS_FILTER_ACCEPTED'
        DataType = ftFloat
      end
      item
        Name = 'SYS_ROLE_TYPE_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idxDefault'
        DescFields = 'IS_FILTER_ACCEPTED'
        Fields = 'IS_FILTER_ACCEPTED;SYS_ROLE_NO'
        Options = [ixDescending]
      end>
    IndexName = 'idxDefault'
    Params = <>
    StoreDefs = True
    OnFilterRecord = cdsOccupationSysRolesFilterRecord
    Left = 152
    Top = 480
    object cdsOccupationSysRolesOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsOccupationSysRolesSYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsOccupationSysRolesSYS_ROLE_NO: TAbmesFloatField
      FieldName = 'SYS_ROLE_NO'
      ProviderFlags = []
    end
    object cdsOccupationSysRolesSYS_ROLE_NAME: TAbmesWideStringField
      FieldName = 'SYS_ROLE_NAME'
      ProviderFlags = []
      Size = 150
    end
    object cdsOccupationSysRolesIS_FILTER_ACCEPTED: TAbmesFloatField
      FieldName = 'IS_FILTER_ACCEPTED'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsOccupationSysRolesSYS_ROLE_TYPE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_TYPE_CODE'
      ProviderFlags = []
      Required = True
    end
  end
  object cdsOccupationNotSysRoles: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Filtered = True
    FieldDefs = <
      item
        Name = 'OCCUPATION_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SYS_ROLE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SYS_ROLE_NO'
        DataType = ftFloat
      end
      item
        Name = 'SYS_ROLE_NAME'
        DataType = ftWideString
        Size = 150
      end
      item
        Name = 'IS_FILTER_ACCEPTED'
        DataType = ftFloat
      end
      item
        Name = 'SYS_ROLE_TYPE_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idxDefault'
        DescFields = 'IS_FILTER_ACCEPTED'
        Fields = 'IS_FILTER_ACCEPTED;SYS_ROLE_NO'
        Options = [ixDescending]
      end>
    IndexName = 'idxDefault'
    Params = <
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvOccupationNotSysRoles'
    StoreDefs = True
    BeforeOpen = cdsOccupationNotSysRolesBeforeOpen
    AfterOpen = cdsOccupationNotSysRolesAfterOpen
    OnFilterRecord = cdsOccupationNotSysRolesFilterRecord
    Left = 480
    Top = 480
    object cdsOccupationNotSysRolesOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
    end
    object cdsOccupationNotSysRolesSYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_CODE'
    end
    object cdsOccupationNotSysRolesSYS_ROLE_NO: TAbmesFloatField
      FieldName = 'SYS_ROLE_NO'
    end
    object cdsOccupationNotSysRolesSYS_ROLE_NAME: TAbmesWideStringField
      FieldName = 'SYS_ROLE_NAME'
      Size = 150
    end
    object cdsOccupationNotSysRolesIS_FILTER_ACCEPTED: TAbmesFloatField
      FieldName = 'IS_FILTER_ACCEPTED'
      FieldValueType = fvtBoolean
    end
    object cdsOccupationNotSysRolesSYS_ROLE_TYPE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_TYPE_CODE'
      Required = True
    end
  end
  object pdsSysRolesIsFilterAcceptedParams: TParamDataSet
    DataSet = cdsSysRolesIsFilterAccepted
    Left = 640
    Top = 424
    object pdsSysRolesIsFilterAcceptedParamsACTIVITY_CODE: TAbmesFloatField
      FieldName = 'ACTIVITY_CODE'
    end
    object pdsSysRolesIsFilterAcceptedParams_ACTIVITY_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_ACTIVITY_NO'
      LookupDataSet = cdsActivities
      LookupKeyFields = 'ACTIVITY_CODE'
      LookupResultField = 'ACTIVITY_NO'
      KeyFields = 'ACTIVITY_CODE'
      Lookup = True
    end
  end
  object cdsActivities: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvActivities'
    Left = 608
    Top = 456
    object cdsActivitiesACTIVITY_CODE: TAbmesFloatField
      FieldName = 'ACTIVITY_CODE'
      Required = True
    end
    object cdsActivitiesACTIVITY_NO: TAbmesFloatField
      FieldName = 'ACTIVITY_NO'
      Required = True
    end
  end
  object dsSysRolesIsFilterAcceptedParams: TDataSource
    DataSet = pdsSysRolesIsFilterAcceptedParams
    Left = 672
    Top = 424
  end
  object cdsSysRolesIsFilterAccepted: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <
      item
        DataType = ftFloat
        Name = 'ACTIVITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACTIVITY_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvSysRolesIsFilterAccepted'
    Left = 608
    Top = 424
    object cdsSysRolesIsFilterAcceptedSYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_CODE'
      Required = True
    end
    object cdsSysRolesIsFilterAcceptedIS_FILTER_ACCEPTED: TAbmesFloatField
      FieldName = 'IS_FILTER_ACCEPTED'
      FieldValueType = fvtBoolean
    end
  end
end
