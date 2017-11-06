inherited fmCapacityTable: TfmCapacityTable
  Left = 280
  Top = 194
  Caption = #1042#1048#1052' - '#1058#1072#1073#1083#1080#1095#1077#1085' '#1085#1072' %Capacity% '#1085#1072' '#1058#1055
  ClientHeight = 607
  ClientWidth = 1017
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 572
    Width = 1017
    inherited pnlOKCancel: TPanel
      Left = 749
      TabOrder = 3
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 660
      TabOrder = 2
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 928
      TabOrder = 4
      Visible = False
    end
    object btnClientParRelProducts: TBitBtn
      Left = 8
      Top = 2
      Width = 121
      Height = 25
      Action = actClientParRelProducts
      Caption = #1052#1048#1048#1056
      TabOrder = 0
    end
    object btnDeptDetailFlow: TBitBtn
      Left = 136
      Top = 2
      Width = 121
      Height = 25
      Action = actDeptDetailFlow
      Caption = #1055#1086#1090#1086#1094#1080' '#1087#1088#1077#1079' '#1058#1055'...'
      TabOrder = 1
    end
  end
  inherited pnlMain: TPanel
    Width = 1017
    Height = 572
    inherited pnlGrid: TPanel
      Width = 1001
      Height = 556
      inherited pnlNavigator: TPanel
        Top = 37
        Width = 1001
        inherited pnlFilterButton: TPanel
          Left = 96
        end
        inherited navData: TDBColorNavigator
          Width = 96
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 120
          Width = 80
          object btnPrintGrid: TToolButton
            Left = 56
            Top = 0
            Action = actPrintGrid
          end
        end
        object tlbButtons: TToolBar
          Left = 857
          Top = 0
          Width = 144
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Caption = 'tlbTopGridButtons'
          Images = dmMain.ilActions
          TabOrder = 3
          object btnToggleLimitLevelColumnsVisible: TToolButton
            Left = 0
            Top = 0
            Action = actToggleLimitLevelColumnsVisible
          end
          object btnToggleLimitColumnsVisible: TToolButton
            Left = 24
            Top = 0
            Action = actToggleLimitColumnsVisible
          end
          object btnToggleLogisticsColumnsVisible: TToolButton
            Left = 48
            Top = 0
            Action = actToggleLogisticsColumnsVisible
          end
          object btnToggleExploitationColumnsVisible: TToolButton
            Left = 72
            Top = 0
            Action = actToggleExploitationColumnsVisible
          end
          object btnToggleFreeColumnsVisible: TToolButton
            Left = 96
            Top = 0
            Action = actToggleFreeColumnsVisible
          end
          object btnToggleExcessColumnsVisible: TToolButton
            Left = 120
            Top = 0
            Action = actToggleExcessColumnsVisible
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Top = 61
        Width = 1001
        Height = 495
        FooterColor = 15258325
        FooterRowCount = 1
        FrozenCols = 2
        UseMultiTitle = True
        OnGetCellParams = grdDataGetCellParams
        OnGetFooterParams = grdDataGetFooterParams
      end
      object pnlFilter: TPanel
        Left = 0
        Top = 0
        Width = 1001
        Height = 37
        Align = alTop
        TabOrder = 2
        object lblTimeUnit: TLabel
          Left = 160
          Top = 11
          Width = 63
          Height = 13
          Caption = #1042#1088#1084'. '#1089#1090#1098#1087#1082#1072
        end
        object lblTimeUnitCount: TLabel
          Left = 296
          Top = 11
          Width = 81
          Height = 13
          Caption = #1041#1088'. '#1074#1088#1084'. '#1089#1090#1098#1087#1082#1080
        end
        object lblHours: TLabel
          Left = 608
          Top = 12
          Width = 153
          Height = 13
          Caption = #1042#1089#1080#1095#1082#1080' '#1089#1090#1086#1081#1085#1086#1089#1090#1080' '#1089#1072' '#1074' '#1095#1072#1089#1086#1074#1077
        end
        object lblDept: TLabel
          Left = 416
          Top = 11
          Width = 33
          Height = 13
          Caption = #1058#1055
        end
        object edtTimeUnit: TDBEdit
          Left = 226
          Top = 8
          Width = 57
          Height = 21
          Color = clBtnFace
          DataField = '_TIME_UNIT_NAME'
          DataSource = dsGridDataParams
          ReadOnly = True
          TabOrder = 1
        end
        object edtTimeUnitCount: TDBEdit
          Left = 382
          Top = 8
          Width = 25
          Height = 21
          Color = clBtnFace
          DataField = 'TIME_UNIT_COUNT'
          DataSource = dsGridDataParams
          ReadOnly = True
          TabOrder = 2
        end
        inline frDateInterval: TfrDateIntervalFrame
          Left = 8
          Top = 8
          Width = 145
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 145
          Constraints.MinHeight = 21
          Constraints.MinWidth = 145
          TabOrder = 0
          TabStop = True
          inherited dsData: TDataSource
            DataSet = pdsGridDataParams
          end
        end
        object edtDept: TDBEdit
          Left = 454
          Top = 8
          Width = 147
          Height = 21
          Color = clBtnFace
          DataField = '_DEPT_NAME'
          DataSource = dsGridDataParams
          ReadOnly = True
          TabOrder = 3
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 128
    Top = 192
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conCapacity
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'CAPACITY_LIMIT_LEVEL'
        ParamType = ptInput
        Value = '4'
      end
      item
        DataType = ftFloat
        Name = 'CALC_ALL_LIMIT_LEVELS'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_COMMON_LEVEL'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_COMMON_LEVEL'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '4'
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_COUNT'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPT_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LOGISTICS_HOURS_STATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXPLOITATION_HOURS_STATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FREE_HOURS_STATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCESS_HOURS_STATE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCapacityTable'
    AfterClose = cdsGridDataAfterClose
    Left = 96
    Top = 192
  end
  inherited alActions: TActionList
    Left = 192
    Top = 160
    inherited actForm: TAction
      Caption = #1042#1048#1052' - '#1058#1072#1073#1083#1080#1095#1077#1085' '#1085#1072' %Capacity% '#1085#1072' '#1058#1055
    end
    inherited actFilter: TAction
      Visible = True
    end
    object actToggleLimitLevelColumnsVisible: TAction
      Caption = 'actToggleLimitLevelColumnsVisible'
      Hint = #1056#1072#1079#1087#1086#1083#1072#1075#1072#1077#1084' '#1082#1072#1087#1072#1094#1080#1090#1077#1090' '#1086#1090' '#1074#1089#1080#1095#1082#1080' '#1085#1080#1074#1072
      ImageIndex = 93
      OnExecute = actToggleLimitLevelColumnsVisibleExecute
      OnUpdate = actToggleLimitLevelColumnsVisibleUpdate
    end
    object actToggleLimitColumnsVisible: TAction
      Caption = 'actToggleLimitColumnsVisible'
      Hint = #1056#1072#1079#1087#1086#1083#1072#1075#1072#1077#1084' '#1082#1072#1087#1072#1094#1080#1090#1077#1090
      ImageIndex = 91
      OnExecute = actToggleLimitColumnsVisibleExecute
      OnUpdate = actToggleLimitColumnsVisibleUpdate
    end
    object actToggleLogisticsColumnsVisible: TAction
      Caption = 'actToggleLogisticsColumnsVisible'
      Hint = #1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' '#1079#1072' '#1054#1073#1089#1083#1091#1078#1074#1072#1085#1077
      ImageIndex = 92
      OnExecute = actToggleLogisticsColumnsVisibleExecute
      OnUpdate = actToggleLogisticsColumnsVisibleUpdate
    end
    object actToggleExploitationColumnsVisible: TAction
      Caption = 'actToggleExploitationColumnsVisible'
      Hint = #1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' '#1079#1072' '#1045#1082#1089#1087#1083#1086#1072#1090#1072#1094#1080#1103
      ImageIndex = 94
      OnExecute = actToggleExploitationColumnsVisibleExecute
      OnUpdate = actToggleExploitationColumnsVisibleUpdate
    end
    object actToggleFreeColumnsVisible: TAction
      Caption = 'actToggleFreeColumnsVisible'
      Hint = #1057#1074#1086#1073#1086#1076#1077#1085' '#1082#1072#1087#1072#1094#1080#1090#1077#1090
      ImageIndex = 95
      OnExecute = actToggleFreeColumnsVisibleExecute
      OnUpdate = actToggleFreeColumnsVisibleUpdate
    end
    object actToggleExcessColumnsVisible: TAction
      Caption = 'actToggleExcessColumnsVisible'
      Hint = #1044#1077#1092#1080#1094#1080#1090' '#1085#1072' '#1082#1072#1087#1072#1094#1080#1090#1077#1090
      ImageIndex = 96
      OnExecute = actToggleExcessColumnsVisibleExecute
      OnUpdate = actToggleExcessColumnsVisibleUpdate
    end
    object actPrintGrid: TAction
      Caption = #1055#1077#1095#1072#1090'...'
      Hint = #1055#1077#1095#1072#1090
      ImageIndex = 2
      OnExecute = actPrintGridExecute
      OnUpdate = actPrintGridUpdate
    end
    object actClientProductParRelProducts: TAction
      Caption = #1054#1073#1077#1082#1090#1086#1074' '#1088#1072#1079#1088#1077#1079'...'
      OnExecute = actClientProductParRelProductsExecute
      OnUpdate = actClientProductParRelProductsUpdate
    end
    object actClientPartnerParRelProducts: TAction
      Caption = #1057#1091#1073#1077#1082#1090#1086#1074' '#1088#1072#1079#1088#1077#1079'...'
      OnExecute = actClientPartnerParRelProductsExecute
      OnUpdate = actClientPartnerParRelProductsUpdate
    end
    object actClientParRelProducts: TAction
      Caption = #1052#1048#1048#1056
      OnExecute = actClientParRelProductsExecute
      OnUpdate = actClientParRelProductsUpdate
    end
    object actDeptDetailFlow: TAction
      Caption = #1055#1086#1090#1086#1094#1080' '#1087#1088#1077#1079' '#1058#1055'...'
      OnExecute = actDeptDetailFlowExecute
      OnUpdate = actDeptDetailFlowUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    AfterOpen = pdsGridDataParamsAfterOpen
    OnCalcFields = pdsGridDataParamsCalcFields
    Left = 96
    Top = 224
    object pdsGridDataParamsMIN_PRP_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1085#1072' '#1048#1048#1056' - '#1054#1090
      FieldName = 'MIN_PRP_STATUS_CODE'
    end
    object pdsGridDataParamsMAX_PRP_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1085#1072' '#1048#1048#1056' - '#1044#1086
      FieldName = 'MAX_PRP_STATUS_CODE'
    end
    object pdsGridDataParamsPRODUCT_COMMON_LEVEL: TAbmesFloatField
      DisplayLabel = #1053#1080#1074#1086' '#1048#1048#1056' '#1089#1087#1088#1103#1084#1086' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'PRODUCT_COMMON_LEVEL'
    end
    object pdsGridDataParamsPARTNER_COMMON_LEVEL: TAbmesFloatField
      DisplayLabel = #1053#1080#1074#1086' '#1048#1048#1056' '#1089#1087#1088#1103#1084#1086' '#1055#1072#1088#1090#1085#1100#1086#1088
      FieldName = 'PARTNER_COMMON_LEVEL'
    end
    object pdsGridDataParamsCHOSEN_DEPTS: TAbmesWideStringField
      DisplayLabel = #1058#1055
      FieldName = 'CHOSEN_DEPTS'
      Required = True
      OnChange = pdsGridDataParamsCHOSEN_DEPTSChange
      Size = 4000
    end
    object pdsGridDataParamsCAPACITY_LIMIT_LEVEL: TAbmesFloatField
      DisplayLabel = #1053#1080#1074#1086' '#1056#1072#1079#1087#1086#1083#1072#1075#1072#1077#1084' '#1050#1072#1087#1072#1094#1080#1090#1077#1090
      FieldName = 'CAPACITY_LIMIT_LEVEL'
    end
    object pdsGridDataParamsCALC_ALL_LIMIT_LEVELS: TAbmesFloatField
      DisplayLabel = #1056#1072#1079#1087#1086#1083#1072#1075#1072#1077#1084' '#1086#1090' '#1074#1089#1080#1095#1082#1080' '#1085#1080#1074#1072
      FieldName = 'CALC_ALL_LIMIT_LEVELS'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsCHOSEN_DEPT_PRODUCTS: TAbmesWideStringField
      DisplayLabel = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086' '#1052#1103#1089#1090#1086' ('#1054#1087#1052') '#1085#1072' '#1058#1055
      FieldName = 'CHOSEN_DEPT_PRODUCTS'
      Size = 4000
    end
    object pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1086' '#1085#1072' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083
      FieldName = 'BEGIN_DATE'
      OnGetText = pdsGridDataParamsBEGIN_DATEGetText
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
      ProviderFlags = []
    end
    object pdsGridDataParamsTIME_UNIT_CODE: TAbmesFloatField
      FieldName = 'TIME_UNIT_CODE'
    end
    object pdsGridDataParamsTIME_UNIT_COUNT: TAbmesFloatField
      FieldName = 'TIME_UNIT_COUNT'
    end
    object pdsGridDataParamsEXCESS_HOURS_STATE: TAbmesFloatField
      DisplayLabel = #1044#1077#1092#1080#1094#1080#1090' / '#1055#1088#1077#1085#1072#1090#1086#1074'.'
      FieldName = 'EXCESS_HOURS_STATE'
    end
    object pdsGridDataParamsLOGISTICS_HOURS_STATE: TAbmesFloatField
      DisplayLabel = #1054#1073#1077#1079#1087#1077#1095#1072#1074#1072#1085#1077
      FieldName = 'LOGISTICS_HOURS_STATE'
    end
    object pdsGridDataParamsEXPLOITATION_HOURS_STATE: TAbmesFloatField
      DisplayLabel = #1045#1082#1089#1087#1083#1086#1072#1090#1072#1094#1080#1103
      FieldName = 'EXPLOITATION_HOURS_STATE'
    end
    object pdsGridDataParamsFREE_HOURS_STATE: TAbmesFloatField
      DisplayLabel = #1057#1074#1086#1073#1086#1076#1077#1085
      FieldName = 'FREE_HOURS_STATE'
    end
    object pdsGridDataParamsASPECT_TYPE: TAbmesFloatField
      FieldName = 'ASPECT_TYPE'
      ProviderFlags = []
    end
    object pdsGridDataParams_TIME_UNIT_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_TIME_UNIT_NAME'
      LookupDataSet = cdsTimeUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'THE_DATE_UNIT_NAME'
      KeyFields = 'TIME_UNIT_CODE'
      Size = 50
      Lookup = True
    end
    object pdsGridDataParams_TIME_UNIT_DEFAULT_UNIT_COUNT: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_TIME_UNIT_DEFAULT_UNIT_COUNT'
      LookupDataSet = cdsTimeUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'DEFAULT_UNIT_COUNT'
      KeyFields = 'TIME_UNIT_CODE'
      Lookup = True
    end
    object pdsGridDataParams_TIME_UNIT_MIN_UNIT_COUNT: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_TIME_UNIT_MIN_UNIT_COUNT'
      LookupDataSet = cdsTimeUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'MIN_UNIT_COUNT'
      KeyFields = 'TIME_UNIT_CODE'
      Lookup = True
    end
    object pdsGridDataParams_TIME_UNIT_MAX_UNIT_COUNT: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_TIME_UNIT_MAX_UNIT_COUNT'
      LookupDataSet = cdsTimeUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'MAX_UNIT_COUNT'
      KeyFields = 'TIME_UNIT_CODE'
      Lookup = True
    end
    object pdsGridDataParams_END_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_END_DATE'
      DisplayFormat = 'ww\e\iiii'
      Calculated = True
    end
    object pdsGridDataParams_CENTER_DATE: TAbmesSQLTimeStampField
      FieldName = '_CENTER_DATE'
      ProviderFlags = []
      DisplayFormat = 'ww\e\iiii'
    end
    object pdsGridDataParams_DEPT_NAME: TAbmesWideStringField
      FieldName = '_DEPT_NAME'
      Size = 50
    end
    object pdsGridDataParams_DEPT_CODE: TAbmesFloatField
      FieldName = '_DEPT_CODE'
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 128
    Top = 224
  end
  inherited dsData: TDataSource
    Left = 128
    Top = 160
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 96
    Top = 160
  end
  object cdsTimeUnits: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvTimeUnits'
    AfterOpen = cdsTimeUnitsAfterOpen
    Left = 96
    Top = 256
    object cdsTimeUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'THE_DATE_UNIT_CODE'
    end
    object cdsTimeUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'THE_DATE_UNIT_NAME'
      Size = 50
    end
    object cdsTimeUnitsTABLE_NAME: TAbmesWideStringField
      FieldName = 'TABLE_NAME'
      Size = 50
    end
    object cdsTimeUnitsKEY_FIELD_NAME: TAbmesWideStringField
      FieldName = 'KEY_FIELD_NAME'
      Size = 50
    end
    object cdsTimeUnitsYEAR_UNIT_NO_NAME: TAbmesWideStringField
      FieldName = 'YEAR_UNIT_NO_NAME'
      Size = 50
    end
    object cdsTimeUnitsDEFAULT_UNIT_COUNT: TAbmesFloatField
      FieldName = 'DEFAULT_UNIT_COUNT'
    end
    object cdsTimeUnitsMIN_UNIT_COUNT: TAbmesFloatField
      FieldName = 'MIN_UNIT_COUNT'
    end
    object cdsTimeUnitsMAX_UNIT_COUNT: TAbmesFloatField
      FieldName = 'MAX_UNIT_COUNT'
    end
  end
  object EhPrint: TPrintDBGridEh
    DBGridEh = grdData
    Options = [pghOptimalColWidths]
    Page.BottomMargin = 1.000000000000000000
    Page.LeftMargin = 1.500000000000000000
    Page.RightMargin = 1.500000000000000000
    Page.TopMargin = 1.000000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'Microsoft Sans Serif'
    PageFooter.Font.Style = []
    PageFooter.RightText.Strings = (
      #1089#1090#1088'. &[Page]')
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'Microsoft Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 212
    Top = 291
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
      666C616E67313032367B5C666F6E7474626C7B5C66305C666E696C5C66636861
      727365743020417269616C3B7D7B5C66315C666E696C5C666368617273657432
      30347B5C2A5C666E616D6520417269616C3B7D417269616C204359523B7D7B5C
      66325C666E696C5C66636861727365743230347B5C2A5C666E616D652054696D
      6573204E657720526F6D616E3B7D54696D6573204E657720526F6D616E204359
      523B7D7D0D0A5C766965776B696E64345C7563315C706172645C71635C6C616E
      67313033335C756C5C625C695C66733332202543617074696F6E255C6C616E67
      313032365C66315C7061720D0A5C756C6E6F6E655C62305C667331365C706172
      0D0A5C706172645C6C616E67313033335C69305C66305C6673323220706C626C
      426567696E446174655C6C616E67313032365C6631203A205C6C616E67313033
      335C663020424547494E5F444154452020202020202020202020202020706C62
      6C54696D65556E69744E616D655C6C616E67313032365C6631203A5C6C616E67
      313033335C663020205F54494D455F554E49545F4E414D452020202020202020
      202020202020706C626C54696D65556E6974436F756E745C6C616E6731303236
      5C6631203A5C6C616E67313033335C6630202054494D455F554E49545F434F55
      4E542020202020202020202020202020706C626C446570744E616D655C6C616E
      67313032365C6631203A205C6C616E67313033335C6630205F444550545F4E41
      4D455C6C616E67313032365C66325C667332365C7061720D0A7D0D0A00}
  end
  object EhPrintSaveHeader: TPrintDBGridEh
    Options = []
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'Microsoft Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'Microsoft Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 264
    Top = 290
  end
  object cdsOuterFormParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 208
    Top = 216
    object cdsOuterFormParamsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object cdsOuterFormParamsBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object cdsOuterFormParamsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object cdsOuterFormParams_IN_SPECIAL_CONTROL_TASKS_MODE: TAbmesFloatField
      FieldName = '_IN_SPECIAL_CONTROL_TASKS_MODE'
      FieldValueType = fvtBoolean
    end
    object cdsOuterFormParamsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object cdsOuterFormParamsDEPT_NO: TAbmesWideStringField
      FieldName = 'DEPT_NO'
      Size = 50
    end
    object cdsOuterFormParamsOM_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'OM_BEGIN_DATE'
    end
    object cdsOuterFormParamsOM_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'OM_END_DATE'
    end
    object cdsOuterFormParamsCHOSEN_DEPTS: TAbmesWideStringField
      FieldName = 'CHOSEN_DEPTS'
      Size = 4000
    end
    object cdsOuterFormParamsACTIVE_STATE: TAbmesFloatField
      FieldName = 'ACTIVE_STATE'
    end
    object cdsOuterFormParamsFROM_MLMSO_CHOSEN_DEPTS: TAbmesWideStringField
      FieldName = 'FROM_MLMSO_CHOSEN_DEPTS'
      Size = 4000
    end
  end
  object cdsParRelProductsParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 624
    object cdsParRelProductsParamsOBTAINMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OBTAINMENT_TYPE_CODE'
    end
    object cdsParRelProductsParamsPRODUCT_COMMON_LEVEL: TAbmesFloatField
      FieldName = 'PRODUCT_COMMON_LEVEL'
    end
    object cdsParRelProductsParamsPARTNER_COMMON_LEVEL: TAbmesFloatField
      FieldName = 'PARTNER_COMMON_LEVEL'
    end
    object cdsParRelProductsParamsBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object cdsParRelProductsParamsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object cdsParRelProductsParamsOP_DEPT_CODE: TAbmesFloatField
      FieldName = 'OP_DEPT_CODE'
    end
    object cdsParRelProductsParamsMIN_PRP_STATUS_CODE: TAbmesFloatField
      FieldName = 'MIN_PRP_STATUS_CODE'
    end
    object cdsParRelProductsParamsMAX_PRP_STATUS_CODE: TAbmesFloatField
      FieldName = 'MAX_PRP_STATUS_CODE'
    end
  end
  object pmClientParRelProducts: TPopupMenu
    Left = 96
    Top = 304
    object miClientProductParRelProducts: TMenuItem
      Action = actClientProductParRelProducts
      Default = True
    end
    object miClientPartnerParRelProducts: TMenuItem
      Action = actClientPartnerParRelProducts
    end
  end
  object cdsDeptDetailFlowParams: TAbmesClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 656
    object cdsDeptDetailFlowParamsBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object cdsDeptDetailFlowParamsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object cdsDeptDetailFlowParamsFLOW_LEVEL: TAbmesFloatField
      FieldName = 'FLOW_LEVEL'
    end
    object cdsDeptDetailFlowParamsFLOW_TYPE: TAbmesFloatField
      FieldName = 'FLOW_TYPE'
    end
    object cdsDeptDetailFlowParamsCHOSEN_DEPTS: TAbmesWideStringField
      FieldName = 'CHOSEN_DEPTS'
      Size = 4000
    end
    object cdsDeptDetailFlowParamsPRODUCT_COMMON_LEVEL: TAbmesFloatField
      FieldName = 'PRODUCT_COMMON_LEVEL'
    end
    object cdsDeptDetailFlowParamsPARTNER_COMMON_LEVEL: TAbmesFloatField
      FieldName = 'PARTNER_COMMON_LEVEL'
    end
  end
end
