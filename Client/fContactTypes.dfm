inherited fmContactTypes: TfmContactTypes
  Caption = #1042#1080#1076#1086#1074#1077' '#1089#1088#1077#1076#1089#1090#1074#1072' '#1079#1072' '#1082#1086#1084#1091#1085#1080#1082#1072#1094#1080#1103
  ClientHeight = 349
  ClientWidth = 439
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 314
    Width = 439
    inherited pnlOKCancel: TPanel
      Left = 171
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 82
      Caption = '\'
      TabStop = True
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 350
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 439
    Height = 314
    inherited pnlGrid: TPanel
      Width = 423
      Height = 298
      inherited pnlNavigator: TPanel
        Width = 423
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 423
        Height = 274
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CONTACT_TYPE_CODE'
            Footers = <>
            Title.Alignment = taCenter
          end
          item
            EditButtons = <>
            FieldName = 'CONTACT_TYPE_NAME'
            Footers = <>
            Title.Alignment = taCenter
            Width = 324
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conCommon
    FieldDefs = <
      item
        Name = 'CONTACT_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CONTACT_TYPE_NAME'
        DataType = ftWideString
        Size = 20
      end>
    ProviderName = 'prvContactTypes'
    object cdsGridDataCONTACT_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'CONTACT_TYPE_CODE'
      Required = True
    end
    object cdsGridDataCONTACT_TYPE_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'CONTACT_TYPE_NAME'
      Required = True
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1042#1080#1076#1086#1074#1077' '#1089#1088#1077#1076#1089#1090#1074#1072' '#1079#1072' '#1082#1086#1084#1091#1085#1080#1082#1072#1094#1080#1103
    end
  end
end
