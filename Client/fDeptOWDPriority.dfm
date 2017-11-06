inherited fmDeptOWDPriority: TfmDeptOWDPriority
  Caption = #1053#1072#1095#1080#1085' '#1085#1072' '#1055#1086#1077#1084#1072#1085#1077' '#1085#1072' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090
  ClientHeight = 100
  ClientWidth = 249
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 233
    Height = 49
  end
  inherited pnlBottomButtons: TPanel
    Top = 65
    Width = 249
    inherited pnlOKCancel: TPanel
      Left = -19
    end
    inherited pnlClose: TPanel
      Left = -108
    end
    inherited pnlApply: TPanel
      Left = 160
      Visible = False
    end
  end
  object cbOWDPriorityCoverType: TJvDBLookupCombo [2]
    Left = 24
    Top = 24
    Width = 201
    Height = 21
    DataField = '_DEPT_OWDP_COVER_TYPE_NAME'
    DataSource = dsData
    TabOrder = 1
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1053#1072#1095#1080#1085' '#1085#1072' '#1055#1086#1077#1084#1072#1085#1077' '#1085#1072' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090
    end
  end
end
