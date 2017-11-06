inherited fmCustomMenuItem: TfmCustomMenuItem
  Left = 390
  Top = 222
  ActiveControl = edtCustomMenuItemName
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSizeable
  Caption = #1052#1048#1048#1054' '#1074' '#1084#1077#1085#1102#1090#1086' - %s'
  ClientHeight = 423
  ClientWidth = 521
  Constraints.MaxWidth = 537
  Constraints.MinWidth = 537
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 382
    Width = 521
    Height = 41
    TabOrder = 2
    inherited pnlOKCancel: TPanel
      Left = 253
      Height = 41
      inherited btnOK: TBitBtn
        Top = 8
      end
      inherited btnCancel: TBitBtn
        Top = 8
      end
    end
    inherited pnlClose: TPanel
      Left = 164
      Height = 41
      inherited btnClose: TBitBtn
        Top = 8
      end
    end
    inherited pnlApply: TPanel
      Left = 432
      Height = 41
      Visible = False
      inherited btnApply: TBitBtn
        Top = 8
      end
    end
  end
  object pnlTop: TPanel [1]
    Left = 0
    Top = 0
    Width = 521
    Height = 97
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      521
      97)
    object bvlTop: TBevel
      Left = 8
      Top = 8
      Width = 505
      Height = 89
      Anchors = [akLeft, akTop, akRight, akBottom]
      Shape = bsFrame
    end
    object lblCustomMenuItemCode: TLabel
      Left = 24
      Top = 16
      Width = 19
      Height = 13
      Caption = #1050#1086#1076
      FocusControl = edtCustomMenuItemCode
    end
    object lblCustomMenuItemName: TLabel
      Left = 88
      Top = 16
      Width = 76
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FocusControl = edtCustomMenuItemName
    end
    object chbHasMenuLineBefore: TAbmesDBCheckBox
      Left = 24
      Top = 67
      Width = 92
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1051#1080#1085#1080#1103' '#1086#1090#1087#1088#1077#1076
      DataField = 'HAS_MENU_LINE_BEFORE'
      DataSource = dsData
      TabOrder = 2
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object chbIsInCaptionMenu: TAbmesDBCheckBox
      Left = 383
      Top = 67
      Width = 117
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1042' '#1083#1086#1082#1072#1083#1085#1086#1090#1086' '#1084#1077#1085#1102
      DataField = 'IS_IN_CAPTION_MENU'
      DataSource = dsData
      TabOrder = 5
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object chbHasMenuLineAfter: TAbmesDBCheckBox
      Left = 128
      Top = 67
      Width = 84
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1051#1080#1085#1080#1103' '#1086#1090#1079#1072#1076
      DataField = 'HAS_MENU_LINE_AFTER'
      DataSource = dsData
      TabOrder = 3
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object chbIsSubmenu: TAbmesDBCheckBox
      Left = 232
      Top = 67
      Width = 70
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1055#1086#1076#1084#1077#1085#1102
      DataField = 'IS_SUBMENU'
      DataSource = dsData
      TabOrder = 4
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object edtCustomMenuItemCode: TDBEdit
      Left = 24
      Top = 32
      Width = 49
      Height = 21
      Color = clBtnFace
      DataField = 'CUSTOM_MENU_ITEM_CODE'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 0
    end
    object edtCustomMenuItemName: TDBEdit
      Left = 88
      Top = 32
      Width = 361
      Height = 21
      DataField = 'CUSTOM_MENU_ITEM_NAME'
      DataSource = dsData
      TabOrder = 1
    end
    object pnlDocs: TToolBar
      Left = 459
      Top = 32
      Width = 37
      Height = 22
      Align = alNone
      AutoSize = True
      ButtonWidth = 24
      Images = dmMain.ilActions
      TabOrder = 6
      object btnDocs: TSpeedButton
        Left = 0
        Top = 0
        Width = 37
        Height = 22
        Hint = #1052#1048#1048#1054
        Flat = True
        Glyph.Data = {
          76010000424D760100000000000076000000280000001D000000100000000100
          0400000000000001000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDD33333DD
          DDDDDDDDDDDDDDDDD000DDDB0000000DDDDDDDDDDDDDDDDDD000DDBB33000333
          DDDDDDDDDDDDDDDDD000DBB33B000BB33DDDDDDDDDDDDDDDD000BB33BB0003BB
          33DDDDDDDDDDDDDDD000BB33B300033BB33DDDDDDDDDDDDDD000BB3BB3000B33
          BB3DDDDDDDDDDD0DD000BB3BB3000BB3BB33DDDDDDDDD000D000BB33000003B3
          BB33DDDDDDDD00000000BBB3BB333BB3BB33DDDDDDDDDDDDD000DBB33BBBBB33
          BB3DDDDDDDDDDDDDD000DBBB3300033BB33DDDDDDDDDDDDDD000DDBBB300033B
          B3DDDDDDDDDDDDDDD000DDDBBB303BBB33DDDDDDDDDDDDDDD000DDDDDBBBBBB3
          3DDDDDDDDDDDDDDDD000DDDDDDD3333DDDDDDDDDDDDDDDDDD000}
        ParentShowHint = False
        ShowHint = True
        Transparent = False
        OnClick = btnDocsClick
      end
    end
  end
  object pnlMenu: TPanel [2]
    Left = 0
    Top = 97
    Width = 521
    Height = 285
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 4
    TabOrder = 1
    DesignSize = (
      521
      285)
    object Bevel1: TBevel
      Left = 8
      Top = 12
      Width = 505
      Height = 273
      Anchors = [akLeft, akTop, akRight, akBottom]
      Shape = bsFrame
    end
    object pnlIsBeforeMenuItem: TPanel
      Left = 32
      Top = -1
      Width = 132
      Height = 22
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      DesignSize = (
        132
        22)
      object gbIsBeforeMenuItem: TDBRadioGroup
        Left = -2
        Top = -7
        Width = 156
        Height = 31
        Anchors = [akLeft, akTop, akRight]
        Columns = 2
        DataField = 'IS_BEFORE_MENU_ITEM'
        DataSource = dsData
        Items.Strings = (
          #1055#1088#1077#1076#1080
          #1057#1083#1077#1076)
        ParentBackground = True
        TabOrder = 0
        Values.Strings = (
          'True'
          'False')
      end
    end
    object grdMenu: TAbmesDBGrid
      Left = 16
      Top = 22
      Width = 489
      Height = 255
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataGrouping.GroupLevels = <>
      DataSource = dsMenu
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'Microsoft Sans Serif'
      FooterFont.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      RowDetailPanel.Color = clBtnFace
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Microsoft Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'MENU_ITEM_CAPTION'
          Footers = <>
          Title.Caption = #1052#1077#1085#1102
          Width = 456
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  inherited alActions: TActionList
    Left = 312
    inherited actForm: TAction
      Caption = #1052#1048#1048#1054' '#1074' '#1084#1077#1085#1102#1090#1086' - %s'
    end
  end
  inherited dsData: TDataSource
    Left = 224
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 192
  end
  object cdsMenu: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 240
    Top = 144
    object cdsMenuMENU_ITEM_NAME: TAbmesWideStringField
      FieldName = 'MENU_ITEM_NAME'
      Size = 100
    end
    object cdsMenuPARENT_MENU_ITEM_NAME: TAbmesWideStringField
      FieldName = 'PARENT_MENU_ITEM_NAME'
      Size = 100
    end
    object cdsMenuMENU_ITEM_CAPTION: TAbmesWideStringField
      FieldName = 'MENU_ITEM_CAPTION'
      Size = 100
    end
    object cdsMenuIMAGE_INDEX: TAbmesFloatField
      FieldName = 'IMAGE_INDEX'
    end
  end
  object dsMenu: TDataSource
    DataSet = cdsMenu
    Left = 272
    Top = 144
  end
end
