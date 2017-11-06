inherited fmRealFinModelLine: TfmRealFinModelLine
  Caption = #1056#1077#1076' '#1086#1090' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1077#1085' '#1052#1054#1044#1045#1083' - '#1060#1080#1085#1072#1085#1089#1086#1074' - %s'
  ClientHeight = 228
  ClientWidth = 913
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 193
    Width = 913
    TabOrder = 1
    inherited pnlOKCancel: TPanel
      Left = 645
      TabOrder = 2
    end
    inherited pnlClose: TPanel
      Left = 556
      TabOrder = 1
    end
    inherited pnlApply: TPanel
      Left = 824
      TabOrder = 3
      Visible = False
    end
    object pnlAnnulLine: TPanel
      Left = 0
      Top = 0
      Width = 115
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object btnAnnulLine: TBitBtn
        Left = 8
        Top = 2
        Width = 105
        Height = 25
        Action = actAnnulLine
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
        Spacing = -1
        TabOrder = 0
      end
    end
    object pnlOrderAnnuled: TPanel
      Left = 115
      Top = 0
      Width = 81
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 4
      Visible = False
      object chbOrderAnnuled: TCheckBox
        Left = 8
        Top = 8
        Width = 70
        Height = 17
        Caption = #1040#1085#1091#1083#1080#1088#1072#1085
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
    end
  end
  object gbLine: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 897
    Height = 177
    Caption = ' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1044#1074#1080#1078#1077#1085#1080#1077' '#1085#1072' '#1060#1080#1085#1072#1085#1089#1086#1074' '#1054#1073#1077#1082#1090' '
    TabOrder = 0
    object lblFinModelLineType: TLabel
      Left = 16
      Top = 16
      Width = 19
      Height = 13
      Caption = #1042#1080#1076
      FocusControl = cbFinModelLineType
    end
    object lblShowNo: TLabel
      Left = 288
      Top = 16
      Width = 34
      Height = 13
      Caption = #1053#1086#1084#1077#1088
      FocusControl = edtShowNo
    end
    object lblLineQuantityPercent: TLabel
      Left = 360
      Top = 16
      Width = 78
      Height = 13
      Caption = #1057#1090#1088'. '#1087#1088#1086#1087#1086#1088#1094#1080#1103
      FocusControl = edtLineQuantityPercent
    end
    object lblAbsMovementDateOffset: TLabel
      Left = 456
      Top = 16
      Width = 172
      Height = 13
      Caption = #1054#1090#1084#1077#1089#1090#1074#1072#1085#1077' '#1089#1087#1088#1103#1084#1086' '#1041#1072#1079#1086#1074#1072' '#1044#1072#1090#1072
      FocusControl = edtAbsMovementDateOffset
    end
    object lblAbsMovementDateOffsetMeasure: TLabel
      Left = 550
      Top = 35
      Width = 18
      Height = 13
      Caption = #1082'.'#1076'.'
      FocusControl = edtAbsMovementDateOffset
    end
    object lblFinancialStore: TLabel
      Left = 16
      Top = 72
      Width = 127
      Height = 13
      Caption = #1058#1055' - '#1060#1080#1085#1072#1085#1089#1086#1074#1086' '#1048#1055
    end
    object lblPartnerOffice: TLabel
      Left = 512
      Top = 73
      Width = 162
      Height = 13
      Caption = #1058#1055' - '#1060#1080#1085#1072#1085#1089#1086#1074#1086' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088
      FocusControl = cbPartnerOffice
    end
    object lblLineQuantityPercentMeasure: TLabel
      Left = 430
      Top = 35
      Width = 8
      Height = 13
      Caption = '%'
      FocusControl = edtAbsMovementDateOffset
    end
    object lblMovementBeginDate: TLabel
      Left = 664
      Top = 16
      Width = 105
      Height = 13
      Caption = #1053#1072#1095#1072#1083#1086' '#1085#1072' '#1076#1074#1080#1078#1077#1085#1080#1077
      FocusControl = frMovementPlanBeginDate
    end
    object lblMovementEndDate: TLabel
      Left = 776
      Top = 16
      Width = 93
      Height = 13
      Caption = #1050#1088#1072#1081' '#1085#1072' '#1076#1074#1080#1078#1077#1085#1080#1077
      FocusControl = frMovementPlanBeginDate
    end
    object lblDocumentIdentifier: TLabel
      Left = 663
      Top = 128
      Width = 99
      Height = 13
      Caption = #1060#1072#1082#1090#1091#1088#1072' ('#1076#1086#1082'. '#1086#1089#1085'.)'
    end
    object lblDocumentDate: TLabel
      Left = 775
      Top = 128
      Width = 86
      Height = 13
      Caption = #1044#1072#1090#1072' '#1085#1072' '#1092#1072#1082#1090#1091#1088#1072
    end
    object cbFinModelLineType: TJvDBLookupCombo
      Left = 16
      Top = 32
      Width = 257
      Height = 21
      DeleteKeyClear = False
      DataField = '_FIN_MODEL_LINE_TYPE_NAME'
      DataSource = dsData
      TabOrder = 0
    end
    object edtShowNo: TDBEdit
      Left = 288
      Top = 32
      Width = 57
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = '_SHOW_NO'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 1
    end
    object edtLineQuantityPercent: TDBEdit
      Left = 360
      Top = 32
      Width = 65
      Height = 21
      DataField = 'LINE_QUANTITY_PERCENT'
      DataSource = dsData
      TabOrder = 2
    end
    object edtAbsMovementDateOffset: TDBEdit
      Left = 512
      Top = 32
      Width = 33
      Height = 21
      Color = 16115403
      DataField = 'ABS_MOVEMENT_OFFSET_DAYS'
      DataSource = dsData
      TabOrder = 4
    end
    object cbMovementDateOffsetSign: TJvDBLookupCombo
      Left = 576
      Top = 32
      Width = 81
      Height = 21
      DeleteKeyClear = False
      DataField = '_MOVEMENT_OFFSET_DAYS_SIGN_NAME'
      DataSource = dsData
      TabOrder = 6
    end
    inline frFinancialStore: TfrDeptFieldEditFrameBald
      Left = 16
      Top = 88
      Width = 369
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 9
      TabStop = True
      DesignSize = (
        369
        22)
      inherited gbTreeNode: TGroupBox
        Width = 385
        DesignSize = (
          385
          49)
        inherited pnlTreeNode: TPanel
          Width = 369
          inherited pnlTreeNodeName: TPanel
            Width = 222
            DesignSize = (
              222
              22)
            inherited edtTreeNodeName: TDBEdit
              Width = 221
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 222
          end
          inherited pnlRightButtons: TPanel
            Left = 333
          end
        end
      end
    end
    object pnlMovement: TPanel
      Left = 393
      Top = 63
      Width = 112
      Height = 56
      BevelOuter = bvNone
      TabOrder = 10
      object lblTransportDurationDays: TLabel
        Left = 46
        Top = -2
        Width = 53
        Height = 26
        Caption = #1055#1077#1088#1080#1086#1076' '#1079#1072#13#10#1044#1074#1080#1078#1077#1085#1080#1077
        FocusControl = edtTransportDurationDays
      end
      object lblTransportDurationDaysMeasure: TLabel
        Left = 84
        Top = 28
        Width = 18
        Height = 13
        Caption = #1082'.'#1076'.'
      end
      object edtTransportDurationDays: TDBEdit
        Left = 48
        Top = 25
        Width = 33
        Height = 21
        Color = 16115403
        DataField = 'MOVEMENT_DURATION_DAYS'
        DataSource = dsData
        TabOrder = 0
      end
      object pnlArrow: TPanel
        Left = 7
        Top = 20
        Width = 33
        Height = 25
        AutoSize = True
        BevelOuter = bvNone
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        object btnArrow: TSpeedButton
          Left = 0
          Top = 0
          Width = 33
          Height = 25
          Action = actArrow
          Caption = #174
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Symbol'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object cbPartnerOffice: TJvDBLookupCombo
      Left = 512
      Top = 88
      Width = 369
      Height = 21
      DeleteKeyClear = False
      DataField = '_PARTNER_ACCOUNT_FULL_NAME'
      DataSource = dsData
      DisplayEmpty = ' '
      TabOrder = 11
    end
    object pnlFinModelLineReason: TPanel
      Left = 16
      Top = 128
      Width = 337
      Height = 41
      BevelOuter = bvNone
      TabOrder = 12
      object lblFinModelLineReason: TLabel
        Left = 0
        Top = 0
        Width = 262
        Height = 13
        Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1077' '#1079#1072' '#1057#1098#1087#1098#1090#1089#1090#1074#1072#1097#1086' '#1060#1080#1085#1072#1085#1089#1086#1074#1086' '#1044#1074#1080#1078#1077#1085#1080#1077
        FocusControl = cbFinModelLineReason
      end
      object cbFinModelLineReason: TJvDBLookupCombo
        Left = 0
        Top = 16
        Width = 297
        Height = 21
        DeleteKeyClear = False
        DataField = '_FIN_MODEL_LINE_REASON_NAME'
        DataSource = dsData
        DisplayEmpty = ' '
        TabOrder = 0
      end
    end
    object edtAfterAbsMovementDateOffset: TEdit
      Left = 992
      Top = 0
      Width = 73
      Height = 21
      ReadOnly = True
      TabOrder = 5
      Text = 'edtAfterAbsMovementDateOffset'
    end
    inline frMovementPlanBeginDate: TfrDateFieldEditFrame
      Left = 664
      Top = 32
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 7
    end
    inline frMovementPlanEndDate: TfrDateFieldEditFrame
      Left = 776
      Top = 32
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 8
    end
    object edtFMMovementOffsetType: TDBEdit
      Left = 456
      Top = 32
      Width = 49
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = '_FM_MOVEMENT_OFFSET_TYPE_NAME'
      DataSource = dsFinOrder
      ReadOnly = True
      TabOrder = 3
    end
    object pnlToggleDocument: TPanel
      Left = 653
      Top = 144
      Width = 228
      Height = 21
      BevelOuter = bvNone
      ParentShowHint = False
      ShowHint = False
      TabOrder = 13
      object pnlToggleInheritedDocument: TPanel
        Left = 228
        Top = 0
        Width = 217
        Height = 21
        Align = alLeft
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 0
        object edtInheritedDocumentIdentifier: TDBEdit
          Left = 0
          Top = 0
          Width = 105
          Height = 21
          Color = clBtnFace
          DataField = 'DOCUMENT_IDENTIFIER'
          DataSource = dsFinOrder
          ReadOnly = True
          TabOrder = 0
        end
        inline frInheritedDocumentDate: TfrDateFieldEditFrame
          Left = 112
          Top = 0
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 1
        end
      end
      object pnlToggleOverriddenDocument: TPanel
        Left = 11
        Top = 0
        Width = 217
        Height = 21
        Align = alLeft
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 1
        object edtDocumentIdentifier: TDBEdit
          Left = 0
          Top = 0
          Width = 105
          Height = 21
          DataField = 'DOCUMENT_IDENTIFIER'
          DataSource = dsData
          TabOrder = 0
        end
        inline frDocumentDate: TfrDateFieldEditFrame
          Left = 112
          Top = 0
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 1
        end
      end
      object pnlToggleDocumentButton: TPanel
        Left = 0
        Top = 0
        Width = 11
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object btnToggleDocument: TSpeedButton
          Left = 0
          Top = 0
          Width = 11
          Height = 21
          Action = actToggleDocument
          Align = alLeft
          AllowAllUp = True
          GroupIndex = 1
          Flat = True
        end
      end
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1056#1077#1076' '#1086#1090' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1077#1085' '#1052#1054#1044#1045#1083' - '#1060#1080#1085#1072#1085#1089#1086#1074' - %s'
    end
    object actAnnulLine: TAction
      Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077'...'
      ImageIndex = 16
      OnExecute = actAnnulLineExecute
      OnUpdate = actAnnulLineUpdate
    end
    object actArrow: TAction
      Caption = #1080
      Hint = #1055#1086#1089#1086#1082#1072
      OnExecute = actArrowExecute
      OnUpdate = actArrowUpdate
    end
    object actToggleDocument: TAction
      GroupIndex = 1
      ImageIndex = 140
      OnExecute = actToggleDocumentExecute
      OnUpdate = actToggleDocumentUpdate
    end
  end
  object dsFinOrder: TDataSource
    Left = 64
  end
end
