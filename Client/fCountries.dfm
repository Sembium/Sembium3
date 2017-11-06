inherited fmCountries: TfmCountries
  Left = 307
  Top = 141
  Caption = #1044#1098#1088#1078#1072#1074#1080
  ClientHeight = 331
  ClientWidth = 439
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 296
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
    Height = 296
    inherited pnlGrid: TPanel
      Width = 423
      Height = 280
      inherited pnlNavigator: TPanel
        Width = 423
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 423
        Height = 256
        Columns = <
          item
            EditButtons = <>
            FieldName = 'COUNTRY_CODE'
            Footers = <>
            Title.Alignment = taCenter
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'COUNTRY_ABBREV'
            Footers = <>
            Title.Alignment = taCenter
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'COUNTRY_NAME'
            Footers = <>
            Title.Alignment = taCenter
            Width = 283
          end>
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 48
    Top = 216
  end
  inherited cdsGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conCommon
    FieldDefs = <
      item
        Name = 'COUNTRY_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'COUNTRY_ABBREV'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'COUNTRY_NAME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'I_COUNTRY_ABBREV'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'I_COUNTRY_NAME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 50
      end>
    ProviderName = 'prvCountries'
    Left = 16
    Top = 216
    object cdsGridDataCOUNTRY_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'COUNTRY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsGridDataCOUNTRY_ABBREV: TAbmesWideStringField
      DisplayLabel = #1040#1073#1088#1077#1074'.'
      FieldName = 'COUNTRY_ABBREV'
      Required = True
      Size = 5
    end
    object cdsGridDataCOUNTRY_NAME: TAbmesWideStringField
      DisplayLabel = #1048#1084#1077
      FieldName = 'COUNTRY_NAME'
      Required = True
      Size = 50
    end
    object cdsGridDataI_COUNTRY_ABBREV: TAbmesWideStringField
      DisplayLabel = #1040#1073#1088#1077#1074'.'
      FieldName = 'I_COUNTRY_ABBREV'
      Required = True
      Size = 5
    end
    object cdsGridDataI_COUNTRY_NAME: TAbmesWideStringField
      DisplayLabel = #1048#1084#1077
      FieldName = 'I_COUNTRY_NAME'
      Required = True
      Size = 50
    end
  end
  inherited alActions: TActionList
    Left = 88
    Top = 248
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 16
    Top = 248
  end
  inherited dsGridDataParams: TDataSource
    Left = 48
    Top = 248
  end
  inherited dsData: TDataSource
    Left = 48
    Top = 184
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 16
    Top = 184
  end
end
