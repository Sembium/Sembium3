inherited fmDefaultDocItem: TfmDefaultDocItem
  Caption = #1048#1048#1054' '#1087#1086' '#1087#1086#1076#1088#1072#1079#1073#1080#1088#1072#1085#1077
  ClientHeight = 109
  ClientWidth = 481
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 465
    Height = 57
  end
  object lblState: TLabel [1]
    Left = 336
    Top = 16
    Width = 29
    Height = 13
    Caption = #1060#1072#1079#1072
    FocusControl = cbState
  end
  object lblName: TLabel [2]
    Left = 24
    Top = 16
    Width = 76
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    FocusControl = edtName
  end
  inherited pnlBottomButtons: TPanel
    Top = 74
    Width = 481
    TabOrder = 2
    inherited pnlOKCancel: TPanel
      Left = 213
    end
    inherited pnlClose: TPanel
      Left = 124
    end
    inherited pnlApply: TPanel
      Left = 392
      Visible = False
    end
  end
  object cbState: TJvDBLookupCombo [4]
    Left = 336
    Top = 32
    Width = 121
    Height = 21
    DropDownWidth = 280
    DataField = '_DOC_ITEM_STATE_NAME'
    DataSource = dsData
    TabOrder = 1
  end
  object edtName: TDBEdit [5]
    Left = 24
    Top = 32
    Width = 297
    Height = 21
    DataField = 'DOC_ITEM_NAME'
    DataSource = dsData
    TabOrder = 0
  end
  inherited alActions: TActionList
    Left = 248
    inherited actForm: TAction
      Caption = #1048#1048#1054' '#1087#1086' '#1087#1086#1076#1088#1072#1079#1073#1080#1088#1072#1085#1077
    end
  end
  inherited dsData: TDataSource
    Left = 160
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 128
  end
end
