inherited TreeNomWithParamsAndPrefixAndSuffixEditForm: TTreeNomWithParamsAndPrefixAndSuffixEditForm
  Caption = 'TreeNomWithParamsAndPrefixAndSuffixEditForm'
  ClientHeight = 362
  DesignSize = (
    457
    362)
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 327
  end
  inherited pnlMain: TPanel
    Top = 127
    inherited pnlGrid: TPanel
      inherited pnlNavigator: TPanel
        Top = 41
        TabOrder = 1
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited pnlDataButtons: TPanel
        TabOrder = 3
      end
      inherited grdData: TAbmesDBGrid
        Top = 65
        Height = 71
        TabOrder = 2
      end
      object pnlPreffixAndSuffix: TPanel
        Left = 0
        Top = 0
        Width = 419
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object lblPrefix: TLabel
          Left = 0
          Top = 0
          Width = 46
          Height = 13
          Caption = #1055#1088#1077#1092#1080#1082#1089
          FocusControl = edtPrefix
        end
        object lblSuffix: TLabel
          Left = 216
          Top = 0
          Width = 38
          Height = 13
          Caption = #1057#1091#1092#1080#1082#1089
          FocusControl = edtSuffix
        end
        object edtPrefix: TDBEdit
          Left = 0
          Top = 16
          Width = 203
          Height = 21
          DataField = 'NAME_PREFIX'
          DataSource = dsData
          TabOrder = 0
          OnChange = edtPrefixChange
          OnExit = edtPrefixChange
        end
        object edtSuffix: TDBEdit
          Left = 216
          Top = 16
          Width = 203
          Height = 21
          DataField = 'NAME_SUFFIX'
          DataSource = dsData
          TabOrder = 1
          OnChange = edtPrefixChange
          OnExit = edtPrefixChange
        end
      end
    end
  end
  inherited pnlParamsCaption: TPanel
    Top = 119
    Width = 118
    Caption = #1051#1086#1075#1080#1095#1077#1089#1082#1080' '#1087#1072#1088#1072#1084#1077#1090#1088#1080
  end
  inherited pnlData: TPanel
    Height = 109
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = 'TreeNomWithParamsAndPrefixAndSuffixEditForm'
    end
  end
end
