inherited fmWorkPriority: TfmWorkPriority
  Caption = #1054#1087#1077#1088#1072#1090#1080#1074#1077#1085' '#1055#1088#1080#1086#1088#1080#1090#1077#1090' - %s'
  ClientHeight = 108
  ClientWidth = 369
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 353
    Height = 57
  end
  object lblWorkPriorityNo: TLabel [1]
    Left = 24
    Top = 16
    Width = 14
    Height = 13
    Caption = 'No'
    FocusControl = edtWorkPriorityNo
  end
  object lblWorkPriorityName: TLabel [2]
    Left = 88
    Top = 16
    Width = 76
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    FocusControl = edtWorkPriorityName
  end
  inherited pnlBottomButtons: TPanel
    Top = 73
    Width = 369
    TabOrder = 2
    inherited pnlOKCancel: TPanel
      Left = 101
    end
    inherited pnlClose: TPanel
      Left = 12
    end
    inherited pnlApply: TPanel
      Left = 280
      Visible = False
    end
  end
  object edtWorkPriorityNo: TDBEdit [4]
    Left = 24
    Top = 32
    Width = 49
    Height = 21
    DataField = 'WORK_PRIORITY_NO'
    DataSource = dsData
    TabOrder = 0
  end
  object edtWorkPriorityName: TDBEdit [5]
    Left = 88
    Top = 32
    Width = 257
    Height = 21
    DataField = 'WORK_PRIORITY_NAME'
    DataSource = dsData
    TabOrder = 1
  end
  inherited alActions: TActionList
    Left = 256
    inherited actForm: TAction
      Caption = #1054#1087#1077#1088#1072#1090#1080#1074#1077#1085' '#1055#1088#1080#1086#1088#1080#1090#1077#1090' - %s'
    end
  end
  inherited dsData: TDataSource
    Left = 224
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 192
  end
end
