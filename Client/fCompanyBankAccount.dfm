inherited fmCompanyBankAccount: TfmCompanyBankAccount
  Left = 307
  Top = 181
  Caption = #1058#1055' '#1060#1080#1085#1072#1085#1089#1086#1074#1086' - %s'
  ClientHeight = 333
  ClientWidth = 481
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 465
    Height = 282
  end
  object lblPartner: TLabel [1]
    Left = 24
    Top = 120
    Width = 31
    Height = 13
    Caption = #1041#1072#1085#1082#1072
  end
  object lblIcon: TLabel [2]
    Left = 224
    Top = 168
    Width = 38
    Height = 13
    Caption = #1057#1084#1077#1090#1082#1072
  end
  object lblCurrency: TLabel [3]
    Left = 400
    Top = 168
    Width = 35
    Height = 13
    Caption = #1042#1072#1083#1091#1090#1072
  end
  object lblDescription: TLabel [4]
    Left = 24
    Top = 216
    Width = 50
    Height = 13
    Caption = #1054#1087#1080#1089#1072#1085#1080#1077
  end
  object lblIBAN: TLabel [5]
    Left = 24
    Top = 168
    Width = 25
    Height = 13
    Caption = 'IBAN'
    FocusControl = edtIBAN
  end
  object lblOr: TLabel [6]
    Left = 192
    Top = 187
    Width = 25
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = #1080#1083#1080
  end
  object lblName: TLabel [7]
    Left = 24
    Top = 16
    Width = 76
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
  end
  object lblShortName: TLabel [8]
    Left = 24
    Top = 64
    Width = 115
    Height = 13
    Caption = #1050#1088#1072#1090#1082#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
  end
  object lblBankAccountType: TLabel [9]
    Left = 264
    Top = 64
    Width = 111
    Height = 13
    Caption = #1042#1080#1076' '#1060#1080#1085#1072#1085#1089#1086#1074#1086' '#1058#1055
    FocusControl = cbBankAccountType
  end
  inherited pnlBottomButtons: TPanel
    Top = 298
    Width = 481
    TabOrder = 8
    inherited pnlOKCancel: TPanel
      Left = 213
    end
    inherited pnlClose: TPanel
      Left = 124
    end
    inherited pnlApply: TPanel
      Left = 392
    end
  end
  object edtAccount: TDBEdit [11]
    Left = 224
    Top = 184
    Width = 161
    Height = 21
    DataField = 'ACCOUNT'
    DataSource = dsData
    TabOrder = 5
  end
  object cbCurrency: TJvDBLookupCombo [12]
    Left = 400
    Top = 184
    Width = 57
    Height = 21
    DataField = '_CURRENCY_ABBREV'
    DataSource = dsData
    TabOrder = 6
  end
  object moDescription: TDBMemo [13]
    Left = 24
    Top = 232
    Width = 433
    Height = 41
    Anchors = [akLeft, akTop, akRight]
    DataField = 'DESCRIPTION'
    DataSource = dsData
    ScrollBars = ssVertical
    TabOrder = 7
  end
  inline frBank: TfrPartnerFieldEditFrameBald [14]
    Left = 24
    Top = 136
    Width = 433
    Height = 22
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Anchors = [akLeft, akTop, akRight]
    Constraints.MaxHeight = 22
    Constraints.MinHeight = 22
    TabOrder = 3
    TabStop = True
    inherited gbPartner: TGroupBox
      Width = 448
      inherited pnlNameAndButtons: TPanel
        Width = 359
        inherited pnlRightButtons: TPanel
          Left = 323
        end
        inherited pnlPartnerName: TPanel
          Width = 323
          inherited edtPartnerName: TDBEdit
            Width = 261
          end
          inherited cbPartner: TJvDBLookupCombo
            Width = 324
          end
        end
      end
      inherited pnlPaddingRight: TPanel
        Left = 440
      end
    end
    inherited alActions: TActionList
      Top = 128
    end
    inherited dsData: TDataSource
      Top = 128
    end
    inherited cdsPartners: TAbmesClientDataSet
      Top = 128
    end
    inherited dsPartners: TDataSource
      Top = 128
    end
    inherited cdsPartner: TAbmesClientDataSet
      Top = 128
    end
    inherited dsPartner: TDataSource
      Top = 128
    end
  end
  object edtIBAN: TDBEdit [15]
    Left = 24
    Top = 184
    Width = 161
    Height = 21
    DataField = 'IBAN'
    DataSource = dsData
    TabOrder = 4
  end
  object edtName: TDBEdit [16]
    Left = 24
    Top = 32
    Width = 433
    Height = 21
    DataField = 'NAME'
    DataSource = dsData
    TabOrder = 0
  end
  object edtShortName: TDBEdit [17]
    Left = 24
    Top = 80
    Width = 225
    Height = 21
    DataField = 'SHORT_NAME'
    DataSource = dsData
    TabOrder = 1
  end
  object cbBankAccountType: TJvDBLookupCombo [18]
    Left = 264
    Top = 80
    Width = 193
    Height = 21
    DropDownCount = 4
    DataField = '_BANK_ACCOUNT_TYPE_NAME'
    DataSource = dsData
    TabOrder = 2
  end
  inherited alActions: TActionList [19]
    Left = 264
    Top = 65528
    inherited actForm: TAction
      Caption = #1058#1055' '#1060#1080#1085#1072#1085#1089#1086#1074#1086' - %s'
    end
  end
  inherited dsData: TDataSource [20]
    Left = 208
    Top = 65528
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 176
    Top = 65528
  end
end
