inherited fmSaleOrdersGroupSaleOrders: TfmSaleOrdersGroupSaleOrders
  Left = 209
  Top = 161
  Caption = 
    #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1072#1082#1077#1090#1080' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1050#1083#1080#1077#1085#1090#1080' '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '#1085#1072' '#1059#1054#1073' '#1087#1086' '#1053#1072#1083#1080#1095 +
    #1085#1086#1089#1090
  ClientHeight = 541
  ClientWidth = 1019
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 506
    Width = 1019
    object lblCurrency: TLabel [0]
      Left = 8
      Top = 8
      Width = 117
      Height = 13
      Caption = '* - '#1057#1090#1086#1081#1085#1086#1089#1090#1080#1090#1077' '#1089#1072' '#1074' %s'
    end
    inherited pnlOKCancel: TPanel
      Left = 751
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 662
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 930
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 1019
    Height = 506
    BorderWidth = 6
    inherited sptDetail: TSplitter
      Left = 6
      Top = 288
      Width = 1007
      Height = 2
    end
    inherited pnlDetailGrid: TPanel
      Left = 6
      Top = 290
      Width = 1007
      Height = 210
      inherited pnlDetailNavigator: TPanel
        Width = 1007
        object btnShowAnnuledLines: TSpeedButton [0]
          Left = 96
          Top = 0
          Width = 24
          Height = 24
          Hint = #1055#1086#1082#1072#1079#1074#1072'/'#1089#1082#1088#1080#1074#1072' '#1072#1085#1091#1083#1080#1088#1072#1085#1080#1090#1077' '#1088#1077#1076#1086#1074#1077
          Align = alLeft
          AllowAllUp = True
          GroupIndex = 1
          Caption = #1040#1085
          Flat = True
          OnClick = btnShowAnnuledLinesClick
        end
        inherited navDetail: TDBColorNavigator
          Width = 96
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = ()
        end
        inherited tlbDetailGridButtons: TToolBar
          Left = 120
        end
        object tlbDetailToggles: TToolBar
          Left = 653
          Top = 0
          Width = 354
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Images = dmMain.ilActions
          List = True
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          object btnToggleDetailClientOffer: TSpeedButton
            Left = 0
            Top = 0
            Width = 145
            Height = 24
            Action = actToggleDetailClientOffer
            AllowAllUp = True
            GroupIndex = 3
            Down = True
            Flat = True
            Transparent = False
          end
          object sepToggleShippedAndTakenFromStoreQuantity: TToolButton
            Left = 145
            Top = 0
            Width = 8
            ImageIndex = 29
            Style = tbsSeparator
          end
          object btnToggleShippedAndTakenFromStoreQuantity: TSpeedButton
            Left = 153
            Top = 0
            Width = 145
            Height = 24
            Action = actToggleShippedAndTakenFromStoreQuantity
            AllowAllUp = True
            GroupIndex = 4
            Flat = True
            Transparent = False
          end
          object sepShowWorkQuantities: TToolButton
            Left = 298
            Top = 0
            Width = 8
            ImageIndex = 25
            Style = tbsSeparator
          end
          object btnShowWorkQuantities: TToolButton
            Left = 306
            Top = 0
            Action = actShowWorkQuantities
            Grouped = True
            Style = tbsCheck
          end
          object btnShowAccountQuantities: TToolButton
            Left = 330
            Top = 0
            Action = actShowAccountQuantities
            Grouped = True
            Style = tbsCheck
          end
        end
        object tlbDetailDocs: TToolBar
          Left = 152
          Top = 0
          Width = 181
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 36
          Caption = 'tlbDetailDocs'
          Images = dmMain.ilDocs
          ParentShowHint = False
          ShowHint = False
          TabOrder = 3
          object sepSaleDocs: TToolButton
            Left = 0
            Top = 0
            Width = 8
            ImageIndex = 2
            Style = tbsSeparator
          end
          object pnlSaleDocs: TPanel
            Left = 8
            Top = 0
            Width = 61
            Height = 24
            Align = alLeft
            BevelOuter = bvNone
            Caption = #1054#1044#1050'/'#1054#1055#1055
            TabOrder = 0
          end
          object btnSaleDocs: TToolButton
            Left = 69
            Top = 0
            ImageIndex = 1
            ParentShowHint = False
            ShowHint = True
            OnClick = btnSaleDocsClick
          end
          object sepBeforeProductDocs: TToolButton
            Left = 105
            Top = 0
            Width = 8
            ImageIndex = 2
            Style = tbsSeparator
          end
          object pnlProductDocs: TPanel
            Left = 113
            Top = 0
            Width = 32
            Height = 24
            Align = alLeft
            BevelOuter = bvNone
            Caption = #1059#1054#1073
            TabOrder = 1
          end
          object btnProductDocs: TToolButton
            Left = 145
            Top = 0
            Caption = 'btnProductDocs'
            ImageIndex = 1
            OnClick = btnProductDocsClick
          end
        end
      end
      inherited grdDetail: TAbmesDBGrid
        Width = 1007
        Height = 186
        HorzScrollBar.Visible = False
        UseMultiTitle = True
        VTitleMargin = 6
        OnGetCellParams = grdDetailGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'REQUEST_LINE_NO'
            Footers = <>
            Title.Caption = #1054#1044#1050' No'
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'SALE_IDENTIFICATION'
            Footers = <>
            Title.Caption = 'ID '#1054#1055#1055
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_NAME'
            Footers = <>
            Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
            Width = 218
          end
          item
            EditButtons = <>
            FieldName = 'CLIENT_REQUEST_NO'
            Footers = <>
            Title.Caption = #1050#1083'. '#1086#1079#1085'. '#1085#1072' '#1054#1044#1050
            Visible = False
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'COMPANY_PRODUCT_NAME'
            Footers = <>
            Title.Caption = #1054#1079#1085#1072#1095#1077#1085#1080#1077' '#1085#1072' '#1059#1054#1073' '#1086#1090' K'#1083#1080#1077#1085#1090
            Visible = False
            Width = 117
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1052'.'#1077#1076'.'
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_ACCOUNT_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1052'.'#1077#1076'.'
            Visible = False
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'CL_OFFER_QUANTITY'
            Footers = <>
            Title.Caption = #1055#1086#1080#1089#1082#1072#1085#1086'|'#1050'-'#1074#1086
            Visible = False
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'ACC_CL_OFFER_QUANTITY'
            Footers = <>
            Title.Caption = #1055#1086#1080#1089#1082#1072#1085#1086'|'#1050'-'#1074#1086
            Visible = False
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'CL_OFFER_LEASE_DATE_UNIT_QTY'
            Footers = <>
            Title.Caption = #1055#1086#1080#1089#1082#1072#1085#1086'|'#1047#1072
            Visible = False
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'CL_OFFER_LEASE_DATE_UNIT_NAME'
            Footers = <>
            Title.Caption = #1055#1086#1080#1089#1082#1072#1085#1086'|'#1053#1072#1077#1084'. '#1089#1090'.'
            Visible = False
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'CL_OFFER_LEASE_RESOURCE_QTY'
            Footers = <>
            Title.Caption = #1055#1086#1080#1089#1082#1072#1085#1086'|'#1056#1072#1073'. '#1088#1077#1089'.'
            Visible = False
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'CL_OFFER_LEASE_RESOURCE_A_QTY'
            Footers = <>
            Title.Caption = #1055#1086#1080#1089#1082#1072#1085#1086'|'#1056#1072#1073'. '#1088#1077#1089'.'
            Visible = False
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'CL_OFFER_TOTAL_PRICE'
            Footers = <>
            Title.Caption = #1055#1086#1080#1089#1082#1072#1085#1086'|'#1055#1057'*'
            Visible = False
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'QUANTITY'
            Footers = <>
            Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1086'|'#1050'-'#1074#1086
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'ACC_QUANTITY'
            Footers = <>
            Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1086'|'#1050'-'#1074#1086
            Visible = False
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'LEASE_DATE_UNIT_QTY'
            Footers = <>
            Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1086'|'#1047#1072
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'LEASE_DATE_UNIT_NAME'
            Footers = <>
            Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1086'|'#1053#1072#1077#1084'. '#1089#1090'.'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'LEASE_RESOURCE_QTY'
            Footers = <>
            Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1086'|'#1056#1072#1073'. '#1088#1077#1089'.'
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'LEASE_RESOURCE_ACC_QTY'
            Footers = <>
            Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1086'|'#1056#1072#1073'. '#1088#1077#1089'.'
            Visible = False
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_PRICE'
            Footers = <>
            Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1086'|'#1055#1057'*'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'SHIPPED_QUANTITY'
            Footers = <>
            Title.Caption = #1055#1088#1086#1076#1072#1076#1077#1085#1086'|'#1050'-'#1074#1086
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'ACC_SHIPPED_QUANTITY'
            Footers = <>
            Title.Caption = #1055#1088#1086#1076#1072#1076#1077#1085#1086'|'#1050'-'#1074#1086
            Visible = False
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'REAL_LEASE_DATE_UNIT_QTY'
            Footers = <>
            Title.Caption = #1055#1088#1086#1076#1072#1076#1077#1085#1086'|'#1047#1072
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'REAL_LEASE_DATE_UNIT_NAME'
            Footers = <>
            Title.Caption = #1055#1088#1086#1076#1072#1076#1077#1085#1086'|'#1053#1072#1077#1084'. '#1089#1090'.'
            Width = 69
          end
          item
            EditButtons = <>
            FieldName = 'REAL_LEASE_RESOURCE_QTY'
            Footers = <>
            Title.Caption = #1055#1088#1086#1076#1072#1076#1077#1085#1086'|'#1056#1072#1073'. '#1088#1077#1089'.'
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'REAL_LEASE_RESOURCE_ACC_QTY'
            Footers = <>
            Title.Caption = #1055#1088#1086#1076#1072#1076#1077#1085#1086'|'#1056#1072#1073'. '#1088#1077#1089'.'
            Visible = False
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'REAL_TOTAL_PRICE'
            Footers = <>
            Title.Caption = #1055#1088#1086#1076#1072#1076#1077#1085#1086'|'#1055#1057'*'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'QUANTITY_TAKEN_FROM_STORE'
            Footers = <>
            Title.Caption = #1048#1079#1090#1077#1075#1083#1077#1085#1086'|'#1050'-'#1074#1086
            Visible = False
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'ACC_QUANTITY_TAKEN_FROM_STORE'
            Footers = <>
            Title.Caption = #1048#1079#1090#1077#1075#1083#1077#1085#1086'|'#1050'-'#1074#1086
            Visible = False
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'REAL_LEASE_DATE_UNIT_QTY'
            Footers = <>
            Title.Caption = #1048#1079#1090#1077#1075#1083#1077#1085#1086'|'#1047#1072
            Visible = False
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'REAL_LEASE_DATE_UNIT_NAME'
            Footers = <>
            Title.Caption = #1048#1079#1090#1077#1075#1083#1077#1085#1086'|'#1053#1072#1077#1084'. '#1089#1090'.'
            Visible = False
            Width = 69
          end
          item
            EditButtons = <>
            FieldName = 'REAL_LEASE_RESOURCE_QTY'
            Footers = <>
            Title.Caption = #1048#1079#1090#1077#1075#1083#1077#1085#1086'|'#1056#1072#1073'. '#1088#1077#1089'.'
            Visible = False
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'REAL_LEASE_RESOURCE_ACC_QTY'
            Footers = <>
            Title.Caption = #1048#1079#1090#1077#1075#1083#1077#1085#1086'|'#1056#1072#1073'. '#1088#1077#1089'.'
            Visible = False
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'TAKEN_FROM_STORE_PRICE'
            Footers = <>
            Title.Caption = #1048#1079#1090#1077#1075#1083#1077#1085#1086'|'#1055#1057'*'
            Visible = False
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'QUANTITY_DIFF'
            Footers = <>
            Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1050'-'#1074#1086
            Visible = False
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'ACC_QUANTITY_DIFF'
            Footers = <>
            Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1050'-'#1074#1086
            Visible = False
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'LEASE_RESOURCE_QTY_DIFF'
            Footers = <>
            Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1056#1072#1073'. '#1088#1077#1089'.'
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'LEASE_RESOURCE_ACC_QTY_DIFF'
            Footers = <>
            Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1056#1072#1073'. '#1088#1077#1089'.'
            Visible = False
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_PRICE_DIFF'
            Footers = <>
            Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1055#1057'*'
            Width = 60
          end
          item
            Alignment = taCenter
            Checkboxes = False
            EditButtons = <>
            FieldName = 'IS_ANNULED'
            Footers = <>
            Title.Caption = #1040
            Width = 13
          end>
      end
    end
    inherited pnlGrid: TPanel
      Left = 6
      Top = 6
      Width = 1007
      Height = 282
      inherited pnlNavigator: TPanel
        Width = 1007
        object lblSaleDealType: TLabel [0]
          Left = 880
          Top = 3
          Width = 46
          Height = 13
          Caption = #1058#1080#1087' '#1055#1044#1050
          FocusControl = edtSaleDealType
        end
        inherited pnlFilterButton: TPanel
          Left = 120
        end
        inherited navData: TDBColorNavigator
          Width = 120
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 144
        end
        object tlbMasterDocs: TToolBar
          Left = 200
          Top = 0
          Width = 165
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 36
          Caption = 'tlbDocs'
          Images = dmMain.ilDocs
          ParentShowHint = False
          ShowHint = False
          TabOrder = 3
          object sepSaleRequestGroupDocs: TToolButton
            Left = 0
            Top = 0
            Width = 8
            ImageIndex = 2
            Style = tbsSeparator
          end
          object pnlSaleRequestGroupDocs: TPanel
            Left = 8
            Top = 0
            Width = 33
            Height = 24
            Align = alLeft
            BevelOuter = bvNone
            Caption = #1055#1044#1050
            TabOrder = 0
          end
          object btnSaleRequestGroupDocs: TToolButton
            Left = 41
            Top = 0
            ImageIndex = 1
            ParentShowHint = False
            ShowHint = True
            OnClick = btnSaleRequestGroupDocsClick
          end
          object sepClientDocs: TToolButton
            Left = 77
            Top = 0
            Width = 8
            ImageIndex = 2
            Style = tbsSeparator
          end
          object pnlClientDocs: TPanel
            Left = 85
            Top = 0
            Width = 44
            Height = 24
            Align = alLeft
            BevelOuter = bvNone
            Caption = #1050#1083#1080#1077#1085#1090
            TabOrder = 1
          end
          object btnClientDocs: TToolButton
            Left = 129
            Top = 0
            Caption = 'btnProductDocs'
            ImageIndex = 1
            OnClick = btnClientDocsClick
          end
        end
        object edtSaleDealType: TDBEdit
          Left = 928
          Top = 0
          Width = 31
          Height = 21
          Color = clBtnFace
          DataField = '_SALE_DEAL_TYPE_ABBREV'
          DataSource = dsGridDataParams
          ReadOnly = True
          TabOrder = 4
        end
        object tlbMasterToggles: TToolBar
          Left = 983
          Top = 0
          Width = 24
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Caption = 'tlbMasterToggles'
          Images = dmMain.ilActions
          TabOrder = 5
          object btnShowMasterClientRequestGroupNo: TToolButton
            Left = 0
            Top = 0
            Action = actShowClientNos
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 1007
        Height = 226
        FooterColor = 15258325
        FooterRowCount = 1
        HorzScrollBar.Visible = False
        UseMultiTitle = True
        VTitleMargin = 6
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'STATUS_CODE'
            Footers = <>
            Title.Caption = #1057#1090#1072#1090#1091#1089
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'SALE_ORDER_IDENTIFICATION'
            Footers = <>
            Title.Caption = 'ID '#1055#1044#1050
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'SALE_GROUP_IDENTIFICATION'
            Footers = <>
            Title.Caption = 'ID '#1043#1088#1054#1055#1055
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'CLIENT_REQUEST_GROUP_NO'
            Footers = <>
            Title.Caption = #1050#1083'. '#1086#1079#1085'. '#1085#1072' '#1055#1044#1050
            Visible = False
            Width = 66
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'SALE_ORDER_TYPE_ABBREV'
            Footers = <>
            Title.Caption = #1042#1080#1076
            Width = 22
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'CLIENT_PRIORITY_NO'
            Footers = <>
            Title.Caption = #1055#1088#1080#1086#1088'.'
            Title.Orientation = tohVertical
            Width = 20
          end
          item
            EditButtons = <>
            FieldName = 'CLIENT_COMPANY_NAME'
            Footers = <>
            Title.Caption = #1050#1083#1080#1077#1085#1090
            Width = 140
          end
          item
            EditButtons = <>
            FieldName = 'RECEIVE_PLACE_OFFICE_NAME'
            Footers = <>
            Title.Caption = #1058#1055' '#1085#1072' '#1050#1083'. '#1079#1072' '#1055#1086#1083#1091#1095'.'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'CL_OFFER_RECEIVE_DATE'
            Footers = <>
            Title.Caption = #1055#1086#1080#1089#1082#1072#1085#1086'|'#1044#1072#1090#1072
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'CL_OFFER_TOTAL_PRICE'
            Footer.FieldName = '_TOTAL_CL_OFFER_TOTAL_PRICE'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1055#1086#1080#1089#1082#1072#1085#1086'|'#1055#1057'*'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'RECEIVE_DATE'
            Footers = <>
            Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1086'|'#1044#1072#1090#1072
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'RECEIVE_DATE_RESERVE_DAYS'
            Footers = <>
            Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1086'|'#1088#1079#1088#1074'.'
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_PRICE'
            Footer.FieldName = '_TOTAL_TOTAL_PRICE'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1086'|'#1055#1057'*'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'SHIPMENT_DATE'
            Footers = <>
            Title.Caption = #1055#1088#1086#1076#1072#1076#1077#1085#1086'|'#1044#1072#1090#1072
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'REAL_TOTAL_PRICE'
            Footer.FieldName = '_TOTAL_REAL_TOTAL_PRICE'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1055#1088#1086#1076#1072#1076#1077#1085#1086'|'#1055#1057'*'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_PRICE_DIFF'
            Footer.FieldName = '_TOTAL_TOTAL_PRICE_DIFF'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' '#1055#1057'*'
            Width = 65
          end
          item
            Alignment = taLeftJustify
            EditButtons = <>
            FieldName = 'INVOICE_STATE_CODE'
            Footers = <>
            Title.Caption = #1060'-'#1088#1072
            Title.Orientation = tohVertical
            Width = 19
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'IS_STORE_REQUEST_OTCH'
            Footers = <>
            Title.Caption = #1054#1090#1095'.'
            Title.Orientation = tohVertical
            Width = 19
          end>
      end
      object pnlMasterBottomButtons: TPanel
        Left = 0
        Top = 250
        Width = 1007
        Height = 32
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        DesignSize = (
          1007
          32)
        object btnStoreRequest: TBitBtn
          Left = 128
          Top = 5
          Width = 187
          Height = 25
          Action = actStoreRequest
          Anchors = [akLeft, akBottom]
          Caption = #1054#1090#1095#1080#1090#1072#1085#1077' '#1085#1072' '#1043#1088#1091#1087#1086#1074#1072' '#1047#1072#1103#1074#1082#1072'...'
          TabOrder = 1
        end
        object btnInsertRecord: TBitBtn
          Left = 0
          Top = 5
          Width = 113
          Height = 25
          Action = actInsertRecord
          Anchors = [akLeft, akBottom]
          Caption = #1044#1086#1073#1072#1074#1103#1085#1077'...'
          Spacing = -1
          TabOrder = 0
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 104
    Top = 152
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conSaleOrders
    FieldDefs = <
      item
        Name = 'REQUEST_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'REQUEST_NO'
        DataType = ftFloat
      end
      item
        Name = 'SALE_ORDER_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SALE_ORDER_TYPE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'CLIENT_COMPANY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CLIENT_COMPANY_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'REQUEST_SEND_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'REQUEST_REGISTER_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'CL_OFFER_RECEIVE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'RECEIVE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'SHIPMENT_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'IS_ANNULED'
        DataType = ftFloat
      end
      item
        Name = 'IS_DONE'
        DataType = ftFloat
      end
      item
        Name = 'ANNUL_COEF'
        DataType = ftFloat
      end
      item
        Name = 'SALE_ORDER_IDENTIFICATION'
        DataType = ftWideString
        Size = 81
      end
      item
        Name = 'SALE_TYPE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'SALE_GROUP_IDENTIFICATION'
        DataType = ftWideString
        Size = 81
      end
      item
        Name = 'DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CL_OFFER_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'REAL_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_PRICE_DIFF'
        DataType = ftFloat
      end
      item
        Name = 'CLIENT_PRIORITY_NO'
        DataType = ftFloat
      end
      item
        Name = 'CLIENT_PRIORITY_COLOR'
        DataType = ftFloat
      end
      item
        Name = 'CLIENT_PRIORITY_BCKG_COLOR'
        DataType = ftFloat
      end
      item
        Name = 'RECEIVE_DATE_RESERVE_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'HAS_DOC_ITEMS'
        DataType = ftFloat
      end
      item
        Name = 'CLIENT_DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CLIENT_DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CLIENT_HAS_DOC_ITEMS'
        DataType = ftFloat
      end
      item
        Name = 'CL_OFFER_RETURN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'RETURN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'IMPORT_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'STATUS_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CLIENT_REQUEST_GROUP_NO'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'STORE_REQUEST_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STORE_REQUEST_CODE'
        DataType = ftFloat
      end
      item
        Name = 'IS_STORE_REQUEST_OTCH'
        DataType = ftFloat
      end
      item
        Name = 'INVOICE_STATE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'RECEIVE_PLACE_OFFICE_NAME'
        DataType = ftWideString
        Size = 50
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_DEAL_TYPE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftTimeStamp
        Name = 'REQUEST_REGISTER_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'REQUEST_REGISTER_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'REQUEST_REGISTER_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'REQUEST_REGISTER_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CL_OFFER_RECEIVE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CL_OFFER_RECEIVE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CL_OFFER_RECEIVE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CL_OFFER_RECEIVE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RECEIVE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RECEIVE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RECEIVE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RECEIVE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'REAL_RECEIVE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'REAL_RECEIVE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'REAL_RECEIVE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'REAL_RECEIVE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_RECEIVE_DATE_RESERVE_DAYS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_RECEIVE_DATE_RESERVE_DAYS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CLIENT_BEGIN_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CLIENT_END_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CLIENT_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CLIENT_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_GROUP_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_GROUP_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_GROUP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_GROUP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SRG_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SRG_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MEDIATOR_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MEDIATOR_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_STATUS_CODE'
        ParamType = ptInput
        Value = '9'
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptUnknown
      end>
    ProviderName = 'prvGroupSalesMaster'
    OnCalcFields = cdsGridDataCalcFields
    Left = 72
    Top = 152
    object cdsGridDataREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object cdsGridDataREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
    object cdsGridDataSALE_ORDER_IDENTIFICATION: TAbmesWideStringField
      FieldName = 'SALE_ORDER_IDENTIFICATION'
      Size = 255
    end
    object cdsGridDataSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
    end
    object cdsGridDataSALE_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_ORDER_TYPE_ABBREV'
      Size = 100
    end
    object cdsGridDataSALE_GROUP_IDENTIFICATION: TAbmesWideStringField
      FieldName = 'SALE_GROUP_IDENTIFICATION'
      Size = 255
    end
    object cdsGridDataSALE_TYPE_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      FieldName = 'SALE_TYPE_ABBREV'
      Size = 255
    end
    object cdsGridDataCLIENT_COMPANY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_CODE'
    end
    object cdsGridDataCLIENT_COMPANY_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_COMPANY_NAME'
    end
    object cdsGridDataREQUEST_SEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_SEND_DATE'
    end
    object cdsGridDataREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_REGISTER_DATE'
    end
    object cdsGridDataCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CL_OFFER_RECEIVE_DATE'
      OnGetText = cdsGridDataCL_OFFER_RECEIVE_DATEGetText
    end
    object cdsGridDataRECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_DATE'
      OnGetText = cdsGridDataRECEIVE_DATEGetText
    end
    object cdsGridDataIS_ANNULED: TAbmesFloatField
      FieldName = 'IS_ANNULED'
      DisplayBoolValues = 'X;'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_DONE: TAbmesFloatField
      FieldName = 'IS_DONE'
      DisplayBoolValues = 'X;'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataANNUL_COEF: TAbmesFloatField
      FieldName = 'ANNUL_COEF'
    end
    object cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsGridDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsGridDataSHIPMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'SHIPMENT_DATE'
      OnGetText = cdsGridDataSHIPMENT_DATEGetText
    end
    object cdsGridDataCL_OFFER_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'CL_OFFER_TOTAL_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataREAL_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'REAL_TOTAL_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataTOTAL_PRICE_DIFF: TAbmesFloatField
      FieldName = 'TOTAL_PRICE_DIFF'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataCLIENT_PRIORITY_NO: TAbmesFloatField
      FieldName = 'CLIENT_PRIORITY_NO'
    end
    object cdsGridDataCLIENT_PRIORITY_COLOR: TAbmesFloatField
      FieldName = 'CLIENT_PRIORITY_COLOR'
    end
    object cdsGridDataCLIENT_PRIORITY_BCKG_COLOR: TAbmesFloatField
      FieldName = 'CLIENT_PRIORITY_BCKG_COLOR'
    end
    object cdsGridDataRECEIVE_DATE_RESERVE_DAYS: TAbmesFloatField
      FieldName = 'RECEIVE_DATE_RESERVE_DAYS'
    end
    object cdsGridDataHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
    end
    object cdsGridDataCLIENT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'CLIENT_DOC_BRANCH_CODE'
    end
    object cdsGridDataCLIENT_DOC_CODE: TAbmesFloatField
      FieldName = 'CLIENT_DOC_CODE'
    end
    object cdsGridDataCLIENT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'CLIENT_HAS_DOC_ITEMS'
    end
    object cdsGridDataCL_OFFER_RETURN_DATE: TAbmesSQLTimeStampField
      FieldName = 'CL_OFFER_RETURN_DATE'
    end
    object cdsGridDataRETURN_DATE: TAbmesSQLTimeStampField
      FieldName = 'RETURN_DATE'
    end
    object cdsGridDataIMPORT_DATE: TAbmesSQLTimeStampField
      FieldName = 'IMPORT_DATE'
    end
    object cdsGridDataSTATUS_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'STATUS_CODE'
      OnGetText = cdsGridDataSTATUS_CODEGetText
    end
    object cdsGridDataCLIENT_REQUEST_GROUP_NO: TAbmesWideStringField
      FieldName = 'CLIENT_REQUEST_GROUP_NO'
      Size = 50
    end
    object cdsGridDataREPORT_TAG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'REPORT_TAG'
      Calculated = True
    end
    object cdsGridDataSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_BRANCH_CODE'
    end
    object cdsGridDataSTORE_REQUEST_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_CODE'
    end
    object cdsGridDataIS_STORE_REQUEST_OTCH: TAbmesFloatField
      FieldName = 'IS_STORE_REQUEST_OTCH'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataINVOICE_STATE_CODE: TAbmesFloatField
      FieldName = 'INVOICE_STATE_CODE'
      OnGetText = cdsGridDataINVOICE_STATE_CODEGetText
    end
    object cdsGridDataRECEIVE_PLACE_OFFICE_NAME: TAbmesWideStringField
      FieldName = 'RECEIVE_PLACE_OFFICE_NAME'
      Size = 50
    end
    object cdsGridData_TOTAL_CL_OFFER_TOTAL_PRICE: TAggregateField
      FieldName = '_TOTAL_CL_OFFER_TOTAL_PRICE'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'Sum(ANNUL_COEF * CL_OFFER_TOTAL_PRICE)'
    end
    object cdsGridData_TOTAL_TOTAL_PRICE: TAggregateField
      FieldName = '_TOTAL_TOTAL_PRICE'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'Sum(ANNUL_COEF * TOTAL_PRICE)'
    end
    object cdsGridData_TOTAL_REAL_TOTAL_PRICE: TAggregateField
      FieldName = '_TOTAL_REAL_TOTAL_PRICE'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'Sum(ANNUL_COEF * REAL_TOTAL_PRICE)'
    end
    object cdsGridData_TOTAL_TOTAL_PRICE_DIFF: TAggregateField
      FieldName = '_TOTAL_TOTAL_PRICE_DIFF'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'Sum(ANNUL_COEF * TOTAL_PRICE_DIFF)'
    end
  end
  inherited alActions: TActionList
    Left = 256
    Top = 160
    inherited actForm: TAction
      Caption = 
        #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1072#1082#1077#1090#1080' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1050#1083#1080#1077#1085#1090#1080' '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '#1085#1072' '#1059#1054#1073' '#1087#1086' '#1053#1072#1083#1080#1095 +
        #1085#1086#1089#1090
    end
    inherited actFilter: TAction
      Visible = True
    end
    inherited actInsertRecord: TAction
      Hint = ''
    end
    inherited actInsertDetailRecord: TAction
      Caption = #1053#1086#1074#1072' '#1043#1088#1091#1087#1072' '#1054#1055#1055'...'
    end
    object actShowWorkQuantities: TAction
      AutoCheck = True
      Checked = True
      GroupIndex = 1
      Hint = #1056#1072#1073#1086#1090#1085#1080' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072
      ImageIndex = 23
      OnExecute = actShowWorkQuantitiesExecute
    end
    object actShowAccountQuantities: TAction
      AutoCheck = True
      GroupIndex = 1
      Hint = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1080' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072
      ImageIndex = 28
      OnExecute = actShowAccountQuantitiesExecute
    end
    object actToggleDetailClientOffer: TAction
      Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1086' / '#1055#1086#1080#1089#1082#1072#1085#1086
      Checked = True
      GroupIndex = 3
      OnExecute = actToggleDetailClientOfferExecute
    end
    object actShowClientNos: TAction
      Caption = 'actShowClientNos'
      Hint = #1050#1083#1080#1077#1085#1090#1089#1082#1080' '#1086#1079#1085#1072#1095#1077#1085#1080#1103
      ImageIndex = 24
      OnExecute = actShowClientNosExecute
    end
    object actStoreRequest: TAction
      Caption = #1054#1090#1095#1080#1090#1072#1085#1077' '#1085#1072' '#1043#1088#1091#1087#1086#1074#1072' '#1047#1072#1103#1074#1082#1072'...'
      Hint = #1054#1090#1095#1080#1090#1072#1085#1077' '#1085#1072' '#1043#1088#1091#1087#1086#1074#1072' '#1047#1072#1103#1074#1082#1072
      OnExecute = actStoreRequestExecute
      OnUpdate = actStoreRequestUpdate
    end
    object actToggleShippedAndTakenFromStoreQuantity: TAction
      Caption = #1055#1088#1086#1076#1072#1076#1077#1085#1086' / '#1048#1079#1090#1077#1075#1083#1077#1085#1086
      GroupIndex = 4
      OnExecute = actToggleShippedAndTakenFromStoreQuantityExecute
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    AfterOpen = pdsGridDataParamsAfterOpen
    Left = 72
    Top = 184
    object pdsGridDataParamsMIN_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' - '#1054#1090
      FieldName = 'MIN_STATUS_CODE'
    end
    object pdsGridDataParamsMAX_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' - '#1044#1086
      FieldName = 'MAX_STATUS_CODE'
    end
    object pdsGridDataParamsSALE_DEAL_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1080#1087
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object pdsGridDataParamsREQUEST_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1043#1083#1072#1074#1085#1086
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object pdsGridDataParamsREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
    object pdsGridDataParamsREQUEST_REGISTER_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'REQUEST_REGISTER_BEGIN_DATE'
    end
    object pdsGridDataParamsREQUEST_REGISTER_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077' - '#1050#1088#1072#1081
      FieldName = 'REQUEST_REGISTER_END_DATE'
    end
    object pdsGridDataParamsSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1043#1088#1054#1055#1055' - '#1058#1055' '#1043#1083'.'
      FieldName = 'SALE_GROUP_OBJECT_BRANCH_CODE'
    end
    object pdsGridDataParamsSALE_GROUP_CODE: TAbmesFloatField
      DisplayLabel = #1043#1088#1054#1055#1055' - No'
      FieldName = 'SALE_GROUP_CODE'
    end
    object pdsGridDataParamsCLIENT_COMPANY_CODE: TAbmesFloatField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      FieldName = 'CLIENT_COMPANY_CODE'
    end
    object pdsGridDataParamsCLIENT_BEGIN_PRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1050#1083#1080#1077#1085#1090' - '#1055#1088#1080#1086#1088#1080#1090#1077#1090' - '#1054#1090
      FieldName = 'CLIENT_BEGIN_PRIORITY_CODE'
    end
    object pdsGridDataParamsCLIENT_END_PRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1050#1083#1080#1077#1085#1090' - '#1055#1088#1080#1086#1088#1080#1090#1077#1090' - '#1044#1086
      FieldName = 'CLIENT_END_PRIORITY_CODE'
    end
    object pdsGridDataParamsCL_OFFER_RECEIVE_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1072#1090#1072' '#1079#1072' '#1055#1086#1083#1091#1095'. '#1085#1072' '#1059#1054#1073' '#1086#1090' '#1050#1083'. - '#1055#1086#1080#1089#1082#1072#1085#1072' '#1044#1072#1090#1072' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'CL_OFFER_RECEIVE_BEGIN_DATE'
    end
    object pdsGridDataParamsCL_OFFER_RECEIVE_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1072#1090#1072' '#1079#1072' '#1055#1086#1083#1091#1095'. '#1085#1072' '#1059#1054#1073' '#1086#1090' '#1050#1083'. - '#1055#1086#1080#1089#1082#1072#1085#1072' '#1044#1072#1090#1072' - '#1050#1088#1072#1081
      FieldName = 'CL_OFFER_RECEIVE_END_DATE'
    end
    object pdsGridDataParamsRECEIVE_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = 
        #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1072#1090#1072' '#1079#1072' '#1055#1086#1083#1091#1095'. '#1085#1072' '#1059#1054#1073' '#1086#1090' '#1050#1083'. - '#1044#1086#1075#1086#1074#1086#1088#1077#1085#1072' '#1044#1072#1090#1072' - '#1053#1072#1095#1072#1083 +
        #1086
      FieldName = 'RECEIVE_BEGIN_DATE'
    end
    object pdsGridDataParamsRECEIVE_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1072#1090#1072' '#1079#1072' '#1055#1086#1083#1091#1095'. '#1085#1072' '#1059#1054#1073' '#1086#1090' '#1050#1083'. - '#1044#1086#1075#1086#1074#1086#1088#1077#1085#1072' '#1044#1072#1090#1072' - '#1050#1088#1072#1081
      FieldName = 'RECEIVE_END_DATE'
    end
    object pdsGridDataParamsMIN_RECEIVE_DATE_RESERVE_DAYS: TAbmesFloatField
      DisplayLabel = 
        #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1072#1090#1072' '#1079#1072' '#1055#1086#1083#1091#1095'. '#1085#1072' '#1059#1054#1073' '#1086#1090' '#1050#1083'. - '#1044#1086#1075#1086#1074#1086#1088#1077#1085#1072' '#1044#1072#1090#1072' - '#1056#1077#1079#1077#1088 +
        #1074' - '#1054#1090
      FieldName = 'MIN_RECEIVE_DATE_RESERVE_DAYS'
    end
    object pdsGridDataParamsMAX_RECEIVE_DATE_RESERVE_DAYS: TAbmesFloatField
      DisplayLabel = 
        #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1072#1090#1072' '#1079#1072' '#1055#1086#1083#1091#1095'. '#1085#1072' '#1059#1054#1073' '#1086#1090' '#1050#1083'. - '#1044#1086#1075#1086#1074#1086#1088#1077#1085#1072' '#1044#1072#1090#1072' - '#1056#1077#1079#1077#1088 +
        #1074' - '#1044#1086
      FieldName = 'MAX_RECEIVE_DATE_RESERVE_DAYS'
    end
    object pdsGridDataParamsREAL_RECEIVE_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1072#1090#1072' '#1079#1072' '#1055#1086#1083#1091#1095'. '#1085#1072' '#1059#1054#1073' '#1086#1090' '#1050#1083'. - '#1054#1090#1095#1077#1090#1085#1072' '#1044#1072#1090#1072' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'REAL_RECEIVE_BEGIN_DATE'
    end
    object pdsGridDataParamsREAL_RECEIVE_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1072#1090#1072' '#1079#1072' '#1055#1086#1083#1091#1095'. '#1085#1072' '#1059#1054#1073' '#1086#1090' '#1050#1083'. - '#1054#1090#1095#1077#1090#1085#1072' '#1044#1072#1090#1072' - '#1050#1088#1072#1081
      FieldName = 'REAL_RECEIVE_END_DATE'
    end
    object pdsGridDataParamsIS_IN_SALE_GROUP: TAbmesFloatField
      FieldName = 'IS_IN_SALE_GROUP'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_NOT_IN_SALE_GROUP: TAbmesFloatField
      FieldName = 'IS_NOT_IN_SALE_GROUP'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_FINISHED: TAbmesFloatField
      FieldName = 'IS_FINISHED'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_NOT_FINISHED: TAbmesFloatField
      FieldName = 'IS_NOT_FINISHED'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_ANNULED: TAbmesFloatField
      FieldName = 'IS_ANNULED'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_NOT_ANNULED: TAbmesFloatField
      FieldName = 'IS_NOT_ANNULED'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParams_SALE_DEAL_TYPE_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      FieldKind = fkLookup
      FieldName = '_SALE_DEAL_TYPE_ABBREV'
      LookupDataSet = cdsSaleDealTypes
      LookupKeyFields = 'SALE_DEAL_TYPE_CODE'
      LookupResultField = 'SALE_DEAL_TYPE_ABBREV'
      KeyFields = 'SALE_DEAL_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object pdsGridDataParamsSRG_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'SRG_EMPLOYEE_CODE'
    end
    object pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      FieldName = 'CHOSEN_PRODUCTS'
      Size = 4000
    end
    object pdsGridDataParamsMEDIATOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'MEDIATOR_COMPANY_CODE'
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 104
    Top = 184
  end
  inherited dsData: TDataSource
    Left = 104
    Top = 120
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 72
    Top = 120
  end
  inherited cdsDetail: TAbmesClientDataSet
    ConnectionBroker = dmMain.conSaleOrders
    Filter = 'IS_ANNULED = 0'
    Filtered = True
    Params = <
      item
        DataType = ftFloat
        Name = 'REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_NO'
        ParamType = ptInput
      end>
    ProviderName = 'prvGroupSalesDetail'
    OnCalcFields = cdsDetailCalcFields
    Left = 24
    object cdsDetailREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object cdsDetailREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
    object cdsDetailREQUEST_LINE_NO: TAbmesFloatField
      FieldName = 'REQUEST_LINE_NO'
    end
    object cdsDetailSALE_IDENTIFICATION: TAbmesWideStringField
      FieldName = 'SALE_IDENTIFICATION'
      Size = 255
    end
    object cdsDetailSALE_TYPE_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      FieldName = 'SALE_TYPE_ABBREV'
      Size = 5
    end
    object cdsDetailPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsDetailPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object cdsDetailPRODUCT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'PRODUCT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsDetailCL_OFFER_QUANTITY: TAbmesFloatField
      FieldName = 'CL_OFFER_QUANTITY'
      DisplayFormat = ',0.###'
    end
    object cdsDetailQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
      DisplayFormat = ',0.###'
    end
    object cdsDetailIS_ANNULED: TAbmesFloatField
      FieldName = 'IS_ANNULED'
      DisplayBoolValues = 'X;'
      FieldValueType = fvtBoolean
    end
    object cdsDetailPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsDetailCOMPANY_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_PRODUCT_NAME'
      Size = 50
    end
    object cdsDetailCLIENT_REQUEST_NO: TAbmesWideStringField
      FieldName = 'CLIENT_REQUEST_NO'
      Size = 50
    end
    object cdsDetailPRODUCT_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsDetailSHIPPED_QUANTITY: TAbmesFloatField
      FieldName = 'SHIPPED_QUANTITY'
      DisplayFormat = ',0.###'
    end
    object cdsDetailQUANTITY_DIFF: TAbmesFloatField
      FieldName = 'QUANTITY_DIFF'
      DisplayFormat = ',0.###'
    end
    object cdsDetailACC_CL_OFFER_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_CL_OFFER_QUANTITY'
      DisplayFormat = ',0.###'
    end
    object cdsDetailACC_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_QUANTITY'
      DisplayFormat = ',0.###'
    end
    object cdsDetailACC_SHIPPED_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_SHIPPED_QUANTITY'
      DisplayFormat = ',0.###'
    end
    object cdsDetailACC_QUANTITY_DIFF: TAbmesFloatField
      FieldName = 'ACC_QUANTITY_DIFF'
      DisplayFormat = ',0.###'
    end
    object cdsDetailCL_OFFER_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'CL_OFFER_TOTAL_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsDetailTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsDetailREAL_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'REAL_TOTAL_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsDetailTOTAL_PRICE_DIFF: TAbmesFloatField
      FieldName = 'TOTAL_PRICE_DIFF'
      DisplayFormat = ',0.00'
    end
    object cdsDetailDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDetailDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsDetailHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
    end
    object cdsDetailPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object cdsDetailPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object cdsDetailPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC_ITEMS'
    end
    object cdsDetailCL_OFFER_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'CL_OFFER_LEASE_DATE_UNIT_QTY'
    end
    object cdsDetailCL_OFFER_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'CL_OFFER_LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object cdsDetailCL_OFFER_LEASE_RESOURCE_QTY: TAbmesFloatField
      FieldName = 'CL_OFFER_LEASE_RESOURCE_QTY'
    end
    object cdsDetailCL_OFFER_LEASE_RESOURCE_A_QTY: TAbmesFloatField
      FieldName = 'CL_OFFER_LEASE_RESOURCE_A_QTY'
    end
    object cdsDetailLEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_QTY'
    end
    object cdsDetailLEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object cdsDetailLEASE_RESOURCE_QTY: TAbmesFloatField
      FieldName = 'LEASE_RESOURCE_QTY'
    end
    object cdsDetailLEASE_RESOURCE_ACC_QTY: TAbmesFloatField
      FieldName = 'LEASE_RESOURCE_ACC_QTY'
    end
    object cdsDetailREAL_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'REAL_LEASE_DATE_UNIT_QTY'
    end
    object cdsDetailREAL_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'REAL_LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object cdsDetailREAL_LEASE_RESOURCE_QTY: TAbmesFloatField
      FieldName = 'REAL_LEASE_RESOURCE_QTY'
    end
    object cdsDetailREAL_LEASE_RESOURCE_ACC_QTY: TAbmesFloatField
      FieldName = 'REAL_LEASE_RESOURCE_ACC_QTY'
    end
    object cdsDetailLEASE_RESOURCE_QTY_DIFF: TAbmesFloatField
      FieldName = 'LEASE_RESOURCE_QTY_DIFF'
    end
    object cdsDetailLEASE_RESOURCE_ACC_QTY_DIFF: TAbmesFloatField
      FieldName = 'LEASE_RESOURCE_ACC_QTY_DIFF'
    end
    object cdsDetail_SALE_IDENTIFICATION: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SALE_IDENTIFICATION'
      Calculated = True
    end
    object cdsDetail_SINGLE_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SINGLE_PRICE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsDetailQUANTITY_TAKEN_FROM_STORE: TAbmesFloatField
      FieldName = 'QUANTITY_TAKEN_FROM_STORE'
      DisplayFormat = ',0.###'
    end
    object cdsDetailACC_QUANTITY_TAKEN_FROM_STORE: TAbmesFloatField
      FieldName = 'ACC_QUANTITY_TAKEN_FROM_STORE'
      DisplayFormat = ',0.###'
    end
    object cdsDetailTAKEN_FROM_STORE_PRICE: TAbmesFloatField
      FieldName = 'TAKEN_FROM_STORE_PRICE'
      DisplayFormat = ',0.00'
    end
  end
  inherited dsDetail: TDataSource
    Left = 56
  end
  inherited tmrMaster: TTimer
    Left = 608
  end
  object cdsSaleDealTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Filter = 'SALE_DEAL_TYPE_CODE in (1, 2)'
    Filtered = True
    Params = <>
    ProviderName = 'prvSaleDealTypes'
    Left = 152
    Top = 184
    object cdsSaleDealTypesSALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object cdsSaleDealTypesSALE_DEAL_TYPE_NAME: TAbmesWideStringField
      FieldName = 'SALE_DEAL_TYPE_NAME'
      Size = 100
    end
    object cdsSaleDealTypesSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_DEAL_TYPE_ABBREV'
      Size = 100
    end
  end
end
