inherited fmInvoiceItemDebitOrCredit: TfmInvoiceItemDebitOrCredit
  Left = 361
  Top = 282
  Caption = #1060#1072#1082#1090#1091#1088#1072
  ClientHeight = 117
  ClientWidth = 385
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 369
    Height = 66
  end
  object lblInvoiceNo: TLabel [1]
    Left = 288
    Top = 24
    Width = 34
    Height = 13
    Caption = #1053#1086#1084#1077#1088
  end
  object lblPartnerCode: TLabel [2]
    Left = 16
    Top = 24
    Width = 64
    Height = 13
    Caption = #1048#1079#1076#1072#1076#1077#1085#1072' '#1086#1090
  end
  object lblInvoice: TLabel [3]
    Left = 16
    Top = 3
    Width = 51
    Height = 13
    Caption = ' '#1060#1072#1082#1090#1091#1088#1072' '
  end
  inherited pnlBottomButtons: TPanel
    Top = 82
    Width = 385
    TabOrder = 2
    inherited pnlOKCancel: TPanel
      Left = 117
    end
    inherited pnlClose: TPanel
      Left = 28
    end
    inherited pnlApply: TPanel
      Left = 296
      Visible = False
    end
  end
  object edtInvoiceNo: TDBEdit [5]
    Left = 288
    Top = 40
    Width = 81
    Height = 21
    DataField = 'INVOICE_NO'
    DataSource = dsData
    TabOrder = 1
  end
  inline frSeller: TfrPartnerFieldEditFrameBald [6]
    Left = 16
    Top = 40
    Width = 257
    Height = 22
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 22
    Constraints.MinHeight = 22
    TabOrder = 0
  end
  inherited alActions: TActionList [7]
    Left = 16
    Top = 72
    inherited actForm: TAction
      Caption = #1060#1072#1082#1090#1091#1088#1072
    end
  end
  inherited dsData: TDataSource [9]
    Left = 112
    Top = 72
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 80
    Top = 72
  end
end
