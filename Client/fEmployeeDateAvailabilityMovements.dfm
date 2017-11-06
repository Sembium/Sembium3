inherited fmEmployeeDateAvailabilityMovements: TfmEmployeeDateAvailabilityMovements
  Left = 589
  Top = 294
  Caption = 'fmEmployeeDateAvailabilityMovements'
  ClientWidth = 588
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Width = 588
    Visible = False
    inherited pnlOKCancel: TPanel
      Left = 320
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 231
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 499
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 588
    BorderWidth = 0
    inherited pnlGrid: TPanel
      Left = 0
      Top = 0
      Width = 588
      Height = 295
      inherited pnlNavigator: TPanel
        Width = 588
        inherited pnlFilterButton: TPanel
          Left = 144
        end
        inherited navData: TDBColorNavigator
          Width = 144
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 168
          Width = 88
          object sepShowStorno: TToolButton
            Left = 56
            Top = 0
            Width = 8
            Caption = 'sepShowStorno'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object btnShowStorno: TSpeedButton
            Left = 64
            Top = 0
            Width = 24
            Height = 24
            Action = actShowStorno
            AllowAllUp = True
            GroupIndex = 1
            Flat = True
            Transparent = False
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 563
        Height = 271
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'IN_OUT'
            Footers = <>
            Title.Caption = #1042#1080#1076
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'EMP_MOVEMENT_DATE'
            Footers = <>
            Title.Caption = #1044#1072#1090#1072
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'EMP_MOVEMENT_TIME'
            Footers = <>
            Title.Caption = #1063#1072#1089
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'CREATE_EMPLOYEE_NAME'
            Footers = <>
            Title.Caption = #1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1083
            Width = 332
          end>
      end
      inherited pnlRightButtons: TPanel
        Left = 563
        Height = 271
        inherited btnDelRecord: TSpeedButton
          Top = 70
        end
        inherited btnEditRecord: TSpeedButton
          Top = 22
        end
      end
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = 'fmEmployeeDateAvailabilityMovements'
    end
    inherited actDelRecord: TAction
      Visible = False
    end
    object actShowStorno: TAction
      Caption = #1040#1085
      GroupIndex = 1
      Hint = #1040#1085#1091#1083#1080#1088#1072#1085#1080
      OnExecute = actShowStornoExecute
      OnUpdate = actShowStornoUpdate
    end
  end
end
