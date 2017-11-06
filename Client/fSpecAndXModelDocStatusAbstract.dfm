inherited fmSpecAndXModelDocStatusAbstract: TfmSpecAndXModelDocStatusAbstract
  Left = 299
  Top = 191
  ActiveControl = grdLines
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSizeable
  Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1085#1080' '#1080' '#1052#1072#1088#1096#1088#1091#1090#1085#1080' '#1052#1048#1048#1054' '#1085#1072' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' - %s'
  ClientHeight = 573
  ClientWidth = 1015
  PixelsPerInch = 96
  TextHeight = 13
  object sptMain: TSplitter [0]
    Left = 407
    Top = 0
    Height = 530
    Align = alRight
    MinSize = 300
  end
  inherited pnlBottomButtons: TPanel
    Top = 530
    Width = 1015
    Height = 43
    TabOrder = 2
    inherited pnlOKCancel: TPanel
      Left = 747
      Height = 43
      inherited btnOK: TBitBtn
        Top = 10
      end
      inherited btnCancel: TBitBtn
        Top = 10
      end
    end
    inherited pnlClose: TPanel
      Left = 658
      Height = 43
      inherited btnClose: TBitBtn
        Top = 10
      end
    end
    inherited pnlApply: TPanel
      Left = 926
      Height = 43
      inherited btnApply: TBitBtn
        Top = 10
      end
    end
  end
  object pnlModel: TPanel [2]
    Left = 410
    Top = 0
    Width = 605
    Height = 530
    Align = alRight
    BevelOuter = bvNone
    Constraints.MinWidth = 605
    TabOrder = 1
    object sptModel: TSplitter
      Left = 0
      Top = 330
      Width = 605
      Height = 2
      Cursor = crVSplit
      Align = alBottom
      MinSize = 62
      OnCanResize = DocSplittersCanResize
    end
    object pnlModelStruct: TPanel
      Left = 0
      Top = 22
      Width = 605
      Height = 308
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 3
      object grdModel: TAbmesDBGrid
        Left = 0
        Top = 0
        Width = 605
        Height = 285
        Align = alClient
        AutoFitColWidths = True
        DataSource = dsDSModel
        DynProps = <>
        EvenRowColor = 15790320
        FooterParams.Color = clWindow
        IndicatorOptions = [gioShowRowIndicatorEh]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        OnDrawColumnCell = grdModelDrawColumnCell
        OnGetCellParams = grdModelGetCellParams
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = '_SHOW_NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 159
          end
          item
            AutoFitColWidth = False
            DynProps = <>
            EditButtons = <>
            FieldName = 'WORKDAYS'
            Footers = <>
            Title.Caption = #1056#1072#1073'.'#1076#1085#1080
            Width = 46
          end
          item
            AutoFitColWidth = False
            DynProps = <>
            EditButtons = <>
            FieldName = 'DEPT_IDENTIFIER'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1058#1055
            Width = 70
          end
          item
            AutoFitColWidth = False
            DynProps = <>
            EditButtons = <>
            FieldName = 'PROGRAM_TOOL_REQUIREMENT_CODE'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1055#1054#1045
            Width = 37
          end
          item
            AutoFitColWidth = False
            DynProps = <>
            EditButtons = <>
            FieldName = 'SPECIFIC_TOOL_REQUIREMENT_CODE'
            Footers = <>
            Title.Caption = #1050#1054#1087#1056
            Width = 37
          end
          item
            AutoFitColWidth = False
            DynProps = <>
            EditButtons = <>
            FieldName = 'TYPICAL_TOOL_REQUIREMENT_CODE'
            Footers = <>
            Title.Caption = #1050#1054#1087#1053
            Width = 37
          end
          item
            AutoFitColWidth = False
            DynProps = <>
            EditButtons = <>
            FieldName = 'OPERATION_HOUR_TECH_QUANTITIES'
            Footers = <>
            Title.Caption = #1048#1079#1093'.'#1055#1088'.'
            Width = 45
          end
          item
            AutoFitColWidth = False
            DynProps = <>
            EditButtons = <>
            FieldName = 'OPERATION_HAS_SPECIAL_CONTROL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Fixedsys'
            Font.Style = [fsBold]
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1057#1050
            Width = 20
          end
          item
            AutoFitColWidth = False
            DynProps = <>
            EditButtons = <>
            FieldName = '_DOC_EMPTINESS_REQUIREMENT_STATUS'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1052#1048#1048#1054
            Width = 40
          end
          item
            AutoFitColWidth = False
            DynProps = <>
            EditButtons = <>
            FieldName = '_DOC_ITEMS_UNAUTHORIZED_STATUS'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1048#1048#1054
            Width = 45
          end
          item
            AutoFitColWidth = False
            DynProps = <>
            EditButtons = <>
            FieldName = '_SHOW_APPROVE_CYCLE_NO'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1062#1059
            Width = 25
          end
          item
            AutoFitColWidth = False
            DynProps = <>
            EditButtons = <>
            FieldName = 'NOTES'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1041#1077#1083#1077#1078#1082#1080
            Visible = False
            Width = 411
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object pnlModelStructStatuses: TPanel
        Left = 0
        Top = 285
        Width = 605
        Height = 23
        Align = alBottom
        BevelOuter = bvNone
        Constraints.MinWidth = 340
        TabOrder = 0
        DesignSize = (
          605
          23)
        object pnlProgramToolProductDocs: TPanel
          Left = 188
          Top = 0
          Width = 126
          Height = 23
          Alignment = taLeftJustify
          Anchors = [akLeft, akTop, akBottom]
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Caption = ' '#1055#1054#1045
          TabOrder = 0
          object tlbProgramToolProductDocs: TToolBar
            Left = 30
            Top = 2
            Width = 55
            Height = 19
            Align = alRight
            AutoSize = True
            ButtonHeight = 19
            ButtonWidth = 32
            EdgeInner = esNone
            Images = ilSmallDocs
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            object btnProgramToolProductDocs: TToolButton
              Left = 0
              Top = 0
              Action = actProgramToolProductSpecDocs
            end
            object btnProgramToolProductSpecDocStatus: TSpeedButton
              Left = 32
              Top = 0
              Width = 23
              Height = 19
              Hint = #1055#1086#1082#1072#1079#1074#1072' '#1057#1080#1052' '#1052#1048#1048#1054
              Action = actProgramToolProductSpecDocStatus
              Flat = True
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
                00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
                FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
                00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
                FF00000000000000000000000000000000000000000000000000FF00FF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
                FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF000000
                0000FFFFFF008080800080808000808080008000000080000000800000008000
                000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF008000000080000000800000008000
                000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF000000
                0000FFFFFF008080800080808000808080008080800000000000FFFFFF00FFFF
                FF00800000008000000080000000800000008000000080000000FF00FF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
                FF00800000008000000080000000800000008000000080000000FF00FF000000
                0000FFFFFF008080800080808000808080008080800000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080000000800000008000
                0000800000008000000080000000FF00FF00FF00FF00FF00FF00FF00FF000000
                0000FFFFFF008080800080808000808080008080800080000000800000008000
                0000800000008000000080000000FF00FF00FF00FF00FF00FF00FF00FF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
                00000000000000000000FFFFFF0080808000808080008080800080808000FFFF
                FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF000000000000000000000000000000000000000000000000000000
                000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              Transparent = False
            end
          end
          object pnlProgramToolProductStructStatus: TPanel
            Left = 85
            Top = 2
            Width = 39
            Height = 19
            Align = alRight
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 1
          end
        end
        object pnlDeptProductDocs: TPanel
          Left = 1
          Top = 0
          Width = 126
          Height = 23
          Alignment = taLeftJustify
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Caption = ' '#1054#1087#1052
          TabOrder = 1
          object tlbDeptProductDocs: TToolBar
            Left = 30
            Top = 2
            Width = 55
            Height = 19
            Align = alRight
            AutoSize = True
            ButtonHeight = 19
            ButtonWidth = 32
            EdgeInner = esNone
            Images = ilSmallDocs
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            object btnDeptProductDocs: TToolButton
              Left = 0
              Top = 0
              Action = actDeptProductSpecDocs
            end
            object btnDeptProductSpecDocStatus: TSpeedButton
              Left = 32
              Top = 0
              Width = 23
              Height = 19
              Hint = #1055#1086#1082#1072#1079#1074#1072' '#1057#1080#1052' '#1052#1048#1048#1054
              Action = actDeptProductSpecDocStatus
              Flat = True
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
                00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
                FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
                00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
                FF00000000000000000000000000000000000000000000000000FF00FF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
                FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF000000
                0000FFFFFF008080800080808000808080008000000080000000800000008000
                000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF008000000080000000800000008000
                000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF000000
                0000FFFFFF008080800080808000808080008080800000000000FFFFFF00FFFF
                FF00800000008000000080000000800000008000000080000000FF00FF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
                FF00800000008000000080000000800000008000000080000000FF00FF000000
                0000FFFFFF008080800080808000808080008080800000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080000000800000008000
                0000800000008000000080000000FF00FF00FF00FF00FF00FF00FF00FF000000
                0000FFFFFF008080800080808000808080008080800080000000800000008000
                0000800000008000000080000000FF00FF00FF00FF00FF00FF00FF00FF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
                00000000000000000000FFFFFF0080808000808080008080800080808000FFFF
                FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF000000000000000000000000000000000000000000000000000000
                000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              Transparent = False
            end
          end
          object pnlDeptProductStructStatus: TPanel
            Left = 85
            Top = 2
            Width = 39
            Height = 19
            Align = alRight
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 1
          end
        end
        object pnlSpecificToolProductDocs: TPanel
          Left = 317
          Top = 0
          Width = 132
          Height = 23
          Alignment = taLeftJustify
          Anchors = [akLeft, akTop, akBottom]
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Caption = ' '#1050#1054#1087#1056
          TabOrder = 2
          object tlbSpecificToolProductDocs: TToolBar
            Left = 36
            Top = 2
            Width = 55
            Height = 19
            Align = alRight
            AutoSize = True
            ButtonHeight = 19
            ButtonWidth = 32
            EdgeInner = esNone
            Images = ilSmallDocs
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            object btnSpecificToolProductDocs: TToolButton
              Left = 0
              Top = 0
              Action = actSpecificToolProductSpecDocs
            end
            object btnSpecificToolProductSpecDocStatus: TSpeedButton
              Left = 32
              Top = 0
              Width = 23
              Height = 19
              Hint = #1055#1086#1082#1072#1079#1074#1072' '#1057#1080#1052' '#1052#1048#1048#1054
              Action = actSpecificToolProductSpecDocStatus
              Flat = True
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
                00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
                FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
                00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
                FF00000000000000000000000000000000000000000000000000FF00FF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
                FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF000000
                0000FFFFFF008080800080808000808080008000000080000000800000008000
                000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF008000000080000000800000008000
                000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF000000
                0000FFFFFF008080800080808000808080008080800000000000FFFFFF00FFFF
                FF00800000008000000080000000800000008000000080000000FF00FF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
                FF00800000008000000080000000800000008000000080000000FF00FF000000
                0000FFFFFF008080800080808000808080008080800000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080000000800000008000
                0000800000008000000080000000FF00FF00FF00FF00FF00FF00FF00FF000000
                0000FFFFFF008080800080808000808080008080800080000000800000008000
                0000800000008000000080000000FF00FF00FF00FF00FF00FF00FF00FF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
                00000000000000000000FFFFFF0080808000808080008080800080808000FFFF
                FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF000000000000000000000000000000000000000000000000000000
                000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              Transparent = False
            end
          end
          object pnlSpecificToolProductStructStatus: TPanel
            Left = 91
            Top = 2
            Width = 39
            Height = 19
            Align = alRight
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 1
          end
        end
        object pnlTypicalToolProductDocs: TPanel
          Left = 452
          Top = 0
          Width = 132
          Height = 23
          Alignment = taLeftJustify
          Anchors = [akLeft, akTop, akBottom]
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Caption = ' '#1050#1054#1087#1053
          TabOrder = 3
          object tlbTypicalToolProductDocs: TToolBar
            Left = 36
            Top = 2
            Width = 55
            Height = 19
            Align = alRight
            AutoSize = True
            ButtonHeight = 19
            ButtonWidth = 32
            EdgeInner = esNone
            Images = ilSmallDocs
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            object btnTypicalToolProductDocs: TToolButton
              Left = 0
              Top = 0
              Action = actTypicalToolProductSpecDocs
            end
            object btnTypicalToolProductSpecDocStatus: TSpeedButton
              Left = 32
              Top = 0
              Width = 23
              Height = 19
              Hint = #1055#1086#1082#1072#1079#1074#1072' '#1057#1080#1052' '#1052#1048#1048#1054
              Action = actTypicalToolProductSpecDocStatus
              Flat = True
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
                00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
                FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
                00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
                FF00000000000000000000000000000000000000000000000000FF00FF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
                FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF000000
                0000FFFFFF008080800080808000808080008000000080000000800000008000
                000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF008000000080000000800000008000
                000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF000000
                0000FFFFFF008080800080808000808080008080800000000000FFFFFF00FFFF
                FF00800000008000000080000000800000008000000080000000FF00FF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
                FF00800000008000000080000000800000008000000080000000FF00FF000000
                0000FFFFFF008080800080808000808080008080800000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080000000800000008000
                0000800000008000000080000000FF00FF00FF00FF00FF00FF00FF00FF000000
                0000FFFFFF008080800080808000808080008080800080000000800000008000
                0000800000008000000080000000FF00FF00FF00FF00FF00FF00FF00FF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
                00000000000000000000FFFFFF0080808000808080008080800080808000FFFF
                FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF000000000000000000000000000000000000000000000000000000
                000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              Transparent = False
            end
          end
          object pnlTypicalToolProductStructStatus: TPanel
            Left = 91
            Top = 2
            Width = 39
            Height = 19
            Align = alRight
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 1
          end
        end
        object pnlBaseGroupDocs: TPanel
          Left = 130
          Top = 0
          Width = 55
          Height = 23
          Alignment = taLeftJustify
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 4
          object btnBaseGroups: TSpeedButton
            Left = 2
            Top = 2
            Width = 51
            Height = 19
            Action = actBaseGroups
            Flat = True
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00000000000000000000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
              FF00000000000000000000000000FFFFFF0000000000FFFFFF00000000000000
              00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
              000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
              FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
              000000000000000000000000000000000000FFFFFF000000000000000000FFFF
              FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
              FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
              000000000000000000000000000000000000FFFFFF000000000000000000FFFF
              FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
              FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
              000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
              FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF000000000000000000000000000000000000000000FFFF
              FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
              0000FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF0000000000FFFF
              FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF0000000000FFFF
              FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
              0000000000000000000000000000FF00FF00FF00FF00FF00FF0000000000FFFF
              FF0000000000FFFFFF0000000000000000000000000000000000000000000000
              000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
              FF0000000000000000000000000000000000000000000000000000000000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
              00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            ParentShowHint = False
            ShowHint = True
          end
        end
      end
    end
    object pnlModelDoc: TPanel
      Left = 0
      Top = 332
      Width = 605
      Height = 198
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      OnResize = pnlModelDocResize
      object bvlModelDoc: TBevel
        Left = 0
        Top = 196
        Width = 605
        Height = 2
        Align = alBottom
        Shape = bsBottomLine
      end
      inline frModelDoc: TfrDoc
        Left = 0
        Top = 24
        Width = 605
        Height = 172
        Align = alClient
        Constraints.MinHeight = 62
        TabOrder = 0
        TabStop = True
        inherited pnlMain: TPanel
          Width = 605
          Height = 172
          inherited pnlTop: TPanel
            Width = 605
            inherited pnlTopRight: TPanel
              Left = 515
            end
          end
          inherited pnlBottom: TPanel
            Top = 147
            Width = 605
            inherited pnlCount: TPanel
              Left = 531
            end
          end
          inherited pnlGrid: TPanel
            Width = 605
            Height = 122
            inherited grdClonedDocItems: TAbmesDBGrid
              Width = 605
              Height = 122
            end
          end
        end
        inherited dsData: TDataSource
          DataSet = cdsDSModel
        end
      end
      object pnlModelInfoPanels: TPanel
        Left = 0
        Top = 0
        Width = 605
        Height = 24
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          605
          24)
        object pnlModelDetailName: TPanel
          Left = 1
          Top = 2
          Width = 402
          Height = 21
          Anchors = [akLeft, akTop, akRight, akBottom]
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          object txtDetailName2: TDBText
            Left = 4
            Top = 4
            Width = 72
            Height = 13
            AutoSize = True
            DataField = 'DETAIL_NAME'
            DataSource = dsDSLines
          end
        end
        object pnlModelStageNo: TPanel
          Left = 401
          Top = 2
          Width = 52
          Height = 21
          Alignment = taLeftJustify
          Anchors = [akTop, akRight, akBottom]
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Caption = ' '#1045#1090#1072#1087
          TabOrder = 1
          DesignSize = (
            52
            21)
          object txtModelStageNo: TDBText
            Left = 32
            Top = 4
            Width = 17
            Height = 13
            Anchors = [akTop, akRight]
            DataField = 'STAGE_NO'
            DataSource = dsDSModel
          end
        end
        object pnlModelOperationNo: TPanel
          Left = 451
          Top = 2
          Width = 78
          Height = 21
          Alignment = taLeftJustify
          Anchors = [akTop, akRight, akBottom]
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Caption = ' '#1054#1087#1077#1088#1072#1094#1080#1103
          TabOrder = 2
          DesignSize = (
            78
            21)
          object txtModelOperationNo: TDBText
            Left = 58
            Top = 4
            Width = 17
            Height = 13
            Anchors = [akTop, akRight]
            DataField = 'OPERATION_NO'
            DataSource = dsDSModel
          end
        end
        object pnlModelDept: TPanel
          Left = 527
          Top = 2
          Width = 78
          Height = 21
          Alignment = taLeftJustify
          Anchors = [akTop, akRight, akBottom]
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 3
          DesignSize = (
            78
            21)
          object txtModelDept: TDBText
            Left = 4
            Top = 4
            Width = 67
            Height = 13
            Anchors = [akLeft, akTop, akRight]
            DataField = 'DEPT_IDENTIFIER'
            DataSource = dsDSModel
          end
        end
      end
    end
    object pnlModelTop: TPanel
      Left = 0
      Top = 0
      Width = 605
      Height = 22
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      OnResize = pnlModelTopResize
      object pnlDetail: TPanel
        Left = 0
        Top = 0
        Width = 288
        Height = 22
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        inline frDetail: TfrProductFieldEditFrameBald
          Left = 33
          Top = 0
          Width = 255
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Align = alClient
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 0
          TabStop = True
          DesignSize = (
            255
            22)
          inherited gbTreeNode: TGroupBox
            Width = 271
            DesignSize = (
              271
              49)
            inherited pnlTreeNode: TPanel
              Width = 255
              inherited pnlTreeNodeName: TPanel
                Width = 73
                DesignSize = (
                  73
                  22)
                inherited edtTreeNodeName: TDBEdit
                  Width = 72
                end
              end
              inherited pnlTreeNodeNo: TPanel
                Left = 73
              end
              inherited pnlRightButtons: TPanel
                Left = 196
              end
            end
          end
          inherited dsData: TDataSource
            DataSet = cdsDSLines
          end
        end
        object pnlDetailCaption: TPanel
          Left = 0
          Top = 0
          Width = 33
          Height = 22
          Align = alLeft
          Alignment = taLeftJustify
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            33
            22)
          object btnDetailSpecDocStatus: TSpeedButton
            Left = 1
            Top = 1
            Width = 31
            Height = 20
            Action = actDetailSpecDocStatus
            Anchors = [akLeft, akTop, akRight, akBottom]
          end
        end
      end
      object pnlProduct: TPanel
        Left = 288
        Top = 0
        Width = 286
        Height = 22
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object pnlProductCaption: TPanel
          Left = 0
          Top = 0
          Width = 33
          Height = 22
          Align = alLeft
          Alignment = taLeftJustify
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            33
            22)
          object btnProductSpecDocStatus: TSpeedButton
            Left = 1
            Top = 1
            Width = 31
            Height = 20
            Action = actProductSpecDocStatus
            Anchors = [akLeft, akTop, akRight, akBottom]
          end
        end
        inline frProduct: TfrProductFieldEditFrameBald
          Left = 33
          Top = 0
          Width = 253
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Align = alClient
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 1
          TabStop = True
          DesignSize = (
            253
            22)
          inherited gbTreeNode: TGroupBox
            Width = 269
            DesignSize = (
              269
              49)
            inherited pnlTreeNode: TPanel
              Width = 253
              inherited pnlTreeNodeName: TPanel
                Width = 71
                DesignSize = (
                  71
                  22)
                inherited edtTreeNodeName: TDBEdit
                  Width = 70
                end
              end
              inherited pnlTreeNodeNo: TPanel
                Left = 71
              end
              inherited pnlRightButtons: TPanel
                Left = 194
              end
            end
          end
          inherited dsData: TDataSource
            DataSet = cdsDSLines
          end
        end
      end
      object tlbToggle: TToolBar
        Left = 574
        Top = 0
        Width = 31
        Height = 22
        Align = alRight
        AutoSize = True
        Caption = 'tlbToggle'
        Flat = False
        Images = dmMain.ilActions
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        object sepShowNotes: TToolButton
          Left = 0
          Top = 0
          Width = 8
          Caption = 'sepShowNotes'
          Style = tbsSeparator
        end
        object btnShowNotes: TToolButton
          Left = 8
          Top = 0
          Action = actShowNotes
          Style = tbsCheck
        end
      end
    end
    object pnlPrintModel: TPanel
      Left = 2
      Top = 24
      Width = 20
      Height = 17
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 2
      object btnPrintModel: TSpeedButton
        Left = 0
        Top = 0
        Width = 20
        Height = 17
        Action = actPrintModel
        Flat = True
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
    end
  end
  object pnlLines: TPanel [3]
    Left = 0
    Top = 0
    Width = 407
    Height = 530
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object sptLines: TSplitter
      Left = 0
      Top = 330
      Width = 407
      Height = 2
      Cursor = crVSplit
      Align = alBottom
      MinSize = 62
      OnCanResize = DocSplittersCanResize
    end
    object pnlLinesDoc: TPanel
      Left = 0
      Top = 332
      Width = 407
      Height = 198
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      OnResize = pnlLinesDocResize
      object bvlLinesDoc: TBevel
        Left = 0
        Top = 196
        Width = 407
        Height = 2
        Align = alBottom
        Shape = bsBottomLine
      end
      inline frLineDoc: TfrDoc
        Left = 0
        Top = 24
        Width = 407
        Height = 172
        Align = alClient
        Constraints.MinHeight = 62
        TabOrder = 0
        TabStop = True
        inherited pnlMain: TPanel
          Width = 407
          Height = 172
          inherited pnlTop: TPanel
            Width = 407
            inherited pnlTopRight: TPanel
              Left = 317
            end
          end
          inherited pnlBottom: TPanel
            Top = 147
            Width = 407
            inherited pnlCount: TPanel
              Left = 333
            end
          end
          inherited pnlGrid: TPanel
            Width = 407
            Height = 122
            inherited grdClonedDocItems: TAbmesDBGrid
              Width = 407
              Height = 122
            end
          end
        end
        inherited dsData: TDataSource
          DataSet = cdsDSLines
        end
      end
      object pnlDetailPanels: TPanel
        Left = 0
        Top = 0
        Width = 407
        Height = 24
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          407
          24)
        object pnlDetailName: TPanel
          Left = 1
          Top = 2
          Width = 238
          Height = 21
          Anchors = [akLeft, akTop, akRight, akBottom]
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          object txtDetailName: TDBText
            Left = 4
            Top = 4
            Width = 66
            Height = 13
            AutoSize = True
            DataField = 'DETAIL_NAME'
            DataSource = dsDSLines
          end
        end
        object pnlDetailNo: TPanel
          Left = 237
          Top = 2
          Width = 72
          Height = 21
          Anchors = [akTop, akRight, akBottom]
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 1
          object txtDetailNo: TDBText
            Left = 4
            Top = 4
            Width = 64
            Height = 13
            DataField = 'DETAIL_NO'
            DataSource = dsDSLines
          end
        end
        object pnlStructStatus: TPanel
          Left = 307
          Top = 2
          Width = 74
          Height = 21
          Alignment = taLeftJustify
          Anchors = [akTop, akRight, akBottom]
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Caption = ' '#1050#1057#1071
          TabOrder = 2
          object pnlStructStatusLabel: TPanel
            Left = 33
            Top = 2
            Width = 39
            Height = 17
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
          end
        end
      end
    end
    object pnlLinesTop: TPanel
      Left = 0
      Top = 0
      Width = 407
      Height = 22
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object pnlLinesTopLeft: TPanel
        Left = 0
        Top = 0
        Width = 68
        Height = 22
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object btnModel: TSpeedButton
          Left = 0
          Top = 0
          Width = 25
          Height = 22
          Action = actModel
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FFFFFF00000000000000000000000000FFFF
            FF0000000000FFFFFF000000000000000000FFFFFF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FFFFFF000000000000000000FFFFFF000000
            000000000000FFFFFF000000000000000000FFFFFF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
            FF000000000000000000FFFFFF0000000000FFFFFF0000000000FF00FF00FF00
            FF00FF00FF0000000000FFFFFF0000FFFF000000000000000000FFFFFF000000
            0000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
            FF0000000000FFFFFF0000FFFF000000000000FFFF00FFFFFF0000000000FFFF
            FF0000FFFF0000000000FFFFFF0000000000FFFFFF0000000000FF00FF000000
            0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FF
            FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF000000
            000000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FFFF000000
            0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
            0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF
            FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFF00000000
            000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000000000000000
            0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFF0000FFFF
            00000000000000FFFF00FFFFFF0000FFFF000000000000FFFF00FFFFFF0000FF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FF00FF00FFFF0000FFFF
            0000FFFF00000000000000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
            0000FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FFFF0000FFFF
            0000FFFF0000FFFF000000000000000000000000000000000000000000000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
          Spacing = -1
        end
        object udShowLevel: TUpDown
          Left = 48
          Top = 0
          Width = 15
          Height = 21
          Associate = edtShowLevel
          Min = 1
          Max = 25
          Position = 25
          TabOrder = 0
          OnChangingEx = udShowLevelChangingEx
        end
        object edtShowLevel: TEdit
          Left = 28
          Top = 0
          Width = 20
          Height = 21
          Hint = #1053#1080#1074#1086' '#1085#1072' '#1087#1086#1082#1072#1079#1074#1072#1085#1077
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 1
          Text = '25'
        end
      end
      object tlbLines: TToolBar
        Left = 338
        Top = 0
        Width = 69
        Height = 22
        Align = alRight
        AutoSize = True
        Caption = 'tlbLines'
        Images = dmMain.ilActions
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        object btnLinesShowDocInfo: TToolButton
          Left = 0
          Top = 0
          Action = actLinesShowDocInfo
          Grouped = True
          Style = tbsCheck
        end
        object btnLinesShowNotes: TToolButton
          Left = 23
          Top = 0
          Action = actLinesShowNotes
          Grouped = True
          Style = tbsCheck
        end
        object btnLinesShowConstructionNotes: TToolButton
          Left = 46
          Top = 0
          Action = actLinesShowConstructionNotes
          Grouped = True
          Style = tbsCheck
        end
      end
    end
    object grdLines: TAbmesDBGrid
      Left = 0
      Top = 22
      Width = 407
      Height = 308
      Align = alClient
      AutoFitColWidths = True
      DataSource = dsDSLines
      DynProps = <>
      FooterParams.Color = clWindow
      HorzScrollBar.Visible = False
      IndicatorOptions = [gioShowRowIndicatorEh]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 3
      TitleParams.RowHeight = 18
      OnDrawColumnCell = grdLinesDrawColumnCell
      OnGetCellParams = grdLinesGetCellParams
      Columns = <
        item
          DynProps = <>
          EditButtons = <>
          FieldName = '_SHOW_NAME'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Width = 265
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'DETAIL_NO'
          Footers = <>
          Title.Caption = #1050#1057#1063' - id '#1094#1080#1092#1088#1086#1074
          Visible = False
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = '_DOC_EMPTINESS_REQUIREMENT_STATUS'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1052#1048#1048#1054
          Width = 40
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = '_DOC_ITEMS_UNAUTHORIZED_STATUS'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1048#1048#1054
          Width = 45
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = '_SHOW_APPROVE_CYCLE_NO'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1062#1059
          Width = 25
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'NOTES'
          Footers = <>
          Title.Caption = #1041#1077#1083#1077#1078#1082#1080
          Visible = False
          Width = 110
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'CONSTRUCTION_NOTES'
          Footers = <>
          Title.Caption = #1041#1077#1083#1077#1078#1082#1080' '#1087#1086' '#1074#1084'.'
          Title.Hint = #1041#1077#1083#1077#1078#1082#1080' '#1087#1086' '#1074#1084#1098#1082#1074#1072#1085#1077
          Visible = False
          Width = 110
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'PRODUCT_NAME'
          Footers = <>
          Title.Caption = #1053#1057#1063' - id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
          Visible = False
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'PRODUCT_NO'
          Footers = <>
          Title.Caption = #1053#1057#1063' - id '#1094#1080#1092#1088#1086#1074
          Visible = False
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object pnlPrintLines: TPanel
      Left = 2
      Top = 24
      Width = 40
      Height = 17
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 2
      object btnPrintLines: TSpeedButton
        Left = 0
        Top = 0
        Width = 20
        Height = 17
        Action = actPrintLines
        Flat = True
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
      object btnExcelExportLines: TSpeedButton
        Left = 20
        Top = 0
        Width = 20
        Height = 17
        Action = actExcelExportLines
        Flat = True
        ParentShowHint = False
        ShowHint = True
      end
    end
  end
  inherited alActions: TActionList
    Left = 160
    Top = 56
    inherited actForm: TAction
      Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1085#1080' '#1080' '#1052#1072#1088#1096#1088#1091#1090#1085#1080' '#1052#1048#1048#1054' '#1085#1072' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' - %s'
    end
    object actModel: TAction
      Hint = #1052#1054#1044#1045#1083
      ImageIndex = 18
    end
    object actDetailSpecDocStatus: TAction
      Caption = #1050#1057#1063
      OnExecute = actDetailSpecDocStatusExecute
      OnUpdate = actDetailSpecDocStatusUpdate
    end
    object actProductSpecDocStatus: TAction
      Caption = #1053#1057#1063
      OnExecute = actProductSpecDocStatusExecute
      OnUpdate = actProductSpecDocStatusUpdate
    end
    object actPrintLines: TAction
      Hint = #1055#1077#1095#1072#1090
      ImageIndex = 2
      OnExecute = actPrintLinesExecute
      OnUpdate = actPrintLinesUpdate
    end
    object actPrintModel: TAction
      Hint = #1055#1077#1095#1072#1090
      ImageIndex = 2
      OnExecute = actPrintModelExecute
      OnUpdate = actPrintModelUpdate
    end
    object actDeptProductSpecDocStatus: TAction
      ImageIndex = 113
      OnExecute = actDeptProductSpecDocStatusExecute
      OnUpdate = actDeptProductSpecDocStatusUpdate
    end
    object actProgramToolProductSpecDocStatus: TAction
      ImageIndex = 113
      OnExecute = actProgramToolProductSpecDocStatusExecute
      OnUpdate = actProgramToolProductSpecDocStatusUpdate
    end
    object actSpecificToolProductSpecDocStatus: TAction
      ImageIndex = 113
      OnExecute = actSpecificToolProductSpecDocStatusExecute
      OnUpdate = actSpecificToolProductSpecDocStatusUpdate
    end
    object actTypicalToolProductSpecDocStatus: TAction
      ImageIndex = 113
      OnExecute = actTypicalToolProductSpecDocStatusExecute
      OnUpdate = actTypicalToolProductSpecDocStatusUpdate
    end
    object actDeptProductSpecDocs: TAction
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1052#1048#1048#1054
      ImageIndex = 0
      OnExecute = actDeptProductSpecDocsExecute
      OnUpdate = actDeptProductSpecDocsUpdate
    end
    object actProgramToolProductSpecDocs: TAction
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1052#1048#1048#1054
      ImageIndex = 0
      OnExecute = actProgramToolProductSpecDocsExecute
      OnUpdate = actProgramToolProductSpecDocsUpdate
    end
    object actSpecificToolProductSpecDocs: TAction
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1052#1048#1048#1054
      ImageIndex = 0
      OnExecute = actSpecificToolProductSpecDocsExecute
      OnUpdate = actSpecificToolProductSpecDocsUpdate
    end
    object actTypicalToolProductSpecDocs: TAction
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1052#1048#1048#1054
      ImageIndex = 0
      OnExecute = actTypicalToolProductSpecDocsExecute
      OnUpdate = actTypicalToolProductSpecDocsUpdate
    end
    object actBaseGroupDocs: TAction
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1052#1048#1048#1054
      ImageIndex = 0
      OnExecute = actBaseGroupDocsExecute
      OnUpdate = actBaseGroupDocsUpdate
    end
    object actBaseGroups: TAction
      Caption = #1041#1043'...'
      Hint = #1041#1072#1079#1086#1074#1080' '#1043#1088#1091#1087#1080
      ImageIndex = 47
      OnExecute = actBaseGroupsExecute
      OnUpdate = actBaseGroupsUpdate
    end
    object actShowNotes: TAction
      AutoCheck = True
      Caption = 'actShowNotes'
      GroupIndex = 1
      Hint = #1041#1077#1083#1077#1078#1082#1080
      ImageIndex = 57
      OnExecute = actShowNotesExecute
    end
    object actExcelExportLines: TAction
      Hint = #1045#1082#1089#1087#1086#1088#1090' '#1082#1098#1084' Excel '#1085#1072' '#1048#1085#1078#1077#1085#1077#1088#1085#1072#1090#1072' '#1057#1090#1088#1091#1082#1090#1091#1088#1072
      ImageIndex = 83
      OnExecute = actExcelExportLinesExecute
    end
    object actLinesShowDocInfo: TAction
      AutoCheck = True
      Checked = True
      GroupIndex = 250
      Hint = #1052#1048#1048#1054'/'#1048#1048#1054'/'#1062#1059
      ImageIndex = 112
      OnExecute = actLinesShowDocInfoExecute
    end
    object actLinesShowNotes: TAction
      AutoCheck = True
      GroupIndex = 250
      Hint = #1041#1077#1083#1077#1078#1082#1080
      ImageIndex = 57
      OnExecute = actLinesShowNotesExecute
    end
    object actLinesShowConstructionNotes: TAction
      AutoCheck = True
      GroupIndex = 250
      Hint = #1041#1077#1083#1077#1078#1082#1080' '#1087#1086' '#1074#1084#1098#1082#1074#1072#1085#1077
      ImageIndex = 47
      OnExecute = actLinesShowConstructionNotesExecute
    end
  end
  inherited dsData: TDataSource
    Left = 40
    Top = 64
  end
  inherited cdsData: TAbmesClientDataSet
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    Left = 8
    Top = 64
    object cdsData_PRINT_FIRST_LINE_STRUCT_COEF: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_PRINT_FIRST_LINE_STRUCT_COEF'
      OnGetText = cdsData_PRINT_FIRST_LINE_STRUCT_COEFGetText
      Calculated = True
    end
  end
  object cdsDSLines: TAbmesClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <>
    AfterOpen = cdsDSLinesAfterOpen
    AfterScroll = cdsDSLinesAfterScroll
    OnCalcFields = cdsDSLinesCalcFields
    OnFilterRecord = cdsDSLinesFilterRecord
    Left = 8
    Top = 96
    object cdsDSLinesNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      Size = 100
    end
    object cdsDSLinesNO_AS_FORMATED_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_FORMATED_TEXT'
      Size = 100
    end
    object cdsDSLinesDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object cdsDSLinesDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      Size = 100
    end
    object cdsDSLinesDETAIL_NO: TAbmesFloatField
      FieldName = 'DETAIL_NO'
    end
    object cdsDSLinesDETAIL_PARENT_CODE: TAbmesFloatField
      FieldName = 'DETAIL_PARENT_CODE'
    end
    object cdsDSLinesDETAIL_HAS_SPECIFICATION: TAbmesFloatField
      FieldName = 'DETAIL_HAS_SPECIFICATION'
      FieldValueType = fvtBoolean
    end
    object cdsDSLinesPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsDSLinesPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsDSLinesPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      FieldValueType = fvtBoolean
    end
    object cdsDSLinesPRODUCT_HAS_SPECIFICATION: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_SPECIFICATION'
      FieldValueType = fvtBoolean
    end
    object cdsDSLinesLEVEL_NO: TAbmesFloatField
      FieldName = 'LEVEL_NO'
    end
    object cdsDSLinesIS_COMPLETE: TAbmesFloatField
      FieldName = 'IS_COMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsDSLinesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDSLinesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsDSLinesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
    end
    object cdsDSLinesDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsDSLinesACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'ACTIVE_DI_COUNT'
    end
    object cdsDSLinesUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
    end
    object cdsDSLinesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object cdsDSLinesHAS_CHILDREN: TAbmesFloatField
      FieldName = 'HAS_CHILDREN'
      FieldValueType = fvtBoolean
    end
    object cdsDSLinesIS_LAST_CHILD: TAbmesFloatField
      FieldName = 'IS_LAST_CHILD'
      FieldValueType = fvtBoolean
    end
    object cdsDSLinesIS_DETAIL_DOC_AUTHORIZED: TAbmesFloatField
      FieldName = 'IS_DETAIL_DOC_AUTHORIZED'
      FieldValueType = fvtBoolean
    end
    object cdsDSLinesPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object cdsDSLinesPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object cdsDSLinesNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsDSLinesCONSTRUCTION_NOTES: TAbmesWideStringField
      FieldName = 'CONSTRUCTION_NOTES'
      Size = 250
    end
    object cdsDSLines_SHOW_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_NAME'
      Size = 150
      Calculated = True
    end
    object cdsDSLines_DOC_EMPTINESS_REQUIREMENT_STATUS: TAbmesWideStringField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = '_DOC_EMPTINESS_REQUIREMENT_STATUS'
      Size = 2
      Calculated = True
    end
    object cdsDSLines_DOC_ITEMS_UNAUTHORIZED_STATUS: TAbmesWideStringField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = '_DOC_ITEMS_UNAUTHORIZED_STATUS'
      Calculated = True
    end
    object cdsDSLines_SHOW_APPROVE_CYCLE_NO: TAbmesWideStringField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = '_SHOW_APPROVE_CYCLE_NO'
      Calculated = True
    end
    object cdsDSLines_LINE_TYPE_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_LINE_TYPE_CODE'
      Calculated = True
    end
  end
  object dsDSLines: TDataSource
    DataSet = cdsDSLines
    Left = 40
    Top = 96
  end
  object cdsDSModel: TAbmesClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    AfterOpen = cdsDSModelAfterOpen
    AfterPost = cdsDSModelAfterPost
    AfterScroll = cdsDSModelAfterScroll
    OnCalcFields = cdsDSModelCalcFields
    Left = 8
    Top = 128
    object cdsDSModelITEM_CODE: TAbmesFloatField
      FieldName = 'ITEM_CODE'
    end
    object cdsDSModelPARENT_ITEM_CODE: TAbmesFloatField
      FieldName = 'PARENT_ITEM_CODE'
    end
    object cdsDSModelITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'ITEM_TYPE_CODE'
    end
    object cdsDSModelORDER_NO: TAbmesFloatField
      FieldName = 'ORDER_NO'
    end
    object cdsDSModelDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object cdsDSModelDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 100
    end
    object cdsDSModelMODEL_VARIANT_QUANTITIES: TAbmesWideStringField
      FieldName = 'MODEL_VARIANT_QUANTITIES'
      Size = 83
    end
    object cdsDSModelSTAGE_NO: TAbmesFloatField
      FieldName = 'STAGE_NO'
    end
    object cdsDSModelWORKDAYS: TAbmesWideStringField
      FieldName = 'WORKDAYS'
      Size = 83
    end
    object cdsDSModelOPERATION_NO: TAbmesFloatField
      FieldName = 'OPERATION_NO'
    end
    object cdsDSModelOPERATION_TYPE_CODE: TAbmesFloatField
      FieldName = 'OPERATION_TYPE_CODE'
    end
    object cdsDSModelOPERATION_HAS_SPECIAL_CONTROL: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'OPERATION_HAS_SPECIAL_CONTROL'
      DisplayFormat = '0'
      DisplayBoolValues = '!;'
      FieldValueType = fvtBoolean
    end
    object cdsDSModelOPERATION_HOUR_TECH_QUANTITIES: TAbmesWideStringField
      Alignment = taCenter
      FieldName = 'OPERATION_HOUR_TECH_QUANTITIES'
      Size = 81
    end
    object cdsDSModelDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDSModelDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsDSModelDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
    end
    object cdsDSModelDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsDSModelACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'ACTIVE_DI_COUNT'
    end
    object cdsDSModelUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
    end
    object cdsDSModelUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object cdsDSModelAPPROVED_DI_COUNT: TAbmesFloatField
      FieldName = 'APPROVED_DI_COUNT'
    end
    object cdsDSModelLEVEL_NO: TAbmesFloatField
      FieldName = 'LEVEL_NO'
    end
    object cdsDSModelHAS_CHILDREN: TAbmesFloatField
      FieldName = 'HAS_CHILDREN'
      FieldValueType = fvtBoolean
    end
    object cdsDSModelIS_LAST_CHILD: TAbmesFloatField
      FieldName = 'IS_LAST_CHILD'
      FieldValueType = fvtBoolean
    end
    object cdsDSModelDEPT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PRODUCT_CODE'
    end
    object cdsDSModelPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_CODE'
    end
    object cdsDSModelSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_CODE'
    end
    object cdsDSModelTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_CODE'
    end
    object cdsDSModelPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'PROGRAM_TOOL_REQUIREMENT_CODE'
      OnGetText = cdsDSModelPROGRAM_TOOL_REQUIREMENT_CODEGetText
    end
    object cdsDSModelSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'SPECIFIC_TOOL_REQUIREMENT_CODE'
      OnGetText = cdsDSModelSPECIFIC_TOOL_REQUIREMENT_CODEGetText
    end
    object cdsDSModelTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'TYPICAL_TOOL_REQUIREMENT_CODE'
      OnGetText = cdsDSModelTYPICAL_TOOL_REQUIREMENT_CODEGetText
    end
    object cdsDSModelPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_IS_COMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsDSModelSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_IS_COMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsDSModelTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_IS_COMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsDSModelDEPT_PRODUCT_HAS_SPEC: TAbmesFloatField
      FieldName = 'DEPT_PRODUCT_HAS_SPEC'
      FieldValueType = fvtBoolean
    end
    object cdsDSModelPROGRAM_TOOL_PRODUCT_HAS_SPEC: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_HAS_SPEC'
      FieldValueType = fvtBoolean
    end
    object cdsDSModelSPECIFIC_TOOL_PRODUCT_HAS_SPEC: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_HAS_SPEC'
      FieldValueType = fvtBoolean
    end
    object cdsDSModelTYPICAL_TOOL_PRODUCT_HAS_SPEC: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_HAS_SPEC'
      FieldValueType = fvtBoolean
    end
    object cdsDSModelDEPT_PRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'DEPT_PRODUCT_HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsDSModelPROGRAM_TOOL_PRODUCT_HAS_DI: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_HAS_DI'
      FieldValueType = fvtBoolean
    end
    object cdsDSModelSPECIFIC_TOOL_PRODUCT_HAS_DI: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_HAS_DI'
      FieldValueType = fvtBoolean
    end
    object cdsDSModelTYPICAL_TOOL_PRODUCT_HAS_DI: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_HAS_DI'
      FieldValueType = fvtBoolean
    end
    object cdsDSModelBASE_GROUP_CODE: TAbmesFloatField
      FieldName = 'BASE_GROUP_CODE'
    end
    object cdsDSModelBASE_GROUP_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BASE_GROUP_DOC_BRANCH_CODE'
    end
    object cdsDSModelBASE_GROUP_DOC_CODE: TAbmesFloatField
      FieldName = 'BASE_GROUP_DOC_CODE'
    end
    object cdsDSModelBASE_GROUP_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'BASE_GROUP_HAS_DOC_ITEMS'
    end
    object cdsDSModelNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsDSModel_SHOW_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_NAME'
      Size = 50
      Calculated = True
    end
    object cdsDSModel_DOC_EMPTINESS_REQUIREMENT_STATUS: TAbmesWideStringField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = '_DOC_EMPTINESS_REQUIREMENT_STATUS'
      Size = 2
      Calculated = True
    end
    object cdsDSModel_DOC_ITEMS_UNAUTHORIZED_STATUS: TAbmesWideStringField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = '_DOC_ITEMS_UNAUTHORIZED_STATUS'
      Calculated = True
    end
    object cdsDSModel_SHOW_APPROVE_CYCLE_NO: TAbmesWideStringField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = '_SHOW_APPROVE_CYCLE_NO'
      Calculated = True
    end
    object cdsDSModel_IMAGE_INDEX: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_IMAGE_INDEX'
      Calculated = True
    end
    object cdsDSModel_TOTAL_APPROVED_DI_COUNT: TAggregateField
      FieldName = '_TOTAL_APPROVED_DI_COUNT'
      Active = True
      DisplayName = ''
      Expression = 'Sum(APPROVED_DI_COUNT)'
    end
    object cdsDSModel_TOTAL_UNAPPROVED_ACTIVE_DI_CNT: TAggregateField
      FieldName = '_TOTAL_UNAPPROVED_ACTIVE_DI_CNT'
      Active = True
      DisplayName = ''
      Expression = 'Sum(UNAPPROVED_ACTIVE_DI_COUNT)'
    end
    object cdsDSModel_TOTAL_NOT_IS_COMPLETE_COUNT: TAggregateField
      FieldName = '_TOTAL_NOT_IS_COMPLETE_COUNT'
      Active = True
      DisplayName = ''
      Expression = 'Sum(DOC_IS_COMPLETE*(-1)+1)'
    end
    object cdsDSModel_MAX_DOC_EMPTINESS_REQ_CODE: TAggregateField
      FieldName = '_MAX_DOC_EMPTINESS_REQ_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Max(DOC_EMPTINESS_REQUIREMENT_CODE)'
    end
    object cdsDSModel_MAX_STAGE_NO: TAggregateField
      FieldName = '_MAX_STAGE_NO'
      Active = True
      DisplayName = ''
      Expression = 'Max(STAGE_NO)'
    end
  end
  object dsDSModel: TDataSource
    DataSet = cdsDSModel
    Left = 40
    Top = 128
  end
  object tmrShowLevel: TTimer
    Enabled = False
    Interval = 550
    OnTimer = tmrShowLevelTimer
    Left = 256
    Top = 56
  end
  object tmrDetailSpecDocStatus: TTimer
    Enabled = False
    Interval = 200
    OnTimer = tmrDetailSpecDocStatusTimer
    Left = 222
    Top = 218
  end
  object ilModel: TImageList
    Left = 320
    Top = 56
    Bitmap = {
      494C010109000D00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000F3F3F3FF9A9A
      9AFF8D8D8DFF909090FFECECECFFFDFDFDFFFBFBFBFFFBFBFBFFFDFDFDFF8484
      84FF6F6F6FFF6D6D6DFFFBFBFBFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999FFA1A1
      A1FF979797FF858585FF616160FF9E9D9AFF4746C3FF5452B7FF82817CFF6766
      65FFEFEFEFFF8E8E8EFFE2E2E2FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EAEAEAFF919191FF8080
      80FFE8E8E8FF575754FF2526C2FF0000FFFF0101FCFF0202F9FF0000FFFF0807
      BDFF838380FF898989FF818181FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6E6E6FF7E7E7EFFB7B7
      B7FF6D6D71FF0B0FDDFF0000FEFF212FCDFFACB2E5FF2730C3FF070AE8FF0000
      FEFF0303DDFF6C6C72FF8E8E8EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6E6E6FF666666FFE2E2
      E3FF656FA8FF0000FFFF1A28BEFFCACBD2FFDFDFE2FF53578AFF0000FEFF0207
      EFFF0000FFFF34355BFFEAEAEBFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6E6E6FF656565FFDDDE
      E0FF3542DCFF0305FEFF3A3E4AFFD0D0CFFF565B67FF0406F9FF060EF7FF4E50
      6DFF0102FCFF212580FFF3F4F7FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6E6E6FF636363FFD7D8
      DEFF2B37EEFF0102FEFF232426FF2B3A6DFF060BF9FF0914F2FFEBECEFFF5455
      56FF0001FDFF121DDDFFDEDFE3FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6E6E6FF626262FFD3D4
      D6FF5D67CAFF0000FFFF1320AAFF111CF4FF0509FCFFE9EAEDFF5D6D94FF2032
      A3FF0000FFFF1531BDFF6E7B9EFFF0F0F0FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D7D7D7FF757575FFD0D0
      D0FFAAADD0FF1115F8FF0000FEFF0001FCFF2E3A65FF3D3D44FF1C2981FF0000
      FEFF060DFBFF2F6FB8FF3C9CF9FFBFBFC4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5F5F5FF737373FFC8C8C8FFCFCF
      CFFFCCCCCDFF7F82AAFF0203FCFF0000FFFF0102FDFF0406FCFF0000FFFF0A14
      F6FF2075C6FF30BEF7FF1DA2FBFFBABAC7FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000777777FFCDCDCDFFE3E3E3FFE0E0
      E0FFD5D5D5FFCECECEFFB0B3D0FF707DD9FF3A45F3FF3845CEFF4576E9FF329B
      ECFF06A8F9FF04A9FBFF048DFBFFBABAC7FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FFE5E5E5FFE8E8E8FFA3A3
      A3FF656565FF9F9F9FFFD6D6D6FFCBCCCEFF646567FFAFB4C8FF259CFAFF0EA2
      FBFF0497FBFF0494FBFF047BF6FFBABAC7FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006C6C6CFFECECECFFECECECFF7E7E
      7EFFB7B7B7FF7A7A7AFFEDEDEDFFEAEAEAFF606060FFA2AABCFF3ABCFBFF37C5
      FBFF33C1FBFF17A3FBFF1387F8FFBABAC7FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006E6E6EFFEFEFEFFFEFEFEFFF6363
      63FF000000007C7C7CFFF2F2F2FFECECECFF666666FFA3ABBEFF67CFFBFF65D8
      FBFF65D8FBFF65D8FBFF62C4FBFFBABAC7FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DBDBDBFF686868FFF2F2F2FF5959
      59FF00000000707070FFF4F4F4FF777777FFDFDFDFFFB5B8C7FF89D7FBFF8EE7
      FBFF8EE7FBFF8EE7FBFF75BFFBFFC2C2C7FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5B5B5FF7B7B7BFFBFBF
      BFFF00000000C0C0C0FF8D8D8DFFBEBEBEFF00000000FDFDFDFF7F90BEFF7BA6
      F3FF7BAAF3FF78A2ECFF8C97B4FFFEFEFEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F3F3F3FF9A9A
      9AFF8D8D8DFF909090FFECECECFF000000000000000000000000000000007373
      73FF6F6F6FFF6D6D6DFFFBFBFBFF000000000000000000000000000000000000
      00000000000000000000105F7000105F7000105F700000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005F5F5F005F5F5F005F5F5F0000000000000000000000
      00000000000000000000000000000000000000000000DDDDDDFFA9A9A9FF9D9D
      9DFF979797FF9A9A9AFFA4A4A4FFB3B3B3FFD7D7D7FFE2E2E2FFECECECFFFDFD
      FDFFFEFEFEFF0000000000000000000000000000000000000000999999FFA1A1
      A1FF979797FF858585FF5C5C5CFFFDFDFDFF0000000000000000E0E0E0FF6262
      62FFF2F2F2FF8E8E8EFFE2E2E2FF000000000000000000000000000000000000
      000000000000105F700041A3FF00105F70003DDDFF00105F7000105F70000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005F5F5F00BBBBBB005F5F5F00C9C9C9005F5F5F005F5F5F000000
      000000000000000000000000000000000000E8E8E8FF868686FF848484FF9494
      94FF9B9B9BFF9B9B9BFF909090FF7D7D7CFF595957FF272678FF2B2A70FF5958
      54FF90908EFFC9C9C9FFCCCCCCFFE4E4E4FF00000000EAEAEAFF919191FF8080
      80FFE2E2E2FF737373FF6B6B6BFFF2F2F2FF0000000000000000828282FF9292
      92FFF1F1F1FF888888FF818181FF000000000000000000000000000000000000
      0000105F700041A3FF0033B8FD001D67760042BCFB002A2A2A0024242400105F
      7000105F70000000000000000000000000000000000000000000000000000000
      00005F5F5F00BBBBBB00B1B1B10067676700BDBDBD0035353500303030005F5F
      5F005F5F5F00000000000000000000000000DCDCDCFFBBBBBBFFC8C8C8FFD7D7
      D7FFE9E9E9FFF6F6F6FF959593FF2526C2FF0000FFFF0101FCFF0202F9FF0000
      FFFF0807BDFF545452FF5F5F5FFFB2B2B2FF00000000E6E6E6FF7E7E7EFFB9B9
      B9FF6F6F6FFFCACACAFF535353FFEEEEEEFF00000000000000007E7E7EFFDDDD
      DDFFE8E8E8FFCFCFCFFF7E7E7EFF00000000000000000000000000000000105F
      700041A2FE0045A8DB003C8BA4001F2CAC002247B70032302B003D3C3B002727
      2700399FFF00105F700000000000000000000000000000000000000000005F5F
      5F00BBBBBB00A3A3A200777672002D2CA9004442A70037353000454443003232
      3200BBBBBB005F5F5F000000000000000000EFEFEFFFB0B0B0FF9F9F9FFF615A
      5AFF716B6BFF737075FF0B0FDDFF0000FEFF1A28D1FF45477BFF262FC3FF070A
      E8FF0000FEFF0303DDFF404044FFD6D6D6FF00000000E6E6E6FF666666FFE5E5
      E5FFE3E3E3FFE5E5E5FF515151FFEEEEEEFF0000000000000000F0F0F0FF6C6C
      6CFFD7D7D7FF656565FFFCFCFCFF000000000000000000000000105F700042A2
      FD00307FA6001B25C2000000FF000101FC000202F9000000FF000807BD001F1E
      1C003E9FF900105F7000000000000000000000000000000000005F5F5F00B0B0
      B0007B7B78002223BF000000FF000101FC000202F9000000FF000807BD002524
      2200B9B9B9005F5F5F000000000000000000E6E6E6FFB0B0B0FFAAAAAAFFBDBD
      BDFFC9C9C9FF5E68A1FF0000FFFF313FD6FFD6D8E1FFDFDFE2FF52578AFF0000
      FEFF0207EFFF0000FFFF1F214BFFD6D6D7FF00000000E6E6E6FF656565FFE0E0
      E0FFE0E0E0FFDFDFDFFF515151FFEEEEEEFF0000000000000000000000006363
      63FFC4C4C4FF555555FF00000000000000000000000000000000116071004BA0
      D0000B0FDD000000FE001431DB00114A8900152DC300070AE8000000FE000303
      DD0015618A001562720000000000000000000000000000000000606060008C8C
      91000B0FDD000000FE001E2DD600454B7E00212BBE00070AE8000000FE000303
      DD005D5D6300626262000000000000000000DFDFDFFFB8B8B8FFBBBBBBFF6761
      61FF7C787AFF2532CCFF0305FEFF9699A5FF5B5656FF3A3D4AFF0406F9FF060E
      F7FF8B90BDFF0102FCFF0F137EFFD8D8DBFF00000000E6E6E6FF636363FFDADA
      DAFFDADADAFFD9D9D9FF505050FFEEEEEEFF0000000000000000FEFEFEFF6262
      62FFBEBDBCFF606060FFFAFAFAFF0000000000000000000000001E6777001C5F
      A3000000FF00113BD8000F536B00105566002D4E86000000FE000207EF000000
      FF0012358900266B7A0000000000000000000000000000000000676768004953
      8C000000FF002936CD0052545D005555580044487B000000FE000207EF000000
      FF00313376006B6B6C000000000000000000D9D9D9FFBCBCBCFFC5C5C5FFDADA
      DAFFDBDCE2FF2B37EEFF0102FEFF4A4B4DFF2A3B70FF060BF9FF0914F2FFC0C2
      C8FFA7A7A9FF0001FDFF121DDDFFD7D8DCFF00000000E6E6E6FF626262FFD5D5
      D5FFD5D5D5FFD3D3D3FF4F4F4FFFEEEEEEFF00000000FDFDFDFF6A7EAEFF4585
      E2FF4992F2FF4381DAFF5B6A90FFF0F0F0FF0000000000000000296E80001831
      CD000305FE00189AC500338BDE00273B4B000406F900060EF7001A204D000102
      FC000B1EC30030718200000000000000000000000000000000006E6F71002331
      CB000305FE0084879300A4A4A300373C48000406F900060EF700222855000102
      FC00161CBD00717275000000000000000000D6D6D6FFAEAEAEFFAEAEAEFF645D
      5DFF797477FF4149ADFF0000FFFF1320AAFF111CF4FF0509FCFF676368FF5853
      54FF4446A2FF0000FFFF1E287CFFE3E3E6FF00000000D7D7D7FF757575FFD0D0
      D0FFD0D0D0FFD0D0D0FF545454FFD3D3D3FF00000000B6B8C6FF46B4FBFF5FD5
      FBFF60D6FBFF5FD3FBFF399BFBFFBFBFC4FF0000000000000000317387001B36
      F0000102FE00144C6200203A7400060BF9000914F20014728C000E9EBA000001
      FD00081BDD003170850000000000000000000000000000000000727379002733
      EA000102FE0048494B002A3B7100060BF9000914F2008D8F95007E7E80000001
      FD000F1ADA00707177000000000000000000D3D3D3FFC5C6C6FFCECECEFFBBBB
      BBFFC0C0C0FFA3A7CAFF1115F8FF0000FEFF0001FCFF2E3A65FF484742FF282B
      7DFF0000FEFF060DFBFF383E65FFF3F3F3FFF5F5F5FF737373FFC8C8C8FFCFCF
      CFFFCECECEFFCFCFCFFFC1C1C1FF626262FFE6E6E6FFA2A9BBFF23B1FBFF2AC0
      FBFF2AC0FBFF2CC0FBFF1DA2FBFFBABAC7FF00000000105F700016CFF4002768
      D6000000FF001320AA00111CF4000509FC004E92F1000F536300193190000000
      FF000D45C600286D7F000000000000000000000000005F5F5F00A2A2A500535D
      C0000000FF001320AA00111CF4000509FC00B3B4BA0054545400353793000000
      FF002F3DB5006D6E71000000000000000000D3D4D4FFCCCBCBFFCDCBCBFFC5C6
      C6FFC5C6C6FFC4C5C5FF7C7FA7FF0203FCFF0000FFFF0102FDFF0406FCFF0000
      FFFF0A14F6FF57669BFF828384FFF3F3F3FF777777FFCDCDCDFFE3E3E3FFE0E0
      E0FFD5D5D5FFCFCFCFFFCFCFCFFFB0B0B0FF646464FFA2A8BBFF049BFBFF04A9
      FBFF04A9FBFF04A9FBFF048DFBFFBABAC7FF105F700000D0F60003D0F50043B3
      EA001115F8000000FE000001FC00293865002C3B4B001D2782000000FE00060D
      FB000A38760014617200105F7000105F70005F5F5F009D9D9D009E9E9E00989C
      BF001115F8000000FE000001FC002D39640045443F00282B7D000000FE00060D
      FB0030396E00626262005F5F5F005F5F5F00D8D8D8FFC5C6C6FFCA7272FFBF63
      63FFAA4848FF831D1DFFC4C5C5FFB2B5D2FF7481DDFF3A45F3FF434FEDFF6576
      D5FF888EAEFF818181FF6C6C6CFFEFEFEFFF717171FFE5E5E5FFE8E8E8FFA3A3
      A3FF656565FF9F9F9FFFD5D5D5FFC8C8C8FF535353FFA2A8BBFF0590FBFF07A0
      FBFF0497FBFF0494FBFF047BF6FFBABAC7FF00000000105F700000D0F60018D9
      FC00327EC2000203FC000000FF000102FD000406FC000000FF000A14F6001E77
      C8002AC2FB0025C4FF001D7C8D0000000000000000005F5F5F009D9D9D00AFAF
      AF0071749C000203FC000000FF000102FD000406FC000000FF000A14F6005766
      9A00AFAFB000B0B0B0005F5F5F0000000000DDDDDDFFC5C6C6FFD58484FFCE78
      78FFC36868FFB14F4FFFC5C6C6FFD1D1D1FF767173FF7C787CFFAAABB0FF7F80
      82FF4B4B4BFF414141FF646464FFEBEBEBFF6C6C6CFFECECECFFECECECFF7E7E
      7EFFB7B7B7FF7A7A7AFFEDEDEDFFEAEAEAFF606060FFA2AABCFF3ABCFBFF37C5
      FBFF33C1FBFF17A3FBFF1387F8FFBABAC7FF0000000000000000105F700039C9
      FF0039C8FE0052AFEE00537FEA003341F3003B4CEC004C7FEA0052AEEE0030B7
      FD00359EFF001D7C8D00000000000000000000000000000000005F5F5F00A3A3
      A300AFAFAF00A0A2BF007380DC003843F1003F4BE9006677D5008E94B400B0B0
      B000B0B0B0005F5F5F000000000000000000E7E6E6FFC5C6C6FFDE9292FFD889
      89FFD07C7CFFC56A6AFFC5C6C6FFD3D3D3FFBBBBBBFFBFBFBFFFA19F9FFF6967
      67FF333333FF2A1F1FFF858484FF000000006E6E6EFFEFEFEFFFEFEFEFFF6363
      63FF000000007C7C7CFFF2F2F2FFECECECFF666666FFA3ABBEFF67CFFBFF65D8
      FBFF65D8FBFF65D8FBFF62C4FBFFBABAC7FF000000000000000000000000105F
      700039C9FF0035BAFE0058ACFD004390A2004ACAFD0051CDFD0035BAFE00559D
      FF001D7C8D000000000000000000000000000000000000000000000000005F5F
      5F00B4B4B400BABABA00CBCCCE0078797E00B9BABE00B7B8BA00C9C9C900C7C7
      C7005F5F5F00000000000000000000000000E1E1E1FFCBCBCBFFCCCBCBFFC5C6
      C6FFC5C6C6FFC5C6C6FFC9CACAFFE3E3E3FF655F5FFF645D5DFFA39D9DFFDA99
      99FFE6C4C4FFA88989FFEAEAEAFF00000000DBDBDBFF686868FFF2F2F2FF5959
      59FF00000000707070FFF4F4F4FF777777FFDFDFDFFFB5B8C7FF89D7FBFF8EE7
      FBFF8EE7FBFF8EE7FBFF75BFFBFFC2C2C7FF0000000000000000000000000000
      0000105F70002FB8FF001D7C8D0025C4FF0025C4FF002FB8FF00559DFF001D7C
      8D00000000000000000000000000000000000000000000000000000000000000
      00005F5F5F00C7C7C7005F5F5F00B0B0B000B0B0B000C4C4C400C7C7C7005F5F
      5F0000000000000000000000000000000000DADADAFFADADADFFB7B7B7FFBCBD
      BDFFBEBFBFFFC0C1C1FFC3C4C4FFC9C9C9FFD0D0D0FFC6C6C6FFACABABFFE2BB
      BBFFC5A8A8FFE2E1E1FF000000000000000000000000B5B5B5FF7B7B7BFFBFBF
      BFFF00000000C0C0C0FF8D8D8DFFBEBEBEFF00000000FDFDFDFF7F90BEFF7BA6
      F3FF7BAAF3FF78A2ECFF8C97B4FFFEFEFEFF0000000000000000000000000000
      000000000000105F7000105F7000105F7000105F7000105F7000105F70000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005F5F5F005F5F5F005F5F5F005F5F5F005F5F5F005F5F5F000000
      000000000000000000000000000000000000F7F7F7FFEFEFEFFFF5F5F5FFF4F4
      F4FFEFEFEFFFE7E7E7FFE4E4E4FFD3D3D3FFF0F0F0FFE5E5E5FFD1CCCCFFC9B3
      B3FFF4F4F4FF00000000000000000000000099C38DFF99C38DFF92BE86FF99C3
      8DFF92BE86FFFFF3F0FFFFF0EBFFFFF0EBFFFFF0EBFFFFF0EBFFFFF0EBFFFFF0
      EBFFFFF2EEFF0000000000000000000000000000000000000000000000000000
      00000000000000000000105F7000105F7000105F700000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005F5F5F005F5F5F005F5F5F0000000000000000000000
      00000000000000000000000000000000000000000000DDDDDDFFA9A9A9FF9D9D
      9DFF979797FF9A9A9AFFA4A4A4FFB3B3B3FFC9C9C9FFE0E0E0FFF2F2F2FF0000
      0000000000000000000000000000000000001C7A00FF1C7A00FF1C7A00FF1C7A
      00FF1C7A00FFFF632EFFFF7446FFFF7243FFFF7243FFFF7243FFFF7243FFFF72
      43FFFFF0EBFF0000000000000000000000000000000000000000000000000000
      000000000000105F700041A3FF00105F70003DDDFF00105F7000105F70000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005F5F5F00BBBBBB005F5F5F00C9C9C9005F5F5F005F5F5F000000
      000000000000000000000000000000000000E8E8E8FF868686FF848484FF9494
      94FF9B9B9BFF9B9B9BFF8F8F8FFF7F7F7FFF666666FF5B5B5BFF6D6D6DFF8C8C
      8CFFA7A7A7FFBEBEBEFFCCCCCCFFE4E4E4FF99C38DFF1C7A00FF1C7A00FF1C7A
      00FF1C7A00FFFFE3DAFFFFE9E2FFFFEBE5FFFFEBE5FFFFEBE5FFFFF0EBFFFF4F
      14FFFFF3F0FF0000000000000000000000000000000000000000000000000000
      0000105F700041A3FF002FB8FF00105F700037BBFF002424240024242400105F
      7000105F70000000000000000000000000000000000000000000000000000000
      00005F5F5F00BBBBBB00B0B0B0005F5F5F00BBBBBB002F2F2F002F2F2F005F5F
      5F005F5F5F00000000000000000000000000DCDCDCFFBBBBBBFFC8C8C8FFD7D7
      D7FFE9E9E9FFF8F8F8FFDEDFDFFFD0D0D0FFF4F4F4FFF0F0F0FFCACACAFF9C9C
      9CFF828282FF767676FF535353FFB2B2B2FF99C38DFF99C38DFF92BE86FF99C3
      8DFF92BE86FF00000000000000000000000000000000FFD8CBFFFF4F14FFFF4F
      14FFFF4F14FFFFD8CBFF0000000000000000000000000000000000000000105F
      700041A3FF002FB8FF001FC2FF00105F70001BCCFF0024242400242424002424
      2400399FFF00105F700000000000000000000000000000000000000000005F5F
      5F00BBBBBB00B0B0B000969696005F5F5F00B4B4B4002F2F2F002F2F2F002F2F
      2F00BBBBBB005F5F5F000000000000000000EFEFEFFFB0B0B0FF9F9F9FFF615A
      5AFF706A6AFF706A6AFF615B5BFFDEDFDFFF615A5AFF615A5AFFF5F5F5FFFDFD
      FDFFFCFCFCFFFDFDFDFF636363FFCBCBCBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFD8CBFFFF4F
      14FFFFD8CBFF0000000000000000000000000000000000000000105F700041A3
      FF002FB8FF0000D2F80007C3E500105F700011DBFF0024242400242424002424
      2400399FFF00105F7000000000000000000000000000000000005F5F5F00B0B0
      B000B0B0B0009E9E9E00969696005F5F5F00ADADAD002F2F2F002F2F2F002F2F
      2F00BBBBBB005F5F5F000000000000000000E6E6E6FFB0B0B0FFAAAAAAFFBDBD
      BDFFC9C9C9FFCFCFCFFFDBDBDBFFEEEEEEFFFCFCFCFFFFFFFFFFFEFEFEFFFBFB
      FBFFF8F8F8FFEEEEEEFF565656FFDBDBDBFF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFD8
      CBFF000000000000000000000000000000000000000000000000105F70002FB8
      FF000CE1E400105F70000ADDEA00105F700011DBFF0024242400242424002424
      240025BAFF00105F7000000000000000000000000000000000005F5F5F009898
      9800999999005F5F5F009B9B9B005F5F5F00ADADAD002F2F2F002F2F2F002F2F
      2F00B0B0B0005F5F5F000000000000000000DFDFDFFFB8B8B8FFBBBBBBFF6761
      61FF706A6AFF706A6AFF686262FFD2D2D2FF686262FF706A6AFF706A6AFF6661
      61FFCACACAFFDADADAFF5C5C5CFFE7E7E7FF99C38DFF99C38DFF92BE86FF99C3
      8DFF92BE86FFFFF3F0FFFFF0EBFFFFF0EBFFFFF0EBFFFFF0EBFFFFF0EBFFFFF0
      EBFFFFF2EEFF0000000000000000000000000000000000000000105F70000DB6
      D500105F700015D6FF00105F7000105F700006C6E80024242400242424002424
      24002FB8FF00105F7000000000000000000000000000000000005F5F5F009090
      90005F5F5F00B1B1B1005F5F5F005F5F5F00989898002F2F2F002F2F2F002F2F
      2F00B0B0B0005F5F5F000000000000000000D9D9D9FFBCBCBCFFC5C5C5FFDADA
      DAFFDFDFDFFFD7D7D7FFCBCBCBFFC3C3C3FFC5C5C5FFCACACAFFCCCCCCFFD0D0
      D0FFCBCBCBFFC5C5C5FF656565FFEEEEEEFF1C7A00FF1C7A00FF1C7A00FF1C7A
      00FF1C7A00FFFF632EFFFF7446FFFF7243FFFF7243FFFF7243FFFF7243FFFF72
      43FFFFF0EBFF0000000000000000000000000000000000000000105F7000105F
      700015DBFF0021D3FF00399FFF00105F70001D86990005D9FF00242424002424
      240037CEFF00105F7000000000000000000000000000000000005F5F5F005F5F
      5F00AFAFAF00B8B8B800BBBBBB005F5F5F0098989800A6A6A6002F2F2F002F2F
      2F00B0B0B0005F5F5F000000000000000000D6D6D6FFAEAEAEFFAEAEAEFF645D
      5DFF706A6AFF706A6AFF615959FFC3C3C3FF645E5EFF706A6AFF706A6AFF655F
      5FFFDCDCDCFFB2B2B2FF6E6E6EFFF2F2F2FF99C38DFF1C7A00FF1C7A00FF1C7A
      00FF1C7A00FFFFE3DAFFFFE9E2FFFFEBE5FFFFEBE5FFFFEBE5FFFFF0EBFFFF4F
      14FFFFF3F0FF0000000000000000000000000000000000000000105F700000D0
      F6001BD7FF0025C4FF002FB8FF00399FFF00105F700015798F000EC0E00007D9
      FF0015D6FF00105F7000000000000000000000000000000000005F5F5F009D9D
      9D00B4B4B400BBBBBB00C7C7C700C7C7C7005F5F5F009898980098989800A8A8
      A800B0B0B0005F5F5F000000000000000000D3D3D3FFC5C6C6FFCECECEFFBBBB
      BBFFC0C0C0FFC4C4C4FFCACACAFFDCDCDCFFE7E7E7FFE7E7E7FFD7D7D7FFCDCD
      CDFFCECECEFFA7A7A7FF727272FFF3F3F3FF99C38DFF99C38DFF92BE86FF99C3
      8DFF92BE86FF00000000000000000000000000000000FFD8CBFFFF4F14FFFF4F
      14FFFF4F14FFFFD8CBFF000000000000000000000000105F700000D0F60015DB
      FF001BD7FF0039C9FF002FB8FF0041A3FF00559DFF00105F70001D7C8D00228E
      A20015D6FF00105F70000000000000000000000000005F5F5F009D9D9D00AFAF
      AF00B4B4B400BBBBBB00C7C7C700C7C7C700C2C2C2005F5F5F00989898009898
      9800B0B0B0005F5F5F000000000000000000D3D4D4FFCCCBCBFFCDCBCBFFC5C6
      C6FFC5C6C6FFC5C6C6FFCACACAFFE3E3E3FF655E5EFF645E5EFFAEAEAEFFA2A2
      A2FFB8B8B8FFA0A0A0FF717171FFF3F3F3FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFDDD2FFFF4F
      14FFFFD8CBFF000000000000000000000000105F700000D0F60000D0F60015DB
      FF001BD7FF0039C9FF002FB8FF0041A3FF00559DFF00559DFF00105F7000105F
      7000105F7000105F7000105F7000105F70005F5F5F009D9D9D009D9D9D00AFAF
      AF00B4B4B400B8B8B800C7C7C700C7C7C700C7C7C700C7C7C7005F5F5F005F5F
      5F005F5F5F005F5F5F005F5F5F005F5F5F00D8D8D8FFC5C6C6FFCA7272FFBF63
      63FFAA4848FF831D1DFFC5C6C6FFD2D2D2FFC3C3C3FFC3C3C3FFABABABFF9B9B
      9BFF939393FF818181FF6C6C6CFFEFEFEFFF0000000000000000000000000000
      0000000000000000000000000000FFCDBDFF000000000000000000000000FFD8
      CBFF0000000000000000000000000000000000000000105F700000D0F60015DB
      FF0039C9FF0039C9FF002FB8FF00559DFF00559DFF001D7C8D0025C4FF0025C4
      FF0025C4FF0025C4FF001D7C8D0000000000000000005F5F5F009D9D9D00AFAF
      AF00B4B4B400BBBBBB00BBBBBB00C7C7C700C7C7C7005F5F5F009D9D9D009D9D
      9D00B0B0B000B0B0B0005F5F5F0000000000DDDDDDFFC5C6C6FFD58484FFCE78
      78FFC36868FFB14F4FFFC5C6C6FFD0D0D0FF645D5DFF645E5EFF9E9E9EFF6F6F
      6FFF464646FF414141FF646464FFEBEBEBFF99C38DFF99C38DFF92BE86FF99C3
      8DFF92BE86FFFFF7F4FFFFF7F4FFFF4F14FFFFD8CBFF00000000BD9184FFD2B3
      A9FFCAA59AFFB78778FFB78879FFBD9082FF0000000000000000105F700039C9
      FF0039C9FF0039C9FF002FB8FF00559DFF001D7C8D0025C4FF0039C9FF002FB8
      FF00359EFF001D7C8D00000000000000000000000000000000005F5F5F00A3A3
      A300AFAFAF00B4B4B400BDBDBD00C7C7C7005F5F5F009D9D9D009D9D9D00B0B0
      B000B0B0B0005F5F5F000000000000000000E7E6E6FFC5C6C6FFDE9292FFD889
      89FFD07C7CFFC56A6AFFC5C6C6FFD3D3D3FFBBBBBBFFBFBFBFFFA19F9FFF6967
      67FF333333FF2A1F1FFF858484FF000000001C7A00FF1C7A00FF1C7A00FF1C7A
      00FF1C7A00FFFF4F14FFFF4F14FFFF4F14FFFF4F14FFFFD8CBFF7A1E00FFD9BF
      B7FF822D11FF822D11FF832D12FF8B3B21FF000000000000000000000000105F
      700039C9FF002FB8FF0041A3FF001D7C8D0025C4FF0039C9FF002FB8FF00559D
      FF001D7C8D000000000000000000000000000000000000000000000000005F5F
      5F00B4B4B400B8B8B800C7C7C7005F5F5F00B0B0B000B0B0B000C7C7C700C7C7
      C7005F5F5F00000000000000000000000000E1E1E1FFCBCBCBFFCCCBCBFFC5C6
      C6FFC5C6C6FFC5C6C6FFC9CACAFFE3E3E3FF655F5FFF645D5DFFA39D9DFFDA99
      99FFE6C4C4FFA88989FFEAEAEAFF0000000099C38DFF1C7A00FF1C7A00FF1C7A
      00FF1C7A00FFFFF0EBFFFFF0EBFFFF4F14FFFFD8CBFF000000007A1E00FFF3EB
      E9FFCEAFA5FFBC9082FF832D12FF8B3B21FF0000000000000000000000000000
      0000105F70002FB8FF001D7C8D0025C4FF0025C4FF002FB8FF00559DFF001D7C
      8D00000000000000000000000000000000000000000000000000000000000000
      00005F5F5F00C7C7C7005F5F5F00B0B0B000B0B0B000C4C4C400C7C7C7005F5F
      5F0000000000000000000000000000000000DADADAFFADADADFFB7B7B7FFBCBD
      BDFFBEBFBFFFC0C1C1FFC3C4C4FFC9C9C9FFD0D0D0FFC6C6C6FFACABABFFE2BB
      BBFFC5A8A8FFE2E1E1FF000000000000000099C38D0099C38DFF92BE86FF99C3
      8DFF92BE86FF0000000000000000FFD8CBFF0000000000000000BD9184FFCAA6
      9BFFC39A8DFFCBA79CFFB78879FFBD9082FF0000000000000000000000000000
      000000000000105F7000105F7000105F7000105F7000105F7000105F70000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005F5F5F005F5F5F005F5F5F005F5F5F005F5F5F005F5F5F000000
      000000000000000000000000000000000000F7F7F7FFEFEFEFFFF5F5F5FFF4F4
      F4FFEFEFEFFFE7E7E7FFE4E4E4FFD3D3D3FFF0F0F0FFE5E5E5FFD1CCCCFFC9B3
      B3FFF4F4F4FF000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00C001000000000000C001000000000000
      8001000000000000800100000000000080010000000000008001000000000000
      8001000000000000800000000000000080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000800000000000000
      08000000000000008880000000000000C1E1FC7FFC7F8007C0C1F81FF81F0000
      80C1F007F007000080C1E003E003000080C1C003C003000080E3C003C0030000
      80C1C003C00300008080C003C00300008080C003C00300000000800380030000
      000000000000000000008001800100000000C003C00300010800E007E0070001
      0800F00FF00F00038880F81FF81F00070007FC7FFC7F801F0007F81FF81F0000
      0007F007F00700000783E003E0030000FFC7C003C0030000FFEFC003C0030000
      0007C003C00300000007C003C00300000007C003C00300000783800380030000
      FFC7000000000000FEEF8001800100000040C003C00300010000E007E0070001
      0040F00FF00F000306C0F81FF81F000700000000000000000000000000000000
      000000000000}
  end
  object cdsProductSpecStructStatus: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSpecifications
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvSpecStructStatus'
    OnCalcFields = cdsProductSpecStructStatusCalcFields
    Left = 798
    Top = 272
    object cdsProductSpecStructStatusLEVEL_NO: TAbmesFloatField
      FieldName = 'LEVEL_NO'
    end
    object cdsProductSpecStructStatusLEVEL_IS_COMPLETE: TAbmesFloatField
      FieldName = 'LEVEL_IS_COMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsProductSpecStructStatusMAX_LEVEL_NO: TAbmesFloatField
      FieldName = 'MAX_LEVEL_NO'
    end
    object cdsProductSpecStructStatusHAS_MISSING_CHILDREN: TAbmesFloatField
      FieldName = 'HAS_MISSING_CHILDREN'
      FieldValueType = fvtBoolean
    end
    object cdsProductSpecStructStatus_DISPLAY_TEXT: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_DISPLAY_TEXT'
      Calculated = True
    end
  end
  object ilSmallDocs: TImageList
    AllocBy = 1
    Height = 13
    Width = 25
    Left = 352
    Top = 56
    Bitmap = {
      494C010102000500040019000D00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000640000000D00000001002000000000005014
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C0008080800080808000000000000000
      0000000000008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF000060A0000060A0000000
      000000000000000000000060A0000060A0000060A00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C0008080
      800080808000C0C0C000000000000000000000000000C0C0C000C0C0C0008080
      8000808080000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF000060A0000060A00000FFFF0000000000000000000000000000FFFF0000FF
      FF000060A0000060A00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C0008080800080808000C0C0C000C0C0C000000000000000
      00000000000080808000C0C0C000C0C0C0008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF000060A0000060A00000FFFF0000FFFF000000
      000000000000000000000060A00000FFFF0000FFFF000060A0000060A0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000808080008080
      8000C0C0C000808080000000000000000000000000008080800080808000C0C0
      C000C0C0C0008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000060
      A0000060A00000FFFF000060A0000000000000000000000000000060A0000060
      A00000FFFF0000FFFF000060A0000060A0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C00080808000C0C0C000C0C0C00080808000000000000000
      000000000000C0C0C0008080800080808000C0C0C000C0C0C000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF000060A00000FFFF0000FFFF000060A0000000
      0000000000000000000000FFFF000060A0000060A00000FFFF0000FFFF000060
      A000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000808080008080
      8000000000000000000000000000000000000000000080808000C0C0C0008080
      8000C0C0C000C0C0C00080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000060
      A0000060A00000000000000000000000000000000000000000000060A00000FF
      FF000060A00000FFFF0000FFFF000060A0000060A00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C000C0C0C00080808000C0C0C000C0C0C000808080008080
      800080808000C0C0C000C0C0C00080808000C0C0C000C0C0C000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000060A00000FFFF0000FFFF000060
      A0000060A0000060A00000FFFF0000FFFF000060A00000FFFF0000FFFF000060
      A0000060A0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C0008080
      800080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000808080008080
      8000C0C0C000C0C0C00080808000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF000060A0000060A00000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000060
      A0000060A00000FFFF0000FFFF000060A0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C000C0C0C000C0C0C0008080800080808000000000000000
      0000000000008080800080808000C0C0C000C0C0C00080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF000060A0000060A0000000
      000000000000000000000060A0000060A00000FFFF0000FFFF000060A0000060
      A000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000808080000000000000000000000000008080800080808000C0C0
      C000C0C0C0008080800000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF000060A0000000000000000000000000000060A0000060
      A00000FFFF0000FFFF000060A000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C000C0C0C000C0C0C000808080000000
      000080808000C0C0C000C0C0C000C0C0C0008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF000060
      A000000000000060A00000FFFF0000FFFF0000FFFF000060A0000060A0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000060A0000060A00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000424D3E000000000000003E00000028000000640000000D00000001000100
      00000000D00000000000000000000000000000000000000000000000FFFFFF00
      E01FFFF00FFFC0000000000000000000C00FFFE007FFC0000000000000000000
      8007FFC003FFC00000000000000000000003FF8001FFC0000000000000000000
      0001F78000FBC00000000000000000000001E38000F1C0000000000000000000
      0000C1800060C00000000000000000000000FF80007FC0000000000000000000
      8001FFC000FFC00000000000000000008001FFC000FFC0000000000000000000
      C003FFE001FFC0000000000000000000E003FFF001FFC0000000000000000000
      F807FFFC03FFC000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object cdsBaseGroupsParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 568
    Top = 243
    object cdsBaseGroupsParamsGROUP_DEPT_CODE: TAbmesFloatField
      FieldName = 'GROUP_DEPT_CODE'
    end
    object cdsBaseGroupsParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      FieldName = 'CHOSEN_PRODUCTS'
      Size = 4000
    end
  end
end
