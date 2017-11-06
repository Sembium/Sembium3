inherited fmEmployeesFilter: TfmEmployeesFilter
  Left = 339
  Top = 223
  Caption = '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083#1080
  ClientHeight = 469
  ClientWidth = 450
  ExplicitWidth = 456
  ExplicitHeight = 494
  DesignSize = (
    450
    469)
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 434
    Height = 418
    ExplicitWidth = 449
    ExplicitHeight = 377
  end
  object lblCompanyNo: TLabel [1]
    Left = 16
    Top = 64
    Width = 19
    Height = 13
    Caption = #1050#1086#1076
  end
  object lblEmployeeAbbrev: TLabel [2]
    Left = 328
    Top = 112
    Width = 65
    Height = 13
    Caption = #1040#1073#1088#1077#1074#1080#1072#1090#1091#1088#1072
  end
  object lblEmployeeName: TLabel [3]
    Left = 16
    Top = 112
    Width = 22
    Height = 13
    Caption = #1048#1084#1077
  end
  object lblEmployeeMiddleName: TLabel [4]
    Left = 120
    Top = 112
    Width = 46
    Height = 13
    Caption = #1055#1088#1077#1079#1080#1084#1077
  end
  object lblEmployeeLastName: TLabel [5]
    Left = 224
    Top = 112
    Width = 49
    Height = 13
    Caption = #1060#1072#1084#1080#1083#1080#1103
  end
  object lblEducation: TLabel [6]
    Left = 224
    Top = 160
    Width = 68
    Height = 13
    Caption = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
  end
  object lblGender: TLabel [7]
    Left = 120
    Top = 160
    Width = 20
    Height = 13
    Caption = #1055#1086#1083
  end
  object lblProfession: TLabel [8]
    Left = 328
    Top = 160
    Width = 105
    Height = 13
    Caption = #1047#1072#1103#1074#1077#1085#1072' '#1089#1087#1086#1089#1086#1073#1085#1086#1089#1090
  end
  object lblEGN: TLabel [9]
    Left = 16
    Top = 160
    Width = 50
    Height = 13
    Caption = #1045#1043#1053'/'#1051#1053#1063
  end
  object lblStatusCode: TLabel [10]
    Left = 16
    Top = 16
    Width = 83
    Height = 13
    Caption = #1057#1090#1072#1090#1091#1089' '#1085#1072' '#1057#1048#1063#1048
  end
  object lblIsExternal: TLabel [11]
    Left = 120
    Top = 64
    Width = 85
    Height = 13
    Caption = #1055#1086#1079#1080#1094#1080#1103' '#1074' '#1048#1055
    FocusControl = cbIsExternal
  end
  object lblIsInactive: TLabel [12]
    Left = 224
    Top = 16
    Width = 101
    Height = 13
    Caption = #1057#1090#1072#1090#1091#1089' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083
  end
  object lblStatusCodeDash: TLabel [13]
    Left = 107
    Top = 35
    Width = 9
    Height = 13
    Caption = '---'
  end
  inherited pnlBottomButtons: TPanel
    Top = 434
    Width = 450
    TabOrder = 15
    ExplicitTop = 434
    ExplicitWidth = 450
    inherited pnlOKCancel: TPanel
      Left = 182
      ExplicitLeft = 182
    end
    inherited pnlClose: TPanel
      Left = 93
      ExplicitLeft = 93
    end
    inherited pnlApply: TPanel
      Left = 361
      ExplicitLeft = 361
    end
  end
  object edtEmployeeAbbrev: TDBEdit [15]
    Left = 328
    Top = 128
    Width = 105
    Height = 21
    DataField = 'ABBREV'
    DataSource = dsData
    TabOrder = 8
  end
  object edtEmployeeName: TDBEdit [16]
    Left = 16
    Top = 128
    Width = 89
    Height = 21
    DataField = 'FIRST_NAME'
    DataSource = dsData
    TabOrder = 5
  end
  object edtEmployeeMiddleName: TDBEdit [17]
    Left = 120
    Top = 128
    Width = 89
    Height = 21
    DataField = 'MIDDLE_NAME'
    DataSource = dsData
    TabOrder = 6
  end
  object edtEmployeeLastName: TDBEdit [18]
    Left = 224
    Top = 128
    Width = 89
    Height = 21
    DataField = 'LAST_NAME'
    DataSource = dsData
    TabOrder = 7
  end
  object cbEducation: TJvDBLookupCombo [19]
    Left = 224
    Top = 176
    Width = 89
    Height = 21
    DropDownWidth = 150
    EscapeClear = False
    DataField = 'EDUCATION_CODE'
    DataSource = dsData
    DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
    LookupField = 'EDUCATION_CODE'
    LookupDisplay = 'EDUCATION_NAME'
    LookupSource = dsEducations
    TabOrder = 11
  end
  object cbProfession: TJvDBLookupCombo [20]
    Left = 328
    Top = 176
    Width = 105
    Height = 21
    DropDownWidth = 200
    EscapeClear = False
    DataField = 'PROFESSION_CODE'
    DataSource = dsData
    DisplayEmpty = ' '
    LookupField = 'PROFESSION_CODE'
    LookupDisplay = 'PROFESSION_NAME'
    LookupSource = dsProfessions
    TabOrder = 12
  end
  object cbGender: TJvDBComboBox [21]
    Left = 120
    Top = 176
    Width = 89
    Height = 21
    DataField = 'GENDER'
    DataSource = dsData
    ItemHeight = 13
    Items.Strings = (
      '< '#1074#1089#1080#1095#1082#1080' >'
      #1052#1098#1078#1082#1080
      #1046#1077#1085#1089#1082#1080)
    TabOrder = 10
    Values.Strings = (
      '1'
      '2'
      '3')
  end
  object edtEGN: TDBEdit [22]
    Left = 16
    Top = 176
    Width = 89
    Height = 21
    DataField = 'EGN'
    DataSource = dsData
    TabOrder = 9
  end
  object gbDisciplineStatus: TGroupBox [23]
    Left = 16
    Top = 208
    Width = 417
    Height = 209
    Anchors = [akLeft, akTop, akBottom]
    Caption = 
      ' '#1053#1072#1083#1080#1095#1080#1077' '#1085#1072' '#1048#1079#1074#1098#1085#1088#1077#1076#1085#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' '#1074' '#1056#1055#1074'                         ' +
      '            '
    TabOrder = 14
    object pnlDisciplineStatus: TPanel
      Left = 2
      Top = 15
      Width = 413
      Height = 192
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object lblDisciplineEventDateInterval: TLabel
        Left = 8
        Top = 3
        Width = 97
        Height = 13
        Caption = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083
      end
      object lblAuthorizeEmployee: TLabel
        Left = 8
        Top = 147
        Width = 55
        Height = 13
        Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1083
      end
      object chkHasPositiveRating: TDBCheckBox
        Left = 8
        Top = 51
        Width = 113
        Height = 17
        Caption = #1080#1084#1072' '#1087#1086#1083#1086#1078#1080#1090#1077#1083#1085#1080
        DataField = 'HAS_POSITIVE_RATING'
        DataSource = dsData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object chkHasNegativeRating: TDBCheckBox
        Left = 176
        Top = 51
        Width = 105
        Height = 17
        Caption = #1080#1084#1072' '#1086#1090#1088#1080#1094#1072#1090#1077#1083#1085#1080
        DataField = 'HAS_NEGATIVE_RATING'
        DataSource = dsData
        TabOrder = 3
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object chkHasNotPositiveRating: TDBCheckBox
        Left = 8
        Top = 67
        Width = 121
        Height = 17
        Caption = #1085#1103#1084#1072' '#1087#1086#1083#1086#1078#1080#1090#1077#1083#1085#1080
        DataField = 'HAS_NOT_POSITIVE_RATING'
        DataSource = dsData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object chkHasNotNegativeRating: TDBCheckBox
        Left = 176
        Top = 67
        Width = 113
        Height = 17
        Caption = #1085#1103#1084#1072' '#1086#1090#1088#1080#1094#1072#1090#1077#1083#1085#1080
        DataField = 'HAS_NOT_NEGATIVE_RATING'
        DataSource = dsData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      inline frDisciplineEventDateInterval: TfrDateIntervalFrame
        Left = 8
        Top = 19
        Width = 145
        Height = 21
        Constraints.MaxHeight = 21
        Constraints.MaxWidth = 145
        Constraints.MinHeight = 21
        Constraints.MinWidth = 145
        TabOrder = 0
        TabStop = True
        ExplicitLeft = 8
        ExplicitTop = 19
        inherited alActions: TActionList
          Left = 0
        end
        inherited dsData: TDataSource
          Left = 16
        end
        inherited cdsDates: TAbmesClientDataSet
          Left = 56
        end
        inherited dsDates: TDataSource
          Left = 72
        end
      end
      inline frAuthorizeEmployee: TfrEmployeeFieldEditFrameBald
        Left = 8
        Top = 163
        Width = 393
        Height = 22
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 22
        Constraints.MinHeight = 22
        TabOrder = 6
        TabStop = True
        ExplicitLeft = 8
        ExplicitTop = 163
        ExplicitWidth = 393
        inherited gbEmployee: TGroupBox
          Width = 412
          ExplicitWidth = 412
          inherited pnlEmployeeName: TPanel
            Width = 337
            ExplicitWidth = 337
            inherited pnlRightButtons: TPanel
              Left = 301
              ExplicitLeft = 301
            end
            inherited pnlEmpoyeeNameInner: TPanel
              Width = 301
              ExplicitWidth = 301
              inherited edtEmployeeName: TDBEdit
                Width = 255
                ExplicitWidth = 255
              end
              inherited cbEmployee: TJvDBLookupCombo
                Width = 300
                ExplicitWidth = 300
              end
            end
          end
          inherited pnlPaddingRight: TPanel
            Left = 402
            ExplicitLeft = 402
          end
        end
        inherited alActions: TActionList
          Left = 64
        end
        inherited dsData: TDataSource
          Left = 96
        end
        inherited cdsEmployees: TAbmesClientDataSet
          Left = 144
        end
        inherited dsEmployees: TDataSource
          Left = 176
        end
      end
      inline frDiscEventType: TfrDiscEventTypeFieldEditFrame
        Left = 8
        Top = 88
        Width = 393
        Height = 49
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 49
        TabOrder = 5
        TabStop = True
        ExplicitLeft = 8
        ExplicitTop = 88
        ExplicitWidth = 393
        inherited gbTreeNode: TGroupBox
          Width = 393
          ExplicitWidth = 393
          inherited pnlTreeNode: TPanel
            Width = 377
            ExplicitWidth = 377
            inherited pnlTreeNodeName: TPanel
              Width = 230
              ExplicitWidth = 230
              inherited edtTreeNodeName: TDBEdit
                Width = 229
                ExplicitWidth = 229
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = 230
              ExplicitLeft = 230
            end
            inherited pnlRightButtons: TPanel
              Left = 341
              ExplicitLeft = 341
            end
          end
        end
      end
    end
  end
  object edtCompanyNo: TDBEdit [24]
    Left = 16
    Top = 80
    Width = 89
    Height = 21
    DataField = 'COMPANY_NO'
    DataSource = dsData
    TabOrder = 3
  end
  object cbMinStatusCode: TJvDBLookupCombo [25]
    Left = 16
    Top = 32
    Width = 89
    Height = 21
    DropDownWidth = 250
    EscapeClear = False
    DataField = 'MIN_STATUS_CODE'
    DataSource = dsData
    LookupField = 'COMPANY_STATUS_CODE'
    LookupDisplay = 'COMPANY_STATUS_NAME'
    LookupSource = dsStatuses
    TabOrder = 0
  end
  object cbIsExternal: TJvDBComboBox [26]
    Left = 120
    Top = 80
    Width = 89
    Height = 21
    DataField = 'IS_EXTERNAL'
    DataSource = dsData
    ItemHeight = 13
    Items.Strings = (
      '< '#1074#1089#1080#1095#1082#1080' >'
      #1042#1098#1090#1088#1077#1096#1077#1085
      #1042#1098#1085#1096#1077#1085)
    TabOrder = 4
    Values.Strings = (
      ''
      '0'
      '1')
  end
  object cbIsInactive: TJvDBComboBox [27]
    Left = 224
    Top = 32
    Width = 105
    Height = 21
    DataField = 'IS_INACTIVE_CODE'
    DataSource = dsData
    ItemHeight = 13
    Items.Strings = (
      '< '#1074#1089#1080#1095#1082#1080' >'
      #1040#1082#1090#1080#1074#1077#1085
      #1053#1077#1072#1082#1090#1080#1074#1077#1085)
    TabOrder = 2
    Values.Strings = (
      '0'
      '1'
      '2')
  end
  object cbMaxStatusCode: TJvDBLookupCombo [28]
    Left = 120
    Top = 32
    Width = 89
    Height = 21
    DropDownWidth = 250
    EscapeClear = False
    DataField = 'MAX_STATUS_CODE'
    DataSource = dsData
    LookupField = 'COMPANY_STATUS_CODE'
    LookupDisplay = 'COMPANY_STATUS_NAME'
    LookupSource = dsStatuses
    TabOrder = 1
  end
  object cbDisciplineEventStatus: TJvDBComboBox [29]
    Left = 253
    Top = 204
    Width = 102
    Height = 21
    DataField = 'DISCIPLINE_EVENT_STATUS_CODE'
    DataSource = dsData
    ItemHeight = 13
    Items.Strings = (
      '< '#1074#1089#1080#1095#1082#1080' >'
      #1040#1082#1090#1080#1074#1085#1080
      #1055#1072#1089#1080#1074#1085#1080
      #1047#1072#1084#1077#1085#1077#1085#1080
      #1054#1090#1084#1077#1085#1077#1085#1080
      #1040#1085#1091#1083#1080#1088#1072#1085#1080)
    TabOrder = 13
    Values.Strings = (
      ''
      '1'
      '2'
      '3'
      '4'
      '5')
  end
  inherited alActions: TActionList
    Left = 136
    Top = 65528
    inherited actForm: TAction
      Caption = '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083#1080
    end
  end
  inherited dsData: TDataSource
    Left = 88
    Top = 65528
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 56
    Top = 65528
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Left = 24
    Top = 416
  end
  inherited dsFilterVariants: TDataSource
    Left = 48
    Top = 416
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 80
    Top = 432
  end
  object cdsEducations: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvEducations'
    ConnectionBroker = dmMain.conCommon
    Left = 280
    Top = 72
    object cdsEducationsEDUCATION_CODE: TAbmesFloatField
      FieldName = 'EDUCATION_CODE'
    end
    object cdsEducationsEDUCATION_SHORT_NAME: TAbmesWideStringField
      FieldName = 'EDUCATION_SHORT_NAME'
    end
    object cdsEducationsEDUCATION_NAME: TAbmesWideStringField
      FieldName = 'EDUCATION_NAME'
      Size = 50
    end
  end
  object dsEducations: TDataSource
    DataSet = cdsEducations
    Left = 312
    Top = 72
  end
  object cdsProfessions: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvProfessions'
    ConnectionBroker = dmMain.conHumanResource
    Left = 360
    Top = 72
    object cdsProfessionsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
    end
    object cdsProfessionsPROFESSION_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_NAME'
      Size = 100
    end
    object cdsProfessionsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsProfessionsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsProfessionsHOUR_PRICE: TAbmesFloatField
      FieldName = 'HOUR_PRICE'
    end
    object cdsProfessionsRECORD_CHANGED: TAbmesFloatField
      FieldName = 'RECORD_CHANGED'
    end
    object cdsProfessionsHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
  end
  object dsProfessions: TDataSource
    DataSet = cdsProfessions
    Left = 392
    Top = 72
  end
  object cdsStatuses: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCompanyStatuses'
    ConnectionBroker = dmMain.conCompanies
    Left = 24
    Top = 36
    object cdsStatusesCOMPANY_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMPANY_STATUS_CODE'
    end
    object cdsStatusesCOMPANY_STATUS_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_STATUS_NAME'
      Size = 100
    end
  end
  object dsStatuses: TDataSource
    DataSet = cdsStatuses
    Left = 56
    Top = 37
  end
end
