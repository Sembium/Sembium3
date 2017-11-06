inherited fmShift: TfmShift
  Left = 385
  Top = 311
  ActiveControl = edtShiftAbbrev
  Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1072' '#1057#1084#1103#1085#1072' - %s'
  ClientHeight = 109
  ClientWidth = 369
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 353
    Height = 58
  end
  object lblShiftAbbrev: TLabel [1]
    Left = 24
    Top = 16
    Width = 19
    Height = 13
    Caption = #1050#1086#1076
  end
  object lblShiftName: TLabel [2]
    Left = 80
    Top = 16
    Width = 76
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
  end
  inherited pnlBottomButtons: TPanel
    Top = 74
    Width = 369
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
  object edtShiftAbbrev: TDBEdit [4]
    Left = 24
    Top = 32
    Width = 41
    Height = 21
    DataField = 'SHIFT_ABBREV'
    DataSource = dsData
    TabOrder = 1
  end
  object edtShiftName: TDBEdit [5]
    Left = 80
    Top = 32
    Width = 265
    Height = 21
    DataField = 'SHIFT_NAME'
    DataSource = dsData
    TabOrder = 2
  end
  inherited alActions: TActionList
    Left = 80
    Top = 56
    inherited actForm: TAction
      Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1072' '#1057#1084#1103#1085#1072' - %s'
    end
  end
  inherited dsData: TDataSource
    Top = 56
  end
  inherited cdsData: TAbmesClientDataSet
    Top = 56
  end
end
