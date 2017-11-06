inherited fmOrgWorkActivity: TfmOrgWorkActivity
  ActiveControl = edtNo
  Caption = #1044#1077#1085#1086#1089#1090' '#1087#1086' '#1056#1077#1078#1080#1084#1080' - %s'
  ClientHeight = 108
  ClientWidth = 489
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 473
    Height = 57
  end
  object lblNo: TLabel [1]
    Left = 24
    Top = 16
    Width = 14
    Height = 13
    Caption = 'No'
  end
  object lblName: TLabel [2]
    Left = 80
    Top = 16
    Width = 76
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
  end
  object lblType: TLabel [3]
    Left = 304
    Top = 16
    Width = 19
    Height = 13
    Caption = #1058#1080#1087
  end
  inherited pnlBottomButtons: TPanel
    Top = 73
    Width = 489
    TabOrder = 3
    inherited pnlOKCancel: TPanel
      Left = 221
    end
    inherited pnlClose: TPanel
      Left = 132
    end
    inherited pnlApply: TPanel
      Left = 400
      Visible = False
    end
  end
  object edtNo: TDBEdit [5]
    Left = 24
    Top = 32
    Width = 41
    Height = 21
    DataField = 'ORG_WORK_ACTIVITY_NO'
    DataSource = dsData
    TabOrder = 0
  end
  object edtName: TDBEdit [6]
    Left = 80
    Top = 32
    Width = 209
    Height = 21
    DataField = 'ORG_WORK_ACTIVITY_NAME'
    DataSource = dsData
    TabOrder = 1
  end
  object cbType: TJvDBLookupCombo [7]
    Left = 304
    Top = 32
    Width = 161
    Height = 21
    DataField = '_ORG_WORK_MODE_NAME'
    DataSource = dsData
    TabOrder = 2
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1044#1077#1085#1086#1089#1090' '#1087#1086' '#1056#1077#1078#1080#1084#1080' - %s'
    end
  end
end
