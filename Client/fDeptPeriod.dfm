inherited fmDeptPeriod: TfmDeptPeriod
  Left = 548
  Top = 353
  Caption = #1059#1052' '#1058#1055' '#1074#1098#1074' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' - %s'
  ClientHeight = 284
  ClientWidth = 313
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 249
    Width = 313
    TabOrder = 2
    inherited pnlOKCancel: TPanel
      Left = 45
    end
    inherited pnlClose: TPanel
      Left = -44
    end
    inherited pnlApply: TPanel
      Left = 224
      Visible = False
    end
  end
  object gbPeriod: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 297
    Height = 49
    Anchors = [akLeft, akTop, akRight]
    Caption = ' '#1042#1088#1077#1084#1077#1074#1080' '#1080#1085#1090#1077#1088#1074#1072#1083' '
    TabOrder = 0
    DesignSize = (
      297
      49)
    inline frDateInterval: TfrDateIntervalFrame
      Left = 16
      Top = 20
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
      Left = 253
      Top = 20
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
        Action = actDocs
      end
    end
  end
  object gbPrices: TGroupBox [2]
    Left = 8
    Top = 64
    Width = 297
    Height = 177
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    object lblHourPrice: TLabel
      Left = 8
      Top = 19
      Width = 144
      Height = 13
      Caption = #1042#1045#1062' - '#1045#1082#1089#1087#1083#1086#1072#1090#1072#1094#1080#1103' '#1085#1072' '#1054#1087#1052
      FocusControl = edtHourPrice
    end
    object lblMaintainanceHourPrice: TLabel
      Left = 8
      Top = 51
      Width = 135
      Height = 13
      Caption = #1042#1045#1062' - '#1054#1073#1089#1083#1091#1078#1074#1072#1085#1077' '#1085#1072' '#1054#1087#1052
      FocusControl = edtMaintainanceHourPrice
    end
    object edtHourPriceCurrency: TLabel
      Left = 240
      Top = 19
      Width = 51
      Height = 13
      AutoSize = False
      Caption = '%s/'#1095#1072#1089
    end
    object lblEstimatedCapacityDayLimitHours: TLabel
      Left = 8
      Top = 83
      Width = 174
      Height = 13
      Caption = #1056#1072#1079#1095#1077#1090#1077#1085' '#1056#1072#1079#1087#1086#1083#1072#1075#1072#1077#1084' '#1050#1072#1087#1072#1094#1080#1090#1077#1090
      FocusControl = edtEstimatedCapacityDayLimitHours
    end
    object edtEstimatedCapacityDayLimitHoursMeasure: TLabel
      Left = 238
      Top = 83
      Width = 51
      Height = 13
      AutoSize = False
      Caption = #1095#1072#1089#1072'/'#1076#1077#1085
    end
    object lblParallelProcessCount: TLabel
      Left = 8
      Top = 115
      Width = 92
      Height = 13
      Caption = #1050#1088#1072#1090#1085#1086#1089#1090' '#1085#1072' '#1054#1087#1047#1085
      FocusControl = edtParallelProcessCount
    end
    object lblParallelOperatorCount: TLabel
      Left = 8
      Top = 147
      Width = 95
      Height = 13
      Caption = #1050#1088#1072#1090#1085#1086#1089#1090' '#1085#1072' '#1044#1056#1054#1088
      FocusControl = edtParallelOperatorCount
    end
    object lblMaintainanceHourPriceCurrency: TLabel
      Left = 240
      Top = 51
      Width = 51
      Height = 13
      AutoSize = False
      Caption = '%s/'#1095#1072#1089
    end
    object edtHourPrice: TDBEdit
      Left = 192
      Top = 16
      Width = 41
      Height = 21
      DataField = 'HOUR_PRICE'
      DataSource = dsData
      TabOrder = 0
    end
    object edtMaintainanceHourPrice: TDBEdit
      Left = 192
      Top = 48
      Width = 41
      Height = 21
      DataField = 'MAINTAINANCE_HOUR_PRICE'
      DataSource = dsData
      TabOrder = 1
    end
    object edtEstimatedCapacityDayLimitHours: TDBEdit
      Left = 192
      Top = 80
      Width = 41
      Height = 21
      DataField = 'EST_CAPACITY_DAY_LIMIT_HOURS'
      DataSource = dsData
      TabOrder = 2
    end
    object edtParallelProcessCount: TDBEdit
      Left = 192
      Top = 112
      Width = 41
      Height = 21
      DataField = 'PARALLEL_PROCESS_COUNT'
      DataSource = dsData
      TabOrder = 3
    end
    object edtParallelOperatorCount: TDBEdit
      Left = 192
      Top = 144
      Width = 41
      Height = 21
      DataField = 'PARALLEL_OPERATOR_COUNT'
      DataSource = dsData
      TabOrder = 4
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1059#1052' '#1058#1055' '#1074#1098#1074' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' - %s'
    end
    object actDocs: TAction
      Caption = 'actDocs'
      ImageIndex = 1
      OnExecute = actDocsExecute
      OnUpdate = actDocsUpdate
    end
  end
end
