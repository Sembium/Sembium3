inherited fmCompanyRepresentatives: TfmCompanyRepresentatives
  Left = 213
  Top = 272
  ActiveControl = btnAddData
  Caption = #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1080
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
            FieldName = 'NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1048#1084#1077
            Width = 195
          end
          item
            EditButtons = <>
            FieldName = 'OCCUPATION'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090
            Width = 149
          end
          item
            EditButtons = <>
            FieldName = 'OFFICE_NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1058#1055' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088
            Width = 318
          end>
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 48
    Top = 176
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
        Name = 'REPRESENTATIVE_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'OFFICE_COMPANY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'OFFICE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'FIRST_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'MIDDLE_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'LAST_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'OCCUPATION'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'EGN'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'MALE'
        DataType = ftFloat
      end
      item
        Name = 'LANGUAGE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'NAME'
        DataType = ftWideString
        Size = 41
      end
      item
        Name = 'OFFICE_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'I_FIRST_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'I_MIDDLE_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'I_LAST_NAME'
        DataType = ftWideString
        Size = 20
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCompanyRepresentatives'
    AfterClose = cdsGridDataAfterClose
    BeforePost = cdsGridDataBeforePost
    OnCalcFields = cdsGridDataCalcFields
    OnNewRecord = cdsGridDataNewRecord
    Left = 16
    Top = 176
    object cdsGridDataCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsGridDataREPRESENTATIVE_CODE: TAbmesFloatField
      FieldName = 'REPRESENTATIVE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataOFFICE_COMPANY_CODE: TAbmesFloatField
      FieldName = 'OFFICE_COMPANY_CODE'
    end
    object cdsGridDataOFFICE_CODE: TAbmesFloatField
      FieldName = 'OFFICE_CODE'
      OnChange = cdsGridDataOFFICE_CODEChange
    end
    object cdsGridDataFIRST_NAME: TAbmesWideStringField
      DisplayLabel = #1048#1084#1077
      FieldName = 'FIRST_NAME'
      OnChange = cdsGridDataFirstOrLastNameChange
      Size = 50
    end
    object cdsGridDataMIDDLE_NAME: TAbmesWideStringField
      DisplayLabel = #1055#1088#1077#1079#1080#1084#1077
      FieldName = 'MIDDLE_NAME'
      Size = 50
    end
    object cdsGridDataLAST_NAME: TAbmesWideStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      FieldName = 'LAST_NAME'
      OnChange = cdsGridDataFirstOrLastNameChange
      Size = 50
    end
    object cdsGridDataOCCUPATION: TAbmesWideStringField
      FieldName = 'OCCUPATION'
      Size = 50
    end
    object cdsGridDataEGN: TAbmesWideStringField
      FieldName = 'EGN'
      Size = 10
    end
    object cdsGridDataMALE: TAbmesFloatField
      FieldName = 'MALE'
      Required = True
      DisplayBoolValues = #1052#1098#1078#1082#1080';'#1046#1077#1085#1089#1082#1080
      FieldValueType = fvtBoolean
    end
    object cdsGridDataLANGUAGE_CODE: TAbmesFloatField
      FieldName = 'LANGUAGE_CODE'
    end
    object cdsGridData_OFFICE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_OFFICE_NAME'
      LookupDataSet = cdsCompanyOffices
      LookupKeyFields = 'OFFICE_CODE'
      LookupResultField = 'OFFICE_NAME'
      KeyFields = 'OFFICE_CODE'
      Size = 50
      Lookup = True
    end
    object cdsGridData_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_NAME'
      Size = 50
      Calculated = True
    end
    object cdsGridData_LANGUAGE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_LANGUAGE_NAME'
      LookupDataSet = cdsLanguages
      LookupKeyFields = 'LANGUAGE_CODE'
      LookupResultField = 'LANGUAGE_NAME'
      KeyFields = 'LANGUAGE_CODE'
      Size = 50
      Lookup = True
    end
    object cdsGridDataNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 255
    end
    object cdsGridDataOFFICE_NAME: TAbmesWideStringField
      FieldName = 'OFFICE_NAME'
      Size = 50
    end
    object cdsGridDataI_FIRST_NAME: TAbmesWideStringField
      DisplayLabel = 'First name'
      FieldName = 'I_FIRST_NAME'
      Size = 50
    end
    object cdsGridDataI_MIDDLE_NAME: TAbmesWideStringField
      DisplayLabel = 'Middle name'
      FieldName = 'I_MIDDLE_NAME'
      Size = 50
    end
    object cdsGridDataI_LAST_NAME: TAbmesWideStringField
      DisplayLabel = 'Last name'
      FieldName = 'I_LAST_NAME'
      Size = 50
    end
  end
  inherited alActions: TActionList
    Left = 16
    Top = 240
    inherited actForm: TAction
      Caption = ''
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 16
    Top = 208
  end
  inherited dsGridDataParams: TDataSource
    Left = 48
    Top = 208
  end
  inherited dsData: TDataSource
    Left = 48
    Top = 144
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 16
    Top = 144
  end
  object cdsCompanyOffices: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompanies
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCompanyOffices'
    Left = 120
    Top = 240
    object cdsCompanyOfficesCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
      Required = True
    end
    object cdsCompanyOfficesOFFICE_CODE: TAbmesFloatField
      FieldName = 'OFFICE_CODE'
    end
    object cdsCompanyOfficesOFFICE_NAME: TAbmesWideStringField
      FieldName = 'OFFICE_NAME'
      Required = True
      Size = 50
    end
    object cdsCompanyOfficesCOUNTRY_CODE: TAbmesFloatField
      FieldName = 'COUNTRY_CODE'
    end
    object cdsCompanyOfficesSTATE: TAbmesWideStringField
      FieldName = 'STATE'
      Size = 50
    end
    object cdsCompanyOfficesREGION: TAbmesWideStringField
      FieldName = 'REGION'
      Size = 50
    end
    object cdsCompanyOfficesZIP: TAbmesWideStringField
      FieldName = 'ZIP'
    end
    object cdsCompanyOfficesCITY: TAbmesWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object cdsCompanyOfficesADDRESS: TAbmesWideStringField
      FieldName = 'ADDRESS'
      Size = 250
    end
  end
  object cdsLanguages: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvLanguages'
    Left = 152
    Top = 240
    object cdsLanguagesLANGUAGE_CODE: TAbmesFloatField
      FieldName = 'LANGUAGE_CODE'
      Required = True
    end
    object cdsLanguagesLANGUAGE_NAME: TAbmesWideStringField
      FieldName = 'LANGUAGE_NAME'
      Required = True
      Size = 50
    end
  end
end
