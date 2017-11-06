inherited fmCustomhouses: TfmCustomhouses
  Left = 217
  Top = 105
  Caption = #1052#1080#1090#1085#1080#1094#1080
  ClientWidth = 439
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Width = 439
    inherited pnlOKCancel: TPanel
      Left = 171
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 82
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 350
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 439
    inherited pnlGrid: TPanel
      Width = 423
      inherited pnlNavigator: TPanel
        Width = 423
        inherited pnlFilterButton: TPanel
          Visible = False
        end
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 423
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CUSTOMHOUSE_CODE'
            Footers = <>
            Title.Alignment = taCenter
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = 'CUSTOMHOUSE_NAME'
            Footers = <>
            Title.Alignment = taCenter
            Width = 318
          end>
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 56
    Top = 232
  end
  inherited cdsGridData: TAbmesClientDataSet
    ProviderName = 'prvCustomhouses'
    ConnectionBroker = dmMain.conCommon
    Left = 24
    Top = 232
    object cdsGridDataCUSTOMHOUSE_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'CUSTOMHOUSE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsGridDataCUSTOMHOUSE_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'CUSTOMHOUSE_NAME'
      Required = True
      Size = 50
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 24
    Top = 264
  end
  inherited dsGridDataParams: TDataSource
    Left = 56
    Top = 264
  end
  inherited dsData: TDataSource
    Left = 56
    Top = 200
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 24
    Top = 200
  end
end
