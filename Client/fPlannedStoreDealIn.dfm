inherited fmPlannedStoreDealIn: TfmPlannedStoreDealIn
  Caption = #1055#1083#1072#1085#1086#1074#1086' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1077' '#1085#1072' %ProductClassAbbrev%'
  PixelsPerInch = 96
  TextHeight = 13
  inherited frStoreDealProcessBinding: TfrStoreDealProcessBinding
    inherited grpMain: TGroupBox
      inherited pnlCurrentProcess: TPanel
        inherited frDeliveryProcessObject: TfrDeliveryProcessObject
          inherited frInvoiceDate: TfrDateFieldEditFrame
            inherited dsData: TDataSource
              DataSet = frStoreDealProcessBinding.frDeliveryProcessObject.pdsProcessObjectParams
            end
          end
        end
        inherited frStoreDealInProcessObject: TfrStoreDealInProcessObject
          inherited frStoreDealProcessObjectStore: TfrDeptFieldEditFrameBald
            inherited dsData: TDataSource
              DataSet = frStoreDealProcessBinding.frStoreDealInProcessObject.pdsProcessObjectParams
            end
          end
          inherited frStoreDealDate: TfrDateFieldEditFrame
            inherited dsData: TDataSource
              DataSet = frStoreDealProcessBinding.frStoreDealInProcessObject.pdsProcessObjectParams
            end
          end
        end
        inherited frStoreDealOutProcessObject: TfrStoreDealOutProcessObject
          inherited frStoreDealProcessObjectStore: TfrDeptFieldEditFrameBald
            inherited dsData: TDataSource
              DataSet = frStoreDealProcessBinding.frStoreDealOutProcessObject.pdsProcessObjectParams
            end
          end
          inherited frStoreDealDate: TfrDateFieldEditFrame
            inherited dsData: TDataSource
              DataSet = frStoreDealProcessBinding.frStoreDealOutProcessObject.pdsProcessObjectParams
            end
          end
        end
      end
    end
    inherited dsData: TDataSource
      DataSet = cdsData
    end
    inherited cdsProcesses: TAbmesClientDataSet
      Params = <
        item
          DataType = ftFloat
          Name = 'IS_INBOUND_PROCESS'
          ParamType = ptInput
          Value = '1'
        end
        item
          DataType = ftFloat
          Name = 'IS_OUTBOUND_PROCESS'
          ParamType = ptInput
          Value = '0'
        end
        item
          DataType = ftFloat
          Name = 'IS_REAL_STORE_DEAL_PROCESS'
          ParamType = ptInput
          Value = '0'
        end
        item
          DataType = ftFloat
          Name = 'IS_PLAN_STORE_DEAL_PROCESS'
          ParamType = ptInput
          Value = '1'
        end
        item
          DataType = ftFloat
          Name = 'IS_PROJ_STORE_DEAL_PROCESS'
          ParamType = ptInput
          Value = '1'
        end
        item
          DataType = ftFloat
          Name = 'IS_FINANCIAL_PROCESS'
          ParamType = ptInput
        end
        item
          DataType = ftFloat
          Name = 'IS_FINANCIAL_PROCESS'
          ParamType = ptInput
        end>
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1055#1083#1072#1085#1086#1074#1086' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1077' '#1085#1072' %ProductClassAbbrev%'
    end
  end
end
