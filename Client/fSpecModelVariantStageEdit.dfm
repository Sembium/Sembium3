inherited fmSpecModelVariantStageEdit: TfmSpecModelVariantStageEdit
  Left = 254
  Top = 175
  ActiveControl = frDept.edtTreeNodeNo
  Caption = 'ID '#1045#1090#1072#1087' - %s'
  ClientHeight = 492
  ClientWidth = 953
  DesignSize = (
    953
    492)
  PixelsPerInch = 96
  TextHeight = 13
  object bvlMain: TBevel [0]
    Left = 8
    Top = 8
    Width = 937
    Height = 441
    Anchors = [akLeft, akTop, akRight, akBottom]
    Shape = bsFrame
  end
  object bvlOperations: TBevel [1]
    Left = 16
    Top = 120
    Width = 921
    Height = 321
    Anchors = [akLeft, akTop, akRight, akBottom]
    Shape = bsFrame
  end
  inherited pnlBottomButtons: TPanel
    Top = 457
    Width = 953
    TabOrder = 4
    inherited pnlOKCancel: TPanel
      Left = 685
      TabOrder = 2
    end
    inherited pnlClose: TPanel
      Left = 596
      TabOrder = 1
    end
    inherited pnlApply: TPanel
      Left = 864
      TabOrder = 3
      Visible = False
    end
    object btnBaseGroups: TBitBtn
      Left = 10
      Top = 2
      Width = 121
      Height = 25
      Action = actBaseGroups
      Caption = #1041#1072#1079#1086#1074#1080' '#1043#1088#1091#1087#1080'...'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00000000000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00000000000000000000000000FFFFFF0000000000FFFFFF00000000000000
        00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
        000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
        000000000000000000000000000000000000FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
        000000000000000000000000000000000000FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
        000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF000000000000000000000000000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
        0000FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF0000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF0000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF0000000000FFFF
        FF0000000000FFFFFF0000000000000000000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
        FF0000000000000000000000000000000000000000000000000000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Spacing = -1
      TabOrder = 0
    end
  end
  inherited pnlMain: TPanel
    Left = 24
    Top = 130
    Width = 905
    Height = 303
    Align = alNone
    Anchors = [akLeft, akTop, akBottom]
    BorderWidth = 0
    TabOrder = 3
    inherited pnlGrid: TPanel
      Left = 0
      Top = 0
      Width = 905
      Height = 303
      Align = alNone
      Anchors = [akLeft, akTop, akBottom]
      DesignSize = (
        905
        303)
      object grdHeader: TAbmesDBGrid [0]
        Left = 0
        Top = 24
        Width = 905
        Height = 53
        TabStop = False
        Anchors = [akLeft, akTop, akRight]
        DataGrouping.GroupLevels = <>
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'Microsoft Sans Serif'
        FooterFont.Style = []
        RowDetailPanel.Color = clBtnFace
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Microsoft Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VertScrollBar.VisibleMode = sbNeverShowEh
        VTitleMargin = 11
        OnEnter = grdHeaderEnter
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
            FieldName = 'SETUP_HOUR_PRICE'
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
            Title.Caption = #1040#1074#1090'.'#1086#1090#1095'.'
            Title.Hint = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1085#1086' '#1086#1090#1095#1080#1090#1072#1085#1077
            Title.Orientation = tohVertical
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
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      inherited pnlNavigator: TPanel
        Width = 905
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
        object tlbDocs1: TToolBar
          Left = 248
          Top = 0
          Width = 280
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 37
          Images = dmMain.ilDocs
          TabOrder = 3
          object sepOperationDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepOperationDoc'
            Style = tbsSeparator
          end
          object lblOperationDoc: TLabel
            Left = 8
            Top = 0
            Width = 56
            Height = 24
            AutoSize = False
            Caption = ' '#1054#1087#1077#1088#1072#1094#1080#1103' '
            Layout = tlCenter
          end
          object btnOperationDoc: TToolButton
            Left = 64
            Top = 0
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1052#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1072#1090#1072' '#1054#1087#1077#1088#1072#1094#1080#1103
            Caption = 'btnOperationDoc'
            ImageIndex = 1
            OnClick = btnOperationDocClick
          end
          object sepBeforeProgramToolDoc: TToolButton
            Left = 101
            Top = 0
            Width = 8
            Caption = 'sepBeforeProgramToolDoc'
            ImageIndex = 2
            Style = tbsSeparator
          end
          object lblProgramToolDoc: TLabel
            Left = 109
            Top = 0
            Width = 29
            Height = 24
            AutoSize = False
            Caption = ' '#1055#1054#1045' '
            Layout = tlCenter
          end
          object btnProgramToolDoc: TToolButton
            Left = 138
            Top = 0
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1052#1048#1048#1054' '#1085#1072' '#1055#1054#1045' '#1079#1072' '#1080#1079#1073#1088#1072#1085#1072#1090#1072' '#1054#1087#1077#1088#1072#1094#1080#1103
            Caption = 'btnProgramToolDoc'
            ImageIndex = 1
            OnClick = btnProgramToolDocClick
          end
          object tlbProgramToolSpecDocStatus: TToolBar
            Left = 175
            Top = 0
            Width = 24
            Height = 24
            Align = alLeft
            AutoSize = True
            ButtonHeight = 24
            ButtonWidth = 24
            Caption = 'tlbDocs2'
            Images = dmMain.ilActions
            TabOrder = 0
            object btnProgramToolSpecDocStatus: TToolButton
              Left = 0
              Top = 0
              Action = actProgramToolSpecDocStatus
            end
          end
          object sepBeforeSpecificToolDoc: TToolButton
            Left = 199
            Top = 0
            Width = 8
            Caption = 'sepBeforeSpecificToolDoc'
            ImageIndex = 2
            Style = tbsSeparator
          end
          object lblSpecificToolDoc: TLabel
            Left = 207
            Top = 0
            Width = 36
            Height = 24
            AutoSize = False
            Caption = ' '#1050#1054#1087#1056' '
            Layout = tlCenter
          end
          object btnSpecificToolDoc: TToolButton
            Left = 243
            Top = 0
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1052#1048#1048#1054' '#1085#1072' '#1050#1054#1087#1056' '#1079#1072' '#1080#1079#1073#1088#1072#1085#1072#1090#1072' '#1054#1087#1077#1088#1072#1094#1080#1103
            Caption = 'btnSpecificToolDoc'
            ImageIndex = 1
            OnClick = btnSpecificToolDocClick
          end
        end
        object tlbSpecificToolSpecDocStatus: TToolBar
          Left = 528
          Top = 0
          Width = 24
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Caption = 'tlbSpecificToolSpecDocStatus'
          Images = dmMain.ilActions
          TabOrder = 4
          object btnSpecificToolSpecDocStatus: TToolButton
            Left = 0
            Top = 0
            Action = actSpecificToolSpecDocStatus
          end
        end
        object tlbDocs3: TToolBar
          Left = 552
          Top = 0
          Width = 81
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 37
          Images = dmMain.ilDocs
          TabOrder = 5
          object sepBeforeTypicalToolDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepBeforeTypicalToolDoc'
            Style = tbsSeparator
          end
          object lblTypicalToolDoc: TLabel
            Left = 8
            Top = 0
            Width = 36
            Height = 24
            AutoSize = False
            Caption = ' '#1050#1054#1087#1053' '
            Layout = tlCenter
          end
          object btnTypicalToolDoc: TToolButton
            Left = 44
            Top = 0
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1052#1048#1048#1054' '#1085#1072' '#1050#1054#1087#1053' '#1079#1072' '#1080#1079#1073#1088#1072#1085#1072#1090#1072' '#1054#1087#1077#1088#1072#1094#1080#1103
            Caption = 'btnTypicalToolDoc'
            ImageIndex = 1
            OnClick = btnTypicalToolDocClick
          end
        end
        object tlbTypicalToolSpecDocStatus: TToolBar
          Left = 633
          Top = 0
          Width = 24
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Caption = 'tlbDocs2'
          Images = dmMain.ilActions
          TabOrder = 6
          object btnTypicalToolSpecDocStatus: TToolButton
            Left = 0
            Top = 0
            Action = actTypicalToolSpecDocStatus
          end
        end
      end
      inherited pnlDataButtons: TPanel
        Top = 270
        Width = 905
        object btnMoveUpOperation: TSpeedButton [0]
          Left = 462
          Top = 8
          Width = 28
          Height = 13
          Action = actMoveUpOperation
          Glyph.Data = {
            96040000424D960400000000000036040000280000000B000000080000000100
            08000000000060000000120B0000120B00000001000000000000000000000000
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
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707000000
            00000707070007070700F0F0F0000707070000000000F0F0F000000000000700
            F0F0F0F0F0F0F0000700070700F0F0F0F0F00007070007070700F0F0F0000707
            07000707070700F0000707070700070707070700070707070700}
          Layout = blGlyphBottom
        end
        object btnMoveDownOperation: TSpeedButton [1]
          Left = 462
          Top = 21
          Width = 28
          Height = 12
          Action = actMoveDownOperation
          Glyph.Data = {
            96040000424D960400000000000036040000280000000B000000080000000100
            0800000000006000000000000000000000000001000000000000000000000000
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
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070700
            0707070707000707070700F000070707070007070700F0F0F000070707000707
            00F0F0F0F0F0000707000700F0F0F0F0F0F0F000070000000000F0F0F0000000
            000007070700F0F0F00007070700070707000000000007070700}
        end
        inherited btnAddData: TBitBtn
          Width = 145
          Caption = #1047#1072#1076#1072#1074#1072#1085#1077' '#1085#1072' ID '#1054#1087'...'
        end
        inherited btnDeleteData: TBitBtn
          Left = 154
          Width = 145
          Caption = #1048#1079#1090#1088#1080#1074#1072#1085#1077' '#1085#1072' ID '#1054#1087'...'
        end
        inherited btnEditData: TBitBtn
          Left = 308
          Width = 145
          Caption = #1055#1088#1086#1084#1103#1085#1072' '#1085#1072' ID '#1054#1087'...'
        end
        object pnlPrintOperationsButton: TPanel
          Left = 815
          Top = 0
          Width = 90
          Height = 33
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 4
          object btnPrintOperations: TBitBtn
            Left = 8
            Top = 8
            Width = 81
            Height = 25
            Action = actPrintOperations
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
        object btnOperationsInvestedValues: TBitBtn
          Left = 544
          Top = 8
          Width = 81
          Height = 25
          Action = actOperationsInvestedValues
          Caption = #1048#1085#1078#1054#1088#1057#1040#1085'...'
          TabOrder = 3
        end
      end
      inherited grdData: TAbmesDBGrid
        Top = 76
        Width = 905
        Height = 194
        Align = alNone
        Anchors = [akLeft, akTop, akBottom]
        HorzScrollBar.Visible = False
        Options = [dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        RowPanel.Active = True
        VTitleMargin = 11
        OnGetCellParams = grdDataGetCellParams
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
            FieldName = 'SETUP_HOUR_PRICE'
            Footers = <>
            Title.Caption = #1042#1045#1062' / '#1095#1072#1089
            Width = 49
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'HOUR_PRICE'
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
  object pnlOperationsCaption: TPanel [4]
    Left = 25
    Top = 114
    Width = 151
    Height = 13
    BevelOuter = bvNone
    Caption = #1047#1072#1076#1072#1076#1077#1085' '#1056#1077#1076' '#1086#1090' ID '#1054#1087#1077#1088#1072#1094#1080#1080
    ParentBackground = False
    TabOrder = 2
  end
  object gbDetail: TGroupBox [5]
    Left = 16
    Top = 16
    Width = 443
    Height = 97
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    DesignSize = (
      443
      97)
    object txtDetailTechMeasureAbbrev: TDBText
      Left = 412
      Top = 27
      Width = 26
      Height = 17
      Anchors = [akTop, akRight]
      DataField = '_DETAIL_TECH_MEASURE_ABBREV'
      DataSource = dsLines
    end
    object txtProductTechMeasureAbbrev: TDBText
      Left = 412
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
      Left = 365
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
      Left = 365
      Top = 50
      Width = 45
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1057#1090#1088'. '#1082'-'#1074#1086
    end
    object edtDetailTechQuantity: TDBEdit
      Left = 365
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
      Left = 365
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
      Width = 355
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Anchors = [akLeft, akTop, akRight]
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 0
      TabStop = True
      DesignSize = (
        355
        22)
      inherited gbTreeNode: TGroupBox
        Width = 371
        DesignSize = (
          371
          49)
        inherited pnlTreeNode: TPanel
          Width = 355
          inherited pnlTreeNodeNo: TPanel [0]
            Left = 39
            Align = alNone
            Visible = False
          end
          inherited pnlRightButtons: TPanel [1]
            Left = 296
          end
          inherited pnlTreeNodeName: TPanel [2]
            Width = 296
            DesignSize = (
              296
              22)
            inherited edtTreeNodeName: TDBEdit
              Width = 295
            end
          end
        end
      end
    end
    inline frProduct: TfrProductFieldEditFrameBald
      Left = 8
      Top = 64
      Width = 355
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Anchors = [akLeft, akTop, akRight]
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 2
      TabStop = True
      DesignSize = (
        355
        22)
      inherited gbTreeNode: TGroupBox
        Width = 371
        DesignSize = (
          371
          49)
        inherited pnlTreeNode: TPanel
          Width = 355
          inherited pnlTreeNodeNo: TPanel [0]
            Left = 39
            Align = alNone
            Visible = False
          end
          inherited pnlTreeNodeName: TPanel [1]
            Width = 296
            DesignSize = (
              296
              22)
            inherited edtTreeNodeName: TDBEdit
              Width = 295
            end
          end
          inherited pnlRightButtons: TPanel
            Left = 296
          end
        end
      end
    end
  end
  object gbStage: TGroupBox [6]
    Left = 466
    Top = 16
    Width = 471
    Height = 97
    Anchors = [akTop, akRight]
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
        DataField = 'TREATMENT_WORKDAYS'
        DataSource = dsData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object edtOutgoingWorkdays: TDBEdit
        Left = 56
        Top = 26
        Width = 41
        Height = 21
        DataField = 'OUTGOING_WORKDAYS'
        DataSource = dsData
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
      Visible = False
    end
    object cbSMVSType: TJvDBLookupCombo
      Left = 351
      Top = 71
      Width = 113
      Height = 21
      DropDownCount = 5
      DeleteKeyClear = False
      DataField = '_SMVS_TYPE_NAME'
      DataSource = dsData
      Anchors = [akTop, akRight]
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
        DataField = 'EXTERNAL_WORK_PRICE'
        DataSource = dsData
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
  inherited dsData: TDataSource [7]
    Top = 264
  end
  inherited cdsData: TAbmesClientDataSet [8]
    Top = 264
  end
  inherited dsGridData: TDataSource [9]
    Top = 296
  end
  inherited cdsGridData: TAbmesClientDataSet [10]
    Top = 296
  end
  inherited alActions: TActionList [11]
    Left = 208
    Top = 240
    inherited actForm: TAction
      Caption = 'ID '#1045#1090#1072#1087' - %s'
    end
    inherited actInsertRecord: TAction
      Caption = #1047#1072#1076#1072#1074#1072#1085#1077' '#1085#1072' ID '#1054#1087'...'
      Hint = #1047#1072#1076#1072#1074#1072#1085#1077' '#1085#1072' ID '#1054#1087
    end
    inherited actDelRecord: TAction
      Caption = #1048#1079#1090#1088#1080#1074#1072#1085#1077' '#1085#1072' ID '#1054#1087'...'
      Hint = #1048#1079#1090#1088#1080#1074#1072#1085#1077' '#1085#1072' ID '#1054#1087
    end
    inherited actEditRecord: TAction
      Caption = #1055#1088#1086#1084#1103#1085#1072' '#1085#1072' ID '#1054#1087'...'
      Hint = #1055#1088#1086#1084#1103#1085#1072' '#1085#1072' ID '#1054#1087
    end
    object actMoveUpOperation: TAction
      Hint = #1055#1088#1077#1084#1077#1089#1090#1080' '#1085#1072#1075#1086#1088#1077
      OnExecute = actMoveUpOperationExecute
      OnUpdate = actMoveUpOperationUpdate
    end
    object actMoveDownOperation: TAction
      Hint = #1055#1088#1077#1084#1077#1089#1090#1080' '#1085#1072#1076#1086#1083#1091
      OnExecute = actMoveDownOperationExecute
      OnUpdate = actMoveDownOperationUpdate
    end
    object actAddOperation: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1086#1087#1077#1088#1072#1094#1080#1103'...'
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1086#1087#1077#1088#1072#1094#1080#1103
      OnExecute = actAddOperationExecute
      OnUpdate = actAddOperationUpdate
    end
    object actInsertOperation: TAction
      Caption = #1042#1084#1098#1082#1074#1072#1085#1077' '#1085#1072' '#1086#1087#1077#1088#1072#1094#1080#1103'...'
      Hint = #1042#1084#1098#1082#1074#1072#1085#1077' '#1085#1072' '#1086#1087#1077#1088#1072#1094#1080#1103
      OnExecute = actInsertOperationExecute
      OnUpdate = actInsertOperationUpdate
    end
    object actAddOperationVariant: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1074#1072#1088#1080#1072#1085#1090' '#1085#1072' '#1086#1087#1077#1088#1072#1094#1080#1103'...'
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1074#1072#1088#1080#1072#1085#1090' '#1085#1072' '#1086#1087#1077#1088#1072#1094#1080#1103
      OnExecute = actAddOperationVariantExecute
      OnUpdate = actAddOperationVariantUpdate
    end
    object actAddOperationVariantLike: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1074#1072#1088#1080#1072#1085#1090' '#1085#1072' '#1086#1087#1077#1088#1072#1094#1080#1103' '#1082#1072#1090#1086'...'
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1074#1072#1088#1080#1072#1085#1090' '#1085#1072' '#1086#1087#1077#1088#1072#1094#1080#1103' '#1082#1072#1090#1086' '#1090#1077#1082#1091#1097#1080#1103
      OnExecute = actAddOperationVariantLikeExecute
      OnUpdate = actAddOperationVariantUpdate
    end
    object actInsertOperationVariant: TAction
      Caption = #1042#1084#1098#1082#1074#1072#1085#1077' '#1085#1072' '#1074#1072#1088#1080#1072#1085#1090' '#1085#1072' '#1086#1087#1077#1088#1072#1094#1080#1103'...'
      Hint = #1042#1084#1098#1082#1074#1072#1085#1077' '#1085#1072' '#1074#1072#1088#1080#1072#1085#1090' '#1085#1072' '#1086#1087#1077#1088#1072#1094#1080#1103
      OnExecute = actInsertOperationVariantExecute
      OnUpdate = actInsertOperationVariantUpdate
    end
    object actAddBeginOperation: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1085#1072#1095#1072#1083#1085#1072' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1072' '#1086#1087#1077#1088#1072#1094#1080#1103'...'
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1085#1072#1095#1072#1083#1085#1072' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1072' '#1086#1087#1077#1088#1072#1094#1080#1103
      OnExecute = actAddBeginOperationExecute
      OnUpdate = actAddBeginOperationUpdate
    end
    object actAddEndOperation: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1082#1088#1072#1081#1085#1072' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1072' '#1086#1087#1077#1088#1072#1094#1080#1103'...'
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1082#1088#1072#1081#1085#1072' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1072' '#1086#1087#1077#1088#1072#1094#1080#1103
      OnExecute = actAddEndOperationExecute
      OnUpdate = actAddEndOperationUpdate
    end
    object actPrintOperations: TAction
      Caption = #1055#1077#1095#1072#1090
      ImageIndex = 2
      OnExecute = actPrintOperationsExecute
      OnUpdate = actPrintOperationsUpdate
    end
    object actBaseGroups: TAction
      Caption = #1041#1072#1079#1086#1074#1080' '#1043#1088#1091#1087#1080'...'
      ImageIndex = 47
      OnExecute = actBaseGroupsExecute
    end
    object actProgramToolSpecDocStatus: TAction
      Hint = #1057#1090#1088#1091#1082#1090#1091#1088#1085#1080' '#1080' '#1052#1072#1088#1096#1088#1091#1090#1085#1080' '#1052#1048#1048#1054
      ImageIndex = 113
      OnExecute = actProgramToolSpecDocStatusExecute
      OnUpdate = actProgramToolSpecDocStatusUpdate
    end
    object actSpecificToolSpecDocStatus: TAction
      Hint = #1057#1090#1088#1091#1082#1090#1091#1088#1085#1080' '#1080' '#1052#1072#1088#1096#1088#1091#1090#1085#1080' '#1052#1048#1048#1054
      ImageIndex = 113
      OnExecute = actSpecificToolSpecDocStatusExecute
      OnUpdate = actSpecificToolSpecDocStatusUpdate
    end
    object actTypicalToolSpecDocStatus: TAction
      Hint = #1057#1090#1088#1091#1082#1090#1091#1088#1085#1080' '#1080' '#1052#1072#1088#1096#1088#1091#1090#1085#1080' '#1052#1048#1048#1054
      ImageIndex = 113
      OnExecute = actTypicalToolSpecDocStatusExecute
      OnUpdate = actTypicalToolSpecDocStatusUpdate
    end
    object actOperationsInvestedValues: TAction
      Caption = #1048#1085#1078#1054#1088#1057#1040#1085'...'
      OnExecute = actOperationsInvestedValuesExecute
    end
  end
  inherited pdsGridDataParams: TParamDataSet [12]
    Top = 328
  end
  inherited pmInsertMenu: TPopupMenu [13]
  end
  inherited dsGridDataParams: TDataSource [14]
    Left = 136
    Top = 272
  end
  object dsLines: TDataSource
    Left = 96
    Top = 8
  end
  object pmAdd: TPopupMenu
    Left = 80
    Top = 360
    object miAddOperation: TMenuItem
      Action = actAddOperation
    end
    object miInsertOperation: TMenuItem
      Action = actInsertOperation
    end
    object mlAddOperationVariant: TMenuItem
      Caption = '-'
    end
    object miAddOperationVariant: TMenuItem
      Action = actAddOperationVariant
    end
    object miAddOperationVariantLike: TMenuItem
      Action = actAddOperationVariantLike
    end
    object miInsertOperationVariant: TMenuItem
      Action = actInsertOperationVariant
    end
    object mlAddBeginOperation: TMenuItem
      Caption = '-'
    end
    object miAddBeginOperation: TMenuItem
      Action = actAddBeginOperation
    end
    object miAddEndOperation: TMenuItem
      Action = actAddEndOperation
    end
  end
  object cdsBaseGroupsParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 112
    Top = 427
    object cdsBaseGroupsParamsGROUP_DEPT_CODE: TAbmesFloatField
      FieldName = 'GROUP_DEPT_CODE'
    end
    object cdsBaseGroupsParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      FieldName = 'CHOSEN_PRODUCTS'
      Size = 4000
    end
  end
  object cdsOperationsInvestedValues: TAbmesClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    Left = 536
    Top = 424
    object cdsOperationsInvestedValuesOPERATION_NO: TAbmesFloatField
      FieldName = 'OPERATION_NO'
    end
    object cdsOperationsInvestedValuesOPERATION_VARIANT_NO: TAbmesFloatField
      FieldName = 'OPERATION_VARIANT_NO'
    end
    object cdsOperationsInvestedValues_SHOW_NO: TAbmesWideStringField
      FieldName = '_SHOW_NO'
      Size = 5
    end
    object cdsOperationsInvestedValuesDEPT_NAME: TAbmesWideStringField
      DisplayLabel = 'ID '#1054#1087#1058#1055
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsOperationsInvestedValuesDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object cdsOperationsInvestedValuesDEPT_HOUR_PRICE: TAbmesFloatField
      FieldName = 'DEPT_HOUR_PRICE'
      DisplayFormat = ',0.##'
    end
    object cdsOperationsInvestedValues_SETUP_PROFESSION_NAME: TAbmesWideStringField
      FieldName = '_SETUP_PROFESSION_NAME'
      Size = 100
    end
    object cdsOperationsInvestedValuesSETUP_HOUR_PRICE: TAbmesFloatField
      FieldName = 'SETUP_HOUR_PRICE'
      DisplayFormat = ',0.##'
    end
    object cdsOperationsInvestedValues_PROFESSION_NAME: TAbmesWideStringField
      FieldName = '_PROFESSION_NAME'
      Size = 100
    end
    object cdsOperationsInvestedValuesHOUR_PRICE: TAbmesFloatField
      FieldName = 'HOUR_PRICE'
      DisplayFormat = ',0.##'
    end
    object cdsOperationsInvestedValuesSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'SETUP_HOUR_TECH_QUANTITY'
      DisplayFormat = ',0.###'
    end
    object cdsOperationsInvestedValuesHOUR_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'HOUR_TECH_QUANTITY'
      DisplayFormat = ',0.###'
    end
    object cdsOperationsInvestedValuesSETUP_INVESTED_VALUE: TAbmesFloatField
      FieldName = 'SETUP_INVESTED_VALUE'
      DisplayFormat = ',0.00'
    end
    object cdsOperationsInvestedValuesSETUP_INVESTED_VALUE_II: TAbmesFloatField
      FieldName = 'SETUP_INVESTED_VALUE_II'
      FieldValueType = fvtBoolean
    end
    object cdsOperationsInvestedValuesINVESTED_VALUE: TAbmesFloatField
      FieldName = 'INVESTED_VALUE'
      DisplayFormat = ',0.00'
    end
    object cdsOperationsInvestedValuesINVESTED_VALUE_II: TAbmesFloatField
      FieldName = 'INVESTED_VALUE_II'
      FieldValueType = fvtBoolean
    end
    object cdsOperationsInvestedValuesTOTAL_INVESTED_VALUE: TAbmesFloatField
      FieldName = 'TOTAL_INVESTED_VALUE'
      DisplayFormat = ',0.00'
    end
    object cdsOperationsInvestedValuesTOTAL_INVESTED_VALUE_II: TAbmesFloatField
      FieldName = 'TOTAL_INVESTED_VALUE_II'
      FieldValueType = fvtBoolean
    end
    object cdsOperationsInvestedValuesIS_ACTIVE: TAbmesFloatField
      FieldName = 'IS_ACTIVE'
      FieldValueType = fvtBoolean
    end
    object cdsOperationsInvestedValues_TOTAL_SETUP_INVESTED_VALUE: TAggregateField
      FieldName = '_TOTAL_SETUP_INVESTED_VALUE'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'Sum(SETUP_INVESTED_VALUE * IS_ACTIVE)'
    end
    object cdsOperationsInvestedValues_TOTAL_SETUP_INVESTED_VALUE_II: TAggregateField
      FieldName = '_TOTAL_SETUP_INVESTED_VALUE_II'
      Active = True
      Expression = 'Sum(SETUP_INVESTED_VALUE_II * IS_ACTIVE)'
    end
    object cdsOperationsInvestedValues_TOTAL_INVESTED_VALUE: TAggregateField
      FieldName = '_TOTAL_INVESTED_VALUE'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'Sum(INVESTED_VALUE * IS_ACTIVE)'
    end
    object cdsOperationsInvestedValues_TOTAL_INVESTED_VALUE_II: TAggregateField
      FieldName = '_TOTAL_INVESTED_VALUE_II'
      Active = True
      Expression = 'Sum(INVESTED_VALUE_II * IS_ACTIVE)'
    end
    object cdsOperationsInvestedValues_TOTAL_TOTAL_INVESTED_VALUE: TAggregateField
      FieldName = '_TOTAL_TOTAL_INVESTED_VALUE'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'Sum(TOTAL_INVESTED_VALUE * IS_ACTIVE)'
    end
    object cdsOperationsInvestedValues_TOTAL_TOTAL_INVESTED_VALUE_II: TAggregateField
      FieldName = '_TOTAL_TOTAL_INVESTED_VALUE_II'
      Active = True
      Expression = 'Sum(TOTAL_INVESTED_VALUE_II * IS_ACTIVE)'
    end
  end
end
