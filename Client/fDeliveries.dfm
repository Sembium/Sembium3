inherited fmDeliveries: TfmDeliveries
  Left = 264
  Top = 155
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1044#1086#1089#1090#1072#1074#1082#1080' %ForOrOf% %Provision%'
  ClientHeight = 595
  ClientWidth = 1003
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 560
    Width = 1003
    inherited pnlOKCancel: TPanel
      Left = 735
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 646
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 914
      Visible = False
    end
  end
  object pnlMain: TPanel [1]
    Left = 0
    Top = 0
    Width = 1003
    Height = 560
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 8
    TabOrder = 1
    DesignSize = (
      1003
      560)
    object pcMain: TPageControl
      Left = 8
      Top = 8
      Width = 987
      Height = 544
      ActivePage = tsDeliveries
      Align = alClient
      HotTrack = True
      TabHeight = 22
      TabOrder = 1
      OnChange = pcMainChange
      OnChanging = pcMainChanging
      object tsGroupDeliveries: TTabSheet
        Caption = #1043#1088#1091#1087#1080' '#1054#1055#1044
        object sptMain: TSplitter
          Left = 0
          Top = 327
          Width = 979
          Height = 7
          Cursor = crVSplit
          Align = alTop
        end
        object pnlDeliveryGroupsMaster: TPanel
          Left = 0
          Top = 0
          Width = 979
          Height = 327
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object pnlGroupDeliveriesNavigator: TPanel
            Left = 0
            Top = 25
            Width = 979
            Height = 24
            Align = alTop
            BevelOuter = bvNone
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            object pnlGroupDeliveriesFilterButton: TPanel
              Left = 96
              Top = 0
              Width = 24
              Height = 24
              Align = alLeft
              AutoSize = True
              BevelOuter = bvNone
              TabOrder = 0
              object btnFilter: TSpeedButton
                Left = 0
                Top = 0
                Width = 24
                Height = 24
                Action = actGroupDeliveriesFilter
                Flat = True
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
                  0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
                  FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
                  FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF0000000000FFFFFF00000000000000000000000000FF00FF00000000000000
                  00000000000000000000000000000000000000000000FF00FF00000000000000
                  00000000000000000000000000000000000000000000FF00FF00000000000000
                  0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
                  FF000000000000000000000000000000000000000000FF00FF00000000000000
                  0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
                  FF000000000000000000000000000000000000000000FF00FF00000000000000
                  0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
                  FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
                  FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
                  FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF000000000000000000000000000000000000000000FF00FF00000000000000
                  0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
                  00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
                  0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
                  00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              end
            end
            object navGroupDeliveries: TDBColorNavigator
              Left = 0
              Top = 0
              Width = 96
              Height = 24
              DataSource = dsGroupDeliveriesMaster
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              Align = alLeft
              Flat = True
              TabOrder = 1
              BeforeAction = navGroupDeliveriesBeforeAction
            end
            object tlbTopDeliveryGroupsButtons: TToolBar
              Left = 120
              Top = 0
              Width = 56
              Height = 24
              Align = alLeft
              AutoSize = True
              ButtonHeight = 24
              ButtonWidth = 24
              Caption = 'tlbTopDeliveryGroupsButtons'
              Images = dmMain.ilActions
              TabOrder = 2
              object sepBeforePrintButton: TToolButton
                Left = 0
                Top = 0
                Width = 8
                Caption = 'sepBeforeExcelExportButton'
                ImageIndex = 84
                Style = tbsSeparator
              end
              object btnExcelExportGroupDeliveriesMaster: TToolButton
                Left = 8
                Top = 0
                Action = actExcelExportGroupDeliveriesMaster
              end
              object btnPrintDeliveryGroups: TToolButton
                Left = 32
                Top = 0
                Action = actPrintDeliveryGroups
              end
            end
            object tlbVendorDoc: TToolBar
              Left = 176
              Top = 0
              Width = 105
              Height = 24
              Align = alLeft
              ButtonHeight = 24
              ButtonWidth = 36
              Caption = 'tlbVendorDoc'
              Images = dmMain.ilDocs
              TabOrder = 3
              object sepBeforeVendorDoc: TToolButton
                Left = 0
                Top = 0
                Width = 8
                Caption = 'sepBeforeVendorDoc'
                Style = tbsSeparator
              end
              object lblVendorDoc: TLabel
                Left = 8
                Top = 0
                Width = 61
                Height = 24
                AutoSize = False
                Caption = ' '#1044#1086#1089#1090#1072#1074#1095#1080#1082' '
                Layout = tlCenter
              end
              object btnVendorDoc: TToolButton
                Left = 69
                Top = 0
                Hint = #1055#1086#1082#1072#1079#1074#1072' '#1052#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1072#1090#1072' '#1043#1088#1054#1055#1044
                Caption = 'btnVendorDoc'
                ImageIndex = 0
                OnClick = btnVendorDocClick
              end
            end
            inline frDeliveryDateInterval: TfrDateIntervalFrame
              Left = 352
              Top = 0
              Width = 145
              Height = 21
              Constraints.MaxHeight = 21
              Constraints.MaxWidth = 145
              Constraints.MinHeight = 21
              Constraints.MinWidth = 145
              TabOrder = 4
              TabStop = True
              inherited dsData: TDataSource
                DataSet = pdsGroupDeliveries
              end
            end
            object edtDeliveryDealType: TDBEdit
              Left = 504
              Top = 0
              Width = 57
              Height = 21
              Color = clBtnFace
              DataField = '_DELIVERY_DEAL_TYPE_ABBREV'
              DataSource = dsGroupDeliveriesParams
              ReadOnly = True
              TabOrder = 5
            end
            object edtGroupByReceiveDate: TDBEdit
              Left = 568
              Top = 0
              Width = 193
              Height = 21
              Color = clBtnFace
              DataField = 'GROUP_BY_RECEIVE_DATE'
              DataSource = dsGroupDeliveriesParams
              ReadOnly = True
              TabOrder = 6
            end
            object edtDateUnit: TDBEdit
              Left = 768
              Top = 0
              Width = 81
              Height = 21
              Color = clBtnFace
              DataField = '_LEASE_DATE_UNIT_NAME'
              DataSource = dsGroupDeliveriesParams
              ReadOnly = True
              TabOrder = 7
            end
          end
          object grdDeliveryGroupsMaster: TAbmesDBGrid
            Left = 0
            Top = 49
            Width = 979
            Height = 278
            Align = alClient
            DataSource = dsGroupDeliveriesMaster
            DynProps = <>
            FooterRowCount = 1
            FooterParams.Color = 15258325
            GridLineParams.VertEmptySpaceStyle = dessNonEh
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch]
            ReadOnly = True
            TabOrder = 1
            TitleParams.MultiTitle = True
            TitleParams.RowLines = 2
            TitleParams.VTitleMargin = 11
            OnDrawColumnCell = GridsDrawColumnCell
            OnGetCellParams = GridsGetCellParams
            OnSortMarkingChanged = GridsSortMarkingChanged
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'STATUS_CODE'
                Footers = <>
                Title.Caption = #1057#1090#1072#1090#1091#1089
                Width = 46
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'DELIVERY_DATE'
                Footers = <>
                Title.Caption = #1044#1072#1090#1072' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1072
                Width = 70
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'MIN_DAYS_LEFT'
                Footers = <>
                Title.Caption = #1056#1077#1079#1077#1088#1074
                Title.Orientation = tohVertical
                Width = 20
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'VENDOR_STATUS_NAME'
                Footers = <>
                Title.Caption = #1044#1086#1089#1090#1072#1074#1095#1080#1082'|'#1057#1090#1072#1090#1091#1089
                Width = 67
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'VENDOR_COMPANY_NAME'
                Footers = <>
                Title.Caption = #1044#1086#1089#1090#1072#1074#1095#1080#1082'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                Width = 129
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'VENDOR_OFFICE_NAME'
                Footers = <>
                Title.Caption = #1058#1055' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1095#1080#1082' '#1079#1072' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1103
                Width = 76
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'IS_TRANSPORT_FROM_VENDOR'
                Footers = <>
                Title.Caption = #1054#1088#1075'. '#1058#1088#1072#1085#1089#1087#1086#1088#1090
                Width = 62
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'TOTAL_PRICE'
                Footer.FieldName = '_SUM_TOTAL_PRICE'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1083#1072#1085'|'#1054#1073#1097#1072' '#1089#1090'-'#1089#1090' (%SecondaryCurrency%)'
                Width = 68
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_PLAN_TRANSPORT_QUANTITY'
                Footers = <>
                Title.Caption = #1055#1083#1072#1085'|'#1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1080'|'#1050'-'#1074#1086
                Width = 50
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_TRANSPORT_MEASURE_ABBREV'
                Footers = <>
                Title.Caption = #1055#1083#1072#1085'|'#1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1080'|'#1052'.'#1077#1076'.'
                Width = 31
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'SD_TOTAL_PRICE'
                Footer.FieldName = '_SUM_SD_TOTAL_PRICE'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1054#1090#1095#1077#1090'|'#1054#1073#1097#1072' '#1089#1090'-'#1089#1090' (%SecondaryCurrency%)'
                Width = 68
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_OTCH_TRANSPORT_QUANTITY'
                Footers = <>
                Title.Caption = #1054#1090#1095#1077#1090'|'#1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1080'|'#1050'-'#1074#1086
                Width = 50
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_TRANSPORT_MEASURE_ABBREV'
                Footers = <>
                Title.Caption = #1054#1090#1095#1077#1090'|'#1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1080'|'#1052'.'#1077#1076'.'
                Width = 31
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_DEV_TOTAL_PRICE'
                Footer.FieldName = '_SUM_DEV_TOTAL_PRICE'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1054#1073#1097#1072' '#1089#1090'-'#1089#1090' (%SecondaryCurrency%)'
                Width = 68
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_DEV_TRANSPORT_QUANTITY'
                Footers = <>
                Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1080'|'#1050'-'#1074#1086
                Width = 50
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_TRANSPORT_MEASURE_ABBREV'
                Footers = <>
                Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1080'|'#1052'.'#1077#1076'.'
                Width = 31
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'DAMAGES_STATE_CODE'
                Footers = <>
                Title.Caption = #1053#1054
                Title.Orientation = tohVertical
                Width = 13
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object pnlDeliveryGroupTopGrid: TPanel
            Left = 0
            Top = 0
            Width = 979
            Height = 25
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
            object lblDeliveryDateInterval: TLabel
              Left = 352
              Top = 8
              Width = 40
              Height = 13
              Caption = #1042#1088#1084#1048#1085#1090
            end
            object lblDeliveryDealType: TLabel
              Left = 504
              Top = 8
              Width = 47
              Height = 13
              Caption = #1058#1080#1087' '#1054#1055#1044
            end
            object lblGroupByReceiveDate: TLabel
              Left = 568
              Top = 8
              Width = 68
              Height = 13
              Caption = #1043#1088#1091#1087#1080#1088#1072#1085#1077' '#1087#1086
            end
            object lblDateUnit: TLabel
              Left = 768
              Top = 8
              Width = 59
              Height = 13
              Caption = #1053#1084'. '#1057#1090#1098#1087#1082#1072
            end
          end
        end
        object pnlDeliveryGroupsDetail: TPanel
          Left = 0
          Top = 334
          Width = 979
          Height = 148
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object pnlDetailNavigator: TPanel
            Left = 0
            Top = 0
            Width = 979
            Height = 24
            Align = alTop
            BevelOuter = bvNone
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            DesignSize = (
              979
              24)
            object navGroupDeliveriesDetail: TDBColorNavigator
              Left = 0
              Top = 0
              Width = 96
              Height = 24
              DataSource = dsGroupDeliveriesDetail
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              Align = alLeft
              Flat = True
              TabOrder = 0
            end
            object tlbGroupDeliveriesDetail: TToolBar
              Left = 96
              Top = 0
              Width = 265
              Height = 24
              Align = alLeft
              AutoSize = True
              ButtonHeight = 24
              ButtonWidth = 38
              Caption = 'tlbGroupDeliveriesDetail'
              Images = dmMain.ilDocs
              TabOrder = 1
              object btnShowAnnuledLines: TSpeedButton
                Left = 0
                Top = 0
                Width = 24
                Height = 24
                Hint = #1055#1086#1082#1072#1079#1074#1072'/'#1089#1082#1088#1080#1074#1072' '#1072#1085#1091#1083#1080#1088#1072#1085#1080#1090#1077' '#1088#1077#1076#1086#1074#1077
                AllowAllUp = True
                GroupIndex = 1
                Caption = #1040#1085
                Flat = True
                Transparent = False
                OnClick = btnShowAnnuledLinesClick
              end
              object sepBeforeDeliveryDocumentation: TToolButton
                Left = 24
                Top = 0
                Width = 8
                Caption = 'sepBeforeDeliveryDocumentation'
                ImageIndex = 1
                Style = tbsSeparator
              end
              object lblDeliveryDocumentation: TLabel
                Left = 32
                Top = 0
                Width = 31
                Height = 24
                AutoSize = False
                Caption = ' '#1054#1055#1044' '
                Layout = tlCenter
              end
              object btnDeliveryDocumentation: TToolButton
                Left = 63
                Top = 0
                Hint = #1055#1086#1082#1072#1079#1074#1072' '#1052#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1080#1103' '#1054#1055#1044
                Caption = 'btnDeliveryDocumentation'
                ImageIndex = 0
                OnClick = btnDeliveryDocumentationClick
              end
              object sepBeforeProductDocumentation: TToolButton
                Left = 101
                Top = 0
                Width = 8
                Caption = 'sepBeforeProductDocumentation'
                ImageIndex = 1
                Style = tbsSeparator
              end
              object lblProductDocumentation: TLabel
                Left = 109
                Top = 0
                Width = 118
                Height = 13
                Caption = ' %ProductClassAbbrev% '
                Layout = tlCenter
              end
              object btnProductDocumentation: TToolButton
                Left = 227
                Top = 0
                Hint = #1055#1086#1082#1072#1079#1074#1072' '#1052#1048#1048#1054' '#1085#1072' %ProductClassNameWithThePrefix% '#1086#1090' '#1080#1079#1073#1088#1072#1085#1080#1103' '#1088#1077#1076
                Caption = 'btnProductDocumentation'
                ImageIndex = 0
                OnClick = btnProductDocumentationClick
              end
            end
            object pnlDetailToggles: TPanel
              Left = 456
              Top = 0
              Width = 523
              Height = 24
              Anchors = [akLeft, akTop, akRight]
              BevelOuter = bvNone
              TabOrder = 2
              object btnShowReal: TSpeedButton
                Left = 427
                Top = 0
                Width = 40
                Height = 24
                Align = alRight
                GroupIndex = 6
                Caption = #1054#1090#1095#1077#1090
                Flat = True
                Transparent = False
              end
              object btnShowPlan: TSpeedButton
                Tag = 6
                Left = 387
                Top = 0
                Width = 40
                Height = 24
                Align = alRight
                GroupIndex = 6
                Down = True
                Caption = #1055#1083#1072#1085
                Flat = True
                Transparent = False
              end
              object btnExpGroupsDetailShowDates: TSpeedButton
                Left = 259
                Top = 0
                Width = 120
                Height = 24
                Align = alRight
                GroupIndex = 9
                Caption = #1044#1072#1090#1080' '#1055#1083#1095'/'#1042#1088#1097
                Flat = True
                Transparent = False
              end
              object btnExpGroupsDetailShowQty: TSpeedButton
                Tag = 8
                Left = 139
                Top = 0
                Width = 120
                Height = 24
                Align = alRight
                GroupIndex = 9
                Down = True
                Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
                Flat = True
                Transparent = False
              end
              object tlbDetailToggles: TToolBar
                Left = 467
                Top = 0
                Width = 56
                Height = 24
                Align = alRight
                AutoSize = True
                ButtonHeight = 24
                Caption = 'tlbToggles'
                TabOrder = 0
                object sepBeforeAccountMeasure: TToolButton
                  Left = 0
                  Top = 0
                  Width = 8
                  Caption = 'sepAfterAccountMeasure'
                  ImageIndex = 0
                  Style = tbsSeparator
                end
                object sbtnWorkMeasure: TSpeedButton
                  Tag = 2
                  Left = 8
                  Top = 0
                  Width = 24
                  Height = 24
                  Hint = #1056#1072#1073#1086#1090#1085#1080' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072'/'#1084'.'#1077#1076'.'
                  GroupIndex = 1
                  Down = True
                  Flat = True
                  Glyph.Data = {
                    36030000424D3603000000000000360000002800000010000000100000000100
                    1800000000000003000000000000000000000000000000000000FF00FFFF00FF
                    FF00FFFF00FFFF00FF000000FFFFFFFFFFFF000000FF00FFFF00FF0000FF0000
                    800000FFFF00FF000000FF00FF7F7F7F000000000000000000FFFFFFFFFFFF00
                    0000FF00FFFF00FFFF00FF0000FF0000800000FF0000000080807F7F7F000000
                    FFFFFFFFFFFFFFFFFFFFFFFF000000FF00FFFF00FFFF00FFFF00FF0000FF0000
                    800000FF008080008080000000FFFFFF000000000000FFFFFFFFFFFF000000FF
                    00FFFF00FFFF00FFFF00FF0000FF0000800000FF008080008080000000000000
                    FF00FFFF00FF000000FFFFFF000000FF00FFFF00FFFF00FFFF00FF0000FF0000
                    800000FF008080FF00FF0000007F7F7FFF00FFFF00FF000000FFFFFF000000FF
                    00FFFF00FFFF00FF0000FF0000FF0000FF0000FF0000FFFF00FFFF00FFFF00FF
                    7F7F7F000000FFFFFF0000007F7F7FFF00FFFF00FF0000000000800000800000
                    80000080000080FF00FFFF00FFFF00FF0000000000000000007F7F7FFF00FFFF
                    00FF000000008080008080008080000000FF00FFFF00FFFF00FFFF00FFFF00FF
                    FF00FFFF00FFFF00FFFF00FFFF00FF000000008080008080008080FF00FF0000
                    00FF00FFFF00FFFF00FFFF00FFFF00FF000000000000FF00FFFF00FF00000000
                    8080008080008080FF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FF000000
                    FF00FF000000FF00FF000000008080008080008080FF00FFFF00FFFF00FF0000
                    00FF00FFFF00FFFF00FF000000FF00FF00000000000000000000808000808000
                    8080FF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FF000000000000
                    000000000000000000000000008080FF00FFFF00FFFF00FFFF00FF7F7F7F0000
                    007F7F7FFF00FFFF00FFFF00FFFF00FF000000000000000000000000000000FF
                    00FFFF00FFFF00FFFF00FF7F7F7F0000007F7F7FFF00FFFF00FFFF00FFFF00FF
                    0080800000000000000000000000007F7F7FFF00FFFF00FFFF00FF7F7F7F0000
                    007F7F7FFF00FFFF00FFFF00FFFF00FF008080008080FF00FF00000000000000
                    0000000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
                  ParentShowHint = False
                  ShowHint = True
                  Transparent = False
                end
                object sbtnAccountMeasure: TSpeedButton
                  Left = 32
                  Top = 0
                  Width = 24
                  Height = 24
                  Hint = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1080' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072'/'#1084'.'#1077#1076'.'
                  GroupIndex = 1
                  Flat = True
                  Glyph.Data = {
                    36030000424D3603000000000000360000002800000010000000100000000100
                    1800000000000003000000000000000000000000000000000000FF00FFFF00FF
                    FF00FF7F7F7F7F7F7FFF00FF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFF00
                    FF7F7F7F7F7F7F000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FFFF00FF0000000000000000007F7F7FFF00FFFF00FF
                    FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000BFBF
                    BF7F7F7F0000007F7F7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                    00FFFF00FFFF00FF000000BFBFBFBFBFBFBFBFBF000000FF00FFFF00FFFF00FF
                    FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000008080008080BFBF
                    BF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                    00FF00000000808000808000FFFF000000FF00FFFF00FFFF00FFFF00FFFF00FF
                    FF00FFFF00FFFF00FFFF00FFFF00FF00000000808000808000FFFF000000FF00
                    FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000
                    808000808000FFFF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                    FF00FFFF00FFFF00FF00000000808000808000FFFF000000FF00FFFF00FFFF00
                    FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000808000808000
                    FFFF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                    FF00FF00000000808000808000FFFF000000FF00FFFF00FFFF00FFFF00FFFF00
                    FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000808000000000FFFF000000FF
                    00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000
                    00000000000000FFFF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                    FFFF00FFFF00FFFF00FF0000000000800000FF000000000000FF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000000000FF
                    0000FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                    FFFF00FFFF00FFFF00FFFF00FF000000000000FF00FFFF00FFFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
                  ParentShowHint = False
                  ShowHint = True
                  Transparent = False
                end
              end
              object tlbSeparatorBeforePlanReal: TToolBar
                Left = 379
                Top = 0
                Width = 8
                Height = 24
                Align = alRight
                AutoSize = True
                ButtonHeight = 24
                TabOrder = 1
                object sepGroupDeliveriesDetailBeforePlanReal: TToolButton
                  Left = 0
                  Top = 0
                  Width = 8
                  Style = tbsSeparator
                end
              end
            end
          end
          object grdDeliveryGroupsDetail: TAbmesDBGrid
            Left = 0
            Top = 24
            Width = 979
            Height = 124
            Align = alClient
            DataSource = dsGroupDeliveriesDetail
            DynProps = <>
            FooterParams.Color = clWindow
            GridLineParams.VertEmptySpaceStyle = dessNonEh
            HorzScrollBar.VisibleMode = sbNeverShowEh
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch]
            ReadOnly = True
            TabOrder = 1
            TitleParams.MultiTitle = True
            TitleParams.VTitleMargin = 9
            OnDblClick = grdDeliveryGroupsDetailDblClick
            OnDrawColumnCell = GridsDrawColumnCell
            OnGetCellParams = GridsGetCellParams
            OnSortMarkingChanged = GridsSortMarkingChanged
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'STATUS_CODE'
                Footers = <>
                Title.Caption = #1057#1090#1072#1090#1091#1089
                Width = 46
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'DELIVERY_ID'
                Footers = <>
                Title.Caption = 'ID '#1054#1055#1044
                Width = 78
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'DAYS_LEFT'
                Footers = <>
                Title.Caption = #1056#1077#1079#1077#1088#1074
                Title.Orientation = tohVertical
                Width = 20
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PRIORITY_NO'
                Footers = <>
                Title.Caption = #1055#1088#1080#1086#1088'.'
                Title.Orientation = tohVertical
                Width = 16
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'DELIVERY_DEAL_TYPE_ABBREV'
                Footers = <>
                Title.Caption = #1058#1080#1087
                Width = 32
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PRODUCT_NAME'
                Footers = <>
                Tag = 4
                Title.Caption = '%ProductClassName%|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
                Width = 135
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'VENDOR_PRODUCT_NAME'
                Footers = <>
                Tag = 5
                Title.Caption = '%ProductClassName%|'#1054#1079#1085#1072#1095#1077#1085#1080#1077' '#1086#1090' '#1044#1086#1089#1090#1072#1074#1095#1080#1082
                Visible = False
                Width = 135
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PRODUCT_ORIGIN_ABBREV_AND_NAME'
                Footers = <>
                Title.Caption = '%ProductClassName%|'#1059#1059#1057
                Width = 27
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'MEASURE_ABBREV'
                Footers = <>
                Tag = 3
                Title.Caption = '%ProductClassName%|'#1056#1072#1073'. '#1052'.'#1077#1076'.'
                Width = 30
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'ACCOUNT_MEASURE_ABBREV'
                Footers = <>
                Tag = 2
                Title.Caption = '%ProductClassName%|'#1057#1095#1077#1090'. '#1052'.'#1077#1076'.'
                Visible = False
                Width = 30
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'WORK_QUANTITY'
                Footers = <>
                Tag = 307
                Title.Caption = #1055#1083#1072#1085'|'#1056#1072#1073'. '#1050'-'#1074#1086
                Width = 49
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'ACCOUNT_QUANTITY'
                Footers = <>
                Tag = 207
                Title.Caption = #1055#1083#1072#1085'|'#1057#1095#1077#1090'. '#1050'-'#1074#1086
                Visible = False
                Width = 49
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PLAN_LEASE_DATE_UNIT_QTY'
                Footers = <>
                Tag = 7
                Title.Caption = #1055#1083#1072#1085'|'#1050'-'#1074#1086' '#1053#1084'.'#1057#1090'.'
                Width = 49
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PLAN_LEASE_DATE_UNIT_NAME'
                Footers = <>
                Tag = 7
                Title.Caption = #1055#1083#1072#1085'|'#1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072
                Width = 48
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'TOTAL_PRICE'
                Footers = <>
                Tag = 7
                Title.Caption = #1055#1083#1072#1085'|'#1054#1073#1097#1072' '#1089#1090'-'#1089#1090
                Width = 49
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'CURRENCY_ABBREV'
                Footers = <>
                Tag = 7
                Title.Caption = #1055#1083#1072#1085'|'#1042#1072#1083'.'
                Width = 30
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_PLAN_TRANSPORT_QUANTITY'
                Footers = <>
                Tag = 7
                Title.Caption = #1055#1083#1072#1085'|'#1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1080'|'#1050'-'#1074#1086
                Width = 49
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'TRANSPORT_MEASURE_ABBREV'
                Footers = <>
                Tag = 7
                Title.Caption = #1055#1083#1072#1085'|'#1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1080'|'#1052'.'#1077#1076'.'
                Width = 31
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'REAL_WORK_QUANTITY'
                Footers = <>
                Tag = 306
                Title.Caption = #1054#1090#1095#1077#1090'|'#1056#1072#1073'. '#1050'-'#1074#1086
                Visible = False
                Width = 49
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'REAL_ACCOUNT_QUANTITY'
                Footers = <>
                Tag = 206
                Title.Caption = #1054#1090#1095#1077#1090'|'#1057#1095#1077#1090'. '#1050'-'#1074#1086
                Visible = False
                Width = 49
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'REAL_LEASE_DATE_UNIT_QTY'
                Footers = <>
                Tag = 6
                Title.Caption = #1054#1090#1095#1077#1090'|'#1050'-'#1074#1086' '#1053#1084'.'#1057#1090'.'
                Visible = False
                Width = 49
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'REAL_LEASE_DATE_UNIT_NAME'
                Footers = <>
                Tag = 6
                Title.Caption = #1054#1090#1095#1077#1090'|'#1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072
                Visible = False
                Width = 48
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'REAL_TOTAL_PRICE'
                Footers = <>
                Tag = 6
                Title.Caption = #1054#1090#1095#1077#1090'|'#1054#1073#1097#1072' '#1089#1090'-'#1089#1090
                Visible = False
                Width = 49
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'CURRENCY_ABBREV'
                Footers = <>
                Tag = 6
                Title.Caption = #1054#1090#1095#1077#1090'|'#1042#1072#1083'.'
                Visible = False
                Width = 30
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_REAL_TRANSPORT_QUANTITY'
                Footers = <>
                Tag = 6
                Title.Caption = #1054#1090#1095#1077#1090'|'#1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1080'|'#1050'-'#1074#1086
                Visible = False
                Width = 49
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'TRANSPORT_MEASURE_ABBREV'
                Footers = <>
                Tag = 6
                Title.Caption = #1054#1090#1095#1077#1090'|'#1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1080'|'#1052'.'#1077#1076'.'
                Visible = False
                Width = 31
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_DEV_WORK_QUANTITY'
                Footers = <>
                Tag = 903
                Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1056#1072#1073'. '#1050'-'#1074#1086
                Width = 69
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_DEV_ACCOUNT_QUANTITY'
                Footers = <>
                Tag = 902
                Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1057#1095#1077#1090'. '#1050'-'#1074#1086
                Visible = False
                Width = 69
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_DEV_LEASE_DATE_UNIT_QTY'
                Footers = <>
                Tag = 9
                Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1050'-'#1074#1086' '#1053#1084'.'#1057#1090'.'
                Width = 69
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_DEV_TOTAL_PRICE'
                Footers = <>
                Tag = 9
                Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1054#1073#1097#1072' '#1089#1090'-'#1089#1090
                Width = 69
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'RECEIVE_DATE'
                Footers = <>
                Tag = 8
                Title.Caption = #1055#1086#1083#1091#1095#1072#1074#1072#1085#1077'|'#1055#1083#1072#1085#1086#1074#1072' '#1044#1072#1090#1072
                Visible = False
                Width = 70
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'RECEIVE_DATE_RSV'
                Footers = <>
                Tag = 8
                Title.Caption = #1055#1086#1083#1091#1095#1072#1074#1072#1085#1077'|'#1088#1079#1088#1074'.'
                Visible = False
                Width = 33
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'RETURN_DATE'
                Footers = <>
                Tag = 8
                Title.Caption = #1042#1088#1098#1097#1072#1085#1077'|'#1055#1083#1072#1085#1086#1074#1072' '#1044#1072#1090#1072
                Visible = False
                Width = 70
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'RETURN_DATE_RSV'
                Footers = <>
                Tag = 8
                Title.Caption = #1042#1088#1098#1097#1072#1085#1077'|'#1088#1079#1088#1074'.'
                Visible = False
                Width = 33
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'IS_PROFORM_INVOICE'
                Footers = <>
                Title.Caption = #1060#1072#1082#1090#1091#1088#1072
                Title.Orientation = tohVertical
                Width = 18
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'DAMAGES_STATE_CODE'
                Footers = <>
                Title.Caption = #1053#1054
                Title.Orientation = tohVertical
                Width = 13
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object pnlGroupDeliveriesButtons: TPanel
          Left = 0
          Top = 482
          Width = 979
          Height = 30
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          object btnEditDeliveryFromGroup: TBitBtn
            Left = 0
            Top = 4
            Width = 129
            Height = 25
            Action = actEditDeliveryFromGroup
            Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
              0000FF00FF000000000000000000000000000000000000000000FFFFFF00FFFF
              FF0000000000FFFFFF000000000000000000FFFFFF0000000000FFFF00000000
              00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
              000000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000FFFF
              FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF00000000
              0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
              0000FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFF00000000
              000000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
              00000000000000FFFF0000000000FFFFFF00FFFFFF0000000000FFFF00000000
              0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
              FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
              000000FFFF00FFFFFF0000000000000000000000000000000000000000000000
              000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
              00000000000000FFFF00FFFFFF0000FFFF00000000000000000000FFFF000000
              0000FFFFFF00FFFFFF000000000000000000FFFFFF0000000000FF00FF00FF00
              FF00FF00FF000000000000000000000000000000000000FFFF0000000000FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF000000000000FFFF0000000000FFFFFF00FFFF
              FF00FFFFFF00FFFFFF0000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF000000000000FFFF0000000000FFFFFF00FFFFFF000000
              000000000000FFFFFF0000000000FFFFFF00FFFFFF0000000000FF00FF00FF00
              FF00FF00FF000000000000FFFF000000000000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
              FF00000000000000FF0000000000FF00FF0000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000FF00FF00FF00FF000000000000000000000000000000
              0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
            TabOrder = 0
          end
          object btnGroupDeliveriesExceptEvents: TBitBtn
            Left = 139
            Top = 4
            Width = 150
            Height = 25
            Action = actGroupDeliveriesExceptEvents
            Caption = #1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103'...'
            TabOrder = 1
          end
        end
      end
      object tsDeliveries: TTabSheet
        Caption = #1054#1055#1044
        ImageIndex = 1
        object pnlNavigator: TPanel
          Left = 0
          Top = 25
          Width = 979
          Height = 24
          Align = alTop
          BevelOuter = bvNone
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object pnlFilterButton: TPanel
            Left = 96
            Top = 0
            Width = 24
            Height = 24
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object btnDeliveriesFilter: TSpeedButton
              Left = 0
              Top = 0
              Width = 24
              Height = 24
              Action = actDeliveriesFilter
              Flat = True
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
                0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
                FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
                FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF0000000000FFFFFF00000000000000000000000000FF00FF00000000000000
                00000000000000000000000000000000000000000000FF00FF00000000000000
                00000000000000000000000000000000000000000000FF00FF00000000000000
                0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
                FF000000000000000000000000000000000000000000FF00FF00000000000000
                0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
                FF000000000000000000000000000000000000000000FF00FF00000000000000
                0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
                FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
                FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
                FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF000000000000000000000000000000000000000000FF00FF00000000000000
                0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
                00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
                0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
                00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            end
          end
          object navData: TDBColorNavigator
            Left = 0
            Top = 0
            Width = 96
            Height = 24
            DataSource = dsDeliveries
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alLeft
            Flat = True
            TabOrder = 1
            BeforeAction = navDataBeforeAction
          end
          object tlbTopButtons: TToolBar
            Left = 120
            Top = 0
            Width = 56
            Height = 24
            Align = alLeft
            AutoSize = True
            ButtonHeight = 24
            ButtonWidth = 24
            EdgeInner = esNone
            Images = dmMain.ilActions
            TabOrder = 2
            object sepBeforeExcelExportDeliveries: TToolButton
              Left = 0
              Top = 0
              Width = 8
              Caption = 'sepBeforeExcelExportDeliveries'
              ImageIndex = 12
              Style = tbsSeparator
            end
            object btnExcelExportDeliveries: TToolButton
              Left = 8
              Top = 0
              Action = actExcelExportDeliveries
            end
            object btnPrintDeliveries: TToolButton
              Left = 32
              Top = 0
              Action = actPrintDeliveries
            end
          end
          object tlbDocumentation: TToolBar
            Left = 176
            Top = 0
            Width = 193
            Height = 24
            Align = alLeft
            ButtonWidth = 38
            Caption = 'tlbGroupDeliveriesDetail'
            Images = dmMain.ilDocs
            TabOrder = 3
            object sepBeforeDeliveryDocumentation2: TToolButton
              Left = 0
              Top = 0
              Width = 8
              Caption = 'sepBeforeDeliveryDocumentation2'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object lblDeliveryDocumentation2: TLabel
              Left = 8
              Top = 0
              Width = 31
              Height = 22
              AutoSize = False
              Caption = ' '#1054#1055#1044' '
              Layout = tlCenter
            end
            object btnDeliveryDocumentation2: TToolButton
              Left = 39
              Top = 0
              Hint = #1055#1086#1082#1072#1079#1074#1072' '#1052#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1080#1103' '#1054#1055#1044
              Caption = 'btnDeliveryDocumentation2'
              ImageIndex = 0
              OnClick = btnDeliveryDocumentation2Click
            end
            object sepBeforeProductDocumentation2: TToolButton
              Left = 77
              Top = 0
              Width = 8
              Caption = 'sepBeforeProductDocumentation2'
              ImageIndex = 3
              Style = tbsSeparator
            end
            object pnlProductDocumentation2: TPanel
              Left = 85
              Top = 0
              Width = 35
              Height = 22
              BevelOuter = bvNone
              Caption = ' %ProductClassAbbrev% '
              TabOrder = 0
            end
            object btnProductDocumentation2: TToolButton
              Left = 120
              Top = 0
              Hint = #1055#1086#1082#1072#1079#1074#1072' '#1052#1048#1048#1054' '#1085#1072' '#1059#1087#1088#1072#1074#1083#1103#1077#1084#1080#1103' '#1054#1073#1077#1082#1090' '#1086#1090' '#1080#1079#1073#1088#1072#1085#1080#1103' '#1088#1077#1076
              Caption = 'btnProductDocumentation2'
              ImageIndex = 0
              OnClick = btnProductDocumentation2Click
            end
          end
          inline frDeliveryDateInterval2: TfrDateIntervalFrame
            Left = 376
            Top = 0
            Width = 145
            Height = 21
            Constraints.MaxHeight = 21
            Constraints.MaxWidth = 145
            Constraints.MinHeight = 21
            Constraints.MinWidth = 145
            TabOrder = 4
            TabStop = True
            inherited dsData: TDataSource
              DataSet = pdsDeliveries
            end
          end
          object edtDeliveryDealType2: TDBEdit
            Left = 528
            Top = 0
            Width = 57
            Height = 21
            Color = clBtnFace
            DataField = '_DELIVERY_DEAL_TYPE_ABBREV'
            DataSource = dsDeliveriesParams
            ReadOnly = True
            TabOrder = 5
          end
          object edtDateUnit2: TDBEdit
            Left = 592
            Top = 0
            Width = 81
            Height = 21
            Color = clBtnFace
            DataField = '_LEASE_DATE_UNIT_NAME'
            DataSource = dsDeliveriesParams
            ReadOnly = True
            TabOrder = 6
          end
          object tlbDeliveriesToggleButtons: TToolBar
            Left = 683
            Top = 0
            Width = 296
            Height = 24
            Align = alRight
            AutoSize = True
            ButtonHeight = 24
            ButtonWidth = 24
            TabOrder = 7
            object btnIsLease: TSpeedButton
              Tag = 18
              Left = 0
              Top = 0
              Width = 57
              Height = 24
              Hint = 'Invisible. Used only for its tag'
              AllowAllUp = True
              GroupIndex = 14
              Caption = 'btnIsLease'
              Visible = False
            end
            object btnDeliveriesShowReceiveDate: TSpeedButton
              Tag = 16
              Left = 57
              Top = 0
              Width = 33
              Height = 24
              Hint = #1044#1072#1090#1072' '#1085#1072' '#1055#1086#1083#1091#1095#1072#1074#1072#1085#1077
              GroupIndex = 13
              Down = True
              Caption = #1055#1083#1095
              Flat = True
            end
            object btnDeliveriesShowReturnDate: TSpeedButton
              Left = 90
              Top = 0
              Width = 33
              Height = 24
              Hint = #1044#1072#1090#1072' '#1085#1072' '#1042#1088#1098#1097#1072#1085#1077
              GroupIndex = 13
              Caption = #1042#1088#1097
              Flat = True
            end
            object sepBeforeDeliveriesShowPlanOrReal: TToolButton
              Left = 123
              Top = 0
              Width = 8
              ImageIndex = 0
              Style = tbsSeparator
            end
            object btnDeliveriesShowPlan: TSpeedButton
              Tag = 14
              Left = 131
              Top = 0
              Width = 40
              Height = 24
              Hint = #1055#1083#1072#1085#1086#1074#1086
              Align = alRight
              GroupIndex = 12
              Down = True
              Caption = #1055#1083#1072#1085
              Flat = True
            end
            object btnDeliveriesShowReal: TSpeedButton
              Left = 171
              Top = 0
              Width = 40
              Height = 24
              Hint = #1054#1090#1095#1077#1090#1085#1086
              Align = alRight
              GroupIndex = 12
              Caption = #1054#1090#1095#1077#1090
              Flat = True
            end
            object sepBeforeDeliveriesShowInvoice: TToolButton
              Left = 211
              Top = 0
              Width = 8
              ImageIndex = 0
              Style = tbsSeparator
            end
            object btnDeliveriesShowInvoice: TSpeedButton
              Tag = 12
              Left = 219
              Top = 0
              Width = 23
              Height = 24
              Hint = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' / '#1044#1072#1085#1085#1080' '#1079#1072' '#1092#1072#1082#1090#1091#1088#1072
              AllowAllUp = True
              GroupIndex = 11
              Flat = True
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
                8400000084000000840000008400000084000000840000008400000084000000
                8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
                8400000000000000000000000000000000000000000000000000000000000000
                840000008400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
                8400000000000000000000000000000000000000000000000000000000000000
                84000000000000008400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
                8400000000000000000000000000000000000000000000000000000000000000
                8400000000000000000000008400FF00FF00FF00FF00FF00FF00FF00FF000000
                8400000000000000000000000000000000000000000000000000000000000000
                8400000000000000000000008400FF00FF00FF00FF00FF00FF00FF00FF000000
                8400000000000000000000000000000000000000000000000000000000000000
                8400000000000000000000008400FF00FF00FF00FF00FF00FF00FF00FF000000
                8400000084000000840000008400000084000000840000008400000084000000
                8400000000000000000000008400FF00FF00FF00FF00FF00FF00FF00FF00FFFF
                FF000084000000840000FFFFFF0000FF000000FF0000FFFFFF0000FF000000FF
                0000000084000000000000008400FF00FF00FF00FF00FF00FF00FF00FF00FFFF
                FF0000840000FFFFFF0000840000FFFFFF0000FF000000840000FFFFFF000084
                000000FF00000000840000008400FF00FF00FF00FF00FF00FF00FF00FF00FFFF
                FF0000840000008400000084000000840000008400000084000000840000FFFF
                FF0000FF00000084000000008400FF00FF00FF00FF00FF00FF00FF00FF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000084
                0000FFFFFF0000840000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FFFFFF000084000000840000008400000084000000840000FFFF
                FF000084000000840000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF0000840000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            end
            object sepBeforeDeliveriesMeasureButtons: TToolButton
              Left = 242
              Top = 0
              Width = 8
              Style = tbsSeparator
            end
            object btnDeliveriesWorkMeasure: TSpeedButton
              Tag = 10
              Left = 250
              Top = 0
              Width = 23
              Height = 24
              Hint = #1056#1072#1073#1086#1090#1085#1080' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072'/'#1084'.'#1077#1076'.'
              GroupIndex = 10
              Down = True
              Flat = True
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF0000000000FF00
                FF00FF00FF000000FF00000084000000FF00FF00FF0000000000FF00FF007B7B
                7B00000000000000000000000000FFFFFF00FFFFFF0000000000FF00FF00FF00
                FF00FF00FF000000FF00000084000000FF0000000000008484007B7B7B000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00
                FF00FF00FF000000FF00000084000000FF00008484000084840000000000FFFF
                FF000000000000000000FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00
                FF00FF00FF000000FF00000084000000FF000084840000848400000000000000
                0000FF00FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
                FF00FF00FF000000FF00000084000000FF0000848400FF00FF00000000007B7B
                7B00FF00FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
                FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
                FF007B7B7B0000000000FFFFFF00000000007B7B7B00FF00FF00FF00FF000000
                00000000840000008400000084000000840000008400FF00FF00FF00FF00FF00
                FF000000000000000000000000007B7B7B00FF00FF00FF00FF00000000000084
                8400008484000084840000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000008484000084
                840000848400FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF000000000000000000FF00FF00FF00FF000000000000848400008484000084
                8400FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
                0000FF00FF0000000000FF00FF0000000000008484000084840000848400FF00
                FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF0000000000FF00
                FF00000000000000000000000000008484000084840000848400FF00FF00FF00
                FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00000000000000
                00000000000000000000000000000000000000848400FF00FF00FF00FF00FF00
                FF00FF00FF007B7B7B00000000007B7B7B00FF00FF00FF00FF00FF00FF00FF00
                FF000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
                FF00FF00FF007B7B7B00000000007B7B7B00FF00FF00FF00FF00FF00FF00FF00
                FF0000848400000000000000000000000000000000007B7B7B00FF00FF00FF00
                FF00FF00FF007B7B7B00000000007B7B7B00FF00FF00FF00FF00FF00FF00FF00
                FF000084840000848400FF00FF00000000000000000000000000000000000000
                0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            end
            object btnDeliveriesAccountMeasure: TSpeedButton
              Left = 273
              Top = 0
              Width = 23
              Height = 24
              Hint = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1080' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072'/'#1084'.'#1077#1076'.'
              GroupIndex = 10
              Flat = True
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF007B7B7B007B7B7B00FF00FF007B7B7B007B7B7B007B7B7B007B7B
                7B007B7B7B007B7B7B00FF00FF007B7B7B007B7B7B0000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF000000000000000000000000007B7B7B00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0000000000BDBDBD007B7B7B00000000007B7B7B00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF0000000000BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
                00000084840000848400BDBDBD0000000000FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000084
                84000084840000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000008484000084
                840000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000008484000084840000FF
                FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF0000000000008484000084840000FFFF000000
                0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF0000000000008484000084840000FFFF0000000000FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0000000000008484000084840000FFFF0000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF0000000000008484000000000000FFFF0000000000FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
                0000000000000000000000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
                84000000FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
                FF000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
                000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            end
          end
        end
        object grdData: TAbmesDBGrid
          Left = 0
          Top = 49
          Width = 979
          Height = 429
          Align = alClient
          DataSource = dsDeliveries
          DynProps = <>
          FooterParams.Color = clWindow
          GridLineParams.VertEmptySpaceStyle = dessNonEh
          HorzScrollBar.VisibleMode = sbNeverShowEh
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch]
          ReadOnly = True
          TabOrder = 1
          TitleParams.MultiTitle = True
          TitleParams.VTitleMargin = 4
          OnDblClick = grdDataDblClick
          OnDrawColumnCell = GridsDrawColumnCell
          OnGetCellParams = GridsGetCellParams
          OnSortMarkingChanged = GridsSortMarkingChanged
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'STATUS_CODE'
              Footers = <>
              Title.Caption = #1057#1090#1072#1090#1091#1089
              Width = 46
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DELIVERY_DATE'
              Footers = <>
              Tag = 18
              Title.Caption = #1044#1072#1090'a '#1085#1072' '#1055#1086#1083#1091#1095#1072#1074#1072#1085#1077' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1072
              Width = 71
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DAYS_LEFT'
              Footers = <>
              Tag = 18
              Title.Caption = #1088#1079#1088#1074
              Title.Orientation = tohVertical
              Width = 17
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'RECEIVE_DATE'
              Footers = <>
              Tag = 1917
              Title.Caption = #1044#1072#1090#1072' '#1085#1072' '#1055#1086#1083#1091#1095#1072#1074#1072#1085#1077' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1072
              Visible = False
              Width = 71
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'RECEIVE_DATE_RSV'
              Footers = <>
              Tag = 1917
              Title.Caption = #1088#1079#1088#1074
              Title.Orientation = tohVertical
              Visible = False
              Width = 17
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'RETURN_DATE'
              Footers = <>
              Tag = 1916
              Title.Caption = #1044#1072#1090#1072' '#1085#1072' '#1042#1088#1098#1097#1072#1085#1077' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1072
              Visible = False
              Width = 71
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'RETURN_DATE_RSV'
              Footers = <>
              Tag = 1916
              Title.Caption = #1088#1079#1088#1074
              Title.Orientation = tohVertical
              Visible = False
              Width = 17
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DELIVERY_IDENTIFICATION'
              Footers = <>
              Title.Caption = 'ID '#1054#1055#1044
              Width = 78
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PRIORITY_NO'
              Footers = <>
              Title.Caption = #1055#1088#1080#1086#1088'.'
              Title.Orientation = tohVertical
              Width = 16
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'VENDOR_SHORT_NAME'
              Footers = <>
              Title.Caption = #1044#1086#1089#1090#1072#1074#1095#1080#1082
              Width = 78
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PRODUCT_NAME'
              Footers = <>
              Tag = 4
              Title.Caption = '%ProductClassName%|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
              Width = 168
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'VENDOR_PRODUCT_NAME'
              Footers = <>
              Tag = 5
              Title.Caption = '%ProductClassName%|'#1054#1079#1085#1072#1095#1077#1085#1080#1077' '#1086#1090' '#1044#1086#1089#1090#1072#1074#1095#1080#1082
              Visible = False
              Width = 168
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PRODUCT_ORIGIN_ABBREV_AND_NAME'
              Footers = <>
              Title.Caption = '%ProductClassName%|'#1059#1059#1057
              Width = 26
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'WORK_MEASURE_ABBREV'
              Footers = <>
              Tag = 11
              Title.Caption = '%ProductClassName%|'#1056#1072#1073'. '#1052'.'#1077#1076'.'
              Width = 31
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ACCOUNT_MEASURE_ABBREV'
              Footers = <>
              Tag = 10
              Title.Caption = '%ProductClassName%|'#1057#1095#1077#1090'. '#1052'.'#1077#1076'.'
              Visible = False
              Width = 31
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'WORK_QUANTITY'
              Footers = <>
              Tag = 1115
              Title.Caption = #1055#1083#1072#1085'|'#1056#1072#1073'. '#1050'-'#1074#1086
              Width = 49
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ACCOUNT_QUANTITY'
              Footers = <>
              Tag = 1015
              Title.Caption = #1055#1083#1072#1085'|'#1057#1095#1077#1090'. '#1050'-'#1074#1086
              Visible = False
              Width = 49
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'SINGLE_PRICE'
              Footers = <>
              Tag = 111518
              Title.Caption = #1055#1083#1072#1085'|'#1045#1076'. '#1094#1077#1085#1072
              Width = 49
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ACCOUNT_SINGLE_PRICE'
              Footers = <>
              Tag = 101518
              Title.Caption = #1055#1083#1072#1085'|'#1045#1076'. '#1094#1077#1085#1072
              Visible = False
              Width = 49
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'TOTAL_PRICE'
              Footers = <>
              Tag = 1518
              Title.Caption = #1055#1083#1072#1085'|'#1054#1073#1097#1072' '#1089#1090#1086#1081#1085#1086#1089#1090
              Width = 99
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'CURRENCY_ABBREV'
              Footers = <>
              Tag = 1518
              Title.Caption = #1055#1083#1072#1085'|'#1042#1072#1083'.'
              Width = 28
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PLAN_LEASE_DATEY_UNIT_QTY'
              Footers = <>
              Tag = 1519
              Title.Caption = #1055#1083#1072#1085'|'#1050'-'#1074#1086' '#1053#1084'.'#1057#1090'.'
              Visible = False
              Width = 49
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PLAN_LEASE_DATE_UNIT_NAME'
              Footers = <>
              Tag = 1519
              Title.Caption = #1055#1083#1072#1085'|'#1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072
              Visible = False
              Width = 49
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'TOTAL_PRICE'
              Footers = <>
              Tag = 1519
              Title.Caption = #1055#1083#1072#1085'|'#1054#1073#1097#1072' '#1089#1090'-'#1089#1090
              Visible = False
              Width = 49
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'CURRENCY_ABBREV'
              Footers = <>
              Tag = 1519
              Title.Caption = #1055#1083#1072#1085'|'#1042#1072#1083'.'
              Visible = False
              Width = 28
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'REAL_WORK_QUANTITY'
              Footers = <>
              Tag = 1114
              Title.Caption = #1054#1090#1095#1077#1090'|'#1056#1072#1073'. '#1050'-'#1074#1086
              Visible = False
              Width = 49
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'REAL_ACCOUNT_QUANTITY'
              Footers = <>
              Tag = 1014
              Title.Caption = #1054#1090#1095#1077#1090'|'#1057#1095#1077#1090'. '#1050'-'#1074#1086
              Visible = False
              Width = 49
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'REAL_SINGLE_PRICE'
              Footers = <>
              Tag = 111418
              Title.Caption = #1054#1090#1095#1077#1090'|'#1045#1076'. '#1094#1077#1085#1072
              Visible = False
              Width = 49
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'REAL_ACCOUNT_SINGLE_PRICE'
              Footers = <>
              Tag = 101418
              Title.Caption = #1054#1090#1095#1077#1090'|'#1045#1076'. '#1094#1077#1085#1072
              Visible = False
              Width = 49
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'REAL_TOTAL_PRICE'
              Footers = <>
              Tag = 1418
              Title.Caption = #1054#1090#1095#1077#1090'|'#1054#1073#1097#1072' '#1089#1090#1086#1081#1085#1086#1089#1090
              Visible = False
              Width = 99
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'CURRENCY_ABBREV'
              Footers = <>
              Tag = 1418
              Title.Caption = #1054#1090#1095#1077#1090'|'#1042#1072#1083'.'
              Visible = False
              Width = 28
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'REAL_LEASE_DATE_UNIT_QTY'
              Footers = <>
              Tag = 1419
              Title.Caption = #1054#1090#1095#1077#1090'|'#1050'-'#1074#1086' '#1053#1084'.'#1057#1090'.'
              Visible = False
              Width = 49
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'REAL_LEASE_DATE_UNIT_NAME'
              Footers = <>
              Tag = 1419
              Title.Caption = #1054#1090#1095#1077#1090'|'#1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072
              Visible = False
              Width = 49
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'REAL_TOTAL_PRICE'
              Footers = <>
              Tag = 1419
              Title.Caption = #1054#1090#1095#1077#1090'|'#1054#1073#1097#1072' '#1089#1090'-'#1089#1090
              Visible = False
              Width = 49
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'CURRENCY_ABBREV'
              Footers = <>
              Tag = 1419
              Title.Caption = #1054#1090#1095#1077#1090'|'#1042#1072#1083'.'
              Visible = False
              Width = 28
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_DEV_QUANTITY'
              Footers = <>
              Tag = 1112
              Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1056#1072#1073'. '#1050'-'#1074#1086
              Width = 49
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_DEV_ACCOUNT_QUANTITY'
              Footers = <>
              Tag = 1012
              Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1057#1095#1077#1090'. '#1050'-'#1074#1086
              Visible = False
              Width = 49
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_DEV_SINGLE_PRICE'
              Footers = <>
              Tag = 111218
              Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1045#1076'. '#1094#1077#1085#1072
              Width = 49
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_DEV_ACCOUNT_SINGLE_PRICE'
              Footers = <>
              Tag = 101218
              Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1045#1076'. '#1094#1077#1085#1072
              Visible = False
              Width = 49
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_DEV_LEASE_DATE_UNIT_QTY'
              Footers = <>
              Tag = 1219
              Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1050'-'#1074#1086' '#1053#1084'.'#1057#1090'.'
              Visible = False
              Width = 49
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_DEV_TOTAL_PRICE'
              Footers = <>
              Tag = 12
              Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1054#1073#1097#1072' '#1089#1090'-'#1089#1090
              Width = 49
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'INVOICE_NO'
              Footers = <>
              Tag = 13
              Title.Caption = #1060#1072#1082#1090#1091#1088#1072'|'#1053#1086#1084#1077#1088
              Visible = False
              Width = 83
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'INVOICE_DATE'
              Footers = <>
              Tag = 13
              Title.Caption = #1060#1072#1082#1090#1091#1088#1072'|'#1044#1072#1090#1072
              Visible = False
              Width = 65
            end
            item
              Alignment = taCenter
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'HAS_FIN_ORDER'
              Footers = <>
              Title.Caption = #1054#1055#1060
              Title.Orientation = tohVertical
              Width = 13
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DAMAGES_STATE_CODE'
              Footers = <>
              Title.Caption = #1053#1054
              Title.Orientation = tohVertical
              Width = 13
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object Panel1: TPanel
          Left = 0
          Top = 478
          Width = 979
          Height = 34
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          object lblSumTotalPrice: TLabel
            Left = 559
            Top = 8
            Width = 86
            Height = 13
            Caption = #1057#1091#1084#1072' '#1054#1073#1097#1072' '#1089#1090'-'#1089#1090
          end
          object lblBaseCurrency: TLabel
            Left = 750
            Top = 7
            Width = 82
            Height = 13
            Caption = '%BaseCurrency%'
          end
          object btnEditDelivery: TBitBtn
            Left = 2
            Top = 5
            Width = 113
            Height = 25
            Action = actEditDelivery
            Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
              0000FF00FF000000000000000000000000000000000000000000FFFFFF00FFFF
              FF0000000000FFFFFF000000000000000000FFFFFF0000000000FFFF00000000
              00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
              000000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000FFFF
              FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF00000000
              0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
              0000FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFF00000000
              000000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
              00000000000000FFFF0000000000FFFFFF00FFFFFF0000000000FFFF00000000
              0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
              FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
              000000FFFF00FFFFFF0000000000000000000000000000000000000000000000
              000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
              00000000000000FFFF00FFFFFF0000FFFF00000000000000000000FFFF000000
              0000FFFFFF00FFFFFF000000000000000000FFFFFF0000000000FF00FF00FF00
              FF00FF00FF000000000000000000000000000000000000FFFF0000000000FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF000000000000FFFF0000000000FFFFFF00FFFF
              FF00FFFFFF00FFFFFF0000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF000000000000FFFF0000000000FFFFFF00FFFFFF000000
              000000000000FFFFFF0000000000FFFFFF00FFFFFF0000000000FF00FF00FF00
              FF00FF00FF000000000000FFFF000000000000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
              FF00000000000000FF0000000000FF00FF0000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000FF00FF00FF00FF000000000000000000000000000000
              0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
            TabOrder = 0
          end
          object btnDeliveriesExceptEvents: TBitBtn
            Left = 127
            Top = 5
            Width = 150
            Height = 25
            Action = actDeliveriesExceptEvents
            Caption = #1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103'...'
            TabOrder = 1
          end
          object pnlSumTotalPriceBC: TPanel
            Left = 648
            Top = 0
            Width = 97
            Height = 25
            BevelOuter = bvNone
            TabOrder = 2
            object edtSumTotalPrice: TDBEdit
              Left = 4
              Top = 4
              Width = 93
              Height = 21
              Color = 15258325
              DataField = '_SUM_TOTAL_PRICE_BC'
              DataSource = dsDeliveries
              TabOrder = 0
            end
          end
          object pnlSumRealTotalPriceBC: TPanel
            Left = 648
            Top = 0
            Width = 97
            Height = 25
            BevelOuter = bvNone
            TabOrder = 3
            object edtSumRealTotalPriceBC: TDBEdit
              Left = 4
              Top = 4
              Width = 93
              Height = 21
              Color = 15258325
              DataField = '_SUM_REAL_TOTAL_PRICE_BC'
              DataSource = dsDeliveries
              TabOrder = 0
            end
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 979
          Height = 25
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 3
          object lblDeliveryDateInterval2: TLabel
            Left = 376
            Top = 8
            Width = 40
            Height = 13
            Caption = #1042#1088#1084#1048#1085#1090
          end
          object lblDeliveryDealType2: TLabel
            Left = 528
            Top = 8
            Width = 47
            Height = 13
            Caption = #1058#1080#1087' '#1054#1055#1044
          end
          object lblDateUnit2: TLabel
            Left = 592
            Top = 8
            Width = 59
            Height = 13
            Caption = #1053#1084'. '#1057#1090#1098#1087#1082#1072
          end
        end
      end
    end
    object pnlToggles: TPanel
      Left = 944
      Top = 8
      Width = 49
      Height = 24
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 0
      object tlbToggles: TToolBar
        Left = 25
        Top = 0
        Width = 24
        Height = 24
        Align = alRight
        AutoSize = True
        ButtonHeight = 24
        Caption = 'tlbToggles'
        TabOrder = 0
        object btnToggleProductDisplay: TSpeedButton
          Tag = 4
          Left = 0
          Top = 0
          Width = 24
          Height = 24
          AllowAllUp = True
          GroupIndex = 2
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FF00000000000000FF000000FF000000FF000000FF000000
            FF00000000000000FF0000FFFF0000FFFF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FF00000000000000FF000000FF000000FF000000FF000000
            FF00000000000000FF0000FFFF008484840000FFFF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FF0000000000000000000000000000000000000000000000
            0000000000000000FF0000FFFF00848484008484840000FFFF00FF00FF00FF00
            FF00FF00FF000000FF000000FF00000000000000FF000000FF000000FF000000
            00000000FF000000FF0000FFFF00848484008484840000FFFF00FF00FF00FF00
            FF00FF00FF000000FF000000FF0000000000000000000000FF00000000000000
            00000000FF000000FF0000FFFF00848484008484840000FFFF00FF00FF00FF00
            FF00FF00FF000000FF000000FF000000FF000000000000000000000000000000
            FF000000FF000000FF0000FFFF008484840000FFFF0000FFFF00FF00FF00FF00
            FF00FF00FF000000FF000000FF000000FF000000FF00000000000000FF000000
            FF000000FF000000FF0000FFFF00848484008484840000FFFF00FF00FF00FF00
            FF00FF00FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF0000FFFF0000FFFF008484840000FFFF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF000000FF00
            0000FF000000FF000000FF00000000FFFF0000FFFF0000FFFF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF00
            0000FF000000FF000000FF000000FF00000000FFFF0000FFFF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF00
            0000FF000000FF000000FF000000FF000000FF00000000FFFF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          ParentShowHint = False
          ShowHint = True
          Transparent = False
        end
      end
    end
  end
  inherited alActions: TActionList
    Left = 232
    Top = 456
    inherited actForm: TAction
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1044#1086#1089#1090#1072#1074#1082#1080' %ForOrOf% %Provision%'
    end
    object actGroupDeliveriesFilter: TAction
      ImageIndex = 3
      OnExecute = actGroupDeliveriesFilterExecute
      OnUpdate = actGroupDeliveriesFilterUpdate
    end
    object actDeliveriesFilter: TAction
      ImageIndex = 3
      OnExecute = actDeliveriesFilterExecute
      OnUpdate = actDeliveriesFilterUpdate
    end
    object actEditDeliveryFromGroup: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
      ImageIndex = 6
      OnExecute = actEditDeliveryFromGroupExecute
      OnUpdate = actEditDeliveryFromGroupUpdate
    end
    object actEditDelivery: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
      ImageIndex = 6
      OnExecute = actEditDeliveryExecute
      OnUpdate = actEditDeliveryUpdate
    end
    object actPrintDeliveryGroups: TAction
      Caption = #1055#1077#1095#1072#1090'...'
      ImageIndex = 2
      OnExecute = actPrintDeliveryGroupsExecute
      OnUpdate = actPrintDeliveryGroupsUpdate
    end
    object actPrintDeliveries: TAction
      Caption = #1055#1077#1095#1072#1090'...'
      ImageIndex = 2
      OnExecute = actPrintDeliveriesExecute
      OnUpdate = actPrintDeliveriesUpdate
    end
    object actToggleProductDisplay: TAction
      GroupIndex = 2
      ImageIndex = 24
    end
    object actDeleteGroup: TAction
      Caption = #1048#1079#1090#1088#1080#1074#1072#1085#1077' '#1085#1072' '#1043#1088#1054#1055#1044'...'
      ImageIndex = 5
      OnExecute = actDeleteGroupExecute
    end
    object actExcelExportGroupDeliveriesMaster: TAction
      Hint = #1045#1082#1089#1087#1086#1088#1090' '#1082#1098#1084' Excel'
      ImageIndex = 83
      OnExecute = actExcelExportGroupDeliveriesMasterExecute
      OnUpdate = actExcelExportGroupDeliveriesMasterUpdate
    end
    object actExcelExportDeliveries: TAction
      Hint = #1045#1082#1089#1087#1086#1088#1090' '#1082#1098#1084' Excel'
      ImageIndex = 83
      OnExecute = actExcelExportDeliveriesExecute
      OnUpdate = actExcelExportDeliveriesUpdate
    end
    object actGroupDeliveriesExceptEvents: TAction
      Caption = #1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103'...'
      Hint = #1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103
      OnExecute = actGroupDeliveriesExceptEventsExecute
      OnUpdate = actGroupDeliveriesExceptEventsUpdate
    end
    object actDeliveriesExceptEvents: TAction
      Caption = #1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103'...'
      Hint = #1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103
      OnExecute = actDeliveriesExceptEventsExecute
      OnUpdate = actDeliveriesExceptEventsUpdate
    end
  end
  inherited dsData: TDataSource
    Left = 200
    Top = 456
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 168
    Top = 456
  end
  object cdsDeliveries: TAbmesClientDataSet
    Aggregates = <>
    AggregatesActive = True
    ConnectionBroker = dmMain.conDeliveries
    FieldDefs = <
      item
        Name = 'DCD_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DCD_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DELIVERY_PROJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DELIVERY_IDENTIFICATION'
        DataType = ftWideString
        Size = 122
      end
      item
        Name = 'STATUS_CODE'
        DataType = ftFloat
      end
      item
        Name = 'VENDOR_COMPANY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'VENDOR_SHORT_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'DELIVERY_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'DAYS_LEFT'
        DataType = ftFloat
      end
      item
        Name = 'WORK_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'ACCOUNT_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRIORITY_NO'
        DataType = ftFloat
      end
      item
        Name = 'PRIORITY_COLOR'
        DataType = ftFloat
      end
      item
        Name = 'PRIORITY_BACKGROUND_COLOR'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'PRODUCT_DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_HAS_DOC'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_ORIGIN_ABBREV_AND_NAME'
        DataType = ftWideString
        Size = 205
      end
      item
        Name = 'WORK_MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'ACCOUNT_MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'DCD_PSD_STORE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'ACCOUNT_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'CURRENCY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CURRENCY_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'MAX_STORE_DEAL_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'SD_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'SD_ACCOUNT_QUANTITY'
        DataType = ftFloat
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
        Name = 'HAS_DOC'
        DataType = ftFloat
      end
      item
        Name = 'SINGLE_PRICE_DEV_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'ACC_SINGLE_PRICE_DEV_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'VENDOR_PRODUCT_NAME'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'REAL_WORK_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'REAL_ACCOUNT_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'PLAN_LEASE_DATE_UNIT_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'REAL_LEASE_DATE_UNIT_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'DAMAGES_STATE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DELIVERY_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DELIVERY_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_PRICE_BC'
        DataType = ftFloat
      end
      item
        Name = 'HAS_FIN_ORDER'
        DataType = ftFloat
      end
      item
        Name = 'RECEIVE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'RETURN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'RECEIVE_DATE_RSV'
        DataType = ftFloat
      end
      item
        Name = 'RETURN_DATE_RSV'
        DataType = ftFloat
      end
      item
        Name = 'PLAN_LEASE_DATEY_UNIT_QTY'
        DataType = ftFloat
      end
      item
        Name = 'REAL_LEASE_DATE_UNIT_QTY'
        DataType = ftFloat
      end
      item
        Name = 'REAL_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'REAL_ACCOUNT_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'REAL_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'INVOICE_NO'
        DataType = ftFloat
      end
      item
        Name = 'INVOICE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'REAL_TOTAL_PRICE_BC'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_DEAL_TYPE_CODE'
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
        Value = '5'
      end
      item
        DataType = ftFloat
        Name = 'COMMON_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMMON_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_CHOSEN_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COUNTRY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COUNTRY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_VENDOR_OFFICE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_VENDOR_OFFICE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_TRANSPORT_FROM_VENDOR_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_TRANSPORT_FROM_VENDOR_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_TRANSPORT_FROM_VENDOR_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_TRANSPORT_FROM_VENDOR_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DELIVERY_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DELIVERY_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DELIVERY_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DELIVERY_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_DELIVERY_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_DELIVERY_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_DELIVERY_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_DELIVERY_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_DATE_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_DATE_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_DATE_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_SALE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'HAS_SALE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'HAS_SALE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_SALE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'DAMAGES_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DAMAGES_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DAMAGES_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
      end>
    ProviderName = 'prvDeliveries'
    StoreDefs = True
    BeforeOpen = cdsDeliveriesBeforeOpen
    AfterOpen = cdsDeliveriesAfterOpen
    OnCalcFields = cdsDeliveriesCalcFields
    Left = 416
    Top = 144
    object cdsDeliveriesDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
    end
    object cdsDeliveriesDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
    end
    object cdsDeliveriesDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
    end
    object cdsDeliveriesDELIVERY_IDENTIFICATION: TAbmesWideStringField
      FieldName = 'DELIVERY_IDENTIFICATION'
      Size = 122
    end
    object cdsDeliveriesSTATUS_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'STATUS_CODE'
      OnGetText = cdsDeliveriesSTATUS_CODEGetText
    end
    object cdsDeliveriesVENDOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'VENDOR_COMPANY_CODE'
    end
    object cdsDeliveriesVENDOR_SHORT_NAME: TAbmesWideStringField
      FieldName = 'VENDOR_SHORT_NAME'
    end
    object cdsDeliveriesDELIVERY_DATE: TAbmesSQLTimeStampField
      FieldName = 'DELIVERY_DATE'
    end
    object cdsDeliveriesDAYS_LEFT: TAbmesFloatField
      FieldName = 'DAYS_LEFT'
    end
    object cdsDeliveriesWORK_QUANTITY: TAbmesFloatField
      FieldName = 'WORK_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsDeliveriesACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsDeliveriesPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsDeliveriesPRIORITY_NO: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'PRIORITY_NO'
    end
    object cdsDeliveriesPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object cdsDeliveriesPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
    object cdsDeliveriesPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsDeliveriesPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object cdsDeliveriesPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object cdsDeliveriesPRODUCT_HAS_DOC: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC'
    end
    object cdsDeliveriesPRODUCT_ORIGIN_ABBREV_AND_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_ORIGIN_ABBREV_AND_NAME'
      Size = 205
    end
    object cdsDeliveriesWORK_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'WORK_MEASURE_ABBREV'
      Size = 5
    end
    object cdsDeliveriesACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsDeliveriesDCD_PSD_STORE_CODE: TAbmesFloatField
      FieldName = 'DCD_PSD_STORE_CODE'
    end
    object cdsDeliveriesTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsDeliveriesSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsDeliveriesACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_SINGLE_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsDeliveriesCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object cdsDeliveriesCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      Size = 5
    end
    object cdsDeliveriesMAX_STORE_DEAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'MAX_STORE_DEAL_DATE'
    end
    object cdsDeliveriesSD_QUANTITY: TAbmesFloatField
      FieldName = 'SD_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsDeliveriesSD_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'SD_ACCOUNT_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsDeliveriesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDeliveriesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsDeliveriesHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
    end
    object cdsDeliveriesSINGLE_PRICE_DEV_PERCENT: TAbmesFloatField
      FieldName = 'SINGLE_PRICE_DEV_PERCENT'
      OnGetText = cdsDeliveriesSINGLE_PRICE_DEV_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsDeliveriesACC_SINGLE_PRICE_DEV_PERCENT: TAbmesFloatField
      FieldName = 'ACC_SINGLE_PRICE_DEV_PERCENT'
      OnGetText = cdsDeliveriesACC_SINGLE_PRICE_DEV_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsDeliveriesVENDOR_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'VENDOR_PRODUCT_NAME'
      Size = 50
    end
    object cdsDeliveriesREAL_WORK_QUANTITY: TAbmesFloatField
      FieldName = 'REAL_WORK_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsDeliveriesREAL_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'REAL_ACCOUNT_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsDeliveriesPLAN_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'PLAN_LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object cdsDeliveriesREAL_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'REAL_LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object cdsDeliveriesDAMAGES_STATE_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'DAMAGES_STATE_CODE'
      OnGetText = cdsDeliveriesDAMAGES_STATE_CODEGetText
    end
    object cdsDeliveriesDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_OBJECT_BRANCH_CODE'
    end
    object cdsDeliveriesDELIVERY_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_OBJECT_CODE'
    end
    object cdsDeliveriesTOTAL_PRICE_BC: TAbmesFloatField
      FieldName = 'TOTAL_PRICE_BC'
      DisplayFormat = ',0'
    end
    object cdsDeliveriesHAS_FIN_ORDER: TAbmesFloatField
      FieldName = 'HAS_FIN_ORDER'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsDeliveriesRECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_DATE'
    end
    object cdsDeliveriesRETURN_DATE: TAbmesSQLTimeStampField
      FieldName = 'RETURN_DATE'
    end
    object cdsDeliveriesRECEIVE_DATE_RSV: TAbmesFloatField
      FieldName = 'RECEIVE_DATE_RSV'
    end
    object cdsDeliveriesRETURN_DATE_RSV: TAbmesFloatField
      FieldName = 'RETURN_DATE_RSV'
    end
    object cdsDeliveriesPLAN_LEASE_DATEY_UNIT_QTY: TAbmesFloatField
      FieldName = 'PLAN_LEASE_DATEY_UNIT_QTY'
    end
    object cdsDeliveriesREAL_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'REAL_LEASE_DATE_UNIT_QTY'
    end
    object cdsDeliveriesREAL_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'REAL_SINGLE_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsDeliveriesREAL_ACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'REAL_ACCOUNT_SINGLE_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsDeliveriesREAL_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'REAL_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsDeliveries_DEV_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DEV_QUANTITY'
      DisplayFormat = ',0.##'
      Calculated = True
    end
    object cdsDeliveries_DEV_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DEV_ACCOUNT_QUANTITY'
      DisplayFormat = ',0.##'
      Calculated = True
    end
    object cdsDeliveries_DEV_SINGLE_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DEV_SINGLE_PRICE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsDeliveries_DEV_ACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DEV_ACCOUNT_SINGLE_PRICE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsDeliveries_DEV_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DEV_LEASE_DATE_UNIT_QTY'
      Calculated = True
    end
    object cdsDeliveries_DEV_TOTAL_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DEV_TOTAL_PRICE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsDeliveriesINVOICE_NO: TAbmesFloatField
      FieldName = 'INVOICE_NO'
    end
    object cdsDeliveriesINVOICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'INVOICE_DATE'
    end
    object cdsDeliveriesREAL_TOTAL_PRICE_BC: TAbmesFloatField
      FieldName = 'REAL_TOTAL_PRICE_BC'
    end
    object cdsDeliveries_SUM_TOTAL_PRICE_BC: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_TOTAL_PRICE_BC'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(TOTAL_PRICE_BC)'
    end
    object cdsDeliveries_SUM_REAL_TOTAL_PRICE_BC: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_REAL_TOTAL_PRICE_BC'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(REAL_TOTAL_PRICE_BC)'
    end
  end
  object dsDeliveries: TDataSource
    DataSet = cdsDeliveries
    Left = 448
    Top = 144
  end
  object cdsGroupDeliveriesMaster: TAbmesClientDataSet
    Aggregates = <>
    AggregatesActive = True
    ConnectionBroker = dmMain.conDeliveries
    FieldDefs = <
      item
        Name = 'STATUS_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DELIVERY_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'VENDOR_COMPANY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'VENDOR_STATUS_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'VENDOR_COMPANY_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'DELIVERY_VENDOR_OFFICE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'VENDOR_OFFICE_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'IS_TRANSPORT_FROM_VENDOR'
        DataType = ftFloat
      end
      item
        Name = 'CUSTOMHOUSE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SHIPMENT_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'SD_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'VENDOR_DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'VENDOR_DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'VENDOR_HAS_DOCUMENTATION'
        DataType = ftFloat
      end
      item
        Name = 'GROUP_BY_RECEIVE_DATE'
        DataType = ftFloat
      end
      item
        Name = 'DAMAGES_STATE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_CLASS_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MIN_TRANSPORT_MEASURE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MAX_TRANSPORT_MEASURE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'TRANSPORT_MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'PLAN_TRANSPORT_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'OTCH_TRANSPORT_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'MIN_DAYS_LEFT'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'GROUP_BY_RECEIVE_DATE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'GROUP_BY_RECEIVE_DATE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'GROUP_BY_RECEIVE_DATE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'GROUP_BY_RECEIVE_DATE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DELIVERY_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DELIVERY_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DELIVERY_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DELIVERY_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_DAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_DAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_DAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_DAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_DATE_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_DATE_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMMON_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMMON_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PSD_STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PSD_STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_CHOSEN_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COUNTRY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COUNTRY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_VENDOR_OFFICE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_VENDOR_OFFICE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CUSTOMHOUSE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CUSTOMHOUSE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_BRANCH_CODE'
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
        Value = '5'
      end
      item
        DataType = ftFloat
        Name = 'DAMAGES_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DAMAGES_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DAMAGES_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
      end>
    ProviderName = 'prvGroupDeliveriesMaster'
    StoreDefs = True
    BeforeOpen = cdsGroupDeliveriesMasterBeforeOpen
    AfterOpen = cdsGroupDeliveriesMasterAfterOpen
    BeforeClose = cdsGroupDeliveriesMasterBeforeClose
    AfterDelete = cdsGroupDeliveriesMasterAfterDelete
    AfterScroll = cdsGroupDeliveriesMasterAfterScroll
    OnCalcFields = cdsGroupDeliveriesMasterCalcFields
    Left = 16
    Top = 160
    object cdsGroupDeliveriesMasterSTATUS_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'STATUS_CODE'
      OnGetText = cdsGroupDeliveriesMasterSTATUS_CODEGetText
    end
    object cdsGroupDeliveriesMasterDELIVERY_DATE: TAbmesSQLTimeStampField
      FieldName = 'DELIVERY_DATE'
    end
    object cdsGroupDeliveriesMasterVENDOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'VENDOR_COMPANY_CODE'
    end
    object cdsGroupDeliveriesMasterVENDOR_STATUS_NAME: TAbmesWideStringField
      FieldName = 'VENDOR_STATUS_NAME'
      Size = 100
    end
    object cdsGroupDeliveriesMasterVENDOR_COMPANY_NAME: TAbmesWideStringField
      FieldName = 'VENDOR_COMPANY_NAME'
    end
    object cdsGroupDeliveriesMasterDELIVERY_VENDOR_OFFICE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_VENDOR_OFFICE_CODE'
    end
    object cdsGroupDeliveriesMasterVENDOR_OFFICE_NAME: TAbmesWideStringField
      FieldName = 'VENDOR_OFFICE_NAME'
      Size = 50
    end
    object cdsGroupDeliveriesMasterIS_TRANSPORT_FROM_VENDOR: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'IS_TRANSPORT_FROM_VENDOR'
      DisplayBoolValues = #1048#1055';'#1044#1086#1089#1090#1072#1074#1095#1080#1082
      FieldValueType = fvtBoolean
    end
    object cdsGroupDeliveriesMasterCUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'CUSTOMHOUSE_CODE'
    end
    object cdsGroupDeliveriesMasterSHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_TYPE_CODE'
    end
    object cdsGroupDeliveriesMasterTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGroupDeliveriesMasterSD_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'SD_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGroupDeliveriesMasterVENDOR_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'VENDOR_DOC_BRANCH_CODE'
    end
    object cdsGroupDeliveriesMasterVENDOR_DOC_CODE: TAbmesFloatField
      FieldName = 'VENDOR_DOC_CODE'
    end
    object cdsGroupDeliveriesMasterVENDOR_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'VENDOR_HAS_DOCUMENTATION'
    end
    object cdsGroupDeliveriesMasterGROUP_BY_RECEIVE_DATE: TAbmesFloatField
      FieldName = 'GROUP_BY_RECEIVE_DATE'
    end
    object cdsGroupDeliveriesMasterREPORT_TAG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'REPORT_TAG'
      Calculated = True
    end
    object cdsGroupDeliveriesMasterDAMAGES_STATE_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'DAMAGES_STATE_CODE'
      OnGetText = cdsGroupDeliveriesMasterDAMAGES_STATE_CODEGetText
    end
    object cdsGroupDeliveriesMasterPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
    end
    object cdsGroupDeliveriesMasterMIN_TRANSPORT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'MIN_TRANSPORT_MEASURE_CODE'
    end
    object cdsGroupDeliveriesMasterMAX_TRANSPORT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'MAX_TRANSPORT_MEASURE_CODE'
    end
    object cdsGroupDeliveriesMasterTRANSPORT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'TRANSPORT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsGroupDeliveriesMaster_PLAN_TRANSPORT_QUANTITY: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_PLAN_TRANSPORT_QUANTITY'
      Size = 50
      Calculated = True
    end
    object cdsGroupDeliveriesMaster_OTCH_TRANSPORT_QUANTITY: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_OTCH_TRANSPORT_QUANTITY'
      Size = 50
      Calculated = True
    end
    object cdsGroupDeliveriesMaster_DEV_TRANSPORT_QUANTITY: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_DEV_TRANSPORT_QUANTITY'
      Size = 50
      Calculated = True
    end
    object cdsGroupDeliveriesMaster_TRANSPORT_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_TRANSPORT_MEASURE_ABBREV'
      Size = 5
      Calculated = True
    end
    object cdsGroupDeliveriesMasterPLAN_TRANSPORT_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_TRANSPORT_QUANTITY'
    end
    object cdsGroupDeliveriesMasterOTCH_TRANSPORT_QUANTITY: TAbmesFloatField
      FieldName = 'OTCH_TRANSPORT_QUANTITY'
    end
    object cdsGroupDeliveriesMaster_DEV_TOTAL_PRICE: TAbmesFloatField
      FieldKind = fkInternalCalc
      FieldName = '_DEV_TOTAL_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsGroupDeliveriesMasterMIN_DAYS_LEFT: TAbmesFloatField
      FieldName = 'MIN_DAYS_LEFT'
    end
    object cdsGroupDeliveriesMaster_SUM_TOTAL_PRICE: TAggregateField
      FieldName = '_SUM_TOTAL_PRICE'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(TOTAL_PRICE)'
    end
    object cdsGroupDeliveriesMaster_SUM_SD_TOTAL_PRICE: TAggregateField
      FieldName = '_SUM_SD_TOTAL_PRICE'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(SD_TOTAL_PRICE)'
    end
    object cdsGroupDeliveriesMaster_SUM_DEV_TOTAL_PRICE: TAggregateField
      FieldName = '_SUM_DEV_TOTAL_PRICE'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(_DEV_TOTAL_PRICE)'
    end
  end
  object dsGroupDeliveriesMaster: TDataSource
    DataSet = cdsGroupDeliveriesMaster
    Left = 48
    Top = 160
  end
  object cdsGroupDeliveriesDetail: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDeliveries
    Filter = '(STATUS_CODE < 7)'
    Params = <
      item
        DataType = ftFloat
        Name = 'GROUP_BY_RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'GROUP_BY_RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DELIVERY_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VENDOR_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_VENDOR_OFFICE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_VENDOR_OFFICE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_TRANSPORT_FROM_VENDOR'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CUSTOMHOUSE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CUSTOMHOUSE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'BEGIN_DELIVERY_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'BEGIN_DELIVERY_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'END_DELIVERY_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'END_DELIVERY_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_DAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_DAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_DAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_DAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_DATE_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_DATE_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMMON_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMMON_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PSD_STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PSD_STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COUNTRY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COUNTRY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptUnknown
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
      end>
    ProviderName = 'prvGroupDeliveriesDetail'
    BeforeOpen = cdsGroupDeliveriesDetailBeforeOpen
    AfterOpen = cdsGroupDeliveriesDetailAfterOpen
    OnCalcFields = cdsGroupDeliveriesDetailCalcFields
    Left = 40
    Top = 408
    object cdsGroupDeliveriesDetailSTATUS_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'STATUS_CODE'
      OnGetText = cdsGroupDeliveriesDetailSTATUS_CODEGetText
    end
    object cdsGroupDeliveriesDetailDELIVERY_ID: TAbmesWideStringField
      FieldName = 'DELIVERY_ID'
      Size = 122
    end
    object cdsGroupDeliveriesDetailPRIORITY_NO: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'PRIORITY_NO'
    end
    object cdsGroupDeliveriesDetailDAYS_LEFT: TAbmesFloatField
      FieldName = 'DAYS_LEFT'
    end
    object cdsGroupDeliveriesDetailDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DEAL_TYPE_CODE'
    end
    object cdsGroupDeliveriesDetailDELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'DELIVERY_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object cdsGroupDeliveriesDetailDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsGroupDeliveriesDetailDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsGroupDeliveriesDetailHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
    end
    object cdsGroupDeliveriesDetailPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsGroupDeliveriesDetailPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object cdsGroupDeliveriesDetailPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object cdsGroupDeliveriesDetailPRODUCT_HAS_DOC: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC'
    end
    object cdsGroupDeliveriesDetailPRODUCT_ORIGIN_ABBREV_AND_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_ORIGIN_ABBREV_AND_NAME'
      Size = 205
    end
    object cdsGroupDeliveriesDetailWORK_QUANTITY: TAbmesFloatField
      FieldName = 'WORK_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsGroupDeliveriesDetailMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object cdsGroupDeliveriesDetailMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsGroupDeliveriesDetailACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsGroupDeliveriesDetailACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object cdsGroupDeliveriesDetailACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsGroupDeliveriesDetailTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGroupDeliveriesDetailCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      Size = 5
    end
    object cdsGroupDeliveriesDetailPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsGroupDeliveriesDetailDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
    end
    object cdsGroupDeliveriesDetailDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
    end
    object cdsGroupDeliveriesDetailDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
    end
    object cdsGroupDeliveriesDetailPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object cdsGroupDeliveriesDetailPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
    object cdsGroupDeliveriesDetailVENDOR_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'VENDOR_PRODUCT_NAME'
      Size = 50
    end
    object cdsGroupDeliveriesDetailREAL_WORK_QUANTITY: TAbmesFloatField
      FieldName = 'REAL_WORK_QUANTITY'
    end
    object cdsGroupDeliveriesDetailREAL_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'REAL_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGroupDeliveriesDetailREAL_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'REAL_ACCOUNT_QUANTITY'
    end
    object cdsGroupDeliveriesDetailPLAN_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'PLAN_LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object cdsGroupDeliveriesDetailREAL_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'REAL_LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object cdsGroupDeliveriesDetailDELIVERY_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = 'DELIVERY_DATE'
      Calculated = True
    end
    object cdsGroupDeliveriesDetailDAMAGES_STATE_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'DAMAGES_STATE_CODE'
      OnGetText = cdsGroupDeliveriesDetailDAMAGES_STATE_CODEGetText
    end
    object cdsGroupDeliveriesDetailDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_OBJECT_BRANCH_CODE'
    end
    object cdsGroupDeliveriesDetailDELIVERY_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_OBJECT_CODE'
    end
    object cdsGroupDeliveriesDetailTRANSPORT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'TRANSPORT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsGroupDeliveriesDetailTRANSPORT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'TRANSPORT_MEASURE_COEF'
    end
    object cdsGroupDeliveriesDetail_PLAN_TRANSPORT_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PLAN_TRANSPORT_QUANTITY'
      DisplayFormat = ',0.##'
      Calculated = True
    end
    object cdsGroupDeliveriesDetail_REAL_TRANSPORT_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REAL_TRANSPORT_QUANTITY'
      DisplayFormat = ',0.##'
      Calculated = True
    end
    object cdsGroupDeliveriesDetail_DEV_WORK_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DEV_WORK_QUANTITY'
      DisplayFormat = ',0.##'
      Calculated = True
    end
    object cdsGroupDeliveriesDetail_DEV_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DEV_ACCOUNT_QUANTITY'
      DisplayFormat = ',0.##'
      Calculated = True
    end
    object cdsGroupDeliveriesDetail_DEV_TOTAL_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DEV_TOTAL_PRICE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGroupDeliveriesDetailRECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_DATE'
    end
    object cdsGroupDeliveriesDetailRECEIVE_DATE_RSV: TAbmesFloatField
      FieldName = 'RECEIVE_DATE_RSV'
    end
    object cdsGroupDeliveriesDetailRETURN_DATE: TAbmesSQLTimeStampField
      FieldName = 'RETURN_DATE'
    end
    object cdsGroupDeliveriesDetailRETURN_DATE_RSV: TAbmesFloatField
      FieldName = 'RETURN_DATE_RSV'
    end
    object cdsGroupDeliveriesDetailIS_PROFORM_INVOICE: TAbmesFloatField
      FieldName = 'IS_PROFORM_INVOICE'
      OnGetText = cdsGroupDeliveriesDetailIS_PROFORM_INVOICEGetText
      FieldValueType = fvtBoolean
    end
    object cdsGroupDeliveriesDetailPLAN_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'PLAN_LEASE_DATE_UNIT_QTY'
    end
    object cdsGroupDeliveriesDetailREAL_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'REAL_LEASE_DATE_UNIT_QTY'
      DisplayFormat = ',0.##'
    end
    object cdsGroupDeliveriesDetail_DEV_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DEV_LEASE_DATE_UNIT_QTY'
      Calculated = True
    end
    object cdsGroupDeliveriesDetail_DEV_ACC_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DEV_ACC_LEASE_DATE_UNIT_QTY'
      DisplayFormat = ',0.##'
      Calculated = True
    end
  end
  object dsGroupDeliveriesDetail: TDataSource
    DataSet = cdsGroupDeliveriesDetail
    Left = 72
    Top = 408
  end
  object tmrMaster: TTimer
    Interval = 400
    OnTimer = tmrMasterTimer
    Left = 8
    Top = 408
  end
  object pdsGroupDeliveries: TParamDataSet
    OnCalcFields = pdsGroupDeliveriesCalcFields
    DataSet = cdsGroupDeliveriesMaster
    Left = 16
    Top = 192
    object pdsGroupDeliveriesCURRENT_FILTER_VARIANT_CODE: TAbmesFloatField
      FieldName = 'CURRENT_FILTER_VARIANT_CODE'
      ProviderFlags = []
      FieldValueType = fvtInteger
    end
    object pdsGroupDeliveriesMIN_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' - '#1054#1090
      FieldName = 'MIN_STATUS_CODE'
    end
    object pdsGroupDeliveriesMAX_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' - '#1044#1086
      FieldName = 'MAX_STATUS_CODE'
    end
    object pdsGroupDeliveriesBEGIN_DELIVERY_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1072' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_DELIVERY_DATE'
    end
    object pdsGroupDeliveriesEND_DELIVERY_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1072' - '#1050#1088#1072#1081
      FieldName = 'END_DELIVERY_DATE'
    end
    object pdsGroupDeliveriesBEGIN_DAYS_LEFT: TAbmesFloatField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1072' - '#1056#1077#1079#1077#1088#1074' - '#1054#1090
      FieldName = 'BEGIN_DAYS_LEFT'
    end
    object pdsGroupDeliveriesEND_DAYS_LEFT: TAbmesFloatField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1072' - '#1056#1077#1079#1077#1088#1074' - '#1044#1086
      FieldName = 'END_DAYS_LEFT'
    end
    object pdsGroupDeliveriesDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1080#1087' '#1054#1055#1044
      FieldName = 'DELIVERY_DEAL_TYPE_CODE'
    end
    object pdsGroupDeliveriesLEASE_DATE_UNIT_CODE: TAbmesFloatField
      DisplayLabel = #1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072
      FieldName = 'LEASE_DATE_UNIT_CODE'
    end
    object pdsGroupDeliveriesGROUP_BY_RECEIVE_DATE: TAbmesFloatField
      Alignment = taLeftJustify
      DisplayLabel = #1043#1088#1091#1087#1080#1088#1072#1085#1077' '#1087#1086
      FieldName = 'GROUP_BY_RECEIVE_DATE'
      DisplayBoolValues = #1042#1088#1098#1097#1072#1085#1077' '#1085#1072' '#1053#1072#1077#1090#1080' '#1086#1090' '#1048#1055' '#1059#1054#1073';'#1055#1088#1080#1077#1084#1072#1085#1077' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1103#1085#1080' '#1059#1054#1073
      FieldValueType = fvtBoolean
    end
    object pdsGroupDeliveriesDAMAGES_STATE_CODE: TAbmesFloatField
      DisplayLabel = #1053#1054' - '#1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103
      FieldName = 'DAMAGES_STATE_CODE'
    end
    object pdsGroupDeliveriesCHOSEN_PRODUCTS: TAbmesWideStringField
      DisplayLabel = '%ProductClassName%'
      FieldName = 'CHOSEN_PRODUCTS'
      Size = 4000
    end
    object pdsGroupDeliveriesCHOSEN_COMPANIES: TAbmesWideStringField
      DisplayLabel = #1044#1086#1089#1090#1072#1074#1095#1080#1082
      FieldName = 'CHOSEN_COMPANIES'
      Size = 4000
    end
    object pdsGroupDeliveriesDELIVERY_VENDOR_OFFICE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1095#1080#1082' '#1079#1072' '#1045#1082#1089#1087'.'
      FieldName = 'DELIVERY_VENDOR_OFFICE_CODE'
    end
    object pdsGroupDeliveriesCOUNTRY_CODE: TAbmesFloatField
      DisplayLabel = #1044#1098#1088#1078#1072#1074#1072
      FieldName = 'COUNTRY_CODE'
    end
    object pdsGroupDeliveriesCUSTOMHOUSE_CODE: TAbmesFloatField
      DisplayLabel = #1052#1080#1090#1085#1080#1094#1072
      FieldName = 'CUSTOMHOUSE_CODE'
    end
    object pdsGroupDeliveriesSHIPMENT_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1098#1088#1075#1086#1074#1089#1082#1080' '#1082#1086#1076
      FieldName = 'SHIPMENT_TYPE_CODE'
    end
    object pdsGroupDeliveriesBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1043#1083'.'
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
    end
    object pdsGroupDeliveriesBUDGET_ORDER_CODE: TAbmesFloatField
      DisplayLabel = #1048#1041#1057' No'
      FieldName = 'BUDGET_ORDER_CODE'
    end
    object pdsGroupDeliveriesBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      DisplayLabel = #1051#1048#1041#1057' No'
      FieldName = 'BUDGET_ORDER_ITEM_CODE'
    end
    object pdsGroupDeliveriesBOI_ORDER_CODE: TAbmesFloatField
      DisplayLabel = #1054#1051#1048#1041#1057' No'
      FieldName = 'BOI_ORDER_CODE'
    end
    object pdsGroupDeliveries_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_LEASE_DATE_UNIT_NAME'
      LookupDataSet = cdsDateUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'THE_DATE_UNIT_NAME'
      KeyFields = 'LEASE_DATE_UNIT_CODE'
      Size = 30
      Lookup = True
    end
    object pdsGroupDeliveries_DELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      FieldKind = fkLookup
      FieldName = '_DELIVERY_DEAL_TYPE_ABBREV'
      LookupDataSet = cdsDeliveryDealTypes
      LookupKeyFields = 'BORDER_DEAL_TYPE_CODE'
      LookupResultField = 'BORDER_DEAL_TYPE_ABBREV'
      KeyFields = 'DELIVERY_DEAL_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object pdsGroupDeliveries_BUDGET_ORDER_BRANCH: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_BUDGET_ORDER_BRANCH'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_IDENTIFIER'
      KeyFields = 'BUDGET_ORDER_BRANCH_CODE'
      Size = 50
      Lookup = True
    end
    object pdsGroupDeliveriesREPORT_TITLE: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = 'REPORT_TITLE'
      Size = 100
      Calculated = True
    end
    object pdsGroupDeliveriesPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'PRODUCT_CLASS_CODE'
      Calculated = True
    end
    object pdsGroupDeliveriesPSD_STORE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086' '#1085#1072' '#1048#1055' '#1079#1072' '#1055#1086#1083#1091#1095#1072#1074#1072#1085#1077
      FieldName = 'PSD_STORE_CODE'
    end
    object pdsGroupDeliveriesDCD_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_BRANCH_CODE'
    end
    object pdsGroupDeliveries_DCD_BRANCH: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_DCD_BRANCH'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_IDENTIFIER'
      KeyFields = 'DCD_BRANCH_CODE'
      Size = 50
      Lookup = True
    end
  end
  object pdsDeliveries: TParamDataSet
    OnCalcFields = pdsDeliveriesCalcFields
    DataSet = cdsDeliveries
    Left = 416
    Top = 176
    object pdsDeliveriesCURRENT_FILTER_VARIANT_CODE: TAbmesFloatField
      FieldName = 'CURRENT_FILTER_VARIANT_CODE'
      ProviderFlags = []
      FieldValueType = fvtInteger
    end
    object pdsDeliveries_DELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      FieldKind = fkLookup
      FieldName = '_DELIVERY_DEAL_TYPE_ABBREV'
      LookupDataSet = cdsDeliveryDealTypes
      LookupKeyFields = 'BORDER_DEAL_TYPE_CODE'
      LookupResultField = 'BORDER_DEAL_TYPE_ABBREV'
      KeyFields = 'DELIVERY_DEAL_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object pdsDeliveriesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_CODE'
      ProviderFlags = []
    end
    object pdsDeliveriesMIN_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' - '#1054#1090
      FieldName = 'MIN_STATUS_CODE'
    end
    object pdsDeliveriesMAX_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' - '#1044#1086
      FieldName = 'MAX_STATUS_CODE'
    end
    object pdsDeliveriesDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1080#1087' '#1054#1055#1044
      FieldName = 'DELIVERY_DEAL_TYPE_CODE'
    end
    object pdsDeliveriesDCD_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1043#1083'.'
      FieldName = 'DCD_BRANCH_CODE'
    end
    object pdsDeliveriesDCD_CODE: TAbmesFloatField
      DisplayLabel = #1055#1044#1044' No'
      FieldName = 'DCD_CODE'
    end
    object pdsDeliveriesDELIVERY_PROJECT_CODE: TAbmesFloatField
      DisplayLabel = 'No'
      FieldName = 'DELIVERY_PROJECT_CODE'
    end
    object pdsDeliveriesDELIVERY_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1080#1076
      FieldName = 'DELIVERY_TYPE_CODE'
    end
    object pdsDeliveriesLEASE_DATE_UNIT_CODE: TAbmesFloatField
      DisplayLabel = #1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072
      FieldName = 'LEASE_DATE_UNIT_CODE'
    end
    object pdsDeliveriesHAS_SALE: TAbmesFloatField
      DisplayLabel = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1054#1055#1055
      FieldName = 'HAS_SALE'
    end
    object pdsDeliveriesSALE_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1054#1055#1055' - '#1058#1055' '#1043#1083'.'
      FieldName = 'SALE_BRANCH_CODE'
    end
    object pdsDeliveriesSALE_NO: TAbmesFloatField
      DisplayLabel = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1054#1055#1055' - '#1054#1055#1055' No'
      FieldName = 'SALE_NO'
    end
    object pdsDeliveriesBEGIN_DELIVERY_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1072' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_DELIVERY_DATE'
    end
    object pdsDeliveriesEND_DELIVERY_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1072' - '#1050#1088#1072#1081
      FieldName = 'END_DELIVERY_DATE'
    end
    object pdsDeliveriesBEGIN_DELIVERY_DAYS_RSV: TAbmesFloatField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1072' - '#1056#1077#1079#1077#1088#1074' - '#1054#1090
      FieldName = 'BEGIN_DELIVERY_DAYS_RSV'
    end
    object pdsDeliveriesEND_DELIVERY_DAYS_RSV: TAbmesFloatField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1072' - '#1056#1077#1079#1077#1088#1074' - '#1044#1086
      FieldName = 'END_DELIVERY_DAYS_RSV'
    end
    object pdsDeliveriesDAMAGES_STATE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103
      FieldName = 'DAMAGES_STATE_CODE'
    end
    object pdsDeliveriesCHOSEN_PRODUCTS: TAbmesWideStringField
      DisplayLabel = '%ProductClassName%'
      FieldName = 'CHOSEN_PRODUCTS'
      Size = 4000
    end
    object pdsDeliveriesCHOSEN_COMPANIES: TAbmesWideStringField
      DisplayLabel = #1044#1086#1089#1090#1072#1074#1095#1080#1082
      FieldName = 'CHOSEN_COMPANIES'
      Size = 4000
    end
    object pdsDeliveriesDELIVERY_VENDOR_OFFICE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1095#1080#1082' '#1079#1072' '#1045#1082#1089#1087'.'
      FieldName = 'DELIVERY_VENDOR_OFFICE_CODE'
    end
    object pdsDeliveriesCOUNTRY_CODE: TAbmesFloatField
      DisplayLabel = #1044#1098#1088#1078#1072#1074#1072
      FieldName = 'COUNTRY_CODE'
    end
    object pdsDeliveriesIS_TRANSPORT_FROM_VENDOR_CODE: TAbmesFloatField
      DisplayLabel = #1054#1088#1075'. '#1085#1072' '#1058#1088#1072#1085#1089#1087#1086#1088#1090
      FieldName = 'IS_TRANSPORT_FROM_VENDOR_CODE'
    end
    object pdsDeliveriesSHIPMENT_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1098#1088#1075'. '#1082#1086#1076' '#1085#1072' '#1044#1089#1090'.'
      FieldName = 'SHIPMENT_TYPE_CODE'
    end
    object pdsDeliveriesBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1043#1083'.'
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
    end
    object pdsDeliveriesBUDGET_ORDER_CODE: TAbmesFloatField
      DisplayLabel = #1048#1041#1057' No'
      FieldName = 'BUDGET_ORDER_CODE'
    end
    object pdsDeliveriesBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      DisplayLabel = #1051#1048#1041#1057' No'
      FieldName = 'BUDGET_ORDER_ITEM_CODE'
    end
    object pdsDeliveriesBOI_ORDER_CODE: TAbmesFloatField
      DisplayLabel = #1054#1051#1048#1041#1057' No'
      FieldName = 'BOI_ORDER_CODE'
    end
    object pdsDeliveriesREPORT_TAG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'REPORT_TAG'
      ProviderFlags = []
      Calculated = True
    end
    object pdsDeliveriesREPORT_TITLE: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = 'REPORT_TITLE'
      ProviderFlags = []
      Size = 100
      Calculated = True
    end
    object pdsDeliveriesPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'PRODUCT_CLASS_CODE'
      ProviderFlags = []
      Calculated = True
    end
    object pdsDeliveries_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_LEASE_DATE_UNIT_NAME'
      LookupDataSet = cdsDateUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'THE_DATE_UNIT_NAME'
      KeyFields = 'LEASE_DATE_UNIT_CODE'
      Lookup = True
    end
    object pdsDeliveries_BUDGET_ORDER_BRANCH: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_BUDGET_ORDER_BRANCH'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_IDENTIFIER'
      KeyFields = 'BUDGET_ORDER_BRANCH_CODE'
      Size = 50
      Lookup = True
    end
  end
  object cdsDateUnits: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvDateUnits'
    Left = 416
    Top = 224
    object cdsDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'THE_DATE_UNIT_CODE'
    end
    object cdsDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'THE_DATE_UNIT_NAME'
      Size = 50
    end
  end
  object dsDateUnits: TDataSource
    DataSet = cdsDateUnits
    Left = 432
    Top = 224
  end
  object dsGroupDeliveriesParams: TDataSource
    DataSet = pdsGroupDeliveries
    Left = 48
    Top = 192
  end
  object dsDeliveriesParams: TDataSource
    DataSet = pdsDeliveries
    Left = 448
    Top = 176
  end
  object cdsDeliveryDealTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDeliveries
    Params = <>
    ProviderName = 'prvDeliveryDealTypes'
    Left = 416
    Top = 256
    object cdsDeliveryDealTypesBORDER_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_DEAL_TYPE_CODE'
    end
    object cdsDeliveryDealTypesBORDER_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BORDER_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object cdsDeliveryDealTypesBORDER_DEAL_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BORDER_DEAL_TYPE_NAME'
      Size = 100
    end
    object cdsDeliveryDealTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_CODE'
    end
    object cdsDeliveryDealTypesOBTAINMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OBTAINMENT_TYPE_CODE'
    end
  end
  object dsDeliveryDealTypes: TDataSource
    DataSet = cdsDeliveryDealTypes
    Left = 432
    Top = 256
  end
  object cdsExceptEventsParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 224
    Top = 528
    object cdsExceptEventsParamsMAX_STATE_CODE: TAbmesFloatField
      FieldName = 'MAX_STATE_CODE'
    end
    object cdsExceptEventsParamsIS_FILTERED_BY_DAMAGES: TAbmesFloatField
      FieldName = 'IS_FILTERED_BY_DAMAGES'
      FieldValueType = fvtBoolean
    end
    object cdsExceptEventsParamsEE_DAMAGE_PROCESS_TYPE_CODE: TAbmesFloatField
      FieldName = 'EE_DAMAGE_PROCESS_TYPE_CODE'
    end
    object cdsExceptEventsParamsDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_OBJECT_BRANCH_CODE'
    end
    object cdsExceptEventsParamsDELIVERY_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_OBJECT_CODE'
    end
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Params = <>
    ProviderName = 'prvBranches'
    Left = 472
    Top = 224
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
    end
    object cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BRANCH_IDENTIFIER'
      Size = 46
    end
  end
end
