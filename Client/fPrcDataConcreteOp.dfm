inherited fmPrcDataConcreteOp: TfmPrcDataConcreteOp
  Caption = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1077#1085' '#1054#1087#1077#1088#1072#1085#1090' - %s'
  ClientHeight = 100
  ClientWidth = 433
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 65
    Width = 433
    inherited pnlOKCancel: TPanel
      Left = 165
    end
    inherited pnlClose: TPanel
      Left = 76
    end
    inherited pnlApply: TPanel
      Left = 344
      Visible = False
    end
  end
  inline frProcessConcreteOperation: TfrProcessConcreteOperationFieldEditFrame [1]
    Left = 8
    Top = 8
    Width = 417
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 1
  end
  inherited alActions: TActionList [2]
    inherited actForm: TAction
      Caption = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1077#1085' '#1054#1087#1077#1088#1072#1085#1090' - %s'
    end
  end
  inherited dsData: TDataSource [3]
    OnDataChange = dsDataDataChange
  end
  object cdsProcessConcreteOperation: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conProcesses
    Params = <
      item
        DataType = ftFloat
        Name = 'PRC_CONCRETE_OP_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvProcessConcreteOperation'
    Top = 32
    object cdsProcessConcreteOperationPRC_CONCRETE_OP_NAME: TAbmesWideStringField
      FieldName = 'PRC_CONCRETE_OP_NAME'
      Required = True
      Size = 100
    end
    object cdsProcessConcreteOperationPRC_CONCRETE_OP_SHORT_NAME: TAbmesWideStringField
      FieldName = 'PRC_CONCRETE_OP_SHORT_NAME'
      Required = True
      Size = 100
    end
    object cdsProcessConcreteOperationPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object cdsProcessConcreteOperationPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object cdsProcessConcreteOperationPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOCUMENTATION'
    end
    object cdsProcessConcreteOperationPRC_CONCRETE_OP_FULL_NO: TAbmesWideStringField
      FieldName = 'PRC_CONCRETE_OP_FULL_NO'
      Size = 100
    end
    object cdsProcessConcreteOperationPRC_CONCR_OP_FORMATTED_FULL_NO: TAbmesWideStringField
      FieldName = 'PRC_CONCR_OP_FORMATTED_FULL_NO'
      Size = 250
    end
  end
end
