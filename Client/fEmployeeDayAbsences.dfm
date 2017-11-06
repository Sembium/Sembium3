inherited fmEmployeeDayAbsences: TfmEmployeeDayAbsences
  Left = 250
  Top = 217
  Caption = #1062#1077#1083#1086#1076#1085#1077#1074#1085#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083
  ClientHeight = 377
  ClientWidth = 760
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 342
    Width = 760
    inherited pnlOKCancel: TPanel
      Left = 492
      TabOrder = 2
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 403
      TabOrder = 1
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 671
      TabOrder = 3
      Visible = False
    end
    object btnEmployeeDateAvailability: TBitBtn
      Left = 8
      Top = 2
      Width = 113
      Height = 25
      Action = actEmployeeDateAvailability
      Caption = #1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077'...'
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
      Spacing = -1
      TabOrder = 0
    end
  end
  inherited pnlMain: TPanel
    Width = 760
    Height = 342
    inherited pnlGrid: TPanel
      Width = 744
      Height = 326
      inherited pnlNavigator: TPanel
        Width = 744
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 744
        Height = 302
        UseMultiTitle = True
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = '_DATE_STATUS'
            Footers = <>
            Title.Caption = #1057#1090#1072#1090'.'
            Width = 29
          end
          item
            Color = 16115403
            EditButtons = <>
            FieldName = 'BEGIN_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083
            Width = 125
          end
          item
            EditButtons = <>
            FieldName = 'EMP_DAY_ABSENCE_REASON_NAME'
            Footers = <>
            Title.Caption = #1055#1088#1080#1095#1080#1085#1072
            Width = 97
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'EMP_DAY_ABSENCE_REASON_ABBREV'
            Footers = <>
            Title.Caption = #1054#1079#1085'.'
            Width = 28
          end
          item
            EditButtons = <>
            FieldName = 'EMP_DAY_ABSENCE_DOC_TYPE_NAME'
            Footers = <>
            Title.Caption = #1044#1086#1082#1091#1084#1077#1085#1090'|'#1042#1080#1076
            Width = 125
          end
          item
            EditButtons = <>
            FieldName = 'EMP_DAY_ABSENCE_DOC_ISSUER'
            Footers = <>
            Title.Caption = #1044#1086#1082#1091#1084#1077#1085#1090'|'#1048#1079#1076#1072#1076#1077#1085' '#1086#1090
            Width = 144
          end
          item
            EditButtons = <>
            FieldName = 'EMP_DAY_ABSENCE_DOC_NO'
            Footers = <>
            Title.Caption = #1044#1086#1082#1091#1084#1077#1085#1090'|'#1053#1086#1084#1077#1088
            Width = 94
          end
          item
            EditButtons = <>
            FieldName = 'EMP_DAY_ABSENCE_DOC_DATE'
            Footers = <>
            Title.Caption = #1044#1086#1082#1091#1084#1077#1085#1090'|'#1044#1072#1090#1072
            Width = 62
          end>
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 200
    Top = 160
  end
  inherited cdsGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conEmployeeAvailability
    FieldDefs = <
      item
        Name = 'EMP_AVAIL_MODIFIER_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'EMP_DAY_ABSENCE_REASON_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EMP_DAY_ABSENCE_REASON_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'EMP_DAY_ABSENCE_REASON_ABBREV'
        DataType = ftWideString
        Size = 102
      end
      item
        Name = 'EMP_DAY_ABSENCE_DOC_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EMP_DAY_ABSENCE_DOC_TYPE_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'EMP_DAY_ABSENCE_DOC_NO'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'EMP_DAY_ABSENCE_DOC_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'EMP_DAY_ABSENCE_DOC_ISSUER'
        DataType = ftWideString
        Size = 100
      end>
    Params = <
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
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMP_DAY_ABSENCE_REASON_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMP_DAY_ABSENCE_REASON_CODE'
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
      end>
    ProviderName = 'prvEmployeeDayAbsences'
    OnCalcFields = cdsGridDataCalcFields
    Left = 168
    Top = 160
    object cdsGridDataEMP_AVAIL_MODIFIER_CODE: TAbmesFloatField
      FieldName = 'EMP_AVAIL_MODIFIER_CODE'
    end
    object cdsGridDataBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
      OnGetText = cdsGridDataBEGIN_DATEGetText
    end
    object cdsGridDataEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object cdsGridDataEMP_DAY_ABSENCE_REASON_CODE: TAbmesFloatField
      FieldName = 'EMP_DAY_ABSENCE_REASON_CODE'
    end
    object cdsGridDataEMP_DAY_ABSENCE_REASON_NAME: TAbmesWideStringField
      FieldName = 'EMP_DAY_ABSENCE_REASON_NAME'
      Size = 100
    end
    object cdsGridDataEMP_DAY_ABSENCE_REASON_ABBREV: TAbmesWideStringField
      FieldName = 'EMP_DAY_ABSENCE_REASON_ABBREV'
      Size = 102
    end
    object cdsGridDataEMP_DAY_ABSENCE_DOC_TYPE_CODE: TAbmesFloatField
      FieldName = 'EMP_DAY_ABSENCE_DOC_TYPE_CODE'
    end
    object cdsGridDataEMP_DAY_ABSENCE_DOC_TYPE_NAME: TAbmesWideStringField
      FieldName = 'EMP_DAY_ABSENCE_DOC_TYPE_NAME'
      Size = 50
    end
    object cdsGridDataEMP_DAY_ABSENCE_DOC_NO: TAbmesWideStringField
      FieldName = 'EMP_DAY_ABSENCE_DOC_NO'
      Size = 50
    end
    object cdsGridDataEMP_DAY_ABSENCE_DOC_DATE: TAbmesSQLTimeStampField
      FieldName = 'EMP_DAY_ABSENCE_DOC_DATE'
    end
    object cdsGridDataEMP_DAY_ABSENCE_DOC_ISSUER: TAbmesWideStringField
      FieldName = 'EMP_DAY_ABSENCE_DOC_ISSUER'
      Size = 100
    end
    object cdsGridData_DATE_STATUS: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DATE_STATUS'
      OnGetText = cdsGridData_DATE_STATUSGetText
      Calculated = True
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1062#1077#1083#1086#1076#1085#1077#1074#1085#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083
    end
    inherited actFilter: TAction
      Visible = True
    end
    object actEmployeeDateAvailability: TAction
      Caption = #1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077'...'
      ImageIndex = 131
      OnExecute = actEmployeeDateAvailabilityExecute
      OnUpdate = actEmployeeDateAvailabilityUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    AfterOpen = pdsGridDataParamsAfterOpen
    Left = 168
    Top = 192
    object pdsGridDataParamsEMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1057#1083#1091#1078#1080#1090#1077#1083
      FieldName = 'EMPLOYEE_CODE'
      Required = True
    end
    object pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_DATE'
      Required = True
    end
    object pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' - '#1050#1088#1072#1081
      FieldName = 'END_DATE'
      Required = True
    end
    object pdsGridDataParamsEMP_DAY_ABSENCE_REASON_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1080#1095#1080#1085#1072
      FieldName = 'EMP_DAY_ABSENCE_REASON_CODE'
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 200
    Top = 192
  end
  inherited dsData: TDataSource
    Left = 200
    Top = 128
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 168
    Top = 128
  end
  object cdsEmployeeDateAvailabilityParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 256
    Top = 192
    object cdsEmployeeDateAvailabilityParamsEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object cdsEmployeeDateAvailabilityParamsTHE_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_DATE'
    end
  end
end
