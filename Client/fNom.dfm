inherited fmNom: TfmNom
  Left = 298
  Top = 166
  ActiveControl = nil
  Caption = 
    #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1085#1072' '#1043#1088#1091#1087#1072' '#1051#1086#1075#1080#1095#1077#1089#1082#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' %ProductClassAbbrev% ' +
    '- %s'
  ClientHeight = 380
  ClientWidth = 661
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 345
    Width = 661
    inherited pnlOKCancel: TPanel
      Left = 393
    end
    inherited pnlClose: TPanel
      Left = 304
    end
    inherited pnlApply: TPanel
      Left = 572
    end
  end
  inherited pnlMain: TPanel
    Width = 661
    Height = 345
    inherited pnlGrid: TPanel
      Top = 65
      Width = 645
      Height = 272
      TabOrder = 1
      inherited pnlNavigator: TPanel
        Width = 645
        inherited pnlFilterButton: TPanel
          Left = 284
        end
        inherited navData: TDBColorNavigator
          Width = 228
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 228
        end
        object tlbNomItemDocs: TToolBar
          Left = 308
          Top = 0
          Width = 44
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 36
          Caption = 'tlbNomItemDocs'
          Images = dmMain.ilDocs
          TabOrder = 3
          object sepNomItemDocs: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepNomItemDocs'
            ImageIndex = 31
            Style = tbsSeparator
          end
          object btnNomItemDocs: TToolButton
            Left = 8
            Top = 0
            Action = actNomItemDocs
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 645
        Height = 248
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking]
        ReadOnly = False
        TitleParams.MultiTitle = True
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'NOM_ITEM_NO'
            Footers = <>
            Width = 40
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'NOM_ITEM_NAME'
            Footers = <>
            Width = 111
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'NOM_ITEM_DESCRIPTION'
            Footers = <>
            Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
            Width = 255
          end
          item
            Alignment = taCenter
            Checkboxes = True
            DynProps = <>
            EditButtons = <>
            FieldName = 'IS_NOT_PART_OF_NAME'
            Footers = <>
            Title.Caption = #1053#1077#1080#1076#1077#1085#1090#1080'- '#1092#1080#1094#1080#1088#1072#1097#1072' '#1057#1090#1086#1081#1085#1086#1089#1090
            Width = 76
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'CHANGE_EMPLOYEE_ABBREV_NAME'
            Footers = <>
            ReadOnly = True
            Title.Caption = #1055#1086#1089#1083#1077#1076#1085#1072' '#1087#1088#1086#1084#1103#1085#1072'|'#1057#1083#1091#1078#1080#1090#1077#1083
            Width = 55
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'CHANGE_DATE'
            Footers = <>
            ReadOnly = True
            Title.Caption = #1055#1086#1089#1083#1077#1076#1085#1072' '#1087#1088#1086#1084#1103#1085#1072'|'#1044#1072#1090#1072
            Width = 70
          end>
      end
    end
    object pnlNom: TPanel
      Left = 8
      Top = 8
      Width = 645
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object lblName: TLabel
        Left = 80
        Top = 0
        Width = 76
        Height = 13
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        FocusControl = edtName
      end
      object lblNo: TLabel
        Left = 0
        Top = 0
        Width = 34
        Height = 13
        Caption = #1053#1086#1084#1077#1088
        FocusControl = edtNo
      end
      object edtName: TDBEdit
        Left = 80
        Top = 16
        Width = 329
        Height = 21
        DataField = 'NOM_NAME'
        DataSource = dsData
        TabOrder = 1
      end
      object edtNo: TDBEdit
        Left = 0
        Top = 16
        Width = 65
        Height = 21
        DataField = 'NOM_NO'
        DataSource = dsData
        TabOrder = 0
      end
      object tlbNomDocs: TToolBar
        Left = 416
        Top = 16
        Width = 36
        Height = 22
        Align = alNone
        AutoSize = True
        ButtonWidth = 36
        Caption = 'tlbDocs'
        Images = dmMain.ilDocs
        TabOrder = 2
        object btnNomDocs: TToolButton
          Left = 0
          Top = 0
          Action = actNomDocs
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Top = 72
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    DataSetField = cdsDataqryNomItemsEdit
    FieldDefs = <
      item
        Name = 'NOM_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'NOM_ITEM_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'NOM_ITEM_NAME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'NOM_ITEM_DESCRIPTION'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'CREATE_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CREATE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'CREATE_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'CHANGE_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CHANGE_EMPLOYEE_ABBREV_NAME'
        DataType = ftWideString
        Size = 64
      end
      item
        Name = 'CHANGE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'CHANGE_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'PRODUCT_CLASS_CODE'
        DataType = ftFloat
      end
      item
        Name = 'NOM_ITEM_NO'
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
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'NOM_CODE'
        ParamType = ptInput
      end>
    BeforePost = cdsGridDataBeforePost
    OnNewRecord = cdsGridDataNewRecord
    Top = 72
    object cdsGridDataNOM_CODE: TAbmesFloatField
      FieldName = 'NOM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsGridDataNOM_ITEM_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'NOM_ITEM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsGridDataNOM_ITEM_NO: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'NOM_ITEM_NO'
      Required = True
    end
    object cdsGridDataNOM_ITEM_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NOM_ITEM_NAME'
      Required = True
      Size = 50
    end
    object cdsGridDataNOM_ITEM_DESCRIPTION: TAbmesWideStringField
      FieldName = 'NOM_ITEM_DESCRIPTION'
      Size = 100
    end
    object cdsGridDataCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object cdsGridDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsGridDataCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object cdsGridDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
      OnChange = cdsGridDataCHANGE_EMPLOYEE_CODEChange
    end
    object cdsGridDataCHANGE_EMPLOYEE_ABBREV_NAME: TAbmesWideStringField
      FieldName = 'CHANGE_EMPLOYEE_ABBREV_NAME'
      ProviderFlags = []
      Size = 64
    end
    object cdsGridDataCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object cdsGridDataCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object cdsGridDataPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
    end
    object cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsGridDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsGridDataHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_NOT_PART_OF_NAME: TAbmesFloatField
      FieldName = 'IS_NOT_PART_OF_NAME'
      Required = True
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridData_MAX_NOM_ITEM_CODE: TAggregateField
      FieldName = '_MAX_NOM_ITEM_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Max(NOM_ITEM_CODE)'
    end
    object cdsGridData_MAX_NOM_ITEM_NO: TAggregateField
      FieldName = '_MAX_NOM_ITEM_NO'
      Active = True
      DisplayName = ''
      Expression = 'Max(NOM_ITEM_NO)'
    end
  end
  inherited alActions: TActionList
    OnUpdate = alActionsUpdate
    inherited actForm: TAction
      Caption = 
        #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1085#1072' '#1043#1088#1091#1087#1072' '#1051#1086#1075#1080#1095#1077#1089#1082#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' %ProductClassAbbrev% ' +
        '- %s'
    end
    object actNomDocs: TAction
      Caption = 'actNomDocs'
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1085#1072#1090#1072' '#1043#1088#1091#1087#1072' '#1051#1086#1075#1080#1095#1077#1089#1082#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080
      ImageIndex = 1
      OnExecute = actNomDocsExecute
      OnUpdate = actNomDocsUpdate
    end
    object actNomItemDocs: TAction
      Caption = 'actNomItemDocs'
      Hint = 
        #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1072#1090#1072' '#1057#1090#1086#1081#1085#1086#1089#1090' '#1085#1072' '#1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1085#1072#1090#1072' '#1043#1088#1091#1087#1072' '#1051#1086#1075#1080#1095 +
        #1077#1089#1082#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080
      ImageIndex = 1
      OnExecute = actNomItemDocsExecute
      OnUpdate = actNomItemDocsUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Top = 104
    object pdsGridDataParamsNOM_CODE: TAbmesFloatField
      FieldName = 'NOM_CODE'
    end
  end
  inherited dsGridDataParams: TDataSource
    Top = 104
  end
  inherited dsData: TDataSource
    Top = 40
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conCommon
    Params = <
      item
        DataType = ftFloat
        Name = 'NOM_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvNomsEdit'
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    Top = 40
    object cdsDataNOM_CODE: TAbmesFloatField
      FieldName = 'NOM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDataNOM_NO: TAbmesFloatField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'NOM_NO'
      Required = True
    end
    object cdsDataNOM_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NOM_NAME'
      Required = True
      Size = 50
    end
    object cdsDataPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
    end
    object cdsDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsDataHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsDataqryNomItemsEdit: TDataSetField
      FieldName = 'qryNomItemsEdit'
    end
  end
  object cdsEmployees: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <>
    ProviderName = 'prvEmployees'
    OnCalcFields = cdsEmployeesCalcFields
    Left = 56
    Top = 161
    object cdsEmployeesEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object cdsEmployeesEMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'EMPLOYEE_ABBREV'
      Size = 5
    end
    object cdsEmployeesEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      Size = 44
    end
    object cdsEmployees_EMPLOYEE_ABBREV_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_EMPLOYEE_ABBREV_NAME'
      Size = 100
      Calculated = True
    end
  end
end
