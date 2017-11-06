inherited fmDocItemType: TfmDocItemType
  Left = 333
  Top = 333
  ActiveControl = edtDocItemTypeCode
  Caption = #1042#1080#1076' '#1048#1048#1054' - %s'
  ClientHeight = 376
  ClientWidth = 465
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 341
    Width = 465
    inherited pnlOKCancel: TPanel
      Left = 197
    end
    inherited pnlClose: TPanel
      Left = 108
    end
    inherited pnlApply: TPanel
      Left = 376
      Visible = False
    end
    inherited pnlExcelExportButton: TPanel
      Visible = False
    end
  end
  inherited pnlUser: TPanel
    Width = 449
  end
  inherited pnlMain: TPanel
    Width = 465
    Height = 341
    inherited pnlGrid: TPanel
      Width = 449
      Height = 325
      inherited pnlNavigator: TPanel
        Width = 449
        TabOrder = 3
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Top = 141
        Width = 211
        Height = 184
        TitleParams.MultiTitle = True
        TitleParams.VTitleMargin = 5
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DOC_ITEM_TYPE_CODE'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FILE_EXTENSION_CODE'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FILE_EXTENSION_NAME'
            Footers = <>
            Title.Caption = #1042#1098#1079#1084#1086#1078#1085#1080' '#1074#1080#1076#1086#1074#1077' '#1092#1072#1081#1083#1086#1074#1077'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 107
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FILE_EXTENSION_ABBREV'
            Footers = <>
            Title.Caption = #1042#1098#1079#1084#1086#1078#1085#1080' '#1074#1080#1076#1086#1074#1077' '#1092#1072#1081#1083#1086#1074#1077'|'#1056#1072#1079#1096#1080#1088#1077#1085#1080#1077
            Width = 70
          end>
      end
      inherited grdOtherData: TAbmesDBGrid
        Left = 237
        Top = 141
        Width = 212
        Height = 184
        TitleParams.MultiTitle = True
        TitleParams.VTitleMargin = 5
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DOC_ITEM_TYPE_CODE'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FILE_EXTENSION_CODE'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FILE_EXTENSION_NAME'
            Footers = <>
            Title.Caption = #1053#1077#1074#1098#1079#1084#1086#1078#1085#1080' '#1074#1080#1076#1086#1074#1077' '#1092#1072#1081#1083#1086#1074#1077'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 108
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FILE_EXTENSION_ABBREV'
            Footers = <>
            Title.Caption = #1053#1077#1074#1098#1079#1084#1086#1078#1085#1080' '#1074#1080#1076#1086#1074#1077' '#1092#1072#1081#1083#1086#1074#1077'|'#1056#1072#1079#1096#1080#1088#1077#1085#1080#1077
            Width = 70
          end>
      end
      inherited pnlMoveButtons: TPanel
        Left = 211
        Top = 141
        Height = 184
        TabOrder = 4
        inherited btnAdd: TSpeedButton
          Top = 40
        end
        inherited btnRemove: TSpeedButton
          Top = 64
        end
        inherited btnAddAll: TSpeedButton
          Top = 104
        end
        inherited btnRemoveAll: TSpeedButton
          Top = 128
        end
      end
      object pnlTop: TPanel
        Left = 0
        Top = 24
        Width = 449
        Height = 117
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object pnlDocItemType: TPanel
          Left = 0
          Top = 0
          Width = 449
          Height = 105
          Align = alTop
          TabOrder = 0
          object lblDocFileTypeName: TLabel
            Left = 88
            Top = 8
            Width = 76
            Height = 13
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            FocusControl = edtDocItemTypeName
          end
          object lblDocFileTypeCode: TLabel
            Left = 8
            Top = 8
            Width = 19
            Height = 13
            Caption = #1050#1086#1076
            FocusControl = edtDocItemTypeCode
          end
          object edtDocItemTypeName: TDBEdit
            Left = 88
            Top = 24
            Width = 345
            Height = 21
            DataField = 'DOC_ITEM_TYPE_NAME'
            DataSource = dsData
            TabOrder = 1
          end
          object edtDocItemTypeCode: TDBEdit
            Left = 8
            Top = 24
            Width = 65
            Height = 21
            DataField = 'DOC_ITEM_TYPE_CODE'
            DataSource = dsData
            TabOrder = 0
          end
          object chbIsDNC: TAbmesDBCheckBox
            Left = 8
            Top = 64
            Width = 97
            Height = 17
            Caption = 'DNC '#1055#1088#1086#1075#1088#1072#1084#1072
            DataField = 'IS_DNC_DOC'
            DataSource = dsData
            TabOrder = 2
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 104
    Top = 256
  end
  inherited cdsGridData: TAbmesClientDataSet
    DataSetField = cdsDataqryDocItemTypeFileExtensions
    FieldDefs = <
      item
        Name = 'DOC_ITEM_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'FILE_EXTENSION_CODE'
        DataType = ftFloat
      end
      item
        Name = 'FILE_EXTENSION_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'FILE_EXTENSION_ABBREV'
        DataType = ftWideString
        Size = 10
      end>
    Left = 72
    Top = 256
    object cdsGridDataDOC_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataFILE_EXTENSION_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'FILE_EXTENSION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataFILE_EXTENSION_NAME: TAbmesWideStringField
      DisplayLabel = #1042#1098#1079#1084#1086#1078#1085#1080' '#1088#1072#1079#1096#1080#1088#1077#1085#1080#1103'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'FILE_EXTENSION_NAME'
      ProviderFlags = []
      Size = 50
    end
    object cdsGridDataFILE_EXTENSION_ABBREV: TAbmesWideStringField
      DisplayLabel = #1042#1098#1079#1084#1086#1078#1085#1080' '#1088#1072#1079#1096#1080#1088#1077#1085#1080#1103'|'#1056#1072#1079#1096#1080#1088#1077#1085#1080#1077
      FieldName = 'FILE_EXTENSION_ABBREV'
      ProviderFlags = []
      Size = 10
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1042#1080#1076' '#1048#1048#1054' - %s'
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 72
    Top = 296
  end
  inherited dsGridDataParams: TDataSource
    Left = 104
    Top = 296
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conDoc
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_TYPE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDocItemTypeNom'
    object cdsDataDOC_ITEM_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'DOC_ITEM_TYPE_CODE'
      Required = True
    end
    object cdsDataDOC_ITEM_TYPE_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'DOC_ITEM_TYPE_NAME'
      Required = True
      Size = 50
    end
    object cdsDataIS_DNC_DOC: TAbmesFloatField
      FieldName = 'IS_DNC_DOC'
      FieldValueType = fvtBoolean
    end
    object cdsDataDOC_ITEM_BASE_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1052#1048#1048#1054' '#1054#1089#1085#1086#1074#1085#1072' '#1043#1088#1091#1087#1072
      FieldName = 'DOC_ITEM_BASE_TYPE_CODE'
      Required = True
    end
    object cdsDataqryDocItemTypeFileExtensions: TDataSetField
      FieldName = 'qryDocItemTypeFileExtensions'
    end
  end
  inherited cdsOtherGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conDoc
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_TYPE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDocItemTypeNotFileExtensions'
    Left = 312
    Top = 280
    object cdsOtherGridDataDOC_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TYPE_CODE'
    end
    object cdsOtherGridDataFILE_EXTENSION_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'FILE_EXTENSION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsOtherGridDataFILE_EXTENSION_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1077#1074#1098#1079#1084#1086#1078#1085#1080' '#1088#1072#1079#1096#1080#1088#1077#1085#1080#1103'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'FILE_EXTENSION_NAME'
      Size = 50
    end
    object cdsOtherGridDataFILE_EXTENSION_ABBREV: TAbmesWideStringField
      DisplayLabel = #1053#1077#1074#1098#1079#1084#1086#1078#1085#1080' '#1088#1072#1079#1096#1080#1088#1077#1085#1080#1103'|'#1056#1072#1079#1096#1080#1088#1077#1085#1080#1077
      FieldName = 'FILE_EXTENSION_ABBREV'
      Size = 10
    end
  end
  inherited dsOtherGridData: TDataSource
    Left = 344
    Top = 280
  end
end
