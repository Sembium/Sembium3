inherited fmSpecModelVariantTaskEdit: TfmSpecModelVariantTaskEdit
  Left = 270
  Top = 187
  ActiveControl = edtTaskName
  Caption = '%s'
  ClientHeight = 108
  ClientWidth = 409
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 393
    Height = 57
  end
  object lblTaskNo: TLabel [1]
    Left = 24
    Top = 16
    Width = 34
    Height = 13
    Caption = #1053#1086#1084#1077#1088
    FocusControl = edtTaskNo
  end
  object lblTaskName: TLabel [2]
    Left = 96
    Top = 16
    Width = 76
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    FocusControl = edtTaskName
  end
  inherited pnlBottomButtons: TPanel
    Top = 73
    Width = 409
    TabOrder = 2
    inherited pnlOKCancel: TPanel
      Left = 141
    end
    inherited pnlClose: TPanel
      Left = 52
    end
    inherited pnlApply: TPanel
      Left = 320
      Visible = False
    end
  end
  object edtTaskNo: TDBEdit [4]
    Left = 24
    Top = 32
    Width = 57
    Height = 21
    DataField = 'SPEC_MODEL_VARIANT_TASK_NO'
    DataSource = dsData
    ReadOnly = True
    TabOrder = 0
  end
  object edtTaskName: TDBEdit [5]
    Left = 96
    Top = 32
    Width = 289
    Height = 21
    DataField = 'SPEC_MODEL_VARIANT_TASK_NAME'
    DataSource = dsData
    TabOrder = 1
  end
  inherited alActions: TActionList
    Left = 256
    inherited actForm: TAction
      Caption = '%s'
    end
  end
  inherited dsData: TDataSource
    Left = 224
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 192
  end
end
