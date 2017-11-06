inherited fmEmployeeDisciplineEvent: TfmEmployeeDisciplineEvent
  Left = 312
  Top = 260
  Caption = #1048#1079#1074#1098#1085#1088#1077#1076#1085#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' '#1074' '#1056#1072#1073#1086#1090#1085#1086' '#1055#1086#1074#1077#1076#1077#1085#1080#1077' - %s'
  ClientHeight = 412
  ClientWidth = 577
  ExplicitWidth = 583
  ExplicitHeight = 437
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 561
    Height = 361
    ExplicitWidth = 441
    ExplicitHeight = 361
  end
  object lblDisciplineEventDate: TLabel [1]
    Left = 104
    Top = 16
    Width = 26
    Height = 13
    Caption = #1044#1072#1090#1072
  end
  object lblDisciplineEventComment: TLabel [2]
    Left = 24
    Top = 112
    Width = 50
    Height = 13
    Caption = #1050#1086#1084#1077#1085#1090#1072#1088
  end
  object lblStatus: TLabel [3]
    Left = 24
    Top = 16
    Width = 34
    Height = 13
    Caption = #1057#1090#1072#1090#1091#1089
    FocusControl = edtStatus
  end
  object lblRating: TLabel [4]
    Left = 24
    Top = 64
    Width = 62
    Height = 13
    Caption = #1060#1072#1082#1090'. '#1090#1086#1095#1082#1080
  end
  object lblAuthorizeEmployee: TLabel [5]
    Left = 24
    Top = 160
    Width = 55
    Height = 13
    Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1083
  end
  object lblDisciplineEventState: TLabel [6]
    Left = 224
    Top = 16
    Width = 55
    Height = 13
    Caption = #1057#1098#1089#1090#1086#1103#1085#1080#1077
    FocusControl = cbDisciplineEventState
  end
  inherited pnlBottomButtons: TPanel
    Top = 377
    Width = 577
    TabOrder = 10
    ExplicitTop = 377
    ExplicitWidth = 577
    inherited pnlOKCancel: TPanel
      Left = 309
      TabOrder = 3
      ExplicitLeft = 309
    end
    inherited pnlClose: TPanel
      Left = 220
      TabOrder = 2
      ExplicitLeft = 220
    end
    inherited pnlApply: TPanel
      Left = 488
      TabOrder = 4
      Visible = False
      ExplicitLeft = 488
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
  object edtDisciplineEventComment: TDBEdit [8]
    Left = 24
    Top = 128
    Width = 481
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'DISCIPLINE_EVENT_COMMENT'
    DataSource = dsData
    TabOrder = 5
  end
  object edtStatus: TDBEdit [9]
    Left = 24
    Top = 32
    Width = 65
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = '_STATUS_NAME'
    DataSource = dsData
    TabOrder = 0
  end
  object edtRating: TDBEdit [10]
    Left = 24
    Top = 80
    Width = 65
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'RATING'
    DataSource = dsData
    TabOrder = 3
  end
  inline frDisciplineEventDate: TfrDateFieldEditFrame [11]
    Left = 104
    Top = 32
    Width = 105
    Height = 21
    Constraints.MaxHeight = 21
    Constraints.MaxWidth = 105
    Constraints.MinHeight = 21
    Constraints.MinWidth = 105
    TabOrder = 1
    TabStop = True
    ExplicitLeft = 104
    ExplicitTop = 32
  end
  inline frAuthorizeEmployee: TfrEmployeeFieldEditFrameBald [12]
    Left = 24
    Top = 176
    Width = 529
    Height = 22
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Anchors = [akLeft, akTop, akRight]
    Constraints.MaxHeight = 22
    Constraints.MinHeight = 22
    TabOrder = 7
    TabStop = True
    ExplicitLeft = 24
    ExplicitTop = 176
    ExplicitWidth = 529
    inherited gbEmployee: TGroupBox
      Width = 548
      ExplicitWidth = 548
      inherited pnlEmployeeName: TPanel
        Width = 473
        ExplicitWidth = 473
        inherited pnlRightButtons: TPanel
          Left = 437
          ExplicitLeft = 437
        end
        inherited pnlEmpoyeeNameInner: TPanel
          Width = 437
          ExplicitWidth = 437
          inherited edtEmployeeName: TDBEdit
            Width = 391
            ExplicitWidth = 391
          end
          inherited cbEmployee: TJvDBLookupCombo
            Width = 436
            ExplicitWidth = 436
          end
        end
      end
      inherited pnlPaddingRight: TPanel
        Left = 538
        ExplicitLeft = 538
      end
    end
  end
  object gbStornoInfo: TGroupBox [13]
    Left = 24
    Top = 288
    Width = 529
    Height = 65
    Anchors = [akLeft, akTop, akRight]
    Caption = ' '#1040#1085#1091#1083#1080#1088#1072#1085#1077' '
    TabOrder = 9
    DesignSize = (
      529
      65)
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
      Width = 353
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Anchors = [akLeft, akTop, akRight]
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 2
      TabStop = True
      ExplicitLeft = 168
      ExplicitTop = 32
      ExplicitWidth = 353
      inherited gbEmployee: TGroupBox
        Width = 372
        ExplicitWidth = 372
        inherited pnlEmployeeName: TPanel
          Width = 297
          ExplicitWidth = 297
          inherited pnlRightButtons: TPanel
            Left = 261
            ExplicitLeft = 261
          end
          inherited pnlEmpoyeeNameInner: TPanel
            Width = 261
            ExplicitWidth = 261
            inherited edtEmployeeName: TDBEdit
              Width = 215
              ExplicitWidth = 215
            end
            inherited cbEmployee: TJvDBLookupCombo
              Width = 260
              ExplicitWidth = 260
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 362
          ExplicitLeft = 362
        end
      end
    end
  end
  object tlbDocs: TToolBar [14]
    Left = 517
    Top = 127
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
    TabOrder = 6
    object btnDocs: TToolButton
      Left = 0
      Top = 0
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1048#1079#1074#1098#1085#1088#1077#1076#1085#1086#1090#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' '#1074' '#1056#1072#1073#1086#1090#1085#1086' '#1055#1086#1074#1077#1076#1077#1085#1080#1077
      ImageIndex = 1
      OnClick = btnDocsClick
    end
  end
  object gbCreateInfo: TGroupBox [15]
    Left = 24
    Top = 208
    Width = 529
    Height = 65
    Anchors = [akLeft, akTop, akRight]
    Caption = ' '#1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077' '
    TabOrder = 8
    DesignSize = (
      529
      65)
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
      Width = 353
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Anchors = [akLeft, akTop, akRight]
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 2
      TabStop = True
      ExplicitLeft = 168
      ExplicitTop = 32
      ExplicitWidth = 353
      inherited gbEmployee: TGroupBox
        Width = 372
        ExplicitWidth = 372
        inherited pnlEmployeeName: TPanel
          Width = 297
          ExplicitWidth = 297
          inherited pnlRightButtons: TPanel
            Left = 261
            ExplicitLeft = 261
          end
          inherited pnlEmpoyeeNameInner: TPanel
            Width = 261
            ExplicitWidth = 261
            inherited edtEmployeeName: TDBEdit
              Width = 215
              ExplicitWidth = 215
            end
            inherited cbEmployee: TJvDBLookupCombo
              Width = 260
              ExplicitWidth = 260
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 362
          ExplicitLeft = 362
        end
      end
    end
  end
  object cbDisciplineEventState: TJvDBLookupCombo [16]
    Left = 224
    Top = 32
    Width = 105
    Height = 21
    EscapeClear = False
    DataField = '_DISCIPLINE_EVENT_STATE'
    DataSource = dsData
    TabOrder = 2
  end
  inline frDiscEventType: TfrDiscEventTypeFieldEditFrame [17]
    Left = 104
    Top = 64
    Width = 449
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 4
    TabStop = True
    ExplicitLeft = 104
    ExplicitTop = 64
    ExplicitWidth = 449
    inherited gbTreeNode: TGroupBox
      Width = 449
      ExplicitWidth = 449
      inherited pnlTreeNode: TPanel
        Width = 433
        ExplicitWidth = 433
        inherited pnlTreeNodeName: TPanel
          Width = 286
          ExplicitWidth = 286
          inherited edtTreeNodeName: TDBEdit
            Width = 285
            ExplicitWidth = 285
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 286
          ExplicitLeft = 286
        end
        inherited pnlRightButtons: TPanel
          Left = 397
          ExplicitLeft = 397
        end
      end
    end
  end
  inherited alActions: TActionList [18]
    Left = 352
    Top = 272
    inherited actForm: TAction
      Caption = #1048#1079#1074#1098#1085#1088#1077#1076#1085#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' '#1074' '#1056#1072#1073#1086#1090#1085#1086' '#1055#1086#1074#1077#1076#1077#1085#1080#1077' - %s'
    end
    object actStorno: TAction
      Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077
      ImageIndex = 26
      OnExecute = actStornoExecute
    end
  end
  inherited dsData: TDataSource
    Left = 312
    Top = 272
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 280
    Top = 272
  end
end
