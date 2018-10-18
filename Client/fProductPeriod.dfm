inherited fmProductPeriod: TfmProductPeriod
  ActiveControl = frDateInterval.edtInterval
  Caption = '%ProductPeriodAbbrev% '#1074#1098#1074' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' - %s'
  ClientHeight = 670
  ClientWidth = 961
  DesignSize = (
    961
    670)
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 635
    Width = 961
    TabOrder = 11
    inherited pnlOKCancel: TPanel
      Left = 693
    end
    inherited pnlClose: TPanel
      Left = 604
    end
    inherited pnlApply: TPanel
      Left = 872
      Visible = False
    end
  end
  object gbDateInterval: TGroupBox [1]
    Left = 8
    Top = 80
    Width = 233
    Height = 55
    Caption = ' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '
    TabOrder = 1
    DesignSize = (
      233
      55)
    inline frDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 24
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 0
      TabStop = True
    end
    object tlbDocs: TToolBar
      Left = 185
      Top = 24
      Width = 36
      Height = 22
      Align = alNone
      Anchors = [akTop, akRight]
      AutoSize = True
      ButtonWidth = 36
      EdgeInner = esNone
      Images = dmMain.ilDocs
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      object btnDocs: TToolButton
        Left = 0
        Top = 0
        ImageIndex = 1
        OnClick = btnDocsClick
      end
    end
  end
  object gbPresisionLevel: TGroupBox [2]
    Left = 8
    Top = 139
    Width = 113
    Height = 55
    Caption = ' '#1053#1080#1074#1086' '#1085#1072' '#1090#1086#1095#1085#1086#1089#1090' '
    TabOrder = 2
    DesignSize = (
      113
      55)
    object pnlTogglePrecisionLevel: TPanel
      Left = 8
      Top = 24
      Width = 93
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 0
      object pnlOverriddenPrecisionLevel: TPanel
        Left = 11
        Top = 0
        Width = 82
        Height = 21
        Align = alLeft
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          82
          21)
        object cbPrecisionLevel: TJvDBLookupCombo
          Left = 0
          Top = 0
          Width = 82
          Height = 21
          DeleteKeyClear = False
          DataField = '_PRECISION_LEVEL_NO'
          DataSource = dsData
          DisplayEmpty = ' '
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
        end
      end
      object pnlInheritedPrecisionLevel: TPanel
        Left = 93
        Top = 0
        Width = 82
        Height = 21
        Align = alLeft
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          82
          21)
        object edtInheritedPrecisionLevel: TDBEdit
          Left = 0
          Top = 0
          Width = 82
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = '_INHRT_PRECISION_LEVEL_NO'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnlTogglePrecisionLevelButton: TPanel
        Left = 0
        Top = 0
        Width = 11
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object btnTogglePrecisionLevel: TSpeedButton
          Left = 0
          Top = 0
          Width = 11
          Height = 21
          Action = actTogglePrecisionLevel
          Align = alLeft
          AllowAllUp = True
          GroupIndex = 11
          Flat = True
        end
      end
    end
  end
  object gbBalanceQuantity: TGroupBox [3]
    Left = 128
    Top = 139
    Width = 113
    Height = 55
    Caption = ' '#1041#1072#1083#1072#1085#1089#1080#1088#1072#1097#1086' '#1082'-'#1074#1086' '
    TabOrder = 3
    DesignSize = (
      113
      55)
    object txtMeasureAbbrev1: TDBText
      Left = 77
      Top = 27
      Width = 31
      Height = 17
      Anchors = [akTop, akRight]
      DataField = 'MEASURE_ABBREV'
      DataSource = dsHeader
    end
    object pnlToggleBalanceQuantity: TPanel
      Left = 8
      Top = 24
      Width = 65
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 0
      object pnlOverriddenBalanceQuantity: TPanel
        Left = 11
        Top = 0
        Width = 54
        Height = 21
        Align = alLeft
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          54
          21)
        object edtBalanceQuantity: TDBEdit
          Left = 0
          Top = 0
          Width = 54
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'BALANCE_QUANTITY'
          DataSource = dsData
          TabOrder = 0
        end
      end
      object pnlInheritedBalanceQuantity: TPanel
        Left = 65
        Top = 0
        Width = 54
        Height = 21
        Align = alLeft
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          54
          21)
        object edtInheritedBalanceQuantity: TDBEdit
          Left = 0
          Top = 0
          Width = 54
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = 'INHRT_BALANCE_QUANTITY'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnlToggleBalanceQuantityButton: TPanel
        Left = 0
        Top = 0
        Width = 11
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object btnToggleBalanceQuantity: TSpeedButton
          Left = 0
          Top = 0
          Width = 11
          Height = 21
          Action = actToggleBalanceQuantity
          Align = alLeft
          AllowAllUp = True
          GroupIndex = 12
          Flat = True
        end
      end
    end
  end
  object gbInvestmentValues: TGroupBox [4]
    Left = 248
    Top = 80
    Width = 705
    Height = 241
    Anchors = [akTop, akRight]
    Caption = ' '#1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1072' %ProductClassAbbrev% '
    TabOrder = 7
    object pnlToggleInvestmentValueDiffs: TPanel
      Left = 2
      Top = 15
      Width = 701
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object tlbToggleInvestmentValueDiffs: TToolBar
        Left = 230
        Top = 0
        Width = 463
        Height = 26
        Align = alRight
        AutoSize = True
        ButtonHeight = 23
        TabOrder = 0
        object btnToggleCommonInvestmentValuesDiff: TSpeedButton
          Left = 0
          Top = 0
          Width = 149
          Height = 23
          Action = actToggleCommonInvestmentValuesDiff
          AllowAllUp = True
          GroupIndex = 1
          Down = True
          Flat = True
          Transparent = False
        end
        object sepToggleSaleInvestmentValuesPart: TToolButton
          Left = 149
          Top = 0
          Width = 8
          Caption = 'sepToggleSaleInvestmentValuesPart'
          Style = tbsSeparator
        end
        object btnToggleSaleInvestmentValuesPart: TSpeedButton
          Left = 157
          Top = 0
          Width = 149
          Height = 23
          Action = actToggleSaleInvestmentValuesPart
          AllowAllUp = True
          GroupIndex = 1
          Flat = True
          Transparent = False
        end
        object sepToggleDeliveryInvestmentValuesPart: TToolButton
          Left = 306
          Top = 0
          Width = 8
          Caption = 'sepToggleDeliveryInvestmentValuesPart'
          ImageIndex = 0
          Style = tbsSeparator
        end
        object btnToggleDeliveryInvestmentValuesPart: TSpeedButton
          Left = 314
          Top = 0
          Width = 149
          Height = 23
          Action = actToggleDeliveryInvestmentValuesPart
          AllowAllUp = True
          GroupIndex = 1
          Flat = True
          Transparent = False
        end
      end
      object pnlToggleWorkOrAccountInvestmentValuesMargin: TPanel
        Left = 0
        Top = 0
        Width = 6
        Height = 26
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
      end
      object pnlToggleInvestmentValueDiffsRight: TPanel
        Left = 693
        Top = 0
        Width = 8
        Height = 26
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 2
      end
      object btnInvestedValuesGraph: TBitBtn
        Left = 7
        Top = 0
        Width = 107
        Height = 23
        Action = actInvestedValuesGraph
        Caption = #1054#1073'. '#1048#1085#1078#1054#1088#1057#1040#1085'...'
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
      object btnSpecInvestedValueLevelsGraph: TBitBtn
        Left = 119
        Top = 0
        Width = 93
        Height = 23
        Action = actSpecInvestedValueLevelsGraph
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
        TabOrder = 4
      end
    end
    object pnlInvestmentLevel6: TPanel
      Left = 2
      Top = 41
      Width = 701
      Height = 22
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 6
      object lblInvestmentLevel6: TLabel
        Left = 8
        Top = 4
        Width = 40
        Height = 13
        AutoSize = False
        Caption = #1042#1057' 6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object lblInvestmentLevel6Desc: TLabel
        Left = 56
        Top = 4
        Width = 115
        Height = 13
        Caption = #1050#1086#1088#1077#1082#1090#1080#1074' ('#1084#1080#1085#1080#1084#1072#1083#1077#1085')'
      end
      object pnlInvestmentLevel6Controls: TPanel
        Left = 528
        Top = 0
        Width = 173
        Height = 22
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object lblBaseCurrency6: TLabel
          Left = 51
          Top = 4
          Width = 21
          Height = 13
          Caption = '%s /'
        end
        object txtMeasureAbbrev16: TDBText
          Left = 82
          Top = 4
          Width = 28
          Height = 13
          DataField = 'MEASURE_ABBREV'
          DataSource = dsHeader
        end
        object lblInvestmentLevel6DiffMeasure: TLabel
          Left = 150
          Top = 4
          Width = 8
          Height = 13
          Caption = '%'
        end
        object edtInvestmentLevel6Diff: TDBEdit
          Left = 115
          Top = 1
          Width = 32
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataSource = dsData
          ReadOnly = True
          TabOrder = 1
        end
        object pnlToggleInvestmentLevel6Value: TPanel
          Left = 0
          Top = 1
          Width = 49
          Height = 21
          BevelOuter = bvNone
          TabOrder = 0
          object pnlOverriddenInvestmentLevel6Value: TPanel
            Left = 11
            Top = 0
            Width = 38
            Height = 21
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            DesignSize = (
              38
              21)
            object edtInvestmentLevel6Value: TDBEdit
              Left = 0
              Top = 0
              Width = 38
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              DataField = 'INVESTMENT_LEVEL_6_VALUE'
              DataSource = dsData
              TabOrder = 0
            end
          end
          object pnlInheritedInvestmentLevel6Value: TPanel
            Left = 49
            Top = 0
            Width = 38
            Height = 21
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            DesignSize = (
              38
              21)
            object edtInheritedInvestmentLevel6Value: TDBEdit
              Left = 0
              Top = 0
              Width = 38
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              Color = clBtnFace
              DataField = 'INHRT_INVESTMENT_LEVEL_6_VALUE'
              DataSource = dsData
              ReadOnly = True
              TabOrder = 0
            end
          end
          object pnlToggleInvestmentLevel6ValueButton: TPanel
            Left = 0
            Top = 0
            Width = 11
            Height = 21
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object btnToggleInvestmentLevel6Value: TSpeedButton
              Left = 0
              Top = 0
              Width = 11
              Height = 21
              Action = actToggleInvestmentLevel6Value
              Align = alLeft
              AllowAllUp = True
              GroupIndex = 46
              Flat = True
            end
          end
        end
      end
    end
    object pnlInvestmentLevel1: TPanel
      Left = 2
      Top = 151
      Width = 701
      Height = 28
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
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
        Left = 283
        Top = 0
        Width = 418
        Height = 28
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object lblBaseCurrency1: TLabel
          Left = 51
          Top = 4
          Width = 21
          Height = 13
          Caption = '%s /'
        end
        object txtMeasureAbbrev11: TDBText
          Left = 82
          Top = 4
          Width = 28
          Height = 13
          DataField = 'MEASURE_ABBREV'
          DataSource = dsHeader
        end
        object lblInvestmentLevel1DiffMeasure: TLabel
          Left = 150
          Top = 4
          Width = 8
          Height = 13
          Caption = '%'
        end
        object edtInvestmentLevel1Diff: TDBEdit
          Left = 115
          Top = 1
          Width = 32
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataSource = dsData
          ReadOnly = True
          TabOrder = 1
        end
        object pnlToggleInvestmentLevel1Value: TPanel
          Left = 0
          Top = 0
          Width = 49
          Height = 21
          BevelOuter = bvNone
          TabOrder = 0
          object pnlOverriddenInvestmentLevel1Value: TPanel
            Left = 11
            Top = 0
            Width = 38
            Height = 21
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            DesignSize = (
              38
              21)
            object edtInvestmentLevel1Value: TDBEdit
              Left = 0
              Top = 0
              Width = 38
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              DataField = 'INVESTMENT_LEVEL_1_VALUE'
              DataSource = dsData
              TabOrder = 0
            end
          end
          object pnlInheritedInvestmentLevel1Value: TPanel
            Left = 49
            Top = 0
            Width = 38
            Height = 21
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            DesignSize = (
              38
              21)
            object edtInheritedInvestmentLevel1Value: TDBEdit
              Left = 0
              Top = 0
              Width = 38
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              Color = clBtnFace
              DataField = 'INHRT_INVESTMENT_LEVEL_1_VALUE'
              DataSource = dsData
              ReadOnly = True
              TabOrder = 0
            end
          end
          object pnlToggleInvestmentLevel1ValueButton: TPanel
            Left = 0
            Top = 0
            Width = 11
            Height = 21
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object btnToggleInvestmentLevel1Value: TSpeedButton
              Left = 0
              Top = 0
              Width = 11
              Height = 21
              Action = actToggleInvestmentLevel1Value
              Align = alLeft
              AllowAllUp = True
              GroupIndex = 41
              Flat = True
            end
          end
        end
      end
    end
    object pnlInvestmentLevel2: TPanel
      Left = 2
      Top = 129
      Width = 701
      Height = 22
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
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
        Left = 332
        Top = 0
        Width = 369
        Height = 22
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object lblBaseCurrency2: TLabel
          Left = 51
          Top = 4
          Width = 21
          Height = 13
          Caption = '%s /'
        end
        object txtMeasureAbbrev12: TDBText
          Left = 82
          Top = 4
          Width = 28
          Height = 13
          DataField = 'MEASURE_ABBREV'
          DataSource = dsHeader
        end
        object lblInvestmentLevel2DiffMeasure: TLabel
          Left = 150
          Top = 4
          Width = 8
          Height = 13
          Caption = '%'
        end
        object edtInvestmentLevel2Diff: TDBEdit
          Left = 115
          Top = 1
          Width = 32
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataSource = dsData
          ReadOnly = True
          TabOrder = 1
        end
        object pnlToggleInvestmentLevel2Value: TPanel
          Left = 0
          Top = 0
          Width = 49
          Height = 21
          BevelOuter = bvNone
          TabOrder = 0
          object pnlOverriddenInvestmentLevel2Value: TPanel
            Left = 11
            Top = 0
            Width = 38
            Height = 21
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            DesignSize = (
              38
              21)
            object edtInvestmentLevel2Value: TDBEdit
              Left = 0
              Top = 0
              Width = 38
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              DataField = 'INVESTMENT_LEVEL_2_VALUE'
              DataSource = dsData
              TabOrder = 0
            end
          end
          object pnlInheritedInvestmentLevel2Value: TPanel
            Left = 49
            Top = 0
            Width = 38
            Height = 21
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            DesignSize = (
              38
              21)
            object edtInheritedInvestmentLevel2Value: TDBEdit
              Left = 0
              Top = 0
              Width = 38
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              Color = clBtnFace
              DataField = 'INHRT_INVESTMENT_LEVEL_2_VALUE'
              DataSource = dsData
              ReadOnly = True
              TabOrder = 0
            end
          end
          object pnlToggleInvestmentLevel2ValueButton: TPanel
            Left = 0
            Top = 0
            Width = 11
            Height = 21
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object btnToggleInvestmentLevel2Value: TSpeedButton
              Left = 0
              Top = 0
              Width = 11
              Height = 21
              Action = actToggleInvestmentLevel2Value
              Align = alLeft
              AllowAllUp = True
              GroupIndex = 42
              Flat = True
            end
          end
        end
      end
    end
    object pnlInvestmentLevel3: TPanel
      Left = 2
      Top = 107
      Width = 701
      Height = 22
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
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
        Left = 381
        Top = 0
        Width = 320
        Height = 22
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object lblBaseCurrency3: TLabel
          Left = 51
          Top = 4
          Width = 21
          Height = 13
          Caption = '%s /'
        end
        object txtMeasureAbbrev13: TDBText
          Left = 82
          Top = 4
          Width = 28
          Height = 13
          DataField = 'MEASURE_ABBREV'
          DataSource = dsHeader
        end
        object lblInvestmentLevel3DiffMeasure: TLabel
          Left = 150
          Top = 4
          Width = 8
          Height = 13
          Caption = '%'
        end
        object edtInvestmentLevel3Diff: TDBEdit
          Left = 115
          Top = 1
          Width = 32
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataSource = dsData
          ReadOnly = True
          TabOrder = 1
        end
        object pnlToggleInvestmentLevel3Value: TPanel
          Left = 0
          Top = 0
          Width = 49
          Height = 21
          BevelOuter = bvNone
          TabOrder = 0
          object pnlOverriddenInvestmentLevel3Value: TPanel
            Left = 11
            Top = 0
            Width = 38
            Height = 21
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            DesignSize = (
              38
              21)
            object edtInvestmentLevel3Value: TDBEdit
              Left = 0
              Top = 0
              Width = 38
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              DataField = 'INVESTMENT_LEVEL_3_VALUE'
              DataSource = dsData
              TabOrder = 0
            end
          end
          object pnlInheritedInvestmentLevel3Value: TPanel
            Left = 49
            Top = 0
            Width = 38
            Height = 21
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            DesignSize = (
              38
              21)
            object edtInheritedInvestmentLevel3Value: TDBEdit
              Left = 0
              Top = 0
              Width = 38
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              Color = clBtnFace
              DataField = 'INHRT_INVESTMENT_LEVEL_3_VALUE'
              DataSource = dsData
              ReadOnly = True
              TabOrder = 0
            end
          end
          object pnlToggleInvestmentLevel3ValueButton: TPanel
            Left = 0
            Top = 0
            Width = 11
            Height = 21
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object btnToggleInvestmentLevel3Value: TSpeedButton
              Left = 0
              Top = 0
              Width = 11
              Height = 21
              Action = actToggleInvestmentLevel3Value
              Align = alLeft
              AllowAllUp = True
              GroupIndex = 43
              Flat = True
            end
          end
        end
      end
    end
    object pnlInvestmentLevel4: TPanel
      Left = 2
      Top = 85
      Width = 701
      Height = 22
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
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
        Left = 430
        Top = 0
        Width = 271
        Height = 22
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object lblBaseCurrency4: TLabel
          Left = 51
          Top = 4
          Width = 21
          Height = 13
          Caption = '%s /'
        end
        object txtMeasureAbbrev14: TDBText
          Left = 82
          Top = 4
          Width = 28
          Height = 13
          DataField = 'MEASURE_ABBREV'
          DataSource = dsHeader
        end
        object lblInvestmentLevel4DiffMeasure: TLabel
          Left = 150
          Top = 4
          Width = 8
          Height = 13
          Caption = '%'
        end
        object edtInvestmentLevel4Diff: TDBEdit
          Left = 115
          Top = 1
          Width = 32
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataSource = dsData
          ReadOnly = True
          TabOrder = 1
        end
        object pnlToggleInvestmentLevel4Value: TPanel
          Left = 0
          Top = 0
          Width = 49
          Height = 21
          BevelOuter = bvNone
          TabOrder = 0
          object pnlOverriddenInvestmentLevel4Value: TPanel
            Left = 11
            Top = 0
            Width = 38
            Height = 21
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            DesignSize = (
              38
              21)
            object edtInvestmentLevel4Value: TDBEdit
              Left = 0
              Top = 0
              Width = 38
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              DataField = 'INVESTMENT_LEVEL_4_VALUE'
              DataSource = dsData
              TabOrder = 0
            end
          end
          object pnlInheritedInvestmentLevel4Value: TPanel
            Left = 49
            Top = 0
            Width = 38
            Height = 21
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            DesignSize = (
              38
              21)
            object edtInheritedInvestmentLevel4Value: TDBEdit
              Left = 0
              Top = 0
              Width = 38
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              Color = clBtnFace
              DataField = 'INHRT_INVESTMENT_LEVEL_4_VALUE'
              DataSource = dsData
              ReadOnly = True
              TabOrder = 0
            end
          end
          object pnlToggleInvestmentLevel4ValueButton: TPanel
            Left = 0
            Top = 0
            Width = 11
            Height = 21
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object btnToggleInvestmentLevel4Value: TSpeedButton
              Left = 0
              Top = 0
              Width = 11
              Height = 21
              Action = actToggleInvestmentLevel4Value
              Align = alLeft
              AllowAllUp = True
              GroupIndex = 44
              Flat = True
            end
          end
        end
      end
    end
    object pnlInvestmentLevel5: TPanel
      Left = 2
      Top = 63
      Width = 701
      Height = 22
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 5
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
        Left = 479
        Top = 0
        Width = 222
        Height = 22
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object lblBaseCurrency5: TLabel
          Left = 51
          Top = 4
          Width = 21
          Height = 13
          Caption = '%s /'
        end
        object txtMeasureAbbrev15: TDBText
          Left = 82
          Top = 4
          Width = 28
          Height = 13
          DataField = 'MEASURE_ABBREV'
          DataSource = dsHeader
        end
        object lblInvestmentLevel5DiffMeasure: TLabel
          Left = 150
          Top = 4
          Width = 8
          Height = 13
          Caption = '%'
        end
        object edtInvestmentLevel5Diff: TDBEdit
          Left = 115
          Top = 1
          Width = 32
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataSource = dsData
          ReadOnly = True
          TabOrder = 1
        end
        object pnlToggleInvestmentLevel5Value: TPanel
          Left = 0
          Top = 0
          Width = 49
          Height = 21
          BevelOuter = bvNone
          TabOrder = 0
          object pnlOverriddenInvestmentLevel5Value: TPanel
            Left = 11
            Top = 0
            Width = 38
            Height = 21
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            DesignSize = (
              38
              21)
            object edtInvestmentLevel5Value: TDBEdit
              Left = 0
              Top = 0
              Width = 38
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              DataField = 'INVESTMENT_LEVEL_5_VALUE'
              DataSource = dsData
              TabOrder = 0
            end
          end
          object pnlInheritedInvestmentLevel5Value: TPanel
            Left = 49
            Top = 0
            Width = 38
            Height = 21
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            DesignSize = (
              38
              21)
            object edtInheritedInvestmentLevel5Value: TDBEdit
              Left = 0
              Top = 0
              Width = 38
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              Color = clBtnFace
              DataField = 'INHRT_INVESTMENT_LEVEL_5_VALUE'
              DataSource = dsData
              ReadOnly = True
              TabOrder = 0
            end
          end
          object pnlToggleInvestmentLevel5ValueButton: TPanel
            Left = 0
            Top = 0
            Width = 11
            Height = 21
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object btnToggleInvestmentLevel5Value: TSpeedButton
              Left = 0
              Top = 0
              Width = 11
              Height = 21
              Action = actToggleInvestmentLevel5Value
              Align = alLeft
              AllowAllUp = True
              GroupIndex = 45
              Flat = True
            end
          end
        end
      end
    end
    object pnlAggregatedInvestmentValues: TPanel
      Left = 2
      Top = 179
      Width = 701
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      Color = 15574646
      ParentBackground = False
      TabOrder = 7
      object lblBaseCurrency20: TLabel
        Left = 582
        Top = 5
        Width = 21
        Height = 13
        Caption = '%s /'
      end
      object txtMeasureAbbrev20: TDBText
        Left = 613
        Top = 5
        Width = 28
        Height = 13
        DataField = 'MEASURE_ABBREV'
        DataSource = dsHeader
      end
      object lblAggregatedInvestmentValues: TLabel
        Left = 8
        Top = 5
        Width = 217
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
      object lblAggrInvestmentLevel6DiffMeasure: TLabel
        Left = 678
        Top = 5
        Width = 8
        Height = 13
        Caption = '%'
      end
      object edtAggrInvestmentLevel2Value: TDBEdit
        Left = 332
        Top = 2
        Width = 49
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = '_AGGR_INVESTMENT_LEVEL_2_VALUE'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 0
      end
      object edtAggrInvestmentLevel3Value: TDBEdit
        Left = 381
        Top = 2
        Width = 49
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = '_AGGR_INVESTMENT_LEVEL_3_VALUE'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 1
      end
      object edtAggrInvestmentLevel4Value: TDBEdit
        Left = 430
        Top = 2
        Width = 49
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = '_AGGR_INVESTMENT_LEVEL_4_VALUE'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 2
      end
      object edtAggrInvestmentLevel5Value: TDBEdit
        Left = 479
        Top = 2
        Width = 49
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = '_AGGR_INVESTMENT_LEVEL_5_VALUE'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 3
      end
      object edtAggrInvestmentLevel6Value: TDBEdit
        Left = 528
        Top = 2
        Width = 49
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = '_AGGR_INVESTMENT_LEVEL_6_VALUE'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 4
      end
      object edtAggrInvestmentLevel6Diff: TDBEdit
        Left = 643
        Top = 2
        Width = 32
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataSource = dsData
        ReadOnly = True
        TabOrder = 5
      end
    end
    object pnlFullInvestmentValues: TPanel
      Left = 2
      Top = 205
      Width = 701
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      Color = 7591296
      ParentBackground = False
      TabOrder = 8
      object lblBaseCurrency30: TLabel
        Left = 582
        Top = 5
        Width = 21
        Height = 13
        Caption = '%s /'
      end
      object txtMeasureAbbrev30: TDBText
        Left = 613
        Top = 5
        Width = 28
        Height = 13
        DataField = 'MEASURE_ABBREV'
        DataSource = dsHeader
      end
      object lblFullInvestmentValues: TLabel
        Left = 8
        Top = 5
        Width = 209
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
      object lblFullInvestmentLevel6DiffMeasure: TLabel
        Left = 678
        Top = 5
        Width = 8
        Height = 13
        Caption = '%'
      end
      object edtFullInvestmentLevel1Value: TDBEdit
        Left = 283
        Top = 2
        Width = 49
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = '_FULL_INVESTMENT_LEVEL_1_VALUE'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 0
      end
      object edtFullInvestmentLevel2Value: TDBEdit
        Left = 332
        Top = 2
        Width = 49
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = '_FULL_INVESTMENT_LEVEL_2_VALUE'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 1
      end
      object edtFullInvestmentLevel3Value: TDBEdit
        Left = 381
        Top = 2
        Width = 49
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = '_FULL_INVESTMENT_LEVEL_3_VALUE'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 2
      end
      object edtFullInvestmentLevel4Value: TDBEdit
        Left = 430
        Top = 2
        Width = 49
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = '_FULL_INVESTMENT_LEVEL_4_VALUE'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 3
      end
      object edtFullInvestmentLevel5Value: TDBEdit
        Left = 479
        Top = 2
        Width = 49
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = '_FULL_INVESTMENT_LEVEL_5_VALUE'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 4
      end
      object edtFullInvestmentLevel6Value: TDBEdit
        Left = 528
        Top = 2
        Width = 49
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = '_FULL_INVESTMENT_LEVEL_6_VALUE'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 5
      end
      object edtFullInvestmentLevel6Diff: TDBEdit
        Left = 643
        Top = 2
        Width = 32
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataSource = dsData
        ReadOnly = True
        TabOrder = 6
      end
    end
  end
  object gbSalePrices: TGroupBox [5]
    Left = 8
    Top = 472
    Width = 945
    Height = 73
    Caption = ' '#1041#1072#1079#1086#1074#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '
    TabOrder = 9
    DesignSize = (
      945
      73)
    object lblSaleAcquireSinglePrice: TLabel
      Left = 8
      Top = 24
      Width = 96
      Height = 13
      Caption = #1062#1077#1085#1072' '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072
    end
    object lblSaleAcquireCurrency: TLabel
      Left = 112
      Top = 24
      Width = 35
      Height = 13
      Caption = #1042#1072#1083#1091#1090#1072
    end
    object txtMeasureAbbrev2: TDBText
      Left = 173
      Top = 43
      Width = 28
      Height = 17
      DataField = 'MEASURE_ABBREV'
      DataSource = dsHeader
    end
    object lblSlash2: TLabel
      Left = 165
      Top = 43
      Width = 5
      Height = 13
      Caption = '/'
    end
    object lblSaleLeaseSinglePrice: TLabel
      Left = 216
      Top = 24
      Width = 114
      Height = 13
      Caption = #1062#1077#1085#1072' '#1079#1072' '#1053#1072#1077#1084#1086#1076#1072#1074#1072#1085#1077
    end
    object lblSaleLeaseCurrency: TLabel
      Left = 336
      Top = 24
      Width = 35
      Height = 13
      Caption = #1042#1072#1083#1091#1090#1072
    end
    object txtMeasureAbbrev3: TDBText
      Left = 493
      Top = 43
      Width = 28
      Height = 17
      DataField = 'MEASURE_ABBREV'
      DataSource = dsHeader
    end
    object lblSlash3: TLabel
      Left = 485
      Top = 43
      Width = 5
      Height = 13
      Caption = '/'
    end
    object lblSaleLeaseDateUnit: TLabel
      Left = 392
      Top = 24
      Width = 79
      Height = 13
      Caption = #1053#1072#1077#1084#1085#1072' '#1089#1090#1098#1087#1082#1072
    end
    object lblSaleProcessRoleNotSet: TLabel
      Left = 676
      Top = 8
      Width = 264
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = #1053#1077' '#1077' '#1079#1072#1076#1072#1076#1077#1085#1072' '#1087#1088#1086#1094#1077#1089#1085#1072' '#1087#1086#1079#1080#1094#1080#1103' '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object lblSaleResolveDurationDays: TLabel
      Left = 536
      Top = 24
      Width = 39
      Height = 13
      Caption = #1055#1077#1088#1056#1077#1079
    end
    object lblSaleResolveDurationDaysMeasure: TLabel
      Left = 581
      Top = 43
      Width = 18
      Height = 13
      Caption = #1082'.'#1076'.'
    end
    object lblSaleStore: TLabel
      Left = 616
      Top = 24
      Width = 170
      Height = 13
      Caption = #1058#1055' '#1079#1072' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1103' '#1087#1088#1080' '#1055#1088#1086#1076#1072#1078#1073#1080
    end
    object pnlToggleSaleAcquirePrice: TPanel
      Left = 8
      Top = 40
      Width = 153
      Height = 21
      BevelOuter = bvNone
      TabOrder = 0
      object pnlInheritedSaleAcquirePrice: TPanel
        Left = 153
        Top = 0
        Width = 142
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          142
          21)
        object edtInheritedSaleAcquireSinglePrice: TDBEdit
          Left = 0
          Top = 0
          Width = 86
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = 'INHRT_S_ACQUIRE_SINGLE_PRICE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 0
        end
        object edtInheritedSaleAcquireCurrency: TDBEdit
          Left = 93
          Top = 0
          Width = 49
          Height = 21
          Anchors = [akTop, akRight]
          Color = clBtnFace
          DataField = '_INHRT_S_ACQUIRE_CURRENCY_ABBREV'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 1
        end
      end
      object pnlOverriddenSaleAcquirePrice: TPanel
        Left = 11
        Top = 0
        Width = 142
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          142
          21)
        object edtSaleAcquireSinglePrice: TDBEdit
          Left = 0
          Top = 0
          Width = 86
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'SALE_ACQUIRE_SINGLE_PRICE'
          DataSource = dsData
          TabOrder = 0
        end
        object cbSaleAcquireCurrency: TJvDBLookupCombo
          Left = 93
          Top = 0
          Width = 49
          Height = 21
          DeleteKeyClear = False
          DataField = '_SALE_ACQUIRE_CURRENCY_ABBREV'
          DataSource = dsData
          DisplayEmpty = ' '
          Anchors = [akTop, akRight]
          TabOrder = 1
        end
      end
      object pnlToggleSaleAcquirePriceButton: TPanel
        Left = 0
        Top = 0
        Width = 11
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object btnToggleSaleAcquirePrice: TSpeedButton
          Left = 0
          Top = 0
          Width = 11
          Height = 21
          Action = actToggleSaleAcquirePrice
          Align = alLeft
          AllowAllUp = True
          GroupIndex = 14
          Flat = True
        end
      end
    end
    object pnlToggleSaleLeasePrice: TPanel
      Left = 216
      Top = 40
      Width = 265
      Height = 21
      BevelOuter = bvNone
      TabOrder = 1
      object pnlOverriddenSaleLeasePrice: TPanel
        Left = 11
        Top = 0
        Width = 254
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object edtSaleLeaseSinglePrice: TDBEdit
          Left = 0
          Top = 0
          Width = 102
          Height = 21
          DataField = 'SALE_LEASE_SINGLE_PRICE'
          DataSource = dsData
          TabOrder = 0
        end
        object cbSaleLeaseCurrency: TJvDBLookupCombo
          Left = 109
          Top = 0
          Width = 49
          Height = 21
          DeleteKeyClear = False
          DataField = '_SALE_LEASE_CURRENCY_ABBREV'
          DataSource = dsData
          DisplayEmpty = ' '
          TabOrder = 1
        end
        object cbSaleLeaseDateUnit: TJvDBLookupCombo
          Left = 165
          Top = 0
          Width = 89
          Height = 21
          DeleteKeyClear = False
          DataField = '_SALE_LEASE_DATE_UNIT_NAME'
          DataSource = dsData
          DisplayEmpty = ' '
          TabOrder = 2
        end
      end
      object pnlInheritedSaleLeasePrice: TPanel
        Left = 265
        Top = 0
        Width = 254
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object edtInheritedSaleLeaseSinglePrice: TDBEdit
          Left = 0
          Top = 0
          Width = 102
          Height = 21
          Color = clBtnFace
          DataField = 'INHRT_S_LEASE_SINGLE_PRICE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 0
        end
        object edtInheritedSaleLeaseCurrency: TDBEdit
          Left = 109
          Top = 0
          Width = 49
          Height = 21
          Color = clBtnFace
          DataField = '_INHRT_S_LEASE_CURRENCY_ABBREV'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 1
        end
        object edtInheritedSaleLeaseDateUnit: TDBEdit
          Left = 165
          Top = 0
          Width = 89
          Height = 21
          Color = clBtnFace
          DataField = '_INHRT_S_LEASE_DATE_UNIT_NAME'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 2
        end
      end
      object pnlToggleSaleLeasePriceButton: TPanel
        Left = 0
        Top = 0
        Width = 11
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object btnToggleSaleLeasePrice: TSpeedButton
          Left = 0
          Top = 0
          Width = 11
          Height = 21
          Action = actToggleSaleLeasePrice
          Align = alLeft
          AllowAllUp = True
          GroupIndex = 16
          Flat = True
        end
      end
    end
    object pnlToggleSaleResolveDurationDays: TPanel
      Left = 536
      Top = 40
      Width = 41
      Height = 21
      BevelOuter = bvNone
      TabOrder = 2
      object pnlOverriddenSaleResolveDurationDays: TPanel
        Left = 11
        Top = 0
        Width = 30
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          30
          21)
        object edtSaleResolveDurationDays: TDBEdit
          Left = 0
          Top = 0
          Width = 30
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'SALE_RESOLVE_DURATION_DAYS'
          DataSource = dsData
          TabOrder = 0
        end
      end
      object pnlInheritedSaleResolveDurationDays: TPanel
        Left = 41
        Top = 0
        Width = 30
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          30
          21)
        object edtInheritedSaleResolveDurationDays: TDBEdit
          Left = 0
          Top = 0
          Width = 30
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = 'INHRT_S_RESOLVE_DURATION_DAYS'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnlToggleSaleResolveDurationDaysButton: TPanel
        Left = 0
        Top = 0
        Width = 11
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object btnToggleSaleResolveDurationDays: TSpeedButton
          Left = 0
          Top = 0
          Width = 11
          Height = 21
          Action = actToggleSaleResolveDurationDays
          Align = alLeft
          AllowAllUp = True
          GroupIndex = 18
          Flat = True
        end
      end
    end
    object pnlToggleSaleStore: TPanel
      Left = 616
      Top = 40
      Width = 313
      Height = 21
      BevelOuter = bvNone
      TabOrder = 3
      object pnlInheritedSaleStore: TPanel
        Left = 313
        Top = 0
        Width = 302
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          302
          21)
        inline frInheritedSaleStore: TfrDeptFieldEditFrameBald
          Left = 0
          Top = 0
          Width = 302
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Anchors = [akLeft, akTop, akRight]
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 0
          DesignSize = (
            302
            22)
          inherited gbTreeNode: TGroupBox
            Width = 318
            DesignSize = (
              318
              49)
            inherited pnlTreeNode: TPanel
              Width = 302
              inherited pnlTreeNodeName: TPanel
                Width = 155
                DesignSize = (
                  155
                  22)
                inherited edtTreeNodeName: TDBEdit
                  Width = 154
                end
              end
              inherited pnlTreeNodeNo: TPanel
                Left = 155
              end
              inherited pnlRightButtons: TPanel
                Left = 266
              end
            end
          end
        end
      end
      object pnlOverriddenSaleStore: TPanel
        Left = 11
        Top = 0
        Width = 302
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          302
          21)
        inline frSaleStore: TfrDeptFieldEditFrameBald
          Left = 0
          Top = 0
          Width = 302
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Anchors = [akLeft, akTop, akRight]
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 0
          DesignSize = (
            302
            22)
          inherited gbTreeNode: TGroupBox
            Width = 318
            DesignSize = (
              318
              49)
            inherited pnlTreeNode: TPanel
              Width = 302
              inherited pnlTreeNodeName: TPanel
                Width = 155
                DesignSize = (
                  155
                  22)
                inherited edtTreeNodeName: TDBEdit
                  Width = 154
                end
              end
              inherited pnlTreeNodeNo: TPanel
                Left = 155
              end
              inherited pnlRightButtons: TPanel
                Left = 266
              end
            end
          end
        end
      end
      object pnlToggleSaleStoreButton: TPanel
        Left = 0
        Top = 0
        Width = 11
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object btnToggleSaleStore: TSpeedButton
          Left = 0
          Top = 0
          Width = 11
          Height = 21
          Action = actToggleSaleStore
          Align = alLeft
          AllowAllUp = True
          GroupIndex = 20
          Flat = True
        end
      end
    end
  end
  object gbDeliveryPrices: TGroupBox [6]
    Left = 8
    Top = 552
    Width = 945
    Height = 73
    Caption = ' '#1041#1072#1079#1086#1074#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1079#1072' '#1044#1086#1089#1090#1072#1074#1082#1072' '
    TabOrder = 10
    DesignSize = (
      945
      73)
    object lblDeliveryAcquireSinglePrice: TLabel
      Left = 8
      Top = 24
      Width = 94
      Height = 13
      Caption = #1062#1077#1085#1072' '#1079#1072' '#1044#1086#1089#1090#1072#1074#1082#1072
    end
    object lblDeliveryAcquireCurrency: TLabel
      Left = 112
      Top = 24
      Width = 35
      Height = 13
      Caption = #1042#1072#1083#1091#1090#1072
    end
    object txtMeasureAbbrev4: TDBText
      Left = 173
      Top = 43
      Width = 28
      Height = 17
      DataField = 'MEASURE_ABBREV'
      DataSource = dsHeader
    end
    object lblSlash4: TLabel
      Left = 165
      Top = 43
      Width = 5
      Height = 13
      Caption = '/'
    end
    object lblDeliveryLeaseSinglePrice: TLabel
      Left = 216
      Top = 24
      Width = 90
      Height = 13
      Caption = #1062#1077#1085#1072' '#1079#1072' '#1053#1072#1077#1084#1072#1085#1077
    end
    object lblDeliveryLeaseCurrency: TLabel
      Left = 336
      Top = 24
      Width = 35
      Height = 13
      Caption = #1042#1072#1083#1091#1090#1072
    end
    object txtMeasureAbbrev5: TDBText
      Left = 493
      Top = 43
      Width = 28
      Height = 17
      DataField = 'MEASURE_ABBREV'
      DataSource = dsHeader
    end
    object lblSlash5: TLabel
      Left = 485
      Top = 43
      Width = 5
      Height = 13
      Caption = '/'
    end
    object lblDeliveryLeaseDateUnit: TLabel
      Left = 392
      Top = 24
      Width = 79
      Height = 13
      Caption = #1053#1072#1077#1084#1085#1072' '#1089#1090#1098#1087#1082#1072
    end
    object lblDeliveryProcessRoleNotSet: TLabel
      Left = 676
      Top = 8
      Width = 264
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = #1053#1077' '#1077' '#1079#1072#1076#1072#1076#1077#1085#1072' '#1087#1088#1086#1094#1077#1089#1085#1072' '#1087#1086#1079#1080#1094#1080#1103' '#1079#1072' '#1044#1086#1089#1090#1072#1074#1082#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object lblDeliveryResolveDurationDays: TLabel
      Left = 536
      Top = 24
      Width = 39
      Height = 13
      Caption = #1055#1077#1088#1056#1077#1079
    end
    object lblDeliveryResolveDurationDaysMeasure: TLabel
      Left = 581
      Top = 43
      Width = 18
      Height = 13
      Caption = #1082'.'#1076'.'
    end
    object lblDeliveryStore: TLabel
      Left = 616
      Top = 24
      Width = 167
      Height = 13
      Caption = #1058#1055' '#1079#1072' '#1055#1086#1083#1091#1095#1072#1074#1072#1085#1077' '#1087#1088#1080' '#1044#1086#1089#1090#1072#1074#1082#1080
    end
    object pnlToggleDeliveryAcquirePrice: TPanel
      Left = 8
      Top = 40
      Width = 153
      Height = 21
      BevelOuter = bvNone
      TabOrder = 0
      object pnlInheritedDeliveryAcquirePrice: TPanel
        Left = 153
        Top = 0
        Width = 142
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          142
          21)
        object edtInheritedDeliveryAcquireSinglePrice: TDBEdit
          Left = 0
          Top = 0
          Width = 86
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = 'INHRT_D_ACQUIRE_SINGLE_PRICE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 0
        end
        object edtInheritedDeliveryAcquireCurrency: TDBEdit
          Left = 93
          Top = 0
          Width = 49
          Height = 21
          Anchors = [akTop, akRight]
          Color = clBtnFace
          DataField = '_INHRT_D_ACQUIRE_CURRENCY_ABBREV'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 1
        end
      end
      object pnlOverriddenDeliveryAcquirePrice: TPanel
        Left = 11
        Top = 0
        Width = 142
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          142
          21)
        object edtDeliveryAcquireSinglePrice: TDBEdit
          Left = 0
          Top = 0
          Width = 86
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'DELIVERY_ACQUIRE_SINGLE_PRICE'
          DataSource = dsData
          TabOrder = 0
        end
        object cbDeliveryAcquireCurrency: TJvDBLookupCombo
          Left = 93
          Top = 0
          Width = 49
          Height = 21
          DeleteKeyClear = False
          DataField = '_DELIVERY_ACQUIRE_CURR_ABBREV'
          DataSource = dsData
          DisplayEmpty = ' '
          Anchors = [akTop, akRight]
          TabOrder = 1
        end
      end
      object pnlToggleDeliveryAcquirePriceButton: TPanel
        Left = 0
        Top = 0
        Width = 11
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object btnToggleDeliveryAcquirePrice: TSpeedButton
          Left = 0
          Top = 0
          Width = 11
          Height = 21
          Action = actToggleDeliveryAcquirePrice
          Align = alLeft
          AllowAllUp = True
          GroupIndex = 15
          Flat = True
        end
      end
    end
    object pnlToggleDeliveryLeasePrice: TPanel
      Left = 216
      Top = 40
      Width = 265
      Height = 21
      BevelOuter = bvNone
      TabOrder = 1
      object pnlOverriddenDeliveryLeasePrice: TPanel
        Left = 11
        Top = 0
        Width = 254
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object edtDeliveryLeaseSinglePrice: TDBEdit
          Left = 0
          Top = 0
          Width = 102
          Height = 21
          DataField = 'DELIVERY_LEASE_SINGLE_PRICE'
          DataSource = dsData
          TabOrder = 0
        end
        object cbDeliveryLeaseCurrency: TJvDBLookupCombo
          Left = 109
          Top = 0
          Width = 49
          Height = 21
          DeleteKeyClear = False
          DataField = '_DELIVERY_LEASE_CURRENCY_ABBREV'
          DataSource = dsData
          DisplayEmpty = ' '
          TabOrder = 1
        end
        object cbDeliveryLeaseDateUnit: TJvDBLookupCombo
          Left = 165
          Top = 0
          Width = 89
          Height = 21
          DeleteKeyClear = False
          DataField = '_DELIVERY_LEASE_DATE_UNIT_NAME'
          DataSource = dsData
          DisplayEmpty = ' '
          TabOrder = 2
        end
      end
      object pnlInheritedDeliveryLeasePrice: TPanel
        Left = 265
        Top = 0
        Width = 254
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object edtInheritedDeliveryLeaseSinglePrice: TDBEdit
          Left = 0
          Top = 0
          Width = 102
          Height = 21
          Color = clBtnFace
          DataField = 'INHRT_D_LEASE_SINGLE_PRICE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 0
        end
        object edtInheritedDeliveryLeaseCurrency: TDBEdit
          Left = 109
          Top = 0
          Width = 49
          Height = 21
          Color = clBtnFace
          DataField = '_INHRT_D_LEASE_CURRENCY_ABBREV'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 1
        end
        object edtInheritedDeliveryLeaseDateUnit: TDBEdit
          Left = 165
          Top = 0
          Width = 89
          Height = 21
          Color = clBtnFace
          DataField = '_INHRT_D_LEASE_DATE_UNIT_NAME'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 2
        end
      end
      object pnlToggleDeliveryLeasePriceButton: TPanel
        Left = 0
        Top = 0
        Width = 11
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object btnToggleDeliveryLeasePrice: TSpeedButton
          Left = 0
          Top = 0
          Width = 11
          Height = 21
          Action = actToggleDeliveryLeasePrice
          Align = alLeft
          AllowAllUp = True
          GroupIndex = 17
          Flat = True
        end
      end
    end
    object pnlToggleDeliveryResolveDurationDays: TPanel
      Left = 536
      Top = 40
      Width = 41
      Height = 21
      BevelOuter = bvNone
      TabOrder = 2
      object pnlOverriddenDeliveryResolveDurationDays: TPanel
        Left = 11
        Top = 0
        Width = 30
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          30
          21)
        object edtDeliveryResolveDurationDays: TDBEdit
          Left = 0
          Top = 0
          Width = 30
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'DELIVERY_RESOLVE_DURATION_DAYS'
          DataSource = dsData
          TabOrder = 0
        end
      end
      object pnlInheritedDeliveryResolveDurationDays: TPanel
        Left = 41
        Top = 0
        Width = 30
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          30
          21)
        object edtInheritedDeliveryResolveDurationDays: TDBEdit
          Left = 0
          Top = 0
          Width = 30
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = 'INHRT_D_RESOLVE_DURATION_DAYS'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnlToggleDeliveryResolveDurationDaysButton: TPanel
        Left = 0
        Top = 0
        Width = 11
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object btnToggleDeliveryResolveDurationDays: TSpeedButton
          Left = 0
          Top = 0
          Width = 11
          Height = 21
          Action = actToggleDeliveryResolveDurationDays
          Align = alLeft
          AllowAllUp = True
          GroupIndex = 19
          Flat = True
        end
      end
    end
    object pnlToggleDeliveryStore: TPanel
      Left = 616
      Top = 40
      Width = 313
      Height = 21
      BevelOuter = bvNone
      TabOrder = 3
      object pnlInheritedDeliveryStore: TPanel
        Left = 313
        Top = 0
        Width = 302
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          302
          21)
        inline frInheritedDeliveryStore: TfrDeptFieldEditFrameBald
          Left = 0
          Top = 0
          Width = 302
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Anchors = [akLeft, akTop, akRight]
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 0
          DesignSize = (
            302
            22)
          inherited gbTreeNode: TGroupBox
            Width = 318
            DesignSize = (
              318
              49)
            inherited pnlTreeNode: TPanel
              Width = 302
              inherited pnlTreeNodeName: TPanel
                Width = 155
                DesignSize = (
                  155
                  22)
                inherited edtTreeNodeName: TDBEdit
                  Width = 154
                end
              end
              inherited pnlTreeNodeNo: TPanel
                Left = 155
              end
              inherited pnlRightButtons: TPanel
                Left = 266
              end
            end
          end
        end
      end
      object pnlOverriddenDeliveryStore: TPanel
        Left = 11
        Top = 0
        Width = 302
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          302
          21)
        inline frDeliveryStore: TfrDeptFieldEditFrameBald
          Left = 0
          Top = 0
          Width = 302
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Anchors = [akLeft, akTop, akRight]
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 0
          DesignSize = (
            302
            22)
          inherited gbTreeNode: TGroupBox
            Width = 318
            DesignSize = (
              318
              49)
            inherited pnlTreeNode: TPanel
              Width = 302
              inherited pnlTreeNodeName: TPanel
                Width = 155
                DesignSize = (
                  155
                  22)
                inherited edtTreeNodeName: TDBEdit
                  Width = 154
                end
              end
              inherited pnlTreeNodeNo: TPanel
                Left = 155
              end
              inherited pnlRightButtons: TPanel
                Left = 266
              end
            end
          end
        end
      end
      object pnlToggleDeliveryStoreButton: TPanel
        Left = 0
        Top = 0
        Width = 11
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object btnToggleDeliveryStore: TSpeedButton
          Left = 0
          Top = 0
          Width = 11
          Height = 21
          Action = actToggleDeliveryStore
          Align = alLeft
          AllowAllUp = True
          GroupIndex = 21
          Flat = True
        end
      end
    end
  end
  object gbPsdFromDelivery: TGroupBox [7]
    Left = 8
    Top = 266
    Width = 177
    Height = 55
    Caption = ' '#1055#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077' '
    TabOrder = 5
    DesignSize = (
      177
      55)
    object pnlToggleIsPsdPriceFromDelivery: TPanel
      Left = 8
      Top = 24
      Width = 161
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 0
      object pnlOverriddenIsPsdPriceFromDelivery: TPanel
        Left = 11
        Top = 0
        Width = 150
        Height = 21
        Align = alLeft
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          150
          21)
        object cbIsPsdPriceFromDelivery: TJvDBComboBox
          Left = 0
          Top = 0
          Width = 150
          Height = 21
          DataField = 'IS_PSD_PRICE_FROM_DELIVERY'
          DataSource = dsData
          Anchors = [akLeft, akTop, akRight]
          Items.Strings = (
            #1057#1098#1079#1076#1072#1074#1072#1085#1077
            #1044#1086#1089#1090#1072#1074#1082#1072)
          TabOrder = 0
          Values.Strings = (
            'False'
            'True')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
          ListSettings.OutfilteredValueFont.Style = []
        end
      end
      object pnlInheritedIsPsdPriceFromDelivery: TPanel
        Left = 161
        Top = 0
        Width = 150
        Height = 21
        Align = alLeft
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          150
          21)
        object edtInheritedIsPsdPriceFromDelivery: TDBEdit
          Left = 0
          Top = 0
          Width = 150
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = 'INHRT_IS_PSD_PRICE_FROM_DLVRY'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnlToggleIsPsdPriceFromDeliveryButton: TPanel
        Left = 0
        Top = 0
        Width = 11
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object btnToggleIsPsdPriceFromDelivery: TSpeedButton
          Left = 0
          Top = 0
          Width = 11
          Height = 21
          Action = actIsPsdPriceFromDelivery
          Align = alLeft
          AllowAllUp = True
          GroupIndex = 13
          Flat = True
        end
      end
    end
  end
  object tlbToggleWorkOrAccountInvestmentValues: TToolBar [8]
    Left = 193
    Top = 297
    Width = 48
    Height = 24
    Align = alNone
    AutoSize = True
    ButtonHeight = 24
    ButtonWidth = 24
    Images = dmMain.ilActions
    List = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    object btnWorkInvestmentValues: TToolButton
      Left = 0
      Top = 0
      Action = actWorkInvestmentValues
      Grouped = True
      Style = tbsCheck
    end
    object btnAccountInvestmentValues: TToolButton
      Left = 24
      Top = 0
      Action = actAccountInvestmentValues
      Grouped = True
      Style = tbsCheck
    end
  end
  inline frProduct: TfrProductExFieldEditFrame [9]
    Left = 8
    Top = 8
    Width = 945
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
      Width = 945
      Caption = ' %ProductClassCommonName% '
      inherited pnlTreeNode: TPanel
        Width = 43
        inherited pnlTreeNodeNo: TPanel
          Left = -139
        end
        inherited pnlRightButtons: TPanel
          Left = -16
        end
        inherited pnlProductLabels: TPanel
          Width = 43
        end
      end
      inherited pnlRight: TPanel
        Left = 173
      end
    end
  end
  object gbSpecModelVariants: TGroupBox [10]
    Left = 8
    Top = 328
    Width = 945
    Height = 139
    Caption = ' '#1042#1072#1088#1080#1072#1085#1090#1080' '#1085#1072' '#1055'-'#1052#1054#1044#1045#1083' '
    TabOrder = 8
    DesignSize = (
      945
      139)
    inline frSpecModelVariants: TDualGridFrame
      Left = 8
      Top = 13
      Width = 929
      Height = 118
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      inherited pnlIncluded: TPanel
        Width = 443
        Height = 118
        inherited pnlIncludedNavigator: TPanel
          Width = 443
          inherited navIncluded: TDBColorNavigator
            Hints.Strings = ()
          end
        end
        inherited grdIncluded: TAbmesDBGrid
          Width = 443
          Height = 94
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'SPEC_MODEL_VARIANT_IDENTIFIER'
              Footers = <>
              Title.Caption = #1040#1082#1090#1080#1074#1077#1085' '#1042#1072#1088#1080#1072#1085#1090
              Width = 331
            end
            item
              Alignment = taCenter
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'IS_EST_VARIANT'
              Footers = <>
              Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1077#1085
              Width = 78
            end>
        end
      end
      inherited pnlButtons: TPanel
        Left = 443
        Height = 118
        DesignSize = (
          44
          118)
        inherited pnlProductButtons: TPanel
          Top = -18
          inherited btnInclude: TSpeedButton
            Top = 42
          end
          inherited btnExclude: TSpeedButton
            Top = 66
          end
          inherited btnIncludeAll: TSpeedButton
            Top = 90
          end
          inherited btnExcludeAll: TSpeedButton
            Top = 114
          end
        end
      end
      inherited pnlExcluded: TPanel
        Left = 487
        Width = 442
        Height = 118
        inherited pnlExcludedNavigator: TPanel
          Width = 442
          inherited navExcluded: TDBColorNavigator
            Left = 346
            Hints.Strings = ()
          end
        end
        inherited grdExcluded: TAbmesDBGrid
          Width = 442
          Height = 94
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'SPEC_MODEL_VARIANT_IDENTIFIER'
              Footers = <>
              Title.Caption = #1053#1077#1072#1082#1090#1080#1074#1077#1085' '#1042#1072#1088#1080#1072#1085#1090
              Width = 409
            end>
        end
      end
    end
    object tlbSetIsEstVariant: TToolBar
      Left = 104
      Top = 13
      Width = 217
      Height = 24
      Align = alNone
      ButtonHeight = 25
      TabOrder = 1
      object sepBeforeSetIsEstVariant: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Caption = 'sepBeforeSetIsEstVariant'
        Style = tbsSeparator
      end
      object btnSetIsEstVariant: TSpeedButton
        Left = 8
        Top = 0
        Width = 90
        Height = 25
        Action = actSetIsEstVariant
        Flat = True
        Transparent = False
      end
    end
  end
  object gbOrderQuantities: TGroupBox [11]
    Left = 8
    Top = 198
    Width = 233
    Height = 63
    Caption = ' '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1079#1072' '#1054#1055#1042'/'#1054#1055#1044' '
    TabOrder = 4
    DesignSize = (
      233
      63)
    object txtMeasureAbbrev6: TDBText
      Left = 203
      Top = 35
      Width = 27
      Height = 17
      Anchors = [akTop, akRight]
      DataField = 'MEASURE_ABBREV'
      DataSource = dsHeader
    end
    object lblMinOrderQuantity: TLabel
      Left = 80
      Top = 16
      Width = 24
      Height = 13
      Caption = #1052#1080#1085'.'
    end
    object lblMaxOrderQuantity: TLabel
      Left = 144
      Top = 16
      Width = 30
      Height = 13
      Caption = #1052#1072#1082#1089'.'
    end
    object lblAcquireBatchQuantity: TLabel
      Left = 8
      Top = 16
      Width = 47
      Height = 13
      Caption = #1050#1088#1072#1090#1085#1086#1089#1090
    end
    object pnlToggleMinOrderQuantity: TPanel
      Left = 80
      Top = 32
      Width = 57
      Height = 21
      BevelOuter = bvNone
      TabOrder = 1
      object pnlOverriddenMinOrderQuantity: TPanel
        Left = 11
        Top = 0
        Width = 46
        Height = 21
        Align = alLeft
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          46
          21)
        object edtMinOrderQuantity: TDBEdit
          Left = 0
          Top = 0
          Width = 46
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'MIN_ORDER_QUANTITY'
          DataSource = dsData
          TabOrder = 0
        end
      end
      object pnlInheritedMinOrderQuantity: TPanel
        Left = 57
        Top = 0
        Width = 46
        Height = 21
        Align = alLeft
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          46
          21)
        object edtIhneritedMinOrderQuantity: TDBEdit
          Left = 0
          Top = 0
          Width = 46
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = 'INHRT_MIN_ORDER_QUANTITY'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnlToggleMinOrderQuantityButton: TPanel
        Left = 0
        Top = 0
        Width = 11
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object btnToggleMinOrderQuantity: TSpeedButton
          Left = 0
          Top = 0
          Width = 11
          Height = 21
          Action = actToggleMinOrderQuantity
          Align = alLeft
          AllowAllUp = True
          GroupIndex = 51
          Flat = True
        end
      end
    end
    object pnlToggleMaxOrderQuantity: TPanel
      Left = 144
      Top = 32
      Width = 57
      Height = 21
      BevelOuter = bvNone
      TabOrder = 2
      object pnlOverriddenMaxOrderQuantity: TPanel
        Left = 11
        Top = 0
        Width = 46
        Height = 21
        Align = alLeft
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          46
          21)
        object edtMaxOrderQuantity: TDBEdit
          Left = 0
          Top = 0
          Width = 46
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'MAX_ORDER_QUANTITY'
          DataSource = dsData
          TabOrder = 0
        end
      end
      object pnlInheritedMaxOrderQuantity: TPanel
        Left = 57
        Top = 0
        Width = 46
        Height = 21
        Align = alLeft
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          46
          21)
        object edtInheritedMaxOrderQuantity: TDBEdit
          Left = 0
          Top = 0
          Width = 46
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = 'INHRT_MAX_ORDER_QUANTITY'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnlToggleMaxOrderQuantityButton: TPanel
        Left = 0
        Top = 0
        Width = 11
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object btnToggleMaxOrderQuantity: TSpeedButton
          Left = 0
          Top = 0
          Width = 11
          Height = 21
          Action = actToggleMaxOrderQuantity
          Align = alLeft
          AllowAllUp = True
          GroupIndex = 52
          Flat = True
        end
      end
    end
    object pnlToggleAcquireBatchQuantity: TPanel
      Left = 8
      Top = 32
      Width = 57
      Height = 21
      BevelOuter = bvNone
      TabOrder = 0
      object pnlOverriddenAcquireBatchQuantity: TPanel
        Left = 11
        Top = 0
        Width = 46
        Height = 21
        Align = alLeft
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          46
          21)
        object edtAcquireBatchQuantity: TDBEdit
          Left = 0
          Top = 0
          Width = 46
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'ACQUIRE_BATCH_QUANTITY'
          DataSource = dsData
          TabOrder = 0
        end
      end
      object pnlInheritedAcquireBatchQuantity: TPanel
        Left = 57
        Top = 0
        Width = 46
        Height = 21
        Align = alLeft
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          46
          21)
        object edtInheritedAcquireBatchQuantity: TDBEdit
          Left = 0
          Top = 0
          Width = 46
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = 'INHRT_ACQUIRE_BATCH_QUANTITY'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnlToggleAcquireBatchQuantityButton: TPanel
        Left = 0
        Top = 0
        Width = 11
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object btnToggleAcquireBatchQuantity: TSpeedButton
          Left = 0
          Top = 0
          Width = 11
          Height = 21
          Action = actToggleAcquireBatchQuantity
          Align = alLeft
          AllowAllUp = True
          GroupIndex = 53
          Flat = True
        end
      end
    end
  end
  inherited alActions: TActionList [12]
    Left = 424
    Top = 160
    inherited actForm: TAction
      Caption = '%ProductPeriodAbbrev% '#1074#1098#1074' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' - %s'
    end
    object actToggleCommonInvestmentValuesDiff: TAction
      Caption = #1054#1090#1082#1083'. '#1086#1090' %ProductClassAbbrev% '#1054#1073#1086#1073#1097#1072#1074#1072#1097
      Checked = True
      GroupIndex = 1
      OnExecute = actToggleInvestmentValuesDiff
      OnUpdate = actToggleCommonInvestmentValuesDiffUpdate
    end
    object actToggleSaleInvestmentValuesPart: TAction
      Caption = #1057#1087#1088#1103#1084#1086' '#1062#1077#1085#1072' '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072
      GroupIndex = 1
      OnExecute = actToggleInvestmentValuesDiff
      OnUpdate = actToggleSaleInvestmentValuesPartUpdate
    end
    object actToggleDeliveryInvestmentValuesPart: TAction
      Caption = #1057#1087#1088#1103#1084#1086' '#1062#1077#1085#1072' '#1079#1072' '#1044#1086#1089#1090#1072#1074#1082#1072
      GroupIndex = 1
      OnExecute = actToggleInvestmentValuesDiff
      OnUpdate = actToggleDeliveryInvestmentValuesPartUpdate
    end
    object actWorkInvestmentValues: TAction
      AutoCheck = True
      Checked = True
      GroupIndex = 2
      Hint = #1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1079#1072' '#1056#1072#1073#1086#1090#1085#1072' '#1052#1077#1088#1085#1072' '#1045#1076#1080#1085#1080#1094#1072' %ProductClassAbbrev%'
      ImageIndex = 23
      OnExecute = actWorkInvestmentValuesExecute
    end
    object actAccountInvestmentValues: TAction
      AutoCheck = True
      GroupIndex = 2
      Hint = 
        #1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1079#1072' '#1057#1095#1077#1090#1086#1074#1086#1076#1085#1072' '#1052#1077#1088#1085#1072' '#1045#1076#1080#1085#1080#1094#1072' %ProductClassAbbre' +
        'v%'
      ImageIndex = 28
      OnExecute = actAccountInvestmentValuesExecute
    end
    object actInvestedValuesGraph: TAction
      Caption = #1054#1073'. '#1048#1085#1078#1054#1088#1057#1040#1085'...'
      ImageIndex = 30
      OnExecute = actInvestedValuesGraphExecute
      OnUpdate = actInvestedValuesGraphUpdate
    end
    object actSpecInvestedValueLevelsGraph: TAction
      Caption = #1042#1048#1052' '#1085#1072' '#1042#1057'...'
      Hint = #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080
      ImageIndex = 30
      OnExecute = actSpecInvestedValueLevelsGraphExecute
      OnUpdate = actSpecInvestedValueLevelsGraphUpdate
    end
    object actSetIsEstVariant: TAction
      Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1077#1085'...'
      OnExecute = actSetIsEstVariantExecute
      OnUpdate = actSetIsEstVariantUpdate
    end
    object actTogglePrecisionLevel: TAction
      GroupIndex = 11
      ImageIndex = 140
      OnExecute = actTogglePrecisionLevelExecute
      OnUpdate = actTogglePrecisionLevelUpdate
    end
    object actToggleBalanceQuantity: TAction
      GroupIndex = 12
      ImageIndex = 140
      OnExecute = actToggleBalanceQuantityExecute
      OnUpdate = actToggleBalanceQuantityUpdate
    end
    object actIsPsdPriceFromDelivery: TAction
      GroupIndex = 13
      ImageIndex = 140
      OnExecute = actIsPsdPriceFromDeliveryExecute
      OnUpdate = actIsPsdPriceFromDeliveryUpdate
    end
    object actToggleSaleAcquirePrice: TAction
      GroupIndex = 14
      ImageIndex = 140
      OnExecute = actToggleSaleAcquirePriceExecute
      OnUpdate = actToggleSaleAcquirePriceUpdate
    end
    object actToggleDeliveryAcquirePrice: TAction
      GroupIndex = 15
      ImageIndex = 140
      OnExecute = actToggleDeliveryAcquirePriceExecute
      OnUpdate = actToggleDeliveryAcquirePriceUpdate
    end
    object actToggleSaleLeasePrice: TAction
      GroupIndex = 16
      ImageIndex = 140
      OnExecute = actToggleSaleLeasePriceExecute
      OnUpdate = actToggleSaleLeasePriceUpdate
    end
    object actToggleDeliveryLeasePrice: TAction
      GroupIndex = 17
      ImageIndex = 140
      OnExecute = actToggleDeliveryLeasePriceExecute
      OnUpdate = actToggleDeliveryLeasePriceUpdate
    end
    object actToggleSaleResolveDurationDays: TAction
      GroupIndex = 18
      ImageIndex = 140
      OnExecute = actToggleSaleResolveDurationDaysExecute
      OnUpdate = actToggleSaleResolveDurationDaysUpdate
    end
    object actToggleDeliveryResolveDurationDays: TAction
      GroupIndex = 19
      ImageIndex = 140
      OnExecute = actToggleDeliveryResolveDurationDaysExecute
      OnUpdate = actToggleDeliveryResolveDurationDaysUpdate
    end
    object actToggleSaleStore: TAction
      GroupIndex = 20
      ImageIndex = 140
      OnExecute = actToggleSaleStoreExecute
      OnUpdate = actToggleSaleStoreUpdate
    end
    object actToggleDeliveryStore: TAction
      GroupIndex = 21
      ImageIndex = 140
      OnExecute = actToggleDeliveryStoreExecute
      OnUpdate = actToggleDeliveryStoreUpdate
    end
    object actToggleInvestmentLevel1Value: TAction
      GroupIndex = 41
      ImageIndex = 140
      OnExecute = actToggleInvestmentLevel1ValueExecute
      OnUpdate = actToggleInvestmentLevel1ValueUpdate
    end
    object actToggleInvestmentLevel2Value: TAction
      GroupIndex = 42
      ImageIndex = 140
      OnExecute = actToggleInvestmentLevel2ValueExecute
      OnUpdate = actToggleInvestmentLevel2ValueUpdate
    end
    object actToggleInvestmentLevel3Value: TAction
      GroupIndex = 43
      ImageIndex = 140
      OnExecute = actToggleInvestmentLevel3ValueExecute
      OnUpdate = actToggleInvestmentLevel3ValueUpdate
    end
    object actToggleInvestmentLevel4Value: TAction
      GroupIndex = 44
      ImageIndex = 140
      OnExecute = actToggleInvestmentLevel4ValueExecute
      OnUpdate = actToggleInvestmentLevel4ValueUpdate
    end
    object actToggleInvestmentLevel5Value: TAction
      GroupIndex = 45
      ImageIndex = 140
      OnExecute = actToggleInvestmentLevel5ValueExecute
      OnUpdate = actToggleInvestmentLevel5ValueUpdate
    end
    object actToggleInvestmentLevel6Value: TAction
      GroupIndex = 46
      ImageIndex = 140
      OnExecute = actToggleInvestmentLevel6ValueExecute
      OnUpdate = actToggleInvestmentLevel6ValueUpdate
    end
    object actToggleMinOrderQuantity: TAction
      GroupIndex = 51
      ImageIndex = 140
      OnExecute = actToggleMinOrderQuantityExecute
      OnUpdate = actToggleMinOrderQuantityUpdate
    end
    object actToggleMaxOrderQuantity: TAction
      GroupIndex = 52
      ImageIndex = 140
      OnExecute = actToggleMaxOrderQuantityExecute
      OnUpdate = actToggleMaxOrderQuantityUpdate
    end
    object actToggleAcquireBatchQuantity: TAction
      GroupIndex = 53
      ImageIndex = 140
      OnExecute = actToggleAcquireBatchQuantityExecute
      OnUpdate = actToggleAcquireBatchQuantityUpdate
    end
  end
  inherited dsData: TDataSource [13]
    Left = 192
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 160
  end
  object dsHeader: TDataSource
    Left = 248
  end
  object cdsSpecInvestedValueLevelsGraphParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 416
    Top = 208
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
  end
  object cdsProdPerSpecModelVariantsClone: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 248
    Top = 424
    object cdsProdPerSpecModelVariantsCloneSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object cdsProdPerSpecModelVariantsCloneMAIN_DEPT_CODE: TAbmesFloatField
      FieldName = 'MAIN_DEPT_CODE'
    end
    object cdsProdPerSpecModelVariantsCloneMIN_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MIN_TECH_QUANTITY'
    end
    object cdsProdPerSpecModelVariantsCloneMAX_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MAX_TECH_QUANTITY'
    end
  end
end
