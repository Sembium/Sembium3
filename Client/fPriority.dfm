inherited fmPriority: TfmPriority
  Left = 281
  Top = 220
  Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090' - %s'
  ClientHeight = 108
  ClientWidth = 594
  DesignSize = (
    594
    108)
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 578
    Height = 56
  end
  object lblCode: TLabel [1]
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
  object edtNo: TDBEdit [3]
    Left = 24
    Top = 32
    Width = 97
    Height = 21
    DataField = 'PRIORITY_NO'
    DataSource = dsData
    TabOrder = 0
  end
  object edtName: TDBEdit [4]
    Left = 136
    Top = 32
    Width = 193
    Height = 21
    DataField = 'PRIORITY_NAME'
    DataSource = dsData
    TabOrder = 1
  end
  inherited pnlBottomButtons: TPanel
    Top = 73
    Width = 594
    TabOrder = 4
    inherited pnlOKCancel: TPanel
      Left = 326
    end
    inherited pnlClose: TPanel
      Left = 237
    end
    inherited pnlApply: TPanel
      Left = 505
      Visible = False
    end
  end
  inline frPriorityColor: TfrColor [6]
    Left = 344
    Top = 30
    Width = 106
    Height = 25
    TabOrder = 2
  end
  inline frPriorityBackgroundColor: TfrColor [7]
    Left = 464
    Top = 30
    Width = 106
    Height = 25
    TabOrder = 3
    inherited btnColor: TBitBtn
      Caption = #1060#1086#1085'...'
    end
  end
  inherited alActions: TActionList [8]
    inherited actForm: TAction
      Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090' - %s'
    end
  end
  inherited dsData: TDataSource
    Left = 48
    Top = 64
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 16
    Top = 64
  end
end
