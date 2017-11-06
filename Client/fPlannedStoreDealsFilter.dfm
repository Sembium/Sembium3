inherited fmPlannedStoreDealsFilter: TfmPlannedStoreDealsFilter
  Left = 350
  Top = 195
  Caption = 
    '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1080' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1080' '#1058#1077#1075#1083#1077#1085#1080#1103' '#1085#1072' %ProductClas' +
    'sAbbrev%'
  ClientHeight = 485
  ClientWidth = 793
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 450
    Width = 793
    TabOrder = 9
    inherited pnlOKCancel: TPanel
      Left = 525
    end
    inherited pnlClose: TPanel
      Left = 436
    end
    inherited pnlApply: TPanel
      Left = 704
    end
  end
  object gbDealType: TGroupBox [1]
    Left = 8
    Top = 304
    Width = 161
    Height = 49
    Caption = ' '#1042#1080#1076' '
    TabOrder = 6
    object cbTeglene: TAbmesDBCheckBox
      Left = 8
      Top = 29
      Width = 97
      Height = 17
      Caption = #1058#1077#1075#1083#1077#1085#1077
      DataField = 'OUT_P'
      DataSource = dsData
      TabOrder = 1
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object cbPostuplenie: TAbmesDBCheckBox
      Left = 9
      Top = 13
      Width = 94
      Height = 17
      Caption = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1077
      DataField = 'IN_P'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object gbPeriod: TGroupBox [2]
    Left = 8
    Top = 248
    Width = 161
    Height = 49
    Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1086' '#1055'/'#1058' '
    Color = clBtnFace
    ParentColor = False
    TabOrder = 3
    inline frDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 16
      Width = 148
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 148
      Constraints.MinHeight = 21
      Constraints.MinWidth = 148
      TabOrder = 0
      TabStop = True
      inherited edtInterval: TJvDBComboEdit
        Width = 140
      end
    end
  end
  object gbPlannedStoreDealType: TGroupBox [3]
    Left = 184
    Top = 248
    Width = 209
    Height = 49
    Caption = ' '#1053#1080#1074#1086' '#1085#1072' '#1055'/'#1058' '
    TabOrder = 4
    object cbPlannedStoreDealType: TJvDBLookupCombo
      Left = 8
      Top = 16
      Width = 193
      Height = 21
      DataField = 'PLANNED_STORE_DEAL_TYPE_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      LookupField = 'PLANNED_STORE_DEAL_TYPE_CODE'
      LookupDisplay = 'PLANNED_STORE_DEAL_TYPE_NAME'
      LookupSource = dsPlannedStoreDealTypes
      TabOrder = 0
    end
  end
  object gbStatus: TGroupBox [4]
    Left = 184
    Top = 304
    Width = 601
    Height = 49
    Caption = ' '#1057#1090#1072#1090#1091#1089' '
    TabOrder = 7
    object chkIsInactive: TAbmesDBCheckBox
      Left = 18
      Top = 29
      Width = 83
      Height = 17
      Caption = #1053#1077#1086#1090#1095#1077#1090#1077#1085#1080
      DataField = 'IS_ACTIVE'
      DataSource = dsData
      TabOrder = 1
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object chkIsActive: TAbmesDBCheckBox
      Left = 18
      Top = 13
      Width = 67
      Height = 17
      Caption = #1054#1090#1095#1077#1090#1077#1085#1080
      DataField = 'IS_INACTIVE'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object cbClosed: TAbmesDBCheckBox
      Left = 238
      Top = 13
      Width = 83
      Height = 17
      Caption = #1055#1088#1080#1082#1083#1102#1095#1077#1085#1080
      DataField = 'IS_CLOSED'
      DataSource = dsData
      TabOrder = 2
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object cbNotClosed: TAbmesDBCheckBox
      Left = 238
      Top = 29
      Width = 99
      Height = 17
      Caption = #1053#1077#1087#1088#1080#1082#1083#1102#1095#1077#1085#1080
      DataField = 'IS_NOT_CLOSED'
      DataSource = dsData
      TabOrder = 3
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object cbAnnuled: TAbmesDBCheckBox
      Left = 478
      Top = 13
      Width = 91
      Height = 17
      Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1080
      DataField = 'IS_ANNULED'
      DataSource = dsData
      TabOrder = 4
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object cbNotAnnuled: TAbmesDBCheckBox
      Left = 478
      Top = 29
      Width = 99
      Height = 17
      Caption = #1053#1077#1072#1085#1091#1083#1080#1088#1072#1085#1080
      DataField = 'IS_NOT_ANNULED'
      DataSource = dsData
      TabOrder = 5
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object gbID: TGroupBox [5]
    Left = 8
    Top = 8
    Width = 385
    Height = 81
    Caption = ' ID '#1055#1083#1072#1085#1086#1074#1086' '#1055'/'#1058' '
    TabOrder = 0
    object lblKlon: TLabel
      Left = 9
      Top = 24
      Width = 72
      Height = 13
      Caption = #1058#1055' '#1043#1083#1072#1074#1085#1086
    end
    object lblNomer: TLabel
      Left = 164
      Top = 24
      Width = 34
      Height = 13
      Caption = #1053#1086#1084#1077#1088
    end
    object edtNomer: TDBEdit
      Left = 164
      Top = 40
      Width = 81
      Height = 21
      DataField = 'PLANNED_STORE_DEAL_CODE'
      DataSource = dsData
      TabOrder = 1
    end
    object cbKlon: TJvDBLookupCombo
      Left = 8
      Top = 40
      Width = 145
      Height = 21
      DataField = 'PLANNED_STORE_DEAL_BRANCH_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      LookupField = 'BRANCH_CODE'
      LookupDisplay = 'BRANCH_CODE_AND_NAME'
      LookupSource = dsBranches
      TabOrder = 0
    end
  end
  inline frStore: TfrDeptFilter [6]
    Left = 8
    Top = 96
    Width = 385
    Height = 145
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    inherited grpTreeNodeFilter: TGroupBox
      Width = 385
      Caption = ' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086' '
      inherited lblsExternal: TLabel
        Width = 52
      end
      inherited lblIsActive: TLabel
        Width = 53
      end
      inherited pnlNodes: TPanel
        Width = 369
        inherited grdChosenNodes: TAbmesDBGrid
          Width = 344
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
          Columns = <
            item
              EditButtons = <>
              FieldName = 'NODE_NAME'
              Footers = <>
              Width = 247
            end
            item
              EditButtons = <>
              FieldName = 'NODE_IDENTIFIER'
              Footers = <>
              Width = 63
            end>
        end
        inherited pnlNodesButtons: TPanel
          Left = 344
        end
      end
    end
  end
  inline frProduct: TfrParamProductFilter [7]
    Left = 408
    Top = 8
    Width = 377
    Height = 233
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    inherited grpTreeNodeFilter: TGroupBox
      inherited lblUsedBy: TLabel
        Width = 61
        Margins.Bottom = 0
      end
      inherited lblProvidedBy: TLabel
        Margins.Bottom = 0
      end
      inherited lblProductOrigin: TLabel
        Width = 23
        Margins.Bottom = 0
      end
      inherited lblCommonStatus: TLabel
        Width = 45
        Margins.Bottom = 0
      end
      inherited lblIsActive: TLabel
        Width = 53
        Margins.Bottom = 0
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
  object gbPlanEmployee: TGroupBox [8]
    Left = 408
    Top = 248
    Width = 378
    Height = 49
    Caption = ' '#1055#1083#1072#1085#1080#1088#1072#1083' '#1055'/'#1058' '
    TabOrder = 5
    inline frPlanEmployee: TfrEmployeeFieldEditFrameBald
      Left = 8
      Top = 16
      Width = 361
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 0
      TabStop = True
      inherited gbEmployee: TGroupBox
        Width = 380
        inherited pnlEmployeeName: TPanel
          Width = 305
          inherited pnlRightButtons: TPanel
            Left = 269
          end
          inherited pnlEmpoyeeNameInner: TPanel
            Width = 269
            inherited edtEmployeeName: TDBEdit
              Width = 223
            end
            inherited cbEmployee: TJvDBLookupCombo
              Width = 268
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 370
        end
      end
    end
  end
  inline frBndProcess: TfrStoreDealBindingFilter [9]
    Left = 8
    Top = 360
    Width = 777
    Height = 81
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    TabStop = True
  end
  inherited alActions: TActionList [10]
    Left = 272
    inherited actForm: TAction
      Caption = 
        '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1080' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1080' '#1058#1077#1075#1083#1077#1085#1080#1103' '#1085#1072' %ProductClas' +
        'sAbbrev%'
    end
  end
  inherited dsData: TDataSource [11]
    Left = 344
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [12]
    Top = 448
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 312
  end
  inherited dsFilterVariants: TDataSource
    Top = 448
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 72
    Top = 448
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Params = <>
    ProviderName = 'prvBranches'
    Left = 63
    Top = 40
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
      ProviderFlags = []
    end
    object cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField
      FieldName = 'BRANCH_CODE_AND_NAME'
      ProviderFlags = []
      Size = 255
    end
    object cdsBranchesBRANCH_NO: TAbmesFloatField
      FieldName = 'BRANCH_NO'
    end
    object cdsBranchesNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 50
    end
    object cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BRANCH_IDENTIFIER'
      Size = 46
    end
    object cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField
      FieldName = 'IS_LOCAL_BRANCH'
    end
    object cdsBranchesIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
  end
  object dsBranches: TDataSource
    DataSet = cdsBranches
    Left = 95
    Top = 40
  end
  object cdsPlannedStoreDealTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conStore
    Params = <>
    ProviderName = 'prvPlannedStoreDealTypes'
    Left = 288
    Top = 248
    object cdsPlannedStoreDealTypesPLANNED_STORE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_TYPE_CODE'
    end
    object cdsPlannedStoreDealTypesPLANNED_STORE_DEAL_TYPE_NAME: TAbmesWideStringField
      FieldName = 'PLANNED_STORE_DEAL_TYPE_NAME'
      Size = 100
    end
    object cdsPlannedStoreDealTypesPLANNED_STORE_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'PLANNED_STORE_DEAL_TYPE_ABBREV'
      Size = 100
    end
  end
  object dsPlannedStoreDealTypes: TDataSource
    DataSet = cdsPlannedStoreDealTypes
    Left = 320
    Top = 248
  end
end
