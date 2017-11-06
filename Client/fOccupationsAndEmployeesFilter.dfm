inherited fmOccupationsAndEmployeesFilter: TfmOccupationsAndEmployeesFilter
  Left = 240
  Top = 156
  Caption = '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1080
  ClientHeight = 660
  ClientWidth = 1017
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 625
    Width = 1017
    TabOrder = 15
    inherited pnlOKCancel: TPanel
      Left = 749
    end
    inherited pnlClose: TPanel
      Left = 660
    end
    inherited pnlApply: TPanel
      Left = 928
    end
  end
  inline frProduct: TfrParamProductFilter [1]
    Left = 8
    Top = 224
    Width = 377
    Height = 247
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    TabStop = True
    inherited grpTreeNodeFilter: TGroupBox
      Height = 247
      Caption = ' '#1044#1056#1054#1088' '
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
  object gbEmployee: TGroupBox [2]
    Left = 392
    Top = 142
    Width = 617
    Height = 187
    Caption = ' '#1044#1083#1098#1078#1085#1086#1089#1090#1085#1086' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077' '
    TabOrder = 11
    object lblEmployee: TLabel
      Left = 272
      Top = 16
      Width = 49
      Height = 13
      Caption = #1057#1083#1091#1078#1080#1090#1077#1083
    end
    object lblEmployeeEGN: TLabel
      Left = 8
      Top = 64
      Width = 50
      Height = 13
      Caption = #1045#1043#1053'/'#1051#1053#1063
      FocusControl = edtEmployeeEGN
    end
    object lblEmployeeMale: TLabel
      Left = 176
      Top = 64
      Width = 20
      Height = 13
      Caption = #1055#1086#1083
      FocusControl = cbEmployeeMale
    end
    object lblEducation: TLabel
      Left = 272
      Top = 64
      Width = 68
      Height = 13
      Caption = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
      FocusControl = cbEducation
    end
    object lblEmployeeProfession: TLabel
      Left = 160
      Top = 128
      Width = 106
      Height = 13
      Caption = #1047#1072#1103#1074#1077#1085#1072' '#1057#1087#1086#1089#1086#1073#1085#1086#1089#1090
      FocusControl = cbEmployeeProfession
    end
    object lblIsExternal: TLabel
      Left = 8
      Top = 128
      Width = 109
      Height = 13
      Caption = #1055#1086#1079#1080#1094#1080#1103' '#1089#1087#1088#1103#1084#1086' '#1048#1055
    end
    object lblOERegime: TLabel
      Left = 448
      Top = 64
      Width = 114
      Height = 13
      Caption = #1056#1077#1078#1080#1084' '#1085#1072' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077
    end
    object lblDateInterval: TLabel
      Left = 8
      Top = 16
      Width = 137
      Height = 13
      Caption = #1053#1072#1095#1072#1083#1086' '#1085#1072' '#1044#1083'. '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077
    end
    object lblEmployeeAgeSeparator: TLabel
      Left = 120
      Top = 83
      Width = 8
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = #247
      ParentFont = False
    end
    object lblEmployeeAge: TLabel
      Left = 96
      Top = 64
      Width = 43
      Height = 13
      Caption = #1042#1098#1079#1088#1072#1089#1090
    end
    object lblEmployeeAgeMeasure: TLabel
      Left = 156
      Top = 83
      Width = 8
      Height = 13
      Caption = #1075'.'
    end
    object edtAssignmentDayDiff: TLabel
      Left = 160
      Top = 16
      Width = 37
      Height = 13
      Caption = #1056#1077#1079#1077#1088#1074
    end
    object edtAssignmentDayDiffSeparator: TLabel
      Left = 192
      Top = 35
      Width = 8
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = #247
      ParentFont = False
    end
    object edtAssignmentDayDiffMeasure: TLabel
      Left = 236
      Top = 35
      Width = 18
      Height = 13
      Caption = #1082'.'#1076'.'
    end
    object edtEmployeeEGN: TDBEdit
      Left = 8
      Top = 80
      Width = 73
      Height = 21
      DataField = 'EMPLOYEE_EGN'
      DataSource = dsData
      TabOrder = 4
    end
    object cbEmployeeMale: TJvDBComboBox
      Left = 176
      Top = 80
      Width = 73
      Height = 21
      DataField = 'EMPLOYEE_MALE'
      DataSource = dsData
      Items.Strings = (
        '< '#1074#1089' >'
        #1052#1098#1078#1082#1080
        #1046#1077#1085#1089#1082#1080)
      TabOrder = 7
      Values.Strings = (
        ''
        '1'
        '0')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object cbEducation: TJvDBLookupCombo
      Left = 272
      Top = 80
      Width = 169
      Height = 21
      DeleteKeyClear = False
      DataField = '_EDUCATION_SHORT_NAME'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      TabOrder = 8
    end
    object gbDisciplineStatus: TGroupBox
      Left = 312
      Top = 112
      Width = 297
      Height = 65
      Caption = ' '#1048#1079#1074#1098#1085#1088#1077#1076#1085#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' '#1074' '#1056#1055#1074' '
      TabOrder = 12
      object gbNegativeDisciplineEvents: TGroupBox
        Left = 8
        Top = 16
        Width = 137
        Height = 41
        Caption = ' '#1054#1090#1088#1080#1094#1072#1090#1077#1083#1085#1080' '
        TabOrder = 0
        object chbHasNegativeEvents: TAbmesDBCheckBox
          Left = 8
          Top = 16
          Width = 49
          Height = 17
          Caption = #1048#1084#1072
          DataField = 'HAS_NEGATIVE_DISCIPLINE_EVENTS'
          DataSource = dsData
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object chbHasNotNegativeEvents: TAbmesDBCheckBox
          Left = 56
          Top = 16
          Width = 49
          Height = 17
          Caption = #1053#1103#1084#1072
          DataField = 'HAS_NOT_NEGATIVE_DISCIPLINE_EVENTS'
          DataSource = dsData
          TabOrder = 1
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
      object gbPositiveDisciplineEvents: TGroupBox
        Left = 152
        Top = 16
        Width = 137
        Height = 41
        Caption = ' '#1055#1086#1083#1086#1078#1080#1090#1077#1083#1085#1080' '
        TabOrder = 1
        object chbHasPositiveEvents: TAbmesDBCheckBox
          Left = 8
          Top = 16
          Width = 49
          Height = 17
          Caption = #1048#1084#1072
          DataField = 'HAS_POSITIVE_DISCIPLINE_EVENTS'
          DataSource = dsData
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object chbHasNotPositiveEvents: TAbmesDBCheckBox
          Left = 56
          Top = 16
          Width = 49
          Height = 17
          Caption = #1053#1103#1084#1072
          DataField = 'HAS_NOT_POSITIVE_DISCIPLINE_EVENTS'
          DataSource = dsData
          TabOrder = 1
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
    end
    object cbEmployeeProfession: TJvDBLookupCombo
      Left = 160
      Top = 144
      Width = 137
      Height = 21
      DeleteKeyClear = False
      DataField = '_EMPLOYEE_PROFESSION_NAME'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      TabOrder = 11
    end
    object cbIsExternal: TJvDBComboBox
      Left = 8
      Top = 144
      Width = 137
      Height = 21
      DataField = 'IS_EXTERNAL_CODE'
      DataSource = dsData
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1042#1098#1090#1088#1077#1096#1085#1072
        #1042#1098#1085#1096#1085#1072)
      TabOrder = 10
      Values.Strings = (
        '0'
        '1'
        '2')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object cbOERegime: TJvDBLookupCombo
      Left = 448
      Top = 80
      Width = 161
      Height = 21
      DeleteKeyClear = False
      DataField = '_OE_REGIME_NAME'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      TabOrder = 9
    end
    inline frEmployeeDateInterval: TfrDateIntervalFrame
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
    end
    object edtMinEmployeeAge: TDBEdit
      Left = 96
      Top = 80
      Width = 25
      Height = 21
      DataField = 'MIN_EMPLOYEE_AGE'
      DataSource = dsData
      TabOrder = 5
    end
    object edtMaxEmployeeAge: TDBEdit
      Left = 128
      Top = 80
      Width = 25
      Height = 21
      DataField = 'MAX_EMPLOYEE_AGE'
      DataSource = dsData
      TabOrder = 6
    end
    object edtMinAssignmentDayDiff: TDBEdit
      Left = 160
      Top = 32
      Width = 33
      Height = 21
      DataField = 'MIN_ASSIGNMENT_DAY_DIFF'
      DataSource = dsData
      TabOrder = 1
    end
    object edtMaxAssignmentDayDiff: TDBEdit
      Left = 200
      Top = 32
      Width = 33
      Height = 21
      DataField = 'MAX_ASSIGNMENT_DAY_DIFF'
      DataSource = dsData
      TabOrder = 2
    end
    inline frEmployee: TfrEmployeeFieldEditFrameBald
      Left = 272
      Top = 32
      Width = 337
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 3
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
    end
  end
  inline frDeptFilter: TfrDeptFilter [3]
    Left = 8
    Top = 72
    Width = 377
    Height = 145
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    TabStop = True
    inherited grpTreeNodeFilter: TGroupBox
      Caption = ' '#1054#1088#1063' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072' '
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
  object gbProfessions: TGroupBox [4]
    Left = 392
    Top = 335
    Width = 617
    Height = 65
    Caption = ' '#1056#1086#1083#1077#1074#1080' '#1054#1073#1093#1074#1072#1090' '
    TabOrder = 12
    object lblOccupationEmployeeProfession: TLabel
      Left = 8
      Top = 16
      Width = 74
      Height = 13
      Caption = #1055#1088#1080#1089#1074#1086#1077#1085#1072' '#1055#1056
      FocusControl = cbOccupationEmployeeProfession
    end
    object lblOccupationProfession: TLabel
      Left = 248
      Top = 16
      Width = 86
      Height = 13
      Caption = #1053#1077#1087#1088#1080#1089#1074#1086#1077#1085#1072' '#1055#1056
      FocusControl = cbOccupationProfession
    end
    object lblProfessionStatus: TLabel
      Left = 488
      Top = 16
      Width = 105
      Height = 13
      Caption = #1056#1086#1083#1077#1074#1072' '#1040#1076#1077#1082#1074#1072#1090#1085#1086#1089#1090
      FocusControl = cbProfessionStatus
    end
    object cbOccupationEmployeeProfession: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 225
      Height = 21
      DeleteKeyClear = False
      DataField = '_OCCUPATION_EMP_PROFESSION_NAME'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      TabOrder = 0
    end
    object cbOccupationProfession: TJvDBLookupCombo
      Left = 248
      Top = 32
      Width = 225
      Height = 21
      DeleteKeyClear = False
      DataField = '_OCCUPATION_PROFESSION_NAME'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      TabOrder = 1
    end
    object cbProfessionStatus: TJvDBComboBox
      Left = 488
      Top = 32
      Width = 121
      Height = 21
      DataField = 'PROFESSIONS_STATUS'
      DataSource = dsData
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1040#1076#1077#1082#1074#1072#1090#1085#1072
        #1053#1077#1072#1076#1077#1082#1074#1072#1090#1085#1072)
      TabOrder = 2
      Values.Strings = (
        ''
        '1'
        '0')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
    end
  end
  object gbOccupationIsMain: TGroupBox [5]
    Left = 288
    Top = 8
    Width = 97
    Height = 57
    Caption = ' '#1042#1080#1076' '#1044#1083#1098#1078#1085#1086#1089#1090' '
    TabOrder = 2
    object cbOccipationIsMain: TJvDBComboBox
      Left = 8
      Top = 24
      Width = 81
      Height = 21
      DataField = 'IS_MAIN'
      DataSource = dsData
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1054#1089#1085'.'
        #1055#1088#1074'.')
      TabOrder = 0
      Values.Strings = (
        ''
        '1'
        '0')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
    end
  end
  object gbPhase: TGroupBox [6]
    Left = 648
    Top = 8
    Width = 201
    Height = 57
    Caption = ' '#1060#1072#1079#1072' '
    TabOrder = 4
    object cbPhase: TJvDBLookupCombo
      Left = 8
      Top = 24
      Width = 185
      Height = 21
      DropDownWidth = 150
      DeleteKeyClear = False
      DataField = '_OCCUPATION_PHASE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089' >'
      TabOrder = 0
    end
  end
  object gbOccupationLevel: TGroupBox [7]
    Left = 856
    Top = 8
    Width = 73
    Height = 57
    Caption = ' '#1054#1088#1075'. '#1085#1080#1074#1086' '
    TabOrder = 5
    object edtOccupationLevelSeparator: TLabel
      Left = 32
      Top = 27
      Width = 8
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = #247
      ParentFont = False
    end
    object edtBeginOccupationLevel: TDBEdit
      Left = 8
      Top = 24
      Width = 25
      Height = 21
      DataField = 'BEGIN_OCCUPATION_LEVEL'
      DataSource = dsData
      TabOrder = 0
    end
    object edtEndOccupationLevel: TDBEdit
      Left = 40
      Top = 24
      Width = 25
      Height = 21
      DataField = 'END_OCCUPATION_LEVEL'
      DataSource = dsData
      TabOrder = 1
    end
  end
  object gbShift: TGroupBox [8]
    Left = 936
    Top = 8
    Width = 73
    Height = 57
    Caption = ' '#1057#1084#1103#1085#1072' '
    TabOrder = 6
    object cbShift: TJvDBLookupCombo
      Left = 8
      Top = 24
      Width = 57
      Height = 21
      DeleteKeyClear = False
      DataField = '_SHIFT_IDENTIFIER'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089' >'
      TabOrder = 0
    end
  end
  object gbOccupationDates: TGroupBox [9]
    Left = 752
    Top = 72
    Width = 257
    Height = 65
    Caption = ' '#1042#1088#1077#1084#1077#1074#1080' '#1087#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090' '
    TabOrder = 9
    object lblOccupationDayDiff: TLabel
      Left = 160
      Top = 16
      Width = 37
      Height = 13
      Caption = #1056#1077#1079#1077#1088#1074
    end
    object lblOccupationDayDiffSeparator: TLabel
      Left = 192
      Top = 35
      Width = 8
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = #247
      ParentFont = False
    end
    object lblOccupationDayDiffMeasure: TLabel
      Left = 236
      Top = 35
      Width = 18
      Height = 13
      Caption = #1082'.'#1076'.'
    end
    object lblOccupationDateInterval: TLabel
      Left = 8
      Top = 16
      Width = 108
      Height = 13
      Caption = #1053#1072#1095#1072#1083#1086' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090
    end
    inline frOccupationDateInterval: TfrDateIntervalFrame
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
    end
    object edtMinOccupationDayDiff: TDBEdit
      Left = 160
      Top = 32
      Width = 33
      Height = 21
      DataField = 'MIN_OCCUPATION_DAY_DIFF'
      DataSource = dsData
      TabOrder = 1
    end
    object edtMaxOccupationDayDiff: TDBEdit
      Left = 200
      Top = 32
      Width = 33
      Height = 21
      DataField = 'MAX_OCCUPATION_DAY_DIFF'
      DataSource = dsData
      TabOrder = 2
    end
  end
  object gbCraft: TGroupBox [10]
    Left = 392
    Top = 72
    Width = 353
    Height = 65
    Caption = ' '#1055#1088#1086#1092#1077#1089#1080#1103' '
    TabOrder = 8
    object lblCraftType: TLabel
      Left = 8
      Top = 16
      Width = 180
      Height = 13
      Caption = #1050#1083#1072#1089#1080#1092#1080#1082#1072#1094#1080#1086#1085#1085#1072' '#1043#1088#1091#1087#1072' '#1055#1088#1086#1092#1077#1089#1080#1080
    end
    object lblCraft: TLabel
      Left = 200
      Top = 16
      Width = 74
      Height = 13
      Caption = #1042#1080#1076' '#1055#1088#1086#1092#1077#1089#1080#1103
    end
    object cbCraft: TJvDBLookupCombo
      Left = 200
      Top = 32
      Width = 145
      Height = 21
      DeleteKeyClear = False
      DataField = '_CRAFT_NAME'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      TabOrder = 1
    end
    object cbCraftType: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 185
      Height = 21
      DeleteKeyClear = False
      DataField = '_CRAFT_TYPE_NAME'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      TabOrder = 0
    end
  end
  object gbStatusDate: TGroupBox [11]
    Left = 8
    Top = 8
    Width = 121
    Height = 57
    Caption = ' '#1050#1098#1084' '#1076#1072#1090#1072' '
    TabOrder = 0
    inline frStatusDate: TfrDateFieldEditFrame
      Left = 8
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
  end
  object gbStatus: TGroupBox [12]
    Left = 136
    Top = 8
    Width = 145
    Height = 57
    Caption = ' '#1057#1090#1072#1090#1091#1089' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090' '
    TabOrder = 1
    object chbIsActive: TAbmesDBCheckBox
      Left = 8
      Top = 16
      Width = 65
      Height = 17
      Caption = #1040#1082#1090#1080#1074#1085#1072
      DataField = 'IS_ACTIVE'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object chbIsNotActive: TAbmesDBCheckBox
      Left = 8
      Top = 32
      Width = 65
      Height = 17
      Caption = #1055#1072#1089#1080#1074#1085#1072
      DataField = 'IS_NOT_ACTIVE'
      DataSource = dsData
      TabOrder = 1
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object chbIsOccupied: TAbmesDBCheckBox
      Left = 80
      Top = 16
      Width = 63
      Height = 17
      Caption = #1047#1072#1077#1090#1072
      DataField = 'IS_OCCUPIED'
      DataSource = dsData
      TabOrder = 2
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object chbIsNotOccupied: TAbmesDBCheckBox
      Left = 80
      Top = 32
      Width = 63
      Height = 17
      Caption = #1053#1077#1079#1072#1077#1090#1072
      DataField = 'IS_NOT_OCCUPIED'
      DataSource = dsData
      TabOrder = 3
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object gbPrcData: TGroupBox [13]
    Left = 8
    Top = 479
    Width = 1001
    Height = 138
    Anchors = [akLeft, akTop, akRight]
    Caption = ' '#1055#1088#1086#1094#1077#1089#1077#1085' '#1054#1073#1093#1074#1072#1090' '
    TabOrder = 14
    object lblOccPrcActionsStatus: TLabel
      Left = 8
      Top = 48
      Width = 97
      Height = 13
      Caption = #1055#1086#1079#1085'. '#1040#1076#1077#1082#1074#1072#1090#1085#1086#1089#1090
    end
    object cbOccPrcActionsStatus: TJvDBComboBox
      Left = 8
      Top = 64
      Width = 121
      Height = 21
      DataField = 'OCC_PRC_ACTIONS_STATUS'
      DataSource = dsData
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1040#1076#1077#1082#1074#1072#1090#1085#1072
        #1053#1077#1072#1076#1077#1082#1074#1072#1090#1085#1072)
      TabOrder = 0
      Values.Strings = (
        ''
        '0'
        '1')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
    end
    inline frPrcDataFilter: TfrPrcDataFilterFrame
      Left = 132
      Top = 16
      Width = 861
      Height = 114
      Constraints.MaxHeight = 114
      Constraints.MaxWidth = 861
      Constraints.MinHeight = 114
      Constraints.MinWidth = 861
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      inherited lblProcessBaseAction: TLabel
        Width = 110
      end
      inherited lblProcessConcreteAction: TLabel
        Width = 110
      end
      inherited lblProcessBaseOperation: TLabel
        Width = 128
      end
      inherited lblProcessKnowl: TLabel
        Width = 50
      end
      inherited lblProcessFunc: TLabel
        Width = 46
      end
    end
  end
  inline frSysRole: TfrSysRoleFieldEditFrameLabeled [14]
    Left = 392
    Top = 407
    Width = 617
    Height = 65
    Constraints.MaxHeight = 65
    Constraints.MinHeight = 65
    TabOrder = 13
    inherited gbSysRole: TGroupBox
      Width = 617
      inherited lblSysRoleNo: TLabel
        Width = 19
      end
      inherited lblSysRoleName: TLabel
        Width = 76
      end
      inherited edtSysRoleName: TDBEdit
        Width = 551
      end
      inherited cbSysRoleName: TJvDBLookupCombo
        Width = 551
      end
    end
  end
  object gbWorkDept: TGroupBox [15]
    Left = 392
    Top = 8
    Width = 249
    Height = 57
    Caption = ' '#1058#1055' '#1074' '#1055#1086#1083#1077#1074#1080' '#1054#1073#1093#1074#1072#1090' '
    TabOrder = 3
    inline frWorkDept: TfrDeptFieldEditFrameBald
      Left = 11
      Top = 24
      Width = 230
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 0
      inherited gbTreeNode: TGroupBox
        Width = 246
        inherited pnlTreeNode: TPanel
          Width = 230
          inherited pnlTreeNodeName: TPanel
            Width = 83
            inherited edtTreeNodeName: TDBEdit
              Width = 82
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 83
          end
          inherited pnlRightButtons: TPanel
            Left = 194
          end
        end
      end
    end
  end
  inherited alActions: TActionList [16]
    Left = 712
    inherited actForm: TAction
      Caption = '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1080
    end
  end
  inherited dsData: TDataSource [17]
    Left = 672
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [18]
    Left = 208
    Top = 632
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 640
  end
  inherited dsFilterVariants: TDataSource
    Left = 240
    Top = 632
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 272
    Top = 632
  end
end
