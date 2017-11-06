inherited fmQuickSale: TfmQuickSale
  Left = 239
  Top = 151
  Caption = ''
  ClientHeight = 468
  ClientWidth = 473
  ExplicitWidth = 479
  ExplicitHeight = 494
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 433
    Width = 473
    TabOrder = 3
    ExplicitTop = 433
    ExplicitWidth = 473
    inherited pnlClose: TPanel [0]
      Left = 116
      TabOrder = 2
      ExplicitLeft = 116
    end
    inherited pnlApply: TPanel [1]
      Left = 384
      TabOrder = 4
      Visible = False
      ExplicitLeft = 384
    end
    inherited pnlOKCancel: TPanel [2]
      Left = 205
      TabOrder = 3
      ExplicitLeft = 205
    end
    object pnlCorrections: TPanel
      Left = 258
      Top = 0
      Width = 95
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 5
      object btnCorrections: TBitBtn
        Left = 8
        Top = 2
        Width = 87
        Height = 25
        Action = actCorrections
        Caption = #1050#1086#1088#1077#1082#1094#1080#1080'...'
        TabOrder = 0
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF0000000000FF00
          FF00FF00FF000000FF00000084000000FF00FF00FF0000000000FF00FF007B7B
          7B00000000000000000000000000FFFFFF00FFFFFF0000000000FF00FF00FF00
          FF00FF00FF000000FF00000084000000FF0000000000008484007B7B7B000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00
          FF00FF00FF000000FF00000084000000FF00008484000084840000000000FFFF
          FF000000000000000000FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00
          FF00FF00FF000000FF00000084000000FF000084840000848400000000000000
          0000FF00FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
          FF00FF00FF000000FF00000084000000FF0000848400FF00FF00000000007B7B
          7B00FF00FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
          FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
          FF007B7B7B0000000000FFFFFF00000000007B7B7B00FF00FF00FF00FF000000
          00000000840000008400000084000000840000008400FF00FF00FF00FF00FF00
          FF000000000000000000000000007B7B7B00FF00FF00FF00FF00000000000084
          8400008484000084840000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000008484000084
          840000848400FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000000000000000FF00FF00FF00FF000000000000848400008484000084
          8400FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
          0000FF00FF0000000000FF00FF0000000000008484000084840000848400FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF0000000000FF00
          FF00000000000000000000000000008484000084840000848400FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00000000000000
          00000000000000000000000000000000000000848400FF00FF00FF00FF00FF00
          FF00FF00FF007B7B7B00000000007B7B7B00FF00FF00FF00FF00FF00FF00FF00
          FF000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
          FF00FF00FF007B7B7B00000000007B7B7B00FF00FF00FF00FF00FF00FF00FF00
          FF0000848400000000000000000000000000000000007B7B7B00FF00FF00FF00
          FF00FF00FF007B7B7B00000000007B7B7B00FF00FF00FF00FF00FF00FF00FF00
          FF000084840000848400FF00FF00000000000000000000000000000000000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      end
    end
    object pnlFinish: TPanel
      Left = 353
      Top = 0
      Width = 111
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object btnFinish: TBitBtn
        Left = 6
        Top = 2
        Width = 105
        Height = 25
        Action = actFinish
        Caption = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077'...'
        TabOrder = 0
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
          BD00BDBDBD000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000007B7B7B007B7B7B00BDBDBD007B7B7B00000000007B7B
          7B00BDBDBD007B7B7B007B7B7B0000000000FF00FF00FF00FF00FF00FF00FF00
          FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B7B00000000007B7B
          7B00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00FF00FF00
          FF00000000007B7B7B007B7B7B007B7B7B00BDBDBD00BDBDBD0000000000BDBD
          BD00BDBDBD007B7B7B007B7B7B007B7B7B0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000000000000000
          0000BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00FF00FF00
          FF00000000007B7B7B007B7B7B007B7B7B007B7B7B0000000000000000000000
          00007B7B7B007B7B7B007B7B7B007B7B7B0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
          BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF007B7B7B007B7B7B00BDBDBD0000000000000000000000
          0000BDBDBD007B7B7B007B7B7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBD
          BD00BDBDBD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      end
    end
    object pnlAnnul: TPanel
      Left = 464
      Top = 0
      Width = 95
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      object btnAnnulSale: TBitBtn
        Left = 6
        Top = 2
        Width = 89
        Height = 25
        Action = actAnnul
        Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077'...'
        TabOrder = 0
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
        Spacing = -1
      end
    end
    object pnlFinishedChb: TPanel
      Left = 0
      Top = 0
      Width = 133
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 6
      Visible = False
      object pnlFinishedChbFrame: TPanel
        Left = 8
        Top = 2
        Width = 121
        Height = 24
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object chbFinished: TCheckBox
          Left = 7
          Top = 4
          Width = 110
          Height = 17
          Caption = #1054#1055#1055' '#1077' '#1087#1088#1080#1082#1083#1102#1095#1077#1085
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
      end
    end
    object pnlAnnuledChb: TPanel
      Left = 133
      Top = 0
      Width = 125
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 7
      Visible = False
      object pnlAnnuledChbFrame: TPanel
        Left = 8
        Top = 2
        Width = 113
        Height = 24
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object chbAnnuled: TCheckBox
          Left = 7
          Top = 4
          Width = 101
          Height = 17
          Caption = #1054#1055#1055' '#1077' '#1072#1085#1091#1083#1080#1088#1072#1085#1072
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
      end
    end
    object pnlPrintButton: TPanel
      Left = 615
      Top = 0
      Width = 71
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 8
      object bntPrint: TBitBtn
        Left = 6
        Top = 2
        Width = 65
        Height = 25
        Action = actPrint
        Caption = #1055#1077#1095#1072#1090
        TabOrder = 0
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
      end
    end
    object pnlPrintCheckbox: TPanel
      Left = 559
      Top = 0
      Width = 56
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 9
      object chkPrint: TCheckBox
        Left = 6
        Top = 7
        Width = 51
        Height = 17
        Caption = #1055#1077#1095#1072#1090
        TabOrder = 0
      end
    end
  end
  object gbID: TGroupBox [1]
    Left = 8
    Top = 0
    Width = 457
    Height = 68
    Caption = ' '#1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1094#1080#1103' '
    TabOrder = 0
    object lblKlon: TLabel
      Left = 17
      Top = 17
      Width = 72
      Height = 13
      Caption = #1058#1055' '#1043#1083#1072#1074#1085#1086
    end
    object lblSaleNo: TLabel
      Left = 162
      Top = 17
      Width = 41
      Height = 13
      Caption = #1054#1055#1055' No'
    end
    object lblSaleType: TLabel
      Left = 248
      Top = 17
      Width = 19
      Height = 13
      Caption = #1042#1080#1076
    end
    object lblSaleDate: TLabel
      Left = 330
      Top = 17
      Width = 26
      Height = 13
      Caption = #1044#1072#1090#1072
    end
    object edtSaleNo: TDBEdit
      Left = 161
      Top = 34
      Width = 75
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'SALE_NO'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 1
    end
    object lcbBranch: TJvDBLookupCombo
      Left = 16
      Top = 34
      Width = 134
      Height = 21
      DataField = 'SALE_BRANCH_CODE'
      DataSource = dsData
      LookupField = 'BRANCH_CODE'
      LookupDisplay = 'BRANCH_CODE_AND_NAME'
      LookupSource = dsBranches
      TabOrder = 0
    end
    object lcbSaleType: TJvDBLookupCombo
      Left = 248
      Top = 34
      Width = 60
      Height = 21
      DataField = 'SALE_TYPE_CODE'
      DataSource = dsData
      LookupField = 'SALE_TYPE_CODE'
      LookupDisplay = 'SALE_TYPE_ABBREV'
      LookupSource = dsSaleTypes
      TabOrder = 2
    end
    inline frSaleDate: TfrDateFieldEditFrame
      Left = 330
      Top = 34
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 3
      TabStop = True
      ExplicitLeft = 330
      ExplicitTop = 34
    end
  end
  object gbNotes: TGroupBox [2]
    Left = 8
    Top = 336
    Width = 457
    Height = 88
    Caption = ' '#1041#1077#1083#1077#1078#1082#1080' '
    TabOrder = 2
    object mNotes: TDBMemo
      Left = 8
      Top = 16
      Width = 441
      Height = 63
      DataField = 'NOTES'
      DataSource = dsData
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object gbInfo: TGroupBox [3]
    Left = 8
    Top = 72
    Width = 457
    Height = 257
    Caption = ' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '
    TabOrder = 1
    object lblInvoiceNo: TLabel
      Left = 16
      Top = 208
      Width = 59
      Height = 13
      Caption = #1060#1072#1082#1090#1091#1088#1072' '#8470
    end
    object lblInvoiceDate: TLabel
      Left = 120
      Top = 208
      Width = 86
      Height = 13
      Caption = #1044#1072#1090#1072' '#1085#1072' '#1092#1072#1082#1090#1091#1088#1072
    end
    object lblQuantity: TLabel
      Left = 16
      Top = 112
      Width = 59
      Height = 13
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
    end
    object lblTotalPriceDEM: TLabel
      Left = 336
      Top = 160
      Width = 73
      Height = 13
      Caption = #1054#1073#1097#1072' '#1089#1090'-'#1090' /.../'
    end
    object lblTotalPrice: TLabel
      Left = 232
      Top = 160
      Width = 51
      Height = 13
      Caption = #1054#1073#1097#1072' '#1089#1090'-'#1090
    end
    object lblSinglePrice: TLabel
      Left = 16
      Top = 160
      Width = 74
      Height = 13
      Caption = #1045#1076'. '#1094#1077#1085#1072' '#1079#1072' %s'
    end
    object lblCurrency: TLabel
      Left = 352
      Top = 112
      Width = 35
      Height = 13
      Caption = #1042#1072#1083#1091#1090#1072
    end
    object dbtMeasure: TDBText
      Left = 116
      Top = 132
      Width = 37
      Height = 17
      DataField = '_PRODUCT_MEASURE_ABBREV'
      DataSource = dsData
    end
    object lblClient: TLabel
      Left = 16
      Top = 16
      Width = 36
      Height = 13
      Caption = #1050#1083#1080#1077#1085#1090
    end
    object lblShipmentStore: TLabel
      Left = 232
      Top = 208
      Width = 173
      Height = 13
      Caption = #1050#1086#1076' '#1085#1072' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086' '#1079#1072' '#1077#1082#1089#1087'.'
    end
    object lblAccountQuantity: TLabel
      Left = 184
      Top = 112
      Width = 87
      Height = 13
      Caption = #1057#1095#1077#1090'. '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
    end
    object dbtAccountMeasure: TDBText
      Left = 284
      Top = 132
      Width = 35
      Height = 17
      DataField = '_ACCOUNT_MEASURE_ABBREV'
      DataSource = dsData
    end
    object lblAccountSinglePrice: TLabel
      Left = 120
      Top = 160
      Width = 74
      Height = 13
      Caption = #1045#1076'. '#1094#1077#1085#1072' '#1079#1072' %s'
    end
    object edtInvoiceNo: TDBEdit
      Left = 16
      Top = 224
      Width = 97
      Height = 21
      DataField = 'INVOICE_NO'
      DataSource = dsData
      TabOrder = 9
    end
    object edtQuantity: TDBEdit
      Left = 16
      Top = 128
      Width = 97
      Height = 21
      DataField = 'QUANTITY'
      DataSource = dsData
      TabOrder = 2
    end
    object edtSinglePrice: TDBEdit
      Left = 16
      Top = 176
      Width = 97
      Height = 21
      DataField = 'SINGLE_PRICE'
      DataSource = dsData
      TabOrder = 5
    end
    object edtTotalPrice: TDBEdit
      Left = 232
      Top = 176
      Width = 89
      Height = 21
      DataField = 'TOTAL_PRICE'
      DataSource = dsData
      TabOrder = 7
    end
    object edtTotalPriceDEM: TDBEdit
      Left = 336
      Top = 176
      Width = 105
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'TOTAL_PRICE_DEM'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 8
    end
    object lcbCurrency: TJvDBLookupCombo
      Left = 352
      Top = 128
      Width = 89
      Height = 21
      DataField = 'CURRENCY_CODE'
      DataSource = dsData
      LookupField = 'CURRENCY_CODE'
      LookupDisplay = 'CURRENCY_ABBREV'
      LookupSource = dsCurrencies
      TabOrder = 4
    end
    object edtAccountQuantity: TDBEdit
      Left = 184
      Top = 128
      Width = 97
      Height = 21
      DataField = 'ACCOUNT_QUANTITY'
      DataSource = dsData
      TabOrder = 3
    end
    object edtAccountSinglePrice: TDBEdit
      Left = 120
      Top = 176
      Width = 105
      Height = 21
      DataField = 'ACCOUNT_SINGLE_PRICE'
      DataSource = dsData
      TabOrder = 6
    end
    inline frShipmentStore: TfrDeptFieldEditFrameBald
      Left = 232
      Top = 224
      Width = 209
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 11
      TabStop = True
      ExplicitLeft = 232
      ExplicitTop = 224
      ExplicitWidth = 209
      DesignSize = (
        209
        22)
      inherited gbTreeNode: TGroupBox
        Width = 225
        ExplicitWidth = 225
        DesignSize = (
          225
          49)
        inherited pnlTreeNode: TPanel
          Width = 209
          ExplicitWidth = 209
          inherited pnlTreeNodeName: TPanel
            Width = 62
            ExplicitWidth = 62
            DesignSize = (
              62
              22)
            inherited edtTreeNodeName: TDBEdit
              Width = 61
              ExplicitWidth = 61
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 62
            ExplicitLeft = 62
          end
          inherited pnlRightButtons: TPanel
            Left = 173
            ExplicitLeft = 173
          end
        end
      end
    end
    inline frProduct: TfrProductFieldEditFrame
      Left = 16
      Top = 56
      Width = 425
      Height = 49
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 49
      TabOrder = 1
      TabStop = True
      ExplicitLeft = 16
      ExplicitTop = 56
      ExplicitWidth = 425
      inherited gbTreeNode: TGroupBox
        Width = 425
        ExplicitWidth = 425
        DesignSize = (
          425
          49)
        inherited pnlTreeNode: TPanel
          Width = 409
          ExplicitWidth = 409
          inherited pnlTreeNodeName: TPanel
            Width = 239
            ExplicitWidth = 239
            DesignSize = (
              239
              22)
            inherited edtTreeNodeName: TDBEdit
              Width = 238
              ExplicitWidth = 238
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 239
            ExplicitLeft = 239
          end
          inherited pnlRightButtons: TPanel
            Left = 350
            ExplicitLeft = 350
          end
        end
      end
    end
    inline frInvoiceDate: TfrDateFieldEditFrame
      Left = 120
      Top = 224
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 10
      TabStop = True
      ExplicitLeft = 120
      ExplicitTop = 224
    end
    inline frClient: TfrPartnerFieldEditFrameBald
      Left = 16
      Top = 32
      Width = 425
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 0
      TabStop = True
      ExplicitLeft = 16
      ExplicitTop = 32
      ExplicitWidth = 425
      DesignSize = (
        425
        22)
      inherited gbPartner: TGroupBox
        Width = 440
        ExplicitWidth = 440
        inherited pnlNameAndButtons: TPanel
          Width = 351
          ExplicitWidth = 351
          inherited pnlRightButtons: TPanel
            Left = 315
            ExplicitLeft = 315
          end
          inherited pnlPartnerName: TPanel
            Width = 315
            ExplicitWidth = 315
            DesignSize = (
              315
              23)
            inherited cbPartner: TJvDBLookupCombo
              Width = 316
              ExplicitWidth = 316
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 432
          ExplicitLeft = 432
        end
      end
    end
  end
  inherited alActions: TActionList
    Left = 16
    Top = 388
    inherited actForm: TAction
      Caption = ''
    end
    object actCorrections: TAction
      Caption = #1050#1086#1088#1077#1082#1094#1080#1080'...'
      ImageIndex = 23
      OnExecute = actCorrectionsExecute
    end
    object actAnnul: TAction
      Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077'...'
      ImageIndex = 16
      OnExecute = actAnnulExecute
    end
    object actFinish: TAction
      Caption = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077'...'
      ImageIndex = 17
      OnExecute = actFinishExecute
    end
  end
  inherited dsData: TDataSource
    Left = 128
    Top = 388
  end
  inherited cdsData: TAbmesClientDataSet
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvQuickSale'
    ConnectionBroker = dmMain.conSales
    BeforePost = cdsDataBeforePost
    OnCalcFields = cdsDataCalcFields
    Left = 96
    Top = 388
    object cdsDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDataSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDataSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_OBJECT_BRANCH_CODE'
    end
    object cdsDataSALE_GROUP_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_OBJECT_CODE'
    end
    object cdsDataSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
    end
    object cdsDataCLIENT_COMPANY_CODE: TAbmesFloatField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      FieldName = 'CLIENT_COMPANY_CODE'
      Required = True
      OnChange = cdsDataCLIENT_COMPANY_CODEChange
    end
    object cdsDataREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_REGISTER_DATE'
    end
    object cdsDataPRODUCT_CODE: TAbmesFloatField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'PRODUCT_CODE'
      Required = True
      OnChange = cdsDataPRODUCT_CODEChange
    end
    object cdsDataQUANTITY: TAbmesFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'QUANTITY'
      Required = True
      OnChange = cdsDataQUANTITYChange
      DisplayFormat = ',0.##'
      EditFormat = '0.##'
    end
    object cdsDataCURRENCY_CODE: TAbmesFloatField
      DisplayLabel = #1042#1072#1083#1091#1090#1072
      FieldName = 'CURRENCY_CODE'
      Required = True
      OnChange = cdsDataCURRENCY_CODEChange
    end
    object cdsDataSINGLE_PRICE: TAbmesFloatField
      DisplayLabel = #1045#1076#1080#1085#1080#1095#1085#1072' '#1094#1077#1085#1072
      FieldName = 'SINGLE_PRICE'
      Required = True
      OnChange = cdsDataSINGLE_PRICEChange
      DisplayFormat = ',0.##'
      EditFormat = '0.##'
    end
    object cdsDataRECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_DATE'
    end
    object cdsDataNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsDataSALE_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1043#1083#1072#1074#1085#1086
      FieldName = 'SALE_BRANCH_CODE'
      Required = True
      OnChange = cdsDataSALE_BRANCH_CODEChange
    end
    object cdsDataSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
    end
    object cdsDataSALE_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1080#1076
      FieldName = 'SALE_TYPE_CODE'
      Required = True
    end
    object cdsDataSHIPMENT_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1054#1055#1055
      FieldName = 'SHIPMENT_DATE'
      Required = True
      OnChange = cdsDataSHIPMENT_DATEChange
    end
    object cdsDataSHIPMENT_STORE_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076' '#1085#1072' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086' '#1079#1072' '#1077#1082#1089#1087#1077#1076#1080#1094#1080#1103
      FieldName = 'SHIPMENT_STORE_CODE'
      Required = True
      OnChange = cdsDataSHIPMENT_STORE_CODEChange
    end
    object cdsDataANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object cdsDataANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object cdsDataANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object cdsDataFINISH_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'FINISH_EMPLOYEE_CODE'
    end
    object cdsDataFINISH_DATE: TAbmesSQLTimeStampField
      FieldName = 'FINISH_DATE'
    end
    object cdsDataFINISH_TIME: TAbmesSQLTimeStampField
      FieldName = 'FINISH_TIME'
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
    object cdsDataTOTAL_PRICE: TAbmesFloatField
      DisplayLabel = #1054#1073#1097#1072' '#1089#1090#1086#1081#1085#1086#1089#1090
      FieldName = 'TOTAL_PRICE'
      Required = True
      OnChange = cdsDataTOTAL_PRICEChange
      DisplayFormat = ',0.##'
      EditFormat = '0.##'
    end
    object cdsDataTOTAL_PRICE_DEM: TAbmesFloatField
      DisplayLabel = #1054#1073#1097#1072' '#1089#1090#1086#1081#1085#1086#1089#1090
      FieldName = 'TOTAL_PRICE_DEM'
      OnChange = cdsDataTOTAL_PRICE_DEMChange
      DisplayFormat = ',0.##'
      EditFormat = '0.##'
    end
    object cdsDataPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsDataPRODUCT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_MEASURE_CODE'
    end
    object cdsDataPRODUCT_MARKET_SEC_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_MARKET_SEC_PRICE'
    end
    object cdsDataPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_COEF'
    end
    object cdsDataINVOICE_NO: TAbmesFloatField
      FieldName = 'INVOICE_NO'
    end
    object cdsDataINVOICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'INVOICE_DATE'
    end
    object cdsDataCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      Size = 5
    end
    object cdsDataCORRECTION: TAbmesFloatField
      FieldName = 'CORRECTION'
    end
    object cdsData_PRODUCT_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_PRODUCT_MEASURE_ABBREV'
      LookupDataSet = cdsMeasures
      LookupKeyFields = 'MEASURE_CODE'
      LookupResultField = 'MEASURE_ABBREV'
      KeyFields = 'PRODUCT_MEASURE_CODE'
      ProviderFlags = []
      Size = 10
      Lookup = True
    end
    object cdsDataPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
      FieldValueType = fvtInteger
    end
    object cdsDataACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
      ProviderFlags = []
      OnChange = cdsDataACCOUNT_QUANTITYChange
    end
    object cdsDataACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_SINGLE_PRICE'
      ProviderFlags = []
      OnChange = cdsDataACCOUNT_SINGLE_PRICEChange
      DisplayFormat = ',0.##'
    end
    object cdsDataPRODUCT_ACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_CODE'
      ProviderFlags = []
    end
    object cdsData_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_ACCOUNT_MEASURE_ABBREV'
      LookupDataSet = cdsMeasures
      LookupKeyFields = 'MEASURE_CODE'
      LookupResultField = 'MEASURE_ABBREV'
      KeyFields = 'PRODUCT_ACCOUNT_MEASURE_CODE'
      Size = 10
      Lookup = True
    end
    object cdsData_SALE_BRANCH_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SALE_BRANCH_NAME'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_CODE_AND_NAME'
      KeyFields = 'SALE_BRANCH_CODE'
      Size = 50
      Lookup = True
    end
    object cdsData_SALE_TYPE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SALE_TYPE_ABBREV'
      LookupDataSet = cdsSaleTypes
      LookupKeyFields = 'SALE_TYPE_CODE'
      LookupResultField = 'SALE_TYPE_ABBREV'
      KeyFields = 'SALE_TYPE_CODE'
      Size = 5
      Lookup = True
    end
    object cdsData_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_CURRENCY_ABBREV'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = 'CURRENCY_CODE'
      Size = 5
      Lookup = True
    end
    object cdsData_LBL_SINGLE_PRICE_MEASURE: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_LBL_SINGLE_PRICE_MEASURE'
      Size = 50
      Calculated = True
    end
    object cdsData_LBL_SINGLE_PRICE_ACC_MEASURE: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_LBL_SINGLE_PRICE_ACC_MEASURE'
      Size = 50
      Calculated = True
    end
    object cdsData_LBL_ANNUL_FINISH_STATUS: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_LBL_ANNUL_FINISH_STATUS'
      Size = 50
      Calculated = True
    end
    object cdsData_SECONDARY_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SECONDARY_CURRENCY_ABBREV'
      Size = 5
      Calculated = True
    end
    object cdsDataCLIENT_COMPANY_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_COMPANY_NAME'
      ProviderFlags = []
      Size = 153
    end
    object cdsDataSHIPMENT_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIPMENT_STORE_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    Filter = '(IS_LOCAL_BRANCH <> 0) and (IS_INACTIVE = 0)'
    Params = <>
    ProviderName = 'prvBranches'
    ConnectionBroker = dmMain.conCompany
    Left = 64
    Top = 24
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
      ProviderFlags = []
    end
    object cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField
      FieldName = 'BRANCH_CODE_AND_NAME'
      ProviderFlags = []
      Size = 255
    end
    object cdsBranchesBRANCH_NO: TAbmesFloatField
      FieldName = 'BRANCH_NO'
      ProviderFlags = []
    end
    object cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField
      FieldName = 'IS_LOCAL_BRANCH'
    end
    object cdsBranchesIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
  end
  object dsBranches: TDataSource
    DataSet = cdsBranches
    Left = 99
    Top = 24
  end
  object cdsSaleTypes: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvSaleTypes'
    ConnectionBroker = dmMain.conSalesCommon
    Left = 258
    Top = 32
    object cdsSaleTypesSALE_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_TYPE_CODE'
    end
    object cdsSaleTypesSALE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_TYPE_ABBREV'
      Size = 3
    end
  end
  object dsSaleTypes: TDataSource
    DataSet = cdsSaleTypes
    Left = 291
    Top = 32
  end
  object cdsCurrencies: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCurrenciesWithRates'
    ConnectionBroker = dmMain.conCommon
    Left = 392
    Top = 192
    object cdsCurrenciesCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
      ProviderFlags = []
    end
    object cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object cdsCurrenciesCURRENCY_NAME: TAbmesWideStringField
      FieldName = 'CURRENCY_NAME'
      Size = 50
    end
    object cdsCurrenciesSCALE: TAbmesFloatField
      FieldName = 'SCALE'
    end
    object cdsCurrenciesROUNDER: TAbmesFloatField
      FieldName = 'ROUNDER'
    end
    object cdsCurrenciesORDER_NO: TAbmesFloatField
      FieldName = 'ORDER_NO'
    end
    object cdsCurrenciesTODAY_FIXING: TAbmesFloatField
      FieldName = 'TODAY_FIXING'
    end
    object cdsCurrenciesTODAY_SECONDARY_FIXING: TAbmesFloatField
      FieldName = 'TODAY_SECONDARY_FIXING'
    end
  end
  object dsCurrencies: TDataSource
    DataSet = cdsCurrencies
    Left = 424
    Top = 192
  end
  object cdsMeasures: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvMeasures'
    ConnectionBroker = dmMain.conCommon
    Left = 374
    Top = 121
    object cdsMeasuresMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
  end
  object cdsSecCurRates: TAbmesClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'RATE_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'prvSecondaryCurrencyRates'
    ConnectionBroker = dmMain.conCommon
    BeforeOpen = cdsSecCurRatesBeforeOpen
    Left = 392
    Top = 248
    object cdsSecCurRatesCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object cdsSecCurRatesRATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RATE_DATE'
    end
    object cdsSecCurRatesFIXING: TAbmesFloatField
      FieldName = 'FIXING'
    end
  end
end
