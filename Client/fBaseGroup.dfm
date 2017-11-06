inherited fmBaseGroup: TfmBaseGroup
  Left = 552
  Top = 375
  ActiveControl = edtBaseGroupName
  Caption = '%s'
  ClientHeight = 108
  ClientWidth = 401
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 385
    Height = 57
  end
  object lblBaseGroupNo: TLabel [1]
    Left = 24
    Top = 16
    Width = 34
    Height = 13
    Caption = #1053#1086#1084#1077#1088
    FocusControl = edtBaseGroupNo
  end
  object lblBaseGroupName: TLabel [2]
    Left = 80
    Top = 16
    Width = 217
    Height = 13
    Caption = #1050#1088#1072#1090#1082#1086' '#1086#1087#1080#1089#1072#1085#1080#1077' '#1085#1072' '#1089#1087#1077#1094#1080#1092#1080#1082#1072#1090#1072' '#1085#1072' ID '#1041#1043
    FocusControl = edtBaseGroupName
  end
  inherited pnlBottomButtons: TPanel
    Top = 73
    Width = 401
    TabOrder = 2
    inherited pnlOKCancel: TPanel
      Left = 133
    end
    inherited pnlClose: TPanel
      Left = 44
    end
    inherited pnlApply: TPanel
      Left = 312
      Visible = False
    end
  end
  object edtBaseGroupNo: TDBEdit [4]
    Left = 24
    Top = 32
    Width = 41
    Height = 21
    Color = clBtnFace
    DataField = 'BASE_GROUP_NO'
    DataSource = dsData
    ReadOnly = True
    TabOrder = 0
  end
  object edtBaseGroupName: TDBEdit [5]
    Left = 80
    Top = 32
    Width = 297
    Height = 21
    DataField = 'BASE_GROUP_NAME'
    DataSource = dsData
    TabOrder = 1
  end
  inherited alActions: TActionList
    Left = 272
    inherited actForm: TAction
      Caption = '%s'
    end
  end
  inherited dsData: TDataSource
    Left = 232
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 200
  end
end
