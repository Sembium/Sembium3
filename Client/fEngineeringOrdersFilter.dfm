inherited fmEngineeringOrdersFilter: TfmEngineeringOrdersFilter
  Left = 251
  Top = 180
  Caption = 
    #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1080#1085#1094#1080#1087#1085#1080' '#1048#1085#1078#1077#1085#1077#1088#1085#1080' '#1056#1072#1079#1088#1072#1073#1086#1090#1082#1080' '#1085 +
    #1072' '#1059#1054#1073
  ClientHeight = 556
  ClientWidth = 969
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 521
    Width = 969
    TabOrder = 7
    inherited pnlOKCancel: TPanel
      Left = 701
    end
    inherited pnlClose: TPanel
      Left = 612
    end
    inherited pnlApply: TPanel
      Left = 880
    end
  end
  object gbEOState: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 161
    Height = 65
    Caption = ' '#1057#1090#1072#1090#1091#1089' '
    TabOrder = 0
    object lblState: TLabel
      Left = 77
      Top = 35
      Width = 6
      Height = 13
      Caption = #8212
    end
    object cbMinEoState: TDBComboBoxEh
      Left = 8
      Top = 32
      Width = 65
      Height = 21
      DataField = 'MIN_EO_STATE_CODE'
      DataSource = dsData
      DropDownBox.Rows = 13
      DropDownBox.Width = 450
      EditButtons = <>
      TabOrder = 0
      Visible = True
    end
    object cbMaxEoState: TDBComboBoxEh
      Left = 88
      Top = 32
      Width = 65
      Height = 21
      DataField = 'MAX_EO_STATE_CODE'
      DataSource = dsData
      DropDownBox.Rows = 13
      DropDownBox.Width = 450
      EditButtons = <>
      TabOrder = 1
      Visible = True
    end
  end
  object gbEngineeringOrderIdentification: TGroupBox [2]
    Left = 176
    Top = 8
    Width = 489
    Height = 65
    Caption = ' ID '#1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1080#1085#1094#1080#1087#1085#1072' '#1048#1085#1078#1077#1085#1077#1088#1085#1072' '#1056#1072#1079#1088#1072#1073#1086#1090#1082#1072' ('#1054#1055#1048#1056') '
    TabOrder = 1
    object lblBranch: TLabel
      Left = 16
      Top = 16
      Width = 51
      Height = 13
      Caption = #1058#1055' '#1043#1083'.'
      FocusControl = cbBranch
    end
    object lblNo: TLabel
      Left = 80
      Top = 16
      Width = 14
      Height = 13
      Caption = 'No'
      FocusControl = edtNo
    end
    object lblType: TLabel
      Left = 168
      Top = 16
      Width = 19
      Height = 13
      Caption = #1042#1080#1076
      FocusControl = cbType
    end
    object lblPriorityInterval: TLabel
      Left = 240
      Top = 16
      Width = 80
      Height = 13
      Caption = #1054#1089#1085'. '#1055#1088#1080#1086#1088#1080#1090#1077#1090
      FocusControl = frPriorityInterval
    end
    object cbBranch: TJvDBLookupCombo
      Left = 16
      Top = 32
      Width = 57
      Height = 21
      DisplayAllFields = True
      DataField = 'ENGINEERING_ORDER_BRANCH_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'. >'
      LookupField = 'BRANCH_CODE'
      LookupDisplay = 'BRANCH_IDENTIFIER'
      LookupSource = dsBranches
      TabOrder = 0
    end
    object edtNo: TDBEdit
      Left = 80
      Top = 32
      Width = 81
      Height = 21
      DataField = 'ENGINEERING_ORDER_NO'
      DataSource = dsData
      TabOrder = 1
    end
    object cbType: TJvDBLookupCombo
      Left = 168
      Top = 32
      Width = 57
      Height = 21
      DropDownWidth = 150
      DisplayAllFields = True
      DataField = 'ENGINEERING_ORDER_TYPE_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'. >'
      LookupField = 'ENGINEERING_ORDER_TYPE_CODE'
      LookupDisplay = 'ENGINEERING_ORDER_TYPE_ABBREV;ENGINEERING_ORDER_TYPE_NAME'
      LookupSource = dsEngineeringOrderTypes
      TabOrder = 2
    end
    inline frPriorityInterval: TfrPriorityIntervalEditFrame
      Left = 240
      Top = 32
      Width = 100
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 10
      TabOrder = 3
      TabStop = True
      inherited lblDash: TLabel
        Width = 6
      end
    end
  end
  inline frOrderDeptFilter: TfrDeptFilter [3]
    Left = 672
    Top = 8
    Width = 289
    Height = 145
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    TabStop = True
    inherited grpTreeNodeFilter: TGroupBox
      Width = 289
      Caption = ' '#1058#1055' '#1055#1086#1088#1098#1095#1080#1090#1077#1083' '
      inherited lblsExternal: TLabel
        Width = 52
      end
      inherited lblIsActive: TLabel
        Width = 53
      end
      inherited pnlNodes: TPanel
        Width = 273
        Anchors = [akLeft, akTop, akRight, akBottom]
        inherited grdChosenNodes: TAbmesDBGrid
          Width = 248
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
          Columns = <
            item
              EditButtons = <>
              FieldName = 'NODE_NAME'
              Footers = <>
              Width = 151
            end
            item
              EditButtons = <>
              FieldName = 'NODE_IDENTIFIER'
              Footers = <>
              Width = 63
            end>
        end
        inherited pnlNodesButtons: TPanel
          Left = 248
        end
      end
    end
  end
  object gbEngineeringStart: TGroupBox [4]
    Left = 8
    Top = 80
    Width = 305
    Height = 73
    Caption = ' '#1057#1090#1072#1088#1090' '#1085#1072' ID '#1054#1055#1048#1056' '
    TabOrder = 2
    object lblPlanBeginDateInterval: TLabel
      Left = 8
      Top = 20
      Width = 150
      Height = 13
      Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1057#1090#1072#1088#1090' '#1085#1072' ID '#1054#1055#1048#1056
      FocusControl = frPlanBeginDateInterval
    end
    object lblEngineeringStartDateDiff: TLabel
      Left = 176
      Top = 20
      Width = 37
      Height = 13
      Caption = #1056#1077#1079#1077#1088#1074
      FocusControl = edtEndEngineeringStartDateDiff
    end
    object lblEngineeringStartDateDiffDash: TLabel
      Left = 234
      Top = 39
      Width = 6
      Height = 13
      Caption = #8212
    end
    inline frPlanBeginDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 35
      Width = 153
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 153
      Constraints.MinHeight = 21
      Constraints.MinWidth = 153
      TabOrder = 0
      TabStop = True
      inherited edtInterval: TJvDBComboEdit
        Width = 153
      end
    end
    object edtBeginEngineeringStartDateDiff: TDBEdit
      Left = 176
      Top = 36
      Width = 53
      Height = 21
      DataField = 'BEGIN_ENG_START_DATE_DIFF'
      DataSource = dsData
      TabOrder = 1
    end
    object edtEndEngineeringStartDateDiff: TDBEdit
      Left = 244
      Top = 36
      Width = 53
      Height = 21
      DataField = 'END_ENG_START_DATE_DIFF'
      DataSource = dsData
      TabOrder = 2
    end
  end
  object gbEngineering: TGroupBox [5]
    Left = 8
    Top = 160
    Width = 305
    Height = 353
    Caption = ' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' ID '#1054#1055#1048#1056' '
    TabOrder = 5
    object lblEngineeringEmployee: TLabel
      Left = 8
      Top = 184
      Width = 109
      Height = 13
      Caption = #1048#1085#1078#1077#1085#1077#1088' '#1052#1054#1044#1045#1083'-'#1080#1077#1088
    end
    object edtEngineeringRealWorkdaysDash: TLabel
      Left = 54
      Top = 267
      Width = 6
      Height = 13
      Caption = #8212
    end
    object lblEngineeringRealWorkdays: TLabel
      Left = 8
      Top = 248
      Width = 54
      Height = 13
      Caption = #1055#1077#1088#1080#1086#1076' '#1056#1083
      FocusControl = edtBeginEngineeringRealWorkdays
    end
    object edtEngineeringRealWorkdaysDays: TLabel
      Left = 109
      Top = 267
      Width = 42
      Height = 13
      Caption = #1088#1072#1073'. '#1076#1085#1080
    end
    object lblEngineeringWorkdaysDiffDash: TLabel
      Left = 222
      Top = 267
      Width = 6
      Height = 13
      Caption = #8212
    end
    object lblEngineeringWorkdaysDiffPercent: TLabel
      Left = 176
      Top = 248
      Width = 61
      Height = 13
      Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
      FocusControl = edtBeginEngineeringWorkdaysDiffPercent
    end
    object lblEngineeringWorkdaysDiffPercentPercent: TLabel
      Left = 277
      Top = 267
      Width = 8
      Height = 13
      Caption = '%'
    end
    inline frEngineeringDeptFilter: TfrDeptFilter
      Left = 8
      Top = 16
      Width = 289
      Height = 145
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = True
      inherited grpTreeNodeFilter: TGroupBox
        Width = 289
        Caption = ' '#1058#1055' '#1056#1077#1072#1083#1080#1079#1072#1090#1086#1088' '
        inherited lblsExternal: TLabel
          Width = 52
        end
        inherited lblIsActive: TLabel
          Width = 53
        end
        inherited pnlNodes: TPanel
          Width = 273
          Anchors = [akLeft, akTop, akRight, akBottom]
          inherited grdChosenNodes: TAbmesDBGrid
            Width = 248
            FooterFont.Name = 'Microsoft Sans Serif'
            TitleFont.Name = 'Microsoft Sans Serif'
            Columns = <
              item
                EditButtons = <>
                FieldName = 'NODE_NAME'
                Footers = <>
                Width = 151
              end
              item
                EditButtons = <>
                FieldName = 'NODE_IDENTIFIER'
                Footers = <>
                Width = 63
              end>
          end
          inherited pnlNodesButtons: TPanel
            Left = 248
          end
        end
      end
    end
    inline frEngineeringEmployee: TfrEmployeeFieldEditFrameBald
      Left = 8
      Top = 200
      Width = 289
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 1
      TabStop = True
      inherited gbEmployee: TGroupBox
        Width = 308
        inherited pnlEmployeeName: TPanel
          Width = 233
          inherited pnlRightButtons: TPanel
            Left = 197
          end
          inherited pnlEmpoyeeNameInner: TPanel
            Width = 197
            inherited cbEmployee: TJvDBLookupCombo
              Width = 196
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 298
        end
      end
    end
    object edtBeginEngineeringRealWorkdays: TDBEdit
      Left = 8
      Top = 264
      Width = 41
      Height = 21
      DataField = 'BEGIN_ENG_REAL_WORKDAYS'
      DataSource = dsData
      TabOrder = 2
    end
    object edtEndEngineeringRealWorkdays: TDBEdit
      Left = 64
      Top = 264
      Width = 41
      Height = 21
      DataField = 'END_ENG_REAL_WORKDAYS'
      DataSource = dsData
      TabOrder = 3
    end
    object edtBeginEngineeringWorkdaysDiffPercent: TDBEdit
      Left = 176
      Top = 264
      Width = 41
      Height = 21
      DataField = 'BEGIN_ENG_WORKDAYS_DIFF_PCT'
      DataSource = dsData
      TabOrder = 4
    end
    object edtEndEngineeringWorkdaysDiffPercent: TDBEdit
      Left = 232
      Top = 264
      Width = 41
      Height = 21
      DataField = 'END_ENG_WORKDAYS_DIFF_PCT'
      DataSource = dsData
      TabOrder = 5
    end
  end
  object gbEngineeringFinal: TGroupBox [6]
    Left = 320
    Top = 160
    Width = 641
    Height = 353
    Caption = ' '#1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1048#1056' '
    TabOrder = 6
    object lblDash: TLabel
      Left = 467
      Top = 44
      Width = 6
      Height = 13
      Caption = #8212
    end
    object lblStatus: TLabel
      Left = 392
      Top = 24
      Width = 34
      Height = 13
      Caption = #1057#1090#1072#1090#1091#1089
      FocusControl = cbMinSpecState
    end
    object lblPlanEndDateInterval: TLabel
      Left = 392
      Top = 81
      Width = 156
      Height = 13
      Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1048#1056
      FocusControl = frPlanEndDateInterval
    end
    object lblEngineeringFinalDateDiff: TLabel
      Left = 556
      Top = 79
      Width = 37
      Height = 13
      Caption = #1056#1077#1079#1077#1088#1074
      FocusControl = edtEndEngineeringFinalDateDiff
    end
    object lblEngineeringFinalDateDiffDash: TLabel
      Left = 591
      Top = 98
      Width = 6
      Height = 13
      Caption = #8212
    end
    object lblTreeNode: TLabel
      Left = 8
      Top = 257
      Width = 137
      Height = 13
      Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' - '#1045#1090#1072#1083#1086#1085
    end
    object lblTreeNodeName: TLabel
      Left = 8
      Top = 304
      Width = 64
      Height = 13
      Caption = #1050#1083#1086#1085' '#1086#1090' '#1058#1049#1057
    end
    inline frParamProductFilter: TfrParamProductFilter
      Left = 8
      Top = 16
      Width = 377
      Height = 233
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = True
      inherited grpTreeNodeFilter: TGroupBox
        inherited lblUsedBy: TLabel
          Width = 61
        end
        inherited lblProductOrigin: TLabel
          Width = 23
        end
        inherited lblCommonStatus: TLabel
          Width = 45
        end
        inherited lblIsActive: TLabel
          Width = 53
        end
        inherited pnlNodes: TPanel
          inherited grdChosenNodes: TAbmesDBGrid
            FooterFont.Name = 'Microsoft Sans Serif'
            TitleFont.Name = 'Microsoft Sans Serif'
          end
        end
        inherited pnlParams: TPanel
          inherited grdChosenNodeParams: TAbmesDBGrid
            FooterFont.Name = 'Microsoft Sans Serif'
            TitleFont.Name = 'Microsoft Sans Serif'
          end
        end
      end
    end
    object cbMinSpecState: TDBComboBoxEh
      Left = 392
      Top = 41
      Width = 73
      Height = 21
      DataField = 'MIN_SPEC_STATE_CODE'
      DataSource = dsData
      DropDownBox.Width = 300
      EditButtons = <>
      TabOrder = 1
      Visible = True
    end
    object cbMaxSpecState: TDBComboBoxEh
      Left = 476
      Top = 41
      Width = 73
      Height = 21
      DataField = 'MAX_SPEC_STATE_CODE'
      DataSource = dsData
      DropDownBox.Width = 300
      EditButtons = <>
      TabOrder = 2
      Visible = True
    end
    inline frPlanEndDateInterval: TfrDateIntervalFrame
      Left = 392
      Top = 96
      Width = 153
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 153
      Constraints.MinHeight = 21
      Constraints.MinWidth = 153
      TabOrder = 3
      TabStop = True
      inherited edtInterval: TJvDBComboEdit
        Width = 153
      end
    end
    object edtBeginEngineeringFinalDateDiff: TDBEdit
      Left = 556
      Top = 95
      Width = 33
      Height = 21
      DataField = 'BEGIN_ENG_FINAL_DATE_DIFF'
      DataSource = dsData
      TabOrder = 4
    end
    object edtEndEngineeringFinalDateDiff: TDBEdit
      Left = 600
      Top = 95
      Width = 33
      Height = 21
      DataField = 'END_ENG_FINAL_DATE_DIFF'
      DataSource = dsData
      TabOrder = 5
    end
    inline frThoroughlyEngineeredProduct: TfrProductFieldEditFrameBald
      Left = 8
      Top = 273
      Width = 625
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 6
      TabStop = True
      inherited gbTreeNode: TGroupBox
        Width = 641
        inherited pnlTreeNode: TPanel
          Width = 625
          inherited pnlTreeNodeName: TPanel
            Width = 455
            inherited edtTreeNodeName: TDBEdit
              Width = 454
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 455
          end
          inherited pnlRightButtons: TPanel
            Left = 566
          end
        end
      end
    end
    inline frCommonProduct: TfrProductFieldEditFrameBald
      Left = 8
      Top = 320
      Width = 625
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 7
      TabStop = True
      inherited gbTreeNode: TGroupBox
        Width = 641
        inherited pnlTreeNode: TPanel
          Width = 625
          inherited pnlTreeNodeName: TPanel
            Width = 455
            inherited edtTreeNodeName: TDBEdit
              Width = 454
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 455
          end
          inherited pnlRightButtons: TPanel
            Left = 566
          end
        end
      end
    end
  end
  object gbHasParentEngineeringOrder: TGroupBox [7]
    Left = 320
    Top = 80
    Width = 345
    Height = 73
    Caption = ' '#1055#1086#1079#1080#1094#1080#1103' '#1085#1072' ID '#1054#1055#1048#1056' '
    TabOrder = 3
    object lblParentEngineeringOrderBranch: TLabel
      Left = 210
      Top = 30
      Width = 51
      Height = 13
      Caption = #1058#1055' '#1043#1083'.'
      FocusControl = cbParentEngineeringOrderBranch
    end
    object lblParentEngineeringOrderNo: TLabel
      Left = 274
      Top = 30
      Width = 14
      Height = 13
      Caption = 'No'
      FocusControl = edtParentEngineeringOrderNo
    end
    object lblParentEngineeringOrder: TLabel
      Left = 136
      Top = 50
      Width = 70
      Height = 13
      Caption = #1050#1098#1084' ID '#1054#1055#1048#1056
    end
    object cbParentEngineeringOrderBranch: TJvDBLookupCombo
      Left = 210
      Top = 46
      Width = 57
      Height = 21
      DisplayAllFields = True
      DataField = 'PARENT_ENG_ORDER_BRANCH_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'. >'
      LookupField = 'BRANCH_CODE'
      LookupDisplay = 'BRANCH_IDENTIFIER'
      LookupSource = dsBranches
      TabOrder = 1
    end
    object edtParentEngineeringOrderNo: TDBEdit
      Left = 274
      Top = 46
      Width = 63
      Height = 21
      DataField = 'PARENT_ENG_ORDER_NO'
      DataSource = dsData
      TabOrder = 2
    end
    object rgHasParentEngineeringOrder: TJvDBRadioPanel
      Left = 8
      Top = 15
      Width = 105
      Height = 51
      BevelOuter = bvNone
      DataField = 'HAS_PARENT_ENGINEERING_ORDER'
      DataSource = dsData
      Items.Strings = (
        #1042#1089#1080#1095#1082#1080
        #1054#1089#1085#1086#1074#1077#1085
        #1057#1098#1087#1098#1090#1089#1090#1074#1072#1097)
      TabOrder = 0
      Values.Strings = (
        '1'
        '2'
        '3')
    end
  end
  inherited alActions: TActionList [8]
    Left = 200
    Top = 64
    inherited actForm: TAction
      Caption = 
        #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1080#1085#1094#1080#1087#1085#1080' '#1048#1085#1078#1077#1085#1077#1088#1085#1080' '#1056#1072#1079#1088#1072#1073#1086#1090#1082#1080' '#1085 +
        #1072' '#1059#1054#1073
    end
  end
  inherited dsData: TDataSource [9]
    Left = 168
    Top = 64
  end
  inherited cdsData: TAbmesClientDataSet [10]
    Left = 136
    Top = 64
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [11]
    Left = 224
    Top = 488
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 272
    Top = 504
  end
  inherited dsFilterVariants: TDataSource
    Left = 248
    Top = 488
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Params = <>
    ProviderName = 'prvBranches'
    Left = 608
    Top = 8
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      DisplayWidth = 3
      FieldName = 'BRANCH_CODE'
    end
    object cdsBranchesBRANCH_NO: TAbmesFloatField
      DisplayWidth = 3
      FieldName = 'BRANCH_NO'
    end
    object cdsBranchesNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 50
    end
    object cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BRANCH_IDENTIFIER'
      Size = 255
    end
    object cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField
      FieldName = 'BRANCH_CODE_AND_NAME'
      Size = 255
    end
  end
  object dsBranches: TDataSource
    DataSet = cdsBranches
    Left = 608
    Top = 40
  end
  object cdsEngineeringOrderTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conEngineering
    Params = <>
    ProviderName = 'prvEngineeringOrderTypes'
    Left = 640
    Top = 8
    object cdsEngineeringOrderTypesENGINEERING_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'ENGINEERING_ORDER_TYPE_CODE'
    end
    object cdsEngineeringOrderTypesENGINEERING_ORDER_TYPE_NAME: TAbmesWideStringField
      FieldName = 'ENGINEERING_ORDER_TYPE_NAME'
      Size = 50
    end
    object cdsEngineeringOrderTypesENGINEERING_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'ENGINEERING_ORDER_TYPE_ABBREV'
      Size = 5
    end
  end
  object dsEngineeringOrderTypes: TDataSource
    DataSet = cdsEngineeringOrderTypes
    Left = 640
    Top = 40
  end
end
