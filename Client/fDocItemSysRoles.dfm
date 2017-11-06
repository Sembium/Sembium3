inherited fmDocItemSysRoles: TfmDocItemSysRoles
  Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080' '#1079#1072' '#1076#1086#1089#1090#1098#1087' '#1076#1086' '#1048#1048#1054
  ClientHeight = 366
  ClientWidth = 542
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 331
    Width = 542
    inherited pnlOKCancel: TPanel
      Left = 274
    end
    inherited pnlClose: TPanel
      Left = 185
    end
    inherited pnlApply: TPanel
      Left = 453
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 542
    Height = 331
    inherited pnlGrid: TPanel
      Width = 526
      Height = 315
      inherited pnlNavigator: TPanel
        Width = 526
        inherited pnlFilterButton: TPanel
          Left = 96
        end
        inherited navData: TDBColorNavigator
          Width = 96
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 120
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 526
        Height = 291
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = '_SYS_ROLE_NO'
            Footers = <>
            Title.Caption = #1053#1072#1073#1086#1088' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080'|'#1050#1086#1076
            Width = 69
          end
          item
            EditButtons = <>
            FieldName = '_SYS_ROLE_NAME'
            Footers = <>
            Title.Caption = #1053#1072#1073#1086#1088' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 275
          end
          item
            EditButtons = <>
            FieldName = '_DOC_ITEM_ACCESS_LEVEL_NAME'
            Footers = <>
            Title.Caption = #1053#1080#1074#1086' '#1085#1072' '#1076#1086#1089#1090#1098#1087
            Width = 147
          end>
      end
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080' '#1079#1072' '#1076#1086#1089#1090#1098#1087' '#1076#1086' '#1048#1048#1054
    end
  end
end
