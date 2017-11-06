inherited fmSaleOrder: TfmSaleOrder
  Left = 0
  Top = 300
  Caption = 
    #1054#1073#1086#1089#1086#1073#1077#1085' '#1044#1080#1072#1083#1086#1075' '#1089' '#1050#1083#1080#1077#1085#1090' '#1087#1086' '#1047#1072#1076#1072#1085#1080#1077' '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '#1085#1072' %ProductClass' +
    'Abbrev% - %s'
  ClientHeight = 620
  ClientWidth = 1017
  DesignSize = (
    1017
    620)
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 585
    Width = 1017
    TabOrder = 14
    inherited pnlOKCancel: TPanel
      Left = 749
      TabOrder = 7
    end
    inherited pnlClose: TPanel
      Left = 660
      TabOrder = 6
    end
    inherited pnlApply: TPanel
      Left = 928
      TabOrder = 8
      Visible = False
    end
    object pnlFinishButton: TPanel
      Left = 0
      Top = 0
      Width = 113
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object btnFinish: TBitBtn
        Left = 8
        Top = 2
        Width = 105
        Height = 25
        Action = actFinish
        Caption = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077'...'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
          BD00BDBDBD000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000007B7B7B007B7B7B00BDBDBD007B7B7B00000000007B7B
          7B00BDBDBD007B7B7B007B7B7B0000000000FF00FF00FF00FF00FF00FF00FF00
          FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B7B00000000007B7B
          7B00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00FF00FF00
          FF00000000007B7B7B007B7B7B007B7B7B00BDBDBD00BDBDBD0000000000BDBD
          BD00BDBDBD007B7B7B007B7B7B007B7B7B0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000000000000000
          0000BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00FF00FF00
          FF00000000007B7B7B007B7B7B007B7B7B007B7B7B0000000000000000000000
          00007B7B7B007B7B7B007B7B7B007B7B7B0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
          BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00
          FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF007B7B7B007B7B7B00BDBDBD0000000000000000000000
          0000BDBDBD007B7B7B007B7B7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBD
          BD00BDBDBD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 0
      end
    end
    object pnlAnnulButton: TPanel
      Left = 113
      Top = 0
      Width = 113
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      object btnAnnul: TBitBtn
        Left = 8
        Top = 2
        Width = 105
        Height = 25
        Action = actAnnul
        Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077'...'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
          0000000000000000000000000000FFFF0000FFFF0000FFFF0000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF000000000000000000FFFF
          FF0000FFFF00FFFFFF0000FFFF0000000000FFFF0000FFFF0000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF000000000000FFFF00FFFFFF0000FF
          FF000000000000FFFF00FFFFFF0000FFFF0000000000FFFF0000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF0000000000000000000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000FF
          FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FF00FF00FF00
          FF00FF00FF00000000000000000000000000000000000000000000FFFF00FFFF
          FF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF0000000000000000000000
          000000000000FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF000000
          0000FFFFFF0000FFFF000000000000FFFF00FFFFFF0000000000FFFF00000000
          0000FFFFFF0000FFFF0000000000000000000000000000000000000000000000
          0000000000000000000000FFFF00FFFFFF000000000000000000FFFF00000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000FFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF00000000
          0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
          0000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF00000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
          0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
          000000000000FFFFFF0000000000000000000000000000000000FFFF00000000
          000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
          0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          0000FF00FF00000000000000000000000000000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
        TabOrder = 0
      end
    end
    object pnlAnnuled: TPanel
      Left = 500
      Top = 0
      Width = 119
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 4
      object chkAnnuled: TCheckBox
        Left = 16
        Top = 8
        Width = 105
        Height = 17
        Caption = #1054#1044#1050' '#1077' '#1072#1085#1091#1083#1080#1088#1072#1085
        Checked = True
        Enabled = False
        State = cbChecked
        TabOrder = 0
      end
    end
    object pnlFinished: TPanel
      Left = 619
      Top = 0
      Width = 127
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 3
      object chkFinished: TCheckBox
        Left = 16
        Top = 8
        Width = 113
        Height = 17
        Caption = #1054#1044#1050' '#1077' '#1087#1088#1080#1082#1083#1102#1095#1077#1085
        Checked = True
        Enabled = False
        State = cbChecked
        TabOrder = 0
      end
    end
    object pnlExceptEvents: TPanel
      Left = 226
      Top = 0
      Width = 169
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 2
      object btnExceptEvents: TButton
        Left = 8
        Top = 2
        Width = 161
        Height = 25
        Action = actExceptEvents
        TabOrder = 0
      end
    end
    object pnlNotes: TPanel
      Left = 395
      Top = 0
      Width = 105
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 5
      object btnNotes: TBitBtn
        Left = 8
        Top = 2
        Width = 97
        Height = 25
        Action = actNotes
        Caption = #1041#1077#1083#1077#1078#1082#1080'...'
        Spacing = -1
        TabOrder = 0
      end
    end
  end
  object gbRequestSendAndRegisterDates: TGroupBox [1]
    Left = 8
    Top = 88
    Width = 257
    Height = 65
    Caption = ' '#1044#1072#1090#1080' '#1085#1072' '#1055#1044#1050' '
    TabOrder = 2
    object imgArrow1: TImage
      Left = 120
      Top = 40
      Width = 15
      Height = 11
      Picture.Data = {
        07544269746D6170F6040000424DF60400000000000036040000280000000F00
        00000C0000000100080000000000C0000000C40E0000C40E0000000100000001
        00000000000080808000C0C0C000FFFFFF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000020202020202020201010202020202000202020202020203000001020202
        0200020202020202020300000001020202000201010101010102000000000102
        0200030000000000000000000000000102000300000000000000000000000000
        0100030000000000000000000000000002000300000000000000000000000002
        0200030303030303030300000000020202000202020202020203000000020202
        0200020202020202020300000202020202000202020202020203030202020202
        0200}
      Stretch = True
      Transparent = True
    end
    object dbtRequestRegisterDateDiff: TDBText
      Left = 120
      Top = 24
      Width = 18
      Height = 14
      Alignment = taCenter
      DataField = '_REQUEST_REGISTER_DATE_DIFF'
      DataSource = dsData
    end
    object lblRequestSendDate: TLabel
      Left = 8
      Top = 16
      Width = 59
      Height = 13
      Caption = #1057#1090#1072#1088#1090#1080#1088#1072#1085#1077
    end
    object lblRequestRegisterDate: TLabel
      Left = 144
      Top = 16
      Width = 71
      Height = 13
      Caption = #1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077
    end
    inline frRequestSendDate: TfrDateFieldEditFrame
      Left = 8
      Top = 32
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 0
      TabStop = True
    end
    inline frRequestRegisterDate: TfrDateFieldEditFrame
      Left = 144
      Top = 32
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 1
      TabStop = True
    end
  end
  object gbDates: TGroupBox [2]
    Left = 8
    Top = 160
    Width = 393
    Height = 121
    Caption = ' '#1044#1072#1090#1080' '#1087#1086' '#1044#1080#1072#1083#1086#1075' '
    TabOrder = 4
    object lblOfferSendPlanDate: TLabel
      Left = 8
      Top = 16
      Width = 102
      Height = 13
      Caption = #1055#1083#1072#1085#1086#1074#1072' '#1055#1079#1094'. '#1048#1055
    end
    object lblOfferAnswerPlanDate: TLabel
      Left = 144
      Top = 16
      Width = 109
      Height = 13
      Caption = #1055#1083#1072#1085#1086#1074#1072' '#1055#1079#1094'. '#1050#1083#1080#1077#1085#1090
    end
    object lblDecisionPlanDate: TLabel
      Left = 280
      Top = 16
      Width = 90
      Height = 13
      Caption = #1055#1083'. '#1076#1072#1090#1072' '#1088#1077#1096#1077#1085#1080#1077
    end
    object lblOfferSendDate: TLabel
      Left = 8
      Top = 96
      Width = 99
      Height = 13
      Caption = #1054#1090#1095#1077#1090#1085#1072' '#1055#1079#1094'. '#1048#1055
    end
    object lblOfferAnswerDate: TLabel
      Left = 144
      Top = 96
      Width = 106
      Height = 13
      Caption = #1054#1090#1095#1077#1090#1085#1072' '#1055#1079#1094'. '#1050#1083#1080#1077#1085#1090
    end
    object lblDecisionDate: TLabel
      Left = 280
      Top = 96
      Width = 88
      Height = 13
      Caption = #1044#1072#1090#1072' '#1085#1072' '#1088#1077#1096#1077#1085#1080#1077
    end
    object lblOfferSendDateAxis1: TLabel
      Left = 8
      Top = 48
      Width = 2
      Height = 26
      Caption = '|'#13#10'|'
      Color = clBtnFace
      ParentColor = False
    end
    object lblOfferAnswerDateAxis1: TLabel
      Left = 144
      Top = 48
      Width = 2
      Height = 26
      Caption = '|'#13#10'|'
      Color = clBtnFace
      ParentColor = False
    end
    object lblDecisionDateAxis1: TLabel
      Left = 280
      Top = 48
      Width = 2
      Height = 26
      Caption = '|'#13#10'|'
      Color = clBtnFace
      ParentColor = False
    end
    object imgArrow2: TImage
      Left = 120
      Top = 40
      Width = 15
      Height = 11
      Picture.Data = {
        07544269746D6170D6000000424DD60000000000000076000000280000000F00
        00000C0000000100040000000000600000000000000000000000100000000000
        0000000000000000800000800000008080008000000080008000808000008080
        8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
        FF0088888888778888808888888F007888808888888F00078880877777780000
        7880F000000000000780F000000000000070F000000000000080F00000000000
        0880FFFFFFFF000088808888888F000888808888888F008888808888888FF888
        8880}
      Stretch = True
      Transparent = True
    end
    object imgArrow4: TImage
      Left = 256
      Top = 40
      Width = 15
      Height = 11
      Picture.Data = {
        07544269746D6170D6000000424DD60000000000000076000000280000000F00
        00000C0000000100040000000000600000000000000000000000100000000000
        0000000000000000800000800000008080008000000080008000808000008080
        8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
        FF0088888888778888808888888F007888808888888F00078880877777780000
        7880F000000000000780F000000000000070F000000000000080F00000000000
        0880FFFFFFFF000088808888888F000888808888888F008888808888888FF888
        8880}
      Stretch = True
      Transparent = True
    end
    object dbtOfferAnswerPlanDateDiff: TDBText
      Left = 120
      Top = 24
      Width = 18
      Height = 14
      Alignment = taCenter
      DataField = '_OFFER_ANSWER_PLAN_DATE_DIFF'
      DataSource = dsData
    end
    object dbtDecisionPlanDateDiff: TDBText
      Left = 256
      Top = 24
      Width = 18
      Height = 13
      Alignment = taCenter
      DataField = '_DECISION_PLAN_DATE_DIFF'
      DataSource = dsData
    end
    object imgArrow3: TImage
      Left = 120
      Top = 72
      Width = 15
      Height = 11
      Picture.Data = {
        07544269746D6170D6000000424DD60000000000000076000000280000000F00
        00000C0000000100040000000000600000000000000000000000100000000000
        0000000000000000800000800000008080008000000080008000808000008080
        8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
        FF0088888888778888808888888F007888808888888F00078880877777780000
        7880F000000000000780F000000000000070F000000000000080F00000000000
        0880FFFFFFFF000088808888888F000888808888888F008888808888888FF888
        8880}
      Stretch = True
      Transparent = True
    end
    object dbtOfferAnswerDateDiff: TDBText
      Left = 120
      Top = 85
      Width = 18
      Height = 14
      Alignment = taCenter
      DataField = '_OFFER_ANSWER_DATE_DIFF'
      DataSource = dsData
    end
    object imgArrow5: TImage
      Left = 256
      Top = 72
      Width = 15
      Height = 11
      Picture.Data = {
        07544269746D6170D6000000424DD60000000000000076000000280000000F00
        00000C0000000100040000000000600000000000000000000000100000000000
        0000000000000000800000800000008080008000000080008000808000008080
        8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
        FF0088888888778888808888888F007888808888888F00078880877777780000
        7880F000000000000780F000000000000070F000000000000080F00000000000
        0880FFFFFFFF000088808888888F000888808888888F008888808888888FF888
        8880}
      Stretch = True
      Transparent = True
    end
    object dbtDecisionDateDiff: TDBText
      Left = 256
      Top = 85
      Width = 18
      Height = 14
      Alignment = taCenter
      DataField = '_DECISION_DATE_DIFF'
      DataSource = dsData
    end
    object lblOfferSendDateAxis2: TLabel
      Left = 110
      Top = 48
      Width = 2
      Height = 26
      Caption = '|'#13#10'|'
      Color = clBtnFace
      ParentColor = False
    end
    object lblOfferAnswerDateAxis2: TLabel
      Left = 245
      Top = 48
      Width = 2
      Height = 26
      Caption = '|'#13#10'|'
      Color = clBtnFace
      ParentColor = False
    end
    object dbtOfferSendDateDeviation: TDBText
      Left = 32
      Top = 56
      Width = 62
      Height = 14
      Alignment = taCenter
      DataField = '_OFFER_SEND_DATE_DEVIATION'
      DataSource = dsData
    end
    object dbtOfferAnswerDateDeviation: TDBText
      Left = 160
      Top = 56
      Width = 62
      Height = 14
      Alignment = taCenter
      DataField = '_OFFER_ANSWER_DATE_DEVIATION'
      DataSource = dsData
    end
    object dbtDecisionDateDeviation: TDBText
      Left = 304
      Top = 56
      Width = 62
      Height = 14
      Alignment = taCenter
      DataField = '_DECISION_DATE_DEVIATION'
      DataSource = dsData
    end
    object lblDecisionDateAxis2: TLabel
      Left = 381
      Top = 46
      Width = 2
      Height = 26
      Caption = '|'#13#10'|'
      Color = clBtnFace
      ParentColor = False
    end
    inline frOfferSendPlanDate: TfrDateFieldEditFrame
      Left = 8
      Top = 32
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 0
      TabStop = True
    end
    inline frOfferSendDate: TfrDateFieldEditFrame
      Left = 8
      Top = 72
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 1
      TabStop = True
    end
    inline frOfferAnswerPlanDate: TfrDateFieldEditFrame
      Left = 144
      Top = 32
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 2
      TabStop = True
    end
    inline frOfferAnswerDate: TfrDateFieldEditFrame
      Left = 144
      Top = 72
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 3
      TabStop = True
    end
    inline frDecisionPlanDate: TfrDateFieldEditFrame
      Left = 280
      Top = 32
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 4
      TabStop = True
    end
    inline frDecisionDate: TfrDateFieldEditFrame
      Left = 280
      Top = 72
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 5
      TabStop = True
    end
  end
  object gbParRelProduct: TGroupBox [3]
    Left = 408
    Top = 160
    Width = 377
    Height = 65
    Caption = ' '#1048#1079#1090#1086#1095#1085#1080#1082' '#1085#1072' '#1048#1085#1076#1091#1089#1090#1088#1080#1072#1083#1077#1085' '#1056#1077#1079#1091#1083#1090#1072#1090' (%ParRelProductAbbrev%) '
    TabOrder = 5
    object btnParRelProduct: TButton
      Left = 288
      Top = 29
      Width = 81
      Height = 25
      Action = actParRelProduct
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    inline frParRelProductStatus: TfrParRelProductStatus
      Left = 8
      Top = 16
      Width = 207
      Height = 38
      Constraints.MaxHeight = 38
      Constraints.MaxWidth = 207
      Constraints.MinHeight = 38
      Constraints.MinWidth = 207
      TabOrder = 1
      TabStop = True
      inherited lblCurrentStatus: TLabel
        Width = 34
      end
      inherited lblReachMonths: TLabel
        Width = 6
      end
      inherited lblExistanceMonths: TLabel
        Width = 6
      end
      inherited lblMonths: TLabel
        Width = 11
      end
    end
    object tlbParRelProductDocs: TToolBar
      Left = 186
      Top = 32
      Width = 36
      Height = 22
      Align = alNone
      AutoSize = True
      ButtonWidth = 36
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = dmMain.ilDocs
      TabOrder = 2
      object btnParRelProductDocs: TToolButton
        Left = 0
        Top = 0
        Action = actParRelProductDoc
        ImageIndex = 1
        ParentShowHint = False
        ShowHint = True
      end
    end
  end
  inline frMediator: TfrPartnerFieldEditFrame [4]
    Left = 408
    Top = 232
    Width = 377
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    Constraints.MinHeight = 49
    TabOrder = 6
    TabStop = True
    inherited gbPartner: TGroupBox
      Width = 377
      Caption = ' '#1055#1086#1089#1088#1077#1076#1085#1080#1082' '
      inherited pnlNameAndButtons: TPanel
        Width = 288
        inherited pnlRightButtons: TPanel
          Left = 252
          inherited tlbDocButton: TToolBar
            Height = 32
          end
        end
        inherited pnlPartnerName: TPanel
          Width = 252
          DesignSize = (
            252
            32)
          inherited edtPartnerName: TDBEdit
            Width = 253
          end
          inherited cbPartner: TJvDBLookupCombo
            Width = 253
          end
        end
      end
      inherited pnlPaddingRight: TPanel
        Left = 369
      end
    end
    inherited dsData: TDataSource
      DataSet = cdsSaleRequestGroup
    end
  end
  object gbDecision: TGroupBox [5]
    Left = 792
    Top = 288
    Width = 217
    Height = 65
    Caption = ' '#1056#1077#1096#1077#1085#1080#1077' '
    TabOrder = 10
    object lblPlanPeriodDays: TLabel
      Left = 120
      Top = 16
      Width = 38
      Height = 13
      Caption = #1055#1083'.'#1087#1077#1088'.'
    end
    object lblRealPeriodDays: TLabel
      Left = 168
      Top = 16
      Width = 37
      Height = 13
      Caption = #1056#1083'.'#1087#1077#1088'.'
    end
    object cbDecisionType: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 73
      Height = 21
      DropDownWidth = 250
      DataField = 'DECISION_TYPE_CODE'
      DataSource = dsData
      DisplayEmpty = ' '
      FieldsDelimiter = '-'
      ListStyle = lsDelimited
      LookupField = 'DECISION_TYPE_CODE'
      LookupDisplay = 'DECISION_TYPE_ABBREV; DECISION_TYPE_NAME'
      LookupSource = dsDecisionTypes
      TabOrder = 0
    end
    object edtPlanPeriodDays: TDBEdit
      Left = 120
      Top = 32
      Width = 41
      Height = 21
      Color = clBtnFace
      DataField = '_PLAN_PERIOD_DAYS'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 1
    end
    object edtRealPeriodDays: TDBEdit
      Left = 168
      Top = 32
      Width = 41
      Height = 21
      Color = clBtnFace
      DataField = '_REAL_PERIOD_DAYS'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 2
    end
  end
  inline frDecisionEmployee: TfrEmployeeFieldEditFrameLabeled [6]
    Left = 792
    Top = 360
    Width = 217
    Height = 65
    Constraints.MaxHeight = 65
    Constraints.MinHeight = 65
    TabOrder = 11
    TabStop = True
    DesignSize = (
      217
      65)
    inherited gbEmployee: TGroupBox
      Width = 217
      Caption = ' '#1042#1079#1077#1083' '#1056#1077#1096#1077#1085#1080#1077' '
      inherited pnlEmployeeName: TPanel
        Width = 142
        inherited pnlRightButtons: TPanel
          Left = 106
        end
        inherited pnlEmpoyeeNameInner: TPanel
          Width = 106
          DesignSize = (
            106
            33)
          inherited edtEmployeeName: TDBEdit
            Width = 131
          end
          inherited cbEmployee: TJvDBLookupCombo
            Width = 105
          end
        end
      end
      inherited pnlPaddingRight: TPanel
        Left = 207
      end
      inherited pnlLabels: TPanel
        Width = 213
        inherited lblCode: TLabel
          Width = 19
        end
        inherited lblName: TLabel
          Width = 22
        end
      end
    end
  end
  inline frManagerEmployee: TfrEmployeeFieldEditFrameLabeled [7]
    Left = 792
    Top = 432
    Width = 217
    Height = 65
    Constraints.MaxHeight = 65
    Constraints.MinHeight = 65
    TabOrder = 12
    TabStop = True
    DesignSize = (
      217
      65)
    inherited gbEmployee: TGroupBox
      Width = 217
      Caption = ' '#1042#1086#1076#1077#1097' '#1044#1080#1072#1083#1086#1075' '
      inherited pnlEmployeeName: TPanel
        Width = 142
        inherited pnlRightButtons: TPanel
          Left = 106
        end
        inherited pnlEmpoyeeNameInner: TPanel
          Width = 106
          DesignSize = (
            106
            33)
          inherited edtEmployeeName: TDBEdit
            Width = 131
          end
          inherited cbEmployee: TJvDBLookupCombo
            Width = 105
          end
        end
      end
      inherited pnlPaddingRight: TPanel
        Left = 207
      end
      inherited pnlLabels: TPanel
        Width = 213
        inherited lblCode: TLabel
          Width = 19
        end
        inherited lblName: TLabel
          Width = 22
        end
      end
    end
  end
  object gbReceiveConditions: TGroupBox
    Left = 8
    Top = 504
    Width = 1001
    Height = 73
    Caption = ' '#1059#1089#1083#1086#1074#1080#1103' '#1079#1072' '#1055#1086#1083#1091#1095#1072#1074#1072#1085#1077' '#1086#1090' '#1050#1083#1080#1077#1085#1090' '
    TabOrder = 13
    object lblShipmentStore: TLabel
      Left = 8
      Top = 24
      Width = 172
      Height = 13
      Caption = #1058#1055' '#1047#1072#1076#1098#1088#1078'. '#1085#1072' '#1048#1055' '#1079#1072' '#1045#1082#1089#1087'.'
    end
    object lblShipmentDays: TLabel
      Left = 272
      Top = 24
      Width = 43
      Height = 13
      Caption = #1055#1077#1088#1044#1074#1078
    end
    inline frShipmentStore: TfrDeptFieldEditFrameBald
      Left = 8
      Top = 40
      Width = 241
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 0
      TabStop = True
      DesignSize = (
        241
        22)
      inherited gbTreeNode: TGroupBox
        Width = 257
        DesignSize = (
          257
          49)
        inherited pnlTreeNode: TPanel
          Width = 241
          inherited pnlTreeNodeName: TPanel
            Width = 94
            DesignSize = (
              94
              22)
            inherited edtTreeNodeName: TDBEdit
              Width = 93
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 94
          end
          inherited pnlRightButtons: TPanel
            Left = 205
          end
        end
      end
    end
    object edtShipmentDays: TDBEdit
      Left = 272
      Top = 40
      Width = 49
      Height = 21
      AutoSize = False
      DataField = 'SHIPMENT_DAYS'
      DataSource = dsData
      TabOrder = 1
    end
    object pnlReceiveConditionsNormal: TPanel
      Left = 336
      Top = 15
      Width = 663
      Height = 56
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      object lblReceivePlaceOfficeName: TLabel
        Left = 0
        Top = 9
        Width = 165
        Height = 13
        Caption = #1058#1055' '#1085#1072' '#1050#1083#1080#1077#1085#1090' '#1079#1072' '#1055#1086#1083#1091#1095#1072#1074#1072#1085#1077
      end
      object lblCountry: TLabel
        Left = 176
        Top = 9
        Width = 48
        Height = 13
        Caption = #1044#1098#1088#1078#1072#1074#1072
      end
      object lblCustomhouse: TLabel
        Left = 256
        Top = 9
        Width = 44
        Height = 13
        Caption = #1052#1080#1090#1085#1080#1094#1072
      end
      object lblShipmentType: TLabel
        Left = 392
        Top = 9
        Width = 77
        Height = 13
        Caption = #1058#1098#1088#1075#1086#1074#1089#1082#1080' '#1050#1086#1076
      end
      object lblTransportBy: TLabel
        Left = 512
        Top = 9
        Width = 139
        Height = 13
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1058#1088#1072#1085#1089#1087#1086#1088#1090
      end
      object cbReceivePlaceOfficeName: TJvDBLookupCombo
        Left = 1
        Top = 25
        Width = 168
        Height = 21
        DropDownWidth = 180
        DataField = 'RECEIVE_PLACE_OFFICE_CODE'
        DataSource = dsData
        DisplayEmpty = ' '
        FieldsDelimiter = '-'
        ListStyle = lsDelimited
        LookupField = 'OFFICE_CODE'
        LookupDisplay = 'OFFICE_NAME'
        LookupSource = dsCompanyOffices
        TabOrder = 0
      end
      object edtCountry: TDBEdit
        Left = 176
        Top = 25
        Width = 57
        Height = 21
        Color = clBtnFace
        DataField = '_COUNTRY_NAME'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 1
      end
      object cbCustomhouse: TJvDBLookupCombo
        Left = 256
        Top = 25
        Width = 129
        Height = 21
        DataField = 'CUSTOMHOUSE_CODE'
        DataSource = dsData
        DisplayEmpty = ' '
        LookupField = 'CUSTOMHOUSE_CODE'
        LookupDisplay = 'CUSTOMHOUSE_NAME'
        LookupSource = dsCustomhouses
        TabOrder = 2
      end
      object cbShipmentType: TJvDBLookupCombo
        Left = 392
        Top = 25
        Width = 113
        Height = 21
        DropDownWidth = 250
        DataField = 'SHIPMENT_TYPE_CODE'
        DataSource = dsData
        DisplayEmpty = ' '
        FieldsDelimiter = '-'
        ListStyle = lsDelimited
        LookupField = 'SHIPMENT_TYPE_CODE'
        LookupDisplay = 'SHIPMENT_TYPE_ABBREV; NOTES'
        LookupSource = dsShipmentTypes
        TabOrder = 3
      end
      object cbTransportBy: TJvDBComboBox
        Left = 510
        Top = 25
        Width = 145
        Height = 21
        DataField = 'IS_VENDOR_TRANSPORT'
        DataSource = dsData
        Items.Strings = (
          ''
          #1048#1055
          #1050#1083#1080#1077#1085#1090)
        TabOrder = 4
        Values.Strings = (
          ''
          'False'
          'True')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
        ListSettings.OutfilteredValueFont.Style = []
      end
    end
  end
  object pnlPrices: TPanel
    Left = 792
    Top = 160
    Width = 217
    Height = 121
    BevelOuter = bvNone
    TabOrder = 7
    object gbPricesSell: TGroupBox
      Left = 0
      Top = 0
      Width = 217
      Height = 121
      Align = alTop
      Caption = ' '#1048#1085#1092#1086#1088#1084#1072#1090#1080#1074#1085#1080' '#1077#1076'. '#1094#1077#1085#1080' '
      TabOrder = 0
      object lblMarketPrice: TLabel
        Left = 16
        Top = 16
        Width = 50
        Height = 13
        Caption = #1051#1080#1082#1074#1080#1076#1085#1072
      end
      object lblMinPrice: TLabel
        Left = 16
        Top = 64
        Width = 59
        Height = 13
        Caption = #1052#1080#1085#1080#1084#1072#1083#1085#1072
      end
      object lblBaseCurrencyAbbrev: TLabel
        Left = 125
        Top = 83
        Width = 56
        Height = 13
        Caption = '%BaseCur%'
      end
      object lblCaption: TLabel
        Left = 154
        Top = 35
        Width = 21
        Height = 13
        Caption = #1079#1072' 1'
      end
      object lblMeasureAbbrev2: TLabel
        Left = 176
        Top = 16
        Width = 27
        Height = 13
        Caption = #1052'.'#1077#1076'.'
      end
      object dbtMarketPriceCurrencyAbbrev2: TDBText
        Left = 124
        Top = 36
        Width = 28
        Height = 14
        DataField = '_MARKET_PRICE_CURRENCY_ABBREV'
        DataSource = dsSaleOrderProductInfo
      end
      object edtMarketPrice: TDBEdit
        Left = 16
        Top = 32
        Width = 105
        Height = 21
        Color = clBtnFace
        DataField = 'MARKET_PRICE'
        DataSource = dsSaleOrderProductInfo
        ReadOnly = True
        TabOrder = 0
      end
      object edtMinPrice: TDBEdit
        Left = 16
        Top = 80
        Width = 105
        Height = 21
        DataField = 'MIN_BASE_PRICE'
        DataSource = dsData
        TabOrder = 1
      end
      object edtMeasureAbbrev2: TDBEdit
        Left = 176
        Top = 32
        Width = 33
        Height = 21
        Color = clBtnFace
        DataField = '_MEASURE_ABBREV'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 2
      end
      object pnlAcquirePriceButton: TPanel
        Left = 5
        Top = 32
        Width = 11
        Height = 21
        BevelOuter = bvNone
        TabOrder = 3
        object btnAcquirePrice: TSpeedButton
          Left = 0
          Top = 0
          Width = 11
          Height = 21
          Action = actAcuirePrice
          Align = alLeft
          AllowAllUp = True
          Flat = True
          ParentShowHint = False
          ShowHint = True
        end
      end
    end
    object gbPricesLease: TGroupBox
      Left = 0
      Top = 121
      Width = 217
      Height = 121
      Align = alTop
      Caption = ' '#1053#1072#1077#1084#1085#1080' '#1094#1077#1085#1080' '#1079#1072' 1-'#1094#1072' '#1056#1072#1073#1086#1090#1077#1085' '#1056#1077#1089#1091#1088#1089' '
      TabOrder = 1
      object lblSaleLeaseSecondaryPrice: TLabel
        Left = 19
        Top = 16
        Width = 40
        Height = 13
        Caption = #1053#1072#1077#1084#1085#1072
      end
      object lblMinPrice2: TLabel
        Left = 112
        Top = 16
        Width = 59
        Height = 13
        Caption = #1052#1080#1085#1080#1084#1072#1083#1085#1072
      end
      object lblMeasureAbbrev: TLabel
        Left = 32
        Top = 72
        Width = 27
        Height = 13
        Caption = #1052'.'#1077#1076'.'
      end
      object lblSaleLeaseDateUnitCode: TLabel
        Left = 80
        Top = 72
        Width = 79
        Height = 13
        Caption = #1053#1072#1077#1084#1085#1072' '#1089#1090#1098#1087#1082#1072
      end
      object lblFor: TLabel
        Left = 6
        Top = 91
        Width = 21
        Height = 13
        Caption = #1079#1072' 1'
      end
      object lblSlash7: TLabel
        Left = 70
        Top = 91
        Width = 5
        Height = 13
        Caption = '/'
      end
      object dbtMarketPriceCurrencyAbbrev: TDBText
        Left = 77
        Top = 36
        Width = 28
        Height = 14
        DataField = '_SALE_LEASE_CURRENCY_ABBREV'
        DataSource = dsSaleOrderProductInfo
      end
      object lblBaseCurrencyAbbrev2: TLabel
        Left = 180
        Top = 35
        Width = 56
        Height = 13
        Caption = '%BaseCur%'
      end
      object edtSaleLeaseSecondaryPrice: TDBEdit
        Left = 19
        Top = 32
        Width = 54
        Height = 21
        Color = clBtnFace
        DataField = 'SALE_LEASE_PRICE'
        DataSource = dsSaleOrderProductInfo
        ReadOnly = True
        TabOrder = 0
      end
      object edtMinPrice2: TDBEdit
        Left = 112
        Top = 32
        Width = 65
        Height = 21
        DataField = 'MIN_BASE_PRICE'
        DataSource = dsData
        TabOrder = 1
      end
      object edtMeasureAbbrev: TDBEdit
        Left = 32
        Top = 88
        Width = 33
        Height = 21
        Color = clBtnFace
        DataField = '_MEASURE_ABBREV'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 2
      end
      object edtSaleLeaseDateUnitCode: TDBEdit
        Left = 80
        Top = 88
        Width = 81
        Height = 21
        Color = clBtnFace
        DataField = '_SALE_LEASE_DATE_UNIT_NAME'
        DataSource = dsSaleOrderProductInfo
        ReadOnly = True
        TabOrder = 3
      end
      object pnlLeasePriceButton: TPanel
        Left = 8
        Top = 32
        Width = 11
        Height = 21
        BevelOuter = bvNone
        TabOrder = 4
        object btnLeasePrice: TSpeedButton
          Left = 0
          Top = 0
          Width = 11
          Height = 21
          Action = actLeasePrice
          Align = alLeft
          AllowAllUp = True
          Flat = True
          ParentShowHint = False
          ShowHint = True
        end
      end
    end
  end
  object pnlDialog: TPanel
    Left = 8
    Top = 288
    Width = 777
    Height = 209
    Anchors = [akLeft, akTop, akBottom]
    BevelOuter = bvNone
    TabOrder = 9
    object gbPlanDialogSale: TGroupBox
      Left = 0
      Top = 627
      Width = 777
      Height = 209
      Align = alTop
      Caption = ' '#1044#1080#1072#1083#1086#1075' - '#1040#1089#1087#1077#1082#1090' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072' '
      TabOrder = 0
      object lblPrognosisInterval: TLabel
        Left = 17
        Top = 24
        Width = 125
        Height = 13
        Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072
      end
      inline frPrognosis: TfrDateIntervalFrame
        Left = 16
        Top = 40
        Width = 145
        Height = 21
        Constraints.MaxHeight = 21
        Constraints.MaxWidth = 145
        Constraints.MinHeight = 21
        Constraints.MinWidth = 145
        TabOrder = 0
        TabStop = True
      end
      object gbQuantitiesAndPrices: TGroupBox
        Left = 16
        Top = 80
        Width = 617
        Height = 113
        Caption = ' '#1055#1086#1079#1080#1094#1080#1080' '#1087#1086' '#1044#1080#1072#1083#1086#1075' '
        TabOrder = 1
        object lblOfferQuantity: TLabel
          Left = 105
          Top = 16
          Width = 66
          Height = 13
          Caption = #1056#1072#1073#1086#1090#1085#1086' '#1082'-'#1074#1086
        end
        object lblOfferAccountQuantity: TLabel
          Left = 233
          Top = 16
          Width = 83
          Height = 13
          Caption = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1086' '#1082'-'#1074#1086
        end
        object lblOfferSinglePrice: TLabel
          Left = 457
          Top = 16
          Width = 43
          Height = 13
          Caption = #1045#1076'. '#1094#1077#1085#1072
        end
        object lblOfferCurrency: TLabel
          Left = 521
          Top = 16
          Width = 35
          Height = 13
          Caption = #1042#1072#1083#1091#1090#1072
        end
        object dbtMeasure3: TDBText
          Left = 196
          Top = 36
          Width = 31
          Height = 15
          DataField = '_MEASURE_ABBREV'
          DataSource = dsData
        end
        object dbtMeasure4: TDBText
          Left = 196
          Top = 60
          Width = 31
          Height = 15
          DataField = '_MEASURE_ABBREV'
          DataSource = dsData
        end
        object dbtMeasure5: TDBText
          Left = 196
          Top = 84
          Width = 31
          Height = 15
          DataField = '_MEASURE_ABBREV'
          DataSource = dsData
        end
        object dbtAccountMeasure2: TDBText
          Left = 324
          Top = 36
          Width = 31
          Height = 15
          DataField = '_ACCOUNT_MEASURE_ABBREV'
          DataSource = dsData
        end
        object dbtAccountMeasure3: TDBText
          Left = 324
          Top = 60
          Width = 31
          Height = 15
          DataField = '_ACCOUNT_MEASURE_ABBREV'
          DataSource = dsData
        end
        object dbtAccountMeasure4: TDBText
          Left = 324
          Top = 84
          Width = 31
          Height = 15
          DataField = '_ACCOUNT_MEASURE_ABBREV'
          DataSource = dsData
        end
        object lblOurOffer: TLabel
          Left = 9
          Top = 36
          Width = 29
          Height = 13
          Caption = #1048#1055
        end
        object lblClientOffer: TLabel
          Left = 9
          Top = 60
          Width = 36
          Height = 13
          Caption = #1050#1083#1080#1077#1085#1090
        end
        object lblCoherence: TLabel
          Left = 9
          Top = 84
          Width = 66
          Height = 13
          Caption = #1057#1098#1075#1083#1072#1089#1091#1074#1072#1085#1086
        end
        object lblSlash6: TLabel
          Left = 572
          Top = 36
          Width = 5
          Height = 13
          Caption = '/'
        end
        object dbtDisplayMeasure6: TDBText
          Left = 580
          Top = 36
          Width = 29
          Height = 13
          DataField = '_MEASURE_ABBREV'
          DataSource = dsData
        end
        object lblSlash8: TLabel
          Left = 572
          Top = 60
          Width = 5
          Height = 13
          Caption = '/'
        end
        object dbtDisplayMeasure7: TDBText
          Left = 580
          Top = 60
          Width = 29
          Height = 13
          DataField = '_MEASURE_ABBREV'
          DataSource = dsData
        end
        object lblSlash9: TLabel
          Left = 572
          Top = 84
          Width = 5
          Height = 13
          Caption = '/'
        end
        object dbtDisplayMeasure8: TDBText
          Left = 580
          Top = 84
          Width = 29
          Height = 13
          DataField = '_MEASURE_ABBREV'
          DataSource = dsData
        end
        object edtOurOfferQuantity: TDBEdit
          Left = 104
          Top = 32
          Width = 89
          Height = 21
          DataField = 'OUR_OFFER_QUANTITY'
          DataSource = dsData
          TabOrder = 0
        end
        object edtClientOfferQuantity: TDBEdit
          Left = 104
          Top = 56
          Width = 89
          Height = 21
          DataField = 'CL_OFFER_QUANTITY'
          DataSource = dsData
          TabOrder = 4
        end
        object edtQuantity3: TDBEdit
          Left = 104
          Top = 80
          Width = 89
          Height = 21
          DataField = 'QUANTITY'
          DataSource = dsData
          TabOrder = 8
        end
        object edtOurOfferAccountQuantity: TDBEdit
          Left = 232
          Top = 32
          Width = 89
          Height = 21
          DataField = 'ACCOUNT_OUR_OFFER_QUANTITY'
          DataSource = dsData
          TabOrder = 1
        end
        object edtClientOfferAccountQuantity: TDBEdit
          Left = 232
          Top = 56
          Width = 89
          Height = 21
          DataField = 'ACCOUNT_CL_OFFER_QUANTITY'
          DataSource = dsData
          TabOrder = 5
        end
        object edtAccountQuantity3: TDBEdit
          Left = 232
          Top = 80
          Width = 89
          Height = 21
          DataField = 'ACCOUNT_QUANTITY'
          DataSource = dsData
          TabOrder = 9
        end
        object edtOurOfferSinglePrice: TDBEdit
          Left = 456
          Top = 32
          Width = 57
          Height = 21
          DataField = 'OUR_OFFER_SINGLE_PRICE'
          DataSource = dsData
          TabOrder = 2
        end
        object edtClientOfferSinglePrice: TDBEdit
          Left = 456
          Top = 56
          Width = 57
          Height = 21
          DataField = 'CL_OFFER_SINGLE_PRICE'
          DataSource = dsData
          TabOrder = 6
        end
        object edtSinglePrice3: TDBEdit
          Left = 456
          Top = 80
          Width = 57
          Height = 21
          DataField = 'SINGLE_PRICE'
          DataSource = dsData
          TabOrder = 10
        end
        object cbOurOfferCurrency: TJvDBLookupCombo
          Left = 520
          Top = 32
          Width = 49
          Height = 21
          DataField = '_OUR_OFFER_CURRENCY_ABBREV'
          DataSource = dsData
          DisplayEmpty = ' '
          TabOrder = 3
        end
        object cbClientOfferCurrency: TJvDBLookupCombo
          Left = 520
          Top = 56
          Width = 49
          Height = 21
          DataField = '_CL_OFFER_CURRENCY_ABBREV'
          DataSource = dsData
          DisplayEmpty = ' '
          TabOrder = 7
        end
        object cbCurrency3: TJvDBLookupCombo
          Left = 520
          Top = 80
          Width = 49
          Height = 21
          DataField = '_CURRENCY_ABBREV'
          DataSource = dsData
          DisplayEmpty = ' '
          TabOrder = 11
        end
      end
      object gbTotalPrices: TGroupBox
        Left = 640
        Top = 80
        Width = 121
        Height = 113
        Caption = ' '#1054#1073#1097#1072' '#1057#1098#1075#1083'. '#1057#1090'-'#1089#1090' '
        TabOrder = 2
        object dbtCurrency3: TDBText
          Left = 84
          Top = 35
          Width = 31
          Height = 15
          DataField = '_CURRENCY_ABBREV'
          DataSource = dsData
        end
        object lblSecondaryCurrencyAbbrev6: TLabel
          Left = 84
          Top = 76
          Width = 51
          Height = 13
          Caption = '%SecCur%'
        end
        object edtTotalPrice3: TDBEdit
          Left = 8
          Top = 32
          Width = 73
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_SALE_TOTAL_PRICE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 0
        end
        object edtTotalPriceSC3: TDBEdit
          Left = 8
          Top = 72
          Width = 73
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_SALE_TOTAL_PRICE_SC'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 1
        end
      end
    end
    object gbPlanDialogLease: TGroupBox
      Left = 0
      Top = 418
      Width = 777
      Height = 209
      Align = alTop
      Caption = ' '#1044#1080#1072#1083#1086#1075' - '#1040#1089#1087#1077#1082#1090' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072' '
      TabOrder = 1
      object lblPrognosisInterval2: TLabel
        Left = 17
        Top = 24
        Width = 125
        Height = 13
        Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072
      end
      inline frPrognosis2: TfrDateIntervalFrame
        Left = 16
        Top = 40
        Width = 145
        Height = 21
        Constraints.MaxHeight = 21
        Constraints.MaxWidth = 145
        Constraints.MinHeight = 21
        Constraints.MinWidth = 145
        TabOrder = 0
        TabStop = True
      end
      object gbQuantitiesAndPrices2: TGroupBox
        Left = 16
        Top = 80
        Width = 625
        Height = 113
        Caption = ' '#1055#1086#1079#1080#1094#1080#1080' '#1087#1086' '#1044#1080#1072#1083#1086#1075' '
        TabOrder = 1
        object lblOfferLeaseDateUnitQty: TLabel
          Left = 209
          Top = 16
          Width = 22
          Height = 13
          Caption = #1050'-'#1074#1086
        end
        object lblOfferSinglePrice2: TLabel
          Left = 449
          Top = 16
          Width = 67
          Height = 13
          Caption = #1045#1076'. '#1053#1084'. '#1062#1077#1085#1072
        end
        object lblOfferCurrency2: TLabel
          Left = 529
          Top = 16
          Width = 35
          Height = 13
          Caption = #1042#1072#1083#1091#1090#1072
        end
        object lblOurOffer2: TLabel
          Left = 9
          Top = 36
          Width = 29
          Height = 13
          Caption = #1048#1055
        end
        object lblClientOffer2: TLabel
          Left = 9
          Top = 60
          Width = 36
          Height = 13
          Caption = #1050#1083#1080#1077#1085#1090
        end
        object lblCoherence2: TLabel
          Left = 9
          Top = 84
          Width = 66
          Height = 13
          Caption = #1057#1098#1075#1083#1072#1089#1091#1074#1072#1085#1086
        end
        object lblOfferLeaseDateUnit: TLabel
          Left = 249
          Top = 16
          Width = 80
          Height = 13
          Caption = #1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072
        end
        object lblOfferTotalLeaseQuantity: TLabel
          Left = 345
          Top = 16
          Width = 86
          Height = 13
          Caption = #1050'-'#1074#1086' '#1056#1072#1073'. '#1056#1077#1089#1091#1088#1089
        end
        object lblSlash3: TLabel
          Left = 580
          Top = 36
          Width = 5
          Height = 13
          Caption = '/'
        end
        object dbtDisplayMeasure3: TDBText
          Left = 588
          Top = 36
          Width = 29
          Height = 13
          DataField = '_MEASURE_ABBREV'
          DataSource = dsData
        end
        object lblSlash4: TLabel
          Left = 580
          Top = 60
          Width = 5
          Height = 13
          Caption = '/'
        end
        object dbtDisplayMeasure4: TDBText
          Left = 588
          Top = 60
          Width = 29
          Height = 13
          DataField = '_MEASURE_ABBREV'
          DataSource = dsData
        end
        object lblSlash5: TLabel
          Left = 580
          Top = 84
          Width = 5
          Height = 13
          Caption = '/'
        end
        object dbtDisplayMeasure5: TDBText
          Left = 588
          Top = 84
          Width = 29
          Height = 13
          DataField = '_MEASURE_ABBREV'
          DataSource = dsData
        end
        object edtOurOfferLeaseDateUnitQty: TDBEdit
          Left = 208
          Top = 32
          Width = 33
          Height = 21
          DataField = 'OUR_OFFER_LEASE_DATE_UNIT_QTY'
          DataSource = dsData
          TabOrder = 1
        end
        object edtClientOfferLeaseDateUnitQty: TDBEdit
          Left = 208
          Top = 56
          Width = 33
          Height = 21
          DataField = 'CL_OFFER_LEASE_DATE_UNIT_QTY'
          DataSource = dsData
          TabOrder = 6
        end
        object edtLeaseDateUnitQty2: TDBEdit
          Left = 208
          Top = 80
          Width = 33
          Height = 21
          DataField = 'LEASE_DATE_UNIT_QTY'
          DataSource = dsData
          TabOrder = 11
        end
        object edtOurOfferSinglePrice2: TDBEdit
          Left = 448
          Top = 32
          Width = 73
          Height = 21
          DataField = 'OUR_OFFER_SINGLE_PRICE'
          DataSource = dsData
          TabOrder = 4
        end
        object edtClientOfferSinglePrice2: TDBEdit
          Left = 448
          Top = 56
          Width = 73
          Height = 21
          DataField = 'CL_OFFER_SINGLE_PRICE'
          DataSource = dsData
          TabOrder = 9
        end
        object edtSinglePrice4: TDBEdit
          Left = 448
          Top = 80
          Width = 73
          Height = 21
          DataField = 'SINGLE_PRICE'
          DataSource = dsData
          TabOrder = 14
        end
        object cbOurOfferCurrency2: TJvDBLookupCombo
          Left = 528
          Top = 32
          Width = 49
          Height = 21
          DataField = '_OUR_OFFER_CURRENCY_ABBREV'
          DataSource = dsData
          DisplayEmpty = ' '
          TabOrder = 5
        end
        object cbClientOfferCurrency2: TJvDBLookupCombo
          Left = 528
          Top = 56
          Width = 49
          Height = 21
          DataField = '_CL_OFFER_CURRENCY_ABBREV'
          DataSource = dsData
          DisplayEmpty = ' '
          TabOrder = 10
        end
        object cbCurrency4: TJvDBLookupCombo
          Left = 528
          Top = 80
          Width = 49
          Height = 21
          DataField = '_CURRENCY_ABBREV'
          DataSource = dsData
          DisplayEmpty = ' '
          TabOrder = 15
        end
        object cbLeaseDateUnit: TJvDBLookupCombo
          Left = 248
          Top = 80
          Width = 89
          Height = 21
          DataField = 'LEASE_DATE_UNIT_CODE'
          DataSource = dsData
          DisplayEmpty = ' '
          LookupField = 'THE_DATE_UNIT_CODE'
          LookupDisplay = 'THE_DATE_UNIT_NAME'
          LookupSource = dsDateUnits
          TabOrder = 12
        end
        object edtTotalLeaseQuantity2: TDBEdit
          Left = 344
          Top = 80
          Width = 89
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_TOTAL_LEASE_QUANTITY'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 13
        end
        object cbClientOfferLeaseDateUnit: TJvDBLookupCombo
          Left = 248
          Top = 56
          Width = 89
          Height = 21
          DataField = 'CL_OFFER_LEASE_DATE_UNIT_CODE'
          DataSource = dsData
          DisplayEmpty = ' '
          LookupField = 'THE_DATE_UNIT_CODE'
          LookupDisplay = 'THE_DATE_UNIT_NAME'
          LookupSource = dsDateUnits
          TabOrder = 7
        end
        object edtClientOfferTotalLeaseQuantity: TDBEdit
          Left = 344
          Top = 56
          Width = 89
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_CL_OFFER_TOTAL_LEASE_QUANTITY'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 8
        end
        object cbOurOfferLeaseDateUnit: TJvDBLookupCombo
          Left = 248
          Top = 32
          Width = 89
          Height = 21
          DataField = 'OUR_OFFER_LEASE_DATE_UNIT_CODE'
          DataSource = dsData
          DisplayEmpty = ' '
          LookupField = 'THE_DATE_UNIT_CODE'
          LookupDisplay = 'THE_DATE_UNIT_NAME'
          LookupSource = dsDateUnits
          TabOrder = 2
        end
        object edtOurOfferTotalLeaseQuantity: TDBEdit
          Left = 344
          Top = 32
          Width = 89
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_OUR_OFFER_TOTAL_LEASE_QUANTITY'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 3
        end
        object pnlLeaseEstimation: TPanel
          Left = 96
          Top = 16
          Width = 105
          Height = 89
          BevelOuter = bvNone
          TabOrder = 0
          object pnlLeaseEstimationWork: TPanel
            Left = 0
            Top = 0
            Width = 105
            Height = 89
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object lblOfferQuantity2: TLabel
              Left = 1
              Top = 0
              Width = 46
              Height = 13
              Caption = #1056#1072#1073'. '#1082'-'#1074#1086
            end
            object dbtMeasure6: TDBText
              Left = 68
              Top = 20
              Width = 31
              Height = 15
              DataField = '_MEASURE_ABBREV'
              DataSource = dsData
            end
            object dbtMeasure7: TDBText
              Left = 68
              Top = 44
              Width = 31
              Height = 15
              DataField = '_MEASURE_ABBREV'
              DataSource = dsData
            end
            object dbtMeasure8: TDBText
              Left = 68
              Top = 69
              Width = 31
              Height = 15
              DataField = '_MEASURE_ABBREV'
              DataSource = dsData
            end
            object edtOurOfferQuantity2: TDBEdit
              Left = 0
              Top = 16
              Width = 65
              Height = 21
              DataField = 'OUR_OFFER_QUANTITY'
              DataSource = dsData
              TabOrder = 0
            end
            object edtClientOfferQuantity2: TDBEdit
              Left = 0
              Top = 40
              Width = 65
              Height = 21
              DataField = 'CL_OFFER_QUANTITY'
              DataSource = dsData
              TabOrder = 1
            end
            object edtQuantity4: TDBEdit
              Left = 0
              Top = 64
              Width = 65
              Height = 21
              DataField = 'QUANTITY'
              DataSource = dsData
              TabOrder = 2
            end
          end
          object pnlLeaseEstimationAccount: TPanel
            Left = 105
            Top = 0
            Width = 104
            Height = 89
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object lblAccountQuantity3: TLabel
              Left = 1
              Top = 0
              Width = 50
              Height = 13
              Caption = #1057#1095#1077#1090'. '#1082'-'#1074#1086
            end
            object dbtAccountMeasure6: TDBText
              Left = 68
              Top = 20
              Width = 31
              Height = 15
              DataField = '_ACCOUNT_MEASURE_ABBREV'
              DataSource = dsData
            end
            object dbtAccountMeasure7: TDBText
              Left = 68
              Top = 44
              Width = 31
              Height = 15
              DataField = '_ACCOUNT_MEASURE_ABBREV'
              DataSource = dsData
            end
            object dbtAccountMeasure8: TDBText
              Left = 68
              Top = 69
              Width = 31
              Height = 15
              DataField = '_ACCOUNT_MEASURE_ABBREV'
              DataSource = dsData
            end
            object edtAccountOurOfferQuantity: TDBEdit
              Left = 0
              Top = 16
              Width = 65
              Height = 21
              DataField = 'ACCOUNT_OUR_OFFER_QUANTITY'
              DataSource = dsData
              TabOrder = 0
            end
            object edtAccountClientOfferQuantity: TDBEdit
              Left = 0
              Top = 40
              Width = 65
              Height = 21
              DataField = 'ACCOUNT_CL_OFFER_QUANTITY'
              DataSource = dsData
              TabOrder = 1
            end
            object edtAccountQuantity4: TDBEdit
              Left = 0
              Top = 64
              Width = 65
              Height = 21
              DataField = 'ACCOUNT_QUANTITY'
              DataSource = dsData
              TabOrder = 2
            end
          end
        end
      end
      object gbTotalPrices2: TGroupBox
        Left = 648
        Top = 80
        Width = 113
        Height = 113
        Caption = ' '#1054#1073#1097#1072' '#1057#1098#1075#1083'. '#1057#1090'-'#1089#1090' '
        TabOrder = 2
        object dbtCurrency4: TDBText
          Left = 76
          Top = 35
          Width = 31
          Height = 15
          DataField = '_CURRENCY_ABBREV'
          DataSource = dsData
        end
        object lblSecondaryCurrencyAbbrev7: TLabel
          Left = 76
          Top = 76
          Width = 51
          Height = 13
          Caption = '%SecCur%'
        end
        object edtTotalPrice4: TDBEdit
          Left = 8
          Top = 32
          Width = 65
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_SALE_TOTAL_PRICE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 0
        end
        object edtTotalPriceSC4: TDBEdit
          Left = 8
          Top = 72
          Width = 65
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_SALE_TOTAL_PRICE_SC'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 1
        end
      end
    end
    object gbRealDialogSale: TGroupBox
      Left = 0
      Top = 209
      Width = 777
      Height = 209
      Align = alTop
      Caption = ' '#1044#1080#1072#1083#1086#1075' - '#1040#1089#1087#1077#1082#1090' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103'  '
      TabOrder = 2
      object gbReceiveDate: TGroupBox
        Left = 8
        Top = 32
        Width = 121
        Height = 153
        Caption = ' '#1044#1072#1090#1072' '#1085#1072' '#1055#1086#1083#1091#1095'. '
        TabOrder = 0
        object lblReceiveDate: TLabel
          Left = 9
          Top = 24
          Width = 62
          Height = 13
          Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1072
        end
        object lblReceiveDateClientOffered: TLabel
          Left = 9
          Top = 104
          Width = 50
          Height = 13
          Caption = #1055#1086#1080#1089#1082#1072#1085#1072
        end
        inline frReceiveDate: TfrDateFieldEditFrame
          Left = 8
          Top = 40
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 0
          TabStop = True
        end
        inline frReceiveDateClientOffered: TfrDateFieldEditFrame
          Left = 8
          Top = 120
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 1
          TabStop = True
        end
      end
      object gbQuantity: TGroupBox
        Left = 136
        Top = 32
        Width = 249
        Height = 73
        Caption = ' '#1044#1086#1075#1086#1074#1086#1088#1077#1085#1086' '#1050'-'#1074#1086' %ProductClassAbbrev% '
        TabOrder = 1
        object lblQuantity: TLabel
          Left = 9
          Top = 24
          Width = 42
          Height = 13
          Caption = #1056#1072#1073#1086#1090#1085#1086
        end
        object lblAccountQuantity: TLabel
          Left = 129
          Top = 24
          Width = 59
          Height = 13
          Caption = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1086
        end
        object dbtMeasure: TDBText
          Left = 84
          Top = 43
          Width = 31
          Height = 15
          DataField = '_MEASURE_ABBREV'
          DataSource = dsData
        end
        object dbtAccountMeasure: TDBText
          Left = 204
          Top = 43
          Width = 31
          Height = 15
          DataField = '_ACCOUNT_MEASURE_ABBREV'
          DataSource = dsData
        end
        object edtQuantity: TDBEdit
          Left = 8
          Top = 40
          Width = 73
          Height = 21
          DataField = 'QUANTITY'
          DataSource = dsData
          TabOrder = 0
        end
        object edtAccountQuantity: TDBEdit
          Left = 128
          Top = 40
          Width = 73
          Height = 21
          TabStop = False
          DataField = 'ACCOUNT_QUANTITY'
          DataSource = dsData
          TabOrder = 1
        end
      end
      object gbPlanShipmentDate: TGroupBox
        Left = 136
        Top = 112
        Width = 121
        Height = 73
        Caption = ' '#1055#1083#1072#1085'. '#1076#1072#1090#1072' '#1079#1072' '#1045#1082#1089#1087'. '
        TabOrder = 3
        inline frShipmentDate: TfrDateFieldEditFrame
          Left = 8
          Top = 40
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 0
          TabStop = True
        end
      end
      object gbPrices: TGroupBox
        Left = 392
        Top = 32
        Width = 377
        Height = 73
        Caption = ' '#1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '
        TabOrder = 2
        object lblSinglePrice: TLabel
          Left = 9
          Top = 24
          Width = 45
          Height = 13
          Caption = #1045#1076'. '#1062#1077#1085#1072
        end
        object lblCurrency: TLabel
          Left = 73
          Top = 24
          Width = 35
          Height = 13
          Caption = #1042#1072#1083#1091#1090#1072
        end
        object lblTotalPrice2: TLabel
          Left = 177
          Top = 24
          Width = 57
          Height = 13
          Caption = #1054#1073#1097#1072' '#1089#1090'-'#1089#1090
        end
        object dbtCurrency: TDBText
          Left = 236
          Top = 43
          Width = 31
          Height = 15
          DataField = '_CURRENCY_ABBREV'
          DataSource = dsData
        end
        object lblSecondaryCurrencyAbbrev4: TLabel
          Left = 341
          Top = 44
          Width = 51
          Height = 13
          Caption = '%SecCur%'
        end
        object lblSlash2: TLabel
          Left = 124
          Top = 43
          Width = 5
          Height = 13
          Caption = '/'
        end
        object dbtDisplayMeasure2: TDBText
          Left = 132
          Top = 43
          Width = 29
          Height = 13
          DataField = '_MEASURE_ABBREV'
          DataSource = dsData
        end
        object edtSinglePrice: TDBEdit
          Left = 8
          Top = 40
          Width = 57
          Height = 21
          DataField = 'SINGLE_PRICE'
          DataSource = dsData
          TabOrder = 0
        end
        object cbCurrency: TJvDBLookupCombo
          Left = 72
          Top = 40
          Width = 49
          Height = 21
          DataField = '_CURRENCY_ABBREV'
          DataSource = dsData
          DisplayEmpty = ' '
          TabOrder = 1
        end
        object edtTotalPrice: TDBEdit
          Left = 176
          Top = 40
          Width = 57
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_SALE_TOTAL_PRICE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 2
        end
        object edtTotalPriceSC: TDBEdit
          Left = 280
          Top = 40
          Width = 57
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_SALE_TOTAL_PRICE_SC'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 3
        end
      end
      object gbSale: TGroupBox
        Left = 264
        Top = 112
        Width = 297
        Height = 73
        Caption = ' '#1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1055#1088#1086#1076#1072#1078#1073#1072' ('#1054#1055#1055') '
        TabOrder = 4
        object lblSaleDealType2: TLabel
          Left = 9
          Top = 24
          Width = 19
          Height = 13
          Caption = #1058#1080#1087
        end
        object lblSaleBranch: TLabel
          Left = 56
          Top = 24
          Width = 51
          Height = 13
          Caption = #1058#1055' '#1043#1083'.'
        end
        object lblSaleNo: TLabel
          Left = 112
          Top = 24
          Width = 41
          Height = 13
          Caption = #1054#1055#1055' No'
        end
        object lblSaleTypeCode: TLabel
          Left = 168
          Top = 24
          Width = 19
          Height = 13
          Caption = #1042#1080#1076
        end
        object lblPriority: TLabel
          Left = 208
          Top = 24
          Width = 35
          Height = 13
          Caption = #1055#1088#1080#1086#1088'.'
        end
        object cbSaleDealType2: TJvDBLookupCombo
          Left = 8
          Top = 40
          Width = 41
          Height = 21
          DropDownWidth = 250
          DeleteKeyClear = False
          DisplayAllFields = True
          Color = clBtnFace
          DataField = 'SALE_DEAL_TYPE_CODE'
          DataSource = dsData
          LookupField = 'SALE_DEAL_TYPE_CODE'
          LookupDisplay = 'SALE_DEAL_TYPE_ABBREV;SALE_DEAL_TYPE_NAME'
          LookupSource = dsSaleDealTypes
          ReadOnly = True
          TabOrder = 0
          TabStop = False
        end
        object cbSaleBranch: TJvDBLookupCombo
          Left = 56
          Top = 40
          Width = 57
          Height = 21
          DataField = 'SALE_BRANCH_CODE'
          DataSource = dsData
          DisplayEmpty = ' '
          LookupField = 'BRANCH_CODE'
          LookupDisplay = 'BRANCH_IDENTIFIER'
          LookupSource = dsBranches
          TabOrder = 1
        end
        object edtSaleNo: TDBEdit
          Left = 112
          Top = 40
          Width = 49
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'SALE_NO'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 2
        end
        object cbSaleTypeCode: TJvDBLookupCombo
          Left = 168
          Top = 40
          Width = 33
          Height = 21
          DataField = 'SALE_TYPE_CODE'
          DataSource = dsData
          DisplayEmpty = ' '
          LookupField = 'SALE_TYPE_CODE'
          LookupDisplay = 'SALE_TYPE_ABBREV'
          LookupSource = dsSaleTypes
          TabOrder = 3
        end
        object cbPriority: TJvDBLookupCombo
          Left = 208
          Top = 40
          Width = 41
          Height = 21
          DataField = 'SALE_PRIORITY_CODE'
          DataSource = dsData
          DisplayEmpty = ' '
          LookupField = 'PRIORITY_CODE'
          LookupDisplay = 'PRIORITY_NO'
          LookupSource = dsPriorities
          TabOrder = 4
        end
        object btnSale: TButton
          Left = 256
          Top = 37
          Width = 33
          Height = 25
          Action = actSale
          TabOrder = 5
        end
      end
      object gbDelivery: TGroupBox
        Left = 568
        Top = 118
        Width = 201
        Height = 67
        TabOrder = 5
        object lblDCDBranch: TLabel
          Left = 8
          Top = 18
          Width = 51
          Height = 13
          Caption = #1058#1055' '#1043#1083'.'
        end
        object lblDCDCode: TLabel
          Left = 72
          Top = 18
          Width = 43
          Height = 13
          Caption = #1055#1044#1044' No'
        end
        object lblDeliveryProjectCode: TLabel
          Left = 128
          Top = 18
          Width = 14
          Height = 13
          Caption = 'No'
        end
        object cbDCDBranch: TJvDBLookupCombo
          Left = 8
          Top = 34
          Width = 57
          Height = 21
          DataField = 'DCD_BRANCH_CODE'
          DataSource = dsDeliveryID
          DisplayEmpty = ' '
          LookupField = 'BRANCH_CODE'
          LookupDisplay = 'BRANCH_IDENTIFIER'
          LookupSource = dsBranches
          TabOrder = 0
          OnExit = cbDCDBranchExit
        end
        object edtDCDCode: TDBEdit
          Left = 72
          Top = 34
          Width = 49
          Height = 21
          TabStop = False
          DataField = 'DCD_CODE'
          DataSource = dsDeliveryID
          TabOrder = 1
          OnExit = edtDCDCodeExit
        end
        object btnDelivery: TButton
          Left = 160
          Top = 31
          Width = 33
          Height = 25
          Action = actDelivery
          TabOrder = 3
        end
        object edtDeliveryProjectCode: TDBEdit
          Left = 128
          Top = 34
          Width = 25
          Height = 21
          TabStop = False
          DataField = 'DELIVERY_PROJECT_CODE'
          DataSource = dsDeliveryID
          TabOrder = 2
          OnExit = edtDeliveryProjectCodeExit
        end
      end
      object pnlIsDeliveryRequired: TPanel
        Left = 576
        Top = 110
        Width = 129
        Height = 17
        BevelOuter = bvNone
        TabOrder = 6
        object chkIsDeliveryRequired: TCheckBox
          Left = 4
          Top = 0
          Width = 125
          Height = 17
          Action = actIsDeliveryRequired
          TabOrder = 0
        end
      end
    end
    object gbRealDialogLease: TGroupBox
      Left = 0
      Top = 0
      Width = 777
      Height = 209
      Align = alTop
      Caption = ' '#1044#1080#1072#1083#1086#1075' - '#1040#1089#1087#1077#1082#1090' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103'  '
      TabOrder = 3
      object gbLeaseDates: TGroupBox
        Left = 8
        Top = 32
        Width = 161
        Height = 153
        Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1053#1072#1077#1084' '
        TabOrder = 0
        object lblLeaseDatesInterval: TLabel
          Left = 9
          Top = 24
          Width = 56
          Height = 13
          Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085
        end
        object lblLeaseDatesIntervalClientOffered: TLabel
          Left = 9
          Top = 104
          Width = 44
          Height = 13
          Caption = #1055#1086#1080#1089#1082#1072#1085
        end
        inline frLeaseDatesInterval: TfrDateIntervalFrame
          Left = 8
          Top = 40
          Width = 145
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 145
          Constraints.MinHeight = 21
          Constraints.MinWidth = 145
          TabOrder = 0
          TabStop = True
        end
        inline frLeaseDatesIntervalClientOffered: TfrDateIntervalFrame
          Left = 8
          Top = 120
          Width = 145
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 145
          Constraints.MinHeight = 21
          Constraints.MinWidth = 145
          TabOrder = 1
          TabStop = True
        end
      end
      object gbContractedLeaseConditions: TGroupBox
        Left = 176
        Top = 32
        Width = 305
        Height = 73
        Caption = ' '#1044#1086#1075#1086#1074#1086#1088#1077#1085#1086' '#1050'-'#1074#1086' '#1056#1072#1073#1086#1090#1077#1085' '#1056#1077#1089#1091#1088#1089' '
        TabOrder = 1
        object lblLeaseDateUnitQty: TLabel
          Left = 105
          Top = 24
          Width = 22
          Height = 13
          Caption = #1050'-'#1074#1086
        end
        object lblFor2: TLabel
          Left = 89
          Top = 43
          Width = 12
          Height = 13
          Caption = #1079#1072
        end
        object lblDateUnit: TLabel
          Left = 137
          Top = 24
          Width = 37
          Height = 13
          Caption = #1053#1084'. '#1057#1090'.'
        end
        object lblTotalLeaseQuantity: TLabel
          Left = 209
          Top = 24
          Width = 86
          Height = 13
          Caption = #1050'-'#1074#1086' '#1056#1072#1073'. '#1056#1077#1089#1091#1088#1089
        end
        object edtLeaseDateUnitQty: TDBEdit
          Left = 104
          Top = 40
          Width = 33
          Height = 21
          DataField = 'LEASE_DATE_UNIT_QTY'
          DataSource = dsData
          TabOrder = 1
        end
        object cbDateUnit: TJvDBLookupCombo
          Left = 136
          Top = 40
          Width = 65
          Height = 21
          DataField = 'LEASE_DATE_UNIT_CODE'
          DataSource = dsData
          DisplayEmpty = ' '
          LookupField = 'THE_DATE_UNIT_CODE'
          LookupDisplay = 'THE_DATE_UNIT_NAME'
          LookupSource = dsDateUnits
          TabOrder = 2
        end
        object edtTotalLeaseQuantity: TDBEdit
          Left = 208
          Top = 40
          Width = 89
          Height = 21
          Color = clBtnFace
          DataField = '_TOTAL_LEASE_QUANTITY'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 3
        end
        object pnlLeaseRealization: TPanel
          Left = 8
          Top = 16
          Width = 81
          Height = 49
          BevelOuter = bvNone
          TabOrder = 0
          object pnlLeaseRealizationWork: TPanel
            Left = 0
            Top = 0
            Width = 81
            Height = 49
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object lblQuantity2: TLabel
              Left = 0
              Top = 8
              Width = 42
              Height = 13
              Caption = #1056#1072#1073#1086#1090#1085#1086
            end
            object dbtMeasure2: TDBText
              Left = 52
              Top = 28
              Width = 26
              Height = 15
              DataField = '_MEASURE_ABBREV'
              DataSource = dsData
            end
            object edtQuantity2: TDBEdit
              Left = 0
              Top = 24
              Width = 49
              Height = 21
              DataField = 'QUANTITY'
              DataSource = dsData
              TabOrder = 0
            end
          end
          object pnlLeaseRealizationAccount: TPanel
            Left = 81
            Top = 0
            Width = 81
            Height = 49
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object lblAccountQuantity2: TLabel
              Left = 0
              Top = 8
              Width = 26
              Height = 13
              Caption = #1057#1095#1077#1090'.'
            end
            object dbtAccountMeasure5: TDBText
              Left = 52
              Top = 28
              Width = 26
              Height = 15
              DataField = '_ACCOUNT_MEASURE_ABBREV'
              DataSource = dsData
            end
            object edtAccountQuantity2: TDBEdit
              Left = 0
              Top = 24
              Width = 49
              Height = 21
              DataField = 'ACCOUNT_QUANTITY'
              DataSource = dsData
              TabOrder = 0
            end
          end
        end
      end
      object gbContractedPrices: TGroupBox
        Left = 488
        Top = 32
        Width = 281
        Height = 73
        Caption = ' '#1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '
        TabOrder = 2
        object lblSinglePrice2: TLabel
          Left = 9
          Top = 24
          Width = 45
          Height = 13
          Caption = #1045#1076'. '#1062#1077#1085#1072
        end
        object lblCurrency2: TLabel
          Left = 65
          Top = 24
          Width = 35
          Height = 13
          Caption = #1042#1072#1083#1091#1090#1072
        end
        object lblTotalPrice: TLabel
          Left = 169
          Top = 8
          Width = 79
          Height = 13
          Caption = #1054#1073#1097#1072' '#1057#1090#1086#1081#1085#1086#1089#1090
        end
        object dbtCurrency2: TDBText
          Left = 152
          Top = 24
          Width = 63
          Height = 13
          Alignment = taCenter
          AutoSize = True
          DataField = '_CURRENCY_ABBREV'
          DataSource = dsData
        end
        object lblSecondaryCurrencyAbbrev5: TLabel
          Left = 216
          Top = 24
          Width = 57
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = '%SecCur%'
        end
        object lblSlash: TLabel
          Left = 116
          Top = 43
          Width = 5
          Height = 13
          Caption = '/'
        end
        object dbtDisplayMeasure: TDBText
          Left = 124
          Top = 43
          Width = 29
          Height = 13
          DataField = '_MEASURE_ABBREV'
          DataSource = dsData
        end
        object edtSinglePrice2: TDBEdit
          Left = 8
          Top = 40
          Width = 49
          Height = 21
          DataField = 'SINGLE_PRICE'
          DataSource = dsData
          TabOrder = 0
        end
        object cbCurrency2: TJvDBLookupCombo
          Left = 64
          Top = 40
          Width = 49
          Height = 21
          DataField = 'CURRENCY_CODE'
          DataSource = dsData
          DisplayEmpty = ' '
          LookupField = 'CURRENCY_CODE'
          LookupDisplay = 'CURRENCY_ABBREV'
          LookupSource = dsCurrencies
          TabOrder = 1
        end
        object edtTotalPrice2: TDBEdit
          Left = 152
          Top = 40
          Width = 57
          Height = 21
          Color = clBtnFace
          DataField = '_SALE_TOTAL_PRICE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 2
        end
        object edtTotalPriceSC2: TDBEdit
          Left = 216
          Top = 40
          Width = 57
          Height = 21
          Color = clBtnFace
          DataField = '_SALE_TOTAL_PRICE_SC'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 3
        end
      end
      object gbSaleShipmentDate: TGroupBox
        Left = 176
        Top = 112
        Width = 137
        Height = 73
        Caption = ' '#1055#1083#1072#1085'. '#1076#1072#1090#1072' '#1079#1072' '#1045#1082#1089#1087'. '
        TabOrder = 3
        inline frShipmentDate2: TfrDateFieldEditFrame
          Left = 16
          Top = 40
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 0
          TabStop = True
        end
      end
      object gbImportDate: TGroupBox
        Left = 320
        Top = 112
        Width = 137
        Height = 73
        Caption = ' '#1055#1083#1072#1085'. '#1076#1072#1090#1072' '#1079#1072' '#1042#1088#1097'.  '
        TabOrder = 4
        inline frImportDate: TfrDateFieldEditFrame
          Left = 16
          Top = 40
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 0
          TabStop = True
        end
      end
      object gbSale2: TGroupBox
        Left = 464
        Top = 112
        Width = 305
        Height = 73
        Caption = ' '#1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1055#1088#1086#1076#1072#1078#1073#1072' ('#1054#1055#1055') '
        TabOrder = 5
        object lblSaleDealType3: TLabel
          Left = 9
          Top = 24
          Width = 19
          Height = 13
          Caption = #1058#1080#1087
        end
        object lblSaleBranch2: TLabel
          Left = 56
          Top = 24
          Width = 51
          Height = 13
          Caption = #1058#1055' '#1043#1083'.'
        end
        object lblSaleNo2: TLabel
          Left = 120
          Top = 24
          Width = 41
          Height = 13
          Caption = #1054#1055#1055' No'
        end
        object lblSaleTypeCode2: TLabel
          Left = 176
          Top = 24
          Width = 19
          Height = 13
          Caption = #1042#1080#1076
        end
        object lblPriority2: TLabel
          Left = 216
          Top = 24
          Width = 35
          Height = 13
          Caption = #1055#1088#1080#1086#1088'.'
        end
        object cbSaleDealType3: TJvDBLookupCombo
          Left = 8
          Top = 40
          Width = 41
          Height = 21
          DropDownWidth = 250
          DeleteKeyClear = False
          DisplayAllFields = True
          Color = clBtnFace
          DataField = 'SALE_DEAL_TYPE_CODE'
          DataSource = dsData
          LookupField = 'SALE_DEAL_TYPE_CODE'
          LookupDisplay = 'SALE_DEAL_TYPE_ABBREV;SALE_DEAL_TYPE_NAME'
          LookupSource = dsSaleDealTypes
          ReadOnly = True
          TabOrder = 0
        end
        object cbSaleBranch2: TJvDBLookupCombo
          Left = 56
          Top = 40
          Width = 57
          Height = 21
          DataField = 'SALE_BRANCH_CODE'
          DataSource = dsData
          DisplayEmpty = ' '
          LookupField = 'BRANCH_CODE'
          LookupDisplay = 'BRANCH_IDENTIFIER'
          LookupSource = dsBranches
          TabOrder = 1
        end
        object edtSaleNo2: TDBEdit
          Left = 120
          Top = 40
          Width = 49
          Height = 21
          Color = clBtnFace
          DataField = 'SALE_NO'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 2
        end
        object cbSaleTypeCode2: TJvDBLookupCombo
          Left = 176
          Top = 40
          Width = 33
          Height = 21
          DataField = 'SALE_TYPE_CODE'
          DataSource = dsData
          DisplayEmpty = ' '
          LookupField = 'SALE_TYPE_CODE'
          LookupDisplay = 'SALE_TYPE_ABBREV'
          LookupSource = dsSaleTypes
          TabOrder = 3
        end
        object cbPriority2: TJvDBLookupCombo
          Left = 216
          Top = 40
          Width = 41
          Height = 21
          DataField = 'SALE_PRIORITY_CODE'
          DataSource = dsData
          DisplayEmpty = ' '
          LookupField = 'PRIORITY_CODE'
          LookupDisplay = 'PRIORITY_NO'
          LookupSource = dsPriorities
          TabOrder = 4
        end
        object btnSale2: TButton
          Left = 264
          Top = 37
          Width = 33
          Height = 25
          Action = actSale
          TabOrder = 5
        end
      end
    end
  end
  object pnlAccountPricesButton: TPanel
    Left = 985
    Top = 93
    Width = 24
    Height = 45
    BevelOuter = bvNone
    TabOrder = 8
    object btnSinglePrice: TSpeedButton
      Left = 1
      Top = 0
      Width = 23
      Height = 22
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1088#1072#1073#1086#1090#1085#1080' '#1084'.'#1077#1076'./'#1082'-'#1074#1086'/'#1077#1076'.'#1094#1077#1085#1072
      GroupIndex = 1
      Down = True
      Flat = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDD0FF0DD9
        19D0D7000FF0DDD9190370FFFF0DDDD919330F00FF0DDDD9193300DD0F0DDDD9
        193D07DD0F0DDD99999DDD70F07DD011111DDD0007DD03330DDDDDDDDDD0333D
        0DDDDD00DD0333DD0DDDD0D0D0333DDD0DDD0D000333DDDD0DDD0000003DDDD7
        07DDDD00000DDDD707DDDD300007DDD707DDDD33D00000DDDDDD}
      ParentShowHint = False
      ShowHint = True
    end
    object btnAccountSinglePrice: TSpeedButton
      Left = 1
      Top = 22
      Width = 23
      Height = 22
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1089#1095#1077#1090#1086#1074#1086#1076#1085#1080' '#1084'.'#1077#1076'./'#1082'-'#1074#1086'/'#1077#1076'.'#1094#1077#1085#1072
      GroupIndex = 1
      Flat = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDD77D777777
        D770DDDDDDDDDDDD0007DDDDDDDDDDD08707DDDDDDDDDD08880DDDDDDDDDD033
        80DDDDDDDDDD033B0DDDDDDDDDD033B0DDDDDDDDDD033B0DDDDDDDDDD033B0DD
        DDDDDDDD033B0DDDDDDDDDD033B0DDDDDDDDDD030B0DDDDDDDDDD000B0DDDDDD
        DDDD01900DDDDDDDDDDD0990DDDDDDDDDDDDD00DDDDDDDDDDDDD}
      ParentShowHint = False
      ShowHint = True
    end
  end
  object gbID: TGroupBox
    Left = 8
    Top = 8
    Width = 601
    Height = 73
    Caption = ' ID '#1054#1073#1086#1089#1086#1073#1077#1085' '#1044#1080#1072#1083#1086#1075' '#1089' '#1050#1083#1080#1077#1085#1090' ('#1054#1044#1050') '
    TabOrder = 0
    object lblRequestBranch: TLabel
      Left = 88
      Top = 24
      Width = 51
      Height = 13
      Caption = #1058#1055' '#1043#1083'.'
    end
    object lblRequestNo: TLabel
      Left = 144
      Top = 24
      Width = 41
      Height = 13
      Caption = #1055#1044#1050' No'
    end
    object lblRequestLineNo: TLabel
      Left = 284
      Top = 24
      Width = 14
      Height = 13
      Caption = 'No'
    end
    object lblClientRequestNo: TLabel
      Left = 400
      Top = 24
      Width = 69
      Height = 13
      Caption = #1055#1072#1088#1090#1085'. '#1086#1079#1085#1072#1095'.'
    end
    object lblAspectType: TLabel
      Left = 480
      Top = 24
      Width = 36
      Height = 13
      Caption = #1040#1089#1087#1077#1082#1090
    end
    object lblStatus: TLabel
      Left = 8
      Top = 24
      Width = 34
      Height = 13
      Caption = #1057#1090#1072#1090#1091#1089
    end
    object lblSaleDealTypeAbbrev: TLabel
      Left = 56
      Top = 24
      Width = 19
      Height = 13
      Caption = #1058#1080#1087
    end
    object lblRequestInitiator: TLabel
      Left = 228
      Top = 24
      Width = 47
      Height = 13
      Caption = #1040#1082#1090#1080#1074'. '#1086#1090
    end
    object lblSaleCount: TLabel
      Left = 540
      Top = 8
      Width = 43
      Height = 13
      Caption = #1041#1088'. '#1054#1044#1050
    end
    object lblRealizationSaleCount: TLabel
      Left = 536
      Top = 24
      Width = 20
      Height = 13
      Caption = #1040#1056#1083
    end
    object lblPrognosisSaleCount: TLabel
      Left = 568
      Top = 24
      Width = 21
      Height = 13
      Caption = #1040#1055#1089
    end
    object lblStreamTypeAbbrev: TLabel
      Left = 360
      Top = 24
      Width = 31
      Height = 13
      Caption = #1055#1086#1090#1086#1082
    end
    object edtRequestBranch: TDBEdit
      Left = 88
      Top = 40
      Width = 57
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = '_REQUEST_BRANCH_IDENTIFIER'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 2
    end
    object edtRequestNo: TDBEdit
      Left = 144
      Top = 40
      Width = 41
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'REQUEST_NO'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 3
    end
    object edtRequestLineNo: TDBEdit
      Left = 284
      Top = 40
      Width = 33
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'REQUEST_LINE_NO'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 5
    end
    object cbAspectType: TJvDBLookupCombo
      Left = 480
      Top = 40
      Width = 49
      Height = 21
      DropDownWidth = 200
      DeleteKeyClear = False
      DisplayAllFields = True
      DataField = 'ASPECT_TYPE_CODE'
      DataSource = dsData
      DisplayEmpty = ' '
      LookupField = 'ASPECT_TYPE_CODE'
      LookupDisplay = 'ASPECT_TYPE_ABBREV;ASPECT_TYPE_NAME'
      LookupSource = dsAspectTypes
      TabOrder = 8
    end
    object edtClientRequestNo: TDBEdit
      Left = 400
      Top = 40
      Width = 73
      Height = 21
      DataField = 'CLIENT_REQUEST_NO'
      DataSource = dsData
      TabOrder = 7
    end
    object tbDocButton: TToolBar
      Left = 318
      Top = 39
      Width = 39
      Height = 22
      Align = alNone
      ButtonWidth = 36
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = dmMain.ilDocs
      TabOrder = 10
      object btnDocs: TToolButton
        Left = 0
        Top = 0
        Action = actDocumentation
        ParentShowHint = False
        ShowHint = True
      end
    end
    object edtStatus: TDBEdit
      Left = 8
      Top = 40
      Width = 41
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = '_STATUS_CODE'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 0
    end
    object edtSaleDealTypeAbbrev: TDBEdit
      Left = 56
      Top = 40
      Width = 25
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = '_SALE_DEAL_TYPE_ABBREV'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 1
    end
    object edtRequestInitiator: TDBEdit
      Left = 228
      Top = 40
      Width = 49
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'IS_ACTIVATED_BY_CLIENT'
      DataSource = dsSaleRequestGroup
      ReadOnly = True
      TabOrder = 4
    end
    object edtRealizationSaleCount: TDBEdit
      Left = 536
      Top = 40
      Width = 25
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'REALIZATION_SALE_COUNT'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 9
    end
    object edtPrognosisSaleCount: TDBEdit
      Left = 568
      Top = 40
      Width = 25
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'PROGNOSIS_SALE_COUNT'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 11
    end
    object edtStreamTypeAbbrev: TDBEdit
      Left = 360
      Top = 40
      Width = 33
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'STREAM_TYPE_ABBREV'
      DataSource = dsSaleRequestGroup
      ReadOnly = True
      TabOrder = 6
    end
    object tlbRequestDoc: TToolBar
      Left = 186
      Top = 39
      Width = 36
      Height = 22
      Align = alNone
      AutoSize = True
      ButtonWidth = 36
      Images = dmMain.ilDocs
      TabOrder = 12
      object btnRequestDoc: TToolButton
        Left = 0
        Top = 0
        Action = actRequestDoc
        ParentShowHint = False
        ShowHint = True
      end
    end
  end
  inline frProduct: TfrProductExFieldEditFrame
    Left = 272
    Top = 88
    Width = 713
    Height = 65
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 549
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TabStop = True
    inherited gbTreeNode: TGroupBox
      Width = 713
      inherited pnlTreeNode: TPanel
        Width = 11
        inherited pnlTreeNodeName: TPanel
          Width = 1
          DesignSize = (
            1
            32)
          inherited edtTreeNodeName: TDBEdit
            Width = 0
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = -171
        end
        inherited pnlRightButtons: TPanel
          Left = -48
        end
        inherited pnlProductLabels: TPanel
          Width = 11
        end
      end
      inherited pnlRight: TPanel
        Left = -59
      end
    end
  end
  inline frClient: TfrPartnerExFieldEditFrame
    Left = 616
    Top = 8
    Width = 393
    Height = 73
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 155
    Constraints.MinHeight = 49
    TabOrder = 1
    TabStop = True
    inherited gbPartner: TGroupBox
      Width = 393
      Height = 73
      Caption = ' '#1050#1083#1080#1077#1085#1090' '
      Padding.Top = 9
      inherited pnlNameAndButtons: TPanel
        Top = 24
        Width = 0
        Height = 47
        inherited pnlRightButtons: TPanel
          Left = -36
          Height = 32
          inherited tlbDocButton: TToolBar
            Height = 32
          end
        end
        inherited pnlPartnerName: TPanel
          Width = 4
          Height = 32
          DesignSize = (
            4
            32)
          inherited edtPartnerName: TDBEdit
            Width = 0
          end
          inherited cbPartner: TJvDBLookupCombo
            Width = 5
          end
        end
        inherited pnlNameAndButtonsTop: TPanel
          Width = 0
          inherited lblPartner: TLabel
            Width = 76
          end
        end
      end
      inherited pnlPaddingRight: TPanel
        Left = 272
        Top = 24
        Height = 47
      end
      inherited pnlPartnerCode: TPanel
        Top = 24
        Height = 47
        DesignSize = (
          73
          47)
        inherited lblPartnerCode: TLabel
          Width = 19
        end
      end
      inherited pnlPaddingLeft: TPanel
        Top = 24
        Height = 47
      end
      inherited frPartnerStatus: TfrCompanyStatus
        Top = 24
        Height = 47
        Constraints.MaxHeight = 47
        inherited lblCurrentStatus: TLabel
          Width = 34
        end
        inherited lblReachMonths: TLabel
          Width = 6
        end
        inherited lblExistanceMonths: TLabel
          Width = 6
        end
        inherited lblMonths: TLabel
          Width = 11
        end
        inherited dsData: TDataSource
          DataSet = frClient.cdsPartner
        end
      end
      inherited pnlPriority: TPanel
        Top = 24
        Height = 47
        inherited lblPriority: TLabel
          Width = 38
        end
      end
      inherited pnlCountry: TPanel
        Left = 278
        Top = 24
        Height = 47
      end
      inherited pnlParRelButton: TPanel
        Left = 318
        Top = 24
        Height = 47
        DesignSize = (
          73
          47)
      end
    end
  end
  inherited alActions: TActionList
    Left = 424
    inherited actForm: TAction
      Caption = 
        #1054#1073#1086#1089#1086#1073#1077#1085' '#1044#1080#1072#1083#1086#1075' '#1089' '#1050#1083#1080#1077#1085#1090' '#1087#1086' '#1047#1072#1076#1072#1085#1080#1077' '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '#1085#1072' %ProductClass' +
        'Abbrev% - %s'
    end
    object actFinish: TAction
      Caption = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077'...'
      Hint = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077
      ImageIndex = 17
      OnExecute = actFinishExecute
      OnUpdate = actFinishUpdate
    end
    object actAnnul: TAction
      Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077'...'
      Hint = #1040#1085#1091#1083#1080#1088#1072#1085#1077
      ImageIndex = 16
      OnExecute = actAnnulExecute
      OnUpdate = actAnnulUpdate
    end
    object actDocumentation: TAction
      Hint = #1052#1048#1048#1054' '#1085#1072' '#1054#1044#1050
      ImageIndex = 1
      OnExecute = actDocumentationExecute
    end
    object actSRGDoc: TAction
      Hint = #1052#1048#1048#1054' '#1085#1072' '#1055#1044#1050
      ImageIndex = 1
    end
    object actExceptEvents: TAction
      Caption = #1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103'...'
      Hint = #1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103
      OnExecute = actExceptEventsExecute
      OnUpdate = actExceptEventsUpdate
    end
    object actSale: TAction
      Caption = #1054#1055#1055
      OnExecute = actSaleExecute
      OnUpdate = actSaleUpdate
    end
    object actDelivery: TAction
      Caption = #1054#1055#1044
      OnExecute = actDeliveryExecute
      OnUpdate = actDeliveryUpdate
    end
    object actParRelProduct: TAction
      Caption = #1048#1048#1056'-'#1040#1055#1089'...'
      OnExecute = actParRelProductExecute
      OnUpdate = actParRelProductUpdate
    end
    object actParRelProductDoc: TAction
      Hint = #1052#1048#1048#1054' '#1085#1072' '#1048#1048#1056
      OnExecute = actParRelProductDocExecute
    end
    object actNotes: TAction
      Caption = #1041#1077#1083#1077#1078#1082#1080'...'
      ImageIndex = 57
      OnExecute = actNotesExecute
      OnUpdate = actNotesUpdate
    end
    object actRequestDoc: TAction
      Hint = #1052#1048#1048#1054' '#1085#1072' '#1055#1044#1050
      ImageIndex = 98
      OnExecute = actRequestDocExecute
      OnUpdate = actRequestDocUpdate
    end
    object actAcuirePrice: TAction
      Hint = #1060#1086#1088#1084#1080#1088#1072#1085#1077' '#1085#1072' '#1094#1077#1085#1072
      ImageIndex = 187
      OnExecute = actAcuirePriceExecute
      OnUpdate = actAcuirePriceUpdate
    end
    object actLeasePrice: TAction
      Hint = #1060#1086#1088#1084#1080#1088#1072#1085#1077' '#1085#1072' '#1094#1077#1085#1072
      ImageIndex = 187
      OnExecute = actLeasePriceExecute
      OnUpdate = actLeasePriceUpdate
    end
    object actIsDeliveryRequired: TAction
      Caption = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1054#1055#1044
      OnExecute = actIsDeliveryRequiredExecute
    end
  end
  inherited dsData: TDataSource
    Left = 392
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conSaleOrders
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvSaleOrder'
    BeforeOpen = cdsDataBeforeOpen
    AfterOpen = cdsDataAfterOpen
    AfterClose = cdsDataAfterClose
    BeforePost = cdsDataBeforePost
    OnCalcFields = cdsDataCalcFields
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    AfterApplyUpdates = cdsDataAfterApplyUpdates
    Left = 376
    object cdsData_REQUEST_REGISTER_DATE_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REQUEST_REGISTER_DATE_DIFF'
      ProviderFlags = []
      FieldValueType = fvtInteger
      Calculated = True
    end
    object cdsData_OFFER_SEND_PLAN_DATE_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_OFFER_SEND_PLAN_DATE_DIFF'
      ProviderFlags = []
      FieldValueType = fvtInteger
      Calculated = True
    end
    object cdsData_OFFER_ANSWER_PLAN_DATE_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_OFFER_ANSWER_PLAN_DATE_DIFF'
      ProviderFlags = []
      FieldValueType = fvtInteger
      Calculated = True
    end
    object cdsData_DECISION_PLAN_DATE_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DECISION_PLAN_DATE_DIFF'
      ProviderFlags = []
      FieldValueType = fvtInteger
      Calculated = True
    end
    object cdsData_OFFER_ANSWER_DATE_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_OFFER_ANSWER_DATE_DIFF'
      ProviderFlags = []
      FieldValueType = fvtInteger
      Calculated = True
    end
    object cdsData_DECISION_DATE_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DECISION_DATE_DIFF'
      ProviderFlags = []
      FieldValueType = fvtInteger
      Calculated = True
    end
    object cdsData_DECISION_DATE_DEVIATION: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DECISION_DATE_DEVIATION'
      ProviderFlags = []
      FieldValueType = fvtInteger
      Calculated = True
    end
    object cdsData_OFFER_SEND_DATE_DEVIATION: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_OFFER_SEND_DATE_DEVIATION'
      ProviderFlags = []
      FieldValueType = fvtInteger
      Calculated = True
    end
    object cdsData_OFFER_ANSWER_DATE_DEVIATION: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_OFFER_ANSWER_DATE_DEVIATION'
      ProviderFlags = []
      FieldValueType = fvtInteger
      Calculated = True
    end
    object cdsData_REQUEST_BRANCH_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_REQUEST_BRANCH_IDENTIFIER'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_IDENTIFIER'
      KeyFields = 'REQUEST_BRANCH_CODE'
      Lookup = True
    end
    object cdsData_OUR_OFFER_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_OUR_OFFER_CURRENCY_ABBREV'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = 'OUR_OFFER_CURRENCY_CODE'
      Size = 10
      Lookup = True
    end
    object cdsData_CL_OFFER_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_CL_OFFER_CURRENCY_ABBREV'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = 'CL_OFFER_CURRENCY_CODE'
      Size = 10
      Lookup = True
    end
    object cdsData_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_MEASURE_ABBREV'
      LookupDataSet = cdsMeasures
      LookupKeyFields = 'MEASURE_CODE'
      LookupResultField = 'MEASURE_ABBREV'
      KeyFields = 'PRODUCT_MEASURE_CODE'
      Size = 10
      Lookup = True
    end
    object cdsData_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_ACCOUNT_MEASURE_ABBREV'
      LookupDataSet = cdsMeasures
      LookupKeyFields = 'MEASURE_CODE'
      LookupResultField = 'MEASURE_ABBREV'
      KeyFields = 'ACCOUNT_MEASURE_CODE'
      Size = 10
      Lookup = True
    end
    object cdsData_SALE_TOTAL_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SALE_TOTAL_PRICE'
      DisplayFormat = ',0'
      EditFormat = '0'
      Calculated = True
    end
    object cdsData_SALE_TOTAL_PRICE_SC: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SALE_TOTAL_PRICE_SC'
      DisplayFormat = ',0'
      EditFormat = '0'
      Calculated = True
    end
    object cdsData_RECEIVE_PLACE_OFFICE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_RECEIVE_PLACE_OFFICE_NAME'
      LookupDataSet = cdsCompanyOffices
      LookupKeyFields = 'OFFICE_CODE'
      LookupResultField = 'OFFICE_NAME'
      KeyFields = 'RECEIVE_PLACE_OFFICE_CODE'
      Size = 50
      Lookup = True
    end
    object cdsData_OUR_OFFER_TOTAL_LEASE_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_OUR_OFFER_TOTAL_LEASE_QUANTITY'
      DisplayFormat = ',0.##'
      EditFormat = '0.##'
      Calculated = True
    end
    object cdsData_CL_OFFER_TOTAL_LEASE_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_CL_OFFER_TOTAL_LEASE_QUANTITY'
      DisplayFormat = ',0.##'
      EditFormat = '0.##'
      Calculated = True
    end
    object cdsData_TOTAL_LEASE_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_LEASE_QUANTITY'
      DisplayFormat = ',0.##'
      EditFormat = '0.##'
      Calculated = True
    end
    object cdsData_PLAN_PERIOD_DAYS: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PLAN_PERIOD_DAYS'
      Calculated = True
    end
    object cdsData_REAL_PERIOD_DAYS: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REAL_PERIOD_DAYS'
      Calculated = True
    end
    object cdsDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDataSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDataSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_OBJECT_BRANCH_CODE'
    end
    object cdsDataSALE_GROUP_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_OBJECT_CODE'
    end
    object cdsDataSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
    end
    object cdsDataREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object cdsDataREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
    object cdsDataREQUEST_LINE_NO: TAbmesFloatField
      FieldName = 'REQUEST_LINE_NO'
    end
    object cdsDataCLIENT_COMPANY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_CODE'
      OnChange = cdsDataCLIENT_COMPANY_CODEChange
    end
    object cdsDataCLIENT_REQUEST_NO: TAbmesWideStringField
      FieldName = 'CLIENT_REQUEST_NO'
      Size = 30
    end
    object cdsDataREQUEST_SEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1057#1090#1072#1088#1090#1080#1088#1072#1085#1077
      FieldName = 'REQUEST_SEND_DATE'
    end
    object cdsDataOFFER_SEND_PLAN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1055#1083#1072#1085#1086#1074#1072' '#1055#1079#1094'. '#1048#1055
      FieldName = 'OFFER_SEND_PLAN_DATE'
      OnValidate = DatesOnValidate
    end
    object cdsDataREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077
      FieldName = 'REQUEST_REGISTER_DATE'
    end
    object cdsDataOFFER_SEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1054#1090#1095#1077#1090#1085#1072' '#1055#1079#1094'. '#1048#1055
      FieldName = 'OFFER_SEND_DATE'
      OnValidate = DatesOnValidate
    end
    object cdsDataOFFER_ANSWER_PLAN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1055#1083#1072#1085#1086#1074#1072' '#1055#1079#1094'. '#1050#1083#1080#1077#1085#1090
      FieldName = 'OFFER_ANSWER_PLAN_DATE'
      OnValidate = DatesOnValidate
    end
    object cdsDataOFFER_ANSWER_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1054#1090#1095#1077#1090#1085#1072' '#1055#1079#1094'. '#1050#1083#1080#1077#1085#1090
      FieldName = 'OFFER_ANSWER_DATE'
      OnValidate = DatesOnValidate
    end
    object cdsDataDECISION_PLAN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1055#1083'. '#1076#1072#1090#1072' '#1088#1077#1096#1077#1085#1080#1077
      FieldName = 'DECISION_PLAN_DATE'
      OnValidate = DatesOnValidate
    end
    object cdsDataDECISION_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1088#1077#1096#1077#1085#1080#1077
      FieldName = 'DECISION_DATE'
      OnChange = cdsDataDECISION_DATEChange
      OnValidate = DatesOnValidate
    end
    object cdsDataDECISION_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1056#1077#1096#1077#1085#1080#1077
      FieldName = 'DECISION_TYPE_CODE'
    end
    object cdsDataPRODUCT_CODE: TAbmesFloatField
      DisplayLabel = '%ProductClassName%'
      FieldName = 'PRODUCT_CODE'
      Required = True
      OnChange = cdsDataPRODUCT_CODEChange
    end
    object cdsDataPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 50
    end
    object cdsDataPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object cdsDataPRODUCT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_MEASURE_CODE'
      ProviderFlags = []
    end
    object cdsDataQUANTITY: TAbmesFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'QUANTITY'
      OnChange = cdsDataQUANTITYChange
      DisplayFormat = ',0.##'
      EditFormat = '0.##'
    end
    object cdsDataOUR_OFFER_QUANTITY: TAbmesFloatField
      FieldName = 'OUR_OFFER_QUANTITY'
      OnChange = cdsDataOUR_OFFER_QUANTITYChange
      DisplayFormat = ',0.##'
      EditFormat = '0.##'
    end
    object cdsDataCL_OFFER_QUANTITY: TAbmesFloatField
      FieldName = 'CL_OFFER_QUANTITY'
      OnChange = cdsDataCL_OFFER_QUANTITYChange
      DisplayFormat = ',0.##'
      EditFormat = '0.##'
    end
    object cdsDataMANUFACTURE_QUANTITY: TAbmesFloatField
      FieldName = 'MANUFACTURE_QUANTITY'
      DisplayFormat = ',0.##'
      EditFormat = '0.##'
    end
    object cdsDataMANUFACTURE_DECISION_EXPECTED: TAbmesFloatField
      FieldName = 'MANUFACTURE_DECISION_EXPECTED'
    end
    object cdsDataSINGLE_WEIGHT: TAbmesFloatField
      FieldName = 'SINGLE_WEIGHT'
    end
    object cdsDataCURRENCY_CODE: TAbmesFloatField
      DisplayLabel = #1042#1072#1083#1091#1090#1072
      FieldName = 'CURRENCY_CODE'
      OnChange = cdsDataCURRENCY_CODEChange
    end
    object cdsDataSINGLE_PRICE: TAbmesFloatField
      DisplayLabel = #1045#1076'. '#1094#1077#1085#1072
      FieldName = 'SINGLE_PRICE'
      OnChange = cdsDataSINGLE_PRICEChange
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsDataOUR_OFFER_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'OUR_OFFER_SINGLE_PRICE'
      OnChange = cdsDataOUR_OFFER_SINGLE_PRICEChange
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsDataCL_OFFER_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'CL_OFFER_SINGLE_PRICE'
      OnChange = cdsDataCL_OFFER_SINGLE_PRICEChange
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsDataIMPORT_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1053#1072#1077#1084' | '#1044#1086#1075#1086#1074#1086#1088#1077#1085' | '#1053#1072#1095#1072#1083#1086
      FieldName = 'IMPORT_DATE'
    end
    object cdsDataRECEIVE_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1053#1072#1077#1084' | '#1044#1086#1075#1086#1074#1086#1088#1077#1085' | '#1050#1088#1072#1081
      FieldName = 'RECEIVE_DATE'
      OnChange = cdsDataRECEIVE_DATEChange
    end
    object cdsDataCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1055#1086#1080#1089#1082#1072#1085#1072' '#1044#1072#1090#1072' '#1085#1072' '#1055#1086#1083#1091#1095#1072#1074#1072#1085#1077
      FieldName = 'CL_OFFER_RECEIVE_DATE'
    end
    object cdsDataCL_OFFER_RETURN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1055#1086#1080#1089#1082#1072#1085#1072' '#1044#1072#1090#1072' '#1085#1072' '#1042#1088#1098#1097#1072#1085#1077
      FieldName = 'CL_OFFER_RETURN_DATE'
    end
    object cdsDataOUR_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'OUR_OFFER_RECEIVE_DATE'
    end
    object cdsDataRECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField
      FieldName = 'RECEIVE_PLACE_OFFICE_CODE'
    end
    object cdsDataIS_VENDOR_TRANSPORT: TAbmesFloatField
      DisplayLabel = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1058#1088#1072#1085#1089#1087#1086#1088#1090
      FieldName = 'IS_VENDOR_TRANSPORT'
      FieldValueType = fvtBoolean
    end
    object cdsDataSHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_TYPE_CODE'
    end
    object cdsDataCUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'CUSTOMHOUSE_CODE'
    end
    object cdsDataNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsDataSALE_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1043#1083#1072#1074#1085#1086
      FieldName = 'SALE_BRANCH_CODE'
      OnChange = cdsDataSALE_BRANCH_CODEChange
    end
    object cdsDataSALE_NO: TAbmesFloatField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'SALE_NO'
    end
    object cdsDataSALE_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1080#1076
      FieldName = 'SALE_TYPE_CODE'
    end
    object cdsDataOKIDU_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1079#1077#1083' '#1056#1077#1096#1077#1085#1080#1077
      FieldName = 'OKIDU_EMPLOYEE_CODE'
    end
    object cdsDataSOS_OKIDU: TAbmesFloatField
      FieldName = 'SOS_OKIDU'
      FieldValueType = fvtBoolean
    end
    object cdsDataSHIPMENT_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1055#1083#1072#1085#1086#1074#1072' '#1044#1072#1090#1072' '#1085#1072' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1103
      FieldName = 'SHIPMENT_DATE'
    end
    object cdsDataSHIPMENT_STORE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1047#1072#1076#1098#1088#1078'. '#1085#1072' '#1048#1055' '#1079#1072' '#1045#1082#1089#1087'.'
      FieldName = 'SHIPMENT_STORE_CODE'
    end
    object cdsDataENTER_SH_STORE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENTER_SH_STORE_PLAN_BEGIN_DATE'
    end
    object cdsDataENTER_SH_STORE_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENTER_SH_STORE_PLAN_END_DATE'
    end
    object cdsDataIS_ML_ENTRUSTED: TAbmesFloatField
      FieldName = 'IS_ML_ENTRUSTED'
      FieldValueType = fvtBoolean
    end
    object cdsDataIS_ML_NOT_NEEDED: TAbmesFloatField
      FieldName = 'IS_ML_NOT_NEEDED'
      FieldValueType = fvtBoolean
    end
    object cdsDataANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object cdsDataANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object cdsDataANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object cdsDataFINISH_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'FINISH_EMPLOYEE_CODE'
    end
    object cdsDataFINISH_DATE: TAbmesSQLTimeStampField
      FieldName = 'FINISH_DATE'
    end
    object cdsDataFINISH_TIME: TAbmesSQLTimeStampField
      FieldName = 'FINISH_TIME'
    end
    object cdsDataCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object cdsDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsDataCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object cdsDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object cdsDataCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object cdsDataCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object cdsDataMANAGER_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1086#1076#1077#1097' '#1044#1080#1072#1083#1086#1075
      FieldName = 'MANAGER_EMPLOYEE_CODE'
      Required = True
    end
    object cdsDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDataTRANSIENT_STATUS_CODE: TAbmesFloatField
      FieldName = 'TRANSIENT_STATUS_CODE'
      ProviderFlags = []
    end
    object cdsDataCLIENT_COUNTRY_ABBREV: TAbmesWideStringField
      FieldName = 'CLIENT_COUNTRY_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object cdsDataMODEL_DEVELOPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'MODEL_DEVELOPMENT_TYPE_CODE'
    end
    object cdsDataSALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object cdsDataACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
      ProviderFlags = []
    end
    object cdsDataACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
      ProviderFlags = []
    end
    object cdsDataACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
      ProviderFlags = []
      OnChange = cdsDataACCOUNT_QUANTITYChange
      DisplayFormat = ',0.##'
      EditFormat = '0.##'
    end
    object cdsDataACCOUNT_OUR_OFFER_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_OUR_OFFER_QUANTITY'
      ProviderFlags = []
      OnChange = cdsDataACCOUNT_OUR_OFFER_QUANTITYChange
      DisplayFormat = ',0.##'
      EditFormat = '0.##'
    end
    object cdsDataACCOUNT_CL_OFFER_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_CL_OFFER_QUANTITY'
      ProviderFlags = []
      OnChange = cdsDataACCOUNT_CL_OFFER_QUANTITYChange
      DisplayFormat = ',0.##'
      EditFormat = '0.##'
    end
    object cdsDataPROGNOSIS_SALE_COUNT: TAbmesFloatField
      FieldName = 'PROGNOSIS_SALE_COUNT'
      ProviderFlags = []
    end
    object cdsDataREALIZATION_SALE_COUNT: TAbmesFloatField
      FieldName = 'REALIZATION_SALE_COUNT'
      ProviderFlags = []
    end
    object cdsDataASPECT_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1040#1089#1087#1077#1082#1090
      FieldName = 'ASPECT_TYPE_CODE'
      Required = True
      OnChange = cdsDataASPECT_TYPE_CODEChange
    end
    object cdsDataPROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PROGNOSIS_BEGIN_DATE'
    end
    object cdsDataPROGNOSIS_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PROGNOSIS_END_DATE'
    end
    object cdsDataCOMMON_STATUS_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'COMMON_STATUS_CODE'
      OnGetText = cdsDataCOMMON_STATUS_CODEGetText
    end
    object cdsDataCL_OFFER_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'CL_OFFER_CURRENCY_CODE'
    end
    object cdsDataOUR_OFFER_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'OUR_OFFER_CURRENCY_CODE'
    end
    object cdsDataOUR_OFFER_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      DisplayLabel = #1050'-'#1074#1086
      FieldName = 'OUR_OFFER_LEASE_DATE_UNIT_QTY'
    end
    object cdsDataOUR_OFFER_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      DisplayLabel = #1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072
      FieldName = 'OUR_OFFER_LEASE_DATE_UNIT_CODE'
    end
    object cdsDataCL_OFFER_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      DisplayLabel = #1050'-'#1074#1086
      FieldName = 'CL_OFFER_LEASE_DATE_UNIT_QTY'
    end
    object cdsDataCL_OFFER_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      DisplayLabel = #1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072
      FieldName = 'CL_OFFER_LEASE_DATE_UNIT_CODE'
    end
    object cdsDataLEASE_DATE_UNIT_QTY: TAbmesFloatField
      DisplayLabel = #1050'-'#1074#1086
      FieldName = 'LEASE_DATE_UNIT_QTY'
    end
    object cdsDataLEASE_DATE_UNIT_CODE: TAbmesFloatField
      DisplayLabel = #1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072
      FieldName = 'LEASE_DATE_UNIT_CODE'
    end
    object cdsDataRETURN_DATE: TAbmesSQLTimeStampField
      FieldName = 'RETURN_DATE'
    end
    object cdsDataSHIPMENT_DAYS: TAbmesFloatField
      DisplayLabel = #1055#1077#1088#1044#1074#1078
      FieldName = 'SHIPMENT_DAYS'
    end
    object cdsDataCLIENT_COMPANY_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_COMPANY_NAME'
      ProviderFlags = []
      Size = 153
    end
    object cdsData_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_CURRENCY_ABBREV'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = 'CURRENCY_CODE'
      Size = 5
      Lookup = True
    end
    object cdsData_COUNTRY_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_COUNTRY_NAME'
      Size = 30
      Calculated = True
    end
    object cdsDataSS_COUNT: TAbmesFloatField
      FieldName = 'SS_COUNT'
      ProviderFlags = []
    end
    object cdsData_SALE_BRANCH_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SALE_BRANCH_IDENTIFIER'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_IDENTIFIER'
      KeyFields = 'SALE_BRANCH_CODE'
      Lookup = True
    end
    object cdsData_STATUS_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = '_STATUS_CODE'
      OnGetText = cdsData_STATUS_CODEGetText
      Calculated = True
    end
    object cdsDataHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsDataSRG_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SRG_DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object cdsDataSRG_DOC_CODE: TAbmesFloatField
      FieldName = 'SRG_DOC_CODE'
      ProviderFlags = []
    end
    object cdsDataSRG_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'SRG_HAS_DOC_ITEMS'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsData_SALE_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SALE_DEAL_TYPE_ABBREV'
      LookupDataSet = cdsSaleDealTypes
      LookupKeyFields = 'SALE_DEAL_TYPE_CODE'
      LookupResultField = 'SALE_DEAL_TYPE_ABBREV'
      KeyFields = 'SALE_DEAL_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsDataSALE_PRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1080#1086#1088#1080#1090#1077#1090
      FieldName = 'SALE_PRIORITY_CODE'
      ProviderFlags = []
    end
    object cdsDataCLIENT_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_PRIORITY_CODE'
      ProviderFlags = []
    end
    object cdsDataDECISION_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1079#1077#1083' '#1056#1077#1096#1077#1085#1080#1077
      FieldName = 'DECISION_EMPLOYEE_CODE'
    end
    object cdsDataDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1085#1072' '#1054#1055#1055' '#1089' '#1054#1055#1044
      FieldName = 'DELIVERY_OBJECT_BRANCH_CODE'
    end
    object cdsDataDELIVERY_OBJECT_CODE: TAbmesFloatField
      DisplayLabel = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1085#1072' '#1054#1055#1055' '#1089' '#1054#1055#1044
      FieldName = 'DELIVERY_OBJECT_CODE'
    end
    object cdsDataDCD_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_BRANCH_CODE'
      ProviderFlags = []
    end
    object cdsDataDCD_CODE: TAbmesFloatField
      FieldName = 'DCD_CODE'
      ProviderFlags = []
    end
    object cdsDataDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
      ProviderFlags = []
    end
    object cdsDataDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
      ProviderFlags = []
    end
    object cdsDataDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
      ProviderFlags = []
    end
    object cdsDataACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_SINGLE_PRICE'
      ProviderFlags = []
      OnChange = cdsDataACCOUNT_SINGLE_PRICEChange
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsDataACCOUNT_OUR_OFFER_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_OUR_OFFER_SINGLE_PRICE'
      ProviderFlags = []
      OnChange = cdsDataACCOUNT_OUR_OFFER_SINGLE_PRICEChange
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsDataACCOUNT_CL_OFFER_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_CL_OFFER_SINGLE_PRICE'
      ProviderFlags = []
      OnChange = cdsDataACCOUNT_CL_OFFER_SINGLE_PRICEChange
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsDataBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
      ProviderFlags = []
    end
    object cdsDataPARTNER_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'PARTNER_CODE'
      Calculated = True
    end
    object cdsData_ALLOWS_SALE: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_ALLOWS_SALE'
      LookupDataSet = cdsDecisionTypes
      LookupKeyFields = 'DECISION_TYPE_CODE'
      LookupResultField = 'ALLOWS_SALE'
      KeyFields = 'DECISION_TYPE_CODE'
      FieldValueType = fvtBoolean
      Lookup = True
    end
    object cdsDataFIN_ORDER_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_CODE'
    end
    object cdsDataFO_BRANCH_CODE: TAbmesFloatField
      FieldName = 'FO_BRANCH_CODE'
    end
    object cdsDataFO_EXEC_DEPT_CODE: TAbmesFloatField
      FieldName = 'FO_EXEC_DEPT_CODE'
    end
    object cdsDataFO_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'FO_PRIORITY_CODE'
    end
    object cdsDataFO_WORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'FO_WORK_FINANCIAL_PRODUCT_CODE'
    end
    object cdsDataFO_PARTNER_CODE: TAbmesFloatField
      FieldName = 'FO_PARTNER_CODE'
    end
    object cdsDataFO_STATUS_CODE: TAbmesFloatField
      FieldName = 'FO_STATUS_CODE'
    end
    object cdsDataSPEC_FIN_MODEL_CODE: TAbmesFloatField
      FieldName = 'SPEC_FIN_MODEL_CODE'
    end
    object cdsDataFO_IS_COMPLETED: TAbmesFloatField
      FieldName = 'FO_IS_COMPLETED'
      FieldValueType = fvtBoolean
    end
    object cdsDataFO_CLOSE_REQUESTED: TAbmesFloatField
      FieldName = 'FO_CLOSE_REQUESTED'
      FieldValueType = fvtBoolean
    end
    object cdsData_DECISION_TYPE_REQUIRES: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_DECISION_TYPE_REQUIRES_FINISHING'
      LookupDataSet = cdsDecisionTypes
      LookupKeyFields = 'DECISION_TYPE_CODE'
      LookupResultField = 'REQUIRES_FINISHING'
      KeyFields = 'DECISION_TYPE_CODE'
      FieldValueType = fvtBoolean
      Lookup = True
    end
    object cdsDataUNFINISHED_SRG_SALE_COUNT: TAbmesFloatField
      FieldName = 'UNFINISHED_SRG_SALE_COUNT'
    end
    object cdsDataMIN_BASE_PRICE: TAbmesFloatField
      FieldName = 'MIN_BASE_PRICE'
      OnChange = cdsDataMIN_BASE_PRICEChange
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsDataACCOUNT_MIN_BASE_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_MIN_BASE_PRICE'
      ProviderFlags = []
      OnChange = cdsDataACCOUNT_MIN_BASE_PRICEChange
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsDataOBTAINMENT_TYPE_CODE: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = 'OBTAINMENT_TYPE_CODE'
      LookupDataSet = cdsSaleDealTypes
      LookupKeyFields = 'SALE_DEAL_TYPE_CODE'
      LookupResultField = 'OBTAINMENT_TYPE_CODE'
      KeyFields = 'SALE_DEAL_TYPE_CODE'
      Lookup = True
    end
    object cdsDataSSH_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SSH_DOC_BRANCH_CODE'
    end
    object cdsDataSSH_DOC_CODE: TAbmesFloatField
      FieldName = 'SSH_DOC_CODE'
    end
  end
  object cdsSaleDealTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Params = <>
    ProviderName = 'prvSaleDealTypes'
    Left = 16
    Top = 72
    object cdsSaleDealTypesSALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object cdsSaleDealTypesSALE_DEAL_TYPE_NAME: TAbmesWideStringField
      FieldName = 'SALE_DEAL_TYPE_NAME'
      Size = 100
    end
    object cdsSaleDealTypesSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object cdsSaleDealTypesOBTAINMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OBTAINMENT_TYPE_CODE'
      Required = True
    end
  end
  object dsSaleDealTypes: TDataSource
    DataSet = cdsSaleDealTypes
    Left = 32
    Top = 72
  end
  object cdsCustomhouses: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCustomhouses'
    Left = 576
    Top = 280
    object cdsCustomhousesCUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'CUSTOMHOUSE_CODE'
      Required = True
    end
    object cdsCustomhousesCUSTOMHOUSE_NAME: TAbmesWideStringField
      FieldName = 'CUSTOMHOUSE_NAME'
      Required = True
      Size = 50
    end
  end
  object dsCustomhouses: TDataSource
    DataSet = cdsCustomhouses
    Left = 584
    Top = 280
  end
  object cdsShipmentTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Params = <>
    ProviderName = 'prvShipmentTypes'
    Left = 620
    Top = 280
    object cdsShipmentTypesSHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsShipmentTypesSHIPMENT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SHIPMENT_TYPE_ABBREV'
      Size = 3
    end
    object cdsShipmentTypesSHIPMENT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'SHIPMENT_TYPE_NAME'
      Size = 50
    end
    object cdsShipmentTypesNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
  end
  object dsShipmentTypes: TDataSource
    DataSet = cdsShipmentTypes
    Left = 628
    Top = 280
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Filter = '(IS_LOCAL_BRANCH <> 0) and (IS_INACTIVE = 0)'
    Params = <>
    ProviderName = 'prvBranches'
    Left = 72
    Top = 72
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsBranchesBRANCH_NO: TAbmesFloatField
      DisplayWidth = 3
      FieldName = 'BRANCH_NO'
    end
    object cdsBranchesNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 50
    end
    object cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BRANCH_IDENTIFIER'
      Size = 46
    end
    object cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField
      FieldName = 'BRANCH_CODE_AND_NAME'
      Size = 143
    end
    object cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField
      FieldName = 'IS_LOCAL_BRANCH'
    end
    object cdsBranchesIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
  end
  object dsBranches: TDataSource
    DataSet = cdsBranches
    Left = 88
    Top = 72
  end
  object cdsAspectTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvAspectTypes'
    Left = 440
    Top = 8
    object cdsAspectTypesASPECT_TYPE_CODE: TAbmesFloatField
      FieldName = 'ASPECT_TYPE_CODE'
    end
    object cdsAspectTypesASPECT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'ASPECT_TYPE_ABBREV'
      Size = 100
    end
    object cdsAspectTypesASPECT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'ASPECT_TYPE_NAME'
      Size = 100
    end
  end
  object dsAspectTypes: TDataSource
    DataSet = cdsAspectTypes
    Left = 456
    Top = 8
  end
  object cdsCurrencies: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCurrencies'
    Left = 396
    Top = 280
    object cdsCurrenciesCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      Size = 5
    end
    object cdsCurrenciesROUNDER: TAbmesFloatField
      FieldName = 'ROUNDER'
    end
    object cdsCurrenciesORDER_NO: TAbmesFloatField
      FieldName = 'ORDER_NO'
    end
  end
  object cdsSecondaryCurrencyRates: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'RATE_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'prvSecondaryCurrencyRates'
    Left = 480
    Top = 280
    object cdsSecondaryCurrencyRatesCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object cdsSecondaryCurrencyRatesRATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RATE_DATE'
    end
    object cdsSecondaryCurrencyRatesFIXING: TAbmesFloatField
      FieldName = 'FIXING'
    end
  end
  object cdsMeasures: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvMeasures'
    Left = 440
    Top = 280
    object cdsMeasuresMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Required = True
      Size = 5
    end
    object cdsMeasuresMEASURE_NAME: TAbmesWideStringField
      FieldName = 'MEASURE_NAME'
      Required = True
      Size = 50
    end
  end
  object cdsDecisionTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSaleOrders
    Params = <>
    ProviderName = 'prvDecisionTypes'
    Left = 812
    Top = 304
    object cdsDecisionTypesDECISION_TYPE_CODE: TAbmesFloatField
      FieldName = 'DECISION_TYPE_CODE'
    end
    object cdsDecisionTypesDECISION_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'DECISION_TYPE_ABBREV'
      Size = 4
    end
    object cdsDecisionTypesDECISION_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DECISION_TYPE_NAME'
      Size = 50
    end
    object cdsDecisionTypesDECISION_TYPE_NO: TAbmesFloatField
      FieldName = 'DECISION_TYPE_NO'
    end
    object cdsDecisionTypesALLOWS_SALE: TAbmesFloatField
      FieldName = 'ALLOWS_SALE'
    end
    object cdsDecisionTypesIS_ESTIMATION_BOUND: TAbmesFloatField
      FieldName = 'IS_ESTIMATION_BOUND'
    end
    object cdsDecisionTypesIS_REALIZATION_BOUND: TAbmesFloatField
      FieldName = 'IS_REALIZATION_BOUND'
    end
    object cdsDecisionTypesREQUIRES_FINISHING: TAbmesFloatField
      FieldName = 'REQUIRES_FINISHING'
    end
  end
  object dsDecisionTypes: TDataSource
    DataSet = cdsDecisionTypes
    Left = 844
    Top = 304
  end
  object cdsCompanyOffices: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompanies
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCompanyOffices'
    Left = 528
    Top = 280
    object cdsCompanyOfficesCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCompanyOfficesOFFICE_CODE: TAbmesFloatField
      FieldName = 'OFFICE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCompanyOfficesOFFICE_NAME: TAbmesWideStringField
      FieldName = 'OFFICE_NAME'
      Size = 50
    end
    object cdsCompanyOfficesCOUNTRY_CODE: TAbmesFloatField
      FieldName = 'COUNTRY_CODE'
    end
    object cdsCompanyOffices_COUNTRY_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_COUNTRY_NAME'
      LookupDataSet = cdsCountries
      LookupKeyFields = 'COUNTRY_CODE'
      LookupResultField = 'COUNTRY_NAME'
      KeyFields = 'COUNTRY_CODE'
      Size = 50
      Lookup = True
    end
  end
  object dsCompanyOffices: TDataSource
    DataSet = cdsCompanyOffices
    Left = 536
    Top = 280
  end
  object cdsDateUnits: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvDateUnits'
    Left = 184
    Top = 280
    object cdsDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'THE_DATE_UNIT_CODE'
    end
    object cdsDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'THE_DATE_UNIT_NAME'
      Size = 50
    end
  end
  object dsDateUnits: TDataSource
    DataSet = cdsDateUnits
    Left = 200
    Top = 280
  end
  object cdsPriorities: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvPriorities'
    Left = 256
    Top = 280
    object cdsPrioritiesPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
    end
    object cdsPrioritiesPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
    object cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_NAME'
      Size = 50
    end
    object cdsPrioritiesPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object cdsPrioritiesPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
  end
  object dsPriorities: TDataSource
    DataSet = cdsPriorities
    Left = 272
    Top = 280
  end
  object dsSaleTypes: TDataSource
    DataSet = cdsSaleTypes
    Left = 344
    Top = 280
  end
  object cdsSaleTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Params = <>
    ProviderName = 'prvSaleTypes'
    Left = 328
    Top = 280
    object cdsSaleTypesSALE_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_TYPE_CODE'
    end
    object cdsSaleTypesSALE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_TYPE_ABBREV'
      Size = 3
    end
    object cdsSaleTypesSALE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'SALE_TYPE_NAME'
      Size = 50
    end
  end
  object cdsCountries: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCountries'
    Left = 664
    Top = 280
    object cdsCountriesCOUNTRY_CODE: TAbmesFloatField
      FieldName = 'COUNTRY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCountriesCOUNTRY_ABBREV: TAbmesWideStringField
      FieldName = 'COUNTRY_ABBREV'
      Required = True
      Size = 5
    end
    object cdsCountriesCOUNTRY_NAME: TAbmesWideStringField
      FieldName = 'COUNTRY_NAME'
      Required = True
      Size = 50
    end
  end
  object dsCurrencies: TDataSource
    DataSet = cdsCurrencies
    Left = 408
    Top = 280
  end
  object cdsSaleOrderProductInfo: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSaleOrders
    Params = <
      item
        DataType = ftDateTime
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CLIENT_COMPANY_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvSaleOrderProductInfo'
    Left = 872
    Top = 144
    object cdsSaleOrderProductInfoMARKET_PRICE: TAbmesFloatField
      FieldName = 'MARKET_PRICE'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsSaleOrderProductInfoACC_MARKET_PRICE: TAbmesFloatField
      FieldName = 'ACC_MARKET_PRICE'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsSaleOrderProductInfoMARKET_PRICE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'MARKET_PRICE_CURRENCY_CODE'
    end
    object cdsSaleOrderProductInfoSALE_LEASE_PRICE: TAbmesFloatField
      FieldName = 'SALE_LEASE_PRICE'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsSaleOrderProductInfoACC_SALE_LEASE_PRICE: TAbmesFloatField
      FieldName = 'ACC_SALE_LEASE_PRICE'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsSaleOrderProductInfoSALE_LEASE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'SALE_LEASE_CURRENCY_CODE'
    end
    object cdsSaleOrderProductInfoSALE_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'SALE_LEASE_DATE_UNIT_CODE'
    end
    object cdsSaleOrderProductInfoSPEC_STATE_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'SPEC_STATE_CODE'
      OnGetText = cdsSaleOrderProductInfoSPEC_STATE_CODEGetText
    end
    object cdsSaleOrderProductInfoPRODUCT_PRIORITY_NO: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'PRODUCT_PRIORITY_NO'
    end
    object cdsSaleOrderProductInfoPRODUCT_PRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRODUCT_PRIORITY_COLOR'
    end
    object cdsSaleOrderProductInfoPRODUCT_PRIORITY_BK_COLOR: TAbmesFloatField
      FieldName = 'PRODUCT_PRIORITY_BK_COLOR'
    end
    object cdsSaleOrderProductInfoPRP_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRP_DOC_BRANCH_CODE'
    end
    object cdsSaleOrderProductInfoPRP_DOC_CODE: TAbmesFloatField
      FieldName = 'PRP_DOC_CODE'
    end
    object cdsSaleOrderProductInfoPRP_HAS_DOC: TAbmesFloatField
      FieldName = 'PRP_HAS_DOC'
    end
    object cdsSaleOrderProductInfo_MARKET_PRICE_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_MARKET_PRICE_CURRENCY_ABBREV'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = 'MARKET_PRICE_CURRENCY_CODE'
      Size = 5
      Lookup = True
    end
    object cdsSaleOrderProductInfo_SALE_LEASE_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SALE_LEASE_CURRENCY_ABBREV'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = 'SALE_LEASE_CURRENCY_CODE'
      Size = 5
      Lookup = True
    end
    object cdsSaleOrderProductInfo_SALE_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SALE_LEASE_DATE_UNIT_NAME'
      LookupDataSet = cdsDateUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'THE_DATE_UNIT_NAME'
      KeyFields = 'SALE_LEASE_DATE_UNIT_CODE'
      Lookup = True
    end
  end
  object dsSaleOrderProductInfo: TDataSource
    DataSet = cdsSaleOrderProductInfo
    Left = 896
    Top = 144
  end
  object cdsSaleRequestGroup: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSaleOrders
    Params = <
      item
        DataType = ftFloat
        Name = 'REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_NO'
        ParamType = ptInput
      end>
    ProviderName = 'prvSaleRequestGroup'
    Left = 272
    object cdsSaleRequestGroupREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsSaleRequestGroupREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsSaleRequestGroupSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
    end
    object cdsSaleRequestGroupSALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object cdsSaleRequestGroupDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsSaleRequestGroupDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsSaleRequestGroupHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object cdsSaleRequestGroupSTREAM_TYPE_CODE: TAbmesFloatField
      FieldName = 'STREAM_TYPE_CODE'
    end
    object cdsSaleRequestGroupSTREAM_TYPE_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      FieldName = 'STREAM_TYPE_ABBREV'
      ProviderFlags = []
      Size = 100
    end
    object cdsSaleRequestGroupMEDIATOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'MEDIATOR_COMPANY_CODE'
    end
    object cdsSaleRequestGroupIS_ACTIVATED_BY_CLIENT: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'IS_ACTIVATED_BY_CLIENT'
      DisplayBoolValues = #1050#1083#1080#1077#1085#1090';'#1048#1055
      FieldValueType = fvtBoolean
    end
    object cdsSaleRequestGroupPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
    end
  end
  object dsSaleRequestGroup: TDataSource
    DataSet = cdsSaleRequestGroup
    Left = 304
  end
  object cdsDeliveryID: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSaleOrders
    Params = <
      item
        DataType = ftFloat
        Name = 'DCD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDeliveryID'
    Left = 664
    Top = 488
    object cdsDeliveryIDDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_OBJECT_BRANCH_CODE'
    end
    object cdsDeliveryIDDELIVERY_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_OBJECT_CODE'
    end
    object cdsDeliveryIDDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
    end
    object cdsDeliveryIDDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
    end
    object cdsDeliveryIDDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
    end
  end
  object pdsDeliveryID: TParamDataSet
    DataSet = cdsDeliveryID
    Left = 688
    Top = 488
    object pdsDeliveryIDDCD_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_BRANCH_CODE'
    end
    object pdsDeliveryIDDCD_CODE: TAbmesFloatField
      FieldName = 'DCD_CODE'
    end
    object pdsDeliveryIDDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
    end
  end
  object dsDeliveryID: TDataSource
    DataSet = pdsDeliveryID
    Left = 632
    Top = 488
  end
  object cdsSaleOrderDefaults: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSaleOrders
    Params = <
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RECEIVE_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'prvSaleOrderDefaults'
    Left = 248
    Top = 480
    object cdsSaleOrderDefaultsPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
    end
    object cdsSaleOrderDefaultsPARTNER_OFFICE_CODE: TAbmesFloatField
      FieldName = 'PARTNER_OFFICE_CODE'
    end
    object cdsSaleOrderDefaultsTRANSPORT_DURATION_DAYS: TAbmesFloatField
      FieldName = 'TRANSPORT_DURATION_DAYS'
    end
    object cdsSaleOrderDefaultsSHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_TYPE_CODE'
    end
    object cdsSaleOrderDefaultsIS_PARTNER_TRANSPORT: TAbmesFloatField
      FieldName = 'IS_PARTNER_TRANSPORT'
      FieldValueType = fvtBoolean
    end
    object cdsSaleOrderDefaultsCUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'CUSTOMHOUSE_CODE'
    end
    object cdsSaleOrderDefaultsSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object cdsSaleOrderDefaultsPRICE: TAbmesFloatField
      FieldName = 'PRICE'
    end
    object cdsSaleOrderDefaultsCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object cdsSaleOrderDefaultsLEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_CODE'
    end
  end
end
