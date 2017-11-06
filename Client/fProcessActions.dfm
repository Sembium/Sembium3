inherited fmProcessActions: TfmProcessActions
  Caption = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1085#1080' '#1060#1091#1085#1082#1094#1080#1080
  ClientHeight = 349
  ClientWidth = 794
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 314
    Width = 794
    inherited pnlOKCancel: TPanel
      Left = 526
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 437
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 705
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 794
    Height = 314
    inherited pnlGrid: TPanel
      Width = 778
      Height = 298
      inherited pnlNavigator: TPanel
        Width = 778
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
        object tlbDocs: TToolBar
          Left = 248
          Top = 0
          Width = 157
          Height = 24
          Align = alLeft
          ButtonWidth = 36
          Images = dmMain.ilDocs
          TabOrder = 3
          object sepBeforeDocs: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepBeforeDocs'
            ImageIndex = 0
            Style = tbsSeparator
          end
          object lblDoc: TLabel
            Left = 8
            Top = 0
            Width = 125
            Height = 22
            Caption = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1085#1072' '#1060#1091#1085#1082#1094#1080#1103' '
            Layout = tlCenter
          end
          object btnDoc: TToolButton
            Left = 133
            Top = 0
            Action = actDoc
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 778
        Height = 274
        Columns = <
          item
            EditButtons = <>
            FieldName = 'PRC_ACTION_NO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'PRC_ACTION_ABBREV'
            Footers = <>
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'PRC_ACTION_NAME'
            Footers = <>
            Width = 360
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'IS_BASE_ACTION'
            Footers = <>
            Width = 65
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'IS_CONCRETE_ACTION'
            Footers = <>
            Width = 65
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'IS_PROJECT_ACTION'
            Footers = <>
            Width = 65
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conProcesses
    FieldDefs = <
      item
        Name = 'PRC_ACTION_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'PRC_ACTION_NO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'PRC_ACTION_NAME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'PRC_ACTION_ABBREV'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'IS_BASE_ACTION'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'IS_CONCRETE_ACTION'
        Attributes = [faRequired]
        DataType = ftFloat
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
        Name = 'HAS_DOC_ITEMS'
        DataType = ftFloat
      end
      item
        Name = 'IS_PROJECT_ACTION'
        Attributes = [faRequired]
        DataType = ftFloat
      end>
    ProviderName = 'prvProcessActions'
    OnNewRecord = cdsGridDataNewRecord
    BeforeApplyUpdates = cdsGridDataBeforeApplyUpdates
    object cdsGridDataPRC_ACTION_CODE: TAbmesFloatField
      FieldName = 'PRC_ACTION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsGridDataPRC_ACTION_NO: TAbmesFloatField
      DisplayLabel = 'No'
      FieldName = 'PRC_ACTION_NO'
      Required = True
    end
    object cdsGridDataPRC_ACTION_NAME: TAbmesWideStringField
      DisplayLabel = #1055#1098#1083#1085#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'PRC_ACTION_NAME'
      Required = True
      Size = 250
    end
    object cdsGridDataPRC_ACTION_ABBREV: TAbmesWideStringField
      DisplayLabel = #1050#1088#1072#1090#1082#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'PRC_ACTION_ABBREV'
      Required = True
      Size = 10
    end
    object cdsGridDataIS_BASE_ACTION: TAbmesFloatField
      DisplayLabel = #1047#1072' '#1055#1054#1087
      FieldName = 'IS_BASE_ACTION'
      Required = True
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_CONCRETE_ACTION: TAbmesFloatField
      DisplayLabel = #1047#1072' '#1055#1054#1085#1090
      FieldName = 'IS_CONCRETE_ACTION'
      Required = True
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsGridDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsGridDataHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_PROJECT_ACTION: TAbmesFloatField
      DisplayLabel = #1047#1072' '#1055#1088#1086#1077#1082#1090#1080
      FieldName = 'IS_PROJECT_ACTION'
      Required = True
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridData_MAX_PRC_ACTION_NO: TAggregateField
      FieldName = '_MAX_PRC_ACTION_NO'
      Active = True
      Expression = 'Max(PRC_ACTION_NO)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1085#1080' '#1060#1091#1085#1082#1094#1080#1080
    end
    object actDoc: TAction
      Hint = #1052#1048#1048#1054' '#1085#1072' '#1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1085#1072' '#1060#1091#1085#1082#1094#1080#1103
      ImageIndex = 98
      OnExecute = actDocExecute
      OnUpdate = actDocUpdate
    end
  end
end
