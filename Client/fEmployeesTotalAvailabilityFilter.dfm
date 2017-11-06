inherited fmEmployeesTotalAvailabilityFilter: TfmEmployeesTotalAvailabilityFilter
  Caption = '%s '#1085#1072' '#1054#1073#1086#1073#1097#1077#1085#1080#1077' '#1085#1072' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103' '#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083#1080
  ClientHeight = 228
  ClientWidth = 553
  ExplicitWidth = 559
  ExplicitHeight = 253
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 193
    Width = 553
    TabOrder = 6
    ExplicitTop = 193
    ExplicitWidth = 553
    inherited pnlOKCancel: TPanel
      Left = 285
      ExplicitLeft = 285
    end
    inherited pnlClose: TPanel
      Left = 196
      ExplicitLeft = 196
    end
    inherited pnlApply: TPanel
      Left = 464
      ExplicitLeft = 464
    end
  end
  object gbDatePeriod: TGroupBox [1]
    Left = 384
    Top = 56
    Width = 161
    Height = 73
    Caption = ' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '
    TabOrder = 2
    inline frDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 32
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 0
      TabStop = True
      ExplicitLeft = 8
      ExplicitTop = 32
    end
  end
  inline frOccupationDept: TfrDeptFieldEditFrame [2]
    Left = 8
    Top = 136
    Width = 313
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 3
    TabStop = True
    ExplicitLeft = 8
    ExplicitTop = 136
    ExplicitWidth = 313
    inherited gbTreeNode: TGroupBox
      Width = 313
      Caption = ' '#1054#1088#1063' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1085#1086' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077' - '#1054#1089#1085#1086#1074#1085#1086' '
      ExplicitWidth = 313
      inherited pnlTreeNode: TPanel
        Width = 297
        ExplicitWidth = 297
        inherited pnlTreeNodeName: TPanel
          Width = 150
          ExplicitWidth = 150
          inherited edtTreeNodeName: TDBEdit
            Width = 149
            ExplicitWidth = 149
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 150
          ExplicitLeft = 150
        end
        inherited pnlRightButtons: TPanel
          Left = 261
          ExplicitLeft = 261
        end
      end
    end
  end
  object gbIsExternal: TGroupBox [3]
    Left = 432
    Top = 136
    Width = 113
    Height = 49
    Caption = ' '#1055#1086#1079#1080#1094#1080#1103' '#1074' '#1048#1055' '
    TabOrder = 5
    DesignSize = (
      113
      49)
    object cbIsExternal: TJvDBComboBox
      Left = 8
      Top = 16
      Width = 97
      Height = 21
      DataField = 'IS_EXTERNAL'
      DataSource = dsData
      Anchors = [akLeft, akTop, akRight]
      ItemHeight = 13
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1042#1098#1090#1088#1077#1096#1077#1085
        #1042#1098#1085#1096#1077#1085)
      TabOrder = 0
      Values.Strings = (
        ''
        '0'
        '1')
    end
  end
  object gbShift: TGroupBox [4]
    Left = 328
    Top = 136
    Width = 97
    Height = 49
    Caption = ' '#1054#1088#1075'. '#1057#1084#1103#1085#1072' '
    TabOrder = 4
    DesignSize = (
      97
      49)
    object cbShift: TJvDBLookupCombo
      Left = 8
      Top = 16
      Width = 81
      Height = 21
      DataField = '_SHIFT_IDENTIFIER'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
    end
  end
  object rgGroupingType: TDBRadioGroup [5]
    Left = 8
    Top = 8
    Width = 537
    Height = 41
    Caption = ' '#1043#1088#1091#1087#1080#1088#1072#1085#1077' '#1087#1086' '
    Columns = 3
    DataField = 'GROUPING_TYPE'
    DataSource = dsData
    Items.Strings = (
      #1054#1088#1063' '#1085#1072' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077
      #1050#1083#1072#1089#1080#1092'. '#1043#1088#1091#1087#1072' '#1055#1088#1086#1092#1077#1089#1080#1080
      #1057#1083#1091#1078#1080#1090#1077#1083)
    ParentBackground = True
    TabOrder = 0
    Values.Strings = (
      '2'
      '3'
      '1')
  end
  object rgIncludeDeptDescendants: TDBRadioGroup [6]
    Left = 8
    Top = 56
    Width = 369
    Height = 73
    Caption = ' '#1053#1072#1095#1080#1085' '#1085#1072' '#1080#1079#1074#1077#1078#1076#1072#1085#1077' '
    DataField = 'INCLUDE_DEPT_DESCENDANTS'
    DataSource = dsData
    Items.Strings = (
      #1057#1083#1091#1078#1080#1090#1077#1083#1080' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1080' '#1086#1090' '#1080#1079#1073#1088#1072#1085#1080' '#1054#1088#1063' '#1041#1045#1047' '#1089#1090#1088#1091#1082#1090#1091#1088#1085#1080' '#1095#1072#1089#1090#1080
      #1057#1083#1091#1078#1080#1090#1077#1083#1080' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1080' '#1086#1090' '#1080#1079#1073#1088#1072#1085#1080' '#1054#1088#1063' '#1057#1066#1057' '#1089#1090#1088#1091#1082#1090#1091#1088#1085#1080' '#1095#1072#1089#1090#1080
      #1057#1083#1091#1078#1080#1090#1077#1083#1080' '#1053#1045#1085#1072#1079#1085#1072#1095#1077#1085#1080' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090)
    ParentBackground = True
    TabOrder = 1
    Values.Strings = (
      '0'
      '1'
      '2')
  end
  inherited alActions: TActionList [7]
    Left = 304
    inherited actForm: TAction
      Caption = '%s '#1085#1072' '#1054#1073#1086#1073#1097#1077#1085#1080#1077' '#1085#1072' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103' '#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083#1080
    end
  end
  inherited dsData: TDataSource [9]
    Left = 264
  end
  inherited cdsData: TAbmesClientDataSet [10]
    Left = 232
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [11]
    Top = 176
  end
  inherited dsFilterVariants: TDataSource [12]
    Top = 176
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Top = 192
  end
end
