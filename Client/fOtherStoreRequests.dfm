inherited fmOtherStoreRequests: TfmOtherStoreRequests
  Caption = 'Други заявки'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMain: TPanel
    inherited pnlGrid: TPanel
      inherited pnlNavigator: TPanel
        inherited pnlFilterButton: TPanel
          Visible = False
        end
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    Params = <
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PLANNED_STORE_DEAL_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PLANNED_STORE_DEAL_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvOtherStoreRequests'
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = 'Други заявки'
    end
    inherited actFilter: TAction
      Visible = False
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    FieldDefs = <
      item
        Name = 'STORE_REQUEST_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STORE_REQUEST_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PLANNED_STORE_DEAL_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PLANNED_STORE_DEAL_CODE'
        DataType = ftFloat
      end>
  end
end
