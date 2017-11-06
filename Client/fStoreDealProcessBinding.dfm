inherited frStoreDealProcessBinding: TfrStoreDealProcessBinding
  Width = 777
  Height = 1065
  OnExit = FrameExit
  DesignSize = (
    777
    1065)
  inherited grpMain: TGroupBox
    Width = 777
    Height = 1061
    TabOrder = 1
    object pnlCurrentProcess: TPanel
      Left = 2
      Top = 15
      Width = 773
      Height = 1044
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      inline frEmptyFieldEditFrame: TfrEmptyFieldEditFrame
        Left = 0
        Top = 108
        Width = 773
        Height = 54
        Align = alTop
        TabOrder = 0
        TabStop = True
        Visible = False
      end
      inline frDeliveryProcessObject: TfrDeliveryProcessObject
        Left = 0
        Top = 216
        Width = 773
        Height = 54
        Align = alTop
        TabOrder = 1
        TabStop = True
        Visible = False
        inherited frInvoiceDate: TfrDateFieldEditFrame
          inherited dsData: TDataSource
            DataSet = frDeliveryProcessObject.pdsProcessObjectParams
          end
        end
      end
      inline frStoreDealInProcessObject: TfrStoreDealInProcessObject
        Left = 0
        Top = 594
        Width = 773
        Height = 54
        Align = alTop
        TabOrder = 2
        TabStop = True
        Visible = False
        inherited frStoreDealProcessObjectStore: TfrDeptFieldEditFrameBald
          inherited dsData: TDataSource
            DataSet = frStoreDealInProcessObject.pdsProcessObjectParams
          end
        end
        inherited frStoreDealDate: TfrDateFieldEditFrame
          inherited dsData: TDataSource
            DataSet = frStoreDealInProcessObject.pdsProcessObjectParams
          end
        end
      end
      inline frSDBindingPlannedSD: TfrSDBindingPlannedSD
        Left = 0
        Top = 432
        Width = 773
        Height = 54
        Align = alTop
        TabOrder = 3
        TabStop = True
        Visible = False
      end
      inline frSDBindingWorkProcess: TfrSDBindingWorkProcess
        Left = 0
        Top = 540
        Width = 773
        Height = 54
        Align = alTop
        TabOrder = 4
        TabStop = True
        Visible = False
      end
      inline frStoreDealOutProcessObject: TfrStoreDealOutProcessObject
        Left = 0
        Top = 648
        Width = 773
        Height = 54
        Align = alTop
        TabOrder = 5
        TabStop = True
        Visible = False
        inherited frStoreDealProcessObjectStore: TfrDeptFieldEditFrameBald
          inherited dsData: TDataSource
            DataSet = frStoreDealOutProcessObject.pdsProcessObjectParams
          end
        end
        inherited frStoreDealDate: TfrDateFieldEditFrame
          inherited dsData: TDataSource
            DataSet = frStoreDealOutProcessObject.pdsProcessObjectParams
          end
        end
      end
      inline frPPProcessObject: TfrPPProcessObject
        Left = 0
        Top = 324
        Width = 773
        Height = 54
        Align = alTop
        TabOrder = 6
        TabStop = True
        Visible = False
      end
      inline frSaleShipmentProcessObject: TfrSaleShipmentProcessObject
        Left = 0
        Top = 378
        Width = 773
        Height = 54
        Align = alTop
        TabOrder = 7
        TabStop = True
        Visible = False
      end
      inline frDeficitCoverDecisionProcessObject: TfrDeficitCoverDecisionProcessObject
        Left = 0
        Top = 54
        Width = 773
        Height = 54
        Align = alTop
        TabOrder = 8
        TabStop = True
        Visible = False
      end
      inline frSDBindingSimpleDelivery: TfrSDBindingSimpleDelivery
        Left = 0
        Top = 486
        Width = 773
        Height = 54
        Align = alTop
        TabOrder = 9
        TabStop = True
        Visible = False
      end
      inline frBPOIProcessObject: TfrBPOIProcessObject
        Left = 0
        Top = 0
        Width = 773
        Height = 54
        Align = alTop
        TabOrder = 10
        TabStop = True
        Visible = False
      end
      inline frMLMSOperation: TfrMLMSOperation
        Left = 0
        Top = 162
        Width = 773
        Height = 54
        Align = alTop
        TabOrder = 11
        TabStop = True
        Visible = False
      end
      inline frMLLProcessObject: TfrMLLProcessObject
        Left = 0
        Top = 270
        Width = 773
        Height = 54
        Align = alTop
        TabOrder = 12
        TabStop = True
        Visible = False
      end
      inline frSaleOrderProcessObject: TfrSaleOrderProcessObject
        Left = 0
        Top = 702
        Width = 773
        Height = 54
        Align = alTop
        TabOrder = 13
        TabStop = True
        Visible = False
      end
      inline frFinOrderLineProcessObject: TfrFinOrderLineProcessObject
        Left = 0
        Top = 756
        Width = 773
        Height = 93
        Align = alTop
        TabOrder = 14
        TabStop = True
        Visible = False
        inherited pnlFinProcessID: TPanel
          Height = 93
        end
        inherited pnlPartner: TPanel
          Height = 93
          inherited frPartner: TfrPartnerFieldEditFrameBald
            inherited dsData: TDataSource
              DataSet = frFinOrderLineProcessObject.pdsProcessObjectParams
            end
          end
        end
        inherited pnlBaseDateAndFinStatus: TPanel
          Height = 93
          inherited frBorderProcessObjectBaseDate: TfrDateFieldEditFrame
            inherited dsData: TDataSource
              DataSet = frFinOrderLineProcessObject.pdsProcessObjectParams
            end
          end
        end
        inherited pnlDocument: TPanel
          Height = 93
        end
        inherited pnlInvoiceNo: TPanel
          Height = 93
        end
      end
      inline frSaleRequestLineProcessObject: TfrSaleRequestLineProcessObject
        Left = 0
        Top = 849
        Width = 773
        Height = 54
        Align = alTop
        TabOrder = 15
        TabStop = True
        Visible = False
      end
    end
  end
  inherited pnlProcessCombo: TPanel
    Width = 609
    TabOrder = 0
    inherited lblProcess: TLabel
      Width = 118
      Caption = #1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090
    end
    inherited cbProcess: TJvDBLookupCombo
      Left = 125
      Width = 481
    end
  end
  inherited alActions: TActionList
    Left = 32
    Top = 16
  end
  inherited dsData: TDataSource
    Left = 64
    Top = 16
  end
end
