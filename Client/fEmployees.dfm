inherited fmEmployees: TfmEmployees
  Left = 284
  Top = 204
  Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083#1080
  ClientHeight = 432
  ClientWidth = 878
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 397
    Width = 878
    inherited pnlOKCancel: TPanel
      Left = 610
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 521
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 789
      Visible = False
    end
    inherited pnlDataButtons: TPanel
      Width = 465
    end
  end
  inherited pnlMain: TPanel
    Width = 878
    Height = 397
    inherited pnlGrid: TPanel
      Width = 862
      Height = 381
      inherited pnlNavigator: TPanel
        Width = 862
        Height = 22
        inherited pnlFilterButton: TPanel
          Height = 22
          inherited btnFilter: TSpeedButton
            Height = 22
          end
        end
        inherited navData: TDBColorNavigator
          Height = 22
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Height = 22
          ButtonHeight = 22
        end
        object tlbDoc: TToolBar
          Left = 348
          Top = 0
          Width = 82
          Height = 22
          Align = alLeft
          AutoSize = True
          ButtonWidth = 37
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 3
          object sepBeforeCompanyDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'ToolButton1'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblCompanyDoc: TLabel
            Left = 8
            Top = 0
            Width = 37
            Height = 22
            Caption = ' '#1057#1048#1063#1048' '
            Layout = tlCenter
          end
          object btnCompanyDoc: TToolButton
            Left = 45
            Top = 0
            Action = actCompanyDoc
          end
        end
        object tlbEmployeeDoc: TToolBar
          Left = 248
          Top = 0
          Width = 100
          Height = 22
          Align = alLeft
          AutoSize = True
          ButtonWidth = 37
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 4
          object sepBeforeEmployeeDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepBeforeEmployeeDoc'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblEmployeeDoc: TLabel
            Left = 8
            Top = 0
            Width = 55
            Height = 22
            Caption = ' '#1057#1083#1091#1078#1080#1090#1077#1083' '
            Layout = tlCenter
          end
          object btnEmployeeDoc: TToolButton
            Left = 63
            Top = 0
            Action = actEmployeeDoc
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Top = 22
        Width = 862
        Height = 359
        TitleLines = 3
        UseMultiTitle = True
        VTitleMargin = 5
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            Alignment = taLeftJustify
            EditButtons = <>
            FieldName = 'COMPANY_STATUS_CODE'
            Footers = <>
            Title.Caption = #1057#1090#1072#1090#1091#1089' '#1080' '#1042#1088#1077#1084#1077' '#1079#1072' '#1088#1072#1079#1074#1080#1090#1080#1077' ('#1074' '#1084#1077#1089#1077#1094#1080')|'#1057#1090#1072#1090#1091#1089
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'CURRENT_STATUS_REACH_MONTHS'
            Footers = <>
            Title.Caption = #1057#1090#1072#1090#1091#1089' '#1080' '#1042#1088#1077#1084#1077' '#1079#1072' '#1088#1072#1079#1074#1080#1090#1080#1077' ('#1074' '#1084#1077#1089#1077#1094#1080')|'#1076
            Width = 26
          end
          item
            EditButtons = <>
            FieldName = 'EXISTANCE_MONTHS'
            Footers = <>
            Title.Caption = #1057#1090#1072#1090#1091#1089' '#1080' '#1042#1088#1077#1084#1077' '#1079#1072' '#1088#1072#1079#1074#1080#1090#1080#1077' ('#1074' '#1084#1077#1089#1077#1094#1080')|'#1089
            Width = 26
          end
          item
            EditButtons = <>
            FieldName = 'COMPANY_NO'
            Footers = <>
            Title.Caption = #1050#1086#1076
            Width = 67
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'IS_EXTERNAL'
            Footers = <>
            Title.Caption = #1055#1086#1079#1080#1094#1080#1103' '#1074' '#1048#1055
            Width = 60
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'ABBREV'
            Footers = <>
            Title.Caption = #1040#1073#1088#1077#1074'.'
            Width = 38
          end
          item
            EditButtons = <>
            FieldName = 'FIRST_NAME'
            Footers = <>
            Width = 82
          end
          item
            EditButtons = <>
            FieldName = 'MIDDLE_NAME'
            Footers = <>
            Width = 82
          end
          item
            EditButtons = <>
            FieldName = 'LAST_NAME'
            Footers = <>
            Width = 82
          end
          item
            EditButtons = <>
            FieldName = 'EGN'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'EDUCATION_SHORT_NAME'
            Footers = <>
            Title.Caption = #1054#1073#1088#1072#1079#1086'- '#1074#1072#1085#1080#1077
            Width = 51
          end
          item
            EditButtons = <>
            FieldName = 'NEGATIVE_DISCIPLINE_RATING'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = #1056#1072#1073'. '#1056#1077#1081#1090#1080#1085#1075'|'#8212
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = 'POSITIVE_DISCIPLINE_RATING'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = #1056#1072#1073'. '#1056#1077#1081#1090#1080#1085#1075'|+'
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = 'OCCUPATIONS_COUNT'
            Footers = <>
            Title.Caption = #1041#1088'. '#1044#1083'. '#1053#1072#1079#1085'.'
            Width = 32
          end
          item
            EditButtons = <>
            FieldName = 'MAIN_OCC_DEPT_IDENTIFIER'
            Footers = <>
            Width = 53
          end
          item
            EditButtons = <>
            FieldName = 'MAIN_OCCUPATION_NAME'
            Footers = <>
            Title.Caption = #1054#1089#1085#1086#1074#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090
            Visible = False
          end
          item
            Alignment = taCenter
            Color = 15532031
            EditButtons = <>
            FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
            Footers = <>
            Title.Caption = #1052#1048#1048#1054
            Width = 39
          end
          item
            Alignment = taCenter
            Color = 15532031
            EditButtons = <>
            FieldName = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
            Footers = <>
            Title.Caption = #1048#1048#1054
            Width = 39
          end>
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 48
    Top = 232
  end
  inherited cdsGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conHumanResource
    FieldDefs = <
      item
        Name = 'EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'COMPANY_STATUS_CODE'
        DataType = ftFloat
      end
      item
        Name = 'COMPANY_STATUS_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'EXISTANCE_MONTHS'
        DataType = ftFloat
      end
      item
        Name = 'CURRENT_STATUS_REACH_MONTHS'
        DataType = ftFloat
      end
      item
        Name = 'FIRST_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'MIDDLE_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'LAST_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'IS_MALE'
        DataType = ftFloat
      end
      item
        Name = 'EGN'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'COMPANY_NO'
        DataType = ftFloat
      end
      item
        Name = 'IS_MOL'
        DataType = ftFloat
      end
      item
        Name = 'IS_MANAGER_OKIDU'
        DataType = ftFloat
      end
      item
        Name = 'IS_OKIDU'
        DataType = ftFloat
      end
      item
        Name = 'EMPLOYEE_NAME'
        DataType = ftWideString
        Size = 44
      end
      item
        Name = 'EDUCATION_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EDUCATION_SHORT_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'NEGATIVE_DISCIPLINE_RATING'
        DataType = ftFloat
      end
      item
        Name = 'POSITIVE_DISCIPLINE_RATING'
        DataType = ftFloat
      end
      item
        Name = 'COMPANY_DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'COMPANY_DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'COMPANY_HAS_DOCUMENTATION'
        DataType = ftFloat
      end
      item
        Name = 'DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'HAS_DOCUMENTATION'
        DataType = ftFloat
      end
      item
        Name = 'DOC_EMPTINESS_REQUIREMENT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_IS_COMPLETE'
        DataType = ftFloat
      end
      item
        Name = 'ACTIVE_DI_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'UNAPPROVED_ACTIVE_DI_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'OCCUPATIONS_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'IS_EXTERNAL'
        DataType = ftFloat
      end
      item
        Name = 'IS_INACTIVE'
        DataType = ftFloat
      end
      item
        Name = 'MAIN_OCC_DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'MAIN_OCCUPATION_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'BASE_ROLE_CODE'
        DataType = ftFloat
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'MIN_STATUS_CODE'
        ParamType = ptInput
        Value = '3'
      end
      item
        DataType = ftFloat
        Name = 'MAX_STATUS_CODE'
        ParamType = ptInput
        Value = '4'
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_NO'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'ABBREV'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'ABBREV'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'FIRST_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'FIRST_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'MIDDLE_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'MIDDLE_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'LAST_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'LAST_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EDUCATION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EDUCATION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'GENDER'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'GENDER'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'GENDER'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'GENDER'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'EGN'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'EGN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DISCIPLINE_EVENT_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DISCIPLINE_EVENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DISCIPLINE_EVENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DISCIPLINE_EVENT_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DISCIPLINE_EVENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DISCIPLINE_EVENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DISCIPLINE_EVENT_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_NOT_POSITIVE_RATING'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'HAS_POSITIVE_RATING'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DISCIPLINE_EVENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DISCIPLINE_EVENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DISCIPLINE_EVENT_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_NOT_NEGATIVE_RATING'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'HAS_NEGATIVE_RATING'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'DISC_EVENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DISCIPLINE_EVENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DISCIPLINE_EVENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DISCIPLINE_EVENT_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DISC_EVENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AUTHORIZE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DISCIPLINE_EVENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DISCIPLINE_EVENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DISCIPLINE_EVENT_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AUTHORIZE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IS_INACTIVE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftInteger
        Name = 'IS_INACTIVE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftInteger
        Name = 'IS_INACTIVE_CODE'
        ParamType = ptInput
        Value = '1'
      end>
    ProviderName = 'prvEmployeesNom'
    Left = 16
    Top = 232
    object cdsGridDataEMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FieldValueType = fvtInteger
    end
    object cdsGridDataFIRST_NAME: TAbmesWideStringField
      DisplayLabel = #1048#1084#1077
      FieldName = 'FIRST_NAME'
      Size = 50
    end
    object cdsGridDataMIDDLE_NAME: TAbmesWideStringField
      DisplayLabel = #1055#1088#1077#1079#1080#1084#1077
      FieldName = 'MIDDLE_NAME'
      Size = 50
    end
    object cdsGridDataLAST_NAME: TAbmesWideStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      FieldName = 'LAST_NAME'
      Size = 50
    end
    object cdsGridDataABBREV: TAbmesWideStringField
      DisplayLabel = #1040#1073#1088#1077#1074#1080#1072#1090#1091#1088#1072
      FieldName = 'ABBREV'
      Required = True
      Size = 5
    end
    object cdsGridDataEGN: TAbmesWideStringField
      DisplayLabel = #1045#1043#1053'/'#1051#1053#1063
      FieldName = 'EGN'
      OnGetText = cdsGridDataEGNGetText
      Size = 10
    end
    object cdsGridDataEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      ProviderFlags = []
      Size = 255
    end
    object cdsGridDataIS_MANAGER_OKIDU: TAbmesFloatField
      FieldName = 'IS_MANAGER_OKIDU'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_OKIDU: TAbmesFloatField
      FieldName = 'IS_OKIDU'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataNEGATIVE_DISCIPLINE_RATING: TAbmesFloatField
      FieldName = 'NEGATIVE_DISCIPLINE_RATING'
    end
    object cdsGridDataPOSITIVE_DISCIPLINE_RATING: TAbmesFloatField
      FieldName = 'POSITIVE_DISCIPLINE_RATING'
    end
    object cdsGridDataEDUCATION_CODE: TAbmesFloatField
      FieldName = 'EDUCATION_CODE'
    end
    object cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsGridDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsGridDataDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
      OnGetText = cdsGridDataDOC_EMPTINESS_REQUIREMENT_CODEGetText
    end
    object cdsGridDataDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'ACTIVE_DI_COUNT'
    end
    object cdsGridDataUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
      OnGetText = cdsGridDataUNAUTHORIZED_ACTIVE_DI_COUNTGetText
    end
    object cdsGridDataUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object cdsGridDataOCCUPATIONS_COUNT: TAbmesFloatField
      FieldName = 'OCCUPATIONS_COUNT'
    end
    object cdsGridDataCOMPANY_NO: TAbmesFloatField
      FieldName = 'COMPANY_NO'
    end
    object cdsGridDataEDUCATION_SHORT_NAME: TAbmesWideStringField
      FieldName = 'EDUCATION_SHORT_NAME'
    end
    object cdsGridDataCOMPANY_STATUS_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_STATUS_NAME'
      Size = 100
    end
    object cdsGridDataEXISTANCE_MONTHS: TAbmesFloatField
      FieldName = 'EXISTANCE_MONTHS'
      DisplayFormat = ',0'
    end
    object cdsGridDataCURRENT_STATUS_REACH_MONTHS: TAbmesFloatField
      FieldName = 'CURRENT_STATUS_REACH_MONTHS'
      DisplayFormat = ',0'
    end
    object cdsGridDataCOMPANY_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMPANY_STATUS_CODE'
      OnGetText = cdsGridDataCOMPANY_STATUS_CODEGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object cdsGridDataCOMPANY_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'COMPANY_DOC_BRANCH_CODE'
    end
    object cdsGridDataCOMPANY_DOC_CODE: TAbmesFloatField
      FieldName = 'COMPANY_DOC_CODE'
    end
    object cdsGridDataCOMPANY_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'COMPANY_HAS_DOCUMENTATION'
    end
    object cdsGridDataIS_MALE: TAbmesFloatField
      FieldName = 'IS_MALE'
    end
    object cdsGridDataIS_EXTERNAL: TAbmesFloatField
      FieldName = 'IS_EXTERNAL'
      DisplayBoolValues = #1042#1098#1085#1096#1077#1085';'#1042#1098#1090#1088#1077#1096#1077#1085
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataMAIN_OCC_DEPT_IDENTIFIER: TAbmesWideStringField
      DisplayLabel = #1054#1088#1063' '#1085#1072' '#1054#1089#1085'. '#1053#1072#1079#1085'.'
      FieldName = 'MAIN_OCC_DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsGridDataMAIN_OCCUPATION_NAME: TAbmesWideStringField
      FieldName = 'MAIN_OCCUPATION_NAME'
      Size = 50
    end
    object cdsGridDataBASE_ROLE_CODE: TAbmesFloatField
      FieldName = 'BASE_ROLE_CODE'
    end
  end
  inherited alActions: TActionList
    Left = 96
    Top = 264
    inherited actForm: TAction
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083#1080
    end
    inherited actFilter: TAction
      Visible = True
    end
    object actCompanyDoc: TAction
      Caption = 'actCompanyDoc'
      Hint = #1052#1048#1048#1054' '#1085#1072' '#1057#1048#1063#1048' '#1055#1072#1088#1090#1085#1100#1086#1088
      OnExecute = actCompanyDocExecute
      OnUpdate = actCompanyDocUpdate
    end
    object actEmployeeDoc: TAction
      Caption = 'actEmployeeDoc'
      Hint = #1052#1048#1048#1054' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083
      OnExecute = actEmployeeDocExecute
      OnUpdate = actEmployeeDocUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 16
    Top = 264
    object pdsGridDataParamsMIN_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1085#1072' '#1057#1048#1063#1048' - '#1054#1090
      FieldName = 'MIN_STATUS_CODE'
    end
    object pdsGridDataParamsMAX_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1085#1072' '#1057#1048#1063#1048' - '#1044#1086
      FieldName = 'MAX_STATUS_CODE'
    end
    object pdsGridDataParamsIS_INACTIVE_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083
      FieldName = 'IS_INACTIVE_CODE'
    end
    object pdsGridDataParamsCOMPANY_NO: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'COMPANY_NO'
    end
    object pdsGridDataParamsIS_EXTERNAL: TAbmesFloatField
      DisplayLabel = #1055#1086#1079#1080#1094#1080#1103' '#1074' '#1048#1055
      FieldName = 'IS_EXTERNAL'
    end
    object pdsGridDataParamsFIRST_NAME: TAbmesWideStringField
      DisplayLabel = #1048#1084#1077
      FieldName = 'FIRST_NAME'
      Size = 255
    end
    object pdsGridDataParamsMIDDLE_NAME: TAbmesWideStringField
      DisplayLabel = #1055#1088#1077#1079#1080#1084#1077
      FieldName = 'MIDDLE_NAME'
      Size = 255
    end
    object pdsGridDataParamsLAST_NAME: TAbmesWideStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      FieldName = 'LAST_NAME'
      Size = 255
    end
    object pdsGridDataParamsABBREV: TAbmesWideStringField
      DisplayLabel = #1040#1073#1088#1077#1074#1080#1072#1090#1091#1088#1072
      FieldName = 'ABBREV'
      Size = 255
    end
    object pdsGridDataParamsEGN: TAbmesWideStringField
      DisplayLabel = #1045#1043#1053'/'#1051#1053#1063
      FieldName = 'EGN'
      Size = 255
    end
    object pdsGridDataParamsGENDER: TAbmesFloatField
      DisplayLabel = #1055#1086#1083
      FieldName = 'GENDER'
    end
    object pdsGridDataParamsEDUCATION_CODE: TAbmesFloatField
      DisplayLabel = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
      FieldName = 'EDUCATION_CODE'
    end
    object pdsGridDataParamsPROFESSION_CODE: TAbmesFloatField
      DisplayLabel = #1047#1072#1103#1074#1077#1085#1072' '#1089#1087#1086#1089#1086#1073#1085#1086#1089#1090
      FieldName = 'PROFESSION_CODE'
    end
    object pdsGridDataParamsDISCIPLINE_EVENT_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1053#1072#1083#1080#1095#1080#1077' '#1085#1072' '#1048#1079#1074#1098#1085#1088#1077#1076#1085#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' '#1074' '#1056#1055#1074
      FieldName = 'DISCIPLINE_EVENT_STATUS_CODE'
    end
    object pdsGridDataParamsBEGIN_DISCIPLINE_EVENT_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1048#1079#1074#1098#1085#1088#1077#1076#1085#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' '#1074' '#1056#1055#1074' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_DISCIPLINE_EVENT_DATE'
    end
    object pdsGridDataParamsEND_DISCIPLINE_EVENT_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1048#1079#1074#1098#1085#1088#1077#1076#1085#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' '#1074' '#1056#1055#1074' - '#1050#1088#1072#1081
      FieldName = 'END_DISCIPLINE_EVENT_DATE'
    end
    object pdsGridDataParamsHAS_POSITIVE_RATING: TAbmesFloatField
      DisplayLabel = #1080#1084#1072' '#1087#1086#1083#1086#1078#1080#1090#1077#1083#1085#1080
      FieldName = 'HAS_POSITIVE_RATING'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsHAS_NOT_POSITIVE_RATING: TAbmesFloatField
      DisplayLabel = #1085#1103#1084#1072' '#1087#1086#1083#1086#1078#1080#1090#1077#1083#1085#1080
      FieldName = 'HAS_NOT_POSITIVE_RATING'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsHAS_NEGATIVE_RATING: TAbmesFloatField
      DisplayLabel = #1080#1084#1072' '#1086#1090#1088#1080#1094#1072#1090#1077#1083#1085#1080
      FieldName = 'HAS_NEGATIVE_RATING'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsHAS_NOT_NEGATIVE_RATING: TAbmesFloatField
      DisplayLabel = #1085#1103#1084#1072' '#1086#1090#1088#1080#1094#1072#1090#1077#1083#1085#1080
      FieldName = 'HAS_NOT_NEGATIVE_RATING'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsDISC_EVENT_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1080#1076' '#1048#1079#1074#1098#1085#1088#1077#1076#1085#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' '#1074' '#1056#1055#1074
      FieldName = 'DISC_EVENT_TYPE_CODE'
    end
    object pdsGridDataParamsAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1059#1089#1090#1072#1085#1086#1074#1080#1083
      FieldName = 'AUTHORIZE_EMPLOYEE_CODE'
    end
    object pdsGridDataParamsEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 48
    Top = 264
  end
  inherited dsData: TDataSource
    Left = 48
    Top = 200
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 16
    Top = 200
  end
end
