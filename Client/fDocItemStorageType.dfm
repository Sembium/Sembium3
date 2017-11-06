inherited fmDocItemStorageType: TfmDocItemStorageType
  Caption = #1042#1080#1076' '#1057#1098#1093#1088#1072#1085#1077#1085#1080#1077' '#1085#1072' '#1048#1048#1054' - %s'
  ClientHeight = 300
  ClientWidth = 481
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 465
    Height = 249
  end
  object lblNo: TLabel [1]
    Left = 24
    Top = 24
    Width = 14
    Height = 13
    Caption = 'No'
  end
  object lblDocItemStorageTypeName: TLabel [2]
    Left = 80
    Top = 24
    Width = 76
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
  end
  object lblSelectCommand: TLabel [3]
    Left = 24
    Top = 80
    Width = 90
    Height = 13
    Caption = #1050#1086#1084#1072#1085#1076#1072' "'#1048#1079#1073#1086#1088'"'
  end
  object lblViewCommand: TLabel [4]
    Left = 24
    Top = 128
    Width = 101
    Height = 13
    Caption = #1050#1086#1084#1072#1085#1076#1072' "'#1055#1088#1077#1075#1083#1077#1076'"'
  end
  object lblEditCommand: TLabel [5]
    Left = 24
    Top = 176
    Width = 124
    Height = 13
    Caption = #1050#1086#1084#1072#1085#1076#1072' "'#1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'"'
  end
  object lblMacros: TLabel [6]
    Left = 24
    Top = 232
    Width = 252
    Height = 13
    Caption = #1042#1098#1079#1084#1086#1078#1085#1080' '#1084#1072#1082#1088#1086#1090#1072': %DocId% '#1080' %DocIdFileName%'
  end
  inherited pnlBottomButtons: TPanel
    Top = 265
    Width = 481
    inherited pnlOKCancel: TPanel
      Left = 213
    end
    inherited pnlClose: TPanel
      Left = 124
    end
    inherited pnlApply: TPanel
      Left = 392
      Visible = False
    end
  end
  object edtNo: TDBEdit [8]
    Left = 24
    Top = 40
    Width = 41
    Height = 21
    DataField = 'DOC_ITEM_STORAGE_TYPE_NO'
    DataSource = dsData
    TabOrder = 1
  end
  object edtName: TDBEdit [9]
    Left = 80
    Top = 40
    Width = 377
    Height = 21
    DataField = 'DOC_ITEM_STORAGE_TYPE_NAME'
    DataSource = dsData
    TabOrder = 2
  end
  object edtSelectCommand: TDBEdit [10]
    Left = 24
    Top = 96
    Width = 433
    Height = 21
    DataField = 'SELECT_COMMAND'
    DataSource = dsData
    TabOrder = 3
  end
  object edtViewCommand: TDBEdit [11]
    Left = 24
    Top = 144
    Width = 433
    Height = 21
    DataField = 'VIEW_COMMAND'
    DataSource = dsData
    TabOrder = 4
  end
  object edtEditCommand: TDBEdit [12]
    Left = 24
    Top = 192
    Width = 433
    Height = 21
    DataField = 'EDIT_COMMAND'
    DataSource = dsData
    TabOrder = 5
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1042#1080#1076' '#1057#1098#1093#1088#1072#1085#1077#1085#1080#1077' '#1085#1072' '#1048#1048#1054' - %s'
    end
  end
end
