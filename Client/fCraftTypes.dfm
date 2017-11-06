inherited fmCraftTypes: TfmCraftTypes
  Caption = #1050#1083#1072#1089#1080#1092#1080#1082#1072#1094#1080#1086#1085#1085#1080' '#1043#1088#1091#1087#1080' '#1055#1088#1086#1092#1077#1089#1080#1080
  ClientHeight = 349
  ClientWidth = 438
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 314
    Width = 438
    inherited pnlOKCancel: TPanel
      Left = 170
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 81
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 349
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 438
    Height = 314
    inherited pnlGrid: TPanel
      Width = 422
      Height = 298
      inherited pnlNavigator: TPanel
        Width = 422
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 422
        Height = 274
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CRAFT_TYPE_CODE'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CRAFT_TYPE_NAME'
            Footers = <>
            Width = 324
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    FieldDefs = <
      item
        Name = 'CRAFT_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CRAFT_TYPE_NAME'
        DataType = ftWideString
        Size = 50
      end>
    ProviderName = 'prvCraftTypes'
    ConnectionBroker = dmMain.conHumanResource
    object cdsGridDataCRAFT_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'CRAFT_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsGridDataCRAFT_TYPE_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'CRAFT_TYPE_NAME'
      Required = True
      Size = 50
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1050#1083#1072#1089#1080#1092#1080#1082#1072#1094#1080#1086#1085#1085#1080' '#1043#1088#1091#1087#1080' '#1055#1088#1086#1092#1077#1089#1080#1080
    end
  end
end
