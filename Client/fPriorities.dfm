inherited fmPriorities: TfmPriorities
  Left = 392
  Top = 226
  Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090#1080
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
            FieldName = 'PRIORITY_NO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'PRIORITY_NAME'
            Footers = <>
            Width = 283
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = '_PRIORITY_COLOR'
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
        Name = 'PRIORITY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRIORITY_NO'
        DataType = ftFloat
      end
      item
        Name = 'PRIORITY_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'PRIORITY_COLOR'
        DataType = ftFloat
      end
      item
        Name = 'PRIORITY_BACKGROUND_COLOR'
        DataType = ftFloat
      end>
    ProviderName = 'prvPriorities'
    OnCalcFields = cdsGridDataCalcFields
    object cdsGridDataPRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'PRIORITY_CODE'
      MaxValue = 999.000000000000000000
      MinValue = 1.000000000000000000
    end
    object cdsGridDataPRIORITY_NO: TAbmesFloatField
      DisplayLabel = 'No'
      FieldName = 'PRIORITY_NO'
      Required = True
    end
    object cdsGridDataPRIORITY_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'PRIORITY_NAME'
      Required = True
      Size = 50
    end
    object cdsGridDataPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object cdsGridDataPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
    object cdsGridData_PRIORITY_COLOR: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_PRIORITY_COLOR'
      Size = 1
      Calculated = True
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090#1080
    end
  end
end
