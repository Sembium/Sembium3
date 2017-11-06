inherited EditForm: TEditForm
  Left = 334
  Top = 225
  Caption = 'EditForm'
  OnCanResize = FormCanResize
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  inherited alActions: TActionList
    inherited actForm: TAction [0]
      Caption = 'EditForm'
    end
    inherited actApplyUpdates: TAction [1]
    end
    inherited actCancelUpdates: TAction [2]
    end
    inherited actPrint: TAction [3]
    end
    object actToggleFormHeight: TAction
      GroupIndex = 251
      Hint = #1059#1075#1086#1083#1077#1084#1103#1074#1072' / '#1091#1084#1072#1083#1103#1074#1072' '#1074#1080#1089#1086#1095#1080#1085#1072#1090#1072
      ImageIndex = 48
      OnExecute = actToggleFormHeightExecute
    end
    object actToggleFormWidth: TAction
      GroupIndex = 252
      Hint = #1059#1075#1086#1083#1077#1084#1103#1074#1072' / '#1091#1084#1072#1083#1103#1074#1072' '#1074#1080#1089#1086#1095#1080#1085#1072#1090#1072
      ImageIndex = 53
      OnExecute = actToggleFormWidthExecute
    end
  end
  inherited dsData: TDataSource
    DataSet = cdsData
    Left = 32
  end
  object cdsData: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    AfterCancel = cdsDataAfterCancel
    AfterDelete = cdsDataAfterDelete
    OnNewRecord = cdsDataNewRecord
    OnReconcileError = cdsDataReconcileError
  end
end
