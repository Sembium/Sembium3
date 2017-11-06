inherited fmSale: TfmSale
  Left = 229
  Top = 133
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 
    #1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1055#1088#1086#1076#1072#1078#1073#1080' '#1087#1086' '#1050#1083#1080#1077#1085#1090#1089#1082#1086' '#1047#1072#1076#1072#1085#1080#1077' '#1085#1072' %ProductClassAb' +
    'brev% - %s'
  ClientHeight = 668
  ClientWidth = 1017
  DesignSize = (
    1017
    668)
  PixelsPerInch = 96
  TextHeight = 13
  object pcMain: TPageControl [0]
    Left = 8
    Top = 364
    Width = 1001
    Height = 259
    ActivePage = tsProductionOrder
    Anchors = [akLeft, akTop, akRight, akBottom]
    HotTrack = True
    TabOrder = 3
    object tsProductionOrder: TTabSheet
      Caption = #1054#1055#1042' - '#1057#1098#1079#1076#1072#1074#1072#1097' '#1059#1054#1073' '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' ('#1057#1055')'
      ImageIndex = 3
      DesignSize = (
        993
        231)
      object pnlProductionOrder: TPanel
        Left = 6
        Top = 2
        Width = 987
        Height = 229
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        TabOrder = 0
        object gbProductionOrder: TGroupBox
          Left = 0
          Top = 0
          Width = 313
          Height = 65
          Caption = ' '#1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1042#1098#1090#1088#1077#1096#1077#1085' ('#1054#1055#1042') '
          TabOrder = 0
          object lblMLStatus: TLabel
            Left = 8
            Top = 16
            Width = 34
            Height = 13
            Caption = #1057#1090#1072#1090#1091#1089
            FocusControl = edtMLStatus
          end
          object lblSaleBranch2: TLabel
            Left = 104
            Top = 16
            Width = 51
            Height = 13
            Caption = #1058#1055' '#1043#1083'.'
            FocusControl = edtSaleBranch2
          end
          object lblSaleNo2: TLabel
            Left = 168
            Top = 16
            Width = 40
            Height = 13
            Caption = #1054#1055#1042' No'
            FocusControl = edtSaleNo2
          end
          object lblSaleType2: TLabel
            Left = 232
            Top = 16
            Width = 19
            Height = 13
            Caption = #1042#1080#1076
            FocusControl = edtSaleType2
          end
          object lblProductionOrderType: TLabel
            Left = 56
            Top = 17
            Width = 38
            Height = 13
            Caption = #1055#1088#1086#1094#1077#1089
            FocusControl = cbProductionOrderType
          end
          object lblPriority2: TLabel
            Left = 264
            Top = 16
            Width = 35
            Height = 13
            Caption = #1055#1088#1080#1086#1088'.'
            FocusControl = edtPriority2
          end
          object edtMLStatus: TDBEdit
            Left = 8
            Top = 32
            Width = 41
            Height = 21
            Color = clBtnFace
            DataField = '_ML_STATE_ABBREV'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 0
          end
          object edtSaleBranch2: TDBEdit
            Left = 104
            Top = 32
            Width = 57
            Height = 21
            Color = clBtnFace
            DataField = '_SALE_BRANCH_IDENTIFIER'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 2
          end
          object edtSaleNo2: TDBEdit
            Left = 168
            Top = 32
            Width = 57
            Height = 21
            Color = clBtnFace
            DataField = 'SALE_NO'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 3
          end
          object edtSaleType2: TDBEdit
            Left = 232
            Top = 32
            Width = 25
            Height = 21
            Color = clBtnFace
            DataField = 'SALE_TYPE_ABBREV'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 4
          end
          object edtPriority2: TDBEdit
            Left = 264
            Top = 32
            Width = 41
            Height = 21
            Color = clBtnFace
            DataField = 'PRIORITY_NO'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 5
          end
          object cbProductionOrderType: TJvDBLookupCombo
            Left = 56
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
        end
        object gbProductionStart: TGroupBox
          Left = 464
          Top = 0
          Width = 209
          Height = 65
          Caption = ' '#1057#1090#1072#1088#1090' '#1085#1072' '#1054#1055#1042' '
          TabOrder = 2
          object lblProductionStartReserveDays: TLabel
            Left = 128
            Top = 16
            Width = 27
            Height = 13
            Caption = #1088#1079#1088#1074'.'
            FocusControl = edtProductionStartDateDiff
          end
          object edtStartCoef1: TLabel
            Left = 168
            Top = 16
            Width = 30
            Height = 13
            Caption = #1050#1086#1077#1092'.'
            FocusControl = edtStartCoef
            Transparent = True
          end
          object lblProductionPlanStartDate: TLabel
            Left = 8
            Top = 16
            Width = 26
            Height = 13
            Caption = #1044#1072#1090#1072
            FocusControl = frProductionPlanStartDate
          end
          inline frProductionPlanStartDate: TfrDateFieldEditFrame
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
            Width = 11
            Height = 21
            Color = 1276190
            Enabled = False
            TabOrder = 1
          end
          object edtProductionStartDateDiff: TDBEdit
            Left = 128
            Top = 32
            Width = 33
            Height = 21
            Color = clBtnFace
            DataField = '_PRODUCTION_START_DATE_DIFF'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 2
          end
          object edtStartCoef: TDBEdit
            Left = 168
            Top = 32
            Width = 33
            Height = 21
            Color = clBtnFace
            DataField = 'START_STAGE_COEF'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 3
          end
        end
        object gbProduction: TGroupBox
          Left = 680
          Top = 0
          Width = 299
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
          inline frProductionDept: TfrDeptFieldEditFrameBald
            Left = 11
            Top = 32
            Width = 142
            Height = 22
            HorzScrollBar.Visible = False
            VertScrollBar.Visible = False
            Constraints.MaxHeight = 22
            Constraints.MinHeight = 22
            TabOrder = 0
            TabStop = True
            DesignSize = (
              142
              22)
            inherited gbTreeNode: TGroupBox
              Width = 158
              DesignSize = (
                158
                49)
              inherited pnlTreeNode: TPanel
                Width = 142
                inherited pnlTreeNodeName: TPanel
                  Width = 27
                  Visible = False
                  DesignSize = (
                    27
                    22)
                  inherited edtTreeNodeName: TDBEdit
                    Width = 26
                  end
                end
                inherited pnlTreeNodeNo: TPanel
                  Left = -5
                end
                inherited pnlRightButtons: TPanel
                  Left = 106
                end
              end
            end
          end
        end
        object gbProductionFinal: TGroupBox
          Left = 0
          Top = 78
          Width = 529
          Height = 65
          Caption = ' '#1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042' '
          TabOrder = 4
          object lblManufactureQuantity: TLabel
            Left = 8
            Top = 16
            Width = 46
            Height = 13
            Caption = #1056#1072#1073'. '#1082'-'#1074#1086
            FocusControl = edtManufactureQuantity
          end
          object txtMeasure: TDBText
            Left = 59
            Top = 35
            Width = 33
            Height = 17
            DataField = '_MEASURE_ABBREV'
            DataSource = dsData
          end
          object txtQuantityDiffMeasure: TDBText
            Left = 168
            Top = 35
            Width = 25
            Height = 17
            DataField = '_MEASURE_ABBREV'
            DataSource = dsData
          end
          object lblQuantityDiff: TLabel
            Left = 96
            Top = 16
            Width = 61
            Height = 13
            Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
          end
          object lblTreeNodeNo: TLabel
            Left = 200
            Top = 16
            Width = 88
            Height = 13
            Caption = #1058#1055' '#1055#1088#1080#1077#1084#1085#1080#1082
          end
          object lblEnterShStorePlanDate: TLabel
            Left = 328
            Top = 16
            Width = 110
            Height = 13
            Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1088#1080#1077#1084#1072#1085#1077
            FocusControl = frEnterShStorePlanDate
          end
          object lblEnterShipmentStoreDateDiff: TLabel
            Left = 488
            Top = 16
            Width = 24
            Height = 13
            Caption = #1088#1079#1088#1074
            FocusControl = edtEnterShipmentStoreDateDiff
          end
          object btnToggleQuantityDiffMeasure: TSpeedButton
            Left = 145
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
          object edtManufactureQuantity: TDBEdit
            Left = 8
            Top = 32
            Width = 49
            Height = 21
            DataField = 'MANUFACTURE_QUANTITY'
            DataSource = dsData
            TabOrder = 0
          end
          inline frEnterShStorePlanDate: TfrDateIntervalFrame
            Left = 328
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
          object moEnterShStorePlanDateColor: TMemo
            Left = 472
            Top = 32
            Width = 11
            Height = 21
            TabStop = False
            Color = 8438150
            Enabled = False
            TabOrder = 4
          end
          object edtEnterShipmentStoreDateDiff: TDBEdit
            Left = 488
            Top = 32
            Width = 33
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
            Left = 96
            Top = 32
            Width = 49
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = '_LACK_QUANTITY'
            DataSource = dsData
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 1
          end
          inline frShipmentStore2: TfrDeptFieldEditFrameBald
            Left = 203
            Top = 32
            Width = 118
            Height = 22
            HorzScrollBar.Visible = False
            VertScrollBar.Visible = False
            Constraints.MaxHeight = 22
            Constraints.MinHeight = 22
            TabOrder = 2
            TabStop = True
            DesignSize = (
              118
              22)
            inherited gbTreeNode: TGroupBox
              Width = 134
              DesignSize = (
                134
                49)
              inherited pnlTreeNode: TPanel
                Width = 118
                inherited pnlTreeNodeName: TPanel
                  Width = 27
                  Visible = False
                  DesignSize = (
                    27
                    22)
                  inherited edtTreeNodeName: TDBEdit
                    Width = 26
                  end
                end
                inherited pnlTreeNodeNo: TPanel
                  Left = -29
                end
                inherited pnlRightButtons: TPanel
                  Left = 82
                end
              end
            end
          end
        end
        object gbInvestedValue: TGroupBox
          Left = 536
          Top = 78
          Width = 217
          Height = 65
          Caption = ' '#1042#1057'1 '
          TabOrder = 5
          object lblSecondaryCurrencyAbbrev: TLabel
            Left = 69
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
          object lblInvestedValueDiff: TLabel
            Left = 104
            Top = 16
            Width = 61
            Height = 13
            Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
          end
          object btnInvestedValueDiffMeasure: TSpeedButton
            Left = 161
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
            Left = 186
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
          object edtInvestedValueDiff: TDBEdit
            Left = 104
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
            TabOrder = 1
          end
        end
        object gbModelStatus: TGroupBox
          Left = 760
          Top = 78
          Width = 219
          Height = 65
          Caption = ' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1077#1085' '#1052#1054#1044#1045#1083' '
          TabOrder = 6
          object btnModelStatus: TBitBtn
            Left = 9
            Top = 26
            Width = 96
            Height = 25
            Action = actModelStatus
            Caption = #1057#1083#1077#1076#1077#1085#1077'...'
            DoubleBuffered = True
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
            ParentDoubleBuffered = False
            ParentShowHint = False
            ShowHint = True
            Spacing = -1
            TabOrder = 0
          end
          object btnModelCapacityStatus: TBitBtn
            Left = 113
            Top = 26
            Width = 96
            Height = 25
            Action = actModelCapacityStatus
            Caption = #1048#1054' '#1040#1085#1072#1083#1080#1079'...'
            DoubleBuffered = True
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
            ParentDoubleBuffered = False
            ParentShowHint = False
            ShowHint = True
            Spacing = -1
            TabOrder = 1
          end
        end
        object gbEngineering: TGroupBox
          Left = 0
          Top = 157
          Width = 617
          Height = 65
          Caption = ' '#1048#1085#1078#1077#1085#1077#1088#1080#1085#1075' '#1087#1086' ID '#1054#1055#1042' '
          TabOrder = 7
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
            Left = 248
            Top = 16
            Width = 19
            Height = 13
            Caption = #1042#1080#1076
            FocusControl = edtIsOperationsModel
          end
          object lblModelDevelopmentType: TLabel
            Left = 280
            Top = 16
            Width = 59
            Height = 13
            Caption = #1054#1073#1077#1084' '#1056#1072#1079#1088'.'
            FocusControl = cbModelDevelopmentType
          end
          object lblOkidu: TLabel
            Left = 360
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
            Width = 137
            Height = 21
            DropDownWidth = 600
            DataField = 'MODEL_SPEC_MODEL_VARIANT_NO'
            DataSource = dsData
            DisplayEmpty = ' '
            FieldsDelimiter = '.'
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
            Left = 248
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
            Left = 280
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
            Left = 360
            Top = 32
            Width = 249
            Height = 22
            HorzScrollBar.Visible = False
            VertScrollBar.Visible = False
            Constraints.MaxHeight = 22
            Constraints.MinHeight = 22
            TabOrder = 5
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
        object gbWastingSale: TGroupBox
          Left = 624
          Top = 157
          Width = 355
          Height = 65
          Caption = ' '#1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1054#1055#1042' '
          TabOrder = 8
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
            Color = clBtnFace
            DataField = 'IS_WASTE_COMPENSATING_ORDER'
            DataSource = dsData
            DropDownCount = 3
            Enabled = False
            ItemHeight = 13
            Items.Strings = (
              #1054#1089#1085#1086#1074#1077#1085' ('#1054')'
              #1057#1098#1087#1098#1090#1089#1090#1074#1072#1097' ('#1057')')
            ReadOnly = True
            TabOrder = 0
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
            Left = 144
            Top = 15
            Width = 209
            Height = 48
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            object pnlWastingSale: TPanel
              Left = 0
              Top = 0
              Width = 201
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
                Left = 56
                Top = 17
                Width = 49
                Height = 21
                DataField = 'WASTING_SALE_NO'
                DataSource = dsData
                TabOrder = 1
              end
              object btnWastingSaleModelStatus: TBitBtn
                Left = 112
                Top = 15
                Width = 89
                Height = 25
                Action = actWastingSaleModelStatus
                Caption = #1057#1083#1077#1076#1077#1085#1077'...'
                DoubleBuffered = True
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
                ParentDoubleBuffered = False
                TabOrder = 2
              end
            end
            object pnlWasteCompensatorProductionOrders: TPanel
              Left = 201
              Top = 0
              Width = 201
              Height = 48
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              DesignSize = (
                201
                48)
              object btnWasteCompensatorProductionOrders: TBitBtn
                Left = 88
                Top = 15
                Width = 113
                Height = 25
                Action = actWasteCompensatorProductionOrders
                Anchors = [akTop, akRight]
                Caption = #1057#1098#1087#1098#1090#1089#1090#1074#1072#1097#1080'...'
                DoubleBuffered = True
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FF00FF00FF00
                  FF00FF00FF00FF00FF0000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00000000000000000000000000FFFFFF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FF00FF00FF00FF00FF00
                  FF00FF00FF00000000000000000000000000FFFFFF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF0000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00000000000000000000000000FFFFFF00FF00FF00FF00
                  FF00FF00FF000000000000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FFFFFF00FF00
                  FF000000000000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
                  000000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
                  0000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
                  000000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FFFFFF00FF00
                  FF0000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF0000000000000000000000000000000000FFFFFF00FF00FF00FF00
                  FF00FF00FF000000000000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00
                  FF0000000000000000000000000000000000FFFFFF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF000000000000000000FFFFFF00FF00FF00FF00FF00FF00
                  FF000000000000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF000000000000000000FFFFFF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                ParentDoubleBuffered = False
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
            TabOrder = 2
          end
        end
        object gbWorkPriority: TGroupBox
          Left = 320
          Top = 0
          Width = 137
          Height = 65
          Caption = ' '#1054#1087#1077#1088#1072#1090#1080#1074#1077#1085' '#1055#1088#1080#1086#1088#1080#1090#1077#1090' '
          TabOrder = 1
          DesignSize = (
            137
            65)
          object cbWorkPriority: TJvDBLookupCombo
            Left = 8
            Top = 32
            Width = 121
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
    end
  end
  inherited pnlBottomButtons: TPanel
    Top = 625
    Width = 1017
    TabOrder = 4
    inherited pnlOKCancel: TPanel
      Left = 749
      TabOrder = 10
    end
    inherited pnlClose: TPanel
      Left = 660
    end
    inherited pnlApply: TPanel
      Left = 928
      TabOrder = 7
    end
    inherited pnlPrintButton: TPanel
      Left = 570
      TabOrder = 8
    end
    inherited pnlPrintCheckBox: TPanel
      Left = 507
      TabOrder = 9
    end
    object pnlBoundDeliveries: TPanel
      Left = 457
      Top = 0
      Width = 179
      Height = 43
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 5
      DesignSize = (
        179
        43)
      object btnBoundDeliveries: TBitBtn
        Left = 8
        Top = 10
        Width = 169
        Height = 25
        Action = actBoundDeliveries
        Anchors = [akLeft, akTop, akRight]
        Caption = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1085#1072' '#1054#1055#1044' '#1089' '#1054#1055#1055'...'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        Spacing = -1
        TabOrder = 0
      end
    end
    object pnlBoundDelivery: TPanel
      Left = 636
      Top = 0
      Width = 179
      Height = 43
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 6
      DesignSize = (
        179
        43)
      object btnBoundDelivery: TBitBtn
        Left = 8
        Top = 10
        Width = 169
        Height = 25
        Action = actBoundDelivery
        Anchors = [akLeft, akTop, akRight]
        Caption = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1085#1072' '#1054#1055#1055' '#1089' '#1054#1055#1044'...'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        Spacing = -1
        TabOrder = 0
      end
    end
    object pnlNotes: TPanel
      Left = 352
      Top = 0
      Width = 105
      Height = 43
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 4
      object btnNotes: TBitBtn
        Left = 8
        Top = 10
        Width = 97
        Height = 25
        Action = actNotes
        Caption = #1041#1077#1083#1077#1078#1082#1080'...'
        Spacing = -1
        TabOrder = 0
      end
    end
  end
  object chbSosOkidu: TAbmesDBCheckBox [2]
    Left = 878
    Top = 364
    Width = 131
    Height = 17
    Caption = 'SOS '#1054#1050#1048#1044#1059' '#1079#1072' '#1054#1055#1055
    DataField = 'SOS_OKIDU'
    DataSource = dsData
    TabOrder = 2
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    Visible = False
  end
  inherited pnlSaleCommonData: TPanel
    Top = 5
    Width = 1001
    Height = 212
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvNone
    object gbSaleOrder: TGroupBox
      Left = 0
      Top = 0
      Width = 321
      Height = 65
      Caption = ' '#1054#1073#1086#1089#1086#1073#1077#1085' '#1044#1080#1072#1083#1086#1075' '#1089' '#1050#1083#1080#1077#1085#1090' ('#1054#1044#1050') '
      TabOrder = 0
      object lblRequestBranch: TLabel
        Left = 40
        Top = 16
        Width = 48
        Height = 13
        Caption = #1058#1055' '#1043#1083
        FocusControl = edtRequestBranch
      end
      object lblRequestNo: TLabel
        Left = 96
        Top = 16
        Width = 41
        Height = 13
        Caption = #1055#1044#1050' No'
        FocusControl = edtRequestNo
      end
      object lblRequestLineNo: TLabel
        Left = 152
        Top = 16
        Width = 14
        Height = 13
        Caption = 'No'
        FocusControl = edtRequestLineNo
      end
      object lblClientRequestNo: TLabel
        Left = 232
        Top = 16
        Width = 58
        Height = 13
        Caption = #1055#1072#1088#1090#1085'. '#1086#1079#1085'.'
        FocusControl = edtClientRequestNo
      end
      object lblSaleDealType: TLabel
        Left = 8
        Top = 16
        Width = 19
        Height = 13
        Caption = #1058#1080#1087
        FocusControl = edtSaleDealType
      end
      object edtRequestBranch: TDBEdit
        Left = 40
        Top = 32
        Width = 49
        Height = 21
        Color = clBtnFace
        DataField = '_REQUEST_BRANCH_IDENTIFIER'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 1
      end
      object edtRequestNo: TDBEdit
        Left = 96
        Top = 32
        Width = 49
        Height = 21
        Color = clBtnFace
        DataField = 'REQUEST_NO'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 2
      end
      object edtRequestLineNo: TDBEdit
        Left = 152
        Top = 32
        Width = 25
        Height = 21
        Color = clBtnFace
        DataField = 'REQUEST_LINE_NO'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 3
      end
      object edtClientRequestNo: TDBEdit
        Left = 232
        Top = 32
        Width = 81
        Height = 21
        Color = clBtnFace
        DataField = 'CLIENT_REQUEST_NO'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 5
      end
      object edtSaleDealType: TDBEdit
        Left = 8
        Top = 32
        Width = 25
        Height = 21
        Color = clBtnFace
        DataField = 'SALE_DEAL_TYPE_ABBREV'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 0
      end
      object btnSaleOrder: TBitBtn
        Left = 184
        Top = 31
        Width = 41
        Height = 22
        Action = actSaleOrder
        Caption = #1054#1044#1050'...'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 4
      end
    end
    object gbSale: TGroupBox
      Left = 328
      Top = 0
      Width = 337
      Height = 65
      Caption = ' '#1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1055#1088#1086#1076#1072#1078#1073#1080' ('#1054#1055#1055') '
      TabOrder = 1
      object lblSaleBranch: TLabel
        Left = 88
        Top = 16
        Width = 48
        Height = 13
        Caption = #1058#1055' '#1043#1083
        FocusControl = edtSaleBranch
      end
      object lblSaleNo: TLabel
        Left = 144
        Top = 16
        Width = 41
        Height = 13
        Caption = #1054#1055#1055' No'
        FocusControl = edtSaleNo
      end
      object lblSaleType: TLabel
        Left = 208
        Top = 16
        Width = 19
        Height = 13
        Caption = #1042#1080#1076
        FocusControl = edtSaleType
      end
      object lblPriority: TLabel
        Left = 240
        Top = 16
        Width = 35
        Height = 13
        Caption = #1055#1088#1080#1086#1088'.'
        FocusControl = edtPriority
      end
      object lblSaleDealType2: TLabel
        Left = 56
        Top = 16
        Width = 19
        Height = 13
        Caption = #1058#1080#1087
        FocusControl = edtSaleDealType2
      end
      object lblSaleState: TLabel
        Left = 8
        Top = 16
        Width = 34
        Height = 13
        Caption = #1057#1090#1072#1090#1091#1089
        FocusControl = edtSaleState
      end
      object edtSaleType: TDBEdit
        Left = 208
        Top = 32
        Width = 25
        Height = 21
        Color = clBtnFace
        DataField = 'SALE_TYPE_ABBREV'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 4
      end
      object edtSaleNo: TDBEdit
        Left = 144
        Top = 32
        Width = 57
        Height = 21
        Color = clBtnFace
        DataField = 'SALE_NO'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 3
      end
      object edtSaleBranch: TDBEdit
        Left = 88
        Top = 32
        Width = 49
        Height = 21
        Color = clBtnFace
        DataField = '_SALE_BRANCH_IDENTIFIER'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 2
      end
      object pnlDocs: TToolBar
        Left = 290
        Top = 31
        Width = 37
        Height = 22
        Align = alNone
        AutoSize = True
        ButtonWidth = 24
        Images = dmMain.ilActions
        TabOrder = 6
        object btnDocs: TSpeedButton
          Left = 0
          Top = 0
          Width = 37
          Height = 22
          Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1079#1072#1087#1080#1090#1074#1072#1085#1077#1090#1086
          Flat = True
          Glyph.Data = {
            36060000424D360600000000000036040000280000001D000000100000000100
            0800000000000002000000000000000000000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFD1D
            1D1D1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFB0000
            0000000000FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFBFB1D1D
            0000001D1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFBFB1D1DFB
            000000FBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FBFB1D1DFBFB
            0000001DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FBFB1D1DFB1D
            0000001D1DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FBFB1DFBFB1D
            000000FB1D1DFBFB1DFDFDFDFDFDFDFDFDFDFDFD00FDFD000000FBFB1DFBFB1D
            000000FBFB1DFBFB1D1DFDFDFDFDFDFDFDFDFD000000FD000000FBFB1D1D0000
            0000001DFB1DFBFB1D1DFDFDFDFDFDFDFDFD0000000000000000FBFBFB1DFBFB
            1D1D1DFBFB1DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFBFB1D1DFB
            FBFBFBFB1D1DFBFB1DFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFBFBFB1D1D
            0000001D1DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFBFBFB1D
            0000001D1DFBFB1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFBFBFB
            1D001DFBFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFDFDFB
            FBFBFBFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFDFDFD
            FD1D1D1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000}
          ParentShowHint = False
          ShowHint = True
          Transparent = False
          OnClick = btnDocsClick
        end
      end
      object edtPriority: TDBEdit
        Left = 240
        Top = 32
        Width = 41
        Height = 21
        Color = clBtnFace
        DataField = 'PRIORITY_NO'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 5
      end
      object edtSaleDealType2: TDBEdit
        Left = 56
        Top = 32
        Width = 25
        Height = 21
        Color = clBtnFace
        DataField = 'SALE_DEAL_TYPE_ABBREV'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 1
      end
      object edtSaleState: TDBEdit
        Left = 8
        Top = 32
        Width = 41
        Height = 21
        Color = clBtnFace
        DataField = '_MIN_SALE_SHIPMENT_STATE_CODE'
        ReadOnly = True
        TabOrder = 0
      end
    end
    object gbClient: TGroupBox
      Left = 672
      Top = 0
      Width = 329
      Height = 65
      Caption = ' '#1050#1083#1080#1077#1085#1090' '
      TabOrder = 2
      DesignSize = (
        329
        65)
      object lblClientName: TLabel
        Left = 64
        Top = 16
        Width = 76
        Height = 13
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        FocusControl = edtClientName
      end
      object lblClientNo: TLabel
        Left = 8
        Top = 16
        Width = 19
        Height = 13
        Caption = #1050#1086#1076
      end
      object lblClientCountry: TLabel
        Left = 288
        Top = 16
        Width = 33
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1044#1098#1088#1078'.'
        FocusControl = edtClientCountry
      end
      object edtClientName: TDBEdit
        Left = 64
        Top = 32
        Width = 217
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Color = clBtnFace
        DataField = 'CLIENT_SHORT_NAME'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 1
      end
      object edtClientNo: TDBEdit
        Left = 8
        Top = 32
        Width = 49
        Height = 21
        Color = clBtnFace
        DataField = 'CLIENT_COMPANY_NO'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 0
      end
      object edtClientCountry: TDBEdit
        Left = 288
        Top = 32
        Width = 33
        Height = 21
        Anchors = [akTop, akRight]
        Color = clBtnFace
        DataField = 'CLIENT_COUNTRY_ABBREV'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 2
      end
    end
    object gbProduct: TGroupBox
      Left = 0
      Top = 72
      Width = 609
      Height = 65
      Caption = ' %ProductClassName% '
      TabOrder = 3
      object lblTreeNodeName: TLabel
        Left = 8
        Top = 16
        Width = 63
        Height = 13
        Caption = 'id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
      end
      object lblClientProductSignature: TLabel
        Left = 368
        Top = 16
        Width = 163
        Height = 13
        Caption = #1055#1072#1088#1090#1085#1100#1086#1088#1089#1082#1086' '#1086#1079#1085#1072#1095#1077#1085#1080#1077' '#1085#1072' '#1059#1054#1073
        FocusControl = edtClientProductSignature
      end
      object lblTreeNode: TLabel
        Left = 210
        Top = 16
        Width = 49
        Height = 13
        Caption = 'id '#1094#1080#1092#1088#1086#1074
      end
      inline frProduct: TfrProductFieldEditFrameBald
        Left = 8
        Top = 32
        Width = 353
        Height = 22
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 22
        Constraints.MinHeight = 22
        TabOrder = 0
        TabStop = True
        DesignSize = (
          353
          22)
        inherited gbTreeNode: TGroupBox
          Width = 369
          DesignSize = (
            369
            49)
          inherited pnlTreeNode: TPanel
            Width = 353
            inherited pnlTreeNodeName: TPanel
              Width = 183
              DesignSize = (
                183
                22)
              inherited edtTreeNodeName: TDBEdit
                Width = 182
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = 183
            end
            inherited pnlRightButtons: TPanel
              Left = 294
            end
          end
        end
        inherited cdsTreeNode: TAbmesClientDataSet
          Top = 8
        end
        inherited dsTreeNode: TDataSource
          Top = 8
        end
      end
      object edtClientProductSignature: TDBEdit
        Left = 368
        Top = 32
        Width = 233
        Height = 21
        Color = clBtnFace
        DataField = 'CLIENT_PRODUCT_SIGNATURE'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 1
      end
    end
    object gbStore: TGroupBox
      Left = 0
      Top = 144
      Width = 1001
      Height = 65
      Caption = ' '#1059#1089#1083#1086#1074#1080#1103' '#1079#1072' '#1055#1086#1083#1091#1095#1072#1074#1072#1085#1077' '#1085#1072' %ProductClassAbbrev% '#1086#1090' '#1050#1083#1080#1077#1085#1090' '
      TabOrder = 5
      object lblShipmentStore: TLabel
        Left = 8
        Top = 16
        Width = 64
        Height = 13
        Caption = #1058#1055' '#1045#1082#1089#1087'.'
      end
      object lblShipmentDate: TLabel
        Left = 144
        Top = 16
        Width = 116
        Height = 13
        Caption = #1055#1083#1072#1085#1086#1074#1072' '#1076#1072#1090#1072' '#1079#1072' '#1045#1082#1089#1087'.'
        FocusControl = frShipmentDate
      end
      object lblReceivePlace: TLabel
        Left = 272
        Top = 16
        Width = 89
        Height = 13
        Caption = #1058#1055' '#1055#1086#1083#1091#1095#1072#1090#1077#1083
        FocusControl = edtReceivePlace
      end
      object lblTransport: TLabel
        Left = 848
        Top = 16
        Width = 139
        Height = 13
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1058#1088#1072#1085#1089#1087#1086#1088#1090
        FocusControl = edtTransport
      end
      object lblShipmentType: TLabel
        Left = 760
        Top = 16
        Width = 76
        Height = 13
        Caption = #1058#1098#1088#1075#1086#1074#1089#1082#1080' '#1082#1086#1076
        FocusControl = edtShipmentType
      end
      object edtShipmentDateColor: TEdit
        Left = 248
        Top = 32
        Width = 11
        Height = 21
        Color = 5534620
        Enabled = False
        TabOrder = 1
      end
      inline frShipmentDate: TfrDateFieldEditFrame
        Left = 144
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
      object edtReceivePlace: TDBEdit
        Left = 272
        Top = 32
        Width = 129
        Height = 21
        Color = clBtnFace
        DataField = 'RECEIVE_PLACE_NAME'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 3
      end
      object edtTransport: TDBEdit
        Left = 848
        Top = 32
        Width = 145
        Height = 21
        Color = clBtnFace
        DataField = 'IS_VENDOR_TRANSPORT'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 5
      end
      object edtShipmentType: TDBEdit
        Left = 760
        Top = 32
        Width = 81
        Height = 21
        Color = clBtnFace
        DataField = 'SHIPMENT_TYPE_ABBREV'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 4
      end
      inline frShipmentStore: TfrDeptFieldEditFrameBald
        Left = 11
        Top = 32
        Width = 118
        Height = 22
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 22
        Constraints.MinHeight = 22
        TabOrder = 0
        TabStop = True
        DesignSize = (
          118
          22)
        inherited gbTreeNode: TGroupBox
          Width = 134
          DesignSize = (
            134
            49)
          inherited pnlTreeNode: TPanel
            Width = 118
            inherited pnlTreeNodeName: TPanel
              Width = 27
              Visible = False
              DesignSize = (
                27
                22)
              inherited edtTreeNodeName: TDBEdit
                Width = 26
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = -29
            end
            inherited pnlRightButtons: TPanel
              Left = 82
            end
          end
        end
      end
      object pnlDates: TPanel
        Left = 424
        Top = 7
        Width = 321
        Height = 55
        BevelOuter = bvNone
        TabOrder = 6
        object pnlReceiveDate: TPanel
          Left = 0
          Top = 0
          Width = 122
          Height = 55
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object lblReceiveDate: TLabel
            Left = 0
            Top = 8
            Width = 101
            Height = 13
            Caption = #1044#1086#1075'. '#1044#1072#1090#1072' '#1085#1072' '#1087#1086#1083#1091#1095'.'
            FocusControl = frReceiveDate
          end
          inline frReceiveDate: TfrDateFieldEditFrame
            Left = 0
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
          object edtReceiveDateColor: TEdit
            Left = 104
            Top = 24
            Width = 11
            Height = 21
            Color = 7642539
            Enabled = False
            TabOrder = 1
          end
        end
        object pnlLeaseDateInterval: TPanel
          Left = 122
          Top = 0
          Width = 162
          Height = 55
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object lblLeaseDateInterval: TLabel
            Left = 0
            Top = 8
            Width = 145
            Height = 13
            Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1053#1072#1077#1084
            FocusControl = frLeaseDateInterval
          end
          inline frLeaseDateInterval: TfrDateIntervalFrame
            Left = 0
            Top = 24
            Width = 145
            Height = 21
            Constraints.MaxHeight = 21
            Constraints.MaxWidth = 145
            Constraints.MinHeight = 21
            Constraints.MinWidth = 145
            TabOrder = 0
            TabStop = True
          end
          object edtLeaseDateIntervalColor: TEdit
            Left = 144
            Top = 24
            Width = 11
            Height = 21
            Color = 7642539
            Enabled = False
            TabOrder = 1
          end
        end
        object pnlImportDate: TPanel
          Left = 284
          Top = 0
          Width = 37
          Height = 55
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          object lblReturnDate: TLabel
            Left = 0
            Top = 8
            Width = 120
            Height = 13
            Caption = #1055#1083#1072#1085#1086#1074#1072' '#1076#1072#1090#1072' '#1079#1072' '#1042#1088#1098#1097'.'
            FocusControl = frImportDate
          end
          inline frImportDate: TfrDateFieldEditFrame
            Left = 0
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
          object edtImportDateColor: TEdit
            Left = 104
            Top = 24
            Width = 11
            Height = 21
            Color = 16744448
            Enabled = False
            TabOrder = 1
          end
        end
      end
    end
    object gbIBR: TGroupBox
      Left = 616
      Top = 72
      Width = 385
      Height = 65
      Caption = ' %ParRelProduct% '
      TabOrder = 4
      object btnParRelProduct: TButton
        Left = 296
        Top = 29
        Width = 73
        Height = 25
        Action = actParRelProduct
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      inline frParRelProductStatus: TfrParRelProductStatus
        Left = 8
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
      object tlbParRelProductDocs: TToolBar
        Left = 186
        Top = 31
        Width = 36
        Height = 22
        Align = alNone
        AutoSize = True
        ButtonWidth = 36
        EdgeInner = esNone
        EdgeOuter = esNone
        Images = dmMain.ilDocs
        TabOrder = 1
        object btnParRelProductDocs: TToolButton
          Left = 0
          Top = 0
          Action = actParRelProductDoc
          ParentShowHint = False
          ShowHint = True
        end
      end
    end
  end
  inherited pnlTimeLine: TPanel
    Top = 221
    Width = 1001
    Height = 138
    Anchors = [akLeft, akTop, akRight]
    object saShipmentDate: TAbmesArrow [0]
      Left = 544
      Top = 41
      Width = 15
      Height = 70
      Hint = #1055#1083'. '#1076#1072#1090#1072' '#1079#1072' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1103
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
          Y = 96
          ArrowType = atNone
        end>
      Pen.Color = 5534620
      Pen.Width = 3
      HeadLength = 15
      HeadWidth = 10
    end
    object saReceiveDate: TAbmesArrow [1]
      Left = 664
      Top = 41
      Width = 15
      Height = 57
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
    inherited saTimeLine: TAbmesArrow
      Width = 967
      Points = <
        item
          X = 0
          Y = 21
          ArrowType = atNone
        end
        item
          X = 964
          Y = 21
          ArrowType = atForward
        end>
    end
    inherited saProductionStartPlanDate: TAbmesArrow
      Height = 31
    end
    inherited saShipmentStorePlanEnterEndDate: TAbmesArrow
      Height = 44
    end
    inherited tShipmentStorePlanEnterEndDate: TDBText
      Top = 85
    end
    inherited tProductionStartPlanDate: TDBText
      Top = 72
    end
    object shpShipmentDateLateness: TShape [11]
      Left = 551
      Top = 32
      Width = 42
      Height = 4
      Hint = #1047#1072#1082#1098#1089#1085#1077#1085#1080#1077' '#1085#1072' '#1077#1082#1089#1087#1077#1076#1080#1094#1080#1103
      Brush.Color = clRed
      ParentShowHint = False
      Pen.Style = psClear
      ShowHint = True
    end
    object tReceiveDate: TDBText
      Left = 639
      Top = 98
      Width = 66
      Height = 13
      Hint = #1044#1072#1090#1072' '#1079#1072' '#1087#1086#1083#1091#1095#1072#1074#1072#1085#1077
      AutoSize = True
      Color = 14540253
      DataField = '_RECEIVE_DATE_SHOW'
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
    object tShipmentDate: TDBText
      Left = 517
      Top = 111
      Width = 70
      Height = 13
      Hint = #1055#1083'. '#1076#1072#1090#1072' '#1079#1072' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1103
      AutoSize = True
      Color = 14540253
      DataField = '_SHIPMENT_DATE_SHOW'
      DataSource = dsData
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5534620
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object saImportDate: TAbmesArrow
      Left = 752
      Top = 41
      Width = 15
      Height = 82
      Hint = #1055#1083'. '#1076#1072#1090#1072' '#1079#1072' '#1042#1088#1098#1097#1072#1085#1077
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
          Y = 96
          ArrowType = atNone
        end>
      Pen.Color = 16744448
      Pen.Width = 3
      HeadLength = 15
      HeadWidth = 10
    end
    object tImportDate: TDBText
      Left = 732
      Top = 123
      Width = 55
      Height = 13
      Hint = #1055#1083'. '#1076#1072#1090#1072' '#1079#1072' '#1042#1088#1098#1097#1072#1085#1077
      AutoSize = True
      Color = 14540253
      DataField = 'IMPORT_DATE'
      DataSource = dsData
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16744448
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
  end
  inherited alActions: TActionList
    Left = 32
    Top = 128
    inherited actForm: TAction
      Caption = 
        #1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1055#1088#1086#1076#1072#1078#1073#1080' '#1087#1086' '#1050#1083#1080#1077#1085#1090#1089#1082#1086' '#1047#1072#1076#1072#1085#1080#1077' '#1085#1072' %ProductClassAb' +
        'brev% - %s'
    end
    inherited actToggleQuantityDiffMeasure: TAction
      OnUpdate = actToggleQuantityDiffMeasureUpdate
    end
    inherited actInvestedValueDiffMeasure: TAction
      OnUpdate = actInvestedValueDiffMeasureUpdate
    end
    object actSaleOrder: TAction
      Caption = #1054#1044#1050'...'
      OnExecute = actSaleOrderExecute
    end
    object actBoundDeliveries: TAction
      Caption = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1085#1072' '#1054#1055#1044' '#1089' '#1054#1055#1055'...'
      OnExecute = actBoundDeliveriesExecute
      OnUpdate = actBoundDeliveriesUpdate
    end
    object actBoundDelivery: TAction
      Caption = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1085#1072' '#1054#1055#1055' '#1089' '#1054#1055#1044'...'
      OnExecute = actBoundDeliveryExecute
      OnUpdate = actBoundDeliveryUpdate
    end
    object actNotes: TAction
      Caption = #1041#1077#1083#1077#1078#1082#1080'...'
      ImageIndex = 57
      OnExecute = actNotesExecute
      OnUpdate = actNotesUpdate
    end
    object actParRelProductDoc: TAction
      Hint = #1052#1048#1048#1054' '#1085#1072' %ParRelProductAbbrev%'
      OnExecute = actParRelProductDocExecute
      OnUpdate = actParRelProductDocUpdate
    end
    object actParRelProduct: TAction
      Caption = '%ParRelProductAbbrev%-'#1040#1055#1089'...'
      Hint = '%ParRelProduct% - '#1040#1089#1087#1077#1082#1090' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072
      OnExecute = actParRelProductExecute
      OnUpdate = actParRelProductUpdate
    end
  end
  inherited dsData: TDataSource
    Top = 224
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
    ProviderName = 'prvSale'
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    Top = 224
    inherited cdsDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      ProviderFlags = [pfInWhere, pfInKey]
    end
    inherited cdsDataSALE_OBJECT_CODE: TAbmesFloatField
      ProviderFlags = [pfInWhere, pfInKey]
    end
    inherited cdsDataSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsDataSALE_GROUP_OBJECT_CODE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsDataSALE_ORDER_TYPE_CODE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsDataREQUEST_BRANCH_CODE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsDataREQUEST_NO: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsDataREQUEST_LINE_NO: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsDataMANAGER_EMPLOYEE_CODE: TAbmesFloatField
      OnChange = cdsDataMANAGER_EMPLOYEE_CODEChange
    end
    inherited cdsDataCLIENT_COMPANY_CODE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsDataCLIENT_REQUEST_NO: TAbmesWideStringField
      ProviderFlags = []
    end
    inherited cdsDataREQUEST_SEND_DATE: TAbmesSQLTimeStampField
      ProviderFlags = []
    end
    inherited cdsDataREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField
      ProviderFlags = []
    end
    object cdsDataCLIENT_PRODUCT_SIGNATURE: TAbmesWideStringField [13]
      FieldName = 'CLIENT_PRODUCT_SIGNATURE'
      ProviderFlags = []
      Size = 250
    end
    inherited cdsDataOFFER_SEND_PLAN_DATE: TAbmesSQLTimeStampField
      ProviderFlags = []
    end
    inherited cdsDataOFFER_SEND_DATE: TAbmesSQLTimeStampField
      ProviderFlags = []
    end
    inherited cdsDataOFFER_ANSWER_PLAN_DATE: TAbmesSQLTimeStampField
      ProviderFlags = []
    end
    inherited cdsDataOFFER_ANSWER_DATE: TAbmesSQLTimeStampField
      ProviderFlags = []
    end
    inherited cdsDataDECISION_PLAN_DATE: TAbmesSQLTimeStampField
      ProviderFlags = []
    end
    inherited cdsDataDECISION_DATE: TAbmesSQLTimeStampField
      ProviderFlags = []
    end
    inherited cdsDataDECISION_TYPE_CODE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsDataPRODUCT_CODE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsDataQUANTITY: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsDataSINGLE_WEIGHT: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsDataSINGLE_PRICE: TAbmesFloatField
      ProviderFlags = []
      OnChange = cdsDataSINGLE_PRICEChange
    end
    inherited cdsDataOUR_OFFER_SINGLE_PRICE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsDataCL_OFFER_SINGLE_PRICE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsDataCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField
      ProviderFlags = []
    end
    inherited cdsDataOUR_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField
      ProviderFlags = []
    end
    inherited cdsDataRECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsDataIS_VENDOR_TRANSPORT: TAbmesFloatField
      ProviderFlags = []
      DisplayBoolValues = #1050#1083#1080#1077#1085#1090';'#1048#1055
    end
    inherited cdsDataSHIPMENT_TYPE_CODE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsDataCUSTOMHOUSE_CODE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsDataNOTES: TAbmesWideStringField
      ProviderFlags = []
    end
    inherited cdsDataSALE_BRANCH_CODE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsDataSALE_NO: TAbmesFloatField
      ProviderFlags = []
    end
    object cdsDataRECEIVE_DATE: TAbmesSQLTimeStampField [41]
      FieldName = 'RECEIVE_DATE'
      ProviderFlags = []
      AbmesEditFormat = 'ww\e\iiii'
    end
    inherited cdsDataSALE_TYPE_CODE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsDataOKIDU_EMPLOYEE_CODE: TAbmesFloatField
      OnChange = cdsDataOKIDU_EMPLOYEE_CODEChange
    end
    inherited cdsDataSHIPMENT_DATE: TAbmesSQLTimeStampField
      OnChange = cdsDataSHIPMENT_DATEChange
      OnValidate = cdsDataSHIPMENT_DATEValidate
      DisplayFormat = ''
    end
    inherited cdsDataSHIPMENT_STORE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1103
      OnValidate = cdsDataSHIPMENT_STORE_CODEValidate
    end
    inherited cdsDataENTER_SH_STORE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayFormat = ''
    end
    inherited cdsDataENTER_SH_STORE_PLAN_END_DATE: TAbmesSQLTimeStampField
      DisplayFormat = ''
    end
    inherited cdsDataIS_ML_ENTRUSTED: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsDataIS_ML_NOT_NEEDED: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsDataCREATE_EMPLOYEE_CODE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsDataCREATE_DATE: TAbmesSQLTimeStampField
      ProviderFlags = []
      DisplayFormat = ''
    end
    inherited cdsDataCREATE_TIME: TAbmesSQLTimeStampField
      ProviderFlags = []
    end
    inherited cdsDataPRODUCT_NAME: TAbmesWideStringField
      ProviderFlags = []
    end
    inherited cdsDataSALE_LAST_CHANGE_DATE: TAbmesSQLTimeStampField
      ProviderFlags = []
      AbmesEditFormat = 'ww\e\iiii'
    end
    object cdsDataSALE_BRANCH_NO: TAbmesFloatField [68]
      FieldName = 'SALE_BRANCH_NO'
      ProviderFlags = []
      ReadOnly = True
    end
    inherited cdsDataSHIPMENT_STORE_CURR_QUANTITY: TAbmesFloatField
      ProviderFlags = []
    end
    object cdsDataSALE_TYPE_ABBREV: TAbmesWideStringField [70]
      Alignment = taCenter
      FieldName = 'SALE_TYPE_ABBREV'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    inherited cdsDataLAST_SHIPMENT_STORE_IN_DATE: TAbmesSQLTimeStampField
      ProviderFlags = []
    end
    inherited cdsDataPRODUCTION_START_PLAN_DATE: TAbmesSQLTimeStampField
      DisplayFormat = ''
    end
    inherited cdsDataPLANNED_INVESTED_SEC_PRICE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsDataACCOUNT_INVESTED_SEC_PRICE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsDataFIRST_OUT_DATE: TAbmesSQLTimeStampField
      ProviderFlags = []
    end
    object cdsDataMEASURE_ABBREV: TAbmesWideStringField [78]
      FieldName = 'MEASURE_ABBREV'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object cdsDataCLIENT_SHORT_NAME: TAbmesWideStringField [79]
      FieldName = 'CLIENT_SHORT_NAME'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsDataCLIENT_COUNTRY_ABBREV: TAbmesWideStringField [80]
      FieldName = 'CLIENT_COUNTRY_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object cdsDataREQUEST_SHOW_NO: TAbmesWideStringField [81]
      FieldName = 'REQUEST_SHOW_NO'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object cdsDataRECEIVE_PLACE_NAME: TAbmesWideStringField [82]
      FieldName = 'RECEIVE_PLACE_NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object cdsDataCURRENCY_ABBREV: TAbmesWideStringField [83]
      FieldName = 'CURRENCY_ABBREV'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object cdsDataTOTAL_PRICE: TAbmesFloatField [85]
      FieldName = 'TOTAL_PRICE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    inherited cdsDataPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField
      ProviderFlags = []
    end
    object cdsDataTOTAL_PRICE_IN_SEC_CURRENCY: TAbmesFloatField [87]
      FieldName = 'TOTAL_PRICE_IN_SEC_CURRENCY'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object cdsDataSINGLE_PRICE_IN_SEC_CURRENCY: TAbmesFloatField [88]
      FieldName = 'SINGLE_PRICE_IN_SEC_CURRENCY'
      ProviderFlags = []
    end
    object cdsDataPAID_PART: TAbmesFloatField [89]
      FieldName = 'PAID_PART'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsDataqrySaleShipments: TDataSetField [90]
      FieldName = 'qrySaleShipments'
    end
    inherited cdsDataPLANNED_STORE_DEAL_CODE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsDataPSD_PRIORITY_CODE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsDataPRODUCT_NO: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsDataMODEL_SPEC_VERSION_NO: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsDataMODEL_SPEC_MODEL_VARIANT_NO: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsDataMODEL_CREATE_DATE: TAbmesSQLTimeStampField
      ProviderFlags = []
      DisplayFormat = ''
    end
    inherited cdsDataMODEL_ACCOMPLISHMENT_COEF: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsDataPRODUCTION_WORKDAYS: TAbmesFloatField
      ProviderFlags = []
    end
    inherited cdsDataENTER_RESULT_STORE_WORKDAYS: TAbmesFloatField
      ProviderFlags = []
    end
    object cdsData_LACK_QUANTITY: TAbmesFloatField [106]
      FieldKind = fkCalculated
      FieldName = '_LACK_QUANTITY'
      DisplayFormat = ',0.###'
      Calculated = True
    end
    object cdsDataMANAGER_OKIDU_NAME: TAbmesWideStringField [114]
      FieldName = 'MANAGER_OKIDU_NAME'
      ProviderFlags = []
      Size = 153
    end
    inherited cdsDataMODEL_DEVELOPMENT_TYPE_CODE: TAbmesFloatField
      OnGetText = cdsDataMODEL_DEVELOPMENT_TYPE_CODEGetText
    end
    object cdsDataDOC_BRANCH_CODE: TAbmesFloatField [122]
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object cdsDataDOC_CODE: TAbmesFloatField [123]
      FieldName = 'DOC_CODE'
      ProviderFlags = []
    end
    object cdsData_SHIPMENT_DATE_SHOW: TAbmesSQLTimeStampField [133]
      FieldKind = fkCalculated
      FieldName = '_SHIPMENT_DATE_SHOW'
      Calculated = True
    end
    object cdsData_RECEIVE_DATE_SHOW: TAbmesSQLTimeStampField [134]
      FieldKind = fkCalculated
      FieldName = '_RECEIVE_DATE_SHOW'
      Calculated = True
    end
    object cdsData_REQUEST_BRANCH_IDENTIFIER: TAbmesWideStringField [135]
      FieldKind = fkLookup
      FieldName = '_REQUEST_BRANCH_IDENTIFIER'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_IDENTIFIER'
      KeyFields = 'REQUEST_BRANCH_CODE'
      Size = 50
      Lookup = True
    end
    object cdsData_SALE_BRANCH_IDENTIFIER: TAbmesWideStringField [136]
      FieldKind = fkLookup
      FieldName = '_SALE_BRANCH_IDENTIFIER'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_IDENTIFIER'
      KeyFields = 'SALE_BRANCH_CODE'
      Lookup = True
    end
    object cdsDataPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField [137]
      DisplayLabel = #1055#1088#1086#1094#1077#1089
      FieldName = 'PRODUCTION_ORDER_TYPE_CODE'
    end
    object cdsDataPRIORITY_CODE: TAbmesFloatField [138]
      FieldName = 'PRIORITY_CODE'
    end
    object cdsDataPRIORITY_NO: TAbmesFloatField [139]
      Alignment = taCenter
      FieldName = 'PRIORITY_NO'
    end
    object cdsDataPRIORITY_COLOR: TAbmesFloatField [140]
      FieldName = 'PRIORITY_COLOR'
    end
    object cdsDataPRIORITY_BACKGROUND_COLOR: TAbmesFloatField [141]
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
    object cdsDataSHIPMENT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SHIPMENT_TYPE_ABBREV'
      Size = 5
    end
    object cdsDataACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
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
    object cdsDataSALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object cdsDataSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object cdsDataRETURN_DATE: TAbmesSQLTimeStampField
      FieldName = 'RETURN_DATE'
    end
    object cdsDataIMPORT_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1042#1088#1098#1097#1072#1085#1077
      FieldName = 'IMPORT_DATE'
    end
    object cdsDataLEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_QTY'
      DisplayFormat = ',0.##'
    end
    object cdsDataLEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object cdsDataTOTAL_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'TOTAL_LEASE_DATE_UNIT_QTY'
      DisplayFormat = ',0.##'
    end
    object cdsDataIMPORT_QUANTITY_DIFF: TAbmesFloatField
      FieldName = 'IMPORT_QUANTITY_DIFF'
      DisplayFormat = ',0.###'
    end
    object cdsDataACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
    end
    object cdsDataCLIENT_COMPANY_NO: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_NO'
    end
    object cdsData_LACK_QUANTITY_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_LACK_QUANTITY_PERCENT'
      DisplayFormat = '0'
      EditFormat = '0'
      Calculated = True
    end
    object cdsDataDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
    end
    object cdsDataDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
    end
    object cdsDataDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
    end
    object cdsDataBND_DELIVERY_COUNT: TAbmesFloatField
      FieldName = 'BND_DELIVERY_COUNT'
    end
    object cdsData_ACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACCOUNT_SINGLE_PRICE'
      DisplayFormat = ',0.##'
      EditFormat = '0.##'
      Calculated = True
    end
    object cdsDataPRP_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRP_DOC_BRANCH_CODE'
    end
    object cdsDataPRP_DOC_CODE: TAbmesFloatField
      FieldName = 'PRP_DOC_CODE'
    end
    object cdsDataPRP_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PRP_HAS_DOC_ITEMS'
    end
    object cdsDataBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'BORDER_REL_TYPE_CODE'
      Calculated = True
    end
    object cdsDataPARTNER_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'PARTNER_CODE'
      Calculated = True
    end
    object cdsDataHAS_PAR_REL_PRODUCT: TAbmesFloatField
      FieldName = 'HAS_PAR_REL_PRODUCT'
      FieldValueType = fvtBoolean
    end
    object cdsData_MIN_SALE_SHIPMENT_STATE_TEXT: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_MIN_SALE_SHIPMENT_STATE_TEXT'
      Calculated = True
    end
    object cdsData_ENTER_SH_STORE_PERIOD: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_ENTER_SH_STORE_PERIOD'
      Size = 50
      Calculated = True
    end
    object cdsData_MODEL_SPEC_MODEL_VARIANT: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_MODEL_SPEC_MODEL_VARIANT'
      LookupDataSet = cdsSpecModelVariants
      LookupKeyFields = 'SPEC_MODEL_VARIANT_NO'
      LookupResultField = '_SHOW_IDENTIFIER'
      KeyFields = 'MODEL_SPEC_MODEL_VARIANT_NO'
      Lookup = True
    end
    object cdsData_WORK_PRIORITY_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_WORK_PRIORITY_NO'
      LookupDataSet = cdsWorkPriorities
      LookupKeyFields = 'WORK_PRIORITY_CODE'
      LookupResultField = 'WORK_PRIORITY_NO'
      KeyFields = 'WORK_PRIORITY_CODE'
      Lookup = True
    end
    object cdsData_SECONDARY_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SECONDARY_CURRENCY_ABBREV'
      Calculated = True
    end
    object cdsData_WASTING_SALE_BRANCH_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_WASTING_SALE_BRANCH_IDENTIFIER'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_IDENTIFIER'
      KeyFields = 'WASTING_SALE_OBJ_BRANCH_CODE'
      Lookup = True
    end
    object cdsDataMANAGER_OKIDU_NO: TAbmesFloatField
      FieldName = 'MANAGER_OKIDU_NO'
      ProviderFlags = []
    end
    object cdsDataOKIDU_EMPLOYEE_NO: TAbmesFloatField
      FieldName = 'OKIDU_EMPLOYEE_NO'
      ProviderFlags = []
    end
    object cdsDataCONSUMER_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'CONSUMER_DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object cdsDataOKIDU_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'OKIDU_EMPLOYEE_NAME'
      ProviderFlags = []
      FixedChar = True
      Size = 153
    end
    object cdsDataCONSUME_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'CONSUME_BEGIN_DATE'
      ProviderFlags = []
    end
    object cdsDataCONSUME_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'CONSUME_END_DATE'
      ProviderFlags = []
    end
    object cdsDataTRANSIENT_STATUS_NAME: TAbmesWideStringField
      FieldName = 'TRANSIENT_STATUS_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsDataWORKDAYS_TO_EXIST: TAbmesFloatField
      FieldName = 'WORKDAYS_TO_EXIST'
      ProviderFlags = []
    end
    object cdsData_CONSUME_DATES_INTERVAL: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_CONSUME_DATES_INTERVAL'
      Calculated = True
    end
    object cdsDataPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
    end
    object cdsDataREPORT_TAG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'REPORT_TAG'
      Calculated = True
    end
    object cdsData_REMAINING_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REMAINING_LEASE_DATE_UNIT_QTY'
      Calculated = True
    end
    object cdsData_REM_TOTAL_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REM_TOTAL_LEASE_DATE_UNIT_QTY'
      Calculated = True
    end
    object cdsDataMARKET_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'MARKET_SINGLE_PRICE'
    end
    object cdsDataDISCOUNT_PERCENT: TAbmesFloatField
      FieldName = 'DISCOUNT_PERCENT'
    end
    object cdsDataINVOICES_MODIFIED: TAbmesFloatField
      FieldName = 'INVOICES_MODIFIED'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
  end
  inherited cdsBranches: TAbmesClientDataSet
    Left = 80
    Top = 280
    inherited cdsBranchesBRANCH_CODE: TAbmesFloatField
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  inherited cdsSpecModelVariants: TAbmesClientDataSet
    Left = 0
    Top = 352
  end
  inherited dsSpecModelVariants: TDataSource
    Left = 0
    Top = 384
  end
  inherited cdsWorkPriorities: TAbmesClientDataSet
    Left = 32
    Top = 280
  end
  inherited dsWorkPriorities: TDataSource
    Left = 32
    Top = 312
  end
  inherited cdsMeasures: TAbmesClientDataSet
    Left = 408
  end
  inherited dsBranches: TDataSource
    Left = 112
    Top = 280
  end
  inherited cdsWasteCompensatorsParams: TAbmesClientDataSet
    Left = 729
  end
  object cdsDeliveriesParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 696
    Top = 624
    object cdsDeliveriesParamsMIN_STATUS_CODE: TAbmesFloatField
      FieldName = 'MIN_STATUS_CODE'
    end
    object cdsDeliveriesParamsMAX_STATUS_CODE: TAbmesFloatField
      FieldName = 'MAX_STATUS_CODE'
    end
    object cdsDeliveriesParamsDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DEAL_TYPE_CODE'
    end
    object cdsDeliveriesParamsHAS_SALE: TAbmesFloatField
      FieldName = 'HAS_SALE'
    end
    object cdsDeliveriesParamsSALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_BRANCH_CODE'
    end
    object cdsDeliveriesParamsSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
    end
  end
  object cdsProductionOrderTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Filtered = True
    Params = <>
    ProviderName = 'prvProductionOrderTypes'
    OnFilterRecord = cdsProductionOrderTypesFilterRecord
    Left = 120
    Top = 448
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
  object dsProductionOrderTypes: TDataSource
    DataSet = cdsProductionOrderTypes
    Left = 152
    Top = 448
  end
end
