inherited fmEmployeeDateAvailabilityModifiers: TfmEmployeeDateAvailabilityModifiers
  Caption = 'fmEmployeeDateAvailabilityModifiers'
  ClientWidth = 724
  ExplicitWidth = 730
  ExplicitHeight = 355
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Width = 724
    Visible = False
    ExplicitWidth = 724
    inherited pnlOKCancel: TPanel
      Left = 456
      ExplicitLeft = 456
    end
    inherited pnlClose: TPanel
      Left = 367
      ExplicitLeft = 367
    end
    inherited pnlApply: TPanel
      Left = 635
      ExplicitLeft = 635
    end
  end
  inherited pnlMain: TPanel
    Width = 724
    BorderWidth = 0
    ExplicitWidth = 724
    inherited pnlGrid: TPanel
      Left = 0
      Top = 0
      Width = 724
      Height = 295
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 724
      ExplicitHeight = 295
      inherited pnlNavigator: TPanel
        Width = 724
        ExplicitWidth = 724
        inherited pnlFilterButton: TPanel
          Left = 144
          ExplicitLeft = 144
        end
        inherited navData: TDBColorNavigator
          Width = 144
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit]
          Hints.Strings = ()
          ExplicitWidth = 144
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 168
          Width = 88
          ExplicitLeft = 168
          ExplicitWidth = 88
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
        object tlbEmpAvailModifierDocs: TToolBar
          Left = 256
          Top = 0
          Width = 44
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 36
          EdgeInner = esNone
          Images = dmMain.ilDocs
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          object sepEmpAvailModifierDocs: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepEmpAvailModifierDocs'
            ImageIndex = 2
            Style = tbsSeparator
          end
          object btnEmpAvailModifierDocs: TToolButton
            Left = 8
            Top = 0
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1080#1103' '#1052#1086#1076#1080#1092#1080#1082#1072#1090#1086#1088' '#1085#1072' '#1087#1088#1080#1089#1098#1089#1090#1074#1080#1077
            ImageIndex = 1
            OnClick = btnEmpAvailModifierDocsClick
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 699
        Height = 271
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = '_EMP_AVAIL_MODIFIER_TYPE_A_N'
            Footers = <>
            Title.Caption = #1042#1080#1076
            Width = 36
          end
          item
            EditButtons = <>
            FieldName = '_REASON_NAME'
            Footers = <>
            Title.Caption = #1055#1088#1080#1095#1080#1085#1072
            Width = 110
          end
          item
            Color = 16115403
            EditButtons = <>
            FieldName = '_SHOW_DATE_PERIOD'
            Footers = <>
            Title.Caption = #1042#1088#1084#1048#1085#1090
            Width = 125
          end
          item
            EditButtons = <>
            FieldName = '_SHOW_TIME_PERIOD'
            Footers = <>
            Title.Caption = #1063#1072#1089#1086#1074#1077
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'AUTHORIZE_EMPLOYEE_NAME'
            Footers = <>
            Title.Caption = #1053#1072#1088#1077#1076#1080#1083
            Width = 140
          end>
      end
      inherited pnlRightButtons: TPanel
        Left = 699
        Height = 271
        ExplicitLeft = 699
        ExplicitHeight = 271
        inherited btnDelRecord: TSpeedButton
          Top = 62
          ExplicitTop = 62
        end
        inherited btnEditRecord: TSpeedButton
          Top = 22
          ExplicitTop = 22
        end
      end
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = 'fmEmployeeDateAvailabilityModifiers'
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
