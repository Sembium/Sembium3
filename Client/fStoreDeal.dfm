inherited fmStoreDeal: TfmStoreDeal
  Left = 251
  Top = 166
  Caption = 'Abstract Store Deal'
  ClientHeight = 437
  ClientWidth = 793
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 402
    Width = 793
    TabOrder = 1
    inherited pnlOKCancel: TPanel
      Left = 525
      TabOrder = 2
    end
    inherited pnlClose: TPanel
      Left = 436
      TabOrder = 1
    end
    inherited pnlApply: TPanel
      Left = 704
      TabOrder = 3
      Visible = False
    end
    object pnlBottomStuff: TPanel
      Left = 0
      Top = 0
      Width = 436
      Height = 35
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object pnlPrintButton: TPanel
        Left = 344
        Top = 0
        Width = 92
        Height = 35
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        object btnPrint: TBitBtn
          Left = 2
          Top = 2
          Width = 81
          Height = 25
          Action = actPrint
          Caption = #1055#1077#1095#1072#1090
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF00FF0000000000C6C6
            C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
            C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000C6C6
            C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
            C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000000000FFFF
            FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
            FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C6000000000000000000C6C6
            C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
            C600FFFFFF00C6C6C600FFFFFF000000FF00FFFFFF000000000000000000FFFF
            FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
            FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C60000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF0000000000000000000000000000000000FFFF
            FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF000000000000000000FFFFFF00000000000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
            FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF0000000000C6C6C600FFFFFF0000000000FFFF
            FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00000000000000000000000000000000000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 0
        end
      end
      object pnlPrintCheckbox: TPanel
        Left = 271
        Top = 0
        Width = 73
        Height = 35
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 2
        Visible = False
        object chkPrint: TCheckBox
          Left = 8
          Top = 6
          Width = 57
          Height = 17
          Caption = #1055#1077#1095#1072#1090
          TabOrder = 0
        end
      end
      object btnStorno: TBitBtn
        Left = 8
        Top = 2
        Width = 105
        Height = 25
        Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077'...'
        TabOrder = 0
        OnClick = btnStornoClick
      end
    end
  end
  object pnlClient: TPanel [1]
    Left = 0
    Top = 0
    Width = 793
    Height = 402
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      793
      402)
    object pnlStoreDealID: TPanel
      Left = 0
      Top = 0
      Width = 793
      Height = 74
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object grpStoreDealID: TGroupBox
        Left = 8
        Top = 4
        Width = 777
        Height = 63
        Caption = ' '#1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1094#1080#1103' '
        TabOrder = 0
        object lblDealNo: TLabel
          Left = 624
          Top = 16
          Width = 14
          Height = 13
          Caption = '&No'
        end
        object lblTreeNodeName: TLabel
          Left = 16
          Top = 16
          Width = 79
          Height = 13
          Caption = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
        end
        object lblDealDate: TLabel
          Left = 488
          Top = 16
          Width = 26
          Height = 13
          Caption = #1044#1072#1090#1072
        end
        object edtDealNo: TDBEdit
          Left = 624
          Top = 32
          Width = 89
          Height = 21
          DataField = 'STORE_DEAL_NO'
          DataSource = dsData
          TabOrder = 2
        end
        inline frStore: TfrDeptFieldEditFrameBald
          Left = 16
          Top = 32
          Width = 449
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 0
          TabStop = True
          inherited gbTreeNode: TGroupBox
            Width = 465
            inherited pnlTreeNode: TPanel
              Width = 449
              inherited pnlTreeNodeName: TPanel
                Width = 302
                inherited edtTreeNodeName: TDBEdit
                  Width = 301
                end
              end
              inherited pnlTreeNodeNo: TPanel
                Left = 302
              end
              inherited pnlRightButtons: TPanel
                Left = 413
              end
            end
          end
        end
        inline frDealDate: TfrDateFieldEditFrame
          Left = 488
          Top = 32
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 1
          TabStop = True
        end
        object tlbDocs: TToolBar
          Left = 725
          Top = 31
          Width = 36
          Height = 22
          Align = alNone
          AutoSize = True
          ButtonWidth = 36
          EdgeInner = esNone
          Images = dmMain.ilDocs
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          object btnDocs: TToolButton
            Left = 0
            Top = 0
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1044#1074#1080#1078#1077#1085#1080#1077#1090#1086
            ImageIndex = 1
            OnClick = btnDocsClick
          end
        end
        object tlbManualDealDate: TToolBar
          Left = 592
          Top = 31
          Width = 23
          Height = 22
          Align = alNone
          AutoSize = True
          Caption = 'tlbManualDealDate'
          Images = dmMain.ilActions
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          object btnManualDealDate: TToolButton
            Left = 0
            Top = 0
            Action = actManualDealDate
            AllowAllUp = True
          end
        end
      end
    end
    object pnlProductAndPrice: TPanel
      Left = 0
      Top = 147
      Width = 793
      Height = 125
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object gbProduct: TGroupBox
        Left = 8
        Top = 2
        Width = 777
        Height = 119
        Caption = ' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '
        TabOrder = 0
        object lblAccQuantity: TLabel
          Left = 432
          Top = 72
          Width = 87
          Height = 13
          Caption = #1057#1095#1077#1090'. '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
        end
        object lblQuantity: TLabel
          Left = 16
          Top = 72
          Width = 83
          Height = 13
          Caption = #1056#1072#1073'. '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
        end
        object dbtMeasure: TDBText
          Left = 168
          Top = 90
          Width = 41
          Height = 17
          DataField = '_PRODUCT_MEASURE_ABBREV'
          DataSource = dsData
        end
        object dbtAccMeasure: TDBText
          Left = 568
          Top = 90
          Width = 41
          Height = 17
          DataField = '_PRODUCT_ACC_MEASURE_ABBREV'
          DataSource = dsData
        end
        object edtQuantity: TDBEdit
          Left = 16
          Top = 88
          Width = 145
          Height = 21
          DataField = 'QUANTITY'
          DataSource = dsData
          TabOrder = 1
        end
        object edtAccQuantity: TDBEdit
          Left = 432
          Top = 88
          Width = 129
          Height = 21
          DataField = 'ACCOUNT_QUANTITY'
          DataSource = dsData
          TabOrder = 2
        end
        inline frProduct: TfrProductFieldEditFrame
          Left = 16
          Top = 16
          Width = 745
          Height = 49
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 49
          TabOrder = 0
          TabStop = True
          inherited gbTreeNode: TGroupBox
            Width = 745
            inherited pnlTreeNode: TPanel
              Width = 729
              inherited pnlTreeNodeName: TPanel
                Width = 547
                inherited edtTreeNodeName: TDBEdit
                  Width = 546
                end
              end
              inherited pnlTreeNodeNo: TPanel
                Left = 547
              end
              inherited pnlRightButtons: TPanel
                Left = 670
              end
            end
          end
        end
      end
    end
    object pnlEmployees: TPanel
      Left = 0
      Top = 326
      Width = 793
      Height = 76
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 3
      object gbResponsibleEmployees: TGroupBox
        Left = 8
        Top = 0
        Width = 777
        Height = 65
        Caption = ' '#1054#1090#1075#1086#1074#1086#1088#1085#1080' '#1051#1080#1094#1072' '
        TabOrder = 0
        object lblRequestEmployee: TLabel
          Left = 8
          Top = 16
          Width = 108
          Height = 13
          Caption = #1055#1086#1080#1089#1082#1072#1083' '#1076#1074#1080#1078#1077#1085#1080#1077#1090#1086
        end
        object lblStoreEmployee: TLabel
          Left = 256
          Top = 16
          Width = 25
          Height = 13
          Caption = #1052#1054#1051
        end
        object lblOtherEmployee: TLabel
          Left = 512
          Top = 16
          Width = 58
          Height = 13
          Caption = #1055#1054#1051' / '#1058#1054#1051
        end
        inline frRequestEmployee: TfrEmployeeFieldEditFrameBald
          Left = 8
          Top = 32
          Width = 241
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 0
          TabStop = True
          inherited gbEmployee: TGroupBox
            Width = 260
            inherited pnlEmployeeName: TPanel
              Width = 185
              inherited pnlRightButtons: TPanel
                Left = 149
              end
              inherited pnlEmpoyeeNameInner: TPanel
                Width = 149
                inherited edtEmployeeName: TDBEdit
                  Width = 103
                end
                inherited cbEmployee: TJvDBLookupCombo
                  Width = 148
                end
              end
            end
            inherited pnlPaddingRight: TPanel
              Left = 250
            end
          end
        end
        inline frStoreEmployee: TfrEmployeeFieldEditFrameBald
          Left = 256
          Top = 32
          Width = 249
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 1
          TabStop = True
          inherited gbEmployee: TGroupBox
            Width = 268
            inherited pnlEmployeeName: TPanel
              Width = 193
              inherited pnlRightButtons: TPanel
                Left = 157
              end
              inherited pnlEmpoyeeNameInner: TPanel
                Width = 157
                inherited edtEmployeeName: TDBEdit
                  Width = 111
                end
                inherited cbEmployee: TJvDBLookupCombo
                  Width = 156
                end
              end
            end
            inherited pnlPaddingRight: TPanel
              Left = 258
            end
          end
        end
        inline frOtherEmployee: TfrEmployeeFieldEditFrameBald
          Left = 512
          Top = 32
          Width = 257
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 2
          TabStop = True
          inherited gbEmployee: TGroupBox
            Width = 276
            inherited pnlEmployeeName: TPanel
              Width = 201
              inherited pnlRightButtons: TPanel
                Left = 165
              end
              inherited pnlEmpoyeeNameInner: TPanel
                Width = 165
                inherited edtEmployeeName: TDBEdit
                  Width = 119
                end
                inherited cbEmployee: TJvDBLookupCombo
                  Width = 164
                end
              end
            end
            inherited pnlPaddingRight: TPanel
              Left = 266
            end
          end
        end
      end
    end
    object pnlDept: TPanel
      Left = 0
      Top = 272
      Width = 793
      Height = 54
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      inline frDept: TfrDeptFieldEditFrame
        Left = 8
        Top = 0
        Width = 777
        Height = 49
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 49
        TabOrder = 0
        TabStop = True
        inherited gbTreeNode: TGroupBox
          Width = 777
          inherited pnlTreeNode: TPanel
            Width = 761
            inherited pnlTreeNodeName: TPanel
              Width = 614
              inherited edtTreeNodeName: TDBEdit
                Width = 613
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = 614
            end
            inherited pnlRightButtons: TPanel
              Left = 725
            end
          end
        end
      end
    end
    inline frStoreDealProcessBinding: TfrStoreDealProcessBinding
      Left = 8
      Top = 72
      Width = 777
      Height = 74
      Anchors = [akLeft, akTop, akBottom]
      TabOrder = 4
      TabStop = True
      inherited grpMain: TGroupBox
        Height = 70
        inherited pnlCurrentProcess: TPanel
          Height = 53
          inherited frEmptyFieldEditFrame: TfrEmptyFieldEditFrame
            inherited edtProcessObjectIdentifier: TDBText
              Width = 124
            end
          end
          inherited frDeliveryProcessObject: TfrDeliveryProcessObject
            inherited lblBranch: TLabel
              Width = 33
            end
            inherited lblRPDNo: TLabel
              Width = 43
            end
            inherited lblDeliveryProjectCode: TLabel
              Width = 42
            end
            inherited lblInvoiceNo: TLabel
              Width = 62
            end
            inherited lblInvoiceDate: TLabel
              Width = 86
            end
            inherited lblSaleDealTypeAbbrev: TLabel
              Width = 19
            end
            inherited lblIsProformInvoiceStatusOnDeliveryPanel: TLabel
              Width = 36
            end
            inherited frInvoiceDate: TfrDateFieldEditFrame
              inherited dsData: TDataSource
                DataSet = frStoreDealProcessBinding.frDeliveryProcessObject.pdsProcessObjectParams
              end
            end
          end
          inherited frStoreDealInProcessObject: TfrStoreDealInProcessObject
            inherited lblStoreDealProcessObjectStore: TLabel
              Width = 79
            end
            inherited lblStoreDealDate: TLabel
              Width = 112
            end
            inherited lblStoreDealNo: TLabel
              Width = 88
            end
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
          inherited frSDBindingPlannedSD: TfrSDBindingPlannedSD
            inherited lblBranch: TLabel
              Width = 79
            end
            inherited lblNo: TLabel
              Width = 14
            end
          end
          inherited frSDBindingWorkProcess: TfrSDBindingWorkProcess
            inherited lblWorkOrderNo: TLabel
              Width = 61
            end
          end
          inherited frStoreDealOutProcessObject: TfrStoreDealOutProcessObject
            inherited lblStoreDealProcessObjectStore: TLabel
              Width = 79
            end
            inherited lblStoreDealDate: TLabel
              Width = 86
            end
            inherited lblStoreDealNo: TLabel
              Width = 59
            end
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
          inherited frPPProcessObject: TfrPPProcessObject
            inherited lblBranch: TLabel
              Width = 33
            end
            inherited lblPPNo: TLabel
              Width = 40
            end
            inherited lblIsWasteCompensator: TLabel
              Width = 85
            end
            inherited lblProductionOrderTypeAbbrev: TLabel
              Width = 38
            end
            inherited lblProjectProduct: TLabel
              Width = 62
            end
          end
          inherited frSaleShipmentProcessObject: TfrSaleShipmentProcessObject
            inherited lblBranch: TLabel
              Width = 33
            end
            inherited lblPPNo: TLabel
              Width = 41
            end
            inherited lblShipmentNo: TLabel
              Width = 48
            end
            inherited lblSaleDealTypeAbbrev: TLabel
              Width = 19
            end
            inherited lblClientName: TLabel
              Width = 36
            end
          end
          inherited frDeficitCoverDecisionProcessObject: TfrDeficitCoverDecisionProcessObject
            inherited lblBranch: TLabel
              Width = 33
            end
            inherited lblDCDNo: TLabel
              Width = 43
            end
            inherited lblDeliveryDealTypeAbbrev: TLabel
              Width = 19
            end
          end
          inherited frSDBindingSimpleDelivery: TfrSDBindingSimpleDelivery
            inherited lblInvoiceNo: TLabel
              Width = 62
            end
            inherited lblInvoiceDate: TLabel
              Width = 89
            end
            inherited lblIsProformInvoiceStatusOnDeliveryPanel: TLabel
              Width = 36
            end
          end
          inherited frBPOIProcessObject: TfrBPOIProcessObject
            inherited lblBudgetOrderBrachIdentifier: TLabel
              Width = 33
            end
            inherited lblBudgerOrderCode: TLabel
              Width = 14
            end
            inherited lblBudgetOrderItemCode: TLabel
              Width = 22
            end
            inherited lblBudgetProductOrderItemNo: TLabel
              Width = 30
            end
            inherited lblSaleDealTypeAbbrev: TLabel
              Width = 19
            end
            inherited lblBudgetOrderProduct: TLabel
              Width = 172
            end
            inherited frBudgetOrderProduct: TfrProductFieldEditFrameBald
              inherited dsData: TDataSource
                DataSet = frStoreDealProcessBinding.frBPOIProcessObject.pdsProcessObjectParams
              end
            end
          end
          inherited frMLMSOperation: TfrMLMSOperation
            inherited lblBranch: TLabel
              Width = 33
            end
            inherited lblPPNo: TLabel
              Width = 40
            end
            inherited lblModelStageNo: TLabel
              Width = 38
            end
            inherited lblMLMSOperationNo: TLabel
              Width = 28
            end
            inherited lblMLMSOperationVariantNo: TLabel
              Width = 35
            end
            inherited lblNoAsText: TLabel
              Width = 85
            end
            inherited lblForkNo: TLabel
              Width = 13
            end
            inherited lblProductionOrderTypeAbbrev: TLabel
              Width = 38
            end
            inherited lblIsWasteCompensator: TLabel
              Width = 85
            end
            inherited lblProjectProduct: TLabel
              Width = 62
            end
          end
          inherited frMLLProcessObject: TfrMLLProcessObject
            inherited lblBranch: TLabel
              Width = 33
            end
            inherited lblPPNo: TLabel
              Width = 40
            end
            inherited lblNoAsText: TLabel
              Width = 85
            end
            inherited lblForkNo: TLabel
              Width = 13
            end
            inherited lblProductionOrderTypeAbbrev: TLabel
              Width = 38
            end
            inherited lblIsWasteCompensator: TLabel
              Width = 85
            end
            inherited lblProjectProduct: TLabel
              Width = 62
            end
          end
          inherited frSaleOrderProcessObject: TfrSaleOrderProcessObject
            inherited lblBranch: TLabel
              Width = 33
            end
            inherited lblNo: TLabel
              Width = 35
            end
            inherited lblLineNo: TLabel
              Width = 36
            end
          end
          inherited frFinOrderLineProcessObject: TfrFinOrderLineProcessObject
            inherited pnlFinProcessID: TPanel
              inherited lblBranch: TLabel
                Width = 33
              end
              inherited lblFinOrderNo: TLabel
                Width = 44
              end
              inherited lblFinModelLineTypeOnFinOrderAdminPanel: TLabel
                Width = 99
              end
            end
            inherited pnlPartner: TPanel
              inherited frPartner: TfrPartnerFieldEditFrameBald
                inherited dsData: TDataSource
                  DataSet = frStoreDealProcessBinding.frFinOrderLineProcessObject.pdsProcessObjectParams
                end
              end
            end
            inherited pnlBaseDateAndFinStatus: TPanel
              inherited lblBorderProcessObjectBaseDate: TLabel
                Width = 66
              end
              inherited lblFinStatus: TLabel
                Width = 35
              end
              inherited frBorderProcessObjectBaseDate: TfrDateFieldEditFrame
                inherited dsData: TDataSource
                  DataSet = frStoreDealProcessBinding.frFinOrderLineProcessObject.pdsProcessObjectParams
                end
              end
            end
            inherited pnlDocument: TPanel
              inherited lblShowProcessObjectForm: TLabel
                Width = 81
              end
            end
            inherited pnlFinOrderBndObject: TPanel
              inherited pnlSale: TPanel
                inherited lblSaleID: TLabel
                  Width = 38
                end
              end
              inherited pnlDelivery: TPanel
                inherited lblDeliveryID: TLabel
                  Width = 71
                end
              end
              inherited pnlProcessDelivery: TPanel
                inherited lblProcessID: TLabel
                  Width = 50
                end
              end
            end
          end
          inherited frSaleRequestLineProcessObject: TfrSaleRequestLineProcessObject
            inherited lblRequestNo: TLabel
              Width = 41
            end
            inherited lblRequestBrachIdentifier: TLabel
              Width = 33
            end
            inherited lblRequestLineNo: TLabel
              Width = 41
            end
            inherited lblSaleDealType: TLabel
              Width = 19
            end
          end
        end
      end
      inherited pnlProcessCombo: TPanel
        Width = 612
        inherited lblProcess: TLabel
          Width = 121
        end
        inherited cbProcess: TJvDBLookupCombo
          Left = 130
        end
      end
      inherited cdsProcesses: TAbmesClientDataSet
        inherited cdsProcessesPROCESS_ABBREV: TAbmesWideStringField
          DisplayWidth = 10
        end
      end
    end
  end
  inherited alActions: TActionList
    Left = 176
    Top = 320
    inherited actForm: TAction
      Caption = 'StoreDeal'
    end
    object actManualDealDate: TAction
      Caption = 'actManualDealDate'
      GroupIndex = 101
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077
      ImageIndex = 6
      OnExecute = actManualDealDateExecute
      OnUpdate = actManualDealDateUpdate
    end
  end
  inherited dsData: TDataSource
    Left = 272
    Top = 320
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conStore
    Params = <
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_OBJECT_BRANCH_CODE'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_OBJECT_CODE'
        ParamType = ptInput
        Value = Null
      end>
    ProviderName = 'prvDeals'
    BeforePost = cdsDataBeforePost
    OnCalcFields = cdsDataCalcFields
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    Left = 240
    Top = 320
    object cdsDataSTORE_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_OBJECT_BRANCH_CODE'
    end
    object cdsDataSTORE_DEAL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_OBJECT_CODE'
    end
    object cdsDataSTORE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
      FieldName = 'STORE_CODE'
      Required = True
      OnChange = cdsDataSTORE_CODEChange
    end
    object cdsDataSTORE_DEAL_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'STORE_DEAL_DATE'
      Required = True
      OnChange = cdsDataSTORE_DEAL_DATEChange
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object cdsDataSTORE_DEAL_NO: TAbmesFloatField
      DisplayLabel = #1053#1086#1084#1077#1088' '#1085#1072' '#1044#1074#1080#1078#1077#1085#1080#1077
      FieldName = 'STORE_DEAL_NO'
      Required = True
    end
    object cdsDataPRODUCT_CODE: TAbmesFloatField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'PRODUCT_CODE'
      Required = True
      OnChange = cdsDataPRODUCT_CODEChange
    end
    object cdsDataWANTED_QUANTITY: TAbmesFloatField
      DisplayLabel = #1055#1086#1080#1089#1082#1072#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'WANTED_QUANTITY'
      DisplayFormat = ',0.######'
      EditFormat = '0.######'
    end
    object cdsDataQUANTITY: TAbmesFloatField
      DisplayLabel = #1056#1072#1073'. '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'QUANTITY'
      Required = True
      DisplayFormat = ',0.######'
      EditFormat = '0.######'
    end
    object cdsDataACCOUNT_QUANTITY: TAbmesFloatField
      DisplayLabel = #1057#1095#1077#1090'. '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'ACCOUNT_QUANTITY'
      Required = True
      DisplayFormat = ',0.######'
      EditFormat = '0.######'
    end
    object cdsDataCURRENCY_CODE: TAbmesFloatField
      DisplayLabel = #1042#1072#1083#1091#1090#1072
      FieldName = 'CURRENCY_CODE'
      Required = True
    end
    object cdsDataTOTAL_PRICE: TAbmesFloatField
      DisplayLabel = #1054#1073#1097#1072' '#1094#1077#1085#1072
      FieldName = 'TOTAL_PRICE'
      Required = True
      DisplayFormat = ',0.##'
      EditFormat = '0.##'
    end
    object cdsDataSTORE_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1052#1054#1051
      FieldName = 'STORE_EMPLOYEE_CODE'
      Required = True
      OnChange = cdsDataSTORE_EMPLOYEE_CODEChange
    end
    object cdsDataOTHER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OTHER_EMPLOYEE_CODE'
      Required = True
      OnChange = cdsDataOTHER_EMPLOYEE_CODEChange
    end
    object cdsDataSTORE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_TYPE_CODE'
    end
    object cdsDataREQUEST_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1055#1086#1080#1089#1082#1072#1083' '#1076#1074#1080#1078#1077#1085#1080#1077#1090#1086
      FieldName = 'REQUEST_EMPLOYEE_CODE'
      Required = True
      OnChange = cdsDataREQUEST_EMPLOYEE_CODEChange
    end
    object cdsDataDEPT_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055
      FieldName = 'DEPT_CODE'
      OnChange = cdsDataDEPT_CODEChange
    end
    object cdsDataWORK_ORDER_NO: TAbmesWideStringField
      FieldName = 'WORK_ORDER_NO'
    end
    object cdsDataBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
      OnChange = cdsDataBND_PROCESS_OBJECT_BRANCH_CODEChange
    end
    object cdsDataBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090
      FieldName = 'BND_PROCESS_OBJECT_CODE'
      OnChange = cdsDataBND_PROCESS_OBJECT_CODEChange
    end
    object cdsDataBND_PROCESS_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090
      FieldName = 'BND_PROCESS_CODE'
      Visible = False
      OnChange = cdsDataBND_PROCESS_CODEChange
    end
    object cdsDataPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_BRANCH_CODE'
    end
    object cdsDataPLANNED_STORE_DEAL_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_CODE'
    end
    object cdsDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsDataCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object cdsDataCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object cdsDataSTORNO_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORNO_DATE'
    end
    object cdsDataSTORNO_TIME: TAbmesSQLTimeStampField
      FieldName = 'STORNO_TIME'
    end
    object cdsDataSTORNO_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'STORNO_EMPLOYEE_CODE'
    end
    object cdsDataOLD_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'OLD_DEAL_OBJECT_BRANCH_CODE'
    end
    object cdsDataOLD_DEAL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'OLD_DEAL_OBJECT_CODE'
    end
    object cdsDataPRODUCT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_MEASURE_CODE'
    end
    object cdsDataPRODUCT_ACC_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_ACC_MEASURE_CODE'
    end
    object cdsDataPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object cdsData_REQUEST_EMPLOYEE_CODE: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_REQUEST_EMPLOYEE_CODE'
      LookupDataSet = cdsEmployeeFrameAllEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NAME'
      KeyFields = 'REQUEST_EMPLOYEE_CODE'
      Size = 255
      Lookup = True
    end
    object cdsData_OTHER_EMPLOYEE_CODE: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_OTHER_EMPLOYEE_CODE'
      LookupDataSet = cdsEmployeeFrameAllEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NAME'
      KeyFields = 'OTHER_EMPLOYEE_CODE'
      Size = 255
      Lookup = True
    end
    object cdsData_STORE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_STORE_EMPLOYEE_NAME'
      LookupDataSet = cdsEmployeeFrameAllEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NAME'
      KeyFields = 'STORE_EMPLOYEE_CODE'
      Size = 255
      Lookup = True
    end
    object cdsData_PRODUCT_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_PRODUCT_MEASURE_ABBREV'
      LookupDataSet = cdsMeasures
      LookupKeyFields = 'MEASURE_CODE'
      LookupResultField = 'MEASURE_ABBREV'
      KeyFields = 'PRODUCT_MEASURE_CODE'
      Size = 5
      Lookup = True
    end
    object cdsData_PRODUCT_ACC_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_PRODUCT_ACC_MEASURE_ABBREV'
      LookupDataSet = cdsMeasures
      LookupKeyFields = 'MEASURE_CODE'
      LookupResultField = 'MEASURE_ABBREV'
      KeyFields = 'PRODUCT_ACC_MEASURE_CODE'
      Size = 5
      Lookup = True
    end
    object cdsDataPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 50
    end
    object cdsDataPRODUCT_ACC_MEASURE_COEF: TAbmesFloatField
      FieldName = 'PRODUCT_ACC_MEASURE_COEF'
    end
    object cdsData_BND_PROCESS_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_BND_PROCESS_ABBREV'
      LookupDataSet = cdsProcesses
      LookupKeyFields = 'PROCESS_CODE'
      LookupResultField = 'PROCESS_ABBREV'
      KeyFields = 'BND_PROCESS_CODE'
      Size = 100
      Lookup = True
    end
    object cdsData_PLANNED_STORE_DEAL_BRANCH_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_PLANNED_STORE_DEAL_BRANCH_NAME'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'NAME'
      KeyFields = 'PLANNED_STORE_DEAL_BRANCH_CODE'
      Size = 50
      Lookup = True
    end
    object cdsData_BND_PROCESS_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_BND_PROCESS_NAME'
      LookupDataSet = cdsProcesses
      LookupKeyFields = 'PROCESS_CODE'
      LookupResultField = 'PROCESS_NAME'
      KeyFields = 'BND_PROCESS_CODE'
      Size = 50
      Lookup = True
    end
    object cdsDataSINGLE_PRICE: TAbmesFloatField
      DisplayLabel = #1045#1076'. '#1094#1077#1085#1072
      FieldName = 'SINGLE_PRICE'
      ProviderFlags = []
      DisplayFormat = ',0.##'
      EditFormat = '0.##'
    end
    object cdsDataSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_BRANCH_CODE'
    end
    object cdsDataSTORE_REQUEST_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_CODE'
    end
    object cdsDataSTORE_REQUEST_ITEM_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_ITEM_CODE'
    end
    object cdsDataDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsDataDEPT_NO: TAbmesWideStringField
      FieldName = 'DEPT_NO'
      Size = 40
    end
    object cdsDataVENDOR_COMPANY_CODE: TAbmesFloatField
      DisplayLabel = #1044#1086#1089#1090#1072#1074#1095#1080#1082
      FieldName = 'VENDOR_COMPANY_CODE'
    end
    object cdsDataINVOICE_NO: TAbmesFloatField
      DisplayLabel = #1060#1072#1082#1090#1091#1088#1072' '#8470
      FieldName = 'INVOICE_NO'
    end
    object cdsDataINVOICE_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1092#1072#1082#1090#1091#1088#1072
      FieldName = 'INVOICE_DATE'
    end
    object cdsData_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACCOUNT_QUANTITY'
      Calculated = True
    end
    object cdsDataPRODUCT_ESTIMATED_SEC_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_ESTIMATED_SEC_PRICE'
      ProviderFlags = []
    end
    object cdsDataINVOICE_ABBREV: TAbmesWideStringField
      FieldName = 'INVOICE_ABBREV'
      Size = 5
    end
    object cdsDataPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PROCESS_OBJECT_IDENTIFIER'
      Size = 202
    end
    object cdsDataIS_WASTE_BOUND: TAbmesFloatField
      FieldName = 'IS_WASTE_BOUND'
      FieldValueType = fvtBoolean
    end
    object cdsDataIS_PROFORM_INVOICE: TAbmesFloatField
      FieldName = 'IS_PROFORM_INVOICE'
      FieldValueType = fvtBoolean
    end
    object cdsDataIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
    end
    object cdsData_STORNO_STATE: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_STORNO_STATE'
      Calculated = True
    end
    object cdsDataSTORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'STORE_IDENTIFIER'
      Size = 46
    end
    object cdsDataSTORE_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_BEGIN_DATE'
      ProviderFlags = []
    end
    object cdsDataSTORE_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_END_DATE'
      ProviderFlags = []
    end
    object cdsDataBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
      ProviderFlags = []
    end
    object cdsDataEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
      ProviderFlags = []
    end
    object cdsDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsDataHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
  end
  object cdsMeasures: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvMeasures'
    Left = 224
    Top = 230
    object cdsMeasuresMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
      Required = True
    end
    object cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Required = True
      Size = 5
    end
  end
  object cdsProcesses: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conStore
    Filtered = True
    Params = <
      item
        DataType = ftFloat
        Name = 'IS_INBOUND_PROCESS'
        ParamType = ptInput
        Value = '0'
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
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_PLAN_STORE_DEAL_PROCESS'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_PROJ_STORE_DEAL_PROCESS'
        ParamType = ptInput
        Value = '0'
      end>
    ProviderName = 'prvFilteredProcesses'
    Left = 416
    Top = 232
    object cdsProcessesPROCESS_CODE: TAbmesFloatField
      FieldName = 'PROCESS_CODE'
    end
    object cdsProcessesPROCESS_NO: TAbmesFloatField
      FieldName = 'PROCESS_NO'
    end
    object cdsProcessesPROCESS_ABBREV: TAbmesWideStringField
      FieldName = 'PROCESS_ABBREV'
      Size = 100
    end
    object cdsProcessesPROCESS_NAME: TAbmesWideStringField
      FieldName = 'PROCESS_NAME'
      Size = 100
    end
    object cdsProcessesIS_INBOUND_PROCESS: TAbmesFloatField
      FieldName = 'IS_INBOUND_PROCESS'
    end
    object cdsProcessesIS_OUTBOUND_PROCESS: TAbmesFloatField
      FieldName = 'IS_OUTBOUND_PROCESS'
    end
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Params = <>
    ProviderName = 'prvBranches'
    Left = 168
    Top = 56
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
    end
    object cdsBranchesNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 50
    end
    object cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField
      FieldName = 'BRANCH_CODE_AND_NAME'
      Size = 255
    end
  end
  object smrBoundProcess: TAbmesMatrixReport
    DataSource = dsBoundProcess
    Pattern.Strings = (
      '[_PRINT_BND_PROCESS_ID:79:L]'
      
        '----------------------------------------------------------------' +
        '---------------')
    StrictFieldWidths = False
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    BeforePrint = smrBoundProcessBeforePrint
    AfterPrint = smrBoundProcessAfterPrint
    Left = 344
    Top = 232
  end
  object smrStoreDealData: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      '%ProductClassName%: [PRODUCT_NAME:43:L] '#1053#1086#1084#1077#1088': [PRODUCT_NO:10:R]'
      
        '----------------------------------------------------------------' +
        '---------------'
      
        #1056#1072#1073'. '#1082'-'#1074#1086': [QUANTITY:9:R] [_PRODUCT_MEASURE_ABBREV:5:L]  '#1057#1095#1077#1090'. '#1082 +
        '-'#1074#1086': [ACCOUNT_QUANTITY:9:R] [_PRODUCT_ACC_MEASURE_ABBREV:5:L]'
      
        #1045#1076'. '#1094#1077#1085#1072': [SINGLE_PRICE:10:R]       '#1054#1073#1097#1072' '#1094#1077#1085#1072': [TOTAL_PRICE:10:R' +
        ']           '#1042#1072#1083#1091#1090#1072': [_CURRENCY_NAME:5:L]'
      
        '----------------------------------------------------------------' +
        '---------------'
      #1055#1086#1080#1089#1082#1072#1083' '#1076#1074#1080#1078#1077#1085#1080#1077#1090#1086': [_REQUEST_EMPLOYEE_CODE:49:L]..........'
      
        '                                                                ' +
        '     '
      #1055#1054#1051':                [_STORE_EMPLOYEE_NAME:49:L]..........'
      #1052#1054#1051':                [_OTHER_EMPLOYEE_CODE:49:L]..........'
      
        '----------------------------------------------------------------' +
        '---------------'
      
        #1054#1090#1087#1077#1095#1072#1090#1072#1085#1086' '#1086#1090' [AppName:0:L] '#1085#1072' [%DATE%:10:L] [%TIME%:8:L]         [C' +
        'OMPANY_SHORT_NAME:20:R]')
    StrictFieldWidths = False
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    OnGetFieldValues = smrStoreDealDataGetFieldValues
    Left = 376
    Top = 232
  end
  object mdsBoundProcess: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = mdsBoundProcessCalcFields
    Left = 328
    Top = 205
    object mdsBoundProcessBND_PROCESS_IDENTIFICATION: TAbmesWideStringField
      FieldName = 'BND_PROCESS_IDENTIFICATION'
      Size = 250
    end
    object mdsBoundProcessBND_PROCESS_ABBREV: TAbmesWideStringField
      FieldName = 'BND_PROCESS_ABBREV'
      Size = 100
    end
    object mdsBoundProcess_PRINT_BND_PROCESS_ID: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_PRINT_BND_PROCESS_ID'
      Size = 250
      Calculated = True
    end
  end
  object dsBoundProcess: TDataSource
    DataSet = mdsBoundProcess
    Left = 360
    Top = 205
  end
  object smrStoreDealHeader: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      
        '                             '#1044#1054#1050#1059#1052#1045#1053#1058' '#1047#1040' '#1055#1054#1057#1058#1066#1055#1051#1045#1053#1048#1045'            ' +
        '     [_STORNO_STATE:20:L]'
      
        '----------------------------------------------------------------' +
        '---------------'
      
        #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086': [STORE_IDENTIFIER:30:L]  '#1044#1072#1090#1072': [STORE_DEAL_DATE:14' +
        ':L]      No: [STORE_DEAL_NO:9:R]'
      
        '----------------------------------------------------------------' +
        '---------------')
    StrictFieldWidths = False
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    ReportFooter = smrStoreDealData
    GroupFooter = smrBoundProcess
    Left = 312
    Top = 232
  end
  object smrStoreDealWasteBoundHeader: TAbmesMatrixReport
    DataSource = dsData
    Pattern.Strings = (
      
        '[COMPANY_SHORT_NAME:20:L]   '#1044#1054#1050#1059#1052#1045#1053#1058' '#1047#1040' '#1055#1054#1057#1058#1066#1055#1051#1045#1053#1048#1045' '#1055#1054' '#1040#1050#1058' '#1047#1040' '#1041#1051 +
        #1054#1050'       [_STORNO_STATE:20:L]'
      
        '----------------------------------------------------------------' +
        '---------------'
      
        #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086': [_STORE_IDENTIFIER:30:L]  '#1044#1072#1090#1072': [STORE_DEAL_DATE:1' +
        '4:L]     No: [STORE_DEAL_NO:10:R]'
      
        '----------------------------------------------------------------' +
        '---------------')
    StrictFieldWidths = False
    AllowPageBreak = apbNone
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    ReportFooter = smrStoreDealData
    GroupFooter = smrBoundProcess
    Left = 312
    Top = 264
  end
  object cdsEmployeeFrameAllEmployees: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <
      item
        DataType = ftFloat
        Name = 'SPECIAL_PROFESSION_EMPLOYEE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPECIAL_PROFESSION_EMPLOYEE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPECIAL_PROFESSION_EMPLOYEE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPECIAL_PROFESSION_EMPLOYEE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUIRED_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUIRED_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUIRED_PROFESSION_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvEmployeeFrame'
    Left = 592
    Top = 160
  end
  object cdsProductData: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conProductsTree
    Params = <
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
      end>
    ProviderName = 'prvNodeData'
    Top = 192
    object cdsProductDataNODE_NO: TAbmesFloatField
      FieldName = 'NODE_NO'
    end
    object cdsProductDataNODE_NAME: TAbmesWideStringField
      FieldName = 'NODE_NAME'
      Size = 100
    end
    object cdsProductDataACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object cdsProductDataACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
    end
    object cdsProductDataESTIMATED_SECONDARY_PRICE: TAbmesFloatField
      FieldName = 'ESTIMATED_SECONDARY_PRICE'
    end
    object cdsProductDataWORK_MEASURE_CODE: TAbmesFloatField
      FieldName = 'WORK_MEASURE_CODE'
    end
  end
end
