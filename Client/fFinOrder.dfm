inherited fmFinOrder: TfmFinOrder
  Caption = #1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1060#1080#1085#1072#1085#1089#1086#1074' - %s'
  ClientHeight = 556
  ClientWidth = 1017
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 521
    Width = 1017
    TabOrder = 2
    inherited pnlOKCancel: TPanel
      Left = 749
    end
    inherited pnlClose: TPanel
      Left = 660
    end
    inherited pnlApply: TPanel
      Left = 928
      Visible = False
    end
    object pnlBottomButtonsClient: TPanel
      Left = 230
      Top = 0
      Width = 430
      Height = 35
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 3
      object pnlBottomButtonsClientLeft: TPanel
        Left = 0
        Top = 0
        Width = 343
        Height = 35
        Align = alLeft
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 0
        object pnlCloseOrder: TPanel
          Left = 0
          Top = 0
          Width = 115
          Height = 35
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object btnCloseOrder: TBitBtn
            Left = 8
            Top = 2
            Width = 105
            Height = 25
            Action = actCloseOrder
            Caption = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077'...'
            Spacing = -1
            TabOrder = 0
          end
        end
        object pnlAnnulOrder: TPanel
          Left = 115
          Top = 0
          Width = 115
          Height = 35
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object btnAnnulOrder: TBitBtn
            Left = 8
            Top = 2
            Width = 105
            Height = 25
            Action = actAnnulOrder
            Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077'...'
            Spacing = -1
            TabOrder = 0
          end
        end
        object pnlNotes: TPanel
          Left = 230
          Top = 0
          Width = 113
          Height = 35
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object btnNotes: TBitBtn
            Left = 8
            Top = 2
            Width = 105
            Height = 25
            Action = actNotes
            Caption = #1041#1077#1083#1077#1078#1082#1080'...'
            Spacing = -1
            TabOrder = 0
          end
        end
      end
      object pnlBottomButtonsClientClient: TPanel
        Left = 343
        Top = 0
        Width = 87
        Height = 35
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object pnlOrderClosed: TPanel
          Left = 178
          Top = 0
          Width = 89
          Height = 35
          Align = alLeft
          BevelOuter = bvNone
          Enabled = False
          TabOrder = 0
          Visible = False
          object chbOrderClosed: TCheckBox
            Left = 8
            Top = 8
            Width = 77
            Height = 15
            Caption = #1055#1088#1080#1082#1083#1102#1095#1077#1085
            Checked = True
            State = cbChecked
            TabOrder = 0
          end
        end
        object pnlOrderAnnuled: TPanel
          Left = 267
          Top = 0
          Width = 81
          Height = 35
          Align = alLeft
          BevelOuter = bvNone
          Enabled = False
          TabOrder = 1
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
        object pnlOrderCompleted: TPanel
          Left = 89
          Top = 0
          Width = 89
          Height = 35
          Align = alLeft
          BevelOuter = bvNone
          Enabled = False
          TabOrder = 2
          Visible = False
          object chbOrderCompleted: TCheckBox
            Left = 8
            Top = 8
            Width = 77
            Height = 15
            Caption = #1054#1090#1095#1077#1090#1077#1085
            Checked = True
            State = cbChecked
            TabOrder = 0
          end
        end
        object pnlOrderActivated: TPanel
          Left = 0
          Top = 0
          Width = 89
          Height = 35
          Align = alLeft
          BevelOuter = bvNone
          Enabled = False
          TabOrder = 3
          Visible = False
          object chbOrderActivated: TCheckBox
            Left = 8
            Top = 8
            Width = 77
            Height = 15
            Caption = #1040#1082#1090#1080#1074#1080#1088#1072#1085
            Checked = True
            State = cbChecked
            TabOrder = 0
          end
        end
      end
    end
    object pnlBottomButtonsLeft: TPanel
      Left = 0
      Top = 0
      Width = 230
      Height = 35
      Align = alLeft
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 4
      object pnlActivateModel: TPanel
        Left = 0
        Top = 0
        Width = 115
        Height = 35
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object btnActivateModel: TBitBtn
          Left = 8
          Top = 2
          Width = 105
          Height = 25
          Action = actActivateModel
          Caption = #1040#1082#1090#1080#1074#1080#1088#1072#1085#1077'...'
          Spacing = -1
          TabOrder = 0
        end
      end
      object pnlCompleteModel: TPanel
        Left = 115
        Top = 0
        Width = 115
        Height = 35
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          115
          35)
        object btnCompleteModel: TBitBtn
          Left = 8
          Top = 2
          Width = 105
          Height = 25
          Action = actCompleteModel
          Anchors = [akLeft, akTop, akRight]
          Caption = #1054#1090#1095#1080#1090#1072#1085#1077'...'
          Spacing = -1
          TabOrder = 0
        end
      end
    end
  end
  inherited pnlMain: TPanel
    Top = 285
    Width = 1017
    Height = 236
    TabOrder = 1
    object pnlFinOrderBottom: TPanel [0]
      Left = 8
      Top = 8
      Width = 1001
      Height = 217
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object pnlTimeLine: TPanel
        Left = 0
        Top = 0
        Width = 1001
        Height = 148
        BevelOuter = bvLowered
        Color = 14540253
        TabOrder = 0
        object saTimeLine: TAbmesArrow
          Left = 18
          Top = 15
          Width = 970
          Height = 43
          Points = <
            item
              X = 0
              Y = 21
              ArrowType = atNone
            end
            item
              X = 970
              Y = 21
              ArrowType = atForward
            end>
          Pen.Color = 8620357
          Pen.Width = 9
          HeadLength = 30
          HeadWidth = 20
        end
        object shpTimeStart: TShape
          Left = 13
          Top = 15
          Width = 6
          Height = 44
          Brush.Color = 8620357
          Pen.Style = psClear
        end
        object saToday: TAbmesArrow
          Left = 360
          Top = 6
          Width = 15
          Height = 26
          Hint = #1044#1085#1077#1089
          ShowHint = True
          ParentShowHint = False
          Points = <
            item
              X = 15
              Y = 1
              ArrowType = atNone
            end
            item
              X = 7
              Y = 1
              ArrowType = atNone
            end
            item
              X = 7
              Y = 26
              ArrowType = atForward
            end>
          Pen.Color = 11427583
          Pen.Width = 3
          HeadLength = 15
          HeadWidth = 10
        end
        object shpPlanBeginDateDiff: TShape
          Left = 239
          Top = 38
          Width = 226
          Height = 4
          Hint = #1047#1072#1082#1098#1089#1085#1077#1085#1080#1077' '#1085#1072' '#1057#1090#1072#1088#1090#1072
          Brush.Color = 213
          ParentShowHint = False
          Pen.Style = psClear
          ShowHint = True
        end
        object shpPlanEndDateDiff: TShape
          Left = 455
          Top = 35
          Width = 114
          Height = 4
          Hint = #1047#1072#1082#1098#1089#1085#1077#1085#1080#1077' '#1085#1072' '#1060#1080#1085#1072#1083#1072
          Brush.Color = 7697919
          ParentShowHint = False
          Pen.Style = psClear
          ShowHint = True
        end
        object lToday: TDBText
          Left = 379
          Top = 1
          Width = 32
          Height = 13
          Hint = #1044#1085#1077#1089
          AutoSize = True
          Color = clBtnFace
          DataField = '_TODAY'
          DataSource = dsData
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 11427583
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          Transparent = False
          ShowHint = True
        end
        object saBaseDate: TAbmesArrow
          Left = 664
          Top = 41
          Width = 15
          Height = 83
          Hint = #1041#1072#1079#1086#1074#1072' '#1076#1072#1090#1072
          ShowHint = True
          ParentShowHint = False
          Points = <
            item
              X = 7
              Y = 0
              ArrowType = atBackward
            end
            item
              X = 7
              Y = 83
              ArrowType = atNone
            end>
          Pen.Color = clMaroon
          Pen.Width = 3
          HeadLength = 15
          HeadWidth = 10
        end
        object tBaseDate: TDBText
          Left = 647
          Top = 124
          Width = 50
          Height = 13
          Hint = #1041#1072#1079#1086#1074#1072' '#1076#1072#1090#1072
          AutoSize = True
          Color = 14540253
          DataField = 'BASE_DATE'
          DataSource = dsData
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object tPlanEndDate: TDBText
          Left = 416
          Top = 111
          Width = 66
          Height = 13
          Hint = #1044#1072#1090#1072' '#1085#1072' '#1060#1080#1085#1072#1083
          AutoSize = True
          Color = 14540253
          DataField = 'PLAN_END_DATE'
          DataSource = dsData
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8438150
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object saPlanEndDate: TAbmesArrow
          Left = 448
          Top = 41
          Width = 15
          Height = 70
          Hint = #1044#1072#1090#1072' '#1085#1072' '#1060#1080#1085#1072#1083
          ShowHint = True
          ParentShowHint = False
          Points = <
            item
              X = 7
              Y = 0
              ArrowType = atBackward
            end
            item
              X = 7
              Y = 70
              ArrowType = atNone
            end>
          Pen.Color = 8438150
          Pen.Width = 3
          HeadLength = 15
          HeadWidth = 10
        end
        object tPlanBeginDate: TDBText
          Left = 204
          Top = 98
          Width = 74
          Height = 13
          Hint = #1044#1072#1090#1072' '#1085#1072' '#1057#1090#1072#1088#1090
          AutoSize = True
          Color = 14540253
          DataField = 'PLAN_BEGIN_DATE'
          DataSource = dsData
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 1276190
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object saPlanBeginDate: TAbmesArrow
          Left = 232
          Top = 41
          Width = 15
          Height = 57
          Hint = #1044#1072#1090#1072' '#1085#1072' '#1057#1090#1072#1088#1090
          ShowHint = True
          ParentShowHint = False
          Points = <
            item
              X = 7
              Y = 0
              ArrowType = atBackward
            end
            item
              X = 7
              Y = 57
              ArrowType = atNone
            end>
          Pen.Color = 1276190
          Pen.Width = 3
          HeadLength = 15
          HeadWidth = 10
        end
        object tChangeDate: TDBText
          Left = 100
          Top = 85
          Width = 63
          Height = 13
          Hint = #1044#1072#1090#1072' '#1085#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1077
          AutoSize = True
          Color = 14540253
          DataField = 'CHANGE_DATE'
          DataSource = dsData
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16748428
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object saChangeDate: TAbmesArrow
          Left = 128
          Top = 41
          Width = 15
          Height = 44
          Hint = #1044#1072#1090#1072' '#1085#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1077
          ShowHint = True
          ParentShowHint = False
          Points = <
            item
              X = 7
              Y = 0
              ArrowType = atBackward
            end
            item
              X = 7
              Y = 44
              ArrowType = atNone
            end>
          Pen.Color = 16748428
          Pen.Width = 3
          HeadLength = 15
          HeadWidth = 10
        end
        object tCreateDate: TDBText
          Left = 3
          Top = 72
          Width = 57
          Height = 13
          Hint = #1044#1072#1090#1072' '#1085#1072' '#1089#1098#1079#1076#1072#1074#1072#1085#1077
          AutoSize = True
          Color = 14540253
          DataField = 'CREATE_DATE'
          DataSource = dsData
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 10485760
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object saCreateDate: TAbmesArrow
          Left = 24
          Top = 41
          Width = 15
          Height = 31
          Hint = #1044#1072#1090#1072' '#1085#1072' '#1089#1098#1079#1076#1072#1074#1072#1085#1077
          ShowHint = True
          ParentShowHint = False
          Points = <
            item
              X = 7
              Y = 0
              ArrowType = atBackward
            end
            item
              X = 7
              Y = 31
              ArrowType = atNone
            end>
          Pen.Color = 10485760
          Pen.Width = 3
          HeadLength = 15
          HeadWidth = 10
        end
      end
      object gbCreateAndChangeInfo: TGroupBox
        Left = 0
        Top = 152
        Width = 265
        Height = 65
        Caption = ' '#1044#1072#1085#1085#1080' '#1079#1072' '#1054#1055#1060' '
        TabOrder = 1
        object lblCreateDate: TLabel
          Left = 8
          Top = 16
          Width = 99
          Height = 13
          Caption = #1044#1072#1090#1072' '#1085#1072' '#1089#1098#1079#1076#1072#1074#1072#1085#1077
          FocusControl = frCreateDate
        end
        object lblChangeDate: TLabel
          Left = 136
          Top = 16
          Width = 100
          Height = 13
          Caption = #1044#1072#1090#1072' '#1085#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1077
          FocusControl = frChangeDate
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
        end
        object edtCreateDateColor: TEdit
          Left = 112
          Top = 32
          Width = 13
          Height = 21
          Color = 10485760
          Enabled = False
          TabOrder = 1
        end
        inline frChangeDate: TfrDateFieldEditFrame
          Left = 136
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
        object edtChangeDateColor: TEdit
          Left = 240
          Top = 32
          Width = 13
          Height = 21
          Color = 16748428
          Enabled = False
          TabOrder = 3
        end
      end
      object gbModelButton: TGroupBox
        Left = 272
        Top = 152
        Width = 161
        Height = 65
        Caption = ' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1077#1085' '#1052#1054#1044#1045#1083'-'#1060' '
        TabOrder = 2
        object btnModel: TBitBtn
          Left = 16
          Top = 24
          Width = 129
          Height = 25
          Action = actModel
          Caption = #1056'-'#1052#1054#1044#1045#1083'-'#1060'...'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00000000000000000000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
            FF00000000000000000000000000FFFFFF0000000000FFFFFF00000000000000
            00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
            000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
            000000000000000000000000000000000000FFFFFF000000000000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
            000000000000000000000000000000000000FFFFFF000000000000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
            000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF000000000000000000000000000000000000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
            0000FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF0000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF0000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF0000000000FFFF
            FF0000000000FFFFFF0000000000000000000000000000000000000000000000
            000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
            FF0000000000000000000000000000000000000000000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Spacing = -1
          TabOrder = 0
        end
      end
    end
    inherited pnlGrid: TPanel
      Top = 225
      Width = 1001
      Height = 3
      inherited pnlNavigator: TPanel
        Width = 1001
        DesignSize = (
          1001
          24)
        object lblFMMovementOffsetType: TLabel [0]
          Left = 463
          Top = 4
          Width = 247
          Height = 13
          Hint = #1054#1090#1084#1077#1089#1090#1074#1072#1085#1077' '#1089#1087#1088#1103#1084#1086' '#1073#1072#1079#1086#1074#1072' '#1076#1072#1090#1072' '#1085#1072
          Alignment = taRightJustify
          AutoSize = False
          Caption = #1054#1090#1084#1077#1089#1090#1074#1072#1085#1077' '#1089#1087#1088#1103#1084#1086' '#1073#1072#1079#1086#1074#1072' '#1076#1072#1090#1072' '#1085#1072
          ParentShowHint = False
          ShowHint = True
        end
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Width = 87
          object sepShowAnnuled: TToolButton
            Left = 56
            Top = 0
            Width = 8
            Caption = 'sepShowAnnuled'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object btnShowAnnuled: TSpeedButton
            Left = 64
            Top = 0
            Width = 23
            Height = 24
            Action = actShowAnnuled
            Align = alLeft
            AllowAllUp = True
            GroupIndex = 4
            Flat = True
            Transparent = False
          end
        end
        object tlbMasterToggles: TToolBar
          Left = 929
          Top = 0
          Width = 72
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Images = dmMain.ilActions
          TabOrder = 3
          object btnRealLate: TToolButton
            Left = 0
            Top = 0
            Action = actRealLate
          end
          object btnPercent: TToolButton
            Left = 24
            Top = 0
            Action = actPercent
          end
          object btnBaseCurrency: TToolButton
            Left = 48
            Top = 0
            Action = actBaseCurrency
          end
        end
        object cbFMMovementOffsetType: TJvDBLookupCombo
          Left = 715
          Top = 0
          Width = 173
          Height = 21
          DropDownCount = 3
          EscapeKeyReset = False
          DeleteKeyClear = False
          DataField = '_FM_MOVEMENT_OFFSET_TYPE_NAME'
          DataSource = dsData
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 4
        end
      end
      inherited pnlDataButtons: TPanel
        Top = -30
        Width = 1001
        object btnMoveUpLine: TSpeedButton [0]
          Left = 472
          Top = 8
          Width = 28
          Height = 13
          Action = actMoveUpLine
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0000000000C6C60000C6C60000C6C600000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0000000000C6C60000C6C60000C6C600000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0000000000C6C60000C6C60000C6C600000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0000000000000000000000000000000000C6C60000C6C60000C6C600000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000C6C60000C6C60000C6C60000C6C60000C6C60000C6C6
            0000C6C6000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000000000C6C60000C6C60000C6C60000C6C60000C6C6
            000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0000000000C6C60000C6C60000C6C600000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000C6C6000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Layout = blGlyphBottom
        end
        object btnMoveDownLine: TSpeedButton [1]
          Left = 472
          Top = 21
          Width = 28
          Height = 12
          Action = actMoveDownLine
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000BDBD000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0000000000BDBD0000BDBD0000BDBD00000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000000000BDBD0000BDBD0000BDBD0000BDBD0000BDBD
            000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000BDBD0000BDBD0000BDBD0000BDBD0000BDBD0000BDBD
            0000BDBD000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0000000000000000000000000000000000BDBD0000BDBD0000BDBD00000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0000000000BDBD0000BDBD0000BDBD00000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0000000000BDBD0000BDBD0000BDBD00000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0000000000BDBD0000BDBD0000BDBD00000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
        inherited btnDeleteData: TBitBtn
          Left = 243
          TabOrder = 2
        end
        inherited btnEditData: TBitBtn
          Left = 358
          TabOrder = 3
        end
        object btnLoadSpecFinModel: TBitBtn
          Left = 896
          Top = 8
          Width = 105
          Height = 25
          Action = actLoadSpecFinModel
          Caption = #1047#1072#1088#1077#1078#1076#1072#1085#1077'...'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00000000000000
            0000FFFFFF00000000000000000000000000FFFFFF0000000000FF00FF00FF00
            FF00FF00FF0000000000FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
            FF00FF00FF000000FF0000000000FF00FF0000000000FFFFFF0000000000BDBD
            BD000000000000000000FFFFFF0000000000FFFFFF0000000000FF00FF00FF00
            FF00FF00FF000000FF000000FF000000000000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
            FF000000FF000000FF000000FF000000FF0000000000FFFFFF00000000000000
            0000FFFFFF000000000000000000000000000000000000000000000000000000
            FF000000FF000000FF000000FF000000FF000000FF0000000000FFFFFF00FFFF
            FF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FF00FF00000000000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000BDBD
            BD00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00000000000000
            FF000000FF000000FF000000FF000000FF000000FF0000000000FFFFFF00FFFF
            FF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00000000000000
            FF000000FF000000FF000000FF000000FF000000000000000000000000000000
            00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FF000000FF0000000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Spacing = -1
          TabOrder = 4
        end
        object btnCreateLike: TBitBtn
          Left = 114
          Top = 8
          Width = 119
          Height = 25
          Action = actCreateLike
          Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1082#1072#1090#1086'...'
          Spacing = -1
          TabOrder = 1
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 1001
        Height = 163
        HorzScrollBar.Visible = False
        UseMultiTitle = True
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = '_SHOW_NO'
            Footers = <>
            Title.Caption = #1053#1086#1084#1077#1088
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'LINE_QUANTITY_PERCENT'
            Footers = <>
            Title.Caption = #1057#1090#1088'. '#1055#1088'. (%)'
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = '_PLAN_QUANTITY'
            Footers = <>
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1055#1083#1072#1085
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = '_REMAINING_QUANTITY'
            Footers = <>
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1054#1089#1090#1072#1090#1098#1082
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = '_LATE_PLAN_QUANTITY'
            Footers = <>
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1047#1072#1082#1098#1089#1085#1077#1085#1080#1077'|'#1050'-'#1074#1086
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = '_LATE_PLAN_QUANTITY_PERCENT'
            Footers = <>
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1047#1072#1082#1098#1089#1085#1077#1085#1080#1077'|%'
            Visible = False
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = '_LATE_PLAN_DAYS'
            Footers = <>
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1047#1072#1082#1098#1089#1085#1077#1085#1080#1077'|'#1055#1077#1088'.'
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = '_LATE_REAL_QUANTITY'
            Footers = <>
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1054#1090#1095'. '#1047#1072#1082#1098#1089#1085'.|'#1050'-'#1074#1086
            Visible = False
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = '_LATE_REAL_QUANTITY_PERCENT'
            Footers = <>
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1054#1090#1095'. '#1047#1072#1082#1098#1089#1085'.|%'
            Visible = False
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = '_LATE_REAL_DAYS'
            Footers = <>
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1054#1090#1095'. '#1047#1072#1082#1098#1089#1085'.|'#1055#1077#1088'.'
            Visible = False
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'FIN_STORE_IDENTIFIER'
            Footers = <>
            Title.Caption = #1058#1055' '#1060#1080#1085#1072#1085#1089#1086#1074#1086' '#1085#1072' '#1048#1055
            Width = 90
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = '_ARROW'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Symbol'
            Font.Style = []
            Footers = <>
            Title.Caption = #1055#1086#1089#1086#1082#1072
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = '_PARTNER_ACCOUNT_FULL_NAME'
            Footers = <>
            LookupParams.LookupCache = False
            Title.Caption = #1058#1055' '#1060#1080#1085#1072#1085#1089#1086#1074#1086' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088
            Width = 273
          end
          item
            Color = 16115403
            EditButtons = <>
            FieldName = 'MOVEMENT_PLAN_BEGIN_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1077'|'#1053#1072#1095#1072#1083#1086
            Width = 70
          end
          item
            Color = 16115403
            EditButtons = <>
            FieldName = 'MOVEMENT_DURATION_DAYS'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1077'|'#1055#1077#1088'.'
            Width = 29
          end
          item
            Color = 16115403
            EditButtons = <>
            FieldName = 'MOVEMENT_PLAN_END_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1077'|'#1050#1088#1072#1081
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = '_FIN_MODEL_LINE_REASON_ABBREV'
            Footers = <>
            LookupParams.LookupCache = False
            Title.Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1077' '#1079#1072' '#1057#1060#1044
            Title.Hint = #1054#1089#1085#1086#1074#1072#1085#1080#1077' '#1079#1072' '#1057#1098#1087#1098#1090#1089#1090#1074#1072#1097#1086' '#1060#1080#1085#1072#1085#1089#1086#1074#1086' '#1044#1074#1080#1078#1077#1085#1080#1077
            Width = 94
          end>
      end
    end
  end
  object pnlTop: TPanel [2]
    Left = 0
    Top = 0
    Width = 1017
    Height = 285
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object gbFinOrder: TGroupBox
      Left = 8
      Top = 8
      Width = 377
      Height = 65
      Caption = ' ID '#1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1060#1080#1085#1072#1085#1089#1086#1074' ('#1054#1055#1060') '
      TabOrder = 0
      DesignSize = (
        377
        65)
      object lblStatus: TLabel
        Left = 8
        Top = 16
        Width = 34
        Height = 13
        Caption = #1057#1090#1072#1090#1091#1089
      end
      object lblFinProcess: TLabel
        Left = 56
        Top = 16
        Width = 38
        Height = 13
        Caption = #1055#1088#1086#1094#1077#1089
        FocusControl = cbFinProcess
      end
      object lblBranch: TLabel
        Left = 152
        Top = 16
        Width = 51
        Height = 13
        Caption = #1058#1055' '#1043#1083'.'
        FocusControl = cbBranch
      end
      object lblFinOrderNo: TLabel
        Left = 208
        Top = 16
        Width = 44
        Height = 13
        Caption = #1054#1055#1060' No'
        FocusControl = edtFinOrderNo
      end
      object lblPriority: TLabel
        Left = 264
        Top = 16
        Width = 54
        Height = 13
        Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090
      end
      object edtStatus: TDBEdit
        Left = 8
        Top = 32
        Width = 41
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'STATUS_CODE'
        DataSource = dsData
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
      end
      object cbFinProcess: TJvDBLookupCombo
        Left = 56
        Top = 32
        Width = 89
        Height = 21
        DropDownCount = 19
        DropDownWidth = 350
        DeleteKeyClear = False
        DisplayAllFields = True
        Color = 13168056
        DataField = 'FIN_PROCESS_CODE'
        DataSource = dsData
        LookupField = 'PROCESS_CODE'
        LookupDisplay = 'PROCESS_ABBREV;PROCESS_NAME'
        LookupSource = dsFinProcesses
        TabOrder = 1
      end
      object cbBranch: TJvDBLookupCombo
        Left = 152
        Top = 32
        Width = 49
        Height = 21
        DropDownWidth = 100
        DeleteKeyClear = False
        DisplayAllFields = True
        DataField = 'FIN_ORDER_BRANCH_CODE'
        DataSource = dsData
        LookupField = 'BRANCH_CODE'
        LookupDisplay = 'BRANCH_NO;BRANCH_IDENTIFIER'
        LookupSource = dsBranches
        TabOrder = 2
      end
      object edtFinOrderNo: TDBEdit
        Left = 208
        Top = 32
        Width = 49
        Height = 21
        Color = clBtnFace
        DataField = 'FIN_ORDER_NO'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 3
      end
      object tlbDocs: TToolBar
        Left = 330
        Top = 31
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
        object btnDocs: TToolButton
          Left = 0
          Top = 0
          Action = actDocs
        end
      end
      object cbPriority: TJvDBLookupCombo
        Left = 264
        Top = 32
        Width = 57
        Height = 21
        DropDownWidth = 250
        DeleteKeyClear = False
        DataField = 'PRIORITY_CODE'
        DataSource = dsData
        LookupField = 'PRIORITY_CODE'
        LookupDisplay = 'PRIORITY_NO;PRIORITY_NAME'
        LookupSource = dsPriorities
        TabOrder = 5
      end
    end
    object gbBeginDate: TGroupBox
      Left = 392
      Top = 8
      Width = 161
      Height = 65
      Caption = ' '#1057#1090#1072#1088#1090' '#1085#1072' ID '#1054#1055#1060' '
      TabOrder = 1
      object lblBeginDateDiff: TLabel
        Left = 128
        Top = 16
        Width = 24
        Height = 13
        Caption = #1088#1079#1088#1074
        FocusControl = edtBeginDateDiff
      end
      object lblPlanBeginDate: TLabel
        Left = 8
        Top = 16
        Width = 26
        Height = 13
        Caption = #1044#1072#1090#1072
        FocusControl = frPlanBeginDate
      end
      inline frPlanBeginDate: TfrDateFieldEditFrame
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
      object edtPlanBeginDateColor: TEdit
        Left = 112
        Top = 32
        Width = 13
        Height = 21
        Color = 1276190
        Enabled = False
        TabOrder = 1
      end
      object edtBeginDateDiff: TDBEdit
        Left = 128
        Top = 32
        Width = 27
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'BEGIN_DATE_DIFF'
        DataSource = dsData
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 2
      end
    end
    object gbProduction: TGroupBox
      Left = 560
      Top = 8
      Width = 449
      Height = 65
      Caption = ' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' ID '#1054#1055#1060' '
      TabOrder = 2
      DesignSize = (
        449
        65)
      object lblProductionDept: TLabel
        Left = 8
        Top = 16
        Width = 96
        Height = 13
        Caption = #1058#1055' '#1056#1077#1072#1083#1080#1079#1072#1090#1086#1088
      end
      object lblModelLegth: TLabel
        Left = 336
        Top = 8
        Width = 44
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1055#1077#1088#1080#1086#1076#1080
      end
      object lblPlanModelLength: TLabel
        Left = 344
        Top = 19
        Width = 8
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1055
        FocusControl = edtPlanModelLength
        Transparent = False
      end
      object lblRealModelLength: TLabel
        Left = 368
        Top = 19
        Width = 7
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1056
        FocusControl = edtRealModelLength
        Transparent = False
      end
      object edtProductionDateDiff: TLabel
        Left = 392
        Top = 8
        Width = 49
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1054#1090#1082#1083' '#1042#1088#1084
      end
      object lblProductionDateDiffMax: TLabel
        Left = 400
        Top = 19
        Width = 6
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '+'
        FocusControl = edtProductionDateDiffMax
        Transparent = False
      end
      object lblProductionDateDiffMin: TLabel
        Left = 424
        Top = 19
        Width = 6
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #8212
        FocusControl = edtProductionDateDiffMax
        Transparent = False
      end
      object edtPlanModelLength: TDBEdit
        Left = 336
        Top = 32
        Width = 25
        Height = 21
        TabStop = False
        Anchors = [akTop, akRight]
        Color = clBtnFace
        DataField = 'SPEC_MODEL_DURATION_DAYS'
        DataSource = dsData
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 1
      end
      object edtRealModelLength: TDBEdit
        Left = 360
        Top = 32
        Width = 25
        Height = 21
        TabStop = False
        Anchors = [akTop, akRight]
        Color = clBtnFace
        DataField = 'REAL_MODEL_DURATION_DAYS'
        DataSource = dsData
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 2
      end
      object edtProductionDateDiffMax: TDBEdit
        Left = 392
        Top = 32
        Width = 25
        Height = 21
        TabStop = False
        Anchors = [akTop, akRight]
        Color = clBtnFace
        DataField = 'MAX_POSITIVE_DIFF'
        DataSource = dsData
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 3
      end
      object edtProductionDateDiffMin: TDBEdit
        Left = 416
        Top = 32
        Width = 25
        Height = 21
        TabStop = False
        Anchors = [akTop, akRight]
        Color = clBtnFace
        DataField = 'MAX_NEGATIVE_DIFF'
        DataSource = dsData
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 4
      end
      inline frExecDept: TfrDeptFieldEditFrameBald
        Left = 8
        Top = 32
        Width = 321
        Height = 22
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 22
        Constraints.MinHeight = 22
        TabOrder = 0
        TabStop = True
        DesignSize = (
          321
          22)
        inherited gbTreeNode: TGroupBox
          Width = 337
          DesignSize = (
            337
            49)
          inherited pnlTreeNode: TPanel
            Width = 321
            inherited pnlTreeNodeName: TPanel
              Width = 174
              DesignSize = (
                174
                22)
              inherited edtTreeNodeName: TDBEdit
                Width = 173
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = 174
            end
            inherited pnlRightButtons: TPanel
              Left = 285
            end
          end
        end
      end
    end
    object gbFinal: TGroupBox
      Left = 8
      Top = 80
      Width = 1001
      Height = 65
      Caption = ' '#1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1060' '
      TabOrder = 3
      object lblWorkProduct: TLabel
        Left = 8
        Top = 16
        Width = 87
        Height = 13
        Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1054#1073#1077#1082#1090
        FocusControl = frWorkProduct
      end
      object lblPlanInWorkQuantity: TLabel
        Left = 432
        Top = 16
        Width = 61
        Height = 13
        Caption = #1056#1072#1073'. '#1082'-'#1074#1086' (+)'
        FocusControl = edtPlanInWorkQuantity
      end
      object lblPlanInWorkQuantityDiff: TLabel
        Left = 504
        Top = 16
        Width = 76
        Height = 13
        Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' (+)'
      end
      object btnTogglePlanInWorkQuantityDiffMeasure: TSpeedButton
        Left = 569
        Top = 32
        Width = 21
        Height = 21
        Action = actTogglePlanInWorkQuantityDiffMeasure
        AllowAllUp = True
        GroupIndex = 5
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00800000008000
          0000FF00FF008000000080000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080000000FF00FF00FF00
          FF008000000080000000FF00FF0080000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080000000FF00FF00FF00
          FF00FF00FF0080000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080000000FF00FF00FF00
          FF00FF00FF008000000080000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080000000FF00
          FF00FF00FF008000000080000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008000
          000080000000FF00FF00FF00FF0080000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0040600000FF00FF00FF00FF004060000040600000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0040600000FF00FF00FF00FF0040600000FF00FF0040600000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0040600000FF00FF0040600000FF00FF0040600000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0040600000FF00FF004060000040600000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF004060000040600000FF00FF0040600000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0040600000FF00FF0040600000FF00FF0040600000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0040600000FF00FF0040600000FF00FF0040600000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF004060000040600000FF00FF00FF00FF0040600000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        ParentShowHint = False
        ShowHint = True
      end
      object lblPlanOutWorkQuantity: TLabel
        Left = 608
        Top = 16
        Width = 58
        Height = 13
        Caption = #1056#1072#1073'. '#1082'-'#1074#1086' (-)'
        FocusControl = edtPlanOutWorkQuantity
      end
      object lblPlanOutWorkQuantityDiff: TLabel
        Left = 680
        Top = 16
        Width = 73
        Height = 13
        Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' (-)'
      end
      object btnTogglePlanOutWorkQuantityDiffMeasure: TSpeedButton
        Left = 745
        Top = 32
        Width = 21
        Height = 21
        Action = actTogglePlanOutWorkQuantityDiffMeasure
        AllowAllUp = True
        GroupIndex = 6
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00800000008000
          0000FF00FF008000000080000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080000000FF00FF00FF00
          FF008000000080000000FF00FF0080000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080000000FF00FF00FF00
          FF00FF00FF0080000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080000000FF00FF00FF00
          FF00FF00FF008000000080000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080000000FF00
          FF00FF00FF008000000080000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008000
          000080000000FF00FF00FF00FF0080000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0040600000FF00FF00FF00FF004060000040600000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0040600000FF00FF00FF00FF0040600000FF00FF0040600000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0040600000FF00FF0040600000FF00FF0040600000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0040600000FF00FF004060000040600000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF004060000040600000FF00FF0040600000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0040600000FF00FF0040600000FF00FF0040600000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0040600000FF00FF0040600000FF00FF0040600000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF004060000040600000FF00FF00FF00FF0040600000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        ParentShowHint = False
        ShowHint = True
      end
      object lblInEndDateDiff: TLabel
        Left = 904
        Top = 16
        Width = 39
        Height = 13
        Caption = #1088#1079#1088#1074' (+)'
        FocusControl = edtInEndDateDiff
      end
      object lblPlanEndDate: TLabel
        Left = 784
        Top = 16
        Width = 79
        Height = 13
        Caption = #1044#1072#1090#1072' '#1085#1072' '#1060#1080#1085#1072#1083
        FocusControl = frPlanEndDate
      end
      object lblOutEndDateDiff: TLabel
        Left = 952
        Top = 16
        Width = 36
        Height = 13
        Caption = #1088#1079#1088#1074' (-)'
        FocusControl = edtOutEndDateDiff
      end
      inline frWorkProduct: TfrProductFieldEditFrameBald
        Left = 8
        Top = 32
        Width = 369
        Height = 22
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 22
        Constraints.MinHeight = 22
        TabOrder = 0
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
              Width = 187
              DesignSize = (
                187
                22)
              inherited edtTreeNodeName: TDBEdit
                Width = 186
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = 187
            end
            inherited pnlRightButtons: TPanel
              Left = 310
            end
          end
        end
      end
      object edtPlanInWorkQuantity: TDBEdit
        Left = 432
        Top = 32
        Width = 65
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'PLAN_IN_WORK_QUANTITY'
        DataSource = dsData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object edtPlanInWorkQuantityDiff: TDBEdit
        Left = 504
        Top = 32
        Width = 65
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'IN_WORK_QUANTITY_DIFF'
        DataSource = dsData
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 2
      end
      object edtPlanOutWorkQuantity: TDBEdit
        Left = 608
        Top = 32
        Width = 65
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'PLAN_OUT_WORK_QUANTITY'
        DataSource = dsData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object edtPlanOutWorkQuantityDiff: TDBEdit
        Left = 680
        Top = 32
        Width = 65
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'OUT_WORK_QUANTITY_DIFF'
        DataSource = dsData
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 4
      end
      inline frPlanEndDate: TfrDateFieldEditFrame
        Left = 784
        Top = 32
        Width = 105
        Height = 21
        Constraints.MaxHeight = 21
        Constraints.MaxWidth = 105
        Constraints.MinHeight = 21
        Constraints.MinWidth = 105
        TabOrder = 5
      end
      object edtPlanEndDateColor: TEdit
        Left = 888
        Top = 32
        Width = 13
        Height = 21
        Color = 8438150
        Enabled = False
        TabOrder = 6
      end
      object edtInEndDateDiff: TDBEdit
        Left = 904
        Top = 32
        Width = 41
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'IN_END_DATE_DIFF'
        DataSource = dsData
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 7
      end
      object edtOutEndDateDiff: TDBEdit
        Left = 952
        Top = 32
        Width = 41
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'OUT_END_DATE_DIFF'
        DataSource = dsData
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 8
      end
      object pnlArrow: TPanel
        Left = 384
        Top = 26
        Width = 41
        Height = 26
        AutoSize = True
        BevelOuter = bvNone
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        object btnArrow: TSpeedButton
          Left = 0
          Top = 0
          Width = 41
          Height = 26
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
    object gbBndProcess: TGroupBox
      Left = 8
      Top = 152
      Width = 1001
      Height = 133
      Caption = 
        ' '#1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1085#1072' '#1054#1055#1060'                                    ' +
        '                                                                ' +
        '      '
      TabOrder = 6
      object pnlBorderProcess: TPanel
        Left = 2
        Top = 15
        Width = 997
        Height = 114
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object lblBorderProcessStatus: TLabel
          Left = 8
          Top = 8
          Width = 34
          Height = 13
          Caption = #1057#1090#1072#1090#1091#1089
        end
        object lblBorderProcessObjectIdentifier: TLabel
          Left = 56
          Top = 8
          Width = 30
          Height = 13
          Caption = 'ID '#1054#1055
        end
        object lblBorderProcessObjectBaseDate: TLabel
          Left = 232
          Top = 8
          Width = 66
          Height = 13
          Caption = #1041#1072#1079#1086#1074#1072' '#1044#1072#1090#1072
          FocusControl = frBorderProcessObjectBaseDate
        end
        object txtBorderProcessObjectBaseCurrency: TDBText
          Left = 427
          Top = 27
          Width = 25
          Height = 13
          DataField = '_BASE_CURRENCY_ABBREV'
          DataSource = dsData
        end
        object lblBorderProcessObjectBaseQuantity: TLabel
          Left = 360
          Top = 8
          Width = 57
          Height = 13
          Caption = #1054#1073#1097#1072' '#1089#1090'-'#1089#1090
        end
        object lblBorderProcessObjectFinStatus: TLabel
          Left = 456
          Top = 8
          Width = 63
          Height = 13
          Caption = #1060#1080#1085'. '#1057#1090#1072#1090#1091#1089
        end
        object lblBorderProcessObjectDocumentIdentifier: TLabel
          Left = 544
          Top = 8
          Width = 99
          Height = 13
          Caption = #1060#1072#1082#1090#1091#1088#1072' ('#1076#1086#1082'. '#1086#1089#1085'.)'
        end
        object lblBorderProcessDocumentDate: TLabel
          Left = 656
          Top = 8
          Width = 86
          Height = 13
          Caption = #1044#1072#1090#1072' '#1085#1072' '#1092#1072#1082#1090#1091#1088#1072
          FocusControl = frBorderProcessDocumentDate
        end
        object pnlBOIOrderInfo: TPanel
          Left = 8
          Top = 48
          Width = 567
          Height = 60
          BevelOuter = bvNone
          TabOrder = 10
          object gbBudgetClass: TGroupBox
            Left = 0
            Top = 0
            Width = 345
            Height = 60
            Caption = ' '#1057#1090#1072#1090#1080#1103' '
            TabOrder = 0
            DesignSize = (
              345
              60)
            inline frBudgetClass: TfrProductFieldEditFrameBald
              Left = 8
              Top = 32
              Width = 328
              Height = 22
              HorzScrollBar.Visible = False
              VertScrollBar.Visible = False
              Anchors = [akLeft, akTop, akRight]
              Constraints.MaxHeight = 22
              Constraints.MinHeight = 22
              TabOrder = 0
              DesignSize = (
                328
                22)
              inherited gbTreeNode: TGroupBox
                Width = 344
                DesignSize = (
                  344
                  49)
                inherited pnlTreeNode: TPanel
                  Width = 328
                  inherited pnlTreeNodeName: TPanel
                    Width = 146
                    DesignSize = (
                      146
                      22)
                    inherited edtTreeNodeName: TDBEdit
                      Width = 145
                    end
                  end
                  inherited pnlTreeNodeNo: TPanel
                    Left = 146
                  end
                  inherited pnlRightButtons: TPanel
                    Left = 269
                  end
                end
              end
            end
          end
          object gbBOIOrderDescription: TGroupBox
            Left = 352
            Top = 0
            Width = 215
            Height = 60
            Caption = ' '#1054#1087#1080#1089#1072#1085#1080#1077' '
            TabOrder = 1
            DesignSize = (
              215
              60)
            object edtBOIOrderDescription: TDBEdit
              Left = 8
              Top = 32
              Width = 198
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              Color = clBtnFace
              DataField = 'BOIO_DESCRIPTION'
              DataSource = dsData
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object edtBorderProcessStatus: TDBEdit
          Left = 8
          Top = 24
          Width = 41
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_BND_PO_STATUS'
          DataSource = dsData
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 0
        end
        object edtBorderProcessObjectIdentifier: TDBEdit
          Left = 56
          Top = 24
          Width = 97
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'BND_PROCESS_OBJECT_IDENTIFIER'
          DataSource = dsData
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 1
        end
        object btnBorderProcessObject: TBitBtn
          Left = 160
          Top = 20
          Width = 65
          Height = 25
          Action = actBndProcessObject
          Caption = 'actBndProcessObject'
          TabOrder = 2
        end
        inline frBorderProcessObjectBaseDate: TfrDateFieldEditFrame
          Left = 232
          Top = 24
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 3
          TabStop = True
        end
        object edtBorderProcessObjectBaseDateColor: TEdit
          Left = 336
          Top = 24
          Width = 13
          Height = 21
          Color = clMaroon
          Enabled = False
          TabOrder = 4
        end
        object edtBorderProcessObjectBaseQuantity: TDBEdit
          Left = 360
          Top = 24
          Width = 65
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'BASE_QUANTITY'
          DataSource = dsData
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 5
        end
        object edtBorderProcessObjectFinStatus: TDBEdit
          Left = 456
          Top = 24
          Width = 81
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_HAS_DOCUMENT_IDENTIFIER'
          DataSource = dsData
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 6
        end
        object edtBorderProcessObjectDocumentIdentifier: TDBEdit
          Left = 544
          Top = 24
          Width = 105
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'DOCUMENT_IDENTIFIER'
          DataSource = dsData
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 7
        end
        inline frBorderProcessDocumentDate: TfrDateFieldEditFrame
          Left = 656
          Top = 24
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 8
          TabStop = True
        end
        object gbBorderProcessObjectProduct: TGroupBox
          Left = 8
          Top = 48
          Width = 567
          Height = 60
          Caption = ' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '
          TabOrder = 9
          DesignSize = (
            567
            60)
          object lblBorderProcessObjectProductAccountQuantity: TLabel
            Left = 470
            Top = 16
            Width = 39
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1057#1095'. '#1082'-'#1074#1086
          end
          object txtBorderProcessObjectProductAccountMeasure: TDBText
            Left = 529
            Top = 35
            Width = 30
            Height = 13
            Anchors = [akTop, akRight]
            DataField = 'BND_PO_ACCOUNT_MEASURE_ABBREV'
            DataSource = dsData
          end
          object lblBorderProcessObjectProducWorkQuantity: TLabel
            Left = 374
            Top = 16
            Width = 46
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1056#1072#1073'. '#1082'-'#1074#1086
          end
          object txtBorderProcessObjectProductWorkMeasure: TDBText
            Left = 433
            Top = 35
            Width = 30
            Height = 13
            Anchors = [akTop, akRight]
            DataField = 'BND_PO_WORK_MEASURE_ABBREV'
            DataSource = dsData
          end
          object edtBorderProcessObjectProductAccountQuantity: TDBEdit
            Left = 470
            Top = 32
            Width = 57
            Height = 21
            TabStop = False
            Anchors = [akTop, akRight]
            Color = clBtnFace
            DataField = 'BND_PO_ACCOUNT_QUANTITY'
            DataSource = dsData
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 1
          end
          object edtBorderProcessObjectProducWorkQuantity: TDBEdit
            Left = 374
            Top = 32
            Width = 57
            Height = 21
            TabStop = False
            Anchors = [akTop, akRight]
            Color = clBtnFace
            DataField = 'BND_PO_WORK_QUANTITY'
            DataSource = dsData
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 2
          end
          inline frBorderProcessObjectProduct: TfrProductFieldEditFrameBald
            Left = 8
            Top = 32
            Width = 359
            Height = 22
            HorzScrollBar.Visible = False
            VertScrollBar.Visible = False
            Anchors = [akLeft, akTop, akRight]
            Constraints.MaxHeight = 22
            Constraints.MinHeight = 22
            TabOrder = 0
            DesignSize = (
              359
              22)
            inherited gbTreeNode: TGroupBox
              Width = 375
              DesignSize = (
                375
                49)
              inherited pnlTreeNode: TPanel
                Width = 359
                inherited pnlTreeNodeName: TPanel
                  Width = 177
                  DesignSize = (
                    177
                    22)
                  inherited edtTreeNodeName: TDBEdit
                    Width = 176
                  end
                end
                inherited pnlTreeNodeNo: TPanel
                  Left = 177
                end
                inherited pnlRightButtons: TPanel
                  Left = 300
                end
              end
            end
          end
        end
      end
      object pnlAdministrativeProcess: TPanel
        Left = 2
        Top = 129
        Width = 997
        Height = 108
        Align = alTop
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object lblAdministrativeProcessObjectBaseDate: TLabel
          Left = 8
          Top = 8
          Width = 63
          Height = 13
          Caption = #1041#1072#1079#1086#1074#1072' '#1076#1072#1090#1072
          FocusControl = frAdministrativeProcessObjectBaseDate
        end
        object txtAdministrativeProcessObjectBaseCurrency: TDBText
          Left = 203
          Top = 27
          Width = 25
          Height = 13
          DataField = '_BASE_CURRENCY_ABBREV'
        end
        object lblAdministrativeProcessObjectBaseQuantity: TLabel
          Left = 136
          Top = 8
          Width = 50
          Height = 13
          Caption = #1050'-'#1074#1086' '#1060#1054#1073
        end
        object lblAdministrativeProcessObjectFinStatus: TLabel
          Left = 232
          Top = 8
          Width = 63
          Height = 13
          Caption = #1060#1080#1085'. '#1057#1090#1072#1090#1091#1089
        end
        object lblAdministrativeProcessObjectDocumentIdentifier: TLabel
          Left = 320
          Top = 8
          Width = 99
          Height = 13
          Caption = #1060#1072#1082#1090#1091#1088#1072' ('#1076#1086#1082'. '#1086#1089#1085'.)'
        end
        object lblAdministrativeProcessDocumentDate: TLabel
          Left = 432
          Top = 8
          Width = 86
          Height = 13
          Caption = #1044#1072#1090#1072' '#1085#1072' '#1092#1072#1082#1090#1091#1088#1072
          FocusControl = frAdministrativeProcessDocumentDate
        end
        inline frAdministrativeProcessObjectBaseDate: TfrDateFieldEditFrame
          Left = 8
          Top = 24
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 0
          TabStop = True
        end
        object edtAdministrativeProcessObjectBaseDateColor: TEdit
          Left = 112
          Top = 24
          Width = 13
          Height = 21
          Color = clMaroon
          Enabled = False
          TabOrder = 1
        end
        object edtAdministrativeProcessObjectBaseQuantity: TDBEdit
          Left = 136
          Top = 24
          Width = 65
          Height = 21
          DataField = 'BASE_QUANTITY'
          DataSource = dsData
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object edtAdministrativeProcessObjectFinStatus: TDBEdit
          Left = 232
          Top = 24
          Width = 81
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_HAS_DOCUMENT_IDENTIFIER'
          DataSource = dsData
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 3
        end
        object edtAdministrativeProcessObjectDocumentIdentifier: TDBEdit
          Left = 320
          Top = 24
          Width = 105
          Height = 21
          DataField = 'DOCUMENT_IDENTIFIER'
          DataSource = dsData
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
        inline frAdministrativeProcessDocumentDate: TfrDateFieldEditFrame
          Left = 432
          Top = 24
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 5
          TabStop = True
        end
        object gbFinClass: TGroupBox
          Left = 8
          Top = 48
          Width = 567
          Height = 60
          Caption = ' '#1060#1080#1085#1072#1085#1089#1086#1074#1072' '#1057#1090#1072#1090#1080#1103' '
          TabOrder = 6
          DesignSize = (
            567
            60)
          inline frFinClass: TfrFinClassFieldEditFrameBald
            Left = 8
            Top = 31
            Width = 550
            Height = 22
            HorzScrollBar.Visible = False
            VertScrollBar.Visible = False
            Anchors = [akLeft, akTop, akRight]
            Constraints.MaxHeight = 22
            Constraints.MinHeight = 22
            TabOrder = 0
            TabStop = True
            DesignSize = (
              550
              22)
            inherited gbTreeNode: TGroupBox
              Width = 566
              DesignSize = (
                566
                49)
              inherited pnlTreeNode: TPanel
                Width = 550
                inherited pnlTreeNodeName: TPanel
                  Width = 403
                  DesignSize = (
                    403
                    22)
                  inherited edtTreeNodeName: TDBEdit
                    Width = 402
                  end
                end
                inherited pnlTreeNodeNo: TPanel
                  Left = 403
                end
                inherited pnlRightButtons: TPanel
                  Left = 514
                end
              end
            end
          end
        end
      end
      inline frPartner: TfrPartnerExFieldEditFrame
        Left = 584
        Top = 63
        Width = 406
        Height = 60
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 155
        Constraints.MinHeight = 49
        TabOrder = 2
        TabStop = True
        inherited gbPartner: TGroupBox
          Width = 406
          inherited pnlNameAndButtons: TPanel
            Left = 218
            Width = 67
            inherited pnlRightButtons: TPanel
              Left = 31
            end
            inherited pnlPartnerName: TPanel
              Width = 31
              DesignSize = (
                31
                28)
              inherited edtPartnerName: TDBEdit
                Width = 18
              end
              inherited cbPartner: TJvDBLookupCombo
                Width = 32
              end
            end
            inherited pnlNameAndButtonsTop: TPanel
              Width = 67
              inherited lblPartner: TLabel
                Width = 76
              end
            end
          end
          inherited pnlPaddingRight: TPanel
            Left = 285
          end
          inherited pnlPartnerCode: TPanel
            Left = 145
            inherited lblPartnerCode: TLabel
              Width = 19
            end
          end
          inherited frPartnerStatus: TfrCompanyStatus
            Width = 81
            Constraints.MinWidth = 0
            inherited lblCurrentStatus: TLabel
              Width = 34
            end
            inherited lblReachMonths: TLabel
              Width = 6
              Visible = False
            end
            inherited lblExistanceMonths: TLabel
              Width = 6
              Visible = False
            end
            inherited lblMonths: TLabel
              Width = 11
              Visible = False
            end
            inherited edtReachMonths: TDBEdit
              Visible = False
            end
            inherited edtExistanceMonths: TDBEdit
              Visible = False
            end
            inherited alActions: TActionList
              Left = 8
              Top = 24
            end
            inherited dsData: TDataSource
              DataSet = frPartner.cdsPartner
              Left = 40
              Top = 24
            end
          end
          inherited pnlPriority: TPanel
            Left = 89
            inherited lblPriority: TLabel
              Width = 38
            end
          end
          inherited pnlCountry: TPanel
            Left = 291
          end
          inherited pnlParRelButton: TPanel
            Left = 331
          end
        end
      end
    end
    object edtBorderProcessTitle: TEdit
      Left = 189
      Top = 149
      Width = 308
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 4
    end
    object pnlBaseDataChanged: TPanel
      Left = 686
      Top = 147
      Width = 310
      Height = 22
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  '#1053#1072#1089#1090#1098#1087#1080#1083#1072' '#1077' '#1087#1088#1086#1084#1103#1085#1072' '#1074' '#1073#1072#1079#1086#1074#1080#1090#1077' '#1076#1072#1085#1085#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      object btnConfirmBaseDataChange: TBitBtn
        Left = 215
        Top = 0
        Width = 89
        Height = 22
        Action = actConfirmBaseDataChange
        Caption = #1055#1086#1090#1074#1098#1088#1078#1076#1077#1085#1080#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 168
    Top = 456
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    DataSetField = cdsDataqryRealFinModelLines
    Filter = 'IS_ANNULED = 0'
    FieldDefs = <
      item
        Name = 'RFML_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'RFML_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'FIN_ORDER_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PARTNER_CODE'
        DataType = ftFloat
      end
      item
        Name = 'FIN_MODEL_LINE_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'FIN_MODEL_LINE_TYPE_ABBREV'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'FIN_MODEL_LINE_NO'
        DataType = ftFloat
      end
      item
        Name = 'LINE_QUANTITY_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'REAL_LINE_QUANTITY_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'MOVEMENT_OFFSET_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'ABS_MOVEMENT_OFFSET_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'MOVEMENT_OFFSET_DAYS_SIGN'
        DataType = ftFloat
      end
      item
        Name = 'MOVEMENT_DURATION_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'IN_OUT'
        DataType = ftFloat
      end
      item
        Name = 'FIN_STORE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'FIN_STORE_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'PARTNER_ACCOUNT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'FIN_MODEL_LINE_REASON_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ANNUL_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ANNUL_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'ANNUL_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'IS_ANNULED'
        DataType = ftFloat
      end
      item
        Name = 'PRIMARY_LINE_QTY_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'REAL_BASE_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'REAL_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'LATE_REAL_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'LATE_REAL_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'BASE_FINANCIAL_PRODUCT_FIXING'
        DataType = ftFloat
      end
      item
        Name = 'WORK_FINANCIAL_PRODUCT_FIXING'
        DataType = ftFloat
      end
      item
        Name = 'REAL_QUANTITY_BASE_CRNCY'
        DataType = ftFloat
      end
      item
        Name = 'LATE_REAL_QUANTITY_BASE_CRNCY'
        DataType = ftFloat
      end
      item
        Name = 'MOVEMENT_PLAN_BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'MOVEMENT_PLAN_END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'ORIGINAL_MOVEMENT_PLAN_DATE'
        DataType = ftTimeStamp
      end>
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 'FIN_MODEL_LINE_TYPE_CODE; FIN_MODEL_LINE_NO'
      end>
    IndexName = 'idxDefault'
    BeforeInsert = cdsGridDataBeforeInsert
    BeforePost = cdsGridDataBeforePost
    OnCalcFields = cdsGridDataCalcFields
    OnNewRecord = cdsGridDataNewRecord
    Left = 136
    Top = 456
    object cdsGridDataRFML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'RFML_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataRFML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'RFML_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataFIN_ORDER_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_CODE'
    end
    object cdsGridDataPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
    end
    object cdsGridDataFIN_MODEL_LINE_NO: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_NO'
    end
    object cdsGridDataFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_TYPE_CODE'
      OnChange = cdsGridDataFIN_MODEL_LINE_TYPE_CODEChange
    end
    object cdsGridDataFIN_MODEL_LINE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'FIN_MODEL_LINE_TYPE_ABBREV'
      Size = 100
    end
    object cdsGridDataLINE_QUANTITY_PERCENT: TAbmesFloatField
      DisplayLabel = #1057#1090#1088#1091#1082#1090#1091#1088#1085#1072' '#1087#1088#1086#1087#1086#1088#1094#1080#1103
      FieldName = 'LINE_QUANTITY_PERCENT'
      OnGetText = cdsGridDataLINE_QUANTITY_PERCENTGetText
      OnSetText = cdsGridDataLINE_QUANTITY_PERCENTSetText
      DisplayFormat = ',0.##'
      EditFormat = '0.##'
    end
    object cdsGridDataOVERRIDE_DOCUMENT: TAbmesFloatField
      FieldName = 'OVERRIDE_DOCUMENT'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsGridDataDOCUMENT_IDENTIFIER: TAbmesWideStringField
      DisplayLabel = #1060#1072#1082#1090#1091#1088#1072' ('#1076#1086#1082'. '#1086#1089#1085'.)'
      FieldName = 'DOCUMENT_IDENTIFIER'
      Size = 50
    end
    object cdsGridDataDOCUMENT_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1092#1072#1082#1090#1091#1088#1072
      FieldName = 'DOCUMENT_DATE'
    end
    object cdsGridDataREAL_LINE_QUANTITY_PERCENT: TAbmesFloatField
      FieldName = 'REAL_LINE_QUANTITY_PERCENT'
      OnGetText = cdsGridDataREAL_LINE_QUANTITY_PERCENTGetText
      DisplayFormat = ',0.##'
      EditFormat = '0.##'
    end
    object cdsGridDataMOVEMENT_OFFSET_DAYS: TAbmesFloatField
      FieldName = 'MOVEMENT_OFFSET_DAYS'
      OnChange = cdsGridDataMOVEMENT_OFFSET_DAYSChange
    end
    object cdsGridDataABS_MOVEMENT_OFFSET_DAYS: TAbmesFloatField
      DisplayLabel = #1054#1090#1084#1077#1089#1090#1074#1072#1085#1077' '#1089#1087#1088#1103#1084#1086' '#1041#1072#1079#1086#1074#1072' '#1044#1072#1090#1072
      FieldName = 'ABS_MOVEMENT_OFFSET_DAYS'
      OnChange = cdsGridDataABS_MOVEMENT_OFFSET_DAYSChange
      MaxValue = 1000.000000000000000000
    end
    object cdsGridDataMOVEMENT_OFFSET_DAYS_SIGN: TAbmesFloatField
      FieldName = 'MOVEMENT_OFFSET_DAYS_SIGN'
      OnChange = cdsGridDataMOVEMENT_OFFSET_DAYS_SIGNChange
    end
    object cdsGridDataMOVEMENT_DURATION_DAYS: TAbmesFloatField
      DisplayLabel = #1055#1077#1088#1080#1086#1076' '#1079#1072' '#1044#1074#1080#1078#1077#1085#1080#1077
      FieldName = 'MOVEMENT_DURATION_DAYS'
      OnChange = cdsGridDataMOVEMENT_DURATION_DAYSChange
      MaxValue = 1000.000000000000000000
    end
    object cdsGridDataIN_OUT: TAbmesFloatField
      DisplayLabel = #1055#1086#1089#1086#1082#1072
      FieldName = 'IN_OUT'
    end
    object cdsGridDataFIN_STORE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' - '#1060#1080#1085#1072#1085#1089#1086#1074#1086' '#1048#1055
      FieldName = 'FIN_STORE_CODE'
      OnChange = cdsGridDataFIN_STORE_CODEChange
    end
    object cdsGridDataFIN_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'FIN_STORE_IDENTIFIER'
      OnGetText = cdsGridDataFIN_STORE_IDENTIFIERGetText
      Size = 46
    end
    object cdsGridDataPARTNER_ACCOUNT_CODE: TAbmesFloatField
      FieldName = 'PARTNER_ACCOUNT_CODE'
    end
    object cdsGridDataFIN_MODEL_LINE_REASON_CODE: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_REASON_CODE'
    end
    object cdsGridDataANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
      OnChange = cdsGridDataANNUL_EMPLOYEE_CODEChange
    end
    object cdsGridDataANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object cdsGridDataANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object cdsGridDataIS_ANNULED: TAbmesFloatField
      FieldName = 'IS_ANNULED'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataPRIMARY_LINE_QTY_PERCENT: TAbmesFloatField
      FieldName = 'PRIMARY_LINE_QTY_PERCENT'
    end
    object cdsGridDataREAL_BASE_QUANTITY: TAbmesFloatField
      FieldName = 'REAL_BASE_QUANTITY'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsGridDataREAL_QUANTITY: TAbmesFloatField
      FieldName = 'REAL_QUANTITY'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsGridDataLATE_REAL_QUANTITY: TAbmesFloatField
      FieldName = 'LATE_REAL_QUANTITY'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsGridDataLATE_REAL_DAYS: TAbmesFloatField
      FieldName = 'LATE_REAL_DAYS'
    end
    object cdsGridDataREAL_QUANTITY_BASE_CRNCY: TAbmesFloatField
      FieldName = 'REAL_QUANTITY_BASE_CRNCY'
    end
    object cdsGridDataLATE_REAL_QUANTITY_BASE_CRNCY: TAbmesFloatField
      FieldName = 'LATE_REAL_QUANTITY_BASE_CRNCY'
    end
    object cdsGridDataBASE_FINANCIAL_PRODUCT_FIXING: TAbmesFloatField
      FieldName = 'BASE_FINANCIAL_PRODUCT_FIXING'
    end
    object cdsGridDataWORK_FINANCIAL_PRODUCT_FIXING: TAbmesFloatField
      FieldName = 'WORK_FINANCIAL_PRODUCT_FIXING'
    end
    object cdsGridDataMOVEMENT_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1086' '#1085#1072' '#1076#1074#1080#1078#1077#1085#1080#1077
      FieldName = 'MOVEMENT_PLAN_BEGIN_DATE'
      OnChange = cdsGridDataMOVEMENT_PLAN_BEGIN_DATEChange
    end
    object cdsGridDataMOVEMENT_PLAN_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1088#1072#1081' '#1085#1072' '#1076#1074#1080#1078#1077#1085#1080#1077
      FieldName = 'MOVEMENT_PLAN_END_DATE'
      OnChange = cdsGridDataMOVEMENT_PLAN_END_DATEChange
    end
    object cdsGridDataORIGINAL_MOVEMENT_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'ORIGINAL_MOVEMENT_PLAN_DATE'
    end
    object cdsGridData_SHOW_NO: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_NO'
      Calculated = True
    end
    object cdsGridData_FIN_MODEL_LINE_TYPE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_FIN_MODEL_LINE_TYPE_ABBREV'
      LookupDataSet = cdsFinModelLineTypes
      LookupKeyFields = 'FIN_MODEL_LINE_TYPE_CODE'
      LookupResultField = 'FIN_MODEL_LINE_TYPE_ABBREV'
      KeyFields = 'FIN_MODEL_LINE_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsGridData_FIN_MODEL_LINE_TYPE_NAME: TAbmesWideStringField
      DisplayLabel = #1042#1080#1076
      FieldKind = fkLookup
      FieldName = '_FIN_MODEL_LINE_TYPE_NAME'
      LookupDataSet = cdsFinModelLineTypes
      LookupKeyFields = 'FIN_MODEL_LINE_TYPE_CODE'
      LookupResultField = 'FIN_MODEL_LINE_TYPE_NAME'
      KeyFields = 'FIN_MODEL_LINE_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsGridData_FIN_MODEL_LINE_REASON_ABBREV: TAbmesWideStringField
      DisplayLabel = #1054#1089#1085#1086#1074#1072#1085#1080#1077
      FieldKind = fkLookup
      FieldName = '_FIN_MODEL_LINE_REASON_ABBREV'
      LookupDataSet = cdsFinModelLineReasons
      LookupKeyFields = 'FIN_MODEL_LINE_REASON_CODE'
      LookupResultField = 'FIN_MODEL_LINE_REASON_ABBREV'
      KeyFields = 'FIN_MODEL_LINE_REASON_CODE'
      Lookup = True
    end
    object cdsGridData_FIN_MODEL_LINE_REASON_NAME: TAbmesWideStringField
      DisplayLabel = #1054#1089#1085#1086#1074#1072#1085#1080#1077
      FieldKind = fkLookup
      FieldName = '_FIN_MODEL_LINE_REASON_NAME'
      LookupDataSet = cdsFinModelLineReasons
      LookupKeyFields = 'FIN_MODEL_LINE_REASON_CODE'
      LookupResultField = 'FIN_MODEL_LINE_REASON_NAME'
      KeyFields = 'FIN_MODEL_LINE_REASON_CODE'
      Size = 100
      Lookup = True
    end
    object cdsGridData_MOVEMENT_OFFSET_DAYS_SIGN_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_MOVEMENT_OFFSET_DAYS_SIGN_NAME'
      LookupDataSet = cdsDateOffsetSigns
      LookupKeyFields = 'MOVEMENT_OFFSET_DAYS_SIGN'
      LookupResultField = 'MOVEMENT_OFFSET_DAYS_SIGN_NAME'
      KeyFields = 'MOVEMENT_OFFSET_DAYS_SIGN'
      Lookup = True
    end
    object cdsGridData_ARROW: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ARROW'
      DisplayBoolValues = #174';'#172
      FieldValueType = fvtBoolean
      Calculated = True
    end
    object cdsGridData_PARTNER_ACCOUNT_FULL_NAME: TAbmesWideStringField
      DisplayLabel = #1058#1055' - '#1060#1080#1085#1072#1085#1089#1086#1074#1086' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088
      FieldKind = fkLookup
      FieldName = '_PARTNER_ACCOUNT_FULL_NAME'
      LookupDataSet = cdsPartnerAccounts
      LookupKeyFields = 'ACCOUNT_CODE'
      LookupResultField = 'ACCOUNT_FULL_NAME'
      KeyFields = 'PARTNER_ACCOUNT_CODE'
      Size = 100
      Lookup = True
    end
    object cdsGridData_PLAN_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PLAN_QUANTITY'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
      Calculated = True
    end
    object cdsGridData_REMAINING_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REMAINING_QUANTITY'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
      Calculated = True
    end
    object cdsGridData_LATE_PLAN_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_LATE_PLAN_QUANTITY'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
      Calculated = True
    end
    object cdsGridData_LATE_PLAN_QUANTITY_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_LATE_PLAN_QUANTITY_PERCENT'
      OnGetText = PercentFieldsGetText
      DisplayFormat = ',0.#'
      Calculated = True
    end
    object cdsGridData_LATE_PLAN_DAYS: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_LATE_PLAN_DAYS'
      Calculated = True
    end
    object cdsGridData_LATE_REAL_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_LATE_REAL_QUANTITY'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
      Calculated = True
    end
    object cdsGridData_LATE_REAL_QUANTITY_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_LATE_REAL_QUANTITY_PERCENT'
      OnGetText = PercentFieldsGetText
      DisplayFormat = ',0.#'
      Calculated = True
    end
    object cdsGridData_LATE_REAL_DAYS: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_LATE_REAL_DAYS'
      Calculated = True
    end
    object cdsGridData_MOVEMENT_PLAN_DATE: TAbmesDateTimeField
      FieldKind = fkCalculated
      FieldName = '_MOVEMENT_PLAN_DATE'
      Calculated = True
    end
    object cdsGridData_SUM_PRIMARY_LINE_QTY_PERCENT: TAggregateField
      FieldName = '_SUM_PRIMARY_LINE_QTY_PERCENT'
      Active = True
      Expression = 'Sum(PRIMARY_LINE_QTY_PERCENT)'
    end
    object cdsGridData_MAX_RFML_OBJECT_CODE: TAggregateField
      FieldName = '_MAX_RFML_OBJECT_CODE'
      Active = True
      Expression = 'Max(RFML_OBJECT_CODE)'
    end
    object cdsGridData_MAX_FIN_MODEL_LINE_NO: TAggregateField
      FieldName = '_MAX_FIN_MODEL_LINE_NO'
      Active = True
      Expression = 'Max(FIN_MODEL_LINE_NO)'
      GroupingLevel = 1
      IndexName = 'idxDefault'
    end
    object cdsGridData_MIN_FIN_MODEL_LINE_NO: TAggregateField
      FieldName = '_MIN_FIN_MODEL_LINE_NO'
      Active = True
      Expression = 'Min(FIN_MODEL_LINE_NO)'
      GroupingLevel = 1
      IndexName = 'idxDefault'
    end
    object cdsGridData_MAX_ANNUL_EMPLOYEE_CODE: TAggregateField
      FieldName = '_MAX_ANNUL_EMPLOYEE_CODE'
      Active = True
      Expression = 'Max(ANNUL_EMPLOYEE_CODE)'
    end
    object cdsGridData_MIN_PRIMARY_LINE_QTY_PERCENT: TAggregateField
      FieldName = '_MIN_PRIMARY_LINE_QTY_PERCENT'
      Active = True
      Expression = 'Min(PRIMARY_LINE_QTY_PERCENT)'
    end
    object cdsGridData_MAX_PRIMARY_LINE_QTY_PERCENT: TAggregateField
      FieldName = '_MAX_PRIMARY_LINE_QTY_PERCENT'
      Active = True
      Expression = 'Max(PRIMARY_LINE_QTY_PERCENT)'
    end
    object cdsGridData_MIN_IN_OUT: TAggregateField
      FieldName = '_MIN_IN_OUT'
      Active = True
      Expression = 'Min(IN_OUT)'
    end
    object cdsGridData_MAX_IN_OUT: TAggregateField
      FieldName = '_MAX_IN_OUT'
      Active = True
      Expression = 'Max(IN_OUT)'
    end
    object cdsGridData_MAX_DOCUMENT_IDENTIFIER: TAggregateField
      FieldName = '_MAX_DOCUMENT_IDENTIFIER'
      Active = True
      Expression = 'Max(DOCUMENT_IDENTIFIER)'
    end
    object cdsGridData_MAX_NOT_ANNULED_REAL_QTY: TAggregateField
      FieldName = '_MAX_NOT_ANNULED_REAL_QTY'
      Active = True
      Expression = 'Max(REAL_QUANTITY * (1 - IS_ANNULED))'
    end
    object cdsGridData_MIN_MOVEMENT_PLAN_BEGIN_DATE: TAggregateField
      FieldName = '_MIN_MOVEMENT_PLAN_BEGIN_DATE'
      Active = True
      Expression = 'Min(MOVEMENT_PLAN_BEGIN_DATE)'
    end
  end
  inherited alActions: TActionList
    Left = 224
    Top = 384
    inherited actForm: TAction
      Caption = #1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1060#1080#1085#1072#1085#1089#1086#1074' - %s'
    end
    object actDocs: TAction
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1054#1055#1060
      ImageIndex = 1
      OnExecute = actDocsExecute
      OnUpdate = actDocsUpdate
    end
    object actBndProcessObject: TAction
      Caption = 'actBndProcessObject'
      OnExecute = actBndProcessObjectExecute
      OnUpdate = actBndProcessObjectUpdate
    end
    object actModel: TAction
      Caption = #1056'-'#1052#1054#1044#1045#1083'-'#1060'...'
      ImageIndex = 47
      OnExecute = actModelExecute
      OnUpdate = actModelUpdate
    end
    object actNotes: TAction
      Caption = #1041#1077#1083#1077#1078#1082#1080'...'
      ImageIndex = 57
      OnExecute = actNotesExecute
      OnUpdate = actNotesUpdate
    end
    object actCloseOrder: TAction
      Caption = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077'...'
      ImageIndex = 109
      OnExecute = actCloseOrderExecute
      OnUpdate = actCloseOrderUpdate
    end
    object actAnnulOrder: TAction
      Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077'...'
      ImageIndex = 16
      OnExecute = actAnnulOrderExecute
      OnUpdate = actAnnulOrderUpdate
    end
    object actActivateModel: TAction
      Caption = #1040#1082#1090#1080#1074#1080#1088#1072#1085#1077'...'
      ImageIndex = 55
      OnExecute = actActivateModelExecute
      OnUpdate = actActivateModelUpdate
    end
    object actRealLate: TAction
      Caption = 'actRealLate'
      GroupIndex = 1
      Hint = #1054#1090#1095#1077#1090#1085#1080'/'#1055#1083#1072#1085#1086#1074#1080' '#1079#1072#1082#1098#1089#1085#1077#1085#1080#1103
      ImageIndex = 70
      OnExecute = actRealLateExecute
    end
    object actPercent: TAction
      Caption = 'actPercent'
      GroupIndex = 2
      Hint = #1047#1072#1082#1098#1089#1085#1077#1085#1080#1077' '#1074' %'
      ImageIndex = 119
      OnExecute = actPercentExecute
    end
    object actBaseCurrency: TAction
      Caption = 'actBaseCurrency'
      GroupIndex = 3
      Hint = #1042' '#1086#1089#1085#1086#1074#1085#1072' '#1074#1072#1083#1091#1090#1072
      ImageIndex = 38
      OnExecute = actBaseCurrencyExecute
      OnUpdate = actBaseCurrencyUpdate
    end
    object actMoveUpLine: TAction
      Hint = #1053#1072#1075#1086#1088#1077
      ImageIndex = 43
      OnExecute = actMoveUpLineExecute
      OnUpdate = actMoveUpLineUpdate
    end
    object actMoveDownLine: TAction
      Hint = #1053#1072#1076#1086#1083#1091
      ImageIndex = 44
      OnExecute = actMoveDownLineExecute
      OnUpdate = actMoveDownLineUpdate
    end
    object actShowAnnuled: TAction
      Caption = #1040
      GroupIndex = 4
      Hint = #1040#1085#1091#1083#1080#1088#1072#1085#1080
      OnExecute = actShowAnnuledExecute
    end
    object actLoadSpecFinModel: TAction
      Caption = #1047#1072#1088#1077#1078#1076#1072#1085#1077'...'
      ImageIndex = 59
      OnExecute = actLoadSpecFinModelExecute
      OnUpdate = actLoadSpecFinModelUpdate
    end
    object actTogglePlanInWorkQuantityDiffMeasure: TAction
      GroupIndex = 5
      Hint = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' / '#1055#1088#1086#1094#1077#1085#1090
      ImageIndex = 119
      OnExecute = actTogglePlanInWorkQuantityDiffMeasureExecute
      OnUpdate = actTogglePlanInWorkQuantityDiffMeasureUpdate
    end
    object actTogglePlanOutWorkQuantityDiffMeasure: TAction
      GroupIndex = 6
      Hint = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' / '#1055#1088#1086#1094#1077#1085#1090
      ImageIndex = 119
      OnExecute = actTogglePlanOutWorkQuantityDiffMeasureExecute
      OnUpdate = actTogglePlanOutWorkQuantityDiffMeasureUpdate
    end
    object actArrow: TAction
      Caption = #1080
      Hint = #1055#1086#1089#1086#1082#1072
      OnExecute = actArrowExecute
      OnUpdate = actArrowUpdate
    end
    object actConfirmBaseDataChange: TAction
      Caption = #1055#1086#1090#1074#1098#1088#1078#1076#1077#1085#1080#1077
      OnExecute = actConfirmBaseDataChangeExecute
      OnUpdate = actConfirmBaseDataChangeUpdate
    end
    object actCreateLike: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1082#1072#1090#1086'...'
      ImageIndex = 4
      OnExecute = actCreateLikeExecute
      OnUpdate = actCreateLikeUpdate
    end
    object actCompleteModel: TAction
      Caption = #1054#1090#1095#1080#1090#1072#1085#1077'...'
      ImageIndex = 56
      OnExecute = actCompleteModelExecute
      OnUpdate = actCompleteModelUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 136
    Top = 488
  end
  inherited dsGridDataParams: TDataSource
    Left = 168
    Top = 488
  end
  inherited dsData: TDataSource
    OnDataChange = dsDataDataChange
    Left = 168
    Top = 424
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conFinance
    Params = <
      item
        DataType = ftFloat
        Name = 'FIN_ORDER_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvFinOrder'
    AfterEdit = cdsDataAfterEdit
    BeforePost = cdsDataBeforePost
    OnCalcFields = cdsDataCalcFields
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    Left = 136
    Top = 424
    object cdsDataFIN_ORDER_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDataSTATUS_CODE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'STATUS_CODE'
      ProviderFlags = []
      OnGetText = cdsDataSTATUS_CODEGetText
    end
    object cdsDataFIN_ORDER_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1043#1083#1072#1074#1085#1086
      FieldName = 'FIN_ORDER_BRANCH_CODE'
      OnChange = cdsDataFIN_ORDER_BRANCH_CODEChange
    end
    object cdsDataFIN_ORDER_BRANCH_NO: TAbmesFloatField
      FieldName = 'FIN_ORDER_BRANCH_NO'
      ProviderFlags = []
    end
    object cdsDataFIN_ORDER_NO: TAbmesFloatField
      FieldName = 'FIN_ORDER_NO'
    end
    object cdsDataEXEC_DEPT_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1056#1077#1072#1083#1080#1079#1072#1090#1086#1088
      FieldName = 'EXEC_DEPT_CODE'
    end
    object cdsDataEXEC_DEPT_NAME: TAbmesWideStringField
      FieldName = 'EXEC_DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsDataEXEC_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'EXEC_DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object cdsDataPRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1080#1086#1088#1080#1090#1077#1090
      FieldName = 'PRIORITY_CODE'
    end
    object cdsDataFIN_PROCESS_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1094#1077#1089
      FieldName = 'FIN_PROCESS_CODE'
      OnChange = cdsDataFIN_PROCESS_CODEChange
    end
    object cdsDataBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
    end
    object cdsDataBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
    end
    object cdsDataPARTNER_CODE: TAbmesFloatField
      DisplayLabel = #1055#1072#1088#1090#1085#1100#1086#1088
      FieldName = 'PARTNER_CODE'
    end
    object cdsDataIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
    end
    object cdsDataBASE_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1041#1072#1079#1086#1074#1072' '#1076#1072#1090#1072
      FieldName = 'BASE_DATE'
    end
    object cdsDataBASE_FINANCIAL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'BASE_FINANCIAL_PRODUCT_CODE'
      OnChange = cdsDataBASE_FINANCIAL_PRODUCT_CODEChange
    end
    object cdsDataBASE_FINANCIAL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'BASE_FINANCIAL_PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsDataBASE_FINANCIAL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'BASE_FINANCIAL_PRODUCT_NO'
      ProviderFlags = []
    end
    object cdsDataBASE_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'BASE_MEASURE_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object cdsDataBASE_QUANTITY: TAbmesFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1060#1054#1073
      FieldName = 'BASE_QUANTITY'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsDataWORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField
      DisplayLabel = #1060#1080#1085#1072#1085#1089#1086#1074' '#1054#1073#1077#1082#1090
      FieldName = 'WORK_FINANCIAL_PRODUCT_CODE'
      OnChange = cdsDataWORK_FINANCIAL_PRODUCT_CODEChange
    end
    object cdsDataWORK_FINANCIAL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'WORK_FINANCIAL_PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsDataWORK_FINANCIAL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'WORK_FINANCIAL_PRODUCT_NO'
      ProviderFlags = []
    end
    object cdsDataWORK_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'WORK_MEASURE_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object cdsDataFIN_CLASS_CODE: TAbmesFloatField
      DisplayLabel = #1060#1080#1085#1072#1085#1089#1086#1074#1072' '#1057#1090#1072#1090#1080#1103
      FieldName = 'FIN_CLASS_CODE'
    end
    object cdsDataDOCUMENT_IDENTIFIER: TAbmesWideStringField
      DisplayLabel = #1060#1072#1082#1090#1091#1088#1072' ('#1076#1086#1082#1091#1084#1077#1085#1090#1072#1083#1085#1086' '#1086#1089#1085#1086#1074#1072#1085#1080#1077')'
      FieldName = 'DOCUMENT_IDENTIFIER'
      Size = 50
    end
    object cdsDataDOCUMENT_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1092#1072#1082#1090#1091#1088#1072
      FieldName = 'DOCUMENT_DATE'
      OnChange = cdsDataDOCUMENT_DATEChange
    end
    object cdsDataNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsDataHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
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
    object cdsDataCLOSE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CLOSE_EMPLOYEE_CODE'
      OnChange = cdsDataCLOSE_EMPLOYEE_CODEChange
    end
    object cdsDataCLOSE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_DATE'
    end
    object cdsDataCLOSE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_TIME'
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
    object cdsDataACTIVATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ACTIVATE_EMPLOYEE_CODE'
      OnChange = cdsDataACTIVATE_EMPLOYEE_CODEChange
    end
    object cdsDataACTIVATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'ACTIVATE_DATE'
    end
    object cdsDataACTIVATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'ACTIVATE_TIME'
    end
    object cdsDataPLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_BEGIN_DATE'
      ProviderFlags = []
    end
    object cdsDataBEGIN_DATE_DIFF: TAbmesFloatField
      FieldName = 'BEGIN_DATE_DIFF'
      ProviderFlags = []
    end
    object cdsDataSPEC_MODEL_DURATION_DAYS: TAbmesFloatField
      FieldName = 'SPEC_MODEL_DURATION_DAYS'
      ProviderFlags = []
    end
    object cdsDataREAL_MODEL_DURATION_DAYS: TAbmesFloatField
      FieldName = 'REAL_MODEL_DURATION_DAYS'
      ProviderFlags = []
    end
    object cdsDataMAX_POSITIVE_DIFF: TAbmesFloatField
      FieldName = 'MAX_POSITIVE_DIFF'
      ProviderFlags = []
    end
    object cdsDataMAX_NEGATIVE_DIFF: TAbmesFloatField
      FieldName = 'MAX_NEGATIVE_DIFF'
      ProviderFlags = []
    end
    object cdsDataPLAN_IN_WORK_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_IN_WORK_QUANTITY'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsDataIN_WORK_QUANTITY_DIFF: TAbmesFloatField
      FieldName = 'IN_WORK_QUANTITY_DIFF'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsDataPLAN_OUT_WORK_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_OUT_WORK_QUANTITY'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsDataOUT_WORK_QUANTITY_DIFF: TAbmesFloatField
      FieldName = 'OUT_WORK_QUANTITY_DIFF'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsDataPLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_END_DATE'
      ProviderFlags = []
    end
    object cdsDataIN_END_DATE_DIFF: TAbmesFloatField
      FieldName = 'IN_END_DATE_DIFF'
      ProviderFlags = []
    end
    object cdsDataOUT_END_DATE_DIFF: TAbmesFloatField
      FieldName = 'OUT_END_DATE_DIFF'
      ProviderFlags = []
    end
    object cdsDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
      ProviderFlags = []
    end
    object cdsDataSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
      ProviderFlags = []
    end
    object cdsDataSALE_SHIPMENT_NO: TAbmesFloatField
      FieldName = 'SALE_SHIPMENT_NO'
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
    object cdsDataDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
      ProviderFlags = []
    end
    object cdsDataREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
      ProviderFlags = []
    end
    object cdsDataREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
      ProviderFlags = []
    end
    object cdsDataBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
      ProviderFlags = []
    end
    object cdsDataBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
      ProviderFlags = []
    end
    object cdsDataBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_CODE'
      ProviderFlags = []
    end
    object cdsDataBOI_ORDER_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_CODE'
      ProviderFlags = []
    end
    object cdsDataBUDGET_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'BUDGET_PRODUCT_CODE'
      ProviderFlags = []
    end
    object cdsDataBOIO_DESCRIPTION: TAbmesWideStringField
      FieldName = 'BOIO_DESCRIPTION'
      ProviderFlags = []
      Size = 100
    end
    object cdsDataBND_PROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BND_PROCESS_OBJECT_IDENTIFIER'
      ProviderFlags = []
      Size = 100
    end
    object cdsDataBND_PO_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'BND_PO_PRODUCT_CODE'
      ProviderFlags = []
    end
    object cdsDataBND_PO_WORK_QUANTITY: TAbmesFloatField
      FieldName = 'BND_PO_WORK_QUANTITY'
      ProviderFlags = []
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object cdsDataBND_PO_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'BND_PO_ACCOUNT_QUANTITY'
      ProviderFlags = []
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object cdsDataBND_PO_WORK_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'BND_PO_WORK_MEASURE_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object cdsDataBND_PO_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'BND_PO_ACCOUNT_MEASURE_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object cdsDataSS_STATE_CODE: TAbmesFloatField
      FieldName = 'SS_STATE_CODE'
      ProviderFlags = []
      OnGetText = cdsDataSS_STATE_CODEGetText
    end
    object cdsDataDC_STATUS_CODE: TAbmesFloatField
      FieldName = 'DC_STATUS_CODE'
      ProviderFlags = []
      OnGetText = cdsDataDC_STATUS_CODEGetText
    end
    object cdsDataSG_STATUS_CODE: TAbmesFloatField
      FieldName = 'SG_STATUS_CODE'
      ProviderFlags = []
      OnGetText = cdsDataSG_STATUS_CODEGetText
    end
    object cdsDataBOIO_STATUS_CODE: TAbmesFloatField
      FieldName = 'BOIO_STATUS_CODE'
      ProviderFlags = []
      OnGetText = cdsDataBOIO_STATUS_CODEGetText
    end
    object cdsDataBND_OBJECT_IS_ANNULED: TAbmesFloatField
      FieldName = 'BND_OBJECT_IS_ANNULED'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsDataBASE_DATA_CHANGED: TAbmesFloatField
      FieldName = 'BASE_DATA_CHANGED'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsDataBDC_CONFIRM_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'BDC_CONFIRM_EMPLOYEE_CODE'
    end
    object cdsDataBDC_CONFIRM_DATE: TAbmesSQLTimeStampField
      FieldName = 'BDC_CONFIRM_DATE'
    end
    object cdsDataBDC_CONFIRM_TIME: TAbmesSQLTimeStampField
      FieldName = 'BDC_CONFIRM_TIME'
    end
    object cdsDataFM_MOVEMENT_OFFSET_TYPE_CODE: TAbmesFloatField
      FieldName = 'FM_MOVEMENT_OFFSET_TYPE_CODE'
      OnChange = cdsDataFM_MOVEMENT_OFFSET_TYPE_CODEChange
    end
    object cdsDataqryRealFinModelLines: TDataSetField
      FieldName = 'qryRealFinModelLines'
    end
    object cdsData_BASE_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_BASE_CURRENCY_ABBREV'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'PRODUCT_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = 'BASE_FINANCIAL_PRODUCT_CODE'
      Size = 5
      Lookup = True
    end
    object cdsData_HAS_DOCUMENT_IDENTIFIER: TAbmesFloatField
      Alignment = taLeftJustify
      FieldKind = fkCalculated
      FieldName = '_HAS_DOCUMENT_IDENTIFIER'
      DisplayBoolValues = #1056#1077#1072#1083#1077#1085';'#1054#1095#1072#1082#1074#1072#1085
      FieldValueType = fvtBoolean
      Calculated = True
    end
    object cdsData_BND_PO_STATUS: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_BND_PO_STATUS'
      Size = 100
      Calculated = True
    end
    object cdsData_FIN_PROCESS_IS_MANUALLY_USABLE: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_FIN_PROCESS_IS_MANUALLY_USABLE'
      LookupDataSet = cdsFinProcesses
      LookupKeyFields = 'PROCESS_CODE'
      LookupResultField = 'IS_MANUALLY_USABLE'
      KeyFields = 'FIN_PROCESS_CODE'
      FieldValueType = fvtBoolean
      Lookup = True
    end
    object cdsData_TODAY: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_TODAY'
      Calculated = True
    end
    object cdsData_BASE_CURRENCY_CODE: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_BASE_CURRENCY_CODE'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'PRODUCT_CODE'
      LookupResultField = 'CURRENCY_CODE'
      KeyFields = 'BASE_FINANCIAL_PRODUCT_CODE'
      Lookup = True
    end
    object cdsData_WORK_CURRENCY_CODE: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_WORK_CURRENCY_CODE'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'PRODUCT_CODE'
      LookupResultField = 'CURRENCY_CODE'
      KeyFields = 'WORK_FINANCIAL_PRODUCT_CODE'
      Lookup = True
    end
    object cdsData_IN_WORK_QUANTITY_DIFF_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_IN_WORK_QUANTITY_DIFF_PERCENT'
      OnGetText = PercentFieldsGetText
      DisplayFormat = ',0.#'
      EditFormat = '0.#'
      Calculated = True
    end
    object cdsData_OUT_WORK_QUANTITY_DIFF_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_OUT_WORK_QUANTITY_DIFF_PERCENT'
      OnGetText = PercentFieldsGetText
      DisplayFormat = ',0.#'
      EditFormat = '0.#'
      Calculated = True
    end
    object cdsData_ARROW: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ARROW'
      DisplayBoolValues = #174';'#172
      FieldValueType = fvtBoolean
      Calculated = True
    end
    object cdsData_FIN_PROCESS_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_FIN_PROCESS_NAME'
      LookupDataSet = cdsFinProcesses
      LookupKeyFields = 'PROCESS_CODE'
      LookupResultField = 'PROCESS_NAME'
      KeyFields = 'FIN_PROCESS_CODE'
      Size = 100
      Lookup = True
    end
    object cdsData_FM_MOVEMENT_OFFSET_TYPE_NAME: TAbmesWideStringField
      DisplayLabel = #1054#1090#1084#1077#1089#1090#1074#1072#1085#1077' '#1089#1087#1088#1103#1084#1086' '#1073#1072#1079#1086#1074#1072' '#1076#1072#1090#1072' '#1085#1072
      FieldKind = fkLookup
      FieldName = '_FM_MOVEMENT_OFFSET_TYPE_NAME'
      LookupDataSet = cdsFMMovementOffsetTypes
      LookupKeyFields = 'FM_MOVEMENT_OFFSET_TYPE_CODE'
      LookupResultField = 'FM_MOVEMENT_OFFSET_TYPE_NAME'
      KeyFields = 'FM_MOVEMENT_OFFSET_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsDataCOMPLETE_MODEL_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1054#1090#1095#1077#1090#1085#1072' '#1076#1072#1090#1072
      FieldName = 'COMPLETE_MODEL_DATE'
    end
  end
  object cdsFinModelLineTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conFinance
    Params = <>
    ProviderName = 'prvFinModelLineTypes'
    Left = 328
    Top = 424
    object cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_TYPE_CODE'
    end
    object cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_NO: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_TYPE_NO'
    end
    object cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'FIN_MODEL_LINE_TYPE_NAME'
      Size = 100
    end
    object cdsFinModelLineTypesFIN_MODEL_LINE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'FIN_MODEL_LINE_TYPE_ABBREV'
      Size = 100
    end
  end
  object cdsFinModelLineReasons: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conFinance
    Params = <>
    ProviderName = 'prvFinModelLineReasons'
    Left = 360
    Top = 424
    object cdsFinModelLineReasonsFIN_MODEL_LINE_REASON_CODE: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_REASON_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsFinModelLineReasonsFIN_MODEL_LINE_REASON_NO: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_REASON_NO'
    end
    object cdsFinModelLineReasonsFIN_MODEL_LINE_REASON_NAME: TAbmesWideStringField
      FieldName = 'FIN_MODEL_LINE_REASON_NAME'
      Size = 50
    end
    object cdsFinModelLineReasonsFIN_MODEL_LINE_REASON_ABBREV: TAbmesWideStringField
      FieldName = 'FIN_MODEL_LINE_REASON_ABBREV'
      Size = 5
    end
  end
  object cdsDateOffsetSigns: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 392
    Top = 424
    object cdsDateOffsetSignsMOVEMENT_OFFSET_DAYS_SIGN: TAbmesFloatField
      FieldName = 'MOVEMENT_OFFSET_DAYS_SIGN'
    end
    object cdsDateOffsetSignsMOVEMENT_OFFSET_DAYS_SIGN_NAME: TAbmesWideStringField
      FieldName = 'MOVEMENT_OFFSET_DAYS_SIGN_NAME'
    end
  end
  object cdsFinProcesses: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conFinance
    Filter = 'IS_MANUALLY_USABLE = 1'
    Params = <>
    ProviderName = 'prvFinProcesses'
    Left = 216
    Top = 424
    object cdsFinProcessesPROCESS_CODE: TAbmesFloatField
      FieldName = 'PROCESS_CODE'
    end
    object cdsFinProcessesPROCESS_ABBREV: TAbmesWideStringField
      DisplayWidth = 8
      FieldName = 'PROCESS_ABBREV'
      Size = 100
    end
    object cdsFinProcessesPROCESS_NAME: TAbmesWideStringField
      FieldName = 'PROCESS_NAME'
      Size = 100
    end
    object cdsFinProcessesPROCESS_NO: TAbmesFloatField
      FieldName = 'PROCESS_NO'
    end
    object cdsFinProcessesIS_MANUALLY_USABLE: TAbmesFloatField
      FieldName = 'IS_MANUALLY_USABLE'
    end
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Filter = '(IS_LOCAL_BRANCH <> 0) and (IS_INACTIVE = 0)'
    Params = <>
    ProviderName = 'prvBranches'
    Left = 248
    Top = 424
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      DisplayWidth = 3
      FieldName = 'BRANCH_CODE'
    end
    object cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField
      DisplayWidth = 10
      FieldName = 'BRANCH_IDENTIFIER'
      Size = 255
    end
    object cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField
      FieldName = 'BRANCH_CODE_AND_NAME'
      Size = 255
    end
    object cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField
      FieldName = 'IS_LOCAL_BRANCH'
    end
    object cdsBranchesBRANCH_NO: TAbmesFloatField
      Alignment = taLeftJustify
      DisplayWidth = 3
      FieldName = 'BRANCH_NO'
    end
    object cdsBranchesIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
  end
  object dsBranches: TDataSource
    DataSet = cdsBranches
    Left = 248
    Top = 456
  end
  object dsFinProcesses: TDataSource
    DataSet = cdsFinProcesses
    Left = 216
    Top = 456
  end
  object cdsPriorities: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvPriorities'
    Left = 280
    Top = 424
    object cdsPrioritiesPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
    end
    object cdsPrioritiesPRIORITY_NO: TAbmesFloatField
      DisplayWidth = 2
      FieldName = 'PRIORITY_NO'
    end
    object cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_NAME'
      Size = 50
    end
  end
  object dsPriorities: TDataSource
    DataSet = cdsPriorities
    Left = 280
    Top = 456
  end
  object cdsCurrencies: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCurrencies'
    Left = 424
    Top = 424
    object cdsCurrenciesCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      Required = True
      Size = 5
    end
    object cdsCurrenciesPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
  end
  object cdsDate: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 48
    Top = 16
  end
  object dsDate: TDataSource
    DataSet = frAdministrativeProcessObjectBaseDate.cdsDate
    Left = 72
    Top = 16
  end
  object cdsPartnerAccounts: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompanies
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCompanyBankAccounts'
    BeforeOpen = cdsPartnerAccountsBeforeOpen
    Left = 456
    Top = 424
    object cdsPartnerAccountsACCOUNT_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_CODE'
    end
    object cdsPartnerAccountsACCOUNT_FULL_NAME: TAbmesWideStringField
      FieldName = 'ACCOUNT_FULL_NAME'
      Size = 104
    end
    object cdsPartnerAccountsCURRENCY_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_PRODUCT_CODE'
    end
  end
  object cdsCurrencyRatesCache: TAbmesClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 'CURRENCY_CODE;RATE_DATE'
      end>
    Params = <>
    StoreDefs = True
    Left = 488
    Top = 424
    object cdsCurrencyRatesCacheCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object cdsCurrencyRatesCacheRATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RATE_DATE'
    end
    object cdsCurrencyRatesCacheFIXING: TAbmesFloatField
      FieldName = 'FIXING'
    end
  end
  object cdsSpecFinModelLines: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conFinance
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_FIN_MODEL_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvSpecFinModelLines'
    Left = 520
    Top = 424
    object cdsSpecFinModelLinesSPEC_FIN_MODEL_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_FIN_MODEL_LINE_CODE'
    end
    object cdsSpecFinModelLinesSPEC_FIN_MODEL_CODE: TAbmesFloatField
      FieldName = 'SPEC_FIN_MODEL_CODE'
    end
    object cdsSpecFinModelLinesFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_TYPE_CODE'
    end
    object cdsSpecFinModelLinesFIN_MODEL_LINE_NO: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_NO'
    end
    object cdsSpecFinModelLinesLINE_QUANTITY_PERCENT: TAbmesFloatField
      FieldName = 'LINE_QUANTITY_PERCENT'
    end
    object cdsSpecFinModelLinesMOVEMENT_OFFSET_DAYS: TAbmesFloatField
      FieldName = 'MOVEMENT_OFFSET_DAYS'
    end
    object cdsSpecFinModelLinesMOVEMENT_DURATION_DAYS: TAbmesFloatField
      FieldName = 'MOVEMENT_DURATION_DAYS'
    end
    object cdsSpecFinModelLinesFIN_STORE_CODE: TAbmesFloatField
      FieldName = 'FIN_STORE_CODE'
    end
    object cdsSpecFinModelLinesPARTNER_ACCOUNT_CODE: TAbmesFloatField
      FieldName = 'PARTNER_ACCOUNT_CODE'
    end
    object cdsSpecFinModelLinesFIN_MODEL_LINE_REASON_CODE: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_REASON_CODE'
    end
  end
  object cdsFMMovementOffsetTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompanies
    Params = <>
    ProviderName = 'prvFMMovementOffsetTypes'
    Left = 552
    Top = 424
    object cdsFMMovementOffsetTypesFM_MOVEMENT_OFFSET_TYPE_CODE: TAbmesFloatField
      FieldName = 'FM_MOVEMENT_OFFSET_TYPE_CODE'
      Required = True
    end
    object cdsFMMovementOffsetTypesFM_MOVEMENT_OFFSET_TYPE_NAME: TAbmesWideStringField
      FieldName = 'FM_MOVEMENT_OFFSET_TYPE_NAME'
      Size = 100
    end
  end
  object cdsSpecFinModels: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conFinance
    Params = <
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
        DataType = ftDateTime
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXEC_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXEC_DEPT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvSpecFinModels'
    Left = 520
    Top = 392
    object cdsSpecFinModelsSPEC_FIN_MODEL_CODE: TAbmesFloatField
      FieldName = 'SPEC_FIN_MODEL_CODE'
    end
    object cdsSpecFinModelsFM_MOVEMENT_OFFSET_TYPE_CODE: TAbmesFloatField
      FieldName = 'FM_MOVEMENT_OFFSET_TYPE_CODE'
      Required = True
    end
  end
end
