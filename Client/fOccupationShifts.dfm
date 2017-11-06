inherited fmOccupationShifts: TfmOccupationShifts
  Caption = #1057#1084#1077#1085#1080' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090
  ClientHeight = 295
  ClientWidth = 319
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 260
    Width = 319
    inherited pnlOKCancel: TPanel
      Left = 51
    end
    inherited pnlClose: TPanel
      Left = -38
    end
    inherited pnlApply: TPanel
      Left = 230
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 319
    Height = 260
    inherited pnlGrid: TPanel
      Width = 303
      Height = 244
      inherited pnlNavigator: TPanel
        Width = 303
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 278
        Height = 220
        Columns = <
          item
            Color = 16115403
            EditButtons = <>
            FieldName = 'BEGIN_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1084#1048#1085#1090
            Width = 125
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = '_SHIFT_IDENTIFIER'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1057#1084#1103#1085#1072
            Width = 43
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'AFFECTS_EMP_AVAILABILITY'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077
            Width = 75
          end>
      end
      inherited pnlRightButtons: TPanel
        Left = 278
        Height = 220
      end
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1057#1084#1077#1085#1080' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090
    end
  end
end
