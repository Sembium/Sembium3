inherited fmProductionOrders: TfmProductionOrders
  Left = 229
  Top = 154
  ActiveControl = nil
  ClientHeight = 579
  ClientWidth = 1017
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 545
    Width = 1017
    Height = 34
    inherited pnlOKCancel: TPanel
      Left = 749
      Height = 34
      TabOrder = 2
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 660
      Height = 34
      TabOrder = 1
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 928
      Height = 34
      TabOrder = 3
      Visible = False
    end
    object pnlBottomLeftButtons: TPanel
      Left = 0
      Top = 0
      Width = 601
      Height = 34
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object btnEditProductionOrder: TBitBtn
        Left = 8
        Top = 2
        Width = 65
        Height = 25
        Action = actEditRecord
        Caption = #1054#1055'...'
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
      object btnEditModel: TBitBtn
        Left = 184
        Top = 2
        Width = 97
        Height = 25
        Action = actEditModel
        Caption = #1057#1083#1077#1076#1077#1085#1077'...'
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
        ParentShowHint = False
        ShowHint = True
        Spacing = -1
        TabOrder = 2
      end
      object btnNewProductionOrder: TBitBtn
        Left = 80
        Top = 2
        Width = 97
        Height = 25
        Action = actInsertMenu
        Caption = #1044#1086#1073#1072#1074#1103#1085#1077'...'
        Spacing = -1
        TabOrder = 1
      end
      object btnArchive: TBitBtn
        Left = 401
        Top = 2
        Width = 88
        Height = 25
        Action = actArchiveModel
        Caption = #1040#1088#1093#1080#1074#1080#1088#1072#1085#1077
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000008400000084000000840000008400000084000000
          84000000840000008400000084000000840000008400FF00FF00FF00FF00FF00
          FF00FF00FF00000000000000840000FFFF0000FFFF0000FFFF0000FFFF0000FF
          FF0000FFFF0000FFFF0000FFFF0000FFFF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000000840000FFFF0000FFFF0000FFFF0000FFFF0000FF
          FF0000FFFF0000FFFF0000FFFF0000FFFF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000000000000000008400000084000000840000008400000084000000
          84000000840000008400000084000000840000008400FF00FF00FF00FF00FF00
          FF00000000000000000000008400000084000000840000008400000084000000
          840000008400000084000000840000008400FF00FF00FF00FF00FF00FF000000
          0000000000000000840000008400000084000000840000008400000084000000
          84000000840000008400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          0000000000000000840000008400000084000000840000008400000084000000
          8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          0000000084000000840000008400000084000000840000008400FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        Spacing = -1
        TabOrder = 4
      end
      object btnUnarchive: TBitBtn
        Left = 492
        Top = 2
        Width = 104
        Height = 25
        Action = actUnarchiveModel
        Caption = #1056#1072#1079#1072#1088#1093#1080#1074#1080#1088#1072#1085#1077
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000008400000084000000
          00008484840000008400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0000008400000084000000000000FF
          FF0000FFFF008484840000008400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000008400000084000000000000FFFF0000FF
          FF0000FFFF0000FFFF008484840000008400FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000008400000084000000000000FFFF0000FFFF0000FF
          FF0000FFFF0000FFFF0000FFFF008484840000008400FF00FF00FF00FF00FF00
          FF000000840000008400000000008484840000FFFF0000FFFF0000FFFF0000FF
          FF0000FFFF0000FFFF0000FFFF0000FFFF008484840000008400FF00FF000000
          8400000084000000000084848400848484008484840000FFFF0000FFFF0000FF
          FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000084000000
          84000000000000FFFF00848484008484840000FFFF008484840000FFFF0000FF
          FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00FF00FF00000000000000
          000000FFFF0000FFFF00848484008484840000FFFF0000FFFF008484840000FF
          FF0000FFFF0000FFFF0000FFFF0000FFFF00FF00FF00FF00FF0000FFFF0000FF
          FF0000FFFF0000FFFF008484840000FFFF008484840000FFFF0000FFFF008484
          840000FFFF0000FFFF0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF0000FF
          FF0000FFFF0000FFFF008484840000FFFF0000FFFF008484840000FFFF0000FF
          FF008484840000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000FFFF0000FFFF0000FFFF008484840000FFFF0000FFFF008484840000FF
          FF0000FFFF0084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000FFFF0000FFFF0000FFFF008484840000FFFF0000FFFF008484
          840000FFFF0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000FFFF0000FFFF0000FFFF008484840000FFFF0000FF
          FF008484840000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000FFFF00FF00FF00FF00FF008484840000FF
          FF00FF00FF0084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008484
          8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        Spacing = -1
        TabOrder = 5
      end
      object btnModelCapacityStatus: TBitBtn
        Left = 288
        Top = 2
        Width = 97
        Height = 25
        Action = actModelCapacityStatus
        Caption = #1050#1072#1087#1072#1094#1080#1090#1077#1090'...'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000000FF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00000000000000FF000000FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
          FF00FF00FF000000FF000000FF000000000000000000FF00FF00000000008484
          84000000FF000000FF000000FF0084848400FF00FF00FF00FF0000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          FF00000000000000FF008484840084848400FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00000000008484
          8400000000000000FF00000000000000FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00000000008484
          8400000000000000FF00000000000000FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        ParentShowHint = False
        ShowHint = True
        Spacing = -1
        TabOrder = 3
      end
    end
    object btnGroupDeliveriesExceptEvents: TBitBtn
      Left = 603
      Top = 2
      Width = 150
      Height = 25
      Action = actExceptEvents
      Caption = #1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103'...'
      TabOrder = 4
    end
  end
  inherited pnlMain: TPanel
    Width = 1017
    Height = 545
    inherited pnlGrid: TPanel
      Width = 1001
      Height = 529
      DesignSize = (
        1001
        529)
      inherited pnlNavigator: TPanel
        Width = 1001
        inherited navData: TDBColorNavigator
          Enabled = False
          Hints.Strings = ()
          Visible = False
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 1001
        Height = 505
        TabStop = False
        Visible = False
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ML_STATE_CODE'
            Footers = <>
            Title.Caption = #1057#1090#1072' '#1090#1091#1089
            Width = 26
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'IS_SALE'
            Footers = <>
            Title.Caption = #1054#1055#1055' / '#1054#1055#1042
            Width = 19
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SALE_IDENTIFICATION'
            Footers = <>
            Title.Caption = 'ID '#1054#1055'|'#1048#1076#1077#1085#1090#1080'- '#1092#1080#1082#1072#1094#1080#1103
            Width = 52
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SALE_TYPE_ABBREV'
            Footers = <>
            Title.Caption = 'ID '#1054#1055'|'#1042' '#1080' '#1076
            Width = 13
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ENTER_SH_STORE_PLAN_END_PERIOD'
            Footers = <>
            Title.Caption = #1055#1077'- '#1088#1080'- '#1086#1076
            Width = 27
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRIORITY_FULL_NAME'
            Footers = <>
            Title.Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090
            Title.Orientation = tohVertical
            Width = 14
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'OWNER_NAME'
            Footers = <>
            Title.Caption = #1055#1086#1088#1098#1095#1080#1090#1077#1083
            Width = 72
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRODUCT_NAME'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
            Width = 159
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRODUCT_OTHER_NAME'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1044#1088#1091#1075#1080' '#1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088#1080' '#1085#1072' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
            Visible = False
            Width = 172
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'HAS_DOCUMENTATION'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1048#1048#1054
            Width = 26
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'QUANTITY'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1050'-'#1074#1086
            Width = 50
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1052'.'#1077#1076
            Width = 27
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'QUANTITY_DEVIATION_PERCENT'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1086#1090#1082#1083'. (%)'
            Width = 28
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ENTER_SH_STORE_PLAN_BEGIN_DATE'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1042#1088#1084#1048#1085#1090
            Width = 45
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRODUCTION_START_PLAN_DATE'
            Footers = <>
            Title.Caption = #1057#1090#1072#1088#1090' '#1085#1072' ID '#1054#1055'|'#1053#1072#1095#1072#1083#1086' '#1087#1088'.'
            Width = 43
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'START_STAGE_COEF'
            Footers = <>
            Title.Caption = #1057#1090#1072#1088#1090' '#1085#1072' ID '#1054#1055'|'#1050#1086#1077#1092'. '#1089#1090#1072#1088#1090
            Width = 32
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'UNCOVERED_LINES'
            Footers = <>
            Title.Caption = #1057#1090#1072#1088#1090' '#1085#1072' ID '#1054#1055'|'#1053#1056
            Width = 18
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'MAIN_DEPT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1048#1079#1087#1098#1083#1085#1077#1085#1080#1077'|'#1058#1055
            Width = 42
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TIME_DIFF'
            Footers = <>
            Title.Caption = #1048#1079#1087#1098#1083#1085#1077#1085#1080#1077'|'#1047#1072#1082'.'
            Width = 23
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PLAN_VALUE_INVESTED'
            Footers = <>
            Title.Caption = #1042#1083#1086#1078#1077#1085#1072' '#1089#1090#1086#1081#1085#1086#1089#1090'|'#1055#1083#1072#1085#1086#1074#1072
            Width = 81
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'OTCH_VALUE_INVESTED'
            Footers = <>
            Title.Caption = #1042#1083#1086#1078#1077#1085#1072' '#1089#1090#1086#1081#1085#1086#1089#1090'|'#1054#1090#1095#1077#1090#1085#1072
            Width = 80
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CREATE_DATE'
            Footers = <>
            Title.Caption = #1057#1098#1079#1076#1072#1076#1077#1085'|'#1044#1072#1090#1072
            Width = 31
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CREATE_TIME'
            Footers = <>
            Title.Caption = #1057#1098#1079#1076#1072#1076#1077#1085'|'#1063#1072#1089
            Width = 29
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CREATE_EMPLOYEE_ABBREV'
            Footers = <>
            Title.Caption = #1057#1098#1079#1076#1072#1076#1077#1085'|'#1057#1083#1091#1078
            Width = 31
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CHANGE_DATE'
            Footers = <>
            Title.Caption = #1055#1086#1089#1083#1077#1076#1085#1072' '#1087#1088#1086#1084#1103#1085#1072'|'#1044#1072#1090#1072
            Width = 31
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CHANGE_TIME'
            Footers = <>
            Title.Caption = #1055#1086#1089#1083#1077#1076#1085#1072' '#1087#1088#1086#1084#1103#1085#1072'|'#1063#1072#1089
            Width = 29
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CHANGE_EMPLOYEE_ABBREV'
            Footers = <>
            Title.Caption = #1055#1086#1089#1083#1077#1076#1085#1072' '#1087#1088#1086#1084#1103#1085#1072'|'#1057#1083#1091#1078
            Width = 31
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FINISH_DATE'
            Footers = <>
            Title.Caption = #1055#1088#1080#1082#1083#1102#1095#1077#1085'|'#1044#1072#1090#1072
            Width = 31
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FINISH_TIME'
            Footers = <>
            Title.Caption = #1055#1088#1080#1082#1083#1102#1095#1077#1085'|'#1063#1072#1089
            Width = 29
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FINISH_EMPLOYEE_ABBREV'
            Footers = <>
            Title.Caption = #1055#1088#1080#1082#1083#1102#1095#1077#1085'|'#1057#1083#1091#1078
            Width = 31
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ANNUL_DATE'
            Footers = <>
            Title.Caption = #1040#1085#1091#1083#1080#1088#1072#1085'|'#1044#1072#1090#1072
            Width = 31
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ANNUL_TIME'
            Footers = <>
            Title.Caption = #1040#1085#1091#1083#1080#1088#1072#1085'|'#1063#1072#1089
            Width = 29
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ANNUL_REASON_ABBREV'
            Footers = <>
            Title.Caption = #1040#1085#1091#1083#1080#1088#1072#1085'|'#1055#1088#1080#1095#1080#1085#1072
            Width = 53
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'LIMITING_DATE'
            Footers = <>
            Title.Caption = #1052#1054#1044#1045#1083'|'#1040#1082#1090#1080#1074#1080#1088#1072#1085'|'#1044#1072#1090#1072
            Width = 29
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'LIMITING_TIME'
            Footers = <>
            Title.Caption = #1052#1054#1044#1045#1083'|'#1040#1082#1090#1080#1074#1080#1088#1072#1085'|'#1063#1072#1089
            Width = 34
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'LIMITING_EMPLOYEE_NAME'
            Footers = <>
            Title.Caption = #1052#1054#1044#1045#1083'|'#1040#1082#1090#1080#1074#1080#1088#1072#1085'|'#1057#1083#1091#1078
            Width = 31
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'MODEL_CLOSE_DATE'
            Footers = <>
            Title.Caption = #1052#1054#1044#1045#1083'|'#1055#1088#1080#1082#1083#1102#1095#1077#1085'|'#1044#1072#1090#1072
            Width = 31
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'MODEL_CLOSE_TIME'
            Footers = <>
            Title.Caption = #1052#1054#1044#1045#1083'|'#1055#1088#1080#1082#1083#1102#1095#1077#1085'|'#1063#1072#1089
            Width = 29
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'MODEL_CLOSE_EMPLOYEE_NAME'
            Footers = <>
            Title.Caption = #1052#1054#1044#1045#1083'|'#1055#1088#1080#1082#1083#1102#1095#1077#1085'|'#1057#1083#1091#1078
            Width = 30
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'WASTING_ORDER_IDENTIFIER'
            Footers = <>
            Title.Caption = #1054#1055#1042' '#1054#1089#1085#1086#1074#1077#1085'|ID '#1054#1055#1042
            Visible = False
          end>
      end
      object pcMain: TPageControl
        Left = 0
        Top = 0
        Width = 1001
        Height = 529
        ActivePage = tsMain
        Anchors = [akLeft, akTop, akRight, akBottom]
        HotTrack = True
        TabOrder = 2
        object tsMain: TTabSheet
          Caption = #1056#1077#1075#1080#1089#1090#1098#1088
          object pnlMainGrid: TPanel
            Left = 0
            Top = 0
            Width = 993
            Height = 501
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object grdMain: TAbmesDBGrid
              Left = 0
              Top = 0
              Width = 993
              Height = 501
              Align = alClient
              DataSource = dsGridData
              DynProps = <>
              FooterRowCount = 1
              FooterParams.Color = 15258325
              GridLineParams.VertEmptySpaceStyle = dessNonEh
              HorzScrollBar.VisibleMode = sbNeverShowEh
              Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
              OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch]
              ReadOnly = True
              TabOrder = 0
              TitleParams.MultiTitle = True
              OnDblClick = grdMainDblClick
              OnDrawColumnCell = grdMainDrawColumnCell
              OnGetCellParams = grdMainGetCellParams
              OnSortMarkingChanged = grdMainSortMarkingChanged
              Columns = <
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'ML_STATE_CODE'
                  Footers = <>
                  Title.Caption = #1057#1090#1072#1090#1091#1089
                  Title.Orientation = tohVertical
                  Width = 26
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'IS_SALE'
                  Footers = <>
                  Title.Caption = #1054#1073#1074'. '#1089' '#1054#1055#1055
                  Title.Hint = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1087#1088#1086#1076#1072#1078#1073#1080
                  Title.Orientation = tohVertical
                  Width = 14
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = '_PRODUCTION_ORDER_POSITION'
                  Footers = <>
                  Title.Caption = #1055#1086#1079'. '#1085#1072' '#1054#1055#1042
                  Title.Orientation = tohVertical
                  Width = 19
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'SALE_IDENTIFICATION'
                  Footers = <>
                  Title.Caption = 
                    '    ID '#1054#1088#1076#1077#1088' '#1079#1072'               '#1055#1088#1086#1094#1077#1089'               '#1042#1098#1090#1088#1077#1096#1077#1085'     ' +
                    '  ('#1054#1055#1042') '
                  Width = 96
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'PRIORITY_FULL_NAME'
                  Footers = <>
                  Title.Caption = #1054#1089#1085'. '#1055#1088'.'
                  Title.Orientation = tohVertical
                  Width = 16
                end
                item
                  CellButtons = <>
                  Color = clBtnFace
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'WORK_PRIORITY_NO'
                  Footers = <>
                  Title.Caption = #1054#1087'.   '#1055#1088'.'
                  Title.Orientation = tohVertical
                  Width = 24
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'OWNER_NAME'
                  Footers = <>
                  Tag = 2
                  Title.Caption = #1055#1086#1088#1098#1095#1080#1090#1077#1083
                  Width = 72
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'CONSUMER_DEPT_IDENTIFIER'
                  Footers = <>
                  Tag = 3
                  Title.Caption = #1058#1055' '#1055#1086#1083#1079#1074#1072#1090#1077#1083
                  Visible = False
                  Width = 72
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'PRODUCT_NAME'
                  Footers = <>
                  Tag = 4
                  Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
                  Width = 114
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'PRODUCT_NO'
                  Footers = <>
                  Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1053#1086#1084#1077#1088
                  Visible = False
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'PRODUCT_OTHER_NAME'
                  Footers = <>
                  Tag = 5
                  Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1044#1088#1091#1075#1080' '#1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088#1080' '#1085#1072' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
                  Visible = False
                  Width = 114
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'QUANTITY'
                  Footer.FieldName = '_SUM_QUANTITY'
                  Footer.Font.Charset = DEFAULT_CHARSET
                  Footer.Font.Color = clWindowText
                  Footer.Font.Height = -9
                  Footer.Font.Name = 'Microsoft Sans Serif'
                  Footer.Font.Style = []
                  Footer.ValueType = fvtFieldValue
                  Footers = <>
                  Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1056#1072#1073#1086#1090#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1050'-'#1074#1086
                  Width = 50
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'MEASURE_ABBREV'
                  Footer.FieldName = '_SUM_MEASURE_ABBREV'
                  Footer.Font.Charset = DEFAULT_CHARSET
                  Footer.Font.Color = clWindowText
                  Footer.Font.Height = -9
                  Footer.Font.Name = 'Microsoft Sans Serif'
                  Footer.Font.Style = []
                  Footer.ValueType = fvtFieldValue
                  Footers = <>
                  Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1056#1072#1073#1086#1090#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1052'.'#1077#1076'.'
                  Width = 29
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'QUANTITY_DIFF'
                  Footer.FieldName = '_SUM_QUANTITY_DIFF'
                  Footer.Font.Charset = DEFAULT_CHARSET
                  Footer.Font.Color = clWindowText
                  Footer.Font.Height = -9
                  Footer.Font.Name = 'Microsoft Sans Serif'
                  Footer.Font.Style = []
                  Footer.ValueType = fvtFieldValue
                  Footers = <>
                  Tag = 806
                  Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1056#1072#1073#1086#1090#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1054#1090#1082#1083'. '#1084'.'#1077#1076'.'
                  Width = 50
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'QUANTITY_DEVIATION_PERCENT'
                  Footers = <>
                  Tag = 807
                  Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1056#1072#1073#1086#1090#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|  '#1054#1090#1082#1083'.   %'
                  Visible = False
                  Width = 50
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'SHIPMENT_STORE_IDENTIFIER'
                  Footers = <>
                  Tag = 8
                  Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1058#1055' '#1055#1088#1080#1077#1084'.'
                  Width = 40
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'ENTER_SH_STORE_PLAN_BEGIN_DATE'
                  Footers = <>
                  Tag = 8
                  Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1042#1088#1084' '#1048#1085#1090
                  Width = 31
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'ENTER_SH_STORE_DATE_DIFF'
                  Footers = <>
                  Tag = 8
                  Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1056#1079#1088#1074'.'
                  Width = 30
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'QUANTITY_INTERVAL_PCT'
                  Footers = <>
                  Tag = 9
                  Title.Caption = #1059#1052' '#1059#1054#1073' '#1050'-'#1074#1086' '#1079#1072' '#1054#1055#1042'/'#1054#1055#1044'|'#1054#1090#1082#1083'. '#1086#1090' '#1075#1088#1072#1085#1080#1094#1080
                  Visible = False
                  Width = 45
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'MIN_ORDER_QUANTITY'
                  Footers = <>
                  Tag = 9
                  Title.Caption = #1059#1052' '#1059#1054#1073' '#1050'-'#1074#1086' '#1079#1072' '#1054#1055#1042'/'#1054#1055#1044'|'#1043#1088#1072#1085#1080#1094#1080'|'#1052#1080#1085'.'
                  Width = 38
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'MAX_ORDER_QUANTITY'
                  Footers = <>
                  Tag = 9
                  Title.Caption = #1059#1052' '#1059#1054#1073' '#1050'-'#1074#1086' '#1079#1072' '#1054#1055#1042'/'#1054#1055#1044'|'#1043#1088#1072#1085#1080#1094#1080'|'#1052#1072#1082#1089'.'
                  Width = 39
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'MEASURE_ABBREV'
                  Footers = <>
                  Tag = 9
                  Title.Caption = #1059#1052' '#1059#1054#1073' '#1050'-'#1074#1086' '#1079#1072' '#1054#1055#1042'/'#1054#1055#1044'|'#1043#1088#1072#1085#1080#1094#1080'|'#1052'.'#1077#1076'.'
                  Visible = False
                  Width = 29
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'BALANCE_QUANTITY'
                  Footers = <>
                  Title.Caption = #1059#1052' '#1059#1054#1073'|'#1041#1072#1083#1072#1085#1089'. '#1082'-'#1074#1086
                  Visible = False
                  Width = 42
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'MIN_PRODUCT_NEED_BEGIN_DATE'
                  Footers = <>
                  Tag = 2
                  Title.Caption = #1057#1090#1072#1088#1090' '#1085#1072' ID '#1054#1055#1042'|'#1044#1072#1090#1072
                  Width = 31
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'PRODUCTION_START_DATE_DIFF'
                  Footers = <>
                  Tag = 2
                  Title.Caption = #1057#1090#1072#1088#1090' '#1085#1072' ID '#1054#1055#1042'|'#1056#1079#1088#1074'.'
                  Width = 30
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'START_STAGE_COEF'
                  Footers = <>
                  Tag = 2
                  Title.Caption = #1057#1090#1072#1088#1090' '#1085#1072' ID '#1054#1055#1042'|'#1050#1086#1077#1092'. '#1089#1090#1072#1088#1090
                  Width = 32
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'UNCOVERED_LINES'
                  Footer.FieldName = '_SUM_UNCOVERED_LINES'
                  Footer.Font.Charset = DEFAULT_CHARSET
                  Footer.Font.Color = clWindowText
                  Footer.Font.Height = -9
                  Footer.Font.Name = 'Microsoft Sans Serif'
                  Footer.Font.Style = []
                  Footer.ValueType = fvtFieldValue
                  Footers = <>
                  Tag = 2
                  Title.Caption = #1057#1090#1072#1088#1090' '#1085#1072' ID '#1054#1055#1042'|'#1053#1056
                  Width = 24
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'CONSUME_BEGIN_DATE'
                  Footers = <>
                  Tag = 3
                  Title.Caption = #1055#1086#1083#1079#1074#1072#1085#1077'|'#1042#1088#1084#1048#1085#1090
                  Visible = False
                  Width = 89
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'CONSUME_DATE_DIFF'
                  Footers = <>
                  Tag = 3
                  Title.Caption = #1055#1086#1083#1079#1074#1072#1085#1077'|'#1056#1079#1088#1074'. '#1076#1086' '#1085#1072#1095'.'
                  Visible = False
                  Width = 30
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'MAIN_DEPT_IDENTIFIER'
                  Footers = <>
                  Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' ID '#1054#1055#1042'|'#1058#1055
                  Width = 41
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'START_AFTER_LIMITING_DAYS'
                  Footers = <>
                  Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' ID '#1054#1055#1042'|'#1055#1077#1088#1080#1086#1076#1080'|'#1040
                  Width = 22
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'INITIAL_TREATMENT_WORKDAYS'
                  Footers = <>
                  Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' ID '#1054#1055#1042'|'#1055#1077#1088#1080#1086#1076#1080'|'#1055
                  Width = 22
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'PRODUCTION_WORKDAYS'
                  Footers = <>
                  Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' ID '#1054#1055#1042'|'#1055#1077#1088#1080#1086#1076#1080'|'#1056
                  Width = 22
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'PRODUCTION_WORKDAYS_PERCENT'
                  Footers = <>
                  Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' ID '#1054#1055#1042'|'#1055#1077#1088#1080#1086#1076#1080'|'#1054'%'
                  Title.Hint = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' %'
                  Width = 36
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'MAX_OP_DATE_POSITIVE_DIFF'
                  Footers = <>
                  Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' ID '#1054#1055#1042'|'#1054#1090#1082#1083#1042#1088#1084'|+'
                  Width = 25
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'MIN_OP_DATE_NEGATIVE_DIFF'
                  Footers = <>
                  Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' ID '#1054#1055#1042'|'#1054#1090#1082#1083#1042#1088#1084'|'#8212
                  Width = 25
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'DAMAGES_STATE_CODE'
                  Footers = <>
                  Title.Caption = #1053#1077#1076#1086#1087'. '#1054#1090#1082#1083'.'
                  Title.Orientation = tohVertical
                  Width = 14
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'WASTING_ORDER_IDENTIFIER'
                  Footers = <>
                  Title.Caption = #1054#1055#1042' '#1054#1089#1085#1086#1074#1077#1085'|ID '#1054#1055#1042
                  Visible = False
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
          object pnlTreeView: TPanel
            Left = 0
            Top = 0
            Width = 993
            Height = 501
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object grdProductionOrdersTree: TAbmesDBGrid
              Left = 0
              Top = 0
              Width = 993
              Height = 501
              Align = alClient
              DataSource = dsGridData
              DynProps = <>
              FooterParams.Color = 15258325
              GridLineParams.VertEmptySpaceStyle = dessNonEh
              HorzScrollBar.VisibleMode = sbNeverShowEh
              Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
              OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch]
              ReadOnly = True
              TabOrder = 0
              TitleParams.MultiTitle = True
              TitleParams.VTitleMargin = 8
              OnDblClick = grdMainDblClick
              OnDrawColumnCell = grdProductionOrdersTreeDrawColumnCell
              OnGetCellParams = grdMainGetCellParams
              Columns = <
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'SALE_IDENTIFICATION'
                  Footers = <>
                  Title.Caption = 'ID '#1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1042#1098#1090#1088#1077#1096#1077#1085' ('#1054#1055#1042')'
                  Width = 189
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'ML_STATE_CODE'
                  Footers = <>
                  Title.Caption = #1057#1090#1072#1090#1091#1089
                  Title.Orientation = tohVertical
                  Width = 26
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'IS_SALE'
                  Footers = <>
                  Title.Caption = #1054#1073#1074'. '#1089' '#1054#1055#1055
                  Title.Hint = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1087#1088#1086#1076#1072#1078#1073#1080
                  Title.Orientation = tohVertical
                  Width = 14
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'PRIORITY_FULL_NAME'
                  Footers = <>
                  Title.Caption = #1054#1089#1085'. '#1055#1088'.'
                  Title.Orientation = tohVertical
                  Width = 16
                end
                item
                  CellButtons = <>
                  Color = 15461355
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'WORK_PRIORITY_NO'
                  Footers = <>
                  Title.Caption = #1054#1087'.   '#1055#1088'.'
                  Title.Orientation = tohVertical
                  Width = 24
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'PRODUCT_NAME'
                  Footers = <>
                  Tag = 4
                  Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
                  Width = 114
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'PRODUCT_OTHER_NAME'
                  Footers = <>
                  Tag = 5
                  Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1044#1088#1091#1075#1080' '#1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088#1080' '#1085#1072' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
                  Visible = False
                  Width = 114
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'QUANTITY'
                  Footer.FieldName = '_SUM_QUANTITY'
                  Footer.Font.Charset = DEFAULT_CHARSET
                  Footer.Font.Color = clWindowText
                  Footer.Font.Height = -9
                  Footer.Font.Name = 'Microsoft Sans Serif'
                  Footer.Font.Style = []
                  Footer.ValueType = fvtFieldValue
                  Footers = <>
                  Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1056#1072#1073#1086#1090#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1050'-'#1074#1086
                  Width = 50
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'MEASURE_ABBREV'
                  Footer.FieldName = '_SUM_MEASURE_ABBREV'
                  Footer.Font.Charset = DEFAULT_CHARSET
                  Footer.Font.Color = clWindowText
                  Footer.Font.Height = -9
                  Footer.Font.Name = 'Microsoft Sans Serif'
                  Footer.Font.Style = []
                  Footer.ValueType = fvtFieldValue
                  Footers = <>
                  Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1056#1072#1073#1086#1090#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1052'.'#1077#1076'.'
                  Width = 29
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'QUANTITY_DIFF'
                  Footer.FieldName = '_SUM_QUANTITY_DIFF'
                  Footer.Font.Charset = DEFAULT_CHARSET
                  Footer.Font.Color = clWindowText
                  Footer.Font.Height = -9
                  Footer.Font.Name = 'Microsoft Sans Serif'
                  Footer.Font.Style = []
                  Footer.ValueType = fvtFieldValue
                  Footers = <>
                  Tag = 806
                  Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1056#1072#1073#1086#1090#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1054#1090#1082#1083'. '#1084'.'#1077#1076'.'
                  Width = 50
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'QUANTITY_DEVIATION_PERCENT'
                  Footers = <>
                  Tag = 807
                  Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1056#1072#1073#1086#1090#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|  '#1054#1090#1082#1083'.   %'
                  Visible = False
                  Width = 50
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'SHIPMENT_STORE_IDENTIFIER'
                  Footers = <>
                  Tag = 8
                  Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1058#1055' '#1055#1088#1080#1077#1084'.'
                  Width = 40
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'ENTER_SH_STORE_PLAN_BEGIN_DATE'
                  Footers = <>
                  Tag = 8
                  Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1042#1088#1084' '#1048#1085#1090
                  Width = 31
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'ENTER_SH_STORE_DATE_DIFF'
                  Footers = <>
                  Tag = 8
                  Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1056#1079#1088#1074'.'
                  Width = 30
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'QUANTITY_INTERVAL_PCT'
                  Footers = <>
                  Tag = 9
                  Title.Caption = #1059#1052' '#1059#1054#1073' '#1050'-'#1074#1086' '#1079#1072' '#1054#1055#1042'/'#1054#1055#1044'|'#1054#1090#1082#1083'. '#1086#1090' '#1075#1088#1072#1085#1080#1094#1080
                  Visible = False
                  Width = 45
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'MIN_ORDER_QUANTITY'
                  Footers = <>
                  Tag = 9
                  Title.Caption = #1059#1052' '#1059#1054#1073' '#1050'-'#1074#1086' '#1079#1072' '#1054#1055#1042'/'#1054#1055#1044'|'#1043#1088#1072#1085#1080#1094#1080'|'#1052#1080#1085'.'
                  Visible = False
                  Width = 38
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'MAX_ORDER_QUANTITY'
                  Footers = <>
                  Tag = 9
                  Title.Caption = #1059#1052' '#1059#1054#1073' '#1050'-'#1074#1086' '#1079#1072' '#1054#1055#1042'/'#1054#1055#1044'|'#1043#1088#1072#1085#1080#1094#1080'|'#1052#1072#1082#1089'.'
                  Visible = False
                  Width = 39
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'MEASURE_ABBREV'
                  Footers = <>
                  Tag = 9
                  Title.Caption = #1059#1052' '#1059#1054#1073' '#1050'-'#1074#1086' '#1079#1072' '#1054#1055#1042'/'#1054#1055#1044'|'#1043#1088#1072#1085#1080#1094#1080'|'#1052'.'#1077#1076'.'
                  Visible = False
                  Width = 29
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'BALANCE_QUANTITY'
                  Footers = <>
                  Title.Caption = #1059#1052' '#1059#1054#1073'|'#1041#1072#1083#1072#1085#1089'. '#1082'-'#1074#1086
                  Visible = False
                  Width = 42
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'MIN_PRODUCT_NEED_BEGIN_DATE'
                  Footers = <>
                  Tag = 2
                  Title.Caption = #1057#1090#1072#1088#1090' '#1085#1072' ID '#1054#1055#1042'|'#1044#1072#1090#1072
                  Width = 31
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'PRODUCTION_START_DATE_DIFF'
                  Footers = <>
                  Tag = 2
                  Title.Caption = #1057#1090#1072#1088#1090' '#1085#1072' ID '#1054#1055#1042'|'#1056#1079#1088#1074'.'
                  Width = 30
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'START_STAGE_COEF'
                  Footers = <>
                  Tag = 2
                  Title.Caption = #1057#1090#1072#1088#1090' '#1085#1072' ID '#1054#1055#1042'|'#1050#1086#1077#1092'. '#1089#1090#1072#1088#1090
                  Width = 32
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'UNCOVERED_LINES'
                  Footer.FieldName = '_SUM_UNCOVERED_LINES'
                  Footer.Font.Charset = DEFAULT_CHARSET
                  Footer.Font.Color = clWindowText
                  Footer.Font.Height = -9
                  Footer.Font.Name = 'Microsoft Sans Serif'
                  Footer.Font.Style = []
                  Footer.ValueType = fvtFieldValue
                  Footers = <>
                  Tag = 2
                  Title.Caption = #1057#1090#1072#1088#1090' '#1085#1072' ID '#1054#1055#1042'|'#1053#1056
                  Width = 24
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'CONSUME_BEGIN_DATE'
                  Footers = <>
                  Tag = 3
                  Title.Caption = #1055#1086#1083#1079#1074#1072#1085#1077'|'#1042#1088#1084#1048#1085#1090
                  Visible = False
                  Width = 89
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'CONSUME_DATE_DIFF'
                  Footers = <>
                  Tag = 3
                  Title.Caption = #1055#1086#1083#1079#1074#1072#1085#1077'|'#1056#1079#1088#1074'. '#1076#1086' '#1085#1072#1095'.'
                  Visible = False
                  Width = 30
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'MAIN_DEPT_IDENTIFIER'
                  Footers = <>
                  Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' ID '#1054#1055#1042'|'#1058#1055
                  Width = 41
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'START_AFTER_LIMITING_DAYS'
                  Footers = <>
                  Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' ID '#1054#1055#1042'|'#1055#1077#1088#1080#1086#1076#1080'|'#1040
                  Width = 22
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'INITIAL_TREATMENT_WORKDAYS'
                  Footers = <>
                  Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' ID '#1054#1055#1042'|'#1055#1077#1088#1080#1086#1076#1080'|'#1055
                  Width = 22
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'PRODUCTION_WORKDAYS'
                  Footers = <>
                  Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' ID '#1054#1055#1042'|'#1055#1077#1088#1080#1086#1076#1080'|'#1056
                  Width = 22
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'PRODUCTION_WORKDAYS_PERCENT'
                  Footers = <>
                  Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' ID '#1054#1055#1042'|'#1055#1077#1088#1080#1086#1076#1080'|'#1054'%'
                  Title.Hint = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' %'
                  Width = 36
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'MAX_OP_DATE_POSITIVE_DIFF'
                  Footers = <>
                  Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' ID '#1054#1055#1042'|'#1054#1090#1082#1083#1042#1088#1084'|+'
                  Width = 25
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'MIN_OP_DATE_NEGATIVE_DIFF'
                  Footers = <>
                  Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' ID '#1054#1055#1042'|'#1054#1090#1082#1083#1042#1088#1084'|'#8212
                  Width = 25
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'DAMAGES_STATE_CODE'
                  Footers = <>
                  Title.Caption = #1053#1054
                  Title.Orientation = tohVertical
                  Width = 14
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
        end
        object tsSysInfo: TTabSheet
          Caption = #1057#1080#1089#1090#1077#1084#1085#1072' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
          ImageIndex = 1
          object grdSysInfo: TAbmesDBGrid
            Left = 0
            Top = 1
            Width = 993
            Height = 500
            Align = alClient
            DataSource = dsGridData
            DynProps = <>
            FooterRowCount = 1
            FooterParams.Color = 15258325
            GridLineParams.VertEmptySpaceStyle = dessNonEh
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch]
            ReadOnly = True
            TabOrder = 0
            TitleParams.MultiTitle = True
            TitleParams.VTitleMargin = 14
            OnDblClick = grdSysInfoDblClick
            OnDrawColumnCell = grdSysInfoDrawColumnCell
            OnGetCellParams = grdSysInfoGetCellParams
            OnSortMarkingChanged = grdSysInfoSortMarkingChanged
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'ML_STATE_CODE'
                Footers = <>
                Title.Caption = #1057#1090#1072#1090#1091#1089
                Title.Orientation = tohVertical
                Width = 26
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'IS_SALE'
                Footers = <>
                Title.Caption = #1054#1073#1074'. '#1089' '#1054#1055#1055
                Title.Hint = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1087#1088#1086#1076#1072#1078#1073#1080
                Title.Orientation = tohVertical
                Width = 13
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_PRODUCTION_ORDER_POSITION'
                Footers = <>
                Title.Caption = #1055#1086#1079'. '#1085#1072' '#1054#1055#1042
                Title.Orientation = tohVertical
                Width = 19
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'SALE_IDENTIFICATION'
                Footers = <>
                Title.Caption = 
                  '    ID '#1054#1088#1076#1077#1088' '#1079#1072'               '#1055#1088#1086#1094#1077#1089'               '#1042#1098#1090#1088#1077#1096#1077#1085'     ' +
                  '  ('#1054#1055#1042') '
                Width = 92
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'CREATE_DATE'
                Footers = <>
                Title.Caption = #1057#1098#1079#1076#1072#1076#1077#1085'|'#1044#1072#1090#1072
                Width = 69
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'CREATE_TIME'
                Footers = <>
                Title.Caption = #1057#1098#1079#1076#1072#1076#1077#1085'|'#1063#1072#1089
                Width = 32
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'CREATE_EMPLOYEE_ABBREV'
                Footers = <>
                Title.Caption = #1057#1098#1079#1076#1072#1076#1077#1085'|'#1057#1083#1091#1078
                Width = 31
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'CHANGE_DATE'
                Footers = <>
                Title.Caption = #1055#1086#1089#1083#1077#1076#1085#1072' '#1087#1088#1086#1084#1103#1085#1072'|'#1044#1072#1090#1072
                Width = 69
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'CHANGE_TIME'
                Footers = <>
                Title.Caption = #1055#1086#1089#1083#1077#1076#1085#1072' '#1087#1088#1086#1084#1103#1085#1072'|'#1063#1072#1089
                Width = 32
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'CHANGE_EMPLOYEE_ABBREV'
                Footers = <>
                Title.Caption = #1055#1086#1089#1083#1077#1076#1085#1072' '#1087#1088#1086#1084#1103#1085#1072'|'#1057#1083#1091#1078
                Width = 31
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'FINISH_DATE'
                Footers = <>
                Title.Caption = #1055#1088#1080#1082#1083#1102#1095#1077#1085'|'#1044#1072#1090#1072
                Width = 69
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'FINISH_TIME'
                Footers = <>
                Title.Caption = #1055#1088#1080#1082#1083#1102#1095#1077#1085'|'#1063#1072#1089
                Width = 32
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'FINISH_EMPLOYEE_ABBREV'
                Footers = <>
                Title.Caption = #1055#1088#1080#1082#1083#1102#1095#1077#1085'|'#1057#1083#1091#1078
                Width = 31
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'ANNUL_DATE'
                Footers = <>
                Title.Caption = #1040#1085#1091#1083#1080#1088#1072#1085'|'#1044#1072#1090#1072
                Width = 69
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'ANNUL_TIME'
                Footers = <>
                Title.Caption = #1040#1085#1091#1083#1080#1088#1072#1085'|'#1063#1072#1089
                Width = 32
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'ANNUL_EMPLOYEE_ABBREV'
                Footers = <>
                Title.Caption = #1040#1085#1091#1083#1080#1088#1072#1085'|'#1057#1083#1091#1078
                Width = 31
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'LIMITING_DATE'
                Footers = <>
                Title.Caption = #1056'-'#1052#1054#1044#1045#1083'|'#1040#1082#1090#1080#1074#1080#1088#1072#1085'|'#1044#1072#1090#1072
                Width = 68
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'LIMITING_TIME'
                Footers = <>
                Title.Caption = #1056'-'#1052#1054#1044#1045#1083'|'#1040#1082#1090#1080#1074#1080#1088#1072#1085'|'#1063#1072#1089
                Width = 32
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'LIMITING_EMPLOYEE_NAME'
                Footers = <>
                Title.Caption = #1056'-'#1052#1054#1044#1045#1083'|'#1040#1082#1090#1080#1074#1080#1088#1072#1085'|'#1057#1083#1091#1078
                Width = 31
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'MODEL_CLOSE_DATE'
                Footers = <>
                Title.Caption = #1056'-'#1052#1054#1044#1045#1083'|'#1055#1088#1080#1082#1083#1102#1095#1077#1085'|'#1044#1072#1090#1072
                Width = 68
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'MODEL_CLOSE_TIME'
                Footers = <>
                Title.Caption = #1056'-'#1052#1054#1044#1045#1083'|'#1055#1088#1080#1082#1083#1102#1095#1077#1085'|'#1063#1072#1089
                Width = 32
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'MODEL_CLOSE_EMPLOYEE_NAME'
                Footers = <>
                Title.Caption = #1056'-'#1052#1054#1044#1045#1083'|'#1055#1088#1080#1082#1083#1102#1095#1077#1085'|'#1057#1083#1091#1078
                Width = 30
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object pnlSysTop: TPanel
            Left = 0
            Top = 0
            Width = 993
            Height = 1
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
          end
        end
      end
    end
    object pnlCommon: TPanel
      Left = 232
      Top = 4
      Width = 777
      Height = 24
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 1
      object navData2: TDBColorNavigator
        Left = 0
        Top = 0
        Width = 96
        Height = 24
        DataSource = dsGridData
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Align = alLeft
        Flat = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        BeforeAction = navDataBeforeAction
      end
      object pnlFilter2: TPanel
        Left = 121
        Top = 0
        Width = 24
        Height = 24
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object btnFilter2: TSpeedButton
          Left = 0
          Top = 0
          Width = 24
          Height = 24
          Action = actFilter
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
            FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
            FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0000000000FFFFFF00000000000000000000000000FF00FF00000000000000
            00000000000000000000000000000000000000000000FF00FF00000000000000
            00000000000000000000000000000000000000000000FF00FF00000000000000
            0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
            FF000000000000000000000000000000000000000000FF00FF00000000000000
            0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
            FF000000000000000000000000000000000000000000FF00FF00000000000000
            0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
            FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
            FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
            FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000000000000000000000000000000000000000FF00FF00000000000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
            00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
            0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
            00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          ParentShowHint = False
          ShowHint = True
        end
      end
      object tbCommon: TToolBar
        Left = 145
        Top = 0
        Width = 281
        Height = 24
        Align = alLeft
        ButtonHeight = 24
        ButtonWidth = 24
        Caption = 'tlbTopGridButtons'
        Images = dmMain.ilActions
        TabOrder = 2
        object sepBeforePrintButtonOnToolbar: TToolButton
          Left = 0
          Top = 0
          Width = 8
          Caption = 'sepBeforePrintButtonOnToolbar'
          ImageIndex = 84
          Style = tbsSeparator
        end
        object btnExcelExport2: TToolButton
          Left = 8
          Top = 0
          Action = actExcelExport
          ParentShowHint = False
          ShowHint = True
        end
        object btnPrint: TToolButton
          Left = 32
          Top = 0
          Action = actPrint
        end
        object sepBeforeDocumentationButton: TToolButton
          Left = 56
          Top = 0
          Width = 8
          Caption = 'sepBeforeDocumentationButton'
          ImageIndex = 3
          Style = tbsSeparator
        end
        object btnVIM: TToolButton
          Left = 64
          Top = 0
          Action = actProductVIM
          ParentShowHint = False
          ShowHint = True
        end
        object sepProductDocs: TToolButton
          Left = 88
          Top = 0
          Width = 8
          Caption = 'sepProductDocs'
          ImageIndex = 32
          Style = tbsSeparator
        end
        object pnlProductDocsCaption: TPanel
          Left = 96
          Top = 0
          Width = 31
          Height = 24
          Align = alLeft
          BevelOuter = bvNone
          Caption = #1059#1054#1073
          TabOrder = 0
        end
        object btnProductDocs: TSpeedButton
          Left = 127
          Top = 0
          Width = 37
          Height = 24
          Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1059#1087#1088#1072#1074#1083#1103#1077#1084#1080#1103' '#1054#1073#1077#1082#1090' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1080#1103' '#1054#1055#1042
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
          OnClick = btnProductDocsClick
        end
        object sepSaleDocs: TToolButton
          Left = 164
          Top = 0
          Width = 8
          Caption = 'sepSaleDocs'
          ImageIndex = 31
          Style = tbsSeparator
        end
        object pnlSaleDocsCaption: TPanel
          Left = 172
          Top = 0
          Width = 31
          Height = 24
          Align = alLeft
          BevelOuter = bvNone
          Caption = #1054#1055#1042
          TabOrder = 1
        end
        object btnSaleDocs: TSpeedButton
          Left = 203
          Top = 0
          Width = 37
          Height = 24
          Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1080#1103' '#1054#1055#1042
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
          OnClick = btnSaleDocsClick
        end
      end
      object tlbToggleButtons: TToolBar
        Left = 539
        Top = 0
        Width = 238
        Height = 24
        Align = alRight
        AutoSize = True
        ButtonHeight = 24
        ButtonWidth = 24
        Caption = 'tlbToggleButtons'
        Images = dmMain.ilActions
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        object btnToggleTreeView: TSpeedButton
          Left = 0
          Top = 0
          Width = 113
          Height = 24
          Action = actToggleTreeView
          AllowAllUp = True
          GroupIndex = 6
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF000000000000000000000000000000000000000000FF00
            FF000000000000000000FF00FF000000000000000000FF00FF00FF00FF000000
            000000000000000000000000000000FFFF0000FFFF0000FFFF0000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF000000000000FFFF0000FFFF000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF000000000000000000000000000000000000000000FF00
            FF000000000000000000FF00FF000000000000000000FF00FF00FF00FF000000
            000000000000000000000000000000FFFF0000FFFF0000FFFF0000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF000000000000FFFF0000FFFF000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            0000000000000000000000000000FF00FF000000000000000000FF00FF000000
            00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF000000000000FF
            FF0000FFFF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000FF
            FF0000FFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Transparent = False
        end
        object btnShowInactive: TToolButton
          Left = 113
          Top = 0
          Action = actShowInactive
        end
        object sepToggleTreeView: TToolButton
          Left = 137
          Top = 0
          Width = 8
          Style = tbsSeparator
        end
        object btnToggleOwnerConsumer: TSpeedButton
          Tag = 2
          Left = 145
          Top = 0
          Width = 23
          Height = 24
          Hint = #1055#1088#1077#1074#1082#1083#1102#1095#1074#1072' '#1055#1086#1088#1098#1095#1080#1090#1077#1083' / '#1058#1055' '#1055#1086#1083#1079#1074#1072#1090#1077#1083
          AllowAllUp = True
          GroupIndex = 4
          Flat = True
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
          Transparent = False
        end
        object btnToggleProductDisplay: TSpeedButton
          Tag = 4
          Left = 168
          Top = 0
          Width = 24
          Height = 24
          Hint = 
            #1055#1088#1077#1074#1082#1083#1102#1095#1074#1072' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090'/'#1044#1088#1091#1075#1080' '#1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088#1080' '#1085#1072' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077 +
            #1082#1090
          AllowAllUp = True
          GroupIndex = 2
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00FF
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF0000000000FF0000FF00
            00FF0000FF0000FF0000000000FF00FFFF00FFFFFF00FFFF00FFFF00FFFF00FF
            FF00FF0000FF0000000000FF0000FF0000FF0000FF0000FF0000000000FF00FF
            FF80808000FFFFFF00FFFF00FFFF00FFFF00FF0000FF00000000000000000000
            00000000000000000000000000FF00FFFF80808080808000FFFFFF00FFFF00FF
            FF00FF0000FF0000FF0000000000FF0000FF0000FF0000000000FF0000FF00FF
            FF80808080808000FFFFFF00FFFF00FFFF00FF0000FF0000FF00000000000000
            00FF0000000000000000FF0000FF00FFFF80808080808000FFFFFF00FFFF00FF
            FF00FF0000FF0000FF0000FF0000000000000000000000FF0000FF0000FF00FF
            FF80808000FFFF00FFFFFF00FFFF00FFFF00FF0000FF0000FF0000FF0000FF00
            00000000FF0000FF0000FF0000FF00FFFF80808080808000FFFFFF00FFFF00FF
            FF00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00FF
            FF00FFFF80808000FFFFFF00FFFF00FFFF00FFFF00FFFF0000FF0000FF0000FF
            0000FF0000FF0000FF0000FF0000FF000000FFFF00FFFF00FFFFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
            00FF000000FFFF00FFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF0000FF
            0000FF0000FF0000FF0000FF0000FF0000FF0000FF000000FFFFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Transparent = False
        end
        object btnToggleQuantityDiff: TSpeedButton
          Tag = 6
          Left = 192
          Top = 0
          Width = 23
          Height = 24
          Hint = #1055#1088#1077#1074#1082#1083#1102#1095#1074#1072' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' '#1084'.'#1077#1076'./%'
          AllowAllUp = True
          GroupIndex = 5
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00800000008000
            0000FF00FF008000000080000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080000000FF00FF00FF00
            FF008000000080000000FF00FF0080000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080000000FF00FF00FF00
            FF00FF00FF0080000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080000000FF00FF00FF00
            FF00FF00FF008000000080000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080000000FF00
            FF00FF00FF008000000080000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008000
            000080000000FF00FF00FF00FF0080000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0040600000FF00FF00FF00FF004060000040600000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0040600000FF00FF00FF00FF0040600000FF00FF0040600000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0040600000FF00FF0040600000FF00FF0040600000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0040600000FF00FF004060000040600000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF004060000040600000FF00FF0040600000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0040600000FF00FF0040600000FF00FF0040600000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0040600000FF00FF0040600000FF00FF0040600000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF004060000040600000FF00FF00FF00FF0040600000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Transparent = False
        end
        object btnToggleMinMaxQuantity: TSpeedButton
          Tag = 8
          Left = 215
          Top = 0
          Width = 23
          Height = 24
          Hint = #1055#1086#1082#1072#1079#1074#1072'/'#1089#1082#1088#1080#1074#1072' '#1082'-'#1074#1072' '#1086#1090' '#1059#1052' '#1059#1054#1073
          AllowAllUp = True
          GroupIndex = 8
          Caption = #1059#1052
          Flat = True
          Transparent = False
        end
      end
      object navData2Refresh: TDBColorNavigator
        Left = 96
        Top = 0
        Width = 25
        Height = 24
        DataSource = dsGridData
        VisibleButtons = [nbRefresh]
        Align = alLeft
        Flat = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        BeforeAction = navDataBeforeAction
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 136
    Top = 152
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conMfgReports
    Filtered = True
    FieldDefs = <
      item
        Name = 'SALE_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SALE_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ML_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ML_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SALE_IDENTIFICATION'
        DataType = ftWideString
        Size = 81
      end
      item
        Name = 'SALE_ORDER_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SALE_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ML_STATE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRIORITY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRIORITY_NO'
        DataType = ftFloat
      end
      item
        Name = 'PRIORITY_FULL_NAME'
        DataType = ftWideString
        Size = 93
      end
      item
        Name = 'WORK_PRIORITY_NO'
        DataType = ftFloat
      end
      item
        Name = 'WORK_PRIORITY_FULL_NAME'
        DataType = ftWideString
        Size = 93
      end
      item
        Name = 'OWNER_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'OWNER_COMPANY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'OWNER_NAME'
        DataType = ftWideString
        Size = 41
      end
      item
        Name = 'PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'PRODUCT_NO'
        DataType = ftFloat
      end
      item
        Name = 'HAS_DOCUMENTATION'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_OTHER_NAME'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'MEASURE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'QUANTITY_IN'
        DataType = ftFloat
      end
      item
        Name = 'QUANTITY_DIFF'
        DataType = ftFloat
      end
      item
        Name = 'QUANTITY_DEVIATION_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'ENTER_SH_STORE_PLAN_BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'ENTER_SH_STORE_PLAN_END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'START_STAGE_COEF'
        DataType = ftFloat
      end
      item
        Name = 'UNCOVERED_LINES'
        DataType = ftFloat
      end
      item
        Name = 'MAIN_DEPT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MAIN_DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'CREATE_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CREATE_EMPLOYEE_ABBREV'
        DataType = ftWideString
        Size = 49
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
        Name = 'CHANGE_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CHANGE_EMPLOYEE_ABBREV'
        DataType = ftWideString
        Size = 49
      end
      item
        Name = 'CHANGE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'CHANGE_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'FINISH_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'FINISH_EMPLOYEE_ABBREV'
        DataType = ftWideString
        Size = 49
      end
      item
        Name = 'FINISH_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'FINISH_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'ANNUL_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ANNUL_EMPLOYEE_ABBREV'
        DataType = ftWideString
        Size = 49
      end
      item
        Name = 'ANNUL_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'ANNUL_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'LIMITING_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'LIMITING_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'LIMITING_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'LIMITING_EMPLOYEE_NAME'
        DataType = ftWideString
        Size = 49
      end
      item
        Name = 'MODEL_CLOSE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'MODEL_CLOSE_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'MODEL_CLOSE_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MODEL_CLOSE_EMPLOYEE_NAME'
        DataType = ftWideString
        Size = 49
      end
      item
        Name = 'IS_SALE'
        DataType = ftFloat
      end
      item
        Name = 'MIN_PRODUCT_NEED_BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'IS_WASTE_COMPENSATOR'
        DataType = ftFloat
      end
      item
        Name = 'HAS_WASTE'
        DataType = ftFloat
      end
      item
        Name = 'SHIPMENT_STORE_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'PRODUCTION_START_DATE_DIFF'
        DataType = ftFloat
      end
      item
        Name = 'ENTER_SH_STORE_DATE_DIFF'
        DataType = ftFloat
      end
      item
        Name = 'INITIAL_TREATMENT_WORKDAYS'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCTION_WORKDAYS'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCTION_WORKDAYS_PERCENT'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'MAX_OP_DATE_POSITIVE_DIFF'
        DataType = ftFloat
      end
      item
        Name = 'MIN_OP_DATE_NEGATIVE_DIFF'
        DataType = ftFloat
      end
      item
        Name = 'CONSUMER_DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
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
        Name = 'PRODUCT_HAS_DOCUMENTATION'
        DataType = ftFloat
      end
      item
        Name = 'START_AFTER_LIMITING_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'CONSUME_BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'CONSUME_END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'CONSUME_DATE_DIFF'
        DataType = ftFloat
      end
      item
        Name = 'DAMAGES_STATE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'HAS_WASTE_COMPENSATORS'
        DataType = ftFloat
      end
      item
        Name = 'WASTING_SALE_OBJ_PK'
        DataType = ftWideString
        Size = 81
      end
      item
        Name = 'SALE_OBJECT_PK'
        DataType = ftWideString
        Size = 81
      end
      item
        Name = 'MIN_ORDER_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'MAX_ORDER_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'BALANCE_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'WASTING_ORDER_IDENTIFIER'
        DataType = ftWideString
        Size = 188
      end
      item
        Name = 'QUANTITY_INTERVAL_PCT'
        Attributes = [faReadonly]
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 'PRIORITY_NO;WORK_PRIORITY_NO;SALE_IDENTIFICATION'
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'TREE_SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TREE_SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_BASE_TYPE_CODE'
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
        Name = 'PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PROD_START_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PROD_START_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PROD_START_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PROD_START_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PROD_START_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PROD_START_PLAN_END_DATE'
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
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_ML_STATE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_ML_STATE_CODE'
        ParamType = ptInput
        Value = '7'
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_SH_STORE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_SH_STORE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_SH_STORE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_SH_STORE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CONSUME_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CONSUME_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CONSUME_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CONSUME_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_WASTE_COMPENSATOR_STATUS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_WASTE_COMPENSATOR_STATUS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_WASTE_COMPENSATOR_STATUS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'WASTING_SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WASTING_SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WASTING_SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WASTING_SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_WASTE_STATUS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'HAS_WASTE_STATUS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'FILTER_UNCOVERED_LINES_STATE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'FILTER_UNCOVERED_LINES_STATE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'FILTER_UNCOVERED_LINES_STATE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_SALE_STATE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_SALE_STATE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'OWNER_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OWNER_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SALE_SHIPMENT_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SALE_SHIPMENT_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SALE_SHIPMENT_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SALE_SHIPMENT_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_SALE_STATE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'OWNER_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OWNER_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MODEL_DEVELOPMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MODEL_DEVELOPMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OKIDU_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OKIDU_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS_2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS_3'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS_4'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_PRODUCTION_WORKDAYS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_PRODUCTION_WORKDAYS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_PRODUCTION_WORKDAYS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_PRODUCTION_WORKDAYS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_OP_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_OP_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_OP_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_OP_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_OP_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_OP_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_PRODUCTION_START_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_PRODUCTION_START_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_PRODUCTION_START_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_PRODUCTION_START_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_ENTER_SH_STORE_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_ENTER_SH_STORE_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_ENTER_SH_STORE_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_ENTER_SH_STORE_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_CONSUME_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_CONSUME_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_CONSUME_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_CONSUME_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DAMAGES_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DAMAGES_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DAMAGES_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_UNCOVERED_LINES'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTION_DEPTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_OPERATION_DEPTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_SHIPMENT_STORES'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_CONSUMER_DEPTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_PRODUCTION_WORKDAYS_PERCENT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_PRODUCTION_WORKDAYS_PERCENT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'GET_SALE_OBJECT_TREE'
        ParamType = ptUnknown
        Value = '0'
      end>
    ProviderName = 'prvProductionOrders'
    OnCalcFields = cdsGridDataCalcFields
    OnFilterRecord = cdsGridDataFilterRecord
    Left = 104
    Top = 152
    object cdsGridDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object cdsGridDataSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
    end
    object cdsGridDataML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
    end
    object cdsGridDataML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
    end
    object cdsGridDataIS_WASTE_COMPENSATOR: TAbmesFloatField
      FieldName = 'IS_WASTE_COMPENSATOR'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataHAS_WASTE: TAbmesFloatField
      FieldName = 'HAS_WASTE'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataSALE_IDENTIFICATION: TAbmesWideStringField
      FieldName = 'SALE_IDENTIFICATION'
      Size = 81
    end
    object cdsGridDataWASTING_ORDER_IDENTIFIER: TAbmesWideStringField
      FieldName = 'WASTING_ORDER_IDENTIFIER'
      Size = 188
    end
    object cdsGridDataSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
    end
    object cdsGridDataSALE_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_TYPE_CODE'
    end
    object cdsGridDataML_STATE_CODE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'ML_STATE_CODE'
      OnGetText = cdsGridDataML_STATE_CODEGetText
    end
    object cdsGridDataPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
    end
    object cdsGridDataPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
    object cdsGridDataPRIORITY_FULL_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_FULL_NAME'
      Size = 93
    end
    object cdsGridDataWORK_PRIORITY_NO: TAbmesFloatField
      FieldName = 'WORK_PRIORITY_NO'
    end
    object cdsGridDataWORK_PRIORITY_FULL_NAME: TAbmesWideStringField
      FieldName = 'WORK_PRIORITY_FULL_NAME'
      Size = 93
    end
    object cdsGridDataOWNER_NAME: TAbmesWideStringField
      FieldName = 'OWNER_NAME'
      Size = 41
    end
    object cdsGridDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsGridDataPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsGridDataPRODUCT_NO: TAbmesFloatField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'PRODUCT_NO'
    end
    object cdsGridDataPRODUCT_OTHER_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_OTHER_NAME'
      Size = 250
    end
    object cdsGridDataMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object cdsGridDataMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridDataQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object cdsGridDataQUANTITY_IN: TAbmesFloatField
      FieldName = 'QUANTITY_IN'
    end
    object cdsGridDataQUANTITY_DIFF: TAbmesFloatField
      FieldName = 'QUANTITY_DIFF'
    end
    object cdsGridDataQUANTITY_DEVIATION_PERCENT: TAbmesFloatField
      FieldName = 'QUANTITY_DEVIATION_PERCENT'
      DisplayFormat = '0'
    end
    object cdsGridDataMIN_PRODUCT_NEED_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'MIN_PRODUCT_NEED_BEGIN_DATE'
    end
    object cdsGridDataENTER_SH_STORE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENTER_SH_STORE_PLAN_BEGIN_DATE'
      OnGetText = cdsGridDataENTER_SH_STORE_PLAN_BEGIN_DATEGetText
    end
    object cdsGridDataENTER_SH_STORE_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENTER_SH_STORE_PLAN_END_DATE'
    end
    object cdsGridDataSTART_STAGE_COEF: TAbmesFloatField
      FieldName = 'START_STAGE_COEF'
      OnGetText = cdsGridDataSTART_STAGE_COEFGetText
      DisplayFormat = ',0.##'
    end
    object cdsGridDataUNCOVERED_LINES: TAbmesFloatField
      FieldName = 'UNCOVERED_LINES'
      OnGetText = cdsGridDataUNCOVERED_LINESGetText
    end
    object cdsGridDataMAIN_DEPT_CODE: TAbmesFloatField
      FieldName = 'MAIN_DEPT_CODE'
    end
    object cdsGridDataMAIN_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MAIN_DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsGridDataCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object cdsGridDataCREATE_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'CREATE_EMPLOYEE_ABBREV'
      Size = 49
    end
    object cdsGridDataCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
      OnGetText = cdsGridDataCREATE_TIMEGetText
    end
    object cdsGridDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsGridDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object cdsGridDataCHANGE_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'CHANGE_EMPLOYEE_ABBREV'
      Size = 49
    end
    object cdsGridDataCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object cdsGridDataCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
      OnGetText = cdsGridDataCHANGE_TIMEGetText
    end
    object cdsGridDataFINISH_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'FINISH_EMPLOYEE_CODE'
    end
    object cdsGridDataFINISH_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'FINISH_EMPLOYEE_ABBREV'
      Size = 49
    end
    object cdsGridDataFINISH_DATE: TAbmesSQLTimeStampField
      FieldName = 'FINISH_DATE'
    end
    object cdsGridDataFINISH_TIME: TAbmesSQLTimeStampField
      FieldName = 'FINISH_TIME'
      OnGetText = cdsGridDataFINISH_TIMEGetText
    end
    object cdsGridDataANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object cdsGridDataANNUL_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'ANNUL_EMPLOYEE_ABBREV'
      Size = 49
    end
    object cdsGridDataANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object cdsGridDataANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
      OnGetText = cdsGridDataANNUL_TIMEGetText
    end
    object cdsGridDataLIMITING_DATE: TAbmesSQLTimeStampField
      FieldName = 'LIMITING_DATE'
    end
    object cdsGridDataLIMITING_TIME: TAbmesSQLTimeStampField
      FieldName = 'LIMITING_TIME'
      OnGetText = cdsGridDataLIMITING_TIMEGetText
    end
    object cdsGridDataLIMITING_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'LIMITING_EMPLOYEE_CODE'
    end
    object cdsGridDataLIMITING_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'LIMITING_EMPLOYEE_NAME'
      Size = 49
    end
    object cdsGridDataMODEL_CLOSE_DATE: TAbmesSQLTimeStampField
      FieldName = 'MODEL_CLOSE_DATE'
    end
    object cdsGridDataMODEL_CLOSE_TIME: TAbmesSQLTimeStampField
      FieldName = 'MODEL_CLOSE_TIME'
      OnGetText = cdsGridDataMODEL_CLOSE_TIMEGetText
    end
    object cdsGridDataMODEL_CLOSE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'MODEL_CLOSE_EMPLOYEE_CODE'
    end
    object cdsGridDataMODEL_CLOSE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'MODEL_CLOSE_EMPLOYEE_NAME'
      Size = 49
    end
    object cdsGridData_PRIORITY_COLOR: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_PRIORITY_COLOR'
      LookupDataSet = cdsPriorities
      LookupKeyFields = 'PRIORITY_CODE'
      LookupResultField = 'PRIORITY_COLOR'
      KeyFields = 'PRIORITY_CODE'
      Lookup = True
    end
    object cdsGridData_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_PRIORITY_BACKGROUND_COLOR'
      LookupDataSet = cdsPriorities
      LookupKeyFields = 'PRIORITY_CODE'
      LookupResultField = 'PRIORITY_BACKGROUND_COLOR'
      KeyFields = 'PRIORITY_CODE'
      Lookup = True
    end
    object cdsGridDataIS_SALE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'IS_SALE'
      DisplayFormat = '#'
      DisplayBoolValues = #1051';'#1057
      FieldValueType = fvtBoolean
    end
    object cdsGridData_SUM_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SUM_QUANTITY'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_SUM_QUANTITY_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SUM_QUANTITY_DIFF'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_SUM_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SUM_MEASURE_ABBREV'
      Size = 10
      Calculated = True
    end
    object cdsGridData_REPORT_TITLE: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_REPORT_TITLE'
      Size = 100
      Calculated = True
    end
    object cdsGridDataOWNER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OWNER_EMPLOYEE_CODE'
    end
    object cdsGridDataOWNER_COMPANY_CODE: TAbmesFloatField
      FieldName = 'OWNER_COMPANY_CODE'
    end
    object cdsGridDataSHIPMENT_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIPMENT_STORE_IDENTIFIER'
      Size = 46
    end
    object cdsGridDataPRODUCTION_START_DATE_DIFF: TAbmesFloatField
      FieldName = 'PRODUCTION_START_DATE_DIFF'
    end
    object cdsGridDataENTER_SH_STORE_DATE_DIFF: TAbmesFloatField
      FieldName = 'ENTER_SH_STORE_DATE_DIFF'
    end
    object cdsGridDataINITIAL_TREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'INITIAL_TREATMENT_WORKDAYS'
    end
    object cdsGridDataPRODUCTION_WORKDAYS: TAbmesFloatField
      FieldName = 'PRODUCTION_WORKDAYS'
    end
    object cdsGridDataPRODUCTION_WORKDAYS_PERCENT: TAbmesFloatField
      FieldName = 'PRODUCTION_WORKDAYS_PERCENT'
      DisplayFormat = '0'
    end
    object cdsGridDataMAX_OP_DATE_POSITIVE_DIFF: TAbmesFloatField
      FieldName = 'MAX_OP_DATE_POSITIVE_DIFF'
    end
    object cdsGridDataMIN_OP_DATE_NEGATIVE_DIFF: TAbmesFloatField
      FieldName = 'MIN_OP_DATE_NEGATIVE_DIFF'
    end
    object cdsGridDataCONSUMER_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'CONSUMER_DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsGridDataPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object cdsGridDataPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object cdsGridDataPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOCUMENTATION'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsGridDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsGridDataSTART_AFTER_LIMITING_DAYS: TAbmesFloatField
      FieldName = 'START_AFTER_LIMITING_DAYS'
    end
    object cdsGridData_QUANTITY_DEV_PRICE_OR_PERCENT: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_QUANTITY_DEV_PRICE_OR_PERCENT'
      Calculated = True
    end
    object cdsGridData_QUANTITY_DEV_LABEL: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_QUANTITY_DEV_LABEL'
      Size = 10
      Calculated = True
    end
    object cdsGridDataCONSUME_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'CONSUME_BEGIN_DATE'
      OnGetText = cdsGridDataCONSUME_BEGIN_DATEGetText
    end
    object cdsGridDataCONSUME_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'CONSUME_END_DATE'
    end
    object cdsGridDataCONSUME_DATE_DIFF: TAbmesFloatField
      FieldName = 'CONSUME_DATE_DIFF'
    end
    object cdsGridDataDAMAGES_STATE_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'DAMAGES_STATE_CODE'
      OnGetText = cdsGridDataDAMAGES_STATE_CODEGetText
    end
    object cdsGridDataHAS_WASTE_COMPENSATORS: TAbmesFloatField
      FieldName = 'HAS_WASTE_COMPENSATORS'
      FieldValueType = fvtBoolean
    end
    object cdsGridData_PRODUCTION_ORDER_POSITION: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_PRODUCTION_ORDER_POSITION'
      Size = 50
      Calculated = True
    end
    object cdsGridDataWASTING_SALE_OBJ_PK: TAbmesWideStringField
      FieldName = 'WASTING_SALE_OBJ_PK'
      Size = 81
    end
    object cdsGridDataSALE_OBJECT_PK: TAbmesWideStringField
      FieldName = 'SALE_OBJECT_PK'
      Size = 81
    end
    object cdsGridDataMIN_ORDER_QUANTITY: TAbmesFloatField
      DisplayLabel = #1052#1080#1085'. '#1082'-'#1074#1086' '#1079#1072' '#1054#1055#1042'/'#1054#1055#1044
      FieldName = 'MIN_ORDER_QUANTITY'
    end
    object cdsGridDataMAX_ORDER_QUANTITY: TAbmesFloatField
      DisplayLabel = #1052#1072#1082#1089'. '#1082'-'#1074#1086' '#1079#1072' '#1054#1055#1042'/'#1054#1055#1044
      FieldName = 'MAX_ORDER_QUANTITY'
    end
    object cdsGridDataBALANCE_QUANTITY: TAbmesFloatField
      DisplayLabel = #1041#1072#1083#1072#1085#1089#1080#1088#1072#1097#1086' '#1082'-'#1074#1086
      FieldName = 'BALANCE_QUANTITY'
    end
    object cdsGridDataQUANTITY_INTERVAL_PCT: TAbmesFloatField
      DisplayLabel = #1054#1090#1082#1083'. %'
      FieldName = 'QUANTITY_INTERVAL_PCT'
      ReadOnly = True
      OnGetText = cdsGridDataQUANTITY_INTERVAL_PCTGetText
      DisplayFormat = '+,0%;-,0%'
    end
    object cdsGridData_SUM_QUANTITY_RAW: TAggregateField
      FieldName = '_SUM_QUANTITY_RAW'
      Active = True
      DisplayName = ''
      Expression = 'Sum(QUANTITY)'
    end
    object cdsGridData_SUM_MEASURE_CODE: TAggregateField
      FieldName = '_SUM_MEASURE_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Min(MEASURE_CODE) - Max(MEASURE_CODE)'
    end
    object cdsGridData_SUM_UNCOVERED_LINES: TAggregateField
      FieldName = '_SUM_UNCOVERED_LINES'
      OnGetText = cdsGridData_SUM_UNCOVERED_LINESGetText
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(UNCOVERED_LINES)'
    end
    object cdsGridData_SUM_QUANTITY_DIFF_RAW: TAggregateField
      FieldName = '_SUM_QUANTITY_DIFF_RAW'
      Active = True
      DisplayName = ''
      Expression = 'Sum(QUANTITY_DIFF)'
    end
  end
  inherited alActions: TActionList
    inherited actFilter: TAction
      Visible = True
    end
    inherited actEditRecord: TAction
      Caption = #1054#1055'...'
      Hint = #1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089
    end
    object actEditModel: TAction
      Caption = #1057#1083#1077#1076#1077#1085#1077'...'
      Hint = #1057#1083#1077#1076#1077#1085#1077' '#1085#1072' '#1056'-'#1052#1054#1044#1045#1083
      ImageIndex = 6
      OnExecute = actEditModelExecute
      OnUpdate = actEditModelUpdate
    end
    object actArchiveModel: TAction
      Caption = #1040#1088#1093#1080#1074#1080#1088#1072#1085#1077
      ImageIndex = 31
      OnExecute = actArchiveModelExecute
      OnUpdate = actArchiveModelUpdate
    end
    object actUnarchiveModel: TAction
      Caption = #1056#1072#1079#1072#1088#1093#1080#1074#1080#1088#1072#1085#1077
      ImageIndex = 32
      OnExecute = actUnarchiveModelExecute
      OnUpdate = actUnarchiveModelUpdate
    end
    object actModelCapacityStatus: TAction
      Caption = #1050#1072#1087#1072#1094#1080#1090#1077#1090'...'
      ImageIndex = 51
      OnExecute = actModelCapacityStatusExecute
      OnUpdate = actModelCapacityStatusUpdate
    end
    object actProductVIM: TAction
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1042#1048#1052' '#1085#1072' '#1059#1087#1088#1072#1074#1083#1103#1077#1084#1080#1103' '#1054#1073#1077#1082#1090' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1080#1103' ID '#1054#1055#1042
      ImageIndex = 30
      OnExecute = actProductVIMExecute
      OnUpdate = actProductVIMUpdate
    end
    object actExceptEvents: TAction
      Caption = #1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103'...'
      Hint = #1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103
      OnExecute = actExceptEventsExecute
      OnUpdate = actExceptEventsUpdate
    end
    object actToggleTreeView: TAction
      Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1080#1088#1072#1085#1080
      GroupIndex = 6
      Hint = #1055#1088#1077#1074#1082#1083#1102#1095#1074#1072' '#1057#1090#1088#1091#1082#1090#1091#1088#1080#1088#1072#1085#1080'/'#1045#1076#1080#1085#1080#1095#1085#1080
      ImageIndex = 8
      OnExecute = actToggleTreeViewExecute
      OnUpdate = actToggleTreeViewUpdate
    end
    object actShowInactive: TAction
      GroupIndex = 7
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1055#1088#1080#1082#1083#1102#1095#1077#1085#1080'/'#1040#1085#1091#1083#1080#1088#1072#1085#1080
      ImageIndex = 16
      OnExecute = actShowInactiveExecute
      OnUpdate = actShowInactiveUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    AfterOpen = pdsGridDataParamsAfterOpen
    Left = 104
    Top = 184
    object pdsGridDataParamsMIN_ML_STATE_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' - '#1054#1090
      FieldName = 'MIN_ML_STATE_CODE'
    end
    object pdsGridDataParamsMAX_ML_STATE_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' - '#1054#1090
      FieldName = 'MAX_ML_STATE_CODE'
    end
    object pdsGridDataParamsPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1094#1077#1089
      FieldName = 'PRODUCTION_ORDER_TYPE_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsSALE_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1043#1083'.'
      FieldName = 'SALE_BRANCH_CODE'
    end
    object pdsGridDataParamsSALE_NO: TAbmesFloatField
      DisplayLabel = 'No'
      FieldName = 'SALE_NO'
    end
    object pdsGridDataParamsSALE_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1080#1076
      FieldName = 'SALE_TYPE_CODE'
    end
    object pdsGridDataParamsBEGIN_PRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1054#1089#1085'. '#1055#1088#1080#1086#1088#1080#1090#1077#1090' - '#1054#1090
      FieldName = 'BEGIN_PRIORITY_CODE'
    end
    object pdsGridDataParamsEND_PRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1054#1089#1085'. '#1055#1088#1080#1086#1088#1080#1090#1077#1090' - '#1044#1086
      FieldName = 'END_PRIORITY_CODE'
    end
    object pdsGridDataParamsIS_SALE_STATE: TAbmesFloatField
      DisplayLabel = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1055#1088#1086#1076#1072#1078#1073#1080
      FieldName = 'IS_SALE_STATE'
      FieldValueType = fvtInteger
    end
    object pdsGridDataParamsOWNER_COMPANY_CODE: TAbmesFloatField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      FieldName = 'OWNER_COMPANY_CODE'
    end
    object pdsGridDataParamsSALE_SHIPMENT_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1080' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'SALE_SHIPMENT_BEGIN_DATE'
    end
    object pdsGridDataParamsSALE_SHIPMENT_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1080' - '#1050#1088#1072#1081
      FieldName = 'SALE_SHIPMENT_END_DATE'
    end
    object pdsGridDataParamsOWNER_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1055#1086#1088#1098#1095#1080#1090#1077#1083
      FieldName = 'OWNER_EMPLOYEE_CODE'
    end
    object pdsGridDataParamsIS_WASTE_COMPENSATOR_STATUS: TAbmesFloatField
      DisplayLabel = #1055#1086#1079#1080#1094#1080#1103' '#1085#1072' ID '#1054#1055#1042
      FieldName = 'IS_WASTE_COMPENSATOR_STATUS'
    end
    object pdsGridDataParamsWASTING_SALE_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1043#1083'. '#1085#1072' '#1054#1055#1042' '#1054#1089#1085#1086#1074#1077#1085
      FieldName = 'WASTING_SALE_BRANCH_CODE'
    end
    object pdsGridDataParamsWASTING_SALE_NO: TAbmesFloatField
      DisplayLabel = 'No '#1085#1072' '#1054#1055#1042' '#1054#1089#1085#1086#1074#1077#1085
      FieldName = 'WASTING_SALE_NO'
    end
    object pdsGridDataParamsHAS_WASTE_STATUS: TAbmesFloatField
      DisplayLabel = #1053#1072#1083#1080#1095#1080#1077' '#1085#1072' '#1073#1083#1086#1082'. '#1087#1086' ID '#1054#1055#1042
      FieldName = 'HAS_WASTE_STATUS'
    end
    object pdsGridDataParamsMODEL_DEVELOPMENT_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1054#1073#1077#1084' '#1056#1072#1079#1088'.'
      FieldName = 'MODEL_DEVELOPMENT_TYPE_CODE'
    end
    object pdsGridDataParamsOKIDU_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1048#1085#1078#1077#1085#1077#1088' '#1052#1054#1044#1045#1083'-'#1080#1077#1088
      FieldName = 'OKIDU_EMPLOYEE_CODE'
    end
    object pdsGridDataParamsFILTER_UNCOVERED_LINES_STATE: TAbmesFloatField
      DisplayLabel = #1054#1073#1077#1079#1087#1077#1095#1077#1085#1086#1089#1090
      FieldName = 'FILTER_UNCOVERED_LINES_STATE'
    end
    object pdsGridDataParamsPROD_START_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1057#1090#1072#1088#1090' '#1085#1072' ID '#1054#1055#1042' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'PROD_START_PLAN_BEGIN_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsGridDataParamsPROD_START_PLAN_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1057#1090#1072#1088#1090' '#1085#1072' ID '#1054#1055#1042' - '#1050#1088#1072#1081
      FieldName = 'PROD_START_PLAN_END_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsGridDataParamsBEGIN_PRODUCTION_START_DATE_DIFF: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1088#1090' '#1085#1072' ID '#1054#1055#1042' - '#1056#1077#1079#1077#1088#1074' - '#1054#1090
      FieldName = 'BEGIN_PRODUCTION_START_DATE_DIFF'
    end
    object pdsGridDataParamsEND_PRODUCTION_START_DATE_DIFF: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1088#1090' '#1085#1072' ID '#1054#1055#1042' - '#1056#1077#1079#1077#1088#1074' - '#1044#1086
      FieldName = 'END_PRODUCTION_START_DATE_DIFF'
    end
    object pdsGridDataParamsCHOSEN_PRODUCTION_DEPTS: TAbmesWideStringField
      DisplayLabel = #1058#1055' '#1056#1077#1072#1083#1080#1079#1072#1090#1086#1088
      FieldName = 'CHOSEN_PRODUCTION_DEPTS'
      Size = 4000
    end
    object pdsGridDataParamsCHOSEN_OPERATION_DEPTS: TAbmesWideStringField
      DisplayLabel = #1058#1055' '#1059#1095#1072#1089#1090#1074#1072#1097#1086' '#1074' '#1056'-'#1052#1054#1044#1045#1083
      FieldName = 'CHOSEN_OPERATION_DEPTS'
      Size = 4000
    end
    object pdsGridDataParamsBEGIN_PRODUCTION_WORKDAYS: TAbmesFloatField
      DisplayLabel = #1055#1077#1088#1080#1086#1076' '#1056#1083' ('#1088#1072#1073'. '#1076#1085#1080') - '#1054#1090
      FieldName = 'BEGIN_PRODUCTION_WORKDAYS'
    end
    object pdsGridDataParamsEND_PRODUCTION_WORKDAYS: TAbmesFloatField
      DisplayLabel = #1055#1077#1088#1080#1086#1076' '#1056#1083' ('#1088#1072#1073'. '#1076#1085#1080') - '#1044#1086
      FieldName = 'END_PRODUCTION_WORKDAYS'
    end
    object pdsGridDataParamsBEGIN_PRODUCTION_WORKDAYS_PERCENT: TAbmesFloatField
      DisplayLabel = #1055#1077#1088#1080#1086#1076' '#1056#1083' - '#1054#1090#1082#1083'. (%) - '#1054#1090
      FieldName = 'BEGIN_PRODUCTION_WORKDAYS_PERCENT'
    end
    object pdsGridDataParamsEND_PRODUCTION_WORKDAYS_PERCENT: TAbmesFloatField
      DisplayLabel = #1055#1077#1088#1080#1086#1076' '#1056#1083' - '#1054#1090#1082#1083'. (%) - '#1044#1086
      FieldName = 'END_PRODUCTION_WORKDAYS_PERCENT'
    end
    object pdsGridDataParamsBEGIN_OP_DATE_DIFF: TAbmesFloatField
      DisplayLabel = #1055#1077#1088#1080#1086#1076' '#1056#1083' - '#1054#1090#1082#1083#1042#1088#1084' ('#1076#1085#1080') - '#1054#1090
      FieldName = 'BEGIN_OP_DATE_DIFF'
    end
    object pdsGridDataParamsEND_OP_DATE_DIFF: TAbmesFloatField
      DisplayLabel = #1055#1077#1088#1080#1086#1076' '#1056#1083' - '#1054#1090#1082#1083#1042#1088#1084' ('#1076#1085#1080') - '#1044#1086
      FieldName = 'END_OP_DATE_DIFF'
    end
    object pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'CHOSEN_PRODUCTS'
      Size = 4000
    end
    object pdsGridDataParamsCHOSEN_SHIPMENT_STORES: TAbmesWideStringField
      DisplayLabel = #1058#1055' '#1055#1088#1080#1077#1084#1085#1080#1082
      FieldName = 'CHOSEN_SHIPMENT_STORES'
      Size = 4000
    end
    object pdsGridDataParamsCHOSEN_CONSUMER_DEPTS: TAbmesWideStringField
      DisplayLabel = #1058#1055' '#1055#1086#1083#1079#1074#1072#1090#1077#1083
      FieldName = 'CHOSEN_CONSUMER_DEPTS'
      Size = 4000
    end
    object pdsGridDataParamsENTER_SH_STORE_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1079#1072' '#1085#1072#1095'. '#1085#1072' '#1055#1088#1080#1077#1084#1072#1085#1077' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'ENTER_SH_STORE_BEGIN_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsGridDataParamsENTER_SH_STORE_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1079#1072' '#1085#1072#1095'. '#1085#1072' '#1055#1088#1080#1077#1084#1072#1085#1077' - '#1050#1088#1072#1081
      FieldName = 'ENTER_SH_STORE_END_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsGridDataParamsBEGIN_ENTER_SH_STORE_DATE_DIFF: TAbmesFloatField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1079#1072' '#1085#1072#1095'. '#1085#1072' '#1055#1088#1080#1077#1084#1072#1085#1077' - '#1056#1077#1079#1077#1088#1074' - '#1054#1090
      FieldName = 'BEGIN_ENTER_SH_STORE_DATE_DIFF'
    end
    object pdsGridDataParamsEND_ENTER_SH_STORE_DATE_DIFF: TAbmesFloatField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1079#1072' '#1085#1072#1095'. '#1085#1072' '#1055#1088#1080#1077#1084#1072#1085#1077' - '#1056#1077#1079#1077#1088#1074' - '#1044#1086
      FieldName = 'END_ENTER_SH_STORE_DATE_DIFF'
    end
    object pdsGridDataParamsCONSUME_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1086' '#1085#1072' '#1042#1088#1084#1048#1085#1090' '#1079#1072' '#1085#1072#1095'. '#1085#1072' '#1055#1086#1083#1079#1074#1072#1085#1077
      FieldName = 'CONSUME_BEGIN_DATE'
    end
    object pdsGridDataParamsCONSUME_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1088#1072#1081' '#1085#1072' '#1042#1088#1084#1048#1085#1090' '#1079#1072' '#1085#1072#1095'. '#1085#1072' '#1055#1086#1083#1079#1074#1072#1085#1077
      FieldName = 'CONSUME_END_DATE'
    end
    object pdsGridDataParamsMIN_CONSUME_DATE_DIFF: TAbmesFloatField
      DisplayLabel = #1053#1072#1095#1072#1083#1086' '#1085#1072' '#1042#1088#1084#1048#1085#1090' '#1079#1072' '#1085#1072#1095'. '#1085#1072' '#1055#1086#1083#1079#1074#1072#1085#1077' - '#1056#1077#1079#1077#1088#1074' '#1076#1086' '#1085#1072#1095'. - '#1054#1090
      FieldName = 'MIN_CONSUME_DATE_DIFF'
    end
    object pdsGridDataParamsMAX_CONSUME_DATE_DIFF: TAbmesFloatField
      DisplayLabel = #1053#1072#1095#1072#1083#1086' '#1085#1072' '#1042#1088#1084#1048#1085#1090' '#1079#1072' '#1085#1072#1095'. '#1085#1072' '#1055#1086#1083#1079#1074#1072#1085#1077' - '#1056#1077#1079#1077#1088#1074' '#1076#1086' '#1085#1072#1095'. - '#1044#1086
      FieldName = 'MAX_CONSUME_DATE_DIFF'
    end
    object pdsGridDataParamsDAMAGES_STATE_CODE: TAbmesFloatField
      DisplayLabel = #1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' - '#1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103
      FieldName = 'DAMAGES_STATE_CODE'
    end
    object pdsGridDataParamsPRODUCTION_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PRODUCTION_ORDER_BASE_TYPE_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsSHOW_UNCOVERED_LINES: TAbmesFloatField
      FieldName = 'SHOW_UNCOVERED_LINES'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParams_MODEL_DEVELOPMENT_TYPE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_MODEL_DEVELOPMENT_TYPE_ABBREV'
      LookupDataSet = cdsModelDevelopmentTypes
      LookupKeyFields = 'MODEL_DEVELOPMENT_TYPE_CODE'
      LookupResultField = 'MODEL_DEVELOPMENT_TYPE_ABBREV'
      KeyFields = 'MODEL_DEVELOPMENT_TYPE_CODE'
      Size = 100
      Lookup = True
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 136
    Top = 184
  end
  inherited dsData: TDataSource
    Left = 136
    Top = 120
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 104
    Top = 120
  end
  object cdsPriorities: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvPriorities'
    Left = 184
    Top = 120
    object cdsPrioritiesPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
    end
    object cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_NAME'
      Size = 50
    end
    object cdsPrioritiesPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object cdsPrioritiesPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
  end
  object cdsExceptEventsParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 544
    Top = 496
    object cdsExceptEventsParamsMAX_STATE_CODE: TAbmesFloatField
      FieldName = 'MAX_STATE_CODE'
    end
    object cdsExceptEventsParamsIS_FILTERED_BY_DAMAGES: TAbmesFloatField
      FieldName = 'IS_FILTERED_BY_DAMAGES'
      FieldValueType = fvtBoolean
    end
    object cdsExceptEventsParamsEE_DAMAGE_PROCESS_TYPE_CODE: TAbmesFloatField
      FieldName = 'EE_DAMAGE_PROCESS_TYPE_CODE'
    end
    object cdsExceptEventsParamsML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
    end
    object cdsExceptEventsParamsML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
    end
  end
  object cdsModelDevelopmentTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSales
    Params = <>
    ProviderName = 'prvModelDevelopmentTypes'
    Left = 216
    Top = 120
    object prvModelDevelopmentTypesMODEL_DEVELOPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'MODEL_DEVELOPMENT_TYPE_CODE'
      Required = True
    end
    object prvModelDevelopmentTypesMODEL_DEVELOPMENT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'MODEL_DEVELOPMENT_TYPE_ABBREV'
      Size = 100
    end
    object prvModelDevelopmentTypesMODEL_DEVELOPMENT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'MODEL_DEVELOPMENT_TYPE_NAME'
      Size = 100
    end
  end
end
