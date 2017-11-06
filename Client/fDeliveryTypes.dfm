inherited fmDeliveryTypes: TfmDeliveryTypes
  Caption = #1042#1080#1076#1086#1074#1077' '#1054#1055#1044
  ClientHeight = 349
  ClientWidth = 548
  ExplicitWidth = 554
  ExplicitHeight = 374
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 314
    Width = 548
    ExplicitTop = 314
    ExplicitWidth = 548
    inherited pnlOKCancel: TPanel
      Left = 280
      Visible = False
      ExplicitLeft = 280
    end
    inherited pnlClose: TPanel
      Left = 191
      Visible = True
      ExplicitLeft = 191
    end
    inherited pnlApply: TPanel
      Left = 459
      Visible = False
      ExplicitLeft = 459
    end
  end
  inherited pnlMain: TPanel
    Width = 548
    Height = 314
    ExplicitWidth = 548
    ExplicitHeight = 314
    inherited pnlGrid: TPanel
      Width = 532
      Height = 298
      ExplicitWidth = 532
      ExplicitHeight = 298
      inherited pnlNavigator: TPanel
        Width = 532
        ExplicitWidth = 532
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
        Width = 532
        Height = 274
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DELIVERY_TYPE_CODE'
            Footers = <>
            Width = 69
          end
          item
            EditButtons = <>
            FieldName = 'DELIVERY_TYPE_ABBREV'
            Footers = <>
            Width = 99
          end
          item
            EditButtons = <>
            FieldName = 'DESCRIPTION'
            Footers = <>
            Width = 329
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    FieldDefs = <
      item
        Name = 'DELIVERY_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DELIVERY_TYPE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'DESCRIPTION'
        DataType = ftWideString
        Size = 50
      end>
    ProviderName = 'prvDeliveryTypes'
    ConnectionBroker = dmMain.conDeliveries
    object cdsGridDataDELIVERY_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'DELIVERY_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsGridDataDELIVERY_TYPE_ABBREV: TAbmesWideStringField
      DisplayLabel = #1040#1073#1088#1077#1074#1080#1072#1090#1091#1088#1072
      FieldName = 'DELIVERY_TYPE_ABBREV'
      Required = True
      Size = 5
    end
    object cdsGridDataDESCRIPTION: TAbmesWideStringField
      DisplayLabel = #1054#1087#1080#1089#1072#1085#1080#1077
      FieldName = 'DESCRIPTION'
      Required = True
      Size = 50
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1042#1080#1076#1086#1074#1077' '#1054#1055#1044
    end
  end
end
