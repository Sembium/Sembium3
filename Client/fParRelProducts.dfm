inherited fmParRelProducts: TfmParRelProducts
  Left = 247
  Top = 130
  Caption = 
    #1052#1072#1090#1088#1080#1094#1072' '#1085#1072' %ParRelProducts%%ParRelProductsStructurePartIncludeKi' +
    'nd%%ParRelProductsDeptIncludeKind%%ParRelProductsKind%%ForCommon' +
    'Product% - %ParRelProductsOrientation%'
  ClientHeight = 619
  ClientWidth = 1019
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 584
    Width = 1019
    TabOrder = 2
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
    object pnlNotes: TPanel
      Left = 809
      Top = 0
      Width = 249
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 3
      object dbtBusinessResultNote: TDBText
        Left = 8
        Top = 16
        Width = 121
        Height = 17
        DataField = '_BUSINESS_RESULT_NOTE'
        DataSource = dsGridDataParams
      end
      object lblCurrencyNote: TLabel
        Left = 8
        Top = 0
        Width = 234
        Height = 13
        Caption = #1042#1089#1080#1095#1082#1080' '#1089#1090#1086#1081#1085#1086#1089#1090#1080' '#1089#1072' '#1074' %BaseCurrencyAbbrev%'
      end
    end
    object pnlParRelProductsEngineeringButton: TPanel
      Left = 0
      Top = 0
      Width = 153
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 4
      object btnParRelProductsEngineering: TBitBtn
        Left = 8
        Top = 2
        Width = 137
        Height = 25
        Action = actParRelProductsEngineering
        Caption = '%ParRelProductsAbbrev% '#1079#1072' '#1055#1048#1056'%ForCommonProduct%...'
        TabOrder = 0
      end
    end
    object pnlParRelProductsForCommonProductButton: TPanel
      Left = 153
      Top = 0
      Width = 152
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 5
      object btnParRelProductsForCommonProduct: TBitBtn
        Left = 8
        Top = 2
        Width = 137
        Height = 25
        Action = actParRelProductsForCommonProduct
        Caption = '%ParRelProductsAbbrev%%ParRelProductsKind% '#1079#1072' '#1058#1049#1057'...'
        TabOrder = 0
      end
    end
    object pnlEngineeringButtons: TPanel
      Left = 457
      Top = 0
      Width = 176
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 6
      object btnEngineeringOrder: TBitBtn
        Left = 8
        Top = 2
        Width = 73
        Height = 25
        Action = actEngineeringOrder
        Caption = #1054#1055#1048#1056'...'
        TabOrder = 0
      end
      object btnCommonGroups: TBitBtn
        Left = 96
        Top = 2
        Width = 73
        Height = 25
        Action = actCommonGroups
        Caption = #1058#1049#1057'...'
        TabOrder = 1
      end
    end
    object pnlRealBorderDealsButton: TPanel
      Left = 305
      Top = 0
      Width = 152
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 7
      object btnRealBorderDeals: TBitBtn
        Left = 8
        Top = 2
        Width = 137
        Height = 25
        Action = actRealBorderDeals
        Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' %BorderProcessOrderAbbrev%...'
        TabOrder = 0
      end
    end
    object pnlPriceListButton: TPanel
      Left = 633
      Top = 0
      Width = 176
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 8
      object btnPriceList: TBitBtn
        Left = 8
        Top = 2
        Width = 161
        Height = 25
        Action = actPriceList
        Caption = #1062#1077#1085#1086#1074#1072' '#1051#1080#1089#1090#1072' '#1079#1072' %Master%...'
        TabOrder = 0
      end
    end
  end
  inherited pnlMain: TPanel
    Top = 127
    Width = 1019
    Height = 457
    TabOrder = 1
    inherited sptDetail: TSplitter
      Top = 182
      Width = 1003
    end
    inherited pnlDetailGrid: TPanel
      Top = 185
      Width = 1003
      Height = 264
      inherited pnlDetailNavigator: TPanel
        Width = 1003
        inherited navDetail: TDBColorNavigator
          Hints.Strings = ()
        end
        object tlbDetailPartnerDoc: TToolBar
          Left = 369
          Top = 0
          Width = 100
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonWidth = 36
          Images = dmMain.ilDocs
          TabOrder = 2
          object sepDetailPartnerDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            ImageIndex = 0
            Style = tbsSeparator
          end
          object lblDetailPartnerDoc: TLabel
            Left = 8
            Top = 0
            Width = 56
            Height = 22
            Caption = ' %Partner% '
            Layout = tlCenter
          end
          object btnDetailPartnerDoc: TToolButton
            Left = 64
            Top = 0
            Action = actDetailPartnerDoc
          end
        end
        object tlbDetailProductDoc: TToolBar
          Left = 469
          Top = 0
          Width = 162
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonWidth = 36
          Images = dmMain.ilDocs
          TabOrder = 3
          object sepDetailProductDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            ImageIndex = 0
            Style = tbsSeparator
          end
          object lblDetailProductDoc: TLabel
            Left = 8
            Top = 0
            Width = 118
            Height = 22
            Caption = ' %ProductClassAbbrev% '
            Layout = tlCenter
          end
          object btnDetailProductDoc: TToolButton
            Left = 126
            Top = 0
            Action = actDetailProductDoc
          end
        end
        object tlbParRelProductDoc: TToolBar
          Left = 200
          Top = 0
          Width = 169
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonWidth = 36
          Images = dmMain.ilDocs
          TabOrder = 4
          object sepParRelProductDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            ImageIndex = 0
            Style = tbsSeparator
          end
          object lblParRelProductDoc: TLabel
            Left = 8
            Top = 0
            Width = 125
            Height = 22
            Caption = ' %ParRelProductAbbrev% '
            Layout = tlCenter
          end
          object btnParRelProductDoc: TToolButton
            Left = 133
            Top = 0
            Action = actParRelProductDoc
          end
        end
      end
      inherited grdDetail: TAbmesDBGrid
        Width = 1003
        Height = 240
        HorzScrollBar.Visible = False
        UseMultiTitle = True
        OnGetCellParams = grdDetailGetCellParams
        Columns = <
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PAR_REL_PRODUCT_STATUS_NAME'
            Footers = <>
            Title.Caption = '%ParRelProductAbbrev%|'#1057#1090#1072#1090#1091#1089
            Width = 43
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PAR_REL_PRODUCT_EXIST_MONTHS'
            Footers = <>
            Title.Caption = '%ParRelProductAbbrev%|'#1057#1098#1097'. ('#1084#1077#1089')'
            Width = 31
          end
          item
            Alignment = taLeftJustify
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'IS_REGULAR'
            Footers = <>
            Title.Caption = '%ParRelProductAbbrev%|'#1056#1077#1078'. '#1087#1091#1083#1089'.'
            Width = 30
          end
          item
            AutoFitColWidth = False
            Color = 15532031
            EditButtons = <>
            FieldName = 'HAS_DOC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = '%ParRelProductAbbrev%|'#1048' '#1048' '#1054
            Width = 13
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PARTNER_STATUS_CODE'
            Footers = <>
            Title.Caption = '%Partner%|'#1057#1090#1072#1090#1091#1089
            Width = 43
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PARTNER_EXISTENCE_MONTHS'
            Footers = <>
            Title.Caption = '%Partner%|'#1057#1098#1097'. ('#1084#1077#1089')'
            Width = 31
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PARTNER_COMPANY_CLASS_ABBREV'
            Footers = <>
            Title.Caption = '%Partner%|'#1050#1083#1072#1089
            Width = 35
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PARTNER_PRIORITY_NO'
            Footers = <>
            Title.Caption = '%Partner%|%PartnerPriority%'
            Title.Orientation = tohVertical
            Width = 13
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PARTNER_NAME'
            Footers = <>
            Title.Caption = '%Partner%|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 149
          end
          item
            AutoFitColWidth = False
            Color = 15532031
            EditButtons = <>
            FieldName = 'PARTNER_HAS_DOC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = '%Partner%|'#1048' '#1048' '#1054
            Width = 13
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PRODUCT_COMMON_STATUS_CODE'
            Footers = <>
            Title.Caption = '%ProductClassName%|'#1055#1079#1094' '#1058#1049#1057
            Title.Orientation = tohVertical
            Width = 13
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PRODUCT_PRIORITY_NO'
            Footers = <>
            Title.Caption = '%ProductClassName%|'#1041#1055#1088#1080#1086#1088'.'
            Title.Orientation = tohVertical
            Width = 13
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PRODUCT_NAME'
            Footers = <>
            Title.Caption = '%ProductClassName%|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
            Width = 211
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PARTNER_PRODUCT_NAME'
            Footers = <>
            Title.Caption = '%ProductClassName%|'#1054#1079#1085#1072#1095#1077#1085#1080#1077' '#1086#1090' '#1055#1072#1088#1090#1085#1100#1086#1088
            Width = 211
          end
          item
            AutoFitColWidth = False
            Color = 15532031
            EditButtons = <>
            FieldName = 'PRODUCT_HAS_DOC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = '%ProductClassName%|'#1048' '#1048' '#1054
            Width = 13
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PROD_MIN_PREC_LEVEL_NO'
            Footers = <>
            Title.Caption = '%ProductClassName%|'#1053#1058'|Min'
            Title.Orientation = tohVertical
            Width = 17
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PROD_MAX_PREC_LEVEL_NO'
            Footers = <>
            Title.Caption = '%ProductClassName%|'#1053#1058'|Max'
            Title.Orientation = tohVertical
            Width = 17
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EST_QUANTITY'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1056#1072#1073'. '#1082'-'#1074#1086
            Width = 45
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EST_QUANTITY'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1050'-'#1074#1086' '#1088#1072#1073'. '#1088#1077#1089#1091#1088#1089
            Width = 45
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PRODUCT_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1056#1072#1073'. '#1084'.'#1077#1076'.'
            Width = 31
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EST_LEASE_DATE_UNIT_NAME'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1053#1072#1077#1084#1085#1072' '#1089#1090#1098#1087#1082#1072
            Width = 69
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EST_SINGLE_PRICE'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1056#1072#1073'. '#1077#1076'. '#1094#1077#1085#1072' ('#1089#1088#1077#1076#1085#1072')'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EST_ACCOUNT_QUANTITY'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1057#1095#1077#1090'. '#1082'-'#1074#1086
            Width = 45
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EST_ACCOUNT_QUANTITY'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1050'-'#1074#1086' '#1089#1095#1077#1090'. '#1088#1077#1089#1091#1088#1089
            Width = 45
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PRODUCT_ACCOUNT_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1057#1095#1077#1090'. '#1084'.'#1077#1076'.'
            Width = 31
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EST_LEASE_DATE_UNIT_NAME'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1053#1072#1077#1084#1085#1072' '#1089#1090#1098#1087#1082#1072
            Width = 69
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EST_ACCOUNT_SINGLE_PRICE'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1057#1095#1077#1090'. '#1077#1076'. '#1094#1077#1085#1072' ('#1089#1088#1077#1076#1085#1072')'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EST_TOTAL_PRICE'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1054#1073#1097#1072' '#1089#1090'-'#1090
            Width = 60
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EST_BUSINESS_RESULT_PERCENT'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1048#1056'* %'
            Width = 28
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EST_BUSINESS_RESULT_VALUE'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1048#1056'*'
            Width = 60
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EST_TOTAL_INVESTMENT_PERCENT'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1042#1057'* %'
            Width = 28
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EST_TOTAL_INVESTMENT_VALUE'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1042#1057'*'
            Width = 60
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'DETAIL_QUANTITY'
            Footers = <>
            Title.Caption = #1050#1057#1063'|'#1056#1072#1073'. '#1082'-'#1074#1086
            Width = 45
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'DETAIL_MEASURE_ABBR'
            Footers = <>
            Title.Caption = #1050#1057#1063'|'#1056#1072#1073'. '#1084'.'#1077#1076'.'
            Width = 31
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'DETAIL_ACCOUNT_QUANTITY'
            Footers = <>
            Title.Caption = #1050#1057#1063'|'#1057#1095#1077#1090'. '#1082'-'#1074#1086
            Width = 45
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'DETAIL_ACCOUNT_MEASURE_ABBR'
            Footers = <>
            Title.Caption = #1050#1057#1063'|'#1057#1095#1077#1090'. '#1084'.'#1077#1076'.'
            Width = 31
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'MATERIAL_QUANTITY'
            Footers = <>
            Title.Caption = #1053#1057#1063'|'#1056#1072#1073'. '#1082'-'#1074#1086
            Width = 45
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'MATERIAL_MEASURE_ABBR'
            Footers = <>
            Title.Caption = #1053#1057#1063'|'#1056#1072#1073'. '#1084'.'#1077#1076'.'
            Width = 31
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'MATERIAL_ACCOUNT_QUANTITY'
            Footers = <>
            Title.Caption = #1053#1057#1063'|'#1057#1095#1077#1090'. '#1082'-'#1074#1086
            Width = 45
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'MATERIAL_ACCOUNT_MEASURE_ABBR'
            Footers = <>
            Title.Caption = #1053#1057#1063'|'#1057#1095#1077#1090'. '#1084'.'#1077#1076'.'
            Width = 31
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'CAPACITY_BUSY_HOURS'
            Footers = <>
            Title.Caption = #1053#1077#1086#1073#1093#1086#1076#1080#1084' '#1082#1072#1087#1072#1094#1080#1090#1077#1090' ('#1095'.)'
            Width = 62
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_QUANTITY'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' ('#1055'+'#1045')|'#1056#1072#1073'. '#1082'-'#1074#1086
            Width = 45
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_QUANTITY'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' ('#1055'+'#1045')|'#1050'-'#1074#1086' '#1088#1072#1073'. '#1088#1077#1089#1091#1088#1089
            Width = 45
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PRODUCT_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' ('#1055'+'#1045')|'#1056#1072#1073'. '#1084'.'#1077#1076'.'
            Width = 31
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_LEASE_DATE_UNIT_NAME'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' ('#1055'+'#1045')|'#1053#1072#1077#1084#1085#1072' '#1089#1090#1098#1087#1082#1072
            Width = 69
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_SINGLE_PRICE'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' ('#1055'+'#1045')|'#1056#1072#1073'. '#1077#1076'. '#1094#1077#1085#1072' ('#1089#1088#1077#1076#1085#1072')'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_ACCOUNT_QUANTITY'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' ('#1055'+'#1045')|'#1057#1095#1077#1090'. '#1082'-'#1074#1086
            Width = 45
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_ACCOUNT_QUANTITY'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' ('#1055'+'#1045')|'#1050'-'#1074#1086' '#1089#1095#1077#1090'. '#1088#1077#1089#1091#1088#1089
            Width = 45
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PRODUCT_ACCOUNT_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' ('#1055'+'#1045')|'#1057#1095#1077#1090'. '#1084'.'#1077#1076'.'
            Width = 31
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_LEASE_DATE_UNIT_NAME'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' ('#1055'+'#1045')|'#1053#1072#1077#1084#1085#1072' '#1089#1090#1098#1087#1082#1072
            Width = 69
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_ACCOUNT_SINGLE_PRICE'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' ('#1055'+'#1045')|'#1057#1095#1077#1090'. '#1077#1076'. '#1094#1077#1085#1072' ('#1089#1088#1077#1076#1085#1072')'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_TOTAL_PRICE'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' ('#1055'+'#1045')|'#1054#1073#1097#1072' '#1089#1090'-'#1090
            Width = 60
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_BUSINESS_RESULT_PERCENT'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' ('#1055'+'#1045')|'#1048#1056'* %'
            Width = 28
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_BUSINESS_RESULT_VALUE'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' ('#1055'+'#1045')|'#1048#1056'*'
            Width = 60
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_TOTAL_INVESTMENT_PERCENT'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' ('#1055'+'#1045')|'#1042#1057'* %'
            Width = 28
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_TOTAL_INVESTMENT_VALUE'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' ('#1055'+'#1045')|'#1042#1057'*'
            Width = 60
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_QUANTITY_DIFF'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103'|'#1056#1072#1073'. '#1082'-'#1074#1086
            Width = 45
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_QUANTITY_DIFF'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103'|'#1050'-'#1074#1086' '#1088#1072#1073'. '#1088#1077#1089#1091#1088#1089
            Width = 45
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PRODUCT_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103'|'#1056#1072#1073'. '#1084'.'#1077#1076'.'
            Width = 31
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'LEASE_DATE_UNIT_NAME'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103'|'#1053#1072#1077#1084#1085#1072' '#1089#1090#1098#1087#1082#1072
            Width = 69
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_SINGLE_PRICE_DIFF'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103'|'#1056#1072#1073'. '#1077#1076'. '#1094#1077#1085#1072' ('#1089#1088#1077#1076#1085#1072')'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_ACCOUNT_QUANTITY_DIFF'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103'|'#1057#1095#1077#1090'. '#1082'-'#1074#1086
            Width = 45
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_ACCOUNT_QUANTITY_DIFF'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103'|'#1050'-'#1074#1086' '#1089#1095#1077#1090'. '#1088#1077#1089#1091#1088#1089
            Width = 45
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PRODUCT_ACCOUNT_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103'|'#1057#1095#1077#1090'. '#1084'.'#1077#1076'.'
            Width = 31
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'LEASE_DATE_UNIT_NAME'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103'|'#1053#1072#1077#1084#1085#1072' '#1089#1090#1098#1087#1082#1072
            Width = 69
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_ACCOUNT_SINGLE_PRICE_DIFF'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103'|'#1057#1095#1077#1090'. '#1077#1076'. '#1094#1077#1085#1072' ('#1089#1088#1077#1076#1085#1072')'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_TOTAL_PRICE_DIFF'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103'|'#1054#1073#1097#1072' '#1089#1090'-'#1090
            Width = 60
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_BUSINESS_RESULT_PERCENT_DIFF'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103'|'#1048#1056'* %'
            Width = 28
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_BUSINESS_RESULT_VALUE_DIFF'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103'|'#1048#1056'*'
            Width = 60
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_TOTAL_INVESTMENT_PERCENT_DIFF'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103'|'#1042#1057'* %'
            Width = 28
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_TOTAL_INVESTMENT_VALUE_DIFF'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103'|'#1042#1057'*'
            Width = 60
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_QUANTITY_DIFF_PERCENT'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103' %|'#1056#1072#1073'. '#1082'-'#1074#1086
            Width = 61
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_QUANTITY_DIFF_PERCENT'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103' %|'#1050'-'#1074#1086' '#1088#1072#1073'. '#1088#1077#1089#1091#1088#1089
            Width = 131
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_SINGLE_PRICE_DIFF_PERCENT'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103' %|'#1056#1072#1073'. '#1077#1076'. '#1094#1077#1085#1072' ('#1089#1088#1077#1076#1085#1072')'
            Width = 66
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_ACCOUNT_QUANTITY_DIFF_PERCENT'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103' %|'#1057#1095#1077#1090'. '#1082'-'#1074#1086
            Width = 61
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_ACCOUNT_QUANTITY_DIFF_PERCENT'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103' %|'#1050'-'#1074#1086' '#1089#1095#1077#1090'. '#1088#1077#1089#1091#1088#1089
            Width = 131
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_ACCOUNT_SINGLE_PRICE_DIFF_PERCENT'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103' %|'#1057#1095#1077#1090'. '#1077#1076'. '#1094#1077#1085#1072' ('#1089#1088#1077#1076#1085#1072')'
            Width = 66
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_TOTAL_PRICE_DIFF_PERCENT'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103' %|'#1054#1073#1097#1072' '#1089#1090'-'#1090
            Width = 60
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_BUSINESS_RESULT_PERCENT_DIFF_PERCENT'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103' %|'#1048#1056'* %'
            Width = 28
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_BUSINESS_RESULT_VALUE_DIFF_PERCENT'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103' %|'#1048#1056'*'
            Width = 60
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_TOTAL_INVESTMENT_PERCENT_DIFF_PERCENT'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103' %|'#1042#1057'* %'
            Width = 28
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_TOTAL_INVESTMENT_VALUE_DIFF_PERCENT'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103' %|'#1042#1057'*'
            Width = 60
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EO_ENGINEERING_PLAN_END_DATE'
            Footers = <>
            Title.Caption = #1054#1055#1048#1056'|'#1044#1072#1090#1072' '#1060#1080#1085#1072#1083
            Width = 62
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EO_ENGINEERING_PLAN_WORKDAYS'
            Footers = <>
            Title.Caption = #1054#1055#1048#1056'|'#1055#1077#1088#1080#1086#1076#1080'|'#1053#1084'. ('#1088'.'#1076'.)'
            Width = 33
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EO_ENGINEERING_REAL_WORKDAYS'
            Footers = <>
            Title.Caption = #1054#1055#1048#1056'|'#1055#1077#1088#1080#1086#1076#1080'|'#1056#1083'. ('#1088'.'#1076'.)'
            Width = 33
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EO_ENGINEERING_WORKDAYS_DIFF'
            Footers = <>
            Title.Caption = #1054#1055#1048#1056'|'#1055#1077#1088#1080#1086#1076#1080'|'#1056#1079#1088#1074' ('#1088'.'#1076'.)'
            Width = 34
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EO_ENGINEERING_WORKDAYS_DIFF_PERCENT'
            Footers = <>
            Title.Caption = #1054#1055#1048#1056'|'#1055#1077#1088#1080#1086#1076#1080'|'#1056#1079#1088#1074' %'
            Width = 34
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EO_ENGINEERING_DEPT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1054#1055#1048#1056'|'#1058#1055' '#1056#1077#1072#1083#1080#1079#1072#1090#1086#1088
            Width = 69
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PRODUCT_SPEC_STATE_CODE'
            Footers = <>
            Title.Caption = #1055#1048#1056' '#1057#1090#1072#1090#1091#1089
            Width = 43
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'JOINED_PRODUCT_COUNT'
            Footers = <>
            Title.Caption = #1058#1049#1057'|'#1054#1073#1097' '#1073#1088#1086#1081' '#1077#1083#1077#1084'.'
            Width = 39
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'JOINED_SPEC_STATE_1_COUNT'
            Footers = <>
            Title.Caption = #1058#1049#1057'|'#1041#1088#1086#1081' '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecState1Abbrev%'
            Width = 39
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'JOINED_SPEC_STATE_2_COUNT'
            Footers = <>
            Title.Caption = #1058#1049#1057'|'#1041#1088#1086#1081' '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecState2Abbrev%'
            Width = 39
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'JOINED_SPEC_STATE_3_COUNT'
            Footers = <>
            Title.Caption = #1058#1049#1057'|'#1041#1088#1086#1081' '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecState3Abbrev%'
            Width = 39
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'JOINED_SPEC_STATE_4_COUNT'
            Footers = <>
            Title.Caption = #1058#1049#1057'|'#1041#1088#1086#1081' '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecState4Abbrev%'
            Width = 39
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'JOINED_SPEC_STATE_5_COUNT'
            Footers = <>
            Title.Caption = #1058#1049#1057'|'#1041#1088#1086#1081' '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecState5Abbrev%'
            Width = 39
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'JOINED_SPEC_STATE_6_COUNT'
            Footers = <>
            Title.Caption = #1058#1049#1057'|'#1041#1088#1086#1081' '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecState6Abbrev%'
            Width = 39
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'JOINED_SPEC_STATE_1_PERCENT'
            Footers = <>
            Title.Caption = #1058#1049#1057'|% '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecState1Abbrev%'
            Width = 39
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'JOINED_SPEC_STATE_2_PERCENT'
            Footers = <>
            Title.Caption = #1058#1049#1057'|% '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecState2Abbrev%'
            Width = 39
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'JOINED_SPEC_STATE_3_PERCENT'
            Footers = <>
            Title.Caption = #1058#1049#1057'|% '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecState3Abbrev%'
            Width = 39
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'JOINED_SPEC_STATE_4_PERCENT'
            Footers = <>
            Title.Caption = #1058#1049#1057'|% '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecState4Abbrev%'
            Width = 39
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'JOINED_SPEC_STATE_5_PERCENT'
            Footers = <>
            Title.Caption = #1058#1049#1057'|% '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecState5Abbrev%'
            Width = 39
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'JOINED_SPEC_STATE_6_PERCENT'
            Footers = <>
            Title.Caption = #1058#1049#1057'|% '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecState6Abbrev%'
            Width = 39
          end>
      end
    end
    inherited pnlGrid: TPanel
      Width = 1003
      Height = 174
      inherited pnlNavigator: TPanel
        Width = 1003
        inherited pnlFilterButton: TPanel
          Left = 120
        end
        inherited navData: TDBColorNavigator
          Width = 120
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 144
        end
        object tlbRightButtons: TToolBar
          Left = 698
          Top = 0
          Width = 305
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonWidth = 55
          Images = dmMain.ilActions
          List = True
          AllowTextButtons = True
          TabOrder = 3
          Transparent = True
          object sepBeforeValuePartDisplayButtons: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepBeforeValuePartDisplayButtons'
            ImageIndex = 29
            Style = tbsSeparator
          end
          object btnSetBusinessResultPartDisplay: TToolButton
            Left = 8
            Top = 0
            Action = actSetBusinessResultPartDisplay
            AutoSize = True
            Style = tbsTextButton
          end
          object btnSetInvestmentPartDisplay: TToolButton
            Left = 34
            Top = 0
            Action = actSetInvestmentPartDisplay
            AutoSize = True
            Style = tbsTextButton
          end
          object sepBeforeRealsDisplayButtons: TToolButton
            Left = 59
            Top = 0
            Width = 8
            Caption = 'sepBeforeRealsDisplayButtons'
            ImageIndex = 29
            Style = tbsSeparator
          end
          object btnSetRealsQuantityDisplay: TToolButton
            Left = 67
            Top = 0
            Action = actSetRealsQuantityDisplay
            AutoSize = True
            Style = tbsTextButton
          end
          object btnSetRealsDiffDisplay: TToolButton
            Left = 106
            Top = 0
            Action = actSetRealsDiffDisplay
            AutoSize = True
            Style = tbsTextButton
          end
          object sepBeforeDiffDisplayButtons: TToolButton
            Left = 145
            Top = 0
            Width = 8
            Caption = 'sepBeforeDiffDisplayButtons'
            ImageIndex = 0
            Style = tbsSeparator
          end
          object btnSetDiffQuantityDisplay: TToolButton
            Left = 153
            Top = 0
            Action = actSetDiffQuantityDisplay
            AutoSize = True
            Style = tbsTextButton
          end
          object btnSetDiffPercentDisplay: TToolButton
            Left = 186
            Top = 0
            Action = actSetDiffPercentDisplay
            AutoSize = True
            Style = tbsTextButton
          end
          object sepBeforeMeasureDisplayButtons: TToolButton
            Left = 217
            Top = 0
            Width = 8
            Caption = 'sepBeforeMeasureDisplayButtons'
            ImageIndex = 29
            Style = tbsSeparator
          end
          object btnSetWorkMeasureDisplay: TToolButton
            Left = 225
            Top = 0
            Action = actSetWorkMeasureDisplay
          end
          object btnSetAccountMeasureDisplay: TToolButton
            Left = 249
            Top = 0
            Action = actSetAccountMeasureDisplay
          end
          object sepToggleShowPartnerProductNames: TToolButton
            Left = 273
            Top = 0
            Width = 8
            Caption = 'sepToggleShowPartnerProductNames'
            ImageIndex = 29
            Style = tbsSeparator
          end
          object btnToggleShowPartnerProductNames: TToolButton
            Left = 281
            Top = 0
            Action = actToggleShowPartnerProductNames
          end
        end
        object tlbMasterPartnerDoc: TToolBar
          Left = 200
          Top = 0
          Width = 100
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonWidth = 36
          Images = dmMain.ilDocs
          TabOrder = 4
          object sepBeforeMasterPartnerDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            ImageIndex = 0
            Style = tbsSeparator
          end
          object lblMasterPartnerDoc: TLabel
            Left = 8
            Top = 0
            Width = 56
            Height = 22
            Caption = ' %Partner% '
            Layout = tlCenter
          end
          object btnMasterPartnerDoc: TToolButton
            Left = 64
            Top = 0
            Action = actMasterPartnerDoc
          end
        end
        object tlbMasterProductDoc: TToolBar
          Left = 300
          Top = 0
          Width = 162
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonWidth = 36
          Images = dmMain.ilDocs
          TabOrder = 5
          object sepBeforeMasterProductDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            ImageIndex = 0
            Style = tbsSeparator
          end
          object lblMasterProductDoc: TLabel
            Left = 8
            Top = 0
            Width = 118
            Height = 22
            Caption = ' %ProductClassAbbrev% '
            Layout = tlCenter
          end
          object btnMasterProductDoc: TToolButton
            Left = 126
            Top = 0
            Action = actMasterProductDoc
          end
        end
        object pnlParams: TPanel
          Left = 440
          Top = 0
          Width = 258
          Height = 24
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 6
          inline frDateInterval: TfrDateIntervalFrame
            Left = 8
            Top = 0
            Width = 145
            Height = 21
            Constraints.MaxHeight = 21
            Constraints.MaxWidth = 145
            Constraints.MinHeight = 21
            Constraints.MinWidth = 145
            TabOrder = 0
            TabStop = True
          end
          object edtObtainmentType: TDBEdit
            Left = 160
            Top = 0
            Width = 81
            Height = 21
            Color = clBtnFace
            DataField = '_OBTAINMENT_TYPE_ABBREV'
            DataSource = dsGridDataParams
            ReadOnly = True
            TabOrder = 1
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 1003
        Height = 150
        FooterColor = 15258325
        FooterRowCount = 1
        HorzScrollBar.Visible = False
        UseMultiTitle = True
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PARTNER_STATUS_CODE'
            Footers = <>
            Title.Caption = '%Partner%|'#1057#1090#1072#1090#1091#1089
            Width = 43
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PARTNER_EXISTENCE_MONTHS'
            Footers = <>
            Title.Caption = '%Partner%|'#1057#1098#1097'. ('#1084#1077#1089')'
            Width = 31
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PARTNER_COMPANY_CLASS_ABBREV'
            Footers = <>
            Title.Caption = '%Partner%|'#1050#1083#1072#1089
            Width = 35
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PARTNER_PRIORITY_NO'
            Footers = <>
            Title.Caption = '%Partner%|%PartnerPriority%'
            Title.Orientation = tohVertical
            Width = 13
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PARTNER_NAME'
            Footers = <>
            Title.Caption = '%Partner%|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 149
          end
          item
            AutoFitColWidth = False
            Color = 15532031
            EditButtons = <>
            FieldName = 'PARTNER_HAS_DOC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = '%Partner%|'#1048' '#1048' '#1054
            Width = 13
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PRODUCT_COMMON_STATUS_CODE'
            Footers = <>
            Title.Caption = '%ProductClassName%|'#1055#1079#1094' '#1058#1049#1057
            Title.Orientation = tohVertical
            Width = 13
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PRODUCT_PRIORITY_NO'
            Footers = <>
            Title.Caption = '%ProductClassName%|'#1041#1055#1088#1080#1086#1088'.'
            Title.Orientation = tohVertical
            Width = 13
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PRODUCT_NAME'
            Footers = <>
            Title.Caption = '%ProductClassName%|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
            Width = 232
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PARTNER_PRODUCT_NAMES'
            Footers = <>
            Title.Caption = '%ProductClassName%|'#1054#1079#1085#1072#1095#1077#1085#1080#1103' '#1086#1090' '#1055#1072#1088#1090#1085#1100#1086#1088#1080
            Width = 232
          end
          item
            AutoFitColWidth = False
            Color = 15532031
            EditButtons = <>
            FieldName = 'PRODUCT_HAS_DOC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = '%ProductClassName%|'#1048' '#1048' '#1054
            Width = 13
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PROD_MIN_PREC_LEVEL_NO'
            Footers = <>
            Title.Caption = '%ProductClassName%|'#1053#1058'|Min'
            Title.Orientation = tohVertical
            Width = 17
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PROD_MAX_PREC_LEVEL_NO'
            Footers = <>
            Title.Caption = '%ProductClassName%|'#1053#1058'|Max'
            Title.Orientation = tohVertical
            Width = 17
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EST_QUANTITY'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1056#1072#1073'. '#1082'-'#1074#1086
            Width = 55
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EST_QUANTITY'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1050'-'#1074#1086' '#1088#1072#1073'. '#1088#1077#1089#1091#1088#1089
            Width = 55
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PRODUCT_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1056#1072#1073'. '#1084'.'#1077#1076'.'
            Width = 31
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EST_LEASE_DATE_UNIT_NAME'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1053#1072#1077#1084#1085#1072' '#1089#1090#1098#1087#1082#1072
            Width = 69
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EST_SINGLE_PRICE'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1056#1072#1073'. '#1077#1076'. '#1094#1077#1085#1072' ('#1089#1088#1077#1076#1085#1072')'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EST_ACCOUNT_QUANTITY'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1057#1095#1077#1090'. '#1082'-'#1074#1086
            Width = 55
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EST_ACCOUNT_QUANTITY'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1050'-'#1074#1086' '#1089#1095#1077#1090'. '#1088#1077#1089#1091#1088#1089
            Width = 55
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PRODUCT_ACCOUNT_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1057#1095#1077#1090'. '#1084'.'#1077#1076'.'
            Width = 31
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EST_LEASE_DATE_UNIT_NAME'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1053#1072#1077#1084#1085#1072' '#1089#1090#1098#1087#1082#1072
            Width = 69
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EST_ACCOUNT_SINGLE_PRICE'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1057#1095#1077#1090'. '#1077#1076'. '#1094#1077#1085#1072' ('#1089#1088#1077#1076#1085#1072')'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EST_TOTAL_PRICE'
            Footer.FieldName = '_SUM_EST_TOTAL_PRICE'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1054#1073#1097#1072' '#1089#1090'-'#1090
            Width = 85
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EST_BUSINESS_RESULT_PERCENT'
            Footer.FieldName = '_AVG_EST_BUSINESS_RESULT_PERCENT'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1048#1056'* %'
            Width = 28
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EST_BUSINESS_RESULT_VALUE'
            Footer.FieldName = '_SUM_EST_BUSINESS_RESULT_VALUE'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1048#1056'*'
            Width = 75
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EST_TOTAL_INVESTMENT_PERCENT'
            Footer.FieldName = '_AVG_EST_TOTAL_INVESTMENT_PERCENT'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1042#1057'* %'
            Width = 28
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EST_TOTAL_INVESTMENT_VALUE'
            Footer.FieldName = '_SUM_EST_TOTAL_INVESTMENT_VALUE'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1042#1057'*'
            Width = 75
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'DETAIL_QUANTITY'
            Footer.FieldName = '_SUM_DETAIL_QUANTITY'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1050#1057#1063'|'#1056#1072#1073'. '#1082'-'#1074#1086
            Width = 55
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'DETAIL_MEASURE_ABBR'
            Footer.FieldName = '_MIN_DETAIL_MEASURE_ABBR'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1050#1057#1063'|'#1056#1072#1073'. '#1084'.'#1077#1076'.'
            Width = 31
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'DETAIL_ACCOUNT_QUANTITY'
            Footer.FieldName = '_SUM_DETAIL_ACCOUNT_QUANTITY'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1050#1057#1063'|'#1057#1095#1077#1090'. '#1082'-'#1074#1086
            Width = 55
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'DETAIL_ACCOUNT_MEASURE_ABBR'
            Footer.FieldName = '_MIN_DETAIL_ACCOUNT_MEASURE_ABBR'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1050#1057#1063'|'#1057#1095#1077#1090'. '#1084'.'#1077#1076'.'
            Width = 31
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'MATERIAL_QUANTITY'
            Footer.FieldName = '_SUM_MATERIAL_QUANTITY'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1053#1057#1063'|'#1056#1072#1073'. '#1082'-'#1074#1086
            Width = 55
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'MATERIAL_MEASURE_ABBR'
            Footer.FieldName = '_MIN_MATERIAL_MEASURE_ABBR'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1053#1057#1063'|'#1056#1072#1073'. '#1084'.'#1077#1076'.'
            Width = 31
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'MATERIAL_ACCOUNT_QUANTITY'
            Footer.FieldName = '_SUM_MATERIAL_ACCOUNT_QUANTITY'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1053#1057#1063'|'#1057#1095#1077#1090'. '#1082'-'#1074#1086
            Width = 55
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'MATERIAL_ACCOUNT_MEASURE_ABBR'
            Footer.FieldName = '_MIN_MATERIAL_ACCOUNT_MEASURE_ABBR'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1053#1057#1063'|'#1057#1095#1077#1090'. '#1084'.'#1077#1076'.'
            Width = 31
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'CAPACITY_BUSY_HOURS'
            Footer.FieldName = '_SUM_CAPACITY_BUSY_HOURS'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1053#1077#1086#1073#1093#1086#1076#1080#1084' '#1082#1072#1087#1072#1094#1080#1090#1077#1090' ('#1095'.)'
            Width = 62
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_QUANTITY'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' ('#1055'+'#1045')|'#1056#1072#1073'. '#1082'-'#1074#1086
            Width = 55
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_QUANTITY'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' ('#1055'+'#1045')|'#1050'-'#1074#1086' '#1088#1072#1073'. '#1088#1077#1089#1091#1088#1089
            Width = 55
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PRODUCT_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' ('#1055'+'#1045')|'#1056#1072#1073'. '#1084'.'#1077#1076'.'
            Width = 31
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_LEASE_DATE_UNIT_NAME'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' ('#1055'+'#1045')|'#1053#1072#1077#1084#1085#1072' '#1089#1090#1098#1087#1082#1072
            Width = 69
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_SINGLE_PRICE'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' ('#1055'+'#1045')|'#1056#1072#1073'. '#1077#1076'. '#1094#1077#1085#1072' ('#1089#1088#1077#1076#1085#1072')'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_ACCOUNT_QUANTITY'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' ('#1055'+'#1045')|'#1057#1095#1077#1090'. '#1082'-'#1074#1086
            Width = 55
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_ACCOUNT_QUANTITY'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' ('#1055'+'#1045')|'#1050'-'#1074#1086' '#1057#1095#1077#1090'. '#1088#1077#1089#1091#1088#1089
            Width = 55
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PRODUCT_ACCOUNT_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' ('#1055'+'#1045')|'#1057#1095#1077#1090'. '#1084'.'#1077#1076'.'
            Width = 31
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_LEASE_DATE_UNIT_NAME'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' ('#1055'+'#1045')|'#1053#1072#1077#1084#1085#1072' '#1089#1090#1098#1087#1082#1072
            Width = 69
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_ACCOUNT_SINGLE_PRICE'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' ('#1055'+'#1045')|'#1057#1095#1077#1090'. '#1077#1076'. '#1094#1077#1085#1072' ('#1089#1088#1077#1076#1085#1072')'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_TOTAL_PRICE'
            Footer.FieldName = '_SUM_REAL_TOTAL_PRICE'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' ('#1055'+'#1045')|'#1054#1073#1097#1072' '#1089#1090'-'#1090
            Width = 85
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_BUSINESS_RESULT_PERCENT'
            Footer.FieldName = '_AVG_REAL_BUSINESS_RESULT_PERCENT'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' ('#1055'+'#1045')|'#1048#1056'* %'
            Width = 28
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_BUSINESS_RESULT_VALUE'
            Footer.FieldName = '_SUM_REAL_BUSINESS_RESULT_VALUE'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' ('#1055'+'#1045')|'#1048#1056'*'
            Width = 75
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_TOTAL_INVESTMENT_PERCENT'
            Footer.FieldName = '_AVG_REAL_TOTAL_INVESTMENT_PERCENT'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' ('#1055'+'#1045')|'#1042#1057'* %'
            Width = 28
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_TOTAL_INVESTMENT_VALUE'
            Footer.FieldName = '_SUM_REAL_TOTAL_INVESTMENT_VALUE'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' ('#1055'+'#1045')|'#1042#1057'*'
            Width = 75
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_QUANTITY_DIFF'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103'|'#1056#1072#1073'. '#1082'-'#1074#1086
            Width = 55
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_QUANTITY_DIFF'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103'|'#1050'-'#1074#1086' '#1088#1072#1073'. '#1088#1077#1089#1091#1088#1089
            Width = 55
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PRODUCT_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103'|'#1056#1072#1073'. '#1084'.'#1077#1076'.'
            Width = 31
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'LEASE_DATE_UNIT_NAME'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103'|'#1053#1072#1077#1084#1085#1072' '#1089#1090#1098#1087#1082#1072
            Width = 69
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_SINGLE_PRICE_DIFF'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103'|'#1056#1072#1073'. '#1077#1076'. '#1094#1077#1085#1072' ('#1089#1088#1077#1076#1085#1072')'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_ACCOUNT_QUANTITY_DIFF'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103'|'#1057#1095#1077#1090'. '#1082'-'#1074#1086
            Width = 55
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_ACCOUNT_QUANTITY_DIFF'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103'|'#1050'-'#1074#1086' '#1089#1095#1077#1090'. '#1088#1077#1089#1091#1088#1089
            Width = 55
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PRODUCT_ACCOUNT_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103'|'#1057#1095#1077#1090'. '#1084'.'#1077#1076'.'
            Width = 31
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'LEASE_DATE_UNIT_NAME'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103'|'#1053#1072#1077#1084#1085#1072' '#1089#1090#1098#1087#1082#1072
            Width = 69
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_ACCOUNT_SINGLE_PRICE_DIFF'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103'|'#1057#1095#1077#1090'. '#1077#1076'. '#1094#1077#1085#1072' ('#1089#1088#1077#1076#1085#1072')'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_TOTAL_PRICE_DIFF'
            Footer.FieldName = '_SUM_REAL_TOTAL_PRICE_DIFF'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103'|'#1054#1073#1097#1072' '#1089#1090'-'#1090
            Width = 85
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_BUSINESS_RESULT_PERCENT_DIFF'
            Footer.FieldName = '_AVG_REAL_BUSINESS_RESULT_PERCENT_DIFF'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103'|'#1048#1056'* %'
            Width = 28
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_BUSINESS_RESULT_VALUE_DIFF'
            Footer.FieldName = '_SUM_REAL_BUSINESS_RESULT_VALUE_DIFF'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103'|'#1048#1056'*'
            Width = 75
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_TOTAL_INVESTMENT_PERCENT_DIFF'
            Footer.FieldName = '_AVG_REAL_TOTAL_INVESTMENT_PERCENT_DIFF'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103'|'#1042#1057'* %'
            Width = 28
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_TOTAL_INVESTMENT_VALUE_DIFF'
            Footer.FieldName = '_SUM_REAL_TOTAL_INVESTMENT_VALUE_DIFF'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103'|'#1042#1057'*'
            Width = 75
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_QUANTITY_DIFF_PERCENT'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103' %|'#1056#1072#1073'. '#1082'-'#1074#1086
            Width = 78
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_QUANTITY_DIFF_PERCENT'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103' %|'#1050'-'#1074#1086' '#1088#1072#1073'. '#1088#1077#1089#1091#1088#1089
            Width = 148
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_SINGLE_PRICE_DIFF_PERCENT'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103' %|'#1056#1072#1073'. '#1077#1076'. '#1094#1077#1085#1072' ('#1089#1088#1077#1076#1085#1072')'
            Width = 59
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_ACCOUNT_QUANTITY_DIFF_PERCENT'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103' %|'#1057#1095#1077#1090'. '#1082'-'#1074#1086
            Width = 78
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_ACCOUNT_QUANTITY_DIFF_PERCENT'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103' %|'#1050'-'#1074#1086' '#1089#1095#1077#1090'. '#1088#1077#1089#1091#1088#1089
            Width = 148
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_ACCOUNT_SINGLE_PRICE_DIFF_PERCENT'
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103' %|'#1057#1095#1077#1090'. '#1077#1076'. '#1094#1077#1085#1072' ('#1089#1088#1077#1076#1085#1072')'
            Width = 59
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_TOTAL_PRICE_DIFF_PERCENT'
            Footer.FieldName = '_AVG_REAL_TOTAL_PRICE_DIFF_PERCENT'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103' %|'#1054#1073#1097#1072' '#1089#1090'-'#1090
            Width = 85
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_BUSINESS_RESULT_PERCENT_DIFF_PERCENT'
            Footer.FieldName = '_AVG_REAL_BUSINESS_RESULT_PERCENT_DIFF_PERCENT'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103' %|'#1048#1056'* %'
            Width = 28
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_BUSINESS_RESULT_VALUE_DIFF_PERCENT'
            Footer.FieldName = '_AVG_REAL_BUSINESS_RESULT_VALUE_DIFF_PERCENT'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103' %|'#1048#1056'*'
            Width = 75
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_TOTAL_INVESTMENT_PERCENT_DIFF_PERCENT'
            Footer.FieldName = '_AVG_REAL_TOTAL_INVESTMENT_PERCENT_DIFF_PERCENT'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103' %|'#1042#1057'* %'
            Width = 28
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'REAL_TOTAL_INVESTMENT_VALUE_DIFF_PERCENT'
            Footer.FieldName = '_AVG_REAL_TOTAL_INVESTMENT_VALUE_DIFF_PERCENT'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103' %|'#1042#1057'*'
            Width = 75
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EO_ENGINEERING_PLAN_END_DATE'
            Footers = <>
            Title.Caption = #1054#1055#1048#1056'|'#1044#1072#1090#1072' '#1060#1080#1085#1072#1083
            Width = 66
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EO_ENGINEERING_PLAN_WORKDAYS'
            Footers = <>
            Title.Caption = #1054#1055#1048#1056'|'#1055#1077#1088#1080#1086#1076#1080'|'#1053#1084'. ('#1088'.'#1076'.)'
            Width = 35
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EO_ENGINEERING_REAL_WORKDAYS'
            Footers = <>
            Title.Caption = #1054#1055#1048#1056'|'#1055#1077#1088#1080#1086#1076#1080'|'#1056#1083'. ('#1088'.'#1076'.)'
            Width = 35
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EO_ENGINEERING_WORKDAYS_DIFF'
            Footers = <>
            Title.Caption = #1054#1055#1048#1056'|'#1055#1077#1088#1080#1086#1076#1080'|'#1056#1079#1088#1074' ('#1088'.'#1076'.)'
            Width = 36
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EO_ENGINEERING_WORKDAYS_DIFF_PERCENT'
            Footers = <>
            Title.Caption = #1054#1055#1048#1056'|'#1055#1077#1088#1080#1086#1076#1080'|'#1056#1079#1088#1074' %'
            Width = 36
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'EO_ENGINEERING_DEPT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1054#1055#1048#1056'|'#1058#1055' '#1056#1077#1072#1083#1080#1079#1072#1090#1086#1088
            Width = 75
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PRODUCT_SPEC_STATE_CODE'
            Footers = <>
            Title.Caption = #1055#1048#1056' '#1057#1090#1072#1090#1091#1089
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'JOINED_PRODUCT_COUNT'
            Footers = <>
            Title.Caption = #1058#1049#1057'|'#1054#1073#1097' '#1073#1088#1086#1081' '#1077#1083#1077#1084'.'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'JOINED_SPEC_STATE_1_COUNT'
            Footers = <>
            Title.Caption = #1058#1049#1057'|'#1041#1088#1086#1081' '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecState1Abbrev%'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'JOINED_SPEC_STATE_2_COUNT'
            Footers = <>
            Title.Caption = #1058#1049#1057'|'#1041#1088#1086#1081' '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecState2Abbrev%'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'JOINED_SPEC_STATE_3_COUNT'
            Footers = <>
            Title.Caption = #1058#1049#1057'|'#1041#1088#1086#1081' '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecState3Abbrev%'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'JOINED_SPEC_STATE_4_COUNT'
            Footers = <>
            Title.Caption = #1058#1049#1057'|'#1041#1088#1086#1081' '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecState4Abbrev%'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'JOINED_SPEC_STATE_5_COUNT'
            Footers = <>
            Title.Caption = #1058#1049#1057'|'#1041#1088#1086#1081' '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecState5Abbrev%'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'JOINED_SPEC_STATE_6_COUNT'
            Footers = <>
            Title.Caption = #1058#1049#1057'|'#1041#1088#1086#1081' '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecState6Abbrev%'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'JOINED_SPEC_STATE_1_PERCENT'
            Footers = <>
            Title.Caption = #1058#1049#1057'|% '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecState1Abbrev%'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'JOINED_SPEC_STATE_2_PERCENT'
            Footers = <>
            Title.Caption = #1058#1049#1057'|% '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecState2Abbrev%'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'JOINED_SPEC_STATE_3_PERCENT'
            Footers = <>
            Title.Caption = #1058#1049#1057'|% '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecState3Abbrev%'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'JOINED_SPEC_STATE_4_PERCENT'
            Footers = <>
            Title.Caption = #1058#1049#1057'|% '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecState4Abbrev%'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'JOINED_SPEC_STATE_5_PERCENT'
            Footers = <>
            Title.Caption = #1058#1049#1057'|% '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecState5Abbrev%'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'JOINED_SPEC_STATE_6_PERCENT'
            Footers = <>
            Title.Caption = #1058#1049#1057'|% '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecState6Abbrev%'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PRODUCT_COUNT'
            Footers = <>
            Title.Caption = '%PartnerParRelProductsGroup%|'#1054#1073#1097' '#1073#1088#1086#1081' '#1077#1083#1077#1084'.'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'SPEC_STATE_1_COUNT'
            Footers = <>
            Title.Caption = 
              '%PartnerParRelProductsGroup%|'#1041#1088#1086#1081' '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecSt' +
              'ate1Abbrev%'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'SPEC_STATE_2_COUNT'
            Footers = <>
            Title.Caption = 
              '%PartnerParRelProductsGroup%|'#1041#1088#1086#1081' '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecSt' +
              'ate2Abbrev%'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'SPEC_STATE_3_COUNT'
            Footers = <>
            Title.Caption = 
              '%PartnerParRelProductsGroup%|'#1041#1088#1086#1081' '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecSt' +
              'ate3Abbrev%'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'SPEC_STATE_4_COUNT'
            Footers = <>
            Title.Caption = 
              '%PartnerParRelProductsGroup%|'#1041#1088#1086#1081' '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecSt' +
              'ate4Abbrev%'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'SPEC_STATE_5_COUNT'
            Footers = <>
            Title.Caption = 
              '%PartnerParRelProductsGroup%|'#1041#1088#1086#1081' '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecSt' +
              'ate5Abbrev%'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'SPEC_STATE_6_COUNT'
            Footers = <>
            Title.Caption = 
              '%PartnerParRelProductsGroup%|'#1041#1088#1086#1081' '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecSt' +
              'ate6Abbrev%'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'SPEC_STATE_1_PERCENT'
            Footers = <>
            Title.Caption = 
              '%PartnerParRelProductsGroup%|% '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecState' +
              '1Abbrev%'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'SPEC_STATE_2_PERCENT'
            Footers = <>
            Title.Caption = 
              '%PartnerParRelProductsGroup%|% '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecState' +
              '2Abbrev%'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'SPEC_STATE_3_PERCENT'
            Footers = <>
            Title.Caption = 
              '%PartnerParRelProductsGroup%|% '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecState' +
              '3Abbrev%'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'SPEC_STATE_4_PERCENT'
            Footers = <>
            Title.Caption = 
              '%PartnerParRelProductsGroup%|% '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecState' +
              '4Abbrev%'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'SPEC_STATE_5_PERCENT'
            Footers = <>
            Title.Caption = 
              '%PartnerParRelProductsGroup%|% '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecState' +
              '5Abbrev%'
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'SPEC_STATE_6_PERCENT'
            Footers = <>
            Title.Caption = 
              '%PartnerParRelProductsGroup%|% '#1077#1083#1077#1084#1077#1085#1090#1080' '#1087#1086' '#1055#1048#1056' '#1057#1090#1072#1090#1091#1089'|%SpecState' +
              '6Abbrev%'
            Width = 50
          end>
      end
    end
  end
  object pnlCommonProduct: TPanel [2]
    Left = 0
    Top = 54
    Width = 1019
    Height = 73
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    inline frCommonProduct: TfrProductExFieldEditFrame
      Left = 8
      Top = 8
      Width = 1001
      Height = 65
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 549
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
      inherited gbTreeNode: TGroupBox
        Width = 1001
        inherited pnlTreeNode: TPanel
          Width = 99
          inherited pnlTreeNodeName: TPanel
            Width = 61
            inherited edtTreeNodeName: TDBEdit
              Width = 60
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = -83
          end
          inherited pnlRightButtons: TPanel
            Left = 40
          end
          inherited pnlProductLabels: TPanel
            Width = 99
          end
        end
        inherited pnlRight: TPanel
          Left = 229
        end
      end
    end
  end
  object pnlIncludeStuff: TPanel [3]
    Left = 0
    Top = 0
    Width = 1019
    Height = 54
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object pnlIncludeStructPart: TPanel
      Left = 0
      Top = 0
      Width = 513
      Height = 54
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      inline frIncludeStructPart: TfrProductFieldEditFrame
        Left = 8
        Top = 5
        Width = 497
        Height = 49
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 49
        TabOrder = 0
        TabStop = True
        inherited gbTreeNode: TGroupBox
          Width = 497
          Caption = ' %IncludedStructurePart% '
          inherited pnlTreeNode: TPanel
            Width = 481
            inherited pnlTreeNodeName: TPanel
              Width = 299
              inherited edtTreeNodeName: TDBEdit
                Width = 298
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = 299
            end
            inherited pnlRightButtons: TPanel
              Left = 422
            end
          end
        end
      end
    end
    object pnlIncludeDept: TPanel
      Left = 513
      Top = 0
      Width = 504
      Height = 54
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      inline frIncludeDept: TfrDeptFieldEditFrame
        Left = 8
        Top = 5
        Width = 488
        Height = 49
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 49
        TabOrder = 0
        TabStop = True
        inherited gbTreeNode: TGroupBox
          Width = 488
          Caption = ' %IncludedDept% '
          inherited pnlTreeNode: TPanel
            Width = 472
            inherited pnlTreeNodeName: TPanel
              Width = 325
              inherited edtTreeNodeName: TDBEdit
                Width = 324
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = 325
            end
            inherited pnlRightButtons: TPanel
              Left = 436
            end
          end
        end
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'PARTNER_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BORDER_REL_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'OBTAINMENT_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PARTNER_NO'
        DataType = ftFloat
      end
      item
        Name = 'PARTNER_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'PARTNER_DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PARTNER_DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PARTNER_HAS_DOC'
        DataType = ftFloat
      end
      item
        Name = 'PARTNER_PRIORITY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PARTNER_PRIORITY_NO'
        DataType = ftFloat
      end
      item
        Name = 'PAR_PRIORITY_COLOR'
        DataType = ftFloat
      end
      item
        Name = 'PAR_PRIORITY_BACKGROUND_COLOR'
        DataType = ftFloat
      end
      item
        Name = 'PARTNER_COMPANY_CLASS_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PARTNER_COMPANY_CLASS_ABBREV'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'PARTNER_STATUS_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PARTNER_STATUS_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'PARTNER_EXISTENCE_MONTHS'
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
        Name = 'PRODUCT_PRIORITY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_PRIORITY_NO'
        DataType = ftFloat
      end
      item
        Name = 'PROD_PRIORITY_COLOR'
        DataType = ftFloat
      end
      item
        Name = 'PROD_PRIORITY_BACKGROUND_COLOR'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_MEASURE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'PRODUCT_ACCOUNT_MEASURE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_ACCOUNT_MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'PRODUCT_ACCOUNT_MEASURE_COEF'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_COMMON_STATUS_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PARTNER_PRODUCT_NAMES'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'EST_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'EST_LEASE_DATE_UNIT_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'EST_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'EST_TOTAL_INVESTMENT_VALUE'
        DataType = ftFloat
      end
      item
        Name = 'REAL_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'REAL_LEASE_DATE_UNIT_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'REAL_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'REAL_TOTAL_INVESTMENT_VALUE'
        DataType = ftFloat
      end
      item
        Name = 'PROD_MIN_PREC_LEVEL_NO'
        DataType = ftFloat
      end
      item
        Name = 'PROD_MIN_PREC_LEVEL_COLOR'
        DataType = ftFloat
      end
      item
        Name = 'PROD_MIN_PREC_LEVEL_BACK_COLOR'
        DataType = ftFloat
      end
      item
        Name = 'PROD_MAX_PREC_LEVEL_NO'
        DataType = ftFloat
      end
      item
        Name = 'PROD_MAX_PREC_LEVEL_COLOR'
        DataType = ftFloat
      end
      item
        Name = 'PROD_MAX_PREC_LEVEL_BACK_COLOR'
        DataType = ftFloat
      end
      item
        Name = 'ENGINEERING_ORDER_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EO_ENGINEERING_PLAN_END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'EO_ENGINEERING_PLAN_WORKDAYS'
        DataType = ftFloat
      end
      item
        Name = 'EO_ENGINEERING_REAL_WORKDAYS'
        DataType = ftFloat
      end
      item
        Name = 'EO_ENGINEERING_DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'PRODUCT_SPEC_STATE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'JOINED_PRODUCT_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'JOINED_SPEC_STATE_1_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'JOINED_SPEC_STATE_2_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'JOINED_SPEC_STATE_3_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'JOINED_SPEC_STATE_4_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'JOINED_SPEC_STATE_5_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'JOINED_SPEC_STATE_6_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_MEASURE_ABBR'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'DETAIL_ACCOUNT_MEASURE_ABBR'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'DETAIL_ACCOUNT_MEASURE_COEF'
        DataType = ftFloat
      end
      item
        Name = 'MATERIAL_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'MATERIAL_MEASURE_ABBR'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'MATERIAL_ACCOUNT_MEASURE_ABBR'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'MATERIAL_ACCOUNT_MEASURE_COEF'
        DataType = ftFloat
      end
      item
        Name = 'CAPACITY_BUSY_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_ACCOUNT_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'MATERIAL_ACCOUNT_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'JOINED_SPEC_STATE_1_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'JOINED_SPEC_STATE_2_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'JOINED_SPEC_STATE_3_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'JOINED_SPEC_STATE_4_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'JOINED_SPEC_STATE_5_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'JOINED_SPEC_STATE_6_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_STATE_1_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_STATE_2_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_STATE_3_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_STATE_4_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_STATE_5_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_STATE_6_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_STATE_1_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_STATE_2_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_STATE_3_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_STATE_4_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_STATE_5_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_STATE_6_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'EST_ACCOUNT_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'EST_ACCOUNT_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'EST_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'EST_BUSINESS_RESULT_VALUE'
        DataType = ftFloat
      end
      item
        Name = 'EST_BUSINESS_RESULT_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'EST_TOTAL_INVESTMENT_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'REAL_ACCOUNT_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'REAL_ACCOUNT_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'REAL_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'REAL_BUSINESS_RESULT_VALUE'
        DataType = ftFloat
      end
      item
        Name = 'REAL_BUSINESS_RESULT_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'REAL_TOTAL_INVESTMENT_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'EO_ENGINEERING_WORKDAYS_DIFF'
        DataType = ftFloat
      end
      item
        Name = 'EO_ENGINEERING_WORKDAYS_DIFF_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'REAL_QUANTITY_DIFF'
        DataType = ftFloat
      end
      item
        Name = 'REAL_ACCOUNT_QUANTITY_DIFF'
        DataType = ftFloat
      end
      item
        Name = 'REAL_SINGLE_PRICE_DIFF'
        DataType = ftFloat
      end
      item
        Name = 'REAL_ACCOUNT_SINGLE_PRICE_DIFF'
        DataType = ftFloat
      end
      item
        Name = 'REAL_TOTAL_PRICE_DIFF'
        DataType = ftFloat
      end
      item
        Name = 'REAL_BUSINESS_RESULT_VALUE_DIFF'
        DataType = ftFloat
      end
      item
        Name = 'REAL_BUSINESS_RESULT_PERCENT_DIFF'
        DataType = ftFloat
      end
      item
        Name = 'REAL_TOTAL_INVESTMENT_VALUE_DIFF'
        DataType = ftFloat
      end
      item
        Name = 'REAL_TOTAL_INVESTMENT_PERCENT_DIFF'
        DataType = ftFloat
      end
      item
        Name = 'REAL_QUANTITY_DIFF_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'REAL_ACCOUNT_QUANTITY_DIFF_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'REAL_SINGLE_PRICE_DIFF_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'REAL_ACCOUNT_SINGLE_PRICE_DIFF_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'REAL_TOTAL_PRICE_DIFF_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'REAL_BUSINESS_RESULT_VALUE_DIFF_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'REAL_BUSINESS_RESULT_PERCENT_DIFF_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'REAL_TOTAL_INVESTMENT_VALUE_DIFF_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'REAL_TOTAL_INVESTMENT_PERCENT_DIFF_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'LEASE_DATE_UNIT_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'PARTNER_BASE_ROLE_CODE'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 'PARTNER_NAME; PRODUCT_NAME'
      end>
    IndexName = 'idxDefault'
    OnCalcFields = cdsGridDataCalcFields
    object cdsGridDataPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
    end
    object cdsGridDataBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
    end
    object cdsGridDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsGridDataOBTAINMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OBTAINMENT_TYPE_CODE'
    end
    object cdsGridDataPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_CODE'
    end
    object cdsGridDataPARTNER_NO: TAbmesFloatField
      FieldName = 'PARTNER_NO'
    end
    object cdsGridDataPARTNER_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_NAME'
    end
    object cdsGridDataPARTNER_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PARTNER_DOC_BRANCH_CODE'
    end
    object cdsGridDataPARTNER_DOC_CODE: TAbmesFloatField
      FieldName = 'PARTNER_DOC_CODE'
    end
    object cdsGridDataPARTNER_HAS_DOC: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'PARTNER_HAS_DOC'
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataPARTNER_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'PARTNER_PRIORITY_CODE'
    end
    object cdsGridDataPARTNER_PRIORITY_NO: TAbmesFloatField
      FieldName = 'PARTNER_PRIORITY_NO'
    end
    object cdsGridDataPAR_PRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PAR_PRIORITY_COLOR'
    end
    object cdsGridDataPAR_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PAR_PRIORITY_BACKGROUND_COLOR'
    end
    object cdsGridDataPARTNER_COMPANY_CLASS_CODE: TAbmesFloatField
      FieldName = 'PARTNER_COMPANY_CLASS_CODE'
    end
    object cdsGridDataPARTNER_COMPANY_CLASS_ABBREV: TAbmesWideStringField
      FieldName = 'PARTNER_COMPANY_CLASS_ABBREV'
      Size = 100
    end
    object cdsGridDataPARTNER_STATUS_CODE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'PARTNER_STATUS_CODE'
      OnGetText = cdsGridDataPARTNER_STATUS_CODEGetText
    end
    object cdsGridDataPARTNER_STATUS_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_STATUS_NAME'
      Size = 100
    end
    object cdsGridDataPARTNER_EXISTENCE_MONTHS: TAbmesFloatField
      FieldName = 'PARTNER_EXISTENCE_MONTHS'
      DisplayFormat = ',0'
    end
    object cdsGridDataPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object cdsGridDataPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsGridDataPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object cdsGridDataPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object cdsGridDataPRODUCT_HAS_DOC: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'PRODUCT_HAS_DOC'
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataPRODUCT_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_PRIORITY_CODE'
    end
    object cdsGridDataPRODUCT_PRIORITY_NO: TAbmesFloatField
      FieldName = 'PRODUCT_PRIORITY_NO'
    end
    object cdsGridDataPROD_PRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PROD_PRIORITY_COLOR'
    end
    object cdsGridDataPROD_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PROD_PRIORITY_BACKGROUND_COLOR'
    end
    object cdsGridDataPRODUCT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_MEASURE_CODE'
    end
    object cdsGridDataPRODUCT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'PRODUCT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridDataPRODUCT_ACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_CODE'
    end
    object cdsGridDataPRODUCT_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridDataPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_COEF'
    end
    object cdsGridDataPRODUCT_COMMON_STATUS_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'PRODUCT_COMMON_STATUS_CODE'
      OnGetText = cdsGridDataPRODUCT_COMMON_STATUS_CODEGetText
    end
    object cdsGridDataPARTNER_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'PARTNER_PRODUCT_NAMES'
      Size = 250
    end
    object cdsGridDataEST_QUANTITY: TAbmesFloatField
      FieldName = 'EST_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataEST_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'EST_LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object cdsGridDataEST_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'EST_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataEST_TOTAL_INVESTMENT_VALUE: TAbmesFloatField
      FieldName = 'EST_TOTAL_INVESTMENT_VALUE'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_QUANTITY: TAbmesFloatField
      FieldName = 'REAL_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'REAL_LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object cdsGridDataREAL_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'REAL_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_TOTAL_INVESTMENT_VALUE: TAbmesFloatField
      FieldName = 'REAL_TOTAL_INVESTMENT_VALUE'
      DisplayFormat = ',0'
    end
    object cdsGridDataPROD_MIN_PREC_LEVEL_NO: TAbmesFloatField
      FieldName = 'PROD_MIN_PREC_LEVEL_NO'
    end
    object cdsGridDataPROD_MIN_PREC_LEVEL_COLOR: TAbmesFloatField
      FieldName = 'PROD_MIN_PREC_LEVEL_COLOR'
    end
    object cdsGridDataPROD_MIN_PREC_LEVEL_BACK_COLOR: TAbmesFloatField
      FieldName = 'PROD_MIN_PREC_LEVEL_BACK_COLOR'
    end
    object cdsGridDataPROD_MAX_PREC_LEVEL_NO: TAbmesFloatField
      FieldName = 'PROD_MAX_PREC_LEVEL_NO'
    end
    object cdsGridDataPROD_MAX_PREC_LEVEL_COLOR: TAbmesFloatField
      FieldName = 'PROD_MAX_PREC_LEVEL_COLOR'
    end
    object cdsGridDataPROD_MAX_PREC_LEVEL_BACK_COLOR: TAbmesFloatField
      FieldName = 'PROD_MAX_PREC_LEVEL_BACK_COLOR'
    end
    object cdsGridDataENGINEERING_ORDER_CODE: TAbmesFloatField
      FieldName = 'ENGINEERING_ORDER_CODE'
    end
    object cdsGridDataEO_ENGINEERING_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'EO_ENGINEERING_PLAN_END_DATE'
    end
    object cdsGridDataEO_ENGINEERING_PLAN_WORKDAYS: TAbmesFloatField
      FieldName = 'EO_ENGINEERING_PLAN_WORKDAYS'
      DisplayFormat = ',0'
    end
    object cdsGridDataEO_ENGINEERING_REAL_WORKDAYS: TAbmesFloatField
      FieldName = 'EO_ENGINEERING_REAL_WORKDAYS'
      DisplayFormat = ',0'
    end
    object cdsGridDataEO_ENGINEERING_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'EO_ENGINEERING_DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsGridDataPRODUCT_SPEC_STATE_CODE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'PRODUCT_SPEC_STATE_CODE'
      OnGetText = cdsGridDataPRODUCT_SPEC_STATE_CODEGetText
    end
    object cdsGridDataJOINED_PRODUCT_COUNT: TAbmesFloatField
      FieldName = 'JOINED_PRODUCT_COUNT'
      DisplayFormat = ',0'
    end
    object cdsGridDataJOINED_SPEC_STATE_1_COUNT: TAbmesFloatField
      FieldName = 'JOINED_SPEC_STATE_1_COUNT'
      DisplayFormat = ',0'
    end
    object cdsGridDataJOINED_SPEC_STATE_2_COUNT: TAbmesFloatField
      FieldName = 'JOINED_SPEC_STATE_2_COUNT'
      DisplayFormat = ',0'
    end
    object cdsGridDataJOINED_SPEC_STATE_3_COUNT: TAbmesFloatField
      FieldName = 'JOINED_SPEC_STATE_3_COUNT'
      DisplayFormat = ',0'
    end
    object cdsGridDataJOINED_SPEC_STATE_4_COUNT: TAbmesFloatField
      FieldName = 'JOINED_SPEC_STATE_4_COUNT'
      DisplayFormat = ',0'
    end
    object cdsGridDataJOINED_SPEC_STATE_5_COUNT: TAbmesFloatField
      FieldName = 'JOINED_SPEC_STATE_5_COUNT'
      DisplayFormat = ',0'
    end
    object cdsGridDataJOINED_SPEC_STATE_6_COUNT: TAbmesFloatField
      FieldName = 'JOINED_SPEC_STATE_6_COUNT'
      DisplayFormat = ',0'
    end
    object cdsGridDataDETAIL_QUANTITY: TAbmesFloatField
      FieldName = 'DETAIL_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataDETAIL_MEASURE_ABBR: TAbmesWideStringField
      FieldName = 'DETAIL_MEASURE_ABBR'
      Size = 5
    end
    object cdsGridDataDETAIL_ACCOUNT_MEASURE_ABBR: TAbmesWideStringField
      FieldName = 'DETAIL_ACCOUNT_MEASURE_ABBR'
      Size = 5
    end
    object cdsGridDataDETAIL_ACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'DETAIL_ACCOUNT_MEASURE_COEF'
    end
    object cdsGridDataMATERIAL_QUANTITY: TAbmesFloatField
      FieldName = 'MATERIAL_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataMATERIAL_MEASURE_ABBR: TAbmesWideStringField
      FieldName = 'MATERIAL_MEASURE_ABBR'
      Size = 5
    end
    object cdsGridDataMATERIAL_ACCOUNT_MEASURE_ABBR: TAbmesWideStringField
      FieldName = 'MATERIAL_ACCOUNT_MEASURE_ABBR'
      Size = 5
    end
    object cdsGridDataMATERIAL_ACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'MATERIAL_ACCOUNT_MEASURE_COEF'
    end
    object cdsGridDataCAPACITY_BUSY_HOURS: TAbmesFloatField
      FieldName = 'CAPACITY_BUSY_HOURS'
      DisplayFormat = ',0.#'
    end
    object cdsGridDataDETAIL_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'DETAIL_ACCOUNT_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataMATERIAL_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'MATERIAL_ACCOUNT_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataJOINED_SPEC_STATE_1_PERCENT: TAbmesFloatField
      FieldName = 'JOINED_SPEC_STATE_1_PERCENT'
      OnGetText = cdsGridDataJOINED_SPEC_STATE_1_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataJOINED_SPEC_STATE_2_PERCENT: TAbmesFloatField
      FieldName = 'JOINED_SPEC_STATE_2_PERCENT'
      OnGetText = cdsGridDataJOINED_SPEC_STATE_2_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataJOINED_SPEC_STATE_3_PERCENT: TAbmesFloatField
      FieldName = 'JOINED_SPEC_STATE_3_PERCENT'
      OnGetText = cdsGridDataJOINED_SPEC_STATE_3_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataJOINED_SPEC_STATE_4_PERCENT: TAbmesFloatField
      FieldName = 'JOINED_SPEC_STATE_4_PERCENT'
      OnGetText = cdsGridDataJOINED_SPEC_STATE_4_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataJOINED_SPEC_STATE_5_PERCENT: TAbmesFloatField
      FieldName = 'JOINED_SPEC_STATE_5_PERCENT'
      OnGetText = cdsGridDataJOINED_SPEC_STATE_5_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataJOINED_SPEC_STATE_6_PERCENT: TAbmesFloatField
      FieldName = 'JOINED_SPEC_STATE_6_PERCENT'
      OnGetText = cdsGridDataJOINED_SPEC_STATE_6_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataPRODUCT_COUNT: TAbmesFloatField
      FieldName = 'PRODUCT_COUNT'
      DisplayFormat = ',0'
    end
    object cdsGridDataSPEC_STATE_1_COUNT: TAbmesFloatField
      FieldName = 'SPEC_STATE_1_COUNT'
      DisplayFormat = ',0'
    end
    object cdsGridDataSPEC_STATE_2_COUNT: TAbmesFloatField
      FieldName = 'SPEC_STATE_2_COUNT'
      DisplayFormat = ',0'
    end
    object cdsGridDataSPEC_STATE_3_COUNT: TAbmesFloatField
      FieldName = 'SPEC_STATE_3_COUNT'
      DisplayFormat = ',0'
    end
    object cdsGridDataSPEC_STATE_4_COUNT: TAbmesFloatField
      FieldName = 'SPEC_STATE_4_COUNT'
      DisplayFormat = ',0'
    end
    object cdsGridDataSPEC_STATE_5_COUNT: TAbmesFloatField
      FieldName = 'SPEC_STATE_5_COUNT'
      DisplayFormat = ',0'
    end
    object cdsGridDataSPEC_STATE_6_COUNT: TAbmesFloatField
      FieldName = 'SPEC_STATE_6_COUNT'
      DisplayFormat = ',0'
    end
    object cdsGridDataSPEC_STATE_1_PERCENT: TAbmesFloatField
      FieldName = 'SPEC_STATE_1_PERCENT'
      OnGetText = cdsGridDataSPEC_STATE_1_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataSPEC_STATE_2_PERCENT: TAbmesFloatField
      FieldName = 'SPEC_STATE_2_PERCENT'
      OnGetText = cdsGridDataSPEC_STATE_2_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataSPEC_STATE_3_PERCENT: TAbmesFloatField
      FieldName = 'SPEC_STATE_3_PERCENT'
      OnGetText = cdsGridDataSPEC_STATE_3_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataSPEC_STATE_4_PERCENT: TAbmesFloatField
      FieldName = 'SPEC_STATE_4_PERCENT'
      OnGetText = cdsGridDataSPEC_STATE_4_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataSPEC_STATE_5_PERCENT: TAbmesFloatField
      FieldName = 'SPEC_STATE_5_PERCENT'
      OnGetText = cdsGridDataSPEC_STATE_5_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataSPEC_STATE_6_PERCENT: TAbmesFloatField
      FieldName = 'SPEC_STATE_6_PERCENT'
      OnGetText = cdsGridDataSPEC_STATE_6_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataEST_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'EST_ACCOUNT_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataEST_ACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'EST_ACCOUNT_SINGLE_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataEST_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'EST_SINGLE_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataEST_BUSINESS_RESULT_VALUE: TAbmesFloatField
      FieldName = 'EST_BUSINESS_RESULT_VALUE'
      DisplayFormat = ',0'
    end
    object cdsGridDataEST_BUSINESS_RESULT_PERCENT: TAbmesFloatField
      FieldName = 'EST_BUSINESS_RESULT_PERCENT'
      OnGetText = cdsGridDataEST_BUSINESS_RESULT_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataEST_TOTAL_INVESTMENT_PERCENT: TAbmesFloatField
      FieldName = 'EST_TOTAL_INVESTMENT_PERCENT'
      OnGetText = cdsGridDataEST_TOTAL_INVESTMENT_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'REAL_ACCOUNT_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_ACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'REAL_ACCOUNT_SINGLE_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataREAL_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'REAL_SINGLE_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataREAL_BUSINESS_RESULT_VALUE: TAbmesFloatField
      FieldName = 'REAL_BUSINESS_RESULT_VALUE'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_BUSINESS_RESULT_PERCENT: TAbmesFloatField
      FieldName = 'REAL_BUSINESS_RESULT_PERCENT'
      OnGetText = cdsGridDataREAL_BUSINESS_RESULT_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_TOTAL_INVESTMENT_PERCENT: TAbmesFloatField
      FieldName = 'REAL_TOTAL_INVESTMENT_PERCENT'
      OnGetText = cdsGridDataREAL_TOTAL_INVESTMENT_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataEO_ENGINEERING_WORKDAYS_DIFF: TAbmesFloatField
      FieldName = 'EO_ENGINEERING_WORKDAYS_DIFF'
      DisplayFormat = ',0'
    end
    object cdsGridDataEO_ENGINEERING_WORKDAYS_DIFF_PERCENT: TAbmesFloatField
      FieldName = 'EO_ENGINEERING_WORKDAYS_DIFF_PERCENT'
      OnGetText = cdsGridDataEO_ENGINEERING_WORKDAYS_DIFF_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_QUANTITY_DIFF: TAbmesFloatField
      FieldName = 'REAL_QUANTITY_DIFF'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_ACCOUNT_QUANTITY_DIFF: TAbmesFloatField
      FieldName = 'REAL_ACCOUNT_QUANTITY_DIFF'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_SINGLE_PRICE_DIFF: TAbmesFloatField
      FieldName = 'REAL_SINGLE_PRICE_DIFF'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataREAL_ACCOUNT_SINGLE_PRICE_DIFF: TAbmesFloatField
      FieldName = 'REAL_ACCOUNT_SINGLE_PRICE_DIFF'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataREAL_TOTAL_PRICE_DIFF: TAbmesFloatField
      FieldName = 'REAL_TOTAL_PRICE_DIFF'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_BUSINESS_RESULT_VALUE_DIFF: TAbmesFloatField
      FieldName = 'REAL_BUSINESS_RESULT_VALUE_DIFF'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_BUSINESS_RESULT_PERCENT_DIFF: TAbmesFloatField
      FieldName = 'REAL_BUSINESS_RESULT_PERCENT_DIFF'
      OnGetText = cdsGridDataREAL_BUSINESS_RESULT_PERCENT_DIFFGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_TOTAL_INVESTMENT_VALUE_DIFF: TAbmesFloatField
      FieldName = 'REAL_TOTAL_INVESTMENT_VALUE_DIFF'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_TOTAL_INVESTMENT_PERCENT_DIFF: TAbmesFloatField
      FieldName = 'REAL_TOTAL_INVESTMENT_PERCENT_DIFF'
      OnGetText = cdsGridDataREAL_TOTAL_INVESTMENT_PERCENT_DIFFGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_QUANTITY_DIFF_PERCENT: TAbmesFloatField
      FieldName = 'REAL_QUANTITY_DIFF_PERCENT'
      OnGetText = cdsGridDataREAL_QUANTITY_DIFF_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_ACCOUNT_QUANTITY_DIFF_PERCENT: TAbmesFloatField
      FieldName = 'REAL_ACCOUNT_QUANTITY_DIFF_PERCENT'
      OnGetText = cdsGridDataREAL_ACCOUNT_QUANTITY_DIFF_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_SINGLE_PRICE_DIFF_PERCENT: TAbmesFloatField
      FieldName = 'REAL_SINGLE_PRICE_DIFF_PERCENT'
      OnGetText = cdsGridDataREAL_SINGLE_PRICE_DIFF_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_ACCOUNT_SINGLE_PRICE_DIFF_PERCENT: TAbmesFloatField
      FieldName = 'REAL_ACCOUNT_SINGLE_PRICE_DIFF_PERCENT'
      OnGetText = cdsGridDataREAL_ACCOUNT_SINGLE_PRICE_DIFF_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_TOTAL_PRICE_DIFF_PERCENT: TAbmesFloatField
      FieldName = 'REAL_TOTAL_PRICE_DIFF_PERCENT'
      OnGetText = cdsGridDataREAL_TOTAL_PRICE_DIFF_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_BUSINESS_RESULT_VALUE_DIFF_PERCENT: TAbmesFloatField
      FieldName = 'REAL_BUSINESS_RESULT_VALUE_DIFF_PERCENT'
      OnGetText = cdsGridDataREAL_BUSINESS_RESULT_VALUE_DIFF_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_BUSINESS_RESULT_PERCENT_DIFF_PERCENT: TAbmesFloatField
      FieldName = 'REAL_BUSINESS_RESULT_PERCENT_DIFF_PERCENT'
      OnGetText = cdsGridDataREAL_BUSINESS_RESULT_PERCENT_DIFF_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_TOTAL_INVESTMENT_VALUE_DIFF_PERCENT: TAbmesFloatField
      FieldName = 'REAL_TOTAL_INVESTMENT_VALUE_DIFF_PERCENT'
      OnGetText = cdsGridDataREAL_TOTAL_INVESTMENT_VALUE_DIFF_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_TOTAL_INVESTMENT_PERCENT_DIFF_PERCENT: TAbmesFloatField
      FieldName = 'REAL_TOTAL_INVESTMENT_PERCENT_DIFF_PERCENT'
      OnGetText = cdsGridDataREAL_TOTAL_INVESTMENT_PERCENT_DIFF_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataLEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object cdsGridData_SUM_EST_TOTAL_INVESTMENT_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SUM_EST_TOTAL_INVESTMENT_VALUE'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_SUM_EST_BUSINESS_RESULT_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SUM_EST_BUSINESS_RESULT_VALUE'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_AVG_EST_BUSINESS_RESULT_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_AVG_EST_BUSINESS_RESULT_PERCENT'
      OnGetText = cdsGridData_AVG_EST_BUSINESS_RESULT_PERCENTGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_AVG_EST_TOTAL_INVESTMENT_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_AVG_EST_TOTAL_INVESTMENT_PERCENT'
      OnGetText = cdsGridData_AVG_EST_TOTAL_INVESTMENT_PERCENTGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_SUM_REAL_TOTAL_INVESTMENT_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SUM_REAL_TOTAL_INVESTMENT_VALUE'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_SUM_REAL_BUSINESS_RESULT_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SUM_REAL_BUSINESS_RESULT_VALUE'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_AVG_REAL_BUSINESS_RESULT_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_AVG_REAL_BUSINESS_RESULT_PERCENT'
      OnGetText = cdsGridData_AVG_REAL_BUSINESS_RESULT_PERCENTGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_AVG_REAL_TOTAL_INVESTMENT_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_AVG_REAL_TOTAL_INVESTMENT_PERCENT'
      OnGetText = cdsGridData_AVG_REAL_TOTAL_INVESTMENT_PERCENTGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_SUM_REAL_TOTAL_INVESTMENT_VALUE_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SUM_REAL_TOTAL_INVESTMENT_VALUE_DIFF'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_SUM_REAL_BUSINESS_RESULT_VALUE_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SUM_REAL_BUSINESS_RESULT_VALUE_DIFF'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_AVG_REAL_BUSINESS_RESULT_PERCENT_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_AVG_REAL_BUSINESS_RESULT_PERCENT_DIFF'
      OnGetText = cdsGridData_AVG_REAL_BUSINESS_RESULT_PERCENT_DIFFGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_AVG_REAL_TOTAL_INVESTMENT_PERCENT_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_AVG_REAL_TOTAL_INVESTMENT_PERCENT_DIFF'
      OnGetText = cdsGridData_AVG_REAL_TOTAL_INVESTMENT_PERCENT_DIFFGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_AVG_REAL_TOTAL_INVESTMENT_VALUE_DIFF_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_AVG_REAL_TOTAL_INVESTMENT_VALUE_DIFF_PERCENT'
      OnGetText = cdsGridData_AVG_REAL_TOTAL_INVESTMENT_VALUE_DIFF_PERCENTGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_AVG_REAL_BUSINESS_RESULT_VALUE_DIFF_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_AVG_REAL_BUSINESS_RESULT_VALUE_DIFF_PERCENT'
      OnGetText = cdsGridData_AVG_REAL_BUSINESS_RESULT_VALUE_DIFF_PERCENTGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_AVG_REAL_BUSINESS_RESULT_PERCENT_DIFF_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_AVG_REAL_BUSINESS_RESULT_PERCENT_DIFF_PERCENT'
      OnGetText = cdsGridData_AVG_REAL_BUSINESS_RESULT_PERCENT_DIFF_PERCENTGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_AVG_REAL_TOTAL_INVESTMENT_PERCENT_DIFF_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_AVG_REAL_TOTAL_INVESTMENT_PERCENT_DIFF_PERCENT'
      OnGetText = cdsGridData_AVG_REAL_TOTAL_INVESTMENT_PERCENT_DIFF_PERCENTGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_SUM_REAL_TOTAL_PRICE_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SUM_REAL_TOTAL_PRICE_DIFF'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_AVG_REAL_TOTAL_PRICE_DIFF_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_AVG_REAL_TOTAL_PRICE_DIFF_PERCENT'
      OnGetText = cdsGridData_AVG_REAL_TOTAL_PRICE_DIFF_PERCENTGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridDataPARTNER_BASE_ROLE_CODE: TAbmesFloatField
      FieldName = 'PARTNER_BASE_ROLE_CODE'
    end
    object cdsGridData_SUM_EST_TOTAL_PRICE: TAggregateField
      FieldName = '_SUM_EST_TOTAL_PRICE'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(EST_TOTAL_PRICE)'
    end
    object cdsGridData_SUM_REAL_TOTAL_PRICE: TAggregateField
      FieldName = '_SUM_REAL_TOTAL_PRICE'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(REAL_TOTAL_PRICE)'
    end
    object cdsGridData__SUM_EST_TOTAL_INVESTMENT_VALUE: TAggregateField
      FieldName = '__SUM_EST_TOTAL_INVESTMENT_VALUE'
      Active = True
      Expression = 'Sum(EST_TOTAL_INVESTMENT_VALUE)'
    end
    object cdsGridData__SUM_REAL_TOTAL_INVESTMENT_VALUE: TAggregateField
      FieldName = '__SUM_REAL_TOTAL_INVESTMENT_VALUE'
      Active = True
      Expression = 'Sum(REAL_TOTAL_INVESTMENT_VALUE)'
    end
    object cdsGridData_COUNT_EST_TOTAL_INVESTMENT_VALUE: TAggregateField
      FieldName = '_COUNT_EST_TOTAL_INVESTMENT_VALUE'
      Active = True
      Expression = 'Count(EST_TOTAL_INVESTMENT_VALUE)'
    end
    object cdsGridData_COUNT_REAL_TOTAL_INVESTMENT_VALUE: TAggregateField
      FieldName = '_COUNT_REAL_TOTAL_INVESTMENT_VALUE'
      Active = True
      Expression = 'Count(REAL_TOTAL_INVESTMENT_VALUE)'
    end
    object cdsGridData_COUNT_REAL_TOTAL_PRICE: TAggregateField
      FieldName = '_COUNT_REAL_TOTAL_PRICE'
      Active = True
      Expression = 'Count(REAL_TOTAL_PRICE)'
    end
    object cdsGridData_SUM_DETAIL_QUANTITY: TAggregateField
      FieldName = '_SUM_DETAIL_QUANTITY'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(DETAIL_QUANTITY)'
    end
    object cdsGridData_MIN_DETAIL_MEASURE_ABBR: TAggregateField
      FieldName = '_MIN_DETAIL_MEASURE_ABBR'
      Active = True
      Expression = 'Min(DETAIL_MEASURE_ABBR)'
    end
    object cdsGridData_SUM_DETAIL_ACCOUNT_QUANTITY: TAggregateField
      FieldName = '_SUM_DETAIL_ACCOUNT_QUANTITY'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(DETAIL_ACCOUNT_QUANTITY)'
    end
    object cdsGridData_MIN_DETAIL_ACCOUNT_MEASURE_ABBR: TAggregateField
      FieldName = '_MIN_DETAIL_ACCOUNT_MEASURE_ABBR'
      Active = True
      Expression = 'Min(DETAIL_ACCOUNT_MEASURE_ABBR)'
    end
    object cdsGridData_SUM_MATERIAL_QUANTITY: TAggregateField
      FieldName = '_SUM_MATERIAL_QUANTITY'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(MATERIAL_QUANTITY)'
    end
    object cdsGridData_MIN_MATERIAL_MEASURE_ABBR: TAggregateField
      FieldName = '_MIN_MATERIAL_MEASURE_ABBR'
      Active = True
      Expression = 'Min(MATERIAL_MEASURE_ABBR)'
    end
    object cdsGridData_SUM_MATERIAL_ACCOUNT_QUANTITY: TAggregateField
      FieldName = '_SUM_MATERIAL_ACCOUNT_QUANTITY'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(MATERIAL_ACCOUNT_QUANTITY)'
    end
    object cdsGridData_MIN_MATERIAL_ACCOUNT_MEASURE_ABBR: TAggregateField
      FieldName = '_MIN_MATERIAL_ACCOUNT_MEASURE_ABBR'
      Active = True
      Expression = 'Min(MATERIAL_ACCOUNT_MEASURE_ABBR)'
    end
    object cdsGridData_SUM_CAPACITY_BUSY_HOURS: TAggregateField
      FieldName = '_SUM_CAPACITY_BUSY_HOURS'
      Active = True
      DisplayFormat = ',0.#'
      Expression = 'Sum(CAPACITY_BUSY_HOURS)'
    end
  end
  inherited alActions: TActionList
    Left = 504
    Top = 0
    inherited actForm: TAction
      Caption = 
        #1052#1072#1090#1088#1080#1094#1072' '#1085#1072' %ParRelProducts%%ParRelProductsStructurePartIncludeKi' +
        'nd%%ParRelProductsDeptIncludeKind%%ParRelProductsKind%%ForCommon' +
        'Product% - %ParRelProductsOrientation%'
    end
    inherited actFilter: TAction
      Visible = True
    end
    object actSetWorkMeasureDisplay: TAction
      ImageIndex = 23
      OnExecute = actSetWorkMeasureDisplayExecute
    end
    object actSetAccountMeasureDisplay: TAction
      ImageIndex = 28
      OnExecute = actSetAccountMeasureDisplayExecute
    end
    object actSetRealsQuantityDisplay: TAction
      Caption = #1056#1077#1072#1083'.'
      OnExecute = actSetRealsQuantityDisplayExecute
    end
    object actSetRealsDiffDisplay: TAction
      Caption = #1054#1090#1082#1083'.'
      OnExecute = actSetRealsDiffDisplayExecute
    end
    object actSetDiffQuantityDisplay: TAction
      Caption = #1050'-'#1074#1086
      OnExecute = actSetDiffQuantityDisplayExecute
    end
    object actSetDiffPercentDisplay: TAction
      Caption = '  %  '
      OnExecute = actSetDiffPercentDisplayExecute
    end
    object actSetBusinessResultPartDisplay: TAction
      Caption = #1048#1056
      OnExecute = actSetBusinessResultPartDisplayExecute
    end
    object actSetInvestmentPartDisplay: TAction
      Caption = #1042#1057
      OnExecute = actSetInvestmentPartDisplayExecute
    end
    object actMasterPartnerDoc: TAction
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1052#1048#1048#1054' '#1085#1072' %Partner%'
      OnExecute = actMasterPartnerDocExecute
      OnUpdate = actMasterPartnerDocUpdate
    end
    object actMasterProductDoc: TAction
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1052#1048#1048#1054' '#1085#1072' %ProductClassAbbrev%'
      OnExecute = actMasterProductDocExecute
      OnUpdate = actMasterProductDocUpdate
    end
    object actDetailPartnerDoc: TAction
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1052#1048#1048#1054' '#1085#1072' %Partner%'
      OnExecute = actDetailPartnerDocExecute
      OnUpdate = actDetailPartnerDocUpdate
    end
    object actDetailProductDoc: TAction
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1052#1048#1048#1054' '#1085#1072' %ProductClassAbbrev%'
      OnExecute = actDetailProductDocExecute
      OnUpdate = actDetailProductDocUpdate
    end
    object actParRelProductDoc: TAction
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1052#1048#1048#1054' '#1085#1072' %ParRelProductAbbrev%'
      OnExecute = actParRelProductDocExecute
      OnUpdate = actParRelProductDocUpdate
    end
    object actParRelProductsEngineering: TAction
      Caption = '%ParRelProductsAbbrev% '#1079#1072' '#1055#1048#1056'%ForCommonProduct%...'
      OnExecute = actParRelProductsEngineeringExecute
    end
    object actParRelProductsForCommonProduct: TAction
      Caption = '%ParRelProductsAbbrev%%ParRelProductsKind% '#1079#1072' '#1058#1049#1057'...'
      OnExecute = actParRelProductsForCommonProductExecute
      OnUpdate = actParRelProductsForCommonProductUpdate
    end
    object actEngineeringOrder: TAction
      Caption = #1054#1055#1048#1056'...'
      OnExecute = actEngineeringOrderExecute
      OnUpdate = actEngineeringOrderUpdate
    end
    object actCommonGroups: TAction
      Caption = #1058#1049#1057'...'
      OnExecute = actCommonGroupsExecute
      OnUpdate = actCommonGroupsUpdate
    end
    object actRealBorderDeals: TAction
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' %BorderProcessOrderAbbrev%...'
      OnExecute = actRealBorderDealsExecute
    end
    object actPriceList: TAction
      Caption = #1062#1077#1085#1086#1074#1072' '#1051#1080#1089#1090#1072' '#1079#1072' %Master%...'
      OnExecute = actPriceListExecute
      OnUpdate = actPriceListUpdate
    end
    object actToggleShowPartnerProductNames: TAction
      Hint = #1054#1079#1085#1072#1095#1077#1085#1080#1103' '#1085#1072' %ProductClassAbbrev% '#1086#1090' '#1055#1072#1088#1090#1085#1100#1086#1088#1080
      ImageIndex = 24
      OnExecute = actToggleShowPartnerProductNamesExecute
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    AfterOpen = pdsGridDataParamsAfterOpen
    OnCalcFields = pdsGridDataParamsCalcFields
    DataSet = cdsDetail
    object pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_DATE'
      Required = True
    end
    object pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' - '#1050#1088#1072#1081
      FieldName = 'END_DATE'
      Required = True
    end
    object pdsGridDataParamsOBTAINMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OBTAINMENT_TYPE_CODE'
      Required = True
    end
    object pdsGridDataParamsINVESTMENT_LEVEL_CODE: TAbmesFloatField
      DisplayLabel = #1042#1057'/'#1048#1056' '#1056#1077#1076
      FieldName = 'INVESTMENT_LEVEL_CODE'
      Required = True
      OnChange = pdsGridDataParamsINVESTMENT_LEVEL_CODEChange
    end
    object pdsGridDataParamsCALC_REALS: TAbmesFloatField
      DisplayLabel = #1055#1086#1082#1072#1079#1074#1072#1085#1077' '#1085#1072' '#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103
      FieldName = 'CALC_REALS'
      Required = True
      OnChange = pdsGridDataParamsCALC_REALSChange
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsMIN_PRP_STATUS_CODE: TAbmesFloatField
      DisplayLabel = '%ParRelProduct% - '#1057#1090#1072#1090#1091#1089' - '#1054#1090
      FieldName = 'MIN_PRP_STATUS_CODE'
    end
    object pdsGridDataParamsMAX_PRP_STATUS_CODE: TAbmesFloatField
      DisplayLabel = '%ParRelProduct% - '#1057#1090#1072#1090#1091#1089' - '#1044#1086
      FieldName = 'MAX_PRP_STATUS_CODE'
    end
    object pdsGridDataParamsMIN_PRP_STATUS_REACH_MONTHS: TAbmesFloatField
      DisplayLabel = '%ParRelProduct% - '#1055#1077#1088#1080#1086#1076' '#1079#1072' '#1076#1086#1089#1090#1080#1075#1072#1085#1077' - '#1054#1090
      FieldName = 'MIN_PRP_STATUS_REACH_MONTHS'
    end
    object pdsGridDataParamsMAX_PRP_STATUS_REACH_MONTHS: TAbmesFloatField
      DisplayLabel = '%ParRelProduct% - '#1055#1077#1088#1080#1086#1076' '#1079#1072' '#1076#1086#1089#1090#1080#1075#1072#1085#1077' - '#1044#1086
      FieldName = 'MAX_PRP_STATUS_REACH_MONTHS'
    end
    object pdsGridDataParamsMIN_PRP_EXIST_MONTHS: TAbmesFloatField
      DisplayLabel = '%ParRelProduct% - '#1055#1077#1088#1080#1086#1076' '#1085#1072' '#1089#1098#1097#1077#1089#1090#1074#1091#1074#1072#1085#1077' - '#1054#1090
      FieldName = 'MIN_PRP_EXIST_MONTHS'
    end
    object pdsGridDataParamsMAX_PRP_EXIST_MONTHS: TAbmesFloatField
      DisplayLabel = '%ParRelProduct% - '#1055#1077#1088#1080#1086#1076' '#1085#1072' '#1089#1098#1097#1077#1089#1090#1074#1091#1074#1072#1085#1077' - '#1044#1086
      FieldName = 'MAX_PRP_EXIST_MONTHS'
    end
    object pdsGridDataParamsIS_REGULAR: TAbmesFloatField
      DisplayLabel = #1056#1077#1078#1080#1084' '#1087#1091#1083#1089'.'
      FieldName = 'IS_REGULAR'
    end
    object pdsGridDataParamsIS_APPROVED_BY_PARTNER: TAbmesFloatField
      DisplayLabel = #1057#1098#1089#1090#1086#1103#1085#1080#1077' '#1085#1072' '#1044#1086#1075#1086#1074#1086#1088#1077#1085#1086#1089#1090
      FieldName = 'IS_APPROVED_BY_PARTNER'
    end
    object pdsGridDataParamsPRODUCT_COMMON_LEVEL: TAbmesFloatField
      DisplayLabel = #1053#1080#1074#1086' %ParRelProductAbbrev% '#1089#1087#1088#1103#1084#1086' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'PRODUCT_COMMON_LEVEL'
    end
    object pdsGridDataParamsPARTNER_COMMON_LEVEL: TAbmesFloatField
      DisplayLabel = #1053#1080#1074#1086' %ParRelProductAbbrev% '#1089#1087#1088#1103#1084#1086' '#1055#1072#1088#1090#1085#1100#1086#1088
      FieldName = 'PARTNER_COMMON_LEVEL'
    end
    object pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      DisplayLabel = '%ProductClassName%'
      FieldName = 'CHOSEN_PRODUCTS'
      Size = 4000
    end
    object pdsGridDataParamsCHOSEN_COMPANIES: TAbmesWideStringField
      DisplayLabel = '%Partner%'
      FieldName = 'CHOSEN_COMPANIES'
      Size = 4000
    end
    object pdsGridDataParamsMIN_COMPANY_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1044#1072#1085#1085#1080' '#1079#1072' %Partner% - '#1057#1090#1072#1090#1091#1089' - '#1054#1090
      FieldName = 'MIN_COMPANY_STATUS_CODE'
    end
    object pdsGridDataParamsMAX_COMPANY_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1044#1072#1085#1085#1080' '#1079#1072' %Partner% - '#1057#1090#1072#1090#1091#1089' - '#1044#1086
      FieldName = 'MAX_COMPANY_STATUS_CODE'
    end
    object pdsGridDataParamsBEGIN_PRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1044#1072#1085#1085#1080' '#1079#1072' %Partner% - '#1055#1088#1080#1086#1088#1080#1090#1077#1090' - '#1054#1090
      FieldName = 'BEGIN_PRIORITY_CODE'
    end
    object pdsGridDataParamsEND_PRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1044#1072#1085#1085#1080' '#1079#1072' %Partner% - '#1055#1088#1080#1086#1088#1080#1090#1077#1090' - '#1044#1086
      FieldName = 'END_PRIORITY_CODE'
    end
    object pdsGridDataParamsCOMPANY_CLASS_CODE: TAbmesFloatField
      DisplayLabel = #1044#1072#1085#1085#1080' '#1079#1072' %Partner% - '#1050#1083#1072#1089
      FieldName = 'COMPANY_CLASS_CODE'
    end
    object pdsGridDataParamsCALC_ESTS: TAbmesFloatField
      FieldName = 'CALC_ESTS'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsCALC_ENGINEERING: TAbmesFloatField
      FieldName = 'CALC_ENGINEERING'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsCOMMON_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'COMMON_PRODUCT_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsSTAGE_DEPT_CODE: TAbmesFloatField
      FieldName = 'STAGE_DEPT_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsOP_DEPT_CODE: TAbmesFloatField
      FieldName = 'OP_DEPT_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsMATERIAL_CODE: TAbmesFloatField
      FieldName = 'MATERIAL_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParams_OBTAINMENT_TYPE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_OBTAINMENT_TYPE_ABBREV'
      LookupDataSet = cdsObtainmentTypesForBorderRelTypeAndProdOrderBaseType
      LookupKeyFields = 'OBTAINMENT_TYPE_CODE'
      LookupResultField = 'BORDER_DEAL_TYPE_ABBREV'
      KeyFields = 'OBTAINMENT_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object pdsGridDataParams_BORDER_DEAL_TYPE_CODE: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_BORDER_DEAL_TYPE_CODE'
      LookupDataSet = cdsObtainmentTypesForBorderRelTypeAndProdOrderBaseType
      LookupKeyFields = 'OBTAINMENT_TYPE_CODE'
      LookupResultField = 'BORDER_DEAL_TYPE_CODE'
      KeyFields = 'OBTAINMENT_TYPE_CODE'
      Lookup = True
    end
    object pdsGridDataParams_BUSINESS_RESULT_NOTE: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_BUSINESS_RESULT_NOTE'
      Size = 50
      Calculated = True
    end
    object pdsGridDataParams_INVESTMENT_LEVEL_DESCRIPTION: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_INVESTMENT_LEVEL_DESCRIPTION'
      LookupDataSet = cdsInvestmentLevels
      LookupKeyFields = 'INVESTMENT_LEVEL_CODE'
      LookupResultField = '_INVESTMENT_LEVEL_DESCRIPTION'
      KeyFields = 'INVESTMENT_LEVEL_CODE'
      Size = 50
      Lookup = True
    end
    object pdsGridDataParams_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_BEGIN_DATE'
      Calculated = True
    end
    object pdsGridDataParams_END_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_END_DATE'
      Calculated = True
    end
  end
  inherited cdsDetail: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conParRelProducts
    FieldDefs = <
      item
        Name = 'PARTNER_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BORDER_REL_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'OBTAINMENT_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
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
        Name = 'IS_REGULAR'
        DataType = ftFloat
      end
      item
        Name = 'PAR_REL_PRODUCT_STATUS_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PAR_REL_PRODUCT_STATUS_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'PAR_REL_PRODUCT_EXIST_MONTHS'
        DataType = ftFloat
      end
      item
        Name = 'PRP_STATUS_REACH_MONTHS'
        DataType = ftFloat
      end
      item
        Name = 'PARTNER_NO'
        DataType = ftFloat
      end
      item
        Name = 'PARTNER_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'PARTNER_DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PARTNER_DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PARTNER_HAS_DOC'
        DataType = ftFloat
      end
      item
        Name = 'PARTNER_PRIORITY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PARTNER_PRIORITY_NO'
        DataType = ftFloat
      end
      item
        Name = 'PAR_PRIORITY_COLOR'
        DataType = ftFloat
      end
      item
        Name = 'PAR_PRIORITY_BACKGROUND_COLOR'
        DataType = ftFloat
      end
      item
        Name = 'PARTNER_COMPANY_CLASS_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PARTNER_COMPANY_CLASS_ABBREV'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'PARTNER_STATUS_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PARTNER_STATUS_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'PARTNER_EXISTENCE_MONTHS'
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
        Name = 'PRODUCT_PRIORITY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_PRIORITY_NO'
        DataType = ftFloat
      end
      item
        Name = 'PROD_PRIORITY_COLOR'
        DataType = ftFloat
      end
      item
        Name = 'PROD_PRIORITY_BACKGROUND_COLOR'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_MEASURE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'PRODUCT_ACCOUNT_MEASURE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_ACCOUNT_MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'PRODUCT_ACCOUNT_MEASURE_COEF'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_COMMON_STATUS_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PARTNER_PRODUCT_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'PARTNER_PRODUCT_NAMES'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'EST_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'EST_LEASE_DATE_UNIT_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'EST_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'EST_TOTAL_INVESTMENT_VALUE'
        DataType = ftFloat
      end
      item
        Name = 'REAL_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'REAL_LEASE_DATE_UNIT_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'REAL_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'REAL_TOTAL_INVESTMENT_VALUE'
        DataType = ftFloat
      end
      item
        Name = 'PROD_MIN_PREC_LEVEL_NO'
        DataType = ftFloat
      end
      item
        Name = 'PROD_MIN_PREC_LEVEL_COLOR'
        DataType = ftFloat
      end
      item
        Name = 'PROD_MIN_PREC_LEVEL_BACK_COLOR'
        DataType = ftFloat
      end
      item
        Name = 'PROD_MAX_PREC_LEVEL_NO'
        DataType = ftFloat
      end
      item
        Name = 'PROD_MAX_PREC_LEVEL_COLOR'
        DataType = ftFloat
      end
      item
        Name = 'PROD_MAX_PREC_LEVEL_BACK_COLOR'
        DataType = ftFloat
      end
      item
        Name = 'ENGINEERING_ORDER_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EO_ENGINEERING_PLAN_END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'EO_ENGINEERING_PLAN_WORKDAYS'
        DataType = ftFloat
      end
      item
        Name = 'EO_ENGINEERING_REAL_WORKDAYS'
        DataType = ftFloat
      end
      item
        Name = 'EO_ENGINEERING_DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'PRODUCT_SPEC_STATE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'JOINED_PRODUCT_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'JOINED_SPEC_STATE_1_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'JOINED_SPEC_STATE_2_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'JOINED_SPEC_STATE_3_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'JOINED_SPEC_STATE_4_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'JOINED_SPEC_STATE_5_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'JOINED_SPEC_STATE_6_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_MEASURE_ABBR'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'DETAIL_ACCOUNT_MEASURE_ABBR'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'DETAIL_ACCOUNT_MEASURE_COEF'
        DataType = ftFloat
      end
      item
        Name = 'MATERIAL_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'MATERIAL_MEASURE_ABBR'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'MATERIAL_ACCOUNT_MEASURE_ABBR'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'MATERIAL_ACCOUNT_MEASURE_COEF'
        DataType = ftFloat
      end
      item
        Name = 'CAPACITY_BUSY_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_ACCOUNT_QUANTITY'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'MATERIAL_ACCOUNT_QUANTITY'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'JOINED_SPEC_STATE_1_PERCENT'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'JOINED_SPEC_STATE_2_PERCENT'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'JOINED_SPEC_STATE_3_PERCENT'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'JOINED_SPEC_STATE_4_PERCENT'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'JOINED_SPEC_STATE_5_PERCENT'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'JOINED_SPEC_STATE_6_PERCENT'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'IS_PRODUCT_SPEC_STATE_1'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'IS_PRODUCT_SPEC_STATE_2'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'IS_PRODUCT_SPEC_STATE_3'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'IS_PRODUCT_SPEC_STATE_4'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'IS_PRODUCT_SPEC_STATE_5'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'IS_PRODUCT_SPEC_STATE_6'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'EST_ACCOUNT_QUANTITY'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'EST_ACCOUNT_SINGLE_PRICE'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'EST_SINGLE_PRICE'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'EST_BUSINESS_RESULT_VALUE'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'EST_BUSINESS_RESULT_PERCENT'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'EST_TOTAL_INVESTMENT_PERCENT'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'REAL_ACCOUNT_QUANTITY'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'REAL_ACCOUNT_SINGLE_PRICE'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'REAL_SINGLE_PRICE'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'REAL_BUSINESS_RESULT_VALUE'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'REAL_BUSINESS_RESULT_PERCENT'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'REAL_TOTAL_INVESTMENT_PERCENT'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'EO_ENGINEERING_WORKDAYS_DIFF'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'EO_ENGINEERING_WORKDAYS_DIFF_PERCENT'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'REAL_QUANTITY_DIFF'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'REAL_ACCOUNT_QUANTITY_DIFF'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'REAL_SINGLE_PRICE_DIFF'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'REAL_ACCOUNT_SINGLE_PRICE_DIFF'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'REAL_TOTAL_PRICE_DIFF'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'REAL_BUSINESS_RESULT_VALUE_DIFF'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'REAL_BUSINESS_RESULT_PERCENT_DIFF'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'REAL_TOTAL_INVESTMENT_VALUE_DIFF'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'REAL_TOTAL_INVESTMENT_PERCENT_DIFF'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'REAL_QUANTITY_DIFF_PERCENT'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'REAL_ACCOUNT_QUANTITY_DIFF_PERCENT'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'REAL_SINGLE_PRICE_DIFF_PERCENT'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'REAL_ACCOUNT_SINGLE_PRICE_DIFF_PERCENT'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'REAL_TOTAL_PRICE_DIFF_PERCENT'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'REAL_BUSINESS_RESULT_VALUE_DIFF_PERCENT'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'REAL_BUSINESS_RESULT_PERCENT_DIFF_PERCENT'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'REAL_TOTAL_INVESTMENT_VALUE_DIFF_PERCENT'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'REAL_TOTAL_INVESTMENT_PERCENT_DIFF_PERCENT'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'LEASE_DATE_UNIT_NAME'
        Attributes = [faReadonly]
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'PARTNER_BASE_ROLE_CODE'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idxPartner'
        Fields = 'PARTNER_CODE; PRODUCT_NAME'
        GroupingLevel = 1
      end
      item
        Name = 'idxProduct'
        Fields = 'PRODUCT_CODE; PARTNER_NAME'
        GroupingLevel = 1
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'CALC_ESTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CALC_ESTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'CALC_ESTS'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CALC_ESTS'
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
        Value = '1'
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVESTMENT_LEVEL_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'CALC_REALS'
        ParamType = ptInput
        Value = '0'
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
        Value = '1'
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
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
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
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
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
        Value = '1'
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
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
        Value = '1'
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
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CALC_REALS'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
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
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
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
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
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
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
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
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CALC_REALS'
        ParamType = ptInput
        Value = '0'
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
        Value = '1'
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
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
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
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
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
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
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
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
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CALC_REALS'
        ParamType = ptInput
        Value = '0'
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
        Value = '1'
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
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
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
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
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CALC_ENGINEERING'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CALC_ENGINEERING'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CALC_ENGINEERING'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CALC_ENGINEERING'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CALC_ENGINEERING'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CALC_ENGINEERING'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CALC_ENGINEERING'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CALC_ENGINEERING'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CALC_ENGINEERING'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CALC_ENGINEERING'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CALC_ENGINEERING'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CALC_ENGINEERING'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CALC_ENGINEERING'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STAGE_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STAGE_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STAGE_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STAGE_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MATERIAL_CODE'
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
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_APPROVED_BY_PARTNER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_APPROVED_BY_PARTNER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_REGULAR'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_REGULAR'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMMON_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_COMMON_LEVEL'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'COMMON_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_COMMON_LEVEL'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CLASS_CODE'
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
        Name = 'MIN_COMPANY_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MIN_COMPANY_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_COMPANY_STATUS_CODE'
        ParamType = ptInput
        Value = '6'
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '4'
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_EXIST_MONTHS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_EXIST_MONTHS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_EXIST_MONTHS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_EXIST_MONTHS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_REACH_MONTHS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_REACH_MONTHS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_REACH_MONTHS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_REACH_MONTHS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STAGE_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STAGE_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MATERIAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STAGE_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STAGE_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STAGE_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STAGE_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
      end>
    ProviderName = 'prvParRelProducts'
    StoreDefs = True
    BeforeOpen = cdsDetailBeforeOpen
    AfterOpen = cdsDetailAfterOpen
    object cdsDetailPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
    end
    object cdsDetailBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
    end
    object cdsDetailPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsDetailOBTAINMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OBTAINMENT_TYPE_CODE'
    end
    object cdsDetailPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_CODE'
    end
    object cdsDetailDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDetailDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsDetailHAS_DOC: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'HAS_DOC'
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsDetailIS_REGULAR: TAbmesFloatField
      FieldName = 'IS_REGULAR'
      DisplayBoolValues = #1056#1077#1075'.;'#1055#1091#1083#1089'.'
      FieldValueType = fvtBoolean
    end
    object cdsDetailPAR_REL_PRODUCT_STATUS_CODE: TAbmesFloatField
      FieldName = 'PAR_REL_PRODUCT_STATUS_CODE'
    end
    object cdsDetailPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField
      FieldName = 'PAR_REL_PRODUCT_STATUS_NAME'
      Size = 100
    end
    object cdsDetailPAR_REL_PRODUCT_EXIST_MONTHS: TAbmesFloatField
      FieldName = 'PAR_REL_PRODUCT_EXIST_MONTHS'
      DisplayFormat = ',0'
    end
    object cdsDetailPRP_STATUS_REACH_MONTHS: TAbmesFloatField
      FieldName = 'PRP_STATUS_REACH_MONTHS'
    end
    object cdsDetailPARTNER_NO: TAbmesFloatField
      FieldName = 'PARTNER_NO'
    end
    object cdsDetailPARTNER_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_NAME'
    end
    object cdsDetailPARTNER_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PARTNER_DOC_BRANCH_CODE'
    end
    object cdsDetailPARTNER_DOC_CODE: TAbmesFloatField
      FieldName = 'PARTNER_DOC_CODE'
    end
    object cdsDetailPARTNER_HAS_DOC: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'PARTNER_HAS_DOC'
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsDetailPARTNER_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'PARTNER_PRIORITY_CODE'
    end
    object cdsDetailPARTNER_PRIORITY_NO: TAbmesFloatField
      FieldName = 'PARTNER_PRIORITY_NO'
    end
    object cdsDetailPAR_PRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PAR_PRIORITY_COLOR'
    end
    object cdsDetailPAR_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PAR_PRIORITY_BACKGROUND_COLOR'
    end
    object cdsDetailPARTNER_COMPANY_CLASS_CODE: TAbmesFloatField
      FieldName = 'PARTNER_COMPANY_CLASS_CODE'
    end
    object cdsDetailPARTNER_COMPANY_CLASS_ABBREV: TAbmesWideStringField
      FieldName = 'PARTNER_COMPANY_CLASS_ABBREV'
      Size = 100
    end
    object cdsDetailPARTNER_STATUS_CODE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'PARTNER_STATUS_CODE'
      OnGetText = cdsDetailPARTNER_STATUS_CODEGetText
    end
    object cdsDetailPARTNER_STATUS_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_STATUS_NAME'
      Size = 100
    end
    object cdsDetailPARTNER_EXISTENCE_MONTHS: TAbmesFloatField
      FieldName = 'PARTNER_EXISTENCE_MONTHS'
      DisplayFormat = ',0'
    end
    object cdsDetailPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object cdsDetailPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsDetailPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object cdsDetailPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object cdsDetailPRODUCT_HAS_DOC: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'PRODUCT_HAS_DOC'
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsDetailPRODUCT_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_PRIORITY_CODE'
    end
    object cdsDetailPRODUCT_PRIORITY_NO: TAbmesFloatField
      FieldName = 'PRODUCT_PRIORITY_NO'
    end
    object cdsDetailPROD_PRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PROD_PRIORITY_COLOR'
    end
    object cdsDetailPROD_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PROD_PRIORITY_BACKGROUND_COLOR'
    end
    object cdsDetailPRODUCT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_MEASURE_CODE'
    end
    object cdsDetailPRODUCT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'PRODUCT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsDetailPRODUCT_ACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_CODE'
    end
    object cdsDetailPRODUCT_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsDetailPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_COEF'
    end
    object cdsDetailPRODUCT_COMMON_STATUS_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'PRODUCT_COMMON_STATUS_CODE'
      OnGetText = cdsDetailPRODUCT_COMMON_STATUS_CODEGetText
    end
    object cdsDetailPARTNER_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_PRODUCT_NAME'
      Size = 50
    end
    object cdsDetailPARTNER_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'PARTNER_PRODUCT_NAMES'
      Size = 250
    end
    object cdsDetailEST_QUANTITY: TAbmesFloatField
      FieldName = 'EST_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsDetailEST_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'EST_LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object cdsDetailEST_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'EST_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsDetailEST_TOTAL_INVESTMENT_VALUE: TAbmesFloatField
      FieldName = 'EST_TOTAL_INVESTMENT_VALUE'
      DisplayFormat = ',0'
    end
    object cdsDetailREAL_QUANTITY: TAbmesFloatField
      FieldName = 'REAL_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsDetailREAL_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'REAL_LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object cdsDetailREAL_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'REAL_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsDetailREAL_TOTAL_INVESTMENT_VALUE: TAbmesFloatField
      FieldName = 'REAL_TOTAL_INVESTMENT_VALUE'
      DisplayFormat = ',0'
    end
    object cdsDetailPROD_MIN_PREC_LEVEL_NO: TAbmesFloatField
      FieldName = 'PROD_MIN_PREC_LEVEL_NO'
    end
    object cdsDetailPROD_MIN_PREC_LEVEL_COLOR: TAbmesFloatField
      FieldName = 'PROD_MIN_PREC_LEVEL_COLOR'
    end
    object cdsDetailPROD_MIN_PREC_LEVEL_BACK_COLOR: TAbmesFloatField
      FieldName = 'PROD_MIN_PREC_LEVEL_BACK_COLOR'
    end
    object cdsDetailPROD_MAX_PREC_LEVEL_NO: TAbmesFloatField
      FieldName = 'PROD_MAX_PREC_LEVEL_NO'
    end
    object cdsDetailPROD_MAX_PREC_LEVEL_COLOR: TAbmesFloatField
      FieldName = 'PROD_MAX_PREC_LEVEL_COLOR'
    end
    object cdsDetailPROD_MAX_PREC_LEVEL_BACK_COLOR: TAbmesFloatField
      FieldName = 'PROD_MAX_PREC_LEVEL_BACK_COLOR'
    end
    object cdsDetailENGINEERING_ORDER_CODE: TAbmesFloatField
      FieldName = 'ENGINEERING_ORDER_CODE'
    end
    object cdsDetailEO_ENGINEERING_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'EO_ENGINEERING_PLAN_END_DATE'
    end
    object cdsDetailEO_ENGINEERING_PLAN_WORKDAYS: TAbmesFloatField
      FieldName = 'EO_ENGINEERING_PLAN_WORKDAYS'
      DisplayFormat = ',0'
    end
    object cdsDetailEO_ENGINEERING_REAL_WORKDAYS: TAbmesFloatField
      FieldName = 'EO_ENGINEERING_REAL_WORKDAYS'
      DisplayFormat = ',0'
    end
    object cdsDetailEO_ENGINEERING_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'EO_ENGINEERING_DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsDetailPRODUCT_SPEC_STATE_CODE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'PRODUCT_SPEC_STATE_CODE'
      OnGetText = cdsDetailPRODUCT_SPEC_STATE_CODEGetText
    end
    object cdsDetailJOINED_PRODUCT_COUNT: TAbmesFloatField
      FieldName = 'JOINED_PRODUCT_COUNT'
      DisplayFormat = ',0'
    end
    object cdsDetailJOINED_SPEC_STATE_1_COUNT: TAbmesFloatField
      FieldName = 'JOINED_SPEC_STATE_1_COUNT'
      DisplayFormat = ',0'
    end
    object cdsDetailJOINED_SPEC_STATE_2_COUNT: TAbmesFloatField
      FieldName = 'JOINED_SPEC_STATE_2_COUNT'
      DisplayFormat = ',0'
    end
    object cdsDetailJOINED_SPEC_STATE_3_COUNT: TAbmesFloatField
      FieldName = 'JOINED_SPEC_STATE_3_COUNT'
      DisplayFormat = ',0'
    end
    object cdsDetailJOINED_SPEC_STATE_4_COUNT: TAbmesFloatField
      FieldName = 'JOINED_SPEC_STATE_4_COUNT'
      DisplayFormat = ',0'
    end
    object cdsDetailJOINED_SPEC_STATE_5_COUNT: TAbmesFloatField
      FieldName = 'JOINED_SPEC_STATE_5_COUNT'
      DisplayFormat = ',0'
    end
    object cdsDetailJOINED_SPEC_STATE_6_COUNT: TAbmesFloatField
      FieldName = 'JOINED_SPEC_STATE_6_COUNT'
      DisplayFormat = ',0'
    end
    object cdsDetailDETAIL_QUANTITY: TAbmesFloatField
      FieldName = 'DETAIL_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsDetailDETAIL_MEASURE_ABBR: TAbmesWideStringField
      FieldName = 'DETAIL_MEASURE_ABBR'
      Size = 5
    end
    object cdsDetailDETAIL_ACCOUNT_MEASURE_ABBR: TAbmesWideStringField
      FieldName = 'DETAIL_ACCOUNT_MEASURE_ABBR'
      Size = 5
    end
    object cdsDetailDETAIL_ACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'DETAIL_ACCOUNT_MEASURE_COEF'
    end
    object cdsDetailMATERIAL_QUANTITY: TAbmesFloatField
      FieldName = 'MATERIAL_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsDetailMATERIAL_MEASURE_ABBR: TAbmesWideStringField
      FieldName = 'MATERIAL_MEASURE_ABBR'
      Size = 5
    end
    object cdsDetailMATERIAL_ACCOUNT_MEASURE_ABBR: TAbmesWideStringField
      FieldName = 'MATERIAL_ACCOUNT_MEASURE_ABBR'
      Size = 5
    end
    object cdsDetailMATERIAL_ACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'MATERIAL_ACCOUNT_MEASURE_COEF'
    end
    object cdsDetailCAPACITY_BUSY_HOURS: TAbmesFloatField
      FieldName = 'CAPACITY_BUSY_HOURS'
      DisplayFormat = ',0.#'
    end
    object cdsDetailDETAIL_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'DETAIL_ACCOUNT_QUANTITY'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object cdsDetailMATERIAL_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'MATERIAL_ACCOUNT_QUANTITY'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object cdsDetailJOINED_SPEC_STATE_1_PERCENT: TAbmesFloatField
      FieldName = 'JOINED_SPEC_STATE_1_PERCENT'
      ReadOnly = True
      OnGetText = cdsDetailJOINED_SPEC_STATE_1_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsDetailJOINED_SPEC_STATE_2_PERCENT: TAbmesFloatField
      FieldName = 'JOINED_SPEC_STATE_2_PERCENT'
      ReadOnly = True
      OnGetText = cdsDetailJOINED_SPEC_STATE_2_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsDetailJOINED_SPEC_STATE_3_PERCENT: TAbmesFloatField
      FieldName = 'JOINED_SPEC_STATE_3_PERCENT'
      ReadOnly = True
      OnGetText = cdsDetailJOINED_SPEC_STATE_3_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsDetailJOINED_SPEC_STATE_4_PERCENT: TAbmesFloatField
      FieldName = 'JOINED_SPEC_STATE_4_PERCENT'
      ReadOnly = True
      OnGetText = cdsDetailJOINED_SPEC_STATE_4_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsDetailJOINED_SPEC_STATE_5_PERCENT: TAbmesFloatField
      FieldName = 'JOINED_SPEC_STATE_5_PERCENT'
      ReadOnly = True
      OnGetText = cdsDetailJOINED_SPEC_STATE_5_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsDetailJOINED_SPEC_STATE_6_PERCENT: TAbmesFloatField
      FieldName = 'JOINED_SPEC_STATE_6_PERCENT'
      ReadOnly = True
      OnGetText = cdsDetailJOINED_SPEC_STATE_6_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsDetailIS_PRODUCT_SPEC_STATE_1: TAbmesFloatField
      FieldName = 'IS_PRODUCT_SPEC_STATE_1'
      ReadOnly = True
      DisplayFormat = ',0'
      FieldValueType = fvtBoolean
    end
    object cdsDetailIS_PRODUCT_SPEC_STATE_2: TAbmesFloatField
      FieldName = 'IS_PRODUCT_SPEC_STATE_2'
      ReadOnly = True
      DisplayFormat = ',0'
      FieldValueType = fvtBoolean
    end
    object cdsDetailIS_PRODUCT_SPEC_STATE_3: TAbmesFloatField
      FieldName = 'IS_PRODUCT_SPEC_STATE_3'
      ReadOnly = True
      DisplayFormat = ',0'
      FieldValueType = fvtBoolean
    end
    object cdsDetailIS_PRODUCT_SPEC_STATE_4: TAbmesFloatField
      FieldName = 'IS_PRODUCT_SPEC_STATE_4'
      ReadOnly = True
      DisplayFormat = ',0'
      FieldValueType = fvtBoolean
    end
    object cdsDetailIS_PRODUCT_SPEC_STATE_5: TAbmesFloatField
      FieldName = 'IS_PRODUCT_SPEC_STATE_5'
      ReadOnly = True
      DisplayFormat = ',0'
      FieldValueType = fvtBoolean
    end
    object cdsDetailIS_PRODUCT_SPEC_STATE_6: TAbmesFloatField
      FieldName = 'IS_PRODUCT_SPEC_STATE_6'
      ReadOnly = True
      DisplayFormat = ',0'
      FieldValueType = fvtBoolean
    end
    object cdsDetailEST_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'EST_ACCOUNT_QUANTITY'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object cdsDetailEST_ACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'EST_ACCOUNT_SINGLE_PRICE'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object cdsDetailEST_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'EST_SINGLE_PRICE'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object cdsDetailEST_BUSINESS_RESULT_VALUE: TAbmesFloatField
      FieldName = 'EST_BUSINESS_RESULT_VALUE'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object cdsDetailEST_BUSINESS_RESULT_PERCENT: TAbmesFloatField
      FieldName = 'EST_BUSINESS_RESULT_PERCENT'
      ReadOnly = True
      OnGetText = cdsDetailEST_BUSINESS_RESULT_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsDetailEST_TOTAL_INVESTMENT_PERCENT: TAbmesFloatField
      FieldName = 'EST_TOTAL_INVESTMENT_PERCENT'
      ReadOnly = True
      OnGetText = cdsDetailEST_TOTAL_INVESTMENT_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsDetailREAL_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'REAL_ACCOUNT_QUANTITY'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object cdsDetailREAL_ACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'REAL_ACCOUNT_SINGLE_PRICE'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object cdsDetailREAL_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'REAL_SINGLE_PRICE'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object cdsDetailREAL_BUSINESS_RESULT_VALUE: TAbmesFloatField
      FieldName = 'REAL_BUSINESS_RESULT_VALUE'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object cdsDetailREAL_BUSINESS_RESULT_PERCENT: TAbmesFloatField
      FieldName = 'REAL_BUSINESS_RESULT_PERCENT'
      ReadOnly = True
      OnGetText = cdsDetailREAL_BUSINESS_RESULT_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsDetailREAL_TOTAL_INVESTMENT_PERCENT: TAbmesFloatField
      FieldName = 'REAL_TOTAL_INVESTMENT_PERCENT'
      ReadOnly = True
      OnGetText = cdsDetailREAL_TOTAL_INVESTMENT_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsDetailEO_ENGINEERING_WORKDAYS_DIFF: TAbmesFloatField
      FieldName = 'EO_ENGINEERING_WORKDAYS_DIFF'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object cdsDetailEO_ENGINEERING_WORKDAYS_DIFF_PERCENT: TAbmesFloatField
      FieldName = 'EO_ENGINEERING_WORKDAYS_DIFF_PERCENT'
      ReadOnly = True
      OnGetText = cdsDetailEO_ENGINEERING_WORKDAYS_DIFF_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsDetailREAL_QUANTITY_DIFF: TAbmesFloatField
      FieldName = 'REAL_QUANTITY_DIFF'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object cdsDetailREAL_ACCOUNT_QUANTITY_DIFF: TAbmesFloatField
      FieldName = 'REAL_ACCOUNT_QUANTITY_DIFF'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object cdsDetailREAL_SINGLE_PRICE_DIFF: TAbmesFloatField
      FieldName = 'REAL_SINGLE_PRICE_DIFF'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object cdsDetailREAL_ACCOUNT_SINGLE_PRICE_DIFF: TAbmesFloatField
      FieldName = 'REAL_ACCOUNT_SINGLE_PRICE_DIFF'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object cdsDetailREAL_TOTAL_PRICE_DIFF: TAbmesFloatField
      FieldName = 'REAL_TOTAL_PRICE_DIFF'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object cdsDetailREAL_BUSINESS_RESULT_VALUE_DIFF: TAbmesFloatField
      FieldName = 'REAL_BUSINESS_RESULT_VALUE_DIFF'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object cdsDetailREAL_BUSINESS_RESULT_PERCENT_DIFF: TAbmesFloatField
      FieldName = 'REAL_BUSINESS_RESULT_PERCENT_DIFF'
      ReadOnly = True
      OnGetText = cdsDetailREAL_BUSINESS_RESULT_PERCENT_DIFFGetText
      DisplayFormat = ',0'
    end
    object cdsDetailREAL_TOTAL_INVESTMENT_VALUE_DIFF: TAbmesFloatField
      FieldName = 'REAL_TOTAL_INVESTMENT_VALUE_DIFF'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object cdsDetailREAL_TOTAL_INVESTMENT_PERCENT_DIFF: TAbmesFloatField
      FieldName = 'REAL_TOTAL_INVESTMENT_PERCENT_DIFF'
      ReadOnly = True
      OnGetText = cdsDetailREAL_TOTAL_INVESTMENT_PERCENT_DIFFGetText
      DisplayFormat = ',0'
    end
    object cdsDetailREAL_QUANTITY_DIFF_PERCENT: TAbmesFloatField
      FieldName = 'REAL_QUANTITY_DIFF_PERCENT'
      ReadOnly = True
      OnGetText = cdsDetailREAL_QUANTITY_DIFF_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsDetailREAL_ACCOUNT_QUANTITY_DIFF_PERCENT: TAbmesFloatField
      FieldName = 'REAL_ACCOUNT_QUANTITY_DIFF_PERCENT'
      ReadOnly = True
      OnGetText = cdsDetailREAL_ACCOUNT_QUANTITY_DIFF_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsDetailREAL_SINGLE_PRICE_DIFF_PERCENT: TAbmesFloatField
      FieldName = 'REAL_SINGLE_PRICE_DIFF_PERCENT'
      ReadOnly = True
      OnGetText = cdsDetailREAL_SINGLE_PRICE_DIFF_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsDetailREAL_ACCOUNT_SINGLE_PRICE_DIFF_PERCENT: TAbmesFloatField
      FieldName = 'REAL_ACCOUNT_SINGLE_PRICE_DIFF_PERCENT'
      ReadOnly = True
      OnGetText = cdsDetailREAL_ACCOUNT_SINGLE_PRICE_DIFF_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsDetailREAL_TOTAL_PRICE_DIFF_PERCENT: TAbmesFloatField
      FieldName = 'REAL_TOTAL_PRICE_DIFF_PERCENT'
      ReadOnly = True
      OnGetText = cdsDetailREAL_TOTAL_PRICE_DIFF_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsDetailREAL_BUSINESS_RESULT_VALUE_DIFF_PERCENT: TAbmesFloatField
      FieldName = 'REAL_BUSINESS_RESULT_VALUE_DIFF_PERCENT'
      ReadOnly = True
      OnGetText = cdsDetailREAL_BUSINESS_RESULT_VALUE_DIFF_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsDetailREAL_BUSINESS_RESULT_PERCENT_DIFF_PERCENT: TAbmesFloatField
      FieldName = 'REAL_BUSINESS_RESULT_PERCENT_DIFF_PERCENT'
      ReadOnly = True
      OnGetText = cdsDetailREAL_BUSINESS_RESULT_PERCENT_DIFF_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsDetailREAL_TOTAL_INVESTMENT_VALUE_DIFF_PERCENT: TAbmesFloatField
      FieldName = 'REAL_TOTAL_INVESTMENT_VALUE_DIFF_PERCENT'
      ReadOnly = True
      OnGetText = cdsDetailREAL_TOTAL_INVESTMENT_VALUE_DIFF_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsDetailREAL_TOTAL_INVESTMENT_PERCENT_DIFF_PERCENT: TAbmesFloatField
      FieldName = 'REAL_TOTAL_INVESTMENT_PERCENT_DIFF_PERCENT'
      ReadOnly = True
      OnGetText = cdsDetailREAL_TOTAL_INVESTMENT_PERCENT_DIFF_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsDetailLEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'LEASE_DATE_UNIT_NAME'
      ReadOnly = True
      Size = 50
    end
    object cdsDetailPARTNER_BASE_ROLE_CODE: TAbmesFloatField
      FieldName = 'PARTNER_BASE_ROLE_CODE'
    end
    object cdsDetail_SUM_EST_ACCOUNT_QUANTITY: TAggregateField
      FieldName = '_SUM_EST_ACCOUNT_QUANTITY'
      Active = True
      Expression = 'Sum(EST_ACCOUNT_QUANTITY)'
      GroupingLevel = 1
    end
    object cdsDetail_SUM_EST_QUANTITY: TAggregateField
      FieldName = '_SUM_EST_QUANTITY'
      Active = True
      Expression = 'Sum(EST_QUANTITY)'
      GroupingLevel = 1
    end
    object cdsDetail_SUM_EST_TOTAL_PRICE: TAggregateField
      FieldName = '_SUM_EST_TOTAL_PRICE'
      Active = True
      Expression = 'Sum(EST_TOTAL_PRICE)'
      GroupingLevel = 1
    end
    object cdsDetail_SUM_EST_TOTAL_INVESTMENT_VALUE: TAggregateField
      FieldName = '_SUM_EST_TOTAL_INVESTMENT_VALUE'
      Active = True
      Expression = 'Sum(EST_TOTAL_INVESTMENT_VALUE)'
      GroupingLevel = 1
    end
    object cdsDetail_SUM_REAL_ACCOUNT_QUANTITY: TAggregateField
      FieldName = '_SUM_REAL_ACCOUNT_QUANTITY'
      Active = True
      Expression = 'Sum(REAL_ACCOUNT_QUANTITY)'
      GroupingLevel = 1
    end
    object cdsDetail_SUM_REAL_QUANTITY: TAggregateField
      FieldName = '_SUM_REAL_QUANTITY'
      Active = True
      Expression = 'Sum(REAL_QUANTITY)'
      GroupingLevel = 1
    end
    object cdsDetail_SUM_REAL_TOTAL_PRICE: TAggregateField
      FieldName = '_SUM_REAL_TOTAL_PRICE'
      Active = True
      Expression = 'Sum(REAL_TOTAL_PRICE)'
      GroupingLevel = 1
    end
    object cdsDetail_SUM_REAL_TOTAL_INVESTMENT_VALUE: TAggregateField
      FieldName = '_SUM_REAL_TOTAL_INVESTMENT_VALUE'
      Active = True
      Expression = 'Sum(REAL_TOTAL_INVESTMENT_VALUE)'
      GroupingLevel = 1
    end
    object cdsDetail_PRODUCT_SPEC_STATE_1_COUNT: TAggregateField
      FieldName = '_PRODUCT_SPEC_STATE_1_COUNT'
      Active = True
      Expression = 'Sum(IS_PRODUCT_SPEC_STATE_1)'
      GroupingLevel = 1
    end
    object cdsDetail_PRODUCT_SPEC_STATE_2_COUNT: TAggregateField
      FieldName = '_PRODUCT_SPEC_STATE_2_COUNT'
      Active = True
      Expression = 'Sum(IS_PRODUCT_SPEC_STATE_2)'
      GroupingLevel = 1
    end
    object cdsDetail_PRODUCT_SPEC_STATE_3_COUNT: TAggregateField
      FieldName = '_PRODUCT_SPEC_STATE_3_COUNT'
      Active = True
      Expression = 'Sum(IS_PRODUCT_SPEC_STATE_3)'
      GroupingLevel = 1
    end
    object cdsDetail_PRODUCT_SPEC_STATE_4_COUNT: TAggregateField
      FieldName = '_PRODUCT_SPEC_STATE_4_COUNT'
      Active = True
      Expression = 'Sum(IS_PRODUCT_SPEC_STATE_4)'
      GroupingLevel = 1
    end
    object cdsDetail_PRODUCT_SPEC_STATE_5_COUNT: TAggregateField
      FieldName = '_PRODUCT_SPEC_STATE_5_COUNT'
      Active = True
      Expression = 'Sum(IS_PRODUCT_SPEC_STATE_5)'
      GroupingLevel = 1
    end
    object cdsDetail_PRODUCT_SPEC_STATE_6_COUNT: TAggregateField
      FieldName = '_PRODUCT_SPEC_STATE_6_COUNT'
      Active = True
      Expression = 'Sum(IS_PRODUCT_SPEC_STATE_6)'
      GroupingLevel = 1
    end
    object cdsDetail_COUNT: TAggregateField
      FieldName = '_COUNT'
      Active = True
      Expression = 'Count(PARTNER_CODE)'
      GroupingLevel = 1
    end
    object cdsDetail_MIN_EST_LEASE_DATE_UNIT_NAME: TAggregateField
      FieldName = '_MIN_EST_LEASE_DATE_UNIT_NAME'
      Active = True
      Expression = 'Min(EST_LEASE_DATE_UNIT_NAME)'
      GroupingLevel = 1
    end
    object cdsDetail_MAX_EST_LEASE_DATE_UNIT_NAME: TAggregateField
      FieldName = '_MAX_EST_LEASE_DATE_UNIT_NAME'
      Active = True
      Expression = 'Max(EST_LEASE_DATE_UNIT_NAME)'
      GroupingLevel = 1
    end
    object cdsDetail_COUNT_EST_LEASE_DATE_UNIT_NAME: TAggregateField
      FieldName = '_COUNT_EST_LEASE_DATE_UNIT_NAME'
      Active = True
      Expression = 'Count(EST_LEASE_DATE_UNIT_NAME)'
      GroupingLevel = 1
    end
    object cdsDetail_MIN_REAL_LEASE_DATE_UNIT_NAME: TAggregateField
      FieldName = '_MIN_REAL_LEASE_DATE_UNIT_NAME'
      Active = True
      Expression = 'Min(REAL_LEASE_DATE_UNIT_NAME)'
      GroupingLevel = 1
    end
    object cdsDetail_MAX_REAL_LEASE_DATE_UNIT_NAME: TAggregateField
      FieldName = '_MAX_REAL_LEASE_DATE_UNIT_NAME'
      Active = True
      Expression = 'Max(REAL_LEASE_DATE_UNIT_NAME)'
      GroupingLevel = 1
    end
    object cdsDetail_COUNT_REAL_LEASE_DATE_UNIT_NAME: TAggregateField
      FieldName = '_COUNT_REAL_LEASE_DATE_UNIT_NAME'
      Active = True
      Expression = 'Count(REAL_LEASE_DATE_UNIT_NAME)'
      GroupingLevel = 1
    end
    object cdsDetail_COUNT_EST_TOTAL_INVESTMENT_VALUE: TAggregateField
      FieldName = '_COUNT_EST_TOTAL_INVESTMENT_VALUE'
      Active = True
      Expression = 'Count(EST_TOTAL_INVESTMENT_VALUE)'
      GroupingLevel = 1
    end
    object cdsDetail_COUNT_REAL_TOTAL_INVESTMENT_VALUE: TAggregateField
      FieldName = '_COUNT_REAL_TOTAL_INVESTMENT_VALUE'
      Active = True
      Expression = 'Count(REAL_TOTAL_INVESTMENT_VALUE)'
      GroupingLevel = 1
    end
    object cdsDetail_COUNT_REAL_TOTAL_PRICE: TAggregateField
      FieldName = '_COUNT_REAL_TOTAL_PRICE'
      Active = True
      Expression = 'Count(REAL_TOTAL_PRICE)'
      GroupingLevel = 1
    end
    object cdsDetail_SUM_DETAIL_QUANTITY: TAggregateField
      FieldName = '_SUM_DETAIL_QUANTITY'
      Active = True
      Expression = 'Sum(DETAIL_QUANTITY)'
      GroupingLevel = 1
    end
    object cdsDetail_SUM_DETAIL_ACCOUNT_QUANTITY: TAggregateField
      FieldName = '_SUM_DETAIL_ACCOUNT_QUANTITY'
      Active = True
      Expression = 'Sum(DETAIL_ACCOUNT_QUANTITY)'
      GroupingLevel = 1
    end
    object cdsDetail_SUM_MATERIAL_QUANTITY: TAggregateField
      FieldName = '_SUM_MATERIAL_QUANTITY'
      Active = True
      Expression = 'Sum(MATERIAL_QUANTITY)'
      GroupingLevel = 1
    end
    object cdsDetail_SUM_MATERIAL_ACCOUNT_QUANTITY: TAggregateField
      FieldName = '_SUM_MATERIAL_ACCOUNT_QUANTITY'
      Active = True
      Expression = 'Sum(MATERIAL_ACCOUNT_QUANTITY)'
      GroupingLevel = 1
    end
    object cdsDetail_SUM_CAPACITY_BUSY_HOURS: TAggregateField
      FieldName = '_SUM_CAPACITY_BUSY_HOURS'
      Active = True
      Expression = 'Sum(CAPACITY_BUSY_HOURS)'
      GroupingLevel = 1
    end
  end
  inherited tmrMaster: TTimer
    Left = 472
  end
  object cdsObtainmentTypesForBorderRelTypeAndProdOrderBaseType: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conParRelProducts
    Params = <
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvObtainmentTypesForBorderRelTypeAndProdOrderBaseType'
    BeforeOpen = cdsObtainmentTypesForBorderRelTypeAndProdOrderBaseTypeBeforeOpen
    Top = 104
    object cdsObtainmentTypesForBorderRelTypeAndProdOrderBaseTypeOBTAINMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OBTAINMENT_TYPE_CODE'
    end
    object cdsObtainmentTypesForBorderRelTypeAndProdOrderBaseTypeOBTAINMENT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'OBTAINMENT_TYPE_NAME'
      Size = 100
    end
    object cdsObtainmentTypesForBorderRelTypeAndProdOrderBaseTypeBORDER_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_DEAL_TYPE_CODE'
    end
    object cdsObtainmentTypesForBorderRelTypeAndProdOrderBaseTypeBORDER_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BORDER_DEAL_TYPE_ABBREV'
      Size = 100
    end
  end
  object cdsInvestmentLevels: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conParRelProducts
    Params = <>
    ProviderName = 'prvInvestmentLevels'
    OnCalcFields = cdsInvestmentLevelsCalcFields
    Top = 136
    object cdsInvestmentLevelsINVESTMENT_LEVEL_CODE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_CODE'
    end
    object cdsInvestmentLevelsINVESTMENT_LEVEL_NAME: TAbmesWideStringField
      FieldName = 'INVESTMENT_LEVEL_NAME'
      Size = 100
    end
    object cdsInvestmentLevels_INVESTMENT_LEVEL_DESCRIPTION: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_INVESTMENT_LEVEL_DESCRIPTION'
      Size = 50
      Calculated = True
    end
  end
  object cdsParRelProductParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Top = 184
    object cdsParRelProductParamsPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
    end
    object cdsParRelProductParamsBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
    end
    object cdsParRelProductParamsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsParRelProductParamsOBTAINMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OBTAINMENT_TYPE_CODE'
    end
    object cdsParRelProductParamsPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_CODE'
    end
    object cdsParRelProductParamsPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
    end
  end
  object cdsSaleExpGroupsParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Top = 224
    object cdsSaleExpGroupsParamsSALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object cdsSaleExpGroupsParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      FieldName = 'CHOSEN_PRODUCTS'
      Size = 4000
    end
    object cdsSaleExpGroupsParamsMIN_SALE_SHIPMENT_STATE_CODE: TAbmesFloatField
      FieldName = 'MIN_SALE_SHIPMENT_STATE_CODE'
    end
    object cdsSaleExpGroupsParamsMAX_SALE_SHIPMENT_STATE_CODE: TAbmesFloatField
      FieldName = 'MAX_SALE_SHIPMENT_STATE_CODE'
    end
    object cdsSaleExpGroupsParamsBEGIN_SHIPMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_SHIPMENT_DATE'
    end
    object cdsSaleExpGroupsParamsEND_SHIPMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_SHIPMENT_DATE'
    end
    object cdsSaleExpGroupsParamsCOMMON_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'COMMON_PRODUCT_CODE'
    end
    object cdsSaleExpGroupsParamsCHOSEN_COMPANIES: TAbmesWideStringField
      FieldName = 'CHOSEN_COMPANIES'
      Size = 4000
    end
  end
  object cdsDeliveriesParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Top = 256
    object cdsDeliveriesParamsDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DEAL_TYPE_CODE'
    end
    object cdsDeliveriesParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      FieldName = 'CHOSEN_PRODUCTS'
      Size = 4000
    end
    object cdsDeliveriesParamsBEGIN_DELIVERY_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DELIVERY_DATE'
    end
    object cdsDeliveriesParamsEND_DELIVERY_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DELIVERY_DATE'
    end
    object cdsDeliveriesParamsMIN_STATUS_CODE: TAbmesFloatField
      FieldName = 'MIN_STATUS_CODE'
    end
    object cdsDeliveriesParamsMAX_STATUS_CODE: TAbmesFloatField
      FieldName = 'MAX_STATUS_CODE'
    end
    object cdsDeliveriesParamsCOMMON_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'COMMON_PRODUCT_CODE'
    end
    object cdsDeliveriesParamsCHOSEN_COMPANIES: TAbmesWideStringField
      FieldName = 'CHOSEN_COMPANIES'
      Size = 4000
    end
  end
  object pgdData: TPrintDBGridEh
    DBGridEh = grdData
    Options = []
    Page.BottomMargin = 1.000000000000000000
    Page.LeftMargin = 1.500000000000000000
    Page.RightMargin = 1.500000000000000000
    Page.TopMargin = 1.000000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'Microsoft Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'Microsoft Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 336
    Top = 176
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
      666C616E67313032367B5C666F6E7474626C7B5C66305C666E696C5C66636861
      7273657430205461686F6D613B7D7B5C66315C666E696C5C6663686172736574
      323034205461686F6D613B7D7D0D0A5C766965776B696E64345C7563315C7061
      72645C6C616E67313033335C66305C6673323420444154455F494E464F5C6C61
      6E67313032365C66315C667331365C7061720D0A7D0D0A00}
  end
  object pgdDetail: TPrintDBGridEh
    DBGridEh = grdDetail
    Options = []
    Page.BottomMargin = 1.000000000000000000
    Page.LeftMargin = 1.500000000000000000
    Page.RightMargin = 1.500000000000000000
    Page.TopMargin = 1.000000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'Microsoft Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'Microsoft Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 152
    Top = 344
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
      666C616E67313032367B5C666F6E7474626C7B5C66305C666E696C5C66636861
      7273657430205461686F6D613B7D7B5C66315C666E696C5C6663686172736574
      323034205461686F6D613B7D7D0D0A5C766965776B696E64345C7563315C7061
      72645C6C616E67313033335C66305C6673323420444154455F494E464F5C7061
      720D0A5355424A4543545F494E464F5C6C616E67313032365C66315C66733136
      5C7061720D0A7D0D0A00}
  end
end
