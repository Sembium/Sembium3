inherited fmSaleExpGroups: TfmSaleExpGroups
  Left = 229
  Top = 148
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1055#1088#1086#1076#1072#1078#1073#1080' '#1079#1072' %ProductClassAbbrev%'
  ClientHeight = 617
  ClientWidth = 1025
  OldCreateOrder = False
  DesignSize = (
    1025
    617)
  PixelsPerInch = 96
  TextHeight = 13
  object pcSales: TPageControl [0]
    Left = 0
    Top = 0
    Width = 1025
    Height = 577
    ActivePage = tsExpGroups
    Anchors = [akLeft, akTop, akRight, akBottom]
    HotTrack = True
    TabHeight = 22
    TabOrder = 0
    OnChange = pcSalesChange
    OnChanging = pcSalesChanging
    object tsExpGroups: TTabSheet
      Caption = #1043#1088#1091#1087#1080' '#1054#1055#1055' '#1087#1086' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1103
      object pnlMainExpGroups: TPanel
        Left = 0
        Top = 0
        Width = 1017
        Height = 545
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Splitter1: TSplitter
          Left = 0
          Top = 320
          Width = 1017
          Height = 8
          Cursor = crVSplit
          Align = alBottom
          Color = clBtnFace
          ParentColor = False
        end
        object pnlExpGroupsMaster: TPanel
          Left = 0
          Top = 0
          Width = 1017
          Height = 320
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object pnlExpGroupsMasterNavigator: TPanel
            Left = 0
            Top = 13
            Width = 1017
            Height = 24
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object navExpGroupsMaster: TDBColorNavigator
              Left = 0
              Top = 0
              Width = 120
              Height = 24
              DataSource = dsData
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
              Align = alLeft
              Flat = True
              TabOrder = 0
              BeforeAction = navExpGroupsMasterBeforeAction
            end
            object pnlFilterGroups: TPanel
              Left = 120
              Top = 0
              Width = 24
              Height = 24
              Align = alLeft
              AutoSize = True
              BevelOuter = bvNone
              TabOrder = 1
              object btnFilterGroups: TSpeedButton
                Left = 0
                Top = 0
                Width = 24
                Height = 24
                Action = actFilterExpGroups
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
                ParentShowHint = False
                ShowHint = True
              end
            end
            object tlbTopExpGroupsButtons: TToolBar
              Left = 144
              Top = 0
              Width = 56
              Height = 24
              Align = alLeft
              AutoSize = True
              ButtonHeight = 24
              ButtonWidth = 24
              Caption = 'tlbTopExpGroupsButtons'
              Images = dmMain.ilActions
              TabOrder = 2
              object sepBeforeExcelExport: TToolButton
                Left = 0
                Top = 0
                Width = 8
                Caption = 'sepBeforeExcelExport'
                ImageIndex = 3
                Style = tbsSeparator
              end
              object btnExcelExport: TToolButton
                Left = 8
                Top = 0
                Action = actExcelExportExpGroups
                ParentShowHint = False
                ShowHint = True
              end
              object btnPrint1stPage: TToolButton
                Left = 32
                Top = 0
                Action = actPrint1stPage
              end
            end
          end
          object grdExpGroupsMaster: TAbmesDBGrid
            Left = 0
            Top = 37
            Width = 1017
            Height = 283
            Align = alClient
            DataSource = dsData
            DynProps = <>
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            FooterRowCount = 1
            FooterParams.Color = 15258325
            GridLineParams.VertEmptySpaceStyle = dessNonEh
            HorzScrollBar.VisibleMode = sbNeverShowEh
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghIncSearch, dghPreferIncSearch]
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
            TitleParams.MultiTitle = True
            TitleParams.VTitleMargin = 8
            OnDrawColumnCell = grdExpGroupsMasterDrawColumnCell
            OnGetCellParams = grdExpGroupsMasterGetCellParams
            Columns = <
              item
                Alignment = taLeftJustify
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'EXP_GROUP_STATE_CODE'
                Footers = <>
                Title.Caption = #1057#1090#1072#1090#1091#1089
                Width = 45
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'SHIPMENT_DATE'
                Footers = <>
                Title.Caption = #1044#1072#1090#1072' '#1085#1072' '#1045#1082#1089#1087#1077#1076'.'
                Width = 59
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'MIN_TIME_DEV'
                Footers = <>
                Title.Caption = #1056#1077#1079#1077#1088#1074
                Title.Orientation = tohVertical
                Width = 20
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'CLIENT_COMPANY_NO'
                Footers = <>
                Title.Caption = #1050#1083#1080#1077#1085#1090'|'#1050#1086#1076
                Visible = False
                Width = 62
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'CLIENT_STATUS_NAME'
                Footers = <>
                Title.Caption = #1050#1083#1080#1077#1085#1090'|'#1057#1090#1072#1090#1091#1089
                Width = 45
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'CLENT_COMPANY_NAME'
                Footers = <>
                Title.Caption = #1050#1083#1080#1077#1085#1090'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                Width = 132
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'OFFICE_NAME'
                Footers = <>
                Title.Caption = #1058#1055' '#1085#1072' '#1050#1083#1080#1077#1085#1090' '#1079#1072' '#1055#1086#1083#1091#1095#1072'- '#1074#1072#1085#1077
                Width = 55
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'IS_VENDOR_TRANSPORT'
                Footers = <>
                Title.Caption = #1054#1088#1075'. '#1058#1088#1072#1085#1089#1087'.'
                Width = 45
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PLAN_VALUE_GAINED'
                Footer.FieldName = '_SUM_PLAN_VALUE_GAINED'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1083#1072#1085'|'#1055#1057'*'
                Width = 43
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_PLAN_VALUE_ADDED'
                Footer.FieldName = '_SUM_PLAN_VALUE_ADDED'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1083#1072#1085'|'#1048#1056'1*'
                Width = 43
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_PLAN_PERCENT'
                Footer.FieldName = '_AVG_PLAN_PERCENT'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1083#1072#1085'|'#1048#1056'1 %'
                Width = 24
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_PLAN_TRANSPORT_QUANTITY'
                Footer.FieldName = '_SUM_PLAN_TRANSPORT_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1083#1072#1085'|'#1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1080'|'#1050'-'#1074#1086
                Width = 50
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_TRANSPORT_MEASURE_ABBREV'
                Footer.FieldName = '_MIN_TRANSPORT_MEASURE_ABBREV'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1083#1072#1085'|'#1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1080'|'#1052'.'#1077#1076'.'
                Width = 31
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'OTCH_VALUE_GAINED'
                Footer.FieldName = '_SUM_OTCH_VALUE_GAINED'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1054#1090#1095#1077#1090'|'#1055#1057'*'
                Width = 43
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_OTCH_VALUE_ADDED'
                Footer.FieldName = '_SUM_OTCH_VALUE_ADDED'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1054#1090#1095#1077#1090'|'#1048#1056'1*'
                Width = 43
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_OTCH_PERCENT'
                Footer.FieldName = '_AVG_OTCH_PERCENT'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1054#1090#1095#1077#1090'|'#1048#1056'1 %'
                Width = 24
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_OTCH_TRANSPORT_QUANTITY'
                Footer.FieldName = '_SUM_OTCH_TRANSPORT_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1054#1090#1095#1077#1090'|'#1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1080'|'#1050'-'#1074#1086
                Width = 50
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_TRANSPORT_MEASURE_ABBREV'
                Footer.FieldName = '_MIN_TRANSPORT_MEASURE_ABBREV'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1054#1090#1095#1077#1090'|'#1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1080'|'#1052'.'#1077#1076'.'
                Width = 31
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_DEV_VALUE_GAINED'
                Footer.FieldName = '_SUM_DEV_VALUE_GAINED'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1055#1057'*'
                Width = 43
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_DEV_VALUE_ADDED'
                Footer.FieldName = '_SUM_DEV_VALUE_ADDED'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1048#1056'1*'
                Width = 43
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_DEV_TRANSPORT_QUANTITY'
                Footer.FieldName = '_SUM_DEV_TRANSPORT_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1080'|'#1050'-'#1074#1086
                Width = 50
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_TRANSPORT_MEASURE_ABBREV'
                Footer.FieldName = '_MIN_TRANSPORT_MEASURE_ABBREV'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1080'|'#1052'.'#1077#1076'.'
                Width = 31
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'EXP_GROUP_DAMAGES_STATE_CODE'
                Footers = <>
                Title.Caption = #1053#1054
                Title.Orientation = tohVertical
                Width = 13
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object pnlSaleExpsTopPadding: TPanel
            Left = 0
            Top = 0
            Width = 1017
            Height = 13
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 3
          end
          object pnlFlags: TPanel
            Left = 216
            Top = -4
            Width = 689
            Height = 41
            BevelOuter = bvNone
            TabOrder = 2
            object lblSaleExpsDateInterval: TLabel
              Left = 0
              Top = 3
              Width = 119
              Height = 13
              Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1103
            end
            object lblSaleDealType: TLabel
              Left = 152
              Top = 3
              Width = 46
              Height = 13
              Caption = #1058#1080#1087' '#1054#1055#1055
            end
            object lblLeaseGroupType: TLabel
              Left = 208
              Top = 3
              Width = 68
              Height = 13
              Caption = #1043#1088#1091#1087#1080#1088#1072#1085#1077' '#1087#1086
            end
            inline frSaleExpsDateInterval: TfrDateIntervalFrame
              Left = 0
              Top = 17
              Width = 145
              Height = 21
              Constraints.MaxHeight = 21
              Constraints.MaxWidth = 145
              Constraints.MinHeight = 21
              Constraints.MinWidth = 145
              TabOrder = 0
              TabStop = True
              inherited dsData: TDataSource
                DataSet = pdsExpGroupsMaster
              end
            end
            object edtSaleDealType: TDBEdit
              Left = 152
              Top = 17
              Width = 49
              Height = 21
              Color = clBtnFace
              DataField = '_SALE_DEAL_TYPE_SHOW_NAME'
              DataSource = dsExpGroupsParams
              ReadOnly = True
              TabOrder = 1
            end
            object edtLeaseGroupType: TDBEdit
              Left = 208
              Top = 17
              Width = 217
              Height = 21
              Color = clBtnFace
              DataField = 'LEASE_GROUP_TYPE'
              DataSource = dsExpGroupsParams
              ReadOnly = True
              TabOrder = 2
            end
          end
        end
        object pnlExpGroupsDetail: TPanel
          Left = 0
          Top = 328
          Width = 1017
          Height = 217
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object pnlExpGroupsDetailNavigator: TPanel
            Left = 0
            Top = 0
            Width = 1017
            Height = 24
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object btnShowAnnuledLines: TSpeedButton
              Left = 96
              Top = 0
              Width = 24
              Height = 24
              Hint = #1055#1086#1082#1072#1079#1074#1072'/'#1089#1082#1088#1080#1074#1072' '#1072#1085#1091#1083#1080#1088#1072#1085#1080#1090#1077' '#1088#1077#1076#1086#1074#1077
              AllowAllUp = True
              GroupIndex = 1
              Caption = #1040#1085
              Flat = True
              OnClick = btnShowAnnuledLinesClick
            end
            object btnDocumentation: TSpeedButton
              Left = 144
              Top = 0
              Width = 37
              Height = 24
              Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1080#1103' %ProductClassName%'
              Flat = True
              Glyph.Data = {
                36060000424D360600000000000036040000280000001D000000100000000100
                0800000000000002000000000000000000000001000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                A6000020400000206000002080000020A0000020C0000020E000004000000040
                20000040400000406000004080000040A0000040C0000040E000006000000060
                20000060400000606000006080000060A0000060C0000060E000008000000080
                20000080400000806000008080000080A0000080C0000080E00000A0000000A0
                200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
                200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
                200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
                20004000400040006000400080004000A0004000C0004000E000402000004020
                20004020400040206000402080004020A0004020C0004020E000404000004040
                20004040400040406000404080004040A0004040C0004040E000406000004060
                20004060400040606000406080004060A0004060C0004060E000408000004080
                20004080400040806000408080004080A0004080C0004080E00040A0000040A0
                200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
                200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
                200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
                20008000400080006000800080008000A0008000C0008000E000802000008020
                20008020400080206000802080008020A0008020C0008020E000804000008040
                20008040400080406000804080008040A0008040C0008040E000806000008060
                20008060400080606000806080008060A0008060C0008060E000808000008080
                20008080400080806000808080008080A0008080C0008080E00080A0000080A0
                200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
                200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
                200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
                2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
                2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
                2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
                2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
                2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
                2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
                2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFD1D
                1D1D1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFB0000
                0000000000FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFBFB1D1D
                0000001D1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFBFB1D1DFB
                000000FBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FBFB1D1DFBFB
                0000001DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FBFB1D1DFB1D
                0000001D1DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FBFB1DFBFB1D
                000000FB1D1DFBFB1DFDFDFDFDFDFDFDFDFDFDFD00FDFD000000FBFB1DFBFB1D
                000000FBFB1DFBFB1D1DFDFDFDFDFDFDFDFDFD000000FD000000FBFB1D1D0000
                0000001DFB1DFBFB1D1DFDFDFDFDFDFDFDFD0000000000000000FBFBFB1DFBFB
                1D1D1DFBFB1DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFBFB1D1DFB
                FBFBFBFB1D1DFBFB1DFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFBFBFB1D1D
                0000001D1DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFBFBFB1D
                0000001D1DFBFB1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFBFBFB
                1D001DFBFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFDFDFB
                FBFBFBFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFDFDFD
                FD1D1D1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000}
              ParentShowHint = False
              ShowHint = True
              Transparent = False
              OnClick = btnDocumentationClick
            end
            object btnShowProductVIMForExpFromGroup: TSpeedButton
              Left = 120
              Top = 0
              Width = 24
              Height = 24
              Action = actShowProductVIMForExpFromGroup
              AllowAllUp = True
              Flat = True
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF007B7B7B00FF00FF00FF00FF00FF00FF007B7B7B00FF00FF00FF00FF00FF00
                FF007B7B7B00FF00FF00FF00FF00FF00FF007B7B7B00FF00FF00FF00FF00FF00
                FF007B7B7B00FF00FF007B7B7B00FF00FF007B7B7B00FF00FF007B7B7B00FF00
                FF007B7B7B00FF00FF007B7B7B00FF00FF007B7B7B00FF00FF007B7B7B007B7B
                7B00000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000FF00FF00FF00
                FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B7B
                7B00000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF0000000000FF00FF000000FF00FF00FF000000FF000000FF00FF00FF00FF00
                0000FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF007B7B7B007B7B
                7B00000000007B7B7B000000FF007B7B7B000000FF007B7B7B000000FF007B7B
                7B007B7B7B00FF0000007B7B7B007B7B7B007B7B7B007B7B7B00FF00FF00FF00
                FF0000000000FF00FF00FF00FF000000FF00FF00FF00FF00FF000000FF00FF00
                FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF007B7B
                7B0000000000FF000000FF00FF00FF00FF00FF00FF00FF000000FF00FF000000
                FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF0000000000FF00FF00FF000000FF00FF00FF000000FF00FF00FF00FF000000
                FF00FF00FF000000FF00FF0000000000FF00FF00FF00FF00FF007B7B7B007B7B
                7B00000000007B7B7B00FF0000007B7B7B00FF0000007B7B7B007B7B7B007B7B
                7B000000FF007B7B7B007B7B7B00FF0000000000FF007B7B7B00FF00FF00FF00
                FF0000000000FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF007B7B
                7B0000000000FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00
                FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B7B7B007B7B
                7B00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
                7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              ParentShowHint = False
              ShowHint = True
            end
            object navExpGroupsDetail: TDBColorNavigator
              Left = 0
              Top = 0
              Width = 96
              Height = 24
              DataSource = dsExpGroupsDetail
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              Align = alLeft
              Flat = True
              TabOrder = 0
            end
            object tlbExpGroupsDetailToggles: TToolBar
              Left = 633
              Top = 0
              Width = 384
              Height = 24
              Align = alRight
              AutoSize = True
              ButtonHeight = 24
              ButtonWidth = 24
              Images = dmMain.ilActions
              List = True
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              object btnExpGroupsDetailShowQty: TSpeedButton
                Left = 0
                Top = 0
                Width = 120
                Height = 24
                Action = actExpGroupsDetailShowQty
                GroupIndex = 9
                Down = True
                Flat = True
                Transparent = False
              end
              object btnExpGroupsDetailShowDates: TSpeedButton
                Left = 120
                Top = 0
                Width = 120
                Height = 24
                Action = actExpGroupsDetailShowDates
                GroupIndex = 9
                Flat = True
                Transparent = False
              end
              object setBeforeTogglePlanOtch: TToolButton
                Left = 240
                Top = 0
                Width = 8
                Caption = 'setBeforeTogglePlanOtch'
                ImageIndex = 29
                Style = tbsSeparator
              end
              object btnToggleExpGroupsPlanAndOtch: TSpeedButton
                Left = 248
                Top = 0
                Width = 40
                Height = 24
                GroupIndex = 6
                Down = True
                Caption = #1055#1083#1072#1085
                Flat = True
                Transparent = False
                OnClick = btnToggleExpGroupsPlanAndOtchClick
              end
              object btnToggleExpGroupsPlanAndOtch2: TSpeedButton
                Left = 288
                Top = 0
                Width = 40
                Height = 24
                GroupIndex = 6
                Caption = #1054#1090#1095#1077#1090
                Flat = True
                Transparent = False
                OnClick = btnToggleExpGroupsPlanAndOtch2Click
              end
              object sepShowWorkQuantities: TToolButton
                Left = 328
                Top = 0
                Width = 8
                ImageIndex = 25
                Style = tbsSeparator
              end
              object btnExpGroupsDetailShowWorkQuantities: TToolButton
                Left = 336
                Top = 0
                Action = actExpGroupsDetailShowWorkQuantities
                Grouped = True
                Style = tbsCheck
              end
              object btnExpGroupsDetailShowAccountQuantities: TToolButton
                Left = 360
                Top = 0
                Action = actExpGroupsDetailShowAccountQuantities
                Grouped = True
                Style = tbsCheck
              end
            end
          end
          object pnlButtons: TPanel
            Left = 0
            Top = 182
            Width = 1017
            Height = 35
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
            object btnEditSaleFromGroups: TBitBtn
              Left = 3
              Top = 7
              Width = 110
              Height = 25
              Action = actEditSaleFromGroups
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
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
            object btnShipmentNeededMaterials: TBitBtn
              Left = 123
              Top = 7
              Width = 174
              Height = 25
              Action = actShipmentNeededMaterials
              Caption = #1052#1072#1090#1077#1088#1080#1072#1083#1080' '#1087#1086' '#1077#1082#1089#1087#1077#1076#1080#1094#1080#1080'...'
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
                0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
                0000FF00FF00FF00FF0000000000000000000000000000000000000000000000
                000000000000FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF000000
                0000FF00FF00FF00FF00FF00FF0000000000FF000000FF000000FF0000000000
                0000FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF0000000000FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00000000000000FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF0000000000FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF000000
                00000000000000000000FF00FF00FF00FF0000000000FF00FF0000000000FF00
                FF000000000000000000000000000000000000000000FF00FF00000000007B7B
                7B0000FFFF007B7B7B0000000000FF00FF0000000000FF00FF0000000000FF00
                FF00000000000000FF000000FF000000FF0000000000FF00FF000000000000FF
                FF0000FFFF0000FFFF0000000000FF00FF0000000000FF00FF0000000000FF00
                FF00000000000000FF000000FF000000FF0000000000FF00FF00000000007B7B
                7B0000FFFF007B7B7B0000000000FF00FF0000000000FF00FF00FF00FF000000
                0000000000000000FF000000FF000000FF0000000000FF00FF00FF00FF000000
                00000000000000000000FF00FF0000000000FF00FF00FF00FF00FF00FF000000
                00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
                FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
                0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              TabOrder = 1
            end
            object btnExceptEvents: TBitBtn
              Left = 307
              Top = 7
              Width = 150
              Height = 25
              Action = actGroupExpsExceptEvents
              Caption = #1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103'...'
              TabOrder = 2
            end
          end
          object grdExpGroupsDetail: TAbmesDBGrid
            AlignWithMargins = True
            Left = 2
            Top = 24
            Width = 1013
            Height = 158
            Margins.Left = 2
            Margins.Top = 0
            Margins.Right = 2
            Margins.Bottom = 0
            Align = alClient
            DataSource = dsExpGroupsDetail
            DynProps = <>
            FooterRowCount = 1
            FooterParams.Color = 15258325
            GridLineParams.VertEmptySpaceStyle = dessNonEh
            HorzScrollBar.VisibleMode = sbNeverShowEh
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghIncSearch, dghPreferIncSearch]
            ReadOnly = True
            TabOrder = 1
            TitleParams.MultiTitle = True
            TitleParams.VTitleMargin = 8
            OnDblClick = actEditSaleFromGroupsExecute
            OnDrawColumnCell = grdExpGroupsDetailDrawColumnCell
            OnGetCellParams = grdExpGroupsDetailGetCellParams
            Columns = <
              item
                Alignment = taLeftJustify
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'SALE_SHIPMENT_STATE_CODE'
                Footers = <>
                Title.Caption = #1057#1090#1072#1090#1091#1089
                Width = 45
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'SALE_ID'
                Footers = <>
                Title.Caption = 'ID '#1054#1055#1055
                Width = 84
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PRIORITY_FULL_NAME'
                Footers = <>
                Title.Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090
                Title.Orientation = tohVertical
                Width = 16
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'SALE_ORDER_TYPE_ABBREV'
                Footers = <>
                Title.Caption = #1042#1080#1076
                Title.Orientation = tohVertical
                Width = 13
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_SALE_DEAL_TYPE_SHOW_NAME'
                Footers = <>
                Title.Caption = #1058#1080#1087' '#1054#1055#1055
                Title.Orientation = tohVertical
                Width = 21
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'CLIENT_REQUEST_NO'
                Footers = <>
                Tag = 3
                Title.Caption = #1054#1079#1085'. '#1085#1072' '#1054#1044#1050' '#1086#1090' '#1050#1083#1080#1077#1085#1090
                Visible = False
                Width = 43
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'CLIENT_PRODUCT_NAME'
                Footers = <>
                Tag = 3
                Title.Caption = '%ProductClassName%|'#1054#1079#1085'. '#1086#1090' '#1050#1083#1080#1077#1085#1090
                Visible = False
                Width = 65
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PRODUCT_NO'
                Footers = <>
                Title.Caption = '%ProductClassName%|id '#1094#1080#1092#1088#1086#1074
                Visible = False
                Width = 62
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PRODUCT_NAME'
                Footers = <>
                Tag = 2
                Title.Caption = '%ProductClassName%|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
                Width = 109
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'MEASURE_ABBREV'
                Footers = <>
                Title.Caption = '%ProductClassName%|'#1056#1072#1073'. '#1052'.'#1077#1076'.'
                Width = 31
              end
              item
                Alignment = taCenter
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'ACCOUNT_MEASURE_ABBREV'
                Footers = <>
                Title.Caption = '%ProductClassName%|'#1057#1095#1077#1090'. '#1052'.'#1077#1076'.'
                Visible = False
                Width = 31
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PLAN_QUANTITY'
                Footer.FieldName = '_SUM_PLAN_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1083#1072#1085'|'#1056#1072#1073'. '#1050'-'#1074#1086
                Width = 55
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PLAN_ACCOUNT_QUANTITY'
                Footer.FieldName = '_SUM_PLAN_ACCOUNT_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1083#1072#1085'|'#1057#1095#1077#1090'. '#1050'-'#1074#1086
                Visible = False
                Width = 55
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'LEASE_PLAN_DATE_UNIT_QTY'
                Footers = <>
                Title.Caption = #1055#1083#1072#1085'|'#1050'-'#1074#1086' '#1053#1084'.'#1057#1090'.'
                Width = 40
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'LEASE_DATE_UNIT_NAME'
                Footers = <>
                Title.Caption = #1055#1083#1072#1085'|'#1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072
                Width = 60
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PLAN_VALUE_GAINED'
                Footers = <>
                Title.Caption = #1055#1083#1072#1085'|'#1055#1057'*'
                Width = 60
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_PLAN_VALUE_ADDED'
                Footers = <>
                Title.Caption = #1055#1083#1072#1085'|'#1048#1056'1*'
                Width = 60
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_PLAN_PERCENT'
                Footers = <>
                Title.Caption = #1055#1083#1072#1085'|'#1048#1056'1 %'
                Width = 24
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PLAN_TRANSPORT_QUANTITY'
                Footer.FieldName = '_SUM_PLAN_TRANSPORT_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1083#1072#1085'|'#1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1080'|'#1050'-'#1074#1086
                Width = 50
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'TRANSPORT_MEASURE_ABBREV'
                Footers = <>
                Title.Caption = #1055#1083#1072#1085'|'#1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1080'|'#1052'.'#1077#1076'.'
                Width = 31
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'OTCH_QUANTITY'
                Footer.FieldName = '_SUM_OTCH_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1054#1090#1095#1077#1090'|'#1056#1072#1073'. '#1050'-'#1074#1086
                Visible = False
                Width = 55
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'OTCH_ACCOUNT_QUANTITY'
                Footer.FieldName = '_SUM_OTCH_ACCOUNT_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1054#1090#1095#1077#1090'|'#1057#1095#1077#1090'. '#1050'-'#1074#1086
                Visible = False
                Width = 55
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'LEASE_DATE_UNIT_QTY'
                Footers = <>
                Title.Caption = #1054#1090#1095#1077#1090'|'#1050'-'#1074#1086' '#1053#1084'.'#1057#1090'.'
                Visible = False
                Width = 40
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'LEASE_DATE_UNIT_NAME'
                Footers = <>
                Title.Caption = #1054#1090#1095#1077#1090'|'#1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072
                Visible = False
                Width = 60
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'OTCH_VALUE_GAINED'
                Footers = <>
                Title.Caption = #1054#1090#1095#1077#1090'|'#1055#1057'*'
                Visible = False
                Width = 60
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_OTCH_VALUE_ADDED'
                Footers = <>
                Title.Caption = #1054#1090#1095#1077#1090'|'#1048#1056'1*'
                Visible = False
                Width = 60
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_OTCH_PERCENT'
                Footers = <>
                Title.Caption = #1054#1090#1095#1077#1090'|'#1048#1056'1 %'
                Visible = False
                Width = 24
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'OTCH_TRANSPORT_QUANTITY'
                Footer.FieldName = '_SUM_OTCH_TRANSPORT_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1054#1090#1095#1077#1090'|'#1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1080'|'#1050'-'#1074#1086
                Visible = False
                Width = 50
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'TRANSPORT_MEASURE_ABBREV'
                Footers = <>
                Title.Caption = #1054#1090#1095#1077#1090'|'#1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1080'|'#1052'.'#1077#1076'.'
                Visible = False
                Width = 31
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_DEV_QUANTITY'
                Footer.FieldName = '_SUM_DEV_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1056#1072#1073'. '#1050'-'#1074#1086
                Visible = False
                Width = 55
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_DEV_ACCOUNT_QUANTITY'
                Footer.FieldName = '_SUM_DEV_ACCOUNT_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1057#1095#1077#1090'. '#1050'-'#1074#1086
                Visible = False
                Width = 55
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_DEV_LEASE_DATE_UNIT_QTY'
                Footers = <>
                Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1050'-'#1074#1086' '#1053#1084'.'#1057#1090'.'
                Visible = False
                Width = 40
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_DEV_VALUE_GAINED'
                Footers = <>
                Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1055#1057'*'
                Visible = False
                Width = 75
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_DEV_VALUE_ADDED'
                Footers = <>
                Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1048#1056'1*'
                Visible = False
                Width = 60
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'SHIPMENT_DATE'
                Footers = <>
                Title.Caption = #1044#1072#1090#1072' '#1085#1072' '#1045#1082#1089#1087'.'
                Width = 59
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'RECEIVE_PLAN_DATE'
                Footers = <>
                Title.Caption = #1055#1086#1083#1091#1095#1072#1074#1072#1085#1077'|'#1055#1083#1072#1085#1086#1074#1072' '#1044#1072#1090#1072
                Width = 59
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'RECEIVE_DATE'
                Footers = <>
                Title.Caption = #1055#1086#1083#1091#1095#1072#1074#1072#1085#1077'|'#1054#1090#1095#1077#1090#1085#1072' '#1044#1072#1090#1072
                Visible = False
                Width = 59
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'RECEIVE_DATE_RSV'
                Footers = <>
                Title.Caption = #1055#1086#1083#1091#1095#1072#1074#1072#1085#1077'|'#1088#1079#1088#1074
                Title.Orientation = tohVertical
                Width = 26
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'IMPORT_PLAN_DATE'
                Footers = <>
                Title.Caption = #1042#1088#1098#1097#1072#1085#1077'|'#1055#1083#1072#1085#1086#1074#1072' '#1044#1072#1090#1072
                Width = 59
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'IMPORT_DATE'
                Footers = <>
                Title.Caption = #1042#1088#1098#1097#1072#1085#1077'|'#1054#1090#1095#1077#1090#1085#1072' '#1044#1072#1090#1072
                Visible = False
                Width = 59
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'IMPORT_DATE_RSV'
                Footers = <>
                Title.Caption = #1042#1088#1098#1097#1072#1085#1077'|'#1088#1079#1088#1074
                Title.Orientation = tohVertical
                Width = 26
              end
              item
                Alignment = taCenter
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'INVOICE_STATE_CODE'
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
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'CL_OFFER_RECEIVE_DATE'
                Footers = <>
                Title.Caption = #1044#1072#1090#1072' '#1085#1072' '#1087#1086#1083#1091#1095#1072#1074#1072#1085#1077' '#1087#1086#1080#1089#1082#1072#1085#1072' '#1086#1090' '#1050#1083#1080#1077#1085#1090
                Visible = False
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
    end
    object tsSingleExps: TTabSheet
      Caption = #1045#1076#1080#1085#1080#1095#1085#1080' '#1054#1055#1055' '#1087#1086' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1103
      ImageIndex = 1
      object pnlSingleExpsMain: TPanel
        Left = 0
        Top = 0
        Width = 1017
        Height = 545
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object pnlSingleExpsNavigator: TPanel
          Left = 0
          Top = 13
          Width = 1017
          Height = 24
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object btnSingleExpsShipmentDate: TSpeedButton
            Tag = 8
            Left = 741
            Top = 0
            Width = 33
            Height = 24
            Hint = #1044#1072#1090#1072' '#1085#1072' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1103
            GroupIndex = 10
            Down = True
            Caption = #1045#1082#1089#1087
            Flat = True
            Transparent = False
          end
          object btnSingleExpsReceiveDate: TSpeedButton
            Tag = 10
            Left = 774
            Top = 0
            Width = 33
            Height = 24
            Hint = #1044#1072#1090#1072' '#1085#1072' '#1055#1086#1083#1091#1095#1072#1074#1072#1085#1077
            GroupIndex = 10
            Caption = #1055#1083#1095
            Flat = True
            Transparent = False
          end
          object btnSingleExpsImportDate: TSpeedButton
            Tag = 12
            Left = 807
            Top = 0
            Width = 33
            Height = 24
            Hint = #1044#1072#1090#1072' '#1085#1072' '#1042#1088#1098#1097#1072#1085#1077
            GroupIndex = 10
            Caption = #1042#1088#1097
            Flat = True
            Transparent = False
          end
          object btnIsLease: TSpeedButton
            Tag = 14
            Left = 632
            Top = 2
            Width = 73
            Height = 22
            Hint = 'Invisible. Used only for its tag'
            AllowAllUp = True
            GroupIndex = 11
            Caption = 'btnIsLease'
            Visible = False
          end
          object navSingleExps: TDBColorNavigator
            Left = 0
            Top = 0
            Width = 120
            Height = 24
            DataSource = dsSingleExps
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
            Align = alLeft
            Flat = True
            TabOrder = 0
            BeforeAction = navSingleExpsBeforeAction
          end
          object pnlFilterSingleExps: TPanel
            Left = 120
            Top = 0
            Width = 24
            Height = 24
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object btnFilterSingleExps: TSpeedButton
              Left = 0
              Top = 0
              Width = 24
              Height = 24
              Action = actFilterSingleExps
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
              ParentShowHint = False
              ShowHint = True
            end
          end
          object tlbTopSingleExpButtons: TToolBar
            Left = 144
            Top = 0
            Width = 125
            Height = 24
            Align = alLeft
            AutoSize = True
            ButtonHeight = 24
            ButtonWidth = 24
            EdgeInner = esNone
            Images = dmMain.ilActions
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            object sepBeforeExcelExportSingle: TToolButton
              Left = 0
              Top = 0
              Width = 8
              Caption = 'sepBeforeExcelExportSingle'
              ImageIndex = 3
              Style = tbsSeparator
            end
            object btnExcelExportSingleExps: TToolButton
              Left = 8
              Top = 0
              Action = actExcelExportSingleExps
            end
            object btnPrint2ndPage: TToolButton
              Left = 32
              Top = 0
              Action = actPrint2ndPage
            end
            object sepAfterPrintSingle: TToolButton
              Left = 56
              Top = 0
              Width = 8
              Caption = 'sepAfterPrintSingle'
              ImageIndex = 3
              Style = tbsSeparator
            end
            object btnShowVIMForSingleExp: TToolButton
              Left = 64
              Top = 0
              Action = actShowVIMForSingleExp
            end
            object btnDocumentation2: TSpeedButton
              Left = 88
              Top = 0
              Width = 37
              Height = 24
              Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1080#1103' %ProductClassAbbrev%'
              Flat = True
              Glyph.Data = {
                36060000424D360600000000000036040000280000001D000000100000000100
                0800000000000002000000000000000000000001000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                A6000020400000206000002080000020A0000020C0000020E000004000000040
                20000040400000406000004080000040A0000040C0000040E000006000000060
                20000060400000606000006080000060A0000060C0000060E000008000000080
                20000080400000806000008080000080A0000080C0000080E00000A0000000A0
                200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
                200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
                200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
                20004000400040006000400080004000A0004000C0004000E000402000004020
                20004020400040206000402080004020A0004020C0004020E000404000004040
                20004040400040406000404080004040A0004040C0004040E000406000004060
                20004060400040606000406080004060A0004060C0004060E000408000004080
                20004080400040806000408080004080A0004080C0004080E00040A0000040A0
                200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
                200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
                200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
                20008000400080006000800080008000A0008000C0008000E000802000008020
                20008020400080206000802080008020A0008020C0008020E000804000008040
                20008040400080406000804080008040A0008040C0008040E000806000008060
                20008060400080606000806080008060A0008060C0008060E000808000008080
                20008080400080806000808080008080A0008080C0008080E00080A0000080A0
                200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
                200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
                200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
                2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
                2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
                2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
                2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
                2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
                2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
                2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFD1D
                1D1D1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFB0000
                0000000000FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFBFB1D1D
                0000001D1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFBFB1D1DFB
                000000FBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FBFB1D1DFBFB
                0000001DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FBFB1D1DFB1D
                0000001D1DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FBFB1DFBFB1D
                000000FB1D1DFBFB1DFDFDFDFDFDFDFDFDFDFDFD00FDFD000000FBFB1DFBFB1D
                000000FBFB1DFBFB1D1DFDFDFDFDFDFDFDFDFD000000FD000000FBFB1D1D0000
                0000001DFB1DFBFB1D1DFDFDFDFDFDFDFDFD0000000000000000FBFBFB1DFBFB
                1D1D1DFBFB1DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFBFB1D1DFB
                FBFBFBFB1D1DFBFB1DFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFBFBFB1D1D
                0000001D1DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFBFBFB1D
                0000001D1DFBFB1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFBFBFB
                1D001DFBFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFDFDFB
                FBFBFBFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFDFDFD
                FD1D1D1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000}
              Transparent = False
              OnClick = btnDocumentation2Click
            end
          end
          object tlbToggleSingleExpsPlanAndOtch: TToolBar
            Left = 844
            Top = 0
            Width = 173
            Height = 24
            Align = alRight
            AutoSize = True
            ButtonHeight = 24
            ButtonWidth = 24
            Images = dmMain.ilActions
            List = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            object sepSingleExps: TToolButton
              Left = 0
              Top = 0
              Width = 8
              Caption = 'sepSingleExps'
              ImageIndex = 29
              Style = tbsSeparator
            end
            object btnToggleSingleExpsPlanAndOtch: TSpeedButton
              Tag = 6
              Left = 8
              Top = 0
              Width = 40
              Height = 24
              Hint = #1055#1083#1072#1085#1086#1074#1086
              GroupIndex = 8
              Down = True
              Caption = #1055#1083#1072#1085
              Flat = True
              Transparent = False
            end
            object btnToggleSingleExpsPlanAndOtch2: TSpeedButton
              Left = 48
              Top = 0
              Width = 40
              Height = 24
              Hint = #1054#1090#1095#1077#1090#1085#1086
              GroupIndex = 8
              Caption = #1054#1090#1095#1077#1090
              Flat = True
              Transparent = False
            end
            object sepShowInvoice: TToolButton
              Left = 88
              Top = 0
              Width = 8
              Caption = 'sepShowInvoice'
              ImageIndex = 29
              Style = tbsSeparator
            end
            object pnlShowInvoice: TPanel
              Left = 96
              Top = 0
              Width = 23
              Height = 24
              AutoSize = True
              BevelOuter = bvNone
              TabOrder = 0
              object btnShowInvoice: TSpeedButton
                Tag = 16
                Left = 0
                Top = 0
                Width = 23
                Height = 24
                Hint = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' / '#1044#1072#1085#1085#1080' '#1079#1072' '#1092#1072#1082#1090#1091#1088#1072
                AllowAllUp = True
                GroupIndex = 123
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
            end
            object sepBeforeSingleExpsShowWorkQuantities: TToolButton
              Left = 119
              Top = 0
              Width = 8
              Down = True
              ImageIndex = 25
              Style = tbsSeparator
            end
            object btnSingleExpsShowWorkQuantities: TSpeedButton
              Tag = 4
              Left = 127
              Top = 0
              Width = 23
              Height = 24
              Hint = #1056#1072#1073#1086#1090#1085#1080' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072
              GroupIndex = 7
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
            object btnSingleExpsShowAccountQuantities: TSpeedButton
              Left = 150
              Top = 0
              Width = 23
              Height = 24
              Hint = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1080' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072
              GroupIndex = 7
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
        object pnlSingleExpsTotals: TPanel
          Left = 0
          Top = 511
          Width = 1017
          Height = 34
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object btnEditSale: TBitBtn
            Left = 2
            Top = 5
            Width = 110
            Height = 25
            Action = actEditSale
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
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
          end
          object btnSingleExpsExceptEvents: TBitBtn
            Left = 122
            Top = 5
            Width = 150
            Height = 25
            Action = actSingleExpsExceptEvents
            Caption = #1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103'...'
            TabOrder = 1
          end
        end
        object grdSingleExps: TAbmesDBGrid
          Left = 0
          Top = 37
          Width = 1017
          Height = 474
          Align = alClient
          DataSource = dsSingleExps
          DynProps = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          FooterRowCount = 1
          FooterParams.Color = 15258325
          GridLineParams.VertEmptySpaceStyle = dessNonEh
          HorzScrollBar.VisibleMode = sbNeverShowEh
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          TitleParams.MultiTitle = True
          TitleParams.VTitleMargin = 8
          OnDblClick = actEditSaleExecute
          OnDrawColumnCell = grdSingleExpsDrawColumnCell
          OnGetCellParams = grdSingleExpsGetCellParams
          OnSortMarkingChanged = grdSingleExpsSortMarkingChanged
          Columns = <
            item
              Alignment = taLeftJustify
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'SALE_SHIPMENT_STATE_CODE'
              Footers = <>
              Title.Caption = #1057#1090#1072#1090#1091#1089
              Width = 45
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'SHIPMENT_DATE'
              Footers = <>
              Tag = 9
              Title.Caption = #1044#1072#1090#1072' '#1085#1072' '#1045#1082#1089#1087'.'
              Width = 67
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_DEV_TIME'
              Footers = <>
              Tag = 9
              Title.Caption = #1088#1079#1088#1074
              Title.Orientation = tohVertical
              Width = 17
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'RECEIVE_PLAN_DATE'
              Footers = <>
              Tag = 711
              Title.Caption = #1055#1083#1072#1085#1086#1074#1072' '#1044#1072#1090#1072' '#1085#1072' '#1055#1086#1083#1091#1095'.'
              Visible = False
              Width = 85
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'RECEIVE_DATE'
              Footers = <>
              Tag = 611
              Title.Caption = #1054#1090#1095#1077#1090#1085#1072' '#1044#1072#1090#1072' '#1085#1072' '#1055#1086#1083#1091#1095'.'
              Visible = False
              Width = 67
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'RECEIVE_DATE_RSV'
              Footers = <>
              Tag = 611
              Title.Caption = #1088#1079#1088#1074
              Title.Orientation = tohVertical
              Visible = False
              Width = 17
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'IMPORT_PLAN_DATE'
              Footers = <>
              Tag = 713
              Title.Caption = #1055#1083#1072#1085#1086#1074#1072' '#1044#1072#1090#1072' '#1085#1072' '#1042#1088#1098#1097#1072#1085#1077
              Visible = False
              Width = 85
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'IMPORT_DATE'
              Footers = <>
              Tag = 613
              Title.Caption = #1054#1090#1095#1077#1090#1085#1072' '#1044#1072#1090#1072' '#1085#1072' '#1042#1088#1098#1097#1072#1085#1077
              Visible = False
              Width = 67
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'IMPORT_DATE_RSV'
              Footers = <>
              Tag = 613
              Title.Caption = #1088#1079#1088#1074
              Title.Orientation = tohVertical
              Visible = False
              Width = 17
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'SALE_ID'
              Footers = <>
              Title.Caption = 'ID '#1054#1055#1055
              Width = 90
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'SALE_ORDER_TYPE_ABBREV'
              Footers = <>
              Title.Caption = #1042#1080#1076
              Title.Orientation = tohVertical
              Width = 13
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_SALE_DEAL_TYPE_SHOW_NAME'
              Footers = <>
              Title.Caption = #1058#1080#1087' '#1054#1055#1055
              Title.Orientation = tohVertical
              Width = 21
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PRIORITY_FULL_NAME'
              Footers = <>
              Title.Caption = #1055#1088'.'
              Title.Orientation = tohVertical
              Width = 16
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'CLIENT_COMPANY_NO'
              Footers = <>
              Title.Caption = #1050#1083#1080#1077#1085#1090'|'#1050#1086#1076
              Visible = False
              Width = 62
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'CLIENT_NAME'
              Footers = <>
              Width = 119
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'RECEIVE_PLACE_OFFICE_NAME'
              Footers = <>
              Title.Caption = #1058#1055' '#1085#1072' '#1050#1083#1080#1077#1085#1090' '#1079#1072' '#1055#1086#1083#1091#1095#1072'- '#1074#1072#1085#1077
              Width = 55
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'CLIENT_REQUEST_NO'
              Footers = <>
              Tag = 3
              Title.Caption = #1054#1079#1085'. '#1085#1072' '#1054#1044#1050' '#1086#1090' '#1050#1083#1080#1077#1085#1090
              Visible = False
              Width = 51
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'CLIENT_PRODUCT_NAME'
              Footers = <>
              Tag = 3
              Title.Caption = '%ProductClassName%|'#1054#1079#1085'. '#1086#1090' '#1050#1083#1080#1077#1085#1090
              Visible = False
              Width = 88
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PRODUCT_NAME'
              Footers = <>
              Tag = 2
              Title.Caption = '%ProductClassName%|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
              Width = 140
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PRODUCT_NO'
              Footers = <>
              Title.Caption = '%ProductClassName%|id '#1094#1080#1092#1088#1086#1074
              Visible = False
              Width = 60
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'MEASURE_ABBREV'
              Footer.FieldName = '_MIN_MEASURE_CODE'
              Footer.ValueType = fvtFieldValue
              Footers = <>
              Tag = 5
              Title.Caption = '%ProductClassName%|'#1056#1072#1073'. '#1052'.'#1077#1076'.'
            end
            item
              Alignment = taCenter
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ACCOUNT_MEASURE_ABBREV'
              Footer.Alignment = taCenter
              Footer.FieldName = '_MIN_ACCOUNT_MEASURE_CODE'
              Footer.ValueType = fvtFieldValue
              Footers = <>
              Tag = 4
              Title.Caption = '%ProductClassName%|'#1057#1095#1077#1090'. '#1052'.'#1077#1076'.'
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PLAN_QUANTITY'
              Footer.FieldName = '_SUM_PLAN_QUANTITY'
              Footer.ValueType = fvtFieldValue
              Footers = <>
              Tag = 507
              Title.Caption = #1055#1083#1072#1085'|'#1056#1072#1073'. '#1050'-'#1074#1086
              Width = 30
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PLAN_ACCOUNT_QUANTITY'
              Footer.FieldName = '_SUM_PLAN_ACCOUNT_QUANTITY'
              Footer.ValueType = fvtFieldValue
              Footers = <>
              Tag = 407
              Title.Caption = #1055#1083#1072#1085'|'#1057#1095#1077#1090'. '#1050'-'#1074#1086
              Visible = False
              Width = 30
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PLAN_VALUE_GAINED'
              Footer.FieldName = '_SUM_PLAN_VALUE_GAINED'
              Footer.ValueType = fvtFieldValue
              Footers = <>
              Tag = 714
              Title.Caption = #1055#1083#1072#1085'|'#1055#1057'*'
              Width = 60
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_PLAN_VALUE_ADDED'
              Footer.FieldName = '_SUM_PLAN_VALUE_ADDED'
              Footer.ValueType = fvtFieldValue
              Footers = <>
              Tag = 714
              Title.Caption = #1055#1083#1072#1085'|'#1048#1056'1*'
              Width = 60
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_PLAN_PERCENT'
              Footer.FieldName = '_AVG_PLAN_PERCENT'
              Footer.ValueType = fvtFieldValue
              Footers = <>
              Tag = 714
              Title.Caption = #1055#1083#1072#1085'|'#1048#1056'1 %'
              Width = 24
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'LEASE_PLAN_DATE_UNIT_QTY'
              Footers = <>
              Tag = 715
              Title.Caption = #1055#1083#1072#1085'|'#1050'-'#1074#1086' '#1053#1084'.'#1057#1090'.'
              Visible = False
              Width = 40
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'LEASE_DATE_UNIT_NAME'
              Footers = <>
              Tag = 715
              Title.Caption = #1055#1083#1072#1085'|'#1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072
              Visible = False
              Width = 59
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PLAN_VALUE_GAINED'
              Footers = <>
              Tag = 715
              Title.Caption = #1055#1083#1072#1085'|'#1055#1057'*'
              Visible = False
              Width = 45
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'OTCH_QUANTITY'
              Footer.FieldName = '_SUM_OTCH_QUANTITY'
              Footer.ValueType = fvtFieldValue
              Footers = <>
              Tag = 506
              Title.Caption = #1054#1090#1095#1077#1090'|'#1056#1072#1073'. '#1050'-'#1074#1086
              Visible = False
              Width = 30
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'OTCH_ACCOUNT_QUANTITY'
              Footer.FieldName = '_SUM_OTCH_ACCOUNT_QUANTITY'
              Footer.ValueType = fvtFieldValue
              Footers = <>
              Tag = 406
              Title.Caption = #1054#1090#1095#1077#1090'|'#1057#1095#1077#1090'. '#1050'-'#1074#1086
              Visible = False
              Width = 30
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'OTCH_VALUE_GAINED'
              Footer.FieldName = '_SUM_OTCH_VALUE_GAINED'
              Footer.ValueType = fvtFieldValue
              Footers = <>
              Tag = 614
              Title.Caption = #1054#1090#1095#1077#1090'|'#1055#1057'*'
              Visible = False
              Width = 60
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_OTCH_VALUE_ADDED'
              Footer.FieldName = '_SUM_OTCH_VALUE_ADDED'
              Footer.ValueType = fvtFieldValue
              Footers = <>
              Tag = 614
              Title.Caption = #1054#1090#1095#1077#1090'|'#1048#1056'1*'
              Visible = False
              Width = 60
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_OTCH_PERCENT'
              Footer.FieldName = '_AVG_OTCH_PERCENT'
              Footer.ValueType = fvtFieldValue
              Footers = <>
              Tag = 614
              Title.Caption = #1054#1090#1095#1077#1090'|'#1048#1056'1 %'
              Visible = False
              Width = 24
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'LEASE_DATE_UNIT_QTY'
              Footers = <>
              Tag = 615
              Title.Caption = #1054#1090#1095#1077#1090'|'#1050'-'#1074#1086' '#1053#1084'.'#1057#1090'.'
              Visible = False
              Width = 40
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'LEASE_DATE_UNIT_NAME'
              Footers = <>
              Tag = 615
              Title.Caption = #1054#1090#1095#1077#1090'|'#1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072
              Visible = False
              Width = 59
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'OTCH_VALUE_GAINED'
              Footers = <>
              Tag = 615
              Title.Caption = #1054#1090#1095#1077#1090'|'#1055#1057'*'
              Visible = False
              Width = 45
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_DEV_QUANTITY'
              Footer.FieldName = '_SUM_DEV_QUANTITY'
              Footer.ValueType = fvtFieldValue
              Footers = <>
              Tag = 516
              Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1056#1072#1073'. '#1050'-'#1074#1086
              Width = 30
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_DEV_ACCOUNT_QUANTITY'
              Footer.FieldName = '_SUM_DEV_ACCOUNT_QUANTITY'
              Footer.ValueType = fvtFieldValue
              Footers = <>
              Tag = 416
              Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1057#1095#1077#1090'. '#1050'-'#1074#1086
              Visible = False
              Width = 30
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_DEV_VALUE_ADDED'
              Footer.FieldName = '_SUM_DEV_VALUE_ADDED'
              Footer.ValueType = fvtFieldValue
              Footers = <>
              Tag = 1416
              Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1048#1056'1*'
              Width = 116
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_DEV_LEASE_DATE_UNIT_QTY'
              Footers = <>
              Tag = 1516
              Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1050'-'#1074#1086' '#1053#1084'.'#1057#1090'.'
              Visible = False
              Width = 40
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_DEV_VALUE_GAINED'
              Footers = <>
              Tag = 1516
              Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1055#1057'*'
              Visible = False
              Width = 75
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'INVOICE_NO'
              Footers = <>
              Tag = 17
              Visible = False
              Width = 67
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'INVOICE_DATE'
              Footers = <>
              Tag = 17
              Visible = False
              Width = 62
            end
            item
              Alignment = taCenter
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'INVOICE_STATE_CODE'
              Footers = <>
              Tag = 17
              Title.Caption = #1060#1072#1082#1090#1091#1088#1072'|'#1058#1080#1087
              Title.Orientation = tohVertical
              Visible = False
              Width = 16
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
              Width = 16
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
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'INVOICE_DATA_DISCOUNT_PERCENT'
              Footers = <>
              Title.Caption = #1054#1090#1089#1090#1098#1087#1082#1072
              Visible = False
              Width = 30
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'CL_OFFER_RECEIVE_DATE'
              Footers = <>
              Title.Caption = #1044#1072#1090#1072' '#1085#1072' '#1087#1086#1083#1091#1095#1072#1074#1072#1085#1077' '#1087#1086#1080#1089#1082#1072#1085#1072' '#1086#1090' '#1050#1083#1080#1077#1085#1090
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'SINGLE_PRICE'
              Footers = <>
              Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1072' '#1077#1076#1080#1085#1080#1095#1085#1072' '#1094#1077#1085#1072
              Visible = False
              Width = 60
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'SINGLE_PRICE_CURRENCY_ABBREV'
              Footers = <>
              Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1072' '#1074#1072#1083#1091#1090#1072
              Visible = False
              Width = 60
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PLAN_TRANSPORT_QUANTITY'
              Footers = <>
              Title.Caption = #1055#1083#1072#1085'|'#1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1086' '#1082'-'#1074#1086
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'OTCH_TRANSPORT_QUANTITY'
              Footers = <>
              Title.Caption = #1054#1090#1095#1077#1090'|'#1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1086' '#1082'-'#1074#1086
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'TRANSPORT_MEASURE_ABBREV'
              Footers = <>
              Title.Caption = #1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1072' '#1052'.'#1077#1076'.'
              Visible = False
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object pnlSingleExpsTopPadding: TPanel
          Left = 0
          Top = 0
          Width = 1017
          Height = 13
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 3
          object lblSingleNowDate: TLabel
            Left = 766
            Top = 2
            Width = 3
            Height = 13
            Alignment = taRightJustify
          end
        end
        object pnlInterval: TPanel
          Left = 280
          Top = -4
          Width = 337
          Height = 41
          BevelOuter = bvNone
          TabOrder = 4
          object lblSingleExpsDateInterval: TLabel
            Left = 0
            Top = 3
            Width = 119
            Height = 13
            Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1103
          end
          object lblSaleDealType2: TLabel
            Left = 152
            Top = 3
            Width = 46
            Height = 13
            Caption = #1058#1080#1087' '#1054#1055#1055
          end
          object lblLeaseDateUnit: TLabel
            Left = 208
            Top = 3
            Width = 80
            Height = 13
            Caption = #1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072
          end
          inline frSingleExpsDateInterval: TfrDateIntervalFrame
            Left = 0
            Top = 17
            Width = 145
            Height = 21
            Constraints.MaxHeight = 21
            Constraints.MaxWidth = 145
            Constraints.MinHeight = 21
            Constraints.MinWidth = 145
            TabOrder = 0
            TabStop = True
            inherited dsData: TDataSource
              DataSet = pdsSingleExps
            end
          end
          object edtSaleDealType2: TDBEdit
            Left = 152
            Top = 17
            Width = 49
            Height = 21
            Color = clBtnFace
            DataField = '_SALE_DEAL_TYPE_SHOW_NAME'
            DataSource = dsSingleExpsParams
            ReadOnly = True
            TabOrder = 1
          end
          object edtLeaseDateUnit: TDBEdit
            Left = 208
            Top = 17
            Width = 97
            Height = 21
            Color = clBtnFace
            DataField = '_LEASE_DATE_UNIT_NAME'
            DataSource = dsSingleExpsParams
            ReadOnly = True
            TabOrder = 2
          end
        end
      end
    end
  end
  inherited pnlBottomButtons: TPanel
    Top = 578
    Width = 1025
    Height = 39
    TabOrder = 2
    object lblComment: TLabel [0]
      Left = 8
      Top = 12
      Width = 657
      Height = 13
      Caption = 
        '* '#1089#1090#1086#1081#1085#1086#1089#1090#1080#1090#1077' '#1089#1072' '#1074' %s     |     '#1055#1057' - '#1055#1088#1080#1076#1086#1073#1080#1074#1072#1085#1072' '#1057#1090#1086#1081#1085#1086#1089#1090'     | ' +
        '    '#1048#1056'1%%%% - '#1055#1088#1086#1094#1077#1085#1090' '#1086#1090' '#1055#1057' '#1085#1072' '#1048#1085#1076#1091#1089#1090#1088#1080#1072#1083#1085#1080#1103' '#1056#1077#1079#1091#1083#1090#1072#1090' '#1086#1090' 1-'#1074#1080' '#1088#1077 +
        #1076
    end
    inherited pnlOKCancel: TPanel
      Left = 757
      Height = 39
      Visible = False
      inherited btnOK: TBitBtn
        Top = 6
      end
      inherited btnCancel: TBitBtn
        Top = 6
      end
    end
    inherited pnlClose: TPanel
      Left = 668
      Height = 39
      Visible = True
      inherited btnClose: TBitBtn
        Top = 6
      end
    end
    inherited pnlApply: TPanel
      Left = 936
      Height = 39
      Visible = False
      inherited btnApply: TBitBtn
        Top = 6
      end
    end
  end
  object pnlTopRightButtons: TPanel [2]
    Left = 955
    Top = 0
    Width = 70
    Height = 24
    Anchors = [akTop, akRight]
    BevelOuter = bvNone
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    object btnToggleProductDisplay: TSpeedButton
      Tag = 2
      Left = 47
      Top = 0
      Width = 23
      Height = 24
      Hint = 'id '#1083#1086#1075#1080#1095#1077#1089#1082#1080' / '#1054#1079#1085#1072#1095#1077#1085#1080#1077' '#1086#1090' '#1050#1083#1080#1077#1085#1090
      AllowAllUp = True
      GroupIndex = 1
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
    end
  end
  inherited alActions: TActionList
    Left = 16
    Top = 400
    inherited actForm: TAction
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1055#1088#1086#1076#1072#1078#1073#1080' '#1079#1072' %ProductClassAbbrev%'
    end
    object actFilterSingleExps: TAction
      ImageIndex = 3
      OnExecute = actFilterSingleExpsExecute
      OnUpdate = actFilterSingleExpsUpdate
    end
    object actFilterExpGroups: TAction
      ImageIndex = 3
      OnExecute = actFilterExpGroupsExecute
      OnUpdate = actFilterExpGroupsUpdate
    end
    object actEditSaleFromGroups: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
      ImageIndex = 6
      OnExecute = actEditSaleFromGroupsExecute
      OnUpdate = actEditSaleFromGroupsUpdate
    end
    object actEditSale: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
      ImageIndex = 6
      OnExecute = actEditSaleExecute
      OnUpdate = actEditSaleUpdate
    end
    object actPrint2ndPage: TAction
      Caption = #1055#1077#1095#1072#1090
      Hint = #1055#1077#1095#1072#1090
      ImageIndex = 2
      OnExecute = actPrint2ndPageExecute
      OnUpdate = actPrint2ndPageUpdate
    end
    object actPrint1stPage: TAction
      Caption = #1055#1077#1095#1072#1090
      Hint = #1055#1077#1095#1072#1090
      ImageIndex = 2
      OnExecute = actPrint1stPageExecute
      OnUpdate = actPrint1stPageUpdate
    end
    object actExcelExportExpGroups: TAction
      Hint = #1045#1082#1089#1087#1086#1088#1090' '#1082#1098#1084' Excel'
      ImageIndex = 83
      OnExecute = actExcelExportExpGroupsExecute
      OnUpdate = actExcelExportExpGroupsUpdate
    end
    object actExcelExportSingleExps: TAction
      Hint = #1045#1082#1089#1087#1086#1088#1090' '#1082#1098#1084' Excel'
      ImageIndex = 83
      OnExecute = actExcelExportSingleExpsExecute
      OnUpdate = actExcelExportSingleExpsUpdate
    end
    object actShipmentNeededMaterials: TAction
      Caption = #1052#1072#1090#1077#1088#1080#1072#1083#1080' '#1087#1086' '#1077#1082#1089#1087#1077#1076#1080#1094#1080#1080'...'
      ImageIndex = 15
      OnExecute = actShipmentNeededMaterialsExecute
      OnUpdate = actShipmentNeededMaterialsUpdate
    end
    object actShowProductVIMForExpFromGroup: TAction
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1042#1048#1052' '#1085#1072' %ProductClassNameWithThePrefix% '#1086#1090' '#1080#1079#1073#1088#1072#1085#1080#1103' '#1088#1077#1076
      ImageIndex = 30
      OnExecute = actShowProductVIMForExpFromGroupExecute
      OnUpdate = actShowProductVIMForExpFromGroupUpdate
    end
    object actShowVIMForSingleExp: TAction
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1042#1048#1052' '#1085#1072' %ProductClassNameWithThePrefix% '#1086#1090' '#1080#1079#1073#1088#1072#1085#1080#1103' '#1088#1077#1076
      ImageIndex = 30
      OnExecute = actShowVIMForSingleExpExecute
      OnUpdate = actShowVIMForSingleExpUpdate
    end
    object actExpGroupsDetailShowWorkQuantities: TAction
      AutoCheck = True
      Checked = True
      GroupIndex = 5
      Hint = #1056#1072#1073#1086#1090#1085#1080' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072
      ImageIndex = 23
      OnExecute = actExpGroupsDetailShowWorkQuantitiesExecute
    end
    object actExpGroupsDetailShowAccountQuantities: TAction
      AutoCheck = True
      GroupIndex = 5
      Hint = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1080' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072
      ImageIndex = 28
      OnExecute = actExpGroupsDetailShowAccountQuantitiesExecute
    end
    object actExpGroupsDetailShowQty: TAction
      Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
      Checked = True
      GroupIndex = 9
      OnExecute = actExpGroupsDetailShowQtyExecute
    end
    object actExpGroupsDetailShowDates: TAction
      Caption = #1044#1072#1090#1080' '#1045#1082#1089#1087'/'#1055#1083#1095'/'#1042#1088#1097
      GroupIndex = 9
      OnExecute = actExpGroupsDetailShowDatesExecute
    end
    object actGroupExpsExceptEvents: TAction
      Caption = #1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103'...'
      Hint = #1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103
      OnExecute = actGroupExpsExceptEventsExecute
      OnUpdate = actGroupExpsExceptEventsUpdate
    end
    object actSingleExpsExceptEvents: TAction
      Caption = #1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103'...'
      Hint = #1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103
      OnExecute = actSingleExpsExceptEventsExecute
      OnUpdate = actSingleExpsExceptEventsUpdate
    end
  end
  inherited dsData: TDataSource
    Left = 36
    Top = 128
  end
  inherited cdsData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conSaleReports
    Params = <
      item
        DataType = ftFloat
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_DEAL_TYPE_CODE'
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
        Name = 'RECEIVE_PLACE_OFFICE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_PLACE_OFFICE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_SALE_SHIPMENT_STATE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_SALE_SHIPMENT_STATE_CODE'
        ParamType = ptInput
        Value = '8'
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
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
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_IMPORT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_IMPORT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_IMPORT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_IMPORT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_DATE_BEGIN_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_DATE_BEGIN_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_DATE_END_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_DATE_END_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IMPORT_DATE_BEGIN_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IMPORT_DATE_BEGIN_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IMPORT_DATE_END_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IMPORT_DATE_END_RSV'
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
        Name = 'COUNTRY_CODE'
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
        Name = 'DAMAGES_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_GROUP_TYPE'
        ParamType = ptInput
        Value = '1'
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
    ProviderName = 'prvExpGroupMaster'
    BeforeOpen = cdsDataBeforeOpen
    AfterOpen = cdsDataAfterOpen
    BeforeClose = cdsDataBeforeClose
    OnCalcFields = cdsDataCalcFields
    Left = 5
    Top = 128
    object cdsDataGROUP_DATE_STATUS_CODE: TAbmesFloatField
      FieldName = 'GROUP_DATE_STATUS_CODE'
      FieldValueType = fvtInteger
    end
    object cdsDataIS_OTCH: TAbmesFloatField
      FieldName = 'IS_OTCH'
      FieldValueType = fvtBoolean
    end
    object cdsDataSHIPMENT_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1077#1082#1089#1087#1077#1076#1080#1094#1080#1103
      FieldName = 'SHIPMENT_DATE'
    end
    object cdsDataCLIENT_COMPANY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_CODE'
    end
    object cdsDataRECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField
      FieldName = 'RECEIVE_PLACE_OFFICE_CODE'
    end
    object cdsDataCLENT_COMPANY_NAME: TAbmesWideStringField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      FieldName = 'CLENT_COMPANY_NAME'
    end
    object cdsDataOFFICE_NAME: TAbmesWideStringField
      DisplayLabel = #1052#1103#1089#1090#1086' '#1085#1072' '#1087#1086#1083#1091#1095#1072#1074#1072#1085#1077
      FieldName = 'OFFICE_NAME'
      Size = 50
    end
    object cdsDataPLAN_VALUE_GAINED: TAbmesFloatField
      DisplayLabel = #1055#1083#1072#1085'|*'#1055#1057
      FieldName = 'PLAN_VALUE_GAINED'
      DisplayFormat = ',0'
    end
    object cdsDataPLAN_VALUE_INVESTED: TAbmesFloatField
      FieldName = 'PLAN_VALUE_INVESTED'
      DisplayFormat = ',0'
    end
    object cdsDataOTCH_VALUE_GAINED: TAbmesFloatField
      DisplayLabel = #1054#1090#1095#1077#1090'|*'#1055#1057
      FieldName = 'OTCH_VALUE_GAINED'
      DisplayFormat = ',0'
    end
    object cdsDataOTCH_VALUE_INVESTED: TAbmesFloatField
      FieldName = 'OTCH_VALUE_INVESTED'
      DisplayFormat = ',0'
    end
    object cdsDataAVG_TIME_DEV: TAbmesFloatField
      FieldName = 'AVG_TIME_DEV'
      DisplayFormat = '#'
    end
    object cdsDataMIN_TIME_DEV: TAbmesFloatField
      FieldName = 'MIN_TIME_DEV'
      DisplayFormat = '#'
    end
    object cdsData_PLAN_VALUE_ADDED: TAbmesFloatField
      DisplayLabel = #1055#1083#1072#1085'|*'#1048#1056'1'
      FieldKind = fkInternalCalc
      FieldName = '_PLAN_VALUE_ADDED'
      DisplayFormat = ',0'
    end
    object cdsData_PLAN_PERCENT: TAbmesFloatField
      DisplayLabel = #1055#1083#1072#1085'|%'
      FieldKind = fkCalculated
      FieldName = '_PLAN_PERCENT'
      DisplayFormat = ',#'
      Calculated = True
    end
    object cdsData_OTCH_VALUE_ADDED: TAbmesFloatField
      DisplayLabel = #1054#1090#1095#1077#1090'|*'#1048#1056'1'
      FieldKind = fkInternalCalc
      FieldName = '_OTCH_VALUE_ADDED'
      DisplayFormat = ',0'
    end
    object cdsData_OTCH_PERCENT: TAbmesFloatField
      DisplayLabel = #1054#1090#1095#1077#1090'|%'
      FieldKind = fkCalculated
      FieldName = '_OTCH_PERCENT'
      DisplayFormat = ',#'
      Calculated = True
    end
    object cdsData_DEV_TIME: TAbmesFloatField
      DisplayLabel = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1103'|'#1076#1085#1080
      FieldKind = fkCalculated
      FieldName = '_DEV_TIME'
      DisplayFormat = '#'
      Calculated = True
    end
    object cdsData_DEV_VALUE_GAINED: TAbmesFloatField
      DisplayLabel = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1103'|*'#1055#1057
      FieldKind = fkInternalCalc
      FieldName = '_DEV_VALUE_GAINED'
      DisplayFormat = ',0'
    end
    object cdsData_DEV_VALUE_ADDED: TAbmesFloatField
      DisplayLabel = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1103'|*'#1048#1056'1'
      FieldKind = fkInternalCalc
      FieldName = '_DEV_VALUE_ADDED'
      DisplayFormat = ',0'
    end
    object cdsDataUNCOVERED_LINES: TAbmesFloatField
      FieldName = 'UNCOVERED_LINES'
      OnGetText = cdsDataUNCOVERED_LINESGetText
    end
    object cdsData_AVG_PLAN_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_AVG_PLAN_PERCENT'
      DisplayFormat = ',#'
      Calculated = True
    end
    object cdsData_AVG_OTCH_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_AVG_OTCH_PERCENT'
      DisplayFormat = ',#'
      Calculated = True
    end
    object cdsDataMIN_TRANSPORT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'MIN_TRANSPORT_MEASURE_CODE'
    end
    object cdsDataMAX_TRANSPORT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'MAX_TRANSPORT_MEASURE_CODE'
    end
    object cdsDataTRANSPORT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'TRANSPORT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsDataPLAN_TRANSPORT_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_TRANSPORT_QUANTITY'
      DisplayFormat = ',#'
    end
    object cdsDataOTCH_TRANSPORT_QUANTITY: TAbmesFloatField
      FieldName = 'OTCH_TRANSPORT_QUANTITY'
      DisplayFormat = ',#'
    end
    object cdsData_PLAN_TRANSPORT_QUANTITY: TAbmesWideStringField
      Alignment = taRightJustify
      FieldKind = fkCalculated
      FieldName = '_PLAN_TRANSPORT_QUANTITY'
      Size = 50
      Calculated = True
    end
    object cdsData_OTCH_TRANSPORT_QUANTITY: TAbmesWideStringField
      Alignment = taRightJustify
      FieldKind = fkCalculated
      FieldName = '_OTCH_TRANSPORT_QUANTITY'
      Size = 50
      Calculated = True
    end
    object cdsData_TRANSPORT_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_TRANSPORT_MEASURE_ABBREV'
      Size = 10
      Calculated = True
    end
    object cdsDataIS_INVOICE_DATE_NULL: TAbmesFloatField
      FieldName = 'IS_INVOICE_DATE_NULL'
      FieldValueType = fvtBoolean
    end
    object cdsDataEXP_GROUP_STATE_CODE: TAbmesFloatField
      FieldName = 'EXP_GROUP_STATE_CODE'
      OnGetText = cdsDataEXP_GROUP_STATE_CODEGetText
    end
    object cdsDataEXP_GROUP_DAMAGES_STATE_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'EXP_GROUP_DAMAGES_STATE_CODE'
      OnGetText = cdsDataEXP_GROUP_DAMAGES_STATE_CODEGetText
    end
    object cdsDataCLIENT_STATUS_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_STATUS_NAME'
      Size = 100
    end
    object cdsDataIS_VENDOR_TRANSPORT: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'IS_VENDOR_TRANSPORT'
      DisplayBoolValues = #1050#1083#1080#1077#1085#1090';'#1048#1055
      FieldValueType = fvtBoolean
    end
    object cdsData_DEV_TRANSPORT_QUANTITY: TAbmesWideStringField
      Alignment = taRightJustify
      FieldKind = fkCalculated
      FieldName = '_DEV_TRANSPORT_QUANTITY'
      Size = 50
      Calculated = True
    end
    object cdsDataCLIENT_COMPANY_NO: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_NO'
      Required = True
    end
    object cdsData_SUM_OTCH_VALUE_GAINED: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_OTCH_VALUE_GAINED'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(OTCH_VALUE_GAINED)'
    end
    object cdsData_SUM_PLAN_VALUE_GAINED: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_PLAN_VALUE_GAINED'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(PLAN_VALUE_GAINED)'
    end
    object cdsData_SUM_PLAN_VALUE_ADDED: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_PLAN_VALUE_ADDED'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(PLAN_VALUE_GAINED) - Sum(PLAN_VALUE_INVESTED)'
    end
    object cdsData_SUM_OTCH_VALUE_ADDED: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_OTCH_VALUE_ADDED'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(OTCH_VALUE_GAINED) - Sum(OTCH_VALUE_INVESTED)'
    end
    object cdsData_SUM_DEV_VALUE_GAINED: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_DEV_VALUE_GAINED'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(_DEV_VALUE_GAINED)'
    end
    object cdsData_SUM_DEV_VALUE_ADDED: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_DEV_VALUE_ADDED'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(_DEV_VALUE_ADDED)'
    end
    object cdsData_SUM_PLAN_TRANSPORT_QUANTITY: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_PLAN_TRANSPORT_QUANTITY'
      OnGetText = cdsData_SUM_PLAN_TRANSPORT_QUANTITYGetText
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(PLAN_TRANSPORT_QUANTITY)'
    end
    object cdsData_SUM_OTCH_TRANSPORT_QUANTITY: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_OTCH_TRANSPORT_QUANTITY'
      OnGetText = cdsData_SUM_OTCH_TRANSPORT_QUANTITYGetText
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(OTCH_TRANSPORT_QUANTITY)'
    end
    object cdsData_SUM_DEV_TRANSPORT_QUANTITY: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_DEV_TRANSPORT_QUANTITY'
      OnGetText = cdsData_SUM_DEV_TRANSPORT_QUANTITYGetText
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(OTCH_TRANSPORT_QUANTITY) - Sum(PLAN_TRANSPORT_QUANTITY)'
    end
    object cdsData_MAX_TRANSPORT_MEASURE_CODE: TAggregateField
      FieldName = '_MAX_TRANSPORT_MEASURE_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Max(MAX_TRANSPORT_MEASURE_CODE)'
    end
    object cdsData_MIN_TRANSPORT_MEASURE_CODE: TAggregateField
      FieldName = '_MIN_TRANSPORT_MEASURE_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Min(MIN_TRANSPORT_MEASURE_CODE)'
    end
    object cdsData_MIN_TRANSPORT_MEASURE_ABBREV: TAggregateField
      FieldName = '_MIN_TRANSPORT_MEASURE_ABBREV'
      OnGetText = cdsData_MIN_TRANSPORT_MEASURE_ABBREVGetText
      Active = True
      DisplayName = ''
      Expression = 'Min(MIN_TRANSPORT_MEASURE_CODE)'
    end
  end
  object cdsExpGroupsDetail: TAbmesClientDataSet
    Aggregates = <>
    AggregatesActive = True
    ConnectionBroker = dmMain.conSaleReports
    Filter = 'IS_ANNULED = 0'
    Filtered = True
    FieldDefs = <
      item
        Name = 'IS_OTCH'
        DataType = ftFloat
      end
      item
        Name = 'SHIPMENT_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'IS_INVOICE_DATE_NULL'
        DataType = ftFloat
      end
      item
        Name = 'CLIENT_COMPANY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'RECEIVE_PLACE_OFFICE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SALE_ID'
        DataType = ftWideString
        Size = 128
      end
      item
        Name = 'SALE_ORDER_TYPE_ABBREV'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'SALE_ORDER_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SALE_GROUP_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SALE_GROUP_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SALE_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SALE_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SALE_SHIPMENT_NO'
        DataType = ftFloat
      end
      item
        Name = 'REQUEST_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'REQUEST_NO'
        DataType = ftFloat
      end
      item
        Name = 'REQUEST_LINE_NO'
        DataType = ftFloat
      end
      item
        Name = 'CLIENT_REQUEST_NO'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'PRIORITY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRIORITY_NO'
        DataType = ftFloat
      end
      item
        Name = 'PRIORITY_FULL_NAME'
        DataType = ftWideString
        Size = 94
      end
      item
        Name = 'PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_NO'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'CLIENT_PRODUCT_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'PLAN_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'PLAN_VALUE_GAINED'
        DataType = ftFloat
      end
      item
        Name = 'PLAN_VALUE_INVESTED'
        DataType = ftFloat
      end
      item
        Name = 'OTCH_VALUE_GAINED'
        DataType = ftFloat
      end
      item
        Name = 'OTCH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'OTCH_VALUE_INVESTED'
        DataType = ftFloat
      end
      item
        Name = 'IS_ANNULED'
        DataType = ftFloat
      end
      item
        Name = 'UNCOVERED_LINES'
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
        Name = 'LEASE_DATE_UNIT_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'LEASE_PLAN_DATE_UNIT_QTY'
        DataType = ftFloat
      end
      item
        Name = 'LEASE_DATE_UNIT_QTY'
        DataType = ftFloat
      end
      item
        Name = 'ACCOUNT_MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'PLAN_ACCOUNT_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'OTCH_ACCOUNT_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'SALE_SHIPMENT_STATE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'INVOICE_STATE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'RECEIVE_DATE_RSV'
        DataType = ftFloat
      end
      item
        Name = 'IMPORT_DATE_RSV'
        DataType = ftFloat
      end
      item
        Name = 'RECEIVE_PLAN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'IMPORT_PLAN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'RECEIVE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'IMPORT_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'DAMAGES_STATE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SHIPMENT_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SHIPMENT_OBJECT_CODE'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 
          'SHIPMENT_DATE;CLIENT_COMPANY_CODE;RECEIVE_PLACE_OFFICE_CODE;IS_I' +
          'NVOICE_DATE_NULL;IS_VENDOR_TRANSPORT;SALE_ID'
      end>
    IndexName = 'idxDefault'
    MasterFields = 
      'SHIPMENT_DATE;CLIENT_COMPANY_CODE;RECEIVE_PLACE_OFFICE_CODE;IS_I' +
      'NVOICE_DATE_NULL;IS_VENDOR_TRANSPORT'
    MasterSource = dsData
    Params = <
      item
        DataType = ftFloat
        Name = 'LEASE_GROUP_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_GROUP_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_DEAL_TYPE_CODE'
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
        Name = 'RECEIVE_PLACE_OFFICE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_PLACE_OFFICE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_SALE_SHIPMENT_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_SALE_SHIPMENT_STATE_CODE'
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
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_GROUP_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_GROUP_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_IMPORT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_IMPORT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_IMPORT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_IMPORT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_DATE_BEGIN_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_DATE_BEGIN_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_DATE_END_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_DATE_END_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IMPORT_DATE_BEGIN_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IMPORT_DATE_BEGIN_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IMPORT_DATE_END_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IMPORT_DATE_END_RSV'
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
        Name = 'COUNTRY_CODE'
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
        ParamType = ptUnknown
      end>
    ProviderName = 'prvExpGroupsDetail'
    StoreDefs = True
    BeforeOpen = cdsExpGroupsDetailBeforeOpen
    AfterOpen = cdsExpGroupsDetailAfterOpen
    OnCalcFields = cdsExpGroupsDetailCalcFields
    Left = 28
    Top = 240
    object cdsExpGroupsDetailIS_OTCH: TAbmesFloatField
      FieldName = 'IS_OTCH'
      FieldValueType = fvtBoolean
    end
    object cdsExpGroupsDetailSHIPMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'SHIPMENT_DATE'
    end
    object cdsExpGroupsDetailCLIENT_COMPANY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_CODE'
    end
    object cdsExpGroupsDetailRECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField
      FieldName = 'RECEIVE_PLACE_OFFICE_CODE'
    end
    object cdsExpGroupsDetailSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
    end
    object cdsExpGroupsDetailSALE_ORDER_TYPE_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      DisplayLabel = #1042#1080#1076' '#1076#1083#1075'.'
      FieldName = 'SALE_ORDER_TYPE_ABBREV'
      Size = 100
    end
    object cdsExpGroupsDetailSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_OBJECT_BRANCH_CODE'
    end
    object cdsExpGroupsDetailSALE_GROUP_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_OBJECT_CODE'
    end
    object cdsExpGroupsDetailSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object cdsExpGroupsDetailSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
    end
    object cdsExpGroupsDetailSALE_SHIPMENT_NO: TAbmesFloatField
      FieldName = 'SALE_SHIPMENT_NO'
    end
    object cdsExpGroupsDetailREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object cdsExpGroupsDetailREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
    object cdsExpGroupsDetailREQUEST_LINE_NO: TAbmesFloatField
      FieldName = 'REQUEST_LINE_NO'
    end
    object cdsExpGroupsDetailCLIENT_REQUEST_NO: TAbmesWideStringField
      DisplayLabel = #1050#1083'. '#1086#1079#1085'. '#1085#1072' '#1076#1083#1075'.'
      FieldName = 'CLIENT_REQUEST_NO'
      Size = 250
    end
    object cdsExpGroupsDetailSALE_ID: TAbmesWideStringField
      DisplayLabel = 'ID '#1054#1055#1055'|'#1082#1083'./N/'#1088#1082
      FieldName = 'SALE_ID'
      Size = 122
    end
    object cdsExpGroupsDetailPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
    end
    object cdsExpGroupsDetailPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
    object cdsExpGroupsDetailPRIORITY_FULL_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_FULL_NAME'
      Size = 94
    end
    object cdsExpGroupsDetailPRODUCT_NAME: TAbmesWideStringField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsExpGroupsDetailCLIENT_PRODUCT_NAME: TAbmesWideStringField
      DisplayLabel = #1054#1079#1085'. '#1085#1072' '#1059#1087#1088#1072#1074#1083#1103#1077#1084#1080#1103' '#1054#1073#1077#1082#1090' '#1086#1090' '#1050#1083'.'
      FieldName = 'CLIENT_PRODUCT_NAME'
      Size = 250
    end
    object cdsExpGroupsDetailMEASURE_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      DisplayLabel = #1055#1083#1072#1085'|'#1084'.'#1077#1076
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsExpGroupsDetailPLAN_QUANTITY: TAbmesFloatField
      DisplayLabel = #1055#1083#1072#1085'|'#1082'-'#1074#1086
      FieldName = 'PLAN_QUANTITY'
      DisplayFormat = ',#'
    end
    object cdsExpGroupsDetailPLAN_VALUE_GAINED: TAbmesFloatField
      DisplayLabel = #1055#1083#1072#1085'|*'#1055#1057
      FieldName = 'PLAN_VALUE_GAINED'
      OnGetText = cdsExpGroupsDetailPLAN_VALUE_GAINEDGetText
      DisplayFormat = ',0.##'
    end
    object cdsExpGroupsDetailPLAN_VALUE_INVESTED: TAbmesFloatField
      FieldName = 'PLAN_VALUE_INVESTED'
      DisplayFormat = ',0.##'
    end
    object cdsExpGroupsDetailOTCH_QUANTITY: TAbmesFloatField
      DisplayLabel = #1054#1090#1095#1077#1090'|'#1082'-'#1074#1086
      FieldName = 'OTCH_QUANTITY'
      DisplayFormat = ',#'
    end
    object cdsExpGroupsDetailOTCH_VALUE_GAINED: TAbmesFloatField
      DisplayLabel = #1054#1090#1095#1077#1090'|*'#1055#1057
      FieldName = 'OTCH_VALUE_GAINED'
      DisplayFormat = ',0.##'
    end
    object cdsExpGroupsDetailOTCH_VALUE_INVESTED: TAbmesFloatField
      FieldName = 'OTCH_VALUE_INVESTED'
      DisplayFormat = ',0.##'
    end
    object cdsExpGroupsDetailIS_ANNULED: TAbmesFloatField
      Alignment = taCenter
      DisplayLabel = 'A'
      FieldName = 'IS_ANNULED'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsExpGroupsDetail_PLAN_VALUE_ADDED: TAbmesFloatField
      DisplayLabel = #1055#1083#1072#1085'|*'#1048#1056'1'
      FieldKind = fkCalculated
      FieldName = '_PLAN_VALUE_ADDED'
      DisplayFormat = ',0.##'
      Calculated = True
    end
    object cdsExpGroupsDetail_PLAN_PERCENT: TAbmesFloatField
      DisplayLabel = #1055#1083#1072#1085'|%'
      FieldKind = fkCalculated
      FieldName = '_PLAN_PERCENT'
      DisplayFormat = ',#'
      Calculated = True
    end
    object cdsExpGroupsDetail_OTCH_VALUE_ADDED: TAbmesFloatField
      DisplayLabel = #1054#1090#1095#1077#1090'|*'#1048#1056'1'
      FieldKind = fkCalculated
      FieldName = '_OTCH_VALUE_ADDED'
      DisplayFormat = ',0.##'
      Calculated = True
    end
    object cdsExpGroupsDetail_OTCH_PERCENT: TAbmesFloatField
      DisplayLabel = #1054#1090#1095#1077#1090'|%'
      FieldKind = fkCalculated
      FieldName = '_OTCH_PERCENT'
      DisplayFormat = ',#'
      Calculated = True
    end
    object cdsExpGroupsDetail_DEV_QUANTITY: TAbmesFloatField
      DisplayLabel = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1103'|'#1082'-'#1074#1086
      FieldKind = fkInternalCalc
      FieldName = '_DEV_QUANTITY'
      DisplayFormat = ',#'
    end
    object cdsExpGroupsDetail_DEV_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldKind = fkInternalCalc
      FieldName = '_DEV_ACCOUNT_QUANTITY'
      DisplayFormat = ',#'
    end
    object cdsExpGroupsDetail_DEV_VALUE_GAINED: TAbmesFloatField
      DisplayLabel = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1103'|*'#1055#1057
      FieldKind = fkCalculated
      FieldName = '_DEV_VALUE_GAINED'
      DisplayFormat = ',0.##'
      Calculated = True
    end
    object cdsExpGroupsDetail_DEV_VALUE_ADDED: TAbmesFloatField
      DisplayLabel = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1103'|*'#1048#1056'1'
      FieldKind = fkCalculated
      FieldName = '_DEV_VALUE_ADDED'
      DisplayFormat = ',0.##'
      Calculated = True
    end
    object cdsExpGroupsDetailUNCOVERED_LINES: TAbmesFloatField
      FieldName = 'UNCOVERED_LINES'
      OnGetText = cdsExpGroupsDetailUNCOVERED_LINESGetText
    end
    object cdsExpGroupsDetailTRANSPORT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'TRANSPORT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsExpGroupsDetailPLAN_TRANSPORT_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_TRANSPORT_QUANTITY'
      DisplayFormat = ',#'
    end
    object cdsExpGroupsDetailOTCH_TRANSPORT_QUANTITY: TAbmesFloatField
      FieldName = 'OTCH_TRANSPORT_QUANTITY'
      DisplayFormat = ',#'
    end
    object cdsExpGroupsDetailPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsExpGroupsDetailPRODUCT_NO: TAbmesFloatField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'PRODUCT_NO'
    end
    object cdsExpGroupsDetailIS_INVOICE_DATE_NULL: TAbmesFloatField
      FieldName = 'IS_INVOICE_DATE_NULL'
      FieldValueType = fvtBoolean
    end
    object cdsExpGroupsDetailLEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object cdsExpGroupsDetailLEASE_PLAN_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'LEASE_PLAN_DATE_UNIT_QTY'
      DisplayFormat = ',0'
    end
    object cdsExpGroupsDetailLEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_QTY'
      DisplayFormat = ',0'
    end
    object cdsExpGroupsDetailACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsExpGroupsDetailPLAN_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_ACCOUNT_QUANTITY'
      DisplayFormat = ',#'
    end
    object cdsExpGroupsDetailOTCH_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'OTCH_ACCOUNT_QUANTITY'
      DisplayFormat = ',#'
    end
    object cdsExpGroupsDetailSALE_SHIPMENT_STATE_CODE: TAbmesFloatField
      FieldName = 'SALE_SHIPMENT_STATE_CODE'
      OnGetText = cdsExpGroupsDetailSALE_SHIPMENT_STATE_CODEGetText
    end
    object cdsExpGroupsDetailINVOICE_STATE_CODE: TAbmesFloatField
      FieldName = 'INVOICE_STATE_CODE'
      OnGetText = cdsExpGroupsDetailINVOICE_STATE_CODEGetText
    end
    object cdsExpGroupsDetail_PRIORITY_COLOR: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_PRIORITY_COLOR'
      LookupDataSet = cdsPriorities
      LookupKeyFields = 'PRIORITY_CODE'
      LookupResultField = 'PRIORITY_COLOR'
      KeyFields = 'PRIORITY_CODE'
      Lookup = True
    end
    object cdsExpGroupsDetail_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_PRIORITY_BACKGROUND_COLOR'
      LookupDataSet = cdsPriorities
      LookupKeyFields = 'PRIORITY_CODE'
      LookupResultField = 'PRIORITY_BACKGROUND_COLOR'
      KeyFields = 'PRIORITY_CODE'
      Lookup = True
    end
    object cdsExpGroupsDetail_DEV_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DEV_LEASE_DATE_UNIT_QTY'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsExpGroupsDetailRECEIVE_DATE_RSV: TAbmesFloatField
      FieldName = 'RECEIVE_DATE_RSV'
    end
    object cdsExpGroupsDetailIMPORT_DATE_RSV: TAbmesFloatField
      FieldName = 'IMPORT_DATE_RSV'
    end
    object cdsExpGroupsDetailRECEIVE_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_PLAN_DATE'
    end
    object cdsExpGroupsDetailIMPORT_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'IMPORT_PLAN_DATE'
    end
    object cdsExpGroupsDetailRECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_DATE'
    end
    object cdsExpGroupsDetailCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CL_OFFER_RECEIVE_DATE'
    end
    object cdsExpGroupsDetailIMPORT_DATE: TAbmesSQLTimeStampField
      FieldName = 'IMPORT_DATE'
    end
    object cdsExpGroupsDetailDAMAGES_STATE_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'DAMAGES_STATE_CODE'
      OnGetText = cdsExpGroupsDetailDAMAGES_STATE_CODEGetText
    end
    object cdsExpGroupsDetailSHIPMENT_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_OBJECT_BRANCH_CODE'
    end
    object cdsExpGroupsDetailSHIPMENT_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_OBJECT_CODE'
    end
    object cdsExpGroupsDetailIS_VENDOR_TRANSPORT: TAbmesFloatField
      FieldName = 'IS_VENDOR_TRANSPORT'
    end
    object cdsExpGroupsDetailMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object cdsExpGroupsDetailACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object cdsExpGroupsDetailTRANSPORT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'TRANSPORT_MEASURE_CODE'
    end
    object cdsExpGroupsDetailSALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object cdsExpGroupsDetail_SALE_DEAL_TYPE_SHOW_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SALE_DEAL_TYPE_SHOW_NAME'
      LookupDataSet = cdsSaleDealTypes
      LookupKeyFields = 'SALE_DEAL_TYPE_CODE'
      LookupResultField = '_SALE_DEAL_TYPE_SHOW_NAME'
      KeyFields = 'SALE_DEAL_TYPE_CODE'
      OnGetText = pdsExpGroupsMaster_SALE_DEAL_TYPE_SHOW_NAMEGetText
      Size = 100
      Lookup = True
    end
    object cdsExpGroupsDetail_SUM_PLAN_QUANTITY: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_PLAN_QUANTITY'
      OnGetText = cdsExpGroupsDetail_SUM_PLAN_QUANTITYGetText
      Active = True
      DisplayName = ''
      DisplayFormat = ',#'
      Expression = 'Sum(PLAN_QUANTITY)'
      GroupingLevel = 5
      IndexName = 'idxDefault'
    end
    object cdsExpGroupsDetail_SUM_PLAN_ACCOUNT_QUANTITY: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_PLAN_ACCOUNT_QUANTITY'
      OnGetText = cdsExpGroupsDetail_SUM_PLAN_ACCOUNT_QUANTITYGetText
      Active = True
      DisplayName = ''
      DisplayFormat = ',#'
      Expression = 'Sum(PLAN_ACCOUNT_QUANTITY)'
      GroupingLevel = 5
      IndexName = 'idxDefault'
    end
    object cdsExpGroupsDetail_SUM_PLAN_TRANSPORT_QUANTITY: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_PLAN_TRANSPORT_QUANTITY'
      OnGetText = cdsExpGroupsDetail_SUM_PLAN_TRANSPORT_QUANTITYGetText
      Active = True
      DisplayName = ''
      DisplayFormat = ',#'
      Expression = 'Sum(PLAN_TRANSPORT_QUANTITY)'
      GroupingLevel = 5
      IndexName = 'idxDefault'
    end
    object cdsExpGroupsDetail_SUM_OTCH_QUANTITY: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_OTCH_QUANTITY'
      OnGetText = cdsExpGroupsDetail_SUM_OTCH_QUANTITYGetText
      Active = True
      DisplayName = ''
      DisplayFormat = ',#'
      Expression = 'Sum(OTCH_QUANTITY)'
      GroupingLevel = 5
      IndexName = 'idxDefault'
    end
    object cdsExpGroupsDetail_SUM_OTCH_ACCOUNT_QUANTITY: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_OTCH_ACCOUNT_QUANTITY'
      OnGetText = cdsExpGroupsDetail_SUM_OTCH_ACCOUNT_QUANTITYGetText
      Active = True
      DisplayName = ''
      DisplayFormat = ',#'
      Expression = 'Sum(OTCH_ACCOUNT_QUANTITY)'
      GroupingLevel = 5
      IndexName = 'idxDefault'
    end
    object cdsExpGroupsDetail_SUM_OTCH_TRANSPORT_QUANTITY: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_OTCH_TRANSPORT_QUANTITY'
      OnGetText = cdsExpGroupsDetail_SUM_OTCH_TRANSPORT_QUANTITYGetText
      Active = True
      DisplayName = ''
      DisplayFormat = ',#'
      Expression = 'Sum(OTCH_TRANSPORT_QUANTITY)'
      GroupingLevel = 5
      IndexName = 'idxDefault'
    end
    object cdsExpGroupsDetail_SUM_DEV_QUANTITY: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_DEV_QUANTITY'
      OnGetText = cdsExpGroupsDetail_SUM_DEV_QUANTITYGetText
      Active = True
      DisplayName = ''
      DisplayFormat = ',#'
      Expression = 'Sum(_DEV_QUANTITY)'
      GroupingLevel = 5
      IndexName = 'idxDefault'
    end
    object cdsExpGroupsDetail_SUM_DEV_ACCOUNT_QUANTITY: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_DEV_ACCOUNT_QUANTITY'
      OnGetText = cdsExpGroupsDetail_SUM_DEV_ACCOUNT_QUANTITYGetText
      Active = True
      DisplayName = ''
      DisplayFormat = ',#'
      Expression = 'Sum(_DEV_ACCOUNT_QUANTITY)'
      GroupingLevel = 5
      IndexName = 'idxDefault'
    end
    object cdsExpGroupsDetail_MIN_MEASURE_CODE: TAggregateField
      FieldName = '_MIN_MEASURE_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Min(MEASURE_CODE)'
      GroupingLevel = 5
      IndexName = 'idxDefault'
    end
    object cdsExpGroupsDetail_MAX_MEASURE_CODE: TAggregateField
      FieldName = '_MAX_MEASURE_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Max(MEASURE_CODE)'
      GroupingLevel = 5
      IndexName = 'idxDefault'
    end
    object cdsExpGroupsDetail_MIN_ACCOUNT_MEASURE_CODE: TAggregateField
      FieldName = '_MIN_ACCOUNT_MEASURE_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Min(ACCOUNT_MEASURE_CODE)'
      GroupingLevel = 5
      IndexName = 'idxDefault'
    end
    object cdsExpGroupsDetail_MAX_ACCOUNT_MEASURE_CODE: TAggregateField
      FieldName = '_MAX_ACCOUNT_MEASURE_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Max(ACCOUNT_MEASURE_CODE)'
      GroupingLevel = 5
      IndexName = 'idxDefault'
    end
    object cdsExpGroupsDetail_MIN_TRANSPORT_MEASURE_CODE: TAggregateField
      FieldName = '_MIN_TRANSPORT_MEASURE_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Min(TRANSPORT_MEASURE_CODE)'
      GroupingLevel = 5
      IndexName = 'idxDefault'
    end
    object cdsExpGroupsDetail_MAX_TRANSPORT_MEASURE_CODE: TAggregateField
      FieldName = '_MAX_TRANSPORT_MEASURE_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Max(TRANSPORT_MEASURE_CODE)'
      GroupingLevel = 5
      IndexName = 'idxDefault'
    end
  end
  object pdsExpGroupsMaster: TParamDataSet
    BeforePost = pdsExpGroupsMasterBeforePost
    OnCalcFields = pdsExpGroupsMasterCalcFields
    DataSet = cdsData
    Left = 4
    Top = 160
    object pdsExpGroupsMasterCURRENT_FILTER_VARIANT_CODE: TAbmesFloatField
      FieldName = 'CURRENT_FILTER_VARIANT_CODE'
      FieldValueType = fvtInteger
    end
    object pdsExpGroupsMasterMIN_SALE_SHIPMENT_STATE_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1085#1072' '#1043#1088#1091#1087#1072' '#1054#1055#1055' '#1087#1086' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1103' - '#1054#1090
      FieldName = 'MIN_SALE_SHIPMENT_STATE_CODE'
    end
    object pdsExpGroupsMasterMAX_SALE_SHIPMENT_STATE_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1085#1072' '#1043#1088#1091#1087#1072' '#1054#1055#1055' '#1087#1086' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1103' - '#1044#1086
      FieldName = 'MAX_SALE_SHIPMENT_STATE_CODE'
    end
    object pdsExpGroupsMasterBRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1043#1083#1072#1074#1085#1086
      FieldName = 'BRANCH_CODE'
    end
    object pdsExpGroupsMasterSALE_DEAL_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1080#1087' '#1054#1055#1055
      FieldName = 'SALE_DEAL_TYPE_CODE'
      OnChange = pdsExpGroupsMasterSALE_DEAL_TYPE_CODEChange
    end
    object pdsExpGroupsMasterLEASE_DATE_UNIT_CODE: TAbmesFloatField
      DisplayLabel = #1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072
      FieldName = 'LEASE_DATE_UNIT_CODE'
    end
    object pdsExpGroupsMasterLEASE_GROUP_TYPE: TAbmesFloatField
      Alignment = taLeftJustify
      DisplayLabel = #1043#1088#1091#1087#1080#1088#1072#1085#1077' '#1087#1086
      FieldName = 'LEASE_GROUP_TYPE'
      OnGetText = pdsExpGroupsMasterLEASE_GROUP_TYPEGetText
    end
    object pdsExpGroupsMasterBEGIN_SHIPMENT_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1103' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_SHIPMENT_DATE'
    end
    object pdsExpGroupsMasterEND_SHIPMENT_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1103' - '#1050#1088#1072#1081
      FieldName = 'END_SHIPMENT_DATE'
    end
    object pdsExpGroupsMasterBEGIN_RECEIVE_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1086#1083#1091#1095#1072#1074#1072#1085#1077' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_RECEIVE_DATE'
    end
    object pdsExpGroupsMasterEND_RECEIVE_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1086#1083#1091#1095#1072#1074#1072#1085#1077' - '#1050#1088#1072#1081
      FieldName = 'END_RECEIVE_DATE'
    end
    object pdsExpGroupsMasterRECEIVE_DATE_BEGIN_RSV: TAbmesFloatField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1086#1083#1091#1095#1072#1074#1072#1085#1077' - '#1056#1077#1079#1077#1088#1074' - '#1054#1090
      FieldName = 'RECEIVE_DATE_BEGIN_RSV'
    end
    object pdsExpGroupsMasterRECEIVE_DATE_END_RSV: TAbmesFloatField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1086#1083#1091#1095#1072#1074#1072#1085#1077' - '#1056#1077#1079#1077#1088#1074' - '#1044#1086
      FieldName = 'RECEIVE_DATE_END_RSV'
    end
    object pdsExpGroupsMasterBEGIN_IMPORT_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1042#1088#1098#1097#1072#1085#1077' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_IMPORT_DATE'
    end
    object pdsExpGroupsMasterEND_IMPORT_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1042#1088#1098#1097#1072#1085#1077' - '#1050#1088#1072#1081
      FieldName = 'END_IMPORT_DATE'
    end
    object pdsExpGroupsMasterIMPORT_DATE_BEGIN_RSV: TAbmesFloatField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1042#1088#1098#1097#1072#1085#1077' - '#1056#1077#1079#1077#1088#1074' - '#1054#1090
      FieldName = 'IMPORT_DATE_BEGIN_RSV'
    end
    object pdsExpGroupsMasterIMPORT_DATE_END_RSV: TAbmesFloatField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1042#1088#1098#1097#1072#1085#1077' - '#1056#1077#1079#1077#1088#1074' - '#1044#1086
      FieldName = 'IMPORT_DATE_END_RSV'
    end
    object pdsExpGroupsMasterCHOSEN_PRODUCTS: TAbmesWideStringField
      DisplayLabel = '%ProductClassName%'
      FieldName = 'CHOSEN_PRODUCTS'
      Size = 4000
    end
    object pdsExpGroupsMasterCHOSEN_COMPANIES: TAbmesWideStringField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      FieldName = 'CHOSEN_COMPANIES'
      OnChange = pdsExpGroupsMasterCHOSEN_COMPANIESChange
      Size = 4000
    end
    object pdsExpGroupsMasterRECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField
      DisplayLabel = #1050#1083#1080#1077#1085#1090' - '#1058#1055
      FieldName = 'RECEIVE_PLACE_OFFICE_CODE'
    end
    object pdsExpGroupsMasterCOUNTRY_CODE: TAbmesFloatField
      DisplayLabel = #1050#1083#1080#1077#1085#1090' - '#1044#1098#1088#1078#1072#1074#1072
      FieldName = 'COUNTRY_CODE'
    end
    object pdsExpGroupsMasterDAMAGES_STATE_CODE: TAbmesFloatField
      DisplayLabel = #1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083'. - '#1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103
      FieldName = 'DAMAGES_STATE_CODE'
    end
    object pdsExpGroupsMasterPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = []
      OnChange = pdsExpGroupsMasterPRODUCT_CODEChange
    end
    object pdsExpGroupsMasterPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      OnGetText = pdsExpGroupsMasterPRODUCT_NAMEGetText
      Size = 100
    end
    object pdsExpGroupsMasterPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object pdsExpGroupsMasterIS_ANNULED: TAbmesFloatField
      FieldName = 'IS_ANNULED'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object pdsExpGroupsMasterIS_FINISHED: TAbmesFloatField
      FieldName = 'IS_FINISHED'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object pdsExpGroupsMasterIS_PAYMENT_EXPECTED: TAbmesFloatField
      FieldName = 'IS_PAYMENT_EXPECTED'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object pdsExpGroupsMasterIS_INVOICE_EXPECTED: TAbmesFloatField
      FieldName = 'IS_INVOICE_EXPECTED'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object pdsExpGroupsMasterIS_LATE: TAbmesFloatField
      FieldName = 'IS_LATE'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object pdsExpGroupsMasterIS_ACTUAL_LATE: TAbmesFloatField
      FieldName = 'IS_ACTUAL_LATE'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object pdsExpGroupsMasterIS_ACTUAL_FUTURE: TAbmesFloatField
      FieldName = 'IS_ACTUAL_FUTURE'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object pdsExpGroupsMasterIS_FUTURE: TAbmesFloatField
      FieldName = 'IS_FUTURE'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object pdsExpGroupsMaster_COUNTRY_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_COUNTRY_NAME'
      LookupDataSet = cdsCountries
      LookupKeyFields = 'COUNTRY_CODE'
      LookupResultField = 'COUNTRY_NAME'
      KeyFields = 'COUNTRY_CODE'
      OnGetText = pdsExpGroupsMaster_COUNTRY_NAMEGetText
      Size = 100
      Lookup = True
    end
    object pdsExpGroupsMaster_SALE_DEAL_TYPE_SHOW_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SALE_DEAL_TYPE_SHOW_NAME'
      LookupDataSet = cdsSaleDealTypes
      LookupKeyFields = 'SALE_DEAL_TYPE_CODE'
      LookupResultField = '_SALE_DEAL_TYPE_SHOW_NAME'
      KeyFields = 'SALE_DEAL_TYPE_CODE'
      OnGetText = pdsExpGroupsMaster_SALE_DEAL_TYPE_SHOW_NAMEGetText
      Size = 100
      Lookup = True
    end
    object pdsExpGroupsMaster_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_LEASE_DATE_UNIT_NAME'
      LookupDataSet = cdsDateUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'THE_DATE_UNIT_NAME'
      KeyFields = 'LEASE_DATE_UNIT_CODE'
      OnGetText = pdsExpGroupsMaster_LEASE_DATE_UNIT_NAMEGetText
      Size = 50
      Lookup = True
    end
    object pdsExpGroupsMaster_RECEIVE_PLACE_OFFICE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_RECEIVE_PLACE_OFFICE_NAME'
      LookupDataSet = cdsSaleExpGroupsCompanyOffices
      LookupKeyFields = 'OFFICE_CODE'
      LookupResultField = 'OFFICE_NAME'
      KeyFields = 'RECEIVE_PLACE_OFFICE_CODE'
      Size = 100
      Lookup = True
    end
    object pdsExpGroupsMaster_PRODUCT_CLASS_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRODUCT_CLASS_CODE'
      Calculated = True
    end
    object pdsExpGroupsMaster_SALE_BRANCH_CODE_AND_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SALE_BRANCH_CODE_AND_NAME'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_CODE_AND_NAME'
      KeyFields = 'BRANCH_CODE'
      ProviderFlags = []
      OnGetText = pdsSingleExps_SALE_BRANCH_CODE_AND_NAMEGetText
      Size = 100
      Lookup = True
    end
  end
  object dsExpGroupsParams: TDataSource
    DataSet = pdsExpGroupsMaster
    Left = 36
    Top = 160
  end
  object dsExpGroupsDetail: TDataSource
    DataSet = cdsExpGroupsDetail
    Left = 60
    Top = 240
  end
  object cdsSingleExps: TAbmesClientDataSet
    Aggregates = <>
    AggregatesActive = True
    ConnectionBroker = dmMain.conSaleReports
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_DEAL_TYPE_CODE'
        ParamType = ptInput
        Value = '1'
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
        Name = 'RECEIVE_PLACE_OFFICE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_PLACE_OFFICE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_SALE_SHIPMENT_STATE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_SALE_SHIPMENT_STATE_CODE'
        ParamType = ptInput
        Value = '8'
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
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
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BRANCH_CODE'
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
        Name = 'SALE_SHIPMENT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_SHIPMENT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_IMPORT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_IMPORT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_IMPORT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_IMPORT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_DATE_BEGIN_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_DATE_BEGIN_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_DATE_END_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_DATE_END_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IMPORT_DATE_BEGIN_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IMPORT_DATE_BEGIN_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IMPORT_DATE_END_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IMPORT_DATE_END_RSV'
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
        Name = 'COUNTRY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_INVOICE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_INVOICE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TO_INVOICE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TO_INVOICE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'START_INVOICE_PERIOD_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'START_INVOICE_PERIOD_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_INVOICE_PERIOD_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_INVOICE_PERIOD_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_DELIVERY'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'HAS_DELIVERY'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'HAS_DELIVERY'
        ParamType = ptInput
        Value = '0'
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
        Name = 'HAS_DELIVERY'
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
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptUnknown
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
      end>
    ProviderName = 'prvSingleExps'
    BeforeOpen = cdsSingleExpsBeforeOpen
    AfterOpen = cdsSingleExpsAfterOpen
    OnCalcFields = cdsSingleExpsCalcFields
    Left = 4
    Top = 328
    object cdsSingleExpsSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
    end
    object cdsSingleExpsSALE_ORDER_TYPE_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      DisplayLabel = #1042#1080#1076' '#1079#1072#1087'.'
      FieldName = 'SALE_ORDER_TYPE_ABBREV'
      Size = 100
    end
    object cdsSingleExpsSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_OBJECT_BRANCH_CODE'
    end
    object cdsSingleExpsSALE_GROUP_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_OBJECT_CODE'
    end
    object cdsSingleExpsSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object cdsSingleExpsSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
    end
    object cdsSingleExpsSALE_SHIPMENT_NO: TAbmesFloatField
      FieldName = 'SALE_SHIPMENT_NO'
    end
    object cdsSingleExpsREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object cdsSingleExpsREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
    object cdsSingleExpsREQUEST_LINE_NO: TAbmesFloatField
      FieldName = 'REQUEST_LINE_NO'
    end
    object cdsSingleExpsCLIENT_REQUEST_NO: TAbmesWideStringField
      DisplayLabel = #1050#1083'. '#1085#1086#1084#1077#1088' '#1085#1072' '#1087#1086#1088'.'
      FieldName = 'CLIENT_REQUEST_NO'
      Size = 250
    end
    object cdsSingleExpsSALE_ID: TAbmesWideStringField
      DisplayLabel = 'ID '#1054#1055#1055'|'#1082#1083'./N/'#1088#1082
      FieldName = 'SALE_ID'
      Size = 122
    end
    object cdsSingleExpsPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
    end
    object cdsSingleExpsPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
    object cdsSingleExpsPRIORITY_FULL_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_FULL_NAME'
      Size = 94
    end
    object cdsSingleExpsSHIPMENT_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1077#1082#1089#1087#1077#1076#1080#1094#1080#1103
      FieldName = 'SHIPMENT_DATE'
    end
    object cdsSingleExpsCLIENT_NAME: TAbmesWideStringField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      FieldName = 'CLIENT_NAME'
    end
    object cdsSingleExpsPRODUCT_NAME: TAbmesWideStringField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsSingleExpsCLIENT_PRODUCT_NAME: TAbmesWideStringField
      DisplayLabel = #1054#1079#1085'. '#1085#1072' '#1059#1054#1073' '#1086#1090' '#1082#1083#1080#1077#1085#1090
      FieldName = 'CLIENT_PRODUCT_NAME'
      Size = 250
    end
    object cdsSingleExpsMEASURE_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      DisplayLabel = #1055#1083#1072#1085'|'#1084'.'#1077#1076
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsSingleExpsPRODUCTION_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PRODUCTION_DEPT_IDENTIFIER'
      Size = 250
    end
    object cdsSingleExpsPLAN_QUANTITY: TAbmesFloatField
      DisplayLabel = #1055#1083#1072#1085'|'#1082'-'#1074#1086
      FieldName = 'PLAN_QUANTITY'
      DisplayFormat = ',#'
    end
    object cdsSingleExpsPLAN_VALUE_GAINED: TAbmesFloatField
      DisplayLabel = #1055#1083#1072#1085'|*'#1055#1057
      FieldName = 'PLAN_VALUE_GAINED'
      DisplayFormat = ',0'
    end
    object cdsSingleExpsPLAN_VALUE_INVESTED: TAbmesFloatField
      FieldName = 'PLAN_VALUE_INVESTED'
      DisplayFormat = ',0'
    end
    object cdsSingleExpsOTCH_QUANTITY: TAbmesFloatField
      DisplayLabel = #1054#1090#1095#1077#1090'|'#1082'-'#1074#1086
      FieldName = 'OTCH_QUANTITY'
      DisplayFormat = ',#'
    end
    object cdsSingleExpsOTCH_VALUE_GAINED: TAbmesFloatField
      DisplayLabel = #1054#1090#1095#1077#1090'|*'#1055#1057
      FieldName = 'OTCH_VALUE_GAINED'
      DisplayFormat = ',0'
    end
    object cdsSingleExpsOTCH_VALUE_INVESTED: TAbmesFloatField
      FieldName = 'OTCH_VALUE_INVESTED'
      DisplayFormat = ',0'
    end
    object cdsSingleExpsIS_ANNULED: TAbmesFloatField
      DisplayLabel = 'A'
      FieldName = 'IS_ANNULED'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsSingleExpsIS_OTCH: TAbmesFloatField
      FieldName = 'IS_OTCH'
      FieldValueType = fvtBoolean
    end
    object cdsSingleExps_DEV_TIME: TAbmesFloatField
      DisplayLabel = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1103'|'#1076#1085#1080
      FieldKind = fkCalculated
      FieldName = '_DEV_TIME'
      DisplayFormat = '#'
      Calculated = True
    end
    object cdsSingleExps_DEV_QUANTITY: TAbmesFloatField
      DisplayLabel = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1103'|'#1082'-'#1074#1086
      FieldKind = fkInternalCalc
      FieldName = '_DEV_QUANTITY'
      DisplayFormat = ',#'
    end
    object cdsSingleExps_DEV_VALUE_GAINED: TAbmesFloatField
      DisplayLabel = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1103'|*'#1055#1057
      FieldKind = fkCalculated
      FieldName = '_DEV_VALUE_GAINED'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsSingleExps_DEV_VALUE_ADDED: TAbmesFloatField
      FieldKind = fkInternalCalc
      FieldName = '_DEV_VALUE_ADDED'
      DisplayFormat = ',0'
    end
    object cdsSingleExpsDEV_TIME: TAbmesFloatField
      FieldName = 'DEV_TIME'
    end
    object cdsSingleExpsUNCOVERED_LINES: TAbmesFloatField
      FieldName = 'UNCOVERED_LINES'
      OnGetText = cdsSingleExpsUNCOVERED_LINESGetText
    end
    object cdsSingleExpsINVOICE_NO: TAbmesFloatField
      DisplayLabel = #1060#1072#1082#1090#1091#1088#1072'|'#1053#1086#1084#1077#1088
      FieldName = 'INVOICE_NO'
      DisplayFormat = '0000000000'
    end
    object cdsSingleExpsINVOICE_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1060#1072#1082#1090#1091#1088#1072'|'#1044#1072#1090#1072
      FieldName = 'INVOICE_DATE'
    end
    object cdsSingleExpsTRANSPORT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'TRANSPORT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsSingleExpsPLAN_TRANSPORT_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_TRANSPORT_QUANTITY'
      DisplayFormat = ',#'
    end
    object cdsSingleExpsOTCH_TRANSPORT_QUANTITY: TAbmesFloatField
      FieldName = 'OTCH_TRANSPORT_QUANTITY'
      DisplayFormat = ',#'
    end
    object cdsSingleExpsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsSingleExpsLEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object cdsSingleExpsLEASE_PLAN_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'LEASE_PLAN_DATE_UNIT_QTY'
    end
    object cdsSingleExpsLEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_QTY'
    end
    object cdsSingleExpsACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsSingleExpsPLAN_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_ACCOUNT_QUANTITY'
      DisplayFormat = ',#'
    end
    object cdsSingleExpsOTCH_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'OTCH_ACCOUNT_QUANTITY'
      DisplayFormat = ',#'
    end
    object cdsSingleExps_PLAN_VALUE_ADDED: TAbmesFloatField
      DisplayLabel = #1055#1083#1072#1085'|*'#1048#1056'1'
      FieldKind = fkCalculated
      FieldName = '_PLAN_VALUE_ADDED'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsSingleExps_PLAN_PERCENT: TAbmesFloatField
      DisplayLabel = #1055#1083#1072#1085'|%'
      FieldKind = fkCalculated
      FieldName = '_PLAN_PERCENT'
      DisplayFormat = ',#'
      Calculated = True
    end
    object cdsSingleExps_OTCH_VALUE_ADDED: TAbmesFloatField
      DisplayLabel = #1054#1090#1095#1077#1090'|*'#1048#1056'1'
      FieldKind = fkCalculated
      FieldName = '_OTCH_VALUE_ADDED'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsSingleExps_OTCH_PERCENT: TAbmesFloatField
      DisplayLabel = #1054#1090#1095#1077#1090'|%'
      FieldKind = fkCalculated
      FieldName = '_OTCH_PERCENT'
      DisplayFormat = ',#'
      Calculated = True
    end
    object cdsSingleExps_AVG_PLAN_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_AVG_PLAN_PERCENT'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsSingleExps_AVG_OTCH_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_AVG_OTCH_PERCENT'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsSingleExps__SUM_OTCH_VALUE_ADDED: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '__SUM_OTCH_VALUE_ADDED'
      Calculated = True
    end
    object cdsSingleExpsPRODUCT_NO: TAbmesFloatField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'PRODUCT_NO'
    end
    object cdsSingleExpsSALE_SHIPMENT_STATE_CODE: TAbmesFloatField
      FieldName = 'SALE_SHIPMENT_STATE_CODE'
      OnGetText = cdsSingleExpsSALE_SHIPMENT_STATE_CODEGetText
    end
    object cdsSingleExpsINVOICE_STATE_CODE: TAbmesFloatField
      FieldName = 'INVOICE_STATE_CODE'
      OnGetText = cdsSingleExpsINVOICE_STATE_CODEGetText
    end
    object cdsSingleExps_PRIORITY_COLOR: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_PRIORITY_COLOR'
      LookupDataSet = cdsPriorities
      LookupKeyFields = 'PRIORITY_CODE'
      LookupResultField = 'PRIORITY_COLOR'
      KeyFields = 'PRIORITY_CODE'
      Lookup = True
    end
    object cdsSingleExps_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_PRIORITY_BACKGROUND_COLOR'
      LookupDataSet = cdsPriorities
      LookupKeyFields = 'PRIORITY_CODE'
      LookupResultField = 'PRIORITY_BACKGROUND_COLOR'
      KeyFields = 'PRIORITY_CODE'
      Lookup = True
    end
    object cdsSingleExps_DEV_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DEV_LEASE_DATE_UNIT_QTY'
      Calculated = True
    end
    object cdsSingleExps_DEV_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldKind = fkInternalCalc
      FieldName = '_DEV_ACCOUNT_QUANTITY'
      DisplayFormat = ',#'
    end
    object cdsSingleExpsRECEIVE_DATE_RSV: TAbmesFloatField
      FieldName = 'RECEIVE_DATE_RSV'
    end
    object cdsSingleExpsIMPORT_DATE_RSV: TAbmesFloatField
      FieldName = 'IMPORT_DATE_RSV'
    end
    object cdsSingleExpsRECEIVE_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_PLAN_DATE'
    end
    object cdsSingleExpsIMPORT_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'IMPORT_PLAN_DATE'
    end
    object cdsSingleExpsRECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_DATE'
    end
    object cdsSingleExpsCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CL_OFFER_RECEIVE_DATE'
    end
    object cdsSingleExpsIMPORT_DATE: TAbmesSQLTimeStampField
      FieldName = 'IMPORT_DATE'
    end
    object cdsSingleExpsDAMAGES_STATE_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'DAMAGES_STATE_CODE'
      OnGetText = cdsSingleExpsDAMAGES_STATE_CODEGetText
    end
    object cdsSingleExpsSHIPMENT_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_OBJECT_BRANCH_CODE'
    end
    object cdsSingleExpsSHIPMENT_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_OBJECT_CODE'
    end
    object cdsSingleExpsMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object cdsSingleExpsACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object cdsSingleExpsHAS_FIN_ORDER: TAbmesFloatField
      FieldName = 'HAS_FIN_ORDER'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsSingleExpsINVOICE_DATA_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'INVOICE_DATA_ACCOUNT_QUANTITY'
    end
    object cdsSingleExpsINVOICE_DATA_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'INVOICE_DATA_SINGLE_PRICE'
    end
    object cdsSingleExpsINVOICE_DATA_MARKET_SNGL_PRICE: TAbmesFloatField
      FieldName = 'INVOICE_DATA_MARKET_SNGL_PRICE'
    end
    object cdsSingleExpsINVOICE_DATA_DISCOUNT_PERCENT: TAbmesFloatField
      FieldName = 'INVOICE_DATA_DISCOUNT_PERCENT'
    end
    object cdsSingleExpsINVOICE_DATA_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'INVOICE_DATA_CURRENCY_CODE'
    end
    object cdsSingleExpsINVOICE_DATA_SSH_IDENTIFIER: TAbmesWideStringField
      FieldName = 'INVOICE_DATA_SSH_IDENTIFIER'
      Size = 100
    end
    object cdsSingleExpsCLIENT_COMPANY_NO: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_NO'
    end
    object cdsSingleExpsSALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object cdsSingleExps_SALE_DEAL_TYPE_SHOW_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SALE_DEAL_TYPE_SHOW_NAME'
      LookupDataSet = cdsSaleDealTypes
      LookupKeyFields = 'SALE_DEAL_TYPE_CODE'
      LookupResultField = '_SALE_DEAL_TYPE_SHOW_NAME'
      KeyFields = 'SALE_DEAL_TYPE_CODE'
      OnGetText = pdsExpGroupsMaster_SALE_DEAL_TYPE_SHOW_NAMEGetText
      Size = 100
      Lookup = True
    end
    object cdsSingleExpsRECEIVE_PLACE_OFFICE_NAME: TAbmesWideStringField
      FieldName = 'RECEIVE_PLACE_OFFICE_NAME'
      Size = 50
    end
    object cdsSingleExpsSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsSingleExpsSINGLE_PRICE_CURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'SINGLE_PRICE_CURRENCY_ABBREV'
      Size = 5
    end
    object cdsSingleExps_SUM_PLAN_VALUE_GAINED: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_PLAN_VALUE_GAINED'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(PLAN_VALUE_GAINED)'
    end
    object cdsSingleExps_SUM_OTCH_VALUE_GAINED: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_OTCH_VALUE_GAINED'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(OTCH_VALUE_GAINED)'
    end
    object cdsSingleExps_SUM_PLAN_VALUE_ADDED: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_PLAN_VALUE_ADDED'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(PLAN_VALUE_GAINED) - Sum(PLAN_VALUE_INVESTED)'
    end
    object cdsSingleExps_SUM_OTCH_VALUE_ADDED: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_OTCH_VALUE_ADDED'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(OTCH_VALUE_GAINED) - Sum(OTCH_VALUE_INVESTED)'
    end
    object cdsSingleExps_SUM_PLAN_QUANTITY: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_PLAN_QUANTITY'
      OnGetText = cdsSingleExps_SUM_PLAN_QUANTITYGetText
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(PLAN_QUANTITY)'
    end
    object cdsSingleExps_SUM_PLAN_ACCOUNT_QUANTITY: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_PLAN_ACCOUNT_QUANTITY'
      OnGetText = cdsSingleExps_SUM_PLAN_ACCOUNT_QUANTITYGetText
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(PLAN_ACCOUNT_QUANTITY)'
    end
    object cdsSingleExps_SUM_OTCH_QUANTITY: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_OTCH_QUANTITY'
      OnGetText = cdsSingleExps_SUM_OTCH_QUANTITYGetText
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(OTCH_QUANTITY)'
    end
    object cdsSingleExps_SUM_OTCH_ACCOUNT_QUANTITY: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_OTCH_ACCOUNT_QUANTITY'
      OnGetText = cdsSingleExps_SUM_OTCH_ACCOUNT_QUANTITYGetText
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(OTCH_ACCOUNT_QUANTITY)'
    end
    object cdsSingleExps_MIN_MEASURE_CODE: TAggregateField
      Alignment = taCenter
      FieldName = '_MIN_MEASURE_CODE'
      OnGetText = cdsSingleExps_MIN_MEASURE_CODEGetText
      Active = True
      DisplayName = ''
      Expression = 'Min(MEASURE_CODE)'
    end
    object cdsSingleExps_MAX_MEASURE_CODE: TAggregateField
      FieldName = '_MAX_MEASURE_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Max(MEASURE_CODE)'
    end
    object cdsSingleExps_MIN_ACCOUNT_MEASURE_CODE: TAggregateField
      Alignment = taCenter
      FieldName = '_MIN_ACCOUNT_MEASURE_CODE'
      OnGetText = cdsSingleExps_MIN_ACCOUNT_MEASURE_CODEGetText
      Active = True
      DisplayName = ''
      Expression = 'Min(ACCOUNT_MEASURE_CODE)'
    end
    object cdsSingleExps_MAX_ACCOUNT_MEASURE_CODE: TAggregateField
      FieldName = '_MAX_ACCOUNT_MEASURE_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Max(ACCOUNT_MEASURE_CODE)'
    end
    object cdsSingleExps_SUM_DEV_QUANTITY: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_DEV_QUANTITY'
      OnGetText = cdsSingleExps_SUM_DEV_QUANTITYGetText
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(_DEV_QUANTITY)'
    end
    object cdsSingleExps_SUM_DEV_ACCOUNT_QUANTITY: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_DEV_ACCOUNT_QUANTITY'
      OnGetText = cdsSingleExps_SUM_DEV_ACCOUNT_QUANTITYGetText
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(_DEV_ACCOUNT_QUANTITY)'
    end
    object cdsSingleExps_SUM_DEV_VALUE_ADDED: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_DEV_VALUE_ADDED'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(_DEV_VALUE_ADDED)'
    end
  end
  object dsSingleExps: TDataSource
    DataSet = cdsSingleExps
    Left = 36
    Top = 328
  end
  object pdsSingleExps: TParamDataSet
    OnCalcFields = pdsSingleExpsCalcFields
    DataSet = cdsSingleExps
    Left = 4
    Top = 360
    object pdsSingleExpsCURRENT_FILTER_VARIANT_CODE: TAbmesFloatField
      FieldName = 'CURRENT_FILTER_VARIANT_CODE'
      FieldValueType = fvtInteger
    end
    object pdsSingleExpsMIN_SALE_SHIPMENT_STATE_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1085#1072' '#1043#1088#1091#1087#1072' '#1054#1055#1055' '#1087#1086' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1103' - '#1054#1090
      FieldName = 'MIN_SALE_SHIPMENT_STATE_CODE'
    end
    object pdsSingleExpsMAX_SALE_SHIPMENT_STATE_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1085#1072' '#1043#1088#1091#1087#1072' '#1054#1055#1055' '#1087#1086' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1103' - '#1044#1086
      FieldName = 'MAX_SALE_SHIPMENT_STATE_CODE'
    end
    object pdsSingleExpsSALE_DEAL_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1080#1087' '#1054#1055#1055
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object pdsSingleExpsLEASE_DATE_UNIT_CODE: TAbmesFloatField
      DisplayLabel = #1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072
      FieldName = 'LEASE_DATE_UNIT_CODE'
    end
    object pdsSingleExpsSALE_ORDER_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1054#1055#1055' '#1087#1086
      FieldName = 'SALE_ORDER_TYPE_CODE'
    end
    object pdsSingleExpsBRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1054#1055#1055' - '#1058#1055' '#1043#1083#1072#1074#1085#1086
      FieldName = 'BRANCH_CODE'
    end
    object pdsSingleExpsSALE_NO: TAbmesFloatField
      DisplayLabel = #1054#1055#1055' - '#1053#1086#1084#1077#1088
      FieldName = 'SALE_NO'
    end
    object pdsSingleExpsSALE_SHIPMENT_NO: TAbmesFloatField
      DisplayLabel = #1054#1055#1055' - '#1056#1082
      FieldName = 'SALE_SHIPMENT_NO'
    end
    object pdsSingleExpsSALE_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1054#1055#1055' - '#1042#1080#1076
      FieldName = 'SALE_TYPE_CODE'
    end
    object pdsSingleExpsBEGIN_SHIPMENT_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1103' - '#1053#1072#1095#1072#1083#1086' '
      FieldName = 'BEGIN_SHIPMENT_DATE'
    end
    object pdsSingleExpsEND_SHIPMENT_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1103' - '#1050#1088#1072#1081
      FieldName = 'END_SHIPMENT_DATE'
    end
    object pdsSingleExpsBEGIN_RECEIVE_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1086#1083#1091#1095#1072#1074#1072#1085#1077' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_RECEIVE_DATE'
    end
    object pdsSingleExpsEND_RECEIVE_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1086#1083#1091#1095#1072#1074#1072#1085#1077' - '#1050#1088#1072#1081
      FieldName = 'END_RECEIVE_DATE'
    end
    object pdsSingleExpsRECEIVE_DATE_BEGIN_RSV: TAbmesFloatField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1086#1083#1091#1095#1072#1074#1072#1085#1077' - '#1056#1077#1079#1077#1088#1074' - '#1054#1090
      FieldName = 'RECEIVE_DATE_BEGIN_RSV'
    end
    object pdsSingleExpsRECEIVE_DATE_END_RSV: TAbmesFloatField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1086#1083#1091#1095#1072#1074#1072#1085#1077' - '#1056#1077#1079#1077#1088#1074' - '#1044#1086
      FieldName = 'RECEIVE_DATE_END_RSV'
    end
    object pdsSingleExpsBEGIN_IMPORT_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1042#1088#1098#1097#1072#1085#1077' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_IMPORT_DATE'
    end
    object pdsSingleExpsEND_IMPORT_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1042#1088#1098#1097#1072#1085#1077' - '#1050#1088#1072#1081
      FieldName = 'END_IMPORT_DATE'
    end
    object pdsSingleExpsIMPORT_DATE_BEGIN_RSV: TAbmesFloatField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1042#1088#1098#1097#1072#1085#1077' - '#1056#1077#1079#1077#1088#1074' - '#1054#1090
      FieldName = 'IMPORT_DATE_BEGIN_RSV'
    end
    object pdsSingleExpsIMPORT_DATE_END_RSV: TAbmesFloatField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1042#1088#1098#1097#1072#1085#1077' - '#1056#1077#1079#1077#1088#1074' - '#1044#1086
      FieldName = 'IMPORT_DATE_END_RSV'
    end
    object pdsSingleExpsCHOSEN_PRODUCTS: TAbmesWideStringField
      DisplayLabel = '%ProductClassName%'
      FieldName = 'CHOSEN_PRODUCTS'
      Size = 4000
    end
    object pdsSingleExpsCHOSEN_COMPANIES: TAbmesWideStringField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      FieldName = 'CHOSEN_COMPANIES'
      OnChange = pdsSingleExpsCHOSEN_COMPANIESChange
      Size = 4000
    end
    object pdsSingleExpsRECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField
      DisplayLabel = #1050#1083#1080#1077#1085#1090' - '#1058#1055
      FieldName = 'RECEIVE_PLACE_OFFICE_CODE'
    end
    object pdsSingleExpsCOUNTRY_CODE: TAbmesFloatField
      DisplayLabel = #1050#1083#1080#1077#1085#1090' - '#1044#1098#1088#1078#1072#1074#1072
      FieldName = 'COUNTRY_CODE'
    end
    object pdsSingleExpsDAMAGES_STATE_CODE: TAbmesFloatField
      DisplayLabel = #1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083'. - '#1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103
      FieldName = 'DAMAGES_STATE_CODE'
    end
    object pdsSingleExpsFROM_INVOICE_NO: TAbmesFloatField
      DisplayLabel = #1060#1072#1082#1090#1091#1088#1072' - '#1053#1086#1084#1077#1088' - '#1054#1090
      FieldName = 'FROM_INVOICE_NO'
      DisplayFormat = '0000000000'
    end
    object pdsSingleExpsTO_INVOICE_NO: TAbmesFloatField
      DisplayLabel = #1060#1072#1082#1090#1091#1088#1072' - '#1053#1086#1084#1077#1088' - '#1044#1086
      FieldName = 'TO_INVOICE_NO'
      DisplayFormat = '0000000000'
    end
    object pdsSingleExpsSTART_INVOICE_PERIOD_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1072#1090#1072' '#1085#1072' '#1060#1072#1082#1090#1091#1088#1072' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'START_INVOICE_PERIOD_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsSingleExpsEND_INVOICE_PERIOD_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1072#1090#1072' '#1085#1072' '#1060#1072#1082#1090#1091#1088#1072' - '#1050#1088#1072#1081
      FieldName = 'END_INVOICE_PERIOD_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsSingleExpsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = []
      OnChange = pdsSingleExpsPRODUCT_CODEChange
    end
    object pdsSingleExpsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      OnGetText = pdsSingleExpsPRODUCT_NAMEGetText
      Size = 250
    end
    object pdsSingleExpsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object pdsSingleExpsMARKET: TAbmesFloatField
      FieldName = 'MARKET'
      ProviderFlags = []
    end
    object pdsSingleExpsPRODUCTION_DEPT_CODE: TAbmesFloatField
      FieldName = 'PRODUCTION_DEPT_CODE'
      ProviderFlags = []
      OnChange = pdsSingleExpsPRODUCTION_DEPT_CODEChange
    end
    object pdsSingleExpsPRODUCTION_DEPT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCTION_DEPT_NAME'
      ProviderFlags = []
      OnGetText = pdsSingleExpsPRODUCTION_DEPT_NAMEGetText
      Size = 200
    end
    object pdsSingleExpsPRODUCTION_DEPT_NO: TAbmesWideStringField
      FieldName = 'PRODUCTION_DEPT_NO'
      ProviderFlags = []
      Size = 100
    end
    object pdsSingleExpsHAS_DELIVERY: TAbmesFloatField
      DisplayLabel = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1054#1055#1044
      FieldName = 'HAS_DELIVERY'
    end
    object pdsSingleExpsDCD_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1054#1055#1044' - '#1058#1055' '#1043#1083#1072#1074#1085#1086
      FieldName = 'DCD_BRANCH_CODE'
    end
    object pdsSingleExpsDCD_CODE: TAbmesFloatField
      DisplayLabel = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1054#1055#1044' - '#1055#1044#1044' No'
      FieldName = 'DCD_CODE'
    end
    object pdsSingleExpsDELIVERY_PROJECT_CODE: TAbmesFloatField
      DisplayLabel = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1054#1055#1044' - No'
      FieldName = 'DELIVERY_PROJECT_CODE'
    end
    object pdsSingleExps_SALE_TYPE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SALE_TYPE_ABBREV'
      LookupDataSet = cdsSaleTypes
      LookupKeyFields = 'SALE_TYPE_CODE'
      LookupResultField = 'SALE_TYPE_ABBREV'
      KeyFields = 'SALE_TYPE_CODE'
      ProviderFlags = []
      OnGetText = pdsSingleExps_SALE_TYPE_ABBREVGetText
      Size = 10
      Lookup = True
    end
    object pdsSingleExps_SALE_BRANCH_CODE_AND_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SALE_BRANCH_CODE_AND_NAME'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_CODE_AND_NAME'
      KeyFields = 'BRANCH_CODE'
      ProviderFlags = []
      OnGetText = pdsSingleExps_SALE_BRANCH_CODE_AND_NAMEGetText
      Size = 100
      Lookup = True
    end
    object pdsSingleExps_SALE_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SALE_ORDER_TYPE_ABBREV'
      LookupDataSet = cdsSaleOrderTypes
      LookupKeyFields = 'SALE_ORDER_TYPE_CODE'
      LookupResultField = 'SALE_ORDER_TYPE_ABBREV'
      KeyFields = 'SALE_ORDER_TYPE_CODE'
      ProviderFlags = []
      OnGetText = pdsSingleExps_SALE_ORDER_TYPE_ABBREVGetText
      Size = 100
      Lookup = True
    end
    object pdsSingleExps_COUNTRY_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_COUNTRY_NAME'
      LookupDataSet = cdsCountries
      LookupKeyFields = 'COUNTRY_CODE'
      LookupResultField = 'COUNTRY_NAME'
      KeyFields = 'COUNTRY_CODE'
      OnGetText = pdsSingleExps_COUNTRY_NAMEGetText
      Size = 100
      Lookup = True
    end
    object pdsSingleExps_SALE_DEAL_TYPE_SHOW_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SALE_DEAL_TYPE_SHOW_NAME'
      LookupDataSet = cdsSaleDealTypes
      LookupKeyFields = 'SALE_DEAL_TYPE_CODE'
      LookupResultField = '_SALE_DEAL_TYPE_SHOW_NAME'
      KeyFields = 'SALE_DEAL_TYPE_CODE'
      OnGetText = pdsSingleExps_SALE_DEAL_TYPE_SHOW_NAMEGetText
      Size = 100
      Lookup = True
    end
    object pdsSingleExps_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_LEASE_DATE_UNIT_NAME'
      LookupDataSet = cdsDateUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'THE_DATE_UNIT_NAME'
      KeyFields = 'LEASE_DATE_UNIT_CODE'
      OnGetText = pdsSingleExps_LEASE_DATE_UNIT_NAMEGetText
      Size = 50
      Lookup = True
    end
    object pdsSingleExps_RECEIVE_PLACE_OFFICE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_RECEIVE_PLACE_OFFICE_NAME'
      LookupDataSet = cdsSingleExpsCompanyOffices
      LookupKeyFields = 'OFFICE_CODE'
      LookupResultField = 'OFFICE_NAME'
      KeyFields = 'RECEIVE_PLACE_OFFICE_CODE'
      Size = 100
      Lookup = True
    end
    object pdsSingleExps_DCD_BRANCH: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_DCD_BRANCH'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_CODE_AND_NAME'
      KeyFields = 'DCD_BRANCH_CODE'
      Size = 50
      Lookup = True
    end
    object pdsSingleExps_PRODUCT_CLASS_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRODUCT_CLASS_CODE'
      Calculated = True
    end
    object pdsSingleExpsMEDIATOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'MEDIATOR_COMPANY_CODE'
    end
  end
  object dsSingleExpsParams: TDataSource
    DataSet = pdsSingleExps
    Left = 36
    Top = 360
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Params = <>
    ProviderName = 'prvBranches'
    Left = 84
    Top = 32
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
    end
    object cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField
      FieldName = 'BRANCH_CODE_AND_NAME'
      Size = 255
    end
  end
  object cdsSaleTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Params = <>
    ProviderName = 'prvSaleTypes'
    Left = 44
    Top = 32
    object cdsSaleTypesSALE_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_TYPE_CODE'
    end
    object cdsSaleTypesSALE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_TYPE_ABBREV'
      Size = 3
    end
  end
  object cdsSaleOrderTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Params = <>
    ProviderName = 'prvSaleOrderTypes'
    Left = 124
    Top = 128
    object cdsSaleOrderTypesSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
    end
    object cdsSaleOrderTypesSALE_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_ORDER_TYPE_ABBREV'
      Size = 100
    end
  end
  object cdsCountries: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCountries'
    AfterOpen = cdsCountriesAfterOpen
    Left = 132
    Top = 16
    object cdsCountriesCOUNTRY_CODE: TAbmesFloatField
      FieldName = 'COUNTRY_CODE'
      Required = True
    end
    object cdsCountriesCOUNTRY_NAME: TAbmesWideStringField
      FieldName = 'COUNTRY_NAME'
      Required = True
      Size = 50
    end
    object cdsCountriesCOUNTRY_ABBREV: TAbmesWideStringField
      FieldName = 'COUNTRY_ABBREV'
      Required = True
      Size = 5
    end
    object cdsCountriesI_COUNTRY_ABBREV: TAbmesWideStringField
      FieldName = 'I_COUNTRY_ABBREV'
      Required = True
      Size = 5
    end
    object cdsCountriesI_COUNTRY_NAME: TAbmesWideStringField
      FieldName = 'I_COUNTRY_NAME'
      Required = True
      Size = 50
    end
  end
  object cdsPriorities: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvPriorities'
    Left = 160
    Top = 128
    object cdsPrioritiesPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
    end
    object cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_NAME'
      Size = 50
    end
    object cdsPrioritiesPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object cdsPrioritiesPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
  end
  object cdsSaleDealTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Params = <>
    ProviderName = 'prvSaleDealTypes'
    AfterOpen = cdsSaleDealTypesAfterOpen
    OnCalcFields = cdsSaleDealTypesCalcFields
    Left = 192
    Top = 128
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
    object cdsSaleDealTypesOBTAINMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OBTAINMENT_TYPE_CODE'
    end
    object cdsSaleDealTypes_SALE_DEAL_TYPE_SHOW_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SALE_DEAL_TYPE_SHOW_NAME'
      Size = 100
      Calculated = True
    end
  end
  object cdsDateUnits: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvDateUnits'
    Left = 224
    Top = 128
    object cdsDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'THE_DATE_UNIT_CODE'
    end
    object cdsDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'THE_DATE_UNIT_NAME'
      Size = 50
    end
  end
  object cdsSaleExpGroupsCompanyOffices: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompanies
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCompanyOffices'
    BeforeOpen = cdsSaleExpGroupsCompanyOfficesBeforeOpen
    Left = 160
    Top = 168
    object cdsSaleExpGroupsCompanyOfficesOFFICE_CODE: TAbmesFloatField
      FieldName = 'OFFICE_CODE'
    end
    object cdsSaleExpGroupsCompanyOfficesOFFICE_NAME: TAbmesWideStringField
      FieldName = 'OFFICE_NAME'
      Required = True
      Size = 50
    end
  end
  object cdsSingleExpsCompanyOffices: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompanies
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCompanyOffices'
    BeforeOpen = cdsSingleExpsCompanyOfficesBeforeOpen
    Left = 192
    Top = 168
    object cdsSingleExpsCompanyOfficesOFFICE_CODE: TAbmesFloatField
      FieldName = 'OFFICE_CODE'
    end
    object StringField1: TAbmesWideStringField
      FieldName = 'OFFICE_NAME'
      Required = True
      Size = 50
    end
  end
  object cdsExceptEventsParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 544
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
    object cdsExceptEventsParamsSHIPMENT_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_OBJECT_BRANCH_CODE'
    end
    object cdsExceptEventsParamsSHIPMENT_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_OBJECT_CODE'
    end
  end
  object cdsMeasures: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvMeasures'
    Left = 584
    Top = 544
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
end
