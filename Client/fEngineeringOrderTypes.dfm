inherited fmEngineeringOrderTypes: TfmEngineeringOrderTypes
  Caption = #1042#1080#1076#1086#1074#1077' '#1054#1055#1048#1056
  ClientHeight = 349
  ClientWidth = 460
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 314
    Width = 460
    inherited pnlOKCancel: TPanel
      Left = 192
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 103
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 371
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 460
    Height = 314
    inherited pnlGrid: TPanel
      Width = 444
      Height = 298
      inherited pnlNavigator: TPanel
        Width = 444
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 444
        Height = 274
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ENGINEERING_ORDER_TYPE_CODE'
            Footers = <>
            Title.Caption = #1050#1086#1076
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'ENGINEERING_ORDER_TYPE_ABBREV'
            Footers = <>
            Title.Caption = #1040#1073#1088#1077#1074#1080#1072#1090#1091#1088#1072
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'ENGINEERING_ORDER_TYPE_NAME'
            Footers = <>
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 299
          end>
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 88
    Top = 144
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'ENGINEERING_ORDER_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ENGINEERING_ORDER_TYPE_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'ENGINEERING_ORDER_TYPE_ABBREV'
        DataType = ftWideString
        Size = 5
      end>
    ProviderName = 'prvEngineeringOrderTypes'
    ConnectionBroker = dmMain.conEngineering
    OnNewRecord = cdsGridDataNewRecord
    Left = 56
    Top = 144
    object cdsGridDataENGINEERING_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'ENGINEERING_ORDER_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataENGINEERING_ORDER_TYPE_NAME: TAbmesWideStringField
      FieldName = 'ENGINEERING_ORDER_TYPE_NAME'
      Size = 50
    end
    object cdsGridDataENGINEERING_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'ENGINEERING_ORDER_TYPE_ABBREV'
      Size = 5
    end
    object cdsGridData_MAX_ENG_ORDER_TYPE_CODE: TAggregateField
      FieldName = '_MAX_ENG_ORDER_TYPE_CODE'
      Active = True
      Expression = 'Max(ENGINEERING_ORDER_TYPE_CODE)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1042#1080#1076#1086#1074#1077' '#1054#1055#1048#1056
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 56
    Top = 176
  end
  inherited dsGridDataParams: TDataSource
    Left = 88
    Top = 176
  end
  inherited dsData: TDataSource
    Left = 88
    Top = 112
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 56
    Top = 112
  end
end
