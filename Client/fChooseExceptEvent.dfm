inherited fmChooseExceptEvent: TfmChooseExceptEvent
  ActiveControl = edtNo
  Caption = #1048#1079#1073#1086#1088' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
  ClientHeight = 100
  ClientWidth = 409
  ExplicitWidth = 415
  ExplicitHeight = 125
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 65
    Width = 409
    ExplicitTop = 65
    ExplicitWidth = 329
    inherited pnlOKCancel: TPanel
      Left = 141
      ExplicitLeft = 61
    end
    inherited pnlClose: TPanel
      Left = 52
      ExplicitLeft = -28
    end
    inherited pnlApply: TPanel
      Left = 320
      Visible = False
      ExplicitLeft = 240
    end
  end
  object gbExceptEvent: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 393
    Height = 49
    TabOrder = 1
    object lblExceptEvent: TLabel
      Left = 8
      Top = 12
      Width = 289
      Height = 25
      AutoSize = False
      Caption = 'lblExceptEvent'
      WordWrap = True
    end
    object edtNo: TDBEdit
      Left = 304
      Top = 16
      Width = 81
      Height = 21
      DataField = 'EXCEPT_EVENT_NO'
      DataSource = dsData
      TabOrder = 0
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1048#1079#1073#1086#1088' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
    end
  end
  inherited cdsData: TAbmesClientDataSet
    object cdsDataEXCEPT_EVENT_NO: TAbmesFloatField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'EXCEPT_EVENT_NO'
      Required = True
    end
  end
end
