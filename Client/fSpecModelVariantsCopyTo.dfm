inherited fmSpecModelVariantsCopyTo: TfmSpecModelVariantsCopyTo
  Left = 202
  Top = 185
  ActiveControl = grdData
  Caption = #1057#1098#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077' '#1085#1072' '#1082#1086#1087#1080#1088#1072#1085#1077' '#1085#1072' '#1042#1072#1088#1080#1072#1085#1090#1080#1090#1077' '#1085#1072' '#1055'-'#1052#1054#1044#1045#1083'-'#1072
  ClientWidth = 892
  KeyPreview = True
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Width = 892
    TabOrder = 1
    inherited pnlOKCancel: TPanel
      Left = 624
    end
    inherited pnlClose: TPanel
      Left = 535
    end
    inherited pnlApply: TPanel
      Left = 803
      Visible = False
    end
  end
  object pnlMain: TPanel [1]
    Left = 0
    Top = 0
    Width = 892
    Height = 326
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 8
    TabOrder = 0
    object pnlGrid: TPanel
      Left = 8
      Top = 65
      Width = 876
      Height = 253
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object pnlNavigator: TPanel
        Left = 0
        Top = 0
        Width = 876
        Height = 24
        Align = alTop
        BevelOuter = bvNone
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        object navData: TDBColorNavigator
          Left = 0
          Top = 0
          Width = 96
          Height = 24
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alLeft
          Flat = True
          TabOrder = 0
        end
      end
      object grdData: TAbmesDBGrid
        Left = 0
        Top = 24
        Width = 876
        Height = 229
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        AutoFitColWidths = True
        DataSource = dsData
        DynProps = <>
        FooterParams.Color = clWindow
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab]
        TabOrder = 1
        TitleParams.MultiTitle = True
        TitleParams.RowHeight = 40
        TitleParams.VTitleMargin = 9
        OnDrawColumnCell = grdDataDrawColumnCell
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            AutoFitColWidth = False
            ButtonStyle = cbsNone
            CellButtons = <>
            DynProps = <>
            EditButton.Visible = False
            EditButtons = <>
            FieldName = 'SPEC_MODEL_VARIANT_NO'
            Footers = <>
            ReadOnly = True
            TextEditing = False
            Title.Caption = #8470
            Width = 23
          end
          item
            AutoFitColWidth = False
            ButtonStyle = cbsNone
            CellButtons = <>
            DynProps = <>
            EditButton.Visible = False
            EditButtons = <>
            FieldName = 'MAIN_DEPT_NAME'
            Footers = <>
            ReadOnly = True
            TextEditing = False
            Title.Caption = #1058#1055' '#1056#1077#1072#1083#1080#1079#1072#1090#1086#1088'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 128
          end
          item
            AutoFitColWidth = False
            ButtonStyle = cbsNone
            CellButtons = <>
            DynProps = <>
            EditButton.Visible = False
            EditButtons = <>
            FieldName = 'MAIN_DEPT_IDENTIFIER'
            Footers = <>
            ReadOnly = True
            TextEditing = False
            Title.Caption = #1058#1055' '#1056#1077#1072#1083#1080#1079#1072#1090#1086#1088'|'#1050#1086#1076
            Width = 55
          end
          item
            AutoFitColWidth = False
            ButtonStyle = cbsNone
            CellButtons = <>
            DynProps = <>
            EditButton.Visible = False
            EditButtons = <>
            FieldName = 'MIN_TECH_QUANTITY'
            Footers = <>
            ReadOnly = True
            TextEditing = False
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1054#1090
          end
          item
            AutoFitColWidth = False
            ButtonStyle = cbsNone
            CellButtons = <>
            DynProps = <>
            EditButton.Visible = False
            EditButtons = <>
            FieldName = 'MAX_TECH_QUANTITY'
            Footers = <>
            ReadOnly = True
            TextEditing = False
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1044#1086
          end
          item
            AutoFitColWidth = False
            ButtonStyle = cbsNone
            CellButtons = <>
            DynProps = <>
            EditButton.Visible = False
            EditButtons = <>
            FieldName = '_AUTHORIZATION_EMPLOYEE_NO'
            Footers = <>
            ReadOnly = True
            TextEditing = False
            Title.Caption = #1040#1074#1090#1086#1088#1080#1079#1080#1088#1072#1083'|'#1050#1086#1076
            Width = 46
          end
          item
            AutoFitColWidth = False
            ButtonStyle = cbsNone
            CellButtons = <>
            DynProps = <>
            EditButton.Visible = False
            EditButtons = <>
            FieldName = '_AUTHORIZATION_EMPLOYEE_NAME'
            Footers = <>
            ReadOnly = True
            TextEditing = False
            Title.Caption = #1040#1074#1090#1086#1088#1080#1079#1080#1088#1072#1083'|'#1048#1084#1077
            Width = 132
          end
          item
            AutoFitColWidth = False
            ButtonStyle = cbsNone
            CellButtons = <>
            DynProps = <>
            EditButton.Visible = False
            EditButtons = <>
            FieldName = 'AUTHORIZATION_DATE'
            Footers = <>
            ReadOnly = True
            TextEditing = False
            Title.Caption = #1040#1074#1090#1086#1088#1080#1079#1080#1088#1072#1083'|'#1085#1072' '#1076#1072#1090#1072
            Width = 58
          end
          item
            AutoFitColWidth = False
            ButtonStyle = cbsNone
            CellButtons = <>
            Color = 14803425
            DynProps = <>
            EditButton.Visible = False
            EditButtons = <>
            FieldName = '_INSERT_SPEC_MODEL_VARIANT_STATE_NAME'
            Footers = <>
            ReadOnly = True
            TextEditing = False
            Title.Caption = #1042#1072#1088#1080#1072#1085#1090#1080' '#1085#1072' '#1055'-'#1052#1054#1044#1045#1083' '#1085#1072' '#1042#1084#1098#1082#1085#1072#1090' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090'|'#1057#1090#1072#1090#1091#1089
            Width = 51
          end
          item
            AlwaysShowEditButton = True
            AutoDropDown = True
            CellButtons = <>
            Color = 14803425
            DblClickNextVal = True
            DropDownWidth = 600
            DynProps = <>
            EditButtons = <>
            FieldName = '_INSERT_MODEL_VARIANT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1042#1072#1088#1080#1072#1085#1090#1080' '#1085#1072' '#1055'-'#1052#1054#1044#1045#1083' '#1085#1072' '#1042#1084#1098#1082#1085#1072#1090' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090'|'#1042#1072#1088#1080#1072#1085#1090#1080
            Width = 232
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object pnlTop: TPanel
      Left = 8
      Top = 8
      Width = 876
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object lblArrow: TLabel
        Left = 419
        Top = -2
        Width = 36
        Height = 49
        AutoSize = False
        Caption = #172
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -40
        Font.Name = 'Symbol'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inline frParentProduct: TfrProductFieldEditFrame
        Left = 0
        Top = 0
        Width = 409
        Height = 49
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 49
        TabOrder = 0
        TabStop = True
        inherited gbTreeNode: TGroupBox
          Width = 409
          Caption = ' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '#1086#1090' '#1087#1086'-'#1075#1086#1088#1085#1086' '#1085#1080#1074#1086' '
          inherited pnlTreeNode: TPanel
            Width = 393
            inherited pnlTreeNodeName: TPanel
              Width = 211
              inherited edtTreeNodeName: TDBEdit
                Width = 210
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = 211
            end
            inherited pnlRightButtons: TPanel
              Left = 334
            end
          end
        end
      end
      inline frImportProduct: TfrProductFieldEditFrame
        Left = 464
        Top = 0
        Width = 409
        Height = 49
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 49
        TabOrder = 1
        TabStop = True
        inherited gbTreeNode: TGroupBox
          Width = 409
          Caption = ' '#1042#1084#1098#1082#1085#1072#1090' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '
          inherited pnlTreeNode: TPanel
            Width = 393
            inherited pnlTreeNodeName: TPanel
              Width = 211
              inherited edtTreeNodeName: TDBEdit
                Width = 210
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = 211
            end
            inherited pnlRightButtons: TPanel
              Left = 334
            end
          end
        end
      end
    end
  end
  inherited alActions: TActionList
    Left = 232
    Top = 216
    inherited actForm: TAction
      Caption = #1057#1098#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077' '#1085#1072' '#1082#1086#1087#1080#1088#1072#1085#1077' '#1085#1072' '#1042#1072#1088#1080#1072#1085#1090#1080#1090#1077' '#1085#1072' '#1055'-'#1052#1054#1044#1045#1083'-'#1072
    end
  end
  inherited dsData: TDataSource
    Left = 144
    Top = 216
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 112
    Top = 216
  end
end
