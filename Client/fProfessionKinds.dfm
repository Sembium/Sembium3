inherited fmProfessionKinds: TfmProfessionKinds
  Caption = #1042#1080#1076#1086#1074#1077' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080
  ClientWidth = 539
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Width = 539
    inherited pnlOKCancel: TPanel
      Left = 271
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 182
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 450
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 539
    inherited pnlGrid: TPanel
      Width = 523
      inherited pnlNavigator: TPanel
        Width = 523
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 523
        Columns = <
          item
            EditButtons = <>
            FieldName = 'PROFESSION_KIND_NO'
            Footers = <>
            Width = 92
          end
          item
            EditButtons = <>
            FieldName = 'PROFESSION_KIND_NAME'
            Footers = <>
            Width = 297
          end
          item
            EditButtons = <>
            FieldName = '_PROFESSION_TYPE_NAME'
            Footers = <>
            Title.Caption = #1058#1080#1087
            Width = 99
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conHumanResource
    FieldDefs = <
      item
        Name = 'PROFESSION_KIND_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'PROFESSION_KIND_NO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'PROFESSION_KIND_NAME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 200
      end
      item
        Name = 'PROFESSION_TYPE_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end>
    ProviderName = 'prvProfessionKinds'
    OnNewRecord = cdsGridDataNewRecord
    object cdsGridDataPROFESSION_KIND_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_KIND_CODE'
      Required = True
    end
    object cdsGridDataPROFESSION_KIND_NO: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'PROFESSION_KIND_NO'
      Required = True
    end
    object cdsGridDataPROFESSION_KIND_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'PROFESSION_KIND_NAME'
      Required = True
      Size = 200
    end
    object cdsGridDataPROFESSION_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1080#1087
      FieldName = 'PROFESSION_TYPE_CODE'
      Required = True
    end
    object cdsGridData_PROFESSION_TYPE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_PROFESSION_TYPE_NAME'
      LookupDataSet = cdsProfessionTypes
      LookupKeyFields = 'PROFESSION_TYPE_CODE'
      LookupResultField = 'PROFESSION_TYPE_NAME'
      KeyFields = 'PROFESSION_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsGridData_MAX_PROFESSION_KIND_CODE: TAggregateField
      FieldName = '_MAX_PROFESSION_KIND_CODE'
      Active = True
      Expression = 'Max(PROFESSION_KIND_CODE)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1042#1080#1076#1086#1074#1077' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080
    end
  end
  object cdsProfessionTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <>
    ProviderName = 'prvProfessionTypes'
    Top = 136
    object cdsProfessionTypesPROFESSION_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_TYPE_CODE'
      Required = True
    end
    object cdsProfessionTypesPROFESSION_TYPE_NO: TAbmesFloatField
      FieldName = 'PROFESSION_TYPE_NO'
      Required = True
    end
    object cdsProfessionTypesPROFESSION_TYPE_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_TYPE_NAME'
      Required = True
      Size = 100
    end
    object cdsProfessionTypesPROFESSION_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'PROFESSION_TYPE_ABBREV'
      Required = True
      Size = 100
    end
  end
end
