inherited fmEmployeeDateAvailabilityMovement: TfmEmployeeDateAvailabilityMovement
  Left = 344
  Top = 233
  ActiveControl = frMovementTime.edtTime
  Caption = #1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077' '#1085#1072' '#1042#1093#1086#1076'/'#1048#1079#1093#1086#1076' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083
  ClientHeight = 268
  ClientWidth = 521
  ExplicitWidth = 527
  ExplicitHeight = 293
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 505
    Height = 217
    ExplicitWidth = 505
    ExplicitHeight = 217
  end
  object lblMovementDate: TLabel [1]
    Left = 24
    Top = 24
    Width = 26
    Height = 13
    Caption = #1044#1072#1090#1072
    FocusControl = frMovementDate
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblMovementTime: TLabel [2]
    Left = 144
    Top = 24
    Width = 20
    Height = 13
    Caption = #1063#1072#1089
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblInOut: TLabel [3]
    Left = 400
    Top = 24
    Width = 19
    Height = 13
    Caption = #1042#1080#1076
  end
  inherited pnlBottomButtons: TPanel
    Top = 233
    Width = 521
    TabOrder = 5
    ExplicitTop = 233
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
  inline frMovementDate: TfrDateFieldEditFrame [5]
    Left = 24
    Top = 40
    Width = 105
    Height = 21
    Constraints.MaxHeight = 21
    Constraints.MaxWidth = 105
    Constraints.MinHeight = 21
    Constraints.MinWidth = 105
    TabOrder = 0
    TabStop = True
    ExplicitLeft = 24
    ExplicitTop = 40
  end
  object gbCreateInfo: TGroupBox [6]
    Left = 24
    Top = 72
    Width = 473
    Height = 65
    Caption = ' '#1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077' '
    TabOrder = 3
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
  object gbStornoInfo: TGroupBox [7]
    Left = 24
    Top = 144
    Width = 473
    Height = 65
    Caption = ' '#1040#1085#1091#1083#1080#1088#1072#1085#1077' '
    TabOrder = 4
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
  object cbInOut: TJvDBComboBox [8]
    Left = 400
    Top = 40
    Width = 97
    Height = 21
    DataField = 'IN_OUT'
    DataSource = dsData
    Anchors = [akLeft, akTop, akRight]
    ItemHeight = 13
    Items.Strings = (
      #1042#1093#1086#1076
      #1048#1079#1093#1086#1076)
    TabOrder = 2
    Values.Strings = (
      '1'
      '-1')
  end
  inline frMovementTime: TfrTimeFieldEditFrame [9]
    Left = 144
    Top = 40
    Width = 104
    Height = 21
    TabOrder = 1
    TabStop = True
    ExplicitLeft = 144
    ExplicitTop = 40
    inherited edtTime: TDBDateTimeEditEh
      EditFormat = 'HH:NN'
    end
  end
  object tlbClearMovementTime: TToolBar [10]
    Left = 185
    Top = 40
    Width = 23
    Height = 22
    Align = alNone
    AutoSize = True
    Images = dmMain.ilActions
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    object btnSetNowToMovementTime: TToolButton
      Left = 0
      Top = 0
      Action = actSetNowToMovementTime
    end
  end
  inherited alActions: TActionList [11]
    Left = 256
    inherited actForm: TAction
      Caption = #1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077' '#1085#1072' '#1042#1093#1086#1076'/'#1048#1079#1093#1086#1076' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083
    end
    object actStorno: TAction
      Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077
      Hint = #1040#1085#1091#1083#1080#1088#1072#1085#1077
      ImageIndex = 26
      OnExecute = actStornoExecute
    end
    object actSetNowToMovementTime: TAction
      Hint = #1057#1077#1075#1072
      ImageIndex = 118
      OnExecute = actSetNowToMovementTimeExecute
      OnUpdate = actSetNowToMovementTimeUpdate
    end
  end
  inherited dsData: TDataSource
    Left = 224
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 192
  end
end
