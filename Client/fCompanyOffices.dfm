inherited fmCompanyOffices: TfmCompanyOffices
  Left = 170
  Top = 137
  Caption = #1058#1055
  ClientHeight = 330
  ClientWidth = 829
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 295
    Width = 829
    Visible = False
    inherited pnlOKCancel: TPanel
      Left = 561
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 472
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 740
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 829
    Height = 295
    inherited pnlGrid: TPanel
      Width = 813
      Height = 279
      inherited pnlNavigator: TPanel
        Width = 813
        Visible = False
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited pnlDataButtons: TPanel
        Left = 698
        Height = 255
      end
      inherited grdData: TAbmesDBGrid
        Width = 698
        Height = 255
        Columns = <
          item
            EditButtons = <>
            FieldName = 'OFFICE_NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1085#1072' '#1058#1055
            Width = 441
          end
          item
            EditButtons = <>
            FieldName = 'CITY'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1089#1077#1083#1077#1085#1086' '#1084#1103#1089#1090#1086
            Width = 222
          end>
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 64
    Top = 232
  end
  inherited cdsGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conCompanies
    FieldDefs = <
      item
        Name = 'COMPANY_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'OFFICE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'OFFICE_NAME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'COUNTRY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STATE'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'REGION'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'ZIP'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'CITY'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'ADDRESS'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'COUNTRY_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'I_OFFICE_NAME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'I_STATE'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'I_REGION'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'I_CITY'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'I_ADDRESS'
        DataType = ftWideString
        Size = 250
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCompanyOffices'
    OnNewRecord = cdsGridDataNewRecord
    Left = 32
    Top = 232
    object cdsGridDataCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataOFFICE_CODE: TAbmesFloatField
      FieldName = 'OFFICE_CODE'
      ProviderFlags = []
    end
    object cdsGridDataOFFICE_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'OFFICE_NAME'
      Required = True
      Size = 50
    end
    object cdsGridDataCOUNTRY_CODE: TAbmesFloatField
      FieldName = 'COUNTRY_CODE'
    end
    object cdsGridDataSTATE: TAbmesWideStringField
      FieldName = 'STATE'
      Size = 50
    end
    object cdsGridDataREGION: TAbmesWideStringField
      FieldName = 'REGION'
      Size = 50
    end
    object cdsGridDataZIP: TAbmesWideStringField
      FieldName = 'ZIP'
    end
    object cdsGridDataCITY: TAbmesWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object cdsGridDataADDRESS: TAbmesWideStringField
      FieldName = 'ADDRESS'
      Size = 250
    end
    object cdsGridDataI_OFFICE_NAME: TAbmesWideStringField
      DisplayLabel = 'Office name'
      FieldName = 'I_OFFICE_NAME'
      Required = True
      Size = 50
    end
    object cdsGridDataI_STATE: TAbmesWideStringField
      FieldName = 'I_STATE'
      Size = 50
    end
    object cdsGridDataI_REGION: TAbmesWideStringField
      FieldName = 'I_REGION'
      Size = 50
    end
    object cdsGridDataI_CITY: TAbmesWideStringField
      FieldName = 'I_CITY'
      Size = 50
    end
    object cdsGridDataI_ADDRESS: TAbmesWideStringField
      FieldName = 'I_ADDRESS'
      Size = 250
    end
  end
  inherited alActions: TActionList
    Left = 96
    Top = 264
    inherited actForm: TAction
      Caption = #1054#1092#1080#1089#1080
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 32
    Top = 264
  end
  inherited dsGridDataParams: TDataSource
    Left = 64
    Top = 264
  end
  inherited dsData: TDataSource
    Left = 64
    Top = 200
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 32
    Top = 200
  end
end
