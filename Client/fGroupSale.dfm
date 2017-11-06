inherited fmGroupSale: TfmGroupSale
  Left = 0
  Top = 0
  Caption = ''
  ClientHeight = 664
  ClientWidth = 1019
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 629
    Width = 1019
    object pnlInsertBtn: TPanel [0]
      Left = 113
      Top = 0
      Width = 113
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      object btnInsertRecord: TBitBtn
        Left = 8
        Top = 2
        Width = 105
        Height = 25
        Action = actInsertRecord
        Caption = #1044#1086#1073#1072#1074#1103#1085#1077'...'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
          FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF000000
          FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
          FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
          FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
          0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
          0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 0
      end
    end
    object pnlFinishIndicator: TPanel [1]
      Left = 226
      Top = 0
      Width = 103
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 2
      object chkIsFinished: TAbmesDBCheckBox
        Left = 16
        Top = 8
        Width = 81
        Height = 17
        Caption = #1055#1088#1080#1082#1083#1102#1095#1077#1085
        DataField = '_IS_FINISHED'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 0
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
    end
    object pnlAnnulIndicator: TPanel [2]
      Left = 329
      Top = 0
      Width = 103
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 3
      object chkIsAnnuled: TAbmesDBCheckBox
        Left = 16
        Top = 8
        Width = 81
        Height = 17
        Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1072
        DataField = '_IS_ANNULED'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 0
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
    end
    inherited pnlOKCancel: TPanel
      Left = 749
      Width = 180
      TabOrder = 8
      inherited btnOK: TBitBtn
        Width = 80
      end
      inherited btnCancel: TBitBtn
        Width = 80
      end
    end
    inherited pnlClose: TPanel
      Left = 659
      Width = 90
      TabOrder = 7
      inherited btnClose: TBitBtn
        Width = 80
      end
    end
    inherited pnlApply: TPanel
      Left = 929
      Width = 90
      TabOrder = 9
      Visible = False
      inherited btnApply: TBitBtn
        Width = 80
      end
    end
    object pnlEditBtn: TPanel
      Left = 0
      Top = 0
      Width = 113
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object btnEditRecord: TBitBtn
        Left = 8
        Top = 2
        Width = 105
        Height = 25
        Action = actEditRecord
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
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
        TabOrder = 0
      end
    end
    object pnlAnnulBtn: TPanel
      Left = 354
      Top = 0
      Width = 124
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 5
      Visible = False
      object btnAnnul: TBitBtn
        Left = 0
        Top = 2
        Width = 105
        Height = 25
        Action = actAnnul
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
    object pnlFinishBtn: TPanel
      Left = 241
      Top = 0
      Width = 113
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 4
      Visible = False
      object btnFinish: TBitBtn
        Left = 0
        Top = 2
        Width = 105
        Height = 25
        Action = actFinish
        Caption = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077'...'
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
        TabOrder = 0
      end
    end
    object pnlPrintBtn: TPanel
      Left = 478
      Top = 0
      Width = 90
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 6
      Visible = False
      object btnPrintEx: TBitBtn
        Left = 0
        Top = 2
        Width = 80
        Height = 25
        Action = actPrintEx
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
        TabOrder = 0
      end
    end
    object pnlReloadGroupSale: TPanel
      Left = 568
      Top = 0
      Width = 91
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      object chkReloadGroupSale: TCheckBox
        Left = 0
        Top = 6
        Width = 89
        Height = 17
        Hint = #1055#1086#1074#1090#1086#1088#1085#1086' '#1086#1090#1074#1072#1088#1103#1085#1077' '#1085#1072' '#1055#1044#1050' '#1089#1083#1077#1076' '#1085#1072#1090#1080#1089#1082#1072#1085#1077' '#1085#1072' '#1054#1050
        Caption = #1054#1090#1074'. '#1089#1083#1077#1076' '#1054#1050
        TabOrder = 0
      end
    end
  end
  inherited pnlMain: TPanel
    Width = 1019
    Height = 629
    inherited pnlGrid: TPanel
      Top = 297
      Width = 1003
      Height = 255
      TabOrder = 1
      inherited pnlNavigator: TPanel
        Width = 1003
        object btnCopyQuantityTakenToQuantityShipped: TSpeedButton [0]
          Left = 714
          Top = 10
          Width = 67
          Height = 14
          Action = actCopyQuantityTakenToQuantityShipped
          Flat = True
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
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000BDBD000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0000000000BDBD0000BDBD0000BDBD00000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000000000BDBD0000BDBD0000BDBD0000BDBD0000BDBD
            000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000BDBD0000BDBD0000BDBD0000BDBD0000BDBD0000BDBD
            0000BDBD000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0000000000000000000000000000000000BDBD0000BDBD0000BDBD00000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0000000000BDBD0000BDBD0000BDBD00000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0000000000BDBD0000BDBD0000BDBD00000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0000000000BDBD0000BDBD0000BDBD00000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
        inherited pnlFilterButton: TPanel
          Left = 144
          Visible = False
        end
        inherited navData: TDBColorNavigator
          Width = 120
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 240
          TabOrder = 3
        end
        object pnlShowAnnuledLines: TPanel
          Left = 120
          Top = 0
          Width = 24
          Height = 24
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object btnShowAnnuledLines: TSpeedButton
            Left = 0
            Top = 0
            Width = 24
            Height = 24
            Action = actShowAnnuledLines
            AllowAllUp = True
            GroupIndex = 3
            Flat = True
          end
        end
        object tlbTopButtons: TToolBar
          Left = 168
          Top = 0
          Width = 72
          Height = 24
          Align = alLeft
          ButtonHeight = 24
          ButtonWidth = 36
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 4
          object sepBeforeDocumentation: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepBeforeDocumentation'
            ImageIndex = 12
            Style = tbsSeparator
          end
          object lblDocumentation: TLabel
            Left = 8
            Top = 0
            Width = 27
            Height = 24
            Alignment = taCenter
            AutoSize = False
            Caption = #1059#1054#1073
            Layout = tlCenter
          end
          object btnDocumentation: TToolButton
            Left = 35
            Top = 0
            ImageIndex = 1
            OnClick = btnDocumentationClick
          end
        end
        object tlbToggles: TToolBar
          Left = 979
          Top = 0
          Width = 24
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Caption = 'tlbToggles'
          Images = dmMain.ilActions
          TabOrder = 5
          object btnShowClientNos: TToolButton
            Left = 0
            Top = 0
            Action = actShowClientNos
          end
        end
        object tlbTogglePrices: TToolBar
          Left = 889
          Top = 0
          Width = 90
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 21
          ButtonWidth = 41
          ParentShowHint = False
          ShowCaptions = True
          ShowHint = True
          TabOrder = 6
          object btnExcludeVAT: TToolButton
            Left = 0
            Top = 0
            Action = actExcludeVAT
            Grouped = True
            Style = tbsCheck
          end
          object btnIncludeVAT: TToolButton
            Left = 41
            Top = 0
            Action = actIncludeVAT
            Grouped = True
            Style = tbsCheck
          end
          object sepVAT: TToolButton
            Left = 82
            Top = 0
            Width = 8
            Caption = 'sepVAT'
            ImageIndex = 0
            Style = tbsSeparator
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 1003
        Height = 231
        FooterColor = 15258325
        FooterRowCount = 1
        HorzScrollBar.Visible = False
        UseMultiTitle = True
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'REQUEST_LINE_NO'
            Footers = <>
            Width = 19
          end
          item
            EditButtons = <>
            FieldName = 'PROCESS_OBJECT_IDENTIFIER'
            Footers = <>
            Title.Caption = 'XXX '#8470
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'CLIENT_REQUEST_NO'
            Footers = <>
            Title.Caption = #1050#1083'. '#1086#1079#1085'. '#1085#1072' '#1054#1044#1050
            Visible = False
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_NAME'
            Footers = <>
            Width = 196
          end
          item
            EditButtons = <>
            FieldName = 'CLIENT_PRODUCT_NAME'
            Footers = <>
            Title.Caption = #1050#1083#1080#1077#1085#1090#1089#1082#1086' '#1086#1079#1085#1072#1095#1077#1085#1080#1077' '#1085#1072' '#1059#1054#1073
            Visible = False
            Width = 196
          end
          item
            EditButtons = <>
            FieldName = '_PRODUCT_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1052'.'#1077#1076'.'
            Width = 29
          end
          item
            EditButtons = <>
            FieldName = 'CL_OFFER_QUANTITY'
            Footer.FieldName = 'CL_OFFER__SUM_QUANTITY'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1055#1086#1080#1089#1082#1072#1085#1086'|'#1056#1072#1073'. '#1082'-'#1074#1086
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'CL_OFFER_LEASE_DATE_UNIT_QTY'
            Footers = <>
            Title.Caption = #1055#1086#1080#1089#1082#1072#1085#1086'|'#1079#1072
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = '_CL_OFFER_LEASE_DATE_UNIT_NAME'
            Footers = <>
            Title.Caption = #1055#1086#1080#1089#1082#1072#1085#1086'|'#1053#1072#1077#1084'.'#1089#1090'.'
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'QUANTITY'
            Footer.FieldName = '_SUM_QUANTITY'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1086'|'#1056#1072#1073'. '#1082'-'#1074#1086
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'LEASE_DATE_UNIT_QTY'
            Footers = <>
            Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1086'|'#1079#1072
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = '_LEASE_DATE_UNIT_NAME'
            Footers = <>
            Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1086'|'#1053#1072#1077#1084'.'#1089#1090'.'
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'SSH_QUANTITY'
            Footer.FieldName = '_SUM_SSH_QUANTITY'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1055#1088#1086#1076#1072#1076#1077#1085#1086'|'#1056#1072#1073'. '#1082'-'#1074#1086
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SSH_LEASE_DATE_UNIT_QTY'
            Footers = <>
            Title.Caption = #1055#1088#1086#1076#1072#1076#1077#1085#1086'|'#1079#1072
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = '_LEASE_DATE_UNIT_NAME'
            Footers = <>
            Title.Caption = #1055#1088#1086#1076#1072#1076#1077#1085#1086'|'#1053#1072#1077#1084'.'#1089#1090'.'
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'QUANTITY_RETURNED_TO_STORE'
            Footer.FieldName = '_SUM_QTY_RETURNED_TO_STORE'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1042#1098#1088#1085#1072#1090#1086' '#1088#1072#1073'. '#1082'-'#1074#1086
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'SHIPMENT_STORE_IDENTIFIER'
            Footers = <>
            Title.Caption = #1058#1055' '#1045#1082#1089#1087#1077#1076'.'
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'SINGLE_PRICE'
            Footers = <>
            Title.Caption = #1045#1076'. '#1094#1077#1085#1072' '#1079#1072' '#1055#1088#1076'.'
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = '_SINGLE_PRICE_WITH_VAT'
            Footers = <>
            Title.Caption = #1045#1076'. '#1094#1077#1085#1072' '#1079#1072' '#1055#1088#1076'.'
            Visible = False
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_PRICE'
            Footer.FieldName = '_SUM_TOTAL_PRICE'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1054#1073#1097#1072' '#1089#1090#1086#1081#1085#1086#1089#1090
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = '_TOTAL_PRICE_WITH_VAT'
            Footer.FieldName = '_SUM_TOTAL_PRICE_WITH_VAT'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1054#1073#1097#1072' '#1089#1090#1086#1081#1085#1086#1089#1090
            Visible = False
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'DISCOUNT_PERCENT'
            Footers = <>
            Title.Caption = ' -%'
            Width = 31
          end
          item
            Checkboxes = False
            EditButtons = <>
            FieldName = '_IS_ANNULED'
            Footers = <>
            Title.Caption = #1040
            Width = 12
          end>
      end
    end
    object pnlGroupData: TPanel
      Left = 8
      Top = 8
      Width = 1003
      Height = 289
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object grpRequestIdentification: TGroupBox
        Left = 0
        Top = 0
        Width = 1001
        Height = 65
        Caption = ' '#1055#1072#1082#1077#1090' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1050#1083#1080#1077#1085#1090' ('#1055#1044#1050') '
        TabOrder = 0
        DesignSize = (
          1001
          65)
        object lblRequestBranch: TLabel
          Left = 104
          Top = 16
          Width = 48
          Height = 13
          Caption = #1058#1055' '#1043#1083
        end
        object lblRequestNo: TLabel
          Left = 160
          Top = 16
          Width = 14
          Height = 13
          Caption = 'No'
          FocusControl = edtRequestNo
        end
        object lblRequestSendDate: TLabel
          Left = 568
          Top = 16
          Width = 103
          Height = 13
          Caption = #1044#1072#1090#1072' '#1085#1072' '#1057#1090#1072#1088#1090#1080#1088#1072#1085#1077
        end
        object lblRequestRegisterDate: TLabel
          Left = 680
          Top = 16
          Width = 88
          Height = 13
          Caption = #1044#1072#1090#1072' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1088'.'
        end
        object lblActivatedBy: TLabel
          Left = 264
          Top = 16
          Width = 68
          Height = 13
          Caption = #1040#1082#1090#1080#1074#1080#1088#1072#1085' '#1086#1090
          FocusControl = edtActivatedBy
        end
        object lblSaleDealType: TLabel
          Left = 56
          Top = 16
          Width = 19
          Height = 13
          Caption = #1058#1080#1087
          FocusControl = cbSaleDealType
        end
        object lblStatus: TLabel
          Left = 8
          Top = 16
          Width = 34
          Height = 13
          Caption = #1057#1090#1072#1090#1091#1089
        end
        object lblClientRequestGroupNo: TLabel
          Left = 344
          Top = 16
          Width = 82
          Height = 13
          Caption = #1050#1083'. '#1086#1079#1085'. '#1085#1072' '#1055#1044#1050
          FocusControl = edtClientRequestGroupNo
        end
        object lblManagerEmployee: TLabel
          Left = 792
          Top = 16
          Width = 75
          Height = 13
          Caption = #1042#1086#1076#1077#1097' '#1044#1080#1072#1083#1086#1075
        end
        object edtRequestNo: TDBEdit
          Left = 160
          Top = 32
          Width = 49
          Height = 21
          Color = clBtnFace
          DataField = 'REQUEST_NO'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 3
        end
        object cbRequestBranch: TJvDBLookupCombo
          Left = 104
          Top = 32
          Width = 49
          Height = 21
          DropDownWidth = 150
          Color = clBtnFace
          DataField = 'REQUEST_BRANCH_CODE'
          DataSource = dsData
          LookupField = 'BRANCH_CODE'
          LookupDisplay = 'BRANCH_NO;NAME'
          LookupSource = dsBranches
          TabOrder = 2
        end
        inline frRequestSendDate: TfrDateFieldEditFrame
          Left = 568
          Top = 32
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 8
          TabStop = True
        end
        inline frRequestRegisterDate: TfrDateFieldEditFrame
          Left = 680
          Top = 32
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 9
          TabStop = True
        end
        object rgSaleOrderType: TJvDBRadioPanel
          Left = 424
          Top = 16
          Width = 141
          Height = 41
          BevelOuter = bvNone
          DataField = 'SALE_ORDER_TYPE_CODE'
          DataSource = dsData
          Items.Strings = (
            #1087#1086' '#1058#1077#1082#1091#1097#1072' '#1053#1072#1083#1080#1095#1085#1086#1089#1090
            #1087#1086' '#1041#1098#1076#1077#1097#1072' '#1053#1072#1083#1080#1095#1085#1086#1089#1090)
          TabOrder = 7
          Values.Strings = (
            '6'
            '7')
          OnChange = rgSaleOrderTypeChange
          OnClick = rgSaleOrderTypeClick
        end
        object cbSaleDealType: TJvDBLookupCombo
          Left = 56
          Top = 32
          Width = 41
          Height = 21
          DropDownWidth = 250
          DeleteKeyClear = False
          DisplayAllFields = True
          DataField = 'S_SALE_DEAL_TYPE_CODE'
          DataSource = dsData
          LookupField = 'SALE_DEAL_TYPE_CODE'
          LookupDisplay = 'SALE_DEAL_TYPE_ABBREV;SALE_DEAL_TYPE_NAME'
          LookupSource = dsSaleDealTypes
          TabOrder = 1
        end
        object edtActivatedBy: TEdit
          Left = 264
          Top = 32
          Width = 73
          Height = 21
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 5
          Text = #1050#1083#1080#1077#1085#1090
        end
        object edtStatus: TDBEdit
          Left = 8
          Top = 32
          Width = 41
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_STATUS_CODE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 0
        end
        object edtClientRequestGroupNo: TDBEdit
          Left = 344
          Top = 32
          Width = 81
          Height = 21
          DataField = 'CLIENT_REQUEST_GROUP_NO'
          DataSource = dsData
          TabOrder = 6
        end
        object tlbDocs: TToolBar
          Left = 215
          Top = 31
          Width = 36
          Height = 22
          Align = alNone
          Anchors = [akTop, akRight]
          AutoSize = True
          ButtonWidth = 36
          EdgeInner = esNone
          Images = dmMain.ilDocs
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          object btnDocs: TToolButton
            Left = 0
            Top = 0
            ImageIndex = 1
            OnClick = btnDocsClick
          end
        end
        inline frManagerEmployee: TfrEmployeeFieldEditFrameBald
          Left = 792
          Top = 32
          Width = 201
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 10
          DesignSize = (
            201
            22)
          inherited gbEmployee: TGroupBox
            Width = 220
            inherited pnlEmployeeName: TPanel
              Width = 145
              inherited pnlRightButtons: TPanel
                Left = 109
              end
              inherited pnlEmpoyeeNameInner: TPanel
                Width = 109
                DesignSize = (
                  109
                  32)
                inherited edtEmployeeName: TDBEdit
                  Width = 63
                end
                inherited cbEmployee: TJvDBLookupCombo
                  Width = 108
                end
              end
            end
            inherited pnlPaddingRight: TPanel
              Left = 210
            end
          end
        end
      end
      object grpSaleGroup: TGroupBox
        Left = 688
        Top = 72
        Width = 185
        Height = 65
        Caption = ' '#1043#1088#1091#1087#1072' '#1054#1055#1055' '
        TabOrder = 3
        object lblSaleType: TLabel
          Left = 144
          Top = 16
          Width = 19
          Height = 13
          Caption = #1042#1080#1076
        end
        object pnlSaleGroupIdentification: TPanel
          Left = 8
          Top = 16
          Width = 129
          Height = 41
          BevelOuter = bvNone
          TabOrder = 1
          object lblSaleGroupObjectCode: TLabel
            Left = 0
            Top = 0
            Width = 70
            Height = 13
            Caption = #1058#1055' '#1043#1083'./No'
            FocusControl = edtSaleGroupObjectIdentifier
          end
          object lblSaleGroupPriority: TLabel
            Left = 80
            Top = 0
            Width = 17
            Height = 13
            Caption = #1055#1088'.'
          end
          object edtSaleGroupObjectIdentifier: TDBEdit
            Left = 0
            Top = 16
            Width = 73
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'SALE_GROUP_OBJECT_IDENTIFIER'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 0
          end
          object cbSaleGroupPriority: TJvDBLookupCombo
            Left = 80
            Top = 16
            Width = 49
            Height = 21
            DropDownWidth = 150
            Color = clBtnFace
            DataField = 'SG_PRIORITY_CODE'
            DataSource = dsData
            LookupField = 'PRIORITY_CODE'
            LookupDisplay = 'PRIORITY_NO;PRIORITY_NAME'
            LookupSource = dsPriorities
            ReadOnly = True
            TabOrder = 1
            TabStop = False
          end
        end
        object pnlCreateSaleGroup: TPanel
          Left = 8
          Top = 16
          Width = 129
          Height = 41
          BevelOuter = bvNone
          TabOrder = 0
          object chkCreateSaleGroup: TAbmesDBCheckBox
            Left = 0
            Top = 14
            Width = 121
            Height = 25
            Caption = #1057#1098#1079#1076#1072#1074#1072#1085#1077' '#1085#1072' ID '#1054#1055#1055' '#1079#1072' '#1043#1088#1091#1087#1072' '#1059#1054#1073
            DataField = 'CREATE_SALE_GROUP'
            DataSource = dsData
            TabOrder = 0
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            WordWrap = True
            ImmediateUpdateField = True
          end
        end
        object cbSaleType: TJvDBLookupCombo
          Left = 144
          Top = 32
          Width = 33
          Height = 21
          DataField = 'S_SALE_TYPE_CODE'
          DataSource = dsData
          DisplayEmpty = ' '
          LookupField = 'SALE_TYPE_CODE'
          LookupDisplay = 'SALE_TYPE_ABBREV'
          LookupSource = dsSaleTypes
          TabOrder = 2
        end
      end
      object gbInvoice: TGroupBox
        Left = 608
        Top = 144
        Width = 393
        Height = 65
        Caption = ' '#1060#1072#1082#1090#1091#1088#1072' '
        TabOrder = 6
        object lblInvoiceNo: TLabel
          Left = 8
          Top = 16
          Width = 14
          Height = 13
          Caption = 'No'
          FocusControl = edtInvoiceNo
        end
        object lblInvoiceDate: TLabel
          Left = 136
          Top = 16
          Width = 26
          Height = 13
          Caption = #1044#1072#1090#1072
        end
        object lblInvoiceState: TLabel
          Left = 344
          Top = 16
          Width = 34
          Height = 13
          Caption = #1057#1090#1072#1090#1091#1089
        end
        object lblIsProformInvoice: TLabel
          Left = 95
          Top = 16
          Width = 19
          Height = 13
          Caption = #1042#1080#1076
        end
        object edtInvoiceNo: TDBEdit
          Left = 8
          Top = 32
          Width = 81
          Height = 21
          DataField = 'SSH_INVOICE_NO'
          DataSource = dsData
          TabOrder = 0
        end
        object btnInvoice: TBitBtn
          Left = 248
          Top = 32
          Width = 57
          Height = 21
          Action = actInvoice
          Caption = #1060#1072#1082#1090#1091#1088#1072
          TabOrder = 2
        end
        inline frInvoiceDate: TfrDateFieldEditFrame
          Left = 136
          Top = 32
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 1
          TabStop = True
        end
        object edtInvoiceState: TDBEdit
          Left = 344
          Top = 32
          Width = 41
          Height = 21
          Color = clBtnFace
          DataField = 'INVOICE_STATE_CODE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 3
        end
        object cbIsProformInvoice: TJvDBComboBox
          Left = 96
          Top = 32
          Width = 33
          Height = 21
          DataField = 'SSH_IS_PROFORM_INVOICE'
          DataSource = dsData
          DropDownCount = 4
          ItemHeight = 13
          Items.Strings = (
            ' '
            #1055
            #1060)
          TabOrder = 4
          Values.Strings = (
            ''
            'True'
            'False')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
          ListSettings.OutfilteredValueFont.Style = []
        end
      end
      object grpCurrency: TGroupBox
        Left = 608
        Top = 72
        Width = 73
        Height = 65
        Caption = ' '#1042#1072#1083#1091#1090#1072' '
        TabOrder = 2
        object cbCurrency: TJvDBLookupCombo
          Left = 8
          Top = 32
          Width = 57
          Height = 21
          DataField = 'S_CURRENCY_CODE'
          DataSource = dsData
          LookupField = 'CURRENCY_CODE'
          LookupDisplay = 'CURRENCY_ABBREV'
          LookupSource = dsCurrencies
          TabOrder = 0
        end
      end
      object grpStoreRequest: TGroupBox
        Left = 880
        Top = 72
        Width = 121
        Height = 65
        Caption = ' '#1047#1072#1103#1074#1082#1072' '#1079#1072' '#1090#1077#1075#1083#1077#1085#1077' '
        TabOrder = 4
        object edtStoreRequestIdentification: TDBEdit
          Left = 8
          Top = 32
          Width = 105
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_STORE_REQUEST_IDENTIFIER'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 0
        end
      end
      inline frClient: TfrPartnerExFieldEditFrame
        Left = 0
        Top = 72
        Width = 601
        Height = 65
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 155
        Constraints.MinHeight = 49
        TabOrder = 1
        TabStop = True
        inherited gbPartner: TGroupBox
          Width = 601
          Height = 65
          Caption = ' '#1050#1083#1080#1077#1085#1090' '
          inherited pnlNameAndButtons: TPanel
            Width = 176
            Height = 48
            inherited pnlRightButtons: TPanel
              Left = 140
              Height = 33
              inherited tlbDocButton: TToolBar
                Height = 33
              end
            end
            inherited pnlPartnerName: TPanel
              Width = 140
              Height = 33
              DesignSize = (
                140
                33)
              inherited edtPartnerName: TDBEdit
                Width = 126
              end
              inherited cbPartner: TJvDBLookupCombo
                Width = 141
              end
            end
            inherited pnlNameAndButtonsTop: TPanel
              Width = 176
              inherited lblPartner: TLabel
                Width = 76
              end
            end
          end
          inherited pnlPaddingRight: TPanel
            Left = 480
            Height = 48
          end
          inherited pnlPartnerCode: TPanel
            Height = 48
            DesignSize = (
              73
              48)
            inherited lblPartnerCode: TLabel
              Width = 19
            end
          end
          inherited pnlPaddingLeft: TPanel
            Height = 48
          end
          inherited frPartnerStatus: TfrCompanyStatus
            Height = 48
            Constraints.MaxHeight = 48
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
            inherited dsData: TDataSource
              DataSet = frClient.cdsPartner
            end
          end
          inherited pnlPriority: TPanel
            Height = 48
            inherited lblPriority: TLabel
              Width = 38
            end
          end
          inherited pnlCountry: TPanel
            Left = 486
            Height = 48
          end
          inherited pnlParRelButton: TPanel
            Left = 526
            Height = 48
            DesignSize = (
              73
              48)
          end
        end
      end
      object pnlDates: TPanel
        Left = 0
        Top = 144
        Width = 601
        Height = 65
        BevelOuter = bvNone
        TabOrder = 5
        object gbSaleDates: TGroupBox
          Left = 0
          Top = 65
          Width = 601
          Height = 65
          Align = alTop
          Caption = ' '#1044#1072#1090#1080' '#1085#1072' '#1087#1086#1083#1091#1095#1072#1074#1072#1085#1077' '#1085#1072' '#1059#1054#1073' '#1086#1090' '#1050#1083#1080#1077#1085#1090' '
          TabOrder = 0
          object lblReceiveDateClientOffered: TLabel
            Left = 8
            Top = 16
            Width = 103
            Height = 13
            Caption = #1055#1086#1080#1089#1082#1072#1085#1072' '#1086#1090' '#1050#1083#1080#1077#1085#1090
          end
          object lblReceiveDateClientOfferedChg: TLabel
            Left = 120
            Top = 16
            Width = 55
            Height = 13
            Caption = #1055#1086#1089#1083'. '#1080#1079#1084'.'
            FocusControl = edtReceiveDateClientOfferedChg
          end
          object lblReceiveDate: TLabel
            Left = 232
            Top = 16
            Width = 62
            Height = 13
            Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1072
          end
          object lblReceiveDateChg: TLabel
            Left = 376
            Top = 16
            Width = 55
            Height = 13
            Caption = #1055#1086#1089#1083'. '#1080#1079#1084'.'
            FocusControl = edtReceiveDateChg
          end
          object lblRealReceiveDate: TLabel
            Left = 486
            Top = 16
            Width = 41
            Height = 13
            Caption = #1054#1090#1095#1077#1090#1085#1072
          end
          object lblReceiveDateDiff: TLabel
            Left = 344
            Top = 16
            Width = 24
            Height = 13
            Caption = #1088#1079#1088#1074
            FocusControl = edtReceiveDateDiff
          end
          inline frReceiveDateClientOffered: TfrDateFieldEditFrame
            Left = 8
            Top = 32
            Width = 105
            Height = 21
            Constraints.MaxHeight = 21
            Constraints.MaxWidth = 105
            Constraints.MinHeight = 21
            Constraints.MinWidth = 105
            TabOrder = 0
            TabStop = True
          end
          inline frReceiveDate: TfrDateFieldEditFrame
            Left = 232
            Top = 32
            Width = 105
            Height = 21
            Constraints.MaxHeight = 21
            Constraints.MaxWidth = 105
            Constraints.MinHeight = 21
            Constraints.MinWidth = 105
            TabOrder = 2
            TabStop = True
          end
          inline frRealReceiveDate: TfrDateFieldEditFrame
            Left = 486
            Top = 32
            Width = 105
            Height = 21
            Constraints.MaxHeight = 21
            Constraints.MaxWidth = 105
            Constraints.MinHeight = 21
            Constraints.MinWidth = 105
            TabOrder = 5
            TabStop = True
          end
          object edtReceiveDateDiff: TDBEdit
            Left = 344
            Top = 32
            Width = 25
            Height = 21
            Color = clBtnFace
            DataField = '_S_RECEIVE_DATE_DIFF'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 3
          end
          object edtReceiveDateChg: TDBEdit
            Left = 376
            Top = 32
            Width = 65
            Height = 21
            TabStop = False
            Color = 14276044
            DataField = 'S_RECEIVE_DATE_CHG'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 4
          end
          object edtReceiveDateClientOfferedChg: TDBEdit
            Left = 120
            Top = 32
            Width = 65
            Height = 21
            TabStop = False
            Color = 14276044
            DataField = 'S_CL_OFFER_RECEIVE_DATEC'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 1
          end
        end
        object gbLeaseDates: TGroupBox
          Left = 0
          Top = 0
          Width = 601
          Height = 65
          Align = alTop
          Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1053#1072#1077#1084' '
          TabOrder = 1
          object lblClientOfferLeaseDateInterval: TLabel
            Left = 8
            Top = 16
            Width = 97
            Height = 13
            Caption = #1055#1086#1080#1089#1082#1072#1085' '#1086#1090' '#1050#1083#1080#1077#1085#1090
            FocusControl = frClientOfferLeaseDateInterval
          end
          object lblClientOfferLeaseDateIntervalChg: TLabel
            Left = 152
            Top = 16
            Width = 55
            Height = 13
            Caption = #1055#1086#1089#1083'. '#1080#1079#1084'.'
            FocusControl = edtClientOfferLeaseDateIntervalChg
          end
          object lblPlanLeaseDateInterval: TLabel
            Left = 224
            Top = 16
            Width = 56
            Height = 13
            Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085
            FocusControl = frPlanLeaseDateInterval
          end
          object lblPlanLeaseDateIntervalChg: TLabel
            Left = 368
            Top = 16
            Width = 55
            Height = 13
            Caption = #1055#1086#1089#1083'. '#1080#1079#1084'.'
            FocusControl = edtPlanLeaseDateIntervalChg
          end
          object lblRealLeaseDateInterval: TLabel
            Left = 486
            Top = 16
            Width = 104
            Height = 13
            Caption = #1054#1090#1095#1077#1090#1085#1072' '#1055#1086#1083#1091#1095#1072#1074#1072#1085#1077
          end
          inline frClientOfferLeaseDateInterval: TfrDateIntervalFrame
            Left = 8
            Top = 32
            Width = 145
            Height = 21
            Constraints.MaxHeight = 21
            Constraints.MaxWidth = 145
            Constraints.MinHeight = 21
            Constraints.MinWidth = 145
            TabOrder = 0
            TabStop = True
          end
          inline frPlanLeaseDateInterval: TfrDateIntervalFrame
            Left = 224
            Top = 32
            Width = 145
            Height = 21
            Constraints.MaxHeight = 21
            Constraints.MaxWidth = 145
            Constraints.MinHeight = 21
            Constraints.MinWidth = 145
            TabOrder = 2
            TabStop = True
          end
          object edtPlanLeaseDateIntervalChg: TDBEdit
            Left = 368
            Top = 32
            Width = 65
            Height = 21
            TabStop = False
            Color = 14276044
            DataField = 'S_RECEIVE_DATE_CHG'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 3
          end
          object edtClientOfferLeaseDateIntervalChg: TDBEdit
            Left = 152
            Top = 32
            Width = 65
            Height = 21
            TabStop = False
            Color = 14276044
            DataField = 'S_CL_OFFER_RECEIVE_DATEC'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 1
          end
          inline frLeaseRealReceiveDate: TfrDateFieldEditFrame
            Left = 486
            Top = 32
            Width = 105
            Height = 21
            Constraints.MaxHeight = 21
            Constraints.MaxWidth = 105
            Constraints.MinHeight = 21
            Constraints.MinWidth = 105
            TabOrder = 4
            TabStop = True
          end
        end
      end
      object gbFinOrder: TGroupBox
        Left = 736
        Top = 222
        Width = 265
        Height = 59
        TabOrder = 9
        object btnFinOrder: TButton
          Left = 8
          Top = 18
          Width = 57
          Height = 25
          Action = actFinOrder
          TabOrder = 0
        end
        object btnFinOrderPSDs: TButton
          Left = 72
          Top = 18
          Width = 185
          Height = 25
          Action = actFinOrderPSDs
          TabOrder = 1
        end
      end
      object pnlShipmentDates: TPanel
        Left = 0
        Top = 216
        Width = 601
        Height = 65
        BevelOuter = bvNone
        TabOrder = 7
        object gbSaleShipmentDates: TGroupBox
          Left = 0
          Top = 65
          Width = 601
          Height = 65
          Align = alTop
          Caption = ' '#1044#1072#1090#1080' '#1085#1072' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1103' '
          TabOrder = 0
          object lblShipmentDate: TLabel
            Left = 232
            Top = 16
            Width = 75
            Height = 13
            Caption = #1055#1083#1072#1085#1086#1074#1072' '#1045#1082#1089#1087'.'
          end
          object lblShipmentDateDiff: TLabel
            Left = 344
            Top = 16
            Width = 24
            Height = 13
            Caption = #1088#1079#1088#1074
            FocusControl = edtShipmentDateDiff
          end
          object lblRealShipmentDate: TLabel
            Left = 486
            Top = 16
            Width = 72
            Height = 13
            Caption = #1054#1090#1095#1077#1090#1085#1072' '#1045#1082#1089#1087'.'
          end
          inline frShipmentDate: TfrDateFieldEditFrame
            Left = 232
            Top = 32
            Width = 105
            Height = 21
            Constraints.MaxHeight = 21
            Constraints.MaxWidth = 105
            Constraints.MinHeight = 21
            Constraints.MinWidth = 105
            TabOrder = 0
            TabStop = True
          end
          object edtShipmentDateDiff: TDBEdit
            Left = 344
            Top = 32
            Width = 25
            Height = 21
            Color = clBtnFace
            DataField = '_S_SHIPMENT_DATE_DIFF'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 1
          end
          inline frRealShipmentDate: TfrDateFieldEditFrame
            Left = 486
            Top = 32
            Width = 105
            Height = 21
            Constraints.MaxHeight = 21
            Constraints.MaxWidth = 105
            Constraints.MinHeight = 21
            Constraints.MinWidth = 105
            TabOrder = 2
            TabStop = True
          end
        end
        object gbLeaseShipmentDates: TGroupBox
          Left = 0
          Top = 0
          Width = 601
          Height = 65
          Align = alTop
          Caption = ' '#1044#1072#1090#1080' '#1085#1072' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1103' '
          TabOrder = 1
          object lblLeaseShipmentDate: TLabel
            Left = 8
            Top = 16
            Width = 75
            Height = 13
            Caption = #1055#1083#1072#1085#1086#1074#1072' '#1045#1082#1089#1087'.'
          end
          object lblLeaseRealShipmentDate: TLabel
            Left = 366
            Top = 16
            Width = 72
            Height = 13
            Caption = #1054#1090#1095#1077#1090#1085#1072' '#1045#1082#1089#1087'.'
          end
          object lblLeaseImportDate: TLabel
            Left = 128
            Top = 16
            Width = 72
            Height = 13
            Caption = #1055#1083#1072#1085#1086#1074#1072' '#1042#1088#1097'.'
          end
          object lblLeaseRealImportDate: TLabel
            Left = 486
            Top = 16
            Width = 69
            Height = 13
            Caption = #1054#1090#1095#1077#1090#1085#1072' '#1042#1088#1097'.'
          end
          inline frLeaseShipmentDate: TfrDateFieldEditFrame
            Left = 8
            Top = 32
            Width = 105
            Height = 21
            Constraints.MaxHeight = 21
            Constraints.MaxWidth = 105
            Constraints.MinHeight = 21
            Constraints.MinWidth = 105
            TabOrder = 0
            TabStop = True
          end
          inline frLeaseRealShipmentDate: TfrDateFieldEditFrame
            Left = 366
            Top = 32
            Width = 105
            Height = 21
            Constraints.MaxHeight = 21
            Constraints.MaxWidth = 105
            Constraints.MinHeight = 21
            Constraints.MinWidth = 105
            TabOrder = 2
            TabStop = True
          end
          inline frLeaseImportDate: TfrDateFieldEditFrame
            Left = 128
            Top = 32
            Width = 105
            Height = 21
            Constraints.MaxHeight = 21
            Constraints.MaxWidth = 105
            Constraints.MinHeight = 21
            Constraints.MinWidth = 105
            TabOrder = 1
            TabStop = True
          end
          inline frLeaseRealImportDate: TfrDateFieldEditFrame
            Left = 486
            Top = 32
            Width = 105
            Height = 21
            Constraints.MaxHeight = 21
            Constraints.MaxWidth = 105
            Constraints.MinHeight = 21
            Constraints.MinWidth = 105
            TabOrder = 3
            TabStop = True
          end
        end
      end
      object gbNotes: TGroupBox
        Left = 608
        Top = 222
        Width = 121
        Height = 59
        TabOrder = 8
        object btnNotes: TBitBtn
          Left = 8
          Top = 18
          Width = 105
          Height = 25
          Action = actNotes
          Caption = #1041#1077#1083#1077#1078#1082#1080'...'
          TabOrder = 0
        end
      end
    end
    object pnlClientReceiveData: TPanel
      Left = 8
      Top = 552
      Width = 1003
      Height = 69
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      object gbClientReceiveData: TGroupBox
        AlignWithMargins = True
        Left = 248
        Top = 4
        Width = 755
        Height = 65
        Margins.Left = 0
        Margins.Top = 4
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alRight
        Caption = ' '#1059#1089#1083#1086#1074#1080#1103' '#1079#1072' '#1055#1086#1083#1091#1095#1072#1074#1072#1085#1077' '#1086#1090' '#1050#1083#1080#1077#1085#1090' '
        TabOrder = 1
        object lblShipmentDays: TLabel
          Left = 8
          Top = 16
          Width = 43
          Height = 13
          Caption = #1055#1077#1088#1044#1074#1078
        end
        object lblReceivePlaceOfficeName: TLabel
          Left = 72
          Top = 16
          Width = 165
          Height = 13
          Caption = #1058#1055' '#1085#1072' '#1050#1083#1080#1077#1085#1090' '#1079#1072' '#1055#1086#1083#1091#1095#1072#1074#1072#1085#1077
        end
        object lblReceivePlaceCountry: TLabel
          Left = 248
          Top = 16
          Width = 48
          Height = 13
          Caption = #1044#1098#1088#1078#1072#1074#1072
        end
        object lblCustomhouse: TLabel
          Left = 344
          Top = 16
          Width = 44
          Height = 13
          Caption = #1052#1080#1090#1085#1080#1094#1072
        end
        object lblShipmentType: TLabel
          Left = 480
          Top = 16
          Width = 77
          Height = 13
          Caption = #1058#1098#1088#1075#1086#1074#1089#1082#1080' '#1050#1086#1076
        end
        object lblTransportBy: TLabel
          Left = 600
          Top = 16
          Width = 139
          Height = 13
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1058#1088#1072#1085#1089#1087#1086#1088#1090
        end
        object edtShipmentDays: TDBEdit
          Left = 8
          Top = 32
          Width = 49
          Height = 21
          DataField = 'S_SHIPMENT_DAYS'
          DataSource = dsData
          TabOrder = 0
        end
        object cbReceivePlaceOfficeName: TJvDBLookupCombo
          Left = 73
          Top = 32
          Width = 168
          Height = 21
          DropDownWidth = 180
          DataField = 'S_RECEIVE_PLACE_OFFICE_CODE'
          DataSource = dsData
          DisplayEmpty = ' '
          FieldsDelimiter = '-'
          ListStyle = lsDelimited
          LookupField = 'OFFICE_CODE'
          LookupDisplay = 'OFFICE_NAME'
          LookupSource = dsCompanyOffices
          TabOrder = 1
        end
        object cbReceivePlaceCountry: TJvDBLookupCombo
          Left = 249
          Top = 32
          Width = 80
          Height = 21
          DropDownWidth = 180
          Color = clBtnFace
          DataField = 'S_RECEIVE_PLACE_OFFICE_CODE'
          DataSource = dsData
          DisplayEmpty = ' '
          FieldsDelimiter = '-'
          ListStyle = lsDelimited
          LookupField = 'OFFICE_CODE'
          LookupDisplay = 'COUNTRY_NAME'
          LookupSource = dsCompanyOffices
          ReadOnly = True
          TabOrder = 2
        end
        object cbCustomhouse: TJvDBLookupCombo
          Left = 344
          Top = 32
          Width = 129
          Height = 21
          DataField = 'S_CUSTOMHOUSE_CODE'
          DataSource = dsData
          DisplayEmpty = ' '
          LookupField = 'CUSTOMHOUSE_CODE'
          LookupDisplay = 'CUSTOMHOUSE_NAME'
          LookupSource = dsCustomhouses
          TabOrder = 3
        end
        object cbShipmentType: TJvDBLookupCombo
          Left = 480
          Top = 32
          Width = 113
          Height = 21
          DropDownWidth = 250
          DataField = 'S_SHIPMENT_TYPE_CODE'
          DataSource = dsData
          DisplayEmpty = ' '
          FieldsDelimiter = '-'
          ListStyle = lsDelimited
          LookupField = 'SHIPMENT_TYPE_CODE'
          LookupDisplay = 'SHIPMENT_TYPE_ABBREV; NOTES'
          LookupSource = dsShipmentTypes
          TabOrder = 4
        end
        object cbTransportBy: TJvDBComboBox
          Left = 600
          Top = 32
          Width = 145
          Height = 21
          DataField = 'S_IS_VENDOR_TRANSPORT'
          DataSource = dsData
          ItemHeight = 13
          Items.Strings = (
            ''
            #1048#1055
            #1050#1083#1080#1077#1085#1090)
          TabOrder = 5
          Values.Strings = (
            ''
            'False'
            'True')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
          ListSettings.OutfilteredValueFont.Style = []
        end
      end
      inline frMediator: TfrPartnerFieldEditFrameLabeled
        Left = 0
        Top = 4
        Width = 241
        Height = 65
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 65
        Constraints.MinHeight = 65
        TabOrder = 0
        inherited gbPartner: TGroupBox
          Width = 241
          Caption = ' '#1055#1086#1089#1088#1077#1076#1085#1080#1082' '
          inherited pnlNameAndButtons: TPanel
            Width = 152
            inherited pnlRightButtons: TPanel
              Left = 116
            end
            inherited pnlPartnerName: TPanel
              Width = 116
              inherited edtPartnerName: TDBEdit
                Width = 117
              end
              inherited cbPartner: TJvDBLookupCombo
                Width = 117
              end
            end
          end
          inherited pnlPaddingRight: TPanel
            Left = 233
          end
          inherited pnlLabels: TPanel
            Width = 237
            inherited lblCode: TLabel
              Width = 19
            end
            inherited lblName: TLabel
              Width = 76
            end
          end
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Top = 272
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    DataSetField = cdsDataqrySaleRequestGroupLines
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
        Name = 'SALE_GROUP_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SALE_GROUP_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SALE_ORDER_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'REQUEST_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'REQUEST_NO'
        DataType = ftFloat
      end
      item
        Name = 'REQUEST_LINE_NO'
        DataType = ftFloat
      end
      item
        Name = 'CLIENT_COMPANY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'REQUEST_SEND_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'REQUEST_REGISTER_DATE'
        DataType = ftTimeStamp
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
        Name = 'PRODUCT_MEASURE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_ACCOUNT_MEASURE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_ACCOUNT_MEASURE_COEF'
        DataType = ftFloat
      end
      item
        Name = 'QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'QUANTITY_CHG'
        DataType = ftTimeStamp
      end
      item
        Name = 'CL_OFFER_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'CL_OFFER_QUANTITY_CHG'
        DataType = ftTimeStamp
      end
      item
        Name = 'CURRENCY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'CL_OFFER_SINGLE_PRICE'
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
        Name = 'RECEIVE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'RECEIVE_DATE_CHG'
        DataType = ftTimeStamp
      end
      item
        Name = 'CL_OFFER_RECEIVE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'CL_OFFER_RECEIVE_DATE_CH'
        DataType = ftTimeStamp
      end
      item
        Name = 'SALE_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SALE_NO'
        DataType = ftFloat
      end
      item
        Name = 'SALE_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SHIPMENT_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'SHIPMENT_STORE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ANNUL_EMPLOYEE_CODE'
        DataType = ftFloat
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
        Name = 'FINISH_EMPLOYEE_CODE'
        DataType = ftFloat
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
        Name = 'CHANGE_EMPLOYEE_CODE'
        DataType = ftFloat
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
        Name = 'SSH_SHIPMENT_OBJ_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SSH_SHIPMENT_OBJ_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SSH_SALE_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SSH_SALE_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SSH_PLAN_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'SSH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'SSH_SHIPMENT_PLAN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'SSH_SHIPMENT_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'SSH_INVOICE_NO'
        DataType = ftFloat
      end
      item
        Name = 'SSH_INVOICE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'SSH_INVOICE_CURRENCY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SSH_INVOICE_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PROCESS_OBJECT_IDENTIFIER'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'QUANTITY_TAKEN_FROM_STORE'
        DataType = ftFloat
      end
      item
        Name = 'STORE_REQ_COMPLETED_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'ANNUL_MULTIPLIER'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'QUANTITY_CHG_X'
        DataType = ftTimeStamp
      end
      item
        Name = 'CL_OFFER_QUANTITY_CHG_X'
        DataType = ftTimeStamp
      end
      item
        Name = 'CREATE_SALE'
        DataType = ftFloat
      end
      item
        Name = 'RECORD_CHANGED'
        DataType = ftFloat
      end
      item
        Name = 'SALE_DEAL_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CL_OFFER_RETURN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'RETURN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'CL_OFFER_LEASE_DATE_UNIT_QTY'
        DataType = ftFloat
      end
      item
        Name = 'CL_OFFER_LEASE_DATE_UNIT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'LEASE_DATE_UNIT_QTY'
        DataType = ftFloat
      end
      item
        Name = 'LEASE_DATE_UNIT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'IMPORT_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'SHIPMENT_STORE_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'SSH_LEASE_PLAN_DATE_UNIT_QTY'
        DataType = ftFloat
      end
      item
        Name = 'SSH_LEASE_DATE_UNIT_QTY'
        DataType = ftFloat
      end
      item
        Name = 'SSH_IMPORT_PLAN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'SSH_IMPORT_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'CLIENT_REQUEST_NO'
        DataType = ftWideString
        Size = 50
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
        Name = 'CLIENT_PRODUCT_NAME'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'QUANTITY_RETURNED_TO_STORE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_HAS_DOC_ITEMS'
        DataType = ftFloat
      end
      item
        Name = 'IS_VENDOR_TRANSPORT'
        DataType = ftFloat
      end
      item
        Name = 'ASPECT_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SHIPMENT_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'RECEIVE_PLACE_OFFICE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CUSTOMHOUSE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SHIPMENT_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SSH_RECEIVE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'MANAGER_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BORDER_REL_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PARTNER_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'SSH_DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SSH_DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SSH_IS_PROFORM_INVOICE'
        DataType = ftFloat
      end>
    BeforeInsert = cdsGridDataBeforeInsert
    BeforePost = cdsGridDataBeforePost
    OnCalcFields = cdsGridDataCalcFields
    OnFilterRecord = cdsGridDataFilterRecord
    OnNewRecord = cdsGridDataNewRecord
    Top = 272
    object cdsGridDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsGridDataSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsGridDataSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_OBJECT_BRANCH_CODE'
    end
    object cdsGridDataSALE_GROUP_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_OBJECT_CODE'
    end
    object cdsGridDataSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
    end
    object cdsGridDataREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
      Required = True
    end
    object cdsGridDataREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
      Required = True
    end
    object cdsGridDataREQUEST_LINE_NO: TAbmesFloatField
      DisplayLabel = 'No'
      FieldName = 'REQUEST_LINE_NO'
      Required = True
    end
    object cdsGridDataCLIENT_COMPANY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_CODE'
    end
    object cdsGridDataREQUEST_SEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_SEND_DATE'
    end
    object cdsGridDataREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_REGISTER_DATE'
    end
    object cdsGridDataPRODUCT_CODE: TAbmesFloatField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'PRODUCT_CODE'
      Required = True
      OnChange = cdsGridDataPRODUCT_CODEChange
    end
    object cdsGridDataPRODUCT_NAME: TAbmesWideStringField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsGridDataPRODUCT_NO: TAbmesFloatField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' No'
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object cdsGridDataPRODUCT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_MEASURE_CODE'
      ProviderFlags = []
    end
    object cdsGridDataPRODUCT_ACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_CODE'
      ProviderFlags = []
    end
    object cdsGridDataPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_COEF'
      ProviderFlags = []
    end
    object cdsGridDataPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataQUANTITY: TAbmesFloatField
      DisplayLabel = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1086' '#1082#1086#1083#1080#1077#1089#1090#1074#1086
      FieldName = 'QUANTITY'
      OnChange = cdsGridDataQUANTITYChange
      DisplayFormat = ',0.##'
    end
    object cdsGridDataQUANTITY_CHG: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1087#1086#1089#1083#1077#1076#1085#1086' '#1080#1079#1084#1077#1085#1077#1085#1080#1077' '#1085#1072' '#39#1044#1086#1075#1086#1074#1086#1088#1077#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086#39
      FieldName = 'QUANTITY_CHG'
      OnChange = cdsGridDataQUANTITY_CHGChange
    end
    object cdsGridDataCL_OFFER_QUANTITY: TAbmesFloatField
      DisplayLabel = #1055#1086#1080#1089#1082#1072#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'CL_OFFER_QUANTITY'
      Required = True
      OnChange = cdsGridDataCL_OFFER_QUANTITYChange
      DisplayFormat = ',0.##'
    end
    object cdsGridDataCL_OFFER_QUANTITY_CHG: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1087#1086#1089#1083#1077#1076#1085#1086' '#1080#1079#1084#1077#1085#1077#1085#1080#1077' '#1085#1072' '#39#1055#1086#1080#1089#1082#1072#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086#39
      FieldName = 'CL_OFFER_QUANTITY_CHG'
      Required = True
      OnChange = cdsGridDataCL_OFFER_QUANTITY_CHGChange
    end
    object cdsGridDataCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object cdsGridDataSINGLE_PRICE: TAbmesFloatField
      DisplayLabel = #1045#1076'. '#1094#1077#1085#1072
      FieldName = 'SINGLE_PRICE'
      OnChange = cdsGridDataSINGLE_PRICEChange
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object cdsGridDataCL_OFFER_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'CL_OFFER_SINGLE_PRICE'
    end
    object cdsGridDataMARKET_SINGLE_PRICE: TAbmesFloatField
      DisplayLabel = #1053#1072#1095#1072#1083#1085#1072' '#1077#1076#1080#1085#1080#1095#1085#1072' '#1094#1077#1085#1072
      FieldName = 'MARKET_SINGLE_PRICE'
      OnChange = cdsGridDataMARKET_SINGLE_PRICEChange
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsGridDataDISCOUNT_PERCENT: TAbmesFloatField
      DisplayLabel = #1054#1090#1089#1090#1098#1087#1082#1072
      FieldName = 'DISCOUNT_PERCENT'
      Required = True
      OnChange = cdsGridDataDISCOUNT_PERCENTChange
      OnGetText = cdsGridDataDISCOUNT_PERCENTGetText
      OnSetText = cdsGridDataDISCOUNT_PERCENTSetText
      OnValidate = cdsGridDataDISCOUNT_PERCENTValidate
      DisplayFormat = '0.#'
      EditFormat = '0.#'
    end
    object cdsGridDataRECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_DATE'
    end
    object cdsGridDataRECEIVE_DATE_CHG: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_DATE_CHG'
    end
    object cdsGridDataCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CL_OFFER_RECEIVE_DATE'
    end
    object cdsGridDataCL_OFFER_RECEIVE_DATE_CH: TAbmesSQLTimeStampField
      FieldName = 'CL_OFFER_RECEIVE_DATE_CH'
    end
    object cdsGridDataSALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_BRANCH_CODE'
    end
    object cdsGridDataSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
    end
    object cdsGridDataSALE_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_TYPE_CODE'
    end
    object cdsGridDataSHIPMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'SHIPMENT_DATE'
    end
    object cdsGridDataSHIPMENT_STORE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
      FieldName = 'SHIPMENT_STORE_CODE'
      Required = True
      OnChange = cdsGridDataSHIPMENT_STORE_CODEChange
      OnValidate = cdsGridDataSHIPMENT_STORE_CODEValidate
    end
    object cdsGridDataANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
      OnChange = cdsGridDataANNUL_EMPLOYEE_CODEChange
    end
    object cdsGridDataANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object cdsGridDataANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object cdsGridDataFINISH_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'FINISH_EMPLOYEE_CODE'
    end
    object cdsGridDataFINISH_DATE: TAbmesSQLTimeStampField
      FieldName = 'FINISH_DATE'
    end
    object cdsGridDataFINISH_TIME: TAbmesSQLTimeStampField
      FieldName = 'FINISH_TIME'
    end
    object cdsGridDataCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object cdsGridDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsGridDataCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object cdsGridDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object cdsGridDataCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object cdsGridDataCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object cdsGridDataSSH_SHIPMENT_OBJ_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SSH_SHIPMENT_OBJ_BRANCH_CODE'
      ProviderFlags = []
    end
    object cdsGridDataSSH_SHIPMENT_OBJ_CODE: TAbmesFloatField
      FieldName = 'SSH_SHIPMENT_OBJ_CODE'
      ProviderFlags = []
    end
    object cdsGridDataSSH_SALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SSH_SALE_OBJECT_BRANCH_CODE'
      ProviderFlags = []
    end
    object cdsGridDataSSH_SALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SSH_SALE_OBJECT_CODE'
      ProviderFlags = []
    end
    object cdsGridDataSSH_PLAN_QUANTITY: TAbmesFloatField
      FieldName = 'SSH_PLAN_QUANTITY'
      ProviderFlags = []
    end
    object cdsGridDataSSH_QUANTITY: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1076#1072#1076#1077#1085#1086' '#1082'-'#1074#1086
      FieldName = 'SSH_QUANTITY'
      ProviderFlags = []
      OnChange = cdsGridDataSSH_QUANTITYChange
      DisplayFormat = ',0.##'
    end
    object cdsGridDataSSH_SHIPMENT_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'SSH_SHIPMENT_PLAN_DATE'
      ProviderFlags = []
    end
    object cdsGridDataSSH_SHIPMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'SSH_SHIPMENT_DATE'
      ProviderFlags = []
    end
    object cdsGridDataSSH_INVOICE_NO: TAbmesFloatField
      FieldName = 'SSH_INVOICE_NO'
      ProviderFlags = []
    end
    object cdsGridDataSSH_INVOICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'SSH_INVOICE_DATE'
      ProviderFlags = []
    end
    object cdsGridDataSSH_INVOICE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'SSH_INVOICE_CURRENCY_CODE'
      ProviderFlags = []
    end
    object cdsGridDataSSH_INVOICE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'SSH_INVOICE_SINGLE_PRICE'
      ProviderFlags = []
    end
    object cdsGridDataPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      DisplayLabel = #1054#1055#1055' No'
      FieldName = 'PROCESS_OBJECT_IDENTIFIER'
      ProviderFlags = []
      OnGetText = cdsGridDataPROCESS_OBJECT_IDENTIFIERGetText
      Size = 50
    end
    object cdsGridDataQUANTITY_TAKEN_FROM_STORE: TAbmesFloatField
      FieldName = 'QUANTITY_TAKEN_FROM_STORE'
      ProviderFlags = []
      DisplayFormat = ',0.00'
    end
    object cdsGridDataSTORE_REQ_COMPLETED_QUANTITY: TAbmesFloatField
      FieldName = 'STORE_REQ_COMPLETED_QUANTITY'
      ProviderFlags = []
    end
    object cdsGridDataANNUL_MULTIPLIER: TAbmesFloatField
      FieldName = 'ANNUL_MULTIPLIER'
      ProviderFlags = []
    end
    object cdsGridDataTOTAL_PRICE: TAbmesFloatField
      DisplayLabel = #1054#1073#1097#1072' '#1094#1077#1085#1072
      FieldName = 'TOTAL_PRICE'
      ProviderFlags = []
      DisplayFormat = ',0.00'
    end
    object cdsGridDataQUANTITY_CHG_X: TAbmesSQLTimeStampField
      FieldName = 'QUANTITY_CHG_X'
      ProviderFlags = []
    end
    object cdsGridDataCL_OFFER_QUANTITY_CHG_X: TAbmesSQLTimeStampField
      FieldName = 'CL_OFFER_QUANTITY_CHG_X'
      ProviderFlags = []
    end
    object cdsGridDataCREATE_SALE: TAbmesFloatField
      FieldName = 'CREATE_SALE'
      ProviderFlags = []
    end
    object cdsGridDataRECORD_CHANGED: TAbmesFloatField
      FieldName = 'RECORD_CHANGED'
      ProviderFlags = []
    end
    object cdsGridData_SALE_BRANCH_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_SALE_BRANCH_NO'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_NO'
      KeyFields = 'SALE_BRANCH_CODE'
      LookupCache = True
      Lookup = True
    end
    object cdsGridData_REQUEST_BRANCH_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_REQUEST_BRANCH_NO'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_NO'
      KeyFields = 'REQUEST_BRANCH_CODE'
      LookupCache = True
      Lookup = True
    end
    object cdsGridData_PRODUCT_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_PRODUCT_MEASURE_ABBREV'
      LookupDataSet = cdsMeasures
      LookupKeyFields = 'MEASURE_CODE'
      LookupResultField = 'MEASURE_ABBREV'
      KeyFields = 'PRODUCT_MEASURE_CODE'
      LookupCache = True
      Size = 5
      Lookup = True
    end
    object cdsGridData_IS_ANNULED: TAbmesFloatField
      DisplayLabel = #1040#1085#1091#1083#1080#1088#1072#1085#1072
      FieldKind = fkInternalCalc
      FieldName = '_IS_ANNULED'
      DisplayBoolValues = 'A'
      FieldValueType = fvtBoolean
    end
    object cdsGridData_IS_FINISHED: TAbmesFloatField
      FieldKind = fkInternalCalc
      FieldName = '_IS_FINISHED'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataSALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object cdsGridDataCL_OFFER_RETURN_DATE: TAbmesSQLTimeStampField
      FieldName = 'CL_OFFER_RETURN_DATE'
    end
    object cdsGridDataRETURN_DATE: TAbmesSQLTimeStampField
      FieldName = 'RETURN_DATE'
    end
    object cdsGridDataCL_OFFER_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      DisplayLabel = #1055#1086#1080#1089#1082#1072#1085#1086' '#1079#1072
      FieldName = 'CL_OFFER_LEASE_DATE_UNIT_QTY'
      OnChange = cdsGridDataCL_OFFER_LEASE_DATE_UNIT_QTYChange
      DisplayFormat = ',0.##'
    end
    object cdsGridDataCL_OFFER_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'CL_OFFER_LEASE_DATE_UNIT_CODE'
    end
    object cdsGridDataLEASE_DATE_UNIT_QTY: TAbmesFloatField
      DisplayLabel = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1086' '#1079#1072
      FieldName = 'LEASE_DATE_UNIT_QTY'
      OnChange = cdsGridDataLEASE_DATE_UNIT_QTYChange
      DisplayFormat = ',0.##'
    end
    object cdsGridDataLEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_CODE'
    end
    object cdsGridDataIMPORT_DATE: TAbmesSQLTimeStampField
      FieldName = 'IMPORT_DATE'
    end
    object cdsGridDataSHIPMENT_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIPMENT_STORE_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object cdsGridData_CL_OFFER_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_CL_OFFER_LEASE_DATE_UNIT_NAME'
      LookupDataSet = cdsDateUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'THE_DATE_UNIT_NAME'
      KeyFields = 'CL_OFFER_LEASE_DATE_UNIT_CODE'
      Size = 50
      Lookup = True
    end
    object cdsGridData_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_LEASE_DATE_UNIT_NAME'
      LookupDataSet = cdsDateUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'THE_DATE_UNIT_NAME'
      KeyFields = 'LEASE_DATE_UNIT_CODE'
      Size = 50
      Lookup = True
    end
    object cdsGridDataSSH_LEASE_PLAN_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'SSH_LEASE_PLAN_DATE_UNIT_QTY'
      ProviderFlags = []
    end
    object cdsGridDataSSH_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'SSH_LEASE_DATE_UNIT_QTY'
      ProviderFlags = []
      OnChange = cdsGridDataSSH_LEASE_DATE_UNIT_QTYChange
      DisplayFormat = ',0.##'
    end
    object cdsGridDataSSH_IMPORT_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'SSH_IMPORT_PLAN_DATE'
    end
    object cdsGridDataSSH_IMPORT_DATE: TAbmesSQLTimeStampField
      FieldName = 'SSH_IMPORT_DATE'
    end
    object cdsGridDataCLIENT_REQUEST_NO: TAbmesWideStringField
      FieldName = 'CLIENT_REQUEST_NO'
      Size = 50
    end
    object cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsGridDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsGridDataHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataCLIENT_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_PRODUCT_NAME'
      Size = 250
    end
    object cdsGridData_SSH_TOTAL_LEASE_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SSH_TOTAL_LEASE_QUANTITY'
      Calculated = True
    end
    object cdsGridData_CL_OFFER_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_CL_OFFER_ACCOUNT_QUANTITY'
      Calculated = True
    end
    object cdsGridData_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACCOUNT_QUANTITY'
      Calculated = True
    end
    object cdsGridData_SSH_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SSH_ACCOUNT_QUANTITY'
      Calculated = True
    end
    object cdsGridData_PRODUCT_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_PRODUCT_ACCOUNT_MEASURE_ABBREV'
      LookupDataSet = cdsMeasures
      LookupKeyFields = 'MEASURE_CODE'
      LookupResultField = 'MEASURE_ABBREV'
      KeyFields = 'PRODUCT_ACCOUNT_MEASURE_CODE'
      Size = 5
      Lookup = True
    end
    object cdsGridDataQUANTITY_RETURNED_TO_STORE: TAbmesFloatField
      FieldName = 'QUANTITY_RETURNED_TO_STORE'
      ProviderFlags = []
      DisplayFormat = ',0.###'
      EditFormat = ',0.###'
    end
    object cdsGridData_STATUS_CODE: TAbmesFloatField
      FieldKind = fkInternalCalc
      FieldName = '_STATUS_CODE'
    end
    object cdsGridData_STATUS_CODE_2: TAbmesFloatField
      FieldKind = fkInternalCalc
      FieldName = '_STATUS_CODE_2'
    end
    object cdsGridDataIS_VENDOR_TRANSPORT: TAbmesFloatField
      FieldName = 'IS_VENDOR_TRANSPORT'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataSHIPMENT_DAYS: TAbmesFloatField
      FieldName = 'SHIPMENT_DAYS'
    end
    object cdsGridDataRECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField
      FieldName = 'RECEIVE_PLACE_OFFICE_CODE'
    end
    object cdsGridDataCUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'CUSTOMHOUSE_CODE'
    end
    object cdsGridDataSHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_TYPE_CODE'
    end
    object cdsGridDataSSH_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'SSH_RECEIVE_DATE'
    end
    object cdsGridDataMANAGER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'MANAGER_EMPLOYEE_CODE'
    end
    object cdsGridDataBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
    end
    object cdsGridDataPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
      Required = True
    end
    object cdsGridData_MARKET_SINGLE_PRICE_WITH_VAT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_MARKET_SINGLE_PRICE_WITH_VAT'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
      Calculated = True
    end
    object cdsGridData_SINGLE_PRICE_WITH_VAT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SINGLE_PRICE_WITH_VAT'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
      Calculated = True
    end
    object cdsGridData_TOTAL_PRICE_WITH_VAT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_PRICE_WITH_VAT'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
      Calculated = True
    end
    object cdsGridData_SUM_TOTAL_PRICE_WITH_VAT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SUM_TOTAL_PRICE_WITH_VAT'
      OnGetText = SumFieldGetText
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_SUM_TOTAL_PRICE_WITH_VAT_X: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SUM_TOTAL_PRICE_WITH_VAT_X'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridDataSSH_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SSH_DOC_BRANCH_CODE'
    end
    object cdsGridDataSSH_DOC_CODE: TAbmesFloatField
      FieldName = 'SSH_DOC_CODE'
    end
    object cdsGridDataSSH_IS_PROFORM_INVOICE: TAbmesFloatField
      FieldName = 'SSH_IS_PROFORM_INVOICE'
      FieldValueType = fvtBoolean
    end
    object cdsGridData_MAX_REQUEST_LINE_NO: TAggregateField
      FieldName = '_MAX_REQUEST_LINE_NO'
      Active = True
      Expression = 'Max(REQUEST_LINE_NO)'
    end
    object cdsGridData_MAX_SALE_OBJECT_CODE: TAggregateField
      FieldName = '_MAX_SALE_OBJECT_CODE'
      Active = True
      Expression = 'Max(SALE_OBJECT_CODE)'
    end
    object cdsGridData_SUM_TOTAL_PRICE: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_TOTAL_PRICE'
      OnGetText = SumFieldGetText
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'Sum(TOTAL_PRICE)'
    end
    object cdsGridData_SUM_TOTAL_PRICE_X: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_TOTAL_PRICE_X'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'Sum(TOTAL_PRICE*ANNUL_MULTIPLIER)'
    end
    object cdsGridDataCL_OFFER__SUM_QUANTITY: TAggregateField
      Alignment = taRightJustify
      FieldName = 'CL_OFFER__SUM_QUANTITY'
      OnGetText = SumFieldGetText
      Active = True
      DisplayFormat = ',0.##'
      Expression = 'Sum(CL_OFFER_QUANTITY)'
    end
    object cdsGridDataCL_OFFER__SUM_QUANTITY_X: TAggregateField
      Alignment = taRightJustify
      FieldName = 'CL_OFFER__SUM_QUANTITY_X'
      Active = True
      DisplayFormat = ',0.##'
      Expression = 'Sum(CL_OFFER_QUANTITY*ANNUL_MULTIPLIER)'
    end
    object cdsGridData_SUM_QUANTITY: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_QUANTITY'
      OnGetText = SumFieldGetText
      Active = True
      DisplayFormat = ',0.##'
      Expression = 'Sum(QUANTITY)'
    end
    object cdsGridData_SUM_QUANTITY_X: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_QUANTITY_X'
      Active = True
      DisplayFormat = ',0.##'
      Expression = 'Sum(QUANTITY*ANNUL_MULTIPLIER)'
    end
    object cdsGridData_SUM_SSH_QUANTITY: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_SSH_QUANTITY'
      OnGetText = SumFieldGetText
      Active = True
      DisplayFormat = ',0.##'
      Expression = 'Sum(SSH_QUANTITY)'
    end
    object cdsGridData_SUM_SSH_QUANTITY_X: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_SSH_QUANTITY_X'
      Active = True
      DisplayFormat = ',0.##'
      Expression = 'Sum(SSH_QUANTITY*ANNUL_MULTIPLIER)'
    end
    object cdsGridData_MIN_PRODUCT_MEASURE_CODE: TAggregateField
      FieldName = '_MIN_PRODUCT_MEASURE_CODE'
      Active = True
      Expression = 'Min(PRODUCT_MEASURE_CODE)'
    end
    object cdsGridData_MAX_PRODUCT_MEASURE_CODE: TAggregateField
      FieldName = '_MAX_PRODUCT_MEASURE_CODE'
      Active = True
      Expression = 'Max(PRODUCT_MEASURE_CODE)'
    end
    object cdsGridData_MIN_PRODUCT_MEASURE_CODE_X: TAggregateField
      FieldName = '_MIN_PRODUCT_MEASURE_CODE_X'
      Active = True
      Expression = 'Min(PRODUCT_MEASURE_CODE*ANNUL_MULTIPLIER)'
    end
    object cdsGridData_MAX_PRODUCT_MEASURE_CODE_X: TAggregateField
      FieldName = '_MAX_PRODUCT_MEASURE_CODE_X'
      Active = True
      Expression = 'Max(PRODUCT_MEASURE_CODE*ANNUL_MULTIPLIER)'
    end
    object cdsGridData_MAX_QUANTITY_TAKEN_FROM_STORE: TAggregateField
      FieldName = '_MAX_QUANTITY_TAKEN_FROM_STORE'
      Active = True
      Expression = 'Max(QUANTITY_TAKEN_FROM_STORE*ANNUL_MULTIPLIER)'
    end
    object cdsGridData_SUM_QTY_RETURNED_TO_STORE: TAggregateField
      FieldName = '_SUM_QTY_RETURNED_TO_STORE'
      Active = True
      Expression = 'Sum(QUANTITY_RETURNED_TO_STORE)'
    end
    object cdsGridData_SUM_QTY_RETURNED_TO_STORE_X: TAggregateField
      FieldName = '_SUM_QTY_RETURNED_TO_STORE_X'
      OnGetText = SumFieldGetText
      Active = True
      Expression = 'Sum(QUANTITY_RETURNED_TO_STORE*ANNUL_MULTIPLIER)'
    end
    object cdsGridData_COUNT_NOT_ANNULED: TAggregateField
      FieldName = '_COUNT_NOT_ANNULED'
      Active = True
      Expression = 'Sum(1 - _IS_ANNULED)'
    end
    object cdsGridData_COUNT_FINISHED: TAggregateField
      FieldName = '_COUNT_FINISHED'
      Active = True
      Expression = 'Sum(_IS_FINISHED)'
    end
    object cdsGridData_MIN_STATUS_CODE: TAggregateField
      FieldName = '_MIN_STATUS_CODE'
      Active = True
      Expression = 'Min(_STATUS_CODE)'
    end
    object cdsGridData_MIN_STATUS_CODE_2: TAggregateField
      FieldName = '_MIN_STATUS_CODE_2'
      Active = True
      Expression = 'Min(_STATUS_CODE_2)'
    end
  end
  inherited alActions: TActionList
    Left = 304
    Top = 424
    inherited actForm: TAction
      Caption = ''
    end
    object actAnnul: TAction
      Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077'...'
      Hint = #1040#1085#1091#1083#1080#1088#1072#1085#1077' '#1085#1072' '#1074#1089#1080#1095#1082#1080
      ImageIndex = 16
      OnExecute = actAnnulExecute
      OnUpdate = actAnnulUpdate
    end
    object actFinish: TAction
      Caption = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077'...'
      Hint = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077' '#1085#1072' '#1074#1089#1080#1095#1082#1080
      ImageIndex = 17
      OnExecute = actFinishExecute
      OnUpdate = actFinishUpdate
    end
    object actShowAnnuledLines: TAction
      Caption = #1040#1085
      GroupIndex = 3
      Hint = #1055#1086#1082#1072#1079#1074#1072'/'#1089#1082#1088#1080#1074#1072' '#1072#1085#1091#1083#1080#1088#1072#1085#1080#1090#1077' '#1088#1077#1076#1086#1074#1077
      OnExecute = actShowAnnuledLinesExecute
      OnUpdate = actShowAnnuledLinesUpdate
    end
    object actPrintStoreRequest: TAction
      Caption = #1055#1077#1095#1072#1090' '#1085#1072' '#1043#1088#1091#1087#1086#1074#1072' '#1079#1072#1103#1074#1082#1072
      Hint = #1055#1077#1095#1072#1090' '#1085#1072' '#1043#1088#1091#1087#1086#1074#1072' '#1079#1072#1103#1074#1082#1072
      ImageIndex = 2
      OnExecute = actPrintStoreRequestExecute
      OnUpdate = actPrintStoreRequestUpdate
    end
    object actCopyQuantityTakenToQuantityShipped: TAction
      Hint = 
        #1050#1086#1087#1080#1088#1072' "'#1048#1079#1090#1077#1075#1083#1077#1085#1086' '#1082'-'#1074#1086'" '#1074' "'#1055#1088#1086#1076#1072#1076#1077#1085#1086' '#1082'-'#1074#1086'" '#1079#1072' '#1088#1077#1076#1086#1074#1077#1090#1077', '#1082#1098#1076#1077#1090#1086' "' +
        #1055#1088#1086#1076#1072#1076#1077#1085#1086' '#1082'-'#1074#1086'" '#1077' '#1087#1088#1072#1079#1085#1086
      ImageIndex = 25
      OnExecute = actCopyQuantityTakenToQuantityShippedExecute
      OnUpdate = actCopyQuantityTakenToQuantityShippedUpdate
    end
    object actInvoice: TAction
      Caption = #1060#1072#1082#1090#1091#1088#1072'...'
      OnExecute = actInvoiceExecute
      OnUpdate = actInvoiceUpdate
    end
    object actPrintEx: TAction
      Caption = #1055#1077#1095#1072#1090
      Hint = #1055#1077#1095#1072#1090
      ImageIndex = 2
      OnExecute = actPrintExExecute
      OnUpdate = actPrintExUpdate
    end
    object actShowClientNos: TAction
      GroupIndex = 4
      Hint = #1050#1083#1080#1077#1085#1090#1089#1082#1080' '#1086#1079#1085#1072#1095#1077#1085#1080#1103
      ImageIndex = 24
      OnExecute = actShowClientNosExecute
    end
    object actFinOrder: TAction
      Caption = #1054#1055#1060'...'
      OnExecute = actFinOrderExecute
      OnUpdate = actFinOrderUpdate
    end
    object actExcludeVAT: TAction
      AutoCheck = True
      Caption = '- '#1044#1044#1057
      Checked = True
      GroupIndex = 23
      OnExecute = actExcludeVATExecute
    end
    object actIncludeVAT: TAction
      AutoCheck = True
      Caption = '+ '#1044#1044#1057
      GroupIndex = 23
      OnExecute = actIncludeVATExecute
    end
    object actFinOrderPSDs: TAction
      Caption = #1055#1083#1072#1085#1086#1074#1080' '#1055' '#1080' '#1058' '#1087#1086' '#1056'-'#1052#1054#1044#1045#1083'-'#1060'...'
      OnExecute = actFinOrderPSDsExecute
      OnUpdate = actFinOrderPSDsUpdate
    end
    object actNotes: TAction
      Caption = #1041#1077#1083#1077#1078#1082#1080'...'
      Hint = #1041#1077#1083#1077#1078#1082#1080
      ImageIndex = 57
      OnExecute = actNotesExecute
      OnUpdate = actNotesUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Top = 304
  end
  inherited dsGridDataParams: TDataSource
    Top = 304
  end
  inherited dsData: TDataSource
    Top = 240
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conGroupSales
    Params = <
      item
        DataType = ftFloat
        Name = 'REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_NO'
        ParamType = ptInput
      end>
    ProviderName = 'prvSaleRequestGroup'
    AfterOpen = cdsDataAfterOpen
    BeforePost = cdsDataBeforePost
    OnCalcFields = cdsDataCalcFields
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    AfterApplyUpdates = cdsDataAfterApplyUpdates
    Top = 240
    object cdsDataREQUEST_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1043#1083'.'
      FieldName = 'REQUEST_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnChange = cdsDataREQUEST_BRANCH_CODEChange
    end
    object cdsDataREQUEST_NO: TAbmesFloatField
      DisplayLabel = 'No'
      FieldName = 'REQUEST_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDataSALE_ORDER_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1080#1076' '#1053#1072#1083#1080#1095#1085#1086#1089#1090
      FieldName = 'SALE_ORDER_TYPE_CODE'
      OnChange = cdsDataSALE_ORDER_TYPE_CODEChange
    end
    object cdsDataSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_OBJECT_BRANCH_CODE'
    end
    object cdsDataSALE_GROUP_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_OBJECT_CODE'
    end
    object cdsDataANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
      OnChange = cdsDataANNUL_EMPLOYEE_CODEChange
    end
    object cdsDataANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
      OnChange = cdsDataANNUL_DATEChange
    end
    object cdsDataANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
      OnChange = cdsDataANNUL_TIMEChange
    end
    object cdsDataFINISH_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'FINISH_EMPLOYEE_CODE'
      OnChange = cdsDataFINISH_EMPLOYEE_CODEChange
    end
    object cdsDataFINISH_DATE: TAbmesSQLTimeStampField
      FieldName = 'FINISH_DATE'
      OnChange = cdsDataFINISH_DATEChange
    end
    object cdsDataFINISH_TIME: TAbmesSQLTimeStampField
      FieldName = 'FINISH_TIME'
      OnChange = cdsDataFINISH_TIMEChange
    end
    object cdsDataCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
      Required = True
    end
    object cdsDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
      Required = True
    end
    object cdsDataCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
      Required = True
    end
    object cdsDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
      Required = True
    end
    object cdsDataCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
      Required = True
    end
    object cdsDataCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
      Required = True
    end
    object cdsDataSG_PRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1080#1086#1088#1080#1090#1077#1090
      FieldName = 'SG_PRIORITY_CODE'
      ProviderFlags = []
    end
    object cdsDataSG_SALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SG_SALE_ORDER_TYPE_CODE'
      ProviderFlags = []
    end
    object cdsDataSG_CLIENT_COMPANY_CODE: TAbmesFloatField
      FieldName = 'SG_CLIENT_COMPANY_CODE'
      ProviderFlags = []
    end
    object cdsDataSG_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'SG_RECEIVE_DATE'
      ProviderFlags = []
    end
    object cdsDataSG_SALE_GROUP_NO: TAbmesFloatField
      FieldName = 'SG_SALE_GROUP_NO'
      ProviderFlags = []
    end
    object cdsDataSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_BRANCH_CODE'
      ProviderFlags = []
    end
    object cdsDataSTORE_REQUEST_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_CODE'
      ProviderFlags = []
    end
    object cdsDataS_SALE_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1080#1087' '#1054#1055#1055
      FieldName = 'S_SALE_TYPE_CODE'
      ProviderFlags = []
      OnChange = cdsDataS_SALE_TYPE_CODEChange
    end
    object cdsDataS_CLIENT_COMPANY_CODE: TAbmesFloatField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      FieldName = 'S_CLIENT_COMPANY_CODE'
      ProviderFlags = []
      OnChange = cdsDataS_CLIENT_COMPANY_CODEChange
    end
    object cdsDataS_REQUEST_SEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1057#1090#1072#1088#1090#1080#1088#1072#1085#1077
      FieldName = 'S_REQUEST_SEND_DATE'
      ProviderFlags = []
      OnChange = cdsDataS_REQUEST_SEND_DATEChange
      OnValidate = cdsDataS_REQUEST_SEND_DATEValidate
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object cdsDataS_RECEIVE_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1086#1075#1086#1074#1088#1077#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1055#1086#1083#1091#1095#1072#1074#1072#1085#1077
      FieldName = 'S_RECEIVE_DATE'
      ProviderFlags = []
      OnChange = cdsDataS_RECEIVE_DATEChange
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object cdsDataS_REQUEST_REGISTER_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1088#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077' '#1085#1072' '#1079#1072#1103#1074#1082#1072#1090#1072
      FieldName = 'S_REQUEST_REGISTER_DATE'
      ProviderFlags = []
      Required = True
      OnChange = cdsDataS_REQUEST_REGISTER_DATEChange
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object cdsDataS_RECEIVE_DATE_CHG: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1087#1086#1089#1083#1077#1076#1085#1086' '#1080#1079#1084#1077#1085#1077#1085#1080#1077' '#1085#1072' '#39#1055#1083#1072#1085#1086#1074#1072' '#1076#1072#1090#1072' '#1085#1072' '#1087#1088#1086#1076#1072#1078#1073#1072#39
      FieldName = 'S_RECEIVE_DATE_CHG'
      ProviderFlags = []
      OnChange = cdsDataS_RECEIVE_DATE_CHGChange
    end
    object cdsDataS_CL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1055#1086#1083#1091#1095#1072#1074#1072#1085#1077', '#1087#1086#1080#1089#1082#1072#1085#1072' '#1086#1090' '#1050#1083#1080#1077#1085#1090
      FieldName = 'S_CL_OFFER_RECEIVE_DATE'
      ProviderFlags = []
      OnChange = cdsDataS_CL_OFFER_RECEIVE_DATEChange
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object cdsDataS_CL_OFFER_RECEIVE_DATEC: TAbmesSQLTimeStampField
      DisplayLabel = 
        #1044#1072#1090#1072' '#1085#1072' '#1087#1086#1089#1083#1077#1076#1085#1086' '#1080#1079#1084#1077#1085#1077#1085#1080#1077' '#1085#1072' '#39#1055#1088#1077#1076#1083#1086#1078#1077#1085#1072' '#1086#1090' '#1082#1083#1080#1077#1085#1090#1072' '#1076#1072#1090#1072' '#1085#1072' '#1087#1088#1086 +
        #1076#1072#1078#1073#1072#39
      FieldName = 'S_CL_OFFER_RECEIVE_DATEC'
      ProviderFlags = []
      OnChange = cdsDataS_CL_OFFER_RECEIVE_DATECChange
    end
    object cdsDataS_SHIPMENT_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1055#1083'. '#1076#1072#1090#1072' '#1045#1082#1089#1087'.'
      FieldName = 'S_SHIPMENT_DATE'
      ProviderFlags = []
      OnChange = cdsDataS_SHIPMENT_DATEChange
    end
    object cdsDataS_CURRENCY_CODE: TAbmesFloatField
      DisplayLabel = #1042#1072#1083#1091#1090#1072
      FieldName = 'S_CURRENCY_CODE'
      ProviderFlags = []
      OnChange = cdsDataS_CURRENCY_CODEChange
    end
    object cdsDataSSH_SHIPMENT_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'SSH_SHIPMENT_PLAN_DATE'
      ProviderFlags = []
    end
    object cdsDataSSH_SHIPMENT_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1087#1088#1086#1076#1072#1078#1073#1072
      FieldName = 'SSH_SHIPMENT_DATE'
      ProviderFlags = []
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object cdsDataSSH_INVOICE_NO: TAbmesFloatField
      DisplayLabel = #1060#1072#1082#1090#1091#1088#1072' No'
      FieldName = 'SSH_INVOICE_NO'
      ProviderFlags = []
      OnChange = cdsDataSSH_INVOICE_NOChange
      DisplayFormat = '0000000000'
    end
    object cdsDataSSH_INVOICE_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1092#1072#1082#1090#1091#1088#1072
      FieldName = 'SSH_INVOICE_DATE'
      ProviderFlags = []
      OnChange = cdsDataSSH_INVOICE_DATEChange
    end
    object cdsDataSSH_INVOICE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'SSH_INVOICE_CURRENCY_CODE'
      ProviderFlags = []
    end
    object cdsDataINVOICE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'INVOICE_BRANCH_CODE'
      ProviderFlags = []
    end
    object cdsDataINVOICE_CODE: TAbmesFloatField
      FieldName = 'INVOICE_CODE'
      ProviderFlags = []
    end
    object cdsDataINV_INVOICE_NO: TAbmesFloatField
      FieldName = 'INV_INVOICE_NO'
      ProviderFlags = []
      DisplayFormat = '0000000000'
    end
    object cdsDataINV_INVOICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'INV_INVOICE_DATE'
      ProviderFlags = []
    end
    object cdsDataSALE_GROUP_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SALE_GROUP_OBJECT_IDENTIFIER'
      ProviderFlags = []
      Size = 50
    end
    object cdsDataCREATE_SALE_GROUP: TAbmesFloatField
      FieldName = 'CREATE_SALE_GROUP'
      ProviderFlags = []
      OnChange = cdsDataCREATE_SALE_GROUPChange
      FieldValueType = fvtBoolean
    end
    object cdsDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDataHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsDataCLIENT_REQUEST_GROUP_NO: TAbmesWideStringField
      FieldName = 'CLIENT_REQUEST_GROUP_NO'
      Size = 50
    end
    object cdsDataqrySaleRequestGroupLines: TDataSetField
      FieldName = 'qrySaleRequestGroupLines'
    end
    object cdsData_REQUEST_BRANCH_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_REQUEST_BRANCH_NO'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_NO'
      KeyFields = 'REQUEST_BRANCH_CODE'
      LookupCache = True
      Lookup = True
    end
    object cdsData_SALE_GROUP_OBJECT_BRANCH_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_SALE_GROUP_OBJECT_BRANCH_NO'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_NO'
      KeyFields = 'SALE_GROUP_OBJECT_BRANCH_CODE'
      LookupCache = True
      Lookup = True
    end
    object cdsData_S_CURRENCY_ABBREV: TAbmesWideStringField
      DisplayLabel = #1042#1072#1083#1091#1090#1072
      FieldKind = fkLookup
      FieldName = '_S_CURRENCY_ABBREV'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = 'S_CURRENCY_CODE'
      LookupCache = True
      Size = 5
      Lookup = True
    end
    object cdsData_S_CURRENCY_TODAY_SECONDARY_FIXING: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_S_CURRENCY_TODAY_SECONDARY_FIXING'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'TODAY_SECONDARY_FIXING'
      KeyFields = 'S_CURRENCY_CODE'
      LookupCache = True
      Lookup = True
    end
    object cdsData_IS_ANNULED: TBooleanField
      FieldKind = fkCalculated
      FieldName = '_IS_ANNULED'
      Calculated = True
    end
    object cdsData_IS_FINISHED: TBooleanField
      FieldKind = fkCalculated
      FieldName = '_IS_FINISHED'
      Calculated = True
    end
    object cdsData_S_SALE_TYPE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_S_SALE_TYPE_ABBREV'
      LookupDataSet = cdsSaleTypes
      LookupKeyFields = 'SALE_TYPE_CODE'
      LookupResultField = 'SALE_TYPE_ABBREV'
      KeyFields = 'S_SALE_TYPE_CODE'
      LookupCache = True
      Size = 5
      Lookup = True
    end
    object cdsData_REQUEST_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_REQUEST_IDENTIFIER'
      Size = 50
      Calculated = True
    end
    object cdsData_STORE_REQUEST_BRANCH_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_STORE_REQUEST_BRANCH_NO'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_NO'
      KeyFields = 'STORE_REQUEST_BRANCH_CODE'
      LookupCache = True
      Lookup = True
    end
    object cdsData_STORE_REQUEST_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_STORE_REQUEST_IDENTIFIER'
      Size = 50
      Calculated = True
    end
    object cdsData_S_REQUEST_SEND_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_S_REQUEST_SEND_DATE'
      Calculated = True
    end
    object cdsData_S_REQUEST_REGISTER_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_S_REQUEST_REGISTER_DATE'
      Calculated = True
    end
    object cdsData_S_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_S_RECEIVE_DATE'
      Calculated = True
    end
    object cdsData_SSH_SHIPMENT_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_SSH_SHIPMENT_DATE'
      Calculated = True
    end
    object cdsDataS_CLIENT_COMPANY_NAME: TAbmesWideStringField
      FieldName = 'S_CLIENT_COMPANY_NAME'
      ProviderFlags = []
      Size = 153
    end
    object cdsData_SG_PRIORITY_NO: TAbmesFloatField
      Alignment = taCenter
      FieldKind = fkLookup
      FieldName = '_SG_PRIORITY_NO'
      LookupDataSet = cdsPriorities
      LookupKeyFields = 'PRIORITY_CODE'
      LookupResultField = 'PRIORITY_NO'
      KeyFields = 'SG_PRIORITY_CODE'
      Lookup = True
    end
    object cdsDataS_SALE_DEAL_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1080#1087
      FieldName = 'S_SALE_DEAL_TYPE_CODE'
      ProviderFlags = []
      OnChange = cdsDataS_SALE_DEAL_TYPE_CODEChange
    end
    object cdsDataS_CL_OFFER_RETURN_DATE: TAbmesSQLTimeStampField
      FieldName = 'S_CL_OFFER_RETURN_DATE'
      ProviderFlags = []
    end
    object cdsDataS_RETURN_DATE: TAbmesSQLTimeStampField
      FieldName = 'S_RETURN_DATE'
      ProviderFlags = []
      OnChange = cdsDataS_RETURN_DATEChange
    end
    object cdsDataS_IMPORT_DATE: TAbmesSQLTimeStampField
      FieldName = 'S_IMPORT_DATE'
      ProviderFlags = []
    end
    object cdsDataSSH_IMPORT_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'SSH_IMPORT_PLAN_DATE'
      ProviderFlags = []
    end
    object cdsDataSSH_IMPORT_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1074#1088#1098#1097#1072#1085#1077
      FieldName = 'SSH_IMPORT_DATE'
      ProviderFlags = []
      OnChange = cdsDataSSH_IMPORT_DATEChange
    end
    object cdsData_S_SALE_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_S_SALE_DEAL_TYPE_ABBREV'
      LookupDataSet = cdsSaleDealTypes
      LookupKeyFields = 'SALE_DEAL_TYPE_CODE'
      LookupResultField = 'SALE_DEAL_TYPE_ABBREV'
      KeyFields = 'S_SALE_DEAL_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsData_STATUS_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = '_STATUS_CODE'
      OnGetText = cdsData_STATUS_CODEGetText
      Calculated = True
    end
    object cdsData_S_CL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_S_CL_OFFER_RECEIVE_DATE'
      Calculated = True
    end
    object cdsData_S_CL_OFFER_RECEIVE_DATEC: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_S_CL_OFFER_RECEIVE_DATEC'
      Calculated = True
    end
    object cdsData_S_RECEIVE_DATE_CHG: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_S_RECEIVE_DATE_CHG'
      Calculated = True
    end
    object cdsDataIS_ACTIVATED_BY_CLIENT: TAbmesFloatField
      FieldName = 'IS_ACTIVATED_BY_CLIENT'
      FieldValueType = fvtBoolean
    end
    object cdsDataPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
    end
    object cdsDataFIN_ORDER_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_CODE'
      ProviderFlags = []
    end
    object cdsDataFO_BRANCH_CODE: TAbmesFloatField
      FieldName = 'FO_BRANCH_CODE'
      ProviderFlags = []
    end
    object cdsDataFO_EXEC_DEPT_CODE: TAbmesFloatField
      FieldName = 'FO_EXEC_DEPT_CODE'
      ProviderFlags = []
    end
    object cdsDataFO_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'FO_PRIORITY_CODE'
      ProviderFlags = []
    end
    object cdsDataFO_WORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'FO_WORK_FINANCIAL_PRODUCT_CODE'
      ProviderFlags = []
    end
    object cdsDataFO_PARTNER_CODE: TAbmesFloatField
      FieldName = 'FO_PARTNER_CODE'
      ProviderFlags = []
    end
    object cdsDataFO_STATUS_CODE: TAbmesFloatField
      FieldName = 'FO_STATUS_CODE'
      ProviderFlags = []
    end
    object cdsDataSPEC_FIN_MODEL_CODE: TAbmesFloatField
      FieldName = 'SPEC_FIN_MODEL_CODE'
      ProviderFlags = []
    end
    object cdsDataFO_CLOSE_REQUESTED: TAbmesFloatField
      FieldName = 'FO_CLOSE_REQUESTED'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsDataS_SHIPMENT_DAYS: TAbmesFloatField
      DisplayLabel = #1055#1077#1088#1044#1074#1078
      FieldName = 'S_SHIPMENT_DAYS'
      ProviderFlags = []
    end
    object cdsDataS_RECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField
      FieldName = 'S_RECEIVE_PLACE_OFFICE_CODE'
      ProviderFlags = []
    end
    object cdsDataS_CUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'S_CUSTOMHOUSE_CODE'
      ProviderFlags = []
    end
    object cdsDataS_SHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'S_SHIPMENT_TYPE_CODE'
      ProviderFlags = []
    end
    object cdsDataS_IS_VENDOR_TRANSPORT: TAbmesFloatField
      DisplayLabel = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1058#1088#1072#1085#1089#1087#1086#1088#1090
      FieldName = 'S_IS_VENDOR_TRANSPORT'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsDataSSH_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'SSH_RECEIVE_DATE'
      ProviderFlags = []
      OnChange = cdsDataSSH_RECEIVE_DATEChange
    end
    object cdsData_S_RECEIVE_DATE_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_S_RECEIVE_DATE_DIFF'
      Calculated = True
    end
    object cdsData_S_SHIPMENT_DATE_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_S_SHIPMENT_DATE_DIFF'
      Calculated = True
    end
    object cdsDataS_MANAGER_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1086#1076#1077#1097' '#1044#1080#1072#1083#1086#1075
      FieldName = 'S_MANAGER_EMPLOYEE_CODE'
      ProviderFlags = []
    end
    object cdsDataS_CLIENT_COMPANY_NO: TAbmesFloatField
      FieldName = 'S_CLIENT_COMPANY_NO'
      ProviderFlags = []
    end
    object cdsData_SSH_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_SSH_RECEIVE_DATE'
      Calculated = True
    end
    object cdsData_S_SHIPMENT_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_S_SHIPMENT_DATE'
      Calculated = True
    end
    object cdsDataSALE_GROUP_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_BRANCH_CODE'
      ProviderFlags = []
    end
    object cdsDataSALE_GROUP_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_CODE'
      ProviderFlags = []
    end
    object cdsDataINVOICE_STATE_CODE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'INVOICE_STATE_CODE'
      ProviderFlags = []
      OnGetText = cdsDataINVOICE_STATE_CODEGetText
    end
    object cdsDataMEDIATOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'MEDIATOR_COMPANY_CODE'
    end
    object cdsDataSSH_IS_PROFORM_INVOICE: TAbmesFloatField
      DisplayLabel = #1042#1080#1076' '#1085#1072' '#1060#1072#1082#1090#1091#1088#1072
      FieldName = 'SSH_IS_PROFORM_INVOICE'
      OnChange = cdsDataSSH_IS_PROFORM_INVOICEChange
      FieldValueType = fvtBoolean
    end
    object cdsDataINV_IS_PROFORM_INVOICE: TAbmesFloatField
      FieldName = 'INV_IS_PROFORM_INVOICE'
      FieldValueType = fvtBoolean
    end
    object cdsDataNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 2000
    end
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Filter = '(IS_LOCAL_BRANCH <> 0) and (IS_INACTIVE = 0)'
    Params = <>
    ProviderName = 'prvBranches'
    AfterOpen = cdsBranchesAfterOpen
    Top = 400
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsBranchesBRANCH_NO: TAbmesFloatField
      DisplayWidth = 5
      FieldName = 'BRANCH_NO'
    end
    object cdsBranchesNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 50
    end
    object cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BRANCH_IDENTIFIER'
      Size = 46
    end
    object cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField
      FieldName = 'BRANCH_CODE_AND_NAME'
      Size = 143
    end
    object cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField
      FieldName = 'IS_LOCAL_BRANCH'
    end
    object cdsBranchesIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
  end
  object cdsPriorities: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvPriorities'
    Left = 80
    Top = 328
    object cdsPrioritiesPRIORITY_CODE: TAbmesFloatField
      DisplayWidth = 5
      FieldName = 'PRIORITY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
  object dsPriorities: TDataSource
    DataSet = cdsPriorities
    Left = 112
    Top = 328
  end
  object cdsCurrencies: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCurrenciesWithRates'
    Top = 336
    object cdsCurrenciesCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
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
      ProviderFlags = []
    end
    object cdsCurrenciesTODAY_SECONDARY_FIXING: TAbmesFloatField
      FieldName = 'TODAY_SECONDARY_FIXING'
      ProviderFlags = []
    end
  end
  object cdsMeasures: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvMeasures'
    Top = 432
    object cdsMeasuresMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
  end
  object cdsSaleTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Params = <>
    ProviderName = 'prvSaleTypes'
    Top = 368
    object cdsSaleTypesSALE_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsSaleTypesSALE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_TYPE_ABBREV'
      Size = 3
    end
    object cdsSaleTypesSALE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'SALE_TYPE_NAME'
      Size = 50
    end
  end
  object dsSaleTypes: TDataSource
    DataSet = cdsSaleTypes
    Left = 32
    Top = 368
  end
  object pmPrint: TPopupMenu
    Left = 552
    Top = 560
    object miPrint: TMenuItem
      Action = actPrint
    end
    object miPrintStoreRequest: TMenuItem
      Action = actPrintStoreRequest
    end
  end
  object cdsNewInvoice: TAbmesClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'SELLER_COMPANY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BUYER_COMPANY_CODE'
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
        Name = 'INVOICE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'RECEIVER_COMPANY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SENDER_COMPANY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EVENT_DATE'
        DataType = ftTimeStamp
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 848
    Top = 160
    object cdsNewInvoiceSELLER_COMPANY_CODE: TAbmesFloatField
      FieldName = 'SELLER_COMPANY_CODE'
    end
    object cdsNewInvoiceBUYER_COMPANY_CODE: TAbmesFloatField
      FieldName = 'BUYER_COMPANY_CODE'
    end
    object cdsNewInvoiceCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object cdsNewInvoiceINVOICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'INVOICE_DATE'
    end
    object cdsNewInvoiceRECEIVER_COMPANY_CODE: TAbmesFloatField
      FieldName = 'RECEIVER_COMPANY_CODE'
    end
    object cdsNewInvoiceSENDER_COMPANY_CODE: TAbmesFloatField
      FieldName = 'SENDER_COMPANY_CODE'
    end
    object cdsNewInvoiceEVENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'EVENT_DATE'
    end
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
    Left = 880
    Top = 160
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
  object dsCurrencies: TDataSource
    DataSet = cdsCurrencies
    Left = 32
    Top = 336
  end
  object dsBranches: TDataSource
    DataSet = cdsBranches
    Left = 32
    Top = 400
  end
  object cdsSaleOrderTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Params = <>
    ProviderName = 'prvSaleOrderTypes'
    AfterOpen = cdsSaleOrderTypesAfterOpen
    Left = 32
    Top = 432
    object cdsSaleOrderTypesSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
    end
    object cdsSaleOrderTypesSALE_ORDER_TYPE_NAME: TAbmesWideStringField
      FieldName = 'SALE_ORDER_TYPE_NAME'
      Size = 100
    end
  end
  object cdsSaleDealTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Filtered = True
    Params = <>
    ProviderName = 'prvSaleDealTypes'
    OnFilterRecord = cdsSaleDealTypesFilterRecord
    Left = 80
    Top = 360
    object cdsSaleDealTypesSALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object cdsSaleDealTypesSALE_DEAL_TYPE_NAME: TAbmesWideStringField
      FieldName = 'SALE_DEAL_TYPE_NAME'
      Size = 100
    end
    object cdsSaleDealTypesSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_DEAL_TYPE_ABBREV'
      Size = 100
    end
  end
  object dsSaleDealTypes: TDataSource
    DataSet = cdsSaleDealTypes
    Left = 112
    Top = 360
  end
  object cdsDateUnits: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvDateUnits'
    Left = 80
    Top = 392
    object cdsDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'THE_DATE_UNIT_CODE'
    end
    object cdsDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'THE_DATE_UNIT_NAME'
      Size = 50
    end
  end
  object cdsCompanyOffices: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompanies
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCompanyOffices'
    BeforeOpen = cdsCompanyOfficesBeforeOpen
    Left = 360
    Top = 528
    object cdsCompanyOfficesCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCompanyOfficesOFFICE_CODE: TAbmesFloatField
      FieldName = 'OFFICE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCompanyOfficesOFFICE_NAME: TAbmesWideStringField
      FieldName = 'OFFICE_NAME'
      Size = 50
    end
    object cdsCompanyOfficesCOUNTRY_CODE: TAbmesFloatField
      FieldName = 'COUNTRY_CODE'
    end
    object cdsCompanyOfficesCOUNTRY_NAME: TAbmesWideStringField
      FieldName = 'COUNTRY_NAME'
      Size = 50
    end
  end
  object dsCompanyOffices: TDataSource
    DataSet = cdsCompanyOffices
    Left = 392
    Top = 528
  end
  object dsCustomhouses: TDataSource
    DataSet = cdsCustomhouses
    Left = 680
    Top = 528
  end
  object cdsCustomhouses: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCustomhouses'
    Left = 648
    Top = 528
    object cdsCustomhousesCUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'CUSTOMHOUSE_CODE'
      Required = True
    end
    object cdsCustomhousesCUSTOMHOUSE_NAME: TAbmesWideStringField
      FieldName = 'CUSTOMHOUSE_NAME'
      Required = True
      Size = 50
    end
  end
  object cdsShipmentTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Params = <>
    ProviderName = 'prvShipmentTypes'
    Left = 764
    Top = 528
    object cdsShipmentTypesSHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsShipmentTypesSHIPMENT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SHIPMENT_TYPE_ABBREV'
      Size = 3
    end
    object cdsShipmentTypesSHIPMENT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'SHIPMENT_TYPE_NAME'
      Size = 50
    end
    object cdsShipmentTypesNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
  end
  object dsShipmentTypes: TDataSource
    DataSet = cdsShipmentTypes
    Left = 796
    Top = 528
  end
  object cdsGroupSaleDefaults: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conGroupSales
    Params = <
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'prvGroupSaleDefaults'
    Left = 136
    Top = 512
    object cdsGroupSaleDefaultsCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object cdsGroupSaleDefaultsSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object cdsGroupSaleDefaultsTRANSPORT_DURATION_DAYS: TAbmesFloatField
      FieldName = 'TRANSPORT_DURATION_DAYS'
    end
    object cdsGroupSaleDefaultsMEDIATOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'MEDIATOR_COMPANY_CODE'
    end
    object cdsGroupSaleDefaultsSHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_TYPE_CODE'
    end
    object cdsGroupSaleDefaultsIS_PARTNER_TRANSPORT: TAbmesFloatField
      FieldName = 'IS_PARTNER_TRANSPORT'
    end
    object cdsGroupSaleDefaultsCUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'CUSTOMHOUSE_CODE'
    end
    object cdsGroupSaleDefaultsPARTNER_OFFICE_CODE: TAbmesFloatField
      FieldName = 'PARTNER_OFFICE_CODE'
    end
  end
  object cdsGroupSaleLineDefaults: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conGroupSales
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'prvGroupSaleLineDefaults'
    Left = 168
    Top = 512
    object cdsGroupSaleLineDefaultsPRICE: TAbmesFloatField
      FieldName = 'PRICE'
    end
    object cdsGroupSaleLineDefaultsPRICE_MODIFIER: TAbmesFloatField
      FieldName = 'PRICE_MODIFIER'
    end
    object cdsGroupSaleLineDefaultsCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
  end
  object cdsFinOrderPSDsParams: TAbmesClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 928
    Top = 209
    object cdsFinOrderPSDsParamsBND_PROCESS: TAbmesWideStringField
      FieldName = 'BND_PROCESS'
      Size = 4000
    end
    object cdsFinOrderPSDsParamsCHOSEN_DEPTS: TAbmesWideStringField
      FieldName = 'CHOSEN_DEPTS'
      Size = 4000
    end
  end
  object cdsBinding: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 840
    Top = 208
    object cdsBindingBND_PROCESS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_CODE'
    end
    object cdsBindingSALE_GROUP_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_BRANCH_CODE'
    end
    object cdsBindingSALE_GROUP_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_CODE'
    end
  end
end
