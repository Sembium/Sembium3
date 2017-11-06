inherited fmPrecisionLevels: TfmPrecisionLevels
  Caption = #1053#1080#1074#1072' '#1085#1072' '#1058#1086#1095#1085#1086#1089#1090
  ClientHeight = 367
  ClientWidth = 456
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 332
    Width = 456
    inherited pnlOKCancel: TPanel
      Left = 188
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 99
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 367
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 456
    Height = 332
    inherited pnlGrid: TPanel
      Width = 440
      Height = 316
      inherited pnlNavigator: TPanel
        Width = 440
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 440
        Height = 292
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'PRECISION_LEVEL_NO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'PRECISION_LEVEL_NAME'
            Footers = <>
            Width = 283
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = '_PRECISION_LEVEL_COLOR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            Footers = <>
            Title.Caption = #1062#1074#1103#1090'/'#1060#1086#1085
            Width = 58
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conCommon
    FieldDefs = <
      item
        Name = 'PRECISION_LEVEL_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRECISION_LEVEL_NO'
        DataType = ftFloat
      end
      item
        Name = 'PRECISION_LEVEL_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'COLOR'
        DataType = ftFloat
      end
      item
        Name = 'BACKGROUND_COLOR'
        DataType = ftFloat
      end>
    ProviderName = 'prvPrecisionLevels'
    OnCalcFields = cdsGridDataCalcFields
    object cdsGridDataPRECISION_LEVEL_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'PRECISION_LEVEL_CODE'
      MaxValue = 999.000000000000000000
      MinValue = 1.000000000000000000
    end
    object cdsGridDataPRECISION_LEVEL_NO: TAbmesFloatField
      DisplayLabel = 'No'
      FieldName = 'PRECISION_LEVEL_NO'
      Required = True
    end
    object cdsGridDataPRECISION_LEVEL_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'PRECISION_LEVEL_NAME'
      Required = True
      Size = 50
    end
    object cdsGridDataCOLOR: TAbmesFloatField
      FieldName = 'COLOR'
    end
    object cdsGridDataBACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'BACKGROUND_COLOR'
    end
    object cdsGridData_PRECISION_LEVEL_COLOR: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_PRECISION_LEVEL_COLOR'
      Size = 1
      Calculated = True
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1053#1080#1074#1072' '#1085#1072' '#1058#1086#1095#1085#1086#1089#1090
    end
  end
end
