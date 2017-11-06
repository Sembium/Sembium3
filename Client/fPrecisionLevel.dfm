inherited fmPrecisionLevel: TfmPrecisionLevel
  Caption = #1053#1080#1074#1086' '#1085#1072' '#1058#1086#1095#1085#1086#1089#1090' - %s'
  ClientHeight = 108
  ClientWidth = 594
  ExplicitWidth = 600
  ExplicitHeight = 133
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 578
    Height = 57
    ExplicitWidth = 578
    ExplicitHeight = 57
  end
  object lblNo: TLabel [1]
    Left = 24
    Top = 16
    Width = 14
    Height = 13
    Caption = 'No'
    FocusControl = edtNo
  end
  object lblName: TLabel [2]
    Left = 136
    Top = 16
    Width = 76
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    FocusControl = edtName
  end
  inherited pnlBottomButtons: TPanel
    Top = 73
    Width = 594
    TabOrder = 4
    ExplicitTop = 73
    ExplicitWidth = 594
    inherited pnlOKCancel: TPanel
      Left = 326
      ExplicitLeft = 326
    end
    inherited pnlClose: TPanel
      Left = 237
      ExplicitLeft = 237
    end
    inherited pnlApply: TPanel
      Left = 505
      Visible = False
      ExplicitLeft = 505
    end
  end
  object edtNo: TDBEdit [4]
    Left = 24
    Top = 32
    Width = 97
    Height = 21
    DataField = 'PRECISION_LEVEL_NO'
    DataSource = dsData
    TabOrder = 0
  end
  object edtName: TDBEdit [5]
    Left = 136
    Top = 32
    Width = 193
    Height = 21
    DataField = 'PRECISION_LEVEL_NAME'
    DataSource = dsData
    TabOrder = 1
  end
  inline frPrecisionLevelColor: TfrColor [6]
    Left = 344
    Top = 30
    Width = 106
    Height = 25
    TabOrder = 2
    TabStop = True
    ExplicitLeft = 344
    ExplicitTop = 30
  end
  inline frPrecisionLevelBackgroundColor: TfrColor [7]
    Left = 464
    Top = 30
    Width = 106
    Height = 25
    TabOrder = 3
    TabStop = True
    ExplicitLeft = 464
    ExplicitTop = 30
    inherited btnColor: TBitBtn
      Caption = #1060#1086#1085'...'
    end
  end
  inherited alActions: TActionList [8]
    inherited actForm: TAction
      Caption = #1053#1080#1074#1086' '#1085#1072' '#1058#1086#1095#1085#1086#1089#1090' - %s'
    end
  end
  inherited dsData: TDataSource
    Left = 56
    Top = 72
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 24
    Top = 72
  end
end
