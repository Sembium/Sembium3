inherited fmStoreRequests: TfmStoreRequests
  Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1043#1088#1091#1087#1086#1074#1080' '#1047#1072#1103#1074#1082#1080' '#1079#1072' %s '#1085#1072' %ProductClassAbbrev%'
  ClientWidth = 818
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Width = 818
    inherited pnlOKCancel: TPanel
      Left = 550
    end
    inherited pnlClose: TPanel
      Left = 461
    end
    inherited pnlApply: TPanel
      Left = 729
    end
    object pnlNewStoreRequest: TPanel
      Left = 0
      Top = 0
      Width = 401
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 3
      object btnNewStoreRequestIn: TBitBtn
        Left = 8
        Top = 2
        Width = 193
        Height = 25
        Action = actNewStoreRequestIn
        Caption = #1053#1086#1074#1072' '#1047#1072#1103#1074#1082#1072' '#1079#1072' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103'...'
        TabOrder = 0
      end
      object btnNewStoreRequestOut: TBitBtn
        Left = 208
        Top = 2
        Width = 193
        Height = 25
        Action = actNewStoreRequestOut
        Caption = #1053#1086#1074#1072' '#1047#1072#1103#1074#1082#1072' '#1079#1072' '#1058#1077#1075#1083#1077#1085#1080#1103'...'
        TabOrder = 1
      end
    end
    object pnlNewFinStoreRequest: TPanel
      Left = 401
      Top = 0
      Width = 144
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 4
      object btnNewFinStoreRequest: TBitBtn
        Left = 8
        Top = 2
        Width = 121
        Height = 25
        Action = actNewFinStoreRequest
        Caption = #1053#1086#1074#1072' '#1047#1072#1103#1074#1082#1072'...'
        TabOrder = 0
      end
    end
  end
  inherited pnlMain: TPanel
    Width = 818
    inherited pnlGrid: TPanel
      Width = 802
      inherited pnlNavigator: TPanel
        Width = 802
        object btnOpenForEdit: TSpeedButton [0]
          Left = 650
          Top = 0
          Width = 76
          Height = 24
          Anchors = [akRight, akBottom]
          GroupIndex = 1
          Down = True
          Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077
          Flat = True
        end
        object btnOpenInStore: TSpeedButton [1]
          Left = 726
          Top = 0
          Width = 76
          Height = 24
          Anchors = [akRight, akBottom]
          GroupIndex = 1
          Caption = #1054#1090#1095#1080#1090#1072#1085#1077
          Flat = True
        end
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 802
        AutoFitColWidths = True
        Columns = <
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'STORE_REQUEST_IDENTIFIER'
            Footers = <>
            Title.Caption = 'ID '#1043#1088'. '#1047#1072#1103#1074#1082#1072
            Width = 79
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = '_SHOW_IN_OUT'
            Footers = <>
            Width = 26
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'BND_PROCESS_OBJECT_CLASS_ABB'
            Footers = <>
            Title.Caption = #1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090'|'#1042#1080#1076
            Width = 48
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'BND_PROCESS_OBJECT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090'|ID'
            Width = 83
          end
          item
            AutoFitColWidth = False
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
            Width = 120
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PARTNER_SHORT_NAME'
            Footers = <>
            Title.Caption = #1055#1072#1088#1090#1085#1100#1086#1088
            Width = 103
          end
          item
            Alignment = taCenter
            AutoFitColWidth = False
            Checkboxes = False
            EditButtons = <>
            FieldName = 'IS_FINISHED'
            Footers = <>
            Title.Caption = #1057#1090#1072#1090#1091#1089'|'#1055#1082
            Width = 22
          end
          item
            Alignment = taCenter
            AutoFitColWidth = False
            Checkboxes = False
            EditButtons = <>
            FieldName = 'IS_ANNULED'
            Footers = <>
            Title.Caption = #1057#1090#1072#1090#1091#1089'|'#1040#1085
            Width = 22
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'UNFINISHED_STORE_REQUEST_ITEMS'
            Footers = <>
            Title.Caption = #1041#1088#1086#1081' '#1088#1077#1076#1086#1074#1077'|'#1053#1077#1086#1090#1095'.'
            Title.Hint = #1041#1088#1086#1081' '#1085#1077#1086#1090#1095#1077#1090#1077#1085#1080' '#1088#1077#1076#1086#1074#1077
            Width = 35
          end
          item
            AutoFitColWidth = False
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
  inherited cdsGridData: TAbmesClientDataSet
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
      end
      item
        Name = 'PRODUCT_CLASS_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'PARTNER_SHORT_NAME'
        DataType = ftWideString
        Size = 20
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_IN'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_OUT'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'REQUEST_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'REQUEST_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'REQUEST_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'REQUEST_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_FINISHED'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_NOT_FINISHED'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_ANNULED'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_NOT_ANNULED'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PSD_STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PSD_STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PSD_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PSD_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'BND_PROCESS'
        ParamType = ptInput
      end>
    object cdsGridDataPARTNER_SHORT_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_SHORT_NAME'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1043#1088#1091#1087#1086#1074#1080' '#1047#1072#1103#1074#1082#1080' '#1079#1072' %s '#1085#1072' %ProductClassAbbrev%'
    end
    object actNewStoreRequestIn: TAction
      Caption = #1053#1086#1074#1072' '#1047#1072#1103#1074#1082#1072' '#1079#1072' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103'...'
      Hint = #1053#1086#1074#1072' '#1047#1072#1103#1074#1082#1072' '#1079#1072' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103
      ImageIndex = 9
      OnExecute = actNewStoreRequestInExecute
      OnUpdate = actNewStoreRequestInUpdate
    end
    object actNewStoreRequestOut: TAction
      Caption = #1053#1086#1074#1072' '#1047#1072#1103#1074#1082#1072' '#1079#1072' '#1058#1077#1075#1083#1077#1085#1080#1103'...'
      Hint = #1053#1086#1074#1072' '#1047#1072#1103#1074#1082#1072' '#1079#1072' '#1058#1077#1075#1083#1077#1085#1080#1103
      ImageIndex = 9
      OnExecute = actNewStoreRequestOutExecute
      OnUpdate = actNewStoreRequestOutUpdate
    end
    object actNewFinStoreRequest: TAction
      Caption = #1053#1086#1074#1072' '#1047#1072#1103#1074#1082#1072'...'
      Hint = #1053#1086#1074#1072' '#1047#1072#1103#1074#1082#1072
      ImageIndex = 9
      OnExecute = actNewFinStoreRequestExecute
      OnUpdate = actNewFinStoreRequestUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    OnCalcFields = pdsGridDataParamsCalcFields
    object pdsGridDataParamsSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1043#1083#1072#1074#1085#1086
      FieldName = 'STORE_REQUEST_BRANCH_CODE'
    end
    object pdsGridDataParamsSTORE_REQUEST_CODE: TAbmesFloatField
      DisplayLabel = 'No'
      FieldName = 'STORE_REQUEST_CODE'
    end
    object pdsGridDataParamsREQUEST_DEPT_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1047#1072#1103#1074#1103#1074#1072#1097#1086
      FieldName = 'REQUEST_DEPT_CODE'
    end
    object pdsGridDataParamsREQUEST_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1055#1086#1080#1089#1082#1072#1083' '#1043#1088#1091#1087#1086#1074#1072' '#1047#1072#1103#1074#1082#1072
      FieldName = 'REQUEST_EMPLOYEE_CODE'
    end
    object pdsGridDataParamsREQUEST_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1042#1072#1083#1080#1076#1085#1086#1089#1090' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'REQUEST_BEGIN_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsGridDataParamsREQUEST_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1042#1072#1083#1080#1076#1085#1086#1089#1090' - '#1050#1088#1072#1081
      FieldName = 'REQUEST_END_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsGridDataParamsIS_IN: TAbmesFloatField
      DisplayLabel = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103
      FieldName = 'IS_IN'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_OUT: TAbmesFloatField
      DisplayLabel = #1058#1077#1075#1083#1077#1085#1080#1103
      FieldName = 'IS_OUT'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_FINISHED: TAbmesFloatField
      DisplayLabel = #1055#1088#1080#1082#1083#1102#1095#1077#1085#1080
      FieldName = 'IS_FINISHED'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_NOT_FINISHED: TAbmesFloatField
      DisplayLabel = #1053#1077#1087#1088#1080#1082#1083#1102#1095#1077#1085#1080
      FieldName = 'IS_NOT_FINISHED'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_ANNULED: TAbmesFloatField
      DisplayLabel = #1040#1085#1091#1083#1080#1088#1072#1085#1080
      FieldName = 'IS_ANNULED'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_NOT_ANNULED: TAbmesFloatField
      DisplayLabel = #1053#1077#1072#1085#1091#1083#1080#1088#1072#1085#1080
      FieldName = 'IS_NOT_ANNULED'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsPSD_PRODUCT_CODE: TAbmesFloatField
      DisplayLabel = '%ProductClassName%'
      FieldName = 'PSD_PRODUCT_CODE'
    end
    object pdsGridDataParamsPSD_STORE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
      FieldName = 'PSD_STORE_CODE'
    end
    object pdsGridDataParamsBND_PROCESS: TAbmesWideStringField
      DisplayLabel = #1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090
      FieldName = 'BND_PROCESS'
      Size = 4000
    end
    object pdsGridDataParamsPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_BRANCH_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsPLANNED_STORE_DEAL_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParams_STORE_REQUEST_BRANCH_IDENTIFIER: TAbmesWideStringField
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = '_STORE_REQUEST_BRANCH_IDENTIFIER'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_CODE_AND_NAME'
      KeyFields = 'STORE_REQUEST_BRANCH_CODE'
      ProviderFlags = []
      OnGetText = pdsGridDataParamsIN_OUTGetText
      Size = 50
      Lookup = True
    end
    object pdsGridDataParams_PRODUCT_CLASS_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRODUCT_CLASS_CODE'
      Calculated = True
    end
    object pdsGridDataParamsPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
    end
  end
end
