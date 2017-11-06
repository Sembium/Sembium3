inherited fmDelivery: TfmDelivery
  Left = 221
  Top = 0
  Caption = #1054#1073#1086#1089#1086#1073#1077#1085' '#1044#1080#1072#1083#1086#1075' '#1089' '#1044#1086#1089#1090#1072#1074#1095#1080#1082' '#1079#1072' %ProductClassAbbrev% - %s'
  ClientHeight = 684
  ClientWidth = 1017
  DesignSize = (
    1017
    684)
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 649
    Width = 1017
    TabOrder = 13
    inherited pnlOKCancel: TPanel
      Left = 749
      TabOrder = 5
    end
    inherited pnlClose: TPanel
      Left = 660
      TabOrder = 4
    end
    inherited pnlApply: TPanel
      Left = 928
      TabOrder = 6
      Visible = False
    end
    object pnlPrintButton: TPanel
      Left = 641
      Top = 0
      Width = 83
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 3
      Visible = False
      object btnPrint: TBitBtn
        Left = 8
        Top = 2
        Width = 75
        Height = 25
        Action = actPrint
        Caption = #1055#1077#1095#1072#1090
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FF00FF0000000000C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FFFF
          FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
          FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C6000000000000000000C6C6
          C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
          C600FFFFFF00C6C6C600FFFFFF000000FF00FFFFFF000000000000000000FFFF
          FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
          FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C60000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF0000000000000000000000000000000000FFFF
          FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF000000000000000000FFFFFF00000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
          FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF0000000000C6C6C600FFFFFF0000000000FFFF
          FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000000000000000000000000000000000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 0
      end
    end
    object pnlFinishButton: TPanel
      Left = 0
      Top = 0
      Width = 113
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      Visible = False
      object btnDone: TBitBtn
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
      Visible = False
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
      Left = 395
      Top = 0
      Width = 119
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 7
      object chkAnnuled: TCheckBox
        Left = 16
        Top = 8
        Width = 105
        Height = 17
        Caption = #1054#1044#1044' '#1077' '#1072#1085#1091#1083#1080#1088#1072#1085
        Checked = True
        Enabled = False
        State = cbChecked
        TabOrder = 0
      end
    end
    object pnlFinished: TPanel
      Left = 514
      Top = 0
      Width = 127
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 8
      object chkFinished: TCheckBox
        Left = 16
        Top = 8
        Width = 113
        Height = 17
        Caption = #1054#1044#1044' '#1077' '#1087#1088#1080#1082#1083#1102#1095#1077#1085
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
  end
  object gbDeliveryID: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 473
    Height = 65
    Caption = ' ID '#1054#1044#1044' '
    TabOrder = 0
    object lblCode: TLabel
      Left = 63
      Top = 16
      Width = 19
      Height = 13
      Caption = #1058#1080#1087
    end
    object lblDCDBranch: TLabel
      Left = 103
      Top = 16
      Width = 33
      Height = 13
      Caption = #1058#1055' '#1043#1083'.'
    end
    object lblDCDCode: TLabel
      Left = 159
      Top = 16
      Width = 43
      Height = 13
      Caption = #1055#1044#1044' No'
    end
    object lblDeliveryProjectCode: TLabel
      Left = 251
      Top = 16
      Width = 14
      Height = 13
      Caption = 'No'
    end
    object lblStreamType: TLabel
      Left = 283
      Top = 16
      Width = 31
      Height = 13
      Caption = #1055#1086#1090#1086#1082
    end
    object lblAspect: TLabel
      Left = 359
      Top = 16
      Width = 36
      Height = 13
      Caption = #1040#1089#1087#1077#1082#1090
    end
    object lblIsActivatedByVendor: TLabel
      Left = 400
      Top = 16
      Width = 35
      Height = 13
      Caption = #1040#1082#1090'. '#1086#1090
    end
    object lblStatus: TLabel
      Left = 7
      Top = 16
      Width = 34
      Height = 13
      Caption = #1057#1090#1072#1090#1091#1089
    end
    object tlbDocs: TToolBar
      Left = 318
      Top = 32
      Width = 36
      Height = 22
      Align = alNone
      AutoSize = True
      ButtonWidth = 36
      Caption = 'tlbDocs'
      Images = dmMain.ilDocs
      TabOrder = 1
      object btnDocs: TToolButton
        Left = 0
        Top = 0
        Hint = #1052#1048#1048#1054' '#1085#1072' '#1054#1044#1044
        Caption = 'btnDocs'
        ImageIndex = 0
        ParentShowHint = False
        ShowHint = True
        OnClick = btnDocsClick
      end
    end
    object edtDCDType: TDBEdit
      Left = 64
      Top = 32
      Width = 33
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'DELIVERY_DEAL_TYPE_ABBREV'
      DataSource = dsDeficitCoverDecision
      ReadOnly = True
      TabOrder = 2
    end
    object edtDCDBranch: TDBEdit
      Left = 104
      Top = 32
      Width = 49
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'DCD_BRANCH_ID'
      DataSource = dsDeficitCoverDecision
      ReadOnly = True
      TabOrder = 3
    end
    object edtDCDCode: TDBEdit
      Left = 160
      Top = 32
      Width = 49
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'DCD_CODE'
      DataSource = dsDeficitCoverDecision
      ReadOnly = True
      TabOrder = 4
    end
    object edtDeliveryProjectCode: TDBEdit
      Left = 252
      Top = 32
      Width = 25
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'DELIVERY_PROJECT_CODE'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 5
    end
    object edtAspect: TDBEdit
      Left = 360
      Top = 32
      Width = 33
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'ASPECT_TYPE_ABBREV'
      DataSource = dsDeficitCoverDecision
      ReadOnly = True
      TabOrder = 6
    end
    object cbIsActivatedByVendor: TJvDBComboBox
      Left = 400
      Top = 32
      Width = 65
      Height = 21
      DataField = 'IS_ACTIVATED_BY_VENDOR'
      DataSource = dsData
      Items.Strings = (
        #1048#1055
        #1044#1086#1089#1090#1072#1074#1095#1080#1082)
      TabOrder = 7
      Values.Strings = (
        'False'
        'True')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object edtStatus: TDBEdit
      Left = 8
      Top = 32
      Width = 49
      Height = 21
      TabStop = False
      DataField = '_STATUS_CODE'
      DataSource = dsData
      TabOrder = 0
    end
    object edtStreamType: TDBEdit
      Left = 284
      Top = 32
      Width = 33
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'STREAM_TYPE_ABBREV'
      DataSource = dsDeficitCoverDecision
      ReadOnly = True
      TabOrder = 8
    end
    object tlbDCDDocs: TToolBar
      Left = 210
      Top = 31
      Width = 36
      Height = 22
      Align = alNone
      AutoSize = True
      ButtonWidth = 36
      Images = dmMain.ilDocs
      TabOrder = 9
      object btnDCDDocs: TToolButton
        Left = 0
        Top = 0
        Hint = #1052#1048#1048#1054' '#1085#1072' '#1055#1044#1044
        Caption = 'btnDocs'
        ImageIndex = 0
        ParentShowHint = False
        ShowHint = True
        OnClick = btnDCDDocsClick
      end
    end
  end
  object gbDates: TGroupBox [2]
    Left = 8
    Top = 224
    Width = 777
    Height = 121
    Caption = ' '#1044#1072#1090#1080' '#1087#1086' '#1044#1080#1072#1083#1086#1075' '
    TabOrder = 6
    object lblPlanPositionDate: TLabel
      Left = 312
      Top = 13
      Width = 89
      Height = 13
      Caption = #1055#1083#1072#1085#1086#1074#1072' '#1055#1079#1094'. '#1048#1055
    end
    object lblPlanVendorPositionDate: TLabel
      Left = 464
      Top = 13
      Width = 128
      Height = 13
      Caption = #1055#1083#1072#1085#1086#1074#1072' '#1055#1079#1094'. '#1044#1086#1089#1090#1072#1074#1095#1080#1082
    end
    object lblPlanDecisionDate: TLabel
      Left = 616
      Top = 13
      Width = 92
      Height = 13
      Caption = #1055#1083#1072#1085#1086#1074#1072' '#1056#1077#1096#1077#1085#1080#1077
    end
    object lblRealPositionDate: TLabel
      Left = 312
      Top = 99
      Width = 86
      Height = 13
      Caption = #1054#1090#1095#1077#1090#1085#1072' '#1055#1079#1094'. '#1048#1055
    end
    object lblRealVendorPositionDate: TLabel
      Left = 464
      Top = 99
      Width = 125
      Height = 13
      Caption = #1054#1090#1095#1077#1090#1085#1072' '#1055#1079#1094'. '#1044#1086#1089#1090#1072#1074#1095#1080#1082
    end
    object lblRealDecisionDate: TLabel
      Left = 616
      Top = 99
      Width = 89
      Height = 13
      Caption = #1054#1090#1095#1077#1090#1085#1072' '#1056#1077#1096#1077#1085#1080#1077
    end
    object lblPositionDatesAxis1: TLabel
      Left = 312
      Top = 48
      Width = 2
      Height = 26
      Caption = '|'#13#10'|'
      Color = clBtnFace
      ParentColor = False
    end
    object lblVendorPositionDatesAxis1: TLabel
      Left = 464
      Top = 48
      Width = 2
      Height = 26
      Caption = '|'#13#10'|'
      Color = clBtnFace
      ParentColor = False
    end
    object lblDecisionDatesAxis1: TLabel
      Left = 616
      Top = 48
      Width = 2
      Height = 26
      Caption = '|'#13#10'|'
      Color = clBtnFace
      ParentColor = False
    end
    object imgArrow3: TImage
      Left = 432
      Top = 40
      Width = 15
      Height = 11
      Picture.Data = {
        07544269746D617036010000424D360100000000000076000000280000001E00
        00000C0000000100040000000000C00000000000000000000000100000001000
        000000000000000080000080000000808000800000008000800080800000C0C0
        C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
        FF00777777778877777777777778877777007777777F00877777777777F77877
        77007777777F00087777777777F7778777007888888700008777888888777778
        7700F00000000000087F7777777777778700F00000000000008F777777777777
        7800F00000000000007F7777777777777700F00000000000077F777777777777
        7700FFFFFFFF0000777FFFFFFFF7777777007777777F00077777777777F77777
        77007777777F00777777777777F7777777007777777FF7777777777777FF7777
        7700}
      Transparent = True
    end
    object imgArrow4: TImage
      Left = 584
      Top = 40
      Width = 15
      Height = 11
      Picture.Data = {
        07544269746D617036010000424D360100000000000076000000280000001E00
        00000C0000000100040000000000C00000000000000000000000100000001000
        000000000000000080000080000000808000800000008000800080800000C0C0
        C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
        FF00777777778877777777777778877777007777777F00877777777777F77877
        77007777777F00087777777777F7778777007888888700008777888888777778
        7700F00000000000087F7777777777778700F00000000000008F777777777777
        7800F00000000000007F7777777777777700F00000000000077F777777777777
        7700FFFFFFFF0000777FFFFFFFF7777777007777777F00077777777777F77777
        77007777777F00777777777777F7777777007777777FF7777777777777FF7777
        7700}
      Transparent = True
    end
    object dbtPlanVendorPositionDateDiff: TDBText
      Left = 432
      Top = 24
      Width = 18
      Height = 14
      Alignment = taCenter
      DataField = '_PLAN_VENDOR_POSITION_DATE_DIFF'
      DataSource = dsData
    end
    object dbtPlanDecisionDateDiff: TDBText
      Left = 584
      Top = 24
      Width = 18
      Height = 13
      Alignment = taCenter
      DataField = '_PLAN_DECISION_DATE_DIFF'
      DataSource = dsData
    end
    object imgArrow5: TImage
      Left = 432
      Top = 72
      Width = 15
      Height = 11
      Picture.Data = {
        07544269746D617036010000424D360100000000000076000000280000001E00
        00000C0000000100040000000000C00000000000000000000000100000001000
        000000000000000080000080000000808000800000008000800080800000C0C0
        C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
        FF00777777778877777777777778877777007777777F00877777777777F77877
        77007777777F00087777777777F7778777007888888700008777888888777778
        7700F00000000000087F7777777777778700F00000000000008F777777777777
        7800F00000000000007F7777777777777700F00000000000077F777777777777
        7700FFFFFFFF0000777FFFFFFFF7777777007777777F00077777777777F77777
        77007777777F00777777777777F7777777007777777FF7777777777777FF7777
        7700}
      Transparent = True
    end
    object dbtRealVendorPositionDateDiff: TDBText
      Left = 432
      Top = 85
      Width = 18
      Height = 14
      Alignment = taCenter
      DataField = '_REAL_VENDOR_POSITION_DATE_DIFF'
      DataSource = dsData
    end
    object imgArrow6: TImage
      Left = 584
      Top = 72
      Width = 15
      Height = 11
      Picture.Data = {
        07544269746D617036010000424D360100000000000076000000280000001E00
        00000C0000000100040000000000C00000000000000000000000100000001000
        000000000000000080000080000000808000800000008000800080800000C0C0
        C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
        FF00777777778877777777777778877777007777777F00877777777777F77877
        77007777777F00087777777777F7778777007888888700008777888888777778
        7700F00000000000087F7777777777778700F00000000000008F777777777777
        7800F00000000000007F7777777777777700F00000000000077F777777777777
        7700FFFFFFFF0000777FFFFFFFF7777777007777777F00077777777777F77777
        77007777777F00777777777777F7777777007777777FF7777777777777FF7777
        7700}
      Transparent = True
    end
    object dbtRealDecisionDateDiff: TDBText
      Left = 584
      Top = 85
      Width = 18
      Height = 14
      Alignment = taCenter
      DataField = '_REAL_DECISION_DATE_DIFF'
      DataSource = dsData
    end
    object lblPositionDatesAxis2: TLabel
      Left = 414
      Top = 48
      Width = 2
      Height = 26
      Caption = '|'#13#10'|'
      Color = clBtnFace
      ParentColor = False
    end
    object lblVendorPositionDatesAxis2: TLabel
      Left = 565
      Top = 48
      Width = 2
      Height = 26
      Caption = '|'#13#10'|'
      Color = clBtnFace
      ParentColor = False
    end
    object dbtDatesDeviation: TDBText
      Left = 336
      Top = 56
      Width = 62
      Height = 14
      Alignment = taCenter
      DataField = '_DATES_DEVIATION'
      DataSource = dsData
    end
    object dbtVendorDatesDeviation: TDBText
      Left = 480
      Top = 56
      Width = 62
      Height = 14
      Alignment = taCenter
      DataField = '_VENDOR_DATES_DEVIATION'
      DataSource = dsData
    end
    object dbtDecisionDatesDeviation: TDBText
      Left = 640
      Top = 56
      Width = 62
      Height = 14
      Alignment = taCenter
      DataField = '_DECISION_DATES_DEVIATION'
      DataSource = dsData
    end
    object lblDecisionDatesAxis2: TLabel
      Left = 717
      Top = 46
      Width = 2
      Height = 26
      Caption = '|'#13#10'|'
      Color = clBtnFace
      ParentColor = False
    end
    object imgArrow1: TImage
      Left = 128
      Top = 56
      Width = 15
      Height = 11
      Picture.Data = {
        07544269746D617036010000424D360100000000000076000000280000001E00
        00000C0000000100040000000000C00000000000000000000000100000001000
        000000000000000080000080000000808000800000008000800080800000C0C0
        C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
        FF00777777778877777777777778877777007777777F00877777777777F77877
        77007777777F00087777777777F7778777007888888700008777888888777778
        7700F00000000000087F7777777777778700F00000000000008F777777777777
        7800F00000000000007F7777777777777700F00000000000077F777777777777
        7700FFFFFFFF0000777FFFFFFFF7777777007777777F00077777777777F77777
        77007777777F00777777777777F7777777007777777FF7777777777777FF7777
        7700}
      Transparent = True
    end
    object dbtRegisterDateDiff: TDBText
      Left = 128
      Top = 40
      Width = 18
      Height = 14
      Alignment = taCenter
      DataField = '_REGISTER_DATE_DIFF'
      DataSource = dsData
    end
    object lblStartDate: TLabel
      Left = 16
      Top = 32
      Width = 59
      Height = 13
      Caption = #1057#1090#1072#1088#1090#1080#1088#1072#1085#1077
    end
    object lblRegisterDate: TLabel
      Left = 152
      Top = 32
      Width = 71
      Height = 13
      Caption = #1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077
    end
    object dbtPlanPositionDateDiff: TDBText
      Left = 272
      Top = 24
      Width = 18
      Height = 14
      Alignment = taCenter
      DataField = '_PLAN_POSITION_DATE_DIFF'
      DataSource = dsData
    end
    object imgArrow2: TImage
      Left = 272
      Top = 40
      Width = 15
      Height = 11
      Picture.Data = {
        07544269746D617036010000424D360100000000000076000000280000001E00
        00000C0000000100040000000000C00000000000000000000000100000001000
        000000000000000080000080000000808000800000008000800080800000C0C0
        C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
        FF00777777778877777777777778877777007777777F00877777777777F77877
        77007777777F00087777777777F7778777007888888700008777888888777778
        7700F00000000000087F7777777777778700F00000000000008F777777777777
        7800F00000000000007F7777777777777700F00000000000077F777777777777
        7700FFFFFFFF0000777FFFFFFFF7777777007777777F00077777777777F77777
        77007777777F00777777777777F7777777007777777FF7777777777777FF7777
        7700}
      Transparent = True
    end
    object imgArrow7: TImage
      Left = 272
      Top = 72
      Width = 15
      Height = 11
      Picture.Data = {
        07544269746D617036010000424D360100000000000076000000280000001E00
        00000C0000000100040000000000C00000000000000000000000100000001000
        000000000000000080000080000000808000800000008000800080800000C0C0
        C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
        FF00777777778877777777777778877777007777777F00877777777777F77877
        77007777777F00087777777777F7778777007888888700008777888888777778
        7700F00000000000087F7777777777778700F00000000000008F777777777777
        7800F00000000000007F7777777777777700F00000000000077F777777777777
        7700FFFFFFFF0000777FFFFFFFF7777777007777777F00077777777777F77777
        77007777777F00777777777777F7777777007777777FF7777777777777FF7777
        7700}
      Transparent = True
    end
    object dbtRealPositionDateDiff: TDBText
      Left = 272
      Top = 85
      Width = 18
      Height = 14
      Alignment = taCenter
      DataField = '_REAL_POSITION_DATE_DIFF'
      DataSource = dsData
    end
    inline frPlanPositionDate: TfrDateFieldEditFrame
      Left = 312
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
    inline frRealPositionDate: TfrDateFieldEditFrame
      Left = 312
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
    inline frPlanVendorPositionDate: TfrDateFieldEditFrame
      Left = 464
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
    inline frRealVendorPositionDate: TfrDateFieldEditFrame
      Left = 464
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
    inline frPlanDecisionDate: TfrDateFieldEditFrame
      Left = 616
      Top = 32
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 6
      TabStop = True
    end
    inline frRealDecisionDate: TfrDateFieldEditFrame
      Left = 616
      Top = 72
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 7
      TabStop = True
    end
    inline frStartDate: TfrDateFieldEditFrame
      Left = 16
      Top = 48
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 0
      TabStop = True
    end
    inline frRegisterDate: TfrDateFieldEditFrame
      Left = 152
      Top = 48
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
  object gbTotalQuantity: TGroupBox [3]
    Left = 640
    Top = 152
    Width = 345
    Height = 65
    Caption = ' '#1044#1086#1075#1086#1074#1086#1088#1077#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' %ProductClassAbbrev% '#1087#1086' '#1055#1044#1044' '
    TabOrder = 5
    object lblTotalWorkQuantity: TLabel
      Left = 8
      Top = 16
      Width = 42
      Height = 13
      Caption = #1056#1072#1073#1086#1090#1085#1086
      FocusControl = edtTotalWorkQuantity
    end
    object lblTotalWorkQuantityMeasure: TDBText
      Left = 86
      Top = 35
      Width = 33
      Height = 13
      DataField = 'MEASURE_ABBREV'
      DataSource = dsDeficitCoverDecision
    end
    object edtTotalWorkQuantity: TDBEdit
      Left = 8
      Top = 32
      Width = 73
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'TOTAL_WORK_QUANTITY'
      DataSource = dsDeficitCoverDecision
      ReadOnly = True
      TabOrder = 0
    end
    object pnlAccountQuantity: TPanel
      Left = 216
      Top = 16
      Width = 113
      Height = 46
      BevelOuter = bvNone
      TabOrder = 1
      object lblTotalAccountQuantity: TLabel
        Left = 0
        Top = 0
        Width = 59
        Height = 13
        Caption = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1086
        FocusControl = edtTotalAccountQuantity
      end
      object lblTotalAccountQuantityMeasure: TDBText
        Left = 77
        Top = 19
        Width = 33
        Height = 13
        DataField = 'ACCOUNT_MEASURE_ABBREV'
        DataSource = dsDeficitCoverDecision
      end
      object edtTotalAccountQuantity: TDBEdit
        Left = 0
        Top = 16
        Width = 73
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'TOTAL_ACCOUNT_QUANTITY'
        DataSource = dsDeficitCoverDecision
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  object gbDecision: TGroupBox [4]
    Left = 792
    Top = 352
    Width = 217
    Height = 65
    Caption = ' '#1056#1077#1096#1077#1085#1080#1077' '
    TabOrder = 9
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
      DataField = 'DELIVERY_DECISION_CODE'
      DataSource = dsData
      DisplayEmpty = ' '
      FieldsDelimiter = '-'
      ListStyle = lsDelimited
      LookupField = 'DELIVERY_DECISION_CODE'
      LookupDisplay = 'DELIVERY_DECISION_ABBREV;DELIVERY_DECISION_NAME'
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
  inline frDecisionEmployee: TfrEmployeeFieldEditFrameLabeled [5]
    Left = 792
    Top = 424
    Width = 217
    Height = 65
    Constraints.MaxHeight = 65
    Constraints.MinHeight = 65
    TabOrder = 10
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
  inline frDialogEmployee: TfrEmployeeFieldEditFrameLabeled [6]
    Left = 792
    Top = 496
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
  object gbTransport: TGroupBox [7]
    Left = 8
    Top = 568
    Width = 1001
    Height = 73
    Caption = ' '#1059#1089#1083#1086#1074#1080#1103' '#1079#1072' '#1055#1086#1083#1091#1095#1072#1074#1072#1085#1077' '
    TabOrder = 12
    object pnlTransport1: TPanel
      Left = 2
      Top = 15
      Width = 52
      Height = 56
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object lblResolveDurationDays: TLabel
        Left = 8
        Top = 9
        Width = 39
        Height = 13
        Caption = #1055#1077#1088#1056#1077#1079
      end
      object lblCalendarDays: TLabel
        Left = 34
        Top = 27
        Width = 18
        Height = 13
        Caption = #1082'.'#1076'.'
      end
      object edtResolveDurationDays: TDBEdit
        Left = 8
        Top = 25
        Width = 25
        Height = 21
        AutoSize = False
        Color = clBtnFace
        DataField = 'RESOLVE_DURATION_DAYS'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 0
      end
    end
    object pnlTransport2: TPanel
      Left = 336
      Top = 15
      Width = 281
      Height = 56
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 3
      object lblTreeNodeName: TLabel
        Left = 8
        Top = 9
        Width = 158
        Height = 13
        Caption = #1058#1055' '#1047#1072#1076#1098#1088#1078'. '#1085#1072' '#1048#1055' '#1079#1072' '#1055#1086#1083#1091#1095#1072#1074'.'
      end
      inline frPSDStore: TfrDeptFieldEditFrameBald
        Left = 8
        Top = 25
        Width = 273
        Height = 22
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 22
        Constraints.MinHeight = 22
        TabOrder = 0
        TabStop = True
        DesignSize = (
          273
          22)
        inherited gbTreeNode: TGroupBox
          Width = 289
          DesignSize = (
            289
            49)
          inherited pnlTreeNode: TPanel
            Width = 273
            inherited pnlTreeNodeName: TPanel
              Width = 126
              DesignSize = (
                126
                22)
              inherited edtTreeNodeName: TDBEdit
                Width = 125
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = 126
            end
            inherited pnlRightButtons: TPanel
              Left = 237
            end
          end
        end
        inherited dsTreeNode: TDataSource
          Left = 32
          Top = 72
        end
      end
    end
    object pnlTransport3: TPanel
      Left = 617
      Top = 15
      Width = 385
      Height = 56
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 4
      object lblCustomhouse: TLabel
        Left = 8
        Top = 9
        Width = 44
        Height = 13
        Caption = #1052#1080#1090#1085#1080#1094#1072
      end
      object lblShipmentType: TLabel
        Left = 136
        Top = 9
        Width = 77
        Height = 13
        Caption = #1058#1098#1088#1075#1086#1074#1089#1082#1080' '#1050#1086#1076
      end
      object lblTransportBy: TLabel
        Left = 232
        Top = 9
        Width = 139
        Height = 13
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1058#1088#1072#1085#1089#1087#1086#1088#1090
      end
      object cbTransportBy: TJvDBComboBox
        Left = 232
        Top = 25
        Width = 140
        Height = 21
        DataField = 'IS_TRANSPORT_FROM_VENDOR'
        DataSource = dsData
        Items.Strings = (
          ''
          #1048#1055
          #1044#1086#1089#1090#1072#1074#1095#1080#1082)
        TabOrder = 2
        Values.Strings = (
          ''
          'True'
          'False')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object cbShipmentType: TJvDBLookupCombo
        Left = 136
        Top = 25
        Width = 87
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
        TabOrder = 1
      end
      object cbCustomhouse: TJvDBLookupCombo
        Left = 8
        Top = 25
        Width = 121
        Height = 21
        DataField = 'CUSTOMHOUSE_CODE'
        DataSource = dsData
        DisplayEmpty = ' '
        LookupField = 'CUSTOMHOUSE_CODE'
        LookupDisplay = 'CUSTOMHOUSE_NAME'
        LookupSource = dsCustomhouses
        TabOrder = 0
      end
    end
    object pnlTransport11: TPanel
      Left = 54
      Top = 15
      Width = 225
      Height = 56
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      object lblVendorOffice: TLabel
        Left = 8
        Top = 9
        Width = 134
        Height = 13
        Caption = #1058#1055' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1095#1080#1082' '#1079#1072' '#1045#1082#1089#1087'.'
      end
      object lblCountry: TLabel
        Left = 168
        Top = 9
        Width = 48
        Height = 13
        Caption = #1044#1098#1088#1078#1072#1074#1072
      end
      object cbVendorOffice: TJvDBLookupCombo
        Left = 8
        Top = 25
        Width = 153
        Height = 21
        DataField = 'DELIVERY_VENDOR_OFFICE_CODE'
        DataSource = dsData
        DisplayEmpty = ' '
        LookupField = 'OFFICE_CODE'
        LookupDisplay = 'OFFICE_NAME'
        LookupSource = dsVendorOffices
        TabOrder = 0
      end
      object edtCountry: TDBEdit
        Left = 168
        Top = 25
        Width = 57
        Height = 21
        Color = clBtnFace
        DataField = '_COUNTRY_ABBREV'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 1
      end
    end
    object pnlTransport12: TPanel
      Left = 279
      Top = 15
      Width = 57
      Height = 56
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 2
      object lblShipmentDays: TLabel
        Left = 8
        Top = 9
        Width = 43
        Height = 13
        Caption = #1055#1077#1088#1044#1074#1078
      end
      object edtShipmentDays: TDBEdit
        Left = 8
        Top = 25
        Width = 49
        Height = 21
        AutoSize = False
        DataField = 'SHIPMENT_DAYS'
        DataSource = dsData
        TabOrder = 0
      end
    end
  end
  object pnlPrices: TPanel [8]
    Left = 792
    Top = 224
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
        Width = 94
        Height = 13
        Caption = #1062#1077#1085#1072' '#1079#1072' '#1044#1086#1089#1090#1072#1074#1082#1072
      end
      object lblMaxPrice: TLabel
        Left = 16
        Top = 64
        Width = 65
        Height = 13
        Caption = #1052#1072#1082#1089#1080#1084#1072#1083#1085#1072
      end
      object lblBaseCurrency: TLabel
        Left = 125
        Top = 83
        Width = 56
        Height = 13
        Caption = '%BaseCur%'
      end
      object lblCaption3: TLabel
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
        DataSource = dsDeliveryProductInfo
      end
      object edtMarketPrice: TDBEdit
        Left = 16
        Top = 32
        Width = 105
        Height = 21
        Color = clBtnFace
        DataField = 'MARKET_PRICE'
        DataSource = dsDeliveryProductInfo
        ReadOnly = True
        TabOrder = 0
      end
      object edtMaxPrice: TDBEdit
        Left = 16
        Top = 80
        Width = 105
        Height = 21
        DataField = 'MAX_BASE_SINGLE_PRICE'
        DataSource = dsData
        TabOrder = 1
      end
      object edtMeasureAbbrev2: TDBEdit
        Left = 176
        Top = 32
        Width = 33
        Height = 21
        Color = clBtnFace
        DataField = 'MEASURE_ABBREV'
        DataSource = dsDeficitCoverDecision
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
      object lblLeaseSecondaryPrice: TLabel
        Left = 19
        Top = 16
        Width = 40
        Height = 13
        Caption = #1053#1072#1077#1084#1085#1072
      end
      object lblMaxPrice2: TLabel
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
      object lblLeaseDateUnitCode: TLabel
        Left = 80
        Top = 72
        Width = 79
        Height = 13
        Caption = #1053#1072#1077#1084#1085#1072' '#1089#1090#1098#1087#1082#1072
      end
      object lblCaption2: TLabel
        Left = 6
        Top = 91
        Width = 21
        Height = 13
        Caption = #1079#1072' 1'
      end
      object lblSlash2: TLabel
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
        DataField = '_DELIVERY_LEASE_CURRENCY_ABBREV'
        DataSource = dsDeliveryProductInfo
      end
      object lblBaseCurrencyAbbrev: TLabel
        Left = 180
        Top = 35
        Width = 56
        Height = 13
        Caption = '%BaseCur%'
      end
      object edtLeaseSecondaryPrice: TDBEdit
        Left = 19
        Top = 32
        Width = 54
        Height = 21
        Color = clBtnFace
        DataField = 'DELIVERY_LEASE_PRICE'
        DataSource = dsDeliveryProductInfo
        ReadOnly = True
        TabOrder = 0
      end
      object edtMaxPrice2: TDBEdit
        Left = 112
        Top = 32
        Width = 65
        Height = 21
        DataField = 'MAX_BASE_SINGLE_PRICE'
        DataSource = dsData
        TabOrder = 1
      end
      object edtMeasureAbbrev: TDBEdit
        Left = 32
        Top = 88
        Width = 33
        Height = 21
        Color = clBtnFace
        DataField = 'MEASURE_ABBREV'
        DataSource = dsDeficitCoverDecision
        ReadOnly = True
        TabOrder = 2
      end
      object edtLeaseDateUnitCode: TDBEdit
        Left = 80
        Top = 88
        Width = 81
        Height = 21
        Color = clBtnFace
        DataField = '_DELIVERY_LEASE_DATE_UNIT_NAME'
        DataSource = dsDeliveryProductInfo
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
  object pnlDialog: TPanel [9]
    Left = 8
    Top = 352
    Width = 777
    Height = 209
    Anchors = [akLeft, akTop, akBottom]
    BevelOuter = bvNone
    TabOrder = 8
    object gbDeliveryRealization: TGroupBox
      Left = 0
      Top = 627
      Width = 777
      Height = 209
      Align = alTop
      Caption = ' '#1044#1080#1072#1083#1086#1075' - '#1040#1089#1087#1077#1082#1090' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103'  '
      TabOrder = 0
      object gbDeliveryDate: TGroupBox
        Left = 8
        Top = 16
        Width = 129
        Height = 65
        Caption = ' '#1044#1072#1090#1072' '#1085#1072' '#1055#1086#1083#1091#1095#1072#1074#1072#1085#1077' '
        TabOrder = 0
        inline frDeliveryDate: TfrDateFieldEditFrame
          Left = 12
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
      end
      object gbQuantityContracted: TGroupBox
        Left = 144
        Top = 16
        Width = 233
        Height = 65
        Caption = ' '#1044#1086#1075#1086#1074#1072#1088#1103#1085#1086' '#1082'-'#1074#1086' '
        TabOrder = 1
        object lblWorkQuantity: TLabel
          Left = 8
          Top = 16
          Width = 42
          Height = 13
          Caption = #1056#1072#1073#1086#1090#1085#1086
          FocusControl = edtWorkQuantity
        end
        object lblWorkMeasure: TDBText
          Left = 78
          Top = 35
          Width = 33
          Height = 13
          DataField = '_MEASURE_ABBREV'
          DataSource = dsData
        end
        object lblAccountQuantity: TLabel
          Left = 120
          Top = 16
          Width = 59
          Height = 13
          Caption = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1086
          FocusControl = edtAccountQuantity
        end
        object lblAccountQuantityMeasure: TDBText
          Left = 190
          Top = 35
          Width = 33
          Height = 13
          DataField = '_ACCOUNT_MEASURE_ABBREV'
          DataSource = dsData
        end
        object edtWorkQuantity: TDBEdit
          Left = 8
          Top = 32
          Width = 65
          Height = 21
          DataField = 'WORK_QUANTITY'
          DataSource = dsData
          TabOrder = 0
        end
        object edtAccountQuantity: TDBEdit
          Left = 120
          Top = 32
          Width = 65
          Height = 21
          DataField = 'ACCOUNT_QUANTITY'
          DataSource = dsData
          TabOrder = 1
        end
      end
      object gbDeliveryContract: TGroupBox
        Left = 8
        Top = 88
        Width = 761
        Height = 113
        Caption = ' '#1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1044#1086#1089#1090#1072#1074#1082#1072' ('#1054#1055#1044') '
        TabOrder = 3
        object lblPriority: TLabel
          Left = 423
          Top = 20
          Width = 35
          Height = 13
          Caption = #1055#1088#1080#1086#1088'.'
        end
        object lblDCDType2: TLabel
          Left = 183
          Top = 20
          Width = 19
          Height = 13
          Caption = #1058#1080#1087
        end
        object lblDCDBranch2: TLabel
          Left = 223
          Top = 20
          Width = 33
          Height = 13
          Caption = #1058#1055' '#1043#1083'.'
        end
        object lblDCDCode2: TLabel
          Left = 287
          Top = 20
          Width = 43
          Height = 13
          Caption = #1055#1044#1044' No'
        end
        object lblDeliveryProjectCode2: TLabel
          Left = 343
          Top = 20
          Width = 14
          Height = 13
          Caption = 'No'
        end
        object lblType: TLabel
          Left = 375
          Top = 20
          Width = 19
          Height = 13
          Caption = #1042#1080#1076
        end
        object lblDCStatus: TLabel
          Left = 103
          Top = 20
          Width = 34
          Height = 13
          Caption = #1057#1090#1072#1090#1091#1089
        end
        object lblInvoiceNo: TLabel
          Left = 183
          Top = 67
          Width = 62
          Height = 13
          Caption = #1060#1072#1082#1090#1091#1088#1072' No'
        end
        object lblIsProformInvoice: TLabel
          Left = 311
          Top = 67
          Width = 19
          Height = 13
          Caption = #1042#1080#1076
        end
        object lblInvoiceDate: TLabel
          Left = 359
          Top = 67
          Width = 89
          Height = 13
          Caption = #1044#1072#1090#1072' '#1085#1072' '#1060#1072#1082#1090#1091#1088#1072
        end
        object lblInvoice2: TLabel
          Left = 127
          Top = 86
          Width = 48
          Height = 13
          Caption = #1060#1072#1082#1090#1091#1088#1072':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object btnCreateDeliveryContract: TButton
          Left = 8
          Top = 33
          Width = 81
          Height = 25
          Action = actCreateDeliveryContract
          TabOrder = 0
        end
        object btnDeliveryStoreDeals: TButton
          Left = 8
          Top = 81
          Width = 81
          Height = 25
          Action = actDeliveryStoreDeals
          TabOrder = 8
        end
        object edtDCDType2: TDBEdit
          Left = 184
          Top = 36
          Width = 33
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_DC_DDTA'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 2
        end
        object edtDCDBranch2: TDBEdit
          Left = 224
          Top = 36
          Width = 57
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_DC_DCD_BRANCH_ID'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 3
        end
        object edtDCDCode2: TDBEdit
          Left = 288
          Top = 36
          Width = 49
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_DC_DCD_CODE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 4
        end
        object edtDeliveryProjectCode2: TDBEdit
          Left = 344
          Top = 36
          Width = 25
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_DC_DELIVERY_PROJECT_CODE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 5
        end
        object cbPriority: TJvDBLookupCombo
          Left = 424
          Top = 36
          Width = 41
          Height = 21
          DataField = 'PRIORITY_CODE'
          DataSource = dsData
          DisplayEmpty = ' '
          LookupField = 'PRIORITY_CODE'
          LookupDisplay = 'PRIORITY_NO'
          LookupSource = dsPriorities
          TabOrder = 7
        end
        object edtDCStatus: TDBEdit
          Left = 104
          Top = 36
          Width = 57
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_DC_STATUS_CODE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 1
        end
        object cbType: TJvDBLookupCombo
          Left = 376
          Top = 36
          Width = 41
          Height = 21
          DataField = 'DELIVERY_TYPE_CODE'
          DataSource = dsData
          LookupField = 'DELIVERY_TYPE_CODE'
          LookupDisplay = 'DELIVERY_TYPE_ABBREV'
          LookupSource = dsDeliveryTypes
          TabOrder = 6
        end
        inline frInvoiceDate: TfrDateFieldEditFrame
          Left = 360
          Top = 83
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 12
          TabStop = True
        end
        object edtInvoiceNo: TDBEdit
          Left = 184
          Top = 83
          Width = 97
          Height = 21
          DataField = 'INVOICE_NO'
          DataSource = dsData
          TabOrder = 9
        end
        object edtInvoiceAbbrev: TDBEdit
          Left = 280
          Top = 83
          Width = 25
          Height = 21
          DataField = 'INVOICE_ABBREV'
          DataSource = dsData
          TabOrder = 10
        end
        object cbIsProformInvoice: TJvDBComboBox
          Left = 312
          Top = 83
          Width = 42
          Height = 21
          DataField = 'IS_PROFORM_INVOICE'
          DataSource = dsData
          Items.Strings = (
            ' '
            #1055
            #1060)
          TabOrder = 11
          Values.Strings = (
            ''
            'True'
            'False')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object pnlSale: TPanel
          Left = 488
          Top = 40
          Width = 265
          Height = 65
          BevelOuter = bvNone
          TabOrder = 14
          object gbSale: TGroupBox
            Left = 0
            Top = 0
            Width = 265
            Height = 65
            Align = alClient
            TabOrder = 0
            object lblSaleNo: TLabel
              Left = 71
              Top = 19
              Width = 41
              Height = 13
              Caption = #1054#1055#1055' No'
            end
            object lblSaleBranch: TLabel
              Left = 7
              Top = 19
              Width = 33
              Height = 13
              Caption = #1058#1055' '#1043#1083'.'
            end
            object btnSale: TButton
              Left = 136
              Top = 33
              Width = 41
              Height = 25
              Action = actSale
              TabOrder = 2
            end
            object edtSaleNo: TDBEdit
              Left = 72
              Top = 35
              Width = 57
              Height = 21
              DataField = 'SALE_NO'
              DataSource = dsSaleID
              TabOrder = 1
              OnExit = edtSaleNoExit
            end
            object cbSaleBranch: TJvDBLookupCombo
              Left = 8
              Top = 35
              Width = 57
              Height = 21
              DropDownWidth = 200
              DeleteKeyClear = False
              DataField = 'SALE_BRANCH_CODE'
              DataSource = dsSaleID
              DisplayEmpty = ' '
              LookupField = 'BRANCH_CODE'
              LookupDisplay = 'BRANCH_CODE_AND_NAME'
              LookupSource = dsBranches
              TabOrder = 0
              OnExit = cbSaleBranchExit
            end
          end
        end
        object btnFinOrder: TButton
          Left = 680
          Top = 14
          Width = 73
          Height = 25
          Action = actFinOrder
          TabOrder = 15
        end
        object pnlIsSaleRequired: TPanel
          Left = 496
          Top = 33
          Width = 129
          Height = 17
          BevelOuter = bvNone
          TabOrder = 13
          object chkIsSaleRequired: TCheckBox
            Left = 4
            Top = 0
            Width = 125
            Height = 17
            Action = actIsSaleRequired
            State = cbChecked
            TabOrder = 0
          end
        end
        object pnlBOIOrder: TPanel
          Left = 576
          Top = 64
          Width = 185
          Height = 49
          BevelOuter = bvNone
          TabOrder = 16
          object lblBOIOrder: TLabel
            Left = 0
            Top = 4
            Width = 44
            Height = 13
            Caption = 'ID '#1054#1051#1041#1057
          end
          object edtBOIOrder: TDBEdit
            Left = 0
            Top = 20
            Width = 97
            Height = 21
            Color = clBtnFace
            DataField = 'BOI_ORDER_IDENTIFIER'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 0
          end
          object btnBOIOrder: TButton
            Left = 102
            Top = 17
            Width = 75
            Height = 25
            Action = actBOIOrder
            TabOrder = 1
          end
        end
      end
      object pnlDialogRealizationPrices: TPanel
        Left = 384
        Top = 16
        Width = 385
        Height = 65
        BevelOuter = bvNone
        TabOrder = 2
        object gbPrice: TGroupBox
          Left = 0
          Top = 65
          Width = 385
          Height = 65
          Align = alTop
          Caption = ' '#1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '
          TabOrder = 0
          object lblSinglePrice: TLabel
            Left = 8
            Top = 16
            Width = 45
            Height = 13
            Caption = #1045#1076'. '#1062#1077#1085#1072
            FocusControl = edtSinglePrice
          end
          object lblCurrency: TLabel
            Left = 88
            Top = 16
            Width = 35
            Height = 13
            Caption = #1042#1072#1083#1091#1090#1072
            FocusControl = cbCurrency
          end
          object lblSlash10: TLabel
            Left = 140
            Top = 35
            Width = 5
            Height = 13
            Caption = '/'
          end
          object dbtDisplayMeasure9: TDBText
            Left = 148
            Top = 35
            Width = 29
            Height = 13
            DataField = '_MEASURE_ABBREV'
            DataSource = dsData
          end
          object lblTotalPrice: TLabel
            Left = 184
            Top = 16
            Width = 79
            Height = 13
            Caption = #1054#1073#1097#1072' '#1057#1090#1086#1081#1085#1086#1089#1090
          end
          object lblSecondaryCurrencyAbbrev2: TLabel
            Left = 341
            Top = 35
            Width = 36
            Height = 13
            AutoSize = False
            Caption = '%SecCur%'
          end
          object dbtCurrency5: TDBText
            Left = 245
            Top = 35
            Width = 63
            Height = 13
            AutoSize = True
            DataField = '_CURRENCY_ABBREV'
            DataSource = dsData
          end
          object cbCurrency: TJvDBLookupCombo
            Left = 88
            Top = 32
            Width = 49
            Height = 21
            DataField = 'CURRENCY_CODE'
            DataSource = dsData
            LookupField = 'CURRENCY_CODE'
            LookupDisplay = 'CURRENCY_ABBREV'
            LookupSource = dsCurrencies
            TabOrder = 1
          end
          object edtSinglePrice: TDBEdit
            Left = 8
            Top = 32
            Width = 73
            Height = 21
            DataField = 'SINGLE_PRICE'
            DataSource = dsData
            TabOrder = 0
          end
          object edtTotalPrice: TDBEdit
            Left = 184
            Top = 32
            Width = 57
            Height = 21
            DataField = 'TOTAL_PRICE'
            DataSource = dsData
            TabOrder = 2
          end
          object edtDeliveryTotalPrice: TDBEdit
            Left = 280
            Top = 32
            Width = 57
            Height = 21
            Color = clBtnFace
            DataField = '_DELIVERY_TOTAL_PRICE_SC'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 3
          end
        end
        object gbPriceImport: TGroupBox
          Left = 0
          Top = 0
          Width = 385
          Height = 65
          Align = alTop
          Caption = ' '#1044#1086#1075#1086#1074#1072#1088#1103#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '
          TabOrder = 1
          object lblPriceImportTotalValue: TLabel
            Left = 200
            Top = 16
            Width = 79
            Height = 13
            Caption = #1054#1073#1097#1072' '#1057#1090#1086#1081#1085#1086#1089#1090
          end
          object lblPriceImportSinglePrice: TLabel
            Left = 8
            Top = 16
            Width = 45
            Height = 13
            Caption = #1045#1076'. '#1062#1077#1085#1072
          end
          object lblPriceImportCurrency: TLabel
            Left = 88
            Top = 16
            Width = 35
            Height = 13
            Caption = #1042#1072#1083#1091#1090#1072
          end
          object lblSlash9: TLabel
            Left = 140
            Top = 35
            Width = 5
            Height = 13
            Caption = '/'
          end
          object dbtDisplayMeasure8: TDBText
            Left = 148
            Top = 35
            Width = 29
            Height = 13
            DataField = '_MEASURE_ABBREV'
            DataSource = dsData
          end
          object edtPriceImportSinglePrice: TEdit
            Left = 8
            Top = 32
            Width = 73
            Height = 21
            BiDiMode = bdRightToLeft
            Color = clBtnFace
            ParentBiDiMode = False
            ReadOnly = True
            TabOrder = 0
            Text = '0'
          end
          object edtPriceImportCurrency: TEdit
            Left = 88
            Top = 32
            Width = 49
            Height = 21
            Color = clBtnFace
            ReadOnly = True
            TabOrder = 1
          end
          object edtPriceImportTotalValue: TEdit
            Left = 200
            Top = 32
            Width = 89
            Height = 21
            BiDiMode = bdRightToLeft
            Color = clBtnFace
            ParentBiDiMode = False
            ReadOnly = True
            TabOrder = 2
            Text = '0'
          end
        end
      end
    end
    object gbLeaseRealization: TGroupBox
      Left = 0
      Top = 0
      Width = 777
      Height = 209
      Align = alTop
      Caption = ' '#1044#1080#1072#1083#1086#1075' - '#1040#1089#1087#1077#1082#1090' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103'  '
      TabOrder = 1
      object gbLeaseDatesInterval: TGroupBox
        Left = 8
        Top = 16
        Width = 161
        Height = 73
        Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1053#1072#1077#1084' '
        TabOrder = 0
        inline frLeaseDates: TfrDateIntervalFrame
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
      end
      object gbLeaseQuantities: TGroupBox
        Left = 176
        Top = 16
        Width = 305
        Height = 73
        Caption = ' '#1044#1086#1075#1086#1074#1072#1088#1103#1085#1086' '#1050'-'#1074#1086' %ProductClassAbbrev% '
        TabOrder = 1
        object lblFor: TLabel
          Left = 88
          Top = 43
          Width = 12
          Height = 13
          Caption = #1079#1072
        end
        object lblLeaseDateUnitQty: TLabel
          Left = 105
          Top = 24
          Width = 22
          Height = 13
          Caption = #1050'-'#1074#1086
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
            Width = 89
            Height = 49
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object lblWorkQuantity2: TLabel
              Left = 0
              Top = 8
              Width = 42
              Height = 13
              Caption = #1056#1072#1073#1086#1090#1085#1086
              FocusControl = edtWorkQuantity2
            end
            object lblWorkMeasure2: TDBText
              Left = 51
              Top = 28
              Width = 27
              Height = 13
              DataField = '_MEASURE_ABBREV'
              DataSource = dsData
            end
            object edtWorkQuantity2: TDBEdit
              Left = 0
              Top = 24
              Width = 49
              Height = 21
              DataField = 'WORK_QUANTITY'
              DataSource = dsData
              TabOrder = 0
            end
          end
          object pnlLeaseRealizationAccount: TPanel
            Left = 89
            Top = 0
            Width = 89
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
              FocusControl = edtAccountQuantity2
            end
            object lblAccountMeasure2: TDBText
              Left = 51
              Top = 28
              Width = 27
              Height = 13
              DataField = 'ACCOUNT_MEASURE_ABBREV'
              DataSource = dsDeficitCoverDecision
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
        Top = 16
        Width = 281
        Height = 73
        Caption = ' '#1044#1086#1075#1086#1074#1072#1088#1103#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '
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
        object pnlTotalPrice: TPanel
          Left = 152
          Top = 8
          Width = 126
          Height = 57
          BevelOuter = bvNone
          TabOrder = 2
          object lblTotalPrice2: TLabel
            Left = 17
            Top = 0
            Width = 79
            Height = 13
            Caption = #1054#1073#1097#1072' '#1057#1090#1086#1081#1085#1086#1089#1090
          end
          object dbtCurrency2: TDBText
            Left = 0
            Top = 16
            Width = 63
            Height = 13
            Alignment = taCenter
            AutoSize = True
            DataField = '_CURRENCY_ABBREV'
            DataSource = dsData
          end
          object lblSecondaryCurrencyAbbrev5: TLabel
            Left = 64
            Top = 16
            Width = 57
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = '%SecCur%'
          end
          object edtTotalPrice2: TDBEdit
            Left = 0
            Top = 32
            Width = 57
            Height = 21
            Color = clBtnFace
            DataField = '_DELIVERY_TOTAL_PRICE'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 0
          end
          object edtTotalPriceSC2: TDBEdit
            Left = 64
            Top = 32
            Width = 57
            Height = 21
            Color = clBtnFace
            DataField = '_DELIVERY_TOTAL_PRICE_SC'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 1
          end
        end
      end
      object gbDeliveryContract2: TGroupBox
        Left = 8
        Top = 91
        Width = 761
        Height = 110
        Caption = ' '#1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1044#1086#1089#1090#1072#1074#1082#1072' ('#1054#1055#1044') '
        TabOrder = 3
        object lblPriority2: TLabel
          Left = 423
          Top = 20
          Width = 35
          Height = 13
          Caption = #1055#1088#1080#1086#1088'.'
        end
        object lblDCDType3: TLabel
          Left = 183
          Top = 20
          Width = 19
          Height = 13
          Caption = #1058#1080#1087
        end
        object lblDCDBranch3: TLabel
          Left = 223
          Top = 20
          Width = 33
          Height = 13
          Caption = #1058#1055' '#1043#1083'.'
        end
        object lblDCDCode3: TLabel
          Left = 287
          Top = 20
          Width = 43
          Height = 13
          Caption = #1055#1044#1044' No'
        end
        object lblDeliveryProjectCode3: TLabel
          Left = 343
          Top = 20
          Width = 14
          Height = 13
          Caption = 'No'
        end
        object lblType2: TLabel
          Left = 375
          Top = 20
          Width = 19
          Height = 13
          Caption = #1042#1080#1076
        end
        object lblDCStatus2: TLabel
          Left = 103
          Top = 20
          Width = 34
          Height = 13
          Caption = #1057#1090#1072#1090#1091#1089
        end
        object btnCreateDeliveryContract2: TButton
          Left = 8
          Top = 34
          Width = 81
          Height = 25
          Action = actCreateDeliveryContract
          TabOrder = 0
        end
        object btnDeliveryStoreDeals2: TButton
          Left = 8
          Top = 75
          Width = 81
          Height = 25
          Action = actDeliveryStoreDeals
          TabOrder = 8
        end
        object edtDCDType3: TDBEdit
          Left = 184
          Top = 36
          Width = 33
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_DC_DDTA'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 2
        end
        object edtDCDBranch3: TDBEdit
          Left = 224
          Top = 36
          Width = 57
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_DC_DCD_BRANCH_ID'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 3
        end
        object edtDCDCode3: TDBEdit
          Left = 288
          Top = 36
          Width = 49
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_DC_DCD_CODE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 4
        end
        object edtDeliveryProjectCode3: TDBEdit
          Left = 344
          Top = 36
          Width = 25
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_DC_DELIVERY_PROJECT_CODE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 5
        end
        object cbPriority2: TJvDBLookupCombo
          Left = 424
          Top = 36
          Width = 41
          Height = 21
          DataField = 'PRIORITY_CODE'
          DataSource = dsData
          DisplayEmpty = ' '
          LookupField = 'PRIORITY_CODE'
          LookupDisplay = 'PRIORITY_NO'
          LookupSource = dsPriorities
          TabOrder = 7
        end
        object edtDCStatus2: TDBEdit
          Left = 104
          Top = 36
          Width = 57
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_DC_STATUS_CODE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 1
        end
        object cbType2: TJvDBLookupCombo
          Left = 376
          Top = 36
          Width = 41
          Height = 21
          DeleteKeyClear = False
          DataField = 'DELIVERY_TYPE_CODE'
          DataSource = dsData
          LookupField = 'DELIVERY_TYPE_CODE'
          LookupDisplay = 'DELIVERY_TYPE_ABBREV'
          LookupSource = dsDeliveryTypes
          TabOrder = 6
        end
        object btnFinOrder2: TButton
          Left = 680
          Top = 14
          Width = 73
          Height = 25
          Action = actFinOrder
          TabOrder = 10
        end
        object pnlInvoice: TPanel
          Left = 127
          Top = 57
          Width = 370
          Height = 41
          BevelOuter = bvNone
          TabOrder = 9
          object lbltInvoiceNo2: TLabel
            Left = 56
            Top = 4
            Width = 62
            Height = 13
            Caption = #1060#1072#1082#1090#1091#1088#1072' No'
          end
          object lblIsProformInvoice2: TLabel
            Left = 183
            Top = 4
            Width = 19
            Height = 13
            Caption = #1042#1080#1076
          end
          object lblInvoiceDate2: TLabel
            Left = 231
            Top = 4
            Width = 89
            Height = 13
            Caption = #1044#1072#1090#1072' '#1085#1072' '#1060#1072#1082#1090#1091#1088#1072
          end
          object lblInvoice: TLabel
            Left = -1
            Top = 23
            Width = 48
            Height = 13
            Caption = #1060#1072#1082#1090#1091#1088#1072':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object edtInvoiceNo2: TDBEdit
            Left = 56
            Top = 20
            Width = 97
            Height = 21
            DataField = 'INVOICE_NO'
            DataSource = dsData
            TabOrder = 0
          end
          object edtInvoiceAbbrev2: TDBEdit
            Left = 152
            Top = 20
            Width = 25
            Height = 21
            DataField = 'INVOICE_ABBREV'
            DataSource = dsData
            TabOrder = 1
          end
          object cbIsProformInvoice2: TJvDBComboBox
            Left = 183
            Top = 20
            Width = 42
            Height = 21
            DataField = 'IS_PROFORM_INVOICE'
            DataSource = dsData
            Items.Strings = (
              ' '
              #1055
              #1060)
            TabOrder = 2
            Values.Strings = (
              ''
              'True'
              'False')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
            ListSettings.OutfilteredValueFont.Style = []
          end
          inline frInvoiceDate2: TfrDateFieldEditFrame
            Left = 232
            Top = 20
            Width = 105
            Height = 21
            Constraints.MaxHeight = 21
            Constraints.MaxWidth = 105
            Constraints.MinHeight = 21
            Constraints.MinWidth = 105
            TabOrder = 3
            TabStop = True
          end
        end
        object pnlBOIOrder2: TPanel
          Left = 576
          Top = 56
          Width = 185
          Height = 49
          BevelOuter = bvNone
          TabOrder = 11
          object lblBOIOrder2: TLabel
            Left = 0
            Top = 4
            Width = 44
            Height = 13
            Caption = 'ID '#1054#1051#1041#1057
          end
          object edtBOIOrder2: TDBEdit
            Left = 0
            Top = 20
            Width = 97
            Height = 21
            Color = clBtnFace
            DataField = 'BOI_ORDER_IDENTIFIER'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 0
          end
          object btnBOIOrder2: TButton
            Left = 102
            Top = 17
            Width = 75
            Height = 25
            Action = actBOIOrder
            TabOrder = 1
          end
        end
      end
    end
    object gbDeliveryPrognosis: TGroupBox
      Left = 0
      Top = 209
      Width = 777
      Height = 209
      Align = alTop
      Caption = ' '#1044#1080#1072#1083#1086#1075' - '#1040#1089#1087#1077#1082#1090' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072' '
      TabOrder = 2
      object lblPrognosisInterval: TLabel
        Left = 15
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
          Left = 425
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
          Width = 16
          Height = 13
          Caption = #1048#1055
        end
        object lblVendorOffer: TLabel
          Left = 9
          Top = 60
          Width = 55
          Height = 13
          Caption = #1044#1086#1089#1090#1072#1074#1095#1080#1082
        end
        object lblCoherence: TLabel
          Left = 9
          Top = 84
          Width = 66
          Height = 13
          Caption = #1057#1098#1075#1083#1072#1089#1091#1074#1072#1085#1086
        end
        object lblSlash3: TLabel
          Left = 572
          Top = 35
          Width = 5
          Height = 13
          Caption = '/'
        end
        object dbtDisplayMeasure2: TDBText
          Left = 580
          Top = 35
          Width = 29
          Height = 13
          DataField = '_MEASURE_ABBREV'
          DataSource = dsData
        end
        object lblSlash4: TLabel
          Left = 572
          Top = 59
          Width = 5
          Height = 13
          Caption = '/'
        end
        object dbtDisplayMeasure3: TDBText
          Left = 580
          Top = 59
          Width = 29
          Height = 13
          DataField = '_MEASURE_ABBREV'
          DataSource = dsData
        end
        object lblSlash5: TLabel
          Left = 572
          Top = 83
          Width = 5
          Height = 13
          Caption = '/'
        end
        object dbtDisplayMeasure4: TDBText
          Left = 580
          Top = 83
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
        object edtVendorOfferQuantity: TDBEdit
          Left = 104
          Top = 56
          Width = 89
          Height = 21
          DataField = 'VENDOR_OFFER_QUANTITY'
          DataSource = dsData
          TabOrder = 4
        end
        object edtQuantity3: TDBEdit
          Left = 104
          Top = 80
          Width = 89
          Height = 21
          DataField = 'WORK_QUANTITY'
          DataSource = dsData
          TabOrder = 8
        end
        object edtOurOfferAccountQuantity: TDBEdit
          Left = 232
          Top = 32
          Width = 89
          Height = 21
          DataField = 'OUR_OFFER_ACCOUNT_QUANTITY'
          DataSource = dsData
          TabOrder = 1
        end
        object edtVendorOfferAccountQuantity: TDBEdit
          Left = 232
          Top = 56
          Width = 89
          Height = 21
          DataField = 'VENDOR_OFFER_ACCOUNT_QUANTITY'
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
          Left = 424
          Top = 32
          Width = 89
          Height = 21
          DataField = 'OUR_OFFER_SINGLE_PRICE'
          DataSource = dsData
          TabOrder = 2
        end
        object edtVendorOfferSinglePrice: TDBEdit
          Left = 424
          Top = 56
          Width = 89
          Height = 21
          DataField = 'VENDOR_OFFER_SINGLE_PRICE'
          DataSource = dsData
          TabOrder = 6
        end
        object edtSinglePrice3: TDBEdit
          Left = 424
          Top = 80
          Width = 89
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
          DataField = 'OUR_OFFER_CURRENCY_CODE'
          DataSource = dsData
          DisplayEmpty = ' '
          LookupField = 'CURRENCY_CODE'
          LookupDisplay = 'CURRENCY_ABBREV'
          LookupSource = dsCurrencies
          TabOrder = 3
        end
        object cbClientOfferCurrency: TJvDBLookupCombo
          Left = 520
          Top = 56
          Width = 49
          Height = 21
          DataField = 'VENDOR_OFFER_CURRENCY_CODE'
          DataSource = dsData
          DisplayEmpty = ' '
          LookupField = 'CURRENCY_CODE'
          LookupDisplay = 'CURRENCY_ABBREV'
          LookupSource = dsCurrencies
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
        Caption = ' '#1054#1073#1097#1072' '#1057#1090#1086#1081#1085#1086#1089#1090' '
        TabOrder = 2
        object dbtCurrency3: TDBText
          Left = 84
          Top = 35
          Width = 31
          Height = 15
          DataField = '_AGREE_CURRENCY_ABBREV'
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
          DataField = '_DELIVERY_TOTAL_PRICE'
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
          DataField = '_DELIVERY_TOTAL_PRICE_SC'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 1
        end
      end
    end
    object gbLeasePrognosis: TGroupBox
      Left = 0
      Top = 418
      Width = 777
      Height = 209
      Align = alTop
      Caption = ' '#1044#1080#1072#1083#1086#1075' - '#1040#1089#1087#1077#1082#1090' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072' '
      TabOrder = 3
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
        Width = 617
        Height = 113
        Caption = ' '#1055#1086#1079#1080#1094#1080#1080' '#1087#1086' '#1044#1080#1072#1083#1086#1075' '
        TabOrder = 1
        object lblOfferLeaseDateUnitQty: TLabel
          Left = 201
          Top = 16
          Width = 22
          Height = 13
          Caption = #1050'-'#1074#1086
        end
        object lblOfferSinglePrice2: TLabel
          Left = 441
          Top = 16
          Width = 67
          Height = 13
          Caption = #1045#1076'. '#1053#1084'. '#1062#1077#1085#1072
        end
        object lblOfferCurrency2: TLabel
          Left = 521
          Top = 16
          Width = 35
          Height = 13
          Caption = #1042#1072#1083#1091#1090#1072
        end
        object lblOurOffer2: TLabel
          Left = 9
          Top = 36
          Width = 16
          Height = 13
          Caption = #1048#1055
        end
        object lblVendorOffer2: TLabel
          Left = 9
          Top = 60
          Width = 55
          Height = 13
          Caption = #1044#1086#1089#1090#1072#1074#1095#1080#1082
        end
        object lblCoherence2: TLabel
          Left = 9
          Top = 84
          Width = 66
          Height = 13
          Caption = #1057#1098#1075#1083#1072#1089#1091#1074#1072#1085#1086
        end
        object lblOfferLeaseDateUnit: TLabel
          Left = 241
          Top = 16
          Width = 80
          Height = 13
          Caption = #1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072
        end
        object lblOfferTotalLeaseQuantity: TLabel
          Left = 337
          Top = 16
          Width = 86
          Height = 13
          Caption = #1050'-'#1074#1086' '#1056#1072#1073'. '#1056#1077#1089#1091#1088#1089
        end
        object lblSlash6: TLabel
          Left = 572
          Top = 35
          Width = 5
          Height = 13
          Caption = '/'
        end
        object dbtDisplayMeasure5: TDBText
          Left = 580
          Top = 35
          Width = 29
          Height = 13
          DataField = '_MEASURE_ABBREV'
          DataSource = dsData
        end
        object lblSlash7: TLabel
          Left = 572
          Top = 59
          Width = 5
          Height = 13
          Caption = '/'
        end
        object dbtDisplayMeasure6: TDBText
          Left = 580
          Top = 59
          Width = 29
          Height = 13
          DataField = '_MEASURE_ABBREV'
          DataSource = dsData
        end
        object lblSlash8: TLabel
          Left = 572
          Top = 83
          Width = 5
          Height = 13
          Caption = '/'
        end
        object dbtDisplayMeasure7: TDBText
          Left = 580
          Top = 83
          Width = 29
          Height = 13
          DataField = '_MEASURE_ABBREV'
          DataSource = dsData
        end
        object edtOurOfferLeaseDateUnitQty: TDBEdit
          Left = 200
          Top = 32
          Width = 33
          Height = 21
          DataField = 'OUR_OFFER_LEASE_DATE_UNIT_QTY'
          DataSource = dsData
          TabOrder = 0
        end
        object edtVendorOfferLeaseDateUnitQty: TDBEdit
          Left = 200
          Top = 56
          Width = 33
          Height = 21
          DataField = 'V_OFFER_LEASE_DATE_UNIT_QTY'
          DataSource = dsData
          TabOrder = 5
        end
        object edtLeaseDateUnitQty2: TDBEdit
          Left = 200
          Top = 80
          Width = 33
          Height = 21
          DataField = 'LEASE_DATE_UNIT_QTY'
          DataSource = dsData
          TabOrder = 10
        end
        object edtOurOfferSinglePrice2: TDBEdit
          Left = 440
          Top = 32
          Width = 73
          Height = 21
          DataField = 'OUR_OFFER_SINGLE_PRICE'
          DataSource = dsData
          TabOrder = 3
        end
        object edtVendorOfferSinglePrice2: TDBEdit
          Left = 440
          Top = 56
          Width = 73
          Height = 21
          DataField = 'VENDOR_OFFER_SINGLE_PRICE'
          DataSource = dsData
          TabOrder = 8
        end
        object edtSinglePrice4: TDBEdit
          Left = 440
          Top = 80
          Width = 73
          Height = 21
          DataField = 'SINGLE_PRICE'
          DataSource = dsData
          TabOrder = 13
        end
        object cbOurOfferCurrency2: TJvDBLookupCombo
          Left = 520
          Top = 32
          Width = 49
          Height = 21
          DataField = 'OUR_OFFER_CURRENCY_CODE'
          DataSource = dsData
          DisplayEmpty = ' '
          LookupField = 'CURRENCY_CODE'
          LookupDisplay = 'CURRENCY_ABBREV'
          LookupSource = dsCurrencies
          TabOrder = 4
        end
        object cbClientOfferCurrency2: TJvDBLookupCombo
          Left = 520
          Top = 56
          Width = 49
          Height = 21
          DataField = 'VENDOR_OFFER_CURRENCY_CODE'
          DataSource = dsData
          DisplayEmpty = ' '
          LookupField = 'CURRENCY_CODE'
          LookupDisplay = 'CURRENCY_ABBREV'
          LookupSource = dsCurrencies
          TabOrder = 9
        end
        object cbCurrency4: TJvDBLookupCombo
          Left = 520
          Top = 80
          Width = 49
          Height = 21
          DataField = '_CURRENCY_ABBREV'
          DataSource = dsData
          DisplayEmpty = ' '
          TabOrder = 14
        end
        object cbLeaseDateUnit: TJvDBLookupCombo
          Left = 240
          Top = 80
          Width = 89
          Height = 21
          DataField = 'LEASE_DATE_UNIT_CODE'
          DataSource = dsData
          DisplayEmpty = ' '
          LookupField = 'THE_DATE_UNIT_CODE'
          LookupDisplay = 'THE_DATE_UNIT_NAME'
          LookupSource = dsDateUnits
          TabOrder = 11
        end
        object edtTotalLeaseQuantity2: TDBEdit
          Left = 336
          Top = 80
          Width = 89
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_TOTAL_LEASE_QUANTITY'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 12
        end
        object cbVendorOfferLeaseDateUnit: TJvDBLookupCombo
          Left = 240
          Top = 56
          Width = 89
          Height = 21
          DataField = 'V_OFFER_LEASE_DATE_UNIT_CODE'
          DataSource = dsData
          DisplayEmpty = ' '
          LookupField = 'THE_DATE_UNIT_CODE'
          LookupDisplay = 'THE_DATE_UNIT_NAME'
          LookupSource = dsDateUnits
          TabOrder = 6
        end
        object edtVendorOfferTotalLeaseQuantity: TDBEdit
          Left = 336
          Top = 56
          Width = 89
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_V_OFFER_TOTAL_LEASE_QUANTITY'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 7
        end
        object cbOurOfferLeaseDateUnit: TJvDBLookupCombo
          Left = 240
          Top = 32
          Width = 89
          Height = 21
          DataField = 'OUR_OFFER_LEASE_DATE_UNIT_CODE'
          DataSource = dsData
          DisplayEmpty = ' '
          LookupField = 'THE_DATE_UNIT_CODE'
          LookupDisplay = 'THE_DATE_UNIT_NAME'
          LookupSource = dsDateUnits
          TabOrder = 1
        end
        object edtOurOfferTotalLeaseQuantity: TDBEdit
          Left = 336
          Top = 32
          Width = 89
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_OUR_OFFER_TOTAL_LEASE_QUANTITY'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 2
        end
        object pnlLeasePrognosisQuantities: TPanel
          Left = 88
          Top = 16
          Width = 105
          Height = 89
          BevelOuter = bvNone
          TabOrder = 15
          object pnlLeasePrognosisQuantitiesWork: TPanel
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
              Top = 68
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
            object edtVendorOfferQuantity2: TDBEdit
              Left = 0
              Top = 40
              Width = 65
              Height = 21
              DataField = 'VENDOR_OFFER_QUANTITY'
              DataSource = dsData
              TabOrder = 1
            end
            object edtQuantity4: TDBEdit
              Left = 0
              Top = 64
              Width = 65
              Height = 21
              DataField = 'WORK_QUANTITY'
              DataSource = dsData
              TabOrder = 2
            end
          end
          object pnlLeasePrognosisQuantitiesAccount: TPanel
            Left = 105
            Top = 0
            Width = 105
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
            object dbtAccountMeasure5: TDBText
              Left = 68
              Top = 20
              Width = 31
              Height = 15
              DataField = 'ACCOUNT_MEASURE_ABBREV'
              DataSource = dsDeficitCoverDecision
            end
            object dbtAccountMeasure6: TDBText
              Left = 68
              Top = 44
              Width = 31
              Height = 15
              DataField = 'ACCOUNT_MEASURE_ABBREV'
              DataSource = dsDeficitCoverDecision
            end
            object dbtAccountMeasure7: TDBText
              Left = 68
              Top = 68
              Width = 31
              Height = 15
              DataField = 'ACCOUNT_MEASURE_ABBREV'
              DataSource = dsDeficitCoverDecision
            end
            object edtOurOfferAccountQuantity2: TDBEdit
              Left = 0
              Top = 16
              Width = 65
              Height = 21
              DataField = 'OUR_OFFER_ACCOUNT_QUANTITY'
              DataSource = dsData
              TabOrder = 0
            end
            object edtVendorOfferAccountQuantity2: TDBEdit
              Left = 0
              Top = 40
              Width = 65
              Height = 21
              DataField = 'VENDOR_OFFER_ACCOUNT_QUANTITY'
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
        Left = 640
        Top = 80
        Width = 121
        Height = 113
        Caption = ' '#1054#1073#1097#1072' '#1057#1090#1086#1081#1085#1086#1089#1090' '
        TabOrder = 2
        object dbtCurrency4: TDBText
          Left = 84
          Top = 35
          Width = 31
          Height = 15
          DataField = '_AGREE_CURRENCY_ABBREV'
          DataSource = dsData
        end
        object lblSecondaryCurrencyAbbrev7: TLabel
          Left = 84
          Top = 76
          Width = 51
          Height = 13
          Caption = '%SecCur%'
        end
        object edtTotalPrice4: TDBEdit
          Left = 8
          Top = 32
          Width = 73
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_DELIVERY_TOTAL_PRICE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 0
        end
        object edtTotalPriceSC4: TDBEdit
          Left = 8
          Top = 72
          Width = 73
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_DELIVERY_TOTAL_PRICE_SC'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 1
        end
      end
    end
  end
  object pnlDCDDeliveryOrLease: TPanel [10]
    Left = 8
    Top = 152
    Width = 625
    Height = 66
    BevelOuter = bvNone
    TabOrder = 4
    object pnlDCDDelivery: TPanel
      Left = 0
      Top = 65
      Width = 625
      Height = 65
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object gbDCDDatesDelivery: TGroupBox
        Left = 0
        Top = 0
        Width = 249
        Height = 65
        Caption = ' '#1042#1088#1077#1084#1077#1074#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '
        TabOrder = 0
        object lblDeficitCoverDate: TLabel
          Left = 8
          Top = 16
          Width = 101
          Height = 13
          Caption = #1044#1072#1090#1072' '#1085#1072' '#1054#1090#1088'. '#1085#1072#1083#1080#1095'.'
          FocusControl = frDeficitCoverDate
        end
        inline frDeficitCoverDate: TfrDateFieldEditFrame
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
      end
      object gbDCDQuantityDelivery: TGroupBox
        Left = 256
        Top = 0
        Width = 369
        Height = 65
        Caption = ' '#1054#1073#1097#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' %ProductClassAbbrev% '#1087#1086' '#1055#1044#1044' '
        TabOrder = 1
        object lblDCDWorkQuantity: TLabel
          Left = 8
          Top = 16
          Width = 42
          Height = 13
          Caption = #1056#1072#1073#1086#1090#1085#1086
          FocusControl = edtDCDWorkQuantity
        end
        object lblDCDWorkQuantityMeasure: TDBText
          Left = 86
          Top = 35
          Width = 33
          Height = 13
          DataField = 'MEASURE_ABBREV'
          DataSource = dsDeficitCoverDecision
        end
        object lblDCDAccountQuantity: TLabel
          Left = 248
          Top = 16
          Width = 59
          Height = 13
          Caption = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1086
          FocusControl = edtDCDAccountQuantity
        end
        object lblDCDAccountQuantityMeasure: TDBText
          Left = 326
          Top = 35
          Width = 33
          Height = 13
          DataField = 'ACCOUNT_MEASURE_ABBREV'
          DataSource = dsDeficitCoverDecision
        end
        object edtDCDWorkQuantity: TDBEdit
          Left = 8
          Top = 32
          Width = 73
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'P_WORK_QUANTITY'
          DataSource = dsDeficitCoverDecision
          ReadOnly = True
          TabOrder = 0
        end
        object edtDCDAccountQuantity: TDBEdit
          Left = 248
          Top = 32
          Width = 73
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'P_ACCOUNT_QUANTITY'
          DataSource = dsDeficitCoverDecision
          ReadOnly = True
          TabOrder = 1
        end
      end
    end
    object pnlDCDLease: TPanel
      Left = 0
      Top = 0
      Width = 625
      Height = 65
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object gbDCDDatesLease: TGroupBox
        Left = 0
        Top = 0
        Width = 289
        Height = 65
        Caption = ' '#1042#1088#1077#1084#1077#1074#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1055#1044#1044' '
        TabOrder = 0
        object lblDCDLeaseDates: TLabel
          Left = 8
          Top = 16
          Width = 86
          Height = 13
          Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1053#1072#1077#1084
        end
        inline frDCDLeaseDates: TfrDateIntervalFrame
          Left = 8
          Top = 32
          Width = 145
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 145
          Constraints.MinHeight = 21
          Constraints.MinWidth = 145
          TabOrder = 0
          TabStop = True
          inherited dsData: TDataSource
            DataSet = cdsDeficitCoverDecision
          end
        end
      end
      object gbDCDQuantityLease: TGroupBox
        Left = 296
        Top = 0
        Width = 329
        Height = 65
        Caption = ' '#1054#1073#1097#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' %ProductClassAbbrev% '#1087#1086' '#1055#1044#1044' '
        TabOrder = 1
        object lblDCDWorkQuantity2: TLabel
          Left = 8
          Top = 16
          Width = 42
          Height = 13
          Caption = #1056#1072#1073#1086#1090#1085#1086
          FocusControl = edtDCDWorkQuantity2
        end
        object dbtWorkMeasure: TDBText
          Left = 70
          Top = 35
          Width = 27
          Height = 13
          DataField = 'MEASURE_ABBREV'
          DataSource = dsDeficitCoverDecision
        end
        object lblDCDLeaseDateUnitQty: TLabel
          Left = 104
          Top = 16
          Width = 22
          Height = 13
          Caption = #1050'-'#1074#1086
          FocusControl = edtDCDLeaseDateUnitQty
        end
        object lblLeaseDateUnitName: TLabel
          Left = 136
          Top = 16
          Width = 80
          Height = 13
          Caption = #1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072
          FocusControl = edtDCDLeaseDateUnitQty
        end
        object lblDCDTotalLeaseQuantity: TLabel
          Left = 232
          Top = 16
          Width = 86
          Height = 13
          Caption = #1050'-'#1074#1086' '#1056#1072#1073'. '#1056#1077#1089#1091#1088#1089
          FocusControl = edtDCDTotalLeaseQuantity
        end
        object edtDCDWorkQuantity2: TDBEdit
          Left = 8
          Top = 32
          Width = 57
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'P_WORK_QUANTITY'
          DataSource = dsDeficitCoverDecision
          ReadOnly = True
          TabOrder = 0
        end
        object edtDCDLeaseDateUnitQty: TDBEdit
          Left = 104
          Top = 32
          Width = 33
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'P_LEASE_DATE_UNIT_QUANTITY'
          DataSource = dsDeficitCoverDecision
          ReadOnly = True
          TabOrder = 1
        end
        object edtLeaseDateUnitName: TDBEdit
          Left = 136
          Top = 32
          Width = 81
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_P_LEASE_DATE_UNIT_NAME'
          DataSource = dsDeficitCoverDecision
          ReadOnly = True
          TabOrder = 2
        end
        object edtDCDTotalLeaseQuantity: TDBEdit
          Left = 232
          Top = 32
          Width = 89
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_TOTAL_LEASE_QUANTITY'
          DataSource = dsDeficitCoverDecision
          ReadOnly = True
          TabOrder = 3
        end
      end
    end
  end
  inline frMediator: TfrPartnerFieldEditFrameLabeled [11]
    Left = 760
    Top = 80
    Width = 249
    Height = 65
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 65
    Constraints.MinHeight = 65
    TabOrder = 3
    TabStop = True
    inherited gbPartner: TGroupBox
      Width = 249
      Caption = ' '#1055#1086#1089#1088#1077#1076#1085#1080#1082' '
      inherited pnlNameAndButtons: TPanel
        Width = 160
        inherited pnlRightButtons: TPanel
          Left = 124
        end
        inherited pnlPartnerName: TPanel
          Width = 124
          DesignSize = (
            124
            33)
          inherited edtPartnerName: TDBEdit
            Width = 125
          end
          inherited cbPartner: TJvDBLookupCombo
            Width = 125
          end
        end
      end
      inherited pnlPaddingRight: TPanel
        Left = 241
      end
      inherited pnlLabels: TPanel
        Width = 245
        inherited lblCode: TLabel
          Width = 19
        end
        inherited lblName: TLabel
          Width = 76
        end
      end
    end
  end
  object pnlVendor: TPanel
    Left = 8
    Top = 80
    Width = 745
    Height = 65
    BevelOuter = bvNone
    TabOrder = 2
    inline frVendor: TfrPartnerExFieldEditFrame
      Left = 0
      Top = 0
      Width = 433
      Height = 65
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Align = alClient
      Constraints.MaxHeight = 155
      Constraints.MinHeight = 49
      TabOrder = 0
      TabStop = True
      inherited gbPartner: TGroupBox
        Width = 433
        Height = 65
        Caption = ' '#1044#1086#1089#1090#1072#1074#1095#1080#1082' '
        inherited pnlNameAndButtons: TPanel
          Width = 8
          Height = 48
          inherited pnlRightButtons: TPanel
            Left = -28
            Height = 33
            inherited tlbDocButton: TToolBar
              Height = 33
            end
          end
          inherited pnlPartnerName: TPanel
            Width = 4
            Height = 33
            DesignSize = (
              4
              33)
            inherited edtPartnerName: TDBEdit
              Width = 0
            end
            inherited cbPartner: TJvDBLookupCombo
              Width = 5
            end
          end
          inherited pnlNameAndButtonsTop: TPanel
            Width = 8
            inherited lblPartner: TLabel
              Width = 76
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 312
          Height = 48
        end
        inherited pnlPartnerCode: TPanel
          Height = 48
          DesignSize = (
            73
            48)
          inherited lblPartnerCode: TLabel
            Width = 19
          end
        end
        inherited pnlPaddingLeft: TPanel
          Height = 48
        end
        inherited frPartnerStatus: TfrCompanyStatus
          Height = 48
          Constraints.MaxHeight = 48
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
            DataSet = frVendor.cdsPartner
          end
        end
        inherited pnlPriority: TPanel
          Height = 48
          inherited lblPriority: TLabel
            Width = 38
          end
        end
        inherited pnlCountry: TPanel
          Left = 318
          Height = 48
        end
        inherited pnlParRelButton: TPanel
          Left = 358
          Height = 48
          DesignSize = (
            73
            48)
        end
      end
    end
    object gbParRelProduct: TGroupBox
      Left = 440
      Top = 0
      Width = 305
      Height = 65
      Align = alRight
      Caption = ' %ParRelProduct% '
      TabOrder = 1
      inline frParRelProductStatus: TfrParRelProductStatus
        Left = 10
        Top = 16
        Width = 207
        Height = 38
        Constraints.MaxHeight = 38
        Constraints.MaxWidth = 207
        Constraints.MinHeight = 38
        Constraints.MinWidth = 207
        TabOrder = 0
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
      object btnParRelProduct: TButton
        Left = 240
        Top = 30
        Width = 57
        Height = 25
        Action = actParRelProduct
        TabOrder = 1
      end
      object tlbParRelProductDocs: TToolBar
        Left = 194
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
          ParentShowHint = False
          ShowHint = True
        end
      end
    end
    object pnlVendorSep: TPanel
      Left = 433
      Top = 0
      Width = 7
      Height = 65
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
    end
  end
  object pnlProduct: TPanel
    Left = 488
    Top = 8
    Width = 521
    Height = 65
    BevelOuter = bvNone
    TabOrder = 1
    inline frProduct: TfrProductExFieldEditFrame
      Left = 0
      Top = 0
      Width = 521
      Height = 65
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Align = alClient
      Constraints.MaxHeight = 549
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
      inherited gbTreeNode: TGroupBox
        Width = 521
        Caption = ' %ProductClassName% '
        inherited pnlTreeNode: TPanel
          Width = 3
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
            Left = -179
          end
          inherited pnlRightButtons: TPanel
            Left = -56
          end
          inherited pnlProductLabels: TPanel
            Width = 3
            inherited lblTreeNodeName: TLabel
              Width = 42
              Caption = 'id '#1083#1086#1075#1080#1095'.'
            end
          end
        end
        inherited pnlRight: TPanel
          Left = -203
          Width = 722
          inherited pnlPartnerProductNames: TPanel
            Width = 137
            DesignSize = (
              137
              48)
            inherited edtPartnerProductNames: TDBEdit
              Width = 130
            end
          end
          inherited pnlProductPeriodsButton: TPanel
            Left = 654
          end
          inherited pnlNotes: TPanel
            Left = 393
          end
          inherited pnlEngineeringButtons: TPanel
            Left = 578
          end
        end
      end
    end
  end
  object pnlAccountPricesButton: TPanel
    Left = 984
    Top = 157
    Width = 25
    Height = 65
    BevelOuter = bvNone
    TabOrder = 14
    object btnSinglePrice: TSpeedButton
      Left = 2
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
      Left = 2
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
  inherited alActions: TActionList
    Left = 56
    Top = 304
    inherited actForm: TAction
      Caption = #1054#1073#1086#1089#1086#1073#1077#1085' '#1044#1080#1072#1083#1086#1075' '#1089' '#1044#1086#1089#1090#1072#1074#1095#1080#1082' '#1079#1072' %ProductClassAbbrev% - %s'
    end
    object actFinish: TAction
      Caption = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077'...'
      ImageIndex = 17
      OnExecute = actFinishExecute
    end
    object actAnnul: TAction
      Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077'...'
      ImageIndex = 16
      OnExecute = actAnnulExecute
    end
    object actVIM: TAction
      Hint = #1042#1048#1052' '#1085#1072' '#1085#1072#1083#1080#1095#1085#1086#1089#1090#1090#1072' '#1085#1072' '#1059#1087#1088#1072#1074#1083#1103#1077#1084#1080#1103' '#1054#1073#1077#1082#1090
      ImageIndex = 30
      OnExecute = actVIMExecute
    end
    object actCreateDeliveryContract: TAction
      Caption = #1057#1098#1079#1076#1072#1074#1072#1085#1077
      OnExecute = actCreateDeliveryContractExecute
      OnUpdate = actCreateDeliveryContractUpdate
    end
    object actDeliveryStoreDeals: TAction
      Caption = #1054#1090#1095#1077#1090'...'
      Hint = #1054#1090#1095#1077#1090
      OnExecute = actDeliveryStoreDealsExecute
      OnUpdate = actDeliveryStoreDealsUpdate
    end
    object actSale: TAction
      Caption = #1054#1055#1055'...'
      OnExecute = actSaleExecute
      OnUpdate = actSaleUpdate
    end
    object actParRelProduct: TAction
      Caption = #1048#1044' '#1040#1055#1089'...'
      OnExecute = actParRelProductExecute
      OnUpdate = actParRelProductUpdate
    end
    object actParRelProductDoc: TAction
      OnExecute = actParRelProductDocExecute
    end
    object actFinOrder: TAction
      Caption = #1054#1055#1060'...'
      OnExecute = actFinOrderExecute
      OnUpdate = actFinOrderUpdate
    end
    object actExceptEvents: TAction
      Caption = #1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103'...'
      Hint = #1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103
      OnExecute = actExceptEventsExecute
      OnUpdate = actExceptEventsUpdate
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
    object actIsSaleRequired: TAction
      Caption = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1054#1055#1055
      Checked = True
      OnExecute = actIsSaleRequiredExecute
    end
    object actBOIOrder: TAction
      Caption = #1054#1051#1041#1057'...'
      Hint = #1054#1088#1076#1077#1088' '#1087#1086' '#1051#1080#1084#1080#1090' '#1086#1090' '#1041#1086#1088#1076#1077#1088#1086' '#1079#1072' '#1057#1088#1077#1076#1072
      OnExecute = actBOIOrderExecute
      OnUpdate = actBOIOrderUpdate
    end
  end
  inherited dsData: TDataSource
    Left = 120
    Top = 304
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conDeliveries
    Params = <
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDelivery'
    BeforeOpen = cdsDataBeforeOpen
    AfterOpen = cdsDataAfterOpen
    AfterClose = cdsDataAfterClose
    BeforePost = cdsDataBeforePost
    OnCalcFields = cdsDataCalcFields
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    Left = 88
    Top = 304
    object cdsDataDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDataDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDataDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDataVENDOR_COMPANY_CODE: TAbmesFloatField
      DisplayLabel = #1044#1086#1089#1090#1072#1074#1095#1080#1082
      FieldName = 'VENDOR_COMPANY_CODE'
      Required = True
      OnChange = cdsDataVENDOR_COMPANY_CODEChange
    end
    object cdsDataWORK_QUANTITY: TAbmesFloatField
      DisplayLabel = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1086' '#1056#1072#1073#1086#1090#1085#1086' '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'WORK_QUANTITY'
      OnChange = cdsDataWORK_QUANTITYChange
      DisplayFormat = ',0.##'
      EditFormat = '0.##'
    end
    object cdsDataACCOUNT_QUANTITY: TAbmesFloatField
      DisplayLabel = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1086' '#1057#1095#1077#1090#1086#1074#1086#1076#1085#1086' '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'ACCOUNT_QUANTITY'
      OnChange = cdsDataACCOUNT_QUANTITYChange
      DisplayFormat = ',0.##'
      EditFormat = '0.##'
    end
    object cdsDataCURRENCY_CODE: TAbmesFloatField
      DisplayLabel = #1042#1072#1083#1091#1090#1072
      FieldName = 'CURRENCY_CODE'
      OnChange = cdsDataCURRENCY_CODEChange
    end
    object cdsDataTOTAL_PRICE: TAbmesFloatField
      DisplayLabel = #1054#1073#1097#1072' '#1089#1090#1086#1081#1085#1086#1089#1090
      FieldName = 'TOTAL_PRICE'
      OnChange = cdsDataTOTAL_PRICEChange
      DisplayFormat = ',0.##'
      EditFormat = '0.##'
    end
    object cdsDataSINGLE_PRICE: TAbmesFloatField
      DisplayLabel = #1045#1076'. '#1062#1077#1085#1072
      FieldName = 'SINGLE_PRICE'
      ProviderFlags = []
      OnChange = cdsDataSINGLE_PRICEChange
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsDataDELIVERY_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1072
      FieldName = 'DELIVERY_DATE'
      OnChange = cdsDataDELIVERY_DATEChange
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object cdsDataDELIVERY_VENDOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_VENDOR_COMPANY_CODE'
    end
    object cdsDataDELIVERY_VENDOR_OFFICE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_VENDOR_OFFICE_CODE'
    end
    object cdsDataIS_TRANSPORT_FROM_VENDOR: TAbmesFloatField
      DisplayLabel = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1058#1088#1072#1085#1089#1087#1086#1088#1090
      FieldName = 'IS_TRANSPORT_FROM_VENDOR'
      FieldValueType = fvtBoolean
    end
    object cdsDataACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
      ProviderFlags = []
      OnChange = cdsDataACCOUNT_MEASURE_COEFChange
      DisplayFormat = ',0.##'
      EditFormat = '0.##'
    end
    object cdsDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDataMEDIATOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'MEDIATOR_COMPANY_CODE'
    end
    object cdsDataSTART_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1057#1090#1072#1088#1090#1080#1088#1072#1085#1077
      FieldName = 'START_DATE'
      Required = True
    end
    object cdsDataREGISTER_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077
      FieldName = 'REGISTER_DATE'
      Required = True
      OnValidate = DatesValidate
    end
    object cdsDataPLAN_POSITION_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1055#1083#1072#1085#1086#1074#1072' '#1055#1079#1094'. '#1048#1055
      FieldName = 'PLAN_POSITION_DATE'
      OnValidate = DatesValidate
    end
    object cdsDataREAL_POSITION_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1054#1090#1095#1077#1090#1085#1072' '#1055#1079#1094'. '#1048#1055
      FieldName = 'REAL_POSITION_DATE'
      OnValidate = DatesValidate
    end
    object cdsDataPLAN_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1055#1083#1072#1085#1086#1074#1072' '#1055#1079#1094'. '#1044#1086#1089#1090#1072#1074#1095#1080#1082
      FieldName = 'PLAN_VENDOR_POSITION_DATE'
      OnValidate = DatesValidate
    end
    object cdsDataREAL_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1054#1090#1095#1077#1090#1085#1072' '#1055#1079#1094'. '#1044#1086#1089#1090#1072#1074#1095#1080#1082
      FieldName = 'REAL_VENDOR_POSITION_DATE'
      OnValidate = DatesValidate
    end
    object cdsDataREAL_DECISION_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1054#1090#1095#1077#1090#1085#1072' '#1056#1077#1096#1077#1085#1080#1077
      FieldName = 'REAL_DECISION_DATE'
      OnChange = cdsDataREAL_DECISION_DATEChange
      OnValidate = DatesValidate
    end
    object cdsDataMAX_BASE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'MAX_BASE_SINGLE_PRICE'
      OnChange = cdsDataMAX_BASE_SINGLE_PRICEChange
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsDataDELIVERY_DECISION_CODE: TAbmesFloatField
      DisplayLabel = #1056#1077#1096#1077#1085#1080#1077
      FieldName = 'DELIVERY_DECISION_CODE'
      OnChange = cdsDataDELIVERY_DECISION_CODEChange
    end
    object cdsDataDECISION_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1079#1077#1083' '#1056#1077#1096#1077#1085#1080#1077
      FieldName = 'DECISION_EMPLOYEE_CODE'
    end
    object cdsDataDIALOG_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1086#1076#1077#1097' '#1044#1080#1072#1083#1086#1075
      FieldName = 'DIALOG_EMPLOYEE_CODE'
      Required = True
    end
    object cdsDataSHIPMENT_DAYS: TAbmesFloatField
      FieldName = 'SHIPMENT_DAYS'
    end
    object cdsDataCUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'CUSTOMHOUSE_CODE'
    end
    object cdsDataSHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_TYPE_CODE'
    end
    object cdsDataPRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1080#1086#1088#1080#1090#1077#1090
      FieldName = 'PRIORITY_CODE'
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
    object cdsDataDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_OBJECT_BRANCH_CODE'
      OnChange = cdsDataDELIVERY_OBJECT_BRANCH_CODEChange
    end
    object cdsDataDELIVERY_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_OBJECT_CODE'
    end
    object cdsDataHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsDataDELIVERY_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1080#1076
      FieldName = 'DELIVERY_TYPE_CODE'
    end
    object cdsData_DELIVERY_TYPE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_DELIVERY_TYPE_ABBREV'
      LookupDataSet = cdsDeliveryTypes
      LookupKeyFields = 'DELIVERY_TYPE_CODE'
      LookupResultField = 'DELIVERY_TYPE_ABBREV'
      KeyFields = 'delivery_tYPE_CODE'
      Size = 5
      Lookup = True
    end
    object cdsData_REGISTER_DATE_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REGISTER_DATE_DIFF'
      Calculated = True
    end
    object cdsData_PLAN_POSITION_DATE_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PLAN_POSITION_DATE_DIFF'
      Calculated = True
    end
    object cdsData_REAL_POSITION_DATE_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REAL_POSITION_DATE_DIFF'
      Calculated = True
    end
    object cdsData_PLAN_VENDOR_POSITION_DATE_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PLAN_VENDOR_POSITION_DATE_DIFF'
      Calculated = True
    end
    object cdsData_REAL_VENDOR_POSITION_DATE_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REAL_VENDOR_POSITION_DATE_DIFF'
      Calculated = True
    end
    object cdsData_PLAN_DECISION_DATE_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PLAN_DECISION_DATE_DIFF'
      Calculated = True
    end
    object cdsData_REAL_DECISION_DATE_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REAL_DECISION_DATE_DIFF'
      Calculated = True
    end
    object cdsData_DATES_DEVIATION: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DATES_DEVIATION'
      Calculated = True
    end
    object cdsData_VENDOR_DATES_DEVIATION: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_VENDOR_DATES_DEVIATION'
      Calculated = True
    end
    object cdsData_DECISION_DATES_DEVIATION: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DECISION_DATES_DEVIATION'
      Calculated = True
    end
    object cdsDataIS_ACTIVATED_BY_VENDOR: TAbmesFloatField
      DisplayLabel = #1040#1082#1090#1080#1074#1080#1088#1072#1085' '#1086#1090
      FieldName = 'IS_ACTIVATED_BY_VENDOR'
      Required = True
      FieldValueType = fvtBoolean
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
    object cdsDataANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object cdsDataANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object cdsDataANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
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
    object cdsData_DCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DCD_OBJECT_BRANCH_CODE'
      Calculated = True
    end
    object cdsData_DELIVERY_VENDOR_OFFICE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_DELIVERY_VENDOR_OFFICE_NAME'
      LookupDataSet = cdsVendorOffices
      LookupKeyFields = 'OFFICE_CODE'
      LookupResultField = 'OFFICE_NAME'
      KeyFields = 'DELIVERY_VENDOR_OFFICE_CODE'
      Lookup = True
    end
    object cdsData_CUSTOMHOUSE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_CUSTOMHOUSE_NAME'
      LookupDataSet = cdsCustomhouses
      LookupKeyFields = 'CUSTOMHOUSE_CODE'
      LookupResultField = 'CUSTOMHOUSE_NAME'
      KeyFields = 'CUSTOMHOUSE_CODE'
      Lookup = True
    end
    object cdsData_SHIPMENT_TYPE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SHIPMENT_TYPE_ABBREV'
      LookupDataSet = cdsShipmentTypes
      LookupKeyFields = 'SHIPMENT_TYPE_CODE'
      LookupResultField = 'SHIPMENT_TYPE_ABBREV'
      KeyFields = 'SHIPMENT_TYPE_CODE'
      Size = 5
      Lookup = True
    end
    object cdsDataDCD_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_BRANCH_CODE'
      ProviderFlags = []
    end
    object cdsDataDCD_CODE: TAbmesFloatField
      FieldName = 'DCD_CODE'
      ProviderFlags = []
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
    object cdsData_COUNTRY_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_COUNTRY_ABBREV'
      Size = 5
      Calculated = True
    end
    object cdsData_DC_DDTA: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_DC_DDTA'
      Size = 5
      Calculated = True
    end
    object cdsData_DC_DCD_BRANCH_ID: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_DC_DCD_BRANCH_ID'
      Size = 10
      Calculated = True
    end
    object cdsData_DC_DCD_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DC_DCD_CODE'
      Calculated = True
    end
    object cdsData_DC_DELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DC_DELIVERY_PROJECT_CODE'
      Calculated = True
    end
    object cdsData_DC_DELIVERY_TYPE_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_DC_DELIVERY_TYPE_ABBREV'
      Size = 5
      Calculated = True
    end
    object cdsData_DC_STATUS_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = '_DC_STATUS_CODE'
      OnGetText = cdsData_DC_STATUS_CODEGetText
      Calculated = True
    end
    object cdsData_STATUS_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = '_STATUS_CODE'
      OnGetText = cdsData_STATUS_CODEGetText
      Calculated = True
    end
    object cdsDataSD_QUANTITY: TAbmesFloatField
      FieldName = 'SD_QUANTITY'
      ProviderFlags = []
      DisplayFormat = ',0.##'
      EditFormat = '0.##'
    end
    object cdsDataOUR_OFFER_QUANTITY: TAbmesFloatField
      FieldName = 'OUR_OFFER_QUANTITY'
      OnChange = cdsDataOUR_OFFER_QUANTITYChange
      DisplayFormat = ',0.##'
      EditFormat = '0.##'
    end
    object cdsDataOUR_OFFER_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'OUR_OFFER_ACCOUNT_QUANTITY'
      OnChange = cdsDataOUR_OFFER_ACCOUNT_QUANTITYChange
      DisplayFormat = ',0.##'
      EditFormat = ',0.##'
    end
    object cdsDataOUR_OFFER_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'OUR_OFFER_SINGLE_PRICE'
      OnChange = cdsDataOUR_OFFER_SINGLE_PRICEChange
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsDataOUR_OFFER_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'OUR_OFFER_CURRENCY_CODE'
    end
    object cdsDataVENDOR_OFFER_QUANTITY: TAbmesFloatField
      FieldName = 'VENDOR_OFFER_QUANTITY'
      OnChange = cdsDataVENDOR_OFFER_QUANTITYChange
      DisplayFormat = ',0.##'
      EditFormat = '0.##'
    end
    object cdsDataVENDOR_OFFER_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'VENDOR_OFFER_ACCOUNT_QUANTITY'
      OnChange = cdsDataVENDOR_OFFER_ACCOUNT_QUANTITYChange
      DisplayFormat = ',0.##'
      EditFormat = '0.##'
    end
    object cdsDataVENDOR_OFFER_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'VENDOR_OFFER_SINGLE_PRICE'
      OnChange = cdsDataVENDOR_OFFER_SINGLE_PRICEChange
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsDataVENDOR_OFFER_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'VENDOR_OFFER_CURRENCY_CODE'
    end
    object cdsDataPROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PROGNOSIS_BEGIN_DATE'
    end
    object cdsDataPROGNOSIS_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PROGNOSIS_END_DATE'
    end
    object cdsDataOUR_OFFER_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'OUR_OFFER_LEASE_DATE_UNIT_QTY'
      DisplayFormat = ',0'
      EditFormat = '0'
    end
    object cdsDataV_OFFER_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'V_OFFER_LEASE_DATE_UNIT_QTY'
      DisplayFormat = ',0'
      EditFormat = '0'
    end
    object cdsDataLEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_QTY'
      DisplayFormat = ',0'
      EditFormat = '0'
    end
    object cdsDataOUR_OFFER_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'OUR_OFFER_LEASE_DATE_UNIT_CODE'
    end
    object cdsDataV_OFFER_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'V_OFFER_LEASE_DATE_UNIT_CODE'
    end
    object cdsDataLEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_CODE'
    end
    object cdsDataRECEIVE_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1053#1072#1077#1084': '#1053#1072#1095#1072#1083#1086
      FieldName = 'RECEIVE_DATE'
      OnChange = cdsDataRECEIVE_DATEChange
    end
    object cdsDataRETURN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1053#1072#1077#1084': '#1050#1088#1072#1081
      FieldName = 'RETURN_DATE'
    end
    object cdsData_TOTAL_LEASE_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_LEASE_QUANTITY'
      DisplayFormat = ',0.##'
      EditFormat = '0.##'
      Calculated = True
    end
    object cdsData_DELIVERY_TOTAL_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DELIVERY_TOTAL_PRICE'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsData_DELIVERY_TOTAL_PRICE_SC: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DELIVERY_TOTAL_PRICE_SC'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsData_OUR_OFFER_TOTAL_LEASE_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_OUR_OFFER_TOTAL_LEASE_QUANTITY'
      DisplayFormat = ',0.##'
      Calculated = True
    end
    object cdsData_V_OFFER_TOTAL_LEASE_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_V_OFFER_TOTAL_LEASE_QUANTITY'
      DisplayFormat = ',0.##'
      Calculated = True
    end
    object cdsDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1054#1055#1055
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object cdsDataSALE_OBJECT_CODE: TAbmesFloatField
      DisplayLabel = #1054#1055#1055
      FieldName = 'SALE_OBJECT_CODE'
    end
    object cdsDataSALE_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1054#1055#1055
      FieldName = 'SALE_BRANCH_CODE'
      ProviderFlags = []
    end
    object cdsDataSALE_NO: TAbmesFloatField
      DisplayLabel = #1054#1055#1055
      FieldName = 'SALE_NO'
      ProviderFlags = []
    end
    object cdsDataASPECT_TYPE_CODE: TAbmesFloatField
      FieldName = 'ASPECT_TYPE_CODE'
    end
    object cdsDataACCOUNT_MAX_BASE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_MAX_BASE_SINGLE_PRICE'
      ProviderFlags = []
      OnChange = cdsDataACCOUNT_MAX_BASE_SINGLE_PRICEChange
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsDataACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_SINGLE_PRICE'
      ProviderFlags = []
      OnChange = cdsDataACCOUNT_SINGLE_PRICEChange
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsDataACC_OUR_OFFER_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACC_OUR_OFFER_SINGLE_PRICE'
      ProviderFlags = []
      OnChange = cdsDataACC_OUR_OFFER_SINGLE_PRICEChange
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsDataACC_VENDOR_OFFER_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACC_VENDOR_OFFER_SINGLE_PRICE'
      ProviderFlags = []
      OnChange = cdsDataACC_VENDOR_OFFER_SINGLE_PRICEChange
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsDataPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
    end
    object cdsDataBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
    end
    object cdsDataINVOICE_NO: TAbmesFloatField
      DisplayLabel = #1060#1072#1082#1090#1091#1088#1072' No'
      FieldName = 'INVOICE_NO'
    end
    object cdsDataINVOICE_ABBREV: TAbmesWideStringField
      FieldName = 'INVOICE_ABBREV'
      Size = 5
    end
    object cdsDataIS_PROFORM_INVOICE: TAbmesFloatField
      DisplayLabel = #1042#1080#1076
      FieldName = 'IS_PROFORM_INVOICE'
      FieldValueType = fvtBoolean
    end
    object cdsDataINVOICE_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1060#1072#1082#1090#1091#1088#1072
      FieldName = 'INVOICE_DATE'
    end
    object cdsDataFIN_ORDER_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_CODE'
    end
    object cdsData_ALLOWS_DC: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_ALLOWS_DC'
      LookupDataSet = cdsDecisionTypes
      LookupKeyFields = 'DELIVERY_DECISION_CODE'
      LookupResultField = 'ALLOWS_DELIVERY_CONTRACT'
      KeyFields = 'DELIVERY_DECISION_CODE'
      FieldValueType = fvtBoolean
      Lookup = True
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
    object cdsDataFO_CLOSE_REQUESTED: TAbmesFloatField
      FieldName = 'FO_CLOSE_REQUESTED'
      FieldValueType = fvtBoolean
    end
    object cdsDataPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
    end
    object cdsData_AGREE_CURRENCY_CODE: TAbmesFloatField
      FieldKind = fkInternalCalc
      FieldName = '_AGREE_CURRENCY_CODE'
    end
    object cdsData_AGREE_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkInternalCalc
      FieldName = '_AGREE_CURRENCY_ABBREV'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = '_AGREE_CURRENCY_CODE'
      Size = 10
    end
    object cdsDataUNFINISHED_DCD_DP_COUNT: TAbmesFloatField
      FieldName = 'UNFINISHED_DCD_DP_COUNT'
    end
    object cdsData_DELIVERY_DECISION_REQUIRES_FINISHING: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_DELIVERY_DECISION_REQUIRES_FINISHING'
      LookupDataSet = cdsDecisionTypes
      LookupKeyFields = 'DELIVERY_DECISION_CODE'
      LookupResultField = 'REQUIRES_FINISHING'
      KeyFields = 'DELIVERY_DECISION_CODE'
      FieldValueType = fvtBoolean
      Lookup = True
    end
    object cdsDataPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_CODE'
    end
    object cdsDataRESOLVE_DURATION_DAYS: TAbmesFloatField
      FieldName = 'RESOLVE_DURATION_DAYS'
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
    object cdsDataPRODUCT_CODE: TAbmesFloatField
      DisplayLabel = '%ProductClassName%'
      FieldName = 'PRODUCT_CODE'
      Required = True
      OnChange = cdsDataPRODUCT_CODEChange
    end
    object cdsDataPSD_STORE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1047#1072#1076#1098#1088#1078'. '#1085#1072' '#1048#1055' '#1079#1072' '#1055#1086#1083#1091#1095#1072#1074'.'
      FieldName = 'PSD_STORE_CODE'
      Required = True
    end
    object cdsDataDEFICIT_COVER_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1054#1090#1088#1080#1094#1072#1090#1077#1083#1085#1072' '#1085#1072#1083#1080#1095#1085#1086#1089#1090
      FieldName = 'DEFICIT_COVER_DATE'
      Required = True
    end
    object cdsDataMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object cdsDataACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object cdsData_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_MEASURE_ABBREV'
      LookupDataSet = cdsMeasures
      LookupKeyFields = 'MEASURE_CODE'
      LookupResultField = 'MEASURE_ABBREV'
      KeyFields = 'MEASURE_CODE'
      Size = 5
      Lookup = True
    end
    object cdsData_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_ACCOUNT_MEASURE_ABBREV'
      LookupDataSet = cdsMeasures
      LookupKeyFields = 'MEASURE_CODE'
      LookupResultField = 'MEASURE_ABBREV'
      KeyFields = 'ACCOUNT_MEASURE_CODE'
      Size = 5
      Lookup = True
    end
    object cdsDataDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DEAL_TYPE_CODE'
      ProviderFlags = []
    end
    object cdsDataBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
    end
    object cdsDataBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
    end
    object cdsDataBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_CODE'
    end
    object cdsDataBOI_ORDER_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_CODE'
    end
    object cdsDataBOI_ORDER_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BOI_ORDER_IDENTIFIER'
      Size = 100
    end
  end
  object cdsCurrencies: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCurrencies'
    Left = 416
    Top = 336
    object cdsCurrenciesCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      Size = 5
    end
  end
  object dsCurrencies: TDataSource
    DataSet = cdsCurrencies
    Left = 432
    Top = 336
  end
  object cdsVendorOffices: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompanies
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCompanyOffices'
    Left = 349
    Top = 337
    object cdsVendorOfficesCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
    end
    object cdsVendorOfficesOFFICE_CODE: TAbmesFloatField
      FieldName = 'OFFICE_CODE'
    end
    object cdsVendorOfficesOFFICE_NAME: TAbmesWideStringField
      FieldName = 'OFFICE_NAME'
      Size = 50
    end
  end
  object dsVendorOffices: TDataSource
    DataSet = cdsVendorOffices
    Left = 365
    Top = 337
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Params = <>
    ProviderName = 'prvBranches'
    Left = 288
    Top = 336
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
    end
    object cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField
      FieldName = 'BRANCH_CODE_AND_NAME'
      Size = 255
    end
    object cdsBranchesBRANCH_NO: TAbmesFloatField
      FieldName = 'BRANCH_NO'
    end
  end
  object dsBranches: TDataSource
    DataSet = cdsBranches
    Left = 304
    Top = 336
  end
  object cdsDecisionTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDeliveries
    Params = <>
    ProviderName = 'prvDeliveryDecisions'
    Left = 812
    Top = 368
    object cdsDecisionTypesDELIVERY_DECISION_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DECISION_CODE'
    end
    object cdsDecisionTypesDELIVERY_DECISION_ABBREV: TAbmesWideStringField
      FieldName = 'DELIVERY_DECISION_ABBREV'
      Size = 5
    end
    object cdsDecisionTypesDELIVERY_DECISION_NAME: TAbmesWideStringField
      FieldName = 'DELIVERY_DECISION_NAME'
      Size = 50
    end
    object cdsDecisionTypesDELIVERY_DECISION_NO: TAbmesFloatField
      FieldName = 'DELIVERY_DECISION_NO'
    end
    object cdsDecisionTypesIS_ESTIMATION_BOUND: TAbmesFloatField
      FieldName = 'IS_ESTIMATION_BOUND'
    end
    object cdsDecisionTypesIS_REALIZATION_BOUND: TAbmesFloatField
      FieldName = 'IS_REALIZATION_BOUND'
    end
    object cdsDecisionTypesALLOWS_DELIVERY_CONTRACT: TAbmesFloatField
      FieldName = 'ALLOWS_DELIVERY_CONTRACT'
    end
    object cdsDecisionTypesREQUIRES_FINISHING: TAbmesFloatField
      FieldName = 'REQUIRES_FINISHING'
    end
  end
  object dsDecisionTypes: TDataSource
    DataSet = cdsDecisionTypes
    Left = 844
    Top = 368
  end
  object cdsCountries: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCountries'
    Left = 240
    Top = 336
    object cdsCountriesCOUNTRY_CODE: TAbmesFloatField
      FieldName = 'COUNTRY_CODE'
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
  object dsCustomhouses: TDataSource
    DataSet = cdsCustomhouses
    Left = 480
    Top = 336
  end
  object cdsCustomhouses: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCustomhouses'
    Left = 472
    Top = 336
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
  object dsShipmentTypes: TDataSource
    DataSet = cdsShipmentTypes
    Left = 524
    Top = 336
  end
  object cdsShipmentTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Params = <>
    ProviderName = 'prvShipmentTypes'
    Left = 516
    Top = 336
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
  object cdsDeficitCoverDecision: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDeliveries
    Params = <
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDeficitCoverDecision'
    AfterOpen = cdsDeficitCoverDecisionAfterOpen
    OnCalcFields = cdsDeficitCoverDecisionCalcFields
    Left = 88
    Top = 65528
    object cdsDeficitCoverDecisionDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
    end
    object cdsDeficitCoverDecisionDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
    end
    object cdsDeficitCoverDecisionIS_DONE: TAbmesFloatField
      FieldName = 'IS_DONE'
    end
    object cdsDeficitCoverDecisionIS_CANCELED: TAbmesFloatField
      FieldName = 'IS_CANCELED'
    end
    object cdsDeficitCoverDecisionVPD_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'VPD_EMPLOYEE_CODE'
    end
    object cdsDeficitCoverDecisionCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object cdsDeficitCoverDecisionCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsDeficitCoverDecisionCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object cdsDeficitCoverDecisionCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object cdsDeficitCoverDecisionCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object cdsDeficitCoverDecisionCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object cdsDeficitCoverDecisionDEPT_NO: TAbmesFloatField
      FieldName = 'DEPT_NO'
    end
    object cdsDeficitCoverDecisionDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object cdsDeficitCoverDecisionPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsDeficitCoverDecisionPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_COEF'
    end
    object cdsDeficitCoverDecisionWORK_MEASURE_CODE: TAbmesFloatField
      FieldName = 'WORK_MEASURE_CODE'
    end
    object cdsDeficitCoverDecisionACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object cdsDeficitCoverDecisionPRODUCT_CUSTOM_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CUSTOM_CODE'
    end
    object cdsDeficitCoverDecisionDCD_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_BRANCH_CODE'
    end
    object cdsDeficitCoverDecisionDCD_CODE: TAbmesFloatField
      FieldName = 'DCD_CODE'
    end
    object cdsDeficitCoverDecisionDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDeficitCoverDecisionDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsDeficitCoverDecisionASPECT_TYPE_CODE: TAbmesFloatField
      FieldName = 'ASPECT_TYPE_CODE'
    end
    object cdsDeficitCoverDecisionDELIVERY_COUNT: TAbmesFloatField
      FieldName = 'DELIVERY_COUNT'
    end
    object cdsDeficitCoverDecisionDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DEAL_TYPE_CODE'
    end
    object cdsDeficitCoverDecisionHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
    end
    object cdsDeficitCoverDecisionDELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'DELIVERY_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object cdsDeficitCoverDecisionDCD_BRANCH_ID: TAbmesWideStringField
      FieldName = 'DCD_BRANCH_ID'
      Size = 45
    end
    object cdsDeficitCoverDecisionASPECT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'ASPECT_TYPE_ABBREV'
      Size = 100
    end
    object cdsDeficitCoverDecisionTOTAL_WORK_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_WORK_QUANTITY'
      DisplayFormat = ',0.##'
      EditFormat = '0.##'
    end
    object cdsDeficitCoverDecisionTOTAL_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_ACCOUNT_QUANTITY'
      DisplayFormat = ',0.##'
      EditFormat = '0.##'
    end
    object cdsDeficitCoverDecision_TOTAL_LEASE_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_LEASE_QUANTITY'
      Calculated = True
    end
    object cdsDeficitCoverDecisionMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsDeficitCoverDecisionACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsDeficitCoverDecisionSTREAM_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'STREAM_TYPE_ABBREV'
      Size = 100
    end
    object cdsDeficitCoverDecisionBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
    end
    object cdsDeficitCoverDecisionPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_CODE'
    end
    object cdsDeficitCoverDecisionSTREAM_TYPE_CODE: TAbmesFloatField
      FieldName = 'STREAM_TYPE_CODE'
    end
    object cdsDeficitCoverDecisionOBTAINMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OBTAINMENT_TYPE_CODE'
    end
    object cdsDeficitCoverDecisionDCD_MODE_CODE: TAbmesFloatField
      FieldName = 'DCD_MODE_CODE'
      Required = True
    end
    object cdsDeficitCoverDecisionP_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'P_PRODUCT_CODE'
    end
    object cdsDeficitCoverDecisionP_DEFICIT_COVER_DATE: TAbmesSQLTimeStampField
      FieldName = 'P_DEFICIT_COVER_DATE'
    end
    object cdsDeficitCoverDecisionP_WORK_QUANTITY: TAbmesFloatField
      FieldName = 'P_WORK_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsDeficitCoverDecisionP_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'P_ACCOUNT_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsDeficitCoverDecisionPLAN_DECISION_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1055#1083#1072#1085#1086#1074#1072' '#1056#1077#1096#1077#1085#1080#1077
      FieldName = 'PLAN_DECISION_DATE'
      Required = True
    end
    object cdsDeficitCoverDecisionP_PSD_STORE_CODE: TAbmesFloatField
      FieldName = 'P_PSD_STORE_CODE'
    end
    object cdsDeficitCoverDecisionP_LEASE_DATE_UNIT_QUANTITY: TAbmesFloatField
      FieldName = 'P_LEASE_DATE_UNIT_QUANTITY'
    end
    object cdsDeficitCoverDecisionP_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'P_LEASE_DATE_UNIT_CODE'
    end
    object cdsDeficitCoverDecisionP_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'P_RECEIVE_DATE'
    end
    object cdsDeficitCoverDecisionP_RETURN_DATE: TAbmesSQLTimeStampField
      FieldName = 'P_RETURN_DATE'
    end
    object cdsDeficitCoverDecision_P_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_P_LEASE_DATE_UNIT_NAME'
      LookupDataSet = cdsDateUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'THE_DATE_UNIT_NAME'
      KeyFields = 'P_LEASE_DATE_UNIT_CODE'
      Size = 50
      Lookup = True
    end
    object cdsDeficitCoverDecisionV_VENDOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'V_VENDOR_COMPANY_CODE'
    end
    object cdsDeficitCoverDecisionV_MEDIATOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'V_MEDIATOR_COMPANY_CODE'
    end
    object cdsDeficitCoverDecisionV_START_DATE: TAbmesSQLTimeStampField
      FieldName = 'V_START_DATE'
    end
    object cdsDeficitCoverDecisionV_REGISTER_DATE: TAbmesSQLTimeStampField
      FieldName = 'V_REGISTER_DATE'
    end
    object cdsDeficitCoverDecisionV_PLAN_POSITION_DATE: TAbmesSQLTimeStampField
      FieldName = 'V_PLAN_POSITION_DATE'
    end
    object cdsDeficitCoverDecisionV_REAL_POSITION_DATE: TAbmesSQLTimeStampField
      FieldName = 'V_REAL_POSITION_DATE'
    end
    object cdsDeficitCoverDecisionV_PLAN_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField
      FieldName = 'V_PLAN_VENDOR_POSITION_DATE'
    end
    object cdsDeficitCoverDecisionV_REAL_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField
      FieldName = 'V_REAL_VENDOR_POSITION_DATE'
    end
  end
  object dsDeficitCoverDecision: TDataSource
    DataSet = cdsDeficitCoverDecision
    Left = 120
    Top = 65528
  end
  object cdsDeliveryTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDeliveries
    Params = <>
    ProviderName = 'prvDeliveryTypes'
    Left = 584
    Top = 336
    object cdsDeliveryTypesDELIVERY_TYPE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_TYPE_CODE'
    end
    object cdsDeliveryTypesDELIVERY_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'DELIVERY_TYPE_ABBREV'
      Size = 5
    end
  end
  object dsDeliveryTypes: TDataSource
    DataSet = cdsDeliveryTypes
    Left = 600
    Top = 336
  end
  object cdsPriorities: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvPriorities'
    Left = 648
    Top = 336
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
    Left = 664
    Top = 336
  end
  object cdsDeliveryProductInfo: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDeliveries
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
        DataType = ftDateTime
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VENDOR_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'TO_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDeliveryProductInfo'
    Left = 856
    Top = 280
    object cdsDeliveryProductInfoMARKET_PRICE: TAbmesFloatField
      FieldName = 'MARKET_PRICE'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsDeliveryProductInfoACC_MARKET_PRICE: TAbmesFloatField
      FieldName = 'ACC_MARKET_PRICE'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsDeliveryProductInfoMARKET_PRICE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'MARKET_PRICE_CURRENCY_CODE'
    end
    object cdsDeliveryProductInfoDELIVERY_LEASE_PRICE: TAbmesFloatField
      FieldName = 'DELIVERY_LEASE_PRICE'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsDeliveryProductInfoACC_DELIVERY_LEASE_PRICE: TAbmesFloatField
      FieldName = 'ACC_DELIVERY_LEASE_PRICE'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsDeliveryProductInfoDELIVERY_LEASE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_LEASE_CURRENCY_CODE'
    end
    object cdsDeliveryProductInfoDELIVERY_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_LEASE_DATE_UNIT_CODE'
    end
    object cdsDeliveryProductInfoSPEC_STATE_CODE: TAbmesFloatField
      FieldName = 'SPEC_STATE_CODE'
    end
    object cdsDeliveryProductInfoPRODUCT_PRIORITY_NO: TAbmesFloatField
      FieldName = 'PRODUCT_PRIORITY_NO'
    end
    object cdsDeliveryProductInfoPRODUCT_PRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRODUCT_PRIORITY_COLOR'
    end
    object cdsDeliveryProductInfoPRODUCT_PRIORITY_BK_COLOR: TAbmesFloatField
      FieldName = 'PRODUCT_PRIORITY_BK_COLOR'
    end
    object cdsDeliveryProductInfoPRP_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRP_DOC_BRANCH_CODE'
    end
    object cdsDeliveryProductInfoPRP_DOC_CODE: TAbmesFloatField
      FieldName = 'PRP_DOC_CODE'
    end
    object cdsDeliveryProductInfoPRP_HAS_DOC: TAbmesFloatField
      FieldName = 'PRP_HAS_DOC'
    end
    object cdsDeliveryProductInfo_MARKET_PRICE_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_MARKET_PRICE_CURRENCY_ABBREV'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = 'MARKET_PRICE_CURRENCY_CODE'
      Size = 5
      Lookup = True
    end
    object cdsDeliveryProductInfo_DELIVERY_LEASE_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_DELIVERY_LEASE_CURRENCY_ABBREV'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = 'DELIVERY_LEASE_CURRENCY_CODE'
      Size = 5
      Lookup = True
    end
    object cdsDeliveryProductInfo_DELIVERY_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_DELIVERY_LEASE_DATE_UNIT_NAME'
      LookupDataSet = cdsDateUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'THE_DATE_UNIT_NAME'
      KeyFields = 'DELIVERY_LEASE_DATE_UNIT_CODE'
      Lookup = True
    end
  end
  object dsDeliveryProductInfo: TDataSource
    DataSet = cdsDeliveryProductInfo
    Left = 824
    Top = 280
  end
  object cdsDateUnits: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvDateUnits'
    Left = 184
    Top = 336
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
    Top = 336
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
    Left = 704
    Top = 336
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
  object cdsSaleID: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDeliveries
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_NO'
        ParamType = ptInput
      end>
    ProviderName = 'prvSaleID'
    Left = 224
    Top = 304
    object cdsSaleIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_BRANCH_CODE'
    end
    object cdsSaleIDPROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_CODE'
    end
    object cdsSaleIDSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
      Required = True
    end
    object cdsSaleIDREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object cdsSaleIDREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
  end
  object pdsSaleID: TParamDataSet
    DataSet = cdsSaleID
    Left = 200
    Top = 304
    object pdsSaleIDSALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_BRANCH_CODE'
    end
    object pdsSaleIDSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
    end
  end
  object dsSaleID: TDataSource
    DataSet = pdsSaleID
    Left = 176
    Top = 304
  end
  object cdsDeliveryDefaults: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDeliveries
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
        Name = 'THE_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDeliveryDefaults'
    Left = 680
    Top = 80
    object cdsDeliveryDefaultsPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
    end
    object cdsDeliveryDefaultsPARTNER_OFFICE_CODE: TAbmesFloatField
      FieldName = 'PARTNER_OFFICE_CODE'
    end
    object cdsDeliveryDefaultsMEDIATOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'MEDIATOR_COMPANY_CODE'
    end
    object cdsDeliveryDefaultsTRANSPORT_DURATION_DAYS: TAbmesFloatField
      FieldName = 'TRANSPORT_DURATION_DAYS'
    end
    object cdsDeliveryDefaultsSHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_TYPE_CODE'
    end
    object cdsDeliveryDefaultsIS_PARTNER_TRANSPORT: TAbmesFloatField
      FieldName = 'IS_PARTNER_TRANSPORT'
      FieldValueType = fvtBoolean
    end
    object cdsDeliveryDefaultsCUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'CUSTOMHOUSE_CODE'
    end
    object cdsDeliveryDefaultsSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object cdsDeliveryDefaultsRESOLVE_DURATION_DAYS: TAbmesFloatField
      FieldName = 'RESOLVE_DURATION_DAYS'
    end
    object cdsDeliveryDefaultsPRICE: TAbmesFloatField
      FieldName = 'PRICE'
    end
    object cdsDeliveryDefaultsCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object cdsDeliveryDefaultsLEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_CODE'
    end
  end
  object cdsMeasures: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvMeasures'
    Left = 744
    Top = 336
    object cdsMeasuresMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
      Required = True
    end
    object cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Required = True
      Size = 5
    end
  end
end
