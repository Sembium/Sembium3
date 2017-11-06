inherited fmCustomMenuItems: TfmCustomMenuItems
  Left = 265
  Top = 269
  BorderStyle = bsSizeable
  Caption = #1052#1048#1048#1054'-'#1090#1072' '#1074' '#1084#1077#1085#1102#1090#1086
  ClientHeight = 349
  ClientWidth = 564
  Constraints.MaxWidth = 580
  Constraints.MinWidth = 580
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 314
    Width = 564
    inherited pnlOKCancel: TPanel
      Left = 296
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 207
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 475
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 564
    Height = 314
    inherited pnlGrid: TPanel
      Width = 548
      Height = 298
      inherited pnlNavigator: TPanel
        Width = 548
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 548
        Height = 274
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CUSTOM_MENU_ITEM_CODE'
            Footers = <>
            Title.Alignment = taRightJustify
            Title.Caption = #1050#1086#1076
          end
          item
            EditButtons = <>
            FieldName = 'CUSTOM_MENU_ITEM_NAME'
            Footers = <>
            Width = 450
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conDoc
    FieldDefs = <
      item
        Name = 'CUSTOM_MENU_ITEM_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CUSTOM_MENU_ITEM_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'RELATIVE_MENU_ITEM_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'IS_BEFORE_MENU_ITEM'
        DataType = ftFloat
      end
      item
        Name = 'HAS_MENU_LINE_BEFORE'
        DataType = ftFloat
      end
      item
        Name = 'HAS_MENU_LINE_AFTER'
        DataType = ftFloat
      end
      item
        Name = 'IS_IN_CAPTION_MENU'
        DataType = ftFloat
      end
      item
        Name = 'IS_SUBMENU'
        DataType = ftFloat
      end
      item
        Name = 'IS_CHANGED'
        DataType = ftFloat
      end>
    ProviderName = 'prvCustomMenuItems'
    BeforePost = cdsGridDataBeforePost
    OnNewRecord = cdsGridDataNewRecord
    BeforeApplyUpdates = cdsGridDataBeforeApplyUpdates
    object cdsGridDataCUSTOM_MENU_ITEM_CODE: TAbmesFloatField
      FieldName = 'CUSTOM_MENU_ITEM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataCUSTOM_MENU_ITEM_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'CUSTOM_MENU_ITEM_NAME'
      Required = True
      Size = 100
    end
    object cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsGridDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsGridDataRELATIVE_MENU_ITEM_NAME: TAbmesWideStringField
      FieldName = 'RELATIVE_MENU_ITEM_NAME'
      Size = 100
    end
    object cdsGridDataIS_BEFORE_MENU_ITEM: TAbmesFloatField
      FieldName = 'IS_BEFORE_MENU_ITEM'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataHAS_MENU_LINE_BEFORE: TAbmesFloatField
      FieldName = 'HAS_MENU_LINE_BEFORE'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataHAS_MENU_LINE_AFTER: TAbmesFloatField
      FieldName = 'HAS_MENU_LINE_AFTER'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_IN_CAPTION_MENU: TAbmesFloatField
      FieldName = 'IS_IN_CAPTION_MENU'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_SUBMENU: TAbmesFloatField
      FieldName = 'IS_SUBMENU'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_CHANGED: TAbmesFloatField
      FieldName = 'IS_CHANGED'
      FieldValueType = fvtBoolean
    end
    object cdsGridData_MAX_CUSTOM_MENU_ITEM_CODE: TAggregateField
      FieldName = '_MAX_CUSTOM_MENU_ITEM_CODE'
      Active = True
      Expression = 'Max(CUSTOM_MENU_ITEM_CODE)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1052#1048#1048#1054'-'#1090#1072' '#1074' '#1084#1077#1085#1102#1090#1086
    end
  end
end
