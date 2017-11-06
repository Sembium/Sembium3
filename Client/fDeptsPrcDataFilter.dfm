inherited fmDeptsPrcDataFilter: TfmDeptsPrcDataFilter
  Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1056#1072#1079#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077' '#1085#1072' '#1054#1088#1075#1072#1085#1080#1079#1080#1088#1072#1097#1080#1103' '#1055#1086#1090#1077#1085#1094#1080#1072#1083' '#1074' '#1058#1057
  ClientHeight = 676
  ClientWidth = 905
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 641
    Width = 905
    TabOrder = 7
    inherited pnlOKCancel: TPanel
      Left = 637
    end
    inherited pnlClose: TPanel
      Left = 548
    end
    inherited pnlApply: TPanel
      Left = 816
    end
  end
  object gbToDate: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 121
    Height = 49
    Caption = ' '#1050#1098#1084' '#1076#1072#1090#1072' '
    TabOrder = 0
    inline frToDate: TfrDateFieldEditFrame
      Left = 8
      Top = 20
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 0
    end
  end
  object gbDepts: TGroupBox [2]
    Left = 8
    Top = 64
    Width = 889
    Height = 393
    Caption = ' '#1058#1055', '#1086#1073#1093#1074#1072#1085#1072#1090#1080' '#1086#1090' '#1044#1083#1098#1078#1085#1086#1089#1090#1080' '
    TabOrder = 5
    inline frDept: TfrDeptFilter
      Left = 8
      Top = 16
      Width = 377
      Height = 145
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      inherited grpTreeNodeFilter: TGroupBox
        inherited lblsExternal: TLabel
          Width = 52
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
      end
    end
    inline frProductsFilter: TfrParamProductFilter
      Left = 504
      Top = 16
      Width = 377
      Height = 233
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      inherited grpTreeNodeFilter: TGroupBox
        Caption = ' '#1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086' '#1052#1103#1089#1090#1086' ('#1054#1087#1052') '#1085#1072' '#1058#1055' '
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
    object gbPrcData: TGroupBox
      Left = 8
      Top = 248
      Width = 873
      Height = 137
      Caption = ' '#1055#1088#1086#1094#1077#1089#1077#1085' '#1054#1073#1093#1074#1072#1090' '
      TabOrder = 2
      inline frPrcDataFilter: TfrPrcDataFilterFrame
        Left = 6
        Top = 15
        Width = 861
        Height = 114
        Constraints.MaxHeight = 114
        Constraints.MaxWidth = 861
        Constraints.MinHeight = 114
        Constraints.MinWidth = 861
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 0
      end
    end
  end
  object gbOccWorkDeptPriority: TGroupBox [3]
    Left = 136
    Top = 8
    Width = 249
    Height = 49
    Caption = ' '#1056#1077#1078#1080#1084' '#1085#1072' '#1054#1088#1075#1072#1085#1080#1079#1080#1088#1072#1085#1077' '
    TabOrder = 1
    object cbOccWorkDeptPriority: TJvDBLookupCombo
      Left = 8
      Top = 20
      Width = 233
      Height = 21
      DropDownCount = 16
      DropDownWidth = 300
      DataField = '_OCC_WORK_DEPT_PRIORITY_NAME'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      TabOrder = 0
    end
  end
  object gbOrgWorkType: TGroupBox [4]
    Left = 392
    Top = 8
    Width = 193
    Height = 49
    Caption = ' '#1058#1080#1087' '#1085#1072' '#1056#1077#1078#1080#1084' '
    TabOrder = 2
    object cbOrgWorkType: TDBLookupComboboxEh
      Left = 8
      Top = 20
      Width = 177
      Height = 21
      DataField = '_ORG_WORK_TYPE_NAME'
      DataSource = dsData
      DropDownBox.Options = []
      DropDownBox.SpecRow.CellsText = '< '#1074#1089#1080#1095#1082#1080' >'
      DropDownBox.SpecRow.Visible = True
      EditButtons = <>
      TabOrder = 0
      Visible = True
    end
  end
  object gbOccupations: TGroupBox [5]
    Left = 8
    Top = 464
    Width = 889
    Height = 169
    Caption = ' '#1044#1083#1098#1078#1085#1086#1089#1090#1080', '#1086#1073#1093#1074#1072#1097#1072#1097#1080' '#1058#1055' '
    TabOrder = 6
    inline frOccupationDept: TfrDeptFilter
      Left = 8
      Top = 16
      Width = 377
      Height = 145
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      inherited grpTreeNodeFilter: TGroupBox
        Caption = ' '#1054#1088#1063' '#1087#1088#1080#1085#1072#1076#1083#1077#1078#1085#1086#1089#1090' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1080#1090#1077'  '
        inherited lblsExternal: TLabel
          Width = 52
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
      end
    end
    object gbShift: TGroupBox
      Left = 400
      Top = 16
      Width = 105
      Height = 57
      Caption = ' '#1054#1088#1075'. '#1057#1084#1103#1085#1072' '
      TabOrder = 1
      object cbShift: TJvDBLookupCombo
        Left = 16
        Top = 24
        Width = 73
        Height = 21
        DeleteKeyClear = False
        DataField = '_SHIFT_IDENTIFIER'
        DataSource = dsData
        DisplayEmpty = '< '#1074#1089'. >'
        TabOrder = 0
      end
    end
    object gbOccupationStatus: TGroupBox
      Left = 520
      Top = 16
      Width = 273
      Height = 57
      Caption = ' '#1057#1090#1072#1090#1091#1089' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090' '
      TabOrder = 2
      object cbIsActive: TJvDBComboBox
        Left = 16
        Top = 24
        Width = 113
        Height = 21
        DataField = 'IS_ACTIVE'
        DataSource = dsData
        Items.Strings = (
          '< '#1074#1089#1080#1095#1082#1080' >'
          #1040#1082#1090#1080#1074#1085#1072
          #1055#1072#1089#1080#1074#1085#1072)
        TabOrder = 0
        Values.Strings = (
          ''
          'True'
          'False')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object cbIsOccupied: TJvDBComboBox
        Left = 144
        Top = 24
        Width = 113
        Height = 21
        DataField = 'IS_OCCUPIED'
        DataSource = dsData
        Items.Strings = (
          '< '#1074#1089#1080#1095#1082#1080' >'
          #1047#1072#1077#1090#1072
          #1053#1077#1079#1072#1077#1090#1072)
        TabOrder = 1
        Values.Strings = (
          ''
          'True'
          'False')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
        ListSettings.OutfilteredValueFont.Style = []
      end
    end
  end
  object gbOrgWorkActivity: TGroupBox [6]
    Left = 592
    Top = 8
    Width = 153
    Height = 49
    Caption = ' '#1044#1077#1081#1085#1086#1089#1090' '#1087#1086' '#1056#1077#1078#1080#1084#1080' '
    TabOrder = 3
    object cbOrgWorkActivity: TJvDBLookupCombo
      Left = 8
      Top = 20
      Width = 137
      Height = 21
      DataField = '_ORG_WORK_ACTIVITY_NAME'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      TabOrder = 0
    end
  end
  object gbOWDPriorityState: TGroupBox [7]
    Left = 752
    Top = 8
    Width = 145
    Height = 49
    Caption = ' '#1057#1090#1072#1090#1091#1089' '#1085#1072' '#1056#1077#1078#1080#1084' '
    TabOrder = 4
    object lblBetweenExceptEventState: TLabel
      Left = 69
      Top = 24
      Width = 6
      Height = 13
      Caption = #8212
    end
    object cbMaxOWDPriorityState: TDBComboBoxEh
      Left = 80
      Top = 20
      Width = 57
      Height = 21
      DataField = 'MAX_OWD_PRIORITY_STATE_CODE'
      DataSource = dsData
      DropDownBox.Width = 400
      EditButtons = <>
      TabOrder = 1
      Visible = True
    end
    object cbMinOWDPriorityState: TDBComboBoxEh
      Left = 8
      Top = 20
      Width = 57
      Height = 21
      DataField = 'MIN_OWD_PRIORITY_STATE_CODE'
      DataSource = dsData
      DropDownBox.Width = 400
      EditButtons = <>
      TabOrder = 0
      Visible = True
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1056#1072#1079#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077' '#1085#1072' '#1054#1088#1075#1072#1085#1080#1079#1080#1088#1072#1097#1080#1103' '#1055#1086#1090#1077#1085#1094#1080#1072#1083' '#1074' '#1058#1057
    end
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Left = 16
    Top = 624
  end
  inherited dsFilterVariants: TDataSource
    Left = 40
    Top = 624
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 64
    Top = 640
  end
end
