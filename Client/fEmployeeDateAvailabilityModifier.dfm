inherited fmEmployeeDateAvailabilityModifier: TfmEmployeeDateAvailabilityModifier
  Left = 548
  Top = 213
  Caption = #1052#1086#1076#1080#1092#1080#1082#1072#1090#1086#1088' '#1085#1072' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1077' - %s'
  ClientHeight = 477
  ClientWidth = 521
  ExplicitWidth = 527
  ExplicitHeight = 502
  DesignSize = (
    521
    477)
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Top = 16
    Width = 505
    Height = 418
    ExplicitTop = 16
    ExplicitWidth = 505
    ExplicitHeight = 418
  end
  object lblNotes: TLabel [1]
    Left = 24
    Top = 184
    Width = 45
    Height = 13
    Caption = #1041#1077#1083#1077#1078#1082#1080
    FocusControl = edtNotes
  end
  object lblAuthorizeEmployee: TLabel [2]
    Left = 24
    Top = 232
    Width = 44
    Height = 13
    Caption = #1053#1072#1088#1077#1076#1080#1083
    FocusControl = frAuthorizeEmployee
  end
  inherited pnlBottomButtons: TPanel
    Top = 442
    Width = 521
    TabOrder = 6
    ExplicitTop = 442
    ExplicitWidth = 521
    inherited pnlOKCancel: TPanel
      Left = 253
      TabOrder = 3
      ExplicitLeft = 253
    end
    inherited pnlClose: TPanel
      Left = 164
      TabOrder = 2
      ExplicitLeft = 164
    end
    inherited pnlApply: TPanel
      Left = 432
      TabOrder = 4
      Visible = False
      ExplicitLeft = 432
    end
    object pnlStornoButton: TPanel
      Left = 0
      Top = 0
      Width = 104
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object btnStorno: TBitBtn
        Left = 8
        Top = 2
        Width = 96
        Height = 25
        Action = actStorno
        Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077
        TabOrder = 0
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF000000
          0000000000000000000000000000FF00FF00000000000000000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          0000FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          0000FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          000000000000FF00FF00FF00FF000000000000000000FF00FF00000000000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000000000000000FF00FF0000000000FF00FF0000000000000084000000
          840000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00000000000000FF000000FF000000
          FF000000840000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          000000000000FF00FF00FF00FF00FF00FF00000000000000FF000000FF000000
          FF000000FF000000840000000000FF00FF00FF00FF00FF00FF00FF00FF000000
          000000000000FF00FF0000000000FF00FF00FF00FF00000000000000FF000000
          FF000000FF00000000000084840000000000FF00FF00FF00FF00FF00FF00FF00
          FF000000000000000000FF00FF0000000000FF00FF00FF00FF00000000000000
          FF000000000000FFFF00000000000084840000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          000000FFFF000000000000FFFF00000000000084840000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000000000FFFF000000000000FFFF000084840000848400FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000000FFFF0000FFFF0000FFFF0000848400FF00FF00FF00
          FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000000000FFFF0000FFFF0000FFFF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000000000FFFF0000FFFF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000FFFF00}
        Spacing = -1
      end
    end
    object pnlStorned: TPanel
      Left = 104
      Top = 0
      Width = 97
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 1
      object chbStorned: TCheckBox
        Left = 8
        Top = 6
        Width = 89
        Height = 17
        TabStop = False
        Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1086
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
    end
  end
  object pnlPageControl: TPanel [4]
    Left = 24
    Top = 40
    Width = 473
    Height = 137
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvNone
    Caption = ''
    TabOrder = 1
    DesignSize = (
      473
      137)
    object pcMain: TPageControl
      Left = -4
      Top = -27
      Width = 481
      Height = 168
      ActivePage = tsShiftChange
      Anchors = [akLeft, akTop, akRight, akBottom]
      Style = tsButtons
      TabOrder = 0
      TabStop = False
      object tsNone: TTabSheet
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        DesignSize = (
          473
          137)
        object lblSelectEmpAvailModifierType: TLabel
          Left = 102
          Top = 62
          Width = 269
          Height = 13
          Alignment = taCenter
          Anchors = []
          Caption = '< '#1052#1086#1083#1103', '#1080#1079#1073#1077#1088#1077#1090#1077' '#1074#1080#1076' '#1084#1086#1076#1080#1092#1080#1082#1072#1090#1086#1088' '#1085#1072' '#1087#1088#1080#1089#1098#1089#1090#1074#1080#1077' >'
          Layout = tlCenter
        end
      end
      object tsDayModifier: TTabSheet
        ImageIndex = 1
        DesignSize = (
          473
          137)
        object lblDayAbsenceReason: TLabel
          Left = 0
          Top = 48
          Width = 43
          Height = 13
          Caption = #1055#1088#1080#1095#1080#1085#1072
          FocusControl = cbDayAbsenceReason
        end
        object lblDayAbsenceDocType: TLabel
          Left = 240
          Top = 48
          Width = 73
          Height = 13
          Caption = #1042#1080#1076' '#1044#1086#1082#1091#1084#1077#1085#1090
          FocusControl = cbDayAbsenceDocType
        end
        object lblDayAbsenceDocNo: TLabel
          Left = 240
          Top = 96
          Width = 34
          Height = 13
          Caption = #1053#1086#1084#1077#1088
          FocusControl = edtDayAbsenceDocNo
        end
        object lblDayAbsenceDocDate: TLabel
          Left = 368
          Top = 96
          Width = 92
          Height = 13
          Caption = #1044#1072#1090#1072' '#1085#1072' '#1080#1079#1076#1072#1074#1072#1085#1077
          FocusControl = frDayAbsenceDocDate
        end
        object lblDayAbsenceDocIssuer: TLabel
          Left = 0
          Top = 96
          Width = 58
          Height = 13
          Caption = #1048#1079#1076#1072#1076#1077#1085' '#1086#1090
          FocusControl = edtDayAbsenceDocIssuer
        end
        object lblDateInterval: TLabel
          Left = 0
          Top = 0
          Width = 40
          Height = 13
          Caption = #1042#1088#1084#1048#1085#1090
          FocusControl = frDayAbsenceDateInterval
        end
        object cbDayAbsenceReason: TJvDBLookupCombo
          Left = 0
          Top = 64
          Width = 225
          Height = 21
          EscapeClear = False
          DataField = '_EMP_DAY_ABSENCE_REASON_NAME'
          DataSource = dsData
          TabOrder = 2
        end
        object cbDayAbsenceDocType: TJvDBLookupCombo
          Left = 240
          Top = 64
          Width = 233
          Height = 21
          EscapeClear = False
          DataField = '_EMP_DAY_ABSENCE_DOC_TYPE_NAME'
          DataSource = dsData
          TabOrder = 3
        end
        object edtDayAbsenceDocNo: TDBEdit
          Left = 240
          Top = 112
          Width = 113
          Height = 21
          DataField = 'EMP_DAY_ABSENCE_DOC_NO'
          DataSource = dsData
          TabOrder = 5
        end
        inline frDayAbsenceDocDate: TfrDateFieldEditFrame
          Left = 368
          Top = 112
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 6
          TabStop = True
          ExplicitLeft = 368
          ExplicitTop = 112
        end
        object edtDayAbsenceDocIssuer: TDBEdit
          Left = 0
          Top = 112
          Width = 225
          Height = 21
          DataField = 'EMP_DAY_ABSENCE_DOC_ISSUER'
          DataSource = dsData
          TabOrder = 4
        end
        inline frDayAbsenceDateInterval: TfrDateIntervalFrame
          Left = 0
          Top = 16
          Width = 145
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 145
          Constraints.MinHeight = 21
          Constraints.MinWidth = 145
          TabOrder = 0
          TabStop = True
          ExplicitTop = 16
        end
        object tlbDayAbsenceDocs: TToolBar
          Left = 437
          Top = 16
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
          object btnDayAbsenceDocs: TToolButton
            Left = 0
            Top = 0
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1052#1086#1076#1080#1092#1080#1082#1072#1090#1086#1088#1072' '#1085#1072' '#1087#1088#1080#1089#1098#1089#1090#1074#1080#1077
            ImageIndex = 1
            OnClick = btnDocsClick
          end
        end
      end
      object tsHourModifier: TTabSheet
        ImageIndex = 2
        DesignSize = (
          473
          137)
        object lblHourAvailDateInterval: TLabel
          Left = 0
          Top = 0
          Width = 40
          Height = 13
          Caption = #1042#1088#1084#1048#1085#1090
          FocusControl = frHourAvailDateInterval
        end
        object lblBeginTime: TLabel
          Left = 160
          Top = 0
          Width = 37
          Height = 13
          Caption = #1053#1072#1095#1072#1083#1086
          FocusControl = frBeginTime
        end
        object lblEndTime: TLabel
          Left = 208
          Top = 0
          Width = 25
          Height = 13
          Caption = #1050#1088#1072#1081
          FocusControl = frEndTime
        end
        object lblDurationHours: TLabel
          Left = 288
          Top = 0
          Width = 93
          Height = 13
          Caption = #1055#1088#1086#1076#1098#1083#1078#1080#1090#1077#1083#1085#1086#1089#1090
          FocusControl = edtDurationHours
        end
        object lblDurationHoursMeasure: TLabel
          Left = 389
          Top = 19
          Width = 23
          Height = 13
          Caption = #1095#1072#1089#1072
        end
        object lblHourAvailModifierReason: TLabel
          Left = 0
          Top = 48
          Width = 43
          Height = 13
          Caption = #1055#1088#1080#1095#1080#1085#1072
          FocusControl = cbHourAvailModifierReason
        end
        inline frBeginTime: TfrTimeFieldEditFrame
          Left = 160
          Top = 16
          Width = 104
          Height = 21
          TabOrder = 1
          TabStop = True
          ExplicitLeft = 160
          ExplicitTop = 16
          inherited edtTime: TDBDateTimeEditEh
            EditFormat = 'HH:NN'
          end
        end
        inline frEndTime: TfrTimeFieldEditFrame
          Left = 208
          Top = 16
          Width = 104
          Height = 21
          TabOrder = 2
          TabStop = True
          ExplicitLeft = 208
          ExplicitTop = 16
          inherited edtTime: TDBDateTimeEditEh
            EditFormat = 'HH:NN'
          end
        end
        inline frHourAvailDateInterval: TfrDateIntervalFrame
          Left = 0
          Top = 16
          Width = 145
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 145
          Constraints.MinHeight = 21
          Constraints.MinWidth = 145
          TabOrder = 0
          TabStop = True
          ExplicitTop = 16
        end
        object edtDurationHours: TDBEdit
          Left = 288
          Top = 16
          Width = 97
          Height = 21
          DataField = 'DURATION_HOURS'
          DataSource = dsData
          TabOrder = 3
        end
        object cbHourAvailModifierReason: TJvDBLookupCombo
          Left = 0
          Top = 64
          Width = 225
          Height = 21
          EscapeClear = False
          DataField = '_EMP_HOUR_AVAIL_MOD_REASON_NAME'
          DataSource = dsData
          TabOrder = 5
        end
        object chbIsPersonalWorkdaysOnly: TAbmesDBCheckBox
          Left = 0
          Top = 104
          Width = 169
          Height = 17
          Caption = #1057#1072#1084#1086' '#1079#1072' '#1083#1080#1095#1085#1080#1090#1077' '#1088#1072#1073#1086#1090#1085#1080' '#1076#1085#1080
          DataField = 'IS_PERSONAL_WORKDAYS_ONLY'
          DataSource = dsData
          TabOrder = 6
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object tlbHourAvailDocs: TToolBar
          Left = 437
          Top = 16
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
          TabOrder = 4
          object btnHourAvailDocs: TToolButton
            Left = 0
            Top = 0
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1052#1086#1076#1080#1092#1080#1082#1072#1090#1086#1088#1072' '#1085#1072' '#1087#1088#1080#1089#1098#1089#1090#1074#1080#1077
            ImageIndex = 1
            OnClick = btnDocsClick
          end
        end
        object tlbCalcDurationHours: TToolBar
          Left = 257
          Top = 16
          Width = 23
          Height = 22
          Align = alNone
          AutoSize = True
          Caption = 'tlbCalcDurationHours'
          Images = dmMain.ilActions
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          object btnCalcDurationHours: TToolButton
            Left = 0
            Top = 0
            Action = actCalcDurationHours
          end
        end
      end
      object tsShiftChange: TTabSheet
        Caption = 'tsShiftChange'
        ImageIndex = 3
        DesignSize = (
          473
          137)
        object lblShiftChangeDateInterval: TLabel
          Left = 0
          Top = 0
          Width = 40
          Height = 13
          Caption = #1042#1088#1084#1048#1085#1090
          FocusControl = frShiftChangeDateInterval
        end
        object lblShiftChangeReason: TLabel
          Left = 0
          Top = 48
          Width = 43
          Height = 13
          Caption = #1055#1088#1080#1095#1080#1085#1072
          FocusControl = cbShiftChangeReason
        end
        object lblOldShift: TLabel
          Left = 160
          Top = 0
          Width = 74
          Height = 13
          Caption = #1042#1084#1077#1089#1090#1086' '#1057#1084#1103#1085#1072
          FocusControl = cbOldShift
        end
        object lblNewShift: TLabel
          Left = 256
          Top = 0
          Width = 62
          Height = 13
          Caption = #1053#1086#1074#1072' '#1057#1084#1103#1085#1072
          FocusControl = cbNewShift
        end
        inline frShiftChangeDateInterval: TfrDateIntervalFrame
          Left = 0
          Top = 16
          Width = 145
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 145
          Constraints.MinHeight = 21
          Constraints.MinWidth = 145
          TabOrder = 0
          TabStop = True
          ExplicitTop = 16
        end
        object tlbShiftChangeDocs: TToolBar
          Left = 437
          Top = 16
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
          TabOrder = 3
          object btnShiftChangeDocs: TToolButton
            Left = 0
            Top = 0
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1052#1086#1076#1080#1092#1080#1082#1072#1090#1086#1088#1072' '#1085#1072' '#1087#1088#1080#1089#1098#1089#1090#1074#1080#1077
            ImageIndex = 1
            OnClick = btnDocsClick
          end
        end
        object cbShiftChangeReason: TJvDBLookupCombo
          Left = 0
          Top = 64
          Width = 473
          Height = 21
          EscapeClear = False
          DataField = '_EMP_HOUR_AVAIL_MOD_REASON_NAME'
          DataSource = dsData
          TabOrder = 4
        end
        object cbOldShift: TJvDBLookupCombo
          Left = 160
          Top = 16
          Width = 81
          Height = 21
          EscapeClear = False
          DataField = '_OLD_SHIFT_ABBREV'
          DataSource = dsData
          TabOrder = 1
        end
        object cbNewShift: TJvDBLookupCombo
          Left = 256
          Top = 16
          Width = 81
          Height = 21
          EscapeClear = False
          DataField = '_NEW_SHIFT_ABBREV'
          DataSource = dsData
          TabOrder = 2
        end
      end
    end
  end
  object cbEmpAvailModifierType: TJvDBLookupCombo [5]
    Left = 24
    Top = 8
    Width = 321
    Height = 21
    EscapeClear = False
    DataField = '_EMP_AVAIL_MODIFIER_TYPE_NAME'
    DataSource = dsData
    TabOrder = 0
    OnChange = cbEmpAvailModifierTypeChange
  end
  object edtNotes: TDBEdit [6]
    Left = 24
    Top = 200
    Width = 473
    Height = 21
    DataField = 'NOTES'
    DataSource = dsData
    TabOrder = 2
  end
  object gbCreateInfo: TGroupBox [7]
    Left = 24
    Top = 280
    Width = 473
    Height = 65
    Caption = ' '#1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077' '
    TabOrder = 4
    object lblCreateTime: TLabel
      Left = 120
      Top = 16
      Width = 20
      Height = 13
      Caption = #1063#1072#1089
      FocusControl = edtCreateTime
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblCreateDate: TLabel
      Left = 8
      Top = 16
      Width = 26
      Height = 13
      Caption = #1044#1072#1090#1072
      FocusControl = frCreateDate
    end
    object lblCreateEmployee: TLabel
      Left = 168
      Top = 16
      Width = 49
      Height = 13
      Caption = #1057#1083#1091#1078#1080#1090#1077#1083
      FocusControl = frCreateEmployee
    end
    inline frCreateDate: TfrDateFieldEditFrame
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
      ExplicitLeft = 8
      ExplicitTop = 32
    end
    object edtCreateTime: TDBEdit
      Left = 120
      Top = 32
      Width = 41
      Height = 21
      Color = clBtnFace
      DataField = 'CREATE_TIME'
      DataSource = dsData
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    inline frCreateEmployee: TfrEmployeeFieldEditFrameBald
      Left = 168
      Top = 32
      Width = 293
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 2
      TabStop = True
      ExplicitLeft = 168
      ExplicitTop = 32
    end
  end
  object gbStornoInfo: TGroupBox [8]
    Left = 24
    Top = 352
    Width = 473
    Height = 65
    Caption = ' '#1040#1085#1091#1083#1080#1088#1072#1085#1077' '
    TabOrder = 5
    object lblStornoTime: TLabel
      Left = 120
      Top = 16
      Width = 20
      Height = 13
      Caption = #1063#1072#1089
      FocusControl = edtStornoTime
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblStornoDate: TLabel
      Left = 8
      Top = 16
      Width = 26
      Height = 13
      Caption = #1044#1072#1090#1072
      FocusControl = frStornoDate
    end
    object lblStornoEmployee: TLabel
      Left = 168
      Top = 16
      Width = 49
      Height = 13
      Caption = #1057#1083#1091#1078#1080#1090#1077#1083
      FocusControl = frStornoEmployee
    end
    inline frStornoDate: TfrDateFieldEditFrame
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
      ExplicitLeft = 8
      ExplicitTop = 32
    end
    object edtStornoTime: TDBEdit
      Left = 120
      Top = 32
      Width = 41
      Height = 21
      Color = clBtnFace
      DataField = 'STORNO_TIME'
      DataSource = dsData
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    inline frStornoEmployee: TfrEmployeeFieldEditFrameBald
      Left = 168
      Top = 32
      Width = 293
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 2
      TabStop = True
      ExplicitLeft = 168
      ExplicitTop = 32
    end
  end
  inline frAuthorizeEmployee: TfrEmployeeFieldEditFrameBald [9]
    Left = 24
    Top = 248
    Width = 473
    Height = 22
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 22
    Constraints.MinHeight = 22
    TabOrder = 3
    TabStop = True
    ExplicitLeft = 24
    ExplicitTop = 248
    ExplicitWidth = 473
    DesignSize = (
      473
      22)
    inherited gbEmployee: TGroupBox
      Width = 492
      ExplicitWidth = 492
      inherited pnlEmployeeName: TPanel
        Width = 417
        ExplicitWidth = 417
        inherited pnlRightButtons: TPanel
          Left = 381
          ExplicitLeft = 381
        end
        inherited pnlEmpoyeeNameInner: TPanel
          Width = 381
          ExplicitWidth = 381
          DesignSize = (
            381
            32)
          inherited edtEmployeeName: TDBEdit
            Width = 335
            ExplicitWidth = 335
          end
          inherited cbEmployee: TJvDBLookupCombo
            Width = 380
            ExplicitWidth = 380
          end
        end
      end
      inherited pnlPaddingRight: TPanel
        Left = 482
        ExplicitLeft = 482
      end
    end
  end
  inherited alActions: TActionList [10]
    Left = 264
    inherited actForm: TAction
      Caption = #1052#1086#1076#1080#1092#1080#1082#1072#1090#1086#1088' '#1085#1072' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1077' - %s'
    end
    object actStorno: TAction
      Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077
      Hint = #1040#1085#1091#1083#1080#1088#1072#1085#1077
      ImageIndex = 26
      OnExecute = actStornoExecute
    end
    object actCalcDurationHours: TAction
      Hint = #1048#1079#1095#1080#1089#1083#1080' '#1055#1088#1086#1076#1098#1083#1078#1080#1090#1077#1083#1085#1086#1089#1090
      ImageIndex = 40
      OnExecute = actCalcDurationHoursExecute
      OnUpdate = actCalcDurationHoursUpdate
    end
  end
  inherited dsData: TDataSource [12]
    Left = 232
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 200
  end
end
