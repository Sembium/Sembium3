inherited fmSetContextDate: TfmSetContextDate
  ActiveControl = deContextDate
  Caption = #1055#1086#1090#1088#1077#1073#1080#1090#1077#1083#1089#1082#1072' '#1044#1072#1090#1072
  ClientHeight = 108
  ClientWidth = 313
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object bvlMain: TBevel [0]
    Left = 8
    Top = 8
    Width = 297
    Height = 57
    Shape = bsFrame
  end
  object lblContextDate: TLabel [1]
    Left = 24
    Top = 16
    Width = 107
    Height = 13
    Caption = #1055#1086#1090#1088#1077#1073#1080#1090#1077#1083#1089#1082#1072' '#1044#1072#1090#1072
  end
  inherited pnlBottomButtons: TPanel
    Top = 73
    Width = 313
    TabOrder = 2
    inherited pnlOKCancel: TPanel
      Left = 45
    end
    inherited pnlClose: TPanel
      Left = -44
    end
    inherited pnlApply: TPanel
      Left = 224
      Visible = False
    end
  end
  object deContextDate: TJvDateEdit [3]
    Left = 24
    Top = 32
    Width = 105
    Height = 21
    ShowNullDate = False
    TabOrder = 0
  end
  object chkIsInEditMode: TCheckBox [4]
    Left = 152
    Top = 32
    Width = 145
    Height = 17
    Caption = #1056#1077#1078#1080#1084' '#1079#1072' '#1088#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077
    TabOrder = 1
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1055#1086#1090#1088#1077#1073#1080#1090#1077#1083#1089#1082#1072' '#1044#1072#1090#1072
    end
  end
end
