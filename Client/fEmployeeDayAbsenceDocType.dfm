inherited fmEmployeeDayAbsenceDocType: TfmEmployeeDayAbsenceDocType
  Left = 373
  Top = 385
  Caption = #1042#1080#1076' '#1044#1086#1082#1091#1084#1077#1085#1090' '#1079#1072' '#1062#1077#1083#1086#1076#1085#1077#1074#1085#1086' '#1054#1090#1089#1098#1089#1090#1074#1080#1077' - %s'
  ClientHeight = 108
  ClientWidth = 385
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 369
    Height = 57
  end
  object lblName: TLabel [1]
    Left = 24
    Top = 16
    Width = 76
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    FocusControl = edtName
  end
  inherited pnlBottomButtons: TPanel
    Top = 73
    Width = 385
    TabOrder = 1
    inherited pnlOKCancel: TPanel
      Left = 117
    end
    inherited pnlClose: TPanel
      Left = 28
    end
    inherited pnlApply: TPanel
      Left = 296
      Visible = False
    end
  end
  object edtName: TDBEdit [3]
    Left = 24
    Top = 32
    Width = 337
    Height = 21
    DataField = 'EMP_DAY_ABSENCE_DOC_TYPE_NAME'
    DataSource = dsData
    TabOrder = 0
  end
  inherited alActions: TActionList
    Left = 224
    inherited actForm: TAction
      Caption = #1042#1080#1076' '#1044#1086#1082#1091#1084#1077#1085#1090' '#1079#1072' '#1062#1077#1083#1086#1076#1085#1077#1074#1085#1086' '#1054#1090#1089#1098#1089#1090#1074#1080#1077' - %s'
    end
  end
  inherited dsData: TDataSource
    Left = 192
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 160
  end
end
