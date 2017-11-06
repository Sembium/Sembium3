inherited fmCompanyTypes: TfmCompanyTypes
  Caption = #1058#1080#1087#1086#1074#1077' '#1050#1086#1084#1087#1072#1085#1080#1080' - %s'
  ClientHeight = 349
  ExplicitWidth = 543
  ExplicitHeight = 374
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 314
    ExplicitTop = 314
    inherited pnlOKCancel: TPanel
      Visible = False
    end
    inherited pnlClose: TPanel
      Visible = True
    end
    inherited pnlApply: TPanel
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Height = 314
    ExplicitHeight = 314
    inherited pnlGrid: TPanel
      Height = 298
      ExplicitHeight = 298
      inherited pnlNavigator: TPanel
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
        Height = 274
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'COMPANY_TYPE_NO'
            Footers = <>
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'COMPANY_TYPE_ABBREV'
            Footers = <>
            Width = 73
          end
          item
            EditButtons = <>
            FieldName = 'ABBREV_BEFORE'
            Footers = <>
            Width = 82
          end
          item
            EditButtons = <>
            FieldName = 'COMPANY_TYPE_NAME'
            Footers = <>
            Width = 284
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'COMPANY_TYPE_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'COMPANY_TYPE_NO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'COMPANY_TYPE_ABBREV'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'ABBREV_BEFORE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'COMPANY_TYPE_NAME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 100
      end>
    ProviderName = 'prvCompanyTypes'
    ConnectionBroker = dmMain.conCompanies
    OnNewRecord = cdsGridDataNewRecord
    object cdsGridDataCOMPANY_TYPE_CODE: TAbmesFloatField
      FieldName = 'COMPANY_TYPE_CODE'
      Required = True
    end
    object cdsGridDataCOMPANY_TYPE_NO: TAbmesFloatField
      DisplayLabel = 'No'
      FieldName = 'COMPANY_TYPE_NO'
      Required = True
    end
    object cdsGridDataCOMPANY_TYPE_ABBREV: TAbmesWideStringField
      DisplayLabel = #1040#1073#1088#1077#1074#1080#1072#1090#1091#1088#1072
      FieldName = 'COMPANY_TYPE_ABBREV'
      Required = True
      Size = 100
    end
    object cdsGridDataABBREV_BEFORE: TAbmesFloatField
      Alignment = taLeftJustify
      DisplayLabel = #1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1072#1073#1088#1077#1074#1080#1072#1090#1091#1088#1072#1090#1072
      FieldName = 'ABBREV_BEFORE'
      Required = True
      OnGetText = cdsGridDataABBREV_BEFOREGetText
      FieldValueType = fvtBoolean
    end
    object cdsGridDataCOMPANY_TYPE_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'COMPANY_TYPE_NAME'
      Required = True
      Size = 100
    end
    object cdsGridData_MAX_COMPANY_TYPE_NO: TAggregateField
      FieldName = '_MAX_COMPANY_TYPE_NO'
      Active = True
      Expression = 'Max(COMPANY_TYPE_NO)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1058#1080#1087#1086#1074#1077' '#1050#1086#1084#1087#1072#1085#1080#1080' - %s'
    end
  end
end
