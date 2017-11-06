inherited fmParamEdit: TfmParamEdit
  Left = 300
  Top = 190
  ActiveControl = edtOrderNo
  Caption = #1051#1086#1075#1080#1095#1077#1089#1082#1080' '#1055#1072#1088#1072#1084#1077#1090#1098#1088' - %s'
  ClientHeight = 388
  ClientWidth = 689
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 673
    Height = 337
  end
  object bvlPartOfName: TBevel [1]
    Left = 192
    Top = 248
    Width = 313
    Height = 81
    Shape = bsFrame
  end
  object lblOrderNo: TLabel [2]
    Left = 24
    Top = 16
    Width = 44
    Height = 13
    Caption = #1053#1072#1088#1077#1076#1073#1072
    FocusControl = edtOrderNo
  end
  object lblName: TLabel [3]
    Left = 112
    Top = 16
    Width = 76
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    FocusControl = edtName
  end
  object lblAbbrev: TLabel [4]
    Left = 544
    Top = 16
    Width = 34
    Height = 13
    Caption = #1040#1073#1088#1077#1074'.'
    FocusControl = edtAbbrev
  end
  object lblPrefix: TLabel [5]
    Left = 204
    Top = 266
    Width = 46
    Height = 13
    Caption = #1055#1088#1077#1092#1080#1082#1089
    FocusControl = edtPrefix
  end
  object lblSufix: TLabel [6]
    Left = 324
    Top = 266
    Width = 38
    Height = 13
    Caption = #1057#1091#1092#1080#1082#1089
    FocusControl = edtSuffix
  end
  object bvlValueString: TBevel [7]
    Left = 24
    Top = 184
    Width = 641
    Height = 49
    Shape = bsFrame
  end
  object lblStringValue: TLabel [8]
    Left = 32
    Top = 202
    Width = 47
    Height = 13
    Caption = #1057#1090#1086#1081#1085#1086#1089#1090
    FocusControl = edtStringValue
  end
  object lblShowValueWithPrefixAndSuffix: TLabel [9]
    Left = 204
    Top = 298
    Width = 46
    Height = 13
    Caption = #1056#1077#1079#1091#1083#1090#1072#1090
    FocusControl = edtShowValueWithPrefixAndSuffix
  end
  object bvlExport: TBevel [10]
    Left = 520
    Top = 248
    Width = 145
    Height = 81
    Shape = bsFrame
  end
  object lblExportIdentifier: TLabel [11]
    Left = 536
    Top = 264
    Width = 80
    Height = 13
    Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088
    FocusControl = edtExportIdentifier
  end
  inherited pnlBottomButtons: TPanel
    Top = 353
    Width = 689
    TabOrder = 18
    inherited pnlOKCancel: TPanel
      Left = 421
    end
    inherited pnlClose: TPanel
      Left = 332
    end
    inherited pnlApply: TPanel
      Left = 600
      Visible = False
    end
  end
  object edtOrderNo: TDBEdit [13]
    Left = 24
    Top = 32
    Width = 73
    Height = 21
    DataField = 'NODE_PARAM_ORDER_NO'
    DataSource = dsData
    TabOrder = 0
  end
  object edtName: TDBEdit [14]
    Left = 112
    Top = 32
    Width = 417
    Height = 21
    DataField = 'NODE_PARAM_NAME'
    DataSource = dsData
    TabOrder = 1
  end
  object pnlNomValue: TPanel [15]
    Left = 264
    Top = 72
    Width = 401
    Height = 97
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 7
    DesignSize = (
      401
      97)
    object lblNom: TLabel
      Left = 16
      Top = 8
      Width = 112
      Height = 13
      Caption = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1085#1072' '#1043#1088#1091#1087#1072
    end
    object lblNomItem: TLabel
      Left = 16
      Top = 48
      Width = 47
      Height = 13
      Caption = #1057#1090#1086#1081#1085#1086#1089#1090
    end
    object cbNom: TJvDBLookupCombo
      Left = 64
      Top = 24
      Width = 262
      Height = 21
      DropDownCount = 20
      EscapeKeyReset = False
      DeleteKeyClear = False
      DataField = '_NOM_NAME'
      DataSource = dsData
      DisplayEmpty = ' '
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      OnClick = cbNomClick
    end
    object cbNomItem: TJvDBLookupCombo
      Left = 16
      Top = 64
      Width = 329
      Height = 21
      DropDownCount = 20
      EscapeKeyReset = False
      DeleteKeyClear = False
      DataField = 'VALUE_NOM_ITEM_CODE'
      DataSource = dsData
      DisplayEmpty = ' '
      Anchors = [akLeft, akTop, akRight]
      LookupField = 'NOM_ITEM_CODE'
      LookupDisplay = '_SHOW_NAME'
      LookupSource = dsNomItems
      TabOrder = 2
      OnClick = cbNomItemClick
    end
    object edtNomNo: TDBEdit
      Left = 16
      Top = 24
      Width = 49
      Height = 21
      DataField = 'NOM_NO'
      DataSource = dsData
      TabOrder = 0
    end
    object tlbNomDocs: TToolBar
      Left = 349
      Top = 23
      Width = 36
      Height = 22
      Align = alNone
      AutoSize = True
      ButtonWidth = 36
      Caption = 'tlbDocs'
      Images = dmMain.ilDocs
      TabOrder = 3
      object btnNomDocs: TToolButton
        Left = 0
        Top = 0
        Action = actNomDocs
      end
    end
    object tlbNomItemDocs: TToolBar
      Left = 349
      Top = 63
      Width = 36
      Height = 22
      Align = alNone
      AutoSize = True
      ButtonWidth = 36
      Caption = 'tlbDocs'
      Images = dmMain.ilDocs
      TabOrder = 4
      object btnNomItemDocs: TToolButton
        Left = 0
        Top = 0
        Action = actNomItemDocs
      end
    end
    object tlbNomEdit: TToolBar
      Left = 326
      Top = 23
      Width = 23
      Height = 22
      Align = alNone
      AutoSize = True
      Images = dmMain.ilActions
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      object btnNomEdit: TToolButton
        Left = 0
        Top = 0
        Action = actNomEdit
      end
    end
  end
  object pnlFloatValue: TPanel [16]
    Left = 24
    Top = 72
    Width = 225
    Height = 97
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 5
    object lblFloatValue: TLabel
      Left = 16
      Top = 8
      Width = 47
      Height = 13
      Caption = #1057#1090#1086#1081#1085#1086#1089#1090
      FocusControl = edtFloatValue
    end
    object lblFormatDigits: TLabel
      Left = 120
      Top = 8
      Width = 80
      Height = 13
      Caption = #1060#1086#1088#1084#1072#1090', '#1094#1080#1092#1088#1080
    end
    object lblDot: TLabel
      Left = 163
      Top = 27
      Width = 3
      Height = 13
      Alignment = taCenter
      Caption = '.'
    end
    object lblQuotient: TLabel
      Left = 109
      Top = 67
      Width = 6
      Height = 13
      Caption = '--'
    end
    object lblRange: TLabel
      Left = 16
      Top = 48
      Width = 51
      Height = 13
      Caption = #1044#1080#1072#1087#1072#1079#1086#1085
      FocusControl = edtRangeStart
    end
    object edtFloatValue: TDBEdit
      Left = 16
      Top = 24
      Width = 89
      Height = 21
      DataField = 'VALUE_FLOAT'
      DataSource = dsData
      TabOrder = 0
    end
    object edtIntegers: TEdit
      Left = 120
      Top = 24
      Width = 41
      Height = 21
      Hint = #1041#1088#1086#1081' '#1094#1080#1092#1088#1080' '#1087#1088#1077#1076' '#1076#1077#1089#1077#1090#1080#1095#1085#1080#1103' '#1079#1085#1072#1082
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object edtDecimals: TEdit
      Left = 168
      Top = 24
      Width = 41
      Height = 21
      Hint = #1041#1088#1086#1081' '#1094#1080#1092#1088#1080' '#1089#1083#1077#1076' '#1076#1077#1089#1077#1090#1080#1095#1085#1080#1103' '#1079#1085#1072#1082
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object edtRangeStart: TDBEdit
      Left = 16
      Top = 64
      Width = 89
      Height = 21
      DataField = 'VALUE_FLOAT_RANGE_START'
      DataSource = dsData
      TabOrder = 3
    end
    object edtRangeEnd: TDBEdit
      Left = 120
      Top = 64
      Width = 89
      Height = 21
      DataField = 'VALUE_FLOAT_RANGE_END'
      DataSource = dsData
      TabOrder = 4
    end
  end
  object edtAbbrev: TDBEdit [17]
    Left = 544
    Top = 32
    Width = 73
    Height = 21
    DataField = 'ABBREV'
    DataSource = dsData
    TabOrder = 2
  end
  object edtPrefix: TDBEdit [18]
    Left = 256
    Top = 264
    Width = 57
    Height = 21
    DataField = 'PREFIX'
    DataSource = dsData
    TabOrder = 13
  end
  object edtSuffix: TDBEdit [19]
    Left = 368
    Top = 264
    Width = 57
    Height = 21
    DataField = 'SUFFIX'
    DataSource = dsData
    TabOrder = 14
  end
  object pnlPartOfNameTitle: TPanel [20]
    Left = 200
    Top = 240
    Width = 232
    Height = 17
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 12
    DesignSize = (
      232
      17)
    object chbPartOfName: TAbmesDBCheckBox
      Left = 4
      Top = 0
      Width = 223
      Height = 17
      Anchors = [akLeft, akTop, akRight]
      Caption = #1051#1086#1075#1080#1095#1077#1089#1082#1080' '#1048#1076#1077#1085#1090#1080#1092#1080#1094#1080#1088#1072#1097' '#1055#1072#1088#1072#1084#1077#1090#1098#1088
      DataField = 'IS_PART_OF_NAME'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      ImmediateUpdateField = True
    end
  end
  object chbIsRequired: TAbmesDBCheckBox [21]
    Left = 24
    Top = 277
    Width = 154
    Height = 17
    Caption = #1047#1072#1076#1098#1083#1078#1080#1090#1077#1083#1077#1085' '#1087#1072#1088#1072#1084#1077#1090#1098#1088
    DataField = 'IS_REQUIRED'
    DataSource = dsData
    TabOrder = 11
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    ImmediateUpdateField = True
  end
  object edtStringValue: TDBEdit [22]
    Left = 88
    Top = 200
    Width = 561
    Height = 21
    DataField = 'VALUE_STRING'
    DataSource = dsData
    TabOrder = 9
  end
  object pnlFloatValueTitle: TPanel [23]
    Left = 32
    Top = 65
    Width = 82
    Height = 17
    BevelOuter = bvNone
    TabOrder = 4
    object rbFloatValue: TRadioButton
      Left = 2
      Top = 0
      Width = 78
      Height = 17
      Caption = #1063#1080#1089#1083#1086#1074' '#1090#1080#1087
      TabOrder = 0
      OnClick = rbFloatValueClick
    end
  end
  object pnlNomTitle: TPanel [24]
    Left = 272
    Top = 65
    Width = 124
    Height = 17
    BevelOuter = bvNone
    TabOrder = 6
    object rbNomValue: TRadioButton
      Left = 2
      Top = 0
      Width = 121
      Height = 17
      Caption = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1077#1085' '#1090#1080#1087
      TabOrder = 0
      OnClick = rbNomValueClick
    end
  end
  object pnlStringValueTitle: TPanel [25]
    Left = 32
    Top = 177
    Width = 95
    Height = 17
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 8
    object rbStringValue: TRadioButton
      Left = 2
      Top = 0
      Width = 91
      Height = 17
      Caption = #1057#1080#1084#1074#1086#1083#1077#1085' '#1090#1080#1087
      TabOrder = 0
      OnClick = rbStringValueClick
    end
  end
  object chbIsDefined: TAbmesDBCheckBox [26]
    Left = 24
    Top = 251
    Width = 124
    Height = 17
    Caption = #1055#1088#1080#1089#1098#1097' '#1087#1072#1088#1072#1084#1077#1090#1098#1088
    DataField = 'IS_DEFINED'
    DataSource = dsData
    TabOrder = 10
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    ImmediateUpdateField = True
  end
  object edtShowValueWithPrefixAndSuffix: TDBEdit [27]
    Left = 256
    Top = 296
    Width = 233
    Height = 21
    Color = clBtnFace
    DataField = '_SHOW_VALUE_WITH_PREFIX_AND_SUFFIX'
    DataSource = dsData
    ReadOnly = True
    TabOrder = 15
  end
  object tlbDocs: TToolBar [28]
    Left = 629
    Top = 31
    Width = 36
    Height = 22
    Align = alNone
    AutoSize = True
    ButtonWidth = 36
    Caption = 'tlbDocs'
    Images = dmMain.ilDocs
    TabOrder = 3
    object btnDocs: TToolButton
      Left = 0
      Top = 0
      Action = actDocs
    end
  end
  object pnlExportTitle: TPanel [29]
    Left = 528
    Top = 240
    Width = 70
    Height = 17
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 16
    DesignSize = (
      70
      17)
    object chbIsForExport: TAbmesDBCheckBox
      Left = 4
      Top = 0
      Width = 61
      Height = 17
      Anchors = [akLeft, akTop, akRight]
      Caption = #1045#1082#1089#1087#1086#1088#1090
      DataField = 'IS_FOR_EXPORT'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      ImmediateUpdateField = True
    end
  end
  object edtExportIdentifier: TDBEdit [30]
    Left = 536
    Top = 280
    Width = 113
    Height = 21
    DataField = 'EXPORT_IDENTIFIER'
    DataSource = dsData
    TabOrder = 17
  end
  inherited alActions: TActionList
    Left = 184
    inherited actForm: TAction
      Caption = #1051#1086#1075#1080#1095#1077#1089#1082#1080' '#1055#1072#1088#1072#1084#1077#1090#1098#1088' - %s'
    end
    object actDocs: TAction
      Caption = 'actDocs'
      ImageIndex = 1
      OnExecute = actDocsExecute
      OnUpdate = actDocsUpdate
    end
    object actNomDocs: TAction
      Caption = 'actNomDocs'
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1072#1090#1072' '#1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1085#1072' '#1043#1088#1091#1087#1072
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
    object actNomEdit: TAction
      Caption = 'actNomEdit'
      ImageIndex = 6
      OnExecute = actNomEditExecute
      OnUpdate = actNomEditUpdate
    end
  end
  inherited dsData: TDataSource
    Left = 256
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 224
  end
  object cdsNomItems: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <
      item
        DataType = ftFloat
        Name = 'NOM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvNomItems'
    BeforeOpen = cdsNomItemsBeforeOpen
    OnCalcFields = cdsNomItemsCalcFields
    Left = 88
    Top = 321
    object cdsNomItemsNOM_CODE: TAbmesFloatField
      FieldName = 'NOM_CODE'
    end
    object cdsNomItemsNOM_ITEM_CODE: TAbmesFloatField
      FieldName = 'NOM_ITEM_CODE'
    end
    object cdsNomItemsNOM_ITEM_NAME: TAbmesWideStringField
      FieldName = 'NOM_ITEM_NAME'
      Size = 50
    end
    object cdsNomItemsNOM_ITEM_DESCRIPTION: TAbmesWideStringField
      FieldName = 'NOM_ITEM_DESCRIPTION'
      Size = 100
    end
    object cdsNomItems_SHOW_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_NAME'
      Size = 160
      Calculated = True
    end
    object cdsNomItemsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsNomItemsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsNomItemsHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
    end
    object cdsNomItemsIS_NOT_PART_OF_NAME: TAbmesFloatField
      FieldName = 'IS_NOT_PART_OF_NAME'
      Required = True
      FieldValueType = fvtBoolean
    end
  end
  object dsNomItems: TDataSource
    DataSet = cdsNomItems
    Left = 120
    Top = 321
  end
end
