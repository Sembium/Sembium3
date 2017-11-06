inherited frEmployeeDisciplineEvents: TfrEmployeeDisciplineEvents
  Width = 820
  Height = 156
  ExplicitWidth = 820
  ExplicitHeight = 156
  object pnlGrid: TPanel [0]
    Left = 0
    Top = 25
    Width = 682
    Height = 131
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object grdDisciplineEvents: TAbmesDBGrid
      Left = 0
      Top = 0
      Width = 682
      Height = 131
      Align = alClient
      DataSource = dsGridData
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'Microsoft Sans Serif'
      FooterFont.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghIncSearch, dghPreferIncSearch]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Microsoft Sans Serif'
      TitleFont.Style = []
      OnDblClick = grdDisciplineEventsDblClick
      OnDrawColumnCell = grdDisciplineEventsDrawColumnCell
      OnGetCellParams = grdDisciplineEventsGetCellParams
      Columns = <
        item
          EditButtons = <>
          FieldName = '_STATUS_NAME'
          Footers = <>
          Title.Caption = #1057#1090#1072#1090#1091#1089
          Width = 65
        end
        item
          Color = 16115403
          EditButtons = <>
          FieldName = 'DISCIPLINE_EVENT_DATE'
          Footers = <>
          Width = 62
        end
        item
          EditButtons = <>
          FieldName = 'DISC_EVENT_TYPE_NAME'
          Footers = <>
          Title.Caption = #1042#1080#1076
          Width = 160
        end
        item
          EditButtons = <>
          FieldName = 'RATING'
          Footers = <>
          Title.Caption = #1060#1072#1082#1090'. '#1090#1086#1095#1082#1080
          Width = 70
        end
        item
          EditButtons = <>
          FieldName = 'DISCIPLINE_EVENT_COMMENT'
          Footers = <>
          Width = 285
        end>
    end
  end
  object pnlButtons: TPanel [1]
    Left = 682
    Top = 25
    Width = 138
    Height = 131
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
    object pnlSummary: TPanel
      Left = 25
      Top = 0
      Width = 113
      Height = 131
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        113
        131)
      object lblTotalNegativeRating: TLabel
        Left = 10
        Top = 2
        Width = 102
        Height = 13
        Caption = #1054#1090#1088#1080#1094'. '#1092#1072#1082#1090'. '#1090#1086#1095#1082#1080
      end
      object lblTotalPositiveRating: TLabel
        Left = 10
        Top = 50
        Width = 103
        Height = 13
        Caption = #1055#1086#1083#1086#1078'. '#1092#1072#1082#1090'. '#1090#1086#1095#1082#1080
      end
      object bvlSummary: TBevel
        Left = 4
        Top = 4
        Width = 6
        Height = 126
        Anchors = [akLeft, akTop, akBottom]
        Shape = bsLeftLine
      end
      object edtTotalNegativeRating: TDBEdit
        Left = 10
        Top = 18
        Width = 101
        Height = 21
        Color = 11579135
        DataField = '_TOTAL_NEGATIVE_RATING'
        DataSource = dsGridData
        ReadOnly = True
        TabOrder = 0
      end
      object edtTotalPositiveRating: TDBEdit
        Left = 9
        Top = 66
        Width = 101
        Height = 21
        Color = 12578515
        DataField = '_TOTAL_POSITIVE_RATING'
        DataSource = dsGridData
        ReadOnly = True
        TabOrder = 1
      end
    end
    object pnlEditButtons: TPanel
      Left = 0
      Top = 0
      Width = 25
      Height = 131
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      object btnAddEvent: TSpeedButton
        Left = 2
        Top = 0
        Width = 23
        Height = 22
        Action = actAddEvent
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
          FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF000000
          FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
          FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
          FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
          0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
          0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        ParentShowHint = False
        ShowHint = True
      end
      object btnEditEvent: TSpeedButton
        Left = 2
        Top = 22
        Width = 23
        Height = 22
        Action = actEditEvent
        Flat = True
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
      end
    end
  end
  object pnlEmployeeDisciplineEventsNavigator: TPanel [2]
    Left = 0
    Top = 0
    Width = 820
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object ToolBar4: TToolBar
      Left = 783
      Top = 0
      Width = 37
      Height = 25
      Align = alRight
      AutoSize = True
      ButtonHeight = 25
      ButtonWidth = 24
      Caption = 'tlbTopGridButtons'
      Images = dmMain.ilActions
      TabOrder = 0
    end
    object navEmployeeDisciplineEvents: TDBColorNavigator
      Left = 0
      Top = 0
      Width = 96
      Height = 25
      DataSource = dsGridData
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alLeft
      Flat = True
      TabOrder = 1
    end
    object tlbTopButtons: TToolBar
      Left = 96
      Top = 0
      Width = 409
      Height = 25
      Align = alLeft
      ButtonHeight = 25
      ButtonWidth = 24
      Images = dmMain.ilActions
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      object sepShowStorno: TToolButton
        Left = 0
        Top = 0
        Width = 8
        ImageIndex = 0
        Style = tbsSeparator
      end
      object btnShowActive: TSpeedButton
        Left = 8
        Top = 0
        Width = 24
        Height = 25
        Action = actShowActive
        AllowAllUp = True
        GroupIndex = 1
        Down = True
        Flat = True
        Transparent = False
      end
      object btnShowPassive: TSpeedButton
        Left = 32
        Top = 0
        Width = 24
        Height = 25
        Action = actShowPassive
        AllowAllUp = True
        GroupIndex = 2
        Flat = True
        Transparent = False
      end
      object btnShowReplaced: TSpeedButton
        Left = 56
        Top = 0
        Width = 24
        Height = 25
        Action = actShowReplaced
        AllowAllUp = True
        GroupIndex = 3
        Flat = True
        ParentShowHint = False
        ShowHint = True
        Transparent = False
      end
      object btnShowCanceled: TSpeedButton
        Left = 80
        Top = 0
        Width = 24
        Height = 25
        Action = actShowCanceled
        AllowAllUp = True
        GroupIndex = 4
        Flat = True
        ParentShowHint = False
        ShowHint = True
        Transparent = False
      end
      object btnShowStorno: TSpeedButton
        Left = 104
        Top = 0
        Width = 24
        Height = 25
        Action = actShowStorno
        AllowAllUp = True
        GroupIndex = 5
        Flat = True
        ParentShowHint = False
        ShowHint = True
        Transparent = False
      end
      object sepDateInterval: TToolButton
        Left = 128
        Top = 0
        Width = 8
        Caption = 'sepDateInterval'
        ImageIndex = 0
        Style = tbsSeparator
      end
      object pnlDateInterval: TPanel
        Left = 136
        Top = 0
        Width = 145
        Height = 25
        BevelOuter = bvNone
        TabOrder = 0
        inline frDateInterval: TfrDateIntervalFrame
          Left = 0
          Top = 2
          Width = 145
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 145
          Constraints.MinHeight = 21
          Constraints.MinWidth = 145
          TabOrder = 0
          TabStop = True
          ExplicitTop = 2
          inherited dsData: TDataSource
            DataSet = cdsFilter
            OnDataChange = frDateIntervaldsDataDataChange
          end
        end
      end
      object sepDocs: TToolButton
        Left = 281
        Top = 0
        Width = 8
        Caption = 'sepDocs'
        Style = tbsSeparator
      end
      object btnDocs: TSpeedButton
        Left = 289
        Top = 0
        Width = 37
        Height = 25
        Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1086#1090#1086' '#1044#1080#1089#1094#1080#1087#1083#1080#1085#1072#1088#1085#1086' '#1057#1098#1073#1080#1090#1080#1077
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
      object sepPrint: TToolButton
        Left = 326
        Top = 0
        Width = 8
        Caption = 'sepPrint'
        ImageIndex = 0
        Style = tbsSeparator
      end
      object btnPrint: TToolButton
        Left = 334
        Top = 0
        Action = actPrint
      end
    end
  end
  inherited alActions: TActionList
    Top = 80
    object actAddEvent: TAction
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077'...'
      ImageIndex = 4
      OnExecute = actAddEventExecute
      OnUpdate = actAddEventUpdate
    end
    object actEditEvent: TAction
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077
      ImageIndex = 6
      OnExecute = actEditEventExecute
      OnUpdate = actEditEventUpdate
    end
    object actPrint: TAction
      Hint = #1055#1077#1095#1072#1090
      ImageIndex = 2
      OnExecute = actPrintExecute
      OnUpdate = actPrintUpdate
    end
    object actShowActive: TAction
      Caption = #1040
      Checked = True
      GroupIndex = 1
      Hint = #1040#1082#1090#1080#1074#1085#1080
      OnExecute = actShowActiveExecute
    end
    object actShowPassive: TAction
      Caption = #1055
      GroupIndex = 2
      Hint = #1055#1072#1089#1080#1074#1085#1080
      OnExecute = actShowPassiveExecute
    end
    object actShowReplaced: TAction
      Caption = #1047
      GroupIndex = 3
      Hint = #1047#1072#1084#1077#1085#1077#1085#1080
      OnExecute = actShowReplacedExecute
    end
    object actShowCanceled: TAction
      Caption = #1054
      GroupIndex = 4
      Hint = #1054#1090#1084#1077#1085#1077#1085#1080
      OnExecute = actShowCanceledExecute
    end
    object actShowStorno: TAction
      Caption = #1040#1085
      GroupIndex = 5
      Hint = #1040#1085#1091#1083#1080#1088#1072#1085#1080
      OnExecute = actShowStornoExecute
    end
  end
  inherited dsData: TDataSource
    Top = 80
  end
  object cdsGridData: TAbmesClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Filtered = True
    FieldDefs = <
      item
        Name = 'EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DISCIPLINE_EVENT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DISC_EVENT_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DISC_EVENT_TYPE_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'DISCIPLINE_EVENT_COMMENT'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DISCIPLINE_EVENT_DATE'
        DataType = ftTimeStamp
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end>
    StoreDefs = True
    BeforePost = cdsGridDataBeforePost
    OnCalcFields = cdsGridDataCalcFields
    OnFilterRecord = cdsGridDataFilterRecord
    OnNewRecord = cdsGridDataNewRecord
    Left = 136
    Top = 40
    object cdsGridDataEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object cdsGridDataDISCIPLINE_EVENT_CODE: TAbmesFloatField
      FieldName = 'DISCIPLINE_EVENT_CODE'
    end
    object cdsGridDataDISC_EVENT_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1080#1076
      FieldName = 'DISC_EVENT_TYPE_CODE'
      OnChange = cdsGridDataDISC_EVENT_TYPE_CODEChange
    end
    object cdsGridDataDISCIPLINE_EVENT_STATE_CODE: TAbmesFloatField
      FieldName = 'DISCIPLINE_EVENT_STATE_CODE'
    end
    object cdsGridDataDISCIPLINE_EVENT_COMMENT: TAbmesWideStringField
      DisplayLabel = #1050#1086#1084#1077#1085#1090#1072#1088
      FieldName = 'DISCIPLINE_EVENT_COMMENT'
      Size = 100
    end
    object cdsGridDataDISCIPLINE_EVENT_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'DISCIPLINE_EVENT_DATE'
      OnChange = cdsGridDataDISCIPLINE_EVENT_DATEChange
    end
    object cdsGridDataRATING: TAbmesFloatField
      FieldName = 'RATING'
      ProviderFlags = []
    end
    object cdsGridDataIS_NEGATIVE: TAbmesFloatField
      FieldName = 'IS_NEGATIVE'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_POSITIVE: TAbmesFloatField
      FieldName = 'IS_POSITIVE'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_ACTIVE: TAbmesFloatField
      FieldName = 'IS_ACTIVE'
      ProviderFlags = []
      DisplayBoolValues = #1040#1082#1090#1080#1074#1085#1086';'#1055#1072#1089#1080#1074#1085#1086
      FieldValueType = fvtBoolean
    end
    object cdsGridDataAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1059#1089#1090#1072#1085#1086#1074#1080#1083
      FieldName = 'AUTHORIZE_EMPLOYEE_CODE'
    end
    object cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsGridDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsGridDataHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsGridDataCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object cdsGridDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsGridDataCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
      DisplayFormat = 'h:nn'
      AbmesEditFormat = 'h:nn'
    end
    object cdsGridDataSTORNO_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'STORNO_EMPLOYEE_CODE'
    end
    object cdsGridDataSTORNO_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORNO_DATE'
    end
    object cdsGridDataSTORNO_TIME: TAbmesSQLTimeStampField
      FieldName = 'STORNO_TIME'
      DisplayFormat = 'h:nn'
      AbmesEditFormat = 'h:nn'
    end
    object cdsGridDataIS_NOT_STORNO: TAbmesFloatField
      FieldName = 'IS_NOT_STORNO'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsGridDataOLD_DISCIPLINE_EVENT_CODE: TAbmesFloatField
      FieldName = 'OLD_DISCIPLINE_EVENT_CODE'
    end
    object cdsGridDataDIRECT_STORNO: TAbmesFloatField
      FieldName = 'DIRECT_STORNO'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsGridDataSTATUS_CODE: TAbmesFloatField
      FieldName = 'STATUS_CODE'
    end
    object cdsGridDataIS_IN_NORMAL_STATE: TAbmesFloatField
      FieldName = 'IS_IN_NORMAL_STATE'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataDISC_EVENT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DISC_EVENT_TYPE_NAME'
      Size = 100
    end
    object cdsGridDataACTIVE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'ACTIVE_DATE_UNIT_CODE'
    end
    object cdsGridDataACTIVE_DATE_UNIT_COUNT: TAbmesFloatField
      FieldName = 'ACTIVE_DATE_UNIT_COUNT'
    end
    object cdsGridDataCOLOR: TAbmesFloatField
      FieldName = 'COLOR'
    end
    object cdsGridDataBACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'BACKGROUND_COLOR'
    end
    object cdsGridData_STATUS_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_STATUS_NAME'
      Calculated = True
    end
    object cdsGridData_DISCIPLINE_EVENT_STATE: TAbmesWideStringField
      DisplayLabel = #1057#1098#1089#1090#1086#1103#1085#1080#1077
      FieldKind = fkLookup
      FieldName = '_DISCIPLINE_EVENT_STATE'
      LookupDataSet = cdsDisciplineEventStates
      LookupKeyFields = 'DISCIPLINE_EVENT_STATE_CODE'
      LookupResultField = 'DISCIPLINE_EVENT_STATE_NAME'
      KeyFields = 'DISCIPLINE_EVENT_STATE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsGridData_MAX_DISCIPLINE_EVENT_CODE: TAggregateField
      FieldName = '_MAX_DISCIPLINE_EVENT_CODE'
      Active = True
      Expression = 'Max(DISCIPLINE_EVENT_CODE)'
    end
    object cdsGridData_TOTAL_POSITIVE_RATING: TAggregateField
      Alignment = taRightJustify
      FieldName = '_TOTAL_POSITIVE_RATING'
      Active = True
      Expression = 
        'Sum(IS_ACTIVE * IS_NOT_STORNO * IS_IN_NORMAL_STATE * IS_POSITIVE' +
        ' * RATING)'
    end
    object cdsGridData_TOTAL_NEGATIVE_RATING: TAggregateField
      Alignment = taRightJustify
      FieldName = '_TOTAL_NEGATIVE_RATING'
      Active = True
      Expression = 
        'Sum(IS_ACTIVE * IS_NOT_STORNO * IS_IN_NORMAL_STATE * IS_NEGATIVE' +
        ' * RATING)'
    end
  end
  object dsGridData: TDataSource
    DataSet = cdsGridData
    Left = 136
    Top = 72
  end
  object cdsFilter: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsFilterCalcFields
    Left = 256
    Top = 64
    object cdsFilterBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object cdsFilterEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object cdsFilter_EMPLOYEE_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_EMPLOYEE_NAME'
      Size = 100
      Calculated = True
    end
    object cdsFilter_DATE_INTERVAL: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_DATE_INTERVAL'
      Size = 50
      Calculated = True
    end
    object cdsFilter_EMPLOYEE_NO: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_EMPLOYEE_NO'
      Calculated = True
    end
  end
  object cdsDisciplineEventStates: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDisciplineEventStates'
    ConnectionBroker = dmMain.conHumanResource
    Left = 208
    Top = 56
    object cdsDisciplineEventStatesDISCIPLINE_EVENT_STATE_CODE: TAbmesFloatField
      FieldName = 'DISCIPLINE_EVENT_STATE_CODE'
    end
    object cdsDisciplineEventStatesDISCIPLINE_EVENT_STATE_NAME: TAbmesWideStringField
      FieldName = 'DISCIPLINE_EVENT_STATE_NAME'
      Size = 100
    end
  end
end
