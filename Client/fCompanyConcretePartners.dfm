inherited fmCompanyConcretePartners: TfmCompanyConcretePartners
  Caption = #1055#1088#1080#1086#1073#1097#1077#1085#1080
  ClientWidth = 829
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Width = 829
    Visible = False
    inherited pnlOKCancel: TPanel
      Left = 561
    end
    inherited pnlClose: TPanel
      Left = 472
    end
    inherited pnlApply: TPanel
      Left = 740
    end
  end
  inherited pnlMain: TPanel
    Width = 829
    inherited pnlGrid: TPanel
      Width = 813
      Height = 310
      inherited pnlNavigator: TPanel
        Width = 813
        Visible = False
        inherited pnlFilterButton: TPanel
          Left = 168
        end
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 192
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 813
        Height = 286
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'COMPANY_STATUS_CODE'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1057#1090#1072#1090#1091#1089
            Width = 122
          end
          item
            EditButtons = <>
            FieldName = 'COMPANY_CLASS_ABBREV'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1050#1083#1072#1089
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = 'COMPANY_NO'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1050#1086#1076
            Width = 95
          end
          item
            EditButtons = <>
            FieldName = 'SHORT_NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 265
          end
          item
            EditButtons = <>
            FieldName = 'COUNTRY_NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1044#1098#1088#1078#1072#1074#1072
            Width = 107
          end
          item
            EditButtons = <>
            FieldName = 'CITY'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1089#1077#1083#1077#1085#1086' '#1084#1103#1089#1090#1086
            Width = 114
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    FieldDefs = <
      item
        Name = 'COMPANY_STATUS_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'COMPANY_NO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'COMPANY_CLASS_ABBREV'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'SHORT_NAME'
        DataType = ftWideString
        Size = 44
      end
      item
        Name = 'COUNTRY_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'CITY'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'COMPANY_STATUS_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BASE_ROLE_CODE'
        DataType = ftFloat
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCompanyConcretePartners'
    ConnectionBroker = dmMain.conCompanies
    object cdsGridDataCOMPANY_STATUS_CODE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'COMPANY_STATUS_CODE'
      OnGetText = cdsGridDataCOMPANY_STATUS_CODEGetText
    end
    object cdsGridDataCOMPANY_STATUS_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_STATUS_NAME'
      Size = 100
    end
    object cdsGridDataBASE_ROLE_CODE: TAbmesFloatField
      FieldName = 'BASE_ROLE_CODE'
    end
    object cdsGridDataCOMPANY_NO: TAbmesFloatField
      FieldName = 'COMPANY_NO'
      Required = True
    end
    object cdsGridDataCOMPANY_CLASS_ABBREV: TAbmesWideStringField
      FieldName = 'COMPANY_CLASS_ABBREV'
      Size = 100
    end
    object cdsGridDataSHORT_NAME: TAbmesWideStringField
      FieldName = 'SHORT_NAME'
      Size = 44
    end
    object cdsGridDataCOUNTRY_NAME: TAbmesWideStringField
      FieldName = 'COUNTRY_NAME'
      Size = 50
    end
    object cdsGridDataCITY: TAbmesWideStringField
      FieldName = 'CITY'
      Size = 50
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1055#1088#1080#1086#1073#1097#1077#1085#1080
    end
  end
end
