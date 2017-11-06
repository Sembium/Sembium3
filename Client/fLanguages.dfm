inherited fmLanguages: TfmLanguages
  Left = 296
  Top = 144
  Caption = #1045#1079#1080#1094#1080
  ClientWidth = 456
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
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
    inherited pnlGrid: TPanel
      Width = 440
      inherited pnlNavigator: TPanel
        Width = 440
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 440
        Columns = <
          item
            EditButtons = <>
            FieldName = 'LANGUAGE_CODE'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'LANGUAGE_NAME'
            Footers = <>
            Width = 342
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    ProviderName = 'prvLanguages'
    ConnectionBroker = dmMain.conCommon
    object cdsGridDataLANGUAGE_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'LANGUAGE_CODE'
      Required = True
    end
    object cdsGridDataLANGUAGE_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'LANGUAGE_NAME'
      Required = True
      Size = 50
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1045#1079#1080#1094#1080
    end
  end
end
