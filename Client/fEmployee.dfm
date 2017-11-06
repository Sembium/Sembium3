inherited fmEmployee: TfmEmployee
  Left = 323
  Top = 206
  Caption = #1057#1083#1091#1078#1080#1090#1077#1083' - %s'
  ClientHeight = 511
  ClientWidth = 793
  DesignSize = (
    793
    511)
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 476
    Width = 793
    TabOrder = 4
    inherited pnlOKCancel: TPanel
      Left = 525
      TabOrder = 4
    end
    inherited pnlClose: TPanel
      Left = 436
      TabOrder = 2
    end
    inherited pnlApply: TPanel
      Left = 704
      TabOrder = 3
      Visible = False
    end
    object pnlPrintButton: TPanel
      Left = 347
      Top = 0
      Width = 89
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
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
    object pnlBottomLeftButtons: TPanel
      Left = 0
      Top = 0
      Width = 465
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object btnOccupationsAndEmployees: TBitBtn
        Left = 8
        Top = 2
        Width = 113
        Height = 25
        Action = actOccupationsAndEmployees
        Caption = #1044#1083#1098#1078#1085#1086#1089#1090#1080'...'
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
        TabOrder = 0
      end
      object btnEmployeeDayAbsences: TBitBtn
        Left = 130
        Top = 2
        Width = 159
        Height = 25
        Action = actEmployeeDayAbsences
        Caption = #1062#1077#1083#1086#1076#1085#1077#1074#1085#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103'...'
        TabOrder = 1
      end
      object btnEmployeePresenceDeviation: TBitBtn
        Left = 298
        Top = 2
        Width = 159
        Height = 25
        Action = actEmployeePresenceDeviation
        Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' '#1074' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103'...'
        TabOrder = 2
      end
    end
  end
  object pcMain: TPageControl [1]
    Left = 8
    Top = 176
    Width = 777
    Height = 291
    ActivePage = tsProfessions
    Anchors = [akLeft, akTop, akBottom]
    HotTrack = True
    TabOrder = 3
    object tsProfessions: TTabSheet
      Caption = #1047#1072#1103#1074#1077#1085#1080' '#1057#1087#1086#1089#1086#1073#1085#1086#1089#1090#1080
      inline frProfessions: TDualGridFrame
        Left = 0
        Top = 25
        Width = 769
        Height = 238
        Align = alClient
        TabOrder = 0
        TabStop = True
        inherited pnlIncluded: TPanel
          Width = 361
          Height = 238
          inherited pnlIncludedNavigator: TPanel
            Width = 295
            Align = alNone
            Visible = False
            inherited navIncluded: TDBColorNavigator
              DataSource = nil
              Hints.Strings = ()
            end
          end
          inherited grdIncluded: TAbmesDBGrid
            Top = 0
            Width = 361
            Height = 238
            TitleParams.MultiTitle = True
            TitleParams.VTitleMargin = 5
            Columns = <
              item
                EditButtons = <>
                FieldName = 'PROFESSION_FULL_NO'
                Footers = <>
                Title.Caption = #1047#1072#1103#1074#1077#1085#1080' '#1057#1087#1086#1089#1086#1073#1085#1086#1089#1090#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080'|'#1050#1086#1076
                Width = 54
              end
              item
                Color = 15532031
                EditButtons = <>
                FieldName = 'HAS_DOCUMENTATION'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Courier New'
                Font.Style = [fsBold]
                Footers = <>
                Title.Caption = #1047#1072#1103#1074#1077#1085#1080' '#1057#1087#1086#1089#1086#1073#1085#1086#1089#1090#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080'|'#1048#1048#1054
                Width = 28
              end
              item
                EditButtons = <>
                FieldName = 'PROFESSION_NAME'
                Footers = <>
                Title.Caption = #1047#1072#1103#1074#1077#1085#1080' '#1057#1087#1086#1089#1086#1073#1085#1086#1089#1090#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                Width = 244
              end>
          end
        end
        inherited pnlButtons: TPanel
          Left = 361
          Width = 43
          Height = 238
          DesignSize = (
            43
            238)
          inherited pnlProductButtons: TPanel
            Top = 91
            Width = 43
            inherited btnInclude: TSpeedButton
              Top = 0
              Height = 20
            end
            inherited btnExclude: TSpeedButton
              Top = 24
              Height = 20
            end
            inherited btnIncludeAll: TSpeedButton
              Top = 48
              Height = 20
            end
            inherited btnExcludeAll: TSpeedButton
              Top = 72
              Height = 20
            end
          end
        end
        inherited pnlExcluded: TPanel
          Left = 404
          Width = 365
          Height = 238
          inherited pnlExcludedNavigator: TPanel
            Width = 295
            Align = alNone
            Visible = False
            inherited navExcluded: TDBColorNavigator
              Left = 199
              DataSource = nil
              Hints.Strings = ()
            end
          end
          inherited grdExcluded: TAbmesDBGrid
            Top = 0
            Width = 365
            Height = 238
            TitleParams.MultiTitle = True
            TitleParams.VTitleMargin = 5
            Columns = <
              item
                EditButtons = <>
                FieldName = 'PROFESSION_FULL_NO'
                Footers = <>
                Title.Caption = #1053#1077#1086#1073#1093#1086#1076#1080#1084#1080' '#1079#1072' '#1048#1085#1076#1091#1089#1090#1088#1080#1072#1083#1085#1086#1090#1086' '#1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080'|'#1050#1086#1076
                Width = 54
              end
              item
                Color = 15532031
                EditButtons = <>
                FieldName = 'HAS_DOCUMENTATION'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Courier New'
                Font.Style = [fsBold]
                Footers = <>
                Title.Caption = #1053#1077#1086#1073#1093#1086#1076#1080#1084#1080' '#1079#1072' '#1048#1085#1076#1091#1089#1090#1088#1080#1072#1083#1085#1086#1090#1086' '#1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080'|'#1048#1048#1054
                Width = 28
              end
              item
                EditButtons = <>
                FieldName = 'PROFESSION_NAME'
                Footers = <>
                Title.Caption = 
                  #1053#1077#1086#1073#1093#1086#1076#1080#1084#1080' '#1079#1072' '#1048#1085#1076#1091#1089#1090#1088#1080#1072#1083#1085#1086#1090#1086' '#1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072 +
                  #1085#1080#1077
                Width = 248
              end>
          end
        end
        inherited dsData: TDataSource
          DataSet = cdsEmployeeProfessions
          Left = 56
          Top = 40
        end
        inherited dsExcluded: TDataSource
          DataSet = cdsEmployeeNotProfessions
          Left = 416
          Top = 40
        end
      end
      object pnlProfessionsGridNavigators: TPanel
        Left = 0
        Top = 0
        Width = 769
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object navProfessionsGridData: TDBColorNavigator
          Left = 0
          Top = 0
          Width = 96
          Height = 25
          DataSource = frProfessions.dsData
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alLeft
          Flat = True
          TabOrder = 0
        end
        object navProfessionsOtherGridData: TDBColorNavigator
          Left = 673
          Top = 0
          Width = 96
          Height = 25
          DataSource = frProfessions.dsExcluded
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alRight
          Flat = True
          TabOrder = 1
        end
        object tlbProfessionsDocs: TToolBar
          Left = 96
          Top = 0
          Width = 37
          Height = 25
          Align = alLeft
          AutoSize = True
          ButtonHeight = 25
          ButtonWidth = 24
          Caption = 'tlbTopGridButtons'
          Images = dmMain.ilActions
          TabOrder = 2
          object btnProfessionsDocs: TSpeedButton
            Left = 0
            Top = 0
            Width = 37
            Height = 25
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1052#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1072#1090#1072' '#1055#1088#1086#1094#1077#1089#1085#1072' '#1056#1086#1083#1103
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
            OnClick = btnProfessionsDocsClick
          end
        end
        object tlbProfessionsOtherDataDocs: TToolBar
          Left = 636
          Top = 0
          Width = 37
          Height = 25
          Align = alRight
          AutoSize = True
          ButtonHeight = 25
          ButtonWidth = 24
          Caption = 'tlbTopGridButtons'
          Images = dmMain.ilActions
          TabOrder = 3
          object btnProfessionsOtherDataDocs: TSpeedButton
            Left = 0
            Top = 0
            Width = 37
            Height = 25
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1052#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1072#1090#1072' '#1055#1088#1086#1094#1077#1089#1085#1072' '#1056#1086#1083#1103
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
            OnClick = btnProfessionsOtherDataDocsClick
          end
        end
      end
    end
    object tsDiscplineEvents: TTabSheet
      Caption = #1048#1079#1074#1098#1085#1088#1077#1076#1085#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' '#1074' '#1056#1072#1073#1086#1090#1085#1086' '#1055#1086#1074#1077#1076#1077#1085#1080#1077
      ImageIndex = 1
      inline frEmployeeDisciplineEvents: TfrEmployeeDisciplineEvents
        Left = 0
        Top = 0
        Width = 769
        Height = 263
        Align = alClient
        TabOrder = 0
        TabStop = True
        inherited pnlGrid: TPanel
          Width = 631
          Height = 238
          inherited grdDisciplineEvents: TAbmesDBGrid
            Width = 631
            Height = 238
            Columns = <
              item
                EditButtons = <>
                FieldName = '_STATUS_NAME'
                Footers = <>
                Title.Caption = #1057#1090#1072#1090#1091#1089
                Width = 65
              end
              item
                Color = 16115403
                EditButtons = <>
                FieldName = 'DISCIPLINE_EVENT_DATE'
                Footers = <>
                Width = 62
              end
              item
                EditButtons = <>
                FieldName = 'DISC_EVENT_TYPE_NAME'
                Footers = <>
                Title.Caption = #1042#1080#1076
                Width = 160
              end
              item
                EditButtons = <>
                FieldName = 'RATING'
                Footers = <>
                Title.Caption = #1060#1072#1082#1090'. '#1090#1086#1095#1082#1080
                Width = 70
              end
              item
                EditButtons = <>
                FieldName = 'DISCIPLINE_EVENT_COMMENT'
                Footers = <>
                Width = 237
              end>
          end
        end
        inherited pnlButtons: TPanel
          Left = 631
          Height = 238
          inherited pnlSummary: TPanel
            Height = 238
            DesignSize = (
              113
              238)
            inherited lblTotalNegativeRating: TLabel
              Width = 96
            end
            inherited lblTotalPositiveRating: TLabel
              Width = 99
            end
            inherited bvlSummary: TBevel
              Top = 0
              Height = 240
            end
          end
          inherited pnlEditButtons: TPanel
            Height = 238
          end
        end
        inherited pnlEmployeeDisciplineEventsNavigator: TPanel
          Width = 769
          inherited ToolBar4: TToolBar
            Left = 732
          end
          inherited navEmployeeDisciplineEvents: TDBColorNavigator
            Hints.Strings = ()
          end
          inherited tlbTopButtons: TToolBar
            inherited pnlDateInterval: TPanel
              inherited frDateInterval: TfrDateIntervalFrame
                inherited dsData: TDataSource
                  DataSet = frEmployeeDisciplineEvents.cdsFilter
                end
              end
            end
          end
        end
        inherited cdsGridData: TAbmesClientDataSet
          DataSetField = cdsDataqryEmployeeDisciplineEvents
          FieldDefs = <
            item
              Name = 'EMPLOYEE_CODE'
              DataType = ftFloat
            end
            item
              Name = 'DISCIPLINE_EVENT_CODE'
              DataType = ftFloat
            end
            item
              Name = 'DISC_EVENT_TYPE_CODE'
              DataType = ftFloat
            end
            item
              Name = 'DISCIPLINE_EVENT_STATE_CODE'
              DataType = ftFloat
            end
            item
              Name = 'DISCIPLINE_EVENT_COMMENT'
              DataType = ftWideString
              Size = 100
            end
            item
              Name = 'DISCIPLINE_EVENT_DATE'
              DataType = ftTimeStamp
            end
            item
              Name = 'RATING'
              DataType = ftFloat
            end
            item
              Name = 'IS_NEGATIVE'
              DataType = ftFloat
            end
            item
              Name = 'IS_POSITIVE'
              DataType = ftFloat
            end
            item
              Name = 'IS_ACTIVE'
              DataType = ftFloat
            end
            item
              Name = 'AUTHORIZE_EMPLOYEE_CODE'
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
              Name = 'HAS_DOC_ITEMS'
              DataType = ftFloat
            end
            item
              Name = 'CREATE_EMPLOYEE_CODE'
              DataType = ftFloat
            end
            item
              Name = 'CREATE_DATE'
              DataType = ftTimeStamp
            end
            item
              Name = 'CREATE_TIME'
              DataType = ftTimeStamp
            end
            item
              Name = 'STORNO_EMPLOYEE_CODE'
              DataType = ftFloat
            end
            item
              Name = 'STORNO_DATE'
              DataType = ftTimeStamp
            end
            item
              Name = 'STORNO_TIME'
              DataType = ftTimeStamp
            end
            item
              Name = 'IS_NOT_STORNO'
              DataType = ftFloat
            end
            item
              Name = 'OLD_DISCIPLINE_EVENT_CODE'
              DataType = ftFloat
            end
            item
              Name = 'DIRECT_STORNO'
              DataType = ftFloat
            end
            item
              Name = 'STATUS_CODE'
              DataType = ftFloat
            end
            item
              Name = 'IS_IN_NORMAL_STATE'
              DataType = ftFloat
            end
            item
              Name = 'DISC_EVENT_TYPE_NAME'
              DataType = ftWideString
              Size = 100
            end
            item
              Name = 'ACTIVE_DATE_UNIT_CODE'
              DataType = ftFloat
            end
            item
              Name = 'ACTIVE_DATE_UNIT_COUNT'
              DataType = ftFloat
            end
            item
              Name = 'COLOR'
              DataType = ftFloat
            end
            item
              Name = 'BACKGROUND_COLOR'
              DataType = ftFloat
            end>
          IndexDefs = <
            item
              Name = 'idxDefault'
              Options = [ixDescending]
            end>
          inherited cdsGridDataEMPLOYEE_CODE: TAbmesFloatField
            ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
          end
          inherited cdsGridDataDISCIPLINE_EVENT_CODE: TAbmesFloatField
            ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
          end
          inherited cdsGridDataSTATUS_CODE: TAbmesFloatField
            ProviderFlags = []
          end
          inherited cdsGridDataIS_IN_NORMAL_STATE: TAbmesFloatField
            ProviderFlags = []
          end
          inherited cdsGridDataDISC_EVENT_TYPE_NAME: TAbmesWideStringField
            ProviderFlags = []
          end
          inherited cdsGridDataACTIVE_DATE_UNIT_CODE: TAbmesFloatField
            ProviderFlags = []
          end
          inherited cdsGridDataACTIVE_DATE_UNIT_COUNT: TAbmesFloatField
            ProviderFlags = []
          end
          inherited cdsGridDataCOLOR: TAbmesFloatField
            ProviderFlags = []
          end
          inherited cdsGridDataBACKGROUND_COLOR: TAbmesFloatField
            ProviderFlags = []
          end
        end
        inherited cdsDisciplineEventStates: TAbmesClientDataSet
          inherited cdsDisciplineEventStatesDISCIPLINE_EVENT_STATE_NAME: TAbmesWideStringField
            Size = 50
          end
        end
      end
    end
    object tsEmployeeOccupations: TTabSheet
      Caption = #1044#1083#1098#1078#1085#1086#1089#1090#1085#1080' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1103
      ImageIndex = 2
      object grdIncluded: TAbmesDBGrid
        Left = 0
        Top = 24
        Width = 769
        Height = 239
        Align = alClient
        DataSource = dsEmployeeOccupations
        FooterParams.Color = clWindow
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch]
        SortLocal = True
        TabOrder = 0
        TitleParams.MultiTitle = True
        TitleParams.VTitleMargin = 5
        OnDblClick = grdIncludedDblClick
        OnDrawColumnCell = grdIncludedDrawColumnCell
        Columns = <
          item
            Color = 16115403
            EditButtons = <>
            FieldName = 'ASSIGNMENT_BEGIN_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083
            Width = 125
          end
          item
            Alignment = taLeftJustify
            EditButtons = <>
            FieldName = 'ASSIGNMENT_PERIOD_STATUS_CODE'
            Footers = <>
            Title.Caption = #1042' '#1057
            Title.Hint = #1042#1088#1077#1084#1077#1074#1080' '#1089#1090#1072#1090#1091#1089
            Width = 13
          end
          item
            EditButtons = <>
            FieldName = 'IS_MAIN'
            Footers = <>
            Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090'|'#1042#1080#1076
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'OCCUPATION_NAME'
            Footers = <>
            Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 136
          end
          item
            EditButtons = <>
            FieldName = 'DEPT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1055#1088#1080#1085#1072#1076#1083#1077#1078#1085#1086#1089#1090' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072'|'#1050#1086#1076
            Width = 44
          end
          item
            EditButtons = <>
            FieldName = 'DEPT_NAME'
            Footers = <>
            Title.Caption = #1055#1088#1080#1085#1072#1076#1083#1077#1078#1085#1086#1089#1090' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 141
          end
          item
            Alignment = taCenter
            Color = 14671831
            EditButtons = <>
            FieldName = 'IS_EXTERNAL'
            Footers = <>
            Title.Caption = #1055#1088#1080#1085#1072#1076#1083#1077#1078#1085#1086#1089#1090' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072'|'#1055#1076#1074'.'
            Width = 30
          end
          item
            Alignment = taCenter
            Color = 14671831
            EditButtons = <>
            FieldName = 'IS_RECURRENT'
            Footers = <>
            Title.Caption = #1055#1088#1080#1085#1072#1076#1083#1077#1078#1085#1086#1089#1090' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072'|'#1042#1080#1076
            Width = 30
          end
          item
            Color = 16115403
            EditButtons = <>
            FieldName = 'ASSIGNMENT_DAY_DIFF'
            Footers = <>
            Title.Caption = #1056#1079#1088#1074'. '#1085#1072#1079#1085'.'
            Width = 32
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_NAME'
            Footers = <>
            Title.Caption = #1054#1073#1077#1079#1087#1077#1095#1072#1074#1072#1085' '#1044#1056#1054#1088
            Width = 146
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object pnlEmployeeOccupationsNavigator: TPanel
        Left = 0
        Top = 0
        Width = 769
        Height = 24
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object navEmployeeOccupations: TDBColorNavigator
          Left = 0
          Top = 0
          Width = 96
          Height = 24
          DataSource = dsEmployeeOccupations
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alLeft
          Flat = True
          TabOrder = 0
        end
        object ToolBar1: TToolBar
          Left = 732
          Top = 0
          Width = 37
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 25
          ButtonWidth = 24
          Caption = 'tlbTopGridButtons'
          Images = dmMain.ilActions
          TabOrder = 1
        end
        object tlbOccupationDocs: TToolBar
          Left = 96
          Top = 0
          Width = 473
          Height = 24
          Align = alLeft
          ButtonHeight = 24
          Images = dmMain.ilActions
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          object sepPastEmployeeOccupations: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepPastEmployeeOccupations'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object btnPastEmployeeOccupations: TSpeedButton
            Left = 8
            Top = 0
            Width = 23
            Height = 24
            Action = actPastEmployeeOccupations
            AllowAllUp = True
            GroupIndex = 1
            Flat = True
            Transparent = False
          end
          object btnPresentEmployeeOccupations: TSpeedButton
            Left = 31
            Top = 0
            Width = 23
            Height = 24
            Action = actPresentEmployeeOccupations
            AllowAllUp = True
            GroupIndex = 2
            Down = True
            Flat = True
            Transparent = False
          end
          object btnFutureEmployeeOccupations: TSpeedButton
            Left = 54
            Top = 0
            Width = 23
            Height = 24
            Action = actFutureEmployeeOccupations
            AllowAllUp = True
            GroupIndex = 3
            Down = True
            Flat = True
            Transparent = False
          end
          object sepOccupationDocs: TToolButton
            Left = 77
            Top = 0
            Width = 8
            Caption = 'sepOccupationDocs'
            Style = tbsSeparator
          end
          object lblOccupationDocs: TLabel
            Left = 85
            Top = 0
            Width = 60
            Height = 24
            AutoSize = False
            Caption = ' '#1044#1083#1098#1078#1085#1086#1089#1090' '
            Layout = tlCenter
          end
          object btnOccupationDocs: TSpeedButton
            Left = 145
            Top = 0
            Width = 37
            Height = 24
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072
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
            OnClick = btnOccupationDocsClick
          end
          object sepProductDocs: TToolButton
            Left = 182
            Top = 0
            Width = 8
            Caption = 'sepProductDocs'
            ImageIndex = 0
            Style = tbsSeparator
          end
          object lblProductDocs: TLabel
            Left = 190
            Top = 0
            Width = 36
            Height = 24
            AutoSize = False
            Caption = ' '#1044#1056#1054#1088' '
            Layout = tlCenter
          end
          object btnProductDocs: TSpeedButton
            Left = 226
            Top = 0
            Width = 37
            Height = 24
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1044#1056#1054#1088', '#1082#1072#1090#1086' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
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
            OnClick = btnProductDocsClick
          end
          object btnVIM: TSpeedButton
            Left = 263
            Top = 0
            Width = 25
            Height = 24
            Action = actVIM
            Flat = True
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF007B7B7B00FF00FF00FF00FF00FF00FF007B7B7B00FF00FF00FF00FF00FF00
              FF007B7B7B00FF00FF00FF00FF00FF00FF007B7B7B00FF00FF00FF00FF00FF00
              FF007B7B7B00FF00FF007B7B7B00FF00FF007B7B7B00FF00FF007B7B7B00FF00
              FF007B7B7B00FF00FF007B7B7B00FF00FF007B7B7B00FF00FF007B7B7B007B7B
              7B00000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000FF00FF00FF00
              FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B7B
              7B00000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF0000000000FF00FF000000FF00FF00FF000000FF000000FF00FF00FF00FF00
              0000FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF007B7B7B007B7B
              7B00000000007B7B7B000000FF007B7B7B000000FF007B7B7B000000FF007B7B
              7B007B7B7B00FF0000007B7B7B007B7B7B007B7B7B007B7B7B00FF00FF00FF00
              FF0000000000FF00FF00FF00FF000000FF00FF00FF00FF00FF000000FF00FF00
              FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF007B7B
              7B0000000000FF000000FF00FF00FF00FF00FF00FF00FF000000FF00FF000000
              FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF0000000000FF00FF00FF000000FF00FF00FF000000FF00FF00FF00FF000000
              FF00FF00FF000000FF00FF0000000000FF00FF00FF00FF00FF007B7B7B007B7B
              7B00000000007B7B7B00FF0000007B7B7B00FF0000007B7B7B007B7B7B007B7B
              7B000000FF007B7B7B007B7B7B00FF0000000000FF007B7B7B00FF00FF00FF00
              FF0000000000FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF007B7B
              7B0000000000FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00
              FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B7B7B007B7B
              7B00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
              7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            ParentShowHint = False
            ShowHint = True
            Transparent = False
          end
        end
      end
    end
  end
  object gbPerson: TGroupBox [2]
    Left = 8
    Top = 8
    Width = 777
    Height = 105
    Caption = ' '#1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1094#1080#1103' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088' - '#1057#1048#1063#1048' '
    TabOrder = 0
    object lblPartnerCode: TLabel
      Left = 224
      Top = 16
      Width = 19
      Height = 13
      Caption = #1050#1086#1076
    end
    object lblPartner: TLabel
      Left = 298
      Top = 16
      Width = 22
      Height = 13
      Caption = #1048#1084#1077
    end
    object lblIsExternal: TLabel
      Left = 224
      Top = 56
      Width = 72
      Height = 13
      Caption = #1055#1086#1079#1080#1094#1080#1103' '#1074' '#1048#1055
    end
    object lblEducation: TLabel
      Left = 328
      Top = 56
      Width = 68
      Height = 13
      Caption = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
    end
    object lblAbbrev: TLabel
      Left = 696
      Top = 16
      Width = 34
      Height = 13
      Caption = #1040#1073#1088#1077#1074'.'
    end
    object lblEGN: TLabel
      Left = 480
      Top = 56
      Width = 50
      Height = 13
      Caption = #1045#1043#1053'/'#1051#1053#1063
    end
    object lblGender: TLabel
      Left = 584
      Top = 56
      Width = 20
      Height = 13
      Caption = #1055#1086#1083
    end
    inline frPerson: TfrPartnerFieldEditFrameBald
      Left = 224
      Top = 32
      Width = 465
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 2
      TabStop = True
      DesignSize = (
        465
        22)
      inherited gbPartner: TGroupBox
        Width = 480
        inherited pnlNameAndButtons: TPanel
          Width = 391
          inherited pnlRightButtons: TPanel
            Left = 355
          end
          inherited pnlPartnerName: TPanel
            Width = 355
            DesignSize = (
              355
              23)
            inherited cbPartner: TJvDBLookupCombo
              Width = 356
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 472
        end
      end
      inherited cdsPartners: TAbmesClientDataSet
        inherited cdsPartnersCOMPANY_CODE: TAbmesFloatField
          ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
        end
      end
    end
    inline frCompanyStatus: TfrCompanyStatus
      Left = 8
      Top = 16
      Width = 207
      Height = 38
      Constraints.MaxHeight = 38
      Constraints.MaxWidth = 207
      Constraints.MinHeight = 38
      Constraints.MinWidth = 207
      TabOrder = 0
      TabStop = True
      inherited lblCurrentStatus: TLabel
        Width = 34
      end
      inherited lblReachMonths: TLabel
        Width = 6
      end
      inherited lblExistanceMonths: TLabel
        Width = 6
      end
      inherited lblMonths: TLabel
        Width = 11
      end
    end
    object edtAbbrev: TDBEdit
      Left = 696
      Top = 32
      Width = 65
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'ABBREV'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 3
    end
    object edtEGN: TDBEdit
      Left = 480
      Top = 72
      Width = 97
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'EGN'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 6
    end
    object edtGender: TDBEdit
      Left = 584
      Top = 72
      Width = 65
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'IS_MALE'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 7
    end
    object edtEducation: TDBEdit
      Left = 328
      Top = 72
      Width = 145
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'EDUCATION_NAME'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 5
    end
    object btnPerson: TBitBtn
      Left = 664
      Top = 69
      Width = 97
      Height = 25
      Action = actPerson
      Caption = #1057#1048#1063#1048'...'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000008400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000084000000840084848400FF00FF00FF00FF00FF00FF0000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF000000
        8400000084000000840000008400FF00FF00FF00FF00FF00FF0000000000FF00
        FF00FF00FF00000000000000000000000000FF00FF00FF00FF00000084000000
        840000008400FF00FF000000840000008400FF00FF00FF00FF00FF00FF000000
        000000000000FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF000000
        8400FF00FF00FF00FF00FF00FF000000840000008400FF00FF00FF00FF00FF00
        FF0000000000FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000840000008400FF00FF000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000008400000000000000
        00000000000000000000FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        000000000000FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        0000000000000000000000000000FF00FF00FF00FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        00000000000000000000000000000000000000000000FF00FF0000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        000000000000000000000000000000000000000000000000000000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 8
    end
    object edtIsExternal: TDBEdit
      Left = 224
      Top = 72
      Width = 97
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'IS_EXTERNAL'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 4
    end
    object chkIsInactive: TAbmesDBCheckBox
      Left = 11
      Top = 73
      Width = 97
      Height = 17
      Caption = #1053#1077#1072#1082#1090#1080#1074#1077#1085
      DataField = 'IS_INACTIVE'
      DataSource = dsData
      TabOrder = 1
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object gbEmployeeCode: TGroupBox [3]
    Left = 8
    Top = 120
    Width = 217
    Height = 49
    Caption = ' '#1050#1086#1076' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083' '
    TabOrder = 1
    object edtNo: TDBEdit
      Left = 8
      Top = 16
      Width = 161
      Height = 21
      Color = clBtnFace
      DataField = '_EMPLOYEE_NO'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 0
    end
    object pnlDocs: TToolBar
      Left = 170
      Top = 16
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
        Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083#1103
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
    end
  end
  inline frCurrentDept: TfrDeptFieldEditFrame [4]
    Left = 232
    Top = 120
    Width = 553
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 2
    TabStop = True
    inherited gbTreeNode: TGroupBox
      Width = 553
      Caption = ' '#1058#1055' '#1058#1077#1082#1091#1097#1086' '
      DesignSize = (
        553
        49)
      inherited pnlTreeNode: TPanel
        Width = 537
        inherited pnlTreeNodeName: TPanel
          Width = 390
          DesignSize = (
            390
            22)
          inherited edtTreeNodeName: TDBEdit
            Width = 389
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 390
        end
        inherited pnlRightButtons: TPanel
          Left = 501
        end
      end
    end
  end
  inherited alActions: TActionList [5]
    Left = 632
    Top = 304
    inherited actForm: TAction
      Caption = #1057#1083#1091#1078#1080#1090#1077#1083' - %s'
    end
    object actVIM: TAction
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1042#1048#1052' '#1085#1072' '#1044#1056#1054#1088', '#1082#1072#1090#1086' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      ImageIndex = 30
      OnExecute = actVIMExecute
      OnUpdate = actVIMUpdate
    end
    object actOccupationsAndEmployees: TAction
      Caption = #1044#1083#1098#1078#1085#1086#1089#1090#1080'...'
      ImageIndex = 65
      OnExecute = actOccupationsAndEmployeesExecute
      OnUpdate = actOccupationsAndEmployeesUpdate
    end
    object actPerson: TAction
      Caption = #1057#1048#1063#1048'...'
      ImageIndex = 62
      OnExecute = actPersonExecute
    end
    object actPastEmployeeOccupations: TAction
      Caption = #1052
      GroupIndex = 1
      Hint = #1052#1080#1085#1072#1083#1080' '#1076#1083#1098#1078#1085#1086#1089#1090#1085#1080' '#1085#1072#1079#1085#1072#1095#1077#1085#1080#1103
      OnExecute = actPastPresentFutureEmployeeOccupationsExecute
    end
    object actPresentEmployeeOccupations: TAction
      Caption = #1053
      Checked = True
      GroupIndex = 2
      Hint = #1053#1072#1089#1090#1086#1103#1097#1080' '#1076#1083#1098#1078#1085#1086#1089#1090#1085#1080' '#1085#1072#1079#1085#1072#1095#1077#1085#1080#1103
      OnExecute = actPastPresentFutureEmployeeOccupationsExecute
    end
    object actFutureEmployeeOccupations: TAction
      Caption = #1041
      Checked = True
      GroupIndex = 3
      Hint = #1041#1098#1076#1077#1097#1080' '#1076#1083#1098#1078#1085#1086#1089#1090#1085#1080' '#1085#1072#1079#1085#1072#1095#1077#1085#1080#1103
      OnExecute = actPastPresentFutureEmployeeOccupationsExecute
    end
    object actOccupationEmployee: TAction
      Caption = #1044#1083#1091#1078#1085#1086#1089#1090#1085#1086' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077'...'
      Hint = #1044#1083#1091#1078#1085#1086#1089#1090#1085#1086' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077
      OnExecute = actOccupationEmployeeExecute
      OnUpdate = actOccupationEmployeeUpdate
    end
    object actEmployeeDayAbsences: TAction
      Caption = #1062#1077#1083#1086#1076#1085#1077#1074#1085#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103'...'
      OnExecute = actEmployeeDayAbsencesExecute
    end
    object actEmployeePresenceDeviation: TAction
      Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' '#1074' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103'...'
      OnExecute = actEmployeePresenceDeviationExecute
    end
  end
  inherited dsData: TDataSource [6]
    Left = 584
    Top = 304
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conHumanResource
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvEmployee'
    BeforePost = cdsDataBeforePost
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    Left = 552
    Top = 304
    object cdsDataEMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDataFIRST_NAME: TAbmesWideStringField
      DisplayLabel = #1048#1084#1077
      FieldName = 'FIRST_NAME'
      Required = True
      Size = 50
    end
    object cdsDataMIDDLE_NAME: TAbmesWideStringField
      DisplayLabel = #1055#1088#1077#1079#1080#1084#1077
      FieldName = 'MIDDLE_NAME'
      Size = 50
    end
    object cdsDataLAST_NAME: TAbmesWideStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      FieldName = 'LAST_NAME'
      Required = True
      Size = 50
    end
    object cdsDataABBREV: TAbmesWideStringField
      DisplayLabel = #1040#1073#1088#1077#1074#1080#1072#1090#1091#1088#1072
      FieldName = 'ABBREV'
      Required = True
      Size = 5
    end
    object cdsDataEGN: TAbmesWideStringField
      DisplayLabel = #1045#1043#1053'/'#1051#1053#1063
      FieldName = 'EGN'
      ProviderFlags = []
      Required = True
      Size = 10
    end
    object cdsDataEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      ProviderFlags = []
      Size = 41
    end
    object cdsDataCURRENT_DEPT_CODE: TAbmesFloatField
      FieldName = 'CURRENT_DEPT_CODE'
      OnChange = cdsDataCURRENT_DEPT_CODEChange
    end
    object cdsDataCURRENT_DEPT_NAME: TAbmesWideStringField
      FieldName = 'CURRENT_DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsDataCURRENT_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'CURRENT_DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 45
    end
    object cdsDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDataEDUCATION_CODE: TAbmesFloatField
      FieldName = 'EDUCATION_CODE'
      ProviderFlags = []
    end
    object cdsDataqryEmployeeDisciplineEvents: TDataSetField
      FieldName = 'qryEmployeeDisciplineEvents'
    end
    object cdsDataqryEmployeeProfessions: TDataSetField
      FieldName = 'qryEmployeeProfessions'
    end
    object cdsDataCOMPANY_CODE: TAbmesFloatField
      DisplayLabel = #1057#1048#1063#1048' '#1055#1072#1088#1090#1085#1100#1086#1088
      FieldName = 'COMPANY_CODE'
      Required = True
      OnChange = cdsDataCOMPANY_CODEChange
    end
    object cdsDataqryEmployeeOccupations: TDataSetField
      FieldName = 'qryEmployeeOccupations'
    end
    object cdsDataIS_EXTERNAL: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'IS_EXTERNAL'
      ProviderFlags = []
      DisplayBoolValues = #1074#1098#1085#1096#1077#1085';'#1074#1098#1090#1088#1077#1096#1077#1085
      FieldValueType = fvtBoolean
    end
    object cdsDataEDUCATION_NAME: TAbmesWideStringField
      FieldName = 'EDUCATION_NAME'
      ProviderFlags = []
      Size = 50
    end
    object cdsDataIS_MALE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'IS_MALE'
      ProviderFlags = []
      DisplayBoolValues = #1084#1098#1078#1082#1080';'#1078#1077#1085#1089#1082#1080
      FieldValueType = fvtBoolean
    end
    object cdsDataIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
      FieldValueType = fvtBoolean
    end
    object cdsData_EMPLOYEE_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_EMPLOYEE_NO'
      LookupDataSet = frPerson.cdsPartners
      LookupKeyFields = 'COMPANY_CODE'
      LookupResultField = 'COMPANY_NO'
      KeyFields = 'COMPANY_CODE'
      Lookup = True
    end
  end
  object cdsEmployeeProfessions: TAbmesClientDataSet
    Aggregates = <>
    DataSetField = cdsDataqryEmployeeProfessions
    IndexFieldNames = 'PROFESSION_FORMATTED_FULL_NO'
    Params = <>
    OnNewRecord = cdsEmployeeProfessionsNewRecord
    Left = 76
    Top = 304
    object cdsEmployeeProfessionsEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsEmployeeProfessionsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsEmployeeProfessionsPROFESSION_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsEmployeeProfessionsHAS_DOCUMENTATION: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsEmployeeProfessionsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object cdsEmployeeProfessionsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = []
    end
    object cdsEmployeeProfessionsPROFESSION_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FULL_NO'
      Size = 100
    end
    object cdsEmployeeProfessionsPROFESSION_FORMATTED_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FORMATTED_FULL_NO'
      Size = 100
    end
  end
  object cdsEmployeeNotProfessions: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    IndexFieldNames = 'PROFESSION_FORMATTED_FULL_NO'
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvEmployeeNotProfessions'
    BeforeOpen = cdsEmployeeNotProfessionsBeforeOpen
    Left = 436
    Top = 304
    object cdsEmployeeNotProfessionsEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsEmployeeNotProfessionsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsEmployeeNotProfessionsPROFESSION_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsEmployeeNotProfessionsHAS_DOCUMENTATION: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'HAS_DOCUMENTATION'
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsEmployeeNotProfessionsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsEmployeeNotProfessionsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsEmployeeNotProfessionsPROFESSION_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FULL_NO'
      Size = 100
    end
    object cdsEmployeeNotProfessionsPROFESSION_FORMATTED_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FORMATTED_FULL_NO'
      Size = 100
    end
  end
  object cdsEmployeeOccupations: TAbmesClientDataSet
    Aggregates = <>
    DataSetField = cdsDataqryEmployeeOccupations
    Filtered = True
    Params = <>
    OnFilterRecord = cdsEmployeeOccupationsFilterRecord
    Left = 220
    Top = 280
    object cdsEmployeeOccupationsOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_EMPLOYEE_CODE'
    end
    object cdsEmployeeOccupationsASSIGNMENT_PERIOD_STATUS_CODE: TAbmesFloatField
      FieldName = 'ASSIGNMENT_PERIOD_STATUS_CODE'
      OnGetText = cdsEmployeeOccupationsASSIGNMENT_PERIOD_STATUS_CODEGetText
    end
    object cdsEmployeeOccupationsASSIGNMENT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'ASSIGNMENT_BEGIN_DATE'
      OnGetText = cdsEmployeeOccupationsASSIGNMENT_BEGIN_DATEGetText
    end
    object cdsEmployeeOccupationsASSIGNMENT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'ASSIGNMENT_END_DATE'
    end
    object cdsEmployeeOccupationsIS_MAIN: TAbmesFloatField
      FieldName = 'IS_MAIN'
      DisplayBoolValues = #1054#1089#1085'.;'#1055#1088#1074'.'
      FieldValueType = fvtBoolean
    end
    object cdsEmployeeOccupationsOCCUPATION_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_NAME'
      Size = 50
    end
    object cdsEmployeeOccupationsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsEmployeeOccupationsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object cdsEmployeeOccupationsIS_EXTERNAL: TAbmesFloatField
      FieldName = 'IS_EXTERNAL'
      DisplayBoolValues = #1042#1085'.;'#1042#1090#1088'.'
      FieldValueType = fvtBoolean
    end
    object cdsEmployeeOccupationsIS_RECURRENT: TAbmesFloatField
      FieldName = 'IS_RECURRENT'
      DisplayBoolValues = #1055#1091#1083#1089'.;'#1059#1089#1090'.'
      FieldValueType = fvtBoolean
    end
    object cdsEmployeeOccupationsASSIGNMENT_DAY_DIFF: TAbmesFloatField
      FieldName = 'ASSIGNMENT_DAY_DIFF'
      OnGetText = cdsEmployeeOccupationsASSIGNMENT_DAY_DIFFGetText
    end
    object cdsEmployeeOccupationsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsEmployeeOccupationsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsEmployeeOccupationsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object cdsEmployeeOccupationsOCCUPATION_HAS_DOCS: TAbmesFloatField
      FieldName = 'OCCUPATION_HAS_DOCS'
      FieldValueType = fvtBoolean
    end
    object cdsEmployeeOccupationsOCCUPATION_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_DOC_BRANCH_CODE'
    end
    object cdsEmployeeOccupationsOCCUPATION_DOC_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_DOC_CODE'
    end
    object cdsEmployeeOccupationsPRODUCT_HAS_DOCS: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOCS'
      FieldValueType = fvtBoolean
    end
    object cdsEmployeeOccupationsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object cdsEmployeeOccupationsPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
  end
  object dsEmployeeOccupations: TDataSource
    DataSet = cdsEmployeeOccupations
    Left = 252
    Top = 280
  end
  object cdsCompany: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompanies
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCompany'
    Left = 488
    Top = 24
    object cdsCompanyCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
    end
    object cdsCompanyEGN: TAbmesWideStringField
      FieldName = 'EGN'
      Size = 10
    end
    object cdsCompanyFIRST_NAME: TAbmesWideStringField
      FieldName = 'FIRST_NAME'
      Size = 50
    end
    object cdsCompanyMIDDLE_NAME: TAbmesWideStringField
      FieldName = 'MIDDLE_NAME'
      Size = 50
    end
    object cdsCompanyLAST_NAME: TAbmesWideStringField
      FieldName = 'LAST_NAME'
      Size = 50
    end
    object cdsCompanyABBREV: TAbmesWideStringField
      FieldName = 'ABBREV'
      Size = 5
    end
    object cdsCompanyIS_MALE: TAbmesFloatField
      FieldName = 'IS_MALE'
    end
    object cdsCompanyEDUCATION_NAME: TAbmesWideStringField
      FieldName = 'EDUCATION_NAME'
      Size = 50
    end
    object cdsCompanyEDUCATION_CODE: TAbmesFloatField
      FieldName = 'EDUCATION_CODE'
    end
    object cdsCompanyIS_EXTERNAL: TAbmesFloatField
      FieldName = 'IS_EXTERNAL'
    end
  end
end
