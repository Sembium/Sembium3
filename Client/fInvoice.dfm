inherited fmInvoice: TfmInvoice
  Left = 317
  Top = 202
  ActiveControl = gbBuyer
  Caption = #1060#1072#1082#1090#1091#1088#1072
  ClientHeight = 693
  ClientWidth = 1018
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 658
    Width = 1018
    object pnlAnulledAndPrintButtons: TPanel [0]
      Left = 0
      Top = 0
      Width = 661
      Height = 35
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object pnlPrint: TPanel
        Left = 237
        Top = 0
        Width = 300
        Height = 35
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 5
        object chkPrint: TCheckBox
          Left = 10
          Top = -2
          Width = 51
          Height = 17
          Caption = #1055#1077#1095#1072#1090
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
        object chkMatrixPrinter: TCheckBox
          Left = 66
          Top = -2
          Width = 92
          Height = 17
          Caption = #1052#1072#1090#1088'. '#1087#1088#1080#1085#1090#1077#1088
          TabOrder = 1
        end
        object chkWideFormat: TCheckBox
          Left = 166
          Top = -2
          Width = 51
          Height = 17
          Caption = #1064#1080#1088#1086#1082
          TabOrder = 2
        end
        object chkIWideFormat: TCheckBox
          Left = 166
          Top = 14
          Width = 51
          Height = 17
          Caption = 'Wide'
          TabOrder = 5
        end
        object chkIMatrixPrinter: TCheckBox
          Left = 66
          Top = 14
          Width = 92
          Height = 17
          Caption = 'Matrix Printer'
          TabOrder = 4
        end
        object chkIPrint: TCheckBox
          Left = 10
          Top = 14
          Width = 51
          Height = 17
          Caption = 'Print'
          TabOrder = 3
        end
      end
      object pnlShowIfAnnuled: TPanel
        Left = 0
        Top = 0
        Width = 81
        Height = 35
        Align = alLeft
        BevelOuter = bvNone
        Enabled = False
        TabOrder = 0
        object chkIsAnnuled: TCheckBox
          Left = 8
          Top = 7
          Width = 73
          Height = 17
          Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1072
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
      end
      object pnlAnnulButton: TPanel
        Left = 164
        Top = 0
        Width = 113
        Height = 35
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object btnStorno: TBitBtn
          Left = 8
          Top = 2
          Width = 105
          Height = 25
          Action = actStorno
          Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077'...'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
            0000000000000000000000000000FFFF0000FFFF0000FFFF0000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF000000000000000000FFFF
            FF0000FFFF00FFFFFF0000FFFF0000000000FFFF0000FFFF0000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FFFFFF000000000000FFFF00FFFFFF0000FF
            FF000000000000FFFF00FFFFFF0000FFFF0000000000FFFF0000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF0000000000000000000000
            000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000FF
            FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FF00FF00FF00
            FF00FF00FF00000000000000000000000000000000000000000000FFFF00FFFF
            FF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF0000000000000000000000
            000000000000FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF000000
            0000FFFFFF0000FFFF000000000000FFFF00FFFFFF0000000000FFFF00000000
            0000FFFFFF0000FFFF0000000000000000000000000000000000000000000000
            0000000000000000000000FFFF00FFFFFF000000000000000000FFFF00000000
            000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
            FF0000FFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF00000000
            0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
            0000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF00000000
            000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
            FF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
            0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
            000000000000FFFFFF0000000000000000000000000000000000FFFF00000000
            000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
            0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
            0000FF00FF00000000000000000000000000000000000000000000000000FFFF
            FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
          TabOrder = 0
        end
      end
      object pnlApproveButton: TPanel
        Left = 417
        Top = 0
        Width = 121
        Height = 35
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 4
        object btnApprove: TBitBtn
          Left = 8
          Top = 2
          Width = 113
          Height = 25
          Action = actApprove
          Caption = #1059#1090#1074#1098#1088#1078#1076#1072#1074#1072#1085#1077'...'
          TabOrder = 0
        end
      end
      object pnlShowIfApproved: TPanel
        Left = 81
        Top = 0
        Width = 83
        Height = 35
        Align = alLeft
        BevelOuter = bvNone
        Enabled = False
        TabOrder = 1
        object chkIsApproved: TCheckBox
          Left = 8
          Top = 7
          Width = 77
          Height = 17
          Caption = #1059#1090#1074#1098#1088#1076#1077#1085#1072
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
      end
      object pnlUnapproveButton: TPanel
        Left = 277
        Top = 0
        Width = 140
        Height = 35
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 3
        object btnUnapprove: TBitBtn
          Left = 8
          Top = 2
          Width = 129
          Height = 25
          Action = actUnapprove
          Caption = #1056#1072#1079#1091#1090#1074#1098#1088#1078#1076#1072#1074#1072#1085#1077'...'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000080000000000000FF00
            FF00FF00FF00FF00FF00FF00FF007B7B7B0000000000FF00FF00FF00FF000080
            0000FF00FF0000000000FF00FF00FF00FF00FF00FF000080000000000000FF00
            FF00FF00FF00FF00FF007B7B7B0000800000FF00FF00FF00FF00FF00FF00FF00
            FF0000800000FF00FF0000000000FF00FF00FF00FF0000800000FF00FF00FF00
            FF00FF00FF007B7B7B0000800000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000800000FF00FF00FF00FF00FF00FF0000000000000000000000
            0000FF00FF0000800000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000080000000800000008000000000
            000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00008000000080000000800000008000000080
            00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000000000000000000000800000008000000080000000800000008000000080
            00000080000000000000FF00FF00000000000000000000000000008000000080
            000000800000FF00FF0000800000008000000080000000800000008000000080
            00000080000000000000008000000080000000800000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000800000008000000080000000800000008000000080
            000000800000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00008000000080000000800000008000000080
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF007B7B7B0000000000FF00FF00008000000080000000800000FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF007B7B7B0000800000FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
            FF00FF00FF0000800000FF00FF0000000000FF00FF00FF00FF00FF00FF007B7B
            7B0000800000FF00FF00FF00FF00FF00FF00FF00FF000080000000000000FF00
            FF00FF00FF00FF00FF0000800000FF00FF0000000000FF00FF00FF00FF000080
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000080000000000000FF00
            FF00FF00FF00FF00FF00FF00FF0000800000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000800000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 0
        end
      end
      object pnlPrintButton: TPanel
        Left = 537
        Top = 0
        Width = 124
        Height = 35
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 6
        object btnPrint: TBitBtn
          Left = 13
          Top = 2
          Width = 81
          Height = 25
          Hint = #1055#1077#1095#1072#1090
          Caption = #1055#1077#1095#1072#1090
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000FF00FF000000BDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBD
            BDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBD000000000000BDBDBD
            BDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBD
            BDBDBDBDBDBDBD00000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000FFFFFF
            BDBDBDFFFFFFBDBDBDFFFFFFBDBDBDFFFFFFBDBDBDFFFFFFBDBDBDFFFFFFBDBD
            BDFFFFFFBDBDBD000000000000BDBDBDFFFFFFBDBDBDFFFFFFBDBDBDFFFFFFBD
            BDBDFFFFFFBDBDBDFFFFFFBDBDBDFFFFFF0000FFFFFFFF000000000000FFFFFF
            BDBDBDFFFFFFBDBDBDFFFFFFBDBDBDFFFFFFBDBDBDFFFFFFBDBDBDFFFFFFBDBD
            BDFFFFFFBDBDBD00000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FFFF00FF
            FF00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
            00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FFFFFF00000000000000
            0000000000FFFFFF000000FFFFFF000000FF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
            00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FFFFFF000000000000FF
            FFFF000000000000000000000000000000FF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF000000FF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FFFFFF000000BDBDBDFF
            FFFF000000FFFFFF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000000000000000
            0000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          TabOrder = 0
          OnClick = btnPrintClick
        end
      end
    end
    inherited pnlOKCancel: TPanel
      Left = 750
      TabOrder = 2
    end
    inherited pnlClose: TPanel
      Left = 661
      TabOrder = 1
    end
    inherited pnlApply: TPanel
      Left = 929
      TabOrder = 3
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 1018
    Height = 658
    inherited pnlGrid: TPanel
      Top = 319
      Width = 1002
      Height = 136
      TabOrder = 1
      inherited pnlNavigator: TPanel
        Width = 1002
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited pnlDataButtons: TPanel
        Left = 896
        Width = 106
        Height = 112
        inherited btnAddData: TBitBtn
          Left = 7
          Width = 98
          Height = 21
        end
        inherited btnDeleteData: TBitBtn
          Left = 7
          Top = 52
          Width = 98
          Height = 21
          TabOrder = 2
        end
        inherited btnEditData: TBitBtn
          Left = 7
          Top = 78
          Width = 98
          Height = 21
          TabOrder = 3
        end
        object btnInsertSaleShipments: TBitBtn
          Left = 7
          Top = 26
          Width = 98
          Height = 21
          Action = actInsertSaleShipments
          Caption = #1054#1055#1055'...'
          Spacing = -1
          TabOrder = 1
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 896
        Height = 112
        AutoFitColWidths = True
        Columns = <
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_INVOICE_ITEM_IDENTIFIER'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1054#1055#1055
            Width = 120
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ITEM_NAME'
            Footers = <>
            Width = 267
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRODUCT_NO'
            Footers = <>
            Title.Alignment = taRightJustify
            Title.Caption = #1040#1088#1090'. '#8470
            Width = 73
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ACCOUNT_QUANTITY'
            Footers = <>
            Title.Alignment = taRightJustify
            Title.Caption = #1057#1095#1077#1090'.'#1082'-'#1074#1086
            Width = 78
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ACCOUNT_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1052'.'#1077#1076'.'
            Width = 28
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DisplayFormat = ',0.00##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'MARKET_SINGLE_PRICE'
            Footers = <>
            Title.Alignment = taRightJustify
            Width = 90
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DISCOUNT_PERCENT'
            Footers = <>
            Title.Caption = '-%'
            Width = 19
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DisplayFormat = ',0.00##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'SINGLE_PRICE'
            Footers = <>
            Title.Alignment = taRightJustify
            Width = 90
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_TOTAL_PRICE'
            Footers = <>
            Title.Caption = #1054#1073#1097#1072' '#1094#1077#1085#1072
            Width = 90
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'IS_VAT_FREE'
            Footers = <>
            Title.Caption = #1044#1044#1057
            Visible = False
            Width = 29
          end>
      end
    end
    object pnlTop: TPanel
      Left = 8
      Top = 8
      Width = 1002
      Height = 311
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object dbtInvoiceTypeName: TDBText
        Left = 333
        Top = 3
        Width = 336
        Height = 33
        Alignment = taCenter
        DataField = '_INVOICE_TYPE_NAME'
        DataSource = dsData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object gbSeller: TGroupBox
        Left = 676
        Top = -2
        Width = 326
        Height = 190
        Caption = ' '#1055#1088#1086#1076#1072#1074#1072#1095' '
        TabOrder = 3
        object lblPartnerCo: TLabel
          Left = 8
          Top = 16
          Width = 49
          Height = 13
          Caption = #1055#1072#1088#1090#1085#1100#1086#1088
        end
        object lblSellerName: TLabel
          Left = 8
          Top = 68
          Width = 22
          Height = 13
          Caption = #1048#1084#1077
        end
        object lblSellerCity: TLabel
          Left = 8
          Top = 92
          Width = 57
          Height = 13
          Caption = #1053#1072#1089'. '#1084#1103#1089#1090#1086
        end
        object lblSellerAddress: TLabel
          Left = 8
          Top = 116
          Width = 31
          Height = 13
          Caption = #1040#1076#1088#1077#1089
        end
        object btnRefreshSellerInfo: TSpeedButton
          Left = 221
          Top = 13
          Width = 97
          Height = 19
          Hint = #1054#1073#1085#1086#1074#1103#1074#1072' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103#1090#1072' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088'-'#1087#1088#1086#1076#1072#1074#1072#1095
          AllowAllUp = True
          Caption = #1054#1073#1085#1086#1074#1103#1074#1072#1085#1077
          Flat = True
          Glyph.Data = {
            AA040000424DAA04000000000000360000002800000013000000130000000100
            18000000000074040000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8080800080
            00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080008000008000808080FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF008000008000808080FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFF808080008000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
            FFFF008000008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF0080
            00008000FFFFFFFFFFFFFFFFFF008000008000008000008000008000FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF008000008000
            808080FFFFFFFFFFFFFFFFFF808080008000008000008000FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF80808000800000800080
            8080FFFFFF808080008000008000008000008000FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080000080000080000080
            00008000008000008000808080008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080008000008000008000
            808080FFFFFFFFFFFF008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000}
          ParentShowHint = False
          ShowHint = True
          OnClick = btnRefreshSellerInfoClick
        end
        object lblSellerIDNo: TLabel
          Left = 8
          Top = 140
          Width = 74
          Height = 13
          Caption = #1048#1076'.No '#1087#1086' '#1044#1044#1057
        end
        object edtSellerName: TDBEdit
          Left = 88
          Top = 64
          Width = 230
          Height = 21
          Color = clBtnFace
          DataField = 'SELLER_NAME'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 1
        end
        object edtSellerCity: TDBEdit
          Left = 88
          Top = 88
          Width = 230
          Height = 21
          Color = clBtnFace
          DataField = 'SELLER_CITY'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 2
        end
        object edtSellerAddress: TDBEdit
          Left = 88
          Top = 112
          Width = 230
          Height = 21
          Color = clBtnFace
          DataField = 'SELLER_ADDRESS'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 3
        end
        inline frSeller: TfrPartnerFieldEditFrameBald
          Left = 8
          Top = 32
          Width = 311
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 0
          TabStop = True
          DesignSize = (
            311
            22)
          inherited gbPartner: TGroupBox
            Width = 326
            inherited pnlNameAndButtons: TPanel
              Width = 237
              inherited pnlRightButtons: TPanel
                Left = 201
              end
              inherited pnlPartnerName: TPanel
                Width = 201
                DesignSize = (
                  201
                  23)
                inherited edtPartnerName: TDBEdit
                  Width = 197
                end
                inherited cbPartner: TJvDBLookupCombo
                  Width = 202
                end
              end
            end
            inherited pnlPaddingRight: TPanel
              Left = 318
            end
          end
        end
        object pnlSellerBulstatOrEGN: TPanel
          Left = 8
          Top = 160
          Width = 312
          Height = 21
          BevelOuter = bvNone
          TabOrder = 5
          object pnlSellerBulstat: TPanel
            Left = 0
            Top = 21
            Width = 312
            Height = 21
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object lblSellerBulstat: TLabel
              Left = 0
              Top = 4
              Width = 22
              Height = 13
              Caption = #1045#1048#1050
            end
            object edtSellerBulstat: TDBEdit
              Left = 80
              Top = 0
              Width = 230
              Height = 21
              Color = clBtnFace
              DataField = '_SELLER_BULSTAT'
              DataSource = dsData
              ReadOnly = True
              TabOrder = 0
            end
          end
          object pnlSellerEGN: TPanel
            Left = 0
            Top = 0
            Width = 312
            Height = 21
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object lblSellerEGN: TLabel
              Left = 0
              Top = 4
              Width = 50
              Height = 13
              Caption = #1045#1043#1053'/'#1051#1053#1063
            end
            object edtSellerEGN: TDBEdit
              Left = 80
              Top = 0
              Width = 230
              Height = 21
              Color = clBtnFace
              DataField = 'SELLER_EGN'
              DataSource = dsData
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object edtSellerIDNo: TDBEdit
          Left = 88
          Top = 136
          Width = 230
          Height = 21
          Color = clBtnFace
          DataField = 'SELLER_VAT_NO'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 4
        end
      end
      object gbInvoice: TGroupBox
        Left = 334
        Top = 39
        Width = 336
        Height = 203
        TabOrder = 2
        object lblInvoiceNo: TLabel
          Left = 8
          Top = 39
          Width = 34
          Height = 13
          Caption = #1053#1086#1084#1077#1088
        end
        object lblInvoiceDate: TLabel
          Left = 8
          Top = 65
          Width = 92
          Height = 13
          Caption = #1044#1072#1090#1072' '#1085#1072' '#1080#1079#1076#1072#1074#1072#1085#1077
        end
        object lblInvoicePlace: TLabel
          Left = 8
          Top = 120
          Width = 32
          Height = 13
          Caption = #1052#1103#1089#1090#1086
        end
        object lblCurrency: TLabel
          Left = 8
          Top = 174
          Width = 35
          Height = 13
          AutoSize = False
          Caption = #1042#1072#1083#1091#1090#1072
        end
        object lblEventDate: TLabel
          Left = 8
          Top = 92
          Width = 140
          Height = 13
          Caption = #1044#1072#1090#1072' '#1085#1072' '#1089#1098#1073#1080#1090#1080#1077' '#1080#1083#1080' '#1072#1074#1072#1085#1089
        end
        object lblInvoiceIPlace: TLabel
          Left = 8
          Top = 146
          Width = 58
          Height = 13
          Caption = 'Event Place'
        end
        object chkIsProform: TAbmesDBCheckBox
          Left = 9
          Top = 10
          Width = 97
          Height = 17
          Caption = #1055#1088#1086#1092#1086#1088#1084#1072
          DataField = 'IS_PROFORM_INVOICE'
          DataSource = dsData
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          ImmediateUpdateField = True
        end
        object pnlInvoiceNo: TPanel
          Left = 160
          Top = 34
          Width = 168
          Height = 22
          BevelOuter = bvNone
          TabOrder = 1
          object pnlManualInvoiceNoEdit: TPanel
            Left = 0
            Top = 0
            Width = 146
            Height = 22
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            DesignSize = (
              146
              22)
            object edtInvoiceNo: TDBEdit
              Left = 0
              Top = 1
              Width = 146
              Height = 21
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataField = 'INVOICE_NO'
              DataSource = dsData
              TabOrder = 0
            end
          end
          object pnlManualInvoiceNoButton: TPanel
            Left = 146
            Top = 0
            Width = 22
            Height = 22
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            object btnManualInvoiceNo: TSpeedButton
              Left = 0
              Top = 1
              Width = 22
              Height = 21
              Hint = #1056#1072#1079#1088#1077#1096#1072#1074#1072'/'#1079#1072#1073#1088#1072#1085#1103#1074#1072' '#1088#1098#1095#1085#1086' '#1074#1098#1074#1077#1078#1076#1072#1085#1077' '#1085#1072' '#1085#1086#1084#1077#1088' '#1085#1072' '#1092#1072#1082#1090#1091#1088#1072#1090#1072
              AllowAllUp = True
              GroupIndex = 1
              Caption = #8470
              ParentShowHint = False
              ShowHint = True
              OnClick = btnManualInvoiceNoClick
            end
          end
        end
        inline frInvoiceDate: TfrDateFieldEditFrame
          Left = 160
          Top = 61
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 2
          TabStop = True
        end
        object cbCurrency: TJvDBLookupCombo
          Left = 159
          Top = 172
          Width = 168
          Height = 21
          DataField = 'CURRENCY_CODE'
          DataSource = dsData
          LookupField = 'CURRENCY_CODE'
          LookupDisplay = 'CURRENCY_ABBREV'
          LookupSource = dsCurrencies
          TabOrder = 6
        end
        inline frEventDate: TfrDateFieldEditFrame
          Left = 160
          Top = 89
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 3
          TabStop = True
        end
        object edtInvoiceIPlace: TDBEdit
          Left = 160
          Top = 144
          Width = 168
          Height = 21
          Color = clInfoBk
          DataField = 'INVOICE_I_PLACE'
          DataSource = dsData
          TabOrder = 5
        end
        object edtInvoicePlace: TDBEdit
          Left = 160
          Top = 117
          Width = 168
          Height = 21
          DataField = 'INVOICE_PLACE'
          DataSource = dsData
          TabOrder = 4
        end
        object tlbDocs: TToolBar
          Left = 291
          Top = 8
          Width = 36
          Height = 22
          Align = alNone
          AutoSize = True
          ButtonWidth = 36
          Caption = 'tlbDocs'
          Images = dmMain.ilDocs
          TabOrder = 7
          object btnDocs: TToolButton
            Left = 0
            Top = 0
            Action = actDocs
          end
        end
      end
      object gbBuyer: TGroupBox
        Left = 0
        Top = -2
        Width = 326
        Height = 190
        Caption = ' '#1050#1091#1087#1091#1074#1072#1095' '
        TabOrder = 0
        object lblPartnerCode: TLabel
          Left = 8
          Top = 16
          Width = 49
          Height = 13
          Caption = #1055#1072#1088#1090#1085#1100#1086#1088
        end
        object lblBuyerName: TLabel
          Left = 8
          Top = 68
          Width = 22
          Height = 13
          Caption = #1048#1084#1077
        end
        object lblBuyerCity: TLabel
          Left = 8
          Top = 92
          Width = 57
          Height = 13
          Caption = #1053#1072#1089'. '#1084#1103#1089#1090#1086
        end
        object lblBuyerAddress: TLabel
          Left = 8
          Top = 116
          Width = 31
          Height = 13
          Caption = #1040#1076#1088#1077#1089
        end
        object btnRefreshBuyerInfo: TSpeedButton
          Left = 221
          Top = 13
          Width = 97
          Height = 19
          Hint = #1054#1073#1085#1086#1074#1103#1074#1072' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103#1090#1072' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088'-'#1082#1091#1087#1091#1074#1072#1095
          AllowAllUp = True
          Caption = #1054#1073#1085#1086#1074#1103#1074#1072#1085#1077
          Flat = True
          Glyph.Data = {
            AA040000424DAA04000000000000360000002800000013000000130000000100
            18000000000074040000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8080800080
            00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080008000008000808080FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF008000008000808080FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFF808080008000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
            FFFF008000008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF0080
            00008000FFFFFFFFFFFFFFFFFF008000008000008000008000008000FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF008000008000
            808080FFFFFFFFFFFFFFFFFF808080008000008000008000FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF80808000800000800080
            8080FFFFFF808080008000008000008000008000FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080000080000080000080
            00008000008000008000808080008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080008000008000008000
            808080FFFFFFFFFFFF008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000}
          ParentShowHint = False
          ShowHint = True
          OnClick = btnRefreshBuyerInfoClick
        end
        object lblBuyerIDNo: TLabel
          Left = 8
          Top = 140
          Width = 74
          Height = 13
          Caption = #1048#1076'.No '#1087#1086' '#1044#1044#1057
        end
        object edtBuyerName: TDBEdit
          Left = 88
          Top = 64
          Width = 230
          Height = 21
          Color = clBtnFace
          DataField = 'BUYER_NAME'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 1
        end
        object edtBuyerCity: TDBEdit
          Left = 88
          Top = 88
          Width = 230
          Height = 21
          Color = clBtnFace
          DataField = 'BUYER_CITY'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 2
        end
        object edtBuyerAddress: TDBEdit
          Left = 88
          Top = 112
          Width = 230
          Height = 21
          Color = clBtnFace
          DataField = 'BUYER_ADDRESS'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 3
        end
        inline frBuyer: TfrPartnerFieldEditFrameBald
          Left = 8
          Top = 32
          Width = 311
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 0
          TabStop = True
          DesignSize = (
            311
            22)
          inherited gbPartner: TGroupBox
            Width = 326
            inherited pnlNameAndButtons: TPanel
              Width = 237
              inherited pnlRightButtons: TPanel
                Left = 201
              end
              inherited pnlPartnerName: TPanel
                Width = 201
                DesignSize = (
                  201
                  23)
                inherited edtPartnerName: TDBEdit
                  Width = 195
                end
                inherited cbPartner: TJvDBLookupCombo
                  Width = 202
                end
              end
            end
            inherited pnlPaddingRight: TPanel
              Left = 318
            end
          end
        end
        object pnlBuyerBulstatOrEGN: TPanel
          Left = 8
          Top = 160
          Width = 312
          Height = 21
          BevelOuter = bvNone
          TabOrder = 5
          object pnlBuyerBulstat: TPanel
            Left = 0
            Top = 21
            Width = 312
            Height = 21
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object lblBuyerBulstat: TLabel
              Left = 0
              Top = 4
              Width = 22
              Height = 13
              Caption = #1045#1048#1050
            end
            object edtBuyerBulstat: TDBEdit
              Left = 80
              Top = 0
              Width = 230
              Height = 21
              Color = clBtnFace
              DataField = '_BUYER_BULSTAT'
              DataSource = dsData
              ReadOnly = True
              TabOrder = 0
            end
          end
          object pnlBuyerEGN: TPanel
            Left = 0
            Top = 0
            Width = 312
            Height = 21
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object lblBuyerEGN: TLabel
              Left = 0
              Top = 4
              Width = 50
              Height = 13
              Caption = #1045#1043#1053'/'#1051#1053#1063
            end
            object edtBuyerEGN: TDBEdit
              Left = 80
              Top = 0
              Width = 230
              Height = 21
              Color = clBtnFace
              DataField = 'BUYER_EGN'
              DataSource = dsData
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object edtBuyerIDNo: TDBEdit
          Left = 88
          Top = 136
          Width = 230
          Height = 21
          Color = clBtnFace
          DataField = 'BUYER_VAT_NO'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 4
        end
      end
      object gbReceiver: TGroupBox
        Left = 0
        Top = 190
        Width = 326
        Height = 114
        Caption = ' '#1055#1086#1083#1091#1095#1072#1090#1077#1083' '
        TabOrder = 1
        object lblReceiverCode: TLabel
          Left = 8
          Top = 16
          Width = 49
          Height = 13
          Caption = #1055#1072#1088#1090#1085#1100#1086#1088
        end
        object lblReceiverName: TLabel
          Left = 8
          Top = 68
          Width = 22
          Height = 13
          Caption = #1048#1084#1077
        end
        object lblReceiverAddress: TLabel
          Left = 8
          Top = 92
          Width = 31
          Height = 13
          Caption = #1040#1076#1088#1077#1089
        end
        object btnRefreshReceiverInfo: TSpeedButton
          Left = 222
          Top = 13
          Width = 97
          Height = 19
          Hint = #1054#1073#1085#1086#1074#1103#1074#1072' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103#1090#1072' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088'-'#1087#1086#1083#1091#1095#1072#1090#1077#1083
          AllowAllUp = True
          Caption = #1054#1073#1085#1086#1074#1103#1074#1072#1085#1077
          Flat = True
          Glyph.Data = {
            AA040000424DAA04000000000000360000002800000013000000130000000100
            18000000000074040000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8080800080
            00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080008000008000808080FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF008000008000808080FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFF808080008000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
            FFFF008000008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF0080
            00008000FFFFFFFFFFFFFFFFFF008000008000008000008000008000FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF008000008000
            808080FFFFFFFFFFFFFFFFFF808080008000008000008000FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF80808000800000800080
            8080FFFFFF808080008000008000008000008000FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080000080000080000080
            00008000008000008000808080008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080008000008000008000
            808080FFFFFFFFFFFF008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000}
          ParentShowHint = False
          ShowHint = True
          OnClick = btnRefreshReceiverInfoClick
        end
        object edtReceiverName: TDBEdit
          Left = 88
          Top = 64
          Width = 230
          Height = 21
          Color = clBtnFace
          DataField = 'RECEIVER_NAME'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 1
        end
        object edtReceiverAddress: TDBEdit
          Left = 88
          Top = 88
          Width = 230
          Height = 21
          Color = clBtnFace
          DataField = 'RECEIVER_ADDRESS'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 2
        end
        inline frReceiver: TfrPartnerFieldEditFrameBald
          Left = 8
          Top = 32
          Width = 311
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 0
          TabStop = True
          DesignSize = (
            311
            22)
          inherited gbPartner: TGroupBox
            Width = 326
            inherited pnlNameAndButtons: TPanel
              Width = 237
              inherited pnlRightButtons: TPanel
                Left = 201
              end
              inherited pnlPartnerName: TPanel
                Width = 201
                DesignSize = (
                  201
                  23)
                inherited edtPartnerName: TDBEdit
                  Width = 187
                end
                inherited cbPartner: TJvDBLookupCombo
                  Width = 202
                end
              end
            end
            inherited pnlPaddingRight: TPanel
              Left = 318
            end
          end
        end
      end
      object gbSender: TGroupBox
        Left = 676
        Top = 189
        Width = 326
        Height = 116
        Caption = ' '#1044#1086#1089#1090#1072#1074#1095#1080#1082' '
        TabOrder = 4
        object lblSenderCode: TLabel
          Left = 8
          Top = 16
          Width = 49
          Height = 13
          Caption = #1055#1072#1088#1090#1085#1100#1086#1088
        end
        object lblSenderName: TLabel
          Left = 8
          Top = 68
          Width = 22
          Height = 13
          Caption = #1048#1084#1077
        end
        object lblSenderAddress: TLabel
          Left = 8
          Top = 92
          Width = 31
          Height = 13
          Caption = #1040#1076#1088#1077#1089
        end
        object btnRefreshSenderInfo: TSpeedButton
          Left = 222
          Top = 13
          Width = 97
          Height = 19
          Hint = #1054#1073#1085#1086#1074#1103#1074#1072' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103#1090#1072' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088'-'#1076#1086#1089#1090#1072#1074#1095#1080#1082
          AllowAllUp = True
          Caption = #1054#1073#1085#1086#1074#1103#1074#1072#1085#1077
          Flat = True
          Glyph.Data = {
            AA040000424DAA04000000000000360000002800000013000000130000000100
            18000000000074040000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8080800080
            00808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080008000008000808080FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF008000008000808080FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFF808080008000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
            FFFF008000008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF0080
            00008000FFFFFFFFFFFFFFFFFF008000008000008000008000008000FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF008000008000
            808080FFFFFFFFFFFFFFFFFF808080008000008000008000FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF80808000800000800080
            8080FFFFFF808080008000008000008000008000FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080000080000080000080
            00008000008000008000808080008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080008000008000008000
            808080FFFFFFFFFFFF008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000}
          ParentShowHint = False
          ShowHint = True
          OnClick = btnRefreshSenderInfoClick
        end
        object edtSenderName: TDBEdit
          Left = 88
          Top = 64
          Width = 230
          Height = 21
          Color = clBtnFace
          DataField = 'SENDER_NAME'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 1
        end
        object edtSenderAddress: TDBEdit
          Left = 88
          Top = 88
          Width = 230
          Height = 21
          Color = clBtnFace
          DataField = 'SENDER_ADDRESS'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 2
        end
        inline frSender: TfrPartnerFieldEditFrameBald
          Left = 8
          Top = 32
          Width = 311
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 0
          TabStop = True
          DesignSize = (
            311
            22)
          inherited gbPartner: TGroupBox
            Width = 326
            inherited pnlNameAndButtons: TPanel
              Width = 237
              inherited pnlRightButtons: TPanel
                Left = 201
              end
              inherited pnlPartnerName: TPanel
                Width = 201
                DesignSize = (
                  201
                  23)
                inherited edtPartnerName: TDBEdit
                  Width = 187
                end
                inherited cbPartner: TJvDBLookupCombo
                  Width = 202
                end
              end
            end
            inherited pnlPaddingRight: TPanel
              Left = 318
            end
          end
        end
      end
    end
    object pnlBottom: TPanel
      Left = 8
      Top = 455
      Width = 1002
      Height = 195
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      object pnlTotals: TPanel
        Left = 637
        Top = 9
        Width = 365
        Height = 143
        TabOrder = 2
        object lblOverallPrice: TLabel
          Left = 5
          Top = 13
          Width = 29
          Height = 13
          Caption = #1054#1073#1097#1086
        end
        object lblTotalPriceForPayment: TLabel
          Left = 5
          Top = 117
          Width = 89
          Height = 13
          Caption = #1057#1091#1084#1072' '#1079#1072' '#1087#1083#1072#1097#1072#1085#1077
        end
        object lblPriceForVAT: TLabel
          Left = 5
          Top = 33
          Width = 63
          Height = 13
          Caption = #1044#1072#1085'. '#1086#1089#1085#1086#1074#1072
        end
        object lblInvoiceVatType: TLabel
          Left = 5
          Top = 53
          Width = 90
          Height = 13
          Caption = #1044#1072#1085'. '#1089#1090#1072#1074#1082#1072' '#1044#1044#1057
        end
        object lblVatValueBC: TLabel
          Left = 5
          Top = 75
          Width = 69
          Height = 13
          Caption = #1057#1090'-'#1089#1090' '#1085#1072' '#1044#1044#1057
        end
        object lblVatValue: TLabel
          Left = 5
          Top = 96
          Width = 69
          Height = 13
          Caption = #1057#1090'-'#1089#1090' '#1085#1072' '#1044#1044#1057
        end
        object DBText1: TDBText
          Left = 128
          Top = 56
          Width = 65
          Height = 17
        end
        object dbtCurrency: TDBText
          Left = 244
          Top = 13
          Width = 57
          Height = 13
          AutoSize = True
          DataField = '_CURRENCY_ABBREV'
          DataSource = dsData
        end
        object dbtCurrency2: TDBText
          Left = 244
          Top = 96
          Width = 63
          Height = 13
          AutoSize = True
          DataField = '_CURRENCY_ABBREV'
          DataSource = dsData
        end
        object dbtCurrency3: TDBText
          Left = 244
          Top = 117
          Width = 63
          Height = 13
          AutoSize = True
          DataField = '_CURRENCY_ABBREV'
          DataSource = dsData
        end
        object dbtBaseCurrencyAbbrev: TDBText
          Left = 244
          Top = 33
          Width = 115
          Height = 13
          AutoSize = True
          DataField = '_BASE_CURRENCY_ABBREV'
          DataSource = dsData
        end
        object dbtBaseCurrencyAbbrev2: TDBText
          Left = 244
          Top = 75
          Width = 121
          Height = 13
          AutoSize = True
          DataField = '_BASE_CURRENCY_ABBREV'
          DataSource = dsData
        end
        object edtOverallPrice: TDBEdit
          Left = 112
          Top = 9
          Width = 129
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_OVERALL_TOTAL_PRICE'
          DataSource = dsGridData
          ReadOnly = True
          TabOrder = 0
        end
        object edtPriceForVAT: TDBEdit
          Left = 112
          Top = 29
          Width = 129
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_TOTAL_PRICE_FOR_VAT_BC'
          DataSource = dsGridData
          ReadOnly = True
          TabOrder = 1
        end
        object edtTotalPriceForPayment: TDBEdit
          Left = 112
          Top = 113
          Width = 129
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_TOTAL_PRICE_FOR_PAYMENT'
          DataSource = dsGridData
          ReadOnly = True
          TabOrder = 5
        end
        object edtVatValueBC: TDBEdit
          Left = 112
          Top = 71
          Width = 129
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_TOTAL_VAT_BC'
          DataSource = dsGridData
          ReadOnly = True
          TabOrder = 3
        end
        object cbInvoiceVatType: TJvDBLookupCombo
          Left = 112
          Top = 50
          Width = 129
          Height = 21
          DropDownCount = 4
          DropDownWidth = 100
          DataField = 'INVOICE_VAT_TYPE_CODE'
          DataSource = dsData
          LookupField = 'INVOICE_VAT_TYPE_CODE'
          LookupDisplay = 'INVOICE_VAT_TYPE_NAME'
          LookupSource = dsInvoiceVatTypes
          TabOrder = 2
        end
        object edtVatValue: TDBEdit
          Left = 112
          Top = 92
          Width = 129
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_TOTAL_VAT'
          DataSource = dsGridData
          ReadOnly = True
          TabOrder = 4
        end
      end
      object gbEmployees: TGroupBox
        Left = 0
        Top = 158
        Width = 1002
        Height = 37
        TabOrder = 3
        object lblSellerPersonIName: TLabel
          Left = 780
          Top = 13
          Width = 45
          Height = 13
          Caption = 'Issued by'
        end
        object lblBuyerPersonName: TLabel
          Left = 14
          Top = 13
          Width = 62
          Height = 13
          Caption = #1055#1086#1083#1091#1095#1077#1085#1072' '#1086#1090
        end
        object lblSellerPersonName: TLabel
          Left = 540
          Top = 13
          Width = 64
          Height = 13
          Caption = #1048#1079#1076#1072#1076#1077#1085#1072' '#1086#1090
        end
        object lblBuyerPersonIName: TLabel
          Left = 238
          Top = 13
          Width = 69
          Height = 13
          Caption = 'Received from'
        end
        object cbBuyerPersonName: TJvDBComboBox
          Left = 80
          Top = 8
          Width = 150
          Height = 21
          Style = csDropDown
          DataField = 'BUYER_PERSON_NAME'
          DataSource = dsData
          EnableValues = False
          TabOrder = 0
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
          ListSettings.OutfilteredValueFont.Style = []
          OnChange = cbBuyerPersonNameChange
        end
        object cbBuyerPersonIName: TJvDBComboBox
          Left = 312
          Top = 8
          Width = 150
          Height = 21
          Style = csDropDown
          Color = clInfoBk
          DataField = 'BUYER_PERSON_I_NAME'
          DataSource = dsData
          EnableValues = False
          TabOrder = 1
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
          ListSettings.OutfilteredValueFont.Style = []
          OnChange = cbBuyerPersonINameChange
        end
        object cbSellerPersonName: TJvDBComboBox
          Left = 616
          Top = 8
          Width = 150
          Height = 21
          Style = csDropDown
          DataField = 'SELLER_PERSON_NAME'
          DataSource = dsData
          EnableValues = False
          TabOrder = 2
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
          ListSettings.OutfilteredValueFont.Style = []
          OnChange = cbSellerPersonNameChange
        end
        object cbSellerPersonIName: TJvDBComboBox
          Left = 832
          Top = 8
          Width = 150
          Height = 21
          Style = csDropDown
          Color = clInfoBk
          DataField = 'SELLER_PERSON_I_NAME'
          DataSource = dsData
          EnableValues = False
          TabOrder = 3
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
          ListSettings.OutfilteredValueFont.Style = []
          OnChange = cbSellerPersonINameChange
        end
      end
      object gbPayment: TGroupBox
        Left = 0
        Top = 2
        Width = 633
        Height = 89
        Caption = ' '#1055#1083#1072#1097#1072#1085#1077' '
        TabOrder = 0
        object lblVatReason: TLabel
          Left = 8
          Top = 50
          Width = 330
          Height = 13
          Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1077' '#1079#1072' '#1087#1088#1080#1083#1072#1075#1072#1085#1077' '#1085#1072' '#1089#1090#1072#1074#1082#1072' '#1080#1083#1080' '#1085#1077#1085#1072#1095#1080#1089#1083#1103#1074#1072#1085#1077' '#1085#1072' '#1076#1072#1085#1098#1082
        end
        object rbCashPayment: TRadioButton
          Left = 16
          Top = 19
          Width = 113
          Height = 17
          Caption = #1042' '#1073#1088#1086#1081
          TabOrder = 0
          OnClick = rbCashPaymentClick
        end
        object rbBankAccountPayment: TRadioButton
          Left = 88
          Top = 19
          Width = 120
          Height = 14
          Caption = #1055#1086' '#1073#1072#1085#1082#1086#1074#1072' '#1089#1084#1077#1090#1082#1072
          TabOrder = 1
          OnClick = rbBankAccountPaymentClick
        end
        object cbBankAccount: TJvDBLookupCombo
          Left = 214
          Top = 16
          Width = 411
          Height = 21
          DataField = 'ACCOUNT_FULL_NAME'
          DataSource = dsData
          LookupField = 'ACCOUNT_FULL_NAME'
          LookupDisplay = 'ACCOUNT_FULL_NAME'
          LookupSource = dsCompanyBankAccounts
          TabOrder = 2
        end
        object chkIsPaid: TAbmesDBCheckBox
          Left = 529
          Top = 10
          Width = 64
          Height = 17
          Caption = #1055#1083#1072#1090#1077#1085#1072
          DataField = 'IS_PAID'
          DataSource = dsData
          TabOrder = 3
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          Visible = False
        end
        object chkIsVatPaid: TAbmesDBCheckBox
          Left = 529
          Top = 26
          Width = 96
          Height = 17
          Caption = #1055#1083#1072#1090#1077#1085#1086' '#1044#1044#1057
          DataField = 'IS_VAT_PAID'
          DataSource = dsData
          TabOrder = 4
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          Visible = False
        end
        object cbVatReasons: TJvDBLookupCombo
          Left = 344
          Top = 49
          Width = 282
          Height = 21
          DataField = 'VAT_REASON_CODE'
          DataSource = dsData
          LookupField = 'VAT_REASON_CODE'
          LookupDisplay = 'VAT_REASON_NAME'
          LookupSource = dsVatReasons
          TabOrder = 5
        end
      end
      object gbNotes: TGroupBox
        Left = 0
        Top = 81
        Width = 633
        Height = 77
        Caption = ' '#1041#1077#1083#1077#1078#1082#1080' '
        TabOrder = 1
        object moNotes: TDBMemo
          Left = 5
          Top = 16
          Width = 623
          Height = 55
          DataField = 'NOTES'
          DataSource = dsData
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 64
    Top = 264
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    DataSetField = cdsDataqryInvoiceItems
    FieldDefs = <
      item
        Name = 'BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'INVOICE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'INVOICE_ITEM_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ITEM_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'ACCOUNT_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'IS_VAT_FREE'
        DataType = ftFloat
      end
      item
        Name = 'ACCOUNT_MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'PRODUCT_NO'
        DataType = ftFloat
      end
      item
        Name = 'MARKET_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'DISCOUNT_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'FALSH_ACCOUNT_MEASURE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SINGLE_PRICE_WITHOUT_VAT'
        DataType = ftFloat
      end
      item
        Name = 'SINGLE_PRICE_WITH_VAT'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_PRICE_WITHOUT_VAT'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_PRICE_WITH_VAT'
        DataType = ftFloat
      end
      item
        Name = 'BND_PROCESS_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BND_PROCESS_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BND_PROCESS_OBJECT_IDENTIFIER'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'CLIENT_REQUEST_NO'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'ACCOUNT_MEASURE_I_ABBREV'
        DataType = ftWideString
        Size = 5
      end>
    IndexDefs = <
      item
        Name = 'idxSaleShipments'
        Fields = 'BND_PROCESS_OBJECT_BRANCH_CODE;BND_PROCESS_OBJECT_CODE'
      end>
    OnCalcFields = cdsGridDataCalcFields
    OnNewRecord = cdsGridDataNewRecord
    Left = 32
    Top = 264
    object cdsGridData_FALSH_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_FALSH_ACCOUNT_MEASURE_ABBREV'
      LookupDataSet = cdsMeasures
      LookupKeyFields = 'MEASURE_CODE'
      LookupResultField = 'MEASURE_ABBREV'
      KeyFields = 'FALSH_ACCOUNT_MEASURE_CODE'
      ProviderFlags = []
      Size = 10
      Lookup = True
    end
    object cdsGridData_PAY_TYPE_TEXT: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_PAY_TYPE_TEXT'
      ProviderFlags = []
      Calculated = True
    end
    object cdsGridDataBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
    end
    object cdsGridDataINVOICE_CODE: TAbmesFloatField
      FieldName = 'INVOICE_CODE'
    end
    object cdsGridDataINVOICE_ITEM_CODE: TAbmesFloatField
      FieldName = 'INVOICE_ITEM_CODE'
    end
    object cdsGridDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      OnChange = cdsGridDataPRODUCT_CODEChange
    end
    object cdsGridDataITEM_NAME: TAbmesWideStringField
      DisplayLabel = #1040#1088#1090#1080#1082#1091#1083
      FieldName = 'ITEM_NAME'
      Required = True
      OnChange = cdsGridDataITEM_NAMEChange
      Size = 100
    end
    object cdsGridDataACCOUNT_QUANTITY: TAbmesFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'ACCOUNT_QUANTITY'
      Required = True
      OnChange = cdsGridDataACCOUNT_QUANTITYChange
      DisplayFormat = ',0.#####'
    end
    object cdsGridDataSINGLE_PRICE: TAbmesFloatField
      DisplayLabel = #1045#1076'. '#1094#1077#1085#1072
      FieldName = 'SINGLE_PRICE'
      Required = True
      OnChange = cdsGridDataSINGLE_PRICEChange
      DisplayFormat = ',0.00##'
    end
    object cdsGridDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      DisplayLabel = #1052#1077#1088#1085#1072' '#1077#1076'.'
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Required = True
      Size = 5
    end
    object cdsGridDataPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object cdsGridDataMARKET_SINGLE_PRICE: TAbmesFloatField
      DisplayLabel = #1055#1072#1079#1072#1088#1085#1072' '#1094#1077#1085#1072
      FieldName = 'MARKET_SINGLE_PRICE'
      Required = True
      OnChange = CalcSinglePrice
      DisplayFormat = ',0.00##'
    end
    object cdsGridDataDISCOUNT_PERCENT: TAbmesFloatField
      DisplayLabel = #1054#1090#1089#1090#1098#1087#1082#1072
      FieldName = 'DISCOUNT_PERCENT'
      Required = True
      OnChange = CalcSinglePrice
      OnGetText = cdsGridDataDISCOUNT_PERCENTGetText
      OnSetText = cdsGridDataDISCOUNT_PERCENTSetText
      OnValidate = cdsGridDataDISCOUNT_PERCENTValidate
      DisplayFormat = ',0.##'
    end
    object cdsGridDataFALSH_ACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'FALSH_ACCOUNT_MEASURE_CODE'
    end
    object cdsGridData_TOTAL_PRICE_FOR_VAT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_PRICE_FOR_VAT'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_TOTAL_PRICE_FOR_PAYMENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_PRICE_FOR_PAYMENT'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_TOTAL_VAT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_VAT'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_TOTAL_PRICE: TAbmesFloatField
      DisplayLabel = #1062#1077#1085#1072
      FieldKind = fkCalculated
      FieldName = '_TOTAL_PRICE'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridDataSINGLE_PRICE_WITHOUT_VAT: TAbmesFloatField
      FieldName = 'SINGLE_PRICE_WITHOUT_VAT'
      OnChange = cdsGridDataSINGLE_PRICE_WITHOUT_VATChange
      DisplayFormat = ',0.0000'
    end
    object cdsGridDataSINGLE_PRICE_WITH_VAT: TAbmesFloatField
      FieldName = 'SINGLE_PRICE_WITH_VAT'
      OnChange = cdsGridDataSINGLE_PRICE_WITH_VATChange
      DisplayFormat = ',0.0000'
    end
    object cdsGridDataTOTAL_PRICE_WITHOUT_VAT: TAbmesFloatField
      FieldName = 'TOTAL_PRICE_WITHOUT_VAT'
      ProviderFlags = []
      OnChange = cdsGridDataTOTAL_PRICE_WITHOUT_VATChange
      DisplayFormat = ',0.0000'
    end
    object cdsGridDataTOTAL_PRICE_WITH_VAT: TAbmesFloatField
      FieldName = 'TOTAL_PRICE_WITH_VAT'
      ProviderFlags = []
      OnChange = cdsGridDataTOTAL_PRICE_WITH_VATChange
      DisplayFormat = ',0.0000'
    end
    object cdsGridDataBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
    end
    object cdsGridDataBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
    end
    object cdsGridData_TOTAL_PRICE_FOR_VAT_BC: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_PRICE_FOR_VAT_BC'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_TOTAL_VAT_BC: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_VAT_BC'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridDataBND_PROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BND_PROCESS_OBJECT_IDENTIFIER'
      Size = 100
    end
    object cdsGridDataCLIENT_REQUEST_NO: TAbmesWideStringField
      FieldName = 'CLIENT_REQUEST_NO'
      Size = 50
    end
    object cdsGridData_INVOICE_ITEM_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_INVOICE_ITEM_IDENTIFIER'
      Size = 100
      Calculated = True
    end
    object cdsGridDataACCOUNT_MEASURE_I_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_I_ABBREV'
      Size = 5
    end
    object cdsGridData_FALSH_ACCOUNT_MEASURE_I_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_FALSH_ACCOUNT_MEASURE_I_ABBREV'
      LookupDataSet = cdsMeasures
      LookupKeyFields = 'MEASURE_CODE'
      LookupResultField = 'I_MEASURE_ABBREV'
      KeyFields = 'FALSH_ACCOUNT_MEASURE_CODE'
      ProviderFlags = []
      Size = 10
      Lookup = True
    end
    object cdsGridData_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_CURRENCY_ABBREV'
      Size = 10
      Calculated = True
    end
    object cdsGridData_MAX_INVOICE_ITEM_CODE: TAggregateField
      FieldName = '_MAX_INVOICE_ITEM_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Max(INVOICE_ITEM_CODE)'
    end
    object cdsGridData_OVERALL_TOTAL_PRICE: TAggregateField
      Alignment = taRightJustify
      FieldName = '_OVERALL_TOTAL_PRICE'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'Sum(SINGLE_PRICE * ACCOUNT_QUANTITY)'
    end
  end
  inherited alActions: TActionList
    Left = 104
    Top = 232
    inherited actForm: TAction
      Caption = #1060#1072#1082#1090#1091#1088#1072
    end
    object actAddItem: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077'...'
      ImageIndex = 4
    end
    object actRemoveItem: TAction
      Caption = #1048#1079#1090#1088#1080#1074#1072#1085#1077'...'
      ImageIndex = 5
    end
    object actEditItem: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
      ImageIndex = 6
    end
    object actStorno: TAction
      Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077'...'
      ImageIndex = 16
      OnExecute = actStornoExecute
      OnUpdate = actStornoUpdate
    end
    object actPrintMatrixWide: TAction
      Caption = #1055#1077#1095#1072#1090' '#1085#1072' '#1084#1072#1090#1088#1080#1095#1077#1085' '#1087#1088#1080#1085#1090#1077#1088' ('#1096#1080#1088#1086#1082')'
      ImageIndex = 2
      OnExecute = actPrintMatrixWideExecute
    end
    object actPrintMatrix: TAction
      Caption = #1055#1077#1095#1072#1090' '#1085#1072' '#1084#1072#1090#1088#1080#1095#1077#1085' '#1087#1088#1080#1085#1090#1077#1088
      ImageIndex = 2
      OnExecute = actPrintMatrixExecute
    end
    object actApprove: TAction
      Caption = #1059#1090#1074#1098#1088#1078#1076#1072#1074#1072#1085#1077'...'
      Hint = #1059#1090#1074#1098#1088#1078#1076#1072#1074#1072#1085#1077
      ImageIndex = 109
      OnExecute = actApproveExecute
      OnUpdate = actApproveUpdate
    end
    object actInsertSaleShipments: TAction
      Caption = #1054#1055#1055'...'
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1056#1077#1076#1086#1074#1077' '#1086#1090' '#1054#1055#1055
      ImageIndex = 4
      OnExecute = actInsertSaleShipmentsExecute
      OnUpdate = actInsertSaleShipmentsUpdate
    end
    object actUnapprove: TAction
      Caption = #1056#1072#1079#1091#1090#1074#1098#1088#1078#1076#1072#1074#1072#1085#1077'...'
      Hint = #1056#1072#1079#1091#1090#1074#1098#1088#1078#1076#1072#1074#1072#1085#1077
      OnExecute = actUnapproveExecute
      OnUpdate = actUnapproveUpdate
    end
    object actIPrint: TAction
      Caption = 'Print'
      Hint = 'Print'
      ImageIndex = 2
      OnExecute = actIPrintExecute
      OnUpdate = actPrintUpdate
    end
    object actIPrintMatrix: TAction
      Caption = 'Print using a matrix printer'
      ImageIndex = 2
      OnExecute = actIPrintMatrixExecute
    end
    object actIPrintMatrixWide: TAction
      Caption = 'Print using a matrix printer (wide)'
      ImageIndex = 2
      OnExecute = actIPrintMatrixWideExecute
    end
    object actDocs: TAction
      Caption = 'actDocs'
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1060#1072#1082#1090#1091#1088#1072#1090#1072
      ImageIndex = 1
      OnExecute = actDocsExecute
      OnUpdate = actDocsUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 32
    Top = 296
  end
  inherited dsGridDataParams: TDataSource
    Left = 64
    Top = 296
  end
  inherited dsData: TDataSource
    Left = 64
    Top = 232
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conInvoices
    Params = <
      item
        DataType = ftFloat
        Name = 'INVOICE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVOICE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvInvoice'
    AfterOpen = cdsDataAfterOpen
    BeforePost = cdsDataBeforePost
    OnCalcFields = cdsDataCalcFields
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    Left = 32
    Top = 232
    object cdsDataIS_VAT_PAID: TAbmesFloatField
      FieldName = 'IS_VAT_PAID'
      FieldValueType = fvtBoolean
    end
    object cdsDataIS_PAID: TAbmesFloatField
      FieldName = 'IS_PAID'
      FieldValueType = fvtBoolean
    end
    object cdsData_INVOICE_TYPE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_INVOICE_TYPE_NAME'
      LookupDataSet = cdsInvoiceTypes
      LookupKeyFields = 'INVOICE_TYPE_CODE'
      LookupResultField = 'INVOICE_TYPE_NAME'
      KeyFields = 'INVOICE_TYPE_CODE'
      OnGetText = cdsData_INVOICE_TYPE_NAMEGetText
      Size = 100
      Lookup = True
    end
    object cdsData_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_CURRENCY_ABBREV'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = 'CURRENCY_CODE'
      Size = 10
      Lookup = True
    end
    object cdsData_TO_PAY_TEXT: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_TO_PAY_TEXT'
      Size = 150
      Calculated = True
    end
    object cdsData_OVERALL_TOTAL_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_OVERALL_TOTAL_PRICE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsData_TOTAL_PRICE_FOR_VAT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_PRICE_FOR_VAT'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsData_TOTAL_VAT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_VAT'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsData_TOTAL_PRICE_FOR_PAYMENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_PRICE_FOR_PAYMENT'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsData_PAYMENT_TYPE_TEXT: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_PAYMENT_TYPE_TEXT'
      Size = 150
      Calculated = True
    end
    object cdsData_NOTES: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_NOTES'
      Size = 270
      Calculated = True
    end
    object cdsData_SELLER_PERSON_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SELLER_PERSON_NAME'
      Size = 100
      Calculated = True
    end
    object cdsData_BUYER_PERSON_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_BUYER_PERSON_NAME'
      Size = 100
      Calculated = True
    end
    object cdsDataINVOICE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'INVOICE_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDataINVOICE_CODE: TAbmesFloatField
      FieldName = 'INVOICE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDataIS_PROFORM_INVOICE: TAbmesFloatField
      FieldName = 'IS_PROFORM_INVOICE'
      Required = True
      OnChange = cdsDataIS_PROFORM_INVOICEChange
      FieldValueType = fvtBoolean
    end
    object cdsDataINVOICE_NO: TAbmesFloatField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'INVOICE_NO'
      Required = True
      DisplayFormat = '0000000000'
    end
    object cdsDataINVOICE_TYPE_CODE: TAbmesFloatField
      FieldName = 'INVOICE_TYPE_CODE'
    end
    object cdsDataINVOICE_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'INVOICE_DATE'
      Required = True
      OnChange = cdsDataINVOICE_DATEChange
    end
    object cdsDataSELLER_COMPANY_CODE: TAbmesFloatField
      DisplayLabel = #1048#1079#1076#1072#1090#1077#1083
      FieldName = 'SELLER_COMPANY_CODE'
      Required = True
      OnChange = cdsDataSELLER_COMPANY_CODEChange
    end
    object cdsDataSELLER_NAME: TAbmesWideStringField
      DisplayLabel = #1048#1079#1076#1072#1090#1077#1083'|'#1048#1084#1077
      FieldName = 'SELLER_NAME'
      OnGetText = cdsDataSELLER_NAMEGetText
      Size = 50
    end
    object cdsDataSELLER_CITY: TAbmesWideStringField
      DisplayLabel = #1048#1079#1076#1072#1090#1077#1083'|'#1053#1072#1089#1077#1083#1077#1085#1086' '#1052#1103#1089#1090#1086
      FieldName = 'SELLER_CITY'
      Required = True
      Size = 50
    end
    object cdsDataSELLER_ADDRESS: TAbmesWideStringField
      DisplayLabel = #1048#1079#1076#1072#1090#1077#1083'|'#1040#1076#1088#1077#1089
      FieldName = 'SELLER_ADDRESS'
      Required = True
      OnChange = cdsDataSELLER_ADDRESSChange
      Size = 250
    end
    object cdsDataBUYER_COMPANY_CODE: TAbmesFloatField
      DisplayLabel = #1055#1086#1083#1091#1095#1072#1090#1077#1083'|'#1050#1086#1084#1087#1072#1085#1080#1103
      FieldName = 'BUYER_COMPANY_CODE'
      OnChange = cdsDataBUYER_COMPANY_CODEChange
    end
    object cdsDataBUYER_NAME: TAbmesWideStringField
      DisplayLabel = #1055#1086#1083#1091#1095#1072#1090#1077#1083'|'#1048#1084#1077
      FieldName = 'BUYER_NAME'
      OnGetText = cdsDataBUYER_NAMEGetText
      Size = 50
    end
    object cdsDataBUYER_CITY: TAbmesWideStringField
      DisplayLabel = #1055#1086#1083#1091#1095#1072#1090#1077#1083'|'#1053#1072#1089#1077#1083#1077#1085#1086' '#1084#1103#1089#1090#1086
      FieldName = 'BUYER_CITY'
      Size = 50
    end
    object cdsDataBUYER_ADDRESS: TAbmesWideStringField
      DisplayLabel = #1055#1086#1083#1091#1095#1072#1090#1077#1083'|'#1040#1076#1088#1077#1089
      FieldName = 'BUYER_ADDRESS'
      Size = 250
    end
    object cdsDataBUYER_PERSON_NAME: TAbmesWideStringField
      DisplayLabel = #1055#1086#1083#1091#1095#1077#1085#1072' '#1086#1090
      FieldName = 'BUYER_PERSON_NAME'
      OnSetText = cdsDataBUYER_PERSON_NAMESetText
      Size = 100
    end
    object cdsDataSELLER_PERSON_NAME: TAbmesWideStringField
      DisplayLabel = #1048#1079#1076#1072#1076#1077#1085#1072' '#1086#1090
      FieldName = 'SELLER_PERSON_NAME'
      OnSetText = cdsDataSELLER_PERSON_NAMESetText
      Size = 100
    end
    object cdsDataCURRENCY_CODE: TAbmesFloatField
      DisplayLabel = #1042#1072#1083#1091#1090#1072
      FieldName = 'CURRENCY_CODE'
      Required = True
      OnChange = cdsDataCURRENCY_CODEChange
    end
    object cdsDataPAYMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'PAYMENT_TYPE_CODE'
    end
    object cdsDataACCOUNT_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_CODE'
    end
    object cdsDataBANK_COMPANY_CODE: TAbmesFloatField
      DisplayLabel = #1041#1072#1085#1082#1086#1074#1072' '#1057#1084#1077#1090#1082#1072
      FieldName = 'BANK_COMPANY_CODE'
    end
    object cdsDataACCOUNT: TAbmesFloatField
      DisplayLabel = #1041#1072#1085#1082#1086#1074#1072' '#1057#1084#1077#1090#1082#1072
      FieldName = 'ACCOUNT'
    end
    object cdsDataIBAN: TAbmesWideStringField
      FieldName = 'IBAN'
      Size = 50
    end
    object cdsDataACCOUNT_FULL_NAME: TAbmesWideStringField
      DisplayLabel = #1041#1072#1085#1082#1086#1074#1072' '#1057#1084#1077#1090#1082#1072
      FieldName = 'ACCOUNT_FULL_NAME'
      ProviderFlags = []
      OnChange = cdsDataACCOUNT_FULL_NAMEChange
      Size = 186
    end
    object cdsDataVAT_ACCOUNT_CODE: TAbmesFloatField
      FieldName = 'VAT_ACCOUNT_CODE'
    end
    object cdsDataVAT_IBAN: TAbmesWideStringField
      FieldName = 'VAT_IBAN'
      Size = 50
    end
    object cdsDataVAT_ACCOUNT: TAbmesFloatField
      DisplayLabel = #1044#1044#1057' '#1041#1072#1085#1082#1086#1074#1072' '#1057#1084#1077#1090#1082#1072
      FieldName = 'VAT_ACCOUNT'
    end
    object cdsDataVAT_BANK_COMPANY_CODE: TAbmesFloatField
      DisplayLabel = #1044#1044#1057' '#1041#1072#1085#1082#1086#1074#1072' '#1057#1084#1077#1090#1082#1072
      FieldName = 'VAT_BANK_COMPANY_CODE'
    end
    object cdsDataVAT_ACCOUNT_FULL_NAME: TAbmesWideStringField
      DisplayLabel = #1044#1044#1057' '#1041#1072#1085#1082#1086#1074#1072' '#1057#1084#1077#1090#1082#1072
      FieldName = 'VAT_ACCOUNT_FULL_NAME'
      ProviderFlags = []
      OnChange = cdsDataVAT_ACCOUNT_FULL_NAMEChange
      Size = 186
    end
    object cdsDataVAT_PERCENT: TAbmesFloatField
      FieldName = 'VAT_PERCENT'
    end
    object cdsDataNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsDataCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object cdsDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsDataCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object cdsDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object cdsDataCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object cdsDataCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object cdsDataSTORNO_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'STORNO_EMPLOYEE_CODE'
    end
    object cdsDataSTORNO_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORNO_DATE'
    end
    object cdsDataSTORNO_TIME: TAbmesSQLTimeStampField
      FieldName = 'STORNO_TIME'
    end
    object cdsDataqryInvoiceItems: TDataSetField
      FieldName = 'qryInvoiceItems'
    end
    object cdsData_VAT_PERCENT_LABEL: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_VAT_PERCENT_LABEL'
      Calculated = True
    end
    object cdsData_BUYER_NAME_1: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_BUYER_NAME_1'
      Size = 23
      Calculated = True
    end
    object cdsData_BUYER_NAME_2: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_BUYER_NAME_2'
      Size = 23
      Calculated = True
    end
    object cdsData_SELLER_NAME_1: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SELLER_NAME_1'
      Size = 23
      Calculated = True
    end
    object cdsData_SELLER_NAME_2: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SELLER_NAME_2'
      Size = 23
      Calculated = True
    end
    object cdsDataINVOICE_PLACE: TAbmesWideStringField
      DisplayLabel = #1052#1103#1089#1090#1086
      FieldName = 'INVOICE_PLACE'
      Required = True
      Size = 50
    end
    object cdsDataSELLER_PERSON_NAME_SO: TAbmesWideStringField
      DisplayLabel = #1054#1090#1075'. '#1079#1072' '#1057#1054
      FieldName = 'SELLER_PERSON_NAME_SO'
      OnSetText = cdsDataSELLER_PERSON_NAME_SOSetText
      Size = 100
    end
    object cdsDataBUYER_PERSON_NAME_SO: TAbmesWideStringField
      DisplayLabel = #1054#1090#1075'. '#1079#1072' '#1057#1054
      FieldName = 'BUYER_PERSON_NAME_SO'
      OnSetText = cdsDataBUYER_PERSON_NAME_SOSetText
      Size = 100
    end
    object cdsData_IS_ORIGINAL_TEXT: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_IS_ORIGINAL_TEXT'
      Size = 30
      Calculated = True
    end
    object cdsData_VAT_PAYMENT_TYPE_TEXT: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_VAT_PAYMENT_TYPE_TEXT'
      Size = 150
      Calculated = True
    end
    object cdsData_VAT_PAYMENT_TYPE_TEXT_2: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_VAT_PAYMENT_TYPE_TEXT_2'
      Size = 150
      Calculated = True
    end
    object cdsDataBUYER_TAX_NO: TAbmesFloatField
      FieldName = 'BUYER_TAX_NO'
    end
    object cdsDataSELLER_TAX_NO: TAbmesFloatField
      FieldName = 'SELLER_TAX_NO'
    end
    object cdsDataSELLER_BULSTAT: TAbmesWideStringField
      DisplayLabel = #1048#1079#1076#1072#1090#1077#1083'|'#1041#1059#1051#1057#1058#1040#1058
      FieldName = 'SELLER_BULSTAT'
      Size = 9
    end
    object cdsDataBUYER_BULSTAT: TAbmesWideStringField
      DisplayLabel = #1055#1086#1083#1091#1095#1072#1090#1077#1083'|'#1041#1059#1051#1057#1058#1040#1058
      FieldName = 'BUYER_BULSTAT'
      Size = 9
    end
    object cdsDataSELLER_BULSTAT_EX: TAbmesWideStringField
      FieldName = 'SELLER_BULSTAT_EX'
      Size = 4
    end
    object cdsDataBUYER_BULSTAT_EX: TAbmesWideStringField
      FieldName = 'BUYER_BULSTAT_EX'
      Size = 4
    end
    object cdsData_SELLER_BULSTAT: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SELLER_BULSTAT'
      Size = 14
      Calculated = True
    end
    object cdsData_BUYER_BULSTAT: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_BUYER_BULSTAT'
      Size = 14
      Calculated = True
    end
    object cdsDataSELLER_BULSTAT_NO: TAbmesFloatField
      FieldName = 'SELLER_BULSTAT_NO'
    end
    object cdsDataBUYER_BULSTAT_NO: TAbmesFloatField
      FieldName = 'BUYER_BULSTAT_NO'
    end
    object cdsDataSELLER_FIRST_NAME: TAbmesWideStringField
      DisplayLabel = #1048#1079#1076#1072#1090#1077#1083'|'#1048#1084#1077
      FieldName = 'SELLER_FIRST_NAME'
      Size = 50
    end
    object cdsDataSELLER_MIDDLE_NAME: TAbmesWideStringField
      DisplayLabel = #1048#1079#1076#1072#1090#1077#1083'|'#1055#1088#1077#1079#1080#1084#1077
      FieldName = 'SELLER_MIDDLE_NAME'
      Size = 50
    end
    object cdsDataSELLER_LAST_NAME: TAbmesWideStringField
      DisplayLabel = #1048#1079#1076#1072#1090#1077#1083'|'#1060#1072#1084#1080#1083#1080#1103
      FieldName = 'SELLER_LAST_NAME'
      Size = 50
    end
    object cdsDataSELLER_EGN: TAbmesWideStringField
      DisplayLabel = #1048#1079#1076#1072#1090#1077#1083'|'#1045#1043#1053'/'#1051#1053#1063
      FieldName = 'SELLER_EGN'
      Size = 10
    end
    object cdsDataSELLER_IS_PERSON: TAbmesFloatField
      FieldName = 'SELLER_IS_PERSON'
      FieldValueType = fvtBoolean
    end
    object cdsDataBUYER_FIRST_NAME: TAbmesWideStringField
      DisplayLabel = #1055#1086#1083#1091#1095#1072#1090#1077#1083'|'#1048#1084#1077
      FieldName = 'BUYER_FIRST_NAME'
      Size = 50
    end
    object cdsDataBUYER_MIDDLE_NAME: TAbmesWideStringField
      DisplayLabel = #1055#1086#1083#1091#1095#1072#1090#1077#1083'|'#1055#1088#1077#1079#1080#1084#1077
      FieldName = 'BUYER_MIDDLE_NAME'
      Size = 50
    end
    object cdsDataBUYER_LAST_NAME: TAbmesWideStringField
      DisplayLabel = #1055#1086#1083#1091#1095#1072#1090#1077#1083'|'#1060#1072#1084#1080#1083#1080#1103
      FieldName = 'BUYER_LAST_NAME'
      Size = 50
    end
    object cdsDataBUYER_EGN: TAbmesWideStringField
      DisplayLabel = #1055#1086#1083#1091#1095#1072#1090#1077#1083'|'#1045#1043#1053'/'#1051#1053#1063
      FieldName = 'BUYER_EGN'
      Size = 10
    end
    object cdsDataBUYER_IS_PERSON: TAbmesFloatField
      FieldName = 'BUYER_IS_PERSON'
      FieldValueType = fvtBoolean
    end
    object cdsData_BUYER_BULSTAT_OR_EGN_LABEL: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_BUYER_BULSTAT_OR_EGN_LABEL'
      Calculated = True
    end
    object cdsData_BUYER_BULSTAT_OR_EGN_VALUE: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_BUYER_BULSTAT_OR_EGN_VALUE'
      Calculated = True
    end
    object cdsData_SELLER_BULSTAT_OR_EGN_LABEL: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SELLER_BULSTAT_OR_EGN_LABEL'
      Calculated = True
    end
    object cdsData_SELLER_BULSTAT_OR_EGN_VALUE: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SELLER_BULSTAT_OR_EGN_VALUE'
      Calculated = True
    end
    object cdsDataTO_PAY_TEXT: TAbmesWideStringField
      FieldName = 'TO_PAY_TEXT'
      ProviderFlags = []
      Size = 100
    end
    object cdsDataEVENT_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1057#1098#1073#1080#1090#1080#1077
      FieldName = 'EVENT_DATE'
      Required = True
    end
    object cdsDataSELLER_VAT_REGISTERED: TAbmesFloatField
      FieldName = 'SELLER_VAT_REGISTERED'
      FieldValueType = fvtBoolean
    end
    object cdsDataBUYER_VAT_REGISTERED: TAbmesFloatField
      FieldName = 'BUYER_VAT_REGISTERED'
      FieldValueType = fvtBoolean
    end
    object cdsDataINVOICE_VAT_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1044#1072#1085'. '#1089#1090#1072#1074#1082#1072' '#1044#1044#1057
      FieldName = 'INVOICE_VAT_TYPE_CODE'
      Required = True
      OnChange = cdsDataINVOICE_VAT_TYPE_CODEChange
    end
    object cdsData_INVOICE_VAT_TYPE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_INVOICE_VAT_TYPE_NAME'
      LookupDataSet = cdsInvoiceVatTypes
      LookupKeyFields = 'INVOICE_VAT_TYPE_CODE'
      LookupResultField = 'INVOICE_VAT_TYPE_NAME'
      KeyFields = 'INVOICE_VAT_TYPE_CODE'
      OnGetText = cdsData_INVOICE_VAT_TYPE_NAMEGetText
      Size = 100
      Lookup = True
    end
    object cdsDataBASE_CURRENCY_FIXING: TAbmesFloatField
      FieldName = 'BASE_CURRENCY_FIXING'
      ProviderFlags = []
    end
    object cdsData_BASE_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_BASE_CURRENCY_ABBREV'
      Size = 5
      Calculated = True
    end
    object cdsData_TOTAL_PRICE_FOR_VAT_BC: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_PRICE_FOR_VAT_BC'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsData_TOTAL_VAT_BC: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_VAT_BC'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsDataBUYER_VAT_NO: TAbmesWideStringField
      FieldName = 'BUYER_VAT_NO'
      OnGetText = cdsDataBUYER_VAT_NOGetText
    end
    object cdsDataSELLER_VAT_NO: TAbmesWideStringField
      FieldName = 'SELLER_VAT_NO'
      OnGetText = cdsDataSELLER_VAT_NOGetText
    end
    object cdsDataAPPROVE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'APPROVE_EMPLOYEE_CODE'
    end
    object cdsDataAPPROVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'APPROVE_DATE'
    end
    object cdsDataAPPROVE_TIME: TAbmesSQLTimeStampField
      FieldName = 'APPROVE_TIME'
    end
    object cdsData_PRINT_INVOICE_STATUS_TEXT: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_PRINT_INVOICE_STATUS_TEXT'
      Calculated = True
    end
    object cdsDataSELLER_I_NAME: TAbmesWideStringField
      FieldName = 'SELLER_I_NAME'
      Size = 50
    end
    object cdsDataSELLER_I_CITY: TAbmesWideStringField
      FieldName = 'SELLER_I_CITY'
      Size = 50
    end
    object cdsDataSELLER_I_ADDRESS: TAbmesWideStringField
      FieldName = 'SELLER_I_ADDRESS'
      Size = 250
    end
    object cdsDataSELLER_I_FIRST_NAME: TAbmesWideStringField
      FieldName = 'SELLER_I_FIRST_NAME'
      Size = 50
    end
    object cdsDataSELLER_I_MIDDLE_NAME: TAbmesWideStringField
      FieldName = 'SELLER_I_MIDDLE_NAME'
      Size = 50
    end
    object cdsDataSELLER_I_LAST_NAME: TAbmesWideStringField
      FieldName = 'SELLER_I_LAST_NAME'
      Size = 50
    end
    object cdsDataBUYER_I_NAME: TAbmesWideStringField
      FieldName = 'BUYER_I_NAME'
      Size = 50
    end
    object cdsDataBUYER_I_CITY: TAbmesWideStringField
      FieldName = 'BUYER_I_CITY'
      Size = 50
    end
    object cdsDataBUYER_I_ADDRESS: TAbmesWideStringField
      FieldName = 'BUYER_I_ADDRESS'
      Size = 250
    end
    object cdsDataBUYER_I_FIRST_NAME: TAbmesWideStringField
      FieldName = 'BUYER_I_FIRST_NAME'
      Size = 50
    end
    object cdsDataBUYER_I_MIDDLE_NAME: TAbmesWideStringField
      FieldName = 'BUYER_I_MIDDLE_NAME'
      Size = 50
    end
    object cdsDataBUYER_I_LAST_NAME: TAbmesWideStringField
      FieldName = 'BUYER_I_LAST_NAME'
      Size = 50
    end
    object cdsDataVAT_REASON_CODE: TAbmesFloatField
      FieldName = 'VAT_REASON_CODE'
    end
    object cdsDataRECEIVER_COMPANY_CODE: TAbmesFloatField
      FieldName = 'RECEIVER_COMPANY_CODE'
      OnChange = cdsDataRECEIVER_COMPANY_CODEChange
    end
    object cdsDataRECEIVER_NAME: TAbmesWideStringField
      FieldName = 'RECEIVER_NAME'
      Size = 50
    end
    object cdsDataRECEIVER_I_NAME: TAbmesWideStringField
      FieldName = 'RECEIVER_I_NAME'
      Size = 50
    end
    object cdsDataRECEIVER_ADDRESS: TAbmesWideStringField
      FieldName = 'RECEIVER_ADDRESS'
      Size = 250
    end
    object cdsDataSENDER_COMPANY_CODE: TAbmesFloatField
      FieldName = 'SENDER_COMPANY_CODE'
      OnChange = cdsDataSENDER_COMPANY_CODEChange
    end
    object cdsDataRECEIVER_I_ADDRESS: TAbmesWideStringField
      FieldName = 'RECEIVER_I_ADDRESS'
      Size = 250
    end
    object cdsDataSENDER_NAME: TAbmesWideStringField
      FieldName = 'SENDER_NAME'
      Size = 50
    end
    object cdsDataSENDER_I_NAME: TAbmesWideStringField
      FieldName = 'SENDER_I_NAME'
      Size = 50
    end
    object cdsDataSENDER_ADDRESS: TAbmesWideStringField
      FieldName = 'SENDER_ADDRESS'
      Size = 250
    end
    object cdsDataSENDER_I_ADDRESS: TAbmesWideStringField
      FieldName = 'SENDER_I_ADDRESS'
      Size = 250
    end
    object cdsData_IS_ORIGINAL_I_TEXT: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_IS_ORIGINAL_I_TEXT'
      Calculated = True
    end
    object cdsData_TO_PAY_I_TEXT: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_TO_PAY_I_TEXT'
      Size = 100
      Calculated = True
    end
    object cdsData_PAYMENT_TYPE_I_TEXT: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_PAYMENT_TYPE_I_TEXT'
      Size = 150
      Calculated = True
    end
    object cdsData_INVOICE_TYPE_I_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_INVOICE_TYPE_I_NAME'
      LookupDataSet = cdsInvoiceTypes
      LookupKeyFields = 'INVOICE_TYPE_CODE'
      LookupResultField = 'INVOICE_TYPE_I_NAME'
      KeyFields = 'INVOICE_TYPE_CODE'
      OnGetText = cdsData_INVOICE_TYPE_I_NAMEGetText
      Lookup = True
    end
    object cdsDataTO_PAY_I_TEXT: TAbmesWideStringField
      FieldName = 'TO_PAY_I_TEXT'
      ProviderFlags = []
      Size = 100
    end
    object cdsData_PRINT_INVOICE_STATUS_I_TEXT: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_PRINT_INVOICE_STATUS_I_TEXT'
      Calculated = True
    end
    object cdsData_VAT_REASON_I_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_VAT_REASON_I_NAME'
      LookupDataSet = cdsVatReasons
      LookupKeyFields = 'VAT_REASON_CODE'
      LookupResultField = 'VAT_REASON_I_NAME'
      KeyFields = 'VAT_REASON_CODE'
      Lookup = True
    end
    object cdsData_VAT_REASON_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_VAT_REASON_NAME'
      LookupDataSet = cdsVatReasons
      LookupKeyFields = 'VAT_REASON_CODE'
      LookupResultField = 'VAT_REASON_NAME'
      KeyFields = 'VAT_REASON_CODE'
      Lookup = True
    end
    object cdsDataINVOICE_I_PLACE: TAbmesWideStringField
      FieldName = 'INVOICE_I_PLACE'
      Size = 50
    end
    object cdsDataBUYER_PERSON_I_NAME: TAbmesWideStringField
      FieldName = 'BUYER_PERSON_I_NAME'
      Size = 100
    end
    object cdsDataSELLER_PERSON_I_NAME: TAbmesWideStringField
      FieldName = 'SELLER_PERSON_I_NAME'
      Size = 100
    end
    object cdsData_BUYER_I_NAME_1: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_BUYER_I_NAME_1'
      Size = 23
      Calculated = True
    end
    object cdsData_BUYER_I_NAME_2: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_BUYER_I_NAME_2'
      Size = 23
      Calculated = True
    end
    object cdsData_SELLER_I_NAME_1: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SELLER_I_NAME_1'
      Size = 23
      Calculated = True
    end
    object cdsData_SELLER_I_NAME_2: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SELLER_I_NAME_2'
      Size = 23
      Calculated = True
    end
    object cdsData_RECEIVER_NAME_1: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_RECEIVER_NAME_1'
      Size = 23
      Calculated = True
    end
    object cdsData_RECEIVER_NAME_2: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_RECEIVER_NAME_2'
      Size = 23
      Calculated = True
    end
    object cdsData_RECEIVER_I_NAME_1: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_RECEIVER_I_NAME_1'
      Size = 23
      Calculated = True
    end
    object cdsData_RECEIVER_I_NAME_2: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_RECEIVER_I_NAME_2'
      Size = 23
      Calculated = True
    end
    object cdsData_SENDER_NAME_1: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SENDER_NAME_1'
      Size = 23
      Calculated = True
    end
    object cdsData_SENDER_NAME_2: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SENDER_NAME_2'
      Size = 23
      Calculated = True
    end
    object cdsData_SENDER_I_NAME_1: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SENDER_I_NAME_1'
      Size = 23
      Calculated = True
    end
    object cdsData_SENDER_I_NAME_2: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SENDER_I_NAME_2'
      Size = 23
      Calculated = True
    end
    object cdsData_BUYER_PERSON_I_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_BUYER_PERSON_I_NAME'
      Size = 100
      Calculated = True
    end
    object cdsData_SELLER_PERSON_I_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SELLER_PERSON_I_NAME'
      Size = 100
      Calculated = True
    end
    object cdsDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsDataHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsDataINVOICE_NO_GENERATOR_CODE: TAbmesFloatField
      FieldName = 'INVOICE_NO_GENERATOR_CODE'
      ProviderFlags = []
    end
  end
  object cdsInvoiceTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conInvoices
    Params = <>
    ProviderName = 'prvInvoiceTypes'
    Left = 368
    Top = 168
    object cdsInvoiceTypesINVOICE_TYPE_CODE: TAbmesFloatField
      FieldName = 'INVOICE_TYPE_CODE'
      FieldValueType = fvtInteger
    end
    object cdsInvoiceTypesINVOICE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'INVOICE_TYPE_NAME'
      Size = 100
    end
    object cdsInvoiceTypesADD_VAT: TAbmesFloatField
      FieldName = 'ADD_VAT'
      FieldValueType = fvtBoolean
    end
    object cdsInvoiceTypesADD_VAT_TO_ITEMS: TAbmesFloatField
      FieldName = 'ADD_VAT_TO_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsInvoiceTypesDIARY_NO_WHEN_ANNULED: TAbmesFloatField
      FieldName = 'DIARY_NO_WHEN_ANNULED'
      FieldValueType = fvtInteger
    end
    object cdsInvoiceTypesINVOICE_TYPE_I_NAME: TAbmesWideStringField
      FieldName = 'INVOICE_TYPE_I_NAME'
      Required = True
      Size = 50
    end
  end
  object cdsCurrencies: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCurrencies'
    Left = 512
    Top = 320
    object cdsCurrenciesCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FieldValueType = fvtInteger
    end
    object cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      Required = True
      Size = 5
    end
    object cdsCurrenciesCURRENCY_NAME: TAbmesWideStringField
      FieldName = 'CURRENCY_NAME'
      Required = True
      Size = 50
    end
    object cdsCurrenciesSCALE: TAbmesFloatField
      FieldName = 'SCALE'
      Required = True
    end
    object cdsCurrenciesROUNDER: TAbmesFloatField
      FieldName = 'ROUNDER'
      Required = True
    end
    object cdsCurrenciesORDER_NO: TAbmesFloatField
      FieldName = 'ORDER_NO'
      Required = True
    end
    object cdsCurrenciesCURRENCY_NAME_SINGULAR: TAbmesWideStringField
      FieldName = 'CURRENCY_NAME_SINGULAR'
    end
    object cdsCurrenciesCURRENCY_NAME_PLURAL: TAbmesWideStringField
      FieldName = 'CURRENCY_NAME_PLURAL'
    end
    object cdsCurrenciesCURRENCY_NAME_GENDER_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_NAME_GENDER_CODE'
    end
    object cdsCurrenciesCURRENCY_CENT_NAME_SINGULAR: TAbmesWideStringField
      FieldName = 'CURRENCY_CENT_NAME_SINGULAR'
    end
    object cdsCurrenciesCURRENCY_CENT_NAME_PLURAL: TAbmesWideStringField
      FieldName = 'CURRENCY_CENT_NAME_PLURAL'
    end
    object cdsCurrenciesCURRENCY_CENT_NAME_GENDER_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CENT_NAME_GENDER_CODE'
    end
  end
  object dsCurrencies: TDataSource
    DataSet = cdsCurrencies
    Left = 544
    Top = 320
  end
  object cdsCompanyBankAccounts: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompanies
    Filter = ' (BANK_ACCOUNT_TYPE_CODE = 3)'
    Filtered = True
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCompanyBankAccounts'
    Left = 256
    Top = 344
    object cdsCompanyBankAccountsACCOUNT_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCompanyBankAccountsBANK_COMPANY_CODE: TAbmesFloatField
      FieldName = 'BANK_COMPANY_CODE'
      Required = True
    end
    object cdsCompanyBankAccountsACCOUNT: TAbmesFloatField
      FieldName = 'ACCOUNT'
      Required = True
    end
    object cdsCompanyBankAccountsCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
      Required = True
    end
    object cdsCompanyBankAccountsCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
      Required = True
    end
    object cdsCompanyBankAccountsDESCRIPTION: TAbmesWideStringField
      FieldName = 'DESCRIPTION'
      Size = 250
    end
    object cdsCompanyBankAccountsBANK_NAME: TAbmesWideStringField
      FieldName = 'BANK_NAME'
      ProviderFlags = []
    end
    object cdsCompanyBankAccountsCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object cdsCompanyBankAccountsACCOUNT_FULL_NAME: TAbmesWideStringField
      FieldName = 'ACCOUNT_FULL_NAME'
      ProviderFlags = []
      Size = 250
    end
    object cdsCompanyBankAccountsIBAN: TAbmesWideStringField
      FieldName = 'IBAN'
      Size = 50
    end
    object cdsCompanyBankAccountsNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 100
    end
    object cdsCompanyBankAccountsSHORT_NAME: TAbmesWideStringField
      FieldName = 'SHORT_NAME'
      Size = 50
    end
    object cdsCompanyBankAccountsBANK_ACCOUNT_TYPE_CODE: TAbmesFloatField
      FieldName = 'BANK_ACCOUNT_TYPE_CODE'
      Required = True
    end
  end
  object dsCompanyBankAccounts: TDataSource
    DataSet = cdsCompanyBankAccounts
    Left = 288
    Top = 344
  end
  object cdsSellerCompanyRepresentatives: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompanies
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCompanyRepresentatives'
    Left = 760
    Top = 352
    object cdsSellerCompanyRepresentativesCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
      Required = True
    end
    object cdsSellerCompanyRepresentativesREPRESENTATIVE_CODE: TAbmesFloatField
      FieldName = 'REPRESENTATIVE_CODE'
      Required = True
    end
    object cdsSellerCompanyRepresentativesOFFICE_COMPANY_CODE: TAbmesFloatField
      FieldName = 'OFFICE_COMPANY_CODE'
    end
    object cdsSellerCompanyRepresentativesOFFICE_CODE: TAbmesFloatField
      FieldName = 'OFFICE_CODE'
    end
    object cdsSellerCompanyRepresentativesFIRST_NAME: TAbmesWideStringField
      FieldName = 'FIRST_NAME'
      Size = 50
    end
    object cdsSellerCompanyRepresentativesMIDDLE_NAME: TAbmesWideStringField
      FieldName = 'MIDDLE_NAME'
      Size = 50
    end
    object cdsSellerCompanyRepresentativesLAST_NAME: TAbmesWideStringField
      FieldName = 'LAST_NAME'
      Size = 50
    end
    object cdsSellerCompanyRepresentativesOCCUPATION: TAbmesWideStringField
      FieldName = 'OCCUPATION'
      Size = 50
    end
    object cdsSellerCompanyRepresentativesEGN: TAbmesWideStringField
      FieldName = 'EGN'
      Size = 10
    end
    object cdsSellerCompanyRepresentativesMALE: TAbmesFloatField
      FieldName = 'MALE'
    end
    object cdsSellerCompanyRepresentativesLANGUAGE_CODE: TAbmesFloatField
      FieldName = 'LANGUAGE_CODE'
    end
    object cdsSellerCompanyRepresentativesNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 255
    end
    object cdsSellerCompanyRepresentativesI_NAME: TAbmesWideStringField
      FieldName = 'I_NAME'
      Size = 101
    end
  end
  object cdsBuyerCompanyRepresentatives: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompanies
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCompanyRepresentatives'
    Left = 128
    Top = 488
    object cdsBuyerCompanyRepresentativesCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
      Required = True
    end
    object cdsBuyerCompanyRepresentativesREPRESENTATIVE_CODE: TAbmesFloatField
      FieldName = 'REPRESENTATIVE_CODE'
      Required = True
    end
    object cdsBuyerCompanyRepresentativesOFFICE_COMPANY_CODE: TAbmesFloatField
      FieldName = 'OFFICE_COMPANY_CODE'
    end
    object cdsBuyerCompanyRepresentativesOFFICE_CODE: TAbmesFloatField
      FieldName = 'OFFICE_CODE'
    end
    object cdsBuyerCompanyRepresentativesFIRST_NAME: TAbmesWideStringField
      FieldName = 'FIRST_NAME'
      Size = 50
    end
    object cdsBuyerCompanyRepresentativesMIDDLE_NAME: TAbmesWideStringField
      FieldName = 'MIDDLE_NAME'
      Size = 50
    end
    object cdsBuyerCompanyRepresentativesLAST_NAME: TAbmesWideStringField
      FieldName = 'LAST_NAME'
      Size = 50
    end
    object cdsBuyerCompanyRepresentativesOCCUPATION: TAbmesWideStringField
      FieldName = 'OCCUPATION'
      Size = 50
    end
    object cdsBuyerCompanyRepresentativesEGN: TAbmesWideStringField
      FieldName = 'EGN'
      Size = 10
    end
    object cdsBuyerCompanyRepresentativesMALE: TAbmesFloatField
      FieldName = 'MALE'
    end
    object cdsBuyerCompanyRepresentativesLANGUAGE_CODE: TAbmesFloatField
      FieldName = 'LANGUAGE_CODE'
    end
    object cdsBuyerCompanyRepresentativesNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 255
    end
    object cdsBuyerCompanyRepresentativesI_NAME: TAbmesWideStringField
      FieldName = 'I_NAME'
      Size = 101
    end
  end
  object dsSellerCompanyRepresentatives: TDataSource
    DataSet = cdsSellerCompanyRepresentatives
    Left = 792
    Top = 352
  end
  object dsBuyerCompanyRepresentatives: TDataSource
    DataSet = cdsBuyerCompanyRepresentatives
    Left = 1312
    Top = 736
  end
  object cdsMeasures: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvMeasures'
    Left = 106
    Top = 266
    object cdsMeasuresMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
      Required = True
    end
    object cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Required = True
      Size = 5
    end
    object cdsMeasuresMEASURE_NAME: TAbmesWideStringField
      FieldName = 'MEASURE_NAME'
      Required = True
      Size = 50
    end
    object cdsMeasuresI_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'I_MEASURE_ABBREV'
      Required = True
      Size = 5
    end
  end
  object smrInvoiceWide: TAbmesMatrixReport
    DataSource = dsGridData
    Pattern.Strings = (
      
        '| [ITEM_NAME:86:L]|[PRODUCT_NO:10:R]|[ACCOUNT_QUANTITY:6:R]|[ACC' +
        'OUNT_MEASURE_ABBREV:5:L]|[SINGLE_PRICE:10:R]|[_TOTAL_PRICE:10:R]' +
        '|[DISCOUNT_PERCENT:2:R]|')
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    ReportHeader = smrInvoiceReportHeaderWide
    ReportFooter = smrInvoiceGroupFooterWide
    RecordHeader = smrInvoiceRecordHeaderAndFooterWide
    RecordFooter = smrInvoiceRecordHeaderAndFooterWide
    GroupHeader = smrInvoiceGroupHeaderWide
    AfterPrint = smrInvoiceWideAfterPrint
    Left = 232
    Top = 272
  end
  object smrInvoiceGroupHeaderWide: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      
        '|===============================================================' +
        '================================================================' +
        '=========|'
      
        '| '#1040#1088#1090#1080#1082#1091#1083'                                                       ' +
        '                        |  '#1040#1088#1090'.No  |'#1050#1086#1083#1080#1095'.|'#1052'.'#1077#1076'.|  '#1045#1076'. '#1094#1077#1085#1072'|    ' +
        '  '#1062#1077#1085#1072'|-%|'
      
        '|---------------------------------------------------------------' +
        '------------------------|----------|------|-----|----------|----' +
        '------|--|')
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    AfterPrint = smrInvoiceGroupHeaderWideAfterPrint
    Left = 296
    Top = 272
  end
  object mnuPrint: TPopupMenu
    Left = 24
    Top = 418
    object miPrint: TMenuItem
      Action = actPrint
    end
    object miPrintMatrix: TMenuItem
      Action = actPrintMatrix
    end
    object miPrintMatrixWide: TMenuItem
      Action = actPrintMatrixWide
    end
    object mlIPrint: TMenuItem
      Caption = '-'
    end
    object miIPrint: TMenuItem
      Action = actIPrint
    end
    object miIPrintMatrix: TMenuItem
      Action = actIPrintMatrix
    end
    object miiPrintMatrixWide: TMenuItem
      Action = actIPrintMatrixWide
    end
  end
  object smrInvoiceRecordHeaderAndFooterWide: TAbmesMatrixReport
    Pattern.Strings = (
      
        '|---------------------------------------------------------------' +
        '------------------------|----------|------|-----|----------|----' +
        '------|--|')
    CurrentRecordOnly = True
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    BeforePrint = smrInvoiceRecordHeaderAndFooterWideBeforePrint
    Left = 264
    Top = 304
  end
  object smrInvoiceReportHeaderWide: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      
        '[_PRINT_INVOICE_STATUS_TEXT:20:L][_INVOICE_TYPE_NAME:99:C][_IS_O' +
        'RIGINAL_TEXT:20:L]'
      
        '|======================================================+========' +
        '==================+=============================================' +
        '=========|'
      
        '| '#1055#1086#1083#1091#1095#1072#1090#1077#1083':                                           | '#1053#1086#1084#1077#1088': ' +
        '                  | '#1044#1086#1089#1090#1072#1074#1095#1080#1082':                                  ' +
        '         |'
      
        '| '#1050#1086#1084#1087#1072#1085#1080#1103':    [BUYER_NAME:39:L] |[INVOICE_NO:24:L]  | '#1050#1086#1084#1087#1072#1085#1080#1103':' +
        '    [SELLER_NAME:39:L] |'
      
        '| '#1053#1072#1089'. '#1084#1103#1089#1090#1086':  [BUYER_CITY:39:L] |'#1044#1072#1090#1072' '#1085#1072' '#1080#1079#1076#1072#1074#1072#1085#1077':         | '#1053#1072 +
        #1089'. '#1084#1103#1089#1090#1086':  [SELLER_CITY:39:L] |'
      
        '| '#1040#1076#1088#1077#1089':       [BUYER_ADDRESS:39:L] |[INVOICE_DATE:24:L]  | '#1040#1076#1088#1077 +
        #1089':       [SELLER_ADDRESS:39:L] |'
      
        '| '#1048#1044'.No '#1087#1086' '#1044#1044#1057':[BUYER_VAT_NO:39:L] |'#1044#1072#1090#1072' '#1085#1072' '#1089#1098#1073#1080#1090#1080#1077' '#1080#1083#1080' '#1072#1074#1072#1085#1089':| ' +
        #1048#1076'.No '#1087#1086' '#1044#1044#1057':[SELLER_VAT_NO:39:L] |'
      
        '| [_BUYER_BULSTAT_OR_EGN_LABEL:8:L]     [_BUYER_BULSTAT_OR_EGN_V' +
        'ALUE:39:L] |[EVENT_DATE:24:L]  | [_SELLER_BULSTAT_OR_EGN_LABEL:8' +
        ':L]     [_SELLER_BULSTAT_OR_EGN_VALUE:39:L] |'
      
        '|                                                      |'#1052#1103#1089#1090#1086':  ' +
        '                  |                                             ' +
        '         |'
      
        '|                                                      |[INVOICE' +
        '_PLACE:24:L]  |                                                 ' +
        '     |'
      
        '|======================================================+========' +
        '==================+=============================================' +
        '=========|'
      
        '| '#1055#1086#1083#1091#1095#1072#1090#1077#1083':                                           |        ' +
        '                  | '#1044#1086#1089#1090#1072#1074#1095#1080#1082':                                  ' +
        '         |'
      
        '| '#1050#1086#1084#1087#1072#1085#1080#1103':    [RECEIVER_NAME:39:L] |                          |' +
        ' '#1050#1086#1084#1087#1072#1085#1080#1103':    [SENDER_NAME:39:L] |'
      
        '| '#1040#1076#1088#1077#1089':       [RECEIVER_ADDRESS:39:L] |                        ' +
        '  | '#1040#1076#1088#1077#1089':       [SENDER_ADDRESS:39:L] |')
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    Left = 264
    Top = 272
  end
  object smrInvoiceGroupFooterWide: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      
        '|---------------------------------------------------------------' +
        '------------------------|----------|------|-----|----------|----' +
        '------|--|'
      
        '                                                                ' +
        '                                        '#1054#1073#1097#1086':           [_OVERAL' +
        'L_TOTAL_PRICE:13:R] [_CURRENCY_ABBREV:3:L]'
      
        '                                                                ' +
        '                                        '#1044#1072#1085'. '#1086#1089#1085#1086#1074#1072':    [_TOTAL_' +
        'PRICE_FOR_VAT_BC:13:R] [_BASE_CURRENCY_ABBREV:3:L]'
      
        '                                                                ' +
        '                                        '#1044#1072#1085'. '#1089#1090#1072#1074#1082#1072' '#1044#1044#1057':[_INVOIC' +
        'E_VAT_TYPE_NAME:17:R]'
      
        '                                                                ' +
        '                                        '#1057#1090'-'#1089#1090' '#1085#1072' '#1044#1044#1057':   [_TOTAL_' +
        'VAT:13:R] [_BASE_CURRENCY_ABBREV:3:L]'
      
        '                                                                ' +
        '                                        '#1057#1090'-'#1089#1090' '#1085#1072' '#1044#1044#1057':   [_TOTAL_' +
        'VAT_BC:13:R] [_CURRENCY_ABBREV:3:L]'
      
        '                                                                ' +
        '                                        '#1047#1072' '#1087#1083#1072#1097#1072#1085#1077':     [_TOTAL_' +
        'PRICE_FOR_PAYMENT:13:R] [_CURRENCY_ABBREV:3:L]'
      
        '                                                                ' +
        '                                        '#1042#1072#1083#1091#1090#1072':         [_CURREN' +
        'CY_ABBREV:17:R]'
      ''
      #1057#1083#1086#1074#1086#1084' '#1089#1091#1084#1072' '#1079#1072' '#1087#1083#1072#1097#1072#1085#1077':'
      '[_TO_PAY_TEXT:150:L]'
      ''
      
        #1054#1089#1085#1086#1074#1072#1085#1080#1077' '#1079#1072' '#1087#1088#1080#1083#1072#1075#1072#1085#1077' '#1085#1072' '#1089#1090#1072#1074#1082#1072' '#1080#1083#1080' '#1085#1077#1085#1072#1095#1080#1089#1083#1103#1074#1072#1085#1077' '#1085#1072' '#1076#1072#1085#1098#1082': [_V' +
        'AT_REASON_NAME:20:L]'
      ''
      #1055#1083#1072#1097#1072#1085#1077': [_PAYMENT_TYPE_TEXT:142:L]'
      '[_VAT_PAYMENT_TYPE_TEXT_2:150:L]'
      ''
      
        #1055#1086#1083#1091#1095#1077#1085#1072' '#1086#1090':.............................                       ' +
        '                           '#1048#1079#1076#1072#1076#1077#1085#1072' '#1086#1090':.........................' +
        '........'
      
        '            [_BUYER_PERSON_NAME:65:L]                          [' +
        '_SELLER_PERSON_NAME:55:L]')
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    BeforePrint = smrInvoiceGroupFooterWideBeforePrint
    AfterPrint = smrInvoiceGroupFooterWideAfterPrint
    Left = 296
    Top = 304
  end
  object smrInvoice: TAbmesMatrixReport
    DataSource = dsGridData
    Pattern.Strings = (
      
        '| [ITEM_NAME:47:L]|[PRODUCT_NO:9:R]|[ACCOUNT_QUANTITY:6:R]|[ACCO' +
        'UNT_MEASURE_ABBREV:5:L]|[SINGLE_PRICE:8:R]|[_TOTAL_PRICE:9:R]|[D' +
        'ISCOUNT_PERCENT:2:R]|')
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    ReportHeader = smrInvoiceReportHeader
    ReportFooter = smrInvoiceGroupFooter
    RecordHeader = smrInvoiceRecordHeaderAndFooter
    RecordFooter = smrInvoiceRecordHeaderAndFooter
    GroupHeader = smrInvoiceGroupHeader
    AfterPrint = smrInvoiceWideAfterPrint
    Left = 368
    Top = 272
  end
  object smrInvoiceReportHeader: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      
        '[_PRINT_INVOICE_STATUS_TEXT:20:L][_INVOICE_TYPE_NAME:66:C][_IS_O' +
        'RIGINAL_TEXT:10:L]'
      
        '|====================================+===================+======' +
        '==============================|'
      
        '| '#1055#1086#1083#1091#1095#1072#1090#1077#1083':                         | '#1053#1086#1084#1077#1088':            | '#1044#1086#1089#1090#1072 +
        #1074#1095#1080#1082':                         |'
      
        '| '#1050#1086#1084#1087#1072#1085#1080#1103':    [_BUYER_NAME_1:21:L] | [INVOICE_NO:17:L] | '#1050#1086#1084#1087#1072#1085 +
        #1080#1103':    [_SELLER_NAME_1:21:L] |'
      
        '|              [_BUYER_NAME_2:21:L] | '#1044#1072#1090#1072' '#1085#1072' '#1080#1079#1076#1072#1074#1072#1085#1077': |       ' +
        '       [_SELLER_NAME_2:21:L] |'
      
        '| '#1053#1072#1089'. '#1084#1103#1089#1090#1086':  [BUYER_CITY:21:L] | [INVOICE_DATE:17:L] | '#1053#1072#1089'. '#1084#1103 +
        #1089#1090#1086':  [SELLER_CITY:21:L] |'
      
        '| '#1040#1076#1088#1077#1089':       [BUYER_ADDRESS:21:L] | '#1044#1072#1090#1072' '#1085#1072' '#1089#1098#1073#1080#1090#1080#1077'   | '#1040#1076#1088#1077#1089':' +
        '       [SELLER_ADDRESS:21:L] |'
      
        '| '#1048#1076'.No '#1087#1086' '#1044#1044#1057':[BUYER_VAT_NO:21:L] | '#1080#1083#1080' '#1072#1074#1072#1085#1089':        | '#1048#1076'.No '#1087 +
        #1086' '#1044#1044#1057':[SELLER_VAT_NO:21:L] |'
      
        '| [_BUYER_BULSTAT_OR_EGN_LABEL:8:L]     [_BUYER_BULSTAT_OR_EGN_V' +
        'ALUE:21:L] | [EVENT_DATE:17:L] | [_SELLER_BULSTAT_OR_EGN_LABEL:8' +
        ':L]     [_SELLER_BULSTAT_OR_EGN_VALUE:21:L] |'
      
        '|                                    | '#1052#1103#1089#1090#1086':            |      ' +
        '                              |'
      
        '|                                    | [INVOICE_PLACE:17:L] |   ' +
        '                                 |'
      
        '|====================================+===================+======' +
        '==============================|'
      
        '| '#1055#1086#1083#1091#1095#1072#1090#1077#1083':                         |                   | '#1044#1086#1089#1090#1072 +
        #1074#1095#1080#1082':                         |'
      
        '| '#1050#1086#1084#1087#1072#1085#1080#1103':    [_RECEIVER_NAME_1:21:L] |                   | '#1050#1086#1084 +
        #1087#1072#1085#1080#1103':    [_SENDER_NAME_1:21:L] |'
      
        '|              [_RECEIVER_NAME_2:21:L] |                   |    ' +
        '          [_SENDER_NAME_2:21:L] |'
      
        '| '#1040#1076#1088#1077#1089':       [RECEIVER_ADDRESS:21:L] |                   | '#1040#1076#1088 +
        #1077#1089':       [SENDER_ADDRESS:21:L] |')
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    Left = 400
    Top = 272
  end
  object smrInvoiceGroupHeader: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      
        '|===============================================================' +
        '==============================|'
      
        '| '#1040#1088#1090#1080#1082#1091#1083'                                        |  '#1040#1088#1090'.No |'#1050#1086#1083#1080 +
        #1095'.|'#1052'.'#1077#1076'.|'#1045#1076'. '#1094#1077#1085#1072'|     '#1062#1077#1085#1072'|-%|'
      
        '|------------------------------------------------|---------|----' +
        '--|-----|--------|---------|--|')
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    AfterPrint = smrInvoiceGroupHeaderWideAfterPrint
    Left = 432
    Top = 272
  end
  object smrInvoiceRecordHeaderAndFooter: TAbmesMatrixReport
    Pattern.Strings = (
      
        '|------------------------------------------------|---------|----' +
        '--|-----|--------|---------|--|')
    CurrentRecordOnly = True
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    BeforePrint = smrInvoiceRecordHeaderAndFooterWideBeforePrint
    Left = 400
    Top = 304
  end
  object smrInvoiceGroupFooter: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      
        '|------------------------------------------------|---------|----' +
        '--|-----|--------|---------|--|'
      
        '                                                             '#1054#1073#1097 +
        #1086':           [_OVERALL_TOTAL_PRICE:13:R] [_CURRENCY_ABBREV:3:L]'
      
        '                                                             '#1044#1072#1085 +
        '. '#1086#1089#1085#1086#1074#1072':    [_TOTAL_PRICE_FOR_VAT_BC:13:R] [_BASE_CURRENCY_ABBR' +
        'EV:3:L]'
      
        '                                                             '#1044#1072#1085 +
        '. '#1089#1090#1072#1074#1082#1072' '#1044#1044#1057':[_INVOICE_VAT_TYPE_NAME:17:R]'
      
        '                                                             '#1057#1090'-' +
        #1089#1090' '#1085#1072' '#1044#1044#1057':   [_TOTAL_VAT:13:R] [_BASE_CURRENCY_ABBREV:3:L]'
      
        '                                                             '#1057#1090'-' +
        #1089#1090' '#1085#1072' '#1044#1044#1057':   [_TOTAL_VAT_BC:13:R] [_CURRENCY_ABBREV:3:L]'
      
        '                                                             '#1047#1072' ' +
        #1087#1083#1072#1097#1072#1085#1077':     [_TOTAL_PRICE_FOR_PAYMENT:13:R] [_CURRENCY_ABBREV:3' +
        ':L]'
      
        '                                                             '#1042#1072#1083 +
        #1091#1090#1072':         [_CURRENCY_ABBREV:17:R]'
      ''
      #1057#1083#1086#1074#1086#1084' '#1089#1091#1084#1072' '#1079#1072' '#1087#1083#1072#1097#1072#1085#1077':'
      '[_TO_PAY_TEXT:150:L]'
      ''
      
        #1054#1089#1085#1086#1074#1072#1085#1080#1077' '#1079#1072' '#1087#1088#1080#1083#1072#1075#1072#1085#1077' '#1085#1072' '#1089#1090#1072#1074#1082#1072' '#1080#1083#1080' '#1085#1077#1085#1072#1095#1080#1089#1083#1103#1074#1072#1085#1077' '#1085#1072' '#1076#1072#1085#1098#1082': [_V' +
        'AT_REASON_NAME:20:L]'
      ''
      #1055#1083#1072#1097#1072#1085#1077': [_PAYMENT_TYPE_TEXT:142:L]'
      '[_VAT_PAYMENT_TYPE_TEXT_2:150:L]'
      ''
      
        #1055#1086#1083#1091#1095#1077#1085#1072' '#1086#1090':................                         '#1048#1079#1076#1072#1076#1077#1085#1072' '#1086#1090 +
        ':...............'
      '            [_BUYER_PERSON_NAME:53:L][_SELLER_PERSON_NAME:30:L]')
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    BeforePrint = smrInvoiceGroupFooterBeforePrint
    AfterPrint = smrInvoiceGroupFooterAfterPrint
    Left = 432
    Top = 304
  end
  object smrInvoiceWide2: TAbmesMatrixReport
    DataSource = dsGridData
    Pattern.Strings = (
      
        '| [ITEM_NAME:89:L]|[PRODUCT_NO:10:R]|[ACCOUNT_QUANTITY:6:R]|[ACC' +
        'OUNT_MEASURE_ABBREV:5:L]|[SINGLE_PRICE:10:R]|[_TOTAL_PRICE:10:R]' +
        '|')
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    ReportHeader = smrInvoiceReportHeaderWide2
    ReportFooter = smrInvoiceGroupFooterWide2
    RecordHeader = smrInvoiceRecordHeaderAndFooterWide2
    RecordFooter = smrInvoiceRecordHeaderAndFooterWide2
    GroupHeader = smrInvoiceGroupHeaderWide2
    AfterPrint = smrInvoiceWideAfterPrint
    Left = 232
    Top = 200
  end
  object smrInvoiceReportHeaderWide2: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      
        '[_PRINT_INVOICE_STATUS_TEXT:20:L][_INVOICE_TYPE_NAME:99:C][_IS_O' +
        'RIGINAL_TEXT:20:L]'
      
        '|======================================================+========' +
        '==================+=============================================' +
        '=========|'
      
        '| '#1050#1091#1087#1091#1074#1072#1095':                                             | '#1053#1086#1084#1077#1088': ' +
        '                  | '#1055#1088#1086#1076#1072#1074#1072#1095':                                   ' +
        '         |'
      
        '| '#1050#1086#1084#1087#1072#1085#1080#1103':    [BUYER_NAME:39:L] |[INVOICE_NO:24:L]  | '#1050#1086#1084#1087#1072#1085#1080#1103':' +
        '    [SELLER_NAME:39:L] |'
      
        '| '#1053#1072#1089'. '#1084#1103#1089#1090#1086':  [BUYER_CITY:39:L] |'#1044#1072#1090#1072' '#1085#1072' '#1080#1079#1076#1072#1074#1072#1085#1077':         | '#1053#1072 +
        #1089'. '#1084#1103#1089#1090#1086':  [SELLER_CITY:39:L] |'
      
        '| '#1040#1076#1088#1077#1089':       [BUYER_ADDRESS:39:L] |[INVOICE_DATE:24:L]  | '#1040#1076#1088#1077 +
        #1089':       [SELLER_ADDRESS:39:L] |'
      
        '| '#1048#1044'.No '#1087#1086' '#1044#1044#1057':[BUYER_VAT_NO:39:L] |'#1044#1072#1090#1072' '#1085#1072' '#1089#1098#1073#1080#1090#1080#1077' '#1080#1083#1080' '#1072#1074#1072#1085#1089':| ' +
        #1048#1076'.No '#1087#1086' '#1044#1044#1057':[SELLER_VAT_NO:39:L] |'
      
        '| [_BUYER_BULSTAT_OR_EGN_LABEL:8:L]     [_BUYER_BULSTAT_OR_EGN_V' +
        'ALUE:39:L] |[EVENT_DATE:24:L]  | [_SELLER_BULSTAT_OR_EGN_LABEL:8' +
        ':L]     [_SELLER_BULSTAT_OR_EGN_VALUE:39:L] |'
      
        '|                                                      |'#1052#1103#1089#1090#1086':  ' +
        '                  |                                             ' +
        '         |'
      
        '|                                                      |[INVOICE' +
        '_PLACE:24:L]  |                                                 ' +
        '     |'
      
        '|======================================================+========' +
        '==================+=============================================' +
        '=========|'
      
        '| '#1055#1086#1083#1091#1095#1072#1090#1077#1083':                                           |        ' +
        '                  | '#1044#1086#1089#1090#1072#1074#1095#1080#1082':                                  ' +
        '         |'
      
        '| '#1050#1086#1084#1087#1072#1085#1080#1103':    [RECEIVER_NAME:39:L] |                          |' +
        ' '#1050#1086#1084#1087#1072#1085#1080#1103':    [SENDER_NAME:39:L] |'
      
        '| '#1040#1076#1088#1077#1089':       [RECEIVER_ADDRESS:39:L] |                        ' +
        '  | '#1040#1076#1088#1077#1089':       [SENDER_ADDRESS:39:L] |')
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    Left = 264
    Top = 200
  end
  object smrInvoiceGroupHeaderWide2: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      
        '|===============================================================' +
        '================================================================' +
        '=========|'
      
        '| '#1040#1088#1090#1080#1082#1091#1083'                                                       ' +
        '                           |  '#1040#1088#1090'.No  |'#1050#1086#1083#1080#1095'.|'#1052'.'#1077#1076'.|  '#1045#1076'. '#1094#1077#1085#1072'| ' +
        '     '#1062#1077#1085#1072'|'
      
        '|---------------------------------------------------------------' +
        '---------------------------|----------|------|-----|----------|-' +
        '---------|')
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    AfterPrint = smrInvoiceGroupHeaderWideAfterPrint
    Left = 296
    Top = 200
  end
  object smrInvoiceRecordHeaderAndFooterWide2: TAbmesMatrixReport
    Pattern.Strings = (
      
        '|---------------------------------------------------------------' +
        '---------------------------|----------|------|-----|----------|-' +
        '---------|')
    CurrentRecordOnly = True
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    BeforePrint = smrInvoiceRecordHeaderAndFooterWideBeforePrint
    Left = 264
    Top = 232
  end
  object smrInvoiceGroupFooterWide2: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      
        '|---------------------------------------------------------------' +
        '---------------------------|----------|------|-----|----------|-' +
        '---------|'
      
        '                                                                ' +
        '                                        '#1054#1073#1097#1086':           [_OVERAL' +
        'L_TOTAL_PRICE:13:R] [_CURRENCY_ABBREV:3:L]'
      
        '                                                                ' +
        '                                        '#1044#1072#1085'. '#1086#1089#1085#1086#1074#1072':    [_TOTAL_' +
        'PRICE_FOR_VAT_BC:13:R] [_BASE_CURRENCY_ABBREV:3:L]'
      
        '                                                                ' +
        '                                        '#1044#1072#1085'. '#1089#1090#1072#1074#1082#1072' '#1044#1044#1057':[_INVOIC' +
        'E_VAT_TYPE_NAME:17:R]'
      
        '                                                                ' +
        '                                        '#1057#1090'-'#1089#1090' '#1085#1072' '#1044#1044#1057':   [_TOTAL_' +
        'VAT:13:R] [_BASE_CURRENCY_ABBREV:3:L]'
      
        '                                                                ' +
        '                                        '#1057#1090'-'#1089#1090' '#1085#1072' '#1044#1044#1057':   [_TOTAL_' +
        'VAT_BC:13:R] [_CURRENCY_ABBREV:3:L]'
      
        '                                                                ' +
        '                                        '#1047#1072' '#1087#1083#1072#1097#1072#1085#1077':     [_TOTAL_' +
        'PRICE_FOR_PAYMENT:13:R] [_CURRENCY_ABBREV:3:L]'
      
        '                                                                ' +
        '                                        '#1042#1072#1083#1091#1090#1072':         [_CURREN' +
        'CY_ABBREV:17:R]'
      ''
      #1057#1083#1086#1074#1086#1084' '#1089#1091#1084#1072' '#1079#1072' '#1087#1083#1072#1097#1072#1085#1077':'
      '[_TO_PAY_TEXT:150:L]'
      ''
      
        #1054#1089#1085#1086#1074#1072#1085#1080#1077' '#1079#1072' '#1087#1088#1080#1083#1072#1075#1072#1085#1077' '#1085#1072' '#1089#1090#1072#1074#1082#1072' '#1080#1083#1080' '#1085#1077#1085#1072#1095#1080#1089#1083#1103#1074#1072#1085#1077' '#1085#1072' '#1076#1072#1085#1098#1082': [_V' +
        'AT_REASON_NAME:20:L]'
      ''
      #1055#1083#1072#1097#1072#1085#1077': [_PAYMENT_TYPE_TEXT:142:L]'
      '[_VAT_PAYMENT_TYPE_TEXT_2:150:L]'
      ''
      '[NOTES:250:L]'
      ''
      
        #1055#1086#1083#1091#1095#1077#1085#1072' '#1086#1090':.............................                       ' +
        '                           '#1048#1079#1076#1072#1076#1077#1085#1072' '#1086#1090':.........................' +
        '........'
      
        '            [_BUYER_PERSON_NAME:65:L]                          [' +
        '_SELLER_PERSON_NAME:55:L]')
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    BeforePrint = smrInvoiceGroupFooterWide2BeforePrint
    AfterPrint = smrInvoiceGroupFooterWide2AfterPrint
    Left = 296
    Top = 232
  end
  object smrInvoice2: TAbmesMatrixReport
    DataSource = dsGridData
    Pattern.Strings = (
      
        '| [ITEM_NAME:50:L]|[PRODUCT_NO:9:R]|[ACCOUNT_QUANTITY:6:R]|[ACCO' +
        'UNT_MEASURE_ABBREV:5:L]|[SINGLE_PRICE:8:R]|[_TOTAL_PRICE:9:R]|')
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    ReportHeader = smrInvoiceReportHeader2
    ReportFooter = smrInvoiceGroupFooter2
    RecordHeader = smrInvoiceRecordHeaderAndFooter2
    RecordFooter = smrInvoiceRecordHeaderAndFooter2
    GroupHeader = smrInvoiceGroupHeader2
    AfterPrint = smrInvoiceWideAfterPrint
    Left = 368
    Top = 200
  end
  object smrInvoiceReportHeader2: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      
        '[_PRINT_INVOICE_STATUS_TEXT:20:L][_INVOICE_TYPE_NAME:66:C][_IS_O' +
        'RIGINAL_TEXT:10:L]'
      
        '|====================================+===================+======' +
        '==============================|'
      
        '| '#1050#1091#1087#1091#1074#1072#1095':                           | '#1053#1086#1084#1077#1088':            | '#1055#1088#1086#1076#1072 +
        #1074#1072#1095':                          |'
      
        '| '#1050#1086#1084#1087#1072#1085#1080#1103':    [_BUYER_NAME_1:21:L] | [INVOICE_NO:17:L] | '#1050#1086#1084#1087#1072#1085 +
        #1080#1103':    [_SELLER_NAME_1:21:L] |'
      
        '|              [_BUYER_NAME_2:21:L] | '#1044#1072#1090#1072' '#1085#1072' '#1080#1079#1076#1072#1074#1072#1085#1077': |       ' +
        '       [_SELLER_NAME_2:21:L] |'
      
        '| '#1053#1072#1089'. '#1084#1103#1089#1090#1086':  [BUYER_CITY:21:L] | [INVOICE_DATE:17:L] | '#1053#1072#1089'. '#1084#1103 +
        #1089#1090#1086':  [SELLER_CITY:21:L] |'
      
        '| '#1040#1076#1088#1077#1089':       [BUYER_ADDRESS:21:L] | '#1044#1072#1090#1072' '#1085#1072' '#1089#1098#1073#1080#1090#1080#1077'   | '#1040#1076#1088#1077#1089':' +
        '       [SELLER_ADDRESS:21:L] |'
      
        '| '#1048#1076'.No '#1087#1086' '#1044#1044#1057':[BUYER_VAT_NO:21:L] | '#1080#1083#1080' '#1072#1074#1072#1085#1089':        | '#1048#1076'.No '#1087 +
        #1086' '#1044#1044#1057':[SELLER_VAT_NO:21:L] |'
      
        '| [_BUYER_BULSTAT_OR_EGN_LABEL:8:L]     [_BUYER_BULSTAT_OR_EGN_V' +
        'ALUE:21:L] | [EVENT_DATE:17:L] | [_SELLER_BULSTAT_OR_EGN_LABEL:8' +
        ':L]     [_SELLER_BULSTAT_OR_EGN_VALUE:21:L] |'
      
        '|                                    | '#1052#1103#1089#1090#1086':            |      ' +
        '                              |'
      
        '|                                    | [INVOICE_PLACE:17:L] |   ' +
        '                                 |'
      
        '|====================================+===================+======' +
        '==============================|'
      
        '| '#1055#1086#1083#1091#1095#1072#1090#1077#1083':                         |                   | '#1044#1086#1089#1090#1072 +
        #1074#1095#1080#1082':                         |'
      
        '| '#1050#1086#1084#1087#1072#1085#1080#1103':    [_RECEIVER_NAME_1:21:L] |                   | '#1050#1086#1084 +
        #1087#1072#1085#1080#1103':    [_SENDER_NAME_1:21:L] |'
      
        '|              [_RECEIVER_NAME_2:21:L] |                   |    ' +
        '          [_SENDER_NAME_2:21:L] |'
      
        '| '#1040#1076#1088#1077#1089':       [RECEIVER_ADDRESS:21:L] |                   | '#1040#1076#1088 +
        #1077#1089':       [SENDER_ADDRESS:21:L] |')
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    Left = 400
    Top = 200
  end
  object smrInvoiceGroupHeader2: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      
        '|===============================================================' +
        '==============================|'
      
        '| '#1040#1088#1090#1080#1082#1091#1083'                                           |  '#1040#1088#1090'.No |'#1050 +
        #1086#1083#1080#1095'.|'#1052'.'#1077#1076'.|'#1045#1076'. '#1094#1077#1085#1072'|     '#1062#1077#1085#1072'|'
      
        '|---------------------------------------------------|---------|-' +
        '-----|-----|--------|---------|')
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    AfterPrint = smrInvoiceGroupHeaderWideAfterPrint
    Left = 432
    Top = 200
  end
  object smrInvoiceRecordHeaderAndFooter2: TAbmesMatrixReport
    Pattern.Strings = (
      
        '|---------------------------------------------------|---------|-' +
        '-----|-----|--------|---------|')
    CurrentRecordOnly = True
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    BeforePrint = smrInvoiceRecordHeaderAndFooterWideBeforePrint
    Left = 400
    Top = 232
  end
  object smrInvoiceGroupFooter2: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      
        '|---------------------------------------------------|---------|-' +
        '-----|-----|--------|---------|'
      
        '                                                             '#1054#1073#1097 +
        #1086':           [_OVERALL_TOTAL_PRICE:13:R] [_CURRENCY_ABBREV:3:L]'
      
        '                                                             '#1044#1072#1085 +
        '. '#1086#1089#1085#1086#1074#1072':    [_TOTAL_PRICE_FOR_VAT_BC:13:R] [_BASE_CURRENCY_ABBR' +
        'EV:3:L]'
      
        '                                                             '#1044#1072#1085 +
        '. '#1089#1090#1072#1074#1082#1072' '#1044#1044#1057':[_INVOICE_VAT_TYPE_NAME:17:R]'
      
        '                                                             '#1057#1090'-' +
        #1089#1090' '#1085#1072' '#1044#1044#1057':   [_TOTAL_VAT:13:R] [_BASE_CURRENCY_ABBREV:3:L]'
      
        '                                                             '#1057#1090'-' +
        #1089#1090' '#1085#1072' '#1044#1044#1057':   [_TOTAL_VAT_BC:13:R] [_CURRENCY_ABBREV:3:L]'
      
        '                                                             '#1047#1072' ' +
        #1087#1083#1072#1097#1072#1085#1077':     [_TOTAL_PRICE_FOR_PAYMENT:13:R] [_CURRENCY_ABBREV:3' +
        ':L]'
      
        '                                                             '#1042#1072#1083 +
        #1091#1090#1072':         [_CURRENCY_ABBREV:17:R]'
      ''
      #1057#1083#1086#1074#1086#1084' '#1089#1091#1084#1072' '#1079#1072' '#1087#1083#1072#1097#1072#1085#1077':'
      '[_TO_PAY_TEXT:150:L]'
      ''
      
        #1054#1089#1085#1086#1074#1072#1085#1080#1077' '#1079#1072' '#1087#1088#1080#1083#1072#1075#1072#1085#1077' '#1085#1072' '#1089#1090#1072#1074#1082#1072' '#1080#1083#1080' '#1085#1077#1085#1072#1095#1080#1089#1083#1103#1074#1072#1085#1077' '#1085#1072' '#1076#1072#1085#1098#1082': [_V' +
        'AT_REASON_NAME:20:L]'
      ''
      #1055#1083#1072#1097#1072#1085#1077': [_PAYMENT_TYPE_TEXT:142:L]'
      '[_VAT_PAYMENT_TYPE_TEXT_2:150:L]'
      ''
      '[NOTES:250:L]'
      ''
      
        #1055#1086#1083#1091#1095#1077#1085#1072' '#1086#1090':................                         '#1048#1079#1076#1072#1076#1077#1085#1072' '#1086#1090 +
        ':...............'
      '            [_BUYER_PERSON_NAME:53:L][_SELLER_PERSON_NAME:30:L]')
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    BeforePrint = smrInvoiceGroupFooter2BeforePrint
    AfterPrint = smrInvoiceGroupFooter2AfterPrint
    Left = 432
    Top = 232
  end
  object cdsInvoiceVatTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conInvoices
    Filter = '(INVOICE_VAT_TYPE_CODE < 4)'
    Params = <>
    ProviderName = 'prvInvoiceVatTypes'
    Left = 344
    Top = 368
    object cdsInvoiceVatTypesINVOICE_VAT_TYPE_CODE: TAbmesFloatField
      FieldName = 'INVOICE_VAT_TYPE_CODE'
    end
    object cdsInvoiceVatTypesINVOICE_VAT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'INVOICE_VAT_TYPE_NAME'
      OnGetText = cdsInvoiceVatTypesINVOICE_VAT_TYPE_NAMEGetText
      Size = 100
    end
  end
  object dsInvoiceVatTypes: TDataSource
    DataSet = cdsInvoiceVatTypes
    Left = 376
    Top = 368
  end
  object cdsNewInvoiceItems: TAbmesClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ACCOUNT_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'MARKET_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'DISCOUNT_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'CURRENCY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BND_PROCESS_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BND_PROCESS_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BND_PROCESS_OBJECT_IDENTIFIER'
        DataType = ftWideString
        Size = 100
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 720
    Top = 200
    object cdsNewInvoiceItemsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsNewInvoiceItemsACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
    end
    object cdsNewInvoiceItemsSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
    end
    object cdsNewInvoiceItemsMARKET_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'MARKET_SINGLE_PRICE'
    end
    object cdsNewInvoiceItemsDISCOUNT_PERCENT: TAbmesFloatField
      FieldName = 'DISCOUNT_PERCENT'
    end
    object cdsNewInvoiceItemsCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object cdsNewInvoiceItemsBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
    end
    object cdsNewInvoiceItemsBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
    end
    object cdsNewInvoiceItemsBND_PROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BND_PROCESS_OBJECT_IDENTIFIER'
      Size = 100
    end
    object cdsNewInvoiceItemsCLIENT_REQUEST_NO: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = 'CLIENT_REQUEST_NO'
      Size = 50
      Calculated = True
    end
  end
  object cdsCurrencyRates: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'RATE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RATE_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCurrencyRates'
    Left = 752
    Top = 200
    object cdsCurrencyRatesCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
      Required = True
    end
    object cdsCurrencyRatesFIXING: TAbmesFloatField
      FieldName = 'FIXING'
    end
  end
  object cdsSaleExpGroupsParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 784
    Top = 200
    object cdsSaleExpGroupsParamsCHOSEN_COMPANIES: TAbmesWideStringField
      FieldName = 'CHOSEN_COMPANIES'
      Size = 4000
    end
  end
  object cdsVatReasons: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conFinance
    Params = <>
    ProviderName = 'prvVatReasons'
    Left = 96
    Top = 344
    object cdsVatReasonsVAT_REASON_CODE: TAbmesFloatField
      FieldName = 'VAT_REASON_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsVatReasonsVAT_REASON_NO: TAbmesFloatField
      FieldName = 'VAT_REASON_NO'
      Required = True
    end
    object cdsVatReasonsVAT_REASON_NAME: TAbmesWideStringField
      FieldName = 'VAT_REASON_NAME'
      Required = True
      Size = 50
    end
    object cdsVatReasonsVAT_REASON_ABBREV: TAbmesWideStringField
      FieldName = 'VAT_REASON_ABBREV'
      Required = True
      Size = 5
    end
    object cdsVatReasonsVAT_REASON_I_NAME: TAbmesWideStringField
      FieldName = 'VAT_REASON_I_NAME'
      Required = True
      Size = 50
    end
  end
  object dsVatReasons: TDataSource
    DataSet = cdsVatReasons
    Left = 128
    Top = 344
  end
  object smrIInvoiceWide2: TAbmesMatrixReport
    DataSource = dsGridData
    Pattern.Strings = (
      
        '| [ITEM_NAME:89:L]|[PRODUCT_NO:10:R]|[ACCOUNT_QUANTITY:6:R]|[ACC' +
        'OUNT_MEASURE_I_ABBREV:5:L]|[SINGLE_PRICE:10:R]|[_TOTAL_PRICE:10:' +
        'R]|')
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    ReportHeader = smrIInvoiceReportHeaderWide2
    ReportFooter = smrIInvoiceGroupFooterWide2
    RecordHeader = smrIInvoiceRecordHeaderAndFooterWide2
    RecordFooter = smrIInvoiceRecordHeaderAndFooterWide2
    GroupHeader = smrIInvoiceGroupHeaderWide2
    AfterPrint = smrInvoiceWideAfterPrint
    Left = 288
    Top = 424
  end
  object smrIInvoiceReportHeaderWide2: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      
        '[_PRINT_INVOICE_STATUS_I_TEXT:20:L][_INVOICE_TYPE_I_NAME:99:C][_' +
        'IS_ORIGINAL_I_TEXT:20:L]'
      
        '|======================================================+========' +
        '==================+=============================================' +
        '=========|'
      
        '| Buyer:                                               | No:    ' +
        '                  | Seller:                                     ' +
        '         |'
      
        '| Company:     [BUYER_I_NAME:39:L] | [INVOICE_NO:23:L]  | Compan' +
        'y:     [SELLER_I_NAME:39:L] |'
      
        '| Location:    [BUYER_I_CITY:39:L] | Issue date:              | ' +
        'Location:    [SELLER_I_CITY:39:L] |'
      
        '| Address:     [BUYER_I_ADDRESS:39:L] | [INVOICE_DATE:23:L]  | A' +
        'ddress:     [SELLER_I_ADDRESS:39:L] |'
      
        '| VAT No:      [BUYER_VAT_NO:39:L] | Event / Adv.payment date:| ' +
        'VAT No:      [SELLER_VAT_NO:39:L] |'
      
        '| ID No:       [_BUYER_BULSTAT_OR_EGN_VALUE:39:L] | [EVENT_DATE:' +
        '23:L]  | ID No:       [_SELLER_BULSTAT_OR_EGN_VALUE:39:L] |'
      
        '|                                                      | Invoice' +
        ' place:           |                                             ' +
        '         |'
      
        '|                                                      | [INVOIC' +
        'E_I_PLACE:23:L]  |                                              ' +
        '        |'
      
        '|======================================================+========' +
        '==================+=============================================' +
        '=========|'
      
        '| Consignee:                                           |        ' +
        '                  | Consignor:                                  ' +
        '         |'
      
        '| Company:     [RECEIVER_I_NAME:39:L] |                         ' +
        ' | Company:     [SENDER_I_NAME:39:L] |'
      
        '| Address:     [RECEIVER_I_ADDRESS:39:L] |                      ' +
        '    | Address:     [SENDER_I_ADDRESS:39:L] |')
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    Left = 320
    Top = 424
  end
  object smrIInvoiceGroupHeaderWide2: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      
        '|===============================================================' +
        '================================================================' +
        '=========|'
      
        '| Description                                                   ' +
        '                           |  Art.No  |Qty.  |Meas.|Single Pr.| ' +
        '    Price|'
      
        '|---------------------------------------------------------------' +
        '---------------------------|----------|------|-----|----------|-' +
        '---------|')
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    AfterPrint = smrInvoiceGroupHeaderWideAfterPrint
    Left = 352
    Top = 424
  end
  object smrIInvoiceRecordHeaderAndFooterWide2: TAbmesMatrixReport
    Pattern.Strings = (
      
        '|---------------------------------------------------------------' +
        '---------------------------|----------|------|-----|----------|-' +
        '---------|')
    CurrentRecordOnly = True
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    BeforePrint = smrInvoiceRecordHeaderAndFooterWideBeforePrint
    Left = 320
    Top = 456
  end
  object smrIInvoiceGroupFooterWide2: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      
        '|---------------------------------------------------------------' +
        '---------------------------|----------|------|-----|----------|-' +
        '---------|'
      
        '                                                                ' +
        '                                        Sub Total:      [_OVERAL' +
        'L_TOTAL_PRICE:13:R] [_CURRENCY_ABBREV:3:L]'
      
        '                                                                ' +
        '                                        VAT Value:      [_TOTAL_' +
        'PRICE_FOR_VAT_BC:13:R] [_BASE_CURRENCY_ABBREV:3:L]'
      
        '                                                                ' +
        '                                        Tax Rate:       [_INVOIC' +
        'E_VAT_TYPE_NAME:17:R]'
      
        '                                                                ' +
        '                                        Tax:            [_TOTAL_' +
        'VAT:13:R] [_BASE_CURRENCY_ABBREV:3:L]'
      
        '                                                                ' +
        '                                                        [_TOTAL_' +
        'VAT_BC:13:R] [_CURRENCY_ABBREV:3:L]'
      
        '                                                                ' +
        '                                        Amound Due:     [_TOTAL_' +
        'PRICE_FOR_PAYMENT:13:R] [_CURRENCY_ABBREV:3:L]'
      
        '                                                                ' +
        '                                        Currency:       [_CURREN' +
        'CY_ABBREV:17:R]'
      ''
      ''
      'Payment Amount (in words):'
      '[_TO_PAY_I_TEXT:150:L]'
      ''
      'Tax Reason: [_VAT_REASON_I_NAME:20:L]'
      ''
      'Payment Type: [_PAYMENT_TYPE_I_TEXT:142:L]'
      '[_VAT_PAYMENT_TYPE_TEXT_2:150:L]'
      ''
      '[NOTES:250:L]'
      ''
      
        'Received by:.............................                       ' +
        '                             Issued by:.........................' +
        '........'
      
        '            [_BUYER_PERSON_I_NAME:65:L]                         ' +
        ' [_SELLER_PERSON_I_NAME:55:L]')
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    BeforePrint = smrIInvoiceGroupFooterWide2BeforePrint
    AfterPrint = smrIInvoiceGroupFooterWide2AfterPrint
    Left = 352
    Top = 456
  end
  object smrIInvoiceWide: TAbmesMatrixReport
    DataSource = dsGridData
    Pattern.Strings = (
      
        '| [ITEM_NAME:86:L]|[PRODUCT_NO:10:R]|[ACCOUNT_QUANTITY:6:R]|[ACC' +
        'OUNT_MEASURE_I_ABBREV:5:L]|[SINGLE_PRICE:10:R]|[_TOTAL_PRICE:10:' +
        'R]|[DISCOUNT_PERCENT:2:R]|')
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    ReportHeader = smrIInvoiceReportHeaderWide
    ReportFooter = smrIInvoiceGroupFooterWide
    RecordHeader = smrIInvoiceRecordHeaderAndFooterWide
    RecordFooter = smrIInvoiceRecordHeaderAndFooterWide
    GroupHeader = smrIInvoiceGroupHeaderWide
    AfterPrint = smrInvoiceWideAfterPrint
    Left = 288
    Top = 496
  end
  object smrIInvoiceReportHeaderWide: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      
        '[_PRINT_INVOICE_STATUS_I_TEXT:20:L][_INVOICE_TYPE_I_NAME:99:C][_' +
        'IS_ORIGINAL_I_TEXT:20:L]'
      
        '|======================================================+========' +
        '==================+=============================================' +
        '=========|'
      
        '| Buyer:                                               | No:    ' +
        '                  | Seller:                                     ' +
        '         |'
      
        '| Company:     [BUYER_I_NAME:39:L] | [INVOICE_NO:23:L]  | Compan' +
        'y:     [SELLER_I_NAME:39:L] |'
      
        '| Location:    [BUYER_I_CITY:39:L] | Issue date:              | ' +
        'Location:    [SELLER_I_CITY:39:L] |'
      
        '| Address:     [BUYER_I_ADDRESS:39:L] | [INVOICE_DATE:23:L]  | A' +
        'ddress:     [SELLER_I_ADDRESS:39:L] |'
      
        '| VAT No:      [BUYER_VAT_NO:39:L] | Event / Adv.payment date:| ' +
        'VAT No:      [SELLER_VAT_NO:39:L] |'
      
        '| ID No:       [_BUYER_BULSTAT_OR_EGN_VALUE:39:L] | [EVENT_DATE:' +
        '23:L]  | ID No:       [_SELLER_BULSTAT_OR_EGN_VALUE:39:L] |'
      
        '|                                                      | Invoice' +
        ' place:           |                                             ' +
        '         |'
      
        '|                                                      | [INVOIC' +
        'E_I_PLACE:23:L]  |                                              ' +
        '        |'
      
        '|======================================================+========' +
        '==================+=============================================' +
        '=========|'
      
        '| Consignee:                                           |        ' +
        '                  | Consignor:                                  ' +
        '         |'
      
        '| Company:     [RECEIVER_I_NAME:39:L] |                         ' +
        ' | Company:     [SENDER_I_NAME:39:L] |'
      
        '| Address:     [RECEIVER_I_ADDRESS:39:L] |                      ' +
        '    | Address:     [SENDER_I_ADDRESS:39:L] |')
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    Left = 320
    Top = 496
  end
  object smrIInvoiceGroupHeaderWide: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      
        '|===============================================================' +
        '================================================================' +
        '=========|'
      
        '| Description                                                   ' +
        '                           |  Art.No  |Qty.  |Meas.|Single Pr.| ' +
        '    Price|'
      
        '|---------------------------------------------------------------' +
        '---------------------------|----------|------|-----|----------|-' +
        '---------|')
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    AfterPrint = smrInvoiceGroupHeaderWideAfterPrint
    Left = 352
    Top = 496
  end
  object smrIInvoiceRecordHeaderAndFooterWide: TAbmesMatrixReport
    Pattern.Strings = (
      
        '|---------------------------------------------------------------' +
        '------------------------|----------|------|-----|----------|----' +
        '------|--|')
    CurrentRecordOnly = True
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    BeforePrint = smrInvoiceRecordHeaderAndFooterWideBeforePrint
    Left = 320
    Top = 528
  end
  object smrIInvoiceGroupFooterWide: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      
        '|---------------------------------------------------------------' +
        '---------------------------|----------|------|-----|----------|-' +
        '---------|'
      
        '                                                                ' +
        '                                        Sub Total:      [_OVERAL' +
        'L_TOTAL_PRICE:13:R] [_CURRENCY_ABBREV:3:L]'
      
        '                                                                ' +
        '                                        VAT Value:      [_TOTAL_' +
        'PRICE_FOR_VAT_BC:13:R] [_BASE_CURRENCY_ABBREV:3:L]'
      
        '                                                                ' +
        '                                        Tax Rate:       [_INVOIC' +
        'E_VAT_TYPE_NAME:17:R]'
      
        '                                                                ' +
        '                                        Tax:            [_TOTAL_' +
        'VAT:13:R] [_BASE_CURRENCY_ABBREV:3:L]'
      
        '                                                                ' +
        '                                                        [_TOTAL_' +
        'VAT_BC:13:R] [_CURRENCY_ABBREV:3:L]'
      
        '                                                                ' +
        '                                        Amount Due:     [_TOTAL_' +
        'PRICE_FOR_PAYMENT:13:R] [_CURRENCY_ABBREV:3:L]'
      
        '                                                                ' +
        '                                        Currency:       [_CURREN' +
        'CY_ABBREV:17:R]'
      ''
      ''
      'Payment Amount (in words):'
      '[_TO_PAY_I_TEXT:150:L]'
      ''
      'Tax Reason: [_VAT_REASON_I_NAME:20:L]'
      ''
      'Payment Type: [_PAYMENT_TYPE_I_TEXT:142:L]'
      '[_VAT_PAYMENT_TYPE_TEXT_2:150:L]'
      ''
      
        'Received by:.............................                       ' +
        '                          Issued by:............................' +
        '........'
      
        '            [_BUYER_PERSON_I_NAME:65:L]                         ' +
        ' [_SELLER_PERSON_I_NAME:55:L]')
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    BeforePrint = smrIInvoiceGroupFooterWideBeforePrint
    AfterPrint = smrIInvoiceGroupFooterWideAfterPrint
    Left = 352
    Top = 528
  end
  object smrIInvoice2: TAbmesMatrixReport
    DataSource = dsGridData
    Pattern.Strings = (
      
        '| [ITEM_NAME:50:L]|[PRODUCT_NO:9:R]|[ACCOUNT_QUANTITY:6:R]|[ACCO' +
        'UNT_MEASURE_I_ABBREV:5:L]|[SINGLE_PRICE:8:R]|[_TOTAL_PRICE:9:R]|')
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    ReportHeader = smrIInvoiceReportHeader2
    ReportFooter = smrIInvoiceGroupFooter2
    RecordHeader = smrIInvoiceRecordHeaderAndFooter2
    RecordFooter = smrIInvoiceRecordHeaderAndFooter2
    GroupHeader = smrIInvoiceGroupHeader2
    AfterPrint = smrInvoiceWideAfterPrint
    Left = 480
    Top = 424
  end
  object smrIInvoiceReportHeader2: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      
        '[_PRINT_INVOICE_STATUS_I_TEXT:20:L][_INVOICE_TYPE_I_NAME:66:C][_' +
        'IS_ORIGINAL_I_TEXT:10:L]'
      
        '|====================================+===================+======' +
        '==============================|'
      
        '| Buyer:                             | No:               | Selle' +
        'r:                            |'
      
        '| Company:     [_BUYER_I_NAME_1:21:L] | [INVOICE_NO:17:L] | Comp' +
        'any:     [_SELLER_I_NAME_1:21:L] |'
      
        '|              [_BUYER_I_NAME_2:21:L] | Issue Date:       |     ' +
        '         [_SELLER_I_NAME_2:21:L] |'
      
        '| Location:    [BUYER_I_CITY:21:L] | [INVOICE_DATE:17:L] | Locat' +
        'ion:    [SELLER_I_CITY:21:L] |'
      
        '| Address:     [BUYER_I_ADDRESS:21:L] | Event or Advance  | Addr' +
        'ess:     [SELLER_I_ADDRESS:21:L] |'
      
        '| VAT No:      [BUYER_VAT_NO:21:L] | Payment Date:     | VAT No:' +
        '      [SELLER_VAT_NO:21:L] |'
      
        '| ID No:       [_BUYER_BULSTAT_OR_EGN_VALUE:21:L] | [EVENT_DATE:' +
        '17:L] | ID No:       [_SELLER_BULSTAT_OR_EGN_VALUE:21:L] |'
      
        '|                                    | Invoice Place:    |      ' +
        '                              |'
      
        '|                                    | [INVOICE_I_PLACE:17:L] | ' +
        '                                   |'
      
        '|====================================+===================+======' +
        '==============================|'
      
        '| Consignee:                         |                   | Consi' +
        'gnor:                         |'
      
        '| Company:     [_RECEIVER_I_NAME_1:21:L] |                   | C' +
        'ompany:     [_SENDER_I_NAME_1:21:L] |'
      
        '|              [_RECEIVER_I_NAME_2:21:L] |                   |  ' +
        '            [_SENDER_I_NAME_2:21:L] |'
      
        '| Address:     [RECEIVER_I_ADDRESS:21:L] |                   | A' +
        'ddress:     [SENDER_I_ADDRESS:21:L] |')
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    Left = 512
    Top = 424
  end
  object smrIInvoiceGroupHeader2: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      
        '|===============================================================' +
        '==============================|'
      
        '| Description                                       |  Art.No |Q' +
        'ty.  |Meas.|Sngl Pr.|    Price|'
      
        '|---------------------------------------------------|---------|-' +
        '-----|-----|--------|---------|')
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    AfterPrint = smrInvoiceGroupHeaderWideAfterPrint
    Left = 544
    Top = 424
  end
  object smrIInvoiceRecordHeaderAndFooter2: TAbmesMatrixReport
    Pattern.Strings = (
      
        '|---------------------------------------------------|---------|-' +
        '-----|-----|--------|---------|')
    CurrentRecordOnly = True
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    BeforePrint = smrInvoiceRecordHeaderAndFooterWideBeforePrint
    Left = 512
    Top = 456
  end
  object smrIInvoiceGroupFooter2: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      
        '|---------------------------------------------------|---------|-' +
        '-----|-----|--------|---------|'
      
        '                                                             Sub' +
        ' Total:      [_OVERALL_TOTAL_PRICE:13:R] [_CURRENCY_ABBREV:3:L]'
      
        '                                                             VAT' +
        ' Value:      [_TOTAL_PRICE_FOR_VAT_BC:13:R] [_BASE_CURRENCY_ABBR' +
        'EV:3:L]'
      
        '                                                             Tax' +
        ' Rate:       [_INVOICE_VAT_TYPE_NAME:17:R]'
      
        '                                                             Tax' +
        ':            [_TOTAL_VAT:13:R] [_BASE_CURRENCY_ABBREV:3:L]'
      
        '                                                                ' +
        '             [_TOTAL_VAT_BC:13:R] [_CURRENCY_ABBREV:3:L]'
      
        '                                                             Amo' +
        'unt Due:     [_TOTAL_PRICE_FOR_PAYMENT:13:R] [_CURRENCY_ABBREV:3' +
        ':L]'
      
        '                                                             Cur' +
        'rency:       [_CURRENCY_ABBREV:17:R]'
      ''
      'Payment Amount (in words):'
      '[_TO_PAY_I_TEXT:150:L]'
      ''
      'Tax Reason: [_VAT_REASON_I_NAME:20:L]'
      ''
      'Payment Type: [_PAYMENT_TYPE_I_TEXT:142:L]'
      '[_VAT_PAYMENT_TYPE_TEXT_2:150:L]'
      ''
      '[NOTES:250:L]'
      ''
      
        'Received by:................                           Issued by' +
        ':...............'
      
        '            [_BUYER_PERSON_I_NAME:53:L][_SELLER_PERSON_I_NAME:30' +
        ':L]')
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    BeforePrint = smrIInvoiceGroupFooter2BeforePrint
    AfterPrint = smrIInvoiceGroupFooter2AfterPrint
    Left = 544
    Top = 456
  end
  object smrIInvoice: TAbmesMatrixReport
    DataSource = dsGridData
    Pattern.Strings = (
      
        '| [ITEM_NAME:47:L]|[PRODUCT_NO:9:R]|[ACCOUNT_QUANTITY:6:R]|[ACCO' +
        'UNT_MEASURE_I_ABBREV:5:L]|[SINGLE_PRICE:8:R]|[_TOTAL_PRICE:9:R]|' +
        '[DISCOUNT_PERCENT:2:R]|')
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    ReportHeader = smrIInvoiceReportHeader
    ReportFooter = smrIInvoiceGroupFooter
    RecordHeader = smrIInvoiceRecordHeaderAndFooter
    RecordFooter = smrIInvoiceRecordHeaderAndFooter
    GroupHeader = smrIInvoiceGroupHeader
    AfterPrint = smrInvoiceWideAfterPrint
    Left = 480
    Top = 496
  end
  object smrIInvoiceReportHeader: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      
        '[_PRINT_INVOICE_STATUS_I_TEXT:20:L][_INVOICE_TYPE_I_NAME:66:C][_' +
        'IS_ORIGINAL_I_TEXT:10:L]'
      
        '|====================================+===================+======' +
        '==============================|'
      
        '| Buyer:                             | No:               | Selle' +
        'r:                            |'
      
        '| Company:     [_BUYER_I_NAME_1:21:L] | [INVOICE_NO:17:L] | Comp' +
        'any:     [_SELLER_I_NAME_1:21:L] |'
      
        '|              [_BUYER_I_NAME_2:21:L] | Issue Date:       |     ' +
        '         [_SELLER_I_NAME_2:21:L] |'
      
        '| Location:    [BUYER_I_CITY:21:L] | [INVOICE_DATE:17:L] | Locat' +
        'ion:    [SELLER_I_CITY:21:L] |'
      
        '| Address:     [BUYER_I_ADDRESS:21:L] | Event or Advance  | Addr' +
        'ess:     [SELLER_I_ADDRESS:21:L] |'
      
        '| VAT No:      [BUYER_VAT_NO:21:L] | Payment Date:     | VAT No:' +
        '      [SELLER_VAT_NO:21:L] |'
      
        '| ID No:       [_BUYER_BULSTAT_OR_EGN_VALUE:21:L] | [EVENT_DATE:' +
        '17:L] | ID No:       [_SELLER_BULSTAT_OR_EGN_VALUE:21:L] |'
      
        '|                                    | Invoice Place:    |      ' +
        '                              |'
      
        '|                                    | [INVOICE_I_PLACE:17:L] | ' +
        '                                   |'
      
        '|====================================+===================+======' +
        '==============================|'
      
        '| Consignee:                         |                   | Consi' +
        'gnor:                         |'
      
        '| Company:     [_RECEIVER_I_NAME_1:21:L] |                   | C' +
        'ompany:     [_SENDER_I_NAME_1:21:L] |'
      
        '|              [_RECEIVER_I_NAME_2:21:L] |                   |  ' +
        '            [_SENDER_I_NAME_2:21:L] |'
      
        '| Address:     [RECEIVER_I_ADDRESS:21:L] |                   | A' +
        'ddress:     [SENDER_I_ADDRESS:21:L] |')
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    Left = 512
    Top = 496
  end
  object smrIInvoiceGroupHeader: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      
        '|===============================================================' +
        '==============================|'
      
        '| Desription                                        |  Art.No |Q' +
        'ty.  |Meas.|Sngl Pr.|    Price|'
      
        '|---------------------------------------------------|---------|-' +
        '-----|-----|--------|---------|')
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    AfterPrint = smrInvoiceGroupHeaderWideAfterPrint
    Left = 544
    Top = 496
  end
  object smrIInvoiceRecordHeaderAndFooter: TAbmesMatrixReport
    Pattern.Strings = (
      
        '|------------------------------------------------|---------|----' +
        '--|-----|--------|---------|--|')
    CurrentRecordOnly = True
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    BeforePrint = smrInvoiceRecordHeaderAndFooterWideBeforePrint
    Left = 512
    Top = 528
  end
  object smrIInvoiceGroupFooter: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      
        '|---------------------------------------------------|---------|-' +
        '-----|-----|--------|---------|'
      
        '                                                             Sub' +
        ' Total:      [_OVERALL_TOTAL_PRICE:13:R] [_CURRENCY_ABBREV:3:L]'
      
        '                                                             VAT' +
        ' Value:      [_TOTAL_PRICE_FOR_VAT_BC:13:R] [_BASE_CURRENCY_ABBR' +
        'EV:3:L]'
      
        '                                                             Tax' +
        ' Rate:       [_INVOICE_VAT_TYPE_NAME:17:R]'
      
        '                                                             Tax' +
        ':            [_TOTAL_VAT:13:R] [_BASE_CURRENCY_ABBREV:3:L]'
      
        '                                                                ' +
        '             [_TOTAL_VAT_BC:13:R] [_CURRENCY_ABBREV:3:L]'
      
        '                                                             Amo' +
        'unt Due:     [_TOTAL_PRICE_FOR_PAYMENT:13:R] [_CURRENCY_ABBREV:3' +
        ':L]'
      
        '                                                             Cur' +
        'rency:       [_CURRENCY_ABBREV:17:R]'
      ''
      'Payment Amount (in words):'
      '[_TO_PAY_I_TEXT:150:L]'
      ''
      'Tax Reason: [_VAT_REASON_I_NAME:20:L]'
      ''
      'Payment Type: [_PAYMENT_TYPE_I_TEXT:142:L]'
      '[_VAT_PAYMENT_TYPE_TEXT_2:150:L]'
      ''
      
        'Received by:................                           Issued by' +
        ':...............'
      
        '            [_BUYER_PERSON_I_NAME:53:L][_SELLER_PERSON_I_NAME:30' +
        ':L]')
    StrictFieldWidths = True
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    BeforePrint = smrIInvoiceGroupFooterBeforePrint
    AfterPrint = smrIInvoiceGroupFooterAfterPrint
    Left = 544
    Top = 528
  end
end
