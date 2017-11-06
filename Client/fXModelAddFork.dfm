inherited fmXModelAddFork: TfmXModelAddFork
  Left = 318
  Top = 286
  ActiveControl = chbCreateLike
  Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1088#1072#1079#1082#1083#1086#1085#1077#1085#1080#1077
  ClientHeight = 95
  ClientWidth = 586
  ExplicitWidth = 592
  ExplicitHeight = 120
  PixelsPerInch = 96
  TextHeight = 13
  object bvlMain: TBevel [0]
    Left = 8
    Top = 8
    Width = 570
    Height = 41
    Anchors = [akLeft, akTop, akRight, akBottom]
    Shape = bsFrame
    ExplicitWidth = 513
  end
  inherited pnlBottomButtons: TPanel
    Top = 60
    Width = 586
    TabOrder = 2
    ExplicitTop = 60
    ExplicitWidth = 529
    inherited pnlOKCancel: TPanel
      Left = 407
      ExplicitLeft = 350
    end
    inherited pnlClose: TPanel
      Left = 318
      ExplicitLeft = 261
    end
  end
  object chbCreateLike: TCheckBox [2]
    Left = 24
    Top = 20
    Width = 329
    Height = 17
    Caption = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1072' '#1053#1057#1063', '#1077#1090#1072#1087#1080' '#1080' '#1086#1087#1077#1088#1072#1094#1080#1080' '#1086#1090' '#1085#1091#1083#1077#1074#1086' '#1088#1072#1079#1082#1083#1086#1085#1077#1085#1080#1077
    TabOrder = 0
  end
  object chbWasteFork: TCheckBox [3]
    Left = 376
    Top = 20
    Width = 185
    Height = 17
    Caption = #1056#1072#1079#1082#1083#1086#1085#1077#1085#1080#1077' '#1087#1086' '#1059#1054#1073' '#1041#1083#1086#1082#1080#1088#1072#1097
    TabOrder = 1
  end
  inherited alActions: TActionList
    Left = 0
    Top = 48
    inherited actForm: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1088#1072#1079#1082#1083#1086#1085#1077#1085#1080#1077
    end
  end
end
