inherited fmSpecInvestedValuesGraph: TfmSpecInvestedValuesGraph
  ActiveControl = nil
  Caption = #1054#1073#1086#1073#1097#1077#1085' '#1048#1085#1078#1077#1085#1077#1088#1077#1085' '#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1086'-'#1057#1090#1086#1081#1085#1086#1089#1090#1077#1085' '#1040#1085#1072#1083#1080#1079
  ClientHeight = 668
  ClientWidth = 764
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 633
    Width = 764
    TabOrder = 3
    object lblIncompleteInvestedValue: TLabel [0]
      Left = 8
      Top = -2
      Width = 317
      Height = 13
      Caption = '* '#1042#1057' '#1089#1072' '#1085#1077#1087#1098#1083#1085#1080', '#1087#1086#1088#1072#1076#1080' '#1083#1080#1087#1089#1072' '#1085#1072' '#1076#1072#1085#1085#1080' '#1082#1098#1084' '#1079#1072#1076#1072#1076#1077#1085#1072#1090#1072' '#1076#1072#1090#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblUnauthorizedModels: TLabel [1]
      Left = 8
      Top = 14
      Width = 272
      Height = 13
      Caption = '* '#1053#1077' '#1074#1089#1080#1095#1082#1080' '#1074#1072#1088#1080#1072#1085#1090#1080' '#1085#1072' '#1055'-'#1052#1054#1044#1045#1083#1072' '#1089#1072' '#1072#1074#1090#1086#1088#1080#1079#1080#1088#1072#1085#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    inherited pnlOKCancel: TPanel
      Left = 496
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 407
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 675
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Left = 232
    Top = 272
    Width = 385
    Height = 217
    Align = alNone
    TabOrder = 2
    Visible = False
    inherited pnlGrid: TPanel
      Width = 369
      Height = 201
      inherited pnlNavigator: TPanel
        Width = 369
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 369
        Height = 177
      end
    end
  end
  object pnlTop: TPanel [2]
    Left = 0
    Top = 0
    Width = 764
    Height = 73
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 8
    TabOrder = 0
    inline frProduct: TfrProductExFieldEditFrame
      Left = 8
      Top = 8
      Width = 748
      Height = 65
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Align = alTop
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
        Width = 748
        inherited pnlTreeNode: TPanel
          Width = 1
          inherited pnlTreeNodeName: TPanel
            Width = 3
            inherited edtTreeNodeName: TDBEdit
              Width = 2
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = -181
          end
          inherited pnlRightButtons: TPanel
            Left = -58
          end
          inherited pnlProductLabels: TPanel
            Width = 1
          end
        end
        inherited pnlRight: TPanel
          Left = -24
        end
      end
    end
  end
  object pnlClient: TPanel [3]
    Left = 0
    Top = 73
    Width = 764
    Height = 560
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 8
    TabOrder = 1
    object pnlInnerClient: TPanel
      Left = 8
      Top = 8
      Width = 748
      Height = 544
      Align = alClient
      BorderWidth = 6
      TabOrder = 0
      object pnlGraphTop: TPanel
        Left = 7
        Top = 7
        Width = 734
        Height = 29
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          734
          29)
        object btnPrint: TSpeedButton
          Left = 0
          Top = 0
          Width = 24
          Height = 24
          Action = actPrint
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
          ParentShowHint = False
          ShowHint = True
        end
        object btnFilter2: TSpeedButton
          Left = 29
          Top = 0
          Width = 24
          Height = 24
          Action = actFilter
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
        object lblMeasureType: TLabel
          Left = 72
          Top = 4
          Width = 99
          Height = 13
          Caption = #1042#1080#1076' '#1084#1077#1088#1085#1072' '#1077#1076#1080#1085#1080#1094#1072
        end
        object lblMaxQuantity: TLabel
          Left = 432
          Top = 4
          Width = 54
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1052#1072#1082#1089'. '#1082'-'#1074#1086
        end
        object txtMeasureAbbrev2: TDBText
          Left = 547
          Top = 4
          Width = 30
          Height = 17
          Anchors = [akTop, akRight]
          DataField = '_MEASURE_ABBREV'
          DataSource = dsGridDataParams
        end
        object lblQuantityStep: TLabel
          Left = 600
          Top = 4
          Width = 37
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1057#1090#1098#1087#1082#1072
        end
        object txtMeasureAbbrev3: TDBText
          Left = 699
          Top = 4
          Width = 30
          Height = 17
          Anchors = [akTop, akRight]
          DataField = '_MEASURE_ABBREV'
          DataSource = dsGridDataParams
        end
        object edtMeasureType: TDBEdit
          Left = 176
          Top = 1
          Width = 81
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_SHOW_MEASURE_TYPE_NAME'
          DataSource = dsGridDataParams
          ReadOnly = True
          TabOrder = 0
        end
        object edtMeasureAbbrev: TDBEdit
          Left = 256
          Top = 1
          Width = 41
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = '_MEASURE_ABBREV'
          DataSource = dsGridDataParams
          ReadOnly = True
          TabOrder = 1
        end
        object edtMaxQuantity: TDBEdit
          Left = 488
          Top = 1
          Width = 57
          Height = 21
          TabStop = False
          Anchors = [akTop, akRight]
          Color = clBtnFace
          DataField = '_SHOW_MAX_QUANTITY'
          DataSource = dsGridDataParams
          ReadOnly = True
          TabOrder = 2
        end
        object edtQuantityStep: TDBEdit
          Left = 640
          Top = 0
          Width = 57
          Height = 21
          TabStop = False
          Anchors = [akTop, akRight]
          Color = clBtnFace
          DataField = '_SHOW_QUANTITY_STEP'
          DataSource = dsGridDataParams
          ReadOnly = True
          TabOrder = 3
        end
      end
      object pnlInvestedValues: TPanel
        Left = 7
        Top = 336
        Width = 734
        Height = 201
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object pnlInvestedValuesTop: TPanel
          Left = 0
          Top = 0
          Width = 734
          Height = 8
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
        end
        object gbInvestedValues: TGroupBox
          Left = 0
          Top = 8
          Width = 734
          Height = 193
          Align = alClient
          TabOrder = 1
          DesignSize = (
            734
            193)
          object pnlInvestedValuesDetail: TPanel
            Left = 87
            Top = 15
            Width = 528
            Height = 176
            Align = alLeft
            BevelOuter = bvNone
            BorderWidth = 8
            TabOrder = 1
            object pnlInvestmentLevel5: TPanel
              Left = 8
              Top = 8
              Width = 512
              Height = 22
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object lblInvestmentLevel5: TLabel
                Left = 8
                Top = 4
                Width = 40
                Height = 13
                AutoSize = False
                Caption = #1042#1057' 5'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Microsoft Sans Serif'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
              end
              object lblInvestmentLevel5Desc: TLabel
                Left = 56
                Top = 4
                Width = 67
                Height = 13
                Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
              end
              object pnlInvestmentLevel5Controls: TPanel
                Left = 384
                Top = 0
                Width = 128
                Height = 22
                Align = alRight
                BevelOuter = bvNone
                TabOrder = 0
                object txtInvestmentValueLeve5MeasureAbbrev: TDBText
                  Left = 82
                  Top = 4
                  Width = 28
                  Height = 13
                  DataField = '_MEASURE_ABBREV'
                  DataSource = dsGridDataParams
                end
                object lblBaseCurrency5: TDBText
                  Left = 51
                  Top = 4
                  Width = 25
                  Height = 13
                  DataField = '_CURRENCY_ABBREV'
                  DataSource = dsGridDataParams
                  Transparent = False
                end
                object lblSlash: TLabel
                  Left = 74
                  Top = 4
                  Width = 5
                  Height = 13
                  Caption = '/'
                  Transparent = True
                end
                object edtInvestmentLevel5Value: TDBEdit
                  Left = 0
                  Top = 1
                  Width = 49
                  Height = 21
                  TabStop = False
                  Color = clBtnFace
                  DataField = 'INVESTED_VALUE_5'
                  DataSource = dsInvestedValueDetails
                  ReadOnly = True
                  TabOrder = 0
                end
              end
            end
            object pnlInvestmentLevel4: TPanel
              Left = 8
              Top = 30
              Width = 512
              Height = 22
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 1
              object lblInvestmentLevel4: TLabel
                Left = 8
                Top = 4
                Width = 40
                Height = 13
                AutoSize = False
                Caption = #1042#1057' 4'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Microsoft Sans Serif'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
              end
              object lblInvestmentLevel4Desc: TLabel
                Left = 56
                Top = 4
                Width = 106
                Height = 13
                Caption = #1057#1087#1077#1094#1080#1092#1080#1095#1085#1080' '#1088#1072#1079#1093#1086#1076#1080
              end
              object pnlInvestmentLevel4Controls: TPanel
                Left = 335
                Top = 0
                Width = 177
                Height = 22
                Align = alRight
                BevelOuter = bvNone
                TabOrder = 0
                object txtInvestmentValueLeve4MeasureAbbrev: TDBText
                  Left = 82
                  Top = 4
                  Width = 28
                  Height = 13
                  DataField = '_MEASURE_ABBREV'
                  DataSource = dsGridDataParams
                end
                object lblBaseCurrency4: TDBText
                  Left = 51
                  Top = 4
                  Width = 25
                  Height = 13
                  DataField = '_CURRENCY_ABBREV'
                  DataSource = dsGridDataParams
                  Transparent = False
                end
                object lblSlash2: TLabel
                  Left = 74
                  Top = 4
                  Width = 5
                  Height = 13
                  Caption = '/'
                  Transparent = True
                end
                object edtInvestmentLevel4Value: TDBEdit
                  Left = 0
                  Top = 1
                  Width = 49
                  Height = 21
                  TabStop = False
                  Color = clBtnFace
                  DataField = 'INVESTED_VALUE_4'
                  DataSource = dsInvestedValueDetails
                  ReadOnly = True
                  TabOrder = 0
                end
              end
            end
            object pnlInvestmentLevel3: TPanel
              Left = 8
              Top = 52
              Width = 512
              Height = 22
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 2
              object lblInvestmentLevel3: TLabel
                Left = 8
                Top = 4
                Width = 40
                Height = 13
                AutoSize = False
                Caption = #1042#1057' 3'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Microsoft Sans Serif'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
              end
              object lblInvestmentLevel3Desc: TLabel
                Left = 56
                Top = 4
                Width = 103
                Height = 13
                Caption = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1080' '#1052#1077#1089#1090#1072
              end
              object pnlInvestmentLevel3Controls: TPanel
                Left = 286
                Top = 0
                Width = 226
                Height = 22
                Align = alRight
                BevelOuter = bvNone
                TabOrder = 0
                object txtInvestmentValueLeve3MeasureAbbrev: TDBText
                  Left = 82
                  Top = 4
                  Width = 28
                  Height = 13
                  DataField = '_MEASURE_ABBREV'
                  DataSource = dsGridDataParams
                end
                object lblBaseCurrency3: TDBText
                  Left = 51
                  Top = 4
                  Width = 25
                  Height = 13
                  DataField = '_CURRENCY_ABBREV'
                  DataSource = dsGridDataParams
                  Transparent = False
                end
                object lblSlash3: TLabel
                  Left = 74
                  Top = 4
                  Width = 5
                  Height = 13
                  Caption = '/'
                  Transparent = True
                end
                object edtInvestmentLevel3Value: TDBEdit
                  Left = 0
                  Top = 1
                  Width = 49
                  Height = 21
                  TabStop = False
                  Color = clBtnFace
                  DataField = 'INVESTED_VALUE_3'
                  DataSource = dsInvestedValueDetails
                  ReadOnly = True
                  TabOrder = 0
                end
              end
            end
            object pnlInvestmentLevel2: TPanel
              Left = 8
              Top = 74
              Width = 512
              Height = 22
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 3
              object lblInvestmentLevel2: TLabel
                Left = 8
                Top = 4
                Width = 40
                Height = 13
                AutoSize = False
                Caption = #1042#1057' 2'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Microsoft Sans Serif'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
              end
              object lblInvestmentLevel2Desc: TLabel
                Left = 56
                Top = 4
                Width = 24
                Height = 13
                Caption = #1058#1088#1091#1076
              end
              object pnlInvestmentLevel2Controls: TPanel
                Left = 237
                Top = 0
                Width = 275
                Height = 22
                Align = alRight
                BevelOuter = bvNone
                TabOrder = 0
                object txtInvestmentValueLeve2MeasureAbbrev: TDBText
                  Left = 82
                  Top = 4
                  Width = 28
                  Height = 13
                  DataField = '_MEASURE_ABBREV'
                  DataSource = dsGridDataParams
                end
                object lblBaseCurrency2: TDBText
                  Left = 51
                  Top = 4
                  Width = 25
                  Height = 13
                  DataField = '_CURRENCY_ABBREV'
                  DataSource = dsGridDataParams
                  Transparent = False
                end
                object lblSlash5: TLabel
                  Left = 74
                  Top = 4
                  Width = 5
                  Height = 13
                  Caption = '/'
                  Transparent = True
                end
                object edtInvestmentLevel2Value: TDBEdit
                  Left = 0
                  Top = 1
                  Width = 49
                  Height = 21
                  TabStop = False
                  Color = clBtnFace
                  DataField = 'INVESTED_VALUE_2'
                  DataSource = dsInvestedValueDetails
                  ReadOnly = True
                  TabOrder = 0
                end
              end
            end
            object pnlInvestmentLevel1: TPanel
              Left = 8
              Top = 96
              Width = 512
              Height = 28
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 4
              object lblInvestmentLevel1: TLabel
                Left = 8
                Top = 4
                Width = 40
                Height = 13
                AutoSize = False
                Caption = #1042#1057' 1'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Microsoft Sans Serif'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
              end
              object lblInvestmentLevel1Desc: TLabel
                Left = 56
                Top = 4
                Width = 59
                Height = 13
                Caption = #1057#1091#1073#1089#1090#1072#1085#1094#1080#1103
              end
              object pnlInvestmentLevel1Controls: TPanel
                Left = 188
                Top = 0
                Width = 324
                Height = 28
                Align = alRight
                BevelOuter = bvNone
                TabOrder = 0
                object txtInvestmentValueLeve1MeasureAbbrev: TDBText
                  Left = 82
                  Top = 4
                  Width = 28
                  Height = 13
                  DataField = '_MEASURE_ABBREV'
                  DataSource = dsGridDataParams
                end
                object lblBaseCurrency1: TDBText
                  Left = 51
                  Top = 4
                  Width = 25
                  Height = 13
                  DataField = '_CURRENCY_ABBREV'
                  DataSource = dsGridDataParams
                  Transparent = False
                end
                object lblSlash6: TLabel
                  Left = 74
                  Top = 4
                  Width = 5
                  Height = 13
                  Caption = '/'
                  Transparent = True
                end
                object edtInvestmentLevel1Value: TDBEdit
                  Left = 0
                  Top = 1
                  Width = 49
                  Height = 21
                  TabStop = False
                  Color = clBtnFace
                  DataField = 'INVESTED_VALUE_1'
                  DataSource = dsInvestedValueDetails
                  ReadOnly = True
                  TabOrder = 0
                end
              end
            end
            object pnlAggregatedInvestmentValues: TPanel
              Left = 8
              Top = 124
              Width = 512
              Height = 26
              Align = alTop
              BevelOuter = bvNone
              Color = 15574646
              ParentBackground = False
              TabOrder = 5
              object txtAggrInvestmentValueMeasureAbbrev: TDBText
                Left = 471
                Top = 5
                Width = 28
                Height = 13
                DataField = '_MEASURE_ABBREV'
                DataSource = dsGridDataParams
              end
              object lblAggregatedInvestmentValues: TLabel
                Left = 8
                Top = 5
                Width = 161
                Height = 13
                AutoSize = False
                Caption = #1040#1075#1088#1077#1075#1080#1088#1072#1085#1072' ('#1054#1058#1057')'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Microsoft Sans Serif'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
              end
              object lblBaseCurrency20: TDBText
                Left = 440
                Top = 5
                Width = 25
                Height = 13
                DataField = '_CURRENCY_ABBREV'
                DataSource = dsGridDataParams
                Transparent = False
              end
              object lblSlash7: TLabel
                Left = 463
                Top = 5
                Width = 5
                Height = 13
                Caption = '/'
                Transparent = True
              end
              object edtAggrInvestmentLevel2Value: TDBEdit
                Left = 238
                Top = 2
                Width = 49
                Height = 21
                TabStop = False
                Color = clBtnFace
                DataField = 'AGGR_INVESTED_VALUE_2'
                DataSource = dsInvestedValueDetails
                ReadOnly = True
                TabOrder = 0
              end
              object edtAggrInvestmentLevel3Value: TDBEdit
                Left = 287
                Top = 2
                Width = 49
                Height = 21
                TabStop = False
                Color = clBtnFace
                DataField = 'AGGR_INVESTED_VALUE_3'
                DataSource = dsInvestedValueDetails
                ReadOnly = True
                TabOrder = 1
              end
              object edtAggrInvestmentLevel4Value: TDBEdit
                Left = 336
                Top = 2
                Width = 49
                Height = 21
                TabStop = False
                Color = clBtnFace
                DataField = 'AGGR_INVESTED_VALUE_4'
                DataSource = dsInvestedValueDetails
                ReadOnly = True
                TabOrder = 2
              end
              object edtAggrInvestmentLevel5Value: TDBEdit
                Left = 385
                Top = 2
                Width = 49
                Height = 21
                TabStop = False
                Color = clBtnFace
                DataField = 'AGGR_INVESTED_VALUE_5'
                DataSource = dsInvestedValueDetails
                ReadOnly = True
                TabOrder = 3
              end
            end
            object pnlFullInvestmentValues: TPanel
              Left = 8
              Top = 150
              Width = 512
              Height = 26
              Align = alTop
              BevelOuter = bvNone
              Color = 7591296
              ParentBackground = False
              TabOrder = 6
              object txtFullInvestmentValueMeasureAbbrev: TDBText
                Left = 471
                Top = 5
                Width = 28
                Height = 13
                DataField = '_MEASURE_ABBREV'
                DataSource = dsGridDataParams
              end
              object lblFullInvestmentValues: TLabel
                Left = 8
                Top = 5
                Width = 180
                Height = 13
                AutoSize = False
                Caption = #1055#1098#1083#1085#1072' ('#1057#1091#1073#1089#1090#1072#1085#1094#1080#1103' + '#1054#1058#1057')'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Microsoft Sans Serif'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
              end
              object lblBaseCurrency30: TDBText
                Left = 440
                Top = 5
                Width = 25
                Height = 13
                DataField = '_CURRENCY_ABBREV'
                DataSource = dsGridDataParams
                Transparent = False
              end
              object lblSlash8: TLabel
                Left = 463
                Top = 5
                Width = 5
                Height = 13
                Caption = '/'
                Transparent = True
              end
              object edtFullInvestmentLevel1Value: TDBEdit
                Left = 189
                Top = 2
                Width = 49
                Height = 21
                TabStop = False
                Color = clBtnFace
                DataField = 'FULL_INVESTED_VALUE_1'
                DataSource = dsInvestedValueDetails
                ReadOnly = True
                TabOrder = 0
              end
              object edtFullInvestmentLevel2Value: TDBEdit
                Left = 238
                Top = 2
                Width = 49
                Height = 21
                TabStop = False
                Color = clBtnFace
                DataField = 'FULL_INVESTED_VALUE_2'
                DataSource = dsInvestedValueDetails
                ReadOnly = True
                TabOrder = 1
              end
              object edtFullInvestmentLevel3Value: TDBEdit
                Left = 287
                Top = 2
                Width = 49
                Height = 21
                TabStop = False
                Color = clBtnFace
                DataField = 'FULL_INVESTED_VALUE_3'
                DataSource = dsInvestedValueDetails
                ReadOnly = True
                TabOrder = 2
              end
              object edtFullInvestmentLevel4Value: TDBEdit
                Left = 336
                Top = 2
                Width = 49
                Height = 21
                TabStop = False
                Color = clBtnFace
                DataField = 'FULL_INVESTED_VALUE_4'
                DataSource = dsInvestedValueDetails
                ReadOnly = True
                TabOrder = 3
              end
              object edtFullInvestmentLevel5Value: TDBEdit
                Left = 385
                Top = 2
                Width = 49
                Height = 21
                TabStop = False
                Color = clBtnFace
                DataField = 'FULL_INVESTED_VALUE_5'
                DataSource = dsInvestedValueDetails
                ReadOnly = True
                TabOrder = 4
              end
            end
          end
          object pnlInvestedValuesLeftMargin: TPanel
            Left = 2
            Top = 15
            Width = 85
            Height = 176
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
          end
          object btnSpecInvestedValueLevelsGraph: TBitBtn
            Left = 616
            Top = 164
            Width = 114
            Height = 25
            Action = actSpecInvestedValueLevelsGraph
            Anchors = [akTop, akRight]
            Caption = #1042#1048#1052' '#1085#1072' '#1042#1057'...'
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
            Spacing = -1
            TabOrder = 3
          end
          object BitBtn1: TBitBtn
            Left = 616
            Top = 111
            Width = 114
            Height = 25
            Action = actSpecInvestedValues1Level
            Anchors = [akTop, akRight]
            Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1072' '#1085#1072' '#1042#1057'1...'
            Spacing = -1
            TabOrder = 0
          end
        end
        object pnlInvestmentValuesCaption: TPanel
          Left = 8
          Top = 3
          Width = 409
          Height = 23
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = ' '#1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1072' '#1059#1054#1073' '#1087#1088#1080' '#1055#1072#1088#1090#1080#1076#1072' '#1086#1090
          TabOrder = 2
          object txtMeasureAbbrev: TDBText
            Left = 379
            Top = 5
            Width = 65
            Height = 17
            DataField = '_MEASURE_ABBREV'
            DataSource = dsGridDataParams
          end
          object edtQuantity: TDBEdit
            Left = 312
            Top = 2
            Width = 65
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'QUANTITY'
            DataSource = dsInvestedValueDetails
            ReadOnly = True
            TabOrder = 0
          end
        end
      end
      object ChartInvestedValues: TDBChart
        Left = 7
        Top = 36
        Width = 734
        Height = 300
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Gradient.EndColor = 15513244
        Gradient.StartColor = 15592940
        Gradient.Visible = True
        MarginTop = 8
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Style = [fsBold]
        Title.Text.Strings = (
          '')
        Title.Visible = False
        BottomAxis.Automatic = False
        BottomAxis.AutomaticMaximum = False
        BottomAxis.AutomaticMinimum = False
        BottomAxis.Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMaximum = False
        LeftAxis.AutomaticMinimum = False
        LeftAxis.Title.Caption = #1057#1090#1086#1081#1085#1086#1089#1090
        Legend.Alignment = laBottom
        Legend.ColorWidth = 35
        Legend.Shadow.HorizSize = 2
        Legend.Shadow.VertSize = 2
        Legend.Symbol.Width = 35
        Legend.TopPos = 3
        View3D = False
        Zoom.Animated = True
        Align = alClient
        BevelOuter = bvLowered
        Color = 15658963
        TabOrder = 1
        OnMouseDown = ChartInvestedValuesMouseDown
        OnMouseUp = ChartInvestedValuesMouseUp
        ColorPaletteIndex = 13
        object SeriesInvestedLevel1: TLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = False
          DataSource = cdsGraph
          PercentFormat = '##0.##,%'
          Title = #1042#1057' 1'
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'QUANTITY'
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = 'SINGLE_INVESTED_VALUE_1'
        end
        object SeriesFullInvestedLevel5: TLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = False
          DataSource = cdsGraph
          SeriesColor = 10485760
          Title = #1042#1057' '#1055'5'
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'QUANTITY'
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = 'SINGLE_FULL_INVESTED_VALUE'
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 184
    Top = 224
  end
  inherited cdsGridData: TAbmesClientDataSet
    Left = 152
    Top = 224
    object cdsGridDataDUMMY: TAbmesFloatField
      FieldName = 'DUMMY'
    end
  end
  inherited alActions: TActionList
    Left = 264
    Top = 152
    inherited actForm: TAction
      Caption = #1054#1073#1086#1073#1097#1077#1085' '#1048#1085#1078#1077#1085#1077#1088#1077#1085' '#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1086'-'#1057#1090#1086#1081#1085#1086#1089#1090#1077#1085' '#1040#1085#1072#1083#1080#1079
    end
    inherited actPrint: TAction
      Caption = ''
    end
    inherited actFilter: TAction
      Visible = True
    end
    object actSpecInvestedValueLevelsGraph: TAction
      Caption = #1042#1048#1052' '#1085#1072' '#1042#1057'...'
      Hint = #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080
      ImageIndex = 30
      OnExecute = actSpecInvestedValueLevelsGraphExecute
    end
    object actSpecInvestedValues1Level: TAction
      Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1072' '#1085#1072' '#1042#1057'1...'
      OnExecute = actSpecInvestedValues1LevelExecute
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    AfterOpen = pdsGridDataParamsAfterOpen
    OnCalcFields = pdsGridDataParamsCalcFields
    Left = 152
    Top = 256
    object pdsGridDataParamsMAIN_DEPT_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1056#1077#1072#1083#1080#1079#1072#1090#1086#1088
      FieldName = 'MAIN_DEPT_CODE'
    end
    object pdsGridDataParamsCURRENCY_CODE: TAbmesFloatField
      DisplayLabel = #1042#1072#1083#1091#1090#1072
      FieldName = 'CURRENCY_CODE'
    end
    object pdsGridDataParamsTHE_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1098#1084' '#1044#1072#1090#1072
      FieldName = 'THE_DATE'
    end
    object pdsGridDataParamsMEASURE_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1080#1076' '#1084#1077#1088#1085#1072' '#1077#1076#1080#1085#1080#1094#1072
      FieldName = 'MEASURE_TYPE_CODE'
      OnChange = pdsGridDataParamsMEASURE_TYPE_CODEChange
    end
    object pdsGridDataParamsMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsMEASURE_COEF: TAbmesFloatField
      FieldName = 'MEASURE_COEF'
      ProviderFlags = []
    end
    object pdsGridDataParamsMAX_QUANTITY: TAbmesFloatField
      DisplayLabel = #1052#1072#1082#1089#1080#1084#1072#1083#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'MAX_QUANTITY'
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object pdsGridDataParamsQUANTITY_STEP: TAbmesFloatField
      DisplayLabel = #1057#1090#1098#1087#1082#1072
      FieldName = 'QUANTITY_STEP'
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object pdsGridDataParamsROOT_LINE_STAGE_INCLUDE_LEVEL: TAbmesFloatField
      FieldName = 'ROOT_LINE_STAGE_INCLUDE_LEVEL'
    end
    object pdsGridDataParamsNON_ROOT_LINE_STAGE_INCLUDE_LEVEL: TAbmesFloatField
      DisplayLabel = #1045#1090#1072#1087#1080' '#1085#1072' '#1085#1077#1085#1091#1083#1077#1074' '#1088#1077#1076
      FieldName = 'NON_ROOT_LINE_STAGE_INCLUDE_LEVEL'
    end
    object pdsGridDataParams_MAIN_DEPT_IDENTIFIER: TAbmesWideStringField
      DisplayLabel = #1058#1055' '#1056#1077#1072#1083#1080#1079#1072#1090#1086#1088
      FieldKind = fkLookup
      FieldName = '_MAIN_DEPT_IDENTIFIER'
      LookupKeyFields = 'MAIN_DEPT_CODE'
      LookupResultField = 'MAIN_DEPT_IDENTIFIER'
      KeyFields = 'MAIN_DEPT_CODE'
      Size = 50
      Lookup = True
    end
    object pdsGridDataParams_CURRENCY_ABBREV: TAbmesWideStringField
      DisplayLabel = #1042#1072#1083#1091#1090#1072
      FieldKind = fkLookup
      FieldName = '_CURRENCY_ABBREV'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = 'CURRENCY_CODE'
      Size = 5
      Lookup = True
    end
    object pdsGridDataParams_MEASURE_TYPE_NAME: TAbmesWideStringField
      DisplayLabel = #1042#1080#1076' '#1084#1077#1088#1085#1072' '#1077#1076#1080#1085#1080#1094#1072
      FieldKind = fkLookup
      FieldName = '_MEASURE_TYPE_NAME'
      LookupDataSet = cdsMeasureTypes
      LookupKeyFields = 'MEASURE_TYPE_CODE'
      LookupResultField = 'MEASURE_TYPE_NAME'
      KeyFields = 'MEASURE_TYPE_CODE'
      Lookup = True
    end
    object pdsGridDataParams_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_MEASURE_ABBREV'
      LookupDataSet = cdsMeasures
      LookupKeyFields = 'MEASURE_CODE'
      LookupResultField = 'MEASURE_ABBREV'
      KeyFields = 'MEASURE_CODE'
      Size = 5
      Lookup = True
    end
    object pdsGridDataParams_MEASURE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_MEASURE_NAME'
      LookupDataSet = cdsMeasures
      LookupKeyFields = 'MEASURE_CODE'
      LookupResultField = 'MEASURE_NAME'
      KeyFields = 'MEASURE_CODE'
      Lookup = True
    end
    object pdsGridDataParams_SHOW_MEASURE_TYPE_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_MEASURE_TYPE_NAME'
      Calculated = True
    end
    object pdsGridDataParams_SHOW_MAX_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SHOW_MAX_QUANTITY'
      DisplayFormat = ',0.###'
      Calculated = True
    end
    object pdsGridDataParams_SHOW_QUANTITY_STEP: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SHOW_QUANTITY_STEP'
      DisplayFormat = ',0.###'
      Calculated = True
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 184
    Top = 256
  end
  inherited dsData: TDataSource
    Left = 184
    Top = 192
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 152
    Top = 192
  end
  object cdsCurrencies: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCurrencies'
    Left = 216
    Top = 224
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
  object cdsMeasures: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvMeasures'
    Left = 248
    Top = 224
    object cdsMeasuresMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
      Required = True
    end
    object cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Required = True
      Size = 5
    end
    object cdsMeasuresMEASURE_NAME: TAbmesWideStringField
      FieldName = 'MEASURE_NAME'
      Required = True
      Size = 50
    end
  end
  object cdsMeasureTypes: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 280
    Top = 224
    object cdsMeasureTypesMEASURE_TYPE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_TYPE_CODE'
    end
    object cdsMeasureTypesMEASURE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'MEASURE_TYPE_NAME'
    end
  end
  object cdsGraph: TAbmesClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    Left = 384
    Top = 224
    object cdsGraphQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object cdsGraphSINGLE_INVESTED_VALUE_1: TAbmesFloatField
      FieldName = 'SINGLE_INVESTED_VALUE_1'
    end
    object cdsGraphSINGLE_FULL_INVESTED_VALUE: TAbmesFloatField
      FieldName = 'SINGLE_FULL_INVESTED_VALUE'
    end
    object cdsGraph_MAX_SINGLE_INVESTED_VALUE_1: TAggregateField
      FieldName = '_MAX_SINGLE_INVESTED_VALUE_1'
      Active = True
      Expression = 'Max(SINGLE_INVESTED_VALUE_1)'
    end
    object cdsGraph_MAX_SINGLE_FULL_INVESTED_VALUE: TAggregateField
      FieldName = '_MAX_SINGLE_FULL_INVESTED_VALUE'
      Active = True
      Expression = 'Max(SINGLE_FULL_INVESTED_VALUE)'
    end
  end
  object cdsInvestedValueDetails: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 384
    Top = 256
    object cdsInvestedValueDetailsQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
      DisplayFormat = ',0.###'
    end
    object cdsInvestedValueDetailsINVESTED_VALUE_1: TAbmesFloatField
      FieldName = 'INVESTED_VALUE_1'
      DisplayFormat = ',0.00'
    end
    object cdsInvestedValueDetailsINVESTED_VALUE_2: TAbmesFloatField
      FieldName = 'INVESTED_VALUE_2'
      DisplayFormat = ',0.00'
    end
    object cdsInvestedValueDetailsINVESTED_VALUE_3: TAbmesFloatField
      FieldName = 'INVESTED_VALUE_3'
      DisplayFormat = ',0.00'
    end
    object cdsInvestedValueDetailsINVESTED_VALUE_4: TAbmesFloatField
      FieldName = 'INVESTED_VALUE_4'
      DisplayFormat = ',0.00'
    end
    object cdsInvestedValueDetailsINVESTED_VALUE_5: TAbmesFloatField
      FieldName = 'INVESTED_VALUE_5'
      DisplayFormat = ',0.00'
    end
    object cdsInvestedValueDetailsFULL_INVESTED_VALUE_1: TAbmesFloatField
      FieldName = 'FULL_INVESTED_VALUE_1'
      DisplayFormat = ',0.00'
    end
    object cdsInvestedValueDetailsFULL_INVESTED_VALUE_2: TAbmesFloatField
      FieldName = 'FULL_INVESTED_VALUE_2'
      DisplayFormat = ',0.00'
    end
    object cdsInvestedValueDetailsFULL_INVESTED_VALUE_3: TAbmesFloatField
      FieldName = 'FULL_INVESTED_VALUE_3'
      DisplayFormat = ',0.00'
    end
    object cdsInvestedValueDetailsFULL_INVESTED_VALUE_4: TAbmesFloatField
      FieldName = 'FULL_INVESTED_VALUE_4'
      DisplayFormat = ',0.00'
    end
    object cdsInvestedValueDetailsFULL_INVESTED_VALUE_5: TAbmesFloatField
      FieldName = 'FULL_INVESTED_VALUE_5'
      DisplayFormat = ',0.00'
    end
    object cdsInvestedValueDetailsAGGR_INVESTED_VALUE_2: TAbmesFloatField
      FieldName = 'AGGR_INVESTED_VALUE_2'
      DisplayFormat = ',0.00'
    end
    object cdsInvestedValueDetailsAGGR_INVESTED_VALUE_3: TAbmesFloatField
      FieldName = 'AGGR_INVESTED_VALUE_3'
      DisplayFormat = ',0.00'
    end
    object cdsInvestedValueDetailsAGGR_INVESTED_VALUE_4: TAbmesFloatField
      FieldName = 'AGGR_INVESTED_VALUE_4'
      DisplayFormat = ',0.00'
    end
    object cdsInvestedValueDetailsAGGR_INVESTED_VALUE_5: TAbmesFloatField
      FieldName = 'AGGR_INVESTED_VALUE_5'
      DisplayFormat = ',0.00'
    end
  end
  object dsInvestedValueDetails: TDataSource
    DataSet = cdsInvestedValueDetails
    Left = 416
    Top = 256
  end
  object cdsSpecInvestedValueLevelsGraphParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 624
    Top = 376
    object cdsSpecInvestedValueLevelsGraphParamsSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object cdsSpecInvestedValueLevelsGraphParamsMAIN_DEPT_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1056#1077#1072#1083#1080#1079#1072#1090#1086#1088
      FieldName = 'MAIN_DEPT_CODE'
    end
    object cdsSpecInvestedValueLevelsGraphParamsMEASURE_TYPE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_TYPE_CODE'
    end
    object cdsSpecInvestedValueLevelsGraphParamsTECH_QUANTITY: TAbmesFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'TECH_QUANTITY'
      ProviderFlags = []
    end
    object cdsSpecInvestedValueLevelsGraphParamsCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object cdsSpecInvestedValueLevelsGraphParamsROOT_LINE_STAGE_INCLUDE_LEVEL: TAbmesFloatField
      FieldName = 'ROOT_LINE_STAGE_INCLUDE_LEVEL'
    end
    object cdsSpecInvestedValueLevelsGraphParamsNON_ROOT_LINE_STAGE_INCLUDE_LEVEL: TAbmesFloatField
      FieldName = 'NON_ROOT_LINE_STAGE_INCLUDE_LEVEL'
    end
    object cdsSpecInvestedValueLevelsGraphParamsBEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072
      FieldName = 'BEGIN_DATE'
    end
    object cdsSpecInvestedValueLevelsGraphParamsDATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'DATE_UNIT_CODE'
    end
    object cdsSpecInvestedValueLevelsGraphParamsDATE_UNIT_COUNT: TAbmesFloatField
      FieldName = 'DATE_UNIT_COUNT'
      ProviderFlags = []
    end
  end
  object cdsSpecInvestedValuesLevel1Params: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 656
    Top = 376
    object cdsSpecInvestedValuesLevel1ParamsSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object cdsSpecInvestedValuesLevel1ParamsTHE_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_DATE'
    end
    object cdsSpecInvestedValuesLevel1ParamsRESULT_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'RESULT_PRODUCT_TECH_QUANTITY'
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
  end
end
