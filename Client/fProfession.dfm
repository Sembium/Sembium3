inherited fmProfession: TfmProfession
  Left = 501
  Top = 256
  ActiveControl = edtProfessionName
  Caption = #1055#1088#1086#1094#1077#1089#1085#1072' '#1056#1086#1083#1103' - %s'
  ClientHeight = 317
  ClientWidth = 489
  PixelsPerInch = 96
  TextHeight = 13
  object bvlMain: TBevel [0]
    Left = 8
    Top = 8
    Width = 473
    Height = 57
    Anchors = [akLeft, akTop, akRight]
    Shape = bsFrame
  end
  object lblProfessionNo: TLabel [1]
    Left = 16
    Top = 16
    Width = 54
    Height = 13
    Caption = #1057#1090#1088#1091#1082#1090'. No'
  end
  inherited pnlBottomButtons: TPanel
    Top = 282
    Width = 489
    TabOrder = 6
    inherited pnlOKCancel: TPanel
      Left = 221
    end
    inherited pnlClose: TPanel
      Left = 132
    end
    inherited pnlApply: TPanel
      Left = 400
    end
  end
  inherited pnlMain: TPanel
    Left = 18
    Top = 88
    Width = 454
    Height = 142
    Align = alNone
    Anchors = [akLeft, akTop, akRight]
    BorderWidth = 0
    TabOrder = 5
    inherited pnlGrid: TPanel
      Left = 0
      Top = 0
      Width = 454
      Height = 142
      inherited pnlNavigator: TPanel
        Width = 454
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
        object tlbPastPresentFuturePeriods: TToolBar
          Left = 248
          Top = 0
          Width = 77
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Caption = 'tlbPastPresentFuturePeriods'
          Images = dmMain.ilActions
          TabOrder = 3
          object sepPastPresentFuturePeriods: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepPastPresentFuturePeriods'
            Style = tbsSeparator
          end
          object btnPastPeriods: TSpeedButton
            Left = 8
            Top = 0
            Width = 23
            Height = 24
            Action = actPastPeriods
            AllowAllUp = True
            GroupIndex = 1
            Flat = True
            Transparent = False
          end
          object btnPresentPeriods: TSpeedButton
            Left = 31
            Top = 0
            Width = 23
            Height = 24
            Action = actPresentPeriods
            AllowAllUp = True
            GroupIndex = 2
            Down = True
            Flat = True
            Transparent = False
          end
          object btnFuturePeriods: TSpeedButton
            Left = 54
            Top = 0
            Width = 23
            Height = 24
            Action = actFuturePeriods
            AllowAllUp = True
            GroupIndex = 3
            Down = True
            Flat = True
            Transparent = False
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 454
        Height = 118
        AutoFitColWidths = True
        Columns = <
          item
            AutoFitColWidth = False
            Color = 16115403
            EditButtons = <>
            FieldName = 'BEGIN_DATE'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1042#1088#1084#1048#1085#1090
            Width = 125
          end
          item
            EditButtons = <>
            FieldName = 'HOUR_PRICE'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1042#1045#1062' (XXX/'#1095#1072#1089')'
            Width = 102
          end
          item
            Alignment = taCenter
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'USED_BY_EMPLOYEES'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1057#1083#1091#1078'.'
            Width = 31
          end
          item
            Alignment = taCenter
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'USED_BY_TEAMS'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1045#1082#1080#1087
            Width = 31
          end>
      end
    end
  end
  object pnlDocs: TToolBar [4]
    Left = 432
    Top = 31
    Width = 37
    Height = 22
    Align = alNone
    AutoSize = True
    ButtonWidth = 24
    Images = dmMain.ilActions
    TabOrder = 3
    object btnDocs: TSpeedButton
      Left = 0
      Top = 0
      Width = 37
      Height = 22
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1055#1088#1086#1094#1077#1089#1085#1072#1090#1072' '#1056#1086#1083#1103
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
  end
  object pcMain: TPageControl [5]
    Left = 8
    Top = 71
    Width = 473
    Height = 201
    ActivePage = tsDateIntervals
    TabOrder = 4
    object tsDateIntervals: TTabSheet
      Caption = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083#1080
    end
    object tsPrcBaseOps: TTabSheet
      Caption = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1085#1080' '#1054#1087#1077#1088#1072#1090#1086#1088#1080
      ImageIndex = 1
      object pnlPrcBaseOps: TPanel
        Left = 0
        Top = 0
        Width = 465
        Height = 173
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object pnlPrcBaseOpsNavigator: TPanel
          Left = 0
          Top = 0
          Width = 465
          Height = 24
          Align = alTop
          BevelOuter = bvNone
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object navPrcBaseOps: TDBColorNavigator
            Left = 0
            Top = 0
            Width = 168
            Height = 24
            DataSource = dsProfessionBaseOps
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit]
            Align = alLeft
            Flat = True
            TabOrder = 0
            BeforeAction = navPrcBaseOpsBeforeAction
          end
        end
        object grdPrcBaseOps: TAbmesDBGrid
          Left = 0
          Top = 24
          Width = 465
          Height = 149
          Align = alClient
          DataGrouping.GroupLevels = <>
          DataSource = dsProfessionBaseOps
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'Microsoft Sans Serif'
          FooterFont.Style = []
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch]
          ReadOnly = True
          RowDetailPanel.Color = clBtnFace
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Microsoft Sans Serif'
          TitleFont.Style = []
          OnDblClick = grdPrcBaseOpsDblClick
          OnDrawColumnCell = grdDataDrawColumnCell
          OnSortMarkingChanged = grdDataSortMarkingChanged
          Columns = <
            item
              EditButtons = <>
              FieldName = '_PRC_BASE_OP_FULL_NO'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1057#1090#1088#1091#1082#1090'. No'
              Width = 71
            end
            item
              EditButtons = <>
              FieldName = '_PRC_BASE_OP_NAME'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1055#1098#1083#1085#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              Width = 237
            end
            item
              EditButtons = <>
              FieldName = '_PRC_BASE_OP_SHORT_NAME'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1050#1088#1072#1090#1082#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              Width = 122
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
    object tsPrcConcreteOps: TTabSheet
      Caption = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1085#1080' '#1054#1087#1077#1088#1072#1085#1090#1080
      ImageIndex = 2
      object pnlPrcConcreteOps: TPanel
        Left = 0
        Top = 0
        Width = 465
        Height = 173
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object pnlPrcConcreteOpsNavigator: TPanel
          Left = 0
          Top = 0
          Width = 465
          Height = 24
          Align = alTop
          BevelOuter = bvNone
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object navPrcConcreteOps: TDBColorNavigator
            Left = 0
            Top = 0
            Width = 168
            Height = 24
            DataSource = dsProfessionConcreteOps
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit]
            Align = alLeft
            Flat = True
            TabOrder = 0
            BeforeAction = navPrcConcreteOpsBeforeAction
          end
        end
        object grdPrcConcreteOps: TAbmesDBGrid
          Left = 0
          Top = 24
          Width = 465
          Height = 149
          Align = alClient
          DataGrouping.GroupLevels = <>
          DataSource = dsProfessionConcreteOps
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'Microsoft Sans Serif'
          FooterFont.Style = []
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch]
          ReadOnly = True
          RowDetailPanel.Color = clBtnFace
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Microsoft Sans Serif'
          TitleFont.Style = []
          OnDblClick = grdPrcConcreteOpsDblClick
          OnDrawColumnCell = grdDataDrawColumnCell
          OnSortMarkingChanged = grdDataSortMarkingChanged
          Columns = <
            item
              EditButtons = <>
              FieldName = '_PRC_CONCRETE_OP_FULL_NO'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1057#1090#1088#1091#1082#1090'. No'
              Width = 71
            end
            item
              EditButtons = <>
              FieldName = '_PRC_CONCRETE_OP_NAME'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1055#1098#1083#1085#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              Width = 237
            end
            item
              EditButtons = <>
              FieldName = '_PRC_CONCRETE_OP_SHORT_NAME'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1050#1088#1072#1090#1082#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              Width = 122
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
  end
  object edtProfessionLocalNo: TDBEdit [6]
    Left = 98
    Top = 32
    Width = 31
    Height = 21
    DataField = 'PROFESSION_LOCAL_NO'
    DataSource = dsData
    TabOrder = 1
  end
  object edtParentProfessionFullNo: TDBEdit [7]
    Left = 16
    Top = 32
    Width = 81
    Height = 21
    TabStop = False
    BiDiMode = bdLeftToRight
    Color = clBtnFace
    DataField = 'PARENT_FULL_NO'
    DataSource = dsData
    ParentBiDiMode = False
    ReadOnly = True
    TabOrder = 0
  end
  object pnlProfessionNameAndKind: TPanel [8]
    Left = 134
    Top = 16
    Width = 299
    Height = 40
    BevelOuter = bvNone
    TabOrder = 2
    object pnlProfessionName: TPanel
      Left = 0
      Top = 0
      Width = 187
      Height = 40
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        187
        40)
      object lblName: TLabel
        Left = -1
        Top = 0
        Width = 76
        Height = 13
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        FocusControl = edtProfessionName
      end
      object edtProfessionName: TDBEdit
        Left = -1
        Top = 16
        Width = 182
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'PROFESSION_NAME'
        DataSource = dsData
        TabOrder = 0
      end
    end
    object pnlProfessionKind: TPanel
      Left = 187
      Top = 0
      Width = 112
      Height = 40
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object lblProfessionKind: TLabel
        Left = 3
        Top = 0
        Width = 19
        Height = 13
        Caption = #1042#1080#1076
      end
      object cbProfessionKind: TJvDBLookupCombo
        Left = 3
        Top = 16
        Width = 105
        Height = 21
        DropDownWidth = 200
        DeleteKeyClear = False
        DataField = '_PROFESSION_KIND_NAME'
        DataSource = dsData
        TabOrder = 0
      end
    end
  end
  inherited dsGridData: TDataSource
    Top = 184
  end
  inherited cdsGridData: TAbmesClientDataSet
    DataSetField = cdsDataqryProfessionPeriods
    Filtered = True
    FieldDefs = <
      item
        Name = 'PROFESSION_PERIOD_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PROFESSION_CODE'
        DataType = ftFloat
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
        Name = 'HOUR_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'USED_BY_EMPLOYEES'
        DataType = ftFloat
      end
      item
        Name = 'USED_BY_TEAMS'
        DataType = ftFloat
      end
      item
        Name = 'IS_PAST'
        DataType = ftFloat
      end
      item
        Name = 'IS_PRESENT'
        DataType = ftFloat
      end
      item
        Name = 'IS_FUTURE'
        DataType = ftFloat
      end>
    BeforeInsert = cdsGridDataBeforeInsert
    BeforePost = cdsGridDataBeforePost
    OnFilterRecord = cdsGridDataFilterRecord
    OnNewRecord = cdsGridDataNewRecord
    Top = 184
    object cdsGridDataPROFESSION_PERIOD_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_PERIOD_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsGridDataPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
      Required = True
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
    object cdsGridDataHOUR_PRICE: TAbmesFloatField
      FieldName = 'HOUR_PRICE'
      Required = True
      DisplayFormat = ',0.00'
    end
    object cdsGridDataUSED_BY_EMPLOYEES: TAbmesFloatField
      FieldName = 'USED_BY_EMPLOYEES'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataUSED_BY_TEAMS: TAbmesFloatField
      FieldName = 'USED_BY_TEAMS'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_PAST: TAbmesFloatField
      FieldName = 'IS_PAST'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_PRESENT: TAbmesFloatField
      FieldName = 'IS_PRESENT'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_FUTURE: TAbmesFloatField
      FieldName = 'IS_FUTURE'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
  end
  inherited alActions: TActionList
    Left = 416
    Top = 136
    inherited actForm: TAction
      Caption = #1055#1088#1086#1094#1077#1089#1085#1072' '#1056#1086#1083#1103' - %s'
    end
    object actPastPeriods: TAction
      Caption = #1052
      GroupIndex = 1
      Hint = #1052#1080#1085#1072#1083#1080
      OnExecute = actPastPresentFuturePeriodsExecute
    end
    object actPresentPeriods: TAction
      Caption = #1053
      Checked = True
      GroupIndex = 2
      Hint = #1053#1072#1089#1090#1086#1103#1097#1080
      OnExecute = actPastPresentFuturePeriodsExecute
    end
    object actFuturePeriods: TAction
      Caption = #1041
      Checked = True
      GroupIndex = 3
      Hint = #1041#1098#1076#1077#1097#1080
      OnExecute = actPastPresentFuturePeriodsExecute
    end
    object actInsertConcreteOp: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1077#1085' '#1054#1087#1077#1088#1072#1085#1090'...'
      OnExecute = actInsertConcreteOpExecute
      OnUpdate = actInsertConcreteOpUpdate
    end
    object actEditConcreteOp: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077' '#1085#1072' '#1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1077#1085' '#1054#1087#1077#1088#1072#1085#1090'...'
      OnExecute = actEditConcreteOpExecute
      OnUpdate = actEditConcreteOpUpdate
    end
    object actInsertBaseOp: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1077#1085' '#1054#1087#1077#1088#1072#1090#1086#1088'...'
      OnExecute = actInsertBaseOpExecute
      OnUpdate = actInsertBaseOpUpdate
    end
    object actEditBaseOp: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077' '#1085#1072' '#1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1077#1085' '#1054#1087#1077#1088#1072#1090#1086#1088'...'
      OnExecute = actEditBaseOpExecute
      OnUpdate = actEditBaseOpUpdate
    end
    object actDoc: TAction
      Caption = 'actDoc'
      OnExecute = actDocExecute
      OnUpdate = actDocUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Top = 216
  end
  inherited dsGridDataParams: TDataSource
    Top = 216
  end
  inherited dsData: TDataSource
    Top = 152
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conHumanResource
    Params = <
      item
        DataType = ftFloat
        Name = 'PROFESSION_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvProfession'
    BeforePost = cdsDataBeforePost
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    Top = 152
    object cdsDataPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDataPROFESSION_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'PROFESSION_NAME'
      Required = True
      Size = 100
    end
    object cdsDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = []
    end
    object cdsDataqryProfessionPeriods: TDataSetField
      FieldName = 'qryProfessionPeriods'
    end
    object cdsDataqryProfessionBaseOps: TDataSetField
      FieldName = 'qryProfessionBaseOps'
    end
    object cdsDataqryProfessionConcreteOps: TDataSetField
      FieldName = 'qryProfessionConcreteOps'
    end
    object cdsDataPROFESSION_KIND_CODE: TAbmesFloatField
      DisplayLabel = #1042#1080#1076
      FieldName = 'PROFESSION_KIND_CODE'
      OnChange = cdsDataPROFESSION_KIND_CODEChange
      OnValidate = cdsDataPROFESSION_KIND_CODEValidate
    end
    object cdsData_PROFESSION_KIND_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_PROFESSION_KIND_NAME'
      LookupDataSet = cdsProfessionKinds
      LookupKeyFields = 'PROFESSION_KIND_CODE'
      LookupResultField = 'PROFESSION_KIND_NAME'
      KeyFields = 'PROFESSION_KIND_CODE'
      Size = 200
      Lookup = True
    end
    object cdsData_PROFESSION_TYPE_CODE: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_PROFESSION_TYPE_CODE'
      LookupDataSet = cdsProfessionKinds
      LookupKeyFields = 'PROFESSION_KIND_CODE'
      LookupResultField = 'PROFESSION_TYPE_CODE'
      KeyFields = 'PROFESSION_KIND_CODE'
      Lookup = True
    end
    object cdsDataPROFESSION_LOCAL_NO: TAbmesFloatField
      FieldName = 'PROFESSION_LOCAL_NO'
      Required = True
    end
    object cdsDataPARENT_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'PARENT_PROFESSION_CODE'
    end
    object cdsDataPARENT_FULL_NO: TAbmesWideStringField
      FieldName = 'PARENT_FULL_NO'
      Size = 100
    end
    object cdsDataIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsDataHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
    end
  end
  inherited pmInsertMenu: TPopupMenu
    Left = 416
    Top = 192
  end
  object cdsProfessionKinds: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <>
    ProviderName = 'prvProfessionKinds'
    Left = 360
    Top = 216
    object cdsProfessionKindsPROFESSION_KIND_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_KIND_CODE'
      Required = True
    end
    object cdsProfessionKindsPROFESSION_KIND_NO: TAbmesFloatField
      FieldName = 'PROFESSION_KIND_NO'
      Required = True
    end
    object cdsProfessionKindsPROFESSION_KIND_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_KIND_NAME'
      Required = True
      Size = 200
    end
    object cdsProfessionKindsPROFESSION_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_TYPE_CODE'
      Required = True
    end
  end
  object cdsProfessionBaseOps: TAbmesClientDataSet
    Aggregates = <>
    DataSetField = cdsDataqryProfessionBaseOps
    Params = <>
    OnNewRecord = cdsProfessionBaseOpsNewRecord
    KeyViolationErrorMessage = #1042#1077#1095#1077' '#1089#1098#1097#1077#1089#1090#1074#1091#1074#1072' '#1090#1072#1082#1098#1074' '#1079#1072#1087#1080#1089
    Left = 80
    Top = 184
    object cdsProfessionBaseOpsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProfessionBaseOpsPRC_BASE_OP_CODE: TAbmesFloatField
      DisplayLabel = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1077#1085' '#1054#1087#1077#1088#1072#1090#1086#1088
      FieldName = 'PRC_BASE_OP_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnChange = cdsProfessionBaseOpsPRC_BASE_OP_CODEChange
    end
    object cdsProfessionBaseOpsPRC_BASE_OP_FORMATTED_FULL_NO: TAbmesWideStringField
      FieldName = 'PRC_BASE_OP_FORMATTED_FULL_NO'
      Size = 250
    end
    object cdsProfessionBaseOps_PRC_BASE_OP_NAME: TAbmesWideStringField
      DisplayLabel = #1087#1098#1083#1085#1086' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldKind = fkLookup
      FieldName = '_PRC_BASE_OP_NAME'
      LookupDataSet = cdsProcessBaseOperations
      LookupKeyFields = 'PRC_BASE_OP_CODE'
      LookupResultField = 'PRC_BASE_OP_NAME'
      KeyFields = 'PRC_BASE_OP_CODE'
      Size = 100
      Lookup = True
    end
    object cdsProfessionBaseOps_PRC_BASE_OP_SHORT_NAME: TAbmesWideStringField
      DisplayLabel = #1082#1088#1072#1090#1082#1086' '#1085#1072#1080#1084'.'
      FieldKind = fkLookup
      FieldName = '_PRC_BASE_OP_SHORT_NAME'
      LookupDataSet = cdsProcessBaseOperations
      LookupKeyFields = 'PRC_BASE_OP_CODE'
      LookupResultField = 'PRC_BASE_OP_SHORT_NAME'
      KeyFields = 'PRC_BASE_OP_CODE'
      Size = 100
      Lookup = True
    end
    object cdsProfessionBaseOps_PRC_BASE_OP_FULL_NO: TAbmesWideStringField
      DisplayLabel = #1089#1090#1088'. '#1085#1086#1084#1077#1088
      FieldKind = fkLookup
      FieldName = '_PRC_BASE_OP_FULL_NO'
      LookupDataSet = cdsProcessBaseOperations
      LookupKeyFields = 'PRC_BASE_OP_CODE'
      LookupResultField = 'PRC_BASE_OP_FULL_NO'
      KeyFields = 'PRC_BASE_OP_CODE'
      Size = 100
      Lookup = True
    end
  end
  object cdsProfessionConcreteOps: TAbmesClientDataSet
    Aggregates = <>
    DataSetField = cdsDataqryProfessionConcreteOps
    Params = <>
    OnNewRecord = cdsProfessionConcreteOpsNewRecord
    KeyViolationErrorMessage = #1042#1077#1095#1077' '#1089#1098#1097#1077#1089#1090#1074#1091#1074#1072' '#1090#1072#1082#1098#1074' '#1079#1072#1087#1080#1089
    Left = 80
    Top = 216
    object cdsProfessionConcreteOpsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProfessionConcreteOpsPRC_CONCRETE_OP_CODE: TAbmesFloatField
      DisplayLabel = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1077#1085' '#1054#1087#1077#1088#1072#1085#1090
      FieldName = 'PRC_CONCRETE_OP_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnChange = cdsProfessionConcreteOpsPRC_CONCRETE_OP_CODEChange
    end
    object cdsProfessionConcreteOpsPRC_CONCR_OP_FORMATTED_FULL_NO: TAbmesWideStringField
      FieldName = 'PRC_CONCR_OP_FORMATTED_FULL_NO'
      ProviderFlags = []
      Size = 250
    end
    object cdsProfessionConcreteOps_PRC_CONCRETE_OP_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_PRC_CONCRETE_OP_NAME'
      LookupDataSet = cdsProcessConcreteOperations
      LookupKeyFields = 'PRC_CONCRETE_OP_CODE'
      LookupResultField = 'PRC_CONCRETE_OP_NAME'
      KeyFields = 'PRC_CONCRETE_OP_CODE'
      Size = 100
      Lookup = True
    end
    object cdsProfessionConcreteOps_PRC_CONCRETE_OP_SHORT_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_PRC_CONCRETE_OP_SHORT_NAME'
      LookupDataSet = cdsProcessConcreteOperations
      LookupKeyFields = 'PRC_CONCRETE_OP_CODE'
      LookupResultField = 'PRC_CONCRETE_OP_SHORT_NAME'
      KeyFields = 'PRC_CONCRETE_OP_CODE'
      Size = 100
      Lookup = True
    end
    object cdsProfessionConcreteOps_PRC_CONCRETE_OP_FULL_NO: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_PRC_CONCRETE_OP_FULL_NO'
      LookupDataSet = cdsProcessConcreteOperations
      LookupKeyFields = 'PRC_CONCRETE_OP_CODE'
      LookupResultField = 'PRC_CONCRETE_OP_FULL_NO'
      KeyFields = 'PRC_CONCRETE_OP_CODE'
      Size = 100
      Lookup = True
    end
  end
  object dsProfessionBaseOps: TDataSource
    DataSet = cdsProfessionBaseOps
    Left = 112
    Top = 184
  end
  object dsProfessionConcreteOps: TDataSource
    DataSet = cdsProfessionConcreteOps
    Left = 112
    Top = 216
  end
  object cdsProcessBaseOperations: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conProcesses
    Params = <>
    ProviderName = 'prvProcessBaseOperations'
    ReadOnly = True
    Left = 176
    Top = 181
    object cdsProcessBaseOperationsPRC_BASE_OP_CODE: TAbmesFloatField
      FieldName = 'PRC_BASE_OP_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProcessBaseOperationsPRC_BASE_OP_LOCAL_NO: TAbmesFloatField
      FieldName = 'PRC_BASE_OP_LOCAL_NO'
      Required = True
    end
    object cdsProcessBaseOperationsPRC_BASE_OP_NAME: TAbmesWideStringField
      FieldName = 'PRC_BASE_OP_NAME'
      Required = True
      Size = 100
    end
    object cdsProcessBaseOperationsPRC_BASE_OP_SHORT_NAME: TAbmesWideStringField
      FieldName = 'PRC_BASE_OP_SHORT_NAME'
      Required = True
      Size = 100
    end
    object cdsProcessBaseOperationsPRC_BASE_OP_FULL_NO: TAbmesWideStringField
      FieldName = 'PRC_BASE_OP_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
    object cdsProcessBaseOperationsPRC_BASE_OP_FORMATTED_FULL_NO: TAbmesWideStringField
      FieldName = 'PRC_BASE_OP_FORMATTED_FULL_NO'
      ProviderFlags = []
      Size = 250
    end
  end
  object cdsProcessConcreteOperations: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conProcesses
    Params = <>
    ProviderName = 'prvProcessConcreteOperations'
    ReadOnly = True
    Left = 176
    Top = 213
    object cdsProcessConcreteOperationsPRC_CONCRETE_OP_CODE: TAbmesFloatField
      FieldName = 'PRC_CONCRETE_OP_CODE'
      Required = True
    end
    object cdsProcessConcreteOperationsPRC_CONCRETE_OP_NAME: TAbmesWideStringField
      FieldName = 'PRC_CONCRETE_OP_NAME'
      Required = True
      Size = 100
    end
    object cdsProcessConcreteOperationsPRC_CONCRETE_OP_SHORT_NAME: TAbmesWideStringField
      FieldName = 'PRC_CONCRETE_OP_SHORT_NAME'
      Required = True
      Size = 100
    end
    object cdsProcessConcreteOperationsPRC_CONCRETE_OP_FULL_NO: TAbmesWideStringField
      FieldName = 'PRC_CONCRETE_OP_FULL_NO'
      Size = 100
    end
    object cdsProcessConcreteOperationsPRC_CONCR_OP_FORMATTED_FULL_NO: TAbmesWideStringField
      FieldName = 'PRC_CONCR_OP_FORMATTED_FULL_NO'
      Size = 250
    end
  end
end
