inherited fmShipmentTypes: TfmShipmentTypes
  Left = 231
  Top = 131
  Caption = #1058#1098#1088#1075#1086#1074#1089#1082#1080' '#1050#1086#1076#1086#1074#1077
  ClientHeight = 331
  ClientWidth = 656
  ExplicitWidth = 662
  ExplicitHeight = 356
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 296
    Width = 656
    ExplicitTop = 296
    ExplicitWidth = 656
    inherited pnlOKCancel: TPanel
      Left = 388
      Visible = False
      ExplicitLeft = 388
    end
    inherited pnlClose: TPanel
      Left = 299
      Visible = True
      ExplicitLeft = 299
    end
    inherited pnlApply: TPanel
      Left = 567
      Visible = False
      ExplicitLeft = 567
    end
  end
  inherited pnlMain: TPanel
    Width = 656
    Height = 296
    ExplicitWidth = 656
    ExplicitHeight = 296
    inherited pnlGrid: TPanel
      Width = 640
      Height = 280
      ExplicitWidth = 640
      ExplicitHeight = 280
      inherited pnlNavigator: TPanel
        Width = 640
        ExplicitWidth = 640
        inherited pnlFilterButton: TPanel
          Left = 168
          Visible = False
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
        Width = 640
        Height = 256
        Columns = <
          item
            EditButtons = <>
            FieldName = 'SHIPMENT_TYPE_CODE'
            Footers = <>
            Title.Alignment = taCenter
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'SHIPMENT_TYPE_ABBREV'
            Footers = <>
            Title.Alignment = taCenter
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = 'SHIPMENT_TYPE_NAME'
            Footers = <>
            Title.Alignment = taCenter
            Width = 155
          end
          item
            EditButtons = <>
            FieldName = 'NOTES'
            Footers = <>
            Title.Alignment = taCenter
            Width = 335
          end>
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 48
    Top = 224
  end
  inherited cdsGridData: TAbmesClientDataSet
    ProviderName = 'prvShipmentTypes'
    ConnectionBroker = dmMain.conCommon
    Left = 16
    Top = 224
    object cdsGridDataSHIPMENT_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'SHIPMENT_TYPE_CODE'
      Required = True
    end
    object cdsGridDataSHIPMENT_TYPE_ABBREV: TAbmesWideStringField
      DisplayLabel = #1040#1073#1088#1077#1074'.'
      FieldName = 'SHIPMENT_TYPE_ABBREV'
      Required = True
      Size = 5
    end
    object cdsGridDataSHIPMENT_TYPE_NAME: TAbmesWideStringField
      DisplayLabel = #1058#1077#1088#1084#1080#1085
      FieldName = 'SHIPMENT_TYPE_NAME'
      Size = 50
    end
    object cdsGridDataNOTES: TAbmesWideStringField
      DisplayLabel = #1047#1085#1072#1095#1077#1085#1080#1077
      FieldName = 'NOTES'
      Size = 250
    end
  end
  inherited alActions: TActionList
    Top = 296
    inherited actForm: TAction
      Caption = #1058#1098#1088#1075#1086#1074#1089#1082#1080' '#1050#1086#1076#1086#1074#1077
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 16
    Top = 256
  end
  inherited dsGridDataParams: TDataSource
    Left = 48
    Top = 256
  end
  inherited dsData: TDataSource
    Left = 48
    Top = 192
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 16
    Top = 192
  end
end
