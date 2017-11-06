inherited fmEmployeesAvailabilityFilter: TfmEmployeesAvailabilityFilter
  Left = 386
  Top = 241
  Caption = '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103' '#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083#1080
  ClientHeight = 396
  ClientWidth = 633
  ExplicitWidth = 639
  ExplicitHeight = 421
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 361
    Width = 633
    TabOrder = 6
    ExplicitTop = 361
    ExplicitWidth = 633
    inherited pnlOKCancel: TPanel
      Left = 365
      ExplicitLeft = 365
    end
    inherited pnlClose: TPanel
      Left = 276
      ExplicitLeft = 276
    end
    inherited pnlApply: TPanel
      Left = 544
      ExplicitLeft = 544
    end
  end
  object rgIncludeDeptDescendants: TDBRadioGroup [1]
    Left = 8
    Top = 8
    Width = 449
    Height = 73
    Caption = ' '#1053#1072#1095#1080#1085' '#1085#1072' '#1080#1079#1074#1077#1078#1076#1072#1085#1077' '
    DataField = 'INCLUDE_DEPT_DESCENDANTS'
    DataSource = dsData
    Items.Strings = (
      #1057#1083#1091#1078#1080#1090#1077#1083#1080' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1080' '#1086#1090' '#1080#1079#1073#1088#1072#1085#1080' '#1054#1088#1063' '#1041#1045#1047' '#1089#1090#1088#1091#1082#1090#1091#1088#1085#1080' '#1095#1072#1089#1090#1080
      #1057#1083#1091#1078#1080#1090#1077#1083#1080' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1080' '#1086#1090' '#1080#1079#1073#1088#1072#1085#1080' '#1054#1088#1063' '#1057#1066#1057' '#1089#1090#1088#1091#1082#1090#1091#1088#1085#1080' '#1095#1072#1089#1090#1080
      #1057#1083#1091#1078#1080#1090#1077#1083#1080' '#1053#1045#1085#1072#1079#1085#1072#1095#1077#1085#1080' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090)
    ParentBackground = True
    TabOrder = 0
    Values.Strings = (
      '0'
      '1'
      '2')
  end
  object gbOccupationAndEmployee: TGroupBox [2]
    Left = 8
    Top = 88
    Width = 617
    Height = 185
    Caption = ' '#1044#1083#1098#1078#1085#1086#1089#1090' '#1080' '#1057#1083#1091#1078#1080#1090#1077#1083' '
    TabOrder = 2
    inline frOccupationDept: TfrDeptFieldEditFrame
      Left = 8
      Top = 16
      Width = 473
      Height = 49
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 49
      TabOrder = 0
      TabStop = True
      ExplicitLeft = 8
      ExplicitTop = 16
      ExplicitWidth = 473
      inherited gbTreeNode: TGroupBox
        Width = 473
        Caption = ' '#1054#1088#1063' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1085#1086' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077' - '#1054#1089#1085#1086#1074#1085#1086' '
        ExplicitWidth = 473
        inherited pnlTreeNode: TPanel
          Width = 457
          ExplicitWidth = 457
          inherited pnlTreeNodeName: TPanel
            Width = 310
            ExplicitWidth = 310
            inherited edtTreeNodeName: TDBEdit
              Width = 309
              ExplicitWidth = 309
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 310
            ExplicitLeft = 310
          end
          inherited pnlRightButtons: TPanel
            Left = 421
            ExplicitLeft = 421
          end
        end
      end
    end
    inline frEmployee: TfrEmployeeFieldEditFrame
      Left = 8
      Top = 72
      Width = 473
      Height = 49
      Constraints.MaxHeight = 49
      Constraints.MinHeight = 49
      TabOrder = 2
      TabStop = True
      ExplicitLeft = 8
      ExplicitTop = 72
      ExplicitWidth = 473
      inherited gbEmployee: TGroupBox
        Width = 473
        ExplicitWidth = 473
        inherited pnlEmployeeName: TPanel
          Width = 398
          ExplicitWidth = 398
          inherited pnlRightButtons: TPanel
            Left = 362
            ExplicitLeft = 362
          end
          inherited pnlEmpoyeeNameInner: TPanel
            Width = 362
            ExplicitWidth = 362
            inherited edtEmployeeName: TDBEdit
              Width = 361
              ExplicitWidth = 361
            end
            inherited cbEmployee: TJvDBLookupCombo
              Width = 361
              ExplicitWidth = 361
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 463
          ExplicitLeft = 463
        end
      end
    end
    object gbShift: TGroupBox
      Left = 488
      Top = 16
      Width = 121
      Height = 49
      Caption = ' '#1054#1088#1075'. '#1057#1084#1103#1085#1072' '
      TabOrder = 1
      DesignSize = (
        121
        49)
      object cbShift: TJvDBLookupCombo
        Left = 8
        Top = 16
        Width = 105
        Height = 21
        DataField = '_SHIFT_IDENTIFIER'
        DataSource = dsData
        DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
      end
    end
    object gbIsExternal: TGroupBox
      Left = 488
      Top = 72
      Width = 121
      Height = 49
      Caption = ' '#1055#1086#1079#1080#1094#1080#1103' '#1074' '#1048#1055' '
      TabOrder = 3
      DesignSize = (
        121
        49)
      object cbIsExternal: TJvDBComboBox
        Left = 8
        Top = 16
        Width = 105
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
    object gbCraftType: TGroupBox
      Left = 8
      Top = 128
      Width = 233
      Height = 49
      Caption = ' '#1050#1083#1072#1089#1080#1092#1080#1082#1072#1094#1080#1086#1085#1085#1072' '#1043#1088#1091#1087#1072' '#1055#1088#1086#1092#1077#1089#1080#1080' '
      TabOrder = 4
      DesignSize = (
        233
        49)
      object cbCraftType: TJvDBLookupCombo
        Left = 8
        Top = 16
        Width = 217
        Height = 21
        DropDownWidth = 300
        DataField = '_CRAFT_TYPE_NAME'
        DataSource = dsData
        DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
      end
    end
    object gbCraft: TGroupBox
      Left = 248
      Top = 128
      Width = 361
      Height = 49
      Caption = ' '#1055#1088#1086#1092#1077#1089#1080#1103' '
      TabOrder = 5
      DesignSize = (
        361
        49)
      object cbCraft: TJvDBLookupCombo
        Left = 56
        Top = 16
        Width = 297
        Height = 21
        DropDownWidth = 400
        DataField = '_CRAFT_NAME'
        DataSource = dsData
        DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 1
      end
      object edtCraft: TDBEdit
        Left = 8
        Top = 16
        Width = 48
        Height = 21
        DataField = 'CRAFT_CODE'
        DataSource = dsData
        TabOrder = 0
      end
    end
  end
  object gbDatePeriod: TGroupBox [3]
    Left = 464
    Top = 8
    Width = 161
    Height = 73
    Caption = ' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '
    TabOrder = 1
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
  object gbEmpAvailModifiers: TGroupBox [4]
    Left = 8
    Top = 280
    Width = 513
    Height = 73
    Caption = 
      ' '#1052#1086#1076#1080#1092#1080#1082#1072#1090#1086#1088' '#1085#1072' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1077'                                      ' +
      '     '
    TabOrder = 4
    object pnlDayAbsenceModifiers: TPanel
      Left = 2
      Top = 105
      Width = 509
      Height = 45
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object lblEmpDayAbsenceReason: TLabel
        Left = 8
        Top = 8
        Width = 43
        Height = 13
        Caption = #1055#1088#1080#1095#1080#1085#1072
        FocusControl = cbEmpDayAbsenceReason
      end
      object lblIsEmpDayAbsenceConfirmed: TLabel
        Left = 144
        Top = 8
        Width = 56
        Height = 13
        Caption = #1055#1086#1090#1074#1098#1088#1076#1077#1085
        FocusControl = cbEmpDayAbsenceReason
      end
      object cbEmpDayAbsenceReason: TJvDBLookupCombo
        Left = 8
        Top = 24
        Width = 129
        Height = 21
        DataField = '_EMP_DAY_ABSENCE_REASON_NAME'
        DataSource = dsData
        DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
        TabOrder = 0
      end
      object chIsEmpDayAbsenceConfirmed: TJvDBComboBox
        Left = 144
        Top = 24
        Width = 97
        Height = 21
        DataField = 'IS_EMP_DAY_ABSENCE_CONFIRMED'
        DataSource = dsData
        ItemHeight = 13
        Items.Strings = (
          '< '#1074#1089#1080#1095#1082#1080' >'
          #1044#1072
          #1053#1077)
        TabOrder = 1
        Values.Strings = (
          ''
          '1'
          '0')
      end
    end
    object pnlHourAbsenceModifiers: TPanel
      Left = 2
      Top = 60
      Width = 509
      Height = 45
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object lblEmpHourAvailModifierReason: TLabel
        Left = 312
        Top = 8
        Width = 43
        Height = 13
        Caption = #1055#1088#1080#1095#1080#1085#1072
        FocusControl = cbEmpHourAvailModifierReason
      end
      object lblEmpAvailModifierType: TLabel
        Left = 8
        Top = 8
        Width = 19
        Height = 13
        Caption = #1042#1080#1076
        FocusControl = cbEmpAvailModifierType
      end
      object cbEmpHourAvailModifierReason: TJvDBLookupCombo
        Left = 312
        Top = 24
        Width = 193
        Height = 21
        DataField = '_EMP_HOUR_AVAIL_MOD_REASON_NAME'
        DataSource = dsData
        DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
        TabOrder = 1
      end
      object cbEmpAvailModifierType: TJvDBLookupCombo
        Left = 8
        Top = 24
        Width = 297
        Height = 21
        DataField = '_EMP_AVAIL_MODIFIER_TYPE_NAME'
        DataSource = dsData
        DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
        TabOrder = 0
      end
    end
    object pnlShiftChangeModifier: TPanel
      Left = 2
      Top = 15
      Width = 509
      Height = 45
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      DesignSize = (
        509
        45)
      object lblShiftChangeModifierReason: TLabel
        Left = 184
        Top = 8
        Width = 43
        Height = 13
        Caption = #1055#1088#1080#1095#1080#1085#1072
        FocusControl = cbShiftChangeModifierReason
      end
      object lblOldShift: TLabel
        Left = 8
        Top = 8
        Width = 74
        Height = 13
        Caption = #1042#1084#1077#1089#1090#1086' '#1057#1084#1103#1085#1072
        FocusControl = cbOldShift
      end
      object lblNewShift: TLabel
        Left = 96
        Top = 8
        Width = 62
        Height = 13
        Caption = #1053#1086#1074#1072' '#1057#1084#1103#1085#1072
        FocusControl = cbNewShift
      end
      object cbShiftChangeModifierReason: TJvDBLookupCombo
        Left = 184
        Top = 24
        Width = 321
        Height = 21
        DataField = '_EMP_HOUR_AVAIL_MOD_REASON_NAME'
        DataSource = dsData
        DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
        TabOrder = 2
      end
      object cbOldShift: TJvDBLookupCombo
        Left = 8
        Top = 24
        Width = 81
        Height = 21
        DataField = '_OLD_SHIFT_IDENTIFIER'
        DataSource = dsData
        DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
      end
      object cbNewShift: TJvDBLookupCombo
        Left = 96
        Top = 24
        Width = 81
        Height = 21
        DataField = '_NEW_SHIFT_IDENTIFIER'
        DataSource = dsData
        DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 1
      end
    end
  end
  object cbFilterEmpAvailModifiers: TJvDBComboBox [5]
    Left = 174
    Top = 277
    Width = 121
    Height = 21
    DataField = 'FILTER_EMP_AVAIL_MODIFIERS'
    DataSource = dsData
    ItemHeight = 13
    Items.Strings = (
      '< '#1073#1077#1079' '#1079#1085#1072#1095#1077#1085#1080#1077' >'
      #1062#1077#1083#1086#1076#1085#1077#1074#1077#1085
      #1055#1086#1095#1072#1089#1086#1074
      #1047#1072#1084#1103#1085#1072' '#1085#1072' '#1057#1084#1103#1085#1072)
    TabOrder = 3
    Values.Strings = (
      ''
      '1'
      '2'
      '3')
  end
  object gbHasUnmatchedMovements: TGroupBox [6]
    Left = 528
    Top = 280
    Width = 97
    Height = 73
    Caption = ' '#1053#1077#1086#1090#1095#1077#1090#1077#1085#1080' '
    TabOrder = 5
    object lblHasUnmatchedMovements: TLabel
      Left = 11
      Top = 14
      Width = 53
      Height = 13
      Caption = #1044#1074#1080#1078#1077#1085#1080#1103
      Transparent = True
    end
    object cbHasUnmatchedMovements: TJvDBComboBox
      Left = 8
      Top = 40
      Width = 81
      Height = 21
      DataField = 'HAS_UNMATCHED_MOVEMENTS'
      DataSource = dsData
      ItemHeight = 13
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1048#1084#1072
        #1053#1103#1084#1072)
      TabOrder = 0
      Values.Strings = (
        ''
        '1'
        '0')
    end
  end
  inherited alActions: TActionList
    Left = 328
    inherited actForm: TAction
      Caption = '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103' '#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083#1080
    end
  end
  inherited dsData: TDataSource
    Left = 296
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 264
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Left = 16
    Top = 504
  end
  inherited dsFilterVariants: TDataSource
    Left = 40
    Top = 504
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 64
    Top = 520
  end
end
