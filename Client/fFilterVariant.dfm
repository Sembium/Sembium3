inherited fmFilterVariant: TfmFilterVariant
  Left = 339
  Top = 299
  BorderStyle = bsSizeable
  Caption = #1047#1072#1087#1080#1089' '#1085#1072' '#1042#1072#1088#1080#1072#1085#1090' '#1085#1072' '#1092#1080#1083#1090#1098#1088
  ClientHeight = 377
  ClientWidth = 684
  Constraints.MinHeight = 325
  Constraints.MinWidth = 650
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 342
    Width = 684
    inherited pnlOKCancel: TPanel
      Left = 416
    end
    inherited pnlClose: TPanel
      Left = 327
    end
    inherited pnlApply: TPanel
      Left = 595
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 684
    Height = 342
    inherited pnlGrid: TPanel
      Width = 668
      Height = 326
      inherited pnlNavigator: TPanel
        Width = 490
        Align = alNone
        Visible = False
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Top = 34
        Width = 350
        Height = 292
        AutoFitColWidths = True
        TabOrder = 2
        OnCellClick = grdDataCellClick
        OnKeyPress = grdDataKeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'FIELD_DISPLAY_LABEL'
            Footers = <>
            Title.Caption = #1055#1086#1083#1077#1090#1072
            Width = 144
          end
          item
            Alignment = taCenter
            AutoFitColWidth = False
            Checkboxes = False
            EditButtons = <>
            FieldName = '_HAS_MODIFIED_VALUE'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1055#1088#1086#1084'.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Microsoft Sans Serif'
            Title.Font.Style = []
            Width = 35
          end
          item
            Alignment = taCenter
            AutoFitColWidth = False
            Checkboxes = True
            EditButtons = <>
            FieldName = 'SAVE_FIELD'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1047#1072#1087#1080#1089
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Microsoft Sans Serif'
            Title.Font.Style = []
            Width = 35
          end>
      end
      object pnlFilterVariantItemProperties: TPanel
        Left = 350
        Top = 34
        Width = 318
        Height = 292
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 3
        object pnlValue: TPanel
          Left = -308
          Top = 0
          Width = 313
          Height = 292
          Align = alRight
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
        end
        object pnlValueAsDateDelta: TPanel
          Left = 5
          Top = 0
          Width = 313
          Height = 292
          Align = alRight
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 1
          object lblTimeUnits: TLabel
            Left = 16
            Top = 32
            Width = 169
            Height = 13
            Caption = #1054#1090#1084#1077#1089#1090#1074#1072#1085#1077' '#1089#1087#1088#1103#1084#1086' '#1090#1077#1082#1091#1097#1072' '#1076#1072#1090#1072
          end
          object lblTimeUnit: TLabel
            Left = 200
            Top = 32
            Width = 84
            Height = 13
            Caption = #1042#1088#1077#1084#1077#1074#1072' '#1089#1090#1098#1087#1082#1072
          end
          object lblCurrentDateLabel: TLabel
            Left = 16
            Top = 163
            Width = 68
            Height = 13
            Caption = #1058#1077#1082#1091#1097#1072' '#1076#1072#1090#1072':'
          end
          object lblCurrentDate: TLabel
            Left = 16
            Top = 178
            Width = 54
            Height = 13
            Caption = '25.05.2002'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblResultDateLabel: TLabel
            Left = 112
            Top = 163
            Width = 87
            Height = 13
            Caption = #1056#1077#1079#1091#1083#1090#1072#1090#1085#1072' '#1076#1072#1090#1072':'
          end
          object lblResultDate: TLabel
            Left = 112
            Top = 177
            Width = 54
            Height = 13
            Caption = '25.05.2002'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object edtTimeUnits: TDBEdit
            Left = 16
            Top = 48
            Width = 177
            Height = 21
            DataField = 'TIME_UNIT_COUNT'
            DataSource = dsGridData
            TabOrder = 1
          end
          object cbTimeUnit: TJvDBLookupCombo
            Left = 200
            Top = 48
            Width = 97
            Height = 21
            DataField = 'TIME_UNIT_CODE'
            DataSource = dsGridData
            LookupField = 'THE_DATE_UNIT_CODE'
            LookupDisplay = 'THE_DATE_UNIT_NAME'
            LookupSource = dsTimeUnits
            TabOrder = 2
          end
          object chkIsFieldEmpty: TAbmesDBCheckBox
            Left = 16
            Top = 8
            Width = 109
            Height = 17
            Caption = #1055#1088#1072#1079#1085#1072' '#1089#1090#1086#1081#1085#1086#1089#1090
            DataField = 'IS_FIELD_EMPTY'
            DataSource = dsGridData
            TabOrder = 0
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            ImmediateUpdateField = True
          end
          object pnlTimeUnitHit: TPanel
            Left = 8
            Top = 96
            Width = 297
            Height = 57
            BevelOuter = bvNone
            TabOrder = 3
            object lblUnitPosition: TLabel
              Left = 8
              Top = 4
              Width = 171
              Height = 13
              Caption = #1055#1086#1087#1072#1076#1077#1085#1080#1077' '#1074' %s '#1089#1083#1077#1076' '#1086#1090#1084#1077#1089#1090#1074#1072#1085#1077
            end
            object shpUnitPosition: TShape
              Left = 8
              Top = 19
              Width = 281
              Height = 5
              Brush.Color = 16759413
            end
            object Arrow2: TAbmesArrow
              Left = 281
              Top = 25
              Width = 9
              Height = 11
              Points = <
                item
                  X = 3
                  Y = 0
                  ArrowType = atBackward
                end
                item
                  X = 3
                  Y = 3
                  ArrowType = atNone
                end>
              HeadLength = 4
              HeadWidth = 9
            end
            object Arrow1: TAbmesArrow
              Left = 129
              Top = 25
              Width = 9
              Height = 11
              Points = <
                item
                  X = 3
                  Y = 0
                  ArrowType = atBackward
                end
                item
                  X = 3
                  Y = 3
                  ArrowType = atNone
                end>
              HeadLength = 4
              HeadWidth = 9
            end
            object saSlider: TAbmesArrow
              Left = 9
              Top = 25
              Width = 9
              Height = 11
              Points = <
                item
                  X = 3
                  Y = 0
                  ArrowType = atBackward
                end
                item
                  X = 3
                  Y = 3
                  ArrowType = atNone
                end>
              HeadLength = 4
              HeadWidth = 9
            end
            object gbTimeUnitPosition: TJvDBRadioPanel
              Left = -2
              Top = 29
              Width = 372
              Height = 17
              BevelOuter = bvNone
              Columns = 3
              DataField = 'TIME_UNIT_POSITION'
              DataSource = dsGridData
              Items.Strings = (
                #1053#1072#1095#1072#1083#1086
                #1058#1086#1095#1085#1086
                #1050#1088#1072#1081)
              TabOrder = 0
              TabStop = True
            end
          end
        end
      end
      object pnlTop: TPanel
        Left = 0
        Top = 0
        Width = 668
        Height = 29
        Align = alTop
        TabOrder = 1
        DesignSize = (
          668
          29)
        object lblFilterVariantName: TLabel
          Left = 8
          Top = 7
          Width = 87
          Height = 13
          Caption = #1048#1084#1077' '#1085#1072' '#1074#1072#1088#1080#1072#1085#1090#1072
        end
        object cbFilterVariantName: TDBComboBox
          Left = 102
          Top = 4
          Width = 248
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          AutoComplete = False
          DataField = 'FILTER_VARIANT_NAME'
          DataSource = dsData
          TabOrder = 0
        end
        object chkShowAllFields: TCheckBox
          Left = 368
          Top = 7
          Width = 182
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1055#1086#1082#1072#1078#1080' '#1074#1089#1080#1095#1082#1080' '#1087#1086#1083#1077#1090#1072' (hidden)'
          TabOrder = 1
          Visible = False
        end
      end
      object pnlTopSeparator: TPanel
        Left = 0
        Top = 29
        Width = 668
        Height = 5
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 4
      end
    end
  end
  inherited dsGridData: TDataSource
    OnDataChange = dsGridDataDataChange
    Left = 56
    Top = 136
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    OnCalcFields = cdsGridDataCalcFields
    OnFilterRecord = cdsGridDataFilterRecord
    Left = 24
    Top = 136
    object cdsGridDataFILTER_CODE: TAbmesFloatField
      FieldName = 'FILTER_CODE'
    end
    object cdsGridDataFILTER_VARIANT_CODE: TAbmesFloatField
      FieldName = 'FILTER_VARIANT_CODE'
    end
    object cdsGridDataFILTER_VARIANT_FIELD_CODE: TAbmesFloatField
      FieldName = 'FILTER_VARIANT_FIELD_CODE'
    end
    object cdsGridDataFIELD_NAME: TAbmesWideStringField
      FieldName = 'FIELD_NAME'
      Size = 100
    end
    object cdsGridDataFIELD_DISPLAY_LABEL: TAbmesWideStringField
      FieldName = 'FIELD_DISPLAY_LABEL'
      ProviderFlags = []
      Size = 100
    end
    object cdsGridDataFIELD_TYPE: TAbmesFloatField
      FieldName = 'FIELD_TYPE'
      ProviderFlags = []
      FieldValueType = fvtInteger
    end
    object cdsGridDataIS_FIELD_EMPTY: TAbmesFloatField
      FieldName = 'IS_FIELD_EMPTY'
      ProviderFlags = []
      OnChange = cdsGridDataIS_FIELD_EMPTYChange
      FieldValueType = fvtBoolean
    end
    object cdsGridDataVALUE_AS_NUMBER: TAbmesFloatField
      FieldName = 'VALUE_AS_NUMBER'
    end
    object cdsGridDataVALUE_AS_STRING: TAbmesWideStringField
      FieldName = 'VALUE_AS_STRING'
      Size = 4000
    end
    object cdsGridDataTIME_UNIT_COUNT: TAbmesFloatField
      DisplayLabel = #1054#1090#1084#1077#1089#1090#1074#1072#1085#1077' '#1089#1087#1088#1103#1084#1086' '#1076#1085#1077#1096#1085#1072' '#1076#1072#1090#1072
      FieldName = 'TIME_UNIT_COUNT'
    end
    object cdsGridDataTIME_UNIT_CODE: TAbmesFloatField
      DisplayLabel = #1042#1088#1077#1084#1077#1074#1072' '#1077#1076#1080#1085#1080#1094#1072
      FieldName = 'TIME_UNIT_CODE'
    end
    object cdsGridDataTIME_UNIT_POSITION: TAbmesFloatField
      DisplayLabel = #1055#1086#1087#1072#1076#1077#1085#1080#1077' '#1074' '#1087#1077#1088#1080#1086#1076#1072
      FieldName = 'TIME_UNIT_POSITION'
    end
    object cdsGridDataTIME_UNIT_READ_ONLY: TAbmesFloatField
      FieldName = 'TIME_UNIT_READ_ONLY'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataSAVE_FIELD: TAbmesFloatField
      FieldName = 'SAVE_FIELD'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataHAS_DEFAULT_VALUE: TAbmesFloatField
      FieldName = 'HAS_DEFAULT_VALUE'
      DisplayBoolValues = ';'#1062
      FieldValueType = fvtBoolean
    end
    object cdsGridDataDEPENDS_ON_FIELD_NAME: TAbmesWideStringField
      FieldName = 'DEPENDS_ON_FIELD_NAME'
      Size = 100
    end
    object cdsGridData_FIELD_DISPLAY_LABEL: TAbmesWideStringField
      FieldKind = fkInternalCalc
      FieldName = '_FIELD_DISPLAY_LABEL'
      ProviderFlags = []
      Size = 100
    end
    object cdsGridData_TIME_UNIT_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_TIME_UNIT_NAME'
      LookupDataSet = cdsTimeUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'THE_DATE_UNIT_NAME'
      KeyFields = 'TIME_UNIT_CODE'
      Lookup = True
    end
    object cdsGridData_HAS_MODIFIED_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_HAS_MODIFIED_VALUE'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
      Calculated = True
    end
    object cdsGridData_MAX_SAVE_FIELD: TAggregateField
      FieldName = '_MAX_SAVE_FIELD'
      Active = True
      Expression = 'Max(SAVE_FIELD)'
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 24
    Top = 168
  end
  inherited dsGridDataParams: TDataSource
    Left = 56
    Top = 168
  end
  inherited dsData: TDataSource
    Left = 56
    Top = 104
  end
  inherited cdsData: TAbmesClientDataSet
    Params = <
      item
        DataType = ftWideString
        Name = 'FILTER_FORM_NAME'
        ParamType = ptInput
      end>
    Left = 24
    Top = 104
  end
  object cdsTimeUnits: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvDateUnits'
    Left = 468
    Top = 96
    object cdsTimeUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'THE_DATE_UNIT_CODE'
    end
    object cdsTimeUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'THE_DATE_UNIT_NAME'
      Size = 50
    end
  end
  object dsTimeUnits: TDataSource
    DataSet = cdsTimeUnits
    Left = 500
    Top = 96
  end
end
