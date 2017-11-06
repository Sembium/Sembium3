inherited fmExternalDocStorageDocId: TfmExternalDocStorageDocId
  Caption = #1042#1098#1085#1096#1077#1085' '#1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088
  ClientHeight = 108
  ClientWidth = 521
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 505
    Height = 57
  end
  inherited pnlBottomButtons: TPanel
    Top = 73
    Width = 521
    inherited pnlOKCancel: TPanel
      Left = 253
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 164
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 432
      Visible = False
    end
  end
  object edtExternalDocStorageDocId: TDBEdit [2]
    Left = 24
    Top = 24
    Width = 473
    Height = 21
    Color = clBtnFace
    DataField = 'DOC_ID'
    DataSource = dsData
    ReadOnly = True
    TabOrder = 1
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1042#1098#1085#1096#1077#1085' '#1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088
    end
  end
end
