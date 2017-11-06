inherited fmDeliveryDialogs: TfmDeliveryDialogs
  ActiveControl = nil
  Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1073#1086#1089#1086#1073#1077#1085#1080' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1044#1086#1089#1090#1072#1074#1095#1080#1094#1080' %ForOrOf% %Provision%'
  ClientHeight = 640
  ClientWidth = 1019
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 605
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
    object btnEdit: TBitBtn
      Left = 8
      Top = 0
      Width = 137
      Height = 25
      Action = actEditRecord
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 0
    end
  end
  inherited pnlMain: TPanel
    Width = 1019
    Height = 605
    inherited pnlGrid: TPanel
      Width = 1003
      Height = 589
      inherited pnlNavigator: TPanel
        Width = 1003
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
          Width = 80
          object btnPrintDeliveryDialogs: TToolButton
            Left = 56
            Top = 0
            Action = actPrintDeliveryDialogs
          end
        end
        object tbToggleQuantity: TToolBar
          Left = 828
          Top = 0
          Width = 175
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Caption = 'tbQuantity'
          EdgeInner = esNone
          EdgeOuter = esNone
          TabOrder = 3
          object btnToggleVendorStuff: TSpeedButton
            Left = 0
            Top = 0
            Width = 24
            Height = 24
            Action = actToggleVendorStuff
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
          object sepAfterToggleVendorStuff: TToolButton
            Left = 24
            Top = 0
            Width = 8
            Caption = 'sepAfterToggleVendorStuff'
            ImageIndex = 0
            Style = tbsSeparator
          end
          object btnWorkMeasure: TSpeedButton
            Left = 32
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
            OnClick = btnWorkMeasureClick
          end
          object btnAccountMeasure: TSpeedButton
            Left = 56
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
            OnClick = btnAccountMeasureClick
          end
          object sepBeforeDeliveryDealType: TToolButton
            Left = 80
            Top = 0
            Width = 8
            Caption = 'sepBeforeDeliveryDealType'
            Style = tbsSeparator
          end
          object lblDeliveryDealType: TLabel
            Left = 88
            Top = 0
            Width = 54
            Height = 24
            Caption = ' '#1058#1080#1087' '#1054#1044#1044' '
            Layout = tlCenter
          end
          object pnlSaleDealType: TPanel
            Left = 142
            Top = 0
            Width = 33
            Height = 24
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            object edtDeliveryDealType: TDBEdit
              Left = 0
              Top = 0
              Width = 33
              Height = 21
              Color = clBtnFace
              DataField = '_DELIVERY_DEAL_TYPE_ABBREV'
              DataSource = dsGridDataParams
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object tlbVendorDoc: TToolBar
          Left = 494
          Top = 0
          Width = 106
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 37
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 4
          object sepBeforeVendorDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'ToolButton1'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblVendorDoc: TLabel
            Left = 8
            Top = 0
            Width = 61
            Height = 24
            Caption = ' '#1044#1086#1089#1090#1072#1074#1095#1080#1082' '
            Layout = tlCenter
          end
          object btnVendorDoc: TToolButton
            Left = 69
            Top = 0
            Action = actVendorDoc
          end
        end
        object tlbDeliveryDoc: TToolBar
          Left = 224
          Top = 0
          Width = 107
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 37
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 5
          object sepBeforeDeliveryDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'ToolButton1'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblDeliveryDoc: TLabel
            Left = 8
            Top = 0
            Width = 62
            Height = 24
            Caption = ' '#1054#1044#1044'/'#1054#1055#1044' '
            Layout = tlCenter
          end
          object btnDeliveryDoc: TToolButton
            Left = 70
            Top = 0
            Action = actDeliveryDoc
          end
        end
        object tlbProductDoc: TToolBar
          Left = 331
          Top = 0
          Width = 163
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 37
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 6
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
            Height = 24
            Caption = ' %ProductClassAbbrev% '
            Layout = tlCenter
          end
          object btnProductDoc: TToolButton
            Left = 126
            Top = 0
            Action = actProductDoc
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 1003
        Height = 565
        Visible = False
        OnGetCellParams = grdDataGetCellParams
      end
      object pcMain: TPageControl
        Left = 0
        Top = 24
        Width = 1003
        Height = 565
        ActivePage = tsDetailCommon
        Align = alClient
        HotTrack = True
        TabOrder = 2
        object tsDetailCommon: TTabSheet
          Caption = #1042#1088#1077#1084#1077#1074#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1044
          object grdDeliveryDialogs: TAbmesDBGrid
            Left = 0
            Top = 0
            Width = 995
            Height = 537
            Align = alClient
            DataGrouping.GroupLevels = <>
            DataSource = dsGridData
            Flat = False
            FooterColor = 15258325
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'Microsoft Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            HorzScrollBar.Visible = False
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch]
            ReadOnly = True
            RowDetailPanel.Color = clBtnFace
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Microsoft Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VTitleMargin = 6
            OnDblClick = grdDataDblClick
            OnDrawColumnCell = grdDataDrawColumnCell
            OnGetCellParams = grdDataGetCellParams
            OnSortMarkingChanged = grdDataSortMarkingChanged
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
                FieldName = 'ASPECT_TYPE_ABBREV'
                Footers = <>
                Title.Caption = #1040#1089#1087#1077#1082#1090
                Title.Orientation = tohVertical
                Width = 25
              end
              item
                EditButtons = <>
                FieldName = 'DELIVERY_ID'
                Footers = <>
                Title.Caption = 'ID '#1054#1044#1044
                Width = 71
              end
              item
                EditButtons = <>
                FieldName = 'IS_ACTIVATED_BY_VENDOR'
                Footers = <>
                Title.Caption = #1040#1082#1090'. '#1086#1090
                Width = 25
              end
              item
                EditButtons = <>
                FieldName = 'DIALOG_EMPLOYEE_NAME'
                Footers = <>
                Title.Caption = #1042#1086#1076#1077#1097' '#1044#1080#1072#1083#1086#1075
                Width = 41
              end
              item
                Alignment = taLeftJustify
                EditButtons = <>
                FieldName = 'COMPANY_STATUS_CODE'
                Footers = <>
                Title.Caption = #1044#1086#1089#1090#1072#1074#1095#1080#1082'|'#1057#1090#1072#1090#1091#1089
                Width = 47
              end
              item
                EditButtons = <>
                FieldName = 'VENDOR_PRIORITY_NO'
                Footers = <>
                Title.Caption = #1044#1086#1089#1090#1072#1074#1095#1080#1082'|'#1055#1088#1080#1086#1088#1044
                Title.Orientation = tohVertical
                Width = 17
              end
              item
                EditButtons = <>
                FieldName = 'VENDOR_COMPANY_NAME'
                Footers = <>
                Title.Caption = #1044#1086#1089#1090#1072#1074#1095#1080#1082'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                Width = 85
              end
              item
                EditButtons = <>
                FieldName = 'HAS_MEDIATOR'
                Footers = <>
                Title.Caption = #1055#1086#1089#1088#1077#1076#1085#1080#1082
                Title.Orientation = tohVertical
                Width = 17
              end
              item
                EditButtons = <>
                FieldName = 'PRODUCT_NAME'
                Footers = <>
                Title.Caption = '%ProductClassName%|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
                Width = 148
              end
              item
                EditButtons = <>
                FieldName = 'VENDOR_PRODUCT_NAME'
                Footers = <>
                Title.Caption = '%ProductClassName%|'#1054#1079#1085'. '#1086#1090' '#1044#1086#1089#1090#1072#1074#1095#1080#1082
                Visible = False
                Width = 148
              end
              item
                EditButtons = <>
                FieldName = 'PRODUCT_ORIGIN_ABBREV_AND_NAME'
                Footers = <>
                Title.Caption = '%ProductClassName%|'#1059#1059#1057
                Width = 26
              end
              item
                EditButtons = <>
                FieldName = 'PAR_REL_PRODUCT_STATUS_NAME'
                Footers = <>
                Title.Caption = '%ProductStatusID%'
                Width = 48
              end
              item
                EditButtons = <>
                FieldName = 'PLAN_PERIOD_DAYS'
                Footers = <>
                Title.Caption = #1055#1077#1088#1080#1086#1076' ('#1076#1085#1080') '#1079#1072' '#1076#1086#1089#1090#1080#1075#1072#1085#1077' '#1076#1086' '#1056#1077#1096#1077#1085#1080#1077' '#1087#1086' '#1054#1044#1044'|'#1055#1083'. '#1087#1077#1088'.'
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'REAL_PERIOD_DAYS'
                Footers = <>
                Title.Caption = #1055#1077#1088#1080#1086#1076' ('#1076#1085#1080') '#1079#1072' '#1076#1086#1089#1090#1080#1075#1072#1085#1077' '#1076#1086' '#1056#1077#1096#1077#1085#1080#1077' '#1087#1086' '#1054#1044#1044'|'#1056#1083'. '#1087#1077#1088'.'
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'REAL_PERIOD_DEVIATION_PERCENT'
                Footers = <>
                Title.Caption = #1055#1077#1088#1080#1086#1076' ('#1076#1085#1080') '#1079#1072' '#1076#1086#1089#1090#1080#1075#1072#1085#1077' '#1076#1086' '#1056#1077#1096#1077#1085#1080#1077' '#1087#1086' '#1054#1044#1044'|'#1054#1090#1082#1083'. %'
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'POSITION_DAYS_RSV'
                Footers = <>
                Title.Caption = #1056#1077#1079#1077#1088#1074' ('#1076#1085#1080') '#1079#1072' '#1055#1086#1079#1080#1094#1080#1103' '#1080' '#1056#1077#1096#1077#1085#1080#1077' '#1087#1086' '#1054#1044#1044'|'#1055#1079#1094'. '#1048#1055
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'VENDOR_POSITION_DAYS_RSV'
                Footers = <>
                Title.Caption = #1056#1077#1079#1077#1088#1074' ('#1076#1085#1080') '#1079#1072' '#1055#1086#1079#1080#1094#1080#1103' '#1080' '#1056#1077#1096#1077#1085#1080#1077' '#1087#1086' '#1054#1044#1044'|'#1055#1079#1094'. '#1044#1086#1089#1090'.'
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'DECISION_DAYS_RSV'
                Footers = <>
                Title.Caption = #1056#1077#1079#1077#1088#1074' ('#1076#1085#1080') '#1079#1072' '#1055#1086#1079#1080#1094#1080#1103' '#1080' '#1056#1077#1096#1077#1085#1080#1077' '#1087#1086' '#1054#1044#1044'|'#1056#1077#1096#1077#1085#1080#1077
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'DELIVERY_DECISION_ABBREV'
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
          Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1044
          ImageIndex = 1
          object grdPrognosis: TAbmesDBGrid
            Left = 0
            Top = 0
            Width = 995
            Height = 537
            Align = alClient
            DataGrouping.GroupLevels = <>
            DataSource = dsGridData
            Flat = False
            FooterColor = 15258325
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'Microsoft Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            HorzScrollBar.Visible = False
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch]
            ReadOnly = True
            RowDetailPanel.Color = clBtnFace
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Microsoft Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VTitleMargin = 5
            OnDblClick = grdDataDblClick
            OnDrawColumnCell = grdDataDrawColumnCell
            OnGetCellParams = grdDataGetCellParams
            OnSortMarkingChanged = grdDataSortMarkingChanged
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
                FieldName = 'ASPECT_TYPE_ABBREV'
                Footers = <>
                Title.Caption = #1040#1089#1087#1077#1082#1090
                Title.Orientation = tohVertical
                Width = 25
              end
              item
                EditButtons = <>
                FieldName = 'DELIVERY_ID'
                Footers = <>
                Title.Caption = 'ID '#1054#1044#1044
                Width = 71
              end
              item
                EditButtons = <>
                FieldName = 'PRODUCT_NAME'
                Footers = <>
                Title.Caption = '%ProductClassName%|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
                Width = 258
              end
              item
                EditButtons = <>
                FieldName = 'VENDOR_PRODUCT_NAME'
                Footers = <>
                Title.Caption = '%ProductClassName%|'#1054#1079#1085'. '#1086#1090' '#1044#1086#1089#1090#1072#1074#1095#1080#1082
                Visible = False
                Width = 258
              end
              item
                EditButtons = <>
                FieldName = 'PRODUCT_ORIGIN_ABBREV_AND_NAME'
                Footers = <>
                Title.Caption = '%ProductClassName%|'#1059#1059#1057
                Width = 26
              end
              item
                EditButtons = <>
                FieldName = 'PAR_REL_PRODUCT_STATUS_NAME'
                Footers = <>
                Title.Caption = '%ProductStatusID%'
                Width = 48
              end
              item
                EditButtons = <>
                FieldName = '_PROGNOSIS_PERIOD_MONTHS'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1044'|'#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1077#1088#1089#1087'. ('#1084#1077#1089')'
                Width = 79
              end
              item
                EditButtons = <>
                FieldName = 'PROGNOSIS_QUANTITY'
                Footer.FieldName = '_DISPLAY_SUM_PROGNOSIS_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1044'|'#1056#1072#1073'. '#1082'-'#1074#1086
                Visible = False
                Width = 155
              end
              item
                EditButtons = <>
                FieldName = 'PROGNOSIS_MEASURE_ABBREV'
                Footer.FieldName = '_PROGNOSIS_MEASURE_ABBREV'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1044'|'#1052'.'#1077#1076'.'
                Visible = False
                Width = 73
              end
              item
                EditButtons = <>
                FieldName = 'PROGNOSIS_ACCOUNT_QUANTITY'
                Footer.FieldName = '_DISPLAY_SUM_PROGNOSIS_ACC_QTY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1044'|'#1057#1095#1077#1090'. '#1082'-'#1074#1086
                Visible = False
                Width = 155
              end
              item
                EditButtons = <>
                FieldName = 'PROGNOSIS_ACC_MEASURE_ABBREV'
                Footer.FieldName = '_PROGNOSIS_ACC_MEASURE_ABBREV'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1044'|'#1052'.'#1077#1076'.'
                Visible = False
                Width = 73
              end
              item
                EditButtons = <>
                FieldName = 'IS_QUANTITY_AGREED'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1044'|'#1057#1098#1075#1083#1072#1089'.'
                Title.Orientation = tohVertical
                Visible = False
                Width = 14
              end
              item
                EditButtons = <>
                FieldName = 'PROGNOSIS_QUANTITY'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1044'|'#1056#1072#1073'. '#1082'-'#1074#1086
                Width = 63
              end
              item
                EditButtons = <>
                FieldName = 'PROGNOSIS_MEASURE_ABBREV'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1044'|'#1052'.'#1077#1076'.'
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'PROGNOSIS_ACCOUNT_QUANTITY'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1044'|'#1057#1095#1077#1090'. '#1082'-'#1074#1086
                Visible = False
                Width = 63
              end
              item
                EditButtons = <>
                FieldName = 'PROGNOSIS_ACC_MEASURE_ABBREV'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1044'|'#1052'.'#1077#1076'.'
                Visible = False
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'PROGNOSIS_LEASE_DATE_UNIT_QTY'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1044'|'#1050'-'#1074#1086' '#1053#1084'. '#1057#1090'.'
                Width = 34
              end
              item
                EditButtons = <>
                FieldName = 'PROGNOSIS_LEASE_DATE_UNIT_NAME'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1044'|'#1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072
                Width = 56
              end
              item
                EditButtons = <>
                FieldName = 'PROGNOSIS_TOTAL_LEASE_QUANTITY'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1044'|'#1050'-'#1074#1086' '#1056#1072#1073'. '#1056#1077#1089#1091#1088#1089
                Width = 42
              end
              item
                EditButtons = <>
                FieldName = 'PROGNOSIS_ACC_TOTAL_LEASE_QTY'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1044'|'#1050'-'#1074#1086' '#1056#1072#1073'. '#1056#1077#1089#1091#1088#1089
                Visible = False
                Width = 42
              end
              item
                EditButtons = <>
                FieldName = 'IS_LEASE_QUANTITY_AGREED'
                Font.Charset = DEFAULT_CHARSET
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1044'|'#1057#1098#1075#1083#1072#1089'.'
                Title.Orientation = tohVertical
                Width = 14
              end
              item
                EditButtons = <>
                FieldName = 'PROGNOSIS_SINGLE_PRICE'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1044'| '#1045#1076'. '#1094#1077#1085#1072
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'PROGNOSIS_ACCOUNT_SINGLE_PRICE'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1044'| '#1045#1076'. '#1094#1077#1085#1072
                Visible = False
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'PROGNOSIS_CURRENCY_ABBREV'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1044'|'#1042#1072#1083'.'
                Width = 27
              end
              item
                EditButtons = <>
                FieldName = 'IS_PRICE_AGREED'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1044'|'#1057#1098#1075#1083#1072#1089'.'
                Title.Orientation = tohVertical
                Width = 14
              end
              item
                EditButtons = <>
                FieldName = 'PROGNOSIS_TOTAL_PRICE'
                Footer.FieldName = '_SUM_PROGNOSIS_TOTAL_PRICE'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1044'|'#1054#1073#1097#1072' '#1089#1090#1086#1081#1085#1086#1089#1090' (XXX)'
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
          Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1044
          ImageIndex = 2
          object grdRealization: TAbmesDBGrid
            Left = 0
            Top = 0
            Width = 995
            Height = 537
            Align = alClient
            DataGrouping.GroupLevels = <>
            DataSource = dsGridData
            Flat = False
            FooterColor = 15258325
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'Microsoft Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            HorzScrollBar.Visible = False
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch]
            ReadOnly = True
            RowDetailPanel.Color = clBtnFace
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Microsoft Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VTitleMargin = 6
            OnDblClick = grdDataDblClick
            OnDrawColumnCell = grdDataDrawColumnCell
            OnGetCellParams = grdDataGetCellParams
            OnSortMarkingChanged = grdDataSortMarkingChanged
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
                FieldName = 'ASPECT_TYPE_ABBREV'
                Footers = <>
                Title.Caption = #1040#1089#1087#1077#1082#1090
                Title.Orientation = tohVertical
                Width = 25
              end
              item
                EditButtons = <>
                FieldName = 'DELIVERY_ID'
                Footers = <>
                Title.Caption = 'ID '#1054#1044#1044
                Width = 71
              end
              item
                EditButtons = <>
                FieldName = 'PRODUCT_NAME'
                Footers = <>
                Title.Caption = '%ProductClassName%|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
                Width = 258
              end
              item
                EditButtons = <>
                FieldName = 'VENDOR_PRODUCT_NAME'
                Footers = <>
                Title.Caption = '%ProductClassName%|'#1054#1079#1085'. '#1086#1090' '#1044#1086#1089#1090#1072#1074#1095#1080#1082
                Visible = False
                Width = 258
              end
              item
                EditButtons = <>
                FieldName = 'PRODUCT_ORIGIN_ABBREV_AND_NAME'
                Footers = <>
                Title.Caption = '%ProductClassName%|'#1059#1059#1057
                Width = 26
              end
              item
                EditButtons = <>
                FieldName = 'PAR_REL_PRODUCT_STATUS_NAME'
                Footers = <>
                Title.Caption = '%ProductStatusID%'
                Width = 48
              end
              item
                EditButtons = <>
                FieldName = 'DELIVERY_DATE'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1044'|'#1044#1072#1090#1072' '#1055#1086#1083#1091#1095'.'
                Width = 92
              end
              item
                EditButtons = <>
                FieldName = 'WORK_QUANTITY'
                Footer.FieldName = '_DISPLAY_SUM_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1044'|'#1056#1072#1073'. '#1082'-'#1074#1086
                Width = 172
              end
              item
                EditButtons = <>
                FieldName = 'MEASURE_ABBREV'
                Footer.FieldName = '_MEASURE_ABBREV'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1044'|'#1052'.'#1077#1076'.'
                Width = 47
              end
              item
                EditButtons = <>
                FieldName = 'ACCOUNT_QUANTITY'
                Footer.FieldName = '_DISPLAY_SUM_ACCOUNT_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1044'|'#1057#1095#1077#1090'. '#1082'-'#1074#1086
                Visible = False
                Width = 172
              end
              item
                EditButtons = <>
                FieldName = 'ACCOUNT_MEASURE_ABBREV'
                Footer.FieldName = '_ACCOUNT_MEASURE_ABBREV'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1044'|'#1052'.'#1077#1076'.'
                Visible = False
                Width = 47
              end
              item
                EditButtons = <>
                FieldName = '_LEASE_DATE_INTERVAL'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1044'|'#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1053#1072#1077#1084
                Visible = False
                Width = 109
              end
              item
                EditButtons = <>
                FieldName = 'WORK_QUANTITY'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1044'|'#1056#1072#1073'. '#1082'-'#1074#1086
                Visible = False
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'MEASURE_ABBREV'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1044'|'#1052'.'#1077#1076'.'
                Visible = False
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'ACCOUNT_QUANTITY'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1044'|'#1057#1095#1077#1090'. '#1082'-'#1074#1086
                Visible = False
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'ACCOUNT_MEASURE_ABBREV'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1044'|'#1052'.'#1077#1076'.'
                Visible = False
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'LEASE_DATE_UNIT_QTY'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1044'|'#1050'-'#1074#1086' '#1053#1084'. '#1057#1090'.'
                Visible = False
                Width = 26
              end
              item
                EditButtons = <>
                FieldName = 'LEASE_DATE_UNIT_NAME'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1044'|'#1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072
                Visible = False
                Width = 47
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL_LEASE_QUANTITY'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1044'|'#1050'-'#1074#1086' '#1056#1072#1073'. '#1056#1077#1089#1091#1088#1089
                Visible = False
                Width = 41
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL_LEASE_ACCOUNT_QUANTITY'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1044'|'#1050'-'#1074#1086' '#1056#1072#1073'. '#1056#1077#1089#1091#1088#1089
                Visible = False
                Width = 41
              end
              item
                EditButtons = <>
                FieldName = 'SINGLE_PRICE'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1044'|'#1045#1076'. '#1094#1077#1085#1072
                Width = 57
              end
              item
                EditButtons = <>
                FieldName = 'ACCOUNT_SINGLE_PRICE'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1044'|'#1045#1076'. '#1094#1077#1085#1072
                Visible = False
                Width = 57
              end
              item
                EditButtons = <>
                FieldName = 'CURRENCY_ABBREV'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1044'|'#1042#1072'- '#1083#1091#1090#1072
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL_PRICE'
                Footer.FieldName = '_SUM_TOTAL_PRICE'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1044'|'#1054#1073#1097#1072' '#1089#1090#1086#1081#1085#1086#1089#1090' ('#1061#1061#1061')'
              end
              item
                EditButtons = <>
                FieldName = 'PRIORITY_NO'
                Footers = <>
                Title.Caption = #1054#1055#1044' '#1055#1088'.'
                Title.Orientation = tohVertical
                Width = 18
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 200
    Top = 192
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conDeliveries
    FieldDefs = <
      item
        Name = 'STATUS_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ASPECT_TYPE_ABBREV'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DELIVERY_ID'
        DataType = ftWideString
        Size = 122
      end
      item
        Name = 'IS_ACTIVATED_BY_VENDOR'
        DataType = ftFloat
      end
      item
        Name = 'DIALOG_EMPLOYEE_NAME'
        DataType = ftWideString
        Size = 75
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
        Name = 'VENDOR_COMPANY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'VENDOR_COMPANY_NAME'
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
        Name = 'PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'PRODUCT_ORIGIN_ABBREV_AND_NAME'
        DataType = ftWideString
        Size = 205
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
        Name = 'ACCOUNT_MEASURE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ACCOUNT_MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'REGISTER_DATE'
        DataType = ftTimeStamp
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
        Name = 'POSITION_DAYS_RSV'
        DataType = ftFloat
      end
      item
        Name = 'VENDOR_POSITION_DAYS_RSV'
        DataType = ftFloat
      end
      item
        Name = 'DECISION_DAYS_RSV'
        DataType = ftFloat
      end
      item
        Name = 'DELIVERY_DECISION_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DELIVERY_DECISION_ABBREV'
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
        Name = 'PROGNOSIS_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'PROGNOSIS_ACCOUNT_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'IS_QUANTITY_AGREED'
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
        Name = 'PROGNOSIS_CURRENCY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PROGNOSIS_CURRENCY_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'IS_PRICE_AGREED'
        DataType = ftFloat
      end
      item
        Name = 'DELIVERY_DATE'
        DataType = ftTimeStamp
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
        Name = 'SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_PRICE'
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
        Name = 'VENDOR_PRIORITY_NO'
        DataType = ftFloat
      end
      item
        Name = 'VENDOR_PRIORITY_COLOR'
        DataType = ftFloat
      end
      item
        Name = 'VENDOR_PRIORITY_BK_COLOR'
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
        Name = 'VENDOR_PRODUCT_NAME'
        DataType = ftWideString
        Size = 50
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
        Name = 'PROGNOSIS_MEASURE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PROGNOSIS_MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
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
        Name = 'PROGNOSIS_LEASE_DATE_UNIT_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'PROGNOSIS_TOTAL_LEASE_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'PROGNOSIS_ACC_TOTAL_LEASE_QTY'
        DataType = ftFloat
      end
      item
        Name = 'IS_LEASE_QUANTITY_AGREED'
        DataType = ftFloat
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
        Name = 'PROGNOSIS_ACCOUNT_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'ACCOUNT_SINGLE_PRICE'
        DataType = ftFloat
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
        Name = 'TOTAL_LEASE_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_ACCOUNT_LEASE_QUANTITY'
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
        Name = 'PAR_REL_PRODUCT_STATUS_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'BASE_ROLE_CODE'
        DataType = ftFloat
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
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
        Value = '8'
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_DEAL_TYPE_CODE'
        ParamType = ptInput
        Value = '3'
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
        Name = 'ASPECT_TYPE_CODE'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE_CODE'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVATED_BY_CODE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVATED_BY_CODE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVATED_BY_CODE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVATED_BY_CODE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'HAS_CONTRACT_CODE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'HAS_CONTRACT_CODE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'HAS_CONTRACT_CODE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_CONTRACT_CODE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'DIALOG_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DIALOG_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VENDOR_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VENDOR_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VENDOR_COUNTRY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VENDOR_COUNTRY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_VENDOR_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_VENDOR_PRIORITY_CODE'
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
        Name = 'HAS_SALE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_SALE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_SALE'
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
        Name = 'HAS_SALE'
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
        Name = 'DELIVERY_DECISION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_DECISION_CODE'
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
        DataType = ftTimeStamp
        Name = 'BEGIN_REGISTER_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_REGISTER_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_REGISTER_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_REGISTER_DATE'
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
        DataType = ftTimeStamp
        Name = 'BEGIN_PLAN_POSITION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_PLAN_POSITION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_PLAN_POSITION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_PLAN_POSITION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_REAL_POSITION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_REAL_POSITION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_REAL_POSITION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_REAL_POSITION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_PLAN_VENDOR_POS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_PLAN_VENDOR_POS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_PLAN_VENDOR_POSITION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_PLAN_VENDOR_POSITION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_REAL_VENDOR_POS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_REAL_VENDOR_POS_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_REAL_VENDOR_POSITION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_REAL_VENDOR_POSITION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_PLAN_DECISION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_PLAN_DECISION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_PLAN_DECISION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_PLAN_DECISION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_REAL_DECISION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_REAL_DECISION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_REAL_DECISION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_REAL_DECISION_DATE'
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
        DataType = ftFloat
        Name = 'BEGIN_POSITION_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_POSITION_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_POSITION_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_POSITION_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_VENDOR_POSITION_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_VENDOR_POSITION_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_VENDOR_POSITION_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_VENDOR_POSITION_DAYS_RSV'
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
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
      end>
    ProviderName = 'prvDeliveriyDialogs'
    OnCalcFields = cdsGridDataCalcFields
    Left = 168
    Top = 192
    object cdsGridDataASPECT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'ASPECT_TYPE_ABBREV'
      Size = 100
    end
    object cdsGridDataDELIVERY_ID: TAbmesWideStringField
      FieldName = 'DELIVERY_ID'
      Size = 212
    end
    object cdsGridDataIS_ACTIVATED_BY_VENDOR: TAbmesFloatField
      FieldName = 'IS_ACTIVATED_BY_VENDOR'
      DisplayBoolValues = #1044#1089';'#1059#1041
      FieldValueType = fvtBoolean
    end
    object cdsGridDataDIALOG_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'DIALOG_EMPLOYEE_NAME'
      Size = 75
    end
    object cdsGridDataCOMPANY_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMPANY_STATUS_CODE'
      OnGetText = cdsGridDataCOMPANY_STATUS_CODEGetText
    end
    object cdsGridDataCOMPANY_STATUS_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_STATUS_NAME'
      Size = 100
    end
    object cdsGridDataVENDOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'VENDOR_COMPANY_CODE'
    end
    object cdsGridDataVENDOR_COMPANY_NAME: TAbmesWideStringField
      FieldName = 'VENDOR_COMPANY_NAME'
    end
    object cdsGridDataPRIORITY_NO: TAbmesFloatField
      Alignment = taCenter
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
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsGridDataPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsGridDataPRODUCT_ORIGIN_ABBREV_AND_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_ORIGIN_ABBREV_AND_NAME'
      Size = 205
    end
    object cdsGridDataMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object cdsGridDataMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridDataACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object cdsGridDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridDataREGISTER_DATE: TAbmesSQLTimeStampField
      FieldName = 'REGISTER_DATE'
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
    object cdsGridDataPOSITION_DAYS_RSV: TAbmesFloatField
      FieldName = 'POSITION_DAYS_RSV'
    end
    object cdsGridDataVENDOR_POSITION_DAYS_RSV: TAbmesFloatField
      FieldName = 'VENDOR_POSITION_DAYS_RSV'
    end
    object cdsGridDataDECISION_DAYS_RSV: TAbmesFloatField
      FieldName = 'DECISION_DAYS_RSV'
    end
    object cdsGridDataDELIVERY_DECISION_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DECISION_CODE'
    end
    object cdsGridDataDELIVERY_DECISION_ABBREV: TAbmesWideStringField
      FieldName = 'DELIVERY_DECISION_ABBREV'
      Size = 5
    end
    object cdsGridDataPROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PROGNOSIS_BEGIN_DATE'
    end
    object cdsGridDataPROGNOSIS_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PROGNOSIS_END_DATE'
    end
    object cdsGridDataPROGNOSIS_QUANTITY: TAbmesFloatField
      FieldName = 'PROGNOSIS_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataPROGNOSIS_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'PROGNOSIS_ACCOUNT_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataIS_QUANTITY_AGREED: TAbmesFloatField
      FieldName = 'IS_QUANTITY_AGREED'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataPROGNOSIS_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PROGNOSIS_SINGLE_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataPROGNOSIS_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'PROGNOSIS_CURRENCY_CODE'
    end
    object cdsGridDataPROGNOSIS_CURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'PROGNOSIS_CURRENCY_ABBREV'
      Size = 5
    end
    object cdsGridDataIS_PRICE_AGREED: TAbmesFloatField
      FieldName = 'IS_PRICE_AGREED'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataPROGNOSIS_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PROGNOSIS_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataDELIVERY_DATE: TAbmesSQLTimeStampField
      FieldName = 'DELIVERY_DATE'
    end
    object cdsGridDataWORK_QUANTITY: TAbmesFloatField
      FieldName = 'WORK_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataSTATUS_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'STATUS_CODE'
      OnGetText = cdsGridDataSTATUS_CODEGetText
    end
    object cdsGridDataCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object cdsGridDataCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      Size = 5
    end
    object cdsGridDataVENDOR_PRIORITY_NO: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'VENDOR_PRIORITY_NO'
    end
    object cdsGridDataVENDOR_PRIORITY_BK_COLOR: TAbmesFloatField
      FieldName = 'VENDOR_PRIORITY_BK_COLOR'
    end
    object cdsGridDataVENDOR_PRIORITY_COLOR: TAbmesFloatField
      FieldName = 'VENDOR_PRIORITY_COLOR'
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
    object cdsGridDataVENDOR_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'VENDOR_DOC_BRANCH_CODE'
    end
    object cdsGridDataVENDOR_DOC_CODE: TAbmesFloatField
      FieldName = 'VENDOR_DOC_CODE'
    end
    object cdsGridDataVENDOR_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'VENDOR_HAS_DOCUMENTATION'
    end
    object cdsGridDataVENDOR_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'VENDOR_PRODUCT_NAME'
      Size = 50
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
    object cdsGridDataDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
    end
    object cdsGridDataDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
    end
    object cdsGridDataDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
    end
    object cdsGridDataPROGNOSIS_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PROGNOSIS_MEASURE_CODE'
    end
    object cdsGridDataPROGNOSIS_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'PROGNOSIS_MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridDataPROGNOSIS_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'PROGNOSIS_LEASE_DATE_UNIT_QTY'
    end
    object cdsGridDataPROGNOSIS_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'PROGNOSIS_LEASE_DATE_UNIT_CODE'
    end
    object cdsGridDataPROGNOSIS_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'PROGNOSIS_LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object cdsGridDataPROGNOSIS_TOTAL_LEASE_QUANTITY: TAbmesFloatField
      FieldName = 'PROGNOSIS_TOTAL_LEASE_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataPROGNOSIS_ACC_TOTAL_LEASE_QTY: TAbmesFloatField
      FieldName = 'PROGNOSIS_ACC_TOTAL_LEASE_QTY'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataIS_LEASE_QUANTITY_AGREED: TAbmesFloatField
      FieldName = 'IS_LEASE_QUANTITY_AGREED'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataPROGNOSIS_ACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PROGNOSIS_ACCOUNT_MEASURE_CODE'
    end
    object cdsGridDataPROGNOSIS_ACC_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'PROGNOSIS_ACC_MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridDataPROGNOSIS_ACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PROGNOSIS_ACCOUNT_SINGLE_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_SINGLE_PRICE'
      DisplayFormat = ',0.00'
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
    object cdsGridDataTOTAL_LEASE_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_LEASE_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataTOTAL_ACCOUNT_LEASE_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_ACCOUNT_LEASE_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataRECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_DATE'
    end
    object cdsGridDataRETURN_DATE: TAbmesSQLTimeStampField
      FieldName = 'RETURN_DATE'
    end
    object cdsGridDataPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField
      FieldName = 'PAR_REL_PRODUCT_STATUS_NAME'
      Size = 100
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
    object cdsGridData_DISPLAY_SUM_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DISPLAY_SUM_ACCOUNT_QUANTITY'
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
      Size = 5
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
    object cdsGridData_LEASE_DATE_INTERVAL: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_LEASE_DATE_INTERVAL'
      OnGetText = cdsGridData_LEASE_DATE_INTERVALGetText
      Calculated = True
    end
    object cdsGridData_PROGNOSIS_PERIOD_MONTHS: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_PROGNOSIS_PERIOD_MONTHS'
      Calculated = True
    end
    object cdsGridDataBASE_ROLE_CODE: TAbmesFloatField
      FieldName = 'BASE_ROLE_CODE'
    end
    object cdsGridData_MIN_MEASURE_CODE: TAggregateField
      FieldName = '_MIN_MEASURE_CODE'
      Active = True
      Expression = 'Min(MEASURE_CODE)'
    end
    object cdsGridData_MAX_MEASURE_CODE: TAggregateField
      FieldName = '_MAX_MEASURE_CODE'
      Active = True
      Expression = 'Max(MEASURE_CODE)'
    end
    object cdsGridData_MIN_ACCOUNT_MEASURE_CODE: TAggregateField
      FieldName = '_MIN_ACCOUNT_MEASURE_CODE'
      Active = True
      Expression = 'Min(ACCOUNT_MEASURE_CODE)'
    end
    object cdsGridData_MAX_ACCOUNT_MEASURE_CODE: TAggregateField
      FieldName = '_MAX_ACCOUNT_MEASURE_CODE'
      Active = True
      Expression = 'Max(ACCOUNT_MEASURE_CODE)'
    end
    object cdsGridData_SUM_QUANTITY: TAggregateField
      FieldName = '_SUM_QUANTITY'
      Active = True
      Expression = 'Sum(WORK_QUANTITY)'
    end
    object cdsGridData_SUM_ACCOUNT_QUANTITY: TAggregateField
      FieldName = '_SUM_ACCOUNT_QUANTITY'
      Active = True
      Expression = 'Sum(ACCOUNT_QUANTITY)'
    end
    object cdsGridData_SUM_TOTAL_PRICE: TAggregateField
      FieldName = '_SUM_TOTAL_PRICE'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(TOTAL_PRICE)'
    end
    object cdsGridData_SUM_PROGNOSIS_TOTAL_PRICE: TAggregateField
      FieldName = '_SUM_PROGNOSIS_TOTAL_PRICE'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(PROGNOSIS_TOTAL_PRICE)'
    end
    object cdsGridData_SUM_PROGNOSIS_QUANTITY: TAggregateField
      FieldName = '_SUM_PROGNOSIS_QUANTITY'
      Active = True
      Expression = 'Sum(PROGNOSIS_QUANTITY)'
    end
    object cdsGridData_MIN_PROGNOSIS_MEASURE_CODE: TAggregateField
      FieldName = '_MIN_PROGNOSIS_MEASURE_CODE'
      Active = True
      Expression = 'Min(PROGNOSIS_MEASURE_CODE)'
    end
    object cdsGridData_MAX_PROGNOSIS_MEASURE_CODE: TAggregateField
      FieldName = '_MAX_PROGNOSIS_MEASURE_CODE'
      Active = True
      Expression = 'Max(PROGNOSIS_MEASURE_CODE)'
    end
    object cdsGridData_MIN_PROGNOSIS_ACC_MEASURE_CODE: TAggregateField
      FieldName = '_MIN_PROGNOSIS_ACC_MEASURE_CODE'
      Active = True
      Expression = 'Min(PROGNOSIS_ACCOUNT_MEASURE_CODE)'
    end
    object cdsGridData_MAX_PROGNOSIS_ACC_MEASURE_CODE: TAggregateField
      FieldName = '_MAX_PROGNOSIS_ACC_MEASURE_CODE'
      Active = True
      Expression = 'Max(PROGNOSIS_ACCOUNT_MEASURE_CODE)'
    end
    object cdsGridData_SUM_PROGNOSIS_ACCOUNT_QUANTITY: TAggregateField
      FieldName = '_SUM_PROGNOSIS_ACCOUNT_QUANTITY'
      Active = True
      Expression = 'Sum(PROGNOSIS_ACCOUNT_QUANTITY)'
    end
  end
  inherited alActions: TActionList
    Left = 288
    Top = 160
    inherited actForm: TAction
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1073#1086#1089#1086#1073#1077#1085#1080' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1044#1086#1089#1090#1072#1074#1095#1080#1094#1080' %ForOrOf% %Provision%'
    end
    inherited actFilter: TAction
      Visible = True
    end
    object actToggleVendorStuff: TAction
      GroupIndex = 2
      Hint = #1054#1079#1085#1072#1095#1077#1085#1080#1103' '#1085#1072' %ProductClassAbbrev% '#1086#1090' '#1044#1086#1089#1090#1072#1074#1095#1080#1082
      ImageIndex = 24
      OnExecute = actToggleVendorStuffExecute
      OnUpdate = actToggleVendorStuffUpdate
    end
    object actDeliveryDoc: TAction
      Caption = 'actSaleDoc'
      OnExecute = actDeliveryDocExecute
      OnUpdate = actDeliveryDocUpdate
    end
    object actProductDoc: TAction
      Caption = 'actProductDoc'
      OnExecute = actProductDocExecute
      OnUpdate = actProductDocUpdate
    end
    object actVendorDoc: TAction
      Caption = 'actClientDoc'
      OnExecute = actVendorDocExecute
      OnUpdate = actVendorDocUpdate
    end
    object actPrintDeliveryDialogs: TAction
      Hint = #1055#1077#1095#1072#1090
      ImageIndex = 2
      OnExecute = actPrintDeliveryDialogsExecute
      OnUpdate = actPrintDeliveryDialogsUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    AfterOpen = pdsGridDataParamsAfterOpen
    Left = 168
    Top = 224
    object pdsGridDataParamsMIN_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' - '#1054#1090
      FieldName = 'MIN_STATUS_CODE'
    end
    object pdsGridDataParamsMAX_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' - '#1044#1086
      FieldName = 'MAX_STATUS_CODE'
    end
    object pdsGridDataParamsDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1080#1087
      FieldName = 'DELIVERY_DEAL_TYPE_CODE'
      OnChange = pdsGridDataParamsDELIVERY_DEAL_TYPE_CODEChange
    end
    object pdsGridDataParamsDCD_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1043#1083'.'
      FieldName = 'DCD_BRANCH_CODE'
    end
    object pdsGridDataParamsDCD_CODE: TAbmesFloatField
      DisplayLabel = #1055#1044#1044' No'
      FieldName = 'DCD_CODE'
    end
    object pdsGridDataParamsDELIVERY_PROJECT_CODE: TAbmesFloatField
      DisplayLabel = #1054#1044#1044
      FieldName = 'DELIVERY_PROJECT_CODE'
    end
    object pdsGridDataParamsSTREAM_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1055#1086#1090#1086#1082
      FieldName = 'STREAM_TYPE_CODE'
    end
    object pdsGridDataParamsASPECT_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1040#1089#1087#1077#1082#1090
      FieldName = 'ASPECT_TYPE_CODE'
    end
    object pdsGridDataParamsIS_ACTIVATED_BY_CODE: TAbmesFloatField
      DisplayLabel = #1040#1082#1090#1080#1074'. '#1086#1090
      FieldName = 'IS_ACTIVATED_BY_CODE'
    end
    object pdsGridDataParamsHAS_CONTRACT_CODE: TAbmesFloatField
      DisplayLabel = #1057#1098#1079#1076#1072#1076#1077#1085' '#1054#1055#1044
      FieldName = 'HAS_CONTRACT_CODE'
    end
    object pdsGridDataParamsDELIVERY_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1080#1076
      FieldName = 'DELIVERY_TYPE_CODE'
    end
    object pdsGridDataParamsMIN_PRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1080#1086#1088#1080#1090#1077#1090' - '#1054#1090
      FieldName = 'MIN_PRIORITY_CODE'
    end
    object pdsGridDataParamsMAX_PRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1080#1086#1088#1080#1090#1077#1090' - '#1044#1086
      FieldName = 'MAX_PRIORITY_CODE'
    end
    object pdsGridDataParamsHAS_SALE: TAbmesFloatField
      DisplayLabel = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1054#1055#1055
      FieldName = 'HAS_SALE'
    end
    object pdsGridDataParamsSALE_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1054#1055#1055' - '#1058#1055' '#1043#1083'.'
      FieldName = 'SALE_BRANCH_CODE'
    end
    object pdsGridDataParamsSALE_NO: TAbmesFloatField
      DisplayLabel = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1054#1055#1055' - '#1054#1055#1055' No'
      FieldName = 'SALE_NO'
    end
    object pdsGridDataParamsDIALOG_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1086#1076#1077#1097' '#1044#1080#1072#1083#1086#1075
      FieldName = 'DIALOG_EMPLOYEE_CODE'
    end
    object pdsGridDataParamsVENDOR_COMPANY_CODE: TAbmesFloatField
      DisplayLabel = #1044#1086#1089#1090#1072#1074#1095#1080#1082
      FieldName = 'VENDOR_COMPANY_CODE'
    end
    object pdsGridDataParamsVENDOR_COUNTRY_CODE: TAbmesFloatField
      DisplayLabel = #1044#1086#1089#1090#1072#1074#1095#1080#1082' - '#1044#1098#1088#1078#1072#1074#1072
      FieldName = 'VENDOR_COUNTRY_CODE'
    end
    object pdsGridDataParamsBEGIN_VENDOR_PRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1044#1086#1089#1090#1072#1074#1095#1080#1082' - '#1055#1088#1080#1086#1088#1080#1090#1077#1090' - '#1054#1090
      FieldName = 'BEGIN_VENDOR_PRIORITY_CODE'
    end
    object pdsGridDataParamsEND_VENDOR_PRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1044#1086#1089#1090#1072#1074#1095#1080#1082' - '#1055#1088#1080#1086#1088#1080#1090#1077#1090' - '#1044#1086
      FieldName = 'END_VENDOR_PRIORITY_CODE'
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
      DisplayLabel = #1048#1079#1090#1086#1095#1085#1080#1082' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1080' ('#1048#1044')'
      FieldName = 'PAR_REL_PRODUCT'
    end
    object pdsGridDataParamsPAR_REL_PRODUCT_STATUS_CODE: TAbmesFloatField
      DisplayLabel = 
        #1048#1079#1090#1086#1095#1085#1080#1082' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1080' ('#1048#1044') - '#1089#1098#1089' '#1089#1098#1097#1077#1089#1090#1074#1091#1074#1072#1097' %ParRelProductAbbrev' +
        '%'
      FieldName = 'PAR_REL_PRODUCT_STATUS_CODE'
    end
    object pdsGridDataParamsDELIVERY_DECISION_CODE: TAbmesFloatField
      DisplayLabel = #1056#1077#1096#1077#1085#1080#1077
      FieldName = 'DELIVERY_DECISION_CODE'
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
    object pdsGridDataParamsBEGIN_REGISTER_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1072#1090#1072' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_REGISTER_DATE'
    end
    object pdsGridDataParamsEND_REGISTER_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1072#1090#1072' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077' - '#1050#1088#1072#1081
      FieldName = 'END_REGISTER_DATE'
    end
    object pdsGridDataParamsBEGIN_PROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_PROGNOSIS_BEGIN_DATE'
    end
    object pdsGridDataParamsEND_PROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072' - '#1050#1088#1072#1081
      FieldName = 'END_PROGNOSIS_BEGIN_DATE'
    end
    object pdsGridDataParamsBEGIN_PROGNOSIS_DAYS_RSV: TAbmesFloatField
      DisplayLabel = #1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072' - '#1056#1077#1079#1077#1088#1074' - '#1054#1090
      FieldName = 'BEGIN_PROGNOSIS_DAYS_RSV'
    end
    object pdsGridDataParamsEND_PROGNOSIS_DAYS_RSV: TAbmesFloatField
      DisplayLabel = #1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072' - '#1056#1077#1079#1077#1088#1074' - '#1044#1086
      FieldName = 'END_PROGNOSIS_DAYS_RSV'
    end
    object pdsGridDataParamsBEGIN_PLAN_POSITION_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1048#1055' - '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1072' '#1076#1072#1090#1072' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_PLAN_POSITION_DATE'
    end
    object pdsGridDataParamsEND_PLAN_POSITION_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1048#1055' - '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1072' '#1076#1072#1090#1072' - '#1050#1088#1072#1081
      FieldName = 'END_PLAN_POSITION_DATE'
    end
    object pdsGridDataParamsBEGIN_POSITION_DAYS_RSV: TAbmesFloatField
      DisplayLabel = #1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1048#1055' - '#1056#1077#1079#1077#1088#1074' ('#1076#1085#1080') - '#1054#1090
      FieldName = 'BEGIN_POSITION_DAYS_RSV'
    end
    object pdsGridDataParamsEND_POSITION_DAYS_RSV: TAbmesFloatField
      DisplayLabel = #1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1048#1055' - '#1056#1077#1079#1077#1088#1074' ('#1076#1085#1080') - '#1044#1086
      FieldName = 'END_POSITION_DAYS_RSV'
    end
    object pdsGridDataParamsBEGIN_REAL_POSITION_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1048#1055' - '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1054#1090#1095#1077#1090#1085#1072' '#1076#1072#1090#1072' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_REAL_POSITION_DATE'
    end
    object pdsGridDataParamsEND_REAL_POSITION_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1048#1055' - '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1054#1090#1095#1077#1090#1085#1072' '#1076#1072#1090#1072' - '#1050#1088#1072#1081
      FieldName = 'END_REAL_POSITION_DATE'
    end
    object pdsGridDataParamsBEGIN_PLAN_VENDOR_POS_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1095#1080#1082' - '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1072' '#1076#1072#1090#1072' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_PLAN_VENDOR_POS_DATE'
    end
    object pdsGridDataParamsEND_PLAN_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1095#1080#1082' - '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1072' '#1076#1072#1090#1072' - '#1050#1088#1072#1081
      FieldName = 'END_PLAN_VENDOR_POSITION_DATE'
    end
    object pdsGridDataParamsBEGIN_VENDOR_POSITION_DAYS_RSV: TAbmesFloatField
      DisplayLabel = #1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1095#1080#1082' - '#1056#1077#1079#1077#1088#1074' ('#1076#1085#1080') - '#1054#1090
      FieldName = 'BEGIN_VENDOR_POSITION_DAYS_RSV'
    end
    object pdsGridDataParamsEND_VENDOR_POSITION_DAYS_RSV: TAbmesFloatField
      DisplayLabel = #1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1095#1080#1082' - '#1056#1077#1079#1077#1088#1074' ('#1076#1085#1080') - '#1044#1086
      FieldName = 'END_VENDOR_POSITION_DAYS_RSV'
    end
    object pdsGridDataParamsBEGIN_REAL_VENDOR_POS_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1095#1080#1082' - '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1054#1090#1095#1077#1090#1085#1072' '#1076#1072#1090#1072' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_REAL_VENDOR_POS_DATE'
    end
    object pdsGridDataParamsEND_REAL_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1095#1080#1082' - '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1054#1090#1095#1077#1090#1085#1072' '#1076#1072#1090#1072' - '#1050#1088#1072#1081
      FieldName = 'END_REAL_VENDOR_POSITION_DATE'
    end
    object pdsGridDataParamsBEGIN_PLAN_DECISION_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1056#1077#1096#1077#1085#1080#1077' - '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1072' '#1076#1072#1090#1072' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_PLAN_DECISION_DATE'
    end
    object pdsGridDataParamsEND_PLAN_DECISION_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1056#1077#1096#1077#1085#1080#1077' - '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1072' '#1076#1072#1090#1072' - '#1050#1088#1072#1081
      FieldName = 'END_PLAN_DECISION_DATE'
    end
    object pdsGridDataParamsBEGIN_DECISION_DAYS_RSV: TAbmesFloatField
      DisplayLabel = #1056#1077#1096#1077#1085#1080#1077' - '#1056#1077#1079#1077#1088#1074' ('#1076#1085#1080') - '#1054#1090
      FieldName = 'BEGIN_DECISION_DAYS_RSV'
    end
    object pdsGridDataParamsEND_DECISION_DAYS_RSV: TAbmesFloatField
      DisplayLabel = #1056#1077#1096#1077#1085#1080#1077' - '#1056#1077#1079#1077#1088#1074' ('#1076#1085#1080') - '#1044#1086
      FieldName = 'END_DECISION_DAYS_RSV'
    end
    object pdsGridDataParamsBEGIN_REAL_DECISION_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1056#1077#1096#1077#1085#1080#1077' - '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1054#1090#1095#1077#1090#1085#1072' '#1076#1072#1090#1072' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_REAL_DECISION_DATE'
    end
    object pdsGridDataParamsEND_REAL_DECISION_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1056#1077#1096#1077#1085#1080#1077' - '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1054#1090#1095#1077#1090#1085#1072' '#1076#1072#1090#1072' - '#1050#1088#1072#1081
      FieldName = 'END_REAL_DECISION_DATE'
    end
    object pdsGridDataParams_DELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_DELIVERY_DEAL_TYPE_ABBREV'
      LookupDataSet = cdsDeliveryDealTypes
      LookupKeyFields = 'BORDER_DEAL_TYPE_CODE'
      LookupResultField = 'BORDER_DEAL_TYPE_ABBREV'
      KeyFields = 'DELIVERY_DEAL_TYPE_CODE'
      Size = 100
      Lookup = True
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
    object pdsGridDataParamsHAS_DECISION_CODE: TAbmesFloatField
      FieldName = 'HAS_DECISION_CODE'
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 200
    Top = 224
  end
  inherited dsData: TDataSource
    Left = 200
    Top = 160
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 168
    Top = 160
  end
  object dsDeliveryDealTypes: TDataSource
    DataSet = cdsDeliveryDealTypes
    Left = 304
    Top = 240
  end
  object cdsDeliveryDealTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDeliveries
    Params = <>
    ProviderName = 'prvDeliveryDealTypes'
    Left = 272
    Top = 240
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
  object cdsParRelProductStatuses: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conParRelProducts
    Params = <>
    ProviderName = 'prvParRelProductStatuses'
    Left = 272
    Top = 272
    object cdsParRelProductStatusesPAR_REL_PRODUCT_STATUS_CODE: TAbmesFloatField
      FieldName = 'PAR_REL_PRODUCT_STATUS_CODE'
    end
    object cdsParRelProductStatusesPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField
      FieldName = 'PAR_REL_PRODUCT_STATUS_NAME'
      Size = 100
    end
  end
end
