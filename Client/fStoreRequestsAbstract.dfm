inherited fmStoreRequestsAbstract: TfmStoreRequestsAbstract
  Left = 209
  Top = 105
  Caption = '%s'
  ClientHeight = 405
  ClientWidth = 753
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 370
    Width = 753
    inherited pnlOKCancel: TPanel
      Left = 485
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 396
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 664
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 753
    Height = 370
    inherited pnlGrid: TPanel
      Width = 737
      Height = 354
      inherited pnlNavigator: TPanel
        Width = 737
        inherited pnlFilterButton: TPanel
          Left = 120
        end
        inherited navData: TDBColorNavigator
          Width = 120
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 144
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 737
        Height = 330
        ParentShowHint = False
        UseMultiTitle = True
        VTitleMargin = 6
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'STORE_REQUEST_IDENTIFIER'
            Footers = <>
            Title.Caption = 'ID '#1043#1088'. '#1047#1072#1103#1074#1082#1072
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = '_SHOW_IN_OUT'
            Footers = <>
            Width = 26
          end
          item
            EditButtons = <>
            FieldName = 'BND_PROCESS_OBJECT_CLASS_ABB'
            Footers = <>
            Title.Caption = #1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090'|'#1042#1080#1076
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'BND_PROCESS_OBJECT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090'|ID'
            Width = 83
          end
          item
            EditButtons = <>
            FieldName = 'REQUEST_DEPT'
            Footers = <>
            Title.Caption = #1058#1055' '#1047#1072#1103#1074#1103#1074#1072#1097#1086
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'REQUEST_BEGIN_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1042#1072#1083#1080#1076#1085#1086#1089#1090
            Width = 125
          end
          item
            EditButtons = <>
            FieldName = 'REQUEST_EMPLOYEE_NAME'
            Footers = <>
            Width = 160
          end
          item
            Alignment = taCenter
            Checkboxes = False
            EditButtons = <>
            FieldName = 'IS_FINISHED'
            Footers = <>
            Title.Caption = #1057#1090#1072#1090#1091#1089'|'#1055#1082
            Width = 22
          end
          item
            Alignment = taCenter
            Checkboxes = False
            EditButtons = <>
            FieldName = 'IS_ANNULED'
            Footers = <>
            Title.Caption = #1057#1090#1072#1090#1091#1089'|'#1040#1085
            Width = 22
          end
          item
            EditButtons = <>
            FieldName = 'UNFINISHED_STORE_REQUEST_ITEMS'
            Footers = <>
            Title.Caption = #1041#1088#1086#1081' '#1088#1077#1076#1086#1074#1077'|'#1053#1077#1086#1090#1095'.'
            Title.Hint = #1041#1088#1086#1081' '#1085#1077#1086#1090#1095#1077#1090#1077#1085#1080' '#1088#1077#1076#1086#1074#1077
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_STORE_REQUEST_ITEMS'
            Footers = <>
            Title.Caption = #1041#1088#1086#1081' '#1088#1077#1076#1086#1074#1077'|'#1054#1073#1097#1086
            Title.Hint = #1054#1073#1097' '#1073#1088#1086#1081' '#1088#1077#1076#1086#1074#1077
            Width = 35
          end>
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 96
    Top = 136
  end
  inherited cdsGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conStoreRequests
    FieldDefs = <
      item
        Name = 'STORE_REQUEST_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STORE_REQUEST_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STORE_REQUEST_IDENTIFIER'
        DataType = ftWideString
        Size = 83
      end
      item
        Name = 'IN_OUT'
        DataType = ftFloat
      end
      item
        Name = 'BND_PROCESS_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BND_PROCESS_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'REQUEST_DEPT'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'REQUEST_EMPLOYEE_NAME'
        DataType = ftWideString
        Size = 41
      end
      item
        Name = 'REQUEST_BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'REQUEST_END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'BND_PROCESS_OBJECT_CLASS_ABB'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'BND_PROCESS_OBJECT_IDENTIFIER'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'IS_FINISHED'
        DataType = ftFloat
      end
      item
        Name = 'IS_ANNULED'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_STORE_REQUEST_ITEMS'
        DataType = ftFloat
      end
      item
        Name = 'UNFINISHED_STORE_REQUEST_ITEMS'
        DataType = ftFloat
      end>
    ProviderName = 'prvStoreRequests'
    OnCalcFields = cdsGridDataCalcFields
    Left = 64
    Top = 136
    object cdsGridDataSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_BRANCH_CODE'
    end
    object cdsGridDataSTORE_REQUEST_CODE: TAbmesFloatField
      DisplayLabel = #1047#1072#1103#1074#1082#1072' '#8470
      FieldName = 'STORE_REQUEST_CODE'
    end
    object cdsGridDataSTORE_REQUEST_IDENTIFIER: TAbmesWideStringField
      FieldName = 'STORE_REQUEST_IDENTIFIER'
      Size = 83
    end
    object cdsGridDataIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
    end
    object cdsGridDataBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
    end
    object cdsGridDataBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
    end
    object cdsGridDataREQUEST_DEPT: TAbmesWideStringField
      DisplayLabel = #1047#1072#1103#1074#1103#1074#1072#1097#1086' '#1058#1055
      FieldName = 'REQUEST_DEPT'
      Size = 255
    end
    object cdsGridDataREQUEST_EMPLOYEE_NAME: TAbmesWideStringField
      DisplayLabel = #1055#1086#1080#1089#1082#1072#1083' '#1043#1088#1091#1087#1086#1074#1072' '#1047#1072#1103#1074#1082#1072
      FieldName = 'REQUEST_EMPLOYEE_NAME'
      Size = 255
    end
    object cdsGridDataREQUEST_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1074#1072#1083#1080#1076#1085#1086#1089#1090
      FieldName = 'REQUEST_BEGIN_DATE'
      OnGetText = cdsGridDataREQUEST_BEGIN_DATEGetText
    end
    object cdsGridDataREQUEST_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1088#1072#1081#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1074#1072#1083#1080#1076#1085#1086#1089#1090
      FieldName = 'REQUEST_END_DATE'
    end
    object cdsGridDataBND_PROCESS_OBJECT_CLASS_ABB: TAbmesWideStringField
      DisplayLabel = #1055#1088#1086#1094#1077#1089
      FieldName = 'BND_PROCESS_OBJECT_CLASS_ABB'
      Size = 100
    end
    object cdsGridDataBND_PROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      DisplayLabel = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090
      FieldName = 'BND_PROCESS_OBJECT_IDENTIFIER'
      Size = 50
    end
    object cdsGridDataIS_ANNULED: TAbmesFloatField
      FieldName = 'IS_ANNULED'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_FINISHED: TAbmesFloatField
      FieldName = 'IS_FINISHED'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataTOTAL_STORE_REQUEST_ITEMS: TAbmesFloatField
      FieldName = 'TOTAL_STORE_REQUEST_ITEMS'
      OnGetText = cdsGridDataTOTAL_STORE_REQUEST_ITEMSGetText
      FieldValueType = fvtInteger
    end
    object cdsGridDataUNFINISHED_STORE_REQUEST_ITEMS: TAbmesFloatField
      FieldName = 'UNFINISHED_STORE_REQUEST_ITEMS'
      OnGetText = cdsGridDataUNFINISHED_STORE_REQUEST_ITEMSGetText
      FieldValueType = fvtInteger
    end
    object cdsGridDataPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
      Required = True
    end
    object cdsGridData_SHOW_IN_OUT: TAbmesWideStringField
      Alignment = taCenter
      DisplayLabel = #1042#1080#1076
      FieldKind = fkCalculated
      FieldName = '_SHOW_IN_OUT'
      Size = 1
      Calculated = True
    end
  end
  inherited alActions: TActionList
    Left = 288
    Top = 216
    inherited actForm: TAction
      Caption = '%s'
    end
    inherited actFilter: TAction
      Visible = True
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 64
    Top = 168
  end
  inherited dsGridDataParams: TDataSource
    Left = 96
    Top = 168
  end
  inherited dsData: TDataSource
    Left = 96
    Top = 104
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 64
    Top = 104
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Params = <>
    ProviderName = 'prvBranches'
    Left = 216
    Top = 168
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
    end
    object cdsBranchesBRANCH_NO: TAbmesFloatField
      FieldName = 'BRANCH_NO'
    end
    object cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField
      FieldName = 'BRANCH_CODE_AND_NAME'
      Size = 255
    end
  end
  object cdsEmployees: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <>
    ProviderName = 'prvEmployees'
    Left = 248
    Top = 168
    object cdsEmployeesEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object cdsEmployeesEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      Size = 255
    end
  end
end
