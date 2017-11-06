inherited fmProductParamNomValue: TfmProductParamNomValue
  Left = 360
  Top = 305
  ActiveControl = cbNomItem
  Caption = '%s'
  ClientHeight = 157
  ClientWidth = 418
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 402
    Height = 106
  end
  object lblNom: TLabel [1]
    Left = 24
    Top = 16
    Width = 229
    Height = 13
    Caption = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1085#1072' '#1043#1088#1091#1087#1072' '#1051#1086#1075#1080#1095#1077#1089#1082#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080
    FocusControl = edtNom
  end
  object lblNomItem: TLabel [2]
    Left = 24
    Top = 64
    Width = 47
    Height = 13
    Caption = #1057#1090#1086#1081#1085#1086#1089#1090
  end
  inherited pnlBottomButtons: TPanel
    Top = 122
    Width = 418
    TabOrder = 2
    inherited pnlOKCancel: TPanel
      Left = 150
    end
    inherited pnlClose: TPanel
      Left = 61
    end
    inherited pnlApply: TPanel
      Left = 329
      Visible = False
    end
  end
  object cbNomItem: TJvDBLookupCombo [4]
    Left = 24
    Top = 80
    Width = 321
    Height = 21
    DropDownCount = 20
    DataField = 'VALUE_NOM_ITEM_CODE'
    DataSource = dsData
    DisplayEmpty = ' '
    LookupField = 'NOM_ITEM_CODE'
    LookupDisplay = '_SHOW_NAME'
    LookupSource = dsNomItems
    TabOrder = 1
    OnClick = cbNomItemClick
  end
  object edtNom: TDBEdit [5]
    Left = 24
    Top = 32
    Width = 321
    Height = 21
    Color = clBtnFace
    DataField = 'NOM_NAME'
    DataSource = dsData
    ReadOnly = True
    TabOrder = 0
  end
  object tlbNomDocs: TToolBar [6]
    Left = 357
    Top = 31
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
  object tlbNomItemDocs: TToolBar [7]
    Left = 357
    Top = 79
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
  inherited alActions: TActionList
    Left = 136
    inherited actForm: TAction
      Caption = '%s'
    end
    object actNomDocs: TAction
      Caption = 'actNomDocs'
      ImageIndex = 1
      OnExecute = actNomDocsExecute
      OnUpdate = actNomDocsUpdate
    end
    object actNomItemDocs: TAction
      Caption = 'actNomItemDocs'
      ImageIndex = 1
      OnExecute = actNomItemDocsExecute
      OnUpdate = actNomItemDocsUpdate
    end
  end
  object cdsNomItems: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <
      item
        DataType = ftFloat
        Name = 'NOM_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvNomItems'
    BeforeOpen = cdsNomItemsBeforeOpen
    OnCalcFields = cdsNomItemsCalcFields
    Left = 128
    Top = 64
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
    object cdsNomItemsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsNomItemsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsNomItemsHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
    end
    object cdsNomItems_SHOW_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_NAME'
      Size = 160
      Calculated = True
    end
  end
  object dsNomItems: TDataSource
    DataSet = cdsNomItems
    Left = 160
    Top = 64
  end
end
