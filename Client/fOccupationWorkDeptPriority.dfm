inherited fmOccupationWorkDeptPriority: TfmOccupationWorkDeptPriority
  Left = 401
  Top = 347
  ActiveControl = edtPriorityNo
  Caption = #1056#1077#1078#1080#1084' '#1085#1072' '#1054#1088#1075#1072#1085#1080#1079#1080#1088#1072#1085#1077' '#1085#1072' '#1058#1055' - %s'
  ClientHeight = 164
  ClientWidth = 548
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 532
    Height = 113
  end
  object lblPriorityNo: TLabel [1]
    Left = 24
    Top = 16
    Width = 19
    Height = 13
    Caption = #1050#1086#1076
  end
  object lblPriorityName: TLabel [2]
    Left = 104
    Top = 16
    Width = 76
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
  end
  object lblOrgWorkLevel: TLabel [3]
    Left = 24
    Top = 64
    Width = 112
    Height = 13
    Caption = #1044#1077#1081#1089#1090#1074#1080#1077' '#1087#1086' '#1044#1077#1081#1085#1086#1089#1090
  end
  object lblOrgWorkActivity: TLabel [4]
    Left = 184
    Top = 64
    Width = 97
    Height = 13
    Caption = #1044#1077#1081#1085#1086#1089#1090' '#1087#1086' '#1056#1077#1078#1080#1084
  end
  inherited pnlBottomButtons: TPanel
    Top = 129
    Width = 548
    TabOrder = 6
    inherited pnlOKCancel: TPanel
      Left = 280
    end
    inherited pnlClose: TPanel
      Left = 191
    end
    inherited pnlApply: TPanel
      Left = 459
      Visible = False
    end
    object tbDocButton: TToolBar
      Left = 8
      Top = 2
      Width = 41
      Height = 25
      Align = alNone
      ButtonWidth = 36
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = dmMain.ilDocs
      TabOrder = 3
      object btnDoc: TToolButton
        Left = 0
        Top = 0
        Action = actDoc
        ParentShowHint = False
        ShowHint = True
      end
    end
  end
  object edtPriorityNo: TDBEdit [6]
    Left = 24
    Top = 32
    Width = 65
    Height = 21
    DataField = 'OCC_WORK_DEPT_PRIORITY_NO'
    DataSource = dsData
    TabOrder = 0
  end
  object edtPriorityName: TDBEdit [7]
    Left = 104
    Top = 32
    Width = 281
    Height = 21
    DataField = 'OCC_WORK_DEPT_PRIORITY_NAME'
    DataSource = dsData
    TabOrder = 1
  end
  object chkIsCapacityGenerator: TAbmesDBCheckBox [8]
    Left = 400
    Top = 35
    Width = 137
    Height = 17
    Caption = #1050#1072#1087#1072#1094#1080#1090#1077#1090#1086#1086#1073#1088#1072#1079#1091#1074#1072#1097
    DataField = 'IS_CAPACITY_GENERATOR'
    DataSource = dsData
    TabOrder = 4
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    ImmediateUpdateField = True
  end
  object chkIsProcessGenerator: TAbmesDBCheckBox [9]
    Left = 400
    Top = 82
    Width = 129
    Height = 17
    Caption = #1055#1088#1086#1094#1077#1089#1086#1086#1073#1088#1072#1079#1091#1074#1072#1097
    DataField = '_IS_PROCESS_GENERATOR'
    DataSource = dsData
    Enabled = False
    ReadOnly = True
    TabOrder = 5
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object cbOrgWorkLevel: TJvDBLookupCombo [10]
    Left = 24
    Top = 80
    Width = 145
    Height = 21
    DataField = '_ORG_WORK_LEVEL_NAME'
    DataSource = dsData
    TabOrder = 2
  end
  object cbOrgWorkActivity: TJvDBLookupCombo [11]
    Left = 184
    Top = 80
    Width = 201
    Height = 21
    DataField = '_ORG_WORK_ACTIVITY_NAME'
    DataSource = dsData
    TabOrder = 3
  end
  inherited alActions: TActionList
    Left = 272
    inherited actForm: TAction
      Caption = #1056#1077#1078#1080#1084' '#1085#1072' '#1054#1088#1075#1072#1085#1080#1079#1080#1088#1072#1085#1077' '#1085#1072' '#1058#1055' - %s'
    end
    object actDoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1056#1077#1078#1080#1084
      ImageIndex = 98
      OnExecute = actDocExecute
      OnUpdate = actDocUpdate
    end
  end
  inherited dsData: TDataSource
    Left = 240
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 208
  end
end
