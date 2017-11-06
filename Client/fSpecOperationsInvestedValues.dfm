inherited fmSpecOperationsInvestedValues: TfmSpecOperationsInvestedValues
  Caption = #1048#1085#1078#1054#1088#1057#1040#1085' '#1074' '#1047#1072#1076#1072#1076#1077#1085' '#1056#1077#1076' '#1086#1090' '#1054#1087#1077#1088#1072#1094#1080#1080' '#1074' ID '#1045#1090#1072#1087
  ClientHeight = 497
  ClientWidth = 934
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 462
    Width = 934
    inherited pnlOKCancel: TPanel
      Left = 666
    end
    inherited pnlClose: TPanel
      Left = 577
    end
    inherited pnlApply: TPanel
      Left = 845
    end
  end
  inherited pnlMain: TPanel
    Width = 934
    Height = 462
    inherited pnlGrid: TPanel
      Top = 161
      Width = 918
      Height = 293
      TabOrder = 1
      inherited pnlNavigator: TPanel
        Width = 918
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
      end
      inherited grdData: TAbmesDBGrid
        Width = 918
        Height = 269
        FooterColor = 15258325
        FooterRowCount = 1
        UseMultiTitle = True
        OnGetCellParams = grdDataGetCellParams
        OnGetFooterParams = grdDataGetFooterParams
        Columns = <
          item
            EditButtons = <>
            FieldName = '_SHOW_NO'
            Footers = <>
            Title.Caption = #8470
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'DEPT_NAME'
            Footers = <>
            Title.Caption = 'ID '#1054#1087#1058#1055'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 149
          end
          item
            EditButtons = <>
            FieldName = 'DEPT_IDENTIFIER'
            Footers = <>
            Title.Caption = 'ID '#1054#1087#1058#1055'|'#1050#1086#1076
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'DEPT_HOUR_PRICE'
            Footers = <>
            Title.Caption = 'ID '#1054#1087#1058#1055'|'#1042#1045#1062' (%s/'#1095#1072#1089')'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = '_SETUP_PROFESSION_NAME'
            Footers = <>
            Title.Caption = 'ID '#1055#1088#1086#1094#1077#1089#1085#1072' '#1056#1086#1083#1103'|'#1053#1072#1089#1090#1088#1086#1081#1082#1072'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'SETUP_HOUR_PRICE'
            Footers = <>
            Title.Caption = 'ID '#1055#1088#1086#1094#1077#1089#1085#1072' '#1056#1086#1083#1103'|'#1053#1072#1089#1090#1088#1086#1081#1082#1072'|'#1042#1045#1062' (%s/'#1095#1072#1089')'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = '_PROFESSION_NAME'
            Footers = <>
            Title.Caption = 'ID '#1055#1088#1086#1094#1077#1089#1085#1072' '#1056#1086#1083#1103'|'#1048#1079#1087#1098#1083#1085#1077#1085#1080#1077'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'HOUR_PRICE'
            Footers = <>
            Title.Caption = 'ID '#1055#1088#1086#1094#1077#1089#1085#1072' '#1056#1086#1083#1103'|'#1048#1079#1087#1098#1083#1085#1077#1085#1080#1077'|'#1042#1045#1062' (%s/'#1095#1072#1089')'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SETUP_HOUR_TECH_QUANTITY'
            Footers = <>
            Title.Caption = #1048#1079#1093#1086#1076#1103#1097#1072' '#1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1085#1086#1089#1090' ('#1082#1086#1083'./'#1095#1072#1089')|'#1053#1072#1089#1090#1088#1086#1081'- '#1082#1072
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'HOUR_TECH_QUANTITY'
            Footers = <>
            Title.Caption = #1048#1079#1093#1086#1076#1103#1097#1072' '#1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1085#1086#1089#1090' ('#1082#1086#1083'./'#1095#1072#1089')|'#1048#1079#1087#1098#1083#1085#1077'- '#1085#1080#1077
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'SETUP_INVESTED_VALUE'
            Footer.FieldName = '_TOTAL_SETUP_INVESTED_VALUE'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = '%s|'#1053#1072#1089#1090#1088#1086#1081'- '#1082#1072
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'INVESTED_VALUE'
            Footer.FieldName = '_TOTAL_INVESTED_VALUE'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = '%s|'#1048#1079#1087#1098#1083#1085#1077'- '#1085#1080#1077
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_INVESTED_VALUE'
            Footer.FieldName = '_TOTAL_TOTAL_INVESTED_VALUE'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = '%s|'#1054#1073#1097#1086
            Width = 55
          end>
      end
    end
    object pnlTop: TPanel
      Left = 8
      Top = 8
      Width = 918
      Height = 153
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object gbDetail: TGroupBox
        Left = 0
        Top = 0
        Width = 440
        Height = 97
        TabOrder = 0
        DesignSize = (
          440
          97)
        object txtDetailTechMeasureAbbrev: TDBText
          Left = 409
          Top = 27
          Width = 26
          Height = 17
          Anchors = [akTop, akRight]
          DataField = '_DETAIL_TECH_MEASURE_ABBREV'
          DataSource = dsLines
        end
        object txtProductTechMeasureAbbrev: TDBText
          Left = 409
          Top = 67
          Width = 26
          Height = 17
          Anchors = [akTop, akRight]
          DataField = '_PRODUCT_TECH_MEASURE_ABBREV'
          DataSource = dsLines
        end
        object lblDetail: TLabel
          Left = 8
          Top = 10
          Width = 36
          Height = 13
          Caption = 'ID '#1050#1057#1063
        end
        object lblDetailTechQuantity: TLabel
          Left = 362
          Top = 10
          Width = 45
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1057#1090#1088'. '#1082'-'#1074#1086
        end
        object lblProduct: TLabel
          Left = 8
          Top = 50
          Width = 37
          Height = 13
          Caption = 'ID '#1053#1057#1063
        end
        object lblProductTechQuantity: TLabel
          Left = 362
          Top = 50
          Width = 45
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1057#1090#1088'. '#1082'-'#1074#1086
        end
        object edtDetailTechQuantity: TDBEdit
          Left = 362
          Top = 24
          Width = 44
          Height = 21
          TabStop = False
          Anchors = [akTop, akRight]
          Color = clBtnFace
          DataField = 'DETAIL_TECH_QUANTITY'
          DataSource = dsLines
          ReadOnly = True
          TabOrder = 1
        end
        object edtProductTechQuantity: TDBEdit
          Left = 362
          Top = 64
          Width = 44
          Height = 21
          TabStop = False
          Anchors = [akTop, akRight]
          Color = clBtnFace
          DataField = 'PRODUCT_TECH_QUANTITY'
          DataSource = dsLines
          ReadOnly = True
          TabOrder = 3
        end
        inline frDetail: TfrProductFieldEditFrameBald
          Left = 8
          Top = 24
          Width = 353
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Anchors = [akLeft, akTop, akRight]
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 0
          TabStop = True
          DesignSize = (
            353
            22)
          inherited gbTreeNode: TGroupBox
            Width = 369
            DesignSize = (
              369
              49)
            inherited pnlTreeNode: TPanel
              Width = 353
              inherited pnlTreeNodeNo: TPanel [0]
                Left = 39
                Align = alNone
                Visible = False
              end
              inherited pnlRightButtons: TPanel [1]
                Left = 294
              end
              inherited pnlTreeNodeName: TPanel [2]
                Width = 294
                DesignSize = (
                  294
                  22)
                inherited edtTreeNodeName: TDBEdit
                  Width = 293
                end
              end
            end
          end
        end
        inline frProduct: TfrProductFieldEditFrameBald
          Left = 8
          Top = 64
          Width = 353
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Anchors = [akLeft, akTop, akRight]
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 2
          TabStop = True
          DesignSize = (
            353
            22)
          inherited gbTreeNode: TGroupBox
            Width = 369
            DesignSize = (
              369
              49)
            inherited pnlTreeNode: TPanel
              Width = 353
              inherited pnlTreeNodeNo: TPanel [0]
                Left = 39
                Align = alNone
                Visible = False
              end
              inherited pnlTreeNodeName: TPanel [1]
                Width = 294
                DesignSize = (
                  294
                  22)
                inherited edtTreeNodeName: TDBEdit
                  Width = 293
                end
              end
              inherited pnlRightButtons: TPanel
                Left = 294
              end
            end
          end
        end
      end
      object gbStage: TGroupBox
        Left = 447
        Top = 0
        Width = 471
        Height = 97
        Caption = ' '#1047#1072#1076#1072#1076#1077#1085' ID '#1045#1090#1072#1087' '
        TabOrder = 1
        DesignSize = (
          471
          97)
        object lblSMVSType: TLabel
          Left = 327
          Top = 74
          Width = 19
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1042#1080#1076
          FocusControl = cbSMVSType
        end
        object lblApproveCycleNo: TLabel
          Left = 110
          Top = 74
          Width = 16
          Height = 13
          Caption = #1062#1059
        end
        object gbDept: TGroupBox
          Left = 8
          Top = 13
          Width = 344
          Height = 55
          Caption = ' ID '#1045#1090#1072#1087' '
          TabOrder = 0
          object lblStageNo: TLabel
            Left = 8
            Top = 12
            Width = 11
            Height = 13
            Caption = #8470
          end
          object lblDept: TLabel
            Left = 72
            Top = 12
            Width = 59
            Height = 13
            Caption = 'ID '#1045#1090#1058#1055
          end
          object edtStageNo: TDBEdit
            Left = 8
            Top = 26
            Width = 24
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'SPEC_LINE_STAGE_NO'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 0
          end
          object pnlDocs: TToolBar
            Left = 32
            Top = 26
            Width = 37
            Height = 22
            Align = alNone
            AutoSize = True
            ButtonWidth = 24
            Images = dmMain.ilActions
            TabOrder = 1
            object btnDocs: TSpeedButton
              Left = 0
              Top = 0
              Width = 37
              Height = 22
              Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1077#1090#1072#1087#1072
              Flat = True
              Glyph.Data = {
                760B0000424D760F00000000000036080000280000001D000000100000000100
                2000000000004007000000000000000000000001000000000000000000000000
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
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF000060A0000060A0000060A0000060A0000060
                A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF000000
                0000000000000000000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF0000FFFF0000FFFF000060A0000060A000000000000000
                0000000000000060A0000060A0000060A000FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000FF
                FF000060A0000060A00000FFFF0000000000000000000000000000FFFF0000FF
                FF000060A0000060A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF0000FFFF0000FFFF000060A0000060A00000FFFF0000FF
                FF000000000000000000000000000060A00000FFFF0000FFFF000060A0000060
                A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF
                FF0000FFFF000060A0000060A00000FFFF000060A00000000000000000000000
                00000060A0000060A00000FFFF0000FFFF000060A0000060A000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF000060A00000FF
                FF0000FFFF000060A00000000000000000000000000000FFFF000060A0000060
                A00000FFFF0000FFFF000060A000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
                FF00FF00FF0000FFFF0000FFFF000060A00000FFFF0000FFFF000060A0000000
                0000000000000000000000FFFF0000FFFF000060A00000FFFF0000FFFF000060
                A0000060A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00000000000000000000000000FF00FF0000FFFF0000FF
                FF000060A0000060A00000000000000000000000000000000000000000000060
                A00000FFFF000060A00000FFFF0000FFFF000060A0000060A000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
                000000000000000000000000000000FFFF0000FFFF0000FFFF000060A00000FF
                FF0000FFFF000060A0000060A0000060A00000FFFF0000FFFF000060A00000FF
                FF0000FFFF000060A0000060A000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0000FFFF0000FFFF000060A0000060A00000FFFF0000FFFF0000FF
                FF0000FFFF0000FFFF000060A0000060A00000FFFF0000FFFF000060A000FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000FF
                FF0000FFFF000060A0000060A0000000000000000000000000000060A0000060
                A00000FFFF0000FFFF000060A0000060A000FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF0000FFFF000060
                A0000000000000000000000000000060A0000060A00000FFFF0000FFFF000060
                A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF0000FFFF0000FFFF0000FFFF000060A000000000000060
                A00000FFFF0000FFFF0000FFFF000060A0000060A000FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000060
                A0000060A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF000060A0000060A0000060A0000060A000FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              ParentShowHint = False
              ShowHint = True
              Transparent = False
              OnClick = btnDocsClick
            end
          end
          inline frDept: TfrDeptFieldEditFrameBald
            Left = 72
            Top = 26
            Width = 264
            Height = 22
            HorzScrollBar.Visible = False
            VertScrollBar.Visible = False
            Constraints.MaxHeight = 22
            Constraints.MinHeight = 22
            TabOrder = 2
            TabStop = True
            DesignSize = (
              264
              22)
            inherited gbTreeNode: TGroupBox
              Width = 280
              DesignSize = (
                280
                49)
              inherited pnlTreeNode: TPanel
                Width = 264
                inherited pnlTreeNodeName: TPanel
                  Width = 117
                  DesignSize = (
                    117
                    22)
                  inherited edtTreeNodeName: TDBEdit
                    Width = 116
                  end
                end
                inherited pnlTreeNodeNo: TPanel
                  Left = 117
                end
                inherited pnlRightButtons: TPanel
                  Left = 228
                end
              end
            end
          end
        end
        object gbWorkdaysFor: TGroupBox
          Left = 358
          Top = 13
          Width = 106
          Height = 55
          Anchors = [akTop, akRight]
          Caption = ' '#1042#1088#1077#1084#1077' ('#1088#1072#1073'.'#1076#1085#1080') '
          TabOrder = 1
          object lblTreatmentWorkdays: TLabel
            Left = 8
            Top = 12
            Width = 42
            Height = 13
            Caption = #1048#1079#1087#1098#1083#1085'.'
            FocusControl = edtTreatmentWorkdays
          end
          object lblOutgoingWorkdays: TLabel
            Left = 56
            Top = 12
            Width = 31
            Height = 13
            Caption = #1048#1079#1093#1086#1076
            FocusControl = edtOutgoingWorkdays
          end
          object edtTreatmentWorkdays: TDBEdit
            Left = 8
            Top = 26
            Width = 41
            Height = 21
            Color = clBtnFace
            DataField = 'TREATMENT_WORKDAYS'
            DataSource = dsData
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object edtOutgoingWorkdays: TDBEdit
            Left = 56
            Top = 26
            Width = 41
            Height = 21
            Color = clBtnFace
            DataField = 'OUTGOING_WORKDAYS'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 1
          end
        end
        object chbIsAutoMovment: TAbmesDBCheckBox
          Left = 8
          Top = 73
          Width = 97
          Height = 17
          Hint = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1085#1086' '#1076#1074#1080#1078#1077#1085#1080#1077
          Caption = #1040#1074#1090'. '#1076#1074#1080#1078#1077#1085#1080#1077
          DataField = 'IS_AUTO_MOVEMENT'
          DataSource = dsData
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object cbSMVSType: TJvDBLookupCombo
          Left = 351
          Top = 71
          Width = 113
          Height = 21
          DropDownCount = 5
          DeleteKeyClear = False
          Color = clBtnFace
          DataField = '_SMVS_TYPE_NAME'
          DataSource = dsData
          Anchors = [akTop, akRight]
          ReadOnly = True
          TabOrder = 5
        end
        object pnlExternalWorkPrice: TPanel
          Left = 168
          Top = 71
          Width = 153
          Height = 23
          BevelOuter = bvNone
          TabOrder = 4
          DesignSize = (
            153
            23)
          object lblExternalWorkPrice: TLabel
            Left = 7
            Top = 3
            Width = 21
            Height = 13
            Caption = #1042#1057'4'
          end
          object lblExternalWorkPriceCurrency: TLabel
            Left = 90
            Top = 3
            Width = 21
            Height = 13
            Caption = '%s /'
          end
          object txtDetailTechMeasureAbbrev2: TDBText
            Left = 122
            Top = 3
            Width = 31
            Height = 17
            Anchors = [akTop, akRight]
            DataField = '_DETAIL_TECH_MEASURE_ABBREV'
            DataSource = dsLines
          end
          object edtExternalWorkPrice: TDBEdit
            Left = 32
            Top = 0
            Width = 56
            Height = 21
            Color = clBtnFace
            DataField = 'EXTERNAL_WORK_PRICE'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 0
          end
        end
        object edtApproveCycleNo: TDBEdit
          Left = 128
          Top = 71
          Width = 28
          Height = 21
          Color = clBtnFace
          DataField = '_SHOW_APPROVE_CYCLE_NO'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 3
        end
      end
      object gbPrices: TGroupBox
        Left = 0
        Top = 100
        Width = 409
        Height = 46
        Caption = ' '#1042#1083#1086#1078#1077#1085#1072' '#1057#1090#1086#1081#1085#1086#1089#1090' '
        TabOrder = 2
        object lblInvestedValueType: TLabel
          Left = 137
          Top = 19
          Width = 19
          Height = 13
          Caption = #1058#1080#1087
          FocusControl = edtInvestedValueType
        end
        object lblInvestedValueResultProductTechQuantity: TLabel
          Left = 8
          Top = 19
          Width = 43
          Height = 13
          Caption = #1055#1072#1088#1090#1080#1076#1072
          FocusControl = edtInvestedValueResultProductTechQuantity
        end
        object txtSpecProductTechMeasureAbbrev: TDBText
          Left = 101
          Top = 19
          Width = 30
          Height = 13
          DataField = '_TECH_MEASURE_ABBREV'
          DataSource = dsModel
        end
        object lblInvestedValueDate: TLabel
          Left = 280
          Top = 19
          Width = 48
          Height = 13
          Caption = #1050#1098#1084' '#1076#1072#1090#1072
        end
        object edtInvestedValueType: TEdit
          Left = 160
          Top = 16
          Width = 109
          Height = 21
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 1
        end
        object edtInvestedValueResultProductTechQuantity: TJvEdit
          Left = 56
          Top = 16
          Width = 41
          Height = 21
          Alignment = taRightJustify
          ClipboardCommands = [caCopy]
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 0
        end
        object edtInvestedValuesDate: TJvEdit
          Left = 335
          Top = 16
          Width = 65
          Height = 21
          ClipboardCommands = [caCopy]
          Color = 14276044
          ReadOnly = True
          TabOrder = 2
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 200
    Top = 280
  end
  inherited cdsGridData: TAbmesClientDataSet
    Left = 168
    Top = 280
  end
  inherited alActions: TActionList
    Left = 288
    Top = 248
    inherited actForm: TAction
      Caption = #1048#1085#1078#1054#1088#1057#1040#1085' '#1074' '#1047#1072#1076#1072#1076#1077#1085' '#1056#1077#1076' '#1086#1090' '#1054#1087#1077#1088#1072#1094#1080#1080' '#1074' ID '#1045#1090#1072#1087
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 168
    Top = 312
  end
  inherited dsGridDataParams: TDataSource
    Left = 200
    Top = 312
  end
  inherited dsData: TDataSource
    Left = 200
    Top = 248
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 168
    Top = 248
  end
  object dsLines: TDataSource
    Left = 96
    Top = 8
  end
  object dsModel: TDataSource
    Left = 80
    Top = 136
  end
end
