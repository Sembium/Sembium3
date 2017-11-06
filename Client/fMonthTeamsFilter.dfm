inherited fmMonthTeamsFilter: TfmMonthTeamsFilter
  Left = 313
  Caption = '%s '#1085#1072' '#1045#1082#1080#1087#1085#1080' '#1056#1072#1079#1087#1088#1077#1076#1077#1083#1077#1085#1080#1103' '#1085#1072' '#1058#1088#1091#1076#1072
  ClientHeight = 331
  ClientWidth = 393
  ExplicitWidth = 399
  ExplicitHeight = 356
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 296
    Width = 393
    TabOrder = 3
    ExplicitTop = 296
    ExplicitWidth = 393
    inherited pnlOKCancel: TPanel
      Left = 125
      ExplicitLeft = 125
    end
    inherited pnlClose: TPanel
      Left = 36
      ExplicitLeft = 36
    end
    inherited pnlApply: TPanel
      Left = 304
      ExplicitLeft = 304
    end
  end
  inline frDeptFilter: TfrDeptFilter [1]
    Left = 8
    Top = 8
    Width = 377
    Height = 145
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    TabStop = True
    ExplicitLeft = 8
    ExplicitTop = 8
    inherited grpTreeNodeFilter: TGroupBox
      Caption = ' '#1054#1088#1063' '#1085#1072' '#1045#1082#1080#1087' '
      inherited lblsExternal: TLabel
        Width = 52
        ExplicitWidth = 52
      end
      inherited lblIsActive: TLabel
        Width = 53
        ExplicitWidth = 53
      end
      inherited pnlNodes: TPanel
        inherited grdChosenNodes: TAbmesDBGrid
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
        end
      end
    end
  end
  object grpTeamCode: TGroupBox [2]
    Left = 8
    Top = 168
    Width = 377
    Height = 65
    Caption = ' '#1045#1082#1080#1087' '
    TabOrder = 1
    object lblTeamNo: TLabel
      Left = 8
      Top = 16
      Width = 19
      Height = 13
      Caption = #1050#1086#1076
      FocusControl = edtTeamNo
    end
    object lblTeamName: TLabel
      Left = 80
      Top = 16
      Width = 76
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FocusControl = cbTeam
    end
    object cbTeam: TJvDBLookupCombo
      Left = 80
      Top = 32
      Width = 289
      Height = 21
      DataField = '_TEAM_NAME'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      TabOrder = 1
    end
    object edtTeamNo: TDBEdit
      Left = 8
      Top = 32
      Width = 73
      Height = 21
      DataField = '_TEAM_NO'
      DataSource = dsData
      TabOrder = 0
    end
  end
  object gbDateInterval: TGroupBox [3]
    Left = 8
    Top = 241
    Width = 161
    Height = 47
    Caption = ' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '
    TabOrder = 2
    inline frMonthInterval: TfrDateIntervalFrame
      Left = 8
      Top = 15
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 0
      ExplicitLeft = 8
      ExplicitTop = 15
    end
  end
  inherited alActions: TActionList [4]
    inherited actForm: TAction
      Caption = '%s '#1085#1072' '#1045#1082#1080#1087#1085#1080' '#1056#1072#1079#1087#1088#1077#1076#1077#1083#1077#1085#1080#1103' '#1085#1072' '#1058#1088#1091#1076#1072
    end
  end
  inherited dsData: TDataSource [6]
  end
  inherited cdsData: TAbmesClientDataSet [7]
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [8]
    Top = 240
  end
  inherited dsFilterVariants: TDataSource [9]
    Top = 240
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 80
    Top = 240
  end
end
