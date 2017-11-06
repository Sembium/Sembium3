inherited frSDBindingSimpleDelivery: TfrSDBindingSimpleDelivery
  Width = 616
  Height = 70
  ExplicitWidth = 616
  ExplicitHeight = 70
  object lblPartnerCode: TLabel [0]
    Left = 8
    Top = 8
    Width = 55
    Height = 13
    Caption = #1044#1086#1089#1090#1072#1074#1095#1080#1082
  end
  object lblInvoiceNo: TLabel [1]
    Left = 256
    Top = 8
    Width = 60
    Height = 13
    Caption = #1060#1072#1082#1090#1091#1088#1072' No'
  end
  object lblInvoiceDate: TLabel [2]
    Left = 392
    Top = 8
    Width = 88
    Height = 13
    Caption = #1044#1072#1090#1072' '#1085#1072' '#1060#1072#1082#1090#1091#1088#1072
  end
  object lblIsProformInvoiceStatusOnDeliveryPanel: TLabel [3]
    Left = 344
    Top = 8
    Width = 34
    Height = 13
    Caption = #1042#1080#1076' '#1060'.'
    FocusControl = cbIsProformInvoice
  end
  object edtInvoiceNo: TDBEdit [4]
    Left = 256
    Top = 24
    Width = 73
    Height = 21
    DataSource = dsData
    TabOrder = 1
  end
  object edtInvoiceAbbrev: TDBEdit [5]
    Left = 328
    Top = 24
    Width = 17
    Height = 21
    DataSource = dsData
    TabOrder = 2
  end
  inline frInvoiceDate: TfrDateFieldEditFrame [6]
    Left = 392
    Top = 24
    Width = 105
    Height = 21
    Constraints.MaxHeight = 21
    Constraints.MaxWidth = 105
    Constraints.MinHeight = 21
    Constraints.MinWidth = 105
    TabOrder = 3
    TabStop = True
    ExplicitLeft = 392
    ExplicitTop = 24
  end
  inline frVendor: TfrPartnerFieldEditFrameBald [7]
    Left = 8
    Top = 24
    Width = 241
    Height = 22
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 22
    Constraints.MinHeight = 22
    TabOrder = 0
    TabStop = True
    ExplicitLeft = 8
    ExplicitTop = 24
    ExplicitWidth = 241
    inherited gbPartner: TGroupBox
      Width = 256
      ExplicitWidth = 256
      inherited pnlNameAndButtons: TPanel
        Width = 167
        ExplicitWidth = 167
        inherited pnlRightButtons: TPanel
          Left = 131
          ExplicitLeft = 131
        end
        inherited pnlPartnerName: TPanel
          Width = 131
          ExplicitWidth = 131
          inherited cbPartner: TJvDBLookupCombo
            Width = 132
            ExplicitWidth = 132
          end
        end
      end
      inherited pnlPaddingRight: TPanel
        Left = 248
        ExplicitLeft = 248
      end
    end
  end
  object cbIsProformInvoice: TJvDBComboBox
    Left = 344
    Top = 24
    Width = 41
    Height = 21
    DataSource = dsData
    ItemHeight = 13
    Items.Strings = (
      #1060#1072#1082#1090#1091#1088#1072
      #1055#1088#1086#1092#1086#1088#1084#1072' '#1092#1072#1082#1090#1091#1088#1072)
    TabOrder = 4
    Values.Strings = (
      'False'
      'True')
  end
  inherited alActions: TActionList
    Left = 264
    Top = 32
  end
  inherited dsData: TDataSource
    Left = 296
    Top = 32
  end
end
