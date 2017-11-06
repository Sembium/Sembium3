inherited fmOccupationSalaries: TfmOccupationSalaries
  Caption = #1057#1090#1086#1081#1085#1086#1089#1090#1085#1080' '#1093#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090' '#1087#1086' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083#1080
  ClientHeight = 331
  ClientWidth = 484
  ExplicitWidth = 490
  ExplicitHeight = 356
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 296
    Width = 484
    ExplicitTop = 296
    ExplicitWidth = 484
    inherited pnlOKCancel: TPanel
      Left = 216
      ExplicitLeft = 216
    end
    inherited pnlClose: TPanel
      Left = 127
      ExplicitLeft = 127
    end
    inherited pnlApply: TPanel
      Left = 395
      Visible = False
      ExplicitLeft = 395
    end
  end
  inherited pnlMain: TPanel
    Width = 484
    Height = 296
    ExplicitWidth = 484
    ExplicitHeight = 296
    inherited pnlGrid: TPanel
      Width = 468
      Height = 280
      ExplicitWidth = 468
      ExplicitHeight = 280
      inherited pnlNavigator: TPanel
        Width = 468
        ExplicitWidth = 468
        inherited pnlFilterButton: TPanel
          Left = 168
          ExplicitLeft = 168
        end
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 192
          ExplicitLeft = 192
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 443
        Height = 256
        UseMultiTitle = True
        VTitleMargin = 5
        Columns = <
          item
            Color = 16115403
            EditButtons = <>
            FieldName = 'BEGIN_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1084#1048#1085#1090
            Width = 126
          end
          item
            Alignment = taRightJustify
            EditButtons = <>
            FieldName = 'BASE_SALARY'
            Footers = <>
            Title.Caption = #1041#1072#1079#1086#1074#1072' '#1073#1088#1091#1090#1085#1072' '#1079#1072#1087#1083#1072#1090#1072' /%s/'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = '_DATE_UNIT_NAME'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1077#1074#1072' '#1089#1090#1098#1087#1082#1072
            Width = 90
          end
          item
            Alignment = taRightJustify
            EditButtons = <>
            FieldName = 'MIN_SALARY_RATIO_COEF'
            Footers = <>
            Title.Caption = #1050#1054#1088#1045#1092'|'#1054#1090
            Width = 50
          end
          item
            Alignment = taRightJustify
            EditButtons = <>
            FieldName = 'MAX_SALARY_RATIO_COEF'
            Footers = <>
            Title.Caption = #1050#1054#1088#1045#1092'|'#1044#1086
            Width = 50
          end>
      end
      inherited pnlRightButtons: TPanel
        Left = 443
        Height = 256
        ExplicitLeft = 443
        ExplicitHeight = 256
      end
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1057#1090#1086#1081#1085#1086#1089#1090#1085#1080' '#1093#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090' '#1087#1086' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083#1080
    end
  end
end
