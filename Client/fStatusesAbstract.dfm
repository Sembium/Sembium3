inherited fmStatusesAbstract: TfmStatusesAbstract
  Caption = 'fmStatusesAbstract'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMain: TPanel
    inherited pnlGrid: TPanel
      inherited pnlNavigator: TPanel
        inherited pnlFilterButton: TPanel
          Left = 168
        end
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 192
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 112
    Top = 128
  end
  inherited cdsGridData: TAbmesClientDataSet
    BeforePost = cdsGridDataBeforePost
    BeforeDelete = cdsGridDataBeforeDelete
    OnCalcFields = cdsGridDataCalcFields
    OnNewRecord = cdsGridDataNewRecord
    Left = 80
    Top = 128
    object cdsGridDataSTATUS_DATE: TAbmesSQLTimeStampField
      FieldName = 'STATUS_DATE'
    end
    object cdsGridDataNEXT_STATUS_DATE: TAbmesSQLTimeStampField
      FieldName = 'NEXT_STATUS_DATE'
    end
    object cdsGridData_EXISTANCE_MONTHS: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_EXISTANCE_MONTHS'
      Calculated = True
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = 'fmStatusesAbstract'
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 80
    Top = 160
  end
  inherited dsGridDataParams: TDataSource
    Left = 112
    Top = 160
  end
  inherited dsData: TDataSource
    Left = 112
    Top = 96
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 80
    Top = 96
  end
  object cdsStatuses: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 160
    Top = 128
  end
end
