inherited fmDocItemTypes: TfmDocItemTypes
  Left = 271
  Top = 211
  Caption = #1042#1080#1076#1086#1074#1077' '#1048#1048#1054
  ClientHeight = 385
  ClientWidth = 596
  ExplicitWidth = 602
  ExplicitHeight = 410
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 350
    Width = 596
    ExplicitTop = 350
    ExplicitWidth = 596
    inherited pnlOKCancel: TPanel
      Left = 328
      Visible = False
      ExplicitLeft = 328
    end
    inherited pnlClose: TPanel
      Left = 239
      Visible = True
      ExplicitLeft = 239
    end
    inherited pnlApply: TPanel
      Left = 507
      Visible = False
      ExplicitLeft = 507
    end
  end
  inherited pnlMain: TPanel
    Width = 596
    Height = 350
    ExplicitWidth = 596
    ExplicitHeight = 350
    inherited pnlGrid: TPanel
      Width = 580
      Height = 334
      ExplicitWidth = 580
      ExplicitHeight = 334
      inherited pnlNavigator: TPanel
        Width = 580
        ExplicitWidth = 580
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
        Width = 580
        Height = 310
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DOC_ITEM_TYPE_CODE'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'DOC_ITEM_TYPE_NAME'
            Footers = <>
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'DOC_ITEM_TYPE_FILE_EXTENSIONS'
            Footers = <>
            Width = 250
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'IS_DNC_DOC'
            Footers = <>
            Title.Alignment = taCenter
            Width = 30
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'DOC_ITEM_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_ITEM_TYPE_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'IS_DNC_DOC'
        DataType = ftFloat
      end
      item
        Name = 'DOC_ITEM_BASE_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_ITEM_TYPE_FILE_EXTENSIONS'
        DataType = ftWideString
        Size = 250
      end>
    ProviderName = 'prvDocItemTypesNom'
    ConnectionBroker = dmMain.conDoc
    object cdsGridDataDOC_ITEM_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'DOC_ITEM_TYPE_CODE'
      Required = True
    end
    object cdsGridDataDOC_ITEM_TYPE_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'DOC_ITEM_TYPE_NAME'
      Required = True
    end
    object cdsGridDataIS_DNC_DOC: TAbmesFloatField
      DisplayLabel = 'DNC'
      FieldName = 'IS_DNC_DOC'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataDOC_ITEM_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_BASE_TYPE_CODE'
      Required = True
    end
    object cdsGridDataDOC_ITEM_TYPE_FILE_EXTENSIONS: TAbmesWideStringField
      DisplayLabel = #1042#1098#1079#1084#1086#1078#1085#1080' '#1074#1080#1076#1086#1074#1077' '#1092#1072#1081#1083#1086#1074#1077
      FieldName = 'DOC_ITEM_TYPE_FILE_EXTENSIONS'
      Size = 250
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1042#1080#1076#1086#1074#1077' '#1048#1048#1054
    end
  end
end
