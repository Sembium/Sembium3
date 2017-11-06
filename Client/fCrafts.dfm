inherited fmCrafts: TfmCrafts
  Left = 383
  Top = 204
  Caption = #1055#1088#1086#1092#1077#1089#1080#1080
  ClientHeight = 421
  ClientWidth = 713
  ExplicitWidth = 719
  ExplicitHeight = 446
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 386
    Width = 713
    ExplicitTop = 332
    ExplicitWidth = 440
    inherited pnlOKCancel: TPanel
      Left = 445
      Visible = False
      ExplicitLeft = 172
    end
    inherited pnlClose: TPanel
      Left = 356
      Visible = True
      ExplicitLeft = 83
    end
    inherited pnlApply: TPanel
      Left = 624
      Visible = False
      ExplicitLeft = 351
    end
  end
  inherited pnlMain: TPanel
    Width = 713
    Height = 386
    ExplicitWidth = 440
    ExplicitHeight = 332
    inherited pnlGrid: TPanel
      Width = 697
      Height = 370
      ExplicitWidth = 424
      ExplicitHeight = 316
      inherited pnlNavigator: TPanel
        Width = 697
        ExplicitWidth = 424
        inherited pnlFilterButton: TPanel
          Left = 168
          ExplicitLeft = 168
        end
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 192
          ExplicitLeft = 192
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 697
        Height = 346
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CRAFT_CODE'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CRAFT_NAME'
            Footers = <>
            Width = 308
          end
          item
            EditButtons = <>
            FieldName = '_CRAFT_TYPE_NAME'
            Footers = <>
            Width = 290
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    FieldDefs = <
      item
        Name = 'CRAFT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CRAFT_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'CRAFT_TYPE_CODE'
        DataType = ftFloat
      end>
    ProviderName = 'prvCrafts'
    ConnectionBroker = dmMain.conHumanResource
    object cdsGridDataCRAFT_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'CRAFT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsGridDataCRAFT_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'CRAFT_NAME'
      Required = True
      Size = 50
    end
    object cdsGridDataCRAFT_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1050#1083#1072#1089#1080#1092#1080#1082#1072#1094#1080#1086#1085#1085#1072' '#1043#1088#1091#1087#1072' '#1055#1088#1086#1092#1077#1089#1080#1080
      FieldName = 'CRAFT_TYPE_CODE'
      Required = True
    end
    object cdsGridData_CRAFT_TYPE_NAME: TAbmesWideStringField
      DisplayLabel = #1050#1083#1072#1089#1080#1092#1080#1082#1072#1094#1080#1086#1085#1085#1072' '#1043#1088#1091#1087#1072' '#1055#1088#1086#1092#1077#1089#1080#1080
      FieldKind = fkLookup
      FieldName = '_CRAFT_TYPE_NAME'
      LookupDataSet = cdsCraftTypes
      LookupKeyFields = 'CRAFT_TYPE_CODE'
      LookupResultField = 'CRAFT_TYPE_NAME'
      KeyFields = 'CRAFT_TYPE_CODE'
      Size = 50
      Lookup = True
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1055#1088#1086#1092#1077#1089#1080#1080
    end
  end
  object cdsCraftTypes: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCraftTypes'
    ConnectionBroker = dmMain.conHumanResource
    Left = 104
    Top = 64
    object cdsCraftTypesCRAFT_TYPE_CODE: TAbmesFloatField
      FieldName = 'CRAFT_TYPE_CODE'
    end
    object cdsCraftTypesCRAFT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'CRAFT_TYPE_NAME'
      Size = 50
    end
  end
end
