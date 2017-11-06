inherited fmSelectModelTask: TfmSelectModelTask
  Caption = #1048#1079#1073#1077#1088#1077#1090#1077' '#1053#1086#1088#1084#1072#1090#1080#1074#1085#1086' '#1079#1072#1076#1072#1085#1080#1077
  ClientWidth = 336
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Width = 336
    inherited pnlOKCancel: TPanel
      Left = 68
    end
    inherited pnlClose: TPanel
      Left = -21
    end
    inherited pnlApply: TPanel
      Left = 247
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 336
    inherited pnlGrid: TPanel
      Width = 320
      inherited pnlNavigator: TPanel
        Width = 320
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
        Width = 320
        Columns = <
          item
            EditButtons = <>
            FieldName = 'MATERIAL_LIST_TASK_NAME'
            Footers = <>
            Title.Caption = #1053#1086#1088#1084#1072#1090#1080#1074#1085#1086' '#1079#1072#1076#1072#1085#1080#1077
            Width = 287
          end>
      end
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1048#1079#1073#1077#1088#1077#1090#1077' '#1053#1086#1088#1084#1072#1090#1080#1074#1085#1086' '#1079#1072#1076#1072#1085#1080#1077
    end
    inherited actExcelExport: TAction
      Visible = False
    end
  end
end
