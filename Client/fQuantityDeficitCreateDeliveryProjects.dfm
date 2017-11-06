inherited fmQuantityDeficitCreateDeliveryProjects: TfmQuantityDeficitCreateDeliveryProjects
  Caption = #1052#1085#1086#1078#1077#1089#1090#1074#1077#1085#1086' '#1089#1098#1079#1076#1072#1074#1072#1085#1077' '#1085#1072' '#1054#1044#1044' '#1082#1098#1084' '#1055#1044#1044' '#1057#1091#1073#1077#1082#1090#1086#1074
  ClientHeight = 666
  ClientWidth = 1017
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 631
    Width = 1017
    inherited pnlOKCancel: TPanel
      Left = 749
      TabOrder = 2
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 660
      TabOrder = 1
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 928
      TabOrder = 3
      Visible = False
    end
    object pnlCreateDeliveryProjects: TPanel
      Left = 0
      Top = 0
      Width = 233
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object btnCreateDeliveryProjects: TBitBtn
        Left = 8
        Top = 2
        Width = 217
        Height = 25
        Action = actCreateDeliveryProjects
        Caption = #1052#1085#1086#1078#1077#1089#1090#1074#1077#1085#1086' '#1057#1098#1079#1076#1072#1074#1072#1085#1077' '#1085#1072' '#1054#1044#1044'...'
        TabOrder = 0
      end
    end
    object pnlProgress: TPanel
      Left = 233
      Top = 0
      Width = 432
      Height = 35
      Align = alLeft
      Alignment = taLeftJustify
      BevelOuter = bvNone
      TabOrder = 4
      VerticalAlignment = taAlignTop
      Visible = False
      DesignSize = (
        432
        35)
      object pbProgress: TProgressBar
        Left = 0
        Top = 16
        Width = 425
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Step = 1
        TabOrder = 0
      end
    end
  end
  inherited pnlMain: TPanel
    Width = 1017
    Height = 631
    inherited pnlGrid: TPanel
      Top = 81
      Width = 1001
      Height = 542
      TabOrder = 1
      inherited pnlNavigator: TPanel
        Width = 1001
        inherited pnlFilterButton: TPanel
          Left = 120
        end
        inherited navData: TDBColorNavigator
          Width = 120
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 144
          Width = 88
          object sepBeforeVIMQuantity: TToolButton
            Left = 56
            Top = 0
            Width = 8
            ImageIndex = 3
            Style = tbsSeparator
          end
          object btnShowVIM: TToolButton
            Left = 64
            Top = 0
            Action = actShowVIM
          end
        end
        object tlbHideNonDeficitRows: TToolBar
          Left = 924
          Top = 0
          Width = 23
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 24
          Images = dmMain.ilActions
          TabOrder = 3
          object btnHideNonDeficitRows: TToolButton
            Left = 0
            Top = 0
            Action = actHideNonDeficitRows
            Style = tbsCheck
          end
        end
        object tlbMeasures: TToolBar
          Left = 947
          Top = 0
          Width = 54
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 24
          Images = dmMain.ilActions
          TabOrder = 4
          object sepMeasures: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepMeasures'
            ImageIndex = 17
            Style = tbsSeparator
          end
          object btnWorkMeasure: TToolButton
            Tag = 2
            Left = 8
            Top = 0
            Hint = #1056#1072#1073#1086#1090#1085#1072' '#1084#1077#1088#1085#1072' '#1077#1076#1080#1085#1080#1094#1072
            Down = True
            Grouped = True
            ImageIndex = 23
            Style = tbsCheck
          end
          object btnAccountMeasure: TToolButton
            Left = 31
            Top = 0
            Hint = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1072' '#1084#1077#1088#1085#1072' '#1077#1076#1080#1085#1080#1094#1072
            Grouped = True
            ImageIndex = 28
            Style = tbsCheck
          end
        end
        object tlbDoc: TToolBar
          Left = 232
          Top = 0
          Width = 81
          Height = 24
          Align = alLeft
          ButtonHeight = 24
          ButtonWidth = 38
          Caption = 'tlbDoc'
          Images = dmMain.ilDocs
          TabOrder = 5
          object sepBeforeDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Style = tbsSeparator
          end
          object lblProductDoc: TLabel
            Left = 8
            Top = 0
            Width = 28
            Height = 24
            Caption = ' '#1059#1054#1073' '
            Layout = tlCenter
          end
          object btnProductDoc: TToolButton
            Left = 36
            Top = 0
            Action = actProductDoc
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 1001
        Height = 518
        UseMultiTitle = True
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'PRODUCT_NAME'
            Footers = <>
            Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090'|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
            Width = 167
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_NO'
            Footers = <>
            Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090'|id '#1094#1080#1092#1088#1086#1074
            Width = 79
          end
          item
            Color = 16243908
            EditButtons = <>
            FieldName = 'DELIVERY_DATE'
            Footers = <>
            Title.Caption = #1044#1072#1090#1072' '#1085#1072' '#1055#1086#1083#1091#1095#1072#1074#1072#1085#1077
            Width = 69
          end
          item
            EditButtons = <>
            FieldName = 'QUANTITY_DEFICIT'
            Footers = <>
            Tag = 3
            Title.Caption = #1057#1091#1084#1072#1088#1077#1085' '#1044#1077#1092#1080#1094#1080#1090
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = '_ACCOUNT_QUANTITY_DEFICIT'
            Footers = <>
            Tag = 2
            Title.Caption = #1057#1091#1084#1072#1088#1077#1085' '#1044#1077#1092#1080#1094#1080#1090
            Visible = False
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'MIN_QUANTITY'
            Footers = <>
            Tag = 3
            Title.Caption = #1047#1072#1076#1077#1083' '#1074' '#1082#1088#1072#1081' '#1085#1072' '#1042#1088#1084#1048#1085#1090
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = '_ACCOUNT_MIN_QUANTITY'
            Footers = <>
            Tag = 2
            Title.Caption = #1047#1072#1076#1077#1083' '#1074' '#1082#1088#1072#1081' '#1085#1072' '#1042#1088#1084#1048#1085#1090
            Visible = False
            Width = 74
          end
          item
            Color = 15137255
            EditButtons = <>
            FieldName = 'QUANTITY'
            Footers = <>
            Tag = 3
            Title.Caption = #1057#1091#1084'. '#1055#1083'. '#1053#1072#1083#1080#1095#1085#1086#1089#1090
            Width = 66
          end
          item
            Color = 15137255
            EditButtons = <>
            FieldName = '_ACCOUNT_QUANTITY'
            Footers = <>
            Tag = 2
            Title.Caption = #1057#1091#1084'. '#1055#1083'. '#1053#1072#1083#1080#1095#1085#1086#1089#1090
            Visible = False
            Width = 66
          end
          item
            Color = 15790320
            EditButtons = <>
            FieldName = 'DELIVERY_PROJECT_QUANTITY'
            Footers = <>
            Tag = 3
            Title.Caption = #1050'-'#1074#1086' '#1079#1072' '#1054#1044#1044
            Width = 66
          end
          item
            Color = 15790320
            EditButtons = <>
            FieldName = 'ACCOUNT_DELIVERY_PROJECT_QTY'
            Footers = <>
            Tag = 2
            Title.Caption = #1050'-'#1074#1086' '#1079#1072' '#1054#1044#1044
            Visible = False
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'MEASURE_ABBREV'
            Footers = <>
            Tag = 3
            Title.Caption = #1056#1072#1073'. '#1084'.'#1077#1076'.'
            Width = 32
          end
          item
            EditButtons = <>
            FieldName = 'ACCOUNT_MEASURE_ABBREV'
            Footers = <>
            Tag = 2
            Title.Caption = #1057#1095#1077#1090'. '#1084'.'#1077#1076'.'
            Visible = False
            Width = 32
          end
          item
            EditButtons = <>
            FieldName = 'STORE_IDENTIFIER'
            Footers = <>
            Title.Caption = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'SINGLE_PRICE'
            Footers = <>
            Tag = 3
            Title.Caption = #1062#1077#1085#1072'|'#1045#1076#1080#1085#1080#1095#1085#1072
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'ACCOUNT_SINGLE_PRICE'
            Footers = <>
            Tag = 2
            Title.Caption = #1062#1077#1085#1072'|'#1045#1076#1080#1085#1080#1095#1085#1072
            Visible = False
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = '_CURRENCY_ABBREV'
            Footers = <>
            Title.Caption = #1062#1077#1085#1072'|'#1042#1072#1083#1091#1090#1072
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = '_TOTAL_PRICE'
            Footers = <>
            Title.Caption = #1062#1077#1085#1072'|'#1054#1073#1097#1086
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'IS_TRANSPORT_FROM_VENDOR'
            Footers = <>
            Title.Caption = #1054#1088#1075#1072#1085#1080#1079'. '#1090#1088#1072#1085#1089#1087'.'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'DELIVERY_PROJECT_STATE'
            Footers = <>
            Title.Caption = #1057#1090#1072#1090#1091#1089
            Title.Orientation = tohVertical
            Width = 24
          end>
      end
    end
    object pnlDeficitCoverDecision: TPanel
      Left = 8
      Top = 8
      Width = 1001
      Height = 73
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object gbDeficitCoverDecision: TGroupBox
        Left = 0
        Top = 0
        Width = 649
        Height = 65
        Caption = ' ID '#1055#1044#1044' '#1057#1091#1073#1077#1082#1090#1086#1074' '
        TabOrder = 0
        object lblDCDType: TLabel
          Left = 16
          Top = 16
          Width = 19
          Height = 13
          Caption = #1058#1080#1087
        end
        object lblDCDBranch: TLabel
          Left = 72
          Top = 16
          Width = 51
          Height = 13
          Caption = #1058#1055' '#1043#1083'.'
          FocusControl = cbDCDBranch
        end
        object lblDCDCode: TLabel
          Left = 136
          Top = 16
          Width = 14
          Height = 13
          Caption = 'No'
          FocusControl = edtDCDCode
        end
        object lblDCDVendor: TLabel
          Left = 264
          Top = 16
          Width = 55
          Height = 13
          Caption = #1044#1086#1089#1090#1072#1074#1095#1080#1082
        end
        object lblDCDVendorCountry: TLabel
          Left = 576
          Top = 16
          Width = 48
          Height = 13
          Caption = #1044#1098#1088#1078#1072#1074#1072
        end
        object cbDCDBranch: TJvDBLookupCombo
          Left = 72
          Top = 32
          Width = 57
          Height = 21
          DropDownWidth = 200
          DeleteKeyClear = False
          DataField = 'DCD_BRANCH_CODE'
          DataSource = dsSelectDCD
          LookupField = 'BRANCH_CODE'
          LookupDisplay = 'BRANCH_CODE_AND_NAME'
          LookupSource = dsBranches
          TabOrder = 1
        end
        object edtDCDCode: TDBEdit
          Left = 136
          Top = 32
          Width = 57
          Height = 21
          DataField = 'DCD_CODE'
          DataSource = dsSelectDCD
          TabOrder = 2
        end
        inline frVendor: TfrPartnerFieldEditFrameBald
          Left = 264
          Top = 32
          Width = 305
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 5
          inherited gbPartner: TGroupBox
            Width = 320
            inherited pnlNameAndButtons: TPanel
              Width = 231
              inherited pnlRightButtons: TPanel
                Left = 195
              end
              inherited pnlPartnerName: TPanel
                Width = 195
                inherited edtPartnerName: TDBEdit
                  Width = 181
                end
                inherited cbPartner: TJvDBLookupCombo
                  Width = 196
                end
              end
            end
            inherited pnlPaddingRight: TPanel
              Left = 312
            end
          end
        end
        object btnNewDeficitCoverDecision: TBitBtn
          Left = 228
          Top = 30
          Width = 26
          Height = 25
          Action = actNewDeficitCoverDecision
          TabOrder = 4
        end
        object edtDeliveryDealType: TDBEdit
          Left = 16
          Top = 32
          Width = 49
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'DELIVERY_DEAL_TYPE_ABBREV'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 0
        end
        object edtDCDVendorCountry: TDBEdit
          Left = 576
          Top = 32
          Width = 57
          Height = 21
          Color = clBtnFace
          DataField = 'VEDOR_COMPANY_COUNTRY'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 6
        end
        object btnSelectDeficitCoverDecision: TBitBtn
          Left = 200
          Top = 30
          Width = 26
          Height = 25
          Action = actSelectDeficitCoverDecision
          TabOrder = 3
        end
      end
      object gbDateInterval: TGroupBox
        Left = 664
        Top = 0
        Width = 177
        Height = 65
        Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1083#1072#1085#1080#1088#1072#1085#1077' '
        TabOrder = 1
        inline frDateInterval: TfrDateIntervalFrame
          Left = 16
          Top = 32
          Width = 145
          Height = 21
          TabOrder = 0
        end
      end
      object gbIsTowardsReserve: TGroupBox
        Left = 856
        Top = 0
        Width = 145
        Height = 65
        Caption = ' '#1056#1077#1078#1080#1084' '#1085#1072' '#1053#1072#1083#1080#1095#1085#1086#1089#1090' '
        TabOrder = 2
        object edtIsTowardsReserve: TDBEdit
          Left = 16
          Top = 32
          Width = 113
          Height = 21
          Color = clBtnFace
          DataField = '_IS_TOWARDS_RESERVE'
          DataSource = dsHeader
          TabOrder = 0
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 56
    Top = 296
  end
  inherited cdsGridData: TAbmesClientDataSet
    Filtered = True
    IndexFieldNames = 'PRODUCT_NO'
    OnCalcFields = cdsGridDataCalcFields
    OnFilterRecord = cdsGridDataFilterRecord
    OnNewRecord = cdsGridDataNewRecord
    Left = 24
    Top = 296
    object cdsGridDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsGridDataPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsGridDataPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object cdsGridDataACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
    end
    object cdsGridDataDELIVERY_DATE: TAbmesSQLTimeStampField
      FieldName = 'DELIVERY_DATE'
    end
    object cdsGridDataQUANTITY_DEFICIT: TAbmesFloatField
      FieldName = 'QUANTITY_DEFICIT'
      DisplayFormat = ',0.0'
    end
    object cdsGridDataMIN_QUANTITY: TAbmesFloatField
      FieldName = 'MIN_QUANTITY'
      DisplayFormat = ',0.0'
    end
    object cdsGridDataQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
      DisplayFormat = ',0.0'
    end
    object cdsGridDataDELIVERY_PROJECT_QUANTITY: TAbmesFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1079#1072' '#1054#1044#1044
      FieldName = 'DELIVERY_PROJECT_QUANTITY'
      OnChange = cdsGridDataDELIVERY_PROJECT_QUANTITYChange
      DisplayFormat = ',0.0'
    end
    object cdsGridDataSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
      OnChange = cdsGridDataSTORE_CODEChange
    end
    object cdsGridDataSTORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'STORE_IDENTIFIER'
      Size = 46
    end
    object cdsGridDataDEPT_IS_STORE: TAbmesFloatField
      FieldName = 'DEPT_IS_STORE'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataSINGLE_PRICE: TAbmesFloatField
      DisplayLabel = #1045#1076#1080#1085#1080#1095#1085#1072' '#1094#1077#1085#1072
      FieldName = 'SINGLE_PRICE'
      OnChange = cdsGridDataSINGLE_PRICEChange
      DisplayFormat = ',0.00'
    end
    object cdsGridDataCURRENCY_CODE: TAbmesFloatField
      DisplayLabel = #1042#1072#1083#1091#1090#1072
      FieldName = 'CURRENCY_CODE'
    end
    object cdsGridData_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_CURRENCY_ABBREV'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = 'CURRENCY_CODE'
      Size = 5
      Lookup = True
    end
    object cdsGridData_TOTAL_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_PRICE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridDataIS_TRANSPORT_FROM_VENDOR: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'IS_TRANSPORT_FROM_VENDOR'
      OnGetText = cdsGridDataIS_TRANSPORT_FROM_VENDORGetText
      FieldValueType = fvtBoolean
    end
    object cdsGridDataDELIVERY_PROJECT_STATE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'DELIVERY_PROJECT_STATE'
      OnGetText = cdsGridDataDELIVERY_PROJECT_STATEGetText
    end
    object cdsGridDataERROR_MESSAGE: TAbmesWideStringField
      FieldName = 'ERROR_MESSAGE'
      Size = 250
    end
    object cdsGridData_VENDOR_COMPANY_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_VENDOR_COMPANY_CODE'
      Calculated = True
    end
    object cdsGridDataMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridData_ACCOUNT_QUANTITY_DEFICIT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACCOUNT_QUANTITY_DEFICIT'
      DisplayFormat = ',0.0'
      Calculated = True
    end
    object cdsGridData_ACCOUNT_MIN_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACCOUNT_MIN_QUANTITY'
      DisplayFormat = ',0.0'
      Calculated = True
    end
    object cdsGridData_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACCOUNT_QUANTITY'
      DisplayFormat = ',0.0'
      Calculated = True
    end
    object cdsGridDataACCOUNT_DELIVERY_PROJECT_QTY: TAbmesFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1079#1072' '#1054#1044#1044
      FieldName = 'ACCOUNT_DELIVERY_PROJECT_QTY'
      OnChange = cdsGridDataACCOUNT_DELIVERY_PROJECT_QTYChange
      DisplayFormat = ',0.0'
    end
    object cdsGridDataACCOUNT_SINGLE_PRICE: TAbmesFloatField
      DisplayLabel = #1045#1076#1080#1085#1080#1095#1085#1072' '#1094#1077#1085#1072
      FieldName = 'ACCOUNT_SINGLE_PRICE'
      OnChange = cdsGridDataACCOUNT_SINGLE_PRICEChange
      DisplayFormat = ',0.00'
    end
    object cdsGridDataPRODUCT_HAS_DOC: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC'
      FieldValueType = fvtBoolean
    end
  end
  inherited alActions: TActionList
    Left = 144
    Top = 200
    inherited actForm: TAction
      Caption = #1052#1085#1086#1078#1077#1089#1090#1074#1077#1085#1086' '#1089#1098#1079#1076#1072#1074#1072#1085#1077' '#1085#1072' '#1054#1044#1044' '#1082#1098#1084' '#1055#1044#1044' '#1057#1091#1073#1077#1082#1090#1086#1074
    end
    object actNewDeficitCoverDecision: TAction
      Hint = #1053#1086#1074' '#1055#1044#1044' '#1057#1091#1073#1077#1082#1090#1086#1074
      ImageIndex = 34
      OnExecute = actNewDeficitCoverDecisionExecute
    end
    object actHideNonDeficitRows: TAction
      Checked = True
      Hint = #1057#1082#1088#1080#1074#1072' '#1088#1077#1076#1086#1074#1077' '#1073#1077#1079' '#1044#1077#1092#1080#1094#1080#1090
      ImageIndex = 16
      OnExecute = actHideNonDeficitRowsExecute
    end
    object actCreateDeliveryProjects: TAction
      Caption = #1052#1085#1086#1078#1077#1089#1090#1074#1077#1085#1086' '#1057#1098#1079#1076#1072#1074#1072#1085#1077' '#1085#1072' '#1054#1044#1044'...'
      Hint = #1057#1098#1079#1076#1072#1074#1072#1085#1077' '#1085#1072' '#1054#1044#1044' '#1082#1098#1084' '#1055#1044#1044' '#1057#1091#1073#1077#1082#1090#1086#1074
      ImageIndex = 34
      OnExecute = actCreateDeliveryProjectsExecute
      OnUpdate = actCreateDeliveryProjectsUpdate
    end
    object actSelectDeficitCoverDecision: TAction
      Hint = #1048#1079#1073#1086#1088' '#1085#1072' '#1055#1044#1044' '#1057#1091#1073#1077#1082#1090#1086#1074' '#1086#1090' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1044#1044
      ImageIndex = 3
      OnExecute = actSelectDeficitCoverDecisionExecute
    end
    object actShowVIM: TAction
      Hint = #1042#1048#1052' '#1053#1072#1083#1080#1095#1085#1086#1089#1090
      ImageIndex = 30
      OnExecute = actShowVIMExecute
      OnUpdate = actShowVIMUpdate
    end
    object actProductDoc: TAction
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1059#1054#1073
      ImageIndex = 98
      OnExecute = actProductDocExecute
      OnUpdate = actProductDocUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 24
    Top = 328
  end
  inherited dsGridDataParams: TDataSource
    Left = 56
    Top = 328
  end
  inherited dsData: TDataSource
    Left = 56
    Top = 200
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conDeliveries
    Params = <
      item
        DataType = ftFloat
        Name = 'DCD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDCDForMultiDeliveryProjects'
    Left = 24
    Top = 200
    object cdsDataDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
      Required = True
    end
    object cdsDataDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
      Required = True
    end
    object cdsDataDELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'DELIVERY_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object cdsDataV_VENDOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'V_VENDOR_COMPANY_CODE'
    end
    object cdsDataVEDOR_COMPANY_COUNTRY: TAbmesWideStringField
      FieldName = 'VEDOR_COMPANY_COUNTRY'
      Size = 50
    end
    object cdsDataBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
    end
    object cdsDataOBTAINMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OBTAINMENT_TYPE_CODE'
    end
  end
  inherited pmInsertMenu: TPopupMenu
    Left = 112
    Top = 200
  end
  object dsBranches: TDataSource
    DataSet = cdsBranches
    Left = 280
    Top = 200
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Filter = '(IS_LOCAL_BRANCH <> 0) and (IS_INACTIVE = 0)'
    Params = <>
    ProviderName = 'prvBranches'
    Left = 248
    Top = 200
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
    end
    object cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField
      FieldName = 'BRANCH_CODE_AND_NAME'
      Size = 255
    end
    object cdsBranchesBRANCH_NO: TAbmesFloatField
      FieldName = 'BRANCH_NO'
    end
    object cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField
      FieldName = 'IS_LOCAL_BRANCH'
    end
    object cdsBranchesIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
  end
  object cdsDCDMode: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 224
    Top = 1
    object cdsDCDModeDCD_MODE_CODE: TAbmesFloatField
      FieldName = 'DCD_MODE_CODE'
    end
  end
  object dsHeader: TDataSource
    Left = 840
  end
  object cdsCurrencies: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCurrencies'
    Left = 248
    Top = 232
    object cdsCurrenciesCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
      Required = True
    end
    object cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      Required = True
      Size = 5
    end
  end
  object cdsNewDeliveryProject: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 248
    Top = 328
    object cdsNewDeliveryProjectPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsNewDeliveryProjectDIALOG_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'DIALOG_EMPLOYEE_CODE'
    end
    object cdsNewDeliveryProjectIS_ACTIVATED_BY_VENDOR: TAbmesFloatField
      FieldName = 'IS_ACTIVATED_BY_VENDOR'
      FieldValueType = fvtBoolean
    end
    object cdsNewDeliveryProjectPSD_STORE_CODE: TAbmesFloatField
      FieldName = 'PSD_STORE_CODE'
    end
    object cdsNewDeliveryProjectDEFICIT_COVER_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEFICIT_COVER_DATE'
    end
    object cdsNewDeliveryProjectDELIVERY_DATE: TAbmesSQLTimeStampField
      FieldName = 'DELIVERY_DATE'
    end
    object cdsNewDeliveryProjectWORK_QUANTITY: TAbmesFloatField
      FieldName = 'WORK_QUANTITY'
    end
    object cdsNewDeliveryProjectSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
    end
    object cdsNewDeliveryProjectCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object cdsNewDeliveryProjectIS_TRANSPORT_FROM_VENDOR: TAbmesFloatField
      FieldName = 'IS_TRANSPORT_FROM_VENDOR'
    end
  end
  object cdsDeficitCoverDecision: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDeliveries
    Params = <
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDeficitCoverDecision'
    Left = 280
    Top = 328
    object cdsDeficitCoverDecisionDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
    end
    object cdsDeficitCoverDecisionDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
    end
    object cdsDeficitCoverDecisionIS_DONE: TAbmesFloatField
      FieldName = 'IS_DONE'
    end
    object cdsDeficitCoverDecisionIS_CANCELED: TAbmesFloatField
      FieldName = 'IS_CANCELED'
    end
    object cdsDeficitCoverDecisionVPD_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'VPD_EMPLOYEE_CODE'
    end
    object cdsDeficitCoverDecisionCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object cdsDeficitCoverDecisionCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsDeficitCoverDecisionCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object cdsDeficitCoverDecisionCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object cdsDeficitCoverDecisionCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object cdsDeficitCoverDecisionCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object cdsDeficitCoverDecisionDEPT_NO: TAbmesFloatField
      FieldName = 'DEPT_NO'
    end
    object cdsDeficitCoverDecisionDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object cdsDeficitCoverDecisionPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsDeficitCoverDecisionPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_COEF'
    end
    object cdsDeficitCoverDecisionWORK_MEASURE_CODE: TAbmesFloatField
      FieldName = 'WORK_MEASURE_CODE'
    end
    object cdsDeficitCoverDecisionACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object cdsDeficitCoverDecisionPRODUCT_CUSTOM_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CUSTOM_CODE'
    end
    object cdsDeficitCoverDecisionDCD_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_BRANCH_CODE'
    end
    object cdsDeficitCoverDecisionDCD_CODE: TAbmesFloatField
      FieldName = 'DCD_CODE'
    end
    object cdsDeficitCoverDecisionDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDeficitCoverDecisionDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsDeficitCoverDecisionASPECT_TYPE_CODE: TAbmesFloatField
      FieldName = 'ASPECT_TYPE_CODE'
    end
    object cdsDeficitCoverDecisionDELIVERY_COUNT: TAbmesFloatField
      FieldName = 'DELIVERY_COUNT'
    end
    object cdsDeficitCoverDecisionDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DEAL_TYPE_CODE'
    end
    object cdsDeficitCoverDecisionHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
    end
    object cdsDeficitCoverDecisionDELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'DELIVERY_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object cdsDeficitCoverDecisionOBTAINMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OBTAINMENT_TYPE_CODE'
    end
    object cdsDeficitCoverDecisionDCD_BRANCH_ID: TAbmesWideStringField
      FieldName = 'DCD_BRANCH_ID'
      Size = 45
    end
    object cdsDeficitCoverDecisionASPECT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'ASPECT_TYPE_ABBREV'
      Size = 100
    end
    object cdsDeficitCoverDecisionTOTAL_WORK_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_WORK_QUANTITY'
    end
    object cdsDeficitCoverDecisionTOTAL_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_ACCOUNT_QUANTITY'
    end
    object cdsDeficitCoverDecisionDP_DECISION_QUANTITY: TAbmesFloatField
      FieldName = 'DP_DECISION_QUANTITY'
    end
    object cdsDeficitCoverDecisionDC_QUANTITY: TAbmesFloatField
      FieldName = 'DC_QUANTITY'
    end
    object cdsDeficitCoverDecisionDELIVERY_SD_QUANTITY: TAbmesFloatField
      FieldName = 'DELIVERY_SD_QUANTITY'
    end
    object cdsDeficitCoverDecisionMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsDeficitCoverDecisionACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsDeficitCoverDecisionSTREAM_TYPE_CODE: TAbmesFloatField
      FieldName = 'STREAM_TYPE_CODE'
    end
    object cdsDeficitCoverDecisionSTREAM_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'STREAM_TYPE_ABBREV'
      Size = 100
    end
    object cdsDeficitCoverDecisionBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
    end
    object cdsDeficitCoverDecisionPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_CODE'
    end
    object cdsDeficitCoverDecisionDCD_MODE_CODE: TAbmesFloatField
      FieldName = 'DCD_MODE_CODE'
      Required = True
    end
    object cdsDeficitCoverDecisionP_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'P_PRODUCT_CODE'
    end
    object cdsDeficitCoverDecisionP_DEFICIT_COVER_DATE: TAbmesSQLTimeStampField
      FieldName = 'P_DEFICIT_COVER_DATE'
    end
    object cdsDeficitCoverDecisionP_WORK_QUANTITY: TAbmesFloatField
      FieldName = 'P_WORK_QUANTITY'
    end
    object cdsDeficitCoverDecisionP_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'P_ACCOUNT_QUANTITY'
    end
    object cdsDeficitCoverDecisionP_PSD_STORE_CODE: TAbmesFloatField
      FieldName = 'P_PSD_STORE_CODE'
    end
    object cdsDeficitCoverDecisionP_LEASE_DATE_UNIT_QUANTITY: TAbmesFloatField
      FieldName = 'P_LEASE_DATE_UNIT_QUANTITY'
    end
    object cdsDeficitCoverDecisionP_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'P_LEASE_DATE_UNIT_CODE'
    end
    object cdsDeficitCoverDecisionP_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'P_RECEIVE_DATE'
    end
    object cdsDeficitCoverDecisionP_RETURN_DATE: TAbmesSQLTimeStampField
      FieldName = 'P_RETURN_DATE'
    end
    object cdsDeficitCoverDecisionV_VENDOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'V_VENDOR_COMPANY_CODE'
    end
    object cdsDeficitCoverDecisionV_MEDIATOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'V_MEDIATOR_COMPANY_CODE'
    end
    object cdsDeficitCoverDecisionV_START_DATE: TAbmesSQLTimeStampField
      FieldName = 'V_START_DATE'
    end
    object cdsDeficitCoverDecisionV_REGISTER_DATE: TAbmesSQLTimeStampField
      FieldName = 'V_REGISTER_DATE'
    end
    object cdsDeficitCoverDecisionV_PLAN_POSITION_DATE: TAbmesSQLTimeStampField
      FieldName = 'V_PLAN_POSITION_DATE'
    end
    object cdsDeficitCoverDecisionV_REAL_POSITION_DATE: TAbmesSQLTimeStampField
      FieldName = 'V_REAL_POSITION_DATE'
    end
    object cdsDeficitCoverDecisionV_PLAN_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField
      FieldName = 'V_PLAN_VENDOR_POSITION_DATE'
    end
    object cdsDeficitCoverDecisionV_REAL_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField
      FieldName = 'V_REAL_VENDOR_POSITION_DATE'
    end
    object cdsDeficitCoverDecisionPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
      Required = True
    end
    object cdsDeficitCoverDecisionPLAN_DECISION_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_DECISION_DATE'
      Required = True
    end
    object cdsDeficitCoverDecisionDCD_STATUS_CODE: TAbmesFloatField
      FieldName = 'DCD_STATUS_CODE'
    end
  end
  object cdsSelectDCD: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 160
    object cdsSelectDCDDCD_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_BRANCH_CODE'
      OnChange = cdsSelectDCDDCD_BRANCH_CODEChange
    end
    object cdsSelectDCDDCD_CODE: TAbmesFloatField
      FieldName = 'DCD_CODE'
      OnChange = cdsSelectDCDDCD_CODEChange
    end
  end
  object dsSelectDCD: TDataSource
    DataSet = cdsSelectDCD
    Left = 168
  end
  object cdsDeliveryDefaults: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDeliveries
    Params = <
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDeliveryDefaults'
    Left = 248
    Top = 296
    object cdsDeliveryDefaultsIS_PARTNER_TRANSPORT: TAbmesFloatField
      FieldName = 'IS_PARTNER_TRANSPORT'
      FieldValueType = fvtBoolean
    end
    object cdsDeliveryDefaultsSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object cdsDeliveryDefaultsPRICE: TAbmesFloatField
      FieldName = 'PRICE'
    end
    object cdsDeliveryDefaultsCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
  end
  object cdsVIMParams: TAbmesClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'START_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'IN_P'
        DataType = ftFloat
      end
      item
        Name = 'OUT_P'
        DataType = ftFloat
      end
      item
        Name = 'IS_ANNULED'
        DataType = ftFloat
      end
      item
        Name = 'IS_NOT_ANNULED'
        DataType = ftFloat
      end
      item
        Name = 'IS_CLOSED'
        DataType = ftFloat
      end
      item
        Name = 'IS_NOT_CLOSED'
        DataType = ftFloat
      end
      item
        Name = 'STORE_DEAL_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = '_STORE_DEAL_DATE_2'
        DataType = ftTimeStamp
      end
      item
        Name = 'INCLUDE_PL_SECOND_LEVEL'
        DataType = ftFloat
      end
      item
        Name = 'DATE_UNIT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'START_PERIOD_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'END_PERIOD_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'INCLUDE_PLANNED_SECOND_LEVEL'
        DataType = ftFloat
      end
      item
        Name = 'THE_DATE_UNIT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PLANNED_STORE_DEAL_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'IS_GROUPED_BY_STORE'
        DataType = ftFloat
      end
      item
        Name = 'MAX_PSD_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'TIME_UNITS_NUM'
        DataType = ftFloat
      end
      item
        Name = 'TIME_UNIT_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'TIME_UNIT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'IS_TOWARDS_RESERVE'
        DataType = ftFloat
      end
      item
        Name = 'CHOSEN_PRODUCTS'
        DataType = ftWideString
        Size = 4000
      end
      item
        Name = 'CHOSEN_DEPTS'
        DataType = ftWideString
        Size = 4000
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 376
    Top = 329
    object cdsVIMParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      FieldName = 'CHOSEN_PRODUCTS'
      Size = 4000
    end
    object cdsVIMParamsCHOSEN_DEPTS: TAbmesWideStringField
      FieldName = 'CHOSEN_DEPTS'
      Size = 4000
    end
    object cdsVIMParamsBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object cdsVIMParamsTIME_UNIT_COUNT: TAbmesFloatField
      FieldName = 'TIME_UNIT_COUNT'
    end
    object cdsVIMParamsTIME_UNIT_CODE: TAbmesFloatField
      FieldName = 'TIME_UNIT_CODE'
    end
    object cdsVIMParamsINCLUDE_PLANNED_SECOND_LEVEL: TAbmesFloatField
      FieldName = 'INCLUDE_PLANNED_SECOND_LEVEL'
      FieldValueType = fvtBoolean
    end
    object cdsVIMParamsIS_TOWARDS_RESERVE: TAbmesFloatField
      FieldName = 'IS_TOWARDS_RESERVE'
      FieldValueType = fvtBoolean
    end
  end
end
