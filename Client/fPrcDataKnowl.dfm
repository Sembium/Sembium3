inherited fmPrcDataKnowl: TfmPrcDataKnowl
  Caption = #1055#1086#1079#1085#1072#1085#1080#1077' '#1079#1072' '#1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1074' '#1044#1091#1093#1072' '#1085#1072' '#1057#1098#1079#1080#1076#1072#1085#1080#1077' - %s'
  ClientHeight = 172
  ClientWidth = 433
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 137
    Width = 433
    inherited pnlOKCancel: TPanel
      Left = 165
    end
    inherited pnlClose: TPanel
      Left = 76
    end
    inherited pnlApply: TPanel
      Left = 344
      Visible = False
    end
  end
  inline frProcessKnowl: TfrProcessKnowlFieldEditFrame [1]
    Left = 8
    Top = 8
    Width = 417
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 1
  end
  object gbRing: TGroupBox [2]
    Left = 8
    Top = 64
    Width = 417
    Height = 65
    TabOrder = 2
    object lblRingNo: TLabel
      Left = 8
      Top = 16
      Width = 56
      Height = 13
      Caption = #1045#1096#1077#1083#1086#1085' No'
    end
    object lblRingLocalNo: TLabel
      Left = 80
      Top = 16
      Width = 14
      Height = 13
      Caption = 'No'
    end
    object edtRingNo: TDBEdit
      Left = 8
      Top = 32
      Width = 65
      Height = 21
      Color = clBtnFace
      DataField = 'PRC_RING_NO'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 0
    end
    object edtRingLocalNo: TDBEdit
      Left = 80
      Top = 32
      Width = 65
      Height = 21
      Color = clBtnFace
      DataField = 'PRC_RING_LOCAL_NO'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 1
    end
  end
  inherited alActions: TActionList [3]
    inherited actForm: TAction
      Caption = #1055#1086#1079#1085#1072#1085#1080#1077' '#1079#1072' '#1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1074' '#1044#1091#1093#1072' '#1085#1072' '#1057#1098#1079#1080#1076#1072#1085#1080#1077' - %s'
    end
  end
  inherited dsData: TDataSource [4]
  end
end
