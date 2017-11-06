inherited fmEmployeePresenceDeviation: TfmEmployeePresenceDeviation
  Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' '#1074' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103' '#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083
  ClientHeight = 374
  ClientWidth = 497
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 339
    Width = 497
    inherited pnlOKCancel: TPanel
      Left = 229
      TabOrder = 2
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 140
      TabOrder = 1
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 408
      TabOrder = 3
      Visible = False
    end
    object btnEmployeeDateAvailability: TBitBtn
      Left = 8
      Top = 2
      Width = 177
      Height = 25
      Action = actEditRecord
      Caption = #1055#1088#1077#1075#1083#1077#1076' '#1085#1072' '#1088#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077'...'
      DoubleBuffered = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00F8C4
        B000F8C4B000F8C5B100F8C5B100F8C5B100F8C5B100F8C5B100F8C5B100F8C5
        B100F8C4B000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F6AB9000F6B1
        9700F6B49B00F6B69D00F6B59C00F6B59C00F6B69D00F6B59C00F6B59C00F6B6
        9D00F6B39A00F6AB9000FF00FF00FF00FF00FF00FF00FF00FF00F3957100F49E
        7E00F5A48700F5A78900F5A68900F5A68900F5A78900F5A68900F5A68900F5A7
        8900F4A28400F3947100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00DA8F
        7300F3957200F4957200F3957200F3957200F4957200F3957200F3957200F495
        7200DA8F7300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00BB9D9300BAABAA00BAABAA00BB9D9300FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0099B8C60083BED5008AD5EE0098D9F0008FC1D60099B8C600FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0077C9EC0089D8EE0092DAEF009CDDF100A5E0F20081D0ED00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0090B4C60077C8EB0089D7EE0092DAEF009CDDF100A5E0F20083D4EE0090B4
        C600503EEE00503EEE00503EEE009C92F800FF00FF00FF00FF00FF00FF00FF00
        FF007B8890007A94A0007F98A0008198A1008499A100869AA1007C95A0007B88
        9000FFFFFF00FFFFFF00FFFFFF009C92F800503EEE00FF00FF00FF00FF00FF00
        FF00969899006F75790073797D00747A7E00747B7F0073797D006F7579009698
        9900FFFFFF00FFFFFF00FFFFFF00FFFFFF009C92F8009C92F800FF00FF00FF00
        FF00FF00FF00777C80006A6F73006D7276006D7276006A6F7300777C8000FFFF
        FF00FFFFFF00FFFFFF007A7A7A00FFFFFF00FFFFFF00503EEE00FF00FF00FF00
        FF00FF00FF00FF00FF0093979A006F7478006F74780093979A00FFFFFF00FFFF
        FF00FFFFFF007A7A7A00FFFFFF00FFFFFF00FFFFFF00503EEE00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00503EEE00FFFFFF00FFFF
        FF00FFFFFF007A7A7A00FFFFFF00FFFFFF00FFFFFF00503EEE00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009C92F8009C92F800FFFF
        FF00FFFFFF007A7A7A00FFFFFF00FFFFFF009C92F8009C92F800FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00503EEE009C92
        F800FFFFFF00FFFFFF00FFFFFF009C92F800503EEE00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009C92
        F800503EEE00503EEE00503EEE009C92F800FF00FF00FF00FF00}
      ParentDoubleBuffered = False
      TabOrder = 0
    end
  end
  inherited pnlMain: TPanel
    Width = 497
    Height = 339
    inherited pnlGrid: TPanel
      Width = 481
      Height = 323
      inherited pnlNavigator: TPanel
        Top = 57
        Width = 481
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
        end
      end
      inherited grdData: TAbmesDBGrid
        Top = 81
        Width = 481
        Height = 242
        UseMultiTitle = True
        VTitleMargin = 7
        Columns = <
          item
            EditButtons = <>
            FieldName = 'THE_DATE'
            Footers = <>
            Title.Caption = #1044#1072#1090#1072' '#1085#1072' '#1088#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = '_TIME_CORRECTION_TYPE_NAME'
            Footers = <>
            Title.Caption = #1042#1080#1076' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 211
          end
          item
            EditButtons = <>
            FieldName = '_TIME_CORRECTION_TYPE_ABBREV'
            Footers = <>
            Title.Caption = #1042#1080#1076' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1054#1079#1085'.'
            Width = 32
          end
          item
            EditButtons = <>
            FieldName = 'DURATION'
            Footers = <>
            Title.Caption = #1055#1088#1086#1076#1098#1083#1078#1080#1090#1077#1083#1085#1086#1089#1090' ('#1095#1072#1089#1086#1074#1077')'
            Width = 128
          end>
      end
      object pnlParams: TPanel
        Left = 0
        Top = 0
        Width = 481
        Height = 57
        Align = alTop
        TabOrder = 2
        object lblEmployeeNo: TLabel
          Left = 8
          Top = 8
          Width = 49
          Height = 13
          Caption = #1057#1083#1091#1078#1080#1090#1077#1083
        end
        object lblDateInterval: TLabel
          Left = 328
          Top = 8
          Width = 97
          Height = 13
          Caption = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083
        end
        inline frEmployee: TfrEmployeeFieldEditFrameBald
          Left = 8
          Top = 24
          Width = 313
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 0
          TabStop = True
          inherited gbEmployee: TGroupBox
            Width = 332
            inherited pnlEmployeeName: TPanel
              Width = 257
              inherited pnlRightButtons: TPanel
                Left = 221
              end
              inherited pnlEmpoyeeNameInner: TPanel
                Width = 221
                inherited edtEmployeeName: TDBEdit
                  Width = 175
                end
                inherited cbEmployee: TJvDBLookupCombo
                  Width = 220
                end
              end
            end
            inherited pnlPaddingRight: TPanel
              Left = 322
            end
          end
          inherited dsData: TDataSource
            DataSet = pdsGridDataParams
          end
        end
        inline frDateInterval: TfrDateIntervalFrame
          Left = 328
          Top = 24
          Width = 145
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 145
          Constraints.MinHeight = 21
          Constraints.MinWidth = 145
          TabOrder = 1
          TabStop = True
          inherited dsData: TDataSource
            DataSet = pdsGridDataParams
          end
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 56
    Top = 152
  end
  inherited cdsGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conEmployeeAvailability
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
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
        DataType = ftFloat
        Name = 'IS_NEGATIVE_DEV'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_POSITIVE_DEV'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_APPROVED_EXTRA_WORK_DEV'
        ParamType = ptInput
        Value = '1'
      end>
    ProviderName = 'prvEmployeePresenceDeviation'
    OnCalcFields = cdsGridDataCalcFields
    Left = 24
    Top = 152
    object cdsGridDataTHE_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_DATE'
    end
    object cdsGridDataTIME_CORRECTION_TYPE_CODE: TAbmesFloatField
      FieldName = 'TIME_CORRECTION_TYPE_CODE'
    end
    object cdsGridDataDURATION: TAbmesFloatField
      FieldName = 'DURATION'
      OnGetText = cdsGridDataDURATIONGetText
      DisplayFormat = ',0.#'
    end
    object cdsGridData_TIME_CORRECTION_TYPE_NAME: TAbmesWideStringField
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = '_TIME_CORRECTION_TYPE_NAME'
      Size = 50
      Calculated = True
    end
    object cdsGridData_TIME_CORRECTION_TYPE_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = '_TIME_CORRECTION_TYPE_ABBREV'
      Calculated = True
    end
    object cdsGridDataEMPLOYEE_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'EMPLOYEE_CODE'
      Calculated = True
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' '#1074' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103' '#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083
    end
    inherited actFilter: TAction
      Visible = True
    end
    inherited actEditRecord: TAction
      Caption = #1055#1088#1077#1075#1083#1077#1076' '#1085#1072' '#1088#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077'...'
      Hint = #1055#1088#1077#1075#1083#1077#1076' '#1085#1072' '#1088#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077
      ImageIndex = 131
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    AfterOpen = pdsGridDataParamsAfterOpen
    Left = 24
    Top = 184
    object pdsGridDataParamsEMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1057#1083#1091#1078#1080#1090#1077#1083
      FieldName = 'EMPLOYEE_CODE'
    end
    object pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_DATE'
      OnGetText = pdsGridDataParamsBEGIN_DATEGetText
    end
    object pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' - '#1050#1088#1072#1081
      FieldName = 'END_DATE'
    end
    object pdsGridDataParamsIS_NEGATIVE_DEV: TAbmesFloatField
      DisplayLabel = #1054#1090#1088#1080#1094#1072#1090#1077#1083#1085#1086' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1077' (-)'
      FieldName = 'IS_NEGATIVE_DEV'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_POSITIVE_DEV: TAbmesFloatField
      DisplayLabel = #1055#1086#1083#1086#1078#1080#1090#1077#1083#1085#1086' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1077' (+)'
      FieldName = 'IS_POSITIVE_DEV'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_APPROVED_EXTRA_WORK_DEV: TAbmesFloatField
      DisplayLabel = #1048#1079#1074#1098#1085#1088#1077#1076#1085#1080' (!)'
      FieldName = 'IS_APPROVED_EXTRA_WORK_DEV'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParams_EMPLOYEE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_EMPLOYEE_NAME'
      LookupDataSet = frEmployee.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NAME'
      KeyFields = 'EMPLOYEE_CODE'
      Size = 50
      Lookup = True
    end
    object pdsGridDataParams_EMPLOYEE_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_EMPLOYEE_NO'
      LookupDataSet = frEmployee.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NO'
      KeyFields = 'EMPLOYEE_CODE'
      Lookup = True
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 56
    Top = 184
  end
  inherited dsData: TDataSource
    Left = 56
    Top = 120
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 24
    Top = 120
  end
end
