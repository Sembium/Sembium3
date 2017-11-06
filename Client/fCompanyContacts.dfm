inherited fmCompanyContacts: TfmCompanyContacts
  Left = 306
  Top = 218
  ActiveControl = btnAddData
  Caption = #1050#1086#1084#1091#1085#1080#1082#1072#1094#1080#1103
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
            FieldName = 'CONTACT_TYPE_NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1042#1080#1076
            Width = 108
          end
          item
            EditButtons = <>
            FieldName = 'CONTACT_TEXT'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1094#1080#1103
            Width = 192
          end
          item
            EditButtons = <>
            FieldName = 'OFFICE_NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1058#1055
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = '_REPRESENTATIVE_NAME'
            Footers = <>
            LookupParams.LookupCache = False
            Title.Alignment = taCenter
            Title.Caption = #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = '_OCCUPATION'
            Footers = <>
            LookupParams.LookupCache = False
            Title.Alignment = taCenter
            Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090
            Width = 120
          end>
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 48
    Top = 216
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
        Name = 'CONTACT_CODE'
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
        Name = 'REPRESENTATIVE_COMPANY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'REPRESENTATIVE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CONTACT_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CONTACT_TEXT'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'NOTES'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'OFFICE_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'CONTACT_TYPE_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'REPRESENTATIVE_NAME'
        DataType = ftWideString
        Size = 41
      end
      item
        Name = 'OCCUPATION'
        DataType = ftWideString
        Size = 50
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCompanyContacts'
    AfterClose = cdsGridDataAfterClose
    OnCalcFields = cdsGridDataCalcFields
    OnNewRecord = cdsGridDataNewRecord
    Left = 16
    Top = 216
    object cdsGridDataCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
      Required = True
    end
    object cdsGridDataCONTACT_CODE: TAbmesFloatField
      FieldName = 'CONTACT_CODE'
    end
    object cdsGridDataOFFICE_COMPANY_CODE: TAbmesFloatField
      FieldName = 'OFFICE_COMPANY_CODE'
    end
    object cdsGridDataOFFICE_CODE: TAbmesFloatField
      FieldName = 'OFFICE_CODE'
      OnChange = cdsGridDataOFFICE_CODEChange
    end
    object cdsGridDataREPRESENTATIVE_COMPANY_CODE: TAbmesFloatField
      FieldName = 'REPRESENTATIVE_COMPANY_CODE'
    end
    object cdsGridDataREPRESENTATIVE_CODE: TAbmesFloatField
      FieldName = 'REPRESENTATIVE_CODE'
      OnChange = cdsGridDataREPRESENTATIVE_CODEChange
    end
    object cdsGridDataCONTACT_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1080#1076' '#1089#1088#1077#1076#1074#1089#1090#1074#1086' '#1079#1072' '#1082#1086#1084#1091#1085#1080#1082#1072#1094#1080#1103
      FieldName = 'CONTACT_TYPE_CODE'
      Required = True
    end
    object cdsGridDataCONTACT_TEXT: TAbmesWideStringField
      DisplayLabel = #1057#1088#1077#1076#1089#1090#1074#1086' '#1079#1072' '#1082#1086#1084#1091#1085#1080#1082#1072#1094#1080#1103
      FieldName = 'CONTACT_TEXT'
      Required = True
      Size = 50
    end
    object cdsGridDataNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 50
    end
    object cdsGridData_CONTACT_TYPE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_CONTACT_TYPE_NAME'
      LookupDataSet = cdsContactTypes
      LookupKeyFields = 'CONTACT_TYPE_CODE'
      LookupResultField = 'CONTACT_TYPE_NAME'
      KeyFields = 'CONTACT_TYPE_CODE'
      Size = 50
      Lookup = True
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
    object cdsGridData_REPRESENTATIVE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_REPRESENTATIVE_NAME'
      LookupDataSet = cdsCompanyRepresentatives
      LookupKeyFields = 'REPRESENTATIVE_CODE'
      LookupResultField = 'NAME'
      KeyFields = 'REPRESENTATIVE_CODE'
      Size = 50
      Lookup = True
    end
    object cdsGridDataOFFICE_NAME: TAbmesWideStringField
      FieldName = 'OFFICE_NAME'
      Size = 50
    end
    object cdsGridDataCONTACT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'CONTACT_TYPE_NAME'
    end
    object cdsGridData_OCCUPATION: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_OCCUPATION'
      LookupDataSet = cdsCompanyRepresentatives
      LookupKeyFields = 'REPRESENTATIVE_CODE'
      LookupResultField = 'OCCUPATION'
      KeyFields = 'REPRESENTATIVE_CODE'
      Size = 50
      Lookup = True
    end
    object cdsGridData_COMPANY_CLASS_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_COMPANY_CLASS_CODE'
      Calculated = True
    end
  end
  inherited alActions: TActionList
    Left = 16
    Top = 280
    inherited actForm: TAction
      Caption = ''
    end
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
  object cdsContactTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvContactTypes'
    Left = 112
    Top = 248
    object cdsContactTypesCONTACT_TYPE_CODE: TAbmesFloatField
      FieldName = 'CONTACT_TYPE_CODE'
    end
    object cdsContactTypesCONTACT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'CONTACT_TYPE_NAME'
    end
  end
  object cdsCompanyRepresentatives: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompanies
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCompanyRepresentatives'
    Left = 144
    Top = 248
    object cdsCompanyRepresentativesCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
      Required = True
    end
    object cdsCompanyRepresentativesREPRESENTATIVE_CODE: TAbmesFloatField
      FieldName = 'REPRESENTATIVE_CODE'
      Required = True
    end
    object cdsCompanyRepresentativesOFFICE_COMPANY_CODE: TAbmesFloatField
      FieldName = 'OFFICE_COMPANY_CODE'
    end
    object cdsCompanyRepresentativesOFFICE_CODE: TAbmesFloatField
      FieldName = 'OFFICE_CODE'
    end
    object cdsCompanyRepresentativesFIRST_NAME: TAbmesWideStringField
      FieldName = 'FIRST_NAME'
      Size = 50
    end
    object cdsCompanyRepresentativesMIDDLE_NAME: TAbmesWideStringField
      FieldName = 'MIDDLE_NAME'
      Size = 50
    end
    object cdsCompanyRepresentativesLAST_NAME: TAbmesWideStringField
      FieldName = 'LAST_NAME'
      Size = 50
    end
    object cdsCompanyRepresentativesOCCUPATION: TAbmesWideStringField
      FieldName = 'OCCUPATION'
      Size = 50
    end
    object cdsCompanyRepresentativesEGN: TAbmesWideStringField
      FieldName = 'EGN'
      Size = 10
    end
    object cdsCompanyRepresentativesMALE: TAbmesFloatField
      FieldName = 'MALE'
    end
    object cdsCompanyRepresentativesLANGUAGE_CODE: TAbmesFloatField
      FieldName = 'LANGUAGE_CODE'
    end
    object cdsCompanyRepresentativesNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 255
    end
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
    Left = 176
    Top = 248
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
end
