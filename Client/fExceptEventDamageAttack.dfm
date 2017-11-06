inherited fmExceptEventDamageAttack: TfmExceptEventDamageAttack
  Caption = #1040#1090#1072#1082#1072' '#1087#1086' '#1042#1077#1088#1080#1078#1085#1086' '#1055#1086#1088#1072#1078#1077#1085#1080#1077' - %s'
  ClientHeight = 305
  ClientWidth = 409
  ExplicitWidth = 415
  ExplicitHeight = 330
  PixelsPerInch = 96
  TextHeight = 13
  object bvlMain: TBevel [0]
    Left = 8
    Top = 8
    Width = 393
    Height = 257
    Anchors = [akLeft, akTop, akRight, akBottom]
    Shape = bsFrame
    ExplicitWidth = 521
    ExplicitHeight = 313
  end
  object lblState: TLabel [1]
    Left = 24
    Top = 24
    Width = 34
    Height = 13
    Caption = #1057#1090#1072#1090#1091#1089
  end
  object lblNo: TLabel [2]
    Left = 72
    Top = 24
    Width = 14
    Height = 13
    Caption = 'No'
  end
  object lblProductQuantity: TLabel [3]
    Left = 128
    Top = 24
    Width = 115
    Height = 13
    Caption = #1040#1090#1072#1082#1091#1074#1072#1085#1086' '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
  end
  object lblProposedPlanShiftWorkdays: TLabel [4]
    Left = 264
    Top = 24
    Width = 119
    Height = 13
    Caption = #1055#1088#1077#1076#1083#1086#1078#1077#1085#1080#1077' '#1056#1072#1073'. '#1044#1085#1080
  end
  inherited pnlBottomButtons: TPanel
    Top = 270
    Width = 409
    TabOrder = 6
    ExplicitTop = 270
    ExplicitWidth = 409
    inherited pnlOKCancel: TPanel
      Left = 141
      ExplicitLeft = 141
    end
    inherited pnlClose: TPanel
      Left = 52
      ExplicitLeft = 52
    end
    inherited pnlApply: TPanel
      Left = 320
      Visible = False
      ExplicitLeft = 320
    end
  end
  object edtState: TDBEdit [6]
    Left = 24
    Top = 40
    Width = 41
    Height = 21
    Color = clBtnFace
    DataField = '_STATE_CODE'
    DataSource = dsData
    ReadOnly = True
    TabOrder = 0
  end
  object edtNo: TDBEdit [7]
    Left = 72
    Top = 40
    Width = 41
    Height = 21
    Color = clBtnFace
    DataField = 'EXCEPT_EVENT_DAMAGE_ATTACK_NO'
    DataSource = dsData
    ReadOnly = True
    TabOrder = 1
  end
  object edtProductQuantity: TDBEdit [8]
    Left = 128
    Top = 40
    Width = 121
    Height = 21
    DataField = 'PRODUCT_QUANTITY'
    DataSource = dsData
    TabOrder = 2
  end
  object edtProposedPlanShiftWorkdays: TDBEdit [9]
    Left = 264
    Top = 40
    Width = 121
    Height = 21
    DataField = 'PROPOSED_PLAN_SHIFT_WORKDAYS'
    DataSource = dsData
    TabOrder = 3
  end
  object gbNotes: TGroupBox [10]
    Left = 24
    Top = 72
    Width = 361
    Height = 137
    Caption = ' '#1041#1077#1083#1077#1078#1082#1080' '
    TabOrder = 4
    object moNotes: TDBMemo
      Left = 8
      Top = 16
      Width = 345
      Height = 113
      DataField = 'NOTES'
      DataSource = dsData
      TabOrder = 0
    end
  end
  object btnNormalizeAttack: TBitBtn [11]
    Left = 136
    Top = 224
    Width = 137
    Height = 25
    Action = actNormalize
    Caption = #1053#1086#1088#1084#1072#1083#1080#1079#1080#1088#1072#1085#1077'...'
    TabOrder = 5
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1040#1090#1072#1082#1072' '#1087#1086' '#1042#1077#1088#1080#1078#1085#1086' '#1055#1086#1088#1072#1078#1077#1085#1080#1077' - %s'
    end
    object actNormalize: TAction
      Caption = #1053#1086#1088#1084#1072#1083#1080#1079#1080#1088#1072#1085#1077'...'
      Hint = #1053#1086#1088#1084#1072#1083#1080#1079#1080#1088#1072#1085#1077
      OnExecute = actNormalizeExecute
      OnUpdate = actNormalizeUpdate
    end
  end
end
