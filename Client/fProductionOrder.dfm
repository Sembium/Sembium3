inherited fmProductionOrder: TfmProductionOrder
  Left = 243
  Top = 212
  Caption = #1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1042#1098#1090#1088#1077#1096#1077#1085' - %s'
  ClientHeight = 566
  ClientWidth = 1017
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 523
    Width = 1017
    TabOrder = 3
    inherited pnlOKCancel: TPanel
      Left = 749
    end
    inherited pnlClose: TPanel
      Left = 660
    end
    inherited pnlApply: TPanel
      Left = 928
    end
    inherited pnlPrintButton: TPanel
      Left = 570
    end
    inherited pnlPrintCheckBox: TPanel
      Left = 507
    end
  end
  inherited pnlSaleCommonData: TPanel
    Width = 1001
    Height = 281
    BevelOuter = bvNone
    object gbProductionOrder: TGroupBox
      Left = 0
      Top = 0
      Width = 297
      Height = 65
      Caption = ' ID '#1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1042#1098#1090#1088#1077#1096#1077#1085' ('#1054#1055#1042') '
      TabOrder = 0
      object lblStatus: TLabel
        Left = 8
        Top = 16
        Width = 34
        Height = 13
        Caption = #1057#1090#1072#1090#1091#1089
      end
      object lblProductionOrderType: TLabel
        Left = 48
        Top = 16
        Width = 38
        Height = 13
        Caption = #1055#1088#1086#1094#1077#1089
        FocusControl = cbProductionOrderType
      end
      object lblSaleBranch: TLabel
        Left = 96
        Top = 16
        Width = 51
        Height = 13
        Caption = #1058#1055' '#1043#1083'.'
      end
      object lblSaleNo: TLabel
        Left = 152
        Top = 16
        Width = 40
        Height = 13
        Caption = #1054#1055#1042' No'
      end
      object lblSaleType: TLabel
        Left = 208
        Top = 16
        Width = 19
        Height = 13
        Caption = #1042#1080#1076
        FocusControl = cbSaleType
      end
      object edtStatus: TDBEdit
        Left = 8
        Top = 32
        Width = 33
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = '_ML_STATE_ABBREV'
        DataSource = dsData
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
      end
      object cbProductionOrderType: TJvDBLookupCombo
        Left = 48
        Top = 32
        Width = 41
        Height = 21
        DropDownCount = 19
        DropDownWidth = 220
        DeleteKeyClear = False
        DisplayAllFields = True
        DataField = 'PRODUCTION_ORDER_TYPE_CODE'
        DataSource = dsData
        LookupField = 'PRODUCTION_ORDER_TYPE_CODE'
        LookupDisplay = 'PRODUCTION_ORDER_TYPE_ABBREV;PRODUCTION_ORDER_TYPE_NAME'
        LookupSource = dsProductionOrderTypes
        TabOrder = 1
      end
      object cbSaleBranch: TJvDBLookupCombo
        Left = 96
        Top = 32
        Width = 49
        Height = 21
        DropDownWidth = 100
        DeleteKeyClear = False
        DisplayAllFields = True
        DataField = 'SALE_BRANCH_CODE'
        DataSource = dsData
        LookupField = 'BRANCH_CODE'
        LookupDisplay = 'BRANCH_NO;BRANCH_IDENTIFIER'
        LookupSource = dsBranches
        TabOrder = 2
      end
      object edtSaleNo: TDBEdit
        Left = 152
        Top = 32
        Width = 49
        Height = 21
        Color = clBtnFace
        DataField = 'SALE_NO'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 3
      end
      object pnlDocs: TToolBar
        Left = 253
        Top = 31
        Width = 37
        Height = 22
        Align = alNone
        AutoSize = True
        ButtonWidth = 24
        Images = dmMain.ilActions
        TabOrder = 5
        object btnDocs: TSpeedButton
          Left = 0
          Top = 0
          Width = 37
          Height = 22
          Hint = #1055#1086#1082#1072#1079#1074#1072' '#1052#1048#1048#1054' '#1085#1072' '#1054#1055#1042
          Flat = True
          Glyph.Data = {
            76070000424D760700000000000036000000280000001D000000100000000100
            2000000000004007000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000060A0000060A0000060A0000060A0000060
            A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000FFFF0000FFFF000060A0000060A000000000000000
            0000000000000060A0000060A0000060A000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000FF
            FF000060A0000060A00000FFFF0000000000000000000000000000FFFF0000FF
            FF000060A0000060A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000FFFF0000FFFF000060A0000060A00000FFFF0000FF
            FF000000000000000000000000000060A00000FFFF0000FFFF000060A0000060
            A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF
            FF0000FFFF000060A0000060A00000FFFF000060A00000000000000000000000
            00000060A0000060A00000FFFF0000FFFF000060A0000060A000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF000060A00000FF
            FF0000FFFF000060A00000000000000000000000000000FFFF000060A0000060
            A00000FFFF0000FFFF000060A000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
            FF00FF00FF0000FFFF0000FFFF000060A00000FFFF0000FFFF000060A0000000
            0000000000000000000000FFFF0000FFFF000060A00000FFFF0000FFFF000060
            A0000060A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00000000000000000000000000FF00FF0000FFFF0000FF
            FF000060A0000060A00000000000000000000000000000000000000000000060
            A00000FFFF000060A00000FFFF0000FFFF000060A0000060A000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            000000000000000000000000000000FFFF0000FFFF0000FFFF000060A00000FF
            FF0000FFFF000060A0000060A0000060A00000FFFF0000FFFF000060A00000FF
            FF0000FFFF000060A0000060A000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000FFFF0000FFFF000060A0000060A00000FFFF0000FFFF0000FF
            FF0000FFFF0000FFFF000060A0000060A00000FFFF0000FFFF000060A000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000FF
            FF0000FFFF000060A0000060A0000000000000000000000000000060A0000060
            A00000FFFF0000FFFF000060A0000060A000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF0000FFFF000060
            A0000000000000000000000000000060A0000060A00000FFFF0000FFFF000060
            A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000FFFF0000FFFF0000FFFF000060A000000000000060
            A00000FFFF0000FFFF0000FFFF000060A0000060A000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000060
            A0000060A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000060A0000060A0000060A0000060A000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          ParentShowHint = False
          ShowHint = True
          Transparent = False
          OnClick = btnDocsClick
        end
      end
      object cbSaleType: TJvDBLookupCombo
        Left = 208
        Top = 32
        Width = 41
        Height = 21
        DropDownWidth = 150
        DeleteKeyClear = False
        DisplayAllFields = True
        DataField = 'SALE_TYPE_CODE'
        DataSource = dsData
        LookupField = 'SALE_TYPE_CODE'
        LookupDisplay = 'SALE_TYPE_ABBREV;SALE_TYPE_NAME'
        LookupSource = dsSaleTypes
        TabOrder = 4
      end
    end
    object gbManager: TGroupBox
      Left = 304
      Top = 0
      Width = 193
      Height = 65
      Caption = ' '#1055#1086#1088#1098#1095#1080#1090#1077#1083' '
      TabOrder = 1
      DesignSize = (
        193
        65)
      inline frManagerEmployee: TfrEmployeeFieldEditFrameBald
        Left = 8
        Top = 32
        Width = 177
        Height = 22
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Anchors = [akLeft, akTop, akRight]
        Constraints.MaxHeight = 22
        Constraints.MinHeight = 22
        TabOrder = 0
        TabStop = True
        DesignSize = (
          177
          22)
        inherited gbEmployee: TGroupBox
          Width = 196
          inherited pnlEmployeeName: TPanel
            Width = 121
            inherited pnlRightButtons: TPanel
              Left = 85
            end
            inherited pnlEmpoyeeNameInner: TPanel
              Width = 85
              DesignSize = (
                85
                32)
              inherited cbEmployee: TJvDBLookupCombo
                Width = 84
              end
            end
          end
          inherited pnlPaddingRight: TPanel
            Left = 186
          end
        end
      end
    end
    object gbProductionStart: TGroupBox
      Left = 504
      Top = 0
      Width = 193
      Height = 65
      Caption = ' '#1057#1090#1072#1088#1090' '#1085#1072' ID '#1054#1055#1042' '
      TabOrder = 2
      object lblProductionStartDateDiff: TLabel
        Left = 128
        Top = 16
        Width = 24
        Height = 13
        Caption = #1088#1079#1088#1074
        FocusControl = edtProductionStartDateDiff
      end
      object lblProductionStartDate: TLabel
        Left = 8
        Top = 16
        Width = 26
        Height = 13
        Caption = #1044#1072#1090#1072
      end
      object lblProductionStartCoef: TLabel
        Left = 159
        Top = 16
        Width = 24
        Height = 13
        Caption = #1050#1092#1094'.'
        FocusControl = edtProductionStartCoef
      end
      inline frProductionStartPlanDate: TfrDateFieldEditFrame
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
      object edtProductionStartPlanDateColor: TEdit
        Left = 112
        Top = 32
        Width = 13
        Height = 21
        Color = 1276190
        Enabled = False
        TabOrder = 1
      end
      object edtProductionStartDateDiff: TDBEdit
        Left = 128
        Top = 32
        Width = 27
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = '_PRODUCTION_START_DATE_DIFF'
        DataSource = dsData
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 2
      end
      object edtProductionStartCoef: TDBEdit
        Left = 159
        Top = 32
        Width = 27
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'START_STAGE_COEF'
        DataSource = dsData
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 3
      end
    end
    object gbProduction: TGroupBox
      Left = 704
      Top = 0
      Width = 297
      Height = 65
      Caption = ' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' ID '#1054#1055#1042' '
      TabOrder = 3
      object lblStartAfterLimitingDays: TLabel
        Left = 168
        Top = 19
        Width = 7
        Height = 13
        Caption = #1040
        FocusControl = edtStartAfterLimitingDays
        Transparent = True
      end
      object lblProductionDept: TLabel
        Left = 8
        Top = 16
        Width = 96
        Height = 13
        Caption = #1058#1055' '#1056#1077#1072#1083#1080#1079#1072#1090#1086#1088
        FocusControl = frProductionDept
      end
      object lblModelLegth: TLabel
        Left = 160
        Top = 8
        Width = 44
        Height = 13
        Caption = #1055#1077#1088#1080#1086#1076#1080
      end
      object lblPlanModelLength: TLabel
        Left = 192
        Top = 19
        Width = 8
        Height = 13
        Caption = #1055
        FocusControl = edtPlanModelLength
        Transparent = True
      end
      object lblRealModelLength: TLabel
        Left = 216
        Top = 19
        Width = 7
        Height = 13
        Caption = #1056
        FocusControl = edtRealModelLength
        Transparent = True
      end
      object edtProductionDateDiff: TLabel
        Left = 240
        Top = 8
        Width = 49
        Height = 13
        Caption = #1054#1090#1082#1083' '#1042#1088#1084
      end
      object lblProductionDateDiffMax: TLabel
        Left = 248
        Top = 19
        Width = 6
        Height = 13
        Caption = '+'
        FocusControl = edtProductionDateDiffMax
        Transparent = True
      end
      object lblProductionDateDiffMin: TLabel
        Left = 272
        Top = 19
        Width = 6
        Height = 13
        Caption = #8212
        FocusControl = edtProductionDateDiffMax
        Transparent = True
      end
      object edtStartAfterLimitingDays: TDBEdit
        Left = 160
        Top = 32
        Width = 25
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'START_AFTER_LIMITING_DAYS'
        DataSource = dsData
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 1
      end
      inline frProductionDept: TfrDeptFieldEditFrameBald
        Left = 8
        Top = 32
        Width = 147
        Height = 22
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 22
        Constraints.MinHeight = 22
        TabOrder = 0
        TabStop = True
        DesignSize = (
          147
          22)
        inherited gbTreeNode: TGroupBox
          Width = 163
          DesignSize = (
            163
            49)
          inherited pnlTreeNode: TPanel
            Width = 147
            inherited pnlTreeNodeName: TPanel
              Width = 111
              DesignSize = (
                111
                22)
              inherited edtTreeNodeName: TDBEdit
                Width = 110
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = 0
              Align = alClient
            end
            inherited pnlRightButtons: TPanel
              Left = 111
            end
          end
        end
      end
      object edtPlanModelLength: TDBEdit
        Left = 184
        Top = 32
        Width = 25
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'INITIAL_TREATMENT_WORKDAYS'
        DataSource = dsData
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 2
      end
      object edtRealModelLength: TDBEdit
        Left = 208
        Top = 32
        Width = 25
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'REAL_PRODUCTION_WORKDAYS'
        DataSource = dsData
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 3
      end
      object edtProductionDateDiffMax: TDBEdit
        Left = 240
        Top = 32
        Width = 25
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'MAX_OP_DATE_POSITIVE_DIFF'
        DataSource = dsData
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 4
      end
      object edtProductionDateDiffMin: TDBEdit
        Left = 264
        Top = 32
        Width = 25
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'MIN_OP_DATE_NEGATIVE_DIFF'
        DataSource = dsData
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 5
      end
    end
    object gbProductionFinal: TGroupBox
      Left = 0
      Top = 72
      Width = 1001
      Height = 65
      Caption = ' '#1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042' '
      TabOrder = 4
      object lblTreeNodeName: TLabel
        Left = 8
        Top = 16
        Width = 92
        Height = 13
        Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      end
      object lblQuantity: TLabel
        Left = 408
        Top = 16
        Width = 46
        Height = 13
        Caption = #1056#1072#1073'. '#1082'-'#1074#1086
        FocusControl = edtQuantity
      end
      object txtMeasure: TDBText
        Left = 475
        Top = 35
        Width = 33
        Height = 17
        DataField = '_MEASURE_ABBREV'
        DataSource = dsData
      end
      object txtQuantityDiffMeasure: TDBText
        Left = 608
        Top = 35
        Width = 33
        Height = 17
        DataField = '_MEASURE_ABBREV'
        DataSource = dsData
      end
      object lblQuantityDiff: TLabel
        Left = 520
        Top = 16
        Width = 61
        Height = 13
        Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
      end
      object lblShipmentStore: TLabel
        Left = 648
        Top = 16
        Width = 88
        Height = 13
        Caption = #1058#1055' '#1055#1088#1080#1077#1084#1085#1080#1082
      end
      object lblEnterShStorePlanDate: TLabel
        Left = 808
        Top = 16
        Width = 110
        Height = 13
        Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1088#1080#1077#1084#1072#1085#1077
        FocusControl = frEnterShStorePlanDate
      end
      object lblEnterShipmentStoreDateDiff: TLabel
        Left = 968
        Top = 16
        Width = 24
        Height = 13
        Caption = #1088#1079#1088#1074
        FocusControl = edtEnterShipmentStoreDateDiff
      end
      object btnToggleQuantityDiffMeasure: TSpeedButton
        Left = 585
        Top = 32
        Width = 21
        Height = 21
        Action = actToggleQuantityDiffMeasure
        AllowAllUp = True
        GroupIndex = 1
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
      inline frProduct: TfrProductFieldEditFrameBald
        Left = 8
        Top = 32
        Width = 385
        Height = 22
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 22
        Constraints.MinHeight = 22
        TabOrder = 0
        TabStop = True
        DesignSize = (
          385
          22)
        inherited gbTreeNode: TGroupBox
          Width = 401
          DesignSize = (
            401
            49)
          inherited pnlTreeNode: TPanel
            Width = 385
            inherited pnlTreeNodeName: TPanel
              Width = 215
              DesignSize = (
                215
                22)
              inherited edtTreeNodeName: TDBEdit
                Width = 214
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = 215
            end
            inherited pnlRightButtons: TPanel
              Left = 326
            end
          end
        end
      end
      object edtQuantity: TDBEdit
        Left = 408
        Top = 32
        Width = 65
        Height = 21
        DataField = 'QUANTITY'
        DataSource = dsData
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      inline frShipmentStore: TfrDeptFieldEditFrameBald
        Left = 648
        Top = 32
        Width = 147
        Height = 22
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 22
        Constraints.MinHeight = 22
        TabOrder = 2
        TabStop = True
        DesignSize = (
          147
          22)
        inherited gbTreeNode: TGroupBox
          Width = 163
          DesignSize = (
            163
            49)
          inherited pnlTreeNode: TPanel
            Width = 147
            inherited pnlTreeNodeName: TPanel
              Width = 111
              DesignSize = (
                111
                22)
              inherited edtTreeNodeName: TDBEdit
                Width = 110
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = 0
              Align = alClient
            end
            inherited pnlRightButtons: TPanel
              Left = 111
            end
          end
        end
      end
      inline frEnterShStorePlanDate: TfrDateIntervalFrame
        Left = 808
        Top = 32
        Width = 145
        Height = 21
        Constraints.MaxHeight = 21
        Constraints.MaxWidth = 145
        Constraints.MinHeight = 21
        Constraints.MinWidth = 145
        TabOrder = 3
        TabStop = True
      end
      object edtShipmentStorePlanEnterDateColor: TMemo
        Left = 952
        Top = 32
        Width = 11
        Height = 21
        TabStop = False
        Color = 8438150
        Enabled = False
        TabOrder = 4
      end
      object edtEnterShipmentStoreDateDiff: TDBEdit
        Left = 968
        Top = 32
        Width = 25
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = '_ENTER_SH_STORE_DATE_DIFF'
        DataSource = dsData
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 5
      end
      object edtQuantityDiff: TDBEdit
        Left = 520
        Top = 32
        Width = 65
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = '_REMAINING_QUANTITY'
        DataSource = dsData
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 6
      end
    end
    object gbEngineering: TGroupBox
      Left = 0
      Top = 144
      Width = 561
      Height = 65
      Caption = ' '#1048#1085#1078#1077#1085#1077#1088#1080#1085#1075' '#1087#1086' ID '#1054#1055#1042' '
      TabOrder = 5
      object lblSpecVersionNo: TLabel
        Left = 8
        Top = 16
        Width = 51
        Height = 13
        Caption = #1048#1085#1078#1057#1090#1088#1091#1082
        FocusControl = edtSpecVersionNo
      end
      object lblModelSpecModelVariant: TLabel
        Left = 104
        Top = 16
        Width = 110
        Height = 13
        Caption = #1042#1072#1088#1080#1072#1085#1090' '#1085#1072' '#1055'-'#1052#1054#1044#1045#1083
        FocusControl = cbModelSpecModelVariant
      end
      object lblSpecVersionNo2: TLabel
        Left = 8
        Top = 34
        Width = 11
        Height = 13
        Caption = #8470
        FocusControl = edtSpecVersionNo
      end
      object lblStructureCoef: TLabel
        Left = 64
        Top = 16
        Width = 22
        Height = 13
        Hint = #1050#1086#1077#1092#1080#1094#1080#1077#1085#1090' '#1085#1072' '#1057#1090#1088#1091#1082#1090#1091#1088#1085#1072' '#1071#1089#1085#1086#1089#1090
        Caption = #1050#1057#1071
        FocusControl = edtStructureCoef
        ParentShowHint = False
        ShowHint = True
      end
      object lblIsOperationsModel: TLabel
        Left = 232
        Top = 16
        Width = 19
        Height = 13
        Caption = #1042#1080#1076
        FocusControl = edtIsOperationsModel
      end
      object lblModelDevelopmentType: TLabel
        Left = 264
        Top = 16
        Width = 59
        Height = 13
        Caption = #1054#1073#1077#1084' '#1056#1072#1079#1088'.'
        FocusControl = cbModelDevelopmentType
      end
      object lblOkidu: TLabel
        Left = 344
        Top = 16
        Width = 109
        Height = 13
        Caption = #1048#1085#1078#1077#1085#1077#1088' '#1052#1054#1044#1045#1083'-'#1080#1077#1088
        FocusControl = frOkidu
      end
      object edtSpecVersionNo: TDBEdit
        Left = 24
        Top = 32
        Width = 33
        Height = 21
        Color = clBtnFace
        DataField = 'MODEL_SPEC_VERSION_NO'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 0
      end
      object cbModelSpecModelVariant: TJvDBLookupCombo
        Left = 104
        Top = 32
        Width = 121
        Height = 21
        DropDownWidth = 600
        DisplayAllFields = True
        DataField = 'MODEL_SPEC_MODEL_VARIANT_NO'
        DataSource = dsData
        DisplayEmpty = ' '
        LookupField = 'SPEC_MODEL_VARIANT_NO'
        LookupDisplay = '_SHOW_IDENTIFIER;IS_EST_VARIANT;NOTES'
        LookupSource = dsSpecModelVariants
        TabOrder = 2
      end
      object edtStructureCoef: TDBEdit
        Left = 64
        Top = 32
        Width = 33
        Height = 21
        Color = 12971970
        DataField = '_DISPLAY_TEXT'
        DataSource = dsStructStatus
        ReadOnly = True
        TabOrder = 1
      end
      object edtIsOperationsModel: TDBEdit
        Left = 232
        Top = 32
        Width = 25
        Height = 21
        Color = 16636347
        DataField = 'MODEL_OPERATIONS_STATUS_CODE'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 3
      end
      object cbModelDevelopmentType: TJvDBLookupCombo
        Left = 264
        Top = 32
        Width = 73
        Height = 21
        DropDownCount = 3
        DropDownWidth = 400
        DeleteKeyClear = False
        DataField = 'MODEL_DEVELOPMENT_TYPE_CODE'
        DataSource = dsData
        FieldsDelimiter = '.'
        LookupField = 'MODEL_DEVELOPMENT_TYPE_CODE'
        LookupDisplay = 'MODEL_DEVELOPMENT_TYPE_ABBREV; MODEL_DEVELOPMENT_TYPE_NAME'
        LookupSource = dsModelDevelopmentTypes
        TabOrder = 4
      end
      inline frOkidu: TfrEmployeeFieldEditFrameBald
        Left = 344
        Top = 32
        Width = 209
        Height = 22
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 22
        Constraints.MinHeight = 22
        TabOrder = 5
        TabStop = True
        DesignSize = (
          209
          22)
        inherited gbEmployee: TGroupBox
          Width = 228
          inherited pnlEmployeeName: TPanel
            Width = 153
            inherited pnlRightButtons: TPanel
              Left = 117
            end
            inherited pnlEmpoyeeNameInner: TPanel
              Width = 117
              DesignSize = (
                117
                32)
              inherited cbEmployee: TJvDBLookupCombo
                Width = 116
              end
            end
          end
          inherited pnlPaddingRight: TPanel
            Left = 218
          end
        end
      end
    end
    object gbUsage: TGroupBox
      Left = 568
      Top = 144
      Width = 433
      Height = 65
      Caption = ' '#1048#1079#1087#1086#1083#1079#1074#1072#1085#1077' '#1085#1072' '#1088#1077#1079#1091#1083#1090#1072#1090#1072' '
      TabOrder = 6
      object lblConsumerDept: TLabel
        Left = 8
        Top = 16
        Width = 91
        Height = 13
        Caption = #1058#1055' '#1055#1086#1083#1079#1074#1072#1090#1077#1083
        FocusControl = frConsumerDept
      end
      object lblConsumeDateInterval: TLabel
        Left = 269
        Top = 16
        Width = 108
        Height = 13
        Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1086#1083#1079#1074#1072#1085#1077
        FocusControl = frConsumeDateInterval
      end
      inline frConsumerDept: TfrDeptFieldEditFrameBald
        Left = 8
        Top = 32
        Width = 253
        Height = 22
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 22
        Constraints.MinHeight = 22
        TabOrder = 0
        TabStop = True
        DesignSize = (
          253
          22)
        inherited gbTreeNode: TGroupBox
          Width = 269
          DesignSize = (
            269
            49)
          inherited pnlTreeNode: TPanel
            Width = 253
            inherited pnlTreeNodeName: TPanel
              Width = 106
              DesignSize = (
                106
                22)
              inherited edtTreeNodeName: TDBEdit
                Width = 105
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = 106
            end
            inherited pnlRightButtons: TPanel
              Left = 217
            end
          end
        end
      end
      inline frConsumeDateInterval: TfrDateIntervalFrame
        Left = 269
        Top = 32
        Width = 145
        Height = 21
        Constraints.MaxHeight = 21
        Constraints.MaxWidth = 145
        Constraints.MinHeight = 21
        Constraints.MinWidth = 145
        TabOrder = 1
        TabStop = True
      end
      object edtExpectedSaleDateColor: TEdit
        Left = 414
        Top = 32
        Width = 11
        Height = 21
        Color = 7642539
        Enabled = False
        TabOrder = 2
      end
    end
    object gbPriority: TGroupBox
      Left = 0
      Top = 216
      Width = 89
      Height = 65
      Caption = ' '#1054#1089#1085#1086#1074#1077#1085' '
      TabOrder = 7
      DesignSize = (
        89
        65)
      object lblPriority: TLabel
        Left = 11
        Top = 14
        Width = 54
        Height = 13
        Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090
      end
      object cbPriority: TJvDBLookupCombo
        Left = 8
        Top = 32
        Width = 73
        Height = 21
        DropDownWidth = 250
        DeleteKeyClear = False
        DataField = 'PRIORITY_CODE'
        DataSource = dsData
        Anchors = [akLeft, akTop, akRight]
        LookupField = 'PRIORITY_CODE'
        LookupDisplay = 'PRIORITY_NO;PRIORITY_NAME'
        LookupSource = dsPriorities
        TabOrder = 0
      end
    end
    object gbInvestedValue: TGroupBox
      Left = 192
      Top = 216
      Width = 265
      Height = 65
      Caption = ' '#1042#1083#1086#1078#1077#1085#1072' '#1057#1090#1086#1081#1085#1086#1089#1090' '#1086#1090' 1-'#1074#1080' '#1056#1077#1076' ('#1042#1057'1) '
      TabOrder = 9
      object lblSecondaryCurrencyAbbrev: TLabel
        Left = 123
        Top = 35
        Width = 13
        Height = 13
        Caption = '%s'
        FocusControl = edtPlanInvestedValue
      end
      object lblPlanInvestedValue: TLabel
        Left = 8
        Top = 16
        Width = 26
        Height = 13
        Caption = #1055#1083#1072#1085
        FocusControl = edtPlanInvestedValue
      end
      object lblRealInvestedValue: TLabel
        Left = 64
        Top = 16
        Width = 29
        Height = 13
        Caption = #1054#1090#1095#1077#1090
        FocusControl = edtRealInvestedValue
      end
      object lblInvestedValueDiff: TLabel
        Left = 152
        Top = 16
        Width = 61
        Height = 13
        Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
      end
      object btnInvestedValueDiffMeasure: TSpeedButton
        Left = 209
        Top = 32
        Width = 21
        Height = 21
        Action = actInvestedValueDiffMeasure
        AllowAllUp = True
        GroupIndex = 2
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
      object lblInvestedValueDiffMeasure: TLabel
        Left = 234
        Top = 35
        Width = 21
        Height = 13
        Caption = 'XXX'
      end
      object edtPlanInvestedValue: TDBEdit
        Left = 8
        Top = 32
        Width = 57
        Height = 21
        Color = clBtnFace
        DataField = 'PLANNED_INVESTED_SEC_PRICE'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 0
      end
      object edtRealInvestedValue: TDBEdit
        Left = 64
        Top = 32
        Width = 57
        Height = 21
        Color = clBtnFace
        DataField = 'ACCOUNT_INVESTED_SEC_PRICE'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 1
      end
      object edtInvestedValueDiff: TDBEdit
        Left = 152
        Top = 32
        Width = 57
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = '_INVESTED_VALUE_DIFF'
        DataSource = dsData
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 2
      end
    end
    object gbWastingSale: TGroupBox
      Left = 464
      Top = 216
      Width = 361
      Height = 65
      Caption = ' '#1055#1086#1079#1080#1094#1080#1103' '#1085#1072' ID '#1054#1055#1042' '
      TabOrder = 11
      object lblHasWaste: TLabel
        Left = 104
        Top = 16
        Width = 28
        Height = 13
        Caption = #1041#1083#1086#1082'.'
        FocusControl = edtHasWaste
      end
      object cbIsWasteCompensatingOrder: TJvDBComboBox
        Left = 8
        Top = 32
        Width = 97
        Height = 21
        DataField = 'IS_WASTE_COMPENSATING_ORDER'
        DataSource = dsData
        DropDownCount = 3
        Items.Strings = (
          #1054#1089#1085#1086#1074#1077#1085
          #1057#1098#1087#1098#1090#1089#1090#1074#1072#1097)
        TabOrder = 1
        Values.Strings = (
          #1054#1089#1085#1086#1074#1077#1085
          #1057#1098#1087#1098#1090#1089#1090#1074#1072#1097)
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object gbWastingSaleDetails: TPanel
        Left = 136
        Top = 15
        Width = 223
        Height = 48
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 2
        object pnlWastingSale: TPanel
          Left = 0
          Top = 0
          Width = 125
          Height = 48
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object lblWastingSale: TLabel
            Left = 0
            Top = 0
            Width = 84
            Height = 13
            Caption = 'ID '#1054#1055#1042' '#1054#1089#1085#1086#1074#1077#1085
          end
          object cbWastingSaleBranch: TJvDBLookupCombo
            Left = 0
            Top = 17
            Width = 49
            Height = 21
            DropDownWidth = 100
            DeleteKeyClear = False
            DisplayAllFields = True
            DataField = 'WASTING_SALE_BRANCH_CODE'
            DataSource = dsData
            LookupField = 'BRANCH_CODE'
            LookupDisplay = 'BRANCH_NO;BRANCH_IDENTIFIER'
            LookupSource = dsBranches
            TabOrder = 0
          end
          object edtWastingSaleNo: TDBEdit
            Left = 48
            Top = 17
            Width = 49
            Height = 21
            DataField = 'WASTING_SALE_NO'
            DataSource = dsData
            TabOrder = 1
          end
          object btnWastingSaleModelStatus: TBitBtn
            Left = 97
            Top = 16
            Width = 24
            Height = 22
            Action = actWastingSaleModelStatus
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
              FF00FF00FF00FF00FF0000000000FFFFFF00000000000000000000000000FFFF
              FF0000000000FFFFFF000000000000000000FFFFFF0000000000FF00FF00FF00
              FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
              FF00FF00FF00FF00FF0000000000FFFFFF000000000000000000FFFFFF000000
              000000000000FFFFFF000000000000000000FFFFFF0000000000FF00FF00FF00
              FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
              FF00FF00FF00FF00FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
              FF000000000000000000FFFFFF0000000000FFFFFF0000000000FF00FF00FF00
              FF00FF00FF0000000000FFFFFF0000FFFF000000000000000000FFFFFF000000
              0000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
              FF0000000000FFFFFF0000FFFF000000000000FFFF00FFFFFF0000000000FFFF
              FF0000FFFF0000000000FFFFFF0000000000FFFFFF0000000000FF00FF000000
              0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FF
              FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF000000
              000000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FFFF000000
              0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
              0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF
              FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFF00000000
              000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000000000000000
              0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFF0000FFFF
              00000000000000FFFF00FFFFFF0000FFFF000000000000FFFF00FFFFFF0000FF
              FF0000000000FFFFFF0000000000FFFFFF0000000000FF00FF00FFFF0000FFFF
              0000FFFF00000000000000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
              0000FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FFFF0000FFFF
              0000FFFF0000FFFF000000000000000000000000000000000000000000000000
              0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
          end
        end
        object pnlWasteCompensatorProductionOrders: TPanel
          Left = 126
          Top = 0
          Width = 97
          Height = 48
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 1
          object btnWasteCompensatorProductionOrders: TBitBtn
            Left = 2
            Top = 15
            Width = 89
            Height = 25
            Action = actWasteCompensatorProductionOrders
            Caption = #1057#1098#1087#1098#1090#1089#1090#1074#1072#1097#1080'...'
            TabOrder = 0
          end
        end
      end
      object edtHasWaste: TDBEdit
        Left = 104
        Top = 32
        Width = 25
        Height = 21
        Color = clBtnFace
        DataField = 'HAS_WASTE'
        DataSource = dsData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object gbNotes: TGroupBox
      Left = 832
      Top = 216
      Width = 169
      Height = 65
      Caption = ' '#1041#1077#1083#1077#1078#1082#1080' '
      TabOrder = 10
      DesignSize = (
        169
        65)
      object moNotes: TDBMemo
        Left = 5
        Top = 15
        Width = 159
        Height = 45
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataField = 'NOTES'
        DataSource = dsData
        TabOrder = 0
      end
    end
    object gbWorkPriority: TGroupBox
      Left = 96
      Top = 216
      Width = 89
      Height = 65
      Caption = ' '#1054#1087#1077#1088#1072#1090#1080#1074#1077#1085' '
      TabOrder = 8
      DesignSize = (
        89
        65)
      object lblWorkPriority: TLabel
        Left = 11
        Top = 14
        Width = 54
        Height = 13
        Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090
      end
      object cbWorkPriority: TJvDBLookupCombo
        Left = 8
        Top = 32
        Width = 73
        Height = 21
        DropDownWidth = 250
        DeleteKeyClear = False
        Color = 15461355
        DataField = 'WORK_PRIORITY_CODE'
        DataSource = dsData
        Anchors = [akLeft, akTop, akRight]
        LookupField = 'WORK_PRIORITY_CODE'
        LookupDisplay = 'WORK_PRIORITY_NO;WORK_PRIORITY_NAME'
        LookupSource = dsWorkPriorities
        TabOrder = 0
      end
    end
  end
  inherited pnlTimeLine: TPanel
    Left = 11
    Top = 300
    Width = 998
    inherited saTimeLine: TAbmesArrow
      Width = 967
      Points = <
        item
          X = 0
          Y = 21
          ArrowType = atNone
        end
        item
          X = 967
          Y = 21
          ArrowType = atForward
        end>
    end
    object tSaleLastChangeDate: TDBText [9]
      Left = 84
      Top = 85
      Width = 104
      Height = 13
      Hint = #1044#1072#1090#1072' '#1085#1072' '#1087#1086#1089#1083'. '#1080#1079#1084'. '#1085#1072' '#1044#1059
      AutoSize = True
      Color = 14540253
      DataField = '_SALE_LAST_CHANGE_DATE_SHOW'
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
    object saSaleLastChangeDate: TAbmesArrow [10]
      Left = 128
      Top = 41
      Width = 15
      Height = 44
      Hint = #1044#1072#1090#1072' '#1085#1072' '#1087#1086#1089#1083'. '#1080#1079#1084'. '#1085#1072' '#1044#1059
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
    object saCreateDate: TAbmesArrow [11]
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
    object tCreateDate: TDBText [12]
      Left = 3
      Top = 72
      Width = 57
      Height = 13
      Hint = #1044#1072#1090#1072' '#1085#1072' '#1089#1098#1079#1076#1072#1074#1072#1085#1077
      AutoSize = True
      Color = 14540253
      DataField = '_CREATE_DATE_SHOW'
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
    object saReceiveDate: TAbmesArrow
      Left = 664
      Top = 41
      Width = 15
      Height = 83
      Hint = #1044#1072#1090#1072' '#1079#1072' '#1087#1086#1083#1091#1095#1072#1074#1072#1085#1077
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
      Pen.Color = 7642539
      Pen.Width = 3
      HeadLength = 15
      HeadWidth = 10
    end
    object tReceiveDate: TDBText
      Left = 639
      Top = 124
      Width = 66
      Height = 13
      Hint = #1044#1072#1090#1072' '#1079#1072' '#1087#1086#1083#1091#1095#1072#1074#1072#1085#1077
      AutoSize = True
      Color = 14540253
      DataField = 'CONSUME_BEGIN_DATE'
      DataSource = dsData
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7642539
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
  end
  object gbProductionOrderData: TGroupBox [3]
    Left = 8
    Top = 456
    Width = 265
    Height = 65
    Caption = ' '#1044#1072#1085#1085#1080' '#1079#1072' '#1054#1055#1042' '
    TabOrder = 2
    object lblCreateDate: TLabel
      Left = 8
      Top = 16
      Width = 99
      Height = 13
      Caption = #1044#1072#1090#1072' '#1085#1072' '#1089#1098#1079#1076#1072#1074#1072#1085#1077
    end
    object lblSaleLineChangeDate: TLabel
      Left = 136
      Top = 16
      Width = 100
      Height = 13
      Caption = #1044#1072#1090#1072' '#1085#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1077
    end
    object Bevel1: TBevel
      Left = 128
      Top = 11
      Width = 9
      Height = 50
      Shape = bsLeftLine
    end
    object edtCreateDateColor: TEdit
      Left = 113
      Top = 32
      Width = 11
      Height = 21
      Color = 10485760
      Enabled = False
      TabOrder = 0
    end
    object edtSaleLastChangeDateColor: TEdit
      Left = 241
      Top = 32
      Width = 11
      Height = 21
      Color = 16748428
      Enabled = False
      TabOrder = 3
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
      TabOrder = 1
      TabStop = True
    end
    inline frSaleLineChangeDate: TfrDateFieldEditFrame
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
  end
  object gbModelStatus: TGroupBox [4]
    Left = 280
    Top = 456
    Width = 217
    Height = 65
    Caption = ' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1077#1085' '#1052#1054#1044#1045#1083' '
    TabOrder = 4
    object btnModelStatus: TBitBtn
      Left = 8
      Top = 30
      Width = 97
      Height = 25
      Action = actModelStatus
      Caption = #1057#1083#1077#1076#1077#1085#1077'...'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF00000000000000000000000000FFFF
        FF0000000000FFFFFF000000000000000000FFFFFF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF000000000000000000FFFFFF000000
        000000000000FFFFFF000000000000000000FFFFFF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF000000000000000000FFFFFF0000000000FFFFFF0000000000FF00FF00FF00
        FF00FF00FF0000000000FFFFFF0000FFFF000000000000000000FFFFFF000000
        0000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF0000000000FFFFFF0000FFFF000000000000FFFF00FFFFFF0000000000FFFF
        FF0000FFFF0000000000FFFFFF0000000000FFFFFF0000000000FF00FF000000
        0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FF
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF000000
        000000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FFFF000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
        0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF
        FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFF00000000
        000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000000000000000
        0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFF0000FFFF
        00000000000000FFFF00FFFFFF0000FFFF000000000000FFFF00FFFFFF0000FF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FF00FF00FFFF0000FFFF
        0000FFFF00000000000000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
        0000FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FFFF0000FFFF
        0000FFFF0000FFFF000000000000000000000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
      ParentShowHint = False
      ShowHint = True
      Spacing = -1
      TabOrder = 0
    end
    object btnModelCapacityStatus: TBitBtn
      Left = 112
      Top = 30
      Width = 97
      Height = 25
      Action = actModelCapacityStatus
      Caption = #1050#1072#1087#1072#1094#1080#1090#1077#1090'...'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000FF0000000000FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00000000000000FF000000FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
        FF00FF00FF000000FF000000FF000000000000000000FF00FF00000000008484
        84000000FF000000FF000000FF0084848400FF00FF00FF00FF0000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        FF00000000000000FF008484840084848400FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00000000008484
        8400000000000000FF00000000000000FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00000000008484
        8400000000000000FF00000000000000FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ParentShowHint = False
      ShowHint = True
      Spacing = -1
      TabOrder = 1
    end
  end
  object gbTransientStatus: TGroupBox [5]
    Left = 504
    Top = 456
    Width = 225
    Height = 65
    Caption = ' '#1057#1098#1097#1077#1089#1090#1074#1091#1074#1072#1085#1077' '#1085#1072' '#1059#1054#1073' '
    TabOrder = 5
    object lblWorkdaysToExist: TLabel
      Left = 168
      Top = 16
      Width = 43
      Height = 13
      Caption = #1056#1072#1073'. '#1076#1085#1080
      FocusControl = edtWorkdaysToExist
    end
    object cbTransientStatus: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 153
      Height = 21
      DeleteKeyClear = False
      DataField = '_TRANSIENT_STATUS_NAME'
      DataSource = dsData
      TabOrder = 0
    end
    object edtWorkdaysToExist: TDBEdit
      Left = 168
      Top = 32
      Width = 49
      Height = 21
      DataField = 'WORKDAYS_TO_EXIST'
      DataSource = dsData
      TabOrder = 1
    end
  end
  object pnlAutoComplete: TPanel [6]
    Left = 736
    Top = 461
    Width = 273
    Height = 60
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 6
    object lblForwardAutoComplete: TLabel
      Left = 8
      Top = 13
      Width = 186
      Height = 13
      Caption = #1054#1090#1095#1077#1090' '#1085#1072' '#1056'-'#1052#1054#1044#1045#1083'-'#1072' '#1074' '#1087#1088#1072#1074#1072' '#1087#1086#1089#1086#1082#1072
    end
    object lblBackwardAutoComplete: TLabel
      Left = 8
      Top = 35
      Width = 197
      Height = 13
      Caption = #1054#1090#1095#1077#1090' '#1085#1072' '#1056'-'#1052#1054#1044#1045#1083'-'#1072' '#1074' '#1086#1073#1088#1072#1090#1085#1072' '#1087#1086#1089#1086#1082#1072
    end
    object btnForwardAutoComplete: TBitBtn
      Left = 232
      Top = 10
      Width = 33
      Height = 20
      Action = actForwardAutoComplete
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000000000000000000000000000000000000000FF000000
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000FF000000FF000000FF000000FF000000FF000000
        FF000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000FF000000FF000000FF000000FF000000FF000000
        FF000000FF000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000FF000000FF000000FF000000FF000000FF000000
        FF000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000000000000000000000000000000000000000FF000000
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 0
    end
    object btnBackwardAutoComplete: TBitBtn
      Left = 216
      Top = 32
      Width = 33
      Height = 20
      Action = actBackwardAutoComplete
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000FF0000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000FF000000FF00000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00000000000000FF000000FF000000FF000000FF000000
        FF000000FF000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000FF000000FF000000FF000000FF000000FF000000
        FF000000FF000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00000000000000FF000000FF000000FF000000FF000000
        FF000000FF000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000FF000000FF00000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000FF0000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 1
    end
  end
  object pnlAutoCompleteCheck: TPanel [7]
    Left = 744
    Top = 454
    Width = 105
    Height = 17
    BevelOuter = bvNone
    TabOrder = 7
    object chkAutoComplete: TAbmesDBCheckBox
      Left = 4
      Top = 0
      Width = 97
      Height = 17
      Caption = #1050#1072#1089#1082#1072#1076#1077#1085' '#1086#1090#1095#1077#1090
      DataField = 'IS_AUTO_COMPLETIVE'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      ImmediateUpdateField = True
    end
  end
  inherited alActions: TActionList
    Left = 280
    Top = 0
    inherited actForm: TAction
      Caption = #1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1042#1098#1090#1088#1077#1096#1077#1085' - %s'
    end
    object actForwardAutoComplete: TAction [8]
      Hint = #1054#1090#1095#1077#1090' '#1085#1072' '#1056'-'#1052#1054#1044#1045#1083'-'#1072' '#1074' '#1087#1088#1072#1074#1072' '#1087#1086#1089#1086#1082#1072
      ImageIndex = 87
      OnExecute = actForwardAutoCompleteExecute
      OnUpdate = actForwardAutoCompleteUpdate
    end
    object actBackwardAutoComplete: TAction [9]
      Hint = #1054#1090#1095#1077#1090' '#1085#1072' '#1056'-'#1052#1054#1044#1045#1083'-'#1072' '#1074' '#1086#1073#1088#1072#1090#1085#1072' '#1087#1086#1089#1086#1082#1072
      ImageIndex = 88
      OnExecute = actBackwardAutoCompleteExecute
      OnUpdate = actBackwardAutoCompleteUpdate
    end
    inherited actModelStatus: TAction
      ImageIndex = 18
    end
    inherited actModelCapacityStatus: TAction
      Caption = #1050#1072#1087#1072#1094#1080#1090#1077#1090'...'
      Hint = #1040#1085#1072#1083#1080#1079' '#1085#1072' '#1050#1072#1087#1072#1094#1080#1090#1077#1090#1072' '#1087#1086' '#1056'-'#1052#1054#1044#1045#1083'-'#1072
      ImageIndex = 51
    end
    inherited actToggleQuantityDiffMeasure: TAction
      OnUpdate = actToggleQuantityDiffMeasureUpdate
    end
    inherited actInvestedValueDiffMeasure: TAction
      OnUpdate = actInvestedValueDiffMeasureUpdate
    end
    inherited actWastingSaleModelStatus: TAction
      Caption = ''
      Hint = #1057#1083#1077#1076#1077#1085#1077
    end
    inherited actWasteCompensatorProductionOrders: TAction
      ImageIndex = -1
    end
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conSales
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
    ProviderName = 'prvProductionOrder'
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    AfterApplyUpdates = cdsDataAfterApplyUpdates
    inherited cdsDataSALE_BRANCH_CODE: TAbmesFloatField [5]
      DisplayLabel = #1058#1055' '#1043#1083#1072#1074#1085#1086
      Required = True
      OnChange = cdsDataSALE_BRANCH_CODEChange
    end
    inherited cdsDataREQUEST_BRANCH_CODE: TAbmesFloatField [6]
    end
    inherited cdsDataREQUEST_NO: TAbmesFloatField [7]
    end
    inherited cdsDataREQUEST_LINE_NO: TAbmesFloatField [8]
    end
    inherited cdsDataMANAGER_EMPLOYEE_CODE: TAbmesFloatField [9]
      DisplayLabel = #1055#1086#1088#1098#1095#1080#1090#1077#1083
      Required = True
    end
    inherited cdsDataCLIENT_COMPANY_CODE: TAbmesFloatField [10]
    end
    inherited cdsDataCLIENT_REQUEST_NO: TAbmesWideStringField [11]
    end
    inherited cdsDataREQUEST_SEND_DATE: TAbmesSQLTimeStampField [12]
    end
    inherited cdsDataREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField [13]
    end
    inherited cdsDataOFFER_SEND_PLAN_DATE: TAbmesSQLTimeStampField [14]
    end
    inherited cdsDataOFFER_SEND_DATE: TAbmesSQLTimeStampField [15]
    end
    inherited cdsDataOFFER_ANSWER_PLAN_DATE: TAbmesSQLTimeStampField [16]
    end
    inherited cdsDataOFFER_ANSWER_DATE: TAbmesSQLTimeStampField [17]
    end
    inherited cdsDataDECISION_PLAN_DATE: TAbmesSQLTimeStampField [18]
    end
    inherited cdsDataDECISION_DATE: TAbmesSQLTimeStampField [19]
    end
    inherited cdsDataDECISION_TYPE_CODE: TAbmesFloatField [20]
    end
    inherited cdsDataPRODUCT_CODE: TAbmesFloatField [21]
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      Required = True
    end
    inherited cdsDataQUANTITY: TAbmesFloatField [22]
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      Required = True
      OnChange = cdsDataQUANTITYChange
    end
    inherited cdsDataMANUFACTURE_QUANTITY: TAbmesFloatField [23]
    end
    inherited cdsDataMANUFACTURE_DECISION_EXPECTED: TAbmesFloatField [24]
    end
    inherited cdsDataSINGLE_WEIGHT: TAbmesFloatField [25]
    end
    inherited cdsDataCURRENCY_CODE: TAbmesFloatField [26]
    end
    inherited cdsDataSINGLE_PRICE: TAbmesFloatField [27]
    end
    inherited cdsDataOUR_OFFER_SINGLE_PRICE: TAbmesFloatField [28]
    end
    inherited cdsDataCL_OFFER_SINGLE_PRICE: TAbmesFloatField [29]
    end
    inherited cdsDataCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField [30]
    end
    inherited cdsDataOUR_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField [31]
    end
    inherited cdsDataRECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField [32]
    end
    inherited cdsDataIS_VENDOR_TRANSPORT: TAbmesFloatField [33]
    end
    inherited cdsDataSHIPMENT_TYPE_CODE: TAbmesFloatField [34]
    end
    inherited cdsDataCUSTOMHOUSE_CODE: TAbmesFloatField [35]
    end
    inherited cdsDataSALE_NO: TAbmesFloatField [36]
    end
    inherited cdsDataNOTES: TAbmesWideStringField [37]
    end
    inherited cdsDataSALE_TYPE_CODE: TAbmesFloatField [38]
      DisplayLabel = #1042#1080#1076
      Required = True
    end
    inherited cdsDataOKIDU_EMPLOYEE_CODE: TAbmesFloatField [39]
      DisplayLabel = #1055#1088'&'#1055#1083' '#1048#1085#1078#1077#1085#1077#1088
    end
    inherited cdsDataSOS_OKIDU: TAbmesFloatField [40]
    end
    inherited cdsDataSHIPMENT_DATE: TAbmesSQLTimeStampField [41]
    end
    inherited cdsDataSHIPMENT_STORE_CODE: TAbmesFloatField [42]
      DisplayLabel = #1058#1055' '#1055#1088#1080#1077#1084#1085#1080#1082
      Required = True
    end
    inherited cdsDataENTER_SH_STORE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField [43]
      DisplayLabel = #1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1055#1088#1080#1077#1084#1072#1085#1077
      Required = True
    end
    inherited cdsDataML_STATE_CODE: TAbmesFloatField [44]
    end
    inherited cdsDataENTER_SH_STORE_PLAN_END_DATE: TAbmesSQLTimeStampField
      Required = True
    end
    inherited cdsDataPRODUCT_NAME: TAbmesWideStringField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      Required = True
    end
    inherited cdsDataSALE_LAST_CHANGE_DATE: TAbmesSQLTimeStampField
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object cdsData_SALE_TYPE_ABBREV: TAbmesWideStringField [67]
      FieldKind = fkLookup
      FieldName = '_SALE_TYPE_ABBREV'
      LookupDataSet = cdsSaleTypes
      LookupKeyFields = 'SALE_TYPE_CODE'
      LookupResultField = 'SALE_TYPE_ABBREV'
      KeyFields = 'SALE_TYPE_CODE'
      Size = 5
      Lookup = True
    end
    inherited cdsDataOUR_OFFER_QUANTITY: TAbmesFloatField [68]
    end
    inherited cdsDataCL_OFFER_QUANTITY: TAbmesFloatField [69]
    end
    inherited cdsDataPLANNED_INVESTED_SEC_PRICE: TAbmesFloatField [70]
    end
    inherited cdsDataACCOUNT_MEASURE_COEF: TAbmesFloatField [71]
    end
    inherited cdsDataPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField [72]
    end
    inherited cdsData_ENTER_SH_STORE_PLAN_PERIOD_PART: TAbmesFloatField [73]
    end
    inherited cdsDataFIRST_OUT_DATE: TAbmesSQLTimeStampField [74]
    end
    inherited cdsData_COMPLETED_QUANTITY_PART: TAbmesFloatField [75]
    end
    inherited cdsDataACCOUNT_INVESTED_SEC_PRICE: TAbmesFloatField [76]
    end
    inherited cdsDataMODEL_SPEC_VERSION_NO: TAbmesFloatField [77]
    end
    inherited cdsDataMODEL_SPEC_MODEL_VARIANT_NO: TAbmesFloatField [78]
    end
    inherited cdsDataPLANNED_STORE_DEAL_CODE: TAbmesFloatField [79]
    end
    inherited cdsDataPRODUCT_NO: TAbmesFloatField [80]
    end
    inherited cdsDataPSD_PRIORITY_CODE: TAbmesFloatField [81]
    end
    inherited cdsDataMODEL_CREATE_DATE: TAbmesSQLTimeStampField [82]
    end
    inherited cdsDataML_OBJECT_BRANCH_CODE: TAbmesFloatField [83]
    end
    inherited cdsDataML_OBJECT_CODE: TAbmesFloatField [84]
    end
    inherited cdsDataIS_OPERATIONS_MODEL: TAbmesFloatField [85]
      Alignment = taCenter
      DisplayBoolValues = #1050';'#1045
    end
    inherited cdsDataMODEL_ACCOMPLISHMENT_COEF: TAbmesFloatField [86]
    end
    inherited cdsDataPRODUCTION_START_PLAN_DATE: TAbmesSQLTimeStampField [87]
    end
    inherited cdsDataPRODUCTION_WORKDAYS: TAbmesFloatField
      OnGetText = cdsDataPRODUCTION_WORKDAYSGetText
    end
    inherited cdsData_ENTER_SH_STORE_PLAN_END_DATE_SHOW: TAbmesSQLTimeStampField
      Alignment = taCenter
    end
    inherited cdsDataWORK_PRIORITY_CODE: TAbmesFloatField
      Required = True
    end
    object cdsDataSALE_GROUP_BRANCH_CODE: TAbmesFloatField [101]
      FieldName = 'SALE_GROUP_BRANCH_CODE'
      ProviderFlags = []
    end
    object cdsDataSALE_GROUP_CODE: TAbmesFloatField [102]
      FieldName = 'SALE_GROUP_CODE'
      ProviderFlags = []
    end
    object cdsDataPRIORITY_CODE: TAbmesFloatField [107]
      Alignment = taLeftJustify
      DisplayLabel = #1055#1088#1080#1086#1088#1080#1090#1077#1090
      FieldName = 'PRIORITY_CODE'
      ProviderFlags = []
      Required = True
    end
    object cdsData_CREATE_DATE_SHOW: TAbmesSQLTimeStampField [111]
      FieldKind = fkCalculated
      FieldName = '_CREATE_DATE_SHOW'
      Calculated = True
    end
    object cdsData_SALE_LAST_CHANGE_DATE_SHOW: TAbmesSQLTimeStampField [112]
      FieldKind = fkCalculated
      FieldName = '_SALE_LAST_CHANGE_DATE_SHOW'
      Calculated = True
    end
    object cdsDataPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField [119]
      DisplayLabel = #1055#1088#1086#1094#1077#1089
      FieldName = 'PRODUCTION_ORDER_TYPE_CODE'
      Required = True
      OnChange = cdsDataPRODUCTION_ORDER_TYPE_CODEChange
    end
    object cdsDataIS_AUTO_COMPLETIVE: TAbmesFloatField [120]
      FieldName = 'IS_AUTO_COMPLETIVE'
      FieldValueType = fvtBoolean
    end
    object cdsDataIS_FORWARD_AUTO_COMPLETED: TAbmesFloatField [121]
      FieldName = 'IS_FORWARD_AUTO_COMPLETED'
      FieldValueType = fvtBoolean
    end
    object cdsDataRECEIVE_DATE: TAbmesSQLTimeStampField [122]
      DisplayLabel = #1054#1095#1072#1082#1074#1072#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1087#1088#1086#1076#1072#1078#1073#1072
      FieldName = 'RECEIVE_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object cdsData_RECEIVE_DATE_SHOW: TAbmesSQLTimeStampField [123]
      FieldKind = fkCalculated
      FieldName = '_RECEIVE_DATE_SHOW'
      Calculated = True
    end
    object cdsData_PRODUCTION_ORDER_TYPE_TEXT: TAbmesWideStringField [124]
      FieldKind = fkLookup
      FieldName = '_PRODUCTION_ORDER_TYPE_TEXT'
      LookupDataSet = cdsProductionOrderTypes
      LookupKeyFields = 'PRODUCTION_ORDER_TYPE_CODE'
      LookupResultField = 'PRODUCTION_ORDER_TYPE_TEXT'
      KeyFields = 'PRODUCTION_ORDER_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsData_PROD_ORDER_TYPE_IS_REVERSIBLE: TAbmesFloatField [125]
      FieldKind = fkLookup
      FieldName = '_PROD_ORDER_TYPE_IS_REVERSIBLE'
      LookupDataSet = cdsProductionOrderTypes
      LookupKeyFields = 'PRODUCTION_ORDER_TYPE_CODE'
      LookupResultField = 'IS_REVERSIBLE'
      KeyFields = 'PRODUCTION_ORDER_TYPE_CODE'
      FieldValueType = fvtBoolean
      Lookup = True
    end
    object cdsDataIS_BACKWARD_AUTO_COMPLETED: TAbmesFloatField [126]
      FieldName = 'IS_BACKWARD_AUTO_COMPLETED'
      FieldValueType = fvtBoolean
    end
    object cdsDataWORKDAYS_TO_EXIST: TAbmesFloatField [127]
      DisplayLabel = #1056#1072#1073#1086#1090#1085#1080' '#1076#1085#1080' '#1085#1072' '#1089#1098#1097#1077#1089#1090#1074#1091#1074#1072#1085#1077' '#1085#1072' '#1059#1087#1088#1072#1074#1083#1103#1077#1084#1080#1103' '#1054#1073#1077#1082#1090
      FieldName = 'WORKDAYS_TO_EXIST'
      ProviderFlags = [pfInUpdate]
      MaxValue = 2147483647.000000000000000000
      MinValue = 1.000000000000000000
      FieldValueType = fvtInteger
    end
    object cdsDataTRANSIENT_STATUS_CODE: TAbmesFloatField [128]
      FieldName = 'TRANSIENT_STATUS_CODE'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsDataTRANSIENT_STATUS_CODEChange
    end
    object cdsData_TRANSIENT_STATUS_NAME: TAbmesWideStringField [129]
      FieldKind = fkLookup
      FieldName = '_TRANSIENT_STATUS_NAME'
      LookupDataSet = cdsTransientStatuses
      LookupKeyFields = 'TRANSIENT_STATUS_CODE'
      LookupResultField = 'TRANSIENT_STATUS_NAME'
      KeyFields = 'TRANSIENT_STATUS_CODE'
      Lookup = True
    end
    object cdsData_MODEL_SPEC_MODEL_VARIANT: TAbmesWideStringField [130]
      FieldKind = fkLookup
      FieldName = '_MODEL_SPEC_MODEL_VARIANT'
      LookupDataSet = cdsSpecModelVariants
      LookupKeyFields = 'SPEC_MODEL_VARIANT_NO'
      LookupResultField = '_SHOW_IDENTIFIER'
      KeyFields = 'MODEL_SPEC_MODEL_VARIANT_NO'
      Size = 50
      Lookup = True
    end
    object cdsDataCONSUMER_DEPT_CODE: TAbmesFloatField [131]
      FieldName = 'CONSUMER_DEPT_CODE'
    end
    object cdsDataCONSUME_BEGIN_DATE: TAbmesSQLTimeStampField [132]
      FieldName = 'CONSUME_BEGIN_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object cdsDataCONSUME_END_DATE: TAbmesSQLTimeStampField [133]
      FieldName = 'CONSUME_END_DATE'
    end
    object cdsDataDOC_BRANCH_CODE: TAbmesFloatField [134]
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDataDOC_CODE: TAbmesFloatField [135]
      FieldName = 'DOC_CODE'
    end
    object cdsData_PRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField [136]
      FieldKind = fkLookup
      FieldName = '_PRODUCTION_ORDER_TYPE_ABBREV'
      LookupDataSet = cdsProductionOrderTypes
      LookupKeyFields = 'PRODUCTION_ORDER_TYPE_CODE'
      LookupResultField = 'PRODUCTION_ORDER_TYPE_ABBREV'
      KeyFields = 'PRODUCTION_ORDER_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsData_SALE_BRANCH_IDENTIFIER: TAbmesWideStringField [137]
      FieldKind = fkLookup
      FieldName = '_SALE_BRANCH_IDENTIFIER'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_CODE_AND_NAME'
      KeyFields = 'SALE_BRANCH_CODE'
      Lookup = True
    end
    object cdsData_MANAGER_EMPLOYEE_NAME: TAbmesWideStringField [138]
      FieldKind = fkLookup
      FieldName = '_MANAGER_EMPLOYEE_NAME'
      LookupDataSet = frManagerEmployee.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NAME'
      KeyFields = 'MANAGER_EMPLOYEE_CODE'
      Size = 50
      Lookup = True
    end
    object cdsData_ENTER_SH_STORE_PERIOD: TAbmesWideStringField [139]
      FieldKind = fkCalculated
      FieldName = '_ENTER_SH_STORE_PERIOD'
      Calculated = True
    end
    object cdsData_CONSUMER_DEPT_IDENTIFIER: TAbmesWideStringField [140]
      FieldKind = fkCalculated
      FieldName = '_CONSUMER_DEPT_IDENTIFIER'
      Calculated = True
    end
    object cdsData_CONSUME_PERIOD: TAbmesWideStringField [141]
      FieldKind = fkCalculated
      FieldName = '_CONSUME_PERIOD'
      Calculated = True
    end
    object cdsData_WASTING_SALE_BRANCH_IDENTIFIER: TAbmesWideStringField [142]
      FieldKind = fkLookup
      FieldName = '_WASTING_SALE_BRANCH_IDENTIFIER'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_IDENTIFIER'
      KeyFields = 'WASTING_SALE_OBJ_BRANCH_CODE'
      Lookup = True
    end
    object cdsData_SECONDARY_CURRENCY_ABBREV: TAbmesWideStringField [143]
      FieldKind = fkCalculated
      FieldName = '_SECONDARY_CURRENCY_ABBREV'
      Size = 10
      Calculated = True
    end
    object cdsData_INVESTED_VALUE_DIFF_MEASURE: TAbmesWideStringField [144]
      FieldKind = fkCalculated
      FieldName = '_INVESTED_VALUE_DIFF_MEASURE'
      Size = 10
      Calculated = True
    end
    object cdsData_QUANTITY_DIFF_MEASURE: TAbmesWideStringField [145]
      FieldKind = fkCalculated
      FieldName = '_QUANTITY_DIFF_MEASURE'
      Size = 10
      Calculated = True
    end
    object cdsData_QUANTITY_DIFF: TAbmesWideStringField [146]
      FieldKind = fkCalculated
      FieldName = '_QUANTITY_DIFF'
      Size = 10
      Calculated = True
    end
    object cdsData_INVESTED_VALUE_DIFF_REPORT: TAbmesWideStringField [147]
      FieldKind = fkCalculated
      FieldName = '_INVESTED_VALUE_DIFF_REPORT'
      Calculated = True
    end
    object cdsData_PRIORITY_NO: TAbmesFloatField [149]
      FieldKind = fkLookup
      FieldName = '_PRIORITY_NO'
      LookupDataSet = cdsPriorities
      LookupKeyFields = 'PRIORITY_CODE'
      LookupResultField = 'PRIORITY_NO'
      KeyFields = 'PRIORITY_CODE'
      Lookup = True
    end
    object cdsData_WORK_PRIORITY_NO: TAbmesFloatField [150]
      FieldKind = fkLookup
      FieldName = '_WORK_PRIORITY_NO'
      LookupDataSet = cdsWorkPriorities
      LookupKeyFields = 'WORK_PRIORITY_CODE'
      LookupResultField = 'WORK_PRIORITY_NO'
      KeyFields = 'WORK_PRIORITY_CODE'
      Lookup = True
    end
    object cdsDataHAS_FORWARD_START_STORE_DEALS: TAbmesFloatField
      FieldName = 'HAS_FORWARD_START_STORE_DEALS'
      FieldValueType = fvtBoolean
    end
    object cdsDataHAS_BACKWARD_START_STORE_DEALS: TAbmesFloatField
      FieldName = 'HAS_BACKWARD_START_STORE_DEALS'
      FieldValueType = fvtBoolean
    end
    object cdsData_MANAGER_EMPLOYEE_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_MANAGER_EMPLOYEE_NO'
      LookupDataSet = frManagerEmployee.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NO'
      KeyFields = 'MANAGER_EMPLOYEE_CODE'
      Lookup = True
    end
    object cdsData_OKIDU_EMPLOYEE_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_OKIDU_EMPLOYEE_NO'
      LookupDataSet = frManagerEmployee.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NO'
      KeyFields = 'OKIDU_EMPLOYEE_CODE'
      Lookup = True
    end
    object cdsData_OKIDU_EMPLOYEE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_OKIDU_EMPLOYEE_NAME'
      LookupDataSet = frOkidu.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NAME'
      KeyFields = 'OKIDU_EMPLOYEE_CODE'
      Size = 100
      Lookup = True
    end
  end
  inherited cdsBranches: TAbmesClientDataSet
    Left = 704
    Top = 360
    inherited cdsBranchesBRANCH_CODE: TAbmesFloatField
      DisplayWidth = 3
    end
    inherited cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField
      DisplayWidth = 10
    end
    inherited cdsBranchesBRANCH_NO: TAbmesFloatField
      Alignment = taLeftJustify
      DisplayWidth = 3
    end
  end
  inherited cdsSpecModelVariants: TAbmesClientDataSet
    Left = 928
    Top = 360
    inherited cdsSpecModelVariants_SHOW_IDENTIFIER: TAbmesWideStringField
      DisplayWidth = 20
    end
  end
  inherited dsSpecModelVariants: TDataSource
    Left = 928
    Top = 392
  end
  object cdsSaleTypes: TAbmesClientDataSet [17]
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Params = <>
    ProviderName = 'prvSaleTypes'
    Left = 800
    Top = 360
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
  object cdsPriorities: TAbmesClientDataSet [19]
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvPriorities'
    Left = 960
    Top = 360
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
  object cdsTransientStatuses: TAbmesClientDataSet [21]
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvTransientStatuses'
    Left = 992
    Top = 360
    object cdsTransientStatusesTRANSIENT_STATUS_CODE: TAbmesFloatField
      FieldName = 'TRANSIENT_STATUS_CODE'
    end
    object cdsTransientStatusesTRANSIENT_STATUS_NAME: TAbmesWideStringField
      FieldName = 'TRANSIENT_STATUS_NAME'
      Size = 100
    end
  end
  object cdsProductionOrderTypes: TAbmesClientDataSet [22]
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Filtered = True
    Params = <>
    ProviderName = 'prvProductionOrderTypes'
    OnFilterRecord = cdsProductionOrderTypesFilterRecord
    Left = 608
    Top = 360
    object cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'PRODUCTION_ORDER_TYPE_CODE'
    end
    object cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField
      DisplayWidth = 3
      FieldName = 'PRODUCTION_ORDER_TYPE_ABBREV'
      Size = 100
    end
    object cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_NAME: TAbmesWideStringField
      FieldName = 'PRODUCTION_ORDER_TYPE_NAME'
      Size = 100
    end
    object cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_TEXT: TAbmesWideStringField
      FieldName = 'PRODUCTION_ORDER_TYPE_TEXT'
      Size = 108
    end
    object cdsProductionOrderTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_CODE'
    end
    object cdsProductionOrderTypesPROD_ORDER_BASE_TYPE_NO: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_NO'
    end
    object cdsProductionOrderTypesPROD_ORDER_BASE_ROLE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_ROLE_CODE'
    end
    object cdsProductionOrderTypesPROD_ORDER_BASE_ROLE_NO: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_ROLE_NO'
    end
    object cdsProductionOrderTypesIS_REVERSIBLE: TAbmesFloatField
      FieldName = 'IS_REVERSIBLE'
      FieldValueType = fvtBoolean
    end
  end
  object dsProductionOrderTypes: TDataSource [23]
    DataSet = cdsProductionOrderTypes
    Left = 608
    Top = 392
  end
  object dsSaleTypes: TDataSource [24]
    DataSet = cdsSaleTypes
    Left = 800
    Top = 392
  end
  object dsPriorities: TDataSource [25]
    DataSet = cdsPriorities
    Left = 960
    Top = 392
  end
  object cdsProductOrderQuantities: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conProductsTree
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'prvProductOrderQuantities'
    Left = 472
    Top = 136
    object cdsProductOrderQuantitiesMIN_ORDER_QUANTITY: TAbmesFloatField
      FieldName = 'MIN_ORDER_QUANTITY'
    end
    object cdsProductOrderQuantitiesMAX_ORDER_QUANTITY: TAbmesFloatField
      FieldName = 'MAX_ORDER_QUANTITY'
    end
    object cdsProductOrderQuantitiesBALANCE_QUANTITY: TAbmesFloatField
      FieldName = 'BALANCE_QUANTITY'
      Required = True
    end
  end
end
