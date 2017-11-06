inherited fmProductMinQuantities: TfmProductMinQuantities
  Left = 386
  Top = 233
  ClientHeight = 295
  ClientWidth = 591
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 261
    Width = 448
    Height = 34
    Align = alNone
    Visible = False
    inherited pnlOKCancel: TPanel
      Left = 180
      Height = 34
      inherited btnOK: TBitBtn
        TabStop = False
      end
      inherited btnCancel: TBitBtn
        TabStop = False
      end
    end
    inherited pnlClose: TPanel
      Left = 91
      Height = 34
      inherited btnClose: TBitBtn
        TabStop = False
      end
    end
    inherited pnlApply: TPanel
      Left = 359
      Height = 34
      Visible = False
      inherited btnApply: TBitBtn
        TabStop = False
      end
    end
    inherited pnlDataButtons: TPanel
      Width = 529
      Height = 34
      inherited btnAddData: TBitBtn
        Left = 0
        Top = 9
      end
      inherited btnDeleteData: TBitBtn
        Left = 114
        Top = 9
      end
      inherited btnEditData: TBitBtn
        Left = 228
        Top = 9
      end
    end
  end
  inherited pnlMain: TPanel
    Width = 591
    Height = 295
    BorderWidth = 0
    inherited pnlGrid: TPanel
      Left = 0
      Top = 0
      Width = 591
      Height = 295
      inherited pnlNavigator: TPanel
        Width = 591
        inherited pnlFilterButton: TPanel
          Visible = False
        end
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
        object tlbToggleMeasures: TToolBar
          Left = 543
          Top = 0
          Width = 48
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Images = dmMain.ilActions
          TabOrder = 3
          object btnWorkMeasure: TToolButton
            Left = 0
            Top = 0
            Action = actWorkMeasure
            Grouped = True
            Style = tbsCheck
          end
          object btnAccountMeasure: TToolButton
            Left = 24
            Top = 0
            Action = actAccountMeasure
            Grouped = True
            Style = tbsCheck
          end
        end
        object tlbDocs: TToolBar
          Left = 325
          Top = 0
          Width = 85
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonWidth = 24
          Caption = 'tlbTopGridButtons'
          Images = dmMain.ilActions
          TabOrder = 4
          object sepBeforeDocs: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepBeforeDocs'
            ImageIndex = 114
            Style = tbsSeparator
          end
          object pnlDocs: TPanel
            Left = 8
            Top = 0
            Width = 32
            Height = 22
            Align = alLeft
            BevelOuter = bvNone
            Caption = #1047#1072#1076#1077#1083
            TabOrder = 0
          end
          object btnDocs: TSpeedButton
            Left = 40
            Top = 0
            Width = 37
            Height = 22
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1080#1103' '#1047#1072#1076#1077#1083
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
            OnClick = btnDocsClick
          end
          object sepAfterDocs: TToolButton
            Left = 77
            Top = 0
            Width = 8
            Caption = 'sepAfterDocs'
            ImageIndex = 115
            Style = tbsSeparator
          end
        end
        object tlbMinQuantities: TToolBar
          Left = 248
          Top = 0
          Width = 77
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Caption = 'tlbMinQuantities'
          Images = dmMain.ilActions
          TabOrder = 5
          object sepPastMinQuantities: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepPastMinQuantities'
            Style = tbsSeparator
          end
          object btnPastMinQuantities: TSpeedButton
            Left = 8
            Top = 0
            Width = 23
            Height = 24
            Action = actPastMinQuantities
            AllowAllUp = True
            GroupIndex = 2
            Flat = True
            Transparent = False
          end
          object btnPresentMinQuantities: TSpeedButton
            Left = 31
            Top = 0
            Width = 23
            Height = 24
            Action = actPresentMinQuantities
            AllowAllUp = True
            GroupIndex = 3
            Down = True
            Flat = True
            Transparent = False
          end
          object btnFutureMinQuantities: TSpeedButton
            Left = 54
            Top = 0
            Width = 23
            Height = 24
            Action = actFutureMinQuantities
            AllowAllUp = True
            GroupIndex = 4
            Down = True
            Flat = True
            Transparent = False
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 591
        Height = 271
        HorzScrollBar.Visible = False
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'STORE_FULL_NAME'
            Footers = <>
            Width = 223
          end
          item
            Color = 16115403
            DynProps = <>
            EditButtons = <>
            FieldName = 'BEGIN_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1084#1048#1085#1090
            Width = 120
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'MIN_QUANTITY'
            Footers = <>
            Title.Caption = #1056#1072#1073#1086#1090#1085#1086' '#1082'-'#1074#1086
            Title.Hint = #1052#1080#1085#1080#1084#1072#1083#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
            Width = 90
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = '_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1052'.'#1077#1076'.'
            Width = 30
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'ACCOUNT_MIN_QUANTITY'
            Footers = <>
            Title.Caption = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1086' '#1082'-'#1074#1086
            Title.Hint = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1086' '#1084#1080#1085#1080#1084#1072#1083#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
            Width = 90
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = '_ACCOUNT_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1052'.'#1077#1076'.'
            Width = 30
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conProductsTreeEditor
    Filtered = True
    FieldDefs = <
      item
        Name = 'PRODUCT_STORE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STORE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'IS_INHERITED'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_LEVEL'
        DataType = ftFloat
      end
      item
        Name = 'MIN_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'STORE_FULL_NAME'
        DataType = ftWideString
        Size = 149
      end
      item
        Name = 'BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'ACCOUNT_MIN_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'ACCOUNT_MEASURE_COEF'
        DataType = ftFloat
      end
      item
        Name = 'MEASURE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ACCOUNT_MEASURE_CODE'
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
        Name = 'HAS_DOC_ITEMS'
        DataType = ftFloat
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvProductMinQuantities'
    BeforePost = cdsGridDataBeforePost
    OnFilterRecord = cdsGridDataFilterRecord
    OnNewRecord = cdsGridDataNewRecord
    object cdsGridDataPRODUCT_STORE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_STORE_CODE'
    end
    object cdsGridDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataSTORE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
      FieldName = 'STORE_CODE'
      Required = True
      OnChange = cdsGridDataSTORE_CODEChange
    end
    object cdsGridDataIS_INHERITED: TAbmesFloatField
      FieldName = 'IS_INHERITED'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataPRODUCT_LEVEL: TAbmesFloatField
      FieldName = 'PRODUCT_LEVEL'
    end
    object cdsGridDataMIN_QUANTITY: TAbmesFloatField
      DisplayLabel = #1052#1080#1085'. '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'MIN_QUANTITY'
      Required = True
      OnChange = cdsGridDataMIN_QUANTITYChange
      DisplayFormat = ',0.##'
      EditFormat = ',0.##'
    end
    object cdsGridDataSTORE_FULL_NAME: TAbmesWideStringField
      DisplayLabel = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
      FieldName = 'STORE_FULL_NAME'
      Size = 149
    end
    object cdsGridDataBEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072
      FieldName = 'BEGIN_DATE'
      Required = True
      OnGetText = cdsGridDataBEGIN_DATEGetText
    end
    object cdsGridDataEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1088#1072#1081#1085#1072' '#1076#1072#1090#1072
      FieldName = 'END_DATE'
      Required = True
    end
    object cdsGridDataACCOUNT_MIN_QUANTITY: TAbmesFloatField
      DisplayLabel = #1052#1080#1085'. '#1089#1095#1077#1090'. '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'ACCOUNT_MIN_QUANTITY'
      ProviderFlags = []
      OnChange = cdsGridDataACCOUNT_MIN_QUANTITYChange
      DisplayFormat = ',0.##'
      EditFormat = ',0.##'
    end
    object cdsGridDataACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
      ProviderFlags = []
    end
    object cdsGridDataMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object cdsGridDataACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsGridDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsGridDataHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_PAST: TAbmesFloatField
      FieldName = 'IS_PAST'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_PRESENT: TAbmesFloatField
      FieldName = 'IS_PRESENT'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_FUTURE: TAbmesFloatField
      FieldName = 'IS_FUTURE'
      FieldValueType = fvtBoolean
    end
    object cdsGridData_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_MEASURE_ABBREV'
      LookupDataSet = cdsMeasures
      LookupKeyFields = 'MEASURE_CODE'
      LookupResultField = 'MEASURE_ABBREV'
      KeyFields = 'MEASURE_CODE'
      Lookup = True
    end
    object cdsGridData_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_ACCOUNT_MEASURE_ABBREV'
      LookupDataSet = cdsMeasures
      LookupKeyFields = 'MEASURE_CODE'
      LookupResultField = 'MEASURE_ABBREV'
      KeyFields = 'ACCOUNT_MEASURE_CODE'
      Lookup = True
    end
    object cdsGridData_MAX_PRODUCT_STORE_CODE: TAggregateField
      FieldName = '_MAX_PRODUCT_STORE_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Max(PRODUCT_STORE_CODE)'
    end
  end
  inherited alActions: TActionList
    Top = 120
    object actWorkMeasure: TAction
      AutoCheck = True
      Checked = True
      GroupIndex = 9
      Hint = #1056#1072#1073#1086#1090#1085#1072' '#1084'.'#1077#1076'.'
      ImageIndex = 23
      OnExecute = actWorkMeasureExecute
    end
    object actAccountMeasure: TAction
      AutoCheck = True
      GroupIndex = 9
      Hint = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1072' '#1084'.'#1077#1076'.'
      ImageIndex = 28
      OnExecute = actAccountMeasureExecute
    end
    object actPastMinQuantities: TAction
      Caption = #1052
      GroupIndex = 2
      Hint = #1052#1080#1085#1072#1083#1080' '#1079#1072#1076#1077#1083#1080
      OnExecute = actPastPresentFutureMinQuantitiesExecute
    end
    object actPresentMinQuantities: TAction
      Caption = #1053
      Checked = True
      GroupIndex = 3
      Hint = #1053#1072#1089#1090#1086#1103#1097#1080' '#1079#1072#1076#1077#1083#1080
      OnExecute = actPastPresentFutureMinQuantitiesExecute
    end
    object actFutureMinQuantities: TAction
      Caption = #1041
      Checked = True
      GroupIndex = 4
      Hint = #1041#1098#1076#1077#1097#1080' '#1079#1072#1076#1077#1083#1080
      OnExecute = actPastPresentFutureMinQuantitiesExecute
    end
  end
  object cdsMeasures: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvMeasures'
    Left = 96
    Top = 96
    object cdsMeasuresMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
  end
end
