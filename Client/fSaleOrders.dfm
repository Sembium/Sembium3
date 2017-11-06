inherited fmSaleOrders: TfmSaleOrders
  ActiveControl = grdSaleOrders
  Caption = 
    #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1073#1086#1089#1086#1073#1077#1085#1080' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1050#1083#1080#1077#1085#1090#1080' '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '#1085#1072' %ProductC' +
    'lassAbbrev% %PoZadanie%'
  ClientHeight = 653
  ClientWidth = 1019
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 618
    Width = 1019
    inherited pnlOKCancel: TPanel
      Left = 751
      TabOrder = 2
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 662
      TabOrder = 1
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 930
      TabOrder = 3
      Visible = False
    end
    object btnEditRecord: TBitBtn
      Left = 8
      Top = 0
      Width = 121
      Height = 25
      Action = actEditRecord
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
  end
  inherited pnlMain: TPanel
    Width = 1019
    Height = 618
    inherited pnlGrid: TPanel
      Width = 1003
      Height = 602
      inherited pnlNavigator: TPanel
        Width = 1003
        inherited pnlFilterButton: TPanel
          Left = 144
        end
        inherited navData: TDBColorNavigator
          Width = 144
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbRefresh]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 168
          Width = 80
          object btnPrintSaleOrders: TToolButton
            Left = 56
            Top = 0
            Action = actPrintSaleOrders
          end
        end
        object tlbClientDoc: TToolBar
          Left = 515
          Top = 0
          Width = 87
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonWidth = 37
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 3
          object sepBeforeClientDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'ToolButton1'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblClientDoc: TLabel
            Left = 8
            Top = 0
            Width = 42
            Height = 22
            Caption = ' '#1050#1083#1080#1077#1085#1090' '
            Layout = tlCenter
          end
          object btnClientDoc: TToolButton
            Left = 50
            Top = 0
            Action = actClientDoc
          end
        end
        object tlbSaleDoc: TToolBar
          Left = 248
          Top = 0
          Width = 104
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonWidth = 37
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 4
          object sepBeforeSaleDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'ToolButton1'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblSaleDoc: TLabel
            Left = 8
            Top = 0
            Width = 59
            Height = 22
            Caption = ' '#1054#1044#1050'/'#1054#1055#1055' '
            Layout = tlCenter
          end
          object btnSaleDoc: TToolButton
            Left = 67
            Top = 0
            Action = actSaleDoc
          end
        end
        object tlbProductDoc: TToolBar
          Left = 352
          Top = 0
          Width = 163
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonWidth = 37
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 5
          object sepBeforeProductDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'ToolButton1'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblProductDoc: TLabel
            Left = 8
            Top = 0
            Width = 118
            Height = 22
            Caption = ' %ProductClassAbbrev% '
            Layout = tlCenter
          end
          object btnProductDoc: TToolButton
            Left = 126
            Top = 0
            Action = actProductDoc
          end
        end
        object tbToggleQuantity: TToolBar
          Left = 812
          Top = 0
          Width = 140
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 21
          ButtonWidth = 24
          Caption = 'tbQuantity'
          EdgeInner = esNone
          EdgeOuter = esNone
          TabOrder = 6
          object btnToggleClientStuff: TSpeedButton
            Left = 0
            Top = 0
            Width = 24
            Height = 21
            Action = actToggleClientStuff
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
            Transparent = False
          end
          object sepBeforeWorkMeasure: TToolButton
            Left = 24
            Top = 0
            Width = 8
            Caption = 'sepBeforeWorkMeasure'
            ImageIndex = 0
            Style = tbsSeparator
          end
          object btnWorkMeasure: TSpeedButton
            Left = 32
            Top = 0
            Width = 24
            Height = 21
            Hint = #1056#1072#1073#1086#1090#1085#1080' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072'/'#1084'.'#1077#1076'.'
            AllowAllUp = True
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
            OnClick = btnWorkMeasureClick
          end
          object btnAccountMeasure: TSpeedButton
            Left = 56
            Top = 0
            Width = 24
            Height = 21
            Hint = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1080' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072'/'#1084'.'#1077#1076'.'
            AllowAllUp = True
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
            OnClick = btnAccountMeasureClick
          end
          object sepBeforeSaleDealType: TToolButton
            Left = 80
            Top = 0
            Width = 8
            Caption = 'sepBeforeSaleDealType'
            Style = tbsSeparator
          end
          object lblSaleDealType: TLabel
            Left = 88
            Top = 0
            Width = 52
            Height = 21
            Caption = ' '#1058#1080#1087' '#1054#1044#1050' '
            Layout = tlCenter
          end
        end
        object pnlSaleDealType: TPanel
          Left = 952
          Top = 0
          Width = 51
          Height = 24
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 7
          object edtSaleDealType: TDBEdit
            Left = 0
            Top = 0
            Width = 49
            Height = 21
            Color = clBtnFace
            DataField = '_SALE_DEAL_TYPE_SHOW_NAME'
            DataSource = dsGridDataParams
            ReadOnly = True
            TabOrder = 0
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Align = alNone
        Visible = False
      end
      object pcDetail: TPageControl
        Left = 0
        Top = 24
        Width = 1003
        Height = 578
        ActivePage = tsDetailCommon
        Align = alClient
        HotTrack = True
        TabOrder = 2
        object tsDetailCommon: TTabSheet
          Caption = #1042#1088#1077#1084#1077#1074#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050
          object grdSaleOrders: TAbmesDBGrid
            Left = 0
            Top = 0
            Width = 995
            Height = 550
            Align = alClient
            DataSource = dsGridData
            DynProps = <>
            FooterRowCount = 1
            FooterParams.Color = 15258325
            GridLineParams.VertEmptySpaceStyle = dessNonEh
            HorzScrollBar.VisibleMode = sbNeverShowEh
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch]
            ReadOnly = True
            TabOrder = 0
            TitleParams.MultiTitle = True
            TitleParams.VTitleMargin = 6
            OnDblClick = grdSaleOrdersDblClick
            OnDrawColumnCell = grdSaleOrdersDrawColumnCell
            OnGetCellParams = grdSaleOrdersGetCellParams
            OnSortMarkingChanged = grdSaleOrdersSortMarkingChanged
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'STATUS_CODE'
                Footers = <>
                Title.Caption = #1057#1090#1072#1090#1091#1089
                Width = 42
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'ASPECT_TYPE_ABBREV'
                Footers = <>
                Title.Caption = #1040#1089#1087#1077#1082#1090
                Title.Orientation = tohVertical
                Width = 25
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'SALE_ORDER_ID'
                Footers = <>
                Title.Caption = 'ID '#1054#1044#1050
                Width = 81
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'CLIENT_REQUEST_NO'
                Footers = <>
                Title.Caption = #1050#1083#1080#1077#1085#1090#1089#1082#1086' '#1086#1079#1085#1072#1095#1077#1085#1080#1077' '#1085#1072' '#1054#1044#1050
                Visible = False
                Width = 81
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_SALE_DEAL_TYPE_SHOW_NAME'
                Footers = <>
                Title.Caption = #1058#1080#1087' '#1054#1044#1050
                Title.Orientation = tohVertical
                Width = 21
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'IS_ACTIVATED_BY_CLIENT'
                Footers = <>
                Title.Caption = #1040#1082#1090'. '#1086#1090
                Width = 42
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'MANAGER_EMPLOYEE_FULL_NAME'
                Footers = <>
                Title.Caption = #1042#1086#1076#1077#1097' '#1044#1080#1072#1083#1086#1075
                Width = 41
              end
              item
                Alignment = taLeftJustify
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'COMPANY_STATUS_CODE'
                Footers = <>
                Title.Caption = #1050#1083#1080#1077#1085#1090'|'#1057#1090#1072#1090#1091#1089
                Width = 47
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PRIORITY_NO'
                Footers = <>
                Title.Caption = #1050#1083#1080#1077#1085#1090'|'#1055#1088#1080#1086#1088#1050
                Title.Orientation = tohVertical
                Width = 17
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'CLIENT_COMPANY_NAME'
                Footers = <>
                Title.Caption = #1050#1083#1080#1077#1085#1090'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                Width = 91
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PRODUCT_NAME'
                Footers = <>
                Title.Caption = '%ProductClassName%|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
                Width = 122
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'CLIENT_PRODUCT_NAME'
                Footers = <>
                Title.Caption = '%ProductClassName%|'#1050#1083#1080#1077#1085#1090#1089#1082#1086' '#1086#1079#1085#1072#1095#1077#1085#1080#1077
                Visible = False
                Width = 122
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'COMMON_STATUS_CODE'
                Footers = <>
                Title.Caption = '%ProductClassName%|'#1055#1079#1094'. '#1058#1049#1057' '
                Title.Orientation = tohVertical
                Width = 15
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PAR_REL_PRODUCT_STATUS_NAME'
                Footers = <>
                Title.Caption = #1057#1090#1072#1090#1091#1089' '#1048#1048#1056
                Width = 48
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PLAN_PERIOD_DAYS'
                Footers = <>
                Title.Caption = #1055#1077#1088#1080#1086#1076' ('#1076#1085#1080') '#1079#1072' '#1076#1086#1089#1090#1080#1075#1072#1085#1077' '#1076#1086' '#1056#1077#1096#1077#1085#1080#1077' '#1087#1086' '#1054#1044#1050'|'#1055#1083'. '#1087#1077#1088'.'
                Width = 50
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'REAL_PERIOD_DAYS'
                Footers = <>
                Title.Caption = #1055#1077#1088#1080#1086#1076' ('#1076#1085#1080') '#1079#1072' '#1076#1086#1089#1090#1080#1075#1072#1085#1077' '#1076#1086' '#1056#1077#1096#1077#1085#1080#1077' '#1087#1086' '#1054#1044#1050'|'#1056#1083'. '#1087#1077#1088'.'
                Width = 50
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'REAL_PERIOD_DEVIATION_PERCENT'
                Footers = <>
                Title.Caption = #1055#1077#1088#1080#1086#1076' ('#1076#1085#1080') '#1079#1072' '#1076#1086#1089#1090#1080#1075#1072#1085#1077' '#1076#1086' '#1056#1077#1096#1077#1085#1080#1077' '#1087#1086' '#1054#1044#1050'|'#1054#1090#1082#1083'. %'
                Width = 50
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'OFFER_SEND_DAYS_RSV'
                Footers = <>
                Title.Caption = #1056#1077#1079#1077#1088#1074' ('#1076#1085#1080') '#1079#1072' '#1055#1086#1079#1080#1094#1080#1103' '#1080' '#1056#1077#1096#1077#1085#1080#1077' '#1087#1086' '#1054#1044#1050'|'#1055#1079#1094'. '#1048#1055
                Width = 50
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'OFFER_ANSWER_DAYS_RSV'
                Footers = <>
                Title.Caption = #1056#1077#1079#1077#1088#1074' ('#1076#1085#1080') '#1079#1072' '#1055#1086#1079#1080#1094#1080#1103' '#1080' '#1056#1077#1096#1077#1085#1080#1077' '#1087#1086' '#1054#1044#1050'|'#1055#1079#1094'. '#1050#1083#1080#1077#1085#1090
                Width = 50
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'DECISION_DAYS_RSV'
                Footers = <>
                Title.Caption = #1056#1077#1079#1077#1088#1074' ('#1076#1085#1080') '#1079#1072' '#1055#1086#1079#1080#1094#1080#1103' '#1080' '#1056#1077#1096#1077#1085#1080#1077' '#1087#1086' '#1054#1044#1050'|'#1056#1077#1096#1077#1085#1080#1077
                Width = 50
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'DECISION_TYPE_ABBREV'
                Footers = <>
                Title.Caption = #1056#1077#1096#1077#1085#1080#1077
                Width = 52
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object tsPrognosis: TTabSheet
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 1
          Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050
          ImageIndex = 1
          object grdPrognosis: TAbmesDBGrid
            Left = 0
            Top = 0
            Width = 995
            Height = 550
            Align = alClient
            DataSource = dsGridData
            DynProps = <>
            FooterRowCount = 1
            FooterParams.Color = 15258325
            GridLineParams.VertEmptySpaceStyle = dessNonEh
            HorzScrollBar.VisibleMode = sbNeverShowEh
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch]
            ReadOnly = True
            TabOrder = 0
            TitleParams.MultiTitle = True
            TitleParams.VTitleMargin = 6
            OnDblClick = grdSaleOrdersDblClick
            OnDrawColumnCell = grdSaleOrdersDrawColumnCell
            OnGetCellParams = grdSaleOrdersGetCellParams
            OnSortMarkingChanged = grdSaleOrdersSortMarkingChanged
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'STATUS_CODE'
                Footers = <>
                Title.Caption = #1057#1090#1072#1090#1091#1089
                Width = 42
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'ASPECT_TYPE_ABBREV'
                Footers = <>
                Title.Caption = #1040#1089#1087#1077#1082#1090
                Title.Orientation = tohVertical
                Width = 25
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'SALE_ORDER_ID'
                Footers = <>
                Title.Caption = 'ID '#1054#1044#1050
                Width = 81
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'CLIENT_REQUEST_NO'
                Footers = <>
                Title.Caption = #1050#1083#1080#1077#1085#1090#1089#1082#1086' '#1086#1079#1085#1072#1095#1077#1085#1080#1077' '#1085#1072' '#1054#1044#1050
                Visible = False
                Width = 81
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PRODUCT_NAME'
                Footers = <>
                Title.Caption = '%ProductClassName%|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
                Width = 259
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'CLIENT_PRODUCT_NAME'
                Footers = <>
                Title.Caption = '%ProductClassName%|'#1050#1083#1080#1077#1085#1090#1089#1082#1086' '#1086#1079#1085#1072#1095#1077#1085#1080#1077
                Visible = False
                Width = 259
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'COMMON_STATUS_CODE'
                Footers = <>
                Title.Caption = '%ProductClassName%|'#1055#1079#1094'. '#1058#1049#1057' '
                Title.Orientation = tohVertical
                Width = 15
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PAR_REL_PRODUCT_STATUS_NAME'
                Footers = <>
                Title.Caption = #1057#1090#1072#1090#1091#1089' '#1048#1048#1056
                Width = 48
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_PROGNOSIS_PERIOD_MONTHS'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1077#1088#1089#1087'. ('#1084#1077#1089')'
                Width = 79
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PROGNOSIS_QUANTITY'
                Footer.FieldName = '_DISPLAY_SUM_PROGNOSIS_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1056#1072#1073'. '#1082'-'#1074#1086
                Visible = False
                Width = 155
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PROGNOSIS_MEASURE_ABBREV'
                Footer.FieldName = '_PROGNOSIS_MEASURE_ABBREV'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1052'.'#1077#1076'.'
                Visible = False
                Width = 73
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PROGNOSIS_ACCOUNT_QUANTITY'
                Footer.FieldName = '_DISPLAY_SUM_PROGNOSIS_ACC_QTY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1057#1095#1077#1090'. '#1082'-'#1074#1086
                Visible = False
                Width = 155
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PROGNOSIS_ACC_MEASURE_ABBREV'
                Footer.FieldName = '_PROGNOSIS_ACC_MEASURE_ABBREV'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1052'.'#1077#1076'.'
                Visible = False
                Width = 73
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'IS_QUANTITY_AGREED'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1057#1098#1075#1083#1072#1089'.'
                Title.Orientation = tohVertical
                Visible = False
                Width = 14
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PROGNOSIS_QUANTITY'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1056#1072#1073'. '#1082'-'#1074#1086
                Width = 63
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PROGNOSIS_MEASURE_ABBREV'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1052'.'#1077#1076'.'
                Width = 30
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PROGNOSIS_ACCOUNT_QUANTITY'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1057#1095#1077#1090'. '#1082'-'#1074#1086
                Visible = False
                Width = 63
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PROGNOSIS_ACC_MEASURE_ABBREV'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1052'.'#1077#1076'.'
                Visible = False
                Width = 30
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PROGNOSIS_LEASE_DATE_UNIT_QTY'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1050'-'#1074#1086' '#1053#1084'. '#1057#1090'.'
                Width = 34
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PROGNOSIS_LEASE_DATE_UNIT_NAME'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072
                Width = 56
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PROGNOSIS_TOTAL_LEASE_QUANTITY'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1050'-'#1074#1086' '#1056#1072#1073'. '#1056#1077#1089#1091#1088#1089
                Width = 42
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PROGNOSIS_ACC_TOTAL_LEASE_QTY'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1050'-'#1074#1086' '#1056#1072#1073'. '#1056#1077#1089#1091#1088#1089
                Visible = False
                Width = 42
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'IS_LEASE_QUANTITY_AGREED'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1057#1098#1075#1083#1072#1089'.'
                Title.Orientation = tohVertical
                Width = 14
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PROGNOSIS_SINGLE_PRICE'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'| '#1045#1076'. '#1094#1077#1085#1072
                Width = 53
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PROGNOSIS_ACCOUNT_SINGLE_PRICE'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'| '#1045#1076'. '#1094#1077#1085#1072
                Visible = False
                Width = 53
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PROGNOSIS_CURRENCY_ABBREV'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1042#1072#1083'.'
                Width = 27
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'IS_SINGLE_PRICE_AGREED'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1057#1098#1075#1083#1072#1089'.'
                Title.Orientation = tohVertical
                Width = 14
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PROGNOSIS_TOTAL_PRICE'
                Footer.FieldName = '_SUM_PROGNOSIS_TOTAL_PRICE'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1054#1073#1097#1072' '#1089#1090#1086#1081#1085#1086#1089#1090' (XXX)'
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object tsRealization: TTabSheet
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 1
          Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050
          ImageIndex = 2
          object grdRealization: TAbmesDBGrid
            Left = 0
            Top = 0
            Width = 995
            Height = 550
            Align = alClient
            DataSource = dsGridData
            DynProps = <>
            FooterRowCount = 1
            FooterParams.Color = 15258325
            GridLineParams.VertEmptySpaceStyle = dessNonEh
            HorzScrollBar.VisibleMode = sbNeverShowEh
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch]
            ReadOnly = True
            TabOrder = 0
            TitleParams.MultiTitle = True
            TitleParams.VTitleMargin = 6
            OnDblClick = grdSaleOrdersDblClick
            OnDrawColumnCell = grdSaleOrdersDrawColumnCell
            OnGetCellParams = grdSaleOrdersGetCellParams
            OnSortMarkingChanged = grdSaleOrdersSortMarkingChanged
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'STATUS_CODE'
                Footers = <>
                Title.Caption = #1057#1090#1072#1090#1091#1089
                Width = 42
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'ASPECT_TYPE_ABBREV'
                Footers = <>
                Title.Caption = #1040#1089#1087#1077#1082#1090
                Title.Orientation = tohVertical
                Width = 25
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'SALE_ORDER_ID'
                Footers = <>
                Title.Caption = 'ID '#1054#1044#1050
                Width = 81
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'CLIENT_REQUEST_NO'
                Footers = <>
                Title.Caption = #1050#1083#1080#1077#1085#1090#1089#1082#1086' '#1086#1079#1085#1072#1095#1077#1085#1080#1077' '#1085#1072' '#1054#1044#1050
                Visible = False
                Width = 81
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PRODUCT_NAME'
                Footers = <>
                Title.Caption = '%ProductClassName%|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
                Width = 188
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'CLIENT_PRODUCT_NAME'
                Footers = <>
                Title.Caption = '%ProductClassName%|'#1050#1083#1080#1077#1085#1090#1089#1082#1086' '#1086#1079#1085#1072#1095#1077#1085#1080#1077
                Visible = False
                Width = 188
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'COMMON_STATUS_CODE'
                Footers = <>
                Title.Caption = '%ProductClassName%|'#1055#1079#1094'. '#1058#1049#1057' '
                Title.Orientation = tohVertical
                Width = 15
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PAR_REL_PRODUCT_STATUS_NAME'
                Footers = <>
                Title.Caption = #1057#1090#1072#1090#1091#1089' '#1048#1048#1056
                Width = 48
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'RECEIVE_PLACE_OFFICE_NAME'
                Footers = <>
                Title.Caption = 
                  #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1058#1055' '#1085#1072' '#1050#1083#1080#1077#1085#1090' '#1079#1072' '#1055#1086#1083#1091#1095#1072#1074#1072 +
                  #1085#1077
                Width = 174
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'RECEIVE_DATE'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1044#1072#1090#1072' '#1087#1086#1083#1091#1095'.'
                Width = 58
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'QUANTITY'
                Footer.FieldName = '_DISPLAY_SUM_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1056#1072#1073'. '#1082'-'#1074#1086
                Width = 60
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'MEASURE_ABBREV'
                Footer.FieldName = '_MEASURE_ABBREV'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1052'.'#1077#1076'.'
                Width = 35
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'ACCOUNT_QUANTITY'
                Footer.FieldName = '_DISPLAY_SUM_ACC_QTY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1057#1095#1077#1090'. '#1082'-'#1074#1086
                Visible = False
                Width = 60
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'ACCOUNT_MEASURE_ABBREV'
                Footer.FieldName = '_ACCOUNT_MEASURE_ABBREV'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1052'.'#1077#1076'.'
                Visible = False
                Width = 35
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_LEASE_DATE_INTERVAL'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1053#1072#1077#1084
                Visible = False
                Width = 99
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'QUANTITY'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1050'-'#1074#1086
                Visible = False
                Width = 54
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'MEASURE_ABBREV'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1052'.'#1077#1076'.'
                Visible = False
                Width = 35
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'ACCOUNT_QUANTITY'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1050'-'#1074#1086
                Visible = False
                Width = 54
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'ACCOUNT_MEASURE_ABBREV'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1052'.'#1077#1076'.'
                Visible = False
                Width = 35
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'LEASE_DATE_UNIT_QTY'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1050'-'#1074#1086' '#1053#1084'.'#1057#1090'.'
                Visible = False
                Width = 38
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'LEASE_DATE_UNIT_NAME'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072
                Visible = False
                Width = 56
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'TOTAL_LEASE_QUANTITY'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1050'-'#1074#1086' '#1056#1072#1073'. '#1056#1077#1089#1091#1088#1089
                Visible = False
                Width = 43
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'TOTAL_ACCOUNT_LEASE_QUANTITY'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1050'-'#1074#1086' '#1056#1072#1073'. '#1056#1077#1089#1091#1088#1089
                Visible = False
                Width = 43
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'SINGLE_PRICE'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1045#1076'. '#1094#1077#1085#1072
                Width = 50
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'ACCOUNT_SINGLE_PRICE'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1045#1076'. '#1094#1077#1085#1072
                Visible = False
                Width = 50
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'CURRENCY_ABBREV'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1042#1072#1083'.'
                Width = 30
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'TOTAL_PRICE'
                Footer.FieldName = '_SUM_TOTAL_PRICE'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1054#1073#1097#1072' '#1057#1090#1086#1081#1085#1086#1089#1090' (XXX)'
                Width = 60
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'SALE_ID'
                Footers = <>
                Title.Caption = #1054#1055#1055'|ID '#1054#1055#1055
                Width = 66
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'SALE_PRIORITY_NO'
                Footers = <>
                Title.Caption = #1054#1055#1055'|'#1055#1088'.'
                Title.Orientation = tohVertical
                Width = 16
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
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conSaleOrders
    FieldDefs = <
      item
        Name = 'STATUS_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SALE_ORDER_ID'
        DataType = ftWideString
        Size = 121
      end
      item
        Name = 'MANAGER_EMPLOYEE_FULL_NAME'
        DataType = ftWideString
        Size = 56
      end
      item
        Name = 'COMPANY_STATUS_CODE'
        DataType = ftFloat
      end
      item
        Name = 'COMPANY_STATUS_NAME'
        DataType = ftWideString
        Size = 100
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
        Name = 'HAS_MEDIATOR'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
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
        Name = 'IS_ANNULED'
        DataType = ftFloat
      end
      item
        Name = 'IS_FINISHED'
        DataType = ftFloat
      end
      item
        Name = 'PLAN_PERIOD_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_PERIOD_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_PERIOD_DEVIATION_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'OFFER_SEND_DAYS_RSV'
        DataType = ftFloat
      end
      item
        Name = 'OFFER_ANSWER_DAYS_RSV'
        DataType = ftFloat
      end
      item
        Name = 'DECISION_DAYS_RSV'
        DataType = ftFloat
      end
      item
        Name = 'DECISION_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DECISION_TYPE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'PROGNOSIS_BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'PROGNOSIS_END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'MEASURE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'ACCOUNT_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'ACCOUNT_MEASURE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ACCOUNT_MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'IS_QUANTITY_AGREED'
        DataType = ftFloat
      end
      item
        Name = 'SINGLE_PRICE'
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
        Name = 'IS_SINGLE_PRICE_AGREED'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PROGNOSIS_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'PROGNOSIS_ACCOUNT_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'PROGNOSIS_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PROGNOSIS_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'RECEIVE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'SALE_ID'
        DataType = ftWideString
        Size = 81
      end
      item
        Name = 'COMMON_STATUS_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PROGNOSIS_LEASE_DATE_UNIT_QTY'
        DataType = ftFloat
      end
      item
        Name = 'PROGNOSIS_LEASE_DATE_UNIT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'IS_LEASE_QUANTITY_AGREED'
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
        Name = 'HAS_DOCUMENTATION'
        DataType = ftFloat
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
        Name = 'PRODUCT_HAS_DOCUMENTATION'
        DataType = ftFloat
      end
      item
        Name = 'PROGNOSIS_LEASE_DATE_UNIT_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'LEASE_DATE_UNIT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'LEASE_DATE_UNIT_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'LEASE_DATE_UNIT_QTY'
        DataType = ftFloat
      end
      item
        Name = 'PROGNOSIS_TOTAL_LEASE_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_LEASE_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'PROGNOSIS_ACCOUNT_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'ACCOUNT_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PROGNOSIS_ACC_TOTAL_LEASE_QTY'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_ACCOUNT_LEASE_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'PROGNOSIS_MEASURE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PROGNOSIS_MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'PROGNOSIS_ACCOUNT_MEASURE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PROGNOSIS_ACC_MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'PROGNOSIS_CURRENCY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PROGNOSIS_CURRENCY_ABBREV'
        DataType = ftWideString
        Size = 5
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
        Name = 'CLIENT_HAS_DOCUMENTATION'
        DataType = ftFloat
      end
      item
        Name = 'SALE_DEAL_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SALE_DEAL_TYPE_ABBREV'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'CLIENT_REQUEST_NO'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'CLIENT_PRODUCT_NAME'
        DataType = ftWideString
        Size = 50
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
        Name = 'REQUEST_BRANCH_ID'
        DataType = ftFloat
      end
      item
        Name = 'SALE_PRIORITY_NO'
        DataType = ftFloat
      end
      item
        Name = 'SALE_PRIORITY_COLOR'
        DataType = ftFloat
      end
      item
        Name = 'SALE_PRIORITY_BACKGROUND_COLOR'
        DataType = ftFloat
      end
      item
        Name = 'ASPECT_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ASPECT_TYPE_ABBREV'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'PAR_REL_PRODUCT_STATUS_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'IS_ACTIVATED_BY_CLIENT'
        DataType = ftFloat
      end
      item
        Name = 'BASE_ROLE_CODE'
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
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_DEAL_TYPE_CODE'
        ParamType = ptInput
        Value = '1'
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
        Value = '8'
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
        Name = 'REQUEST_LINE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_LINE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVATED_BY_CLIENT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVATED_BY_CLIENT'
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
        Name = 'LEASE_DATE_UNIT_CODE'
        ParamType = ptInput
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
        Name = 'BEGIN_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MANAGER_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MANAGER_EMPLOYEE_CODE'
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
        Name = 'CLIENT_COUNTRY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CLIENT_COUNTRY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_CLIENT_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_CLIENT_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_MEDIATOR_CODE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'HAS_MEDIATOR_CODE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'HAS_MEDIATOR_CODE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'HAS_MEDIATOR_CODE'
        ParamType = ptInput
        Value = '0'
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
        Name = 'DECISION_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DECISION_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DECISION_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DECISION_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_AGREED_QUANTITY'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'HAS_NOT_AGREED_QUANTITY'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'HAS_AGREED_SINGLE_PRICE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'HAS_NOT_AGREED_SINGLE_PRICE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_REQUEST_REGISTER_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_REQUEST_REGISTER_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_REQUEST_REGISTER_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_REQUEST_REGISTER_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_PROGNOSIS_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_PROGNOSIS_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_PROGNOSIS_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_PROGNOSIS_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_PROGNOSIS_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_PROGNOSIS_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_PROGNOSIS_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_PROGNOSIS_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_OFFER_SEND_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_OFFER_SEND_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_OFFER_SEND_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_OFFER_SEND_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_OFFER_SEND_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_OFFER_SEND_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_OFFER_SEND_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_OFFER_SEND_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_OFFER_ANSWER_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_OFFER_ANSWER_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_OFFER_ANSWER_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_OFFER_ANSWER_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_OFFER_ANSWER_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_OFFER_ANSWER_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_OFFER_ANSWER_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_OFFER_ANSWER_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DECISION_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DECISION_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DECISION_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DECISION_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DECISION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DECISION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DECISION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DECISION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_OFFER_SEND_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_OFFER_SEND_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_OFFER_SEND_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_OFFER_SEND_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_OFFER_ANSWER_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_OFFER_ANSWER_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_OFFER_ANSWER_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_OFFER_ANSWER_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_DECISION_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_DECISION_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_DECISION_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_DECISION_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STREAM_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STREAM_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PAR_REL_PRODUCT'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'PAR_REL_PRODUCT'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'PAR_REL_PRODUCT_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PAR_REL_PRODUCT_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PAR_REL_PRODUCT'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'HAS_DELIVERY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_DELIVERY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_DELIVERY'
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
        Name = 'HAS_DELIVERY'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
      end>
    ProviderName = 'prvSaleOrders'
    OnCalcFields = cdsGridDataCalcFields
    object cdsGridData_PROGNOSIS_PERIOD_MONTHS: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_PROGNOSIS_PERIOD_MONTHS'
      Calculated = True
    end
    object cdsGridDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataSTATUS_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'STATUS_CODE'
      OnGetText = cdsGridDataSTATUS_CODEGetText
    end
    object cdsGridDataASPECT_TYPE_CODE: TAbmesFloatField
      FieldName = 'ASPECT_TYPE_CODE'
    end
    object cdsGridDataASPECT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'ASPECT_TYPE_ABBREV'
      Size = 100
    end
    object cdsGridDataSALE_ORDER_ID: TAbmesWideStringField
      FieldName = 'SALE_ORDER_ID'
      Size = 211
    end
    object cdsGridDataMANAGER_EMPLOYEE_FULL_NAME: TAbmesWideStringField
      FieldName = 'MANAGER_EMPLOYEE_FULL_NAME'
      Size = 56
    end
    object cdsGridDataCOMPANY_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMPANY_STATUS_CODE'
      OnGetText = cdsGridDataCOMPANY_STATUS_CODEGetText
    end
    object cdsGridDataCOMPANY_STATUS_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_STATUS_NAME'
      Size = 100
    end
    object cdsGridDataCLIENT_COMPANY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_CODE'
    end
    object cdsGridDataCLIENT_COMPANY_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_COMPANY_NAME'
      Size = 50
    end
    object cdsGridDataPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
    object cdsGridDataPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object cdsGridDataPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
    object cdsGridDataHAS_MEDIATOR: TAbmesFloatField
      FieldName = 'HAS_MEDIATOR'
    end
    object cdsGridDataPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsGridDataIS_ANNULED: TAbmesFloatField
      FieldName = 'IS_ANNULED'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_FINISHED: TAbmesFloatField
      FieldName = 'IS_FINISHED'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataPLAN_PERIOD_DAYS: TAbmesFloatField
      FieldName = 'PLAN_PERIOD_DAYS'
    end
    object cdsGridDataREAL_PERIOD_DAYS: TAbmesFloatField
      FieldName = 'REAL_PERIOD_DAYS'
    end
    object cdsGridDataREAL_PERIOD_DEVIATION_PERCENT: TAbmesFloatField
      FieldName = 'REAL_PERIOD_DEVIATION_PERCENT'
      OnGetText = cdsGridDataREAL_PERIOD_DEVIATION_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataOFFER_SEND_DAYS_RSV: TAbmesFloatField
      FieldName = 'OFFER_SEND_DAYS_RSV'
    end
    object cdsGridDataOFFER_ANSWER_DAYS_RSV: TAbmesFloatField
      FieldName = 'OFFER_ANSWER_DAYS_RSV'
    end
    object cdsGridDataDECISION_DAYS_RSV: TAbmesFloatField
      FieldName = 'DECISION_DAYS_RSV'
    end
    object cdsGridDataDECISION_TYPE_CODE: TAbmesFloatField
      FieldName = 'DECISION_TYPE_CODE'
    end
    object cdsGridDataDECISION_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'DECISION_TYPE_ABBREV'
      Size = 5
    end
    object cdsGridDataPROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PROGNOSIS_BEGIN_DATE'
    end
    object cdsGridDataPROGNOSIS_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PROGNOSIS_END_DATE'
    end
    object cdsGridDataQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object cdsGridDataMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridDataACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object cdsGridDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridDataIS_QUANTITY_AGREED: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'IS_QUANTITY_AGREED'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object cdsGridDataCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      Size = 5
    end
    object cdsGridDataIS_SINGLE_PRICE_AGREED: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'IS_SINGLE_PRICE_AGREED'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataPROGNOSIS_QUANTITY: TAbmesFloatField
      FieldName = 'PROGNOSIS_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataPROGNOSIS_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'PROGNOSIS_ACCOUNT_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataPROGNOSIS_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PROGNOSIS_SINGLE_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataPROGNOSIS_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PROGNOSIS_TOTAL_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataRECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_DATE'
    end
    object cdsGridDataSALE_ID: TAbmesWideStringField
      FieldName = 'SALE_ID'
      Size = 81
    end
    object cdsGridDataPROGNOSIS_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'PROGNOSIS_LEASE_DATE_UNIT_QTY'
    end
    object cdsGridDataCOMMON_STATUS_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'COMMON_STATUS_CODE'
      OnGetText = cdsGridDataCOMMON_STATUS_CODEGetText
    end
    object cdsGridDataPROGNOSIS_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'PROGNOSIS_LEASE_DATE_UNIT_CODE'
    end
    object cdsGridDataIS_LEASE_QUANTITY_AGREED: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'IS_LEASE_QUANTITY_AGREED'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridData_LEASE_DATE_INTERVAL: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_LEASE_DATE_INTERVAL'
      OnGetText = cdsGridData_LEASE_DATE_INTERVALGetText
      Calculated = True
    end
    object cdsGridDataPROGNOSIS_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'PROGNOSIS_LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object cdsGridDataLEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_CODE'
    end
    object cdsGridDataLEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object cdsGridDataLEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_QTY'
    end
    object cdsGridDataPROGNOSIS_TOTAL_LEASE_QUANTITY: TAbmesFloatField
      FieldName = 'PROGNOSIS_TOTAL_LEASE_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataTOTAL_LEASE_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_LEASE_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsGridData_DISPLAY_SUM_PROGNOSIS_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DISPLAY_SUM_PROGNOSIS_QUANTITY'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_DISPLAY_SUM_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DISPLAY_SUM_QUANTITY'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_MEASURE_ABBREV'
      Size = 5
      Calculated = True
    end
    object cdsGridData_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_ACCOUNT_MEASURE_ABBREV'
      Calculated = True
    end
    object cdsGridData_PROGNOSIS_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_PROGNOSIS_MEASURE_ABBREV'
      Calculated = True
    end
    object cdsGridData_PROGNOSIS_ACC_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_PROGNOSIS_ACC_MEASURE_ABBREV'
      Calculated = True
    end
    object cdsGridData_DISPLAY_SUM_ACC_QTY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DISPLAY_SUM_ACC_QTY'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_DISPLAY_SUM_PROGNOSIS_ACC_QTY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DISPLAY_SUM_PROGNOSIS_ACC_QTY'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridDataPROGNOSIS_ACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PROGNOSIS_ACCOUNT_SINGLE_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_SINGLE_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataTOTAL_ACCOUNT_LEASE_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_ACCOUNT_LEASE_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataPROGNOSIS_ACC_TOTAL_LEASE_QTY: TAbmesFloatField
      FieldName = 'PROGNOSIS_ACC_TOTAL_LEASE_QTY'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataPROGNOSIS_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PROGNOSIS_MEASURE_CODE'
    end
    object cdsGridDataPROGNOSIS_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'PROGNOSIS_MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridDataPROGNOSIS_ACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PROGNOSIS_ACCOUNT_MEASURE_CODE'
    end
    object cdsGridDataPROGNOSIS_ACC_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'PROGNOSIS_ACC_MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridDataPROGNOSIS_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'PROGNOSIS_CURRENCY_CODE'
    end
    object cdsGridDataPROGNOSIS_CURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'PROGNOSIS_CURRENCY_ABBREV'
      Size = 5
    end
    object cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsGridDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsGridDataHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object cdsGridDataPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object cdsGridDataPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object cdsGridDataPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOCUMENTATION'
    end
    object cdsGridDataCLIENT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'CLIENT_DOC_BRANCH_CODE'
    end
    object cdsGridDataCLIENT_DOC_CODE: TAbmesFloatField
      FieldName = 'CLIENT_DOC_CODE'
    end
    object cdsGridDataCLIENT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'CLIENT_HAS_DOCUMENTATION'
    end
    object cdsGridDataSALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object cdsGridDataSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object cdsGridDataCLIENT_REQUEST_NO: TAbmesWideStringField
      FieldName = 'CLIENT_REQUEST_NO'
      Size = 50
    end
    object cdsGridDataCLIENT_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_PRODUCT_NAME'
      Size = 50
    end
    object cdsGridDataREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object cdsGridDataREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
    object cdsGridDataREQUEST_LINE_NO: TAbmesFloatField
      FieldName = 'REQUEST_LINE_NO'
    end
    object cdsGridDataREQUEST_BRANCH_ID: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_ID'
    end
    object cdsGridDataSALE_PRIORITY_NO: TAbmesFloatField
      FieldName = 'SALE_PRIORITY_NO'
    end
    object cdsGridDataSALE_PRIORITY_COLOR: TAbmesFloatField
      FieldName = 'SALE_PRIORITY_COLOR'
    end
    object cdsGridDataSALE_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'SALE_PRIORITY_BACKGROUND_COLOR'
    end
    object cdsGridDataPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField
      FieldName = 'PAR_REL_PRODUCT_STATUS_NAME'
      Size = 100
    end
    object cdsGridDataIS_ACTIVATED_BY_CLIENT: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'IS_ACTIVATED_BY_CLIENT'
      DisplayBoolValues = #1050#1083#1080#1077#1085#1090';'#1048#1055
      FieldValueType = fvtBoolean
    end
    object cdsGridDataBASE_ROLE_CODE: TAbmesFloatField
      FieldName = 'BASE_ROLE_CODE'
    end
    object cdsGridData_SALE_DEAL_TYPE_SHOW_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SALE_DEAL_TYPE_SHOW_NAME'
      LookupDataSet = cdsSaleDealTypes
      LookupKeyFields = 'SALE_DEAL_TYPE_CODE'
      LookupResultField = '_SALE_DEAL_TYPE_SHOW_NAME'
      KeyFields = 'SALE_DEAL_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsGridDataRECEIVE_PLACE_OFFICE_NAME: TAbmesWideStringField
      FieldName = 'RECEIVE_PLACE_OFFICE_NAME'
      Size = 50
    end
    object cdsGridDataCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CL_OFFER_RECEIVE_DATE'
    end
    object cdsGridData_SUM_PROGNOSIS_TOTAL_PRICE: TAggregateField
      FieldName = '_SUM_PROGNOSIS_TOTAL_PRICE'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(PROGNOSIS_TOTAL_PRICE)'
    end
    object cdsGridData_MIN_MEASURE_CODE: TAggregateField
      FieldName = '_MIN_MEASURE_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Min(MEASURE_CODE)'
    end
    object cdsGridData_MAX_MEASURE_CODE: TAggregateField
      FieldName = '_MAX_MEASURE_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Max(MEASURE_CODE)'
    end
    object cdsGridData_SUM_PROGNOSIS_QUANTITY: TAggregateField
      FieldName = '_SUM_PROGNOSIS_QUANTITY'
      Active = True
      DisplayName = ''
      Expression = 'Sum(PROGNOSIS_QUANTITY)'
    end
    object cdsGridData_SUM_TOTAL_PRICE: TAggregateField
      FieldName = '_SUM_TOTAL_PRICE'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(TOTAL_PRICE)'
    end
    object cdsGridData_SUM_QUANTITY: TAggregateField
      FieldName = '_SUM_QUANTITY'
      Active = True
      DisplayName = ''
      Expression = 'Sum(QUANTITY)'
    end
    object cdsGridData_MIN_PROGNOSIS_MEASURE_CODE: TAggregateField
      FieldName = '_MIN_PROGNOSIS_MEASURE_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Min(PROGNOSIS_MEASURE_CODE)'
    end
    object cdsGridData_MAX_PROGNOSIS_MEASURE_CODE: TAggregateField
      FieldName = '_MAX_PROGNOSIS_MEASURE_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Max(PROGNOSIS_MEASURE_CODE)'
    end
    object cdsGridData_MIN_ACCOUNT_MEASURE_CODE: TAggregateField
      FieldName = '_MIN_ACCOUNT_MEASURE_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Min(ACCOUNT_MEASURE_CODE)'
    end
    object cdsGridData_MAX_ACCOUNT_MEASURE_CODE: TAggregateField
      FieldName = '_MAX_ACCOUNT_MEASURE_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Max(ACCOUNT_MEASURE_CODE)'
    end
    object cdsGridData_MIN_PROGNOSIS_ACC_MEASURE_CODE: TAggregateField
      FieldName = '_MIN_PROGNOSIS_ACC_MEASURE_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Min(PROGNOSIS_ACCOUNT_MEASURE_CODE)'
    end
    object cdsGridData_MAX_PROGNOSIS_ACC_MEASURE_CODE: TAggregateField
      FieldName = '_MAX_PROGNOSIS_ACC_MEASURE_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Max(PROGNOSIS_ACCOUNT_MEASURE_CODE)'
    end
    object cdsGridData_SUM_PROGNOSIS_ACCOUNT_QUANTITY: TAggregateField
      FieldName = '_SUM_PROGNOSIS_ACCOUNT_QUANTITY'
      Active = True
      DisplayName = ''
      Expression = 'Sum(PROGNOSIS_ACCOUNT_QUANTITY)'
    end
    object cdsGridData_SUM_ACCOUNT_QUANTITY: TAggregateField
      FieldName = '_SUM_ACCOUNT_QUANTITY'
      Active = True
      DisplayName = ''
      Expression = 'Sum(ACCOUNT_QUANTITY)'
    end
  end
  inherited alActions: TActionList
    Left = 104
    Top = 144
    inherited actForm: TAction
      Caption = 
        #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1073#1086#1089#1086#1073#1077#1085#1080' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1050#1083#1080#1077#1085#1090#1080' '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '#1085#1072' %ProductC' +
        'lassAbbrev% %PoZadanie%'
    end
    inherited actFilter: TAction
      Visible = True
    end
    object actClientDoc: TAction
      Caption = 'actClientDoc'
      OnExecute = actClientDocExecute
      OnUpdate = actClientDocUpdate
    end
    object actSaleDoc: TAction
      Caption = 'actSaleDoc'
      OnExecute = actSaleDocExecute
      OnUpdate = actSaleDocUpdate
    end
    object actProductDoc: TAction
      Caption = 'actProductDoc'
      OnExecute = actProductDocExecute
      OnUpdate = actProductDocUpdate
    end
    object actToggleClientStuff: TAction
      GroupIndex = 1
      Hint = #1050#1083#1080#1077#1085#1090#1089#1082#1080' '#1086#1079#1085#1072#1095#1077#1085#1080#1103' '#1085#1072' '#1054#1044#1050' '#1080' %ProductClassAbbrev%'
      ImageIndex = 24
      OnExecute = actToggleClientStuffExecute
    end
    object actPrintSaleOrders: TAction
      Hint = #1055#1077#1095#1072#1090
      ImageIndex = 2
      OnExecute = actPrintSaleOrdersExecute
      OnUpdate = actPrintSaleOrdersUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    AfterOpen = pdsGridDataParamsAfterOpen
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
      DisplayLabel = #1058#1055' '#1043#1083'.'
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object pdsGridDataParamsREUQEST_NO: TAbmesFloatField
      DisplayLabel = #1055#1044#1050' No'
      FieldName = 'REUQEST_NO'
    end
    object pdsGridDataParamsREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
    object pdsGridDataParamsREQUEST_LINE_NO: TAbmesFloatField
      DisplayLabel = #1054#1044#1050
      FieldName = 'REQUEST_LINE_NO'
    end
    object pdsGridDataParamsSTREAM_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1055#1086#1090#1086#1082
      FieldName = 'STREAM_TYPE_CODE'
    end
    object pdsGridDataParamsASPECT_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1040#1089#1087#1077#1082#1090
      FieldName = 'ASPECT_TYPE_CODE'
    end
    object pdsGridDataParamsIS_ACTIVATED_BY_CLIENT: TAbmesFloatField
      DisplayLabel = #1040#1082#1090#1080#1074'. '#1086#1090
      FieldName = 'IS_ACTIVATED_BY_CLIENT'
    end
    object pdsGridDataParamsLEASE_DATE_UNIT_CODE: TAbmesFloatField
      DisplayLabel = #1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072
      FieldName = 'LEASE_DATE_UNIT_CODE'
    end
    object pdsGridDataParamsHAS_DELIVERY: TAbmesFloatField
      DisplayLabel = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1054#1055#1044
      FieldName = 'HAS_DELIVERY'
    end
    object pdsGridDataParamsDCD_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1054#1055#1044' - '#1058#1055' '#1043#1083'.'
      FieldName = 'DCD_BRANCH_CODE'
    end
    object pdsGridDataParamsDCD_CODE: TAbmesFloatField
      DisplayLabel = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1054#1055#1044' - '#1054#1055#1044' No'
      FieldName = 'DCD_CODE'
    end
    object pdsGridDataParamsDELIVERY_PROJECT_CODE: TAbmesFloatField
      DisplayLabel = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1054#1055#1044' - No'
      FieldName = 'DELIVERY_PROJECT_CODE'
    end
    object pdsGridDataParamsSALE_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1043#1083'.'
      FieldName = 'SALE_BRANCH_CODE'
    end
    object pdsGridDataParamsSALE_NO: TAbmesFloatField
      DisplayLabel = #1054#1055#1055' No'
      FieldName = 'SALE_NO'
    end
    object pdsGridDataParamsSALE_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1080#1076
      FieldName = 'SALE_TYPE_CODE'
    end
    object pdsGridDataParamsBEGIN_PRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1080#1086#1088#1080#1090#1077#1090' - '#1054#1090
      FieldName = 'BEGIN_PRIORITY_CODE'
    end
    object pdsGridDataParamsEND_PRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1080#1086#1088#1080#1090#1077#1090' - '#1044#1086
      FieldName = 'END_PRIORITY_CODE'
    end
    object pdsGridDataParamsMANAGER_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1086#1076#1077#1097' '#1044#1080#1072#1083#1086#1075
      FieldName = 'MANAGER_EMPLOYEE_CODE'
    end
    object pdsGridDataParamsCLIENT_COMPANY_CODE: TAbmesFloatField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      FieldName = 'CLIENT_COMPANY_CODE'
    end
    object pdsGridDataParamsCLIENT_COUNTRY_CODE: TAbmesFloatField
      DisplayLabel = #1050#1083#1080#1077#1085#1090' - '#1044#1098#1088#1078#1072#1074#1072
      FieldName = 'CLIENT_COUNTRY_CODE'
    end
    object pdsGridDataParamsBEGIN_CLIENT_PRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1050#1083#1080#1077#1085#1090' - '#1055#1088#1080#1086#1088#1080#1090#1077#1090' - '#1054#1090
      FieldName = 'BEGIN_CLIENT_PRIORITY_CODE'
    end
    object pdsGridDataParamsEND_CLIENT_PRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1050#1083#1080#1077#1085#1090' - '#1055#1088#1080#1086#1088#1080#1090#1077#1090' - '#1044#1086
      FieldName = 'END_CLIENT_PRIORITY_CODE'
    end
    object pdsGridDataParamsHAS_MEDIATOR_CODE: TAbmesFloatField
      DisplayLabel = #1057#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1055#1086#1089#1088#1077#1076#1085#1080#1082
      FieldName = 'HAS_MEDIATOR_CODE'
    end
    object pdsGridDataParamsMEDIATOR_COMPANY_CODE: TAbmesFloatField
      DisplayLabel = #1055#1086#1089#1088#1077#1076#1085#1080#1082
      FieldName = 'MEDIATOR_COMPANY_CODE'
    end
    object pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      DisplayLabel = '%ProductClassName%'
      FieldName = 'CHOSEN_PRODUCTS'
      Size = 4000
    end
    object pdsGridDataParamsPAR_REL_PRODUCT: TAbmesFloatField
      DisplayLabel = #1048#1079#1090#1086#1095#1085#1080#1082' '#1085#1072' '#1048#1085#1076#1091#1089#1090#1088#1080#1072#1083#1077#1085' '#1056#1077#1079#1091#1083#1090#1072#1090' (%ParRelProductAbbrev%)'
      FieldName = 'PAR_REL_PRODUCT'
    end
    object pdsGridDataParamsPAR_REL_PRODUCT_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1098#1089' '#1089#1098#1097#1077#1089#1090#1074#1091#1074#1072#1097' %ParRelProductAbbrev%'
      FieldName = 'PAR_REL_PRODUCT_STATUS_CODE'
    end
    object pdsGridDataParamsDECISION_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1056#1077#1096#1077#1085#1080#1077
      FieldName = 'DECISION_TYPE_CODE'
    end
    object pdsGridDataParamsDECISION_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1079#1077#1083' '#1056#1077#1096#1077#1085#1080#1077
      FieldName = 'DECISION_EMPLOYEE_CODE'
    end
    object pdsGridDataParamsHAS_AGREED_QUANTITY: TAbmesFloatField
      DisplayLabel = #1057#1098#1075#1083#1072#1089#1091#1074#1072#1085#1086#1089#1090' '#1087#1086' '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' - '#1048#1084#1072
      FieldName = 'HAS_AGREED_QUANTITY'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsHAS_NOT_AGREED_QUANTITY: TAbmesFloatField
      DisplayLabel = #1057#1098#1075#1083#1072#1089#1091#1074#1072#1085#1086#1089#1090' '#1087#1086' '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' - '#1053#1103#1084#1072
      FieldName = 'HAS_NOT_AGREED_QUANTITY'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsHAS_AGREED_SINGLE_PRICE: TAbmesFloatField
      DisplayLabel = #1057#1098#1075#1083#1072#1089#1091#1074#1072#1085#1086#1089#1090' '#1087#1086' '#1045#1076'. '#1094#1077#1085#1072' - '#1048#1084#1072
      FieldName = 'HAS_AGREED_SINGLE_PRICE'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsHAS_NOT_AGREED_SINGLE_PRICE: TAbmesFloatField
      DisplayLabel = #1057#1098#1075#1083#1072#1089#1091#1074#1072#1085#1086#1089#1090' '#1087#1086' '#1045#1076'. '#1094#1077#1085#1072' - '#1053#1103#1084#1072
      FieldName = 'HAS_NOT_AGREED_SINGLE_PRICE'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsBEGIN_REQUEST_REGISTER_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1072#1090#1072' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_REQUEST_REGISTER_DATE'
    end
    object pdsGridDataParamsEND_REQUEST_REGISTER_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1072#1090#1072' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077' - '#1050#1088#1072#1081
      FieldName = 'END_REQUEST_REGISTER_DATE'
    end
    object pdsGridDataParamsBEGIN_PROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'  - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_PROGNOSIS_BEGIN_DATE'
    end
    object pdsGridDataParamsEND_PROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'  - '#1050#1088#1072#1081
      FieldName = 'END_PROGNOSIS_BEGIN_DATE'
    end
    object pdsGridDataParamsBEGIN_PROGNOSIS_DAYS_RSV: TAbmesFloatField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'  - '#1056#1077#1079#1077#1088#1074' - '#1054#1090
      FieldName = 'BEGIN_PROGNOSIS_DAYS_RSV'
    end
    object pdsGridDataParamsEND_PROGNOSIS_DAYS_RSV: TAbmesFloatField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'  - '#1056#1077#1079#1077#1088#1074' - '#1044#1086
      FieldName = 'END_PROGNOSIS_DAYS_RSV'
    end
    object pdsGridDataParamsBEGIN_OFFER_SEND_PLAN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1072' '#1076#1072#1090#1072' '#1085#1072' '#1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1048#1055' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_OFFER_SEND_PLAN_DATE'
    end
    object pdsGridDataParamsEND_OFFER_SEND_PLAN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1072' '#1076#1072#1090#1072' '#1085#1072' '#1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1048#1055' - '#1050#1088#1072#1081
      FieldName = 'END_OFFER_SEND_PLAN_DATE'
    end
    object pdsGridDataParamsBEGIN_OFFER_SEND_DAYS_RSV: TAbmesFloatField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1072' '#1076#1072#1090#1072' '#1085#1072' '#1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1048#1055' - '#1056#1077#1079#1077#1088#1074' - '#1054#1090
      FieldName = 'BEGIN_OFFER_SEND_DAYS_RSV'
    end
    object pdsGridDataParamsEND_OFFER_SEND_DAYS_RSV: TAbmesFloatField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1072' '#1076#1072#1090#1072' '#1085#1072' '#1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1048#1055' - '#1056#1077#1079#1077#1088#1074' - '#1044#1086
      FieldName = 'END_OFFER_SEND_DAYS_RSV'
    end
    object pdsGridDataParamsBEGIN_OFFER_SEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1054#1090#1095#1077#1090#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1048#1055' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_OFFER_SEND_DATE'
    end
    object pdsGridDataParamsEND_OFFER_SEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1054#1090#1095#1077#1090#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1048#1055' - '#1050#1088#1072#1081
      FieldName = 'END_OFFER_SEND_DATE'
    end
    object pdsGridDataParamsBEGIN_OFFER_ANSWER_PLAN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1072' '#1076#1072#1090#1072' '#1085#1072' '#1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1050#1083#1080#1077#1085#1090' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_OFFER_ANSWER_PLAN_DATE'
    end
    object pdsGridDataParamsEND_OFFER_ANSWER_PLAN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1072' '#1076#1072#1090#1072' '#1085#1072' '#1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1050#1083#1080#1077#1085#1090' - '#1050#1088#1072#1081
      FieldName = 'END_OFFER_ANSWER_PLAN_DATE'
    end
    object pdsGridDataParamsBEGIN_OFFER_ANSWER_DAYS_RSV: TAbmesFloatField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1072' '#1076#1072#1090#1072' '#1085#1072' '#1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1050#1083#1080#1077#1085#1090' - '#1056#1077#1079#1077#1088#1074' - '#1054#1090
      FieldName = 'BEGIN_OFFER_ANSWER_DAYS_RSV'
    end
    object pdsGridDataParamsEND_OFFER_ANSWER_DAYS_RSV: TAbmesFloatField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1072' '#1076#1072#1090#1072' '#1085#1072' '#1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1050#1083#1080#1077#1085#1090' - '#1056#1077#1079#1077#1088#1074' - '#1044#1086
      FieldName = 'END_OFFER_ANSWER_DAYS_RSV'
    end
    object pdsGridDataParamsBEGIN_OFFER_ANSWER_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1054#1090#1095#1077#1090#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1050#1083#1080#1077#1085#1090' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_OFFER_ANSWER_DATE'
    end
    object pdsGridDataParamsEND_OFFER_ANSWER_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1054#1090#1095#1077#1090#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1050#1083#1080#1077#1085#1090' - '#1050#1088#1072#1081
      FieldName = 'END_OFFER_ANSWER_DATE'
    end
    object pdsGridDataParamsBEGIN_DECISION_PLAN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1072' '#1076#1072#1090#1072' '#1085#1072' '#1056#1077#1096#1077#1085#1080#1077' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_DECISION_PLAN_DATE'
    end
    object pdsGridDataParamsEND_DECISION_PLAN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1072' '#1076#1072#1090#1072' '#1085#1072' '#1056#1077#1096#1077#1085#1080#1077' - '#1050#1088#1072#1081
      FieldName = 'END_DECISION_PLAN_DATE'
    end
    object pdsGridDataParamsBEGIN_DECISION_DAYS_RSV: TAbmesFloatField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1072' '#1076#1072#1090#1072' '#1085#1072' '#1056#1077#1096#1077#1085#1080#1077' - '#1056#1077#1079#1077#1088#1074' - '#1054#1090
      FieldName = 'BEGIN_DECISION_DAYS_RSV'
    end
    object pdsGridDataParamsEND_DECISION_DAYS_RSV: TAbmesFloatField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1072' '#1076#1072#1090#1072' '#1085#1072' '#1056#1077#1096#1077#1085#1080#1077' - '#1056#1077#1079#1077#1088#1074' - '#1044#1086
      FieldName = 'END_DECISION_DAYS_RSV'
    end
    object pdsGridDataParamsBEGIN_DECISION_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1054#1090#1095#1077#1090#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1056#1077#1096#1077#1085#1080#1077' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_DECISION_DATE'
    end
    object pdsGridDataParamsEND_DECISION_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1054#1090#1095#1077#1090#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1056#1077#1096#1077#1085#1080#1077' - '#1050#1088#1072#1081
      FieldName = 'END_DECISION_DATE'
    end
    object pdsGridDataParamsHAS_DECISION_CODE: TAbmesFloatField
      FieldName = 'HAS_DECISION_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParams_PAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_PAR_REL_PRODUCT_STATUS_NAME'
      LookupDataSet = cdsParRelProductStatuses
      LookupKeyFields = 'PAR_REL_PRODUCT_STATUS_CODE'
      LookupResultField = 'PAR_REL_PRODUCT_STATUS_NAME'
      KeyFields = 'PAR_REL_PRODUCT_STATUS_CODE'
      OnGetText = pdsGridDataParams_PAR_REL_PRODUCT_STATUS_NAMEGetText
      Size = 100
      Lookup = True
    end
    object pdsGridDataParams_SALE_DEAL_TYPE_SHOW_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SALE_DEAL_TYPE_SHOW_NAME'
      LookupDataSet = cdsSaleDealTypes
      LookupKeyFields = 'SALE_DEAL_TYPE_CODE'
      LookupResultField = '_SALE_DEAL_TYPE_SHOW_NAME'
      KeyFields = 'SALE_DEAL_TYPE_CODE'
      Size = 100
      Lookup = True
    end
  end
  object cdsSaleDealTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Params = <>
    ProviderName = 'prvSaleDealTypes'
    AfterOpen = cdsSaleDealTypesAfterOpen
    OnCalcFields = cdsSaleDealTypesCalcFields
    Left = 200
    Top = 144
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
  object dsSaleDealTypes: TDataSource
    DataSet = cdsSaleDealTypes
    Left = 216
    Top = 144
  end
  object cdsParRelProductStatuses: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conParRelProducts
    Params = <>
    ProviderName = 'prvParRelProductStatuses'
    Left = 104
    Top = 208
    object cdsParRelProductStatusesPAR_REL_PRODUCT_STATUS_CODE: TAbmesFloatField
      FieldName = 'PAR_REL_PRODUCT_STATUS_CODE'
    end
    object cdsParRelProductStatusesPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField
      FieldName = 'PAR_REL_PRODUCT_STATUS_NAME'
      Size = 100
    end
  end
end
