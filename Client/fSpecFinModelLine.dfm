inherited fmSpecFinModelLine: TfmSpecFinModelLine
  ActiveControl = cbFinModelLineType
  Caption = #1056#1077#1076' '#1086#1090' '#1055#1088#1080#1085#1094#1080#1087#1077#1085' '#1052#1054#1044#1045#1083' - '#1060#1080#1085#1072#1085#1089#1086#1074' - %s'
  ClientHeight = 356
  ClientWidth = 753
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 321
    Width = 753
    TabOrder = 3
    inherited pnlOKCancel: TPanel
      Left = 485
    end
    inherited pnlClose: TPanel
      Left = 396
    end
    inherited pnlApply: TPanel
      Left = 664
      Visible = False
    end
  end
  object gbLine: TGroupBox [1]
    Left = 8
    Top = 136
    Width = 737
    Height = 177
    Caption = ' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1044#1074#1080#1078#1077#1085#1080#1077' '#1085#1072' '#1060#1080#1085#1072#1085#1089#1086#1074' '#1054#1073#1077#1082#1090' '
    TabOrder = 2
    object lblFinModelLineType: TLabel
      Left = 16
      Top = 16
      Width = 19
      Height = 13
      Caption = #1042#1080#1076
      FocusControl = cbFinModelLineType
    end
    object lblShowNo: TLabel
      Left = 336
      Top = 16
      Width = 34
      Height = 13
      Caption = #1053#1086#1084#1077#1088
      FocusControl = edtShowNo
    end
    object lblLineQuantityPercent: TLabel
      Left = 416
      Top = 16
      Width = 78
      Height = 13
      Caption = #1057#1090#1088'. '#1087#1088#1086#1087#1086#1088#1094#1080#1103
      FocusControl = edtLineQuantityPercent
    end
    object lblAbsMovementDateOffset: TLabel
      Left = 520
      Top = 16
      Width = 172
      Height = 13
      Caption = #1054#1090#1084#1077#1089#1090#1074#1072#1085#1077' '#1089#1087#1088#1103#1084#1086' '#1041#1072#1079#1086#1074#1072' '#1044#1072#1090#1072
      FocusControl = edtAbsMovementDateOffset
    end
    object lblAbsMovementDateOffsetMeasure: TLabel
      Left = 614
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
      Left = 430
      Top = 73
      Width = 228
      Height = 13
      Caption = #1058#1055' - '#1060#1080#1085#1072#1085#1089#1086#1074#1086' '#1085#1072' %BorderRelTypeName%'
      FocusControl = cbPartnerOffice
    end
    object lblLineQuantityPercentMeasure: TLabel
      Left = 486
      Top = 35
      Width = 8
      Height = 13
      Caption = '%'
      FocusControl = edtAbsMovementDateOffset
    end
    object cbFinModelLineType: TJvDBLookupCombo
      Left = 16
      Top = 32
      Width = 297
      Height = 21
      DeleteKeyClear = False
      DataField = '_FIN_MODEL_LINE_TYPE_NAME'
      DataSource = dsData
      TabOrder = 0
    end
    object edtShowNo: TDBEdit
      Left = 336
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
      Left = 416
      Top = 32
      Width = 65
      Height = 21
      DataField = 'LINE_QUANTITY_PERCENT'
      DataSource = dsData
      TabOrder = 2
    end
    object edtAbsMovementDateOffset: TDBEdit
      Left = 576
      Top = 32
      Width = 33
      Height = 21
      Color = 16115403
      DataField = 'ABS_MOVEMENT_OFFSET_DAYS'
      DataSource = dsData
      TabOrder = 4
    end
    object cbMovementDateOffsetSign: TJvDBLookupCombo
      Left = 640
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
      Width = 297
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 7
      TabStop = True
      DesignSize = (
        297
        22)
      inherited gbTreeNode: TGroupBox
        Width = 313
        inherited pnlTreeNode: TPanel
          Width = 297
          inherited pnlTreeNodeName: TPanel
            Width = 150
            inherited edtTreeNodeName: TDBEdit
              Width = 149
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 150
          end
          inherited pnlRightButtons: TPanel
            Left = 261
          end
        end
      end
    end
    object pnlMovement: TPanel
      Left = 313
      Top = 63
      Width = 112
      Height = 56
      BevelOuter = bvNone
      TabOrder = 8
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
      object lblArrow: TDBText
        Left = 11
        Top = 19
        Width = 30
        Height = 26
        DataField = '_ARROW'
        DataSource = dsData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Symbol'
        Font.Style = []
        ParentFont = False
        Transparent = False
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
    end
    object cbPartnerOffice: TJvDBLookupCombo
      Left = 432
      Top = 89
      Width = 289
      Height = 21
      DeleteKeyClear = False
      DataField = '_PARTNER_ACCOUNT_FULL_NAME'
      DataSource = dsData
      DisplayEmpty = ' '
      TabOrder = 9
    end
    object pnlFinModelLineReason: TPanel
      Left = 16
      Top = 128
      Width = 337
      Height = 41
      BevelOuter = bvNone
      TabOrder = 10
      object lblFinModelLineReason: TLabel
        Left = 0
        Top = 0
        Width = 56
        Height = 13
        Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1077
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
      Left = 752
      Top = 0
      Width = 73
      Height = 21
      ReadOnly = True
      TabOrder = 5
      Text = 'edtAfterAbsMovementDateOffset'
    end
    object edtFMMovementOffsetType: TDBEdit
      Left = 520
      Top = 32
      Width = 49
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = '_FM_MOVEMENT_OFFSET_TYPE_NAME'
      DataSource = dsSpecFinModels
      ReadOnly = True
      TabOrder = 3
    end
  end
  inline frPartner: TfrPartnerExFieldEditFrame [2]
    Left = 8
    Top = 8
    Width = 529
    Height = 65
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 155
    Constraints.MinHeight = 49
    TabOrder = 0
    TabStop = True
    inherited gbPartner: TGroupBox
      Width = 529
      Height = 65
      Caption = ' '#1055#1072#1088#1090#1085#1100#1086#1088' - %BorderRelTypeName% '
      inherited pnlNameAndButtons: TPanel
        Width = 104
        Height = 48
        inherited pnlRightButtons: TPanel
          Left = 68
          Height = 33
          inherited tlbDocButton: TToolBar
            Height = 33
          end
        end
        inherited pnlPartnerName: TPanel
          Width = 68
          Height = 33
          inherited edtPartnerName: TDBEdit
            Width = 55
          end
          inherited cbPartner: TJvDBLookupCombo
            Width = 69
          end
        end
        inherited pnlNameAndButtonsTop: TPanel
          Width = 104
          inherited lblPartner: TLabel
            Width = 76
          end
        end
      end
      inherited pnlPaddingRight: TPanel
        Left = 408
        Height = 48
      end
      inherited pnlPartnerCode: TPanel
        Height = 48
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
          DataSet = frPartner.cdsPartner
        end
      end
      inherited pnlPriority: TPanel
        Height = 48
        inherited lblPriority: TLabel
          Width = 38
        end
      end
      inherited pnlCountry: TPanel
        Left = 414
        Height = 48
      end
      inherited pnlParRelButton: TPanel
        Left = 454
        Height = 48
      end
    end
  end
  object gbDateInterval: TGroupBox [3]
    Left = 544
    Top = 8
    Width = 201
    Height = 65
    Caption = ' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '
    TabOrder = 1
    DesignSize = (
      201
      65)
    inline frDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 28
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 0
      TabStop = True
    end
    object tlbDocs: TToolBar
      Left = 153
      Top = 28
      Width = 36
      Height = 22
      Align = alNone
      Anchors = [akTop, akRight]
      AutoSize = True
      ButtonWidth = 36
      EdgeInner = esNone
      Images = dmMain.ilDocs
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      object btnDocs: TToolButton
        Left = 0
        Top = 0
        ImageIndex = 1
        OnClick = btnDocsClick
      end
    end
  end
  object gbFinModel: TGroupBox [4]
    Left = 8
    Top = 80
    Width = 737
    Height = 49
    Caption = ' '#1055'-'#1052#1054#1044#1045#1083' - '#1060#1080#1085#1072#1085#1089#1086#1074' '
    TabOrder = 4
    DesignSize = (
      737
      49)
    object edtFinModel: TDBEdit
      Left = 8
      Top = 20
      Width = 721
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      DataField = '_SHOW_NAME'
      DataSource = dsSpecFinModels
      ReadOnly = True
      TabOrder = 0
    end
  end
  inherited alActions: TActionList [5]
    Left = 496
    inherited actForm: TAction
      Caption = #1056#1077#1076' '#1086#1090' '#1055#1088#1080#1085#1094#1080#1087#1077#1085' '#1052#1054#1044#1045#1083' - '#1060#1080#1085#1072#1085#1089#1086#1074' - %s'
    end
  end
  inherited dsData: TDataSource [6]
    Left = 464
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 432
  end
  object dsSpecFinModels: TDataSource
    Left = 152
    Top = 88
  end
  object dsParRelPeriods: TDataSource
    Left = 656
  end
end
