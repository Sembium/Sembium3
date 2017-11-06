inherited fmShifts: TfmShifts
  Left = 342
  Top = 243
  Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1057#1084#1077#1085#1080
  ClientHeight = 241
  ClientWidth = 449
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 206
    Width = 449
    inherited pnlOKCancel: TPanel
      Left = 181
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 92
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 360
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 449
    Height = 206
    inherited pnlGrid: TPanel
      Width = 433
      Height = 190
      inherited pnlNavigator: TPanel
        Width = 433
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 433
        Height = 166
        Columns = <
          item
            EditButtons = <>
            FieldName = 'SHIFT_ABBREV'
            Footers = <>
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'SHIFT_NAME'
            Footers = <>
            Width = 359
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'SHIFT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SHIFT_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'SHIFT_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'SHIFT_IDENTIFIER'
        DataType = ftWideString
        Size = 5
      end>
    ProviderName = 'prvShifts'
    ConnectionBroker = dmMain.conShifts
    OnNewRecord = cdsGridDataNewRecord
    object cdsGridDataSHIFT_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataSHIFT_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'SHIFT_NAME'
      Size = 50
    end
    object cdsGridDataSHIFT_ABBREV: TAbmesWideStringField
      DisplayLabel = #1050#1086#1076
      FieldName = 'SHIFT_ABBREV'
      Size = 5
    end
    object cdsGridData_MAX_SHIFT_CODE: TAggregateField
      FieldName = '_MAX_SHIFT_CODE'
      Active = True
      Expression = 'Max(SHIFT_CODE)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1057#1084#1077#1085#1080
    end
  end
end
