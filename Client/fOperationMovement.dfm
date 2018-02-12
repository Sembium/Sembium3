inherited fmOperationMovement: TfmOperationMovement
  Left = 267
  Top = 194
  ActiveControl = frFromEmployee.edtEmployeeNo
  Caption = #1044#1074#1080#1078#1077#1085#1080#1077' '#1087#1086' '#1056'-'#1052#1054#1044#1045#1083
  ClientHeight = 508
  ClientWidth = 792
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Left = 232
    Top = 376
    Width = 16
    Height = 1
    Visible = False
  end
  inherited pnlBottomButtons: TPanel
    Top = 473
    Width = 792
    TabOrder = 6
    inherited pnlOKCancel: TPanel
      Left = 524
      TabOrder = 5
    end
    inherited pnlClose: TPanel
      Left = 344
      TabOrder = 7
    end
    inherited pnlApply: TPanel
      Left = 703
      TabOrder = 6
      Visible = False
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
    object pnlStorned: TPanel
      Left = 104
      Top = 0
      Width = 97
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 1
      object CheckBox: TCheckBox
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
    object pnlExceptEvent: TPanel
      Left = 201
      Top = 0
      Width = 165
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 2
      object btnExceptEvent: TBitBtn
        Left = 8
        Top = 2
        Width = 153
        Height = 25
        Action = actExceptEvent
        Caption = #1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103'...'
        TabOrder = 0
      end
    end
    object pnlReloadOperationMovement: TPanel
      Left = 433
      Top = 0
      Width = 91
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      object chkReloadOperationMovement: TCheckBox
        Left = 0
        Top = 6
        Width = 89
        Height = 17
        Hint = #1055#1086#1074#1090#1086#1088#1085#1086' '#1086#1090#1074#1072#1088#1103#1085#1077' '#1085#1072' '#1044#1074#1080#1078#1077#1085#1080#1077' '#1089#1083#1077#1076' '#1085#1072#1090#1080#1089#1082#1072#1085#1077' '#1085#1072' '#1054#1050
        Caption = #1054#1090#1074'. '#1089#1083#1077#1076' '#1054#1050
        TabOrder = 0
      end
    end
    object pnlPrint: TPanel
      Left = 366
      Top = 0
      Width = 67
      Height = 35
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 3
      object pnlPrintButton: TPanel
        Left = -84
        Top = 0
        Width = 89
        Height = 35
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object btnPrint: TBitBtn
          Left = 0
          Top = 2
          Width = 81
          Height = 25
          Action = actPrint
          Caption = #1055#1077#1095#1072#1090
          Spacing = -1
          TabOrder = 0
        end
      end
      object pnlPrintCheck: TPanel
        Left = 5
        Top = 0
        Width = 62
        Height = 35
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
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
    end
  end
  object pnlHeader: TPanel [2]
    Left = 8
    Top = 8
    Width = 777
    Height = 73
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    object gbSale: TGroupBox
      Left = 560
      Top = 5
      Width = 209
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
        Left = 112
        Top = 15
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
        Left = 160
        Top = 15
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
      object edtSaleNo: TDBEdit
        Left = 10
        Top = 29
        Width = 95
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'PRODUCTION_ORDER_IDENTIFIER'
        DataSource = dsHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object edtSalePriority: TDBEdit
        Left = 112
        Top = 29
        Width = 41
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'SALE_PRIORITY_NO'
        DataSource = dsHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object edtSaleWorkPriority: TDBEdit
        Left = 160
        Top = 29
        Width = 41
        Height = 21
        TabStop = False
        Color = 15461355
        DataField = 'SALE_WORK_PRIORITY_NO'
        DataSource = dsHeader
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
    object gbIdentification: TGroupBox
      Left = 8
      Top = 5
      Width = 545
      Height = 59
      Caption = ' ID '#1044#1074#1080#1078#1077#1085#1080#1077' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        545
        59)
      object lblMovementBranchNo: TLabel
        Left = 8
        Top = 14
        Width = 33
        Height = 13
        Caption = #1058#1055' '#1043#1083'.'
        FocusControl = edtMovementBranchNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblMovementNo: TLabel
        Left = 66
        Top = 14
        Width = 14
        Height = 13
        Caption = 'No'
        FocusControl = edtMovementNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblMovementDate: TLabel
        Left = 137
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
      object lblMovementTime: TLabel
        Left = 248
        Top = 14
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
      object lblMovementType: TLabel
        Left = 313
        Top = 14
        Width = 75
        Height = 13
        Caption = #1042#1080#1076' '#1044#1074#1080#1078#1077#1085#1080#1077
        FocusControl = edtMovementType
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblAutoMovement: TLabel
        Left = 378
        Top = 13
        Width = 118
        Height = 14
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1085#1086
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object edtMovementBranchNo: TDBEdit
        Left = 8
        Top = 29
        Width = 49
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = '_OM_BRANCH_NO'
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
      object edtMovementNo: TDBEdit
        Left = 64
        Top = 29
        Width = 65
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'OM_NO'
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
      inline frMovementDate: TfrDateFieldEditFrame
        Left = 136
        Top = 29
        Width = 105
        Height = 21
        Constraints.MaxHeight = 21
        Constraints.MaxWidth = 105
        Constraints.MinHeight = 21
        Constraints.MinWidth = 105
        TabOrder = 2
        TabStop = True
      end
      object edtMovementTime: TDBEdit
        Left = 248
        Top = 29
        Width = 41
        Height = 21
        DataField = 'OM_TIME'
        DataSource = dsData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object edtMovementType: TDBEdit
        Left = 312
        Top = 29
        Width = 185
        Height = 21
        TabStop = False
        Anchors = [akLeft, akTop, akRight]
        Color = clBtnFace
        DataField = '_OMT_TYPE_AND_NAME'
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
      object tlbMovementDocs: TToolBar
        Left = 502
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
        TabOrder = 5
        object btnMovementDocs: TToolButton
          Left = 0
          Top = 0
          Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' ID '#1044#1074#1080#1078#1077#1085#1080#1077#1090#1086
          ImageIndex = 1
          OnClick = btnMovementDocsClick
        end
      end
    end
  end
  object pnlFrom: TPanel [3]
    Left = 8
    Top = 88
    Width = 297
    Height = 377
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 3
    DesignSize = (
      297
      377)
    object gbFrom: TGroupBox
      Left = 8
      Top = 5
      Width = 281
      Height = 364
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = ' '#1054#1058' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        281
        364)
      object lblFromMllNo: TLabel
        Left = 8
        Top = 16
        Width = 74
        Height = 13
        Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1077#1085' No'
        FocusControl = edtFromMllNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblFromForkNo: TLabel
        Left = 112
        Top = 16
        Width = 13
        Height = 13
        Caption = #1056#1082
        FocusControl = edtFromForkNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblFromStage: TLabel
        Left = 136
        Top = 16
        Width = 38
        Height = 13
        Caption = 'ID '#1045#1090#1072#1087
        FocusControl = edtFromStage
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblFromRemainingWorkdays: TLabel
        Left = 224
        Top = 16
        Width = 37
        Height = 13
        Caption = #1056#1077#1079#1077#1088#1074
        FocusControl = edtFromRemainingWorkdays
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblFromDetailName: TLabel
        Left = 8
        Top = 64
        Width = 36
        Height = 13
        Caption = 'ID '#1050#1057#1063
        FocusControl = edtFromDetailName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblFromLineDetailTechQuantity: TLabel
        Left = 192
        Top = 64
        Width = 53
        Height = 13
        Caption = #1054#1073#1097#1086' '#1082'-'#1074#1086
        FocusControl = edtFromLineDetailTechQuantity
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object txtFromDetailTechMeasureAbbrev: TDBText
        Left = 243
        Top = 83
        Width = 33
        Height = 17
        DataField = 'FROM_DETAIL_TECH_MEASURE_ABB'
        DataSource = dsHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object imgFromRemainingWorkdays: TImage
        Left = 224
        Top = 32
        Width = 21
        Height = 21
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
      object lblFromOperation: TLabel
        Left = 8
        Top = 160
        Width = 64
        Height = 13
        Caption = 'ID '#1054#1087#1077#1088#1072#1094#1080#1103
        FocusControl = edtFromOperation
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object edtFromMllNo: TDBEdit
        Left = 8
        Top = 32
        Width = 105
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'FROM_MLL_NO_AS_TEXT'
        DataSource = dsHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object edtFromForkNo: TDBEdit
        Left = 112
        Top = 32
        Width = 17
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'FROM_MLL_FORK_NO'
        DataSource = dsHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object edtFromStage: TDBEdit
        Left = 136
        Top = 32
        Width = 49
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'FROM_STAGE_IDENTIFIER'
        DataSource = dsHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object edtFromRemainingWorkdays: TDBEdit
        Left = 248
        Top = 32
        Width = 25
        Height = 21
        TabStop = False
        Color = 15395043
        DataField = 'FROM_MLMS_REMAINING_WORKDAYS'
        DataSource = dsHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object edtFromDetailName: TDBEdit
        Left = 8
        Top = 80
        Width = 185
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'FROM_DETAIL_NAME'
        DataSource = dsHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object edtFromLineDetailTechQuantity: TDBEdit
        Left = 192
        Top = 80
        Width = 49
        Height = 21
        TabStop = False
        Color = 15395043
        DataField = 'FROM_LINE_DETAIL_TECH_QUANTITY'
        DataSource = dsHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object edtFromOperation: TDBEdit
        Left = 8
        Top = 176
        Width = 233
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'FROM_MLMS_OPERATION_IDENTIFIER'
        DataSource = dsHeader
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
        Width = 277
        Height = 160
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
        object pnlFromOperationNotes: TPanel
          Left = 6
          Top = 116
          Width = 265
          Height = 38
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object lblFromOperationNotes: TLabel
            Left = 0
            Top = 0
            Width = 50
            Height = 13
            Caption = #1050#1086#1084#1077#1085#1090#1072#1088
            FocusControl = edtFromOperationNotes
          end
          object edtFromOperationNotes: TDBEdit
            Left = 0
            Top = 16
            Width = 265
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'FROM_NOTES'
            DataSource = dsHeader
            ReadOnly = True
            TabOrder = 0
          end
        end
        object pnlFromEmployeeOrTeam: TPanel
          Left = 6
          Top = 6
          Width = 265
          Height = 110
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          BevelOuter = bvNone
          TabOrder = 0
          object gbFromEmployeeOrTeam: TGroupBox
            Left = 0
            Top = 0
            Width = 265
            Height = 105
            Align = alTop
            Caption = 'gbFromEmployeeOrTeam'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object lblFromEmployeeCode: TLabel
              Left = 8
              Top = 16
              Width = 63
              Height = 13
              Caption = 'ID '#1054#1087#1077#1088#1072#1090#1086#1088
              FocusControl = frFromEmployee
            end
            object lblFromTeamCode: TLabel
              Left = 8
              Top = 56
              Width = 39
              Height = 13
              Caption = 'ID '#1045#1082#1080#1087
              FocusControl = edtFromTeamCode
            end
            object edtFromTeamCode: TDBEdit
              Left = 8
              Top = 72
              Width = 56
              Height = 21
              DataField = 'FROM_TEAM_CODE'
              DataSource = dsData
              TabOrder = 1
            end
            object cbFromTeamName: TJvDBLookupCombo
              Left = 65
              Top = 72
              Width = 192
              Height = 21
              DeleteKeyClear = False
              DataField = '_FROM_TEAM_NAME'
              DataSource = dsData
              DisplayEmpty = ' '
              TabOrder = 2
            end
            inline frFromEmployee: TfrEmployeeFieldEditFrameBald
              Left = 8
              Top = 32
              Width = 251
              Height = 22
              HorzScrollBar.Visible = False
              VertScrollBar.Visible = False
              Constraints.MaxHeight = 22
              Constraints.MinHeight = 22
              TabOrder = 0
              TabStop = True
              DesignSize = (
                251
                22)
              inherited gbEmployee: TGroupBox
                Width = 270
                inherited pnlEmployeeName: TPanel
                  Width = 195
                  inherited pnlRightButtons: TPanel
                    Left = 159
                  end
                  inherited pnlEmpoyeeNameInner: TPanel
                    Width = 159
                    DesignSize = (
                      159
                      32)
                    inherited edtEmployeeName: TDBEdit
                      Width = 113
                    end
                    inherited cbEmployee: TJvDBLookupCombo
                      Width = 158
                    end
                  end
                end
                inherited pnlPaddingRight: TPanel
                  Left = 260
                end
              end
              inherited cdsEmployees: TAbmesClientDataSet
                OnFilterRecord = frFromEmployeecdsEmployeesFilterRecord
              end
            end
          end
        end
      end
      object pnlFromProduct: TPanel
        Left = 8
        Top = 112
        Width = 271
        Height = 41
        BevelOuter = bvNone
        TabOrder = 6
        object lblFromProductName: TLabel
          Left = 0
          Top = 0
          Width = 37
          Height = 13
          Caption = 'ID '#1053#1057#1063
          FocusControl = edtFromProductName
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblFromTotalProductTechQuantity: TLabel
          Left = 184
          Top = 0
          Width = 53
          Height = 13
          Caption = #1054#1073#1097#1086' '#1082'-'#1074#1086
          FocusControl = edtFromTotalProductTechQuantity
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object txtFromProductTechMeasureAbbrev: TDBText
          Left = 235
          Top = 20
          Width = 33
          Height = 17
          DataField = 'FROM_PRODUCT_TECH_MEASURE_ABB'
          DataSource = dsHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object edtFromProductName: TDBEdit
          Left = 0
          Top = 16
          Width = 185
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'FROM_PRODUCT_NAME'
          DataSource = dsHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtFromTotalProductTechQuantity: TDBEdit
          Left = 184
          Top = 16
          Width = 49
          Height = 21
          TabStop = False
          Color = 15395043
          DataField = 'FROM_TOTAL_PRODUCT_TECH_QTY'
          DataSource = dsHeader
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
      object tlbFromStageDocs: TToolBar
        Left = 185
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
        object btnFromStageDocs: TToolButton
          Left = 0
          Top = 0
          Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' ID '#1045#1090#1072#1087#1072
          ImageIndex = 1
          OnClick = btnFromStageDocsClick
        end
      end
      object tlbFromOperationDocs: TToolBar
        Left = 241
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
        object btnFromOperationDocs: TToolButton
          Left = 0
          Top = 0
          Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' ID '#1054#1087#1077#1088#1072#1094#1080#1103#1090#1072
          ImageIndex = 1
          OnClick = btnFromOperationDocsClick
        end
      end
    end
  end
  object pnlTo: TPanel [4]
    Left = 488
    Top = 88
    Width = 297
    Height = 377
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 5
    DesignSize = (
      297
      377)
    object gbTo: TGroupBox
      Left = 8
      Top = 5
      Width = 281
      Height = 364
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = ' '#1050#1066#1052' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        281
        364)
      object pnlToBottom: TPanel
        Left = 2
        Top = 202
        Width = 277
        Height = 160
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        BorderWidth = 6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object pnlToOperationNotes: TPanel
          Left = 6
          Top = 116
          Width = 265
          Height = 38
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          object lblToOperationNotes: TLabel
            Left = 0
            Top = 0
            Width = 50
            Height = 13
            Caption = #1050#1086#1084#1077#1085#1090#1072#1088
            FocusControl = edtToOperationNotes
          end
          object edtToOperationNotes: TDBEdit
            Left = 0
            Top = 16
            Width = 265
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'TO_NOTES'
            DataSource = dsHeader
            ReadOnly = True
            TabOrder = 0
          end
        end
        object pnlToEmployeeOrTeam: TPanel
          Left = 6
          Top = 207
          Width = 265
          Height = 110
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          BevelOuter = bvNone
          TabOrder = 0
          object gbToEmployeeOrTeam: TGroupBox
            Left = 0
            Top = 0
            Width = 265
            Height = 105
            Align = alTop
            Caption = 'gbToEmployeeOrTeam'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object lblToEmployeeCode: TLabel
              Left = 8
              Top = 16
              Width = 63
              Height = 13
              Caption = 'ID '#1054#1087#1077#1088#1072#1090#1086#1088
              FocusControl = frToEmployee
            end
            object lblToTeamCode: TLabel
              Left = 8
              Top = 56
              Width = 39
              Height = 13
              Caption = 'ID '#1045#1082#1080#1087
              FocusControl = edtToTeamCode
            end
            object edtToTeamCode: TDBEdit
              Left = 8
              Top = 72
              Width = 56
              Height = 21
              DataField = 'TO_TEAM_CODE'
              DataSource = dsData
              TabOrder = 1
            end
            object cbToTeamName: TJvDBLookupCombo
              Left = 65
              Top = 72
              Width = 192
              Height = 21
              DeleteKeyClear = False
              DataField = '_TO_TEAM_NAME'
              DataSource = dsData
              TabOrder = 2
            end
            inline frToEmployee: TfrEmployeeFieldEditFrameBald
              Left = 8
              Top = 32
              Width = 249
              Height = 22
              HorzScrollBar.Visible = False
              VertScrollBar.Visible = False
              Constraints.MaxHeight = 22
              Constraints.MinHeight = 22
              TabOrder = 0
              TabStop = True
              DesignSize = (
                249
                22)
              inherited gbEmployee: TGroupBox
                Width = 268
                inherited pnlEmployeeName: TPanel
                  Width = 193
                  inherited pnlRightButtons: TPanel
                    Left = 157
                  end
                  inherited pnlEmpoyeeNameInner: TPanel
                    Width = 157
                    DesignSize = (
                      157
                      32)
                    inherited edtEmployeeName: TDBEdit
                      Width = 111
                    end
                    inherited cbEmployee: TJvDBLookupCombo
                      Width = 156
                    end
                  end
                end
                inherited pnlPaddingRight: TPanel
                  Left = 258
                end
              end
            end
          end
        end
        object pnlWaste: TPanel
          Left = 6
          Top = 57
          Width = 265
          Height = 150
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          BevelOuter = bvNone
          TabOrder = 1
          object gbWaste: TGroupBox
            Left = 0
            Top = 0
            Width = 265
            Height = 147
            Align = alTop
            Caption = ' '#1041#1083#1086#1082#1080#1088#1072#1085#1077' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object lblToDept: TLabel
              Left = 8
              Top = 16
              Width = 151
              Height = 13
              Caption = #1058#1055' '#1087#1088#1080#1077#1084#1072#1097#1086' '#1059#1054#1073' '#1041#1083#1086#1082#1080#1088#1072#1097
            end
            object lblWasteDocNo: TLabel
              Left = 8
              Top = 56
              Width = 90
              Height = 13
              Caption = #1040#1082#1090' '#1079#1072' '#1073#1083#1086#1082#1080#1088#1072#1085#1077
              FocusControl = edtWasteDocNo
            end
            object lblWasteDocDate: TLabel
              Left = 152
              Top = 56
              Width = 26
              Height = 13
              Caption = #1044#1072#1090#1072
              FocusControl = edtWasteDocNo
            end
            object lblWasteEmployeeCode: TLabel
              Left = 8
              Top = 96
              Width = 129
              Height = 13
              Caption = #1055#1088#1080#1077#1084#1072#1097' '#1059#1054#1073' '#1041#1083#1086#1082#1080#1088#1072#1097
              FocusControl = frToWasteEmployee
            end
            object edtWasteDocNo: TDBEdit
              Left = 8
              Top = 72
              Width = 137
              Height = 21
              DataField = 'WASTE_DOC_NO'
              DataSource = dsData
              TabOrder = 1
            end
            inline frToDept: TfrDeptFieldEditFrameBald
              Left = 8
              Top = 32
              Width = 249
              Height = 22
              HorzScrollBar.Visible = False
              VertScrollBar.Visible = False
              Constraints.MaxHeight = 22
              Constraints.MinHeight = 22
              TabOrder = 0
              TabStop = True
              DesignSize = (
                249
                22)
              inherited gbTreeNode: TGroupBox
                Width = 265
                DesignSize = (
                  265
                  49)
                inherited pnlTreeNode: TPanel
                  Width = 249
                  inherited pnlTreeNodeName: TPanel
                    Width = 102
                    DesignSize = (
                      102
                      22)
                    inherited edtTreeNodeName: TDBEdit
                      Width = 101
                    end
                  end
                  inherited pnlTreeNodeNo: TPanel
                    Left = 102
                  end
                  inherited pnlRightButtons: TPanel
                    Left = 213
                  end
                end
              end
            end
            inline frWasteDocDate: TfrDateFieldEditFrame
              Left = 152
              Top = 72
              Width = 105
              Height = 21
              Constraints.MaxHeight = 21
              Constraints.MaxWidth = 105
              Constraints.MinHeight = 21
              Constraints.MinWidth = 105
              TabOrder = 2
              TabStop = True
            end
            inline frToWasteEmployee: TfrEmployeeFieldEditFrameBald
              Left = 8
              Top = 112
              Width = 249
              Height = 22
              HorzScrollBar.Visible = False
              VertScrollBar.Visible = False
              Constraints.MaxHeight = 22
              Constraints.MinHeight = 22
              TabOrder = 3
              TabStop = True
              DesignSize = (
                249
                22)
              inherited gbEmployee: TGroupBox
                Width = 268
                inherited pnlEmployeeName: TPanel
                  Width = 193
                  inherited pnlRightButtons: TPanel
                    Left = 157
                  end
                  inherited pnlEmpoyeeNameInner: TPanel
                    Width = 157
                    DesignSize = (
                      157
                      32)
                    inherited edtEmployeeName: TDBEdit
                      Width = 111
                    end
                    inherited cbEmployee: TJvDBLookupCombo
                      Width = 156
                    end
                  end
                end
                inherited pnlPaddingRight: TPanel
                  Left = 258
                end
              end
            end
          end
        end
        object pnlToNextOperation: TPanel
          Left = 6
          Top = 6
          Width = 265
          Height = 51
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 3
        end
      end
      object pnlToOperation: TPanel
        Left = 2
        Top = 160
        Width = 277
        Height = 41
        BevelOuter = bvNone
        TabOrder = 1
        object lblToOperation: TLabel
          Left = 6
          Top = 0
          Width = 64
          Height = 13
          Caption = 'ID '#1054#1087#1077#1088#1072#1094#1080#1103
          FocusControl = cbToOperation
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object cbToOperation: TJvDBLookupCombo
          Left = 6
          Top = 16
          Width = 233
          Height = 21
          DeleteKeyClear = False
          DataField = '_TO_MLMSO_IDENTIFIER'
          DataSource = dsData
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object pnlToData: TPanel
        Left = 2
        Top = 16
        Width = 277
        Height = 141
        BevelOuter = bvNone
        TabOrder = 0
        object lblToMllNo: TLabel
          Left = 6
          Top = 0
          Width = 74
          Height = 13
          Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1077#1085' No'
          FocusControl = edtToMllNo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblToForkNo: TLabel
          Left = 110
          Top = 0
          Width = 13
          Height = 13
          Caption = #1056#1082
          FocusControl = edtToForkNo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblToStage: TLabel
          Left = 134
          Top = 0
          Width = 38
          Height = 13
          Caption = 'ID '#1045#1090#1072#1087
          FocusControl = edtToStage
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblToRemainingWorkdays: TLabel
          Left = 222
          Top = 0
          Width = 37
          Height = 13
          Caption = #1056#1077#1079#1077#1088#1074
          FocusControl = edtToRemainingWorkdays
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblToDetailName: TLabel
          Left = 6
          Top = 48
          Width = 36
          Height = 13
          Caption = 'ID '#1050#1057#1063
          FocusControl = edtToDetailName
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblToLineDetailTechQuantity: TLabel
          Left = 190
          Top = 48
          Width = 53
          Height = 13
          Caption = #1054#1073#1097#1086' '#1082'-'#1074#1086
          FocusControl = edtToLineDetailTechQuantity
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object txtToDetailTechMeasureAbbrev: TDBText
          Left = 241
          Top = 67
          Width = 33
          Height = 17
          DataField = 'TO_DETAIL_TECH_MEASURE_ABBREV'
          DataSource = dsHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object imgToRemainingWorkdays: TImage
          Left = 222
          Top = 16
          Width = 21
          Height = 21
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
        object edtToMllNo: TDBEdit
          Left = 6
          Top = 16
          Width = 105
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'TO_MLL_NO_AS_TEXT'
          DataSource = dsHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtToForkNo: TDBEdit
          Left = 110
          Top = 16
          Width = 17
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'TO_MLL_FORK_NO'
          DataSource = dsHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object edtToRemainingWorkdays: TDBEdit
          Left = 246
          Top = 16
          Width = 25
          Height = 21
          TabStop = False
          Color = 15395043
          DataField = 'TO_MLMS_REMAINING_WORKDAYS'
          DataSource = dsHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object edtToDetailName: TDBEdit
          Left = 6
          Top = 64
          Width = 185
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'TO_DETAIL_NAME'
          DataSource = dsHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object edtToLineDetailTechQuantity: TDBEdit
          Left = 190
          Top = 64
          Width = 49
          Height = 21
          TabStop = False
          Color = 15395043
          DataField = 'TO_LINE_DETAIL_TECH_QUANTITY'
          DataSource = dsHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object edtToStage: TDBEdit
          Left = 134
          Top = 16
          Width = 49
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'TO_STAGE_IDENTIFIER'
          DataSource = dsHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object pnlToProduct: TPanel
          Left = 6
          Top = 96
          Width = 271
          Height = 41
          BevelOuter = bvNone
          TabOrder = 6
          object lblToProductName: TLabel
            Left = 0
            Top = 0
            Width = 37
            Height = 13
            Caption = 'ID '#1053#1057#1063
            FocusControl = edtToProductName
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lblToTotalProductTechQuantity: TLabel
            Left = 184
            Top = 0
            Width = 53
            Height = 13
            Caption = #1054#1073#1097#1086' '#1082'-'#1074#1086
            FocusControl = edtToTotalProductTechQuantity
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object txtToProductTechMeasureAbbrev: TDBText
            Left = 235
            Top = 20
            Width = 33
            Height = 17
            DataField = 'TO_PRODUCT_TECH_MEASURE_ABBREV'
            DataSource = dsHeader
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object edtToProductName: TDBEdit
            Left = 0
            Top = 16
            Width = 185
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'TO_PRODUCT_NAME'
            DataSource = dsHeader
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object edtToTotalProductTechQuantity: TDBEdit
            Left = 184
            Top = 16
            Width = 49
            Height = 21
            TabStop = False
            Color = 15395043
            DataField = 'TO_TOTAL_PRODUCT_TECH_QTY'
            DataSource = dsHeader
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
        object tlbToStageDocs: TToolBar
          Left = 183
          Top = 15
          Width = 36
          Height = 22
          Align = alNone
          AutoSize = True
          ButtonWidth = 36
          EdgeInner = esNone
          Images = dmMain.ilDocs
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          object btnToStageDocs: TToolButton
            Left = 0
            Top = 0
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' ID '#1045#1090#1072#1087#1072
            ImageIndex = 1
            OnClick = btnToStageDocsClick
          end
        end
      end
      object tlbToOperationDocs: TToolBar
        Left = 241
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
        TabOrder = 3
        object btnToOperationDocs: TToolButton
          Left = 0
          Top = 0
          Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' ID '#1054#1087#1077#1088#1072#1094#1080#1103#1090#1072
          ImageIndex = 1
          OnClick = btnToOperationDocsClick
        end
      end
    end
  end
  object pnlQuantities: TPanel [5]
    Left = 312
    Top = 136
    Width = 169
    Height = 329
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 4
    DesignSize = (
      169
      329)
    object gbQuantities: TGroupBox
      Left = 8
      Top = 5
      Width = 153
      Height = 182
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = ' '#1050'-'#1074#1086' '#1087#1088#1080' '#1044#1074#1080#1078#1077#1085#1080#1077' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object lblDetailWorkTechQuantity: TLabel
        Left = 8
        Top = 16
        Width = 35
        Height = 13
        Caption = #1048#1079#1088#1072#1073'.'
        FocusControl = edtDetailWorkTechQuantity
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblDetailTotalTechQuantity: TLabel
        Left = 56
        Top = 16
        Width = 29
        Height = 13
        Caption = #1054#1073#1097#1086
        FocusControl = edtDetailTotalTechQuantity
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblDetailQATechQuantity: TLabel
        Left = 104
        Top = 16
        Width = 28
        Height = 13
        Caption = #1054#1076#1080#1090'.'
        FocusControl = edtDetailQATechQuantity
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object edtDetailWorkTechQuantity: TDBEdit
        Left = 8
        Top = 32
        Width = 41
        Height = 21
        DataField = 'WORK_DETAIL_TECH_QUANTITY'
        DataSource = dsData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object edtDetailTotalTechQuantity: TDBEdit
        Left = 56
        Top = 32
        Width = 41
        Height = 21
        DataField = 'TOTAL_DETAIL_TECH_QUANTITY'
        DataSource = dsData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object edtDetailQATechQuantity: TDBEdit
        Left = 104
        Top = 32
        Width = 41
        Height = 21
        DataField = 'QA_DETAIL_TECH_QUANTITY'
        DataSource = dsData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object pnlProductQuantities: TPanel
        Left = 2
        Top = 64
        Width = 149
        Height = 41
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object lblProductWorkTechQuantity: TLabel
          Left = 6
          Top = 0
          Width = 35
          Height = 13
          Caption = #1048#1079#1088#1072#1073'.'
          FocusControl = edtProductWorkTechQuantity
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblProductTotalTechQuantity: TLabel
          Left = 54
          Top = 0
          Width = 29
          Height = 13
          Caption = #1054#1073#1097#1086
          FocusControl = edtProductTotalTechQuantity
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblProductQATechQuantity: TLabel
          Left = 102
          Top = 0
          Width = 28
          Height = 13
          Caption = #1054#1076#1080#1090'.'
          FocusControl = edtProductQATechQuantity
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object edtProductWorkTechQuantity: TDBEdit
          Left = 6
          Top = 16
          Width = 41
          Height = 21
          DataField = 'WORK_PRODUCT_TECH_QUANTITY'
          DataSource = dsData
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object edtProductTotalTechQuantity: TDBEdit
          Left = 54
          Top = 16
          Width = 41
          Height = 21
          DataField = 'TOTAL_PRODUCT_TECH_QUANTITY'
          DataSource = dsData
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object edtProductQATechQuantity: TDBEdit
          Left = 102
          Top = 16
          Width = 41
          Height = 21
          DataField = 'QA_PRODUCT_TECH_QUANTITY'
          DataSource = dsData
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
      end
      inline frQAEmployee: TfrEmployeeFieldEditFrameBald
        Left = 6
        Top = 128
        Width = 139
        Height = 49
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 52
        Constraints.MinHeight = 22
        TabOrder = 4
        TabStop = True
        inherited gbEmployee: TGroupBox
          Width = 158
          Height = 76
          inherited pnlEmployeeCode: TPanel
            Left = 2
            Width = 154
            Height = 25
            Align = alTop
            Alignment = taLeftJustify
            inherited edtEmployeeNo: TDBEdit
              Left = 89
              Width = 57
            end
          end
          inherited pnlEmployeeName: TPanel
            Left = 9
            Top = 40
            Width = 139
            Height = 34
            inherited pnlRightButtons: TPanel
              Left = 103
              Height = 34
            end
            inherited pnlEmpoyeeNameInner: TPanel
              Width = 103
              Height = 34
              inherited edtEmployeeName: TDBEdit
                Width = 57
              end
              inherited cbEmployee: TJvDBLookupCombo
                Width = 102
              end
            end
          end
          inherited pnlPaddingLeft: TPanel
            Top = 40
            Height = 34
          end
          inherited pnlPaddingRight: TPanel
            Left = 148
            Top = 40
            Height = 34
          end
        end
        inherited alActions: TActionList
          Top = 32
        end
        inherited dsData: TDataSource
          Top = 32
        end
      end
      object pnlQAEmployeeLabel: TPanel
        Left = 6
        Top = 131
        Width = 52
        Height = 13
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 5
        object lblQAEmployee: TLabel
          Left = 0
          Top = 0
          Width = 52
          Height = 13
          Caption = #1054#1076#1080#1090#1080#1088#1072#1097
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object gbOperationMovementQuantities: TGroupBox
      Left = 8
      Top = 191
      Width = 153
      Height = 130
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = ' '#1050'-'#1074#1086' - '#1086#1073#1097' '#1087#1086#1090#1086#1082' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object lblDetailTotalInQuantity: TLabel
        Left = 5
        Top = 16
        Width = 24
        Height = 13
        Caption = #1042#1093#1086#1076
        FocusControl = edtDetailTotalInQuantity
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblDetailTotalOutQuantity: TLabel
        Left = 39
        Top = 16
        Width = 31
        Height = 13
        Caption = #1048#1079#1093#1086#1076
        FocusControl = edtDetailTotalOutQuantity
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblDetailTotalWasteQuantity: TLabel
        Left = 73
        Top = 16
        Width = 28
        Height = 13
        Caption = #1041#1083#1086#1082'.'
        FocusControl = edtDetailTotalWasteQuantity
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblDetailTotalRemainingQuantity: TLabel
        Left = 107
        Top = 16
        Width = 37
        Height = 13
        Caption = #1054#1089#1090#1072#1074#1072
        FocusControl = edtDetailTotalRemainingQuantity
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object edtDetailTotalInQuantity: TDBEdit
        Left = 5
        Top = 32
        Width = 35
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'DETAIL_TOTAL_IN_TECH_QUANTITY'
        DataSource = dsOperationMovementQuantities
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object edtDetailTotalOutQuantity: TDBEdit
        Left = 39
        Top = 32
        Width = 35
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'DETAIL_TOTAL_OUT_TECH_QUANTITY'
        DataSource = dsOperationMovementQuantities
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object edtDetailTotalWasteQuantity: TDBEdit
        Left = 73
        Top = 32
        Width = 35
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'DETAIL_TOTAL_WASTE_TECH_QTY'
        DataSource = dsOperationMovementQuantities
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object pnlProductTotalQuantities: TPanel
        Left = 2
        Top = 64
        Width = 149
        Height = 41
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        object lblProductTotalInQuantity: TLabel
          Left = 3
          Top = 0
          Width = 24
          Height = 13
          Caption = #1042#1093#1086#1076
          FocusControl = edtProductTotalInQuantity
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblProductTotalOutQuantity: TLabel
          Left = 37
          Top = 0
          Width = 31
          Height = 13
          Caption = #1048#1079#1093#1086#1076
          FocusControl = edtProductTotalOutQuantity
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblProductTotalWasteQuantity: TLabel
          Left = 71
          Top = 0
          Width = 28
          Height = 13
          Caption = #1041#1083#1086#1082'.'
          FocusControl = edtProductTotalWasteQuantity
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblProductTotalRemainingQuantity: TLabel
          Left = 105
          Top = 0
          Width = 37
          Height = 13
          Caption = #1054#1089#1090#1072#1074#1072
          FocusControl = edtProductTotalRemainingQuantity
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object edtProductTotalInQuantity: TDBEdit
          Left = 3
          Top = 16
          Width = 35
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'PRODUCT_TOTAL_IN_TECH_QUANTITY'
          DataSource = dsOperationMovementQuantities
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtProductTotalOutQuantity: TDBEdit
          Left = 37
          Top = 16
          Width = 35
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'PRODUCT_TOTAL_OUT_TECH_QTY'
          DataSource = dsOperationMovementQuantities
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object edtProductTotalWasteQuantity: TDBEdit
          Left = 71
          Top = 16
          Width = 35
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'PRODUCT_TOTAL_WASTE_TECH_QTY'
          DataSource = dsOperationMovementQuantities
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object edtProductTotalRemainingQuantity: TDBEdit
          Left = 105
          Top = 16
          Width = 41
          Height = 21
          TabStop = False
          Color = 14611938
          DataField = 'PRODUCT_REMAINING_TECH_QTY'
          DataSource = dsOperationMovementQuantities
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
      end
      object edtDetailTotalRemainingQuantity: TDBEdit
        Left = 107
        Top = 32
        Width = 41
        Height = 21
        TabStop = False
        Color = 14611938
        DataField = 'DETAIL_REMAINING_TECH_QUANTITY'
        DataSource = dsOperationMovementQuantities
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
    end
    object gbToDeptZoneNo: TGroupBox
      Left = 8
      Top = 191
      Width = 153
      Height = 130
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = ' '#1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1072' '#1047#1086#1085#1072' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object cbToDeptZone: TJvDBComboBox
        Left = 44
        Top = 56
        Width = 65
        Height = 21
        DataField = 'TO_DEPT_ZONE_NO'
        DataSource = dsData
        TabOrder = 0
        UpdateFieldImmediatelly = True
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
    end
  end
  object pnlStageLevel: TPanel [6]
    Left = 312
    Top = 88
    Width = 169
    Height = 21
    Caption = #1045' '#1090' '#1072' '#1087' '#1085' '#1086
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMedGray
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object pnlOperationLevel: TPanel [7]
    Left = 312
    Top = 109
    Width = 169
    Height = 20
    Caption = #1054' '#1087' '#1077' '#1088' '#1072' '#1094' '#1080' '#1086' '#1085' '#1085' '#1086
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  inherited alActions: TActionList
    Left = 200
    Top = 472
    inherited actForm: TAction
      Caption = #1044#1074#1080#1078#1077#1085#1080#1077' '#1087#1086' '#1056'-'#1052#1054#1044#1045#1083
    end
    object actStorno: TAction
      Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077
      Hint = #1040#1085#1091#1083#1080#1088#1072#1085#1077
      ImageIndex = 26
      OnExecute = actStornoExecute
      OnUpdate = actStornoUpdate
    end
    object actExceptEvent: TAction
      Caption = #1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103'...'
      Hint = #1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103
      OnExecute = actExceptEventExecute
      OnUpdate = actExceptEventUpdate
    end
  end
  inherited dsData: TDataSource
    Left = 464
    Top = 72
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conModelMovements
    Params = <
      item
        DataType = ftFloat
        Name = 'OM_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OM_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvOperationMovement'
    AfterOpen = cdsDataAfterOpen
    BeforePost = cdsDataBeforePost
    OnCalcFields = cdsDataCalcFields
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    Left = 432
    Top = 72
    object cdsDataOM_BRANCH_CODE: TAbmesFloatField
      FieldName = 'OM_BRANCH_CODE'
    end
    object cdsDataOM_CODE: TAbmesFloatField
      FieldName = 'OM_CODE'
    end
    object cdsDataOM_NO: TAbmesFloatField
      FieldName = 'OM_NO'
    end
    object cdsDataOPERATION_MOVEMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OPERATION_MOVEMENT_TYPE_CODE'
    end
    object cdsDataOM_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1044#1074#1080#1078#1077#1085#1080#1077#1090#1086
      FieldName = 'OM_DATE'
      OnChange = cdsDataOM_DATEChange
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object cdsDataOM_TIME: TAbmesSQLTimeStampField
      DisplayLabel = #1063#1072#1089' '#1085#1072' '#1044#1074#1080#1078#1077#1085#1080#1077#1090#1086
      DisplayWidth = 18
      FieldName = 'OM_TIME'
      DisplayFormat = 'h:nn'
      AbmesEditFormat = 'h:nn'
    end
    object cdsDataFROM_MLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'FROM_MLMSO_OBJECT_BRANCH_CODE'
    end
    object cdsDataFROM_MLMSO_OBJECT_CODE: TAbmesFloatField
      FieldName = 'FROM_MLMSO_OBJECT_CODE'
    end
    object cdsDataTO_MLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'TO_MLMSO_OBJECT_BRANCH_CODE'
    end
    object cdsDataTO_MLMSO_OBJECT_CODE: TAbmesFloatField
      FieldName = 'TO_MLMSO_OBJECT_CODE'
    end
    object cdsDataTO_MLMSO_BRANCH_AND_CODE: TAbmesWideStringField
      FieldName = 'TO_MLMSO_BRANCH_AND_CODE'
      ProviderFlags = []
      OnChange = cdsDataTO_MLMSO_BRANCH_AND_CODEChange
      Size = 81
    end
    object cdsDataFROM_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1054#1090' ID '#1054#1087#1077#1088#1072#1090#1086#1088
      FieldName = 'FROM_EMPLOYEE_CODE'
    end
    object cdsDataFROM_TEAM_CODE: TAbmesFloatField
      FieldName = 'FROM_TEAM_CODE'
      OnChange = cdsDataFROM_TEAM_CODEChange
    end
    object cdsDataTO_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1050#1098#1084' ID '#1054#1087#1077#1088#1072#1090#1086#1088
      FieldName = 'TO_EMPLOYEE_CODE'
      OnChange = cdsDataTO_EMPLOYEE_CODEChange
    end
    object cdsDataTO_TEAM_CODE: TAbmesFloatField
      FieldName = 'TO_TEAM_CODE'
      OnChange = cdsDataTO_TEAM_CODEChange
    end
    object cdsDataTO_DEPT_CODE: TAbmesFloatField
      FieldName = 'TO_DEPT_CODE'
      OnChange = cdsDataTO_DEPT_CODEChange
    end
    object cdsDataTO_DEPT_NAME: TAbmesWideStringField
      DisplayLabel = #1058#1055' '#1087#1088#1080#1077#1084#1072#1097#1086' '#1059#1054#1073' '#1073#1083#1086#1082#1080#1088#1072#1097
      FieldName = 'TO_DEPT_NAME'
      Size = 100
    end
    object cdsDataTO_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'TO_DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsDataTO_DEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'TO_DEPT_BEGIN_DATE'
    end
    object cdsDataTO_DEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'TO_DEPT_END_DATE'
    end
    object cdsDataWASTE_DOC_NO: TAbmesWideStringField
      DisplayLabel = #1040#1082#1090' '#1079#1072' '#1073#1083#1086#1082#1080#1088#1072#1085#1077
      FieldName = 'WASTE_DOC_NO'
    end
    object cdsDataWASTE_DOC_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1073#1083#1086#1082#1080#1088#1072#1085#1077
      FieldName = 'WASTE_DOC_DATE'
    end
    object cdsDataPRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_QUANTITY'
    end
    object cdsDataWORK_DETAIL_TECH_QUANTITY: TAbmesFloatField
      DisplayLabel = #1048#1079#1088#1072#1073#1086#1090#1077#1085#1086' '#1087#1088#1077#1084#1080#1085#1072#1074#1072#1097#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'WORK_DETAIL_TECH_QUANTITY'
      OnChange = cdsDataWORK_DETAIL_TECH_QUANTITYChange
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
      MaxValue = 999999999999999.000000000000000000
    end
    object cdsDataWORK_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'WORK_PRODUCT_TECH_QUANTITY'
      OnChange = cdsDataWORK_PRODUCT_TECH_QUANTITYChange
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
      MaxValue = 999999999999999.000000000000000000
    end
    object cdsDataTOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField
      DisplayLabel = #1054#1073#1097#1086' '#1087#1088#1077#1084#1080#1085#1072#1074#1072#1097#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'TOTAL_DETAIL_TECH_QUANTITY'
      OnChange = cdsDataTOTAL_DETAIL_TECH_QUANTITYChange
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
      MaxValue = 999999999999999.000000000000000000
    end
    object cdsDataTOTAL_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_PRODUCT_TECH_QUANTITY'
      OnChange = cdsDataTOTAL_PRODUCT_TECH_QUANTITYChange
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
      MaxValue = 999999999999999.000000000000000000
    end
    object cdsDataQA_DETAIL_TECH_QUANTITY: TAbmesFloatField
      DisplayLabel = #1054#1076#1080#1090#1080#1088#1072#1085#1086' '#1087#1088#1077#1084#1080#1085#1072#1074#1072#1097#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'QA_DETAIL_TECH_QUANTITY'
      OnChange = cdsDataQA_DETAIL_TECH_QUANTITYChange
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
      MaxValue = 999999999999999.000000000000000000
    end
    object cdsDataQA_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'QA_PRODUCT_TECH_QUANTITY'
      OnChange = cdsDataQA_PRODUCT_TECH_QUANTITYChange
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
      MaxValue = 999999999999999.000000000000000000
    end
    object cdsDataQA_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'QA_EMPLOYEE_CODE'
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
    object cdsDataSTORNO_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'STORNO_EMPLOYEE_CODE'
    end
    object cdsDataSTORNO_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORNO_DATE'
    end
    object cdsDataSTORNO_TIME: TAbmesSQLTimeStampField
      FieldName = 'STORNO_TIME'
    end
    object cdsDataBND_OM_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_OM_BRANCH_CODE'
    end
    object cdsDataBND_OM_CODE: TAbmesFloatField
      FieldName = 'BND_OM_CODE'
    end
    object cdsData_QA_EMPLOYEE_NAME: TAbmesWideStringField
      DisplayLabel = #1054#1076#1080#1090#1080#1088#1072#1097
      FieldKind = fkLookup
      FieldName = '_QA_EMPLOYEE_NAME'
      LookupDataSet = cdsEmployeeFrameAllEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NAME'
      KeyFields = 'QA_EMPLOYEE_CODE'
      Size = 50
      Lookup = True
    end
    object cdsData_OMT_TYPE_AND_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_OMT_TYPE_AND_NAME'
      LookupDataSet = cdsOperationMovementTypes
      LookupKeyFields = 'OPERATION_MOVEMENT_TYPE_CODE'
      LookupResultField = '_OMT_ABBREV_AND_NAME'
      KeyFields = 'OPERATION_MOVEMENT_TYPE_CODE'
      Size = 50
      Lookup = True
    end
    object cdsData_FROM_TEAM_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_FROM_TEAM_NAME'
      LookupDataSet = cdsFromTeams
      LookupKeyFields = 'TEAM_CODE'
      LookupResultField = 'TEAM_NAME'
      KeyFields = 'FROM_TEAM_CODE'
      Size = 50
      Lookup = True
    end
    object cdsData_TO_TEAM_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_TO_TEAM_NAME'
      LookupDataSet = cdsToTeams
      LookupKeyFields = 'TEAM_CODE'
      LookupResultField = 'TEAM_NAME'
      KeyFields = 'TO_TEAM_CODE'
      Size = 50
      Lookup = True
    end
    object cdsData_TO_MLMSO_IDENTIFIER: TAbmesWideStringField
      DisplayLabel = #1050#1098#1084' ID '#1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1072' '#1054#1087#1077#1088#1072#1094#1080#1103
      FieldKind = fkLookup
      FieldName = '_TO_MLMSO_IDENTIFIER'
      LookupDataSet = cdsToMLMSOperations
      LookupKeyFields = 'MLMSO_BRANCH_AND_CODE'
      LookupResultField = 'MLMSO_IDENTIFIER'
      KeyFields = 'TO_MLMSO_BRANCH_AND_CODE'
      Size = 200
      Lookup = True
    end
    object cdsData_TO_MLMS_OPERATION_VARIANT_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_TO_MLMS_OPERATION_VARIANT_NO'
      LookupDataSet = cdsToMLMSOperations
      LookupKeyFields = 'MLMSO_BRANCH_AND_CODE'
      LookupResultField = 'MLMS_OPERATION_VARIANT_NO'
      KeyFields = 'TO_MLMSO_BRANCH_AND_CODE'
      Lookup = True
    end
    object cdsData_TO_MLMSO_DOC_BRANCH_CODE: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_TO_MLMSO_DOC_BRANCH_CODE'
      LookupDataSet = cdsToMLMSOperations
      LookupKeyFields = 'MLMSO_BRANCH_AND_CODE'
      LookupResultField = 'MLMSO_DOC_BRANCH_CODE'
      KeyFields = 'TO_MLMSO_BRANCH_AND_CODE'
      Lookup = True
    end
    object cdsData_TO_MLMSO_DOC_CODE: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_TO_MLMSO_DOC_CODE'
      LookupDataSet = cdsToMLMSOperations
      LookupKeyFields = 'MLMSO_BRANCH_AND_CODE'
      LookupResultField = 'MLMSO_DOC_CODE'
      KeyFields = 'TO_MLMSO_BRANCH_AND_CODE'
      Lookup = True
    end
    object cdsData_TO_MLMSO_HAS_DOC_ITEMS: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_TO_MLMSO_HAS_DOC_ITEMS'
      LookupDataSet = cdsToMLMSOperations
      LookupKeyFields = 'MLMSO_BRANCH_AND_CODE'
      LookupResultField = 'MLMSO_HAS_DOC_ITEMS'
      KeyFields = 'TO_MLMSO_BRANCH_AND_CODE'
      FieldValueType = fvtBoolean
      Lookup = True
    end
    object cdsData_OM_BRANCH_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_OM_BRANCH_NO'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_NO'
      KeyFields = 'OM_BRANCH_CODE'
      Lookup = True
    end
    object cdsDataSTORE_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_OBJECT_BRANCH_CODE'
    end
    object cdsDataSTORE_DEAL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_OBJECT_CODE'
    end
    object cdsDataREPLACED_OM_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REPLACED_OM_BRANCH_CODE'
    end
    object cdsDataREPLACED_OM_CODE: TAbmesFloatField
      FieldName = 'REPLACED_OM_CODE'
    end
    object cdsDataFROM_TEAM_NAME: TAbmesWideStringField
      FieldName = 'FROM_TEAM_NAME'
      ProviderFlags = []
      Size = 50
    end
    object cdsDataTO_TEAM_NAME: TAbmesWideStringField
      FieldName = 'TO_TEAM_NAME'
      ProviderFlags = []
      Size = 50
    end
    object cdsDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsDataHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsData_CURRENT_DATE_TIME_AS_STRING: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_CURRENT_DATE_TIME_AS_STRING'
      Calculated = True
    end
    object cdsData_FROM_EMPLOYEE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_FROM_EMPLOYEE_NAME'
      LookupDataSet = frFromEmployee.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NAME'
      KeyFields = 'FROM_EMPLOYEE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsData_FROM_EMPLOYEE_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_FROM_EMPLOYEE_NO'
      LookupDataSet = frFromEmployee.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NO'
      KeyFields = 'FROM_EMPLOYEE_CODE'
      Lookup = True
    end
    object cdsData_TO_EMPLOYEE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_TO_EMPLOYEE_NAME'
      LookupDataSet = frToEmployee.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NAME'
      KeyFields = 'TO_EMPLOYEE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsData_TO_EMPLOYEE_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_TO_EMPLOYEE_NO'
      LookupDataSet = frToEmployee.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NO'
      KeyFields = 'TO_EMPLOYEE_CODE'
      Lookup = True
    end
    object cdsData_TO_WASTE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_TO_WASTE_EMPLOYEE_NAME'
      LookupDataSet = cdsEmployeeFrameAllEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NAME'
      KeyFields = 'TO_EMPLOYEE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsData_TO_WASTE_EMPLOYEE_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_TO_WASTE_EMPLOYEE_NO'
      LookupDataSet = cdsEmployeeFrameAllEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NO'
      KeyFields = 'TO_EMPLOYEE_CODE'
      Lookup = True
    end
    object cdsDataPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_CODE'
    end
    object cdsDataTO_DEPT_ZONE_NO: TAbmesFloatField
      DisplayLabel = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1072' '#1047#1086#1085#1072
      FieldName = 'TO_DEPT_ZONE_NO'
    end
    object cdsData_PRINT_TO_MLMSO_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_PRINT_TO_MLMSO_IDENTIFIER'
      Size = 250
      Calculated = True
    end
  end
  object cdsHeader: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conModelMovements
    Params = <
      item
        DataType = ftFloat
        Name = 'OVERRIDING_FROM_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OVERRIDING_FROM_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OVERRIDING_FROM_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OVERRIDING_FROM_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TO_MLMSO_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TO_MLMSO_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_MLMSO_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_MLMSO_OBJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvOperationMovementHeader'
    BeforeOpen = cdsHeaderBeforeOpen
    AfterOpen = cdsHeaderAfterOpen
    OnCalcFields = cdsHeaderCalcFields
    Left = 504
    Top = 72
    object cdsHeaderPRODUCTION_ORDER_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PRODUCTION_ORDER_IDENTIFIER'
      Size = 188
    end
    object cdsHeaderSALE_PRIORITY_NO: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'SALE_PRIORITY_NO'
    end
    object cdsHeaderSALE_PRIORITY_COLOR: TAbmesFloatField
      FieldName = 'SALE_PRIORITY_COLOR'
    end
    object cdsHeaderSALE_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'SALE_PRIORITY_BACKGROUND_COLOR'
    end
    object cdsHeaderSALE_WORK_PRIORITY_NO: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'SALE_WORK_PRIORITY_NO'
    end
    object cdsHeaderFROM_MLL_NO_AS_TEXT: TAbmesWideStringField
      FieldName = 'FROM_MLL_NO_AS_TEXT'
      Size = 100
    end
    object cdsHeaderFROM_MLL_FORK_NO: TAbmesFloatField
      FieldName = 'FROM_MLL_FORK_NO'
    end
    object cdsHeaderFROM_MLMS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'FROM_MLMS_OBJECT_BRANCH_CODE'
    end
    object cdsHeaderFROM_MLMS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'FROM_MLMS_OBJECT_CODE'
    end
    object cdsHeaderFROM_MLMS_IS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'FROM_MLMS_IS_AUTO_MOVEMENT'
      FieldValueType = fvtBoolean
    end
    object cdsHeaderFROM_STAGE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'FROM_STAGE_IDENTIFIER'
      Size = 87
    end
    object cdsHeaderFROM_MLMS_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'FROM_MLMS_DOC_BRANCH_CODE'
    end
    object cdsHeaderFROM_MLMS_DOC_CODE: TAbmesFloatField
      FieldName = 'FROM_MLMS_DOC_CODE'
    end
    object cdsHeaderFROM_MLMS_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'FROM_MLMS_HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsHeaderFROM_MLMS_REMAINING_WORKDAYS: TAbmesFloatField
      FieldName = 'FROM_MLMS_REMAINING_WORKDAYS'
    end
    object cdsHeaderFROM_DETAIL_CODE: TAbmesFloatField
      FieldName = 'FROM_DETAIL_CODE'
    end
    object cdsHeaderFROM_DETAIL_NAME: TAbmesWideStringField
      FieldName = 'FROM_DETAIL_NAME'
      Size = 100
    end
    object cdsHeaderFROM_LINE_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'FROM_LINE_DETAIL_TECH_QUANTITY'
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object cdsHeaderFROM_DETAIL_TECH_MEASURE_ABB: TAbmesWideStringField
      FieldName = 'FROM_DETAIL_TECH_MEASURE_ABB'
      Size = 5
    end
    object cdsHeaderFROM_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'FROM_PRODUCT_CODE'
    end
    object cdsHeaderFROM_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'FROM_PRODUCT_TECH_QUANTITY'
    end
    object cdsHeaderFROM_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'FROM_PRODUCT_NAME'
      Size = 100
    end
    object cdsHeaderFROM_TOTAL_PRODUCT_TECH_QTY: TAbmesFloatField
      FieldName = 'FROM_TOTAL_PRODUCT_TECH_QTY'
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object cdsHeaderFROM_PRODUCT_TECH_MEASURE_ABB: TAbmesWideStringField
      FieldName = 'FROM_PRODUCT_TECH_MEASURE_ABB'
      Size = 5
    end
    object cdsHeaderFROM_MLMS_OPERATION_IDENTIFIER: TAbmesWideStringField
      FieldName = 'FROM_MLMS_OPERATION_IDENTIFIER'
      OnGetText = cdsHeaderFROM_MLMS_OPERATION_IDENTIFIERGetText
      Size = 184
    end
    object cdsHeaderFROM_MLMS_OPERATION_VARIANT_NO: TAbmesFloatField
      FieldName = 'FROM_MLMS_OPERATION_VARIANT_NO'
      Required = True
    end
    object cdsHeaderFROM_MLMSO_IS_LAST_IN_STAGE: TAbmesFloatField
      FieldName = 'FROM_MLMSO_IS_LAST_IN_STAGE'
      FieldValueType = fvtBoolean
    end
    object cdsHeaderFROM_MLMSO_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'FROM_MLMSO_DOC_BRANCH_CODE'
    end
    object cdsHeaderFROM_MLMSO_DOC_CODE: TAbmesFloatField
      FieldName = 'FROM_MLMSO_DOC_CODE'
    end
    object cdsHeaderFROM_MLMSO_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'FROM_MLMSO_HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsHeaderFROM_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'FROM_PROFESSION_CODE'
    end
    object cdsHeaderFROM_PROFESSION_NAME: TAbmesWideStringField
      FieldName = 'FROM_PROFESSION_NAME'
      Size = 100
    end
    object cdsHeaderFROM_PROF_USED_BY_EMPLOYEES: TAbmesFloatField
      FieldName = 'FROM_PROF_USED_BY_EMPLOYEES'
      FieldValueType = fvtBoolean
    end
    object cdsHeaderFROM_PROF_USED_BY_TEAMS: TAbmesFloatField
      FieldName = 'FROM_PROF_USED_BY_TEAMS'
      FieldValueType = fvtBoolean
    end
    object cdsHeaderFROM_OPERATION_TYPE_CODE: TAbmesFloatField
      FieldName = 'FROM_OPERATION_TYPE_CODE'
    end
    object cdsHeaderFROM_NOTES: TAbmesWideStringField
      FieldName = 'FROM_NOTES'
      OnGetText = cdsHeaderFROM_NOTESGetText
      Size = 250
    end
    object cdsHeaderFROM_SETUP_IS_DONE: TAbmesFloatField
      FieldName = 'FROM_SETUP_IS_DONE'
      FieldValueType = fvtBoolean
    end
    object cdsHeaderFROM_DEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'FROM_DEPT_BEGIN_DATE'
    end
    object cdsHeaderFROM_DEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'FROM_DEPT_END_DATE'
    end
    object cdsHeaderTO_MLL_NO_AS_TEXT: TAbmesWideStringField
      FieldName = 'TO_MLL_NO_AS_TEXT'
      Size = 100
    end
    object cdsHeaderTO_MLL_FORK_NO: TAbmesFloatField
      FieldName = 'TO_MLL_FORK_NO'
    end
    object cdsHeaderTO_MLMS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'TO_MLMS_OBJECT_BRANCH_CODE'
    end
    object cdsHeaderTO_MLMS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'TO_MLMS_OBJECT_CODE'
    end
    object cdsHeaderTO_STAGE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'TO_STAGE_IDENTIFIER'
      Size = 87
    end
    object cdsHeaderTO_MLMS_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'TO_MLMS_DOC_BRANCH_CODE'
    end
    object cdsHeaderTO_MLMS_DOC_CODE: TAbmesFloatField
      FieldName = 'TO_MLMS_DOC_CODE'
    end
    object cdsHeaderTO_MLMS_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'TO_MLMS_HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsHeaderTO_MLMS_REMAINING_WORKDAYS: TAbmesFloatField
      FieldName = 'TO_MLMS_REMAINING_WORKDAYS'
    end
    object cdsHeaderTO_DETAIL_CODE: TAbmesFloatField
      FieldName = 'TO_DETAIL_CODE'
    end
    object cdsHeaderTO_DETAIL_NAME: TAbmesWideStringField
      FieldName = 'TO_DETAIL_NAME'
      Size = 100
    end
    object cdsHeaderTO_LINE_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'TO_LINE_DETAIL_TECH_QUANTITY'
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object cdsHeaderTO_DETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'TO_DETAIL_TECH_MEASURE_ABBREV'
      Size = 5
    end
    object cdsHeaderTO_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'TO_PRODUCT_CODE'
    end
    object cdsHeaderTO_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'TO_PRODUCT_TECH_QUANTITY'
    end
    object cdsHeaderTO_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'TO_PRODUCT_NAME'
      Size = 100
    end
    object cdsHeaderTO_TOTAL_PRODUCT_TECH_QTY: TAbmesFloatField
      FieldName = 'TO_TOTAL_PRODUCT_TECH_QTY'
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object cdsHeaderTO_PRODUCT_TECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'TO_PRODUCT_TECH_MEASURE_ABBREV'
      Size = 5
    end
    object cdsHeaderTO_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'TO_PROFESSION_CODE'
    end
    object cdsHeaderTO_PROFESSION_NAME: TAbmesWideStringField
      FieldName = 'TO_PROFESSION_NAME'
      Size = 100
    end
    object cdsHeaderTO_OPERATION_TYPE_CODE: TAbmesFloatField
      FieldName = 'TO_OPERATION_TYPE_CODE'
    end
    object cdsHeaderTO_NOTES: TAbmesWideStringField
      FieldName = 'TO_NOTES'
      OnGetText = cdsHeaderTO_NOTESGetText
      Size = 250
    end
    object cdsHeaderTO_DEPT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'TO_DEPT_BEGIN_DATE'
    end
    object cdsHeaderTO_DEPT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'TO_DEPT_END_DATE'
    end
    object cdsHeaderIS_OPERATIONS_MODEL: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'IS_OPERATIONS_MODEL'
      DisplayBoolValues = #1045#1054';'#1045
      FieldValueType = fvtBoolean
    end
    object cdsHeaderMODEL_OPERATIONS_STATUS_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'MODEL_OPERATIONS_STATUS_CODE'
      OnGetText = cdsHeaderMODEL_OPERATIONS_STATUS_CODEGetText
    end
    object cdsHeaderIS_TO_LAST_STAGE: TAbmesFloatField
      FieldName = 'IS_TO_LAST_STAGE'
      FieldValueType = fvtBoolean
    end
    object cdsHeaderFROM_MLMSO_DEPT_CODE: TAbmesFloatField
      FieldName = 'FROM_MLMSO_DEPT_CODE'
      Required = True
    end
    object cdsHeaderPRINT_NOTES: TAbmesWideStringField
      FieldName = 'PRINT_NOTES'
      Size = 250
    end
    object cdsHeaderTO_DEPT_ZONE_COUNT: TAbmesFloatField
      FieldName = 'TO_DEPT_ZONE_COUNT'
    end
    object cdsHeader_PRINT_SALE_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_PRINT_SALE_IDENTIFIER'
      Calculated = True
    end
  end
  object dsHeader: TDataSource
    DataSet = cdsHeader
    Left = 536
    Top = 72
  end
  object cdsOperationMovementTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conModelMovements
    Params = <>
    ProviderName = 'prvOperationMovementTypes'
    OnCalcFields = cdsOperationMovementTypesCalcFields
    Left = 728
    Top = 72
    object cdsOperationMovementTypesOPERATION_MOVEMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OPERATION_MOVEMENT_TYPE_CODE'
    end
    object cdsOperationMovementTypesOPERATION_MOVEMENT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'OPERATION_MOVEMENT_TYPE_ABBREV'
      Size = 100
    end
    object cdsOperationMovementTypesOPERATION_MOVEMENT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'OPERATION_MOVEMENT_TYPE_NAME'
      Size = 100
    end
    object cdsOperationMovementTypes_OMT_ABBREV_AND_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_OMT_ABBREV_AND_NAME'
      Size = 50
      Calculated = True
    end
  end
  object cdsFromTeams: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conModelMovements
    FieldDefs = <
      item
        Name = 'TEAM_CODE'
        DataType = ftFloat
      end
      item
        Name = 'TEAM_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'HAS_THE_PROFESSION'
        DataType = ftFloat
      end
      item
        Name = 'HAS_THE_EMPLOYEE'
        DataType = ftFloat
      end
      item
        Name = 'HAS_THE_OCC_WORK_DEPT'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 'TEAM_NAME; TEAM_CODE'
      end>
    IndexName = 'idxDefault'
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
      end
      item
        DataType = ftFloat
        Name = 'REQUIRED_OCC_WORK_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'prvProfessionEmployeeMonthTeams'
    StoreDefs = True
    BeforeOpen = cdsFromTeamsBeforeOpen
    OnFilterRecord = cdsFromTeamsFilterRecord
    Left = 664
    Top = 72
    object cdsFromTeamsTEAM_CODE: TAbmesFloatField
      FieldName = 'TEAM_CODE'
    end
    object cdsFromTeamsTEAM_NAME: TAbmesWideStringField
      FieldName = 'TEAM_NAME'
      Size = 50
    end
    object cdsFromTeamsHAS_THE_PROFESSION: TAbmesFloatField
      FieldName = 'HAS_THE_PROFESSION'
      FieldValueType = fvtBoolean
    end
    object cdsFromTeamsHAS_THE_EMPLOYEE: TAbmesFloatField
      FieldName = 'HAS_THE_EMPLOYEE'
      FieldValueType = fvtBoolean
    end
    object cdsFromTeamsHAS_THE_OCC_WORK_DEPT: TAbmesFloatField
      FieldName = 'HAS_THE_OCC_WORK_DEPT'
      FieldValueType = fvtBoolean
    end
  end
  object cdsToTeams: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conModelMovements
    Filter = 'HAS_THE_PROFESSION = 1'
    FieldDefs = <
      item
        Name = 'TEAM_CODE'
        DataType = ftFloat
      end
      item
        Name = 'TEAM_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'HAS_THE_PROFESSION'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 'TEAM_NAME; TEAM_CODE'
      end>
    IndexName = 'idxDefault'
    Params = <
      item
        DataType = ftFloat
        Name = 'PROFESSION_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvProfessionTeams'
    StoreDefs = True
    Left = 696
    Top = 72
    object cdsToTeamsTEAM_CODE: TAbmesFloatField
      FieldName = 'TEAM_CODE'
    end
    object cdsToTeamsTEAM_NAME: TAbmesWideStringField
      FieldName = 'TEAM_NAME'
      Size = 50
    end
    object cdsToTeamsHAS_THE_PROFESSION: TAbmesFloatField
      FieldName = 'HAS_THE_PROFESSION'
      FieldValueType = fvtBoolean
    end
  end
  object cdsToMLMSOperations: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conModelMovements
    Filtered = True
    Params = <
      item
        DataType = ftFloat
        Name = 'OPERATION_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_MLMSO_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_MLMSO_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OPERATION_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_MLMSO_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_MLMSO_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_MLMSO_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_MLMSO_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ONLY_CURRENT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OPERATION_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_MLMSO_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_MLMSO_OBJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvToMLMSOperations'
    OnFilterRecord = cdsToMLMSOperationsFilterRecord
    Left = 682
    Top = 264
    object cdsToMLMSOperationsMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMSO_OBJECT_BRANCH_CODE'
    end
    object cdsToMLMSOperationsMLMSO_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLMSO_OBJECT_CODE'
    end
    object cdsToMLMSOperationsMLMS_OPERATION_NO: TAbmesFloatField
      FieldName = 'MLMS_OPERATION_NO'
    end
    object cdsToMLMSOperationsMLMS_OPERATION_VARIANT_NO: TAbmesFloatField
      FieldName = 'MLMS_OPERATION_VARIANT_NO'
    end
    object cdsToMLMSOperationsMLMSO_BRANCH_AND_CODE: TAbmesWideStringField
      FieldName = 'MLMSO_BRANCH_AND_CODE'
      Size = 81
    end
    object cdsToMLMSOperationsMLMSO_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MLMSO_IDENTIFIER'
      OnGetText = cdsToMLMSOperationsMLMSO_IDENTIFIERGetText
      Size = 250
    end
    object cdsToMLMSOperationsMLMSO_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMSO_DOC_BRANCH_CODE'
    end
    object cdsToMLMSOperationsMLMSO_DOC_CODE: TAbmesFloatField
      FieldName = 'MLMSO_DOC_CODE'
    end
    object cdsToMLMSOperationsMLMSO_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'MLMSO_HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Params = <>
    ProviderName = 'prvBranches'
    Left = 760
    Top = 72
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
    end
    object cdsBranchesBRANCH_NO: TAbmesFloatField
      FieldName = 'BRANCH_NO'
    end
  end
  object cdsOperationMovementQuantities: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conModelMovements
    Params = <
      item
        DataType = ftFloat
        Name = 'FROM_MLMSO_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_MLMSO_OBJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvOperationMovementQuantities'
    Left = 328
    Top = 365
    object cdsOperationMovementQuantitiesMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMSO_OBJECT_BRANCH_CODE'
    end
    object cdsOperationMovementQuantitiesMLMSO_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLMSO_OBJECT_CODE'
    end
    object cdsOperationMovementQuantitiesPRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_QUANTITY'
    end
    object cdsOperationMovementQuantitiesDETAIL_TOTAL_IN_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'DETAIL_TOTAL_IN_TECH_QUANTITY'
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object cdsOperationMovementQuantitiesDETAIL_TOTAL_OUT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'DETAIL_TOTAL_OUT_TECH_QUANTITY'
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object cdsOperationMovementQuantitiesDETAIL_TOTAL_WASTE_TECH_QTY: TAbmesFloatField
      FieldName = 'DETAIL_TOTAL_WASTE_TECH_QTY'
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object cdsOperationMovementQuantitiesDETAIL_REMAINING_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'DETAIL_REMAINING_TECH_QUANTITY'
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object cdsOperationMovementQuantitiesDETAIL_TOTAL_WORK_TECH_QTY: TAbmesFloatField
      FieldName = 'DETAIL_TOTAL_WORK_TECH_QTY'
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object cdsOperationMovementQuantitiesPRODUCT_TOTAL_IN_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_TOTAL_IN_TECH_QUANTITY'
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object cdsOperationMovementQuantitiesPRODUCT_TOTAL_OUT_TECH_QTY: TAbmesFloatField
      FieldName = 'PRODUCT_TOTAL_OUT_TECH_QTY'
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object cdsOperationMovementQuantitiesPRODUCT_TOTAL_WASTE_TECH_QTY: TAbmesFloatField
      FieldName = 'PRODUCT_TOTAL_WASTE_TECH_QTY'
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object cdsOperationMovementQuantitiesPRODUCT_REMAINING_TECH_QTY: TAbmesFloatField
      FieldName = 'PRODUCT_REMAINING_TECH_QTY'
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
  end
  object dsOperationMovementQuantities: TDataSource
    DataSet = cdsOperationMovementQuantities
    Left = 360
    Top = 365
  end
  object smrToOperation: TAbmesMatrixReport
    DataSource = dsHeader
    Pattern.Strings = (
      
        '[__FROM_MLL_NO_AS_TEXT_AND_FORK:28:L] [FROM_STAGE_IDENTIFIER:9:L' +
        '] '#1088#1079#1088#1074':[FROM_MLMS_REMAINING_WORKDAYS:3:R]|[__TO_MLL_NO_AS_TEXT_A' +
        'ND_FORK:28:L] [TO_STAGE_IDENTIFIER:9:L] '#1088#1079#1088#1074':[TO_MLMS_REMAINING_' +
        'WORKDAYS:3:R]'
      
        '--ID '#1050#1057#1063'/ID '#1053#1057#1063'---------------------'#1089#1090#1088'. '#1082'-'#1074#1086'--|--ID '#1050#1057#1063'/ID '#1053#1057#1063'-' +
        '--------------------'#1089#1090#1088'. '#1082'-'#1074#1086'--'
      
        '[FROM_DETAIL_NAME:31:L] [FROM_LINE_DETAIL_TECH_QUANTITY:9:R] [FR' +
        'OM_DETAIL_TECH_MEASURE_ABB:5:L]|[TO_DETAIL_NAME:31:L] [TO_LINE_D' +
        'ETAIL_TECH_QUANTITY:9:R] [TO_DETAIL_TECH_MEASURE_ABBREV:5:L]'
      
        '[FROM_PRODUCT_NAME:31:L] [FROM_TOTAL_PRODUCT_TECH_QTY:9:R] [FROM' +
        '_PRODUCT_TECH_MEASURE_ABB:5:L]|[TO_PRODUCT_NAME:31:L] [TO_TOTAL_' +
        'PRODUCT_TECH_QTY:9:R] [TO_PRODUCT_TECH_MEASURE_ABBREV:5:L]'
      
        '--ID '#1054#1087#1077#1088#1072#1094#1080#1103'----------------------------------|--ID '#1054#1087#1077#1088#1072#1094#1080#1103'---' +
        '-------------------------------'
      
        '[FROM_MLMS_OPERATION_IDENTIFIER:47:L]|[dsData._PRINT_TO_MLMSO_ID' +
        'ENTIFIER:47:L]'
      
        '--[__FROM_PROFESSION_NAME:43:L]--|--[__TO_PROFESSION_NAME:43:L]-' +
        '-'
      
        'ID '#1054#1087#1077#1088#1072#1090#1086#1088': [dsData._FROM_EMPLOYEE_NO:6:L] [dsData._FROM_EMPLOY' +
        'EE_NAME:27:L]|ID '#1054#1087#1077#1088#1072#1090#1086#1088': [dsData._TO_EMPLOYEE_NO:6:L] [dsData.' +
        '_TO_EMPLOYEE_NAME:27:L]'
      
        'ID '#1045#1082#1080#1087'    : [dsData.FROM_TEAM_CODE:6:L] [dsData.FROM_TEAM_NAME:' +
        '27:L]|ID '#1045#1082#1080#1087'    : [dsData.TO_TEAM_CODE:6:L] [dsData.TO_TEAM_NAM' +
        'E:27:L]'
      
        '--'#1050#1086#1084#1077#1085#1090#1072#1088'-------------------------------------|--'#1050#1086#1084#1077#1085#1090#1072#1088'------' +
        '-------------------------------'
      '[dsHeader.FROM_NOTES:47:L]|[dsHeader.TO_NOTES:47:L]'
      
        '--'#1056'-'#1052#1054#1044#1045#1083' '#1073#1077#1083#1077#1078#1082#1080'-----------------------------------------------' +
        '-------------------------------'
      '[dsHeader.PRINT_NOTES:95:L]')
    CurrentRecordOnly = True
    StrictFieldWidths = True
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    ReportHeader = smrHeader
    ReportFooter = smrFooter
    OnGetFieldValues = smrToOperationGetFieldValues
    Left = 328
    Top = 445
  end
  object smrToWaste: TAbmesMatrixReport
    DataSource = dsHeader
    Pattern.Strings = (
      
        '[__FROM_MLL_NO_AS_TEXT_AND_FORK:28:L] [FROM_STAGE_IDENTIFIER:9:L' +
        '] '#1088#1079#1088#1074':[FROM_MLMS_REMAINING_WORKDAYS:3:R]|'
      '--ID '#1050#1057#1063'/ID '#1053#1057#1063'---------------------'#1089#1090#1088'. '#1082'-'#1074#1086'--|'
      
        '[FROM_DETAIL_NAME:31:L] [FROM_LINE_DETAIL_TECH_QUANTITY:9:R] [FR' +
        'OM_DETAIL_TECH_MEASURE_ABB:5:L]|'
      
        '[FROM_PRODUCT_NAME:31:L] [FROM_TOTAL_PRODUCT_TECH_QTY:9:R] [FROM' +
        '_PRODUCT_TECH_MEASURE_ABB:5:L]|'
      
        '--ID '#1054#1087#1077#1088#1072#1094#1080#1103'----------------------------------|--'#1041#1083#1086#1082'----------' +
        '-------------------------------'
      
        '[FROM_MLMS_OPERATION_IDENTIFIER:47:L]|'#1058#1055': [dsData.TO_DEPT_NAME:3' +
        '2:L] [dsData.TO_DEPT_IDENTIFIER:8:L]'
      
        '--[__FROM_PROFESSION_NAME:43:L]--|'#1040#1082#1090': [dsData.WASTE_DOC_NO:25:L' +
        '] '#1044#1072#1090#1072': [dsData.WASTE_DOC_DATE:10:L]'
      
        'ID '#1054#1087#1077#1088#1072#1090#1086#1088': [dsData._FROM_EMPLOYEE_NO:6:L] [dsData._FROM_EMPLOY' +
        'EE_NAME:27:L]|'#1055#1088#1080#1077#1084#1072#1097': [dsData._TO_WASTE_EMPLOYEE_NO:6:L] [dsDat' +
        'a._TO_WASTE_EMPLOYEE_NAME:31:L]'
      
        'ID '#1045#1082#1080#1087'    : [dsData.FROM_TEAM_CODE:6:L] [dsData.FROM_TEAM_NAME:' +
        '27:L]|'
      '--'#1050#1086#1084#1077#1085#1090#1072#1088'-------------------------------------|'
      '[dsHeader.FROM_NOTES:47:L]|'
      
        '--'#1056'-'#1052#1054#1044#1045#1083' '#1073#1077#1083#1077#1078#1082#1080'-----------------------------------------------' +
        '-------------------------------'
      '[dsHeader.PRINT_NOTES:95:L]')
    CurrentRecordOnly = True
    StrictFieldWidths = True
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    ReportHeader = smrHeader
    ReportFooter = smrFooter
    OnGetFieldValues = smrToWasteGetFieldValues
    Left = 360
    Top = 445
  end
  object smrHeader: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      #1044#1086#1082#1091#1084#1077#1085#1090' '#1079#1072' '#1044#1074#1080#1078#1077#1085#1080#1077' '#1087#1086' '#1056'-'#1052#1054#1044#1045#1083'[__MOVEMENT_LEVEL_NAME:63:R]'
      
        '================================================================' +
        '==============================='
      #1053#1086#1084#1077#1088':       '#1044#1072#1090#1072' '#1080' '#1095#1072#1089':        ID '#1054#1055#1042':                 '#1042#1080#1076':'
      
        '[_OM_BRANCH_NO:2:R]/[OM_NO:8:L]  [OM_DATE:10:L] [OM_TIME:5:L]   ' +
        '[__SALE_IDENTIFIER:21:L]  [dsHeader.MODEL_OPERATIONS_STATUS_CODE' +
        ':2:R]  [__OMT_TYPE_AND_NAME:30:L]'
      
        '== '#1054#1058' =========================================|== '#1050#1066#1052' =========' +
        '===============================')
    CurrentRecordOnly = True
    StrictFieldWidths = False
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    OnGetFieldValues = smrHeaderGetFieldValues
    Left = 344
    Top = 413
  end
  object smrFooter: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      
        '================================================================' +
        '==============================='
      
        #1050'-'#1074#1086' '#1087#1088#1080' '#1044#1074#1080#1078#1077#1085#1080#1077':   '#1048#1079#1088#1072#1073#1086#1090#1077#1085#1086'       '#1054#1073#1097#1086'  '#1054#1076#1080#1090#1080#1088#1072#1085#1086' '#1052'.'#1077#1076'.     ' +
        ' '#1054#1076#1080#1090#1080#1088#1072#1097':'
      
        '              '#1050#1057#1063':   [WORK_DETAIL_TECH_QUANTITY:10:R] [TOTAL_DET' +
        'AIL_TECH_QUANTITY:10:R] [QA_DETAIL_TECH_QUANTITY:10:R] [dsHeader' +
        '.FROM_DETAIL_TECH_MEASURE_ABB:5:L]      [_QA_EMPLOYEE_NAME:30:L]'
      
        '              [__NSCH:4:L]   [WORK_PRODUCT_TECH_QUANTITY:10:R] [' +
        'TOTAL_PRODUCT_TECH_QUANTITY:10:R] [QA_PRODUCT_TECH_QUANTITY:10:R' +
        '] [dsHeader.FROM_PRODUCT_TECH_MEASURE_ABB:5:L]'
      
        '================================================================' +
        '==============================='
      
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
    OnGetFieldValues = smrFooterGetFieldValues
    Left = 344
    Top = 477
  end
  object cdsEmployeeFrameAllEmployees: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <
      item
        DataType = ftFloat
        Name = 'SPECIAL_PROFESSION_EMPLOYEE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPECIAL_PROFESSION_EMPLOYEE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPECIAL_PROFESSION_EMPLOYEE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPECIAL_PROFESSION_EMPLOYEE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUIRED_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUIRED_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUIRED_PROFESSION_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvEmployeeFrame'
    Left = 616
    Top = 72
  end
  object smrSpecControl: TAbmesMatrixReport
    DataSource = dsHeader
    Pattern.Strings = (
      
        '[__FROM_MLL_NO_AS_TEXT_AND_FORK:28:L] [FROM_STAGE_IDENTIFIER:9:L' +
        '] '#1088#1079#1088#1074':[FROM_MLMS_REMAINING_WORKDAYS:3:R]'
      
        '--ID '#1050#1057#1063'/ID '#1053#1057#1063'---------------------'#1089#1090#1088'. '#1082'-'#1074#1086'-------------------' +
        '-------------------------------'
      
        '[FROM_DETAIL_NAME:31:L] [FROM_LINE_DETAIL_TECH_QUANTITY:9:R] [FR' +
        'OM_DETAIL_TECH_MEASURE_ABB:5:L]'
      
        '[FROM_PRODUCT_NAME:31:L] [FROM_TOTAL_PRODUCT_TECH_QTY:9:R] [FROM' +
        '_PRODUCT_TECH_MEASURE_ABB:5:L]'
      
        '--ID '#1054#1087#1077#1088#1072#1094#1080#1103'---------------------------------------------------' +
        '-------------------------------'
      '[FROM_MLMS_OPERATION_IDENTIFIER:47:L]'
      
        '--[__FROM_PROFESSION_NAME:43:L]---------------------------------' +
        '-----------------'
      
        'ID '#1054#1087#1077#1088#1072#1090#1086#1088': [dsData._FROM_EMPLOYEE_NO:6:L] [dsData._FROM_EMPLOY' +
        'EE_NAME:27:L]'
      
        'ID '#1045#1082#1080#1087'    : [dsData.FROM_TEAM_CODE:6:L] [dsData.FROM_TEAM_NAME:' +
        '27:L]'
      
        '--'#1050#1086#1084#1077#1085#1090#1072#1088'------------------------------------------------------' +
        '-------------------------------'
      '[dsHeader.FROM_NOTES:95:L]'
      
        '--'#1056'-'#1052#1054#1044#1045#1083' '#1073#1077#1083#1077#1078#1082#1080'-----------------------------------------------' +
        '-------------------------------'
      '[dsHeader.PRINT_NOTES:95:L]')
    CurrentRecordOnly = True
    StrictFieldWidths = True
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    ReportHeader = smrSpecControlHeader
    ReportFooter = smrFooter
    OnGetFieldValues = smrToOperationGetFieldValues
    Left = 392
    Top = 445
  end
  object smrSpecControlHeader: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      #1044#1086#1082#1091#1084#1077#1085#1090' '#1079#1072' '#1044#1074#1080#1078#1077#1085#1080#1077' '#1087#1086' '#1056'-'#1052#1054#1044#1045#1083'[__MOVEMENT_LEVEL_NAME:63:R]'
      
        '================================================================' +
        '==============================='
      #1053#1086#1084#1077#1088':       '#1044#1072#1090#1072' '#1080' '#1095#1072#1089':        ID '#1054#1055#1042':                  '#1042#1080#1076':'
      
        '[_OM_BRANCH_NO:2:R]/[OM_NO:8:L]  [OM_DATE:10:L] [OM_TIME:5:L]   ' +
        '[__SALE_IDENTIFIER:21:L]   [dsHeader.MODEL_OPERATIONS_STATUS_COD' +
        'E:2:R]  [_OMT_TYPE_AND_NAME:30:L]'
      
        '== '#1054#1058' ==========================================================' +
        '===============================')
    CurrentRecordOnly = True
    StrictFieldWidths = False
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    OnGetFieldValues = smrHeaderGetFieldValues
    Left = 392
    Top = 413
  end
  object smrToNextOperation: TAbmesMatrixReport
    DataSource = dsHeader
    Pattern.Strings = (
      
        '[__FROM_MLL_NO_AS_TEXT_AND_FORK:28:L] [FROM_STAGE_IDENTIFIER:9:L' +
        '] '#1088#1079#1088#1074':[FROM_MLMS_REMAINING_WORKDAYS:3:R]|[__TO_MLL_NO_AS_TEXT_A' +
        'ND_FORK:28:L] [TO_STAGE_IDENTIFIER:9:L] '#1088#1079#1088#1074':[TO_MLMS_REMAINING_' +
        'WORKDAYS:3:R]'
      
        '--ID '#1050#1057#1063'/ID '#1053#1057#1063'---------------------'#1089#1090#1088'. '#1082'-'#1074#1086'--|--ID '#1050#1057#1063'/ID '#1053#1057#1063'-' +
        '--------------------'#1089#1090#1088'. '#1082'-'#1074#1086'--'
      
        '[FROM_DETAIL_NAME:31:L] [FROM_LINE_DETAIL_TECH_QUANTITY:9:R] [FR' +
        'OM_DETAIL_TECH_MEASURE_ABB:5:L]|[TO_DETAIL_NAME:31:L] [TO_LINE_D' +
        'ETAIL_TECH_QUANTITY:9:R] [TO_DETAIL_TECH_MEASURE_ABBREV:5:L]'
      
        '[FROM_PRODUCT_NAME:31:L] [FROM_TOTAL_PRODUCT_TECH_QTY:9:R] [FROM' +
        '_PRODUCT_TECH_MEASURE_ABB:5:L]|[TO_PRODUCT_NAME:31:L] [TO_TOTAL_' +
        'PRODUCT_TECH_QTY:9:R] [TO_PRODUCT_TECH_MEASURE_ABBREV:5:L]'
      
        '--ID '#1054#1087#1077#1088#1072#1094#1080#1103'----------------------------------|--ID '#1054#1087#1077#1088#1072#1094#1080#1103'---' +
        '-------------------------------'
      
        '[FROM_MLMS_OPERATION_IDENTIFIER:47:L]|[dsData._TO_MLMSO_IDENTIFI' +
        'ER:47:L]'
      
        '--[__FROM_PROFESSION_NAME:43:L]--|------------------------------' +
        '-----------------'
      
        'ID '#1054#1087#1077#1088#1072#1090#1086#1088': [dsData._FROM_EMPLOYEE_NO:6:L] [dsData._FROM_EMPLOY' +
        'EE_NAME:27:L]|'
      
        'ID '#1045#1082#1080#1087'    : [dsData.FROM_TEAM_CODE:6:L] [dsData.FROM_TEAM_NAME:' +
        '27:L]|'
      
        '--'#1050#1086#1084#1077#1085#1090#1072#1088'-------------------------------------|--'#1050#1086#1084#1077#1085#1090#1072#1088'------' +
        '-------------------------------'
      '[dsHeader.FROM_NOTES:47:L]|[dsHeader.TO_NOTES:47:L]'
      
        '--'#1056'-'#1052#1054#1044#1045#1083' '#1073#1077#1083#1077#1078#1082#1080'-----------------------------------------------' +
        '-------------------------------'
      '[dsHeader.PRINT_NOTES:95:L]')
    CurrentRecordOnly = True
    StrictFieldWidths = True
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    ReportHeader = smrHeader
    ReportFooter = smrFooter
    OnGetFieldValues = smrToOperationGetFieldValues
    Left = 424
    Top = 445
  end
end
