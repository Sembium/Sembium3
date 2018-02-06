inherited fmMLMSOperationSetup: TfmMLMSOperationSetup
  Left = 358
  Top = 176
  ActiveControl = frSetupEmployee.edtEmployeeNo
  Caption = #1054#1090#1095#1080#1090#1072#1085#1077' '#1085#1072' '#1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1085#1072' '#1054#1087#1077#1088#1072#1094#1080#1103
  ClientHeight = 559
  ClientWidth = 402
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 386
    Height = 508
  end
  inherited pnlBottomButtons: TPanel
    Top = 524
    Width = 402
    TabOrder = 3
    inherited pnlOKCancel: TPanel
      Left = 134
      TabOrder = 3
    end
    inherited pnlClose: TPanel
      Left = 45
      TabOrder = 2
    end
    inherited pnlApply: TPanel
      Left = 313
      TabOrder = 4
      Visible = False
    end
    object pnlStornoButton: TPanel
      Left = 0
      Top = 0
      Width = 105
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object btnStorno: TBitBtn
        Left = 8
        Top = 2
        Width = 97
        Height = 25
        Action = actStorno
        Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077
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
        TabOrder = 0
      end
    end
    object pnlBottomMiddleButtons: TPanel
      Left = 105
      Top = 0
      Width = 4
      Height = 35
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object pnlPrintCheck: TPanel
        Left = -147
        Top = 0
        Width = 62
        Height = 35
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object chbPrint: TCheckBox
          Left = 0
          Top = 6
          Width = 53
          Height = 17
          Caption = #1055#1077#1095#1072#1090
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
      end
      object pnlPrintButton: TPanel
        Left = -85
        Top = 0
        Width = 89
        Height = 35
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        object btnPrint: TBitBtn
          Left = 0
          Top = 2
          Width = 81
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
          Spacing = -1
          TabOrder = 0
        end
      end
    end
  end
  object gbMovementDateTime: TGroupBox [2]
    Left = 16
    Top = 14
    Width = 161
    Height = 59
    Caption = ' '#1044#1072#1090#1072' '#1080' '#1095#1072#1089' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lblMovementTime: TLabel
      Left = 112
      Top = 14
      Width = 22
      Height = 13
      Caption = #1095' : '#1084
      FocusControl = edtSetupTime
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblSetupDate: TLabel
      Left = 9
      Top = 14
      Width = 26
      Height = 13
      Caption = #1044#1072#1090#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edtSetupTime: TDBEdit
      Left = 112
      Top = 29
      Width = 41
      Height = 21
      DataField = 'SETUP_TIME'
      DataSource = dsData
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    inline frSetupDate: TfrDateFieldEditFrame
      Left = 8
      Top = 29
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
  object gbSale: TGroupBox [3]
    Left = 184
    Top = 14
    Width = 201
    Height = 59
    Caption = ' ID '#1054#1055#1042' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object lblSalePriority: TLabel
      Left = 104
      Top = 14
      Width = 40
      Height = 13
      Caption = #1054#1089#1085'.'#1055#1088'.'
      FocusControl = edtSalePriority
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblSaleWorkPriority: TLabel
      Left = 152
      Top = 14
      Width = 37
      Height = 13
      Caption = #1054#1087'. '#1055#1088'.'
      FocusControl = edtSaleWorkPriority
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edtSalePriority: TDBEdit
      Left = 104
      Top = 29
      Width = 41
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'SALE_PRIORITY_NO'
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
    object edtSaleNo: TDBEdit
      Left = 8
      Top = 29
      Width = 87
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'PRODUCTION_ORDER_IDENTIFIER'
      DataSource = dsData
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object edtSaleWorkPriority: TDBEdit
      Left = 152
      Top = 29
      Width = 41
      Height = 21
      TabStop = False
      Color = 15461355
      DataField = 'SALE_WORK_PRIORITY_NO'
      DataSource = dsData
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
  end
  object gbOperation: TGroupBox [4]
    Left = 16
    Top = 77
    Width = 369
    Height = 431
    Anchors = [akLeft, akTop, akBottom]
    Caption = ' '#1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1085#1072' '#1054#1087#1077#1088#1072#1094#1080#1103' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    DesignSize = (
      369
      431)
    object lblMllNo: TLabel
      Left = 8
      Top = 16
      Width = 71
      Height = 13
      Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1077#1085' '#8470
      FocusControl = edtMllNo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblForkNo: TLabel
      Left = 200
      Top = 16
      Width = 13
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1056#1082
      FocusControl = edtForkNo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblStage: TLabel
      Left = 224
      Top = 16
      Width = 38
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'ID '#1045#1090#1072#1087
      FocusControl = edtStage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblRemainingWorkdays: TLabel
      Left = 312
      Top = 16
      Width = 37
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1056#1077#1079#1077#1088#1074
      FocusControl = edtRemainingWorkdays
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblDetailName: TLabel
      Left = 8
      Top = 64
      Width = 36
      Height = 13
      Caption = 'ID '#1050#1057#1063
      FocusControl = edtDetailName
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblLineDetailTechQuantity: TLabel
      Left = 280
      Top = 64
      Width = 53
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1054#1073#1097#1086' '#1082'-'#1074#1086
      FocusControl = edtLineDetailTechQuantity
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object txtDetailTechMeasureAbbrev: TDBText
      Left = 331
      Top = 83
      Width = 33
      Height = 17
      Anchors = [akTop, akRight]
      DataField = 'DETAIL_TECH_MEASURE_ABBREV'
      DataSource = dsData
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object imgRemainingWorkdays: TImage
      Left = 312
      Top = 32
      Width = 21
      Height = 21
      Anchors = [akTop, akRight]
      Picture.Data = {
        07544269746D6170F6060000424DF606000000000000B6000000280000001400
        0000140000000100200000000000400600000000000000000000100000000000
        0000000000000000800000800000008080008000000080008000808000008080
        8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
        FF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000808080008080
        8000808080008080800080808000808080008080800080808000808080008080
        800080808000808080008080800080808000808080008080800080808000C0C0
        C000C0C0C0000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000080808000C0C0C000C0C0C000000000000000FF000000
        FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
        FF000000FF000000FF000000FF000000FF000000FF000000000080808000C0C0
        C000C0C0C000000000000000FF00000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000FF000000000080808000C0C0C000C0C0C000000000000000FF000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000000080808000C0C0
        C000C0C0C000000000000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00000000FF000000000080808000C0C0C000C0C0C000000000000000FF000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0000000000FFFFFF00FFFFFF00000000000000FF000000000080808000C0C0
        C000C0C0C000000000000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
        00000000FF000000000080808000C0C0C000C0C0C000000000000000FF000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000000080808000C0C0
        C000C0C0C000000000000000FF0000000000FFFFFF0000000000FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
        00000000FF000000000080808000C0C0C000C0C0C000000000000000FF000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000000080808000C0C0
        C000C0C0C000000000000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
        00000000FF000000000080808000C0C0C000C0C0C000000000000000FF000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0000000000FFFFFF00FFFFFF00000000000000FF000000000080808000C0C0
        C000C0C0C000000000000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
        00000000FF000000000080808000C0C0C000C0C0C000000000000000FF000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000000080808000C0C0
        C000C0C0C000000000000000FF00000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000FF000000000080808000C0C0C000C0C0C000000000000000FF000000
        FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
        FF000000FF000000FF000000FF000000FF000000FF000000000080808000C0C0
        C000C0C0C0000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000}
    end
    object lblOperation: TLabel
      Left = 8
      Top = 160
      Width = 64
      Height = 13
      Caption = 'ID '#1054#1087#1077#1088#1072#1094#1080#1103
      FocusControl = edtOperation
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edtMllNo: TDBEdit
      Left = 8
      Top = 32
      Width = 185
      Height = 21
      TabStop = False
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      DataField = 'NO_AS_TEXT'
      DataSource = dsData
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object edtForkNo: TDBEdit
      Left = 200
      Top = 32
      Width = 17
      Height = 21
      TabStop = False
      Anchors = [akTop, akRight]
      Color = clBtnFace
      DataField = 'FORK_NO'
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
    object edtStage: TDBEdit
      Left = 224
      Top = 32
      Width = 49
      Height = 21
      TabStop = False
      Anchors = [akTop, akRight]
      Color = clBtnFace
      DataField = 'MLMS_IDENTIFIER'
      DataSource = dsData
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object edtRemainingWorkdays: TDBEdit
      Left = 336
      Top = 32
      Width = 25
      Height = 21
      TabStop = False
      Anchors = [akTop, akRight]
      Color = 15395043
      DataField = 'MLMS_REMAINING_WORKDAYS'
      DataSource = dsData
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object edtDetailName: TDBEdit
      Left = 8
      Top = 80
      Width = 273
      Height = 21
      TabStop = False
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      DataField = 'DETAIL_NAME'
      DataSource = dsData
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object edtLineDetailTechQuantity: TDBEdit
      Left = 280
      Top = 80
      Width = 49
      Height = 21
      TabStop = False
      Anchors = [akTop, akRight]
      Color = 15395043
      DataField = 'LINE_DETAIL_TECH_QUANTITY'
      DataSource = dsData
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object edtOperation: TDBEdit
      Left = 8
      Top = 176
      Width = 321
      Height = 21
      TabStop = False
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      DataField = 'MLMSO_IDENTIFIER'
      DataSource = dsData
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object pnlFromBottom: TPanel
      Left = 2
      Top = 202
      Width = 365
      Height = 227
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelOuter = bvNone
      BorderWidth = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      object pnlOperationNotes: TPanel
        Left = 6
        Top = 183
        Width = 353
        Height = 38
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        DesignSize = (
          353
          38)
        object lblOperationNotes: TLabel
          Left = 0
          Top = 0
          Width = 50
          Height = 13
          Caption = #1050#1086#1084#1077#1085#1090#1072#1088
          FocusControl = edtOperationNotes
        end
        object edtOperationNotes: TDBEdit
          Left = 0
          Top = 16
          Width = 353
          Height = 21
          TabStop = False
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = 'NOTES'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnlFromEmployeeOrTeam: TPanel
        Left = 6
        Top = 64
        Width = 353
        Height = 118
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object gbEmployeeOrTeam: TGroupBox
          Left = 0
          Top = 0
          Width = 353
          Height = 113
          Align = alTop
          Caption = 'gbEmployeeOrTeam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object lblEmployee: TLabel
            Left = 8
            Top = 16
            Width = 49
            Height = 13
            Caption = #1057#1083#1091#1078#1080#1090#1077#1083
            FocusControl = frSetupEmployee
          end
          object lblSetupTeamName: TLabel
            Left = 7
            Top = 64
            Width = 25
            Height = 13
            Caption = #1045#1082#1080#1087
            FocusControl = cbSetupTeamName
          end
          object lblOr: TLabel
            Left = 167
            Top = 57
            Width = 18
            Height = 13
            Caption = #1080#1083#1080
          end
          object edtSetupTeamCode: TDBEdit
            Left = 8
            Top = 80
            Width = 56
            Height = 21
            DataField = 'SETUP_TEAM_CODE'
            DataSource = dsData
            TabOrder = 1
          end
          inline frSetupEmployee: TfrEmployeeFieldEditFrameBald
            Left = 8
            Top = 32
            Width = 337
            Height = 22
            HorzScrollBar.Visible = False
            VertScrollBar.Visible = False
            Constraints.MaxHeight = 22
            Constraints.MinHeight = 22
            TabOrder = 0
            TabStop = True
            inherited gbEmployee: TGroupBox
              Width = 356
              inherited pnlEmployeeName: TPanel
                Width = 281
                inherited pnlRightButtons: TPanel
                  Left = 245
                end
                inherited pnlEmpoyeeNameInner: TPanel
                  Width = 245
                  inherited edtEmployeeName: TDBEdit
                    Width = 199
                  end
                  inherited cbEmployee: TJvDBLookupCombo
                    Width = 244
                  end
                end
              end
              inherited pnlPaddingRight: TPanel
                Left = 346
              end
            end
            inherited cdsEmployees: TAbmesClientDataSet
              OnFilterRecord = frSetupEmployeecdsEmployeesFilterRecord
            end
          end
          object cbSetupTeamName: TJvDBLookupCombo
            Left = 65
            Top = 80
            Width = 280
            Height = 21
            DataField = '_SETUP_TEAM_NAME'
            DataSource = dsData
            DisplayEmpty = ' '
            TabOrder = 2
          end
        end
      end
      object pnlSetupCount: TPanel
        Left = 6
        Top = 6
        Width = 353
        Height = 58
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object gbSetupCount: TGroupBox
          Left = 0
          Top = 0
          Width = 353
          Height = 53
          Align = alTop
          Caption = ' '#1041#1088#1086#1081' '#1085#1072#1089#1090#1088#1086#1081#1082#1080' '
          TabOrder = 0
          object lblSetupCount: TLabel
            Left = 144
            Top = 9
            Width = 26
            Height = 13
            Caption = #1055#1083#1072#1085
            FocusControl = edtSetupCount
          end
          object lblDoneSetupCount: TLabel
            Left = 248
            Top = 9
            Width = 29
            Height = 13
            Caption = #1054#1090#1095#1077#1090
            FocusControl = edtDoneSetupCount
          end
          object edtSetupCount: TDBEdit
            Left = 144
            Top = 24
            Width = 97
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'SETUP_COUNT'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 0
          end
          object edtDoneSetupCount: TDBEdit
            Left = 248
            Top = 24
            Width = 97
            Height = 21
            DataField = 'DONE_SETUP_COUNT'
            DataSource = dsData
            TabOrder = 1
          end
        end
      end
    end
    object pnlProduct: TPanel
      Left = 8
      Top = 112
      Width = 359
      Height = 41
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 6
      DesignSize = (
        359
        41)
      object lblProductName: TLabel
        Left = 0
        Top = 0
        Width = 37
        Height = 13
        Caption = 'ID '#1053#1057#1063
        FocusControl = edtProductName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblTotalProductTechQuantity: TLabel
        Left = 272
        Top = 0
        Width = 53
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1054#1073#1097#1086' '#1082'-'#1074#1086
        FocusControl = edtTotalProductTechQuantity
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object txtProductTechMeasureAbbrev: TDBText
        Left = 323
        Top = 20
        Width = 33
        Height = 17
        Anchors = [akTop, akRight]
        DataField = 'PRODUCT_TECH_MEASURE_ABBREV'
        DataSource = dsData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object edtProductName: TDBEdit
        Left = 0
        Top = 16
        Width = 273
        Height = 21
        TabStop = False
        Anchors = [akLeft, akTop, akRight]
        Color = clBtnFace
        DataField = 'PRODUCT_NAME'
        DataSource = dsData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object edtTotalProductTechQuantity: TDBEdit
        Left = 272
        Top = 16
        Width = 49
        Height = 21
        TabStop = False
        Anchors = [akTop, akRight]
        Color = 15395043
        DataField = 'TOTAL_PRODUCT_TECH_QUANTITY'
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
    end
    object tlbStageDocs: TToolBar
      Left = 273
      Top = 31
      Width = 36
      Height = 22
      Align = alNone
      AutoSize = True
      ButtonWidth = 36
      EdgeInner = esNone
      Images = dmMain.ilDocs
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      object btnStageDocs: TToolButton
        Left = 0
        Top = 0
        Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' ID '#1045#1090#1072#1087#1072
        ImageIndex = 1
        OnClick = btnStageDocsClick
      end
    end
    object tlbOperationDocs: TToolBar
      Left = 329
      Top = 175
      Width = 36
      Height = 22
      Align = alNone
      AutoSize = True
      ButtonWidth = 36
      EdgeInner = esNone
      Images = dmMain.ilDocs
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      object btnOperationDocs: TToolButton
        Left = 0
        Top = 0
        Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' ID '#1054#1087#1077#1088#1072#1094#1080#1103#1090#1072
        ImageIndex = 1
        OnClick = btnOperationDocsClick
      end
    end
  end
  inherited alActions: TActionList
    Left = 232
    Top = 264
    inherited actForm: TAction
      Caption = #1054#1090#1095#1080#1090#1072#1085#1077' '#1085#1072' '#1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1085#1072' '#1054#1087#1077#1088#1072#1094#1080#1103
    end
    object actStorno: TAction
      Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077
      ImageIndex = 26
      OnExecute = actStornoExecute
    end
  end
  inherited dsData: TDataSource
    OnDataChange = dsDataDataChange
    Left = 128
    Top = 176
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conModelMovements
    Params = <
      item
        DataType = ftFloat
        Name = 'MLMSO_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMSO_OBJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvMLMSOperationSetup'
    BeforeClose = cdsDataBeforeClose
    BeforePost = cdsDataBeforePost
    OnCalcFields = cdsDataCalcFields
    Left = 96
    Top = 176
    object cdsDataMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMSO_OBJECT_BRANCH_CODE'
    end
    object cdsDataMLMSO_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLMSO_OBJECT_CODE'
    end
    object cdsDataSETUP_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'SETUP_EMPLOYEE_CODE'
    end
    object cdsDataSETUP_TEAM_CODE: TAbmesFloatField
      FieldName = 'SETUP_TEAM_CODE'
    end
    object cdsDataSETUP_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'SETUP_PROFESSION_CODE'
    end
    object cdsDataSETUP_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1085#1072#1089#1090#1088#1086#1081#1082#1072
      FieldName = 'SETUP_DATE'
      OnChange = cdsDataSETUP_DATEChange
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object cdsDataSETUP_TIME: TAbmesSQLTimeStampField
      DisplayLabel = #1063#1072#1089' '#1085#1072' '#1085#1072#1089#1090#1088#1086#1081#1082#1072
      FieldName = 'SETUP_TIME'
      DisplayFormat = 'h:nn'
      AbmesEditFormat = 'h:nn'
    end
    object cdsDataSETUP_COUNT: TAbmesFloatField
      FieldName = 'SETUP_COUNT'
    end
    object cdsDataDONE_SETUP_COUNT: TAbmesFloatField
      DisplayLabel = #1041#1088#1086#1081' '#1085#1072#1089#1090#1088#1086#1081#1082#1080' - '#1054#1090#1095#1077#1090
      FieldName = 'DONE_SETUP_COUNT'
      MaxValue = 999.000000000000000000
      MinValue = 1.000000000000000000
      FieldValueType = fvtInteger
    end
    object cdsDataPRODUCTION_ORDER_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PRODUCTION_ORDER_IDENTIFIER'
      Size = 188
    end
    object cdsDataSALE_PRIORITY_NO: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'SALE_PRIORITY_NO'
    end
    object cdsDataSALE_PRIORITY_COLOR: TAbmesFloatField
      FieldName = 'SALE_PRIORITY_COLOR'
    end
    object cdsDataSALE_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'SALE_PRIORITY_BACKGROUND_COLOR'
    end
    object cdsDataSALE_WORK_PRIORITY_NO: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'SALE_WORK_PRIORITY_NO'
    end
    object cdsDataNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      Size = 100
    end
    object cdsDataFORK_NO: TAbmesFloatField
      FieldName = 'FORK_NO'
    end
    object cdsDataMLMS_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MLMS_IDENTIFIER'
      Size = 87
    end
    object cdsDataMLMS_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMS_DOC_BRANCH_CODE'
    end
    object cdsDataMLMS_DOC_CODE: TAbmesFloatField
      FieldName = 'MLMS_DOC_CODE'
    end
    object cdsDataMLMS_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'MLMS_HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsDataMLMS_REMAINING_WORKDAYS: TAbmesFloatField
      FieldName = 'MLMS_REMAINING_WORKDAYS'
    end
    object cdsDataDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object cdsDataDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      Size = 100
    end
    object cdsDataLINE_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'LINE_DETAIL_TECH_QUANTITY'
    end
    object cdsDataDETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'DETAIL_TECH_MEASURE_ABBREV'
      Size = 5
    end
    object cdsDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsDataPRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_QUANTITY'
    end
    object cdsDataPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsDataTOTAL_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_PRODUCT_TECH_QUANTITY'
    end
    object cdsDataPRODUCT_TECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'PRODUCT_TECH_MEASURE_ABBREV'
      Size = 5
    end
    object cdsDataMLMSO_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MLMSO_IDENTIFIER'
      Size = 184
    end
    object cdsDataMLMS_OPERATION_VARIANT_NO: TAbmesFloatField
      FieldName = 'MLMS_OPERATION_VARIANT_NO'
      Required = True
    end
    object cdsDataMLMSO_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMSO_DOC_BRANCH_CODE'
    end
    object cdsDataMLMSO_DOC_CODE: TAbmesFloatField
      FieldName = 'MLMSO_DOC_CODE'
    end
    object cdsDataMLMSO_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'MLMSO_HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsDataSETUP_PROFESSION_NAME: TAbmesWideStringField
      FieldName = 'SETUP_PROFESSION_NAME'
      Size = 100
    end
    object cdsDataSETUP_PROF_USED_BY_EMPLOYEES: TAbmesFloatField
      FieldName = 'SETUP_PROF_USED_BY_EMPLOYEES'
      FieldValueType = fvtBoolean
    end
    object cdsDataSETUP_PROF_USED_BY_TEAMS: TAbmesFloatField
      FieldName = 'SETUP_PROF_USED_BY_TEAMS'
      FieldValueType = fvtBoolean
    end
    object cdsDataNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsDataSETUP_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'SETUP_EMPLOYEE_NAME'
      Size = 41
    end
    object cdsDataSETUP_TEAM_NAME: TAbmesWideStringField
      FieldName = 'SETUP_TEAM_NAME'
      Size = 50
    end
    object cdsDataDEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_BEGIN_DATE'
    end
    object cdsDataDEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEPT_END_DATE'
    end
    object cdsDataDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object cdsDataHAS_MOVEMENTS: TAbmesFloatField
      FieldName = 'HAS_MOVEMENTS'
      FieldValueType = fvtBoolean
    end
    object cdsData_SETUP_EMPLOYEE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SETUP_EMPLOYEE_NAME'
      LookupDataSet = frSetupEmployee.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NAME'
      KeyFields = 'SETUP_EMPLOYEE_CODE'
      Size = 50
      Lookup = True
    end
    object cdsData_SETUP_TEAM_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SETUP_TEAM_NAME'
      LookupDataSet = cdsProfessionEmployeeMonthTeams
      LookupKeyFields = 'TEAM_CODE'
      LookupResultField = 'TEAM_NAME'
      KeyFields = 'SETUP_TEAM_CODE'
      Size = 50
      Lookup = True
    end
    object cdsData_SETUP_EMPLOYEE_OR_TEAM_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SETUP_EMPLOYEE_OR_TEAM_NAME'
      Size = 50
      Calculated = True
    end
    object cdsData_SETUP_EMPLOYEE_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_SETUP_EMPLOYEE_NO'
      LookupDataSet = frSetupEmployee.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NO'
      KeyFields = 'SETUP_EMPLOYEE_CODE'
      Lookup = True
    end
  end
  object cdsProfessionEmployeeMonthTeams: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conModelMovements
    Params = <
      item
        DataType = ftFloat
        Name = 'PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'prvProfessionEmployeeMonthTeams'
    BeforeOpen = cdsProfessionEmployeeMonthTeamsBeforeOpen
    OnFilterRecord = cdsProfessionEmployeeMonthTeamsFilterRecord
    Left = 160
    Top = 176
    object cdsProfessionEmployeeMonthTeamsTEAM_CODE: TAbmesFloatField
      FieldName = 'TEAM_CODE'
    end
    object cdsProfessionEmployeeMonthTeamsTEAM_NAME: TAbmesWideStringField
      FieldName = 'TEAM_NAME'
      Size = 50
    end
    object cdsProfessionEmployeeMonthTeamsHAS_THE_PROFESSION: TAbmesFloatField
      FieldName = 'HAS_THE_PROFESSION'
      FieldValueType = fvtBoolean
    end
    object cdsProfessionEmployeeMonthTeamsHAS_THE_EMPLOYEE: TAbmesFloatField
      FieldName = 'HAS_THE_EMPLOYEE'
      FieldValueType = fvtBoolean
    end
  end
  object smrSetup: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      #1044#1086#1082#1091#1084#1077#1085#1090' '#1079#1072' '#1086#1090#1095#1080#1090#1072#1085#1077' '#1085#1072' '#1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1085#1072' '#1054#1087#1077#1088#1072#1094#1080#1103
      
        '================================================================' +
        '==============================='
      
        #1044#1072#1090#1072' '#1080' '#1095#1072#1089': [SETUP_DATE:10:L] [SETUP_TIME:5:L]       ID '#1054#1055#1042': [__' +
        'SALE_IDENTIFIER:19:L]'
      
        '== '#1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1085#1072' '#1054#1087#1077#1088#1072#1094#1080#1103' =======================================' +
        '==============================='
      
        '[__NO_AS_TEXT_AND_FORK:25:L] [MLMS_IDENTIFIER:9:L] '#1088#1079#1088#1074':[MLMS_RE' +
        'MAINING_WORKDAYS:5:R] | '#1041#1088#1086#1081' '#1085#1072#1089#1090#1088#1086#1081#1082#1080':     '#1055#1083#1072#1085': [SETUP_COUNT:3' +
        ':R]     '#1054#1090#1095#1077#1090': [DONE_SETUP_COUNT:3:R]'
      
        '--ID '#1050#1057#1063'/ID '#1053#1057#1063'---------------------'#1089#1090#1088'. '#1082'-'#1074#1086'--|--[__SETUP_PROFE' +
        'SSION_NAME:43:L]--'
      
        '[DETAIL_NAME:31:L] [LINE_DETAIL_TECH_QUANTITY:9:R] [DETAIL_TECH_' +
        'MEASURE_ABBREV:5:L]|ID '#1054#1087#1077#1088#1072#1090#1086#1088': [_SETUP_EMPLOYEE_NO:6:L] [SETUP' +
        '_EMPLOYEE_NAME:27:L]'
      
        '[PRODUCT_NAME:31:L] [TOTAL_PRODUCT_TECH_QUANTITY:9:R] [PRODUCT_T' +
        'ECH_MEASURE_ABBREV:5:L]|ID '#1045#1082#1080#1087'    : [SETUP_TEAM_CODE:6:L] [SETU' +
        'P_TEAM_NAME:27:L]'
      
        '--ID '#1054#1087#1077#1088#1072#1094#1080#1103'----------------------------------|--'#1050#1086#1084#1077#1085#1090#1072#1088'------' +
        '-------------------------------'
      '[MLMSO_IDENTIFIER:47:L]|[NOTES:47:L]'
      
        '----------------------------------------------------------------' +
        '-------------------------------'
      
        #1054#1090#1087#1077#1095#1072#1090#1072#1085#1086' '#1086#1090' [AppName:0:L] '#1085#1072' [%DATETIME%:19:L]               [' +
        'COMPANY_SHORT_NAME:36:R]'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    CurrentRecordOnly = True
    StrictFieldWidths = False
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    OnGetFieldValues = smrSetupGetFieldValues
    Left = 272
    Top = 520
  end
end
